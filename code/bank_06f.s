; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

	ccf                                              ; $4000: $3f
	dec a                                            ; $4001: $3d
	ld l, $6b                                        ; $4002: $2e $6b
	ld e, h                                          ; $4004: $5c
	db $ed                                           ; $4005: $ed
	rst SubAFromDE                                          ; $4006: $df

Call_06f_4007:
	rrca                                             ; $4007: $0f
	add b                                            ; $4008: $80
	scf                                              ; $4009: $37
	jr c, @+$81                                      ; $400a: $38 $7f

	ld b, b                                          ; $400c: $40
	ld a, h                                          ; $400d: $7c
	ld b, e                                          ; $400e: $43
	ld e, a                                          ; $400f: $5f
	ld h, b                                          ; $4010: $60
	ld a, $21                                        ; $4011: $3e $21
	dec sp                                           ; $4013: $3b
	daa                                              ; $4014: $27
	cpl                                              ; $4015: $2f
	ccf                                              ; $4016: $3f
	ld a, [de]                                       ; $4017: $1a
	rra                                              ; $4018: $1f
	inc d                                            ; $4019: $14
	rra                                              ; $401a: $1f
	dec h                                            ; $401b: $25
	ld a, $69                                        ; $401c: $3e $69
	ld a, [hl]                                       ; $401e: $7e
	ld c, c                                          ; $401f: $49
	ld a, [hl]                                       ; $4020: $7e
	db $eb                                           ; $4021: $eb
	call c, $cc3b                                    ; $4022: $dc $3b $cc
	dec sp                                           ; $4025: $3b
	call z, $9471                                    ; $4026: $cc $71 $94
	adc $7c                                          ; $4029: $ce $7c
	rst JumpTable                                          ; $402b: $c7
	rst SubAFromDE                                          ; $402c: $df
	ld h, e                                          ; $402d: $63
	xor a                                            ; $402e: $af

Call_06f_402f:
Jump_06f_402f:
	halt                                             ; $402f: $76
	ld a, e                                          ; $4030: $7b
	cp h                                             ; $4031: $bc
	cp [hl]                                          ; $4032: $be
	pop af                                           ; $4033: $f1
	ldh [$bf], a                                     ; $4034: $e0 $bf
	rst SubAFromDE                                          ; $4036: $df
	rra                                              ; $4037: $1f
	sbc b                                            ; $4038: $98
	ldh [rIE], a                                     ; $4039: $e0 $ff
	add c                                            ; $403b: $81
	rst $38                                          ; $403c: $ff
	ld bc, $02ff                                     ; $403d: $01 $ff $02
	ld [hl], e                                       ; $4040: $73
	cp $9e                                           ; $4041: $fe $9e
	inc b                                            ; $4043: $04
	ld [hl], e                                       ; $4044: $73
	cp $96                                           ; $4045: $fe $96
	ld a, h                                          ; $4047: $7c
	rst $38                                          ; $4048: $ff
	cp $83                                           ; $4049: $fe $83
	cp $03                                           ; $404b: $fe $03
	rst $38                                          ; $404d: $ff
	rrca                                             ; $404e: $0f
	rst $38                                          ; $404f: $ff
	ldh a, [$df]                                     ; $4050: $f0 $df
	dec e                                            ; $4052: $1d

Jump_06f_4053:
	add b                                            ; $4053: $80
	dec bc                                           ; $4054: $0b
	rrca                                             ; $4055: $0f
	rst JumpTable                                          ; $4056: $c7
	rst JumpTable                                          ; $4057: $c7
	cp a                                             ; $4058: $bf
	ld a, h                                          ; $4059: $7c
	ld a, [hl]                                       ; $405a: $7e
	adc c                                            ; $405b: $89
	adc a                                            ; $405c: $8f
	ld a, a                                          ; $405d: $7f
	cp h                                             ; $405e: $bc
	ld a, a                                          ; $405f: $7f
	ret                                              ; $4060: $c9


	cp $0b                                           ; $4061: $fe $0b
	db $fc                                           ; $4063: $fc
	inc sp                                           ; $4064: $33
	call c, $9877                                    ; $4065: $dc $77 $98
	ld [hl], a                                       ; $4068: $77
	sbc b                                            ; $4069: $98
	ld h, [hl]                                       ; $406a: $66

Call_06f_406b:
	sbc c                                            ; $406b: $99
	adc d                                            ; $406c: $8a
	ld sp, $318a                                     ; $406d: $31 $8a $31
	ld [bc], a                                       ; $4070: $02
	ld sp, $91fe                                     ; $4071: $31 $fe $91
	ld sp, hl                                        ; $4074: $f9
	ld b, [hl]                                       ; $4075: $46
	rst $38                                          ; $4076: $ff
	add hl, sp                                       ; $4077: $39
	di                                               ; $4078: $f3
	adc h                                            ; $4079: $8c
	ld a, c                                          ; $407a: $79
	rst SubAFromBC                                          ; $407b: $e7
	db $fc                                           ; $407c: $fc
	ld e, l                                          ; $407d: $5d
	ld a, $86                                        ; $407e: $3e $86
	ld a, a                                          ; $4080: $7f
	rst $38                                          ; $4081: $ff
	ccf                                              ; $4082: $3f
	cp a                                             ; $4083: $bf
	ldh [$d2], a                                     ; $4084: $e0 $d2
	sbc d                                            ; $4086: $9a
	rst $38                                          ; $4087: $ff
	ld hl, sp+$3f                                    ; $4088: $f8 $3f
	add sp, $3c                                      ; $408a: $e8 $3c
	ld a, e                                          ; $408c: $7b
	cp $9e                                           ; $408d: $fe $9e
	jr c, @+$7d                                      ; $408f: $38 $7b

	cp $8b                                           ; $4091: $fe $8b
	inc a                                            ; $4093: $3c
	ld l, b                                          ; $4094: $68
	inc a                                            ; $4095: $3c
	inc h                                            ; $4096: $24
	ld a, $24                                        ; $4097: $3e $24
	rra                                              ; $4099: $1f
	ld [hl-], a                                      ; $409a: $32
	rra                                              ; $409b: $1f
	ld [hl], c                                       ; $409c: $71
	dec e                                            ; $409d: $1d
	ldh a, [rAUD2LOW]                                ; $409e: $f0 $18
	ldh a, [$f8]                                     ; $40a0: $f0 $f8
	ldh a, [rAUD3LEVEL]                              ; $40a2: $f0 $1c
	ldh a, [$9e]                                     ; $40a4: $f0 $9e
	ldh a, [$f7]                                     ; $40a6: $f0 $f7
	rst SubAFromDE                                          ; $40a8: $df
	inc e                                            ; $40a9: $1c
	add b                                            ; $40aa: $80
	ld a, a                                          ; $40ab: $7f
	ld h, e                                          ; $40ac: $63
	xor h                                            ; $40ad: $ac
	call c, $bf53                                    ; $40ae: $dc $53 $bf
	ld l, l                                          ; $40b1: $6d
	cp [hl]                                          ; $40b2: $be
	or a                                             ; $40b3: $b7
	ld hl, sp-$21                                    ; $40b4: $f8 $df
	ldh [rIE], a                                     ; $40b6: $e0 $ff
	ld a, a                                          ; $40b8: $7f
	sbc b                                            ; $40b9: $98
	rst $38                                          ; $40ba: $ff
	db $10                                           ; $40bb: $10
	rst $38                                          ; $40bc: $ff
	or [hl]                                          ; $40bd: $b6
	ld a, c                                          ; $40be: $79
	daa                                              ; $40bf: $27
	ld hl, sp+$2f                                    ; $40c0: $f8 $2f
	ldh a, [$6f]                                     ; $40c2: $f0 $6f
	ldh a, [rVBK]                                    ; $40c4: $f0 $4f
	ldh a, [$5f]                                     ; $40c6: $f0 $5f
	ldh [rWY], a                                     ; $40c8: $e0 $4a
	adc d                                            ; $40ca: $8a
	pop hl                                           ; $40cb: $e1
	ld c, d                                          ; $40cc: $4a
	pop hl                                           ; $40cd: $e1
	add d                                            ; $40ce: $82
	pop hl                                           ; $40cf: $e1
	and a                                            ; $40d0: $a7
	rst SubAFromDE                                          ; $40d1: $df
	sbc e                                            ; $40d2: $9b
	db $fc                                           ; $40d3: $fc
	xor l                                            ; $40d4: $ad
	di                                               ; $40d5: $f3
	sub $ef                                          ; $40d6: $d6 $ef
	rst GetHLinHL                                          ; $40d8: $cf
	rst $38                                          ; $40d9: $ff
	sub e                                            ; $40da: $93
	db $fc                                           ; $40db: $fc
	cp h                                             ; $40dc: $bc
	rst $38                                          ; $40dd: $ff
	rst GetHLinHL                                          ; $40de: $cf
	di                                               ; $40df: $f3
	ldh [$c1], a                                     ; $40e0: $e0 $c1
	add e                                            ; $40e2: $83
	pop af                                           ; $40e3: $f1
	jr nz, @+$41                                     ; $40e4: $20 $3f

	inc de                                           ; $40e6: $13
	ld c, $0c                                        ; $40e7: $0e $0c
	ld c, $04                                        ; $40e9: $0e $04
	rrca                                             ; $40eb: $0f
	ld c, $1b                                        ; $40ec: $0e $1b
	ld c, $33                                        ; $40ee: $0e $33
	rra                                              ; $40f0: $1f
	ccf                                              ; $40f1: $3f
	dec e                                            ; $40f2: $1d

jr_06f_40f3:
	ld a, a                                          ; $40f3: $7f
	jr nc, jr_06f_40f3                               ; $40f4: $30 $fd

	ld l, h                                          ; $40f6: $6c
	di                                               ; $40f7: $f3
	or [hl]                                          ; $40f8: $b6
	di                                               ; $40f9: $f3
	ld a, $7d                                        ; $40fa: $3e $7d
	dec l                                            ; $40fc: $2d
	ld [hl], c                                       ; $40fd: $71
	ld hl, $fe77                                     ; $40fe: $21 $77 $fe
	push af                                          ; $4101: $f5
	rst SubAFromDE                                          ; $4102: $df
	add b                                            ; $4103: $80
	rst SubAFromDE                                          ; $4104: $df
	inc a                                            ; $4105: $3c
	adc a                                            ; $4106: $8f
	sbc $e2                                          ; $4107: $de $e2
	cp $02                                           ; $4109: $fe $02
	cp $06                                           ; $410b: $fe $06
	rst $38                                          ; $410d: $ff
	inc bc                                           ; $410e: $03
	sbc [hl]                                         ; $410f: $9e
	db $e3                                           ; $4110: $e3
	ld a, [hl]                                       ; $4111: $7e
	rst $38                                          ; $4112: $ff
	daa                                              ; $4113: $27
	rst $38                                          ; $4114: $ff
	ld a, [hl+]                                      ; $4115: $2a
	rst FarCall                                          ; $4116: $f7
	ld l, a                                          ; $4117: $6f
	cp $85                                           ; $4118: $fe $85
	ld a, [hl-]                                      ; $411a: $3a
	rst SubAFromBC                                          ; $411b: $e7
	dec a                                            ; $411c: $3d
	and $55                                          ; $411d: $e6 $55
	xor $57                                          ; $411f: $ee $57
	db $ec                                           ; $4121: $ec
	ld a, d                                          ; $4122: $7a
	call z, $f8fd                                    ; $4123: $cc $fd $f8
	ld [hl], $f9                                     ; $4126: $36 $f9
	add $f9                                          ; $4128: $c6 $f9
	adc l                                            ; $412a: $8d
	di                                               ; $412b: $f3
	adc d                                            ; $412c: $8a
	rst FarCall                                          ; $412d: $f7
	ld h, l                                          ; $412e: $65
	cp $df                                           ; $412f: $fe $df
	ccf                                              ; $4131: $3f
	cpl                                              ; $4132: $2f
	rst SubAFromDE                                          ; $4133: $df
	ldh [$c1], a                                     ; $4134: $e0 $c1
	sbc d                                            ; $4136: $9a
	ldh [$c0], a                                     ; $4137: $e0 $c0
	add b                                            ; $4139: $80
	nop                                              ; $413a: $00
	ld bc, $fe7b                                     ; $413b: $01 $7b $fe
	sbc h                                            ; $413e: $9c
	inc bc                                           ; $413f: $03
	nop                                              ; $4140: $00
	ld [bc], a                                       ; $4141: $02
	cp $90                                           ; $4142: $fe $90
	add c                                            ; $4144: $81
	nop                                              ; $4145: $00
	jp $ff80                                         ; $4146: $c3 $80 $ff


	jp $bcff                                         ; $4149: $c3 $ff $bc


	adc h                                            ; $414c: $8c
	add b                                            ; $414d: $80
	sbc b                                            ; $414e: $98
	nop                                              ; $414f: $00
	sub c                                            ; $4150: $91
	nop                                              ; $4151: $00
	add b                                            ; $4152: $80
	ld a, e                                          ; $4153: $7b
	cp $ef                                           ; $4154: $fe $ef
	rst SubAFromDE                                          ; $4156: $df
	ld [$38df], sp                                   ; $4157: $08 $df $38
	ld a, [hl]                                       ; $415a: $7e
	ldh [c], a                                       ; $415b: $e2
	add b                                            ; $415c: $80
	ret c                                            ; $415d: $d8

	ccf                                              ; $415e: $3f
	inc hl                                           ; $415f: $23
	db $fc                                           ; $4160: $fc
	cp $ff                                           ; $4161: $fe $ff
	sbc l                                            ; $4163: $9d
	db $e3                                           ; $4164: $e3
	ld h, e                                          ; $4165: $63
	db $fc                                           ; $4166: $fc
	jr @+$01                                         ; $4167: $18 $ff

	adc [hl]                                         ; $4169: $8e
	ld a, a                                          ; $416a: $7f
	adc a                                            ; $416b: $8f
	ld a, a                                          ; $416c: $7f
	sub h                                            ; $416d: $94
	ld a, a                                          ; $416e: $7f
	sub $3f                                          ; $416f: $d6 $3f
	db $eb                                           ; $4171: $eb
	scf                                              ; $4172: $37
	xor d                                            ; $4173: $aa
	ld [hl], a                                       ; $4174: $77
	ld [hl], d                                       ; $4175: $72
	rst GetHLinHL                                          ; $4176: $cf
	ld [$eb97], a                                    ; $4177: $ea $97 $eb
	sub a                                            ; $417a: $97
	push de                                          ; $417b: $d5
	sub [hl]                                         ; $417c: $96
	cpl                                              ; $417d: $2f
	sbc c                                            ; $417e: $99
	ld l, a                                          ; $417f: $6f
	add hl, hl                                       ; $4180: $29
	rst SubAFromDE                                          ; $4181: $df
	ld d, a                                          ; $4182: $57
	cp e                                             ; $4183: $bb
	ld d, $fb                                        ; $4184: $16 $fb
	ldh [$c1], a                                     ; $4186: $e0 $c1
	sbc l                                            ; $4188: $9d
	rst $38                                          ; $4189: $ff
	add hl, de                                       ; $418a: $19
	ld a, d                                          ; $418b: $7a
	ld e, c                                          ; $418c: $59
	ld a, a                                          ; $418d: $7f
	sbc l                                            ; $418e: $9d

jr_06f_418f:
	ld a, [hl]                                       ; $418f: $7e
	ld b, h                                          ; $4190: $44
	adc b                                            ; $4191: $88
	ld [hl-], a                                      ; $4192: $32
	ld a, a                                          ; $4193: $7f
	ld hl, $61ff                                     ; $4194: $21 $ff $61
	rst $38                                          ; $4197: $ff
	ld b, c                                          ; $4198: $41
	cp $83                                           ; $4199: $fe $83
	adc $03                                          ; $419b: $ce $03
	rra                                              ; $419d: $1f
	inc bc                                           ; $419e: $03
	ld a, $07                                        ; $419f: $3e $07
	db $fc                                           ; $41a1: $fc
	rlca                                             ; $41a2: $07
	cp c                                             ; $41a3: $b9
	rrca                                             ; $41a4: $0f
	ld a, d                                          ; $41a5: $7a
	rrca                                             ; $41a6: $0f
	ld a, [$e90f]                                    ; $41a7: $fa $0f $e9
	rst SubAFromDE                                          ; $41aa: $df
	ret nz                                           ; $41ab: $c0

	add b                                            ; $41ac: $80
	jr nz, jr_06f_418f                               ; $41ad: $20 $e0

	ret nc                                           ; $41af: $d0

	jr nc, @+$72                                     ; $41b0: $30 $70

	sub b                                            ; $41b2: $90
	jr nc, @-$2e                                     ; $41b3: $30 $d0

	ret c                                            ; $41b5: $d8

	jr z, jr_06f_4220                                ; $41b6: $28 $68

	sbc b                                            ; $41b8: $98
	inc [hl]                                         ; $41b9: $34
	call z, $e49c                                    ; $41ba: $cc $9c $e4
	ld c, d                                          ; $41bd: $4a
	or $27                                           ; $41be: $f6 $27
	ld sp, hl                                        ; $41c0: $f9
	pop de                                           ; $41c1: $d1
	cp a                                             ; $41c2: $bf

Jump_06f_41c3:
	jp c, $adee                                      ; $41c3: $da $ee $ad

	rst FarCall                                          ; $41c6: $f7
	xor l                                            ; $41c7: $ad
	rst FarCall                                          ; $41c8: $f7
	ld d, [hl]                                       ; $41c9: $56
	ei                                               ; $41ca: $fb
	ld d, [hl]                                       ; $41cb: $56
	adc a                                            ; $41cc: $8f
	ei                                               ; $41cd: $fb
	adc $7b                                          ; $41ce: $ce $7b
	db $eb                                           ; $41d0: $eb
	ld e, l                                          ; $41d1: $5d
	ei                                               ; $41d2: $fb
	ld c, l                                          ; $41d3: $4d
	ld e, e                                          ; $41d4: $5b
	db $ed                                           ; $41d5: $ed
	ld e, a                                          ; $41d6: $5f
	jp hl                                            ; $41d7: $e9


jr_06f_41d8:
	ld c, l                                          ; $41d8: $4d
	ei                                               ; $41d9: $fb
	db $ed                                           ; $41da: $ed
	ei                                               ; $41db: $fb
	sub $7b                                          ; $41dc: $d6 $7b
	cp $9e                                           ; $41de: $fe $9e
	sub [hl]                                         ; $41e0: $96
	ld a, e                                          ; $41e1: $7b
	cp $95                                           ; $41e2: $fe $95
	or e                                             ; $41e4: $b3
	rst SubAFromDE                                          ; $41e5: $df
	or e                                             ; $41e6: $b3
	rst SubAFromDE                                          ; $41e7: $df
	or d                                             ; $41e8: $b2
	sbc $b2                                          ; $41e9: $de $b2
	sbc $f2                                          ; $41eb: $de $f2
	sbc [hl]                                         ; $41ed: $9e
	ld [hl], a                                       ; $41ee: $77
	cp $85                                           ; $41ef: $fe $85
	ld a, [$be9e]                                    ; $41f1: $fa $9e $be
	jp c, $ddbb                                      ; $41f4: $da $bb $dd

	cp l                                             ; $41f7: $bd
	rst SubAFromDE                                          ; $41f8: $df
	rst SubAFromHL                                          ; $41f9: $d7
	ld [hl], a                                       ; $41fa: $77
	ld d, c                                          ; $41fb: $51
	pop af                                           ; $41fc: $f1
	ld c, b                                          ; $41fd: $48
	ld hl, sp-$5c                                    ; $41fe: $f8 $a4
	cp h                                             ; $4200: $bc
	sbc d                                            ; $4201: $9a
	sbc [hl]                                         ; $4202: $9e
	add [hl]                                         ; $4203: $86
	add [hl]                                         ; $4204: $86
	add c                                            ; $4205: $81
	add c                                            ; $4206: $81
	add b                                            ; $4207: $80
	add b                                            ; $4208: $80
	ret nz                                           ; $4209: $c0

	ret nz                                           ; $420a: $c0

	ld l, e                                          ; $420b: $6b
	ld h, d                                          ; $420c: $62
	sub b                                            ; $420d: $90
	rst $38                                          ; $420e: $ff
	ld h, b                                          ; $420f: $60
	rst $38                                          ; $4210: $ff
	sub b                                            ; $4211: $90
	di                                               ; $4212: $f3
	sub b                                            ; $4213: $90
	ei                                               ; $4214: $fb
	adc b                                            ; $4215: $88
	ld sp, hl                                        ; $4216: $f9

jr_06f_4217:
	adc b                                            ; $4217: $88
	db $fc                                           ; $4218: $fc
	adc b                                            ; $4219: $88
	db $fc                                           ; $421a: $fc
	inc b                                            ; $421b: $04
	db $fd                                           ; $421c: $fd
	ld a, e                                          ; $421d: $7b
	cp $90                                           ; $421e: $fe $90

jr_06f_4220:
	rst $38                                          ; $4220: $ff
	ld c, $ff                                        ; $4221: $0e $ff
	rst SubAFromDE                                          ; $4223: $df
	rst $38                                          ; $4224: $ff
	jr c, jr_06f_4217                                ; $4225: $38 $f0

	ld e, $f8                                        ; $4227: $1e $f8
	sbc a                                            ; $4229: $9f
	or $5f                                           ; $422a: $f6 $5f
	rst FarCall                                          ; $422c: $f7
	ld e, h                                          ; $422d: $5c
	db $f4                                           ; $422e: $f4
	ld b, a                                          ; $422f: $47
	ld l, d                                          ; $4230: $6a
	ld h, [hl]                                       ; $4231: $66
	ld d, $df                                        ; $4232: $16 $df
	add b                                            ; $4234: $80
	sbc l                                            ; $4235: $9d
	ld b, b                                          ; $4236: $40
	ret nz                                           ; $4237: $c0

	ld c, a                                          ; $4238: $4f
	cp $db                                           ; $4239: $fe $db
	add b                                            ; $423b: $80
	ccf                                              ; $423c: $3f
	jr c, jr_06f_41d8                                ; $423d: $38 $99

	ld [hl], b                                       ; $423f: $70
	ldh a, [$7e]                                     ; $4240: $f0 $7e
	adc $3f                                          ; $4242: $ce $3f
	pop hl                                           ; $4244: $e1
	ld a, e                                          ; $4245: $7b
	cp $92                                           ; $4246: $fe $92
	ldh [$3f], a                                     ; $4248: $e0 $3f
	pop af                                           ; $424a: $f1
	rra                                              ; $424b: $1f
	ldh a, [c]                                       ; $424c: $f2
	rra                                              ; $424d: $1f
	or $1f                                           ; $424e: $f6 $1f
	db $f4                                           ; $4250: $f4
	rra                                              ; $4251: $1f
	push af                                          ; $4252: $f5
	rst $38                                          ; $4253: $ff
	ldh a, [c]                                       ; $4254: $f2
	ld a, e                                          ; $4255: $7b
	sbc c                                            ; $4256: $99
	ld a, h                                          ; $4257: $7c
	add b                                            ; $4258: $80
	ld a, a                                          ; $4259: $7f
	add b                                            ; $425a: $80
	ld d, c                                          ; $425b: $51
	jp nz, Jump_06f_687b                             ; $425c: $c2 $7b $68

	ld [hl], a                                       ; $425f: $77
	or a                                             ; $4260: $b7
	sub d                                            ; $4261: $92
	ret nz                                           ; $4262: $c0

	ldh [rAUD4LEN], a                                ; $4263: $e0 $20
	ldh [rAUD4LEN], a                                ; $4265: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $4267: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $4269: $f0 $10
	ld hl, sp-$78                                    ; $426b: $f8 $88
	ld hl, sp+$48                                    ; $426d: $f8 $48
	inc e                                            ; $426f: $1c
	nop                                              ; $4270: $00
	rst SubAFromDE                                          ; $4271: $df
	xor d                                            ; $4272: $aa
	sub d                                            ; $4273: $92
	cp e                                             ; $4274: $bb
	xor d                                            ; $4275: $aa
	xor d                                            ; $4276: $aa
	sbc c                                            ; $4277: $99
	sbc c                                            ; $4278: $99
	call z, $22aa                                    ; $4279: $cc $aa $22
	sbc c                                            ; $427c: $99
	sbc c                                            ; $427d: $99
	ld d, l                                          ; $427e: $55
	xor d                                            ; $427f: $aa
	nop                                              ; $4280: $00
	ld h, e                                          ; $4281: $63
	ei                                               ; $4282: $fb
	ld [hl], e                                       ; $4283: $73
	pop af                                           ; $4284: $f1
	sbc $aa                                          ; $4285: $de $aa
	ld a, e                                          ; $4287: $7b
	ei                                               ; $4288: $fb
	rst SubAFromDE                                          ; $4289: $df
	call z, $01e9                                    ; $428a: $cc $e9 $01
	add b                                            ; $428d: $80
	ld a, [hl]                                       ; $428e: $7e
	rst SubAFromBC                                          ; $428f: $e7
	ei                                               ; $4290: $fb
	sbc h                                            ; $4291: $9c
	db $ed                                           ; $4292: $ed
	inc sp                                           ; $4293: $33
	jp c, $efe7                                      ; $4294: $da $e7 $ef

	sbc $94                                          ; $4297: $de $94
	rst $38                                          ; $4299: $ff
	cp a                                             ; $429a: $bf
	push af                                          ; $429b: $f5
	ld l, a                                          ; $429c: $6f
	push af                                          ; $429d: $f5
	or l                                             ; $429e: $b5
	rst AddAOntoHL                                          ; $429f: $ef
	cp e                                             ; $42a0: $bb
	rst AddAOntoHL                                          ; $42a1: $ef
	ld e, d                                          ; $42a2: $5a
	ld a, a                                          ; $42a3: $7f
	ld e, e                                          ; $42a4: $5b
	ld a, h                                          ; $42a5: $7c
	dec hl                                           ; $42a6: $2b
	inc a                                            ; $42a7: $3c
	rra                                              ; $42a8: $1f
	inc e                                            ; $42a9: $1c
	dec l                                            ; $42aa: $2d
	scf                                              ; $42ab: $37
	dec a                                            ; $42ac: $3d
	sub b                                            ; $42ad: $90
	ld l, $3b                                        ; $42ae: $2e $3b
	ld l, $36                                        ; $42b0: $2e $36
	dec hl                                           ; $42b2: $2b
	dec de                                           ; $42b3: $1b
	dec d                                            ; $42b4: $15
	rrca                                             ; $42b5: $0f
	dec c                                            ; $42b6: $0d
	inc bc                                           ; $42b7: $03
	inc bc                                           ; $42b8: $03
	ld bc, $0201                                     ; $42b9: $01 $01 $02
	inc bc                                           ; $42bc: $03
	ld [hl], a                                       ; $42bd: $77
	cp $dd                                           ; $42be: $fe $dd
	inc bc                                           ; $42c0: $03
	db $dd                                           ; $42c1: $dd
	ld bc, $80fb                                     ; $42c2: $01 $fb $80
	adc h                                            ; $42c5: $8c
	ld a, a                                          ; $42c6: $7f
	ld sp, hl                                        ; $42c7: $f9
	rst $38                                          ; $42c8: $ff
	adc $7b                                          ; $42c9: $ce $7b
	cp e                                             ; $42cb: $bb
	sbc $ff                                          ; $42cc: $de $ff
	xor h                                            ; $42ce: $ac
	cp l                                             ; $42cf: $bd
	db $ec                                           ; $42d0: $ec
	push af                                          ; $42d1: $f5
	ld c, h                                          ; $42d2: $4c
	cp $64                                           ; $42d3: $fe $64
	call c, Call_06f_7fe2                            ; $42d5: $dc $e2 $7f
	add b                                            ; $42d8: $80
	db $db                                           ; $42d9: $db
	inc a                                            ; $42da: $3c
	cp l                                             ; $42db: $bd
	ld a, [hl]                                       ; $42dc: $7e
	ld h, [hl]                                       ; $42dd: $66
	and $ce                                          ; $42de: $e6 $ce
	adc $7a                                          ; $42e0: $ce $7a
	cp $aa                                           ; $42e2: $fe $aa
	add b                                            ; $42e4: $80
	ld a, [hl]                                       ; $42e5: $7e
	or $2d                                           ; $42e6: $f6 $2d
	ld sp, hl                                        ; $42e8: $f9
	ld e, $7a                                        ; $42e9: $1e $7a
	add l                                            ; $42eb: $85
	ld a, a                                          ; $42ec: $7f
	add b                                            ; $42ed: $80
	cp a                                             ; $42ee: $bf
	ret nz                                           ; $42ef: $c0

	cp a                                             ; $42f0: $bf
	ret nz                                           ; $42f1: $c0

	ld e, a                                          ; $42f2: $5f
	ldh [$6f], a                                     ; $42f3: $e0 $6f
	ldh a, [$9f]                                     ; $42f5: $f0 $9f
	sbc b                                            ; $42f7: $98
	dec e                                            ; $42f8: $1d
	ld e, $1b                                        ; $42f9: $1e $1b
	dec de                                           ; $42fb: $1b
	jr @+$1a                                         ; $42fc: $18 $18

	ld de, $a211                                     ; $42fe: $11 $11 $a2
	and e                                            ; $4301: $a3
	inc b                                            ; $4302: $04
	rlca                                             ; $4303: $07

jr_06f_4304:
	sub [hl]                                         ; $4304: $96
	ld [$f30f], sp                                   ; $4305: $08 $0f $f3
	db $fd                                           ; $4308: $fd
	ld e, l                                          ; $4309: $5d
	adc [hl]                                         ; $430a: $8e
	add [hl]                                         ; $430b: $86
	inc bc                                           ; $430c: $03
	add e                                            ; $430d: $83
	ld l, e                                          ; $430e: $6b
	or c                                             ; $430f: $b1
	sbc [hl]                                         ; $4310: $9e
	add c                                            ; $4311: $81
	cp b                                             ; $4312: $b8
	inc bc                                           ; $4313: $03
	inc bc                                           ; $4314: $03
	ld bc, $0001                                     ; $4315: $01 $01 $00
	nop                                              ; $4318: $00
	ld d, h                                          ; $4319: $54
	cp d                                             ; $431a: $ba
	or $91                                           ; $431b: $f6 $91
	db $ed                                           ; $431d: $ed
	di                                               ; $431e: $f3
	sbc [hl]                                         ; $431f: $9e
	db $db                                           ; $4320: $db
	adc a                                            ; $4321: $8f
	rst GetHLinHL                                          ; $4322: $cf
	add a                                            ; $4323: $87
	rst $38                                          ; $4324: $ff
	add d                                            ; $4325: $82
	ld a, l                                          ; $4326: $7d
	ldh a, [c]                                       ; $4327: $f2
	adc a                                            ; $4328: $8f
	rst $38                                          ; $4329: $ff
	rst $38                                          ; $432a: $ff
	cp a                                             ; $432b: $bf
	rst $38                                          ; $432c: $ff
	cp l                                             ; $432d: $bd
	rst SubAFromDE                                          ; $432e: $df
	ld a, [hl]                                       ; $432f: $7e
	sub c                                            ; $4330: $91
	rst $38                                          ; $4331: $ff
	and a                                            ; $4332: $a7
	and a                                            ; $4333: $a7
	cp a                                             ; $4334: $bf
	ccf                                              ; $4335: $3f
	dec l                                            ; $4336: $2d
	ccf                                              ; $4337: $3f
	inc sp                                           ; $4338: $33
	dec e                                            ; $4339: $1d
	sbc e                                            ; $433a: $9b
	ld [de], a                                       ; $433b: $12
	ld a, a                                          ; $433c: $7f
	inc c                                            ; $433d: $0c
	and c                                            ; $433e: $a1
	cp h                                             ; $433f: $bc
	inc bc                                           ; $4340: $03
	inc bc                                           ; $4341: $03
	rlca                                             ; $4342: $07
	rlca                                             ; $4343: $07
	ld c, $80                                        ; $4344: $0e $80
	ld bc, $031d                                     ; $4346: $01 $1d $03
	inc sp                                           ; $4349: $33

jr_06f_434a:
	rrca                                             ; $434a: $0f
	ld l, a                                          ; $434b: $6f
	ld e, $b3                                        ; $434c: $1e $b3
	ld a, a                                          ; $434e: $7f
	jp $33ff                                         ; $434f: $c3 $ff $33


	adc $f7                                          ; $4352: $ce $f7
	inc c                                            ; $4354: $0c
	ld l, a                                          ; $4355: $6f

jr_06f_4356:
	jr @-$05                                         ; $4356: $18 $f9

	jr nc, jr_06f_4304                               ; $4358: $30 $aa

	rst FarCall                                          ; $435a: $f7
	db $ec                                           ; $435b: $ec
	rst FarCall                                          ; $435c: $f7
	ld d, l                                          ; $435d: $55
	xor $c5                                          ; $435e: $ee $c5
	cp $c8                                           ; $4360: $fe $c8
	rst $38                                          ; $4362: $ff
	ld hl, sp+$7f                                    ; $4363: $f8 $7f
	add b                                            ; $4365: $80
	ret nc                                           ; $4366: $d0

	ld a, a                                          ; $4367: $7f
	jp hl                                            ; $4368: $e9


	rra                                              ; $4369: $1f
	rst $38                                          ; $436a: $ff
	rrca                                             ; $436b: $0f
	db $fd                                           ; $436c: $fd
	add hl, bc                                       ; $436d: $09
	ld a, [$fc0c]                                    ; $436e: $fa $0c $fc
	adc d                                            ; $4371: $8a
	db $db                                           ; $4372: $db
	xor $fe                                          ; $4373: $ee $fe
	dec c                                            ; $4375: $0d
	db $ed                                           ; $4376: $ed
	dec de                                           ; $4377: $1b
	db $eb                                           ; $4378: $eb
	rra                                              ; $4379: $1f
	db $dd                                           ; $437a: $dd
	ccf                                              ; $437b: $3f
	db $dd                                           ; $437c: $dd
	ccf                                              ; $437d: $3f
	or l                                             ; $437e: $b5
	ld a, a                                          ; $437f: $7f
	or l                                             ; $4380: $b5
	ld a, a                                          ; $4381: $7f
	ld [hl], h                                       ; $4382: $74
	rst $38                                          ; $4383: $ff
	ld d, h                                          ; $4384: $54
	sub d                                            ; $4385: $92
	rst $38                                          ; $4386: $ff
	sub h                                            ; $4387: $94
	rst $38                                          ; $4388: $ff
	ld e, d                                          ; $4389: $5a
	ld a, a                                          ; $438a: $7f
	xor d                                            ; $438b: $aa
	xor a                                            ; $438c: $af
	push bc                                          ; $438d: $c5
	ld b, a                                          ; $438e: $47
	jp $e043                                         ; $438f: $c3 $43 $e0


	jr nz, jr_06f_440b                               ; $4392: $20 $77

	cp $9b                                           ; $4394: $fe $9b
	cp $1e                                           ; $4396: $fe $1e
	rst $38                                          ; $4398: $ff
	inc de                                           ; $4399: $13
	ld d, $e0                                        ; $439a: $16 $e0
	sbc e                                            ; $439c: $9b
	inc l                                            ; $439d: $2c
	scf                                              ; $439e: $37
	dec a                                            ; $439f: $3d
	cpl                                              ; $43a0: $2f
	scf                                              ; $43a1: $37
	nop                                              ; $43a2: $00
	ld [hl], e                                       ; $43a3: $73
	ld e, h                                          ; $43a4: $5c
	sbc e                                            ; $43a5: $9b
	cp $4e                                           ; $43a6: $fe $4e
	adc $fa                                          ; $43a8: $ce $fa
	inc bc                                           ; $43aa: $03
	nop                                              ; $43ab: $00
	ld a, a                                          ; $43ac: $7f
	nop                                              ; $43ad: $00
	ccf                                              ; $43ae: $3f
	jr nz, jr_06f_434a                               ; $43af: $20 $99

	db $e3                                           ; $43b1: $e3
	inc e                                            ; $43b2: $1c
	cp [hl]                                          ; $43b3: $be
	ld a, a                                          ; $43b4: $7f
	ld h, a                                          ; $43b5: $67
	rst SubAFromBC                                          ; $43b6: $e7
	inc bc                                           ; $43b7: $03
	jr nz, @+$11                                     ; $43b8: $20 $0f

	jr nz, jr_06f_4356                               ; $43ba: $20 $9a

	ld a, [bc]                                       ; $43bc: $0a
	cp e                                             ; $43bd: $bb
	adc $7e                                          ; $43be: $ce $7e
	call $2077                                       ; $43c0: $cd $77 $20
	ld b, $20                                        ; $43c3: $06 $20
	cpl                                              ; $43c5: $2f
	ld b, b                                          ; $43c6: $40
	ld a, a                                          ; $43c7: $7f
	cp $93                                           ; $43c8: $fe $93
	add $00                                          ; $43ca: $c6 $00
	cp b                                             ; $43cc: $b8
	inc a                                            ; $43cd: $3c
	sub $de                                          ; $43ce: $d6 $de
	cp $7c                                           ; $43d0: $fe $7c
	cp d                                             ; $43d2: $ba
	ld a, l                                          ; $43d3: $7d
	ld sp, hl                                        ; $43d4: $f9
	ld b, $03                                        ; $43d5: $06 $03
	ld b, b                                          ; $43d7: $40
	ld d, e                                          ; $43d8: $53
	ld b, b                                          ; $43d9: $40
	ld [hl], e                                       ; $43da: $73
	inc a                                            ; $43db: $3c
	sub l                                            ; $43dc: $95
	nop                                              ; $43dd: $00
	xor [hl]                                         ; $43de: $ae
	rra                                              ; $43df: $1f
	ld a, l                                          ; $43e0: $7d
	ld a, a                                          ; $43e1: $7f
	scf                                              ; $43e2: $37
	rla                                              ; $43e3: $17
	sbc a                                            ; $43e4: $9f
	ld c, $7f                                        ; $43e5: $0e $7f
	cp e                                             ; $43e7: $bb
	and c                                            ; $43e8: $a1
	inc bc                                           ; $43e9: $03
	inc bc                                           ; $43ea: $03
	rlca                                             ; $43eb: $07
	rlca                                             ; $43ec: $07
	ld c, $03                                        ; $43ed: $0e $03
	ld b, b                                          ; $43ef: $40
	ld e, a                                          ; $43f0: $5f
	ld b, b                                          ; $43f1: $40
	sbc h                                            ; $43f2: $9c
	ei                                               ; $43f3: $fb
	ld c, $fe                                        ; $43f4: $0e $fe
	dec hl                                           ; $43f6: $2b
	ld b, b                                          ; $43f7: $40
	sbc c                                            ; $43f8: $99
	cp d                                             ; $43f9: $ba
	rst AddAOntoHL                                          ; $43fa: $ef
	ld e, c                                          ; $43fb: $59
	ld a, a                                          ; $43fc: $7f
	ld e, e                                          ; $43fd: $5b
	ld a, [hl]                                       ; $43fe: $7e
	ld [hl], e                                       ; $43ff: $73
	ld b, b                                          ; $4400: $40
	sbc [hl]                                         ; $4401: $9e
	ld [hl], $43                                     ; $4402: $36 $43
	ld b, b                                          ; $4404: $40
	sbc d                                            ; $4405: $9a
	ld b, h                                          ; $4406: $44
	db $fc                                           ; $4407: $fc
	ldh [c], a                                       ; $4408: $e2
	cp a                                             ; $4409: $bf
	ret nz                                           ; $440a: $c0

jr_06f_440b:
	ld [hl], a                                       ; $440b: $77
	ld a, [hl]                                       ; $440c: $7e
	sbc [hl]                                         ; $440d: $9e
	cp $be                                           ; $440e: $fe $be
	add $bc                                          ; $4410: $c6 $bc
	add $9c                                          ; $4412: $c6 $9c
	and $fa                                          ; $4414: $e6 $fa
	dec a                                            ; $4416: $3d
	inc bc                                           ; $4417: $03
	ld b, b                                          ; $4418: $40
	ld h, a                                          ; $4419: $67
	ld b, b                                          ; $441a: $40
	sbc d                                            ; $441b: $9a
	ldh [c], a                                       ; $441c: $e2
	sbc l                                            ; $441d: $9d
	cp $f3                                           ; $441e: $fe $f3
	rrca                                             ; $4420: $0f
	ld h, a                                          ; $4421: $67
	ld a, $7f                                        ; $4422: $3e $7f
	cp $99                                           ; $4424: $fe $99
	ld hl, $6d00                                     ; $4426: $21 $00 $6d
	ld [hl], e                                       ; $4429: $73
	sbc [hl]                                         ; $442a: $9e
	rra                                              ; $442b: $1f
	inc bc                                           ; $442c: $03
	ld b, b                                          ; $442d: $40
	rra                                              ; $442e: $1f
	ld b, b                                          ; $442f: $40
	ld a, l                                          ; $4430: $7d
	and b                                            ; $4431: $a0
	adc c                                            ; $4432: $89
	sbc e                                            ; $4433: $9b
	db $eb                                           ; $4434: $eb
	rra                                              ; $4435: $1f
	ld e, l                                          ; $4436: $5d

jr_06f_4437:
	jr nz, jr_06f_4437                               ; $4437: $20 $fe

	jr nz, jr_06f_4487                               ; $4439: $20 $4c

	ld [hl], b                                       ; $443b: $70
	jr jr_06f_445e                                   ; $443c: $18 $20

	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	ld b, b                                          ; $4440: $40
	inc h                                            ; $4441: $24
	jr c, jr_06f_445c                                ; $4442: $38 $18

Call_06f_4444:
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	ld [$0010], sp                                   ; $4446: $08 $10 $00
	cp a                                             ; $4449: $bf
	add b                                            ; $444a: $80
	and d                                            ; $444b: $a2
	sub [hl]                                         ; $444c: $96
	pop bc                                           ; $444d: $c1
	db $e3                                           ; $444e: $e3
	rst $38                                          ; $444f: $ff
	rst $38                                          ; $4450: $ff
	sbc h                                            ; $4451: $9c
	ret nz                                           ; $4452: $c0

	add b                                            ; $4453: $80
	ld h, b                                          ; $4454: $60
	ret nz                                           ; $4455: $c0

	ld e, a                                          ; $4456: $5f
	ldh [$9d], a                                     ; $4457: $e0 $9d
	ld a, h                                          ; $4459: $7c
	inc a                                            ; $445a: $3c
	rlca                                             ; $445b: $07

jr_06f_445c:
	ldh [$9c], a                                     ; $445c: $e0 $9c

jr_06f_445e:
	inc [hl]                                         ; $445e: $34
	inc e                                            ; $445f: $1c
	jr jr_06f_44d5                                   ; $4460: $18 $73

	sbc $2f                                          ; $4462: $de $2f
	ldh [$9e], a                                     ; $4464: $e0 $9e
	ld e, b                                          ; $4466: $58
	ld a, e                                          ; $4467: $7b
	ldh [$97], a                                     ; $4468: $e0 $97
	inc d                                            ; $446a: $14
	inc e                                            ; $446b: $1c
	jr @+$0a                                         ; $446c: $18 $08

	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	add h                                            ; $4470: $84
	ld [$e05f], sp                                   ; $4471: $08 $5f $e0
	rst SubAFromBC                                          ; $4474: $e7
	ld bc, $7e80                                     ; $4475: $01 $80 $7e
	rst SubAFromBC                                          ; $4478: $e7
	ei                                               ; $4479: $fb
	sbc h                                            ; $447a: $9c
	db $ed                                           ; $447b: $ed
	inc sp                                           ; $447c: $33
	jp c, $efe7                                      ; $447d: $da $e7 $ef

	sbc $94                                          ; $4480: $de $94
	rst $38                                          ; $4482: $ff
	cp a                                             ; $4483: $bf
	push af                                          ; $4484: $f5
	ld l, a                                          ; $4485: $6f
	push af                                          ; $4486: $f5

jr_06f_4487:
	or l                                             ; $4487: $b5
	rst AddAOntoHL                                          ; $4488: $ef
	cp d                                             ; $4489: $ba
	rst AddAOntoHL                                          ; $448a: $ef
	ld e, e                                          ; $448b: $5b
	ld a, h                                          ; $448c: $7c
	ld e, e                                          ; $448d: $5b
	ld a, h                                          ; $448e: $7c
	dec hl                                           ; $448f: $2b
	inc a                                            ; $4490: $3c
	rra                                              ; $4491: $1f
	dec e                                            ; $4492: $1d
	cpl                                              ; $4493: $2f
	inc [hl]                                         ; $4494: $34
	dec a                                            ; $4495: $3d
	sub b                                            ; $4496: $90
	ld l, $3b                                        ; $4497: $2e $3b
	ld l, $36                                        ; $4499: $2e $36
	dec hl                                           ; $449b: $2b
	dec de                                           ; $449c: $1b
	dec d                                            ; $449d: $15
	rrca                                             ; $449e: $0f
	dec c                                            ; $449f: $0d
	inc bc                                           ; $44a0: $03
	inc bc                                           ; $44a1: $03
	ld bc, $0201                                     ; $44a2: $01 $01 $02
	inc bc                                           ; $44a5: $03
	ld [hl], a                                       ; $44a6: $77
	cp $dd                                           ; $44a7: $fe $dd
	inc bc                                           ; $44a9: $03
	db $dd                                           ; $44aa: $dd
	ld bc, $80fb                                     ; $44ab: $01 $fb $80
	adc h                                            ; $44ae: $8c
	ld a, a                                          ; $44af: $7f
	ld sp, hl                                        ; $44b0: $f9
	rst $38                                          ; $44b1: $ff
	adc $7b                                          ; $44b2: $ce $7b
	cp e                                             ; $44b4: $bb
	sbc $ff                                          ; $44b5: $de $ff
	xor h                                            ; $44b7: $ac
	cp l                                             ; $44b8: $bd
	db $ec                                           ; $44b9: $ec
	push af                                          ; $44ba: $f5
	ld c, h                                          ; $44bb: $4c
	cp $e4                                           ; $44bc: $fe $e4
	ld c, h                                          ; $44be: $4c
	ldh a, [c]                                       ; $44bf: $f2
	rst $38                                          ; $44c0: $ff
	nop                                              ; $44c1: $00
	cp e                                             ; $44c2: $bb
	ld a, h                                          ; $44c3: $7c
	ld a, l                                          ; $44c4: $7d
	cp $e6                                           ; $44c5: $fe $e6
	and $4e                                          ; $44c7: $e6 $4e
	adc $fa                                          ; $44c9: $ce $fa
	ld a, [hl]                                       ; $44cb: $7e
	ld a, [hl+]                                      ; $44cc: $2a
	add b                                            ; $44cd: $80
	ld a, [hl]                                       ; $44ce: $7e
	rst FarCall                                          ; $44cf: $f7
	inc l                                            ; $44d0: $2c
	ei                                               ; $44d1: $fb
	inc e                                            ; $44d2: $1c
	ld a, a                                          ; $44d3: $7f
	add b                                            ; $44d4: $80

jr_06f_44d5:
	ld a, a                                          ; $44d5: $7f
	add b                                            ; $44d6: $80
	cp a                                             ; $44d7: $bf
	ret nz                                           ; $44d8: $c0

	cp a                                             ; $44d9: $bf
	ret nz                                           ; $44da: $c0

	ld e, a                                          ; $44db: $5f
	ldh [$6f], a                                     ; $44dc: $e0 $6f
	ldh a, [$9f]                                     ; $44de: $f0 $9f
	sbc b                                            ; $44e0: $98
	dec e                                            ; $44e1: $1d
	ld e, $1b                                        ; $44e2: $1e $1b
	dec de                                           ; $44e4: $1b
	jr @+$1a                                         ; $44e5: $18 $18

	ld de, $a211                                     ; $44e7: $11 $11 $a2
	and e                                            ; $44ea: $a3
	inc b                                            ; $44eb: $04
	rlca                                             ; $44ec: $07
	sub [hl]                                         ; $44ed: $96
	ld [$f30f], sp                                   ; $44ee: $08 $0f $f3
	db $fd                                           ; $44f1: $fd

jr_06f_44f2:
	ld e, l                                          ; $44f2: $5d
	adc [hl]                                         ; $44f3: $8e
	add [hl]                                         ; $44f4: $86
	inc bc                                           ; $44f5: $03
	add e                                            ; $44f6: $83
	ld l, e                                          ; $44f7: $6b
	or c                                             ; $44f8: $b1
	sbc h                                            ; $44f9: $9c
	add c                                            ; $44fa: $81
	nop                                              ; $44fb: $00
	inc bc                                           ; $44fc: $03
	ld a, e                                          ; $44fd: $7b
	cp $7f                                           ; $44fe: $fe $7f
	db $f4                                           ; $4500: $f4
	ld l, a                                          ; $4501: $6f
	ldh a, [c]                                       ; $4502: $f2
	add b                                            ; $4503: $80
	stop                                             ; $4504: $10 $00
	jr c, jr_06f_4508                                ; $4506: $38 $00

jr_06f_4508:
	or $ed                                           ; $4508: $f6 $ed
	di                                               ; $450a: $f3
	sbc [hl]                                         ; $450b: $9e
	db $db                                           ; $450c: $db
	adc a                                            ; $450d: $8f
	rst GetHLinHL                                          ; $450e: $cf
	add a                                            ; $450f: $87
	rst $38                                          ; $4510: $ff
	add d                                            ; $4511: $82
	dec a                                            ; $4512: $3d
	cp $db                                           ; $4513: $fe $db
	rst SubAFromBC                                          ; $4515: $e7
	rst $38                                          ; $4516: $ff
	nop                                              ; $4517: $00
	db $db                                           ; $4518: $db
	inc a                                            ; $4519: $3c
	db $fd                                           ; $451a: $fd
	ld a, [hl]                                       ; $451b: $7e
	db $d3                                           ; $451c: $d3
	di                                               ; $451d: $f3
	and a                                            ; $451e: $a7
	daa                                              ; $451f: $27
	cp a                                             ; $4520: $bf
	ccf                                              ; $4521: $3f
	dec l                                            ; $4522: $2d
	sub a                                            ; $4523: $97
	ccf                                              ; $4524: $3f
	inc sp                                           ; $4525: $33
	dec e                                            ; $4526: $1d
	dec de                                           ; $4527: $1b
	ld [de], a                                       ; $4528: $12
	ccf                                              ; $4529: $3f
	inc c                                            ; $452a: $0c
	ld bc, $cc73                                     ; $452b: $01 $73 $cc
	sbc [hl]                                         ; $452e: $9e
	rlca                                             ; $452f: $07
	ld a, e                                          ; $4530: $7b
	cp $80                                           ; $4531: $fe $80
	ld c, $01                                        ; $4533: $0e $01
	dec e                                            ; $4535: $1d
	inc bc                                           ; $4536: $03
	inc sp                                           ; $4537: $33
	rrca                                             ; $4538: $0f
	ld l, a                                          ; $4539: $6f
	ld e, $b3                                        ; $453a: $1e $b3
	ld a, a                                          ; $453c: $7f
	jp $33ff                                         ; $453d: $c3 $ff $33


	adc $f7                                          ; $4540: $ce $f7
	inc c                                            ; $4542: $0c
	ld l, a                                          ; $4543: $6f
	jr @-$05                                         ; $4544: $18 $f9

	jr nc, jr_06f_44f2                               ; $4546: $30 $aa

	rst FarCall                                          ; $4548: $f7
	db $ec                                           ; $4549: $ec
	rst FarCall                                          ; $454a: $f7
	ld d, l                                          ; $454b: $55
	xor $c5                                          ; $454c: $ee $c5
	cp $c8                                           ; $454e: $fe $c8
	rst $38                                          ; $4550: $ff
	ld hl, sp-$80                                    ; $4551: $f8 $80
	ld a, a                                          ; $4553: $7f
	ret nc                                           ; $4554: $d0

	ld a, a                                          ; $4555: $7f
	jp hl                                            ; $4556: $e9


	rra                                              ; $4557: $1f
	rst $38                                          ; $4558: $ff
	rrca                                             ; $4559: $0f
	db $fd                                           ; $455a: $fd
	add hl, bc                                       ; $455b: $09
	ld a, d                                          ; $455c: $7a
	adc h                                            ; $455d: $8c
	call c, Call_06f_7bea                            ; $455e: $dc $ea $7b
	adc [hl]                                         ; $4561: $8e
	cp $0d                                           ; $4562: $fe $0d
	db $ed                                           ; $4564: $ed
	dec de                                           ; $4565: $1b
	db $eb                                           ; $4566: $eb
	rra                                              ; $4567: $1f
	db $dd                                           ; $4568: $dd
	ccf                                              ; $4569: $3f
	db $dd                                           ; $456a: $dd
	ccf                                              ; $456b: $3f
	or l                                             ; $456c: $b5
	ld a, a                                          ; $456d: $7f
	or l                                             ; $456e: $b5
	ld a, a                                          ; $456f: $7f
	ld [hl], h                                       ; $4570: $74
	rst $38                                          ; $4571: $ff
	sub c                                            ; $4572: $91
	ld d, h                                          ; $4573: $54
	rst $38                                          ; $4574: $ff
	sub h                                            ; $4575: $94
	rst $38                                          ; $4576: $ff
	ld e, d                                          ; $4577: $5a
	ld a, a                                          ; $4578: $7f
	xor d                                            ; $4579: $aa
	xor a                                            ; $457a: $af
	push bc                                          ; $457b: $c5
	ld b, a                                          ; $457c: $47
	jp $e043                                         ; $457d: $c3 $43 $e0


	jr nz, jr_06f_45f9                               ; $4580: $20 $77

	cp $9b                                           ; $4582: $fe $9b
	cp $1e                                           ; $4584: $fe $1e
	rst $38                                          ; $4586: $ff
	inc de                                           ; $4587: $13
	ld b, $e0                                        ; $4588: $06 $e0
	scf                                              ; $458a: $37
	nop                                              ; $458b: $00
	halt                                             ; $458c: $76
	cp $9c                                           ; $458d: $fe $9c
	ld a, h                                          ; $458f: $7c
	cp $ce                                           ; $4590: $fe $ce
	inc bc                                           ; $4592: $03
	nop                                              ; $4593: $00
	ld [hl], a                                       ; $4594: $77
	nop                                              ; $4595: $00
	ld b, a                                          ; $4596: $47
	jr nz, jr_06f_4610                               ; $4597: $20 $77

	cp $97                                           ; $4599: $fe $97
	cp $3f                                           ; $459b: $fe $3f
	rst SubAFromBC                                          ; $459d: $e7
	ld h, a                                          ; $459e: $67
	cp a                                             ; $459f: $bf
	rst $38                                          ; $45a0: $ff
	dec l                                            ; $45a1: $2d
	cp a                                             ; $45a2: $bf
	inc bc                                           ; $45a3: $03
	jr nz, @+$05                                     ; $45a4: $20 $03

	jr nz, jr_06f_4627                               ; $45a6: $20 $7f

	jr nz, jr_06f_45c5                               ; $45a8: $20 $1b

	ld b, b                                          ; $45aa: $40
	sbc h                                            ; $45ab: $9c
	inc e                                            ; $45ac: $1c
	cpl                                              ; $45ad: $2f
	dec [hl]                                         ; $45ae: $35
	daa                                              ; $45af: $27
	ld b, b                                          ; $45b0: $40
	ld a, a                                          ; $45b1: $7f
	cp $93                                           ; $45b2: $fe $93
	add [hl]                                         ; $45b4: $86
	nop                                              ; $45b5: $00
	ld a, [hl-]                                      ; $45b6: $3a
	ld a, h                                          ; $45b7: $7c
	cp $fe                                           ; $45b8: $fe $fe
	sub $5c                                          ; $45ba: $d6 $5c
	ei                                               ; $45bc: $fb
	inc a                                            ; $45bd: $3c
	rst SubAFromBC                                          ; $45be: $e7
	jr jr_06f_45c4                                   ; $45bf: $18 $03

	ld b, b                                          ; $45c1: $40
	ld c, e                                          ; $45c2: $4b
	ld b, b                                          ; $45c3: $40

jr_06f_45c4:
	ld a, a                                          ; $45c4: $7f

jr_06f_45c5:
	cp $94                                           ; $45c5: $fe $94
	jp $bf00                                         ; $45c7: $c3 $00 $bf


	rra                                              ; $45ca: $1f
	ld [hl], e                                       ; $45cb: $73
	ei                                               ; $45cc: $fb
	dec e                                            ; $45cd: $1d
	ccf                                              ; $45ce: $3f
	rrca                                             ; $45cf: $0f
	ld e, $3f                                        ; $45d0: $1e $3f
	ld a, d                                          ; $45d2: $7a
	inc [hl]                                         ; $45d3: $34
	inc bc                                           ; $45d4: $03
	ld b, b                                          ; $45d5: $40
	ld c, e                                          ; $45d6: $4b
	ld b, b                                          ; $45d7: $40
	sub a                                            ; $45d8: $97
	ld a, [$fc0c]                                    ; $45d9: $fa $0c $fc
	ld a, [bc]                                       ; $45dc: $0a
	ei                                               ; $45dd: $fb
	ld c, $be                                        ; $45de: $0e $be
	call Call_06f_402f                               ; $45e0: $cd $2f $40
	sbc e                                            ; $45e3: $9b
	cp e                                             ; $45e4: $bb
	rst AddAOntoHL                                          ; $45e5: $ef
	ld e, e                                          ; $45e6: $5b
	ld a, [hl]                                       ; $45e7: $7e
	ld l, e                                          ; $45e8: $6b
	ld b, b                                          ; $45e9: $40
	ld b, d                                          ; $45ea: $42
	add b                                            ; $45eb: $80
	sbc h                                            ; $45ec: $9c
	ld a, [hl]                                       ; $45ed: $7e
	db $e4                                           ; $45ee: $e4
	call z, Call_06f_406b                            ; $45ef: $cc $6b $40
	ld a, a                                          ; $45f2: $7f
	cp $97                                           ; $45f3: $fe $97
	rst GetHLinHL                                          ; $45f5: $cf
	nop                                              ; $45f6: $00
	cp [hl]                                          ; $45f7: $be
	nop                                              ; $45f8: $00

jr_06f_45f9:
	add $ce                                          ; $45f9: $c6 $ce
	cp e                                             ; $45fb: $bb
	ld a, h                                          ; $45fc: $7c
	inc bc                                           ; $45fd: $03
	ld b, b                                          ; $45fe: $40
	ld l, e                                          ; $45ff: $6b
	ld b, b                                          ; $4600: $40
	sbc c                                            ; $4601: $99
	add hl, sp                                       ; $4602: $39
	cp $de                                           ; $4603: $fe $de
	rst SubAFromBC                                          ; $4605: $e7
	rst $38                                          ; $4606: $ff
	ld bc, $c267                                     ; $4607: $01 $67 $c2
	ld a, a                                          ; $460a: $7f
	cp $9a                                           ; $460b: $fe $9a
	pop hl                                           ; $460d: $e1
	nop                                              ; $460e: $00
	ld l, e                                          ; $460f: $6b

jr_06f_4610:
	ld [hl], a                                       ; $4610: $77
	dec e                                            ; $4611: $1d
	inc bc                                           ; $4612: $03
	ld b, b                                          ; $4613: $40
	rra                                              ; $4614: $1f
	ld b, b                                          ; $4615: $40
	ld a, [hl]                                       ; $4616: $7e
	add b                                            ; $4617: $80
	sub b                                            ; $4618: $90
	ld l, l                                          ; $4619: $6d
	sbc e                                            ; $461a: $9b
	db $eb                                           ; $461b: $eb
	rra                                              ; $461c: $1f
	inc e                                            ; $461d: $1c
	jr nz, jr_06f_469e                               ; $461e: $20 $7e

	jr nz, jr_06f_466e                               ; $4620: $20 $4c

	ld [hl], b                                       ; $4622: $70
	jr jr_06f_4645                                   ; $4623: $18 $20

	nop                                              ; $4625: $00
	nop                                              ; $4626: $00

jr_06f_4627:
	ld a, h                                          ; $4627: $7c
	sbc $3c                                          ; $4628: $de $3c
	adc l                                            ; $462a: $8d
	inc d                                            ; $462b: $14
	inc a                                            ; $462c: $3c
	inc e                                            ; $462d: $1c
	jr jr_06f_4630                                   ; $462e: $18 $00

jr_06f_4630:
	nop                                              ; $4630: $00
	adc b                                            ; $4631: $88
	db $10                                           ; $4632: $10
	and d                                            ; $4633: $a2
	pop bc                                           ; $4634: $c1
	db $e3                                           ; $4635: $e3
	rst $38                                          ; $4636: $ff
	rst $38                                          ; $4637: $ff
	sbc h                                            ; $4638: $9c
	ret nz                                           ; $4639: $c0

	add b                                            ; $463a: $80
	ld h, b                                          ; $463b: $60
	ret nz                                           ; $463c: $c0

	ld d, a                                          ; $463d: $57
	ldh [$7f], a                                     ; $463e: $e0 $7f
	ldh [c], a                                       ; $4640: $e2
	sbc [hl]                                         ; $4641: $9e
	inc a                                            ; $4642: $3c
	ld a, e                                          ; $4643: $7b
	ldh [c], a                                       ; $4644: $e2

jr_06f_4645:
	ld a, a                                          ; $4645: $7f
	db $fd                                           ; $4646: $fd
	sbc l                                            ; $4647: $9d
	add b                                            ; $4648: $80
	nop                                              ; $4649: $00
	cpl                                              ; $464a: $2f
	ldh [$9e], a                                     ; $464b: $e0 $9e
	jr c, @+$7d                                      ; $464d: $38 $7b

	ldh [c], a                                       ; $464f: $e2
	sbc h                                            ; $4650: $9c
	ld [$0010], sp                                   ; $4651: $08 $10 $00
	dec hl                                           ; $4654: $2b
	ldh [$9d], a                                     ; $4655: $e0 $9d
	ld h, h                                          ; $4657: $64
	inc h                                            ; $4658: $24
	scf                                              ; $4659: $37
	ldh [$e1], a                                     ; $465a: $e0 $e1
	ld bc, $7e80                                     ; $465c: $01 $80 $7e
	rst SubAFromBC                                          ; $465f: $e7
	ei                                               ; $4660: $fb
	sbc h                                            ; $4661: $9c
	db $ed                                           ; $4662: $ed
	inc sp                                           ; $4663: $33
	jp c, $efe7                                      ; $4664: $da $e7 $ef

	sbc $94                                          ; $4667: $de $94
	rst $38                                          ; $4669: $ff
	cp a                                             ; $466a: $bf
	push af                                          ; $466b: $f5
	ld l, a                                          ; $466c: $6f
	push af                                          ; $466d: $f5

jr_06f_466e:
	or l                                             ; $466e: $b5
	rst AddAOntoHL                                          ; $466f: $ef
	cp d                                             ; $4670: $ba
	rst AddAOntoHL                                          ; $4671: $ef
	ld e, e                                          ; $4672: $5b
	ld a, h                                          ; $4673: $7c
	ld e, e                                          ; $4674: $5b
	ld a, h                                          ; $4675: $7c
	dec hl                                           ; $4676: $2b
	inc a                                            ; $4677: $3c
	rra                                              ; $4678: $1f
	dec e                                            ; $4679: $1d
	cpl                                              ; $467a: $2f
	inc [hl]                                         ; $467b: $34
	dec a                                            ; $467c: $3d
	sub b                                            ; $467d: $90
	ld l, $3b                                        ; $467e: $2e $3b
	ld l, $36                                        ; $4680: $2e $36
	dec hl                                           ; $4682: $2b
	dec de                                           ; $4683: $1b
	dec d                                            ; $4684: $15
	rrca                                             ; $4685: $0f
	dec c                                            ; $4686: $0d
	inc bc                                           ; $4687: $03
	inc bc                                           ; $4688: $03
	ld bc, $0201                                     ; $4689: $01 $01 $02
	inc bc                                           ; $468c: $03
	ld [hl], a                                       ; $468d: $77
	cp $dd                                           ; $468e: $fe $dd
	inc bc                                           ; $4690: $03
	db $dd                                           ; $4691: $dd
	ld bc, $80fb                                     ; $4692: $01 $fb $80
	adc h                                            ; $4695: $8c
	ld a, a                                          ; $4696: $7f
	ld sp, hl                                        ; $4697: $f9
	rst $38                                          ; $4698: $ff
	adc $7b                                          ; $4699: $ce $7b
	cp e                                             ; $469b: $bb
	sbc $ff                                          ; $469c: $de $ff

jr_06f_469e:
	xor h                                            ; $469e: $ac
	cp l                                             ; $469f: $bd
	db $ec                                           ; $46a0: $ec
	push af                                          ; $46a1: $f5
	ld c, h                                          ; $46a2: $4c
	cp $e4                                           ; $46a3: $fe $e4
	ld c, h                                          ; $46a5: $4c
	ldh a, [c]                                       ; $46a6: $f2
	rst $38                                          ; $46a7: $ff
	nop                                              ; $46a8: $00
	cp e                                             ; $46a9: $bb
	ld a, h                                          ; $46aa: $7c
	ld a, l                                          ; $46ab: $7d
	cp $e6                                           ; $46ac: $fe $e6
	and $4e                                          ; $46ae: $e6 $4e
	adc $fa                                          ; $46b0: $ce $fa
	ld a, [hl]                                       ; $46b2: $7e
	ld a, [hl+]                                      ; $46b3: $2a
	add b                                            ; $46b4: $80
	ld a, [hl]                                       ; $46b5: $7e
	rst FarCall                                          ; $46b6: $f7
	inc l                                            ; $46b7: $2c
	ei                                               ; $46b8: $fb
	inc e                                            ; $46b9: $1c
	ld a, a                                          ; $46ba: $7f
	add b                                            ; $46bb: $80
	ld a, a                                          ; $46bc: $7f
	add b                                            ; $46bd: $80
	cp a                                             ; $46be: $bf
	ret nz                                           ; $46bf: $c0

	cp a                                             ; $46c0: $bf
	ret nz                                           ; $46c1: $c0

	ld e, a                                          ; $46c2: $5f
	ldh [$6f], a                                     ; $46c3: $e0 $6f
	ldh a, [$9f]                                     ; $46c5: $f0 $9f
	sbc b                                            ; $46c7: $98
	dec e                                            ; $46c8: $1d
	ld e, $1b                                        ; $46c9: $1e $1b
	dec de                                           ; $46cb: $1b
	jr @+$1a                                         ; $46cc: $18 $18

	ld de, $a211                                     ; $46ce: $11 $11 $a2
	and e                                            ; $46d1: $a3
	inc b                                            ; $46d2: $04
	rlca                                             ; $46d3: $07
	sub [hl]                                         ; $46d4: $96
	ld [$f30f], sp                                   ; $46d5: $08 $0f $f3
	db $fd                                           ; $46d8: $fd

jr_06f_46d9:
	ld e, l                                          ; $46d9: $5d
	adc [hl]                                         ; $46da: $8e
	add [hl]                                         ; $46db: $86
	inc bc                                           ; $46dc: $03
	add e                                            ; $46dd: $83
	ld l, e                                          ; $46de: $6b
	or c                                             ; $46df: $b1
	sbc h                                            ; $46e0: $9c
	add c                                            ; $46e1: $81
	nop                                              ; $46e2: $00
	inc bc                                           ; $46e3: $03
	ld a, e                                          ; $46e4: $7b
	cp $7f                                           ; $46e5: $fe $7f
	db $f4                                           ; $46e7: $f4
	ld l, a                                          ; $46e8: $6f
	ldh a, [c]                                       ; $46e9: $f2
	add b                                            ; $46ea: $80
	stop                                             ; $46eb: $10 $00
	jr c, jr_06f_46ef                                ; $46ed: $38 $00

jr_06f_46ef:
	or $ed                                           ; $46ef: $f6 $ed
	di                                               ; $46f1: $f3
	sbc [hl]                                         ; $46f2: $9e
	db $db                                           ; $46f3: $db
	adc a                                            ; $46f4: $8f
	rst GetHLinHL                                          ; $46f5: $cf
	add a                                            ; $46f6: $87
	rst $38                                          ; $46f7: $ff
	add d                                            ; $46f8: $82
	dec a                                            ; $46f9: $3d
	cp $db                                           ; $46fa: $fe $db
	rst SubAFromBC                                          ; $46fc: $e7
	rst $38                                          ; $46fd: $ff
	nop                                              ; $46fe: $00
	db $db                                           ; $46ff: $db
	inc a                                            ; $4700: $3c
	db $fd                                           ; $4701: $fd
	ld a, [hl]                                       ; $4702: $7e
	db $d3                                           ; $4703: $d3
	di                                               ; $4704: $f3
	and a                                            ; $4705: $a7
	daa                                              ; $4706: $27
	cp a                                             ; $4707: $bf
	ccf                                              ; $4708: $3f
	dec l                                            ; $4709: $2d
	sub a                                            ; $470a: $97
	ccf                                              ; $470b: $3f
	inc sp                                           ; $470c: $33
	dec e                                            ; $470d: $1d
	dec de                                           ; $470e: $1b
	ld [de], a                                       ; $470f: $12
	ccf                                              ; $4710: $3f
	inc c                                            ; $4711: $0c
	ld bc, $cc73                                     ; $4712: $01 $73 $cc
	sbc [hl]                                         ; $4715: $9e
	rlca                                             ; $4716: $07
	ld a, e                                          ; $4717: $7b
	cp $80                                           ; $4718: $fe $80
	ld c, $01                                        ; $471a: $0e $01
	dec e                                            ; $471c: $1d
	inc bc                                           ; $471d: $03
	inc sp                                           ; $471e: $33
	rrca                                             ; $471f: $0f
	ld l, a                                          ; $4720: $6f
	ld e, $b3                                        ; $4721: $1e $b3
	ld a, a                                          ; $4723: $7f
	jp $33ff                                         ; $4724: $c3 $ff $33


	adc $f7                                          ; $4727: $ce $f7
	inc c                                            ; $4729: $0c
	ld l, a                                          ; $472a: $6f
	jr @-$05                                         ; $472b: $18 $f9

	jr nc, jr_06f_46d9                               ; $472d: $30 $aa

	rst FarCall                                          ; $472f: $f7
	db $ec                                           ; $4730: $ec
	rst FarCall                                          ; $4731: $f7
	ld d, l                                          ; $4732: $55
	xor $c5                                          ; $4733: $ee $c5
	cp $c8                                           ; $4735: $fe $c8
	rst $38                                          ; $4737: $ff
	ld hl, sp-$80                                    ; $4738: $f8 $80
	ld a, a                                          ; $473a: $7f
	ret nc                                           ; $473b: $d0

	ld a, a                                          ; $473c: $7f
	jp hl                                            ; $473d: $e9


	rra                                              ; $473e: $1f
	rst $38                                          ; $473f: $ff
	rrca                                             ; $4740: $0f
	db $fd                                           ; $4741: $fd
	add hl, bc                                       ; $4742: $09
	ld a, d                                          ; $4743: $7a
	adc h                                            ; $4744: $8c
	call c, Call_06f_7bea                            ; $4745: $dc $ea $7b
	adc [hl]                                         ; $4748: $8e
	cp $0d                                           ; $4749: $fe $0d
	db $ed                                           ; $474b: $ed
	dec de                                           ; $474c: $1b
	db $eb                                           ; $474d: $eb
	rra                                              ; $474e: $1f
	db $dd                                           ; $474f: $dd
	ccf                                              ; $4750: $3f
	db $dd                                           ; $4751: $dd
	ccf                                              ; $4752: $3f
	or l                                             ; $4753: $b5
	ld a, a                                          ; $4754: $7f
	or l                                             ; $4755: $b5
	ld a, a                                          ; $4756: $7f
	ld [hl], h                                       ; $4757: $74
	rst $38                                          ; $4758: $ff
	sub c                                            ; $4759: $91
	ld d, h                                          ; $475a: $54
	rst $38                                          ; $475b: $ff
	sub h                                            ; $475c: $94
	rst $38                                          ; $475d: $ff
	ld e, d                                          ; $475e: $5a
	ld a, a                                          ; $475f: $7f
	xor d                                            ; $4760: $aa
	xor a                                            ; $4761: $af
	push bc                                          ; $4762: $c5
	ld b, a                                          ; $4763: $47
	jp $e043                                         ; $4764: $c3 $43 $e0


	jr nz, jr_06f_47e0                               ; $4767: $20 $77

	cp $9b                                           ; $4769: $fe $9b
	cp $1e                                           ; $476b: $fe $1e
	rst $38                                          ; $476d: $ff
	inc de                                           ; $476e: $13
	ld a, [de]                                       ; $476f: $1a
	ldh [$9a], a                                     ; $4770: $e0 $9a
	inc e                                            ; $4772: $1c
	cpl                                              ; $4773: $2f
	dec [hl]                                         ; $4774: $35
	dec a                                            ; $4775: $3d
	ld l, $37                                        ; $4776: $2e $37
	nop                                              ; $4778: $00
	ld a, a                                          ; $4779: $7f
	cp $9a                                           ; $477a: $fe $9a
	cp l                                             ; $477c: $bd
	ld a, [hl]                                       ; $477d: $7e
	ld h, a                                          ; $477e: $67
	and $cf                                          ; $477f: $e6 $cf
	inc bc                                           ; $4781: $03
	nop                                              ; $4782: $00
	ld [hl], a                                       ; $4783: $77
	nop                                              ; $4784: $00
	ld b, a                                          ; $4785: $47
	jr nz, @+$81                                     ; $4786: $20 $7f

	cp $99                                           ; $4788: $fe $99
	db $fd                                           ; $478a: $fd
	ld a, $f3                                        ; $478b: $3e $f3
	ld [hl], e                                       ; $478d: $73
	rst SubAFromBC                                          ; $478e: $e7
	rst SubAFromBC                                          ; $478f: $e7
	inc bc                                           ; $4790: $03
	jr nz, @+$05                                     ; $4791: $20 $03

	jr nz, jr_06f_4804                               ; $4793: $20 $6f

	jr nz, jr_06f_47ae                               ; $4795: $20 $17

	ld b, b                                          ; $4797: $40
	sbc [hl]                                         ; $4798: $9e
	ld l, $23                                        ; $4799: $2e $23
	ld b, b                                          ; $479b: $40
	ld a, a                                          ; $479c: $7f
	cp $93                                           ; $479d: $fe $93
	add e                                            ; $479f: $83
	nop                                              ; $47a0: $00
	dec sp                                           ; $47a1: $3b
	ld a, h                                          ; $47a2: $7c
	rst $38                                          ; $47a3: $ff
	cp $ae                                           ; $47a4: $fe $ae
	ld l, h                                          ; $47a6: $6c
	rst SubAFromDE                                          ; $47a7: $df
	jr c, @+$01                                      ; $47a8: $38 $ff

	nop                                              ; $47aa: $00
	inc bc                                           ; $47ab: $03
	ld b, b                                          ; $47ac: $40
	ld d, e                                          ; $47ad: $53

jr_06f_47ae:
	ld b, b                                          ; $47ae: $40
	ld [hl], a                                       ; $47af: $77
	cp $94                                           ; $47b0: $fe $94
	jp $bf00                                         ; $47b2: $c3 $00 $bf


	rra                                              ; $47b5: $1f
	ld [hl], e                                       ; $47b6: $73
	ei                                               ; $47b7: $fb
	dec e                                            ; $47b8: $1d
	ccf                                              ; $47b9: $3f
	rrca                                             ; $47ba: $0f
	ld e, $3f                                        ; $47bb: $1e $3f
	ld a, d                                          ; $47bd: $7a
	inc [hl]                                         ; $47be: $34
	inc bc                                           ; $47bf: $03
	ld b, b                                          ; $47c0: $40
	ld c, e                                          ; $47c1: $4b
	ld b, b                                          ; $47c2: $40
	sub a                                            ; $47c3: $97
	ld a, [$fc0c]                                    ; $47c4: $fa $0c $fc
	ld a, [bc]                                       ; $47c7: $0a
	ei                                               ; $47c8: $fb
	ld c, $be                                        ; $47c9: $0e $be
	call Call_06f_4007                               ; $47cb: $cd $07 $40
	ld [hl], l                                       ; $47ce: $75
	ld h, b                                          ; $47cf: $60
	daa                                              ; $47d0: $27
	ld b, b                                          ; $47d1: $40
	ld a, a                                          ; $47d2: $7f
	cp $95                                           ; $47d3: $fe $95
	rst GetHLinHL                                          ; $47d5: $cf
	nop                                              ; $47d6: $00
	cp [hl]                                          ; $47d7: $be
	nop                                              ; $47d8: $00
	add $ce                                          ; $47d9: $c6 $ce
	cp e                                             ; $47db: $bb
	ld a, h                                          ; $47dc: $7c
	rst SubAFromBC                                          ; $47dd: $e7
	jr jr_06f_47e3                                   ; $47de: $18 $03

jr_06f_47e0:
	ld b, b                                          ; $47e0: $40
	ld b, e                                          ; $47e1: $43
	ld b, b                                          ; $47e2: $40

jr_06f_47e3:
	ld [hl], a                                       ; $47e3: $77
	cp $9a                                           ; $47e4: $fe $9a
	pop hl                                           ; $47e6: $e1
	nop                                              ; $47e7: $00
	ld l, e                                          ; $47e8: $6b
	ld [hl], a                                       ; $47e9: $77
	dec e                                            ; $47ea: $1d
	inc bc                                           ; $47eb: $03
	ld b, b                                          ; $47ec: $40
	rra                                              ; $47ed: $1f
	ld b, b                                          ; $47ee: $40
	ld a, [hl]                                       ; $47ef: $7e
	add b                                            ; $47f0: $80
	add b                                            ; $47f1: $80
	ld l, l                                          ; $47f2: $6d
	sbc e                                            ; $47f3: $9b
	db $eb                                           ; $47f4: $eb
	rra                                              ; $47f5: $1f
	inc e                                            ; $47f6: $1c
	jr nz, jr_06f_4877                               ; $47f7: $20 $7e

	jr nz, @+$4e                                     ; $47f9: $20 $4c

	ld [hl], b                                       ; $47fb: $70
	jr jr_06f_481e                                   ; $47fc: $18 $20

	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	ld b, b                                          ; $4800: $40
	inc h                                            ; $4801: $24
	jr c, jr_06f_481c                                ; $4802: $38 $18

jr_06f_4804:
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	ld [$0010], sp                                   ; $4806: $08 $10 $00
	nop                                              ; $4809: $00
	add b                                            ; $480a: $80
	nop                                              ; $480b: $00
	and d                                            ; $480c: $a2
	pop bc                                           ; $480d: $c1
	db $e3                                           ; $480e: $e3
	rst $38                                          ; $480f: $ff
	rst $38                                          ; $4810: $ff
	sbc d                                            ; $4811: $9a
	sbc h                                            ; $4812: $9c
	ret nz                                           ; $4813: $c0

	add b                                            ; $4814: $80
	ld h, b                                          ; $4815: $60
	ret nz                                           ; $4816: $c0

	ld e, a                                          ; $4817: $5f
	ldh [$9c], a                                     ; $4818: $e0 $9c
	ld a, h                                          ; $481a: $7c
	inc a                                            ; $481b: $3c

jr_06f_481c:
	inc a                                            ; $481c: $3c
	ld a, e                                          ; $481d: $7b

jr_06f_481e:
	ldh [$9e], a                                     ; $481e: $e0 $9e
	inc c                                            ; $4820: $0c
	cp $27                                           ; $4821: $fe $27
	ldh [$9e], a                                     ; $4823: $e0 $9e
	inc [hl]                                         ; $4825: $34
	ld [hl], e                                       ; $4826: $73
	sbc $9d                                          ; $4827: $de $9d
	inc b                                            ; $4829: $04
	ld [$e02f], sp                                   ; $482a: $08 $2f $e0
	sbc [hl]                                         ; $482d: $9e
	ld a, [hl]                                       ; $482e: $7e
	sbc $3e                                          ; $482f: $de $3e
	sbc h                                            ; $4831: $9c
	ld d, $3c                                        ; $4832: $16 $3c
	inc e                                            ; $4834: $1c
	ld a, e                                          ; $4835: $7b
	sbc $9d                                          ; $4836: $de $9d
	add h                                            ; $4838: $84
	ld [$e05f], sp                                   ; $4839: $08 $5f $e0
	call c, $8001                                    ; $483c: $dc $01 $80
	ld a, [hl]                                       ; $483f: $7e
	rst SubAFromBC                                          ; $4840: $e7
	ei                                               ; $4841: $fb
	sbc h                                            ; $4842: $9c
	db $ed                                           ; $4843: $ed
	inc sp                                           ; $4844: $33
	jp c, $efe7                                      ; $4845: $da $e7 $ef

	sbc $94                                          ; $4848: $de $94
	rst $38                                          ; $484a: $ff
	cp a                                             ; $484b: $bf
	push af                                          ; $484c: $f5
	ld l, a                                          ; $484d: $6f
	push af                                          ; $484e: $f5
	or l                                             ; $484f: $b5
	rst AddAOntoHL                                          ; $4850: $ef
	cp d                                             ; $4851: $ba
	rst AddAOntoHL                                          ; $4852: $ef
	ld e, e                                          ; $4853: $5b
	ld a, h                                          ; $4854: $7c
	ld e, e                                          ; $4855: $5b
	ld a, h                                          ; $4856: $7c
	dec hl                                           ; $4857: $2b
	inc a                                            ; $4858: $3c
	rra                                              ; $4859: $1f
	dec e                                            ; $485a: $1d
	cpl                                              ; $485b: $2f
	inc [hl]                                         ; $485c: $34
	dec a                                            ; $485d: $3d
	sub b                                            ; $485e: $90
	ld l, $3b                                        ; $485f: $2e $3b
	ld l, $36                                        ; $4861: $2e $36
	dec hl                                           ; $4863: $2b
	dec de                                           ; $4864: $1b
	dec d                                            ; $4865: $15
	rrca                                             ; $4866: $0f
	dec c                                            ; $4867: $0d
	inc bc                                           ; $4868: $03
	inc bc                                           ; $4869: $03
	ld bc, $0201                                     ; $486a: $01 $01 $02
	inc bc                                           ; $486d: $03
	ld [hl], a                                       ; $486e: $77
	cp $dd                                           ; $486f: $fe $dd
	inc bc                                           ; $4871: $03
	db $dd                                           ; $4872: $dd
	ld bc, $80fb                                     ; $4873: $01 $fb $80
	adc h                                            ; $4876: $8c

jr_06f_4877:
	ld a, a                                          ; $4877: $7f
	ld sp, hl                                        ; $4878: $f9
	rst $38                                          ; $4879: $ff
	adc $7b                                          ; $487a: $ce $7b
	cp e                                             ; $487c: $bb
	sbc $ff                                          ; $487d: $de $ff
	xor h                                            ; $487f: $ac
	cp l                                             ; $4880: $bd
	db $ec                                           ; $4881: $ec
	push af                                          ; $4882: $f5
	ld c, h                                          ; $4883: $4c
	cp $e4                                           ; $4884: $fe $e4
	ld c, h                                          ; $4886: $4c
	ldh a, [c]                                       ; $4887: $f2
	rst $38                                          ; $4888: $ff
	nop                                              ; $4889: $00
	cp e                                             ; $488a: $bb
	ld a, h                                          ; $488b: $7c
	ld a, l                                          ; $488c: $7d
	cp $e6                                           ; $488d: $fe $e6
	and $4e                                          ; $488f: $e6 $4e
	adc $fa                                          ; $4891: $ce $fa
	ld a, [hl]                                       ; $4893: $7e
	ld a, [hl+]                                      ; $4894: $2a
	add b                                            ; $4895: $80
	ld a, [hl]                                       ; $4896: $7e
	rst FarCall                                          ; $4897: $f7
	inc l                                            ; $4898: $2c
	ei                                               ; $4899: $fb
	inc e                                            ; $489a: $1c
	ld a, a                                          ; $489b: $7f
	add b                                            ; $489c: $80
	ld a, a                                          ; $489d: $7f
	add b                                            ; $489e: $80
	cp a                                             ; $489f: $bf
	ret nz                                           ; $48a0: $c0

	cp a                                             ; $48a1: $bf
	ret nz                                           ; $48a2: $c0

	ld e, a                                          ; $48a3: $5f
	ldh [$6f], a                                     ; $48a4: $e0 $6f
	ldh a, [$9f]                                     ; $48a6: $f0 $9f
	sbc b                                            ; $48a8: $98
	dec e                                            ; $48a9: $1d
	ld e, $1b                                        ; $48aa: $1e $1b
	dec de                                           ; $48ac: $1b
	jr @+$1a                                         ; $48ad: $18 $18

	ld de, $a211                                     ; $48af: $11 $11 $a2
	and e                                            ; $48b2: $a3
	inc b                                            ; $48b3: $04
	rlca                                             ; $48b4: $07
	sub [hl]                                         ; $48b5: $96
	ld [$f30f], sp                                   ; $48b6: $08 $0f $f3
	db $fd                                           ; $48b9: $fd

jr_06f_48ba:
	ld e, l                                          ; $48ba: $5d
	adc [hl]                                         ; $48bb: $8e
	add [hl]                                         ; $48bc: $86
	inc bc                                           ; $48bd: $03
	add e                                            ; $48be: $83
	ld l, e                                          ; $48bf: $6b
	or c                                             ; $48c0: $b1
	sbc h                                            ; $48c1: $9c
	add c                                            ; $48c2: $81
	nop                                              ; $48c3: $00
	inc bc                                           ; $48c4: $03
	ld a, e                                          ; $48c5: $7b
	cp $7f                                           ; $48c6: $fe $7f
	db $f4                                           ; $48c8: $f4
	ld l, a                                          ; $48c9: $6f
	ldh a, [c]                                       ; $48ca: $f2
	add b                                            ; $48cb: $80
	stop                                             ; $48cc: $10 $00
	jr c, jr_06f_48d0                                ; $48ce: $38 $00

jr_06f_48d0:
	or $ed                                           ; $48d0: $f6 $ed
	di                                               ; $48d2: $f3
	sbc [hl]                                         ; $48d3: $9e
	db $db                                           ; $48d4: $db
	adc a                                            ; $48d5: $8f
	rst GetHLinHL                                          ; $48d6: $cf
	add a                                            ; $48d7: $87
	rst $38                                          ; $48d8: $ff
	add d                                            ; $48d9: $82
	dec a                                            ; $48da: $3d
	cp $db                                           ; $48db: $fe $db
	rst SubAFromBC                                          ; $48dd: $e7
	rst $38                                          ; $48de: $ff
	nop                                              ; $48df: $00
	db $db                                           ; $48e0: $db
	inc a                                            ; $48e1: $3c
	db $fd                                           ; $48e2: $fd
	ld a, [hl]                                       ; $48e3: $7e
	db $d3                                           ; $48e4: $d3
	di                                               ; $48e5: $f3
	and a                                            ; $48e6: $a7
	daa                                              ; $48e7: $27
	cp a                                             ; $48e8: $bf
	ccf                                              ; $48e9: $3f
	dec l                                            ; $48ea: $2d
	sub a                                            ; $48eb: $97
	ccf                                              ; $48ec: $3f
	inc sp                                           ; $48ed: $33
	dec e                                            ; $48ee: $1d
	dec de                                           ; $48ef: $1b
	ld [de], a                                       ; $48f0: $12
	ccf                                              ; $48f1: $3f
	inc c                                            ; $48f2: $0c
	ld bc, $cc73                                     ; $48f3: $01 $73 $cc
	sbc [hl]                                         ; $48f6: $9e
	rlca                                             ; $48f7: $07
	ld a, e                                          ; $48f8: $7b
	cp $80                                           ; $48f9: $fe $80
	ld c, $01                                        ; $48fb: $0e $01
	dec e                                            ; $48fd: $1d
	inc bc                                           ; $48fe: $03
	inc sp                                           ; $48ff: $33
	rrca                                             ; $4900: $0f
	ld l, a                                          ; $4901: $6f
	ld e, $b3                                        ; $4902: $1e $b3
	ld a, a                                          ; $4904: $7f
	jp $33ff                                         ; $4905: $c3 $ff $33


	adc $f7                                          ; $4908: $ce $f7
	inc c                                            ; $490a: $0c
	ld l, a                                          ; $490b: $6f
	jr @-$05                                         ; $490c: $18 $f9

	jr nc, jr_06f_48ba                               ; $490e: $30 $aa

	rst FarCall                                          ; $4910: $f7
	db $ec                                           ; $4911: $ec
	rst FarCall                                          ; $4912: $f7
	ld d, l                                          ; $4913: $55
	xor $c5                                          ; $4914: $ee $c5
	cp $c8                                           ; $4916: $fe $c8
	rst $38                                          ; $4918: $ff
	ld hl, sp-$80                                    ; $4919: $f8 $80
	ld a, a                                          ; $491b: $7f
	ret nc                                           ; $491c: $d0

	ld a, a                                          ; $491d: $7f
	jp hl                                            ; $491e: $e9


	rra                                              ; $491f: $1f
	rst $38                                          ; $4920: $ff
	rrca                                             ; $4921: $0f
	db $fd                                           ; $4922: $fd
	add hl, bc                                       ; $4923: $09
	ld a, d                                          ; $4924: $7a
	adc h                                            ; $4925: $8c
	call c, Call_06f_7bea                            ; $4926: $dc $ea $7b
	adc [hl]                                         ; $4929: $8e
	cp $0d                                           ; $492a: $fe $0d
	db $ed                                           ; $492c: $ed
	dec de                                           ; $492d: $1b
	db $eb                                           ; $492e: $eb
	rra                                              ; $492f: $1f
	db $dd                                           ; $4930: $dd
	ccf                                              ; $4931: $3f
	db $dd                                           ; $4932: $dd
	ccf                                              ; $4933: $3f
	or l                                             ; $4934: $b5
	ld a, a                                          ; $4935: $7f
	or l                                             ; $4936: $b5
	ld a, a                                          ; $4937: $7f
	ld [hl], h                                       ; $4938: $74
	rst $38                                          ; $4939: $ff
	sub c                                            ; $493a: $91
	ld d, h                                          ; $493b: $54
	rst $38                                          ; $493c: $ff
	sub h                                            ; $493d: $94
	rst $38                                          ; $493e: $ff
	ld e, d                                          ; $493f: $5a
	ld a, a                                          ; $4940: $7f
	xor d                                            ; $4941: $aa
	xor a                                            ; $4942: $af
	push bc                                          ; $4943: $c5
	ld b, a                                          ; $4944: $47
	jp $e043                                         ; $4945: $c3 $43 $e0


	jr nz, jr_06f_49c1                               ; $4948: $20 $77

	cp $9b                                           ; $494a: $fe $9b
	cp $1e                                           ; $494c: $fe $1e
	rst $38                                          ; $494e: $ff
	inc de                                           ; $494f: $13
	ld a, [de]                                       ; $4950: $1a
	ldh [$9a], a                                     ; $4951: $e0 $9a
	inc e                                            ; $4953: $1c
	cpl                                              ; $4954: $2f
	dec [hl]                                         ; $4955: $35
	dec a                                            ; $4956: $3d
	ld l, $37                                        ; $4957: $2e $37
	nop                                              ; $4959: $00
	ld a, a                                          ; $495a: $7f
	cp $9a                                           ; $495b: $fe $9a
	cp l                                             ; $495d: $bd
	ld a, [hl]                                       ; $495e: $7e
	ld h, a                                          ; $495f: $67
	and $cf                                          ; $4960: $e6 $cf
	inc bc                                           ; $4962: $03
	nop                                              ; $4963: $00
	ld [hl], a                                       ; $4964: $77
	nop                                              ; $4965: $00
	ld b, a                                          ; $4966: $47
	jr nz, jr_06f_49e8                               ; $4967: $20 $7f

	cp $99                                           ; $4969: $fe $99
	db $fd                                           ; $496b: $fd
	ld a, $f3                                        ; $496c: $3e $f3
	ld [hl], e                                       ; $496e: $73
	rst SubAFromBC                                          ; $496f: $e7
	rst SubAFromBC                                          ; $4970: $e7
	inc bc                                           ; $4971: $03
	jr nz, @+$05                                     ; $4972: $20 $03

	jr nz, jr_06f_49e5                               ; $4974: $20 $6f

	jr nz, jr_06f_498f                               ; $4976: $20 $17

	ld b, b                                          ; $4978: $40
	sbc [hl]                                         ; $4979: $9e
	ld l, $23                                        ; $497a: $2e $23
	ld b, b                                          ; $497c: $40
	ld a, a                                          ; $497d: $7f
	cp $93                                           ; $497e: $fe $93
	add e                                            ; $4980: $83
	nop                                              ; $4981: $00
	dec sp                                           ; $4982: $3b
	ld a, h                                          ; $4983: $7c
	rst $38                                          ; $4984: $ff
	cp $ae                                           ; $4985: $fe $ae
	ld l, h                                          ; $4987: $6c
	rst SubAFromDE                                          ; $4988: $df
	jr c, @+$01                                      ; $4989: $38 $ff

	nop                                              ; $498b: $00
	inc bc                                           ; $498c: $03
	ld b, b                                          ; $498d: $40
	ld d, e                                          ; $498e: $53

jr_06f_498f:
	ld b, b                                          ; $498f: $40
	ld [hl], a                                       ; $4990: $77
	cp $94                                           ; $4991: $fe $94
	jp $bf00                                         ; $4993: $c3 $00 $bf


	rra                                              ; $4996: $1f
	ld [hl], e                                       ; $4997: $73
	ei                                               ; $4998: $fb
	dec e                                            ; $4999: $1d
	ccf                                              ; $499a: $3f
	rrca                                             ; $499b: $0f
	ld e, $3f                                        ; $499c: $1e $3f
	ld a, d                                          ; $499e: $7a
	inc [hl]                                         ; $499f: $34
	inc bc                                           ; $49a0: $03
	ld b, b                                          ; $49a1: $40
	ld c, e                                          ; $49a2: $4b
	ld b, b                                          ; $49a3: $40
	sub a                                            ; $49a4: $97
	ld a, [$fc0c]                                    ; $49a5: $fa $0c $fc
	ld a, [bc]                                       ; $49a8: $0a
	ei                                               ; $49a9: $fb
	ld c, $be                                        ; $49aa: $0e $be
	call Call_06f_4007                               ; $49ac: $cd $07 $40
	ld [hl], l                                       ; $49af: $75
	ld h, b                                          ; $49b0: $60
	daa                                              ; $49b1: $27
	ld b, b                                          ; $49b2: $40
	ld a, a                                          ; $49b3: $7f
	cp $95                                           ; $49b4: $fe $95
	rst GetHLinHL                                          ; $49b6: $cf
	nop                                              ; $49b7: $00
	cp [hl]                                          ; $49b8: $be
	nop                                              ; $49b9: $00
	add $ce                                          ; $49ba: $c6 $ce
	cp e                                             ; $49bc: $bb
	ld a, h                                          ; $49bd: $7c
	rst SubAFromBC                                          ; $49be: $e7
	jr jr_06f_49c4                                   ; $49bf: $18 $03

jr_06f_49c1:
	ld b, b                                          ; $49c1: $40
	ld b, e                                          ; $49c2: $43
	ld b, b                                          ; $49c3: $40

jr_06f_49c4:
	ld [hl], a                                       ; $49c4: $77
	cp $9a                                           ; $49c5: $fe $9a
	pop hl                                           ; $49c7: $e1
	nop                                              ; $49c8: $00
	ld l, e                                          ; $49c9: $6b
	ld [hl], a                                       ; $49ca: $77
	dec e                                            ; $49cb: $1d
	inc bc                                           ; $49cc: $03
	ld b, b                                          ; $49cd: $40
	rra                                              ; $49ce: $1f
	ld b, b                                          ; $49cf: $40
	ld a, [hl]                                       ; $49d0: $7e
	add b                                            ; $49d1: $80
	adc e                                            ; $49d2: $8b
	ld l, l                                          ; $49d3: $6d
	sbc e                                            ; $49d4: $9b
	db $eb                                           ; $49d5: $eb
	rra                                              ; $49d6: $1f
	inc e                                            ; $49d7: $1c
	jr nz, jr_06f_4a58                               ; $49d8: $20 $7e

	jr nz, jr_06f_4a28                               ; $49da: $20 $4c

	ld [hl], b                                       ; $49dc: $70
	jr jr_06f_49ff                                   ; $49dd: $18 $20

	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	jr c, @+$2a                                      ; $49e1: $38 $28

	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00

jr_06f_49e5:
	ld [$fd10], sp                                   ; $49e5: $08 $10 $fd

jr_06f_49e8:
	sub e                                            ; $49e8: $93
	add b                                            ; $49e9: $80
	nop                                              ; $49ea: $00
	and d                                            ; $49eb: $a2
	pop bc                                           ; $49ec: $c1
	db $e3                                           ; $49ed: $e3
	rst $38                                          ; $49ee: $ff
	rst $38                                          ; $49ef: $ff
	sbc h                                            ; $49f0: $9c
	ret nz                                           ; $49f1: $c0

	add b                                            ; $49f2: $80
	ld h, b                                          ; $49f3: $60
	ret nz                                           ; $49f4: $c0

	ld e, a                                          ; $49f5: $5f
	ldh [$98], a                                     ; $49f6: $e0 $98
	ld a, h                                          ; $49f8: $7c
	jr c, jr_06f_4a37                                ; $49f9: $38 $3c

	jr jr_06f_49fd                                   ; $49fb: $18 $00

jr_06f_49fd:
	nop                                              ; $49fd: $00
	inc c                                            ; $49fe: $0c

jr_06f_49ff:
	dec de                                           ; $49ff: $1b
	ldh [$97], a                                     ; $4a00: $e0 $97
	inc [hl]                                         ; $4a02: $34
	inc a                                            ; $4a03: $3c
	inc a                                            ; $4a04: $3c
	inc e                                            ; $4a05: $1c
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	inc b                                            ; $4a08: $04
	ld [$c023], sp                                   ; $4a09: $08 $23 $c0
	sbc e                                            ; $4a0c: $9b
	inc a                                            ; $4a0d: $3c
	inc d                                            ; $4a0e: $14
	inc a                                            ; $4a0f: $3c
	inc e                                            ; $4a10: $1c
	ld a, e                                          ; $4a11: $7b
	cp h                                             ; $4a12: $bc
	sbc l                                            ; $4a13: $9d
	add h                                            ; $4a14: $84
	ld [$e05f], sp                                   ; $4a15: $08 $5f $e0
	or $01                                           ; $4a18: $f6 $01
	add b                                            ; $4a1a: $80
	ld a, [hl]                                       ; $4a1b: $7e
	rst SubAFromBC                                          ; $4a1c: $e7
	ei                                               ; $4a1d: $fb
	sbc h                                            ; $4a1e: $9c
	db $ed                                           ; $4a1f: $ed
	inc sp                                           ; $4a20: $33
	jp c, $efe7                                      ; $4a21: $da $e7 $ef

	sbc $94                                          ; $4a24: $de $94
	rst $38                                          ; $4a26: $ff
	cp a                                             ; $4a27: $bf

jr_06f_4a28:
	push af                                          ; $4a28: $f5
	ld l, a                                          ; $4a29: $6f
	push af                                          ; $4a2a: $f5
	or l                                             ; $4a2b: $b5
	rst AddAOntoHL                                          ; $4a2c: $ef
	cp d                                             ; $4a2d: $ba
	rst AddAOntoHL                                          ; $4a2e: $ef
	ld e, e                                          ; $4a2f: $5b
	ld a, h                                          ; $4a30: $7c
	ld e, e                                          ; $4a31: $5b
	ld a, h                                          ; $4a32: $7c
	dec hl                                           ; $4a33: $2b
	inc a                                            ; $4a34: $3c
	rra                                              ; $4a35: $1f
	dec e                                            ; $4a36: $1d

jr_06f_4a37:
	cpl                                              ; $4a37: $2f
	inc [hl]                                         ; $4a38: $34
	dec a                                            ; $4a39: $3d
	sub b                                            ; $4a3a: $90
	ld l, $3b                                        ; $4a3b: $2e $3b
	ld l, $36                                        ; $4a3d: $2e $36
	dec hl                                           ; $4a3f: $2b
	dec de                                           ; $4a40: $1b
	dec d                                            ; $4a41: $15
	rrca                                             ; $4a42: $0f
	dec c                                            ; $4a43: $0d
	inc bc                                           ; $4a44: $03
	inc bc                                           ; $4a45: $03
	ld bc, $0201                                     ; $4a46: $01 $01 $02
	inc bc                                           ; $4a49: $03
	ld [hl], a                                       ; $4a4a: $77
	cp $dd                                           ; $4a4b: $fe $dd
	inc bc                                           ; $4a4d: $03
	db $dd                                           ; $4a4e: $dd
	ld bc, $80fb                                     ; $4a4f: $01 $fb $80
	adc h                                            ; $4a52: $8c
	ld a, a                                          ; $4a53: $7f
	ld sp, hl                                        ; $4a54: $f9
	rst $38                                          ; $4a55: $ff
	adc $7b                                          ; $4a56: $ce $7b

jr_06f_4a58:
	cp e                                             ; $4a58: $bb
	sbc $ff                                          ; $4a59: $de $ff
	xor h                                            ; $4a5b: $ac
	cp l                                             ; $4a5c: $bd
	db $ec                                           ; $4a5d: $ec
	push af                                          ; $4a5e: $f5
	ld c, h                                          ; $4a5f: $4c
	xor $f4                                          ; $4a60: $ee $f4
	rst SubAFromDE                                          ; $4a62: $df
	inc a                                            ; $4a63: $3c
	ei                                               ; $4a64: $fb
	ld b, $bb                                        ; $4a65: $06 $bb
	ld a, h                                          ; $4a67: $7c
	ld a, h                                          ; $4a68: $7c
	cp $e6                                           ; $4a69: $fe $e6
	and $be                                          ; $4a6b: $e6 $be
	ld a, [hl]                                       ; $4a6d: $7e
	ld a, [hl-]                                      ; $4a6e: $3a
	ld a, [hl]                                       ; $4a6f: $7e
	xor d                                            ; $4a70: $aa
	add b                                            ; $4a71: $80
	ld a, $ef                                        ; $4a72: $3e $ef
	inc [hl]                                         ; $4a74: $34
	rst $38                                          ; $4a75: $ff
	jr jr_06f_4af7                                   ; $4a76: $18 $7f

	add b                                            ; $4a78: $80
	ld a, a                                          ; $4a79: $7f
	add b                                            ; $4a7a: $80
	cp a                                             ; $4a7b: $bf
	ret nz                                           ; $4a7c: $c0

	cp a                                             ; $4a7d: $bf
	ret nz                                           ; $4a7e: $c0

	ld e, a                                          ; $4a7f: $5f
	ldh [$6f], a                                     ; $4a80: $e0 $6f
	ldh a, [$9f]                                     ; $4a82: $f0 $9f
	sbc b                                            ; $4a84: $98
	dec e                                            ; $4a85: $1d
	ld e, $1b                                        ; $4a86: $1e $1b
	dec de                                           ; $4a88: $1b
	jr @+$1a                                         ; $4a89: $18 $18

	ld de, $a211                                     ; $4a8b: $11 $11 $a2
	and e                                            ; $4a8e: $a3
	inc b                                            ; $4a8f: $04
	rlca                                             ; $4a90: $07
	sub [hl]                                         ; $4a91: $96
	ld [$f30f], sp                                   ; $4a92: $08 $0f $f3
	db $fd                                           ; $4a95: $fd
	ld e, l                                          ; $4a96: $5d
	adc [hl]                                         ; $4a97: $8e
	add [hl]                                         ; $4a98: $86
	inc bc                                           ; $4a99: $03
	add e                                            ; $4a9a: $83
	ld l, e                                          ; $4a9b: $6b
	or c                                             ; $4a9c: $b1
	sbc d                                            ; $4a9d: $9a
	add c                                            ; $4a9e: $81
	nop                                              ; $4a9f: $00
	ld [bc], a                                       ; $4aa0: $02

jr_06f_4aa1:
	ld bc, $ba03                                     ; $4aa1: $01 $03 $ba
	ld bc, $0001                                     ; $4aa4: $01 $01 $00
	nop                                              ; $4aa7: $00
	db $10                                           ; $4aa8: $10
	jr c, jr_06f_4aa1                                ; $4aa9: $38 $f6

	add b                                            ; $4aab: $80
	db $ed                                           ; $4aac: $ed
	di                                               ; $4aad: $f3
	sbc [hl]                                         ; $4aae: $9e
	db $db                                           ; $4aaf: $db
	adc a                                            ; $4ab0: $8f
	rst GetHLinHL                                          ; $4ab1: $cf
	add a                                            ; $4ab2: $87
	rst $38                                          ; $4ab3: $ff
	add d                                            ; $4ab4: $82
	db $fd                                           ; $4ab5: $fd
	ld [bc], a                                       ; $4ab6: $02
	rst $38                                          ; $4ab7: $ff
	rra                                              ; $4ab8: $1f
	rst AddAOntoHL                                          ; $4ab9: $ef
	ld [hl], b                                       ; $4aba: $70
	cp a                                             ; $4abb: $bf
	ret nz                                           ; $4abc: $c0

	db $dd                                           ; $4abd: $dd
	ld a, $7f                                        ; $4abe: $3e $7f
	rst $38                                          ; $4ac0: $ff
	rst SubAFromBC                                          ; $4ac1: $e7
	rst SubAFromBC                                          ; $4ac2: $e7
	cp a                                             ; $4ac3: $bf
	cp a                                             ; $4ac4: $bf
	xor l                                            ; $4ac5: $ad
	ccf                                              ; $4ac6: $3f
	inc sp                                           ; $4ac7: $33
	dec e                                            ; $4ac8: $1d
	dec de                                           ; $4ac9: $1b
	ld [de], a                                       ; $4aca: $12
	sbc h                                            ; $4acb: $9c
	ccf                                              ; $4acc: $3f
	inc c                                            ; $4acd: $0c
	ld bc, $03bc                                     ; $4ace: $01 $bc $03
	inc bc                                           ; $4ad1: $03
	rlca                                             ; $4ad2: $07
	rlca                                             ; $4ad3: $07
	ld c, $80                                        ; $4ad4: $0e $80
	ld bc, $031d                                     ; $4ad6: $01 $1d $03
	inc sp                                           ; $4ad9: $33
	rrca                                             ; $4ada: $0f
	ld l, a                                          ; $4adb: $6f
	ld e, $b3                                        ; $4adc: $1e $b3
	ld a, a                                          ; $4ade: $7f
	jp $33ff                                         ; $4adf: $c3 $ff $33


	adc $f7                                          ; $4ae2: $ce $f7
	inc c                                            ; $4ae4: $0c
	ld l, a                                          ; $4ae5: $6f
	jr @-$05                                         ; $4ae6: $18 $f9

	jr nc, @-$54                                     ; $4ae8: $30 $aa

	rst FarCall                                          ; $4aea: $f7
	db $ec                                           ; $4aeb: $ec
	rst FarCall                                          ; $4aec: $f7
	ld d, l                                          ; $4aed: $55
	xor $c5                                          ; $4aee: $ee $c5
	cp $c8                                           ; $4af0: $fe $c8
	rst $38                                          ; $4af2: $ff
	ld hl, sp+$7f                                    ; $4af3: $f8 $7f
	add b                                            ; $4af5: $80
	ret nc                                           ; $4af6: $d0

jr_06f_4af7:
	ld a, a                                          ; $4af7: $7f
	jp hl                                            ; $4af8: $e9


jr_06f_4af9:
	rra                                              ; $4af9: $1f
	rst $38                                          ; $4afa: $ff
	rrca                                             ; $4afb: $0f
	db $fd                                           ; $4afc: $fd
	add hl, bc                                       ; $4afd: $09
	ld a, d                                          ; $4afe: $7a
	adc h                                            ; $4aff: $8c
	db $fc                                           ; $4b00: $fc
	jp z, $8e7b                                      ; $4b01: $ca $7b $8e

	cp $0d                                           ; $4b04: $fe $0d
	db $ed                                           ; $4b06: $ed
	dec de                                           ; $4b07: $1b
	db $eb                                           ; $4b08: $eb
	rra                                              ; $4b09: $1f
	db $dd                                           ; $4b0a: $dd
	ccf                                              ; $4b0b: $3f
	db $dd                                           ; $4b0c: $dd
	ccf                                              ; $4b0d: $3f
	or l                                             ; $4b0e: $b5
	ld a, a                                          ; $4b0f: $7f
	or l                                             ; $4b10: $b5
	ld a, a                                          ; $4b11: $7f
	ld [hl], h                                       ; $4b12: $74
	rst $38                                          ; $4b13: $ff
	ld d, h                                          ; $4b14: $54
	sub d                                            ; $4b15: $92
	rst $38                                          ; $4b16: $ff
	sub h                                            ; $4b17: $94
	rst $38                                          ; $4b18: $ff
	ld e, d                                          ; $4b19: $5a
	ld a, a                                          ; $4b1a: $7f
	xor d                                            ; $4b1b: $aa
	xor a                                            ; $4b1c: $af
	push bc                                          ; $4b1d: $c5
	ld b, a                                          ; $4b1e: $47
	jp $e043                                         ; $4b1f: $c3 $43 $e0


	jr nz, jr_06f_4b9b                               ; $4b22: $20 $77

	cp $9b                                           ; $4b24: $fe $9b
	cp $1e                                           ; $4b26: $fe $1e
	rst $38                                          ; $4b28: $ff
	inc de                                           ; $4b29: $13
	ld a, [de]                                       ; $4b2a: $1a
	ldh [$9a], a                                     ; $4b2b: $e0 $9a
	inc e                                            ; $4b2d: $1c
	cpl                                              ; $4b2e: $2f
	dec [hl]                                         ; $4b2f: $35
	dec a                                            ; $4b30: $3d
	ld l, $37                                        ; $4b31: $2e $37

jr_06f_4b33:
	nop                                              ; $4b33: $00
	sub l                                            ; $4b34: $95
	jp $bc3c                                         ; $4b35: $c3 $3c $bc


	ld a, [hl]                                       ; $4b38: $7e
	ld h, [hl]                                       ; $4b39: $66
	and $fe                                          ; $4b3a: $e6 $fe
	cp $ba                                           ; $4b3c: $fe $ba
	cp $03                                           ; $4b3e: $fe $03
	nop                                              ; $4b40: $00
	inc bc                                           ; $4b41: $03
	nop                                              ; $4b42: $00
	ccf                                              ; $4b43: $3f
	nop                                              ; $4b44: $00
	sbc d                                            ; $4b45: $9a
	rst $38                                          ; $4b46: $ff
	nop                                              ; $4b47: $00
	cp [hl]                                          ; $4b48: $be
	ld a, a                                          ; $4b49: $7f
	ld h, a                                          ; $4b4a: $67
	inc bc                                           ; $4b4b: $03

jr_06f_4b4c:
	nop                                              ; $4b4c: $00
	rla                                              ; $4b4d: $17
	nop                                              ; $4b4e: $00
	sbc c                                            ; $4b4f: $99
	ld a, [$7c0c]                                    ; $4b50: $fa $0c $7c
	adc d                                            ; $4b53: $8a
	ei                                               ; $4b54: $fb
	adc $6f                                          ; $4b55: $ce $6f
	nop                                              ; $4b57: $00
	rla                                              ; $4b58: $17
	jr nz, jr_06f_4af9                               ; $4b59: $20 $9e

	ld l, $2b                                        ; $4b5b: $2e $2b
	jr nz, jr_06f_4bde                               ; $4b5d: $20 $7f

	ld a, [hl]                                       ; $4b5f: $7e
	sbc [hl]                                         ; $4b60: $9e
	cp $bf                                           ; $4b61: $fe $bf
	and $ba                                          ; $4b63: $e6 $ba
	sub a                                            ; $4b65: $97
	ld a, h                                          ; $4b66: $7c
	xor $fe                                          ; $4b67: $ee $fe
	db $f4                                           ; $4b69: $f4
	ld [hl], h                                       ; $4b6a: $74
	ei                                               ; $4b6b: $fb
	inc a                                            ; $4b6c: $3c
	rst SubAFromBC                                          ; $4b6d: $e7
	inc bc                                           ; $4b6e: $03
	jr nz, @+$05                                     ; $4b6f: $20 $03

	jr nz, jr_06f_4bbe                               ; $4b71: $20 $4b

	jr nz, @+$81                                     ; $4b73: $20 $7f

	cp $94                                           ; $4b75: $fe $94
	jp $bf00                                         ; $4b77: $c3 $00 $bf


	rra                                              ; $4b7a: $1f
	ld [hl], e                                       ; $4b7b: $73
	ei                                               ; $4b7c: $fb
	dec e                                            ; $4b7d: $1d
	ccf                                              ; $4b7e: $3f
	rrca                                             ; $4b7f: $0f
	ld e, $3f                                        ; $4b80: $1e $3f
	cp e                                             ; $4b82: $bb
	ld bc, $0303                                     ; $4b83: $01 $03 $03
	rlca                                             ; $4b86: $07
	rlca                                             ; $4b87: $07
	ld c, $03                                        ; $4b88: $0e $03
	jr nz, jr_06f_4bf3                               ; $4b8a: $20 $67

	jr nz, @-$65                                     ; $4b8c: $20 $99

	db $fc                                           ; $4b8e: $fc
	ld a, [bc]                                       ; $4b8f: $0a
	ei                                               ; $4b90: $fb
	ld c, $be                                        ; $4b91: $0e $be
	call $2007                                       ; $4b93: $cd $07 $20
	ld [hl], l                                       ; $4b96: $75
	jr nz, jr_06f_4be0                               ; $4b97: $20 $47

	jr nz, jr_06f_4b33                               ; $4b99: $20 $98

jr_06f_4b9b:
	rst SubAFromHL                                          ; $4b9b: $d7
	inc a                                            ; $4b9c: $3c
	rst $38                                          ; $4b9d: $ff
	inc c                                            ; $4b9e: $0c
	ei                                               ; $4b9f: $fb
	ld b, $fe                                        ; $4ba0: $06 $fe
	cp l                                             ; $4ba2: $bd
	cp $ce                                           ; $4ba3: $fe $ce
	cp [hl]                                          ; $4ba5: $be
	add $9c                                          ; $4ba6: $c6 $9c
	adc $bb                                          ; $4ba8: $ce $bb
	ld a, h                                          ; $4baa: $7c
	inc bc                                           ; $4bab: $03
	jr nz, jr_06f_4bf5                               ; $4bac: $20 $47

	jr nz, jr_06f_4c2b                               ; $4bae: $20 $7b

	db $f4                                           ; $4bb0: $f4
	dec hl                                           ; $4bb1: $2b
	jr nz, jr_06f_4b4c                               ; $4bb2: $20 $98

	rrca                                             ; $4bb4: $0f
	cp a                                             ; $4bb5: $bf
	ld [hl], b                                       ; $4bb6: $70
	rst $38                                          ; $4bb7: $ff
	ret nz                                           ; $4bb8: $c0

	ld a, a                                          ; $4bb9: $7f
	add b                                            ; $4bba: $80
	ld [hl], a                                       ; $4bbb: $77
	ld e, $7f                                        ; $4bbc: $1e $7f

jr_06f_4bbe:
	cp $9a                                           ; $4bbe: $fe $9a
	pop hl                                           ; $4bc0: $e1
	nop                                              ; $4bc1: $00
	ld l, e                                          ; $4bc2: $6b
	ld [hl], a                                       ; $4bc3: $77
	dec e                                            ; $4bc4: $1d
	inc bc                                           ; $4bc5: $03
	jr nz, jr_06f_4be7                               ; $4bc6: $20 $1f

	jr nz, @+$80                                     ; $4bc8: $20 $7e

	ld b, b                                          ; $4bca: $40
	adc b                                            ; $4bcb: $88
	ld l, l                                          ; $4bcc: $6d
	sbc e                                            ; $4bcd: $9b
	db $eb                                           ; $4bce: $eb
	rra                                              ; $4bcf: $1f
	inc e                                            ; $4bd0: $1c
	jr nz, @+$80                                     ; $4bd1: $20 $7e

	jr nz, jr_06f_4c21                               ; $4bd3: $20 $4c

	ld [hl], b                                       ; $4bd5: $70
	jr jr_06f_4bf8                                   ; $4bd6: $18 $20

	nop                                              ; $4bd8: $00
	nop                                              ; $4bd9: $00
	jr @+$1a                                         ; $4bda: $18 $18

	inc l                                            ; $4bdc: $2c
	inc h                                            ; $4bdd: $24

jr_06f_4bde:
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00

jr_06f_4be0:
	inc d                                            ; $4be0: $14
	ld [$bf00], sp                                   ; $4be1: $08 $00 $bf
	add b                                            ; $4be4: $80
	and d                                            ; $4be5: $a2
	sub [hl]                                         ; $4be6: $96

jr_06f_4be7:
	pop bc                                           ; $4be7: $c1
	db $e3                                           ; $4be8: $e3
	rst $38                                          ; $4be9: $ff
	rst $38                                          ; $4bea: $ff
	sbc h                                            ; $4beb: $9c
	ret nz                                           ; $4bec: $c0

	add b                                            ; $4bed: $80
	ld h, b                                          ; $4bee: $60
	ret nz                                           ; $4bef: $c0

	ld e, a                                          ; $4bf0: $5f
	ldh [$9b], a                                     ; $4bf1: $e0 $9b

jr_06f_4bf3:
	jr c, jr_06f_4c0d                                ; $4bf3: $38 $18

jr_06f_4bf5:
	inc a                                            ; $4bf5: $3c
	inc a                                            ; $4bf6: $3c
	dec bc                                           ; $4bf7: $0b

jr_06f_4bf8:
	ldh [$df], a                                     ; $4bf8: $e0 $df
	inc e                                            ; $4bfa: $1c
	sbc [hl]                                         ; $4bfb: $9e
	jr jr_06f_4c79                                   ; $4bfc: $18 $7b

	ld c, d                                          ; $4bfe: $4a
	sbc [hl]                                         ; $4bff: $9e
	ld [$c01f], sp                                   ; $4c00: $08 $1f $c0
	sbc d                                            ; $4c03: $9a
	inc e                                            ; $4c04: $1c
	inc a                                            ; $4c05: $3c
	jr jr_06f_4c24                                   ; $4c06: $18 $1c

	nop                                              ; $4c08: $00
	cp a                                             ; $4c09: $bf
	sbc b                                            ; $4c0a: $98
	and d                                            ; $4c0b: $a2
	ld h, e                                          ; $4c0c: $63

jr_06f_4c0d:
	ldh [$b9], a                                     ; $4c0d: $e0 $b9
	add d                                            ; $4c0f: $82
	db $ed                                           ; $4c10: $ed
	sbc e                                            ; $4c11: $9b
	rlca                                             ; $4c12: $07
	jr jr_06f_4c43                                   ; $4c13: $18 $2e

	ld e, [hl]                                       ; $4c15: $5e
	ld [hl], e                                       ; $4c16: $73
	ld hl, sp-$6e                                    ; $4c17: $f8 $92
	rra                                              ; $4c19: $1f
	ld sp, $be61                                     ; $4c1a: $31 $61 $be
	cp [hl]                                          ; $4c1d: $be
	db $fc                                           ; $4c1e: $fc
	db $fc                                           ; $4c1f: $fc
	db $fd                                           ; $4c20: $fd

jr_06f_4c21:
	cp c                                             ; $4c21: $b9
	cp c                                             ; $4c22: $b9
	cp d                                             ; $4c23: $ba

Jump_06f_4c24:
jr_06f_4c24:
	pop bc                                           ; $4c24: $c1
	pop bc                                           ; $4c25: $c1
	sbc $83                                          ; $4c26: $de $83
	sbc $c7                                          ; $4c28: $de $c7
	sub [hl]                                         ; $4c2a: $96

jr_06f_4c2b:
	cp d                                             ; $4c2b: $ba
	sbc d                                            ; $4c2c: $9a
	sbc e                                            ; $4c2d: $9b
	sbc d                                            ; $4c2e: $9a
	ld e, l                                          ; $4c2f: $5d
	ld e, [hl]                                       ; $4c30: $5e
	ld e, d                                          ; $4c31: $5a
	ld e, d                                          ; $4c32: $5a
	rst JumpTable                                          ; $4c33: $c7
	sbc $e7                                          ; $4c34: $de $e7
	sbc e                                            ; $4c36: $9b
	ld h, a                                          ; $4c37: $67
	ld l, a                                          ; $4c38: $6f
	ld h, a                                          ; $4c39: $67
	ld h, a                                          ; $4c3a: $67
	jp c, $967f                                      ; $4c3b: $da $7f $96

jr_06f_4c3e:
	ld e, a                                          ; $4c3e: $5f
	ld b, e                                          ; $4c3f: $43
	ld b, c                                          ; $4c40: $41
	ld b, c                                          ; $4c41: $41
	ld b, a                                          ; $4c42: $47

jr_06f_4c43:
	ld c, l                                          ; $4c43: $4d
	ld d, b                                          ; $4c44: $50
	ld h, b                                          ; $4c45: $60
	ld h, b                                          ; $4c46: $60
	sbc $9f                                          ; $4c47: $de $9f
	rst SubAFromDE                                          ; $4c49: $df

jr_06f_4c4a:
	adc a                                            ; $4c4a: $8f
	sbc $4f                                          ; $4c4b: $de $4f
	sbc $e0                                          ; $4c4d: $de $e0
	rst SubAFromDE                                          ; $4c4f: $df
	ldh a, [$de]                                     ; $4c50: $f0 $de
	ld [hl], b                                       ; $4c52: $70
	sbc [hl]                                         ; $4c53: $9e
	ld c, a                                          ; $4c54: $4f
	db $dd                                           ; $4c55: $dd
	cpl                                              ; $4c56: $2f
	rst SubAFromDE                                          ; $4c57: $df
	rra                                              ; $4c58: $1f
	sbc l                                            ; $4c59: $9d
	rla                                              ; $4c5a: $17
	ld [hl], b                                       ; $4c5b: $70
	db $dd                                           ; $4c5c: $dd
	jr nc, jr_06f_4c3e                               ; $4c5d: $30 $df

	db $10                                           ; $4c5f: $10
	sbc d                                            ; $4c60: $9a
	jr jr_06f_4c7a                                   ; $4c61: $18 $17

	rla                                              ; $4c63: $17
	rrca                                             ; $4c64: $0f
	rrca                                             ; $4c65: $0f
	db $dd                                           ; $4c66: $dd
	dec bc                                           ; $4c67: $0b
	rst SubAFromDE                                          ; $4c68: $df
	jr jr_06f_4c4a                                   ; $4c69: $18 $df

	ld [$0cdd], sp                                   ; $4c6b: $08 $dd $0c
	rst SubAFromDE                                          ; $4c6e: $df
	dec b                                            ; $4c6f: $05
	rst SubAFromDE                                          ; $4c70: $df
	ld [bc], a                                       ; $4c71: $02
	sbc [hl]                                         ; $4c72: $9e
	ld bc, $dffe                                     ; $4c73: $01 $fe $df
	ld b, $df                                        ; $4c76: $06 $df
	inc bc                                           ; $4c78: $03

jr_06f_4c79:
	ld [hl], a                                       ; $4c79: $77

jr_06f_4c7a:
	ld hl, sp-$0f                                    ; $4c7a: $f8 $f1
	ld a, a                                          ; $4c7c: $7f
	db $ec                                           ; $4c7d: $ec
	ld a, a                                          ; $4c7e: $7f
	jp hl                                            ; $4c7f: $e9


	sbc e                                            ; $4c80: $9b
	rra                                              ; $4c81: $1f
	ccf                                              ; $4c82: $3f
	ld a, a                                          ; $4c83: $7f
	ld a, l                                          ; $4c84: $7d
	ld [hl], e                                       ; $4c85: $73
	ld hl, sp-$80                                    ; $4c86: $f8 $80
	jr nz, jr_06f_4ccd                               ; $4c88: $20 $43

	ld b, [hl]                                       ; $4c8a: $46
	ld e, e                                          ; $4c8b: $5b
	cpl                                              ; $4c8c: $2f
	ld [hl], $eb                                     ; $4c8d: $36 $eb
	ld h, $3d                                        ; $4c8f: $26 $3d
	dec [hl]                                         ; $4c91: $35
	cpl                                              ; $4c92: $2f
	ld h, h                                          ; $4c93: $64
	jr nc, jr_06f_4ccf                               ; $4c94: $30 $39

	rst FarCall                                          ; $4c96: $f7
	rst $38                                          ; $4c97: $ff
	cp $fe                                           ; $4c98: $fe $fe
	db $f4                                           ; $4c9a: $f4
	ld c, [hl]                                       ; $4c9b: $4e
	ld h, b                                          ; $4c9c: $60
	call nz, Call_06f_63dd                           ; $4c9d: $c4 $dd $63
	push hl                                          ; $4ca0: $e5
	sbc h                                            ; $4ca1: $9c
	dec hl                                           ; $4ca2: $2b
	db $f4                                           ; $4ca3: $f4
	sub $c2                                          ; $4ca4: $d6 $c2
	jp nz, $df8b                                     ; $4ca6: $c2 $8b $df

	ld e, [hl]                                       ; $4ca9: $5e
	ld a, b                                          ; $4caa: $78
	ldh a, [rOBP1]                                   ; $4cab: $f0 $49
	or [hl]                                          ; $4cad: $b6
	ld a, $59                                        ; $4cae: $3e $59
	or l                                             ; $4cb0: $b5
	ld a, [hl+]                                      ; $4cb1: $2a
	halt                                             ; $4cb2: $76

Call_06f_4cb3:
	ld l, l                                          ; $4cb3: $6d
	rst SubAFromBC                                          ; $4cb4: $e7
	rst GetHLinHL                                          ; $4cb5: $cf
	ld sp, hl                                        ; $4cb6: $f9
	di                                               ; $4cb7: $f3
	db $e3                                           ; $4cb8: $e3
	rst SubAFromBC                                          ; $4cb9: $e7

jr_06f_4cba:
	rst GetHLinHL                                          ; $4cba: $cf
	rst SubAFromDE                                          ; $4cbb: $df
	ldh [$c1], a                                     ; $4cbc: $e0 $c1
	adc [hl]                                         ; $4cbe: $8e
	ld [hl], $3c                                     ; $4cbf: $36 $3c
	add hl, de                                       ; $4cc1: $19
	add hl, de                                       ; $4cc2: $19
	inc de                                           ; $4cc3: $13
	add b                                            ; $4cc4: $80
	add b                                            ; $4cc5: $80
	ld b, b                                          ; $4cc6: $40
	ret                                              ; $4cc7: $c9


	jp $e6e6                                         ; $4cc8: $c3 $e6 $e6


	db $ec                                           ; $4ccb: $ec
	rst $38                                          ; $4ccc: $ff

jr_06f_4ccd:
	rst $38                                          ; $4ccd: $ff
	ld a, a                                          ; $4cce: $7f

jr_06f_4ccf:
	ld b, b                                          ; $4ccf: $40
	sbc $20                                          ; $4cd0: $de $20
	sbc $10                                          ; $4cd2: $de $10
	sbc l                                            ; $4cd4: $9d
	ld [$de7f], sp                                   ; $4cd5: $08 $7f $de
	ccf                                              ; $4cd8: $3f
	sbc $1f                                          ; $4cd9: $de $1f
	add c                                            ; $4cdb: $81
	rrca                                             ; $4cdc: $0f
	rst FarCall                                          ; $4cdd: $f7
	reti                                             ; $4cde: $d9


	db $fc                                           ; $4cdf: $fc
	rlca                                             ; $4ce0: $07
	jp $fef8                                         ; $4ce1: $c3 $f8 $fe


	ld a, a                                          ; $4ce4: $7f
	rst $38                                          ; $4ce5: $ff
	cp a                                             ; $4ce6: $bf
	rst $38                                          ; $4ce7: $ff
	cp $ff                                           ; $4ce8: $fe $ff
	ccf                                              ; $4cea: $3f
	add a                                            ; $4ceb: $87
	rst $38                                          ; $4cec: $ff
	db $fd                                           ; $4ced: $fd
	rst GetHLinHL                                          ; $4cee: $cf
	ld a, [$9296]                                    ; $4cef: $fa $96 $92
	adc c                                            ; $4cf2: $89
	adc b                                            ; $4cf3: $88
	inc bc                                           ; $4cf4: $03
	inc bc                                           ; $4cf5: $03
	ccf                                              ; $4cf6: $3f
	db $fd                                           ; $4cf7: $fd
	ld sp, hl                                        ; $4cf8: $f9
	ld sp, hl                                        ; $4cf9: $f9
	sbc $f0                                          ; $4cfa: $de $f0
	add b                                            ; $4cfc: $80
	ld a, [hl]                                       ; $4cfd: $7e
	or c                                             ; $4cfe: $b1
	rrca                                             ; $4cff: $0f
	set 5, l                                         ; $4d00: $cb $ed
	dec e                                            ; $4d02: $1d
	ld h, e                                          ; $4d03: $63
	add a                                            ; $4d04: $87
	rst $38                                          ; $4d05: $ff
	ld a, a                                          ; $4d06: $7f
	db $fc                                           ; $4d07: $fc
	halt                                             ; $4d08: $76
	di                                               ; $4d09: $f3
	rst $38                                          ; $4d0a: $ff
	rra                                              ; $4d0b: $1f
	ld a, a                                          ; $4d0c: $7f
	rst $38                                          ; $4d0d: $ff
	ld c, c                                          ; $4d0e: $49
	sub $7b                                          ; $4d0f: $d6 $7b
	cp l                                             ; $4d11: $bd
	rst SubAFromHL                                          ; $4d12: $d7
	rst SubAFromDE                                          ; $4d13: $df
	ld c, [hl]                                       ; $4d14: $4e
	rst $38                                          ; $4d15: $ff
	rst $38                                          ; $4d16: $ff
	cp e                                             ; $4d17: $bb
	or [hl]                                          ; $4d18: $b6
	halt                                             ; $4d19: $76
	ld a, h                                          ; $4d1a: $7c
	ld l, h                                          ; $4d1b: $6c
	sbc [hl]                                         ; $4d1c: $9e
	db $ec                                           ; $4d1d: $ec
	ldh [$c1], a                                     ; $4d1e: $e0 $c1
	ld a, a                                          ; $4d20: $7f
	ld [hl], e                                       ; $4d21: $73
	sbc h                                            ; $4d22: $9c
	ld b, b                                          ; $4d23: $40
	ld h, b                                          ; $4d24: $60
	and b                                            ; $4d25: $a0
	ld a, e                                          ; $4d26: $7b
	ld h, b                                          ; $4d27: $60
	sbc e                                            ; $4d28: $9b
	db $10                                           ; $4d29: $10
	jr nz, jr_06f_4d4c                               ; $4d2a: $20 $20

	nop                                              ; $4d2c: $00
	sbc $40                                          ; $4d2d: $de $40
	sub h                                            ; $4d2f: $94
	add b                                            ; $4d30: $80
	inc b                                            ; $4d31: $04
	inc c                                            ; $4d32: $0c
	adc h                                            ; $4d33: $8c
	sbc b                                            ; $4d34: $98
	cp b                                             ; $4d35: $b8
	ret nc                                           ; $4d36: $d0

	or b                                             ; $4d37: $b0
	jr nz, jr_06f_4cba                               ; $4d38: $20 $80

	add b                                            ; $4d3a: $80
	ld [hl], a                                       ; $4d3b: $77
	db $e3                                           ; $4d3c: $e3
	add c                                            ; $4d3d: $81
	ld b, b                                          ; $4d3e: $40
	ret nz                                           ; $4d3f: $c0

	inc a                                            ; $4d40: $3c
	ldh a, [$df]                                     ; $4d41: $f0 $df
	or $ab                                           ; $4d43: $f6 $ab
	or a                                             ; $4d45: $b7
	rst $38                                          ; $4d46: $ff
	cp $3c                                           ; $4d47: $fe $3c
	ret nc                                           ; $4d49: $d0

	cp a                                             ; $4d4a: $bf
	cp c                                             ; $4d4b: $b9

jr_06f_4d4c:
	rst FarCall                                          ; $4d4c: $f7
	xor $f9                                          ; $4d4d: $ee $f9
	rla                                              ; $4d4f: $17
	dec de                                           ; $4d50: $1b
	rst $38                                          ; $4d51: $ff
	ld sp, $b939                                     ; $4d52: $31 $39 $b9
	sbc c                                            ; $4d55: $99
	sbc b                                            ; $4d56: $98
	sbc b                                            ; $4d57: $98
	db $fc                                           ; $4d58: $fc
	rst $38                                          ; $4d59: $ff
	rst AddAOntoHL                                          ; $4d5a: $ef
	rst SubAFromBC                                          ; $4d5b: $e7
	db $dd                                           ; $4d5c: $dd
	ld h, a                                          ; $4d5d: $67
	rst SubAFromDE                                          ; $4d5e: $df
	ld bc, $9394                                     ; $4d5f: $01 $94 $93
	push de                                          ; $4d62: $d5
	xor d                                            ; $4d63: $aa
	ld sp, $ffa6                                     ; $4d64: $31 $a6 $ff
	ld l, a                                          ; $4d67: $6f
	rst AddAOntoHL                                          ; $4d68: $ef
	rst AddAOntoHL                                          ; $4d69: $ef
	ld l, [hl]                                       ; $4d6a: $6e
	ld a, h                                          ; $4d6b: $7c
	sbc $ff                                          ; $4d6c: $de $ff
	sub h                                            ; $4d6e: $94
	cp d                                             ; $4d6f: $ba
	ld l, l                                          ; $4d70: $6d
	call nz, $82c6                                   ; $4d71: $c4 $c6 $82
	add c                                            ; $4d74: $81
	add e                                            ; $4d75: $83
	add e                                            ; $4d76: $83
	rst GetHLinHL                                          ; $4d77: $cf
	add a                                            ; $4d78: $87
	rlca                                             ; $4d79: $07

jr_06f_4d7a:
	sbc $03                                          ; $4d7a: $de $03
	rst SubAFromDE                                          ; $4d7c: $df
	ld bc, $b9e0                                     ; $4d7d: $01 $e0 $b9
	sbc d                                            ; $4d80: $9a
	jp nz, Jump_06f_41c3                             ; $4d81: $c2 $c3 $41

	ld b, b                                          ; $4d84: $40
	ld b, b                                          ; $4d85: $40
	ld l, [hl]                                       ; $4d86: $6e
	cpl                                              ; $4d87: $2f
	ld a, a                                          ; $4d88: $7f
	db $fd                                           ; $4d89: $fd
	sbc h                                            ; $4d8a: $9c
	rlca                                             ; $4d8b: $07
	rrca                                             ; $4d8c: $0f
	rra                                              ; $4d8d: $1f
	ld [hl], e                                       ; $4d8e: $73
	ld hl, sp-$68                                    ; $4d8f: $f8 $98
	ld b, $09                                        ; $4d91: $06 $09
	rra                                              ; $4d93: $1f
	nop                                              ; $4d94: $00
	nop                                              ; $4d95: $00
	ret nz                                           ; $4d96: $c0

	ld a, $de                                        ; $4d97: $3e $de
	rst $38                                          ; $4d99: $ff
	ld a, d                                          ; $4d9a: $7a
	ld e, b                                          ; $4d9b: $58
	add b                                            ; $4d9c: $80
	ret nz                                           ; $4d9d: $c0

	cp $c1                                           ; $4d9e: $fe $c1
	nop                                              ; $4da0: $00
	ldh [$31], a                                     ; $4da1: $e0 $31
	rst $38                                          ; $4da3: $ff
	rst $38                                          ; $4da4: $ff
	dec sp                                           ; $4da5: $3b
	sub l                                            ; $4da6: $95
	db $d3                                           ; $4da7: $d3
	jp z, $d8ca                                      ; $4da8: $ca $ca $d8

	nop                                              ; $4dab: $00
	db $fc                                           ; $4dac: $fc
	cp $7e                                           ; $4dad: $fe $7e
	ccf                                              ; $4daf: $3f
	scf                                              ; $4db0: $37
	scf                                              ; $4db1: $37
	daa                                              ; $4db2: $27
	jp c, $f51a                                      ; $4db3: $da $1a $f5

	ld c, l                                          ; $4db6: $4d
	ld a, a                                          ; $4db7: $7f
	push bc                                          ; $4db8: $c5
	jp z, $27b1                                      ; $4db9: $ca $b1 $27

	adc b                                            ; $4dbc: $88
	rst SubAFromBC                                          ; $4dbd: $e7
	cp $3e                                           ; $4dbe: $fe $3e
	rst $38                                          ; $4dc0: $ff
	cp $fd                                           ; $4dc1: $fe $fd
	rst $38                                          ; $4dc3: $ff
	ld e, a                                          ; $4dc4: $5f
	dec l                                            ; $4dc5: $2d
	sub [hl]                                         ; $4dc6: $96
	jp c, $f5ab                                      ; $4dc7: $da $ab $f5

	ld c, l                                          ; $4dca: $4d
	dec hl                                           ; $4dcb: $2b
	rst AddAOntoHL                                          ; $4dcc: $ef
	or $fb                                           ; $4dcd: $f6 $fb
	rst $38                                          ; $4dcf: $ff
	db $fd                                           ; $4dd0: $fd
	xor a                                            ; $4dd1: $af
	daa                                              ; $4dd2: $27
	rlca                                             ; $4dd3: $07
	ldh [$b1], a                                     ; $4dd4: $e0 $b1
	sbc [hl]                                         ; $4dd6: $9e
	rrca                                             ; $4dd7: $0f
	ld a, d                                          ; $4dd8: $7a
	inc e                                            ; $4dd9: $1c
	db $dd                                           ; $4dda: $dd
	rst $38                                          ; $4ddb: $ff
	sub a                                            ; $4ddc: $97
	rrca                                             ; $4ddd: $0f
	ld sp, hl                                        ; $4dde: $f9
	adc h                                            ; $4ddf: $8c
	ld h, h                                          ; $4de0: $64
	add d                                            ; $4de1: $82
	nop                                              ; $4de2: $00
	add b                                            ; $4de3: $80
	ld [$9cfc], sp                                   ; $4de4: $08 $fc $9c
	add b                                            ; $4de7: $80
	ld hl, sp-$79                                    ; $4de8: $f8 $87
	ld l, e                                          ; $4dea: $6b
	ld hl, sp-$6b                                    ; $4deb: $f8 $95
	rst $38                                          ; $4ded: $ff
	adc h                                            ; $4dee: $8c
	ld e, a                                          ; $4def: $5f
	ld e, a                                          ; $4df0: $5f
	ld c, a                                          ; $4df1: $4f
	ld b, a                                          ; $4df2: $47
	jp $2061                                         ; $4df3: $c3 $61 $20


	di                                               ; $4df6: $f3
	ld a, c                                          ; $4df7: $79
	jr nz, jr_06f_4d7a                               ; $4df8: $20 $80

	ld hl, sp-$04                                    ; $4dfa: $f8 $fc
	cp $ff                                           ; $4dfc: $fe $ff
	sub a                                            ; $4dfe: $97
	rra                                              ; $4dff: $1f
	dec hl                                           ; $4e00: $2b
	or a                                             ; $4e01: $b7
	ld d, l                                          ; $4e02: $55
	ld [hl], a                                       ; $4e03: $77
	and a                                            ; $4e04: $a7
	ld b, [hl]                                       ; $4e05: $46
	ld a, b                                          ; $4e06: $78
	ld a, b                                          ; $4e07: $78
	ld a, h                                          ; $4e08: $7c
	ld l, h                                          ; $4e09: $6c
	xor $ce                                          ; $4e0a: $ee $ce
	sbc $bf                                          ; $4e0c: $de $bf
	dec b                                            ; $4e0e: $05
	adc c                                            ; $4e0f: $89
	call Call_06f_6bd5                               ; $4e10: $cd $d5 $6b
	di                                               ; $4e13: $f3
	push hl                                          ; $4e14: $e5
	db $ed                                           ; $4e15: $ed
	rst $38                                          ; $4e16: $ff
	rst $38                                          ; $4e17: $ff
	ld a, e                                          ; $4e18: $7b
	sbc d                                            ; $4e19: $9a
	ld a, e                                          ; $4e1a: $7b
	or a                                             ; $4e1b: $b7
	xor a                                            ; $4e1c: $af
	cp a                                             ; $4e1d: $bf
	cp a                                             ; $4e1e: $bf
	ldh [$c1], a                                     ; $4e1f: $e0 $c1
	halt                                             ; $4e21: $76
	ld a, [hl]                                       ; $4e22: $7e
	sbc e                                            ; $4e23: $9b
	jr @+$3a                                         ; $4e24: $18 $38

	ld a, a                                          ; $4e26: $7f
	rst $38                                          ; $4e27: $ff
	db $fd                                           ; $4e28: $fd
	sbc e                                            ; $4e29: $9b
	jr @+$2a                                         ; $4e2a: $18 $28

	ld c, a                                          ; $4e2c: $4f
	adc b                                            ; $4e2d: $88
	sbc $ff                                          ; $4e2e: $de $ff
	sub e                                            ; $4e30: $93
	db $fc                                           ; $4e31: $fc
	ld hl, sp-$08                                    ; $4e32: $f8 $f8
	db $fd                                           ; $4e34: $fd
	cp c                                             ; $4e35: $b9
	add c                                            ; $4e36: $81
	nop                                              ; $4e37: $00
	inc bc                                           ; $4e38: $03

jr_06f_4e39:
	rrca                                             ; $4e39: $0f
	rra                                              ; $4e3a: $1f
	rrca                                             ; $4e3b: $0f
	ld b, a                                          ; $4e3c: $47
	ld [hl], e                                       ; $4e3d: $73
	add sp, $77                                      ; $4e3e: $e8 $77
	ld h, [hl]                                       ; $4e40: $66
	ld h, a                                          ; $4e41: $67
	ld hl, sp-$64                                    ; $4e42: $f8 $9c
	ld b, b                                          ; $4e44: $40
	and b                                            ; $4e45: $a0
	ret nc                                           ; $4e46: $d0

	sbc $f0                                          ; $4e47: $de $f0
	rst SubAFromDE                                          ; $4e49: $df
	add sp, -$63                                     ; $4e4a: $e8 $9d
	ret nz                                           ; $4e4c: $c0

	ld h, b                                          ; $4e4d: $60
	ld a, b                                          ; $4e4e: $78
	sub d                                            ; $4e4f: $92
	ld a, h                                          ; $4e50: $7c
	sub c                                            ; $4e51: $91
	sbc [hl]                                         ; $4e52: $9e
	jr @-$20                                         ; $4e53: $18 $de

	ld c, b                                          ; $4e55: $48
	rst SubAFromDE                                          ; $4e56: $df
	ld [$04de], sp                                   ; $4e57: $08 $de $04
	sbc $b8                                          ; $4e5a: $de $b8
	rst SubAFromDE                                          ; $4e5c: $df
	ld hl, sp-$22                                    ; $4e5d: $f8 $de
	db $fc                                           ; $4e5f: $fc
	jp c, $9e04                                      ; $4e60: $da $04 $9e

	ld b, $da                                        ; $4e63: $06 $da
	db $fc                                           ; $4e65: $fc
	ld a, a                                          ; $4e66: $7f
	ccf                                              ; $4e67: $3f
	db $dd                                           ; $4e68: $dd
	rst $38                                          ; $4e69: $ff
	rst SubAFromDE                                          ; $4e6a: $df
	db $fd                                           ; $4e6b: $fd
	sbc l                                            ; $4e6c: $9d
	ld a, l                                          ; $4e6d: $7d
	ld sp, hl                                        ; $4e6e: $f9
	db $dd                                           ; $4e6f: $dd
	ld bc, $03df                                     ; $4e70: $01 $df $03
	adc h                                            ; $4e73: $8c
	add e                                            ; $4e74: $83
	ld a, [hl]                                       ; $4e75: $7e
	ld a, $1e                                        ; $4e76: $3e $1e
	ld e, $2e                                        ; $4e78: $1e $2e
	sbc [hl]                                         ; $4e7a: $9e
	sbc d                                            ; $4e7b: $9a
	adc d                                            ; $4e7c: $8a
	add d                                            ; $4e7d: $82
	jp nz, $e2e2                                     ; $4e7e: $c2 $e2 $e2

	jp nc, $e6e2                                     ; $4e81: $d2 $e2 $e6

	or $42                                           ; $4e84: $f6 $42
	ld b, d                                          ; $4e86: $42
	sbc $22                                          ; $4e87: $de $22
	sbc h                                            ; $4e89: $9c
	sub d                                            ; $4e8a: $92
	ld [de], a                                       ; $4e8b: $12
	ld [de], a                                       ; $4e8c: $12
	reti                                             ; $4e8d: $d9


	cp $97                                           ; $4e8e: $fe $97
	adc d                                            ; $4e90: $8a
	ld c, d                                          ; $4e91: $4a
	ld a, [hl+]                                      ; $4e92: $2a
	ld h, $96                                        ; $4e93: $26 $96
	sub [hl]                                         ; $4e95: $96
	jp z, $ddea                                      ; $4e96: $ca $ea $dd

	cp $df                                           ; $4e99: $fe $df
	ld a, [hl]                                       ; $4e9b: $7e
	ld a, a                                          ; $4e9c: $7f
	db $d3                                           ; $4e9d: $d3
	ld a, c                                          ; $4e9e: $79
	jp c, Jump_06f_5d7b                              ; $4e9f: $da $7b $5d

	rst SubAFromDE                                          ; $4ea2: $df
	add b                                            ; $4ea3: $80
	ld h, a                                          ; $4ea4: $67
	ld hl, sp+$7b                                    ; $4ea5: $f8 $7b
	db $fd                                           ; $4ea7: $fd
	sbc d                                            ; $4ea8: $9a
	ldh [$30], a                                     ; $4ea9: $e0 $30
	jr jr_06f_4e39                                   ; $4eab: $18 $8c

	add h                                            ; $4ead: $84
	ld [hl], a                                       ; $4eae: $77
	ld hl, sp+$7a                                    ; $4eaf: $f8 $7a
	rst SubAFromDE                                          ; $4eb1: $df
	sbc [hl]                                         ; $4eb2: $9e
	db $fc                                           ; $4eb3: $fc
	ld l, a                                          ; $4eb4: $6f
	ld l, d                                          ; $4eb5: $6a
	sbc l                                            ; $4eb6: $9d
	add b                                            ; $4eb7: $80
	ret nz                                           ; $4eb8: $c0

	ld l, e                                          ; $4eb9: $6b
	ld hl, sp+$7d                                    ; $4eba: $f8 $7d
	ld l, a                                          ; $4ebc: $6f
	sbc $e0                                          ; $4ebd: $de $e0
	rst SubAFromDE                                          ; $4ebf: $df
	ldh a, [$df]                                     ; $4ec0: $f0 $df
	ret nc                                           ; $4ec2: $d0

	ld l, h                                          ; $4ec3: $6c
	cp b                                             ; $4ec4: $b8
	rst SubAFromDE                                          ; $4ec5: $df
	jr nc, jr_06f_4ee9                               ; $4ec6: $30 $21

	nop                                              ; $4ec8: $00
	rst SubAFromDE                                          ; $4ec9: $df
	call z, $dddf                                    ; $4eca: $cc $df $dd
	sub e                                            ; $4ecd: $93
	cp e                                             ; $4ece: $bb
	xor d                                            ; $4ecf: $aa
	ld [hl+], a                                      ; $4ed0: $22
	sbc c                                            ; $4ed1: $99
	sbc c                                            ; $4ed2: $99
	db $dd                                           ; $4ed3: $dd
	ld [hl+], a                                      ; $4ed4: $22
	nop                                              ; $4ed5: $00
	sbc c                                            ; $4ed6: $99
	sbc c                                            ; $4ed7: $99
	inc sp                                           ; $4ed8: $33
	xor d                                            ; $4ed9: $aa
	ld h, a                                          ; $4eda: $67
	ei                                               ; $4edb: $fb
	sbc l                                            ; $4edc: $9d
	ld de, $7bcc                                     ; $4edd: $11 $cc $7b
	db $ec                                           ; $4ee0: $ec
	ld a, a                                          ; $4ee1: $7f
	ei                                               ; $4ee2: $fb
	ld a, e                                          ; $4ee3: $7b
	ldh [c], a                                       ; $4ee4: $e2
	sbc l                                            ; $4ee5: $9d
	ld de, $ccdd                                     ; $4ee6: $11 $dd $cc

jr_06f_4ee9:
	ld bc, $9580                                     ; $4ee9: $01 $80 $95
	rst $38                                          ; $4eec: $ff
	and l                                            ; $4eed: $a5

jr_06f_4eee:
	rst $38                                          ; $4eee: $ff
	ld [hl], l                                       ; $4eef: $75
	rst AddAOntoHL                                          ; $4ef0: $ef
	cp [hl]                                          ; $4ef1: $be
	rst AddAOntoHL                                          ; $4ef2: $ef
	xor d                                            ; $4ef3: $aa
	rst $38                                          ; $4ef4: $ff
	xor a                                            ; $4ef5: $af
	ei                                               ; $4ef6: $fb
	pop de                                           ; $4ef7: $d1
	ld hl, sp+$50                                    ; $4ef8: $f8 $50
	ld a, b                                          ; $4efa: $78
	inc a                                            ; $4efb: $3c
	add hl, sp                                       ; $4efc: $39
	dec sp                                           ; $4efd: $3b
	dec l                                            ; $4efe: $2d
	daa                                              ; $4eff: $27
	inc l                                            ; $4f00: $2c
	inc h                                            ; $4f01: $24
	ld l, $3a                                        ; $4f02: $2e $3a
	ld l, $1f                                        ; $4f04: $2e $1f
	ld d, $0d                                        ; $4f06: $16 $0d
	dec bc                                           ; $4f08: $0b
	rlca                                             ; $4f09: $07
	sbc [hl]                                         ; $4f0a: $9e
	rlca                                             ; $4f0b: $07
	call c, $9d01                                    ; $4f0c: $dc $01 $9d
	inc bc                                           ; $4f0f: $03
	ld b, $7b                                        ; $4f10: $06 $7b
	cp $97                                           ; $4f12: $fe $97
	ld c, c                                          ; $4f14: $49
	rlca                                             ; $4f15: $07
	ld c, c                                          ; $4f16: $49
	rlca                                             ; $4f17: $07
	ld b, c                                          ; $4f18: $41
	ld c, $43                                        ; $4f19: $0e $43
	inc c                                            ; $4f1b: $0c
	ld [hl], a                                       ; $4f1c: $77
	cp $9a                                           ; $4f1d: $fe $9a
	ld b, a                                          ; $4f1f: $47
	ld [$08c7], sp                                   ; $4f20: $08 $c7 $08
	add $7b                                          ; $4f23: $c6 $7b
	cp $82                                           ; $4f25: $fe $82
	adc h                                            ; $4f27: $8c
	ld b, b                                          ; $4f28: $40
	db $ec                                           ; $4f29: $ec
	add $e5                                          ; $4f2a: $c6 $e5
	ld b, d                                          ; $4f2c: $42
	jp hl                                            ; $4f2d: $e9


	jr nc, jr_06f_4eee                               ; $4f2e: $30 $be

	ld a, b                                          ; $4f30: $78
	rst SubAFromDE                                          ; $4f31: $df
	ldh [$e3], a                                     ; $4f32: $e0 $e3
	inc e                                            ; $4f34: $1c
	cp l                                             ; $4f35: $bd
	ld a, [hl]                                       ; $4f36: $7e
	halt                                             ; $4f37: $76
	rst FarCall                                          ; $4f38: $f7
	and $e7                                          ; $4f39: $e6 $e7
	cp [hl]                                          ; $4f3b: $be
	rst $38                                          ; $4f3c: $ff
	ld l, e                                          ; $4f3d: $6b
	cp [hl]                                          ; $4f3e: $be
	ld h, $32                                        ; $4f3f: $26 $32

jr_06f_4f41:
	ld e, [hl]                                       ; $4f41: $5e
	inc a                                            ; $4f42: $3c
	dec b                                            ; $4f43: $05
	cp [hl]                                          ; $4f44: $be
	ld a, [bc]                                       ; $4f45: $0a
	add b                                            ; $4f46: $80
	add b                                            ; $4f47: $80
	sub b                                            ; $4f48: $90
	add b                                            ; $4f49: $80
	ret nz                                           ; $4f4a: $c0

	add b                                            ; $4f4b: $80
	ld h, b                                          ; $4f4c: $60
	ret nz                                           ; $4f4d: $c0

	or b                                             ; $4f4e: $b0
	ldh [$b8], a                                     ; $4f4f: $e0 $b8
	ld hl, sp+$66                                    ; $4f51: $f8 $66
	cp $41                                           ; $4f53: $fe $41
	rst $38                                          ; $4f55: $ff
	ld b, b                                          ; $4f56: $40
	rst $38                                          ; $4f57: $ff
	cp c                                             ; $4f58: $b9
	di                                               ; $4f59: $f3
	jp $0487                                         ; $4f5a: $c3 $87 $04


	inc c                                            ; $4f5d: $0c
	inc e                                            ; $4f5e: $1c
	jr jr_06f_4f99                                   ; $4f5f: $18 $38

	ld a, a                                          ; $4f61: $7f
	di                                               ; $4f62: $f3
	sbc [hl]                                         ; $4f63: $9e
	ld b, b                                          ; $4f64: $40
	or [hl]                                          ; $4f65: $b6
	jr nz, @+$03                                     ; $4f66: $20 $01

	ld bc, $8081                                     ; $4f68: $01 $81 $80
	add b                                            ; $4f6b: $80
	add b                                            ; $4f6c: $80
	add b                                            ; $4f6d: $80
	ld a, [hl+]                                      ; $4f6e: $2a
	ld e, a                                          ; $4f6f: $5f
	and $80                                          ; $4f70: $e6 $80
	ld [$1c5b], sp                                   ; $4f72: $08 $5b $1c
	ld e, $08                                        ; $4f75: $1e $08
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	ld a, e                                          ; $4f79: $7b
	ld b, $77                                        ; $4f7a: $06 $77
	ld a, [$1eef]                                    ; $4f7c: $fa $ef $1e
	rst $38                                          ; $4f7f: $ff
	nop                                              ; $4f80: $00
	rst JumpTable                                          ; $4f81: $c7
	jr c, jr_06f_4f41                                ; $4f82: $38 $bd

	ld a, [hl]                                       ; $4f84: $7e
	ld h, a                                          ; $4f85: $67
	rst SubAFromBC                                          ; $4f86: $e7
	rst GetHLinHL                                          ; $4f87: $cf
	rst AddAOntoHL                                          ; $4f88: $ef
	ld a, [hl]                                       ; $4f89: $7e
	rst $38                                          ; $4f8a: $ff
	jp c, Jump_06f_757e                              ; $4f8b: $da $7e $75

	ld h, $7b                                        ; $4f8e: $26 $7b
	inc a                                            ; $4f90: $3c
	sbc [hl]                                         ; $4f91: $9e
	cp a                                             ; $4f92: $bf
	cp h                                             ; $4f93: $bc
	ld d, a                                          ; $4f94: $57
	inc bc                                           ; $4f95: $03
	inc bc                                           ; $4f96: $03
	rlca                                             ; $4f97: $07
	rrca                                             ; $4f98: $0f

jr_06f_4f99:
	adc b                                            ; $4f99: $88
	ld bc, $031f                                     ; $4f9a: $01 $1f $03
	rra                                              ; $4f9d: $1f
	rlca                                             ; $4f9e: $07
	ccf                                              ; $4f9f: $3f
	rrca                                             ; $4fa0: $0f
	ld a, h                                          ; $4fa1: $7c
	ccf                                              ; $4fa2: $3f
	db $fc                                           ; $4fa3: $fc
	ld a, a                                          ; $4fa4: $7f
	ld hl, sp-$01                                    ; $4fa5: $f8 $ff
	ld hl, sp+$3f                                    ; $4fa7: $f8 $3f
	ldh a, [$1f]                                     ; $4fa9: $f0 $1f
	ldh [$3d], a                                     ; $4fab: $e0 $3d
	ret nz                                           ; $4fad: $c0

	ld a, b                                          ; $4fae: $78
	add b                                            ; $4faf: $80
	ldh [$be], a                                     ; $4fb0: $e0 $be
	add b                                            ; $4fb2: $80
	nop                                              ; $4fb3: $00
	nop                                              ; $4fb4: $00
	sbc e                                            ; $4fb5: $9b
	rst $38                                          ; $4fb6: $ff
	cp c                                             ; $4fb7: $b9
	rst $38                                          ; $4fb8: $ff
	or e                                             ; $4fb9: $b3
	ld a, e                                          ; $4fba: $7b
	dec e                                            ; $4fbb: $1d
	add b                                            ; $4fbc: $80
	ld l, c                                          ; $4fbd: $69
	rst $38                                          ; $4fbe: $ff
	ld [hl], e                                       ; $4fbf: $73
	cp $5f                                           ; $4fc0: $fe $5f
	cp $1f                                           ; $4fc2: $fe $1f
	db $fc                                           ; $4fc4: $fc
	sub a                                            ; $4fc5: $97
	cp $13                                           ; $4fc6: $fe $13

jr_06f_4fc8:
	cp $3b                                           ; $4fc8: $fe $3b
	cp $2b                                           ; $4fca: $fe $2b

jr_06f_4fcc:
	db $fd                                           ; $4fcc: $fd
	scf                                              ; $4fcd: $37
	db $fd                                           ; $4fce: $fd
	cpl                                              ; $4fcf: $2f
	db $fc                                           ; $4fd0: $fc
	ld a, a                                          ; $4fd1: $7f
	cp $7b                                           ; $4fd2: $fe $7b
	and $ff                                          ; $4fd4: $e6 $ff
	jp nz, $f2ff                                     ; $4fd6: $c2 $ff $f2

	rst $38                                          ; $4fd9: $ff
	sbc h                                            ; $4fda: $9c
	rst $38                                          ; $4fdb: $ff
	add l                                            ; $4fdc: $85
	ld c, $ff                                        ; $4fdd: $0e $ff
	dec b                                            ; $4fdf: $05
	rst $38                                          ; $4fe0: $ff
	add d                                            ; $4fe1: $82
	rst $38                                          ; $4fe2: $ff
	ld b, c                                          ; $4fe3: $41
	rst $38                                          ; $4fe4: $ff
	nop                                              ; $4fe5: $00
	rst $38                                          ; $4fe6: $ff
	jr nz, jr_06f_4fc8                               ; $4fe7: $20 $df

	ld h, b                                          ; $4fe9: $60
	sbc a                                            ; $4fea: $9f
	ld [hl-], a                                      ; $4feb: $32
	call Call_06f_4cb3                               ; $4fec: $cd $b3 $4c
	xor e                                            ; $4fef: $ab
	ld b, h                                          ; $4ff0: $44
	dec hl                                           ; $4ff1: $2b
	ld b, h                                          ; $4ff2: $44
	ld h, l                                          ; $4ff3: $65
	ld [bc], a                                       ; $4ff4: $02
	ld b, c                                          ; $4ff5: $41
	ld [bc], a                                       ; $4ff6: $02
	ld b, [hl]                                       ; $4ff7: $46
	ldh [$99], a                                     ; $4ff8: $e0 $99
	dec a                                            ; $4ffa: $3d
	jr c, jr_06f_5037                                ; $4ffb: $38 $3a

	dec l                                            ; $4ffd: $2d
	daa                                              ; $4ffe: $27
	dec l                                            ; $4fff: $2d
	ld e, [hl]                                       ; $5000: $5e
	ldh [$5f], a                                     ; $5001: $e0 $5f
	nop                                              ; $5003: $00
	ld a, e                                          ; $5004: $7b
	jp $0096                                         ; $5005: $c3 $96 $00


	db $fd                                           ; $5008: $fd
	ld a, $e7                                        ; $5009: $3e $e7
	ld h, a                                          ; $500b: $67
	cp $ff                                           ; $500c: $fe $ff
	xor e                                            ; $500e: $ab
	cp $5f                                           ; $500f: $fe $5f
	nop                                              ; $5011: $00
	ld h, a                                          ; $5012: $67
	ld b, b                                          ; $5013: $40
	ld [hl], a                                       ; $5014: $77
	cp $7f                                           ; $5015: $fe $7f
	ld a, $9c                                        ; $5017: $3e $9c
	ld h, [hl]                                       ; $5019: $66
	rst SubAFromBC                                          ; $501a: $e7
	rst $38                                          ; $501b: $ff
	ld c, e                                          ; $501c: $4b
	ld b, b                                          ; $501d: $40
	ld c, e                                          ; $501e: $4b
	ld h, b                                          ; $501f: $60
	sbc h                                            ; $5020: $9c
	rla                                              ; $5021: $17
	cp $93                                           ; $5022: $fe $93
	ld c, a                                          ; $5024: $4f
	ld h, b                                          ; $5025: $60
	ld d, a                                          ; $5026: $57
	add b                                            ; $5027: $80
	sbc [hl]                                         ; $5028: $9e
	ret nc                                           ; $5029: $d0

	halt                                             ; $502a: $76
	ld h, b                                          ; $502b: $60
	rst SubAFromDE                                          ; $502c: $df
	jr c, jr_06f_4fcc                                ; $502d: $38 $9d

	inc l                                            ; $502f: $2c
	ld h, $23                                        ; $5030: $26 $23
	add b                                            ; $5032: $80
	sbc [hl]                                         ; $5033: $9e
	ld a, a                                          ; $5034: $7f
	cp a                                             ; $5035: $bf
	ld a, a                                          ; $5036: $7f

jr_06f_5037:
	db $dd                                           ; $5037: $dd
	sbc e                                            ; $5038: $9b
	ld a, $ff                                        ; $5039: $3e $ff
	rst $38                                          ; $503b: $ff
	ld h, [hl]                                       ; $503c: $66
	inc sp                                           ; $503d: $33
	add b                                            ; $503e: $80
	ld l, a                                          ; $503f: $6f
	ld e, [hl]                                       ; $5040: $5e
	rst SubAFromDE                                          ; $5041: $df
	rst $38                                          ; $5042: $ff
	sbc e                                            ; $5043: $9b
	ld h, l                                          ; $5044: $65
	ld [hl], $7b                                     ; $5045: $36 $7b
	inc e                                            ; $5047: $1c
	inc hl                                           ; $5048: $23
	add b                                            ; $5049: $80
	ld a, [hl]                                       ; $504a: $7e
	ldh [$9e], a                                     ; $504b: $e0 $9e
	cp e                                             ; $504d: $bb
	scf                                              ; $504e: $37
	add b                                            ; $504f: $80
	ld a, a                                          ; $5050: $7f
	inc l                                            ; $5051: $2c
	sbc e                                            ; $5052: $9b
	xor [hl]                                         ; $5053: $ae
	ei                                               ; $5054: $fb
	pop de                                           ; $5055: $d1
	ld sp, hl                                        ; $5056: $f9
	ld l, e                                          ; $5057: $6b
	add b                                            ; $5058: $80
	ld e, c                                          ; $5059: $59
	ldh [$6f], a                                     ; $505a: $e0 $6f
	add b                                            ; $505c: $80
	sbc b                                            ; $505d: $98
	sbc $38                                          ; $505e: $de $38
	ld l, a                                          ; $5060: $6f
	ldh a, [$bf]                                     ; $5061: $f0 $bf
	ret nz                                           ; $5063: $c0

	ld a, a                                          ; $5064: $7f
	cp h                                             ; $5065: $bc
	rra                                              ; $5066: $1f
	rrca                                             ; $5067: $0f
	rrca                                             ; $5068: $0f
	rst $38                                          ; $5069: $ff
	jp $e79d                                         ; $506a: $c3 $9d $e7


	ld a, [hl]                                       ; $506d: $7e
	ld h, e                                          ; $506e: $63
	add b                                            ; $506f: $80
	sub a                                            ; $5070: $97
	rra                                              ; $5071: $1f
	ldh [c], a                                       ; $5072: $e2
	ei                                               ; $5073: $fb
	ld a, [hl]                                       ; $5074: $7e
	rst FarCall                                          ; $5075: $f7
	ld c, $ff                                        ; $5076: $0e $ff
	ld [bc], a                                       ; $5078: $02
	ld e, a                                          ; $5079: $5f
	ld a, h                                          ; $507a: $7c
	sbc e                                            ; $507b: $9b
	ld h, a                                          ; $507c: $67
	db $e3                                           ; $507d: $e3
	ld e, l                                          ; $507e: $5d
	ld a, $1b                                        ; $507f: $3e $1b
	add b                                            ; $5081: $80
	ld d, e                                          ; $5082: $53
	nop                                              ; $5083: $00
	sbc d                                            ; $5084: $9a
	inc sp                                           ; $5085: $33
	nop                                              ; $5086: $00
	ld e, $0c                                        ; $5087: $1e $0c
	nop                                              ; $5089: $00
	cp l                                             ; $508a: $bd
	inc c                                            ; $508b: $0c
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	ret nz                                           ; $508e: $c0

	sub e                                            ; $508f: $93
	add b                                            ; $5090: $80
	ei                                               ; $5091: $fb
	pop hl                                           ; $5092: $e1
	ld a, a                                          ; $5093: $7f
	rst $38                                          ; $5094: $ff
	ccf                                              ; $5095: $3f
	ld hl, sp+$1f                                    ; $5096: $f8 $1f
	ldh a, [rIF]                                     ; $5098: $f0 $0f
	ld hl, sp+$07                                    ; $509a: $f8 $07
	ld [hl], a                                       ; $509c: $77
	or a                                             ; $509d: $b7
	sbc d                                            ; $509e: $9a
	or $00                                           ; $509f: $f6 $00
	rst SubAFromBC                                          ; $50a1: $e7
	ccf                                              ; $50a2: $3f
	ld e, $07                                        ; $50a3: $1e $07
	ldh [$9e], a                                     ; $50a5: $e0 $9e
	ld a, $63                                        ; $50a7: $3e $63
	sbc $2f                                          ; $50a9: $de $2f
	ldh [rPCM34], a                                  ; $50ab: $e0 $77
	cp [hl]                                          ; $50ad: $be
	ld [hl], a                                       ; $50ae: $77
	ldh [c], a                                       ; $50af: $e2
	ld a, a                                          ; $50b0: $7f
	db $fc                                           ; $50b1: $fc
	scf                                              ; $50b2: $37
	ldh [$c7], a                                     ; $50b3: $e0 $c7
	ld bc, $9580                                     ; $50b5: $01 $80 $95
	rst $38                                          ; $50b8: $ff
	and l                                            ; $50b9: $a5
	rst $38                                          ; $50ba: $ff
	ld [hl], l                                       ; $50bb: $75
	rst AddAOntoHL                                          ; $50bc: $ef
	cp a                                             ; $50bd: $bf
	rst AddAOntoHL                                          ; $50be: $ef
	xor d                                            ; $50bf: $aa
	rst $38                                          ; $50c0: $ff
	xor a                                            ; $50c1: $af
	ld a, [$f8d2]                                    ; $50c2: $fa $d2 $f8
	ld d, c                                          ; $50c5: $51
	ld a, e                                          ; $50c6: $7b
	ccf                                              ; $50c7: $3f
	jr c, jr_06f_5105                                ; $50c8: $38 $3b

	inc l                                            ; $50ca: $2c
	daa                                              ; $50cb: $27
	inc l                                            ; $50cc: $2c
	inc h                                            ; $50cd: $24
	ld l, $3a                                        ; $50ce: $2e $3a
	ld l, $1f                                        ; $50d0: $2e $1f
	ld d, $0d                                        ; $50d2: $16 $0d
	dec bc                                           ; $50d4: $0b
	rlca                                             ; $50d5: $07
	sbc [hl]                                         ; $50d6: $9e
	rlca                                             ; $50d7: $07
	call c, $9d01                                    ; $50d8: $dc $01 $9d
	inc bc                                           ; $50db: $03
	ld b, $7b                                        ; $50dc: $06 $7b
	cp $97                                           ; $50de: $fe $97
	ld c, c                                          ; $50e0: $49
	rlca                                             ; $50e1: $07
	ld c, c                                          ; $50e2: $49
	rlca                                             ; $50e3: $07
	ld b, c                                          ; $50e4: $41
	ld c, $43                                        ; $50e5: $0e $43
	inc c                                            ; $50e7: $0c
	ld [hl], a                                       ; $50e8: $77
	cp $9a                                           ; $50e9: $fe $9a
	ld b, a                                          ; $50eb: $47
	ld [$08c7], sp                                   ; $50ec: $08 $c7 $08
	add $7b                                          ; $50ef: $c6 $7b
	cp $82                                           ; $50f1: $fe $82
	adc h                                            ; $50f3: $8c
	ld b, b                                          ; $50f4: $40
	db $ec                                           ; $50f5: $ec
	add $e5                                          ; $50f6: $c6 $e5

Jump_06f_50f8:
	ld b, d                                          ; $50f8: $42
	pop af                                           ; $50f9: $f1
	ld hl, sp+$3e                                    ; $50fa: $f8 $3e
	ret nz                                           ; $50fc: $c0

	db $e3                                           ; $50fd: $e3
	inc e                                            ; $50fe: $1c
	cp l                                             ; $50ff: $bd
	ld a, [hl]                                       ; $5100: $7e
	rst FarCall                                          ; $5101: $f7
	ld a, [hl]                                       ; $5102: $7e
	ldh [c], a                                       ; $5103: $e2
	db $e3                                           ; $5104: $e3

jr_06f_5105:
	and [hl]                                         ; $5105: $a6
	rst SubAFromBC                                          ; $5106: $e7
	cp $bf                                           ; $5107: $fe $bf
	dec hl                                           ; $5109: $2b
	cp [hl]                                          ; $510a: $be
	ld [hl], $22                                     ; $510b: $36 $22
	inc e                                            ; $510d: $1c
	inc e                                            ; $510e: $1c
	ld a, $be                                        ; $510f: $3e $be
	nop                                              ; $5111: $00
	add b                                            ; $5112: $80
	add b                                            ; $5113: $80
	sub b                                            ; $5114: $90
	add b                                            ; $5115: $80
	ret nz                                           ; $5116: $c0

	add b                                            ; $5117: $80
	ld h, b                                          ; $5118: $60
	ret nz                                           ; $5119: $c0

	or b                                             ; $511a: $b0
	ldh [$b8], a                                     ; $511b: $e0 $b8
	ld hl, sp+$66                                    ; $511d: $f8 $66
	cp $41                                           ; $511f: $fe $41
	rst $38                                          ; $5121: $ff
	ld b, b                                          ; $5122: $40
	rst $38                                          ; $5123: $ff
	cp c                                             ; $5124: $b9
	di                                               ; $5125: $f3
	jp $0487                                         ; $5126: $c3 $87 $04


	inc c                                            ; $5129: $0c
	inc e                                            ; $512a: $1c
	jr jr_06f_5165                                   ; $512b: $18 $38

	ld a, a                                          ; $512d: $7f
	di                                               ; $512e: $f3
	sbc [hl]                                         ; $512f: $9e
	ld b, b                                          ; $5130: $40
	or [hl]                                          ; $5131: $b6
	jr nz, @+$03                                     ; $5132: $20 $01

	ld bc, $8081                                     ; $5134: $01 $81 $80
	add b                                            ; $5137: $80
	add b                                            ; $5138: $80
	add b                                            ; $5139: $80
	inc c                                            ; $513a: $0c
	ld c, $07                                        ; $513b: $0e $07
	add b                                            ; $513d: $80
	ld [$1c1b], sp                                   ; $513e: $08 $1b $1c
	ld e, $08                                        ; $5141: $1e $08
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	ld a, a                                          ; $5145: $7f
	ld a, $c3                                        ; $5146: $3e $c3
	cp $3d                                           ; $5148: $fe $3d
	jp nz, $3cc3                                     ; $514a: $c2 $c3 $3c

	cp l                                             ; $514d: $bd
	ld a, [hl]                                       ; $514e: $7e
	ld l, a                                          ; $514f: $6f
	rst $38                                          ; $5150: $ff
	ld b, [hl]                                       ; $5151: $46
	rst JumpTable                                          ; $5152: $c7
	adc $4e                                          ; $5153: $ce $4e
	ld a, [hl]                                       ; $5155: $7e
	ld a, [hl]                                       ; $5156: $7e
	ld e, e                                          ; $5157: $5b
	ld a, [hl]                                       ; $5158: $7e
	ld l, a                                          ; $5159: $6f
	ld [hl-], a                                      ; $515a: $32
	scf                                              ; $515b: $37
	inc [hl]                                         ; $515c: $34
	sbc [hl]                                         ; $515d: $9e
	ld a, a                                          ; $515e: $7f
	cp h                                             ; $515f: $bc
	rlca                                             ; $5160: $07
	inc bc                                           ; $5161: $03
	inc bc                                           ; $5162: $03
	rlca                                             ; $5163: $07
	rrca                                             ; $5164: $0f

jr_06f_5165:
	adc b                                            ; $5165: $88
	ld bc, $031f                                     ; $5166: $01 $1f $03
	rra                                              ; $5169: $1f
	rlca                                             ; $516a: $07
	ccf                                              ; $516b: $3f
	rrca                                             ; $516c: $0f
	ld a, h                                          ; $516d: $7c
	ccf                                              ; $516e: $3f
	db $fc                                           ; $516f: $fc
	ld a, a                                          ; $5170: $7f
	ld hl, sp-$01                                    ; $5171: $f8 $ff
	ld hl, sp+$3f                                    ; $5173: $f8 $3f
	ldh a, [$1f]                                     ; $5175: $f0 $1f
	ldh [$3d], a                                     ; $5177: $e0 $3d
	ret nz                                           ; $5179: $c0

	ld a, b                                          ; $517a: $78
	add b                                            ; $517b: $80
	ldh [$be], a                                     ; $517c: $e0 $be
	add b                                            ; $517e: $80
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	sbc e                                            ; $5181: $9b
	rst $38                                          ; $5182: $ff
	cp c                                             ; $5183: $b9
	rst $38                                          ; $5184: $ff
	or e                                             ; $5185: $b3
	ld a, e                                          ; $5186: $7b
	dec e                                            ; $5187: $1d
	add b                                            ; $5188: $80
	ld l, c                                          ; $5189: $69
	rst $38                                          ; $518a: $ff
	ld [hl], e                                       ; $518b: $73
	cp $df                                           ; $518c: $fe $df
	cp $9f                                           ; $518e: $fe $9f
	db $fc                                           ; $5190: $fc
	rla                                              ; $5191: $17
	cp $13                                           ; $5192: $fe $13

jr_06f_5194:
	cp $3b                                           ; $5194: $fe $3b
	cp $2b                                           ; $5196: $fe $2b
	db $fd                                           ; $5198: $fd
	scf                                              ; $5199: $37
	db $fd                                           ; $519a: $fd
	cpl                                              ; $519b: $2f
	db $fc                                           ; $519c: $fc
	ld a, a                                          ; $519d: $7f
	cp $7b                                           ; $519e: $fe $7b
	and $ff                                          ; $51a0: $e6 $ff
	jp nz, $f2ff                                     ; $51a2: $c2 $ff $f2

	rst $38                                          ; $51a5: $ff
	sbc h                                            ; $51a6: $9c
	rst $38                                          ; $51a7: $ff
	add l                                            ; $51a8: $85
	ld c, $ff                                        ; $51a9: $0e $ff
	dec b                                            ; $51ab: $05
	rst $38                                          ; $51ac: $ff
	add d                                            ; $51ad: $82
	rst $38                                          ; $51ae: $ff
	ld b, c                                          ; $51af: $41
	rst $38                                          ; $51b0: $ff
	nop                                              ; $51b1: $00
	rst $38                                          ; $51b2: $ff
	jr nz, jr_06f_5194                               ; $51b3: $20 $df

	ld h, b                                          ; $51b5: $60
	sbc a                                            ; $51b6: $9f
	ld [hl-], a                                      ; $51b7: $32
	call Call_06f_4cb3                               ; $51b8: $cd $b3 $4c
	xor e                                            ; $51bb: $ab
	ld b, h                                          ; $51bc: $44
	dec hl                                           ; $51bd: $2b
	ld b, h                                          ; $51be: $44
	ld h, l                                          ; $51bf: $65
	ld [bc], a                                       ; $51c0: $02
	ld b, c                                          ; $51c1: $41
	ld [bc], a                                       ; $51c2: $02
	ld c, [hl]                                       ; $51c3: $4e
	ldh [$9b], a                                     ; $51c4: $e0 $9b
	ld d, e                                          ; $51c6: $53
	ld a, b                                          ; $51c7: $78
	ccf                                              ; $51c8: $3f
	add hl, sp                                       ; $51c9: $39
	ld c, [hl]                                       ; $51ca: $4e
	ldh [$67], a                                     ; $51cb: $e0 $67
	nop                                              ; $51cd: $00
	ld a, a                                          ; $51ce: $7f
	push bc                                          ; $51cf: $c5
	halt                                             ; $51d0: $76
	cp $9c                                           ; $51d1: $fe $9c
	cp $7f                                           ; $51d3: $fe $7f
	rst SubAFromBC                                          ; $51d5: $e7
	ld c, e                                          ; $51d6: $4b
	nop                                              ; $51d7: $00
	ld l, a                                          ; $51d8: $6f
	ld b, b                                          ; $51d9: $40
	ld a, a                                          ; $51da: $7f
	ldh [c], a                                       ; $51db: $e2
	ld [hl], a                                       ; $51dc: $77
	ld a, $9b                                        ; $51dd: $3e $9b
	ld a, a                                          ; $51df: $7f
	rst $38                                          ; $51e0: $ff
	adc $4f                                          ; $51e1: $ce $4f
	ld b, a                                          ; $51e3: $47
	ld b, b                                          ; $51e4: $40
	ld e, e                                          ; $51e5: $5b
	ld h, b                                          ; $51e6: $60
	sbc d                                            ; $51e7: $9a
	ld e, a                                          ; $51e8: $5f
	cp $1f                                           ; $51e9: $fe $1f
	db $fc                                           ; $51eb: $fc
	sub a                                            ; $51ec: $97
	ld b, a                                          ; $51ed: $47
	ld h, b                                          ; $51ee: $60
	ld c, a                                          ; $51ef: $4f
	add b                                            ; $51f0: $80
	sub a                                            ; $51f1: $97
	ld d, b                                          ; $51f2: $50
	ld a, b                                          ; $51f3: $78
	inc a                                            ; $51f4: $3c
	jr c, @+$3a                                      ; $51f5: $38 $38

	inc l                                            ; $51f7: $2c
	ld h, $2d                                        ; $51f8: $26 $2d
	scf                                              ; $51fa: $37
	add b                                            ; $51fb: $80
	ld a, a                                          ; $51fc: $7f
	cp $7f                                           ; $51fd: $fe $7f
	xor h                                            ; $51ff: $ac
	sbc [hl]                                         ; $5200: $9e
	ccf                                              ; $5201: $3f
	cp a                                             ; $5202: $bf
	ccf                                              ; $5203: $3f
	db $dd                                           ; $5204: $dd
	sbc c                                            ; $5205: $99
	ld a, $ef                                        ; $5206: $3e $ef
	rst $38                                          ; $5208: $ff
	halt                                             ; $5209: $76
	ld [hl-], a                                      ; $520a: $32
	inc a                                            ; $520b: $3c
	ld c, e                                          ; $520c: $4b
	add b                                            ; $520d: $80
	ld l, a                                          ; $520e: $6f
	cp $7f                                           ; $520f: $fe $7f
	ld e, h                                          ; $5211: $5c
	sbc c                                            ; $5212: $99
	dec a                                            ; $5213: $3d
	ld a, [hl]                                       ; $5214: $7e
	rst $38                                          ; $5215: $ff
	rst $38                                          ; $5216: $ff
	ld l, a                                          ; $5217: $6f
	ld a, [hl-]                                      ; $5218: $3a
	inc hl                                           ; $5219: $23
	add b                                            ; $521a: $80
	halt                                             ; $521b: $76
	ldh [$9e], a                                     ; $521c: $e0 $9e
	cp e                                             ; $521e: $bb
	inc bc                                           ; $521f: $03
	add b                                            ; $5220: $80
	inc sp                                           ; $5221: $33
	nop                                              ; $5222: $00
	ld [hl], a                                       ; $5223: $77
	add b                                            ; $5224: $80
	sbc [hl]                                         ; $5225: $9e
	rra                                              ; $5226: $1f
	cp l                                             ; $5227: $bd
	rrca                                             ; $5228: $0f
	rrca                                             ; $5229: $0f
	ccf                                              ; $522a: $3f
	ld [hl], e                                       ; $522b: $73
	sbc h                                            ; $522c: $9c
	pop hl                                           ; $522d: $e1
	ld e, $3e                                        ; $522e: $1e $3e
	scf                                              ; $5230: $37
	add b                                            ; $5231: $80
	ld l, a                                          ; $5232: $6f
	jp c, Jump_06f_779b                              ; $5233: $da $9b $77

	ld h, e                                          ; $5236: $63
	dec e                                            ; $5237: $1d
	ld a, $1b                                        ; $5238: $3e $1b
	add b                                            ; $523a: $80
	ld d, e                                          ; $523b: $53
	nop                                              ; $523c: $00
	sub [hl]                                         ; $523d: $96
	ld a, a                                          ; $523e: $7f
	ld bc, $3f7f                                     ; $523f: $01 $7f $3f
	ld a, $1e                                        ; $5242: $3e $1e
	inc e                                            ; $5244: $1c
	inc c                                            ; $5245: $0c
	nop                                              ; $5246: $00
	cp a                                             ; $5247: $bf
	inc c                                            ; $5248: $0c
	ret nz                                           ; $5249: $c0

	sub e                                            ; $524a: $93
	add b                                            ; $524b: $80
	ei                                               ; $524c: $fb
	pop hl                                           ; $524d: $e1
	ld a, a                                          ; $524e: $7f
	rst $38                                          ; $524f: $ff
	ccf                                              ; $5250: $3f
	ld hl, sp+$1f                                    ; $5251: $f8 $1f
	ldh a, [rIF]                                     ; $5253: $f0 $0f
	ld hl, sp+$07                                    ; $5255: $f8 $07
	ld [hl], a                                       ; $5257: $77
	or l                                             ; $5258: $b5
	sbc h                                            ; $5259: $9c
	or $00                                           ; $525a: $f6 $00
	rst SubAFromBC                                          ; $525c: $e7
	ld a, e                                          ; $525d: $7b
	ldh [$df], a                                     ; $525e: $e0 $df
	ld a, $7d                                        ; $5260: $3e $7d
	or [hl]                                          ; $5262: $b6
	cp [hl]                                          ; $5263: $be
	inc c                                            ; $5264: $0c
	nop                                              ; $5265: $00
	ret nz                                           ; $5266: $c0

	scf                                              ; $5267: $37
	ldh [$9b], a                                     ; $5268: $e0 $9b
	inc sp                                           ; $526a: $33
	ccf                                              ; $526b: $3f
	ld e, $0c                                        ; $526c: $1e $0c
	cp l                                             ; $526e: $bd
	inc c                                            ; $526f: $0c
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	ret nz                                           ; $5272: $c0

	inc sp                                           ; $5273: $33
	ldh [$7f], a                                     ; $5274: $e0 $7f
	and d                                            ; $5276: $a2
	ld l, a                                          ; $5277: $6f
	jp nz, $e02f                                     ; $5278: $c2 $2f $e0

	rst SubAFromHL                                          ; $527b: $d7
	ld bc, $9580                                     ; $527c: $01 $80 $95
	rst $38                                          ; $527f: $ff
	and l                                            ; $5280: $a5
	rst $38                                          ; $5281: $ff
	ld [hl], l                                       ; $5282: $75
	rst AddAOntoHL                                          ; $5283: $ef
	cp [hl]                                          ; $5284: $be
	rst AddAOntoHL                                          ; $5285: $ef
	xor e                                            ; $5286: $ab
	rst $38                                          ; $5287: $ff
	xor [hl]                                         ; $5288: $ae
	ei                                               ; $5289: $fb
	jp nc, Jump_06f_50f8                             ; $528a: $d2 $f8 $50

	ld a, b                                          ; $528d: $78
	dec a                                            ; $528e: $3d
	dec sp                                           ; $528f: $3b
	dec sp                                           ; $5290: $3b
	inc l                                            ; $5291: $2c
	daa                                              ; $5292: $27
	inc l                                            ; $5293: $2c
	inc h                                            ; $5294: $24
	ld l, $3a                                        ; $5295: $2e $3a
	ld l, $1f                                        ; $5297: $2e $1f
	ld d, $0d                                        ; $5299: $16 $0d
	dec bc                                           ; $529b: $0b
	rlca                                             ; $529c: $07
	sbc [hl]                                         ; $529d: $9e
	rlca                                             ; $529e: $07
	call c, $9d01                                    ; $529f: $dc $01 $9d
	inc bc                                           ; $52a2: $03
	ld b, $7b                                        ; $52a3: $06 $7b
	cp $97                                           ; $52a5: $fe $97
	ld c, c                                          ; $52a7: $49
	rlca                                             ; $52a8: $07
	ld c, c                                          ; $52a9: $49
	rlca                                             ; $52aa: $07
	ld b, c                                          ; $52ab: $41
	ld c, $43                                        ; $52ac: $0e $43
	inc c                                            ; $52ae: $0c
	ld [hl], a                                       ; $52af: $77
	cp $9a                                           ; $52b0: $fe $9a
	ld b, a                                          ; $52b2: $47
	ld [$08c7], sp                                   ; $52b3: $08 $c7 $08
	add $7b                                          ; $52b6: $c6 $7b
	cp $82                                           ; $52b8: $fe $82
	adc h                                            ; $52ba: $8c
	ld b, b                                          ; $52bb: $40
	db $ec                                           ; $52bc: $ec
	add $e5                                          ; $52bd: $c6 $e5
	ld b, d                                          ; $52bf: $42
	xor c                                            ; $52c0: $a9
	ld [hl], b                                       ; $52c1: $70
	xor $f0                                          ; $52c2: $ee $f0
	ld a, a                                          ; $52c4: $7f
	add b                                            ; $52c5: $80
	rst SubAFromDE                                          ; $52c6: $df
	inc a                                            ; $52c7: $3c
	or e                                             ; $52c8: $b3
	ld a, [hl]                                       ; $52c9: $7e
	ld h, d                                          ; $52ca: $62
	db $e3                                           ; $52cb: $e3
	and $e7                                          ; $52cc: $e6 $e7
	cp $bf                                           ; $52ce: $fe $bf
	dec hl                                           ; $52d0: $2b
	cp [hl]                                          ; $52d1: $be
	ld [hl], $22                                     ; $52d2: $36 $22
	inc e                                            ; $52d4: $1c
	inc e                                            ; $52d5: $1c
	ld a, $be                                        ; $52d6: $3e $be
	nop                                              ; $52d8: $00
	add b                                            ; $52d9: $80
	add b                                            ; $52da: $80
	sub b                                            ; $52db: $90
	add b                                            ; $52dc: $80
	ret nz                                           ; $52dd: $c0

	add b                                            ; $52de: $80
	ld h, b                                          ; $52df: $60
	ret nz                                           ; $52e0: $c0

	or b                                             ; $52e1: $b0
	ldh [$b8], a                                     ; $52e2: $e0 $b8
	ld hl, sp+$66                                    ; $52e4: $f8 $66
	cp $41                                           ; $52e6: $fe $41
	rst $38                                          ; $52e8: $ff
	ld b, b                                          ; $52e9: $40
	rst $38                                          ; $52ea: $ff
	cp c                                             ; $52eb: $b9
	di                                               ; $52ec: $f3
	jp $0487                                         ; $52ed: $c3 $87 $04


	inc c                                            ; $52f0: $0c
	inc e                                            ; $52f1: $1c
	jr jr_06f_532c                                   ; $52f2: $18 $38

	ld a, a                                          ; $52f4: $7f
	di                                               ; $52f5: $f3
	sbc [hl]                                         ; $52f6: $9e
	ld b, b                                          ; $52f7: $40
	or [hl]                                          ; $52f8: $b6
	jr nz, @+$03                                     ; $52f9: $20 $01

	ld bc, $8081                                     ; $52fb: $01 $81 $80
	add b                                            ; $52fe: $80
	add b                                            ; $52ff: $80
	add b                                            ; $5300: $80
	inc c                                            ; $5301: $0c
	ld c, $07                                        ; $5302: $0e $07
	add b                                            ; $5304: $80
	ld [$1c1b], sp                                   ; $5305: $08 $1b $1c
	ld e, $08                                        ; $5308: $1e $08
	nop                                              ; $530a: $00
	nop                                              ; $530b: $00
	ld b, a                                          ; $530c: $47
	ld a, $ff                                        ; $530d: $3e $ff
	ld a, [hl]                                       ; $530f: $7e
	dec d                                            ; $5310: $15
	xor $f7                                          ; $5311: $ee $f7
	ld [$7cbb], sp                                   ; $5313: $08 $bb $7c
	ld b, [hl]                                       ; $5316: $46
	rst AddAOntoHL                                          ; $5317: $ef
	ld b, a                                          ; $5318: $47
	rst JumpTable                                          ; $5319: $c7
	adc $4e                                          ; $531a: $ce $4e
	ld a, [hl]                                       ; $531c: $7e
	ld a, [hl]                                       ; $531d: $7e
	ld e, e                                          ; $531e: $5b
	ld a, [hl]                                       ; $531f: $7e
	ld l, a                                          ; $5320: $6f
	ld [hl-], a                                      ; $5321: $32
	scf                                              ; $5322: $37
	inc [hl]                                         ; $5323: $34
	sbc [hl]                                         ; $5324: $9e
	ld a, a                                          ; $5325: $7f
	cp h                                             ; $5326: $bc
	rlca                                             ; $5327: $07
	inc bc                                           ; $5328: $03
	inc bc                                           ; $5329: $03
	rlca                                             ; $532a: $07
	rrca                                             ; $532b: $0f

jr_06f_532c:
	adc b                                            ; $532c: $88
	ld bc, $031f                                     ; $532d: $01 $1f $03
	rra                                              ; $5330: $1f
	rlca                                             ; $5331: $07
	ccf                                              ; $5332: $3f
	rrca                                             ; $5333: $0f
	ld a, h                                          ; $5334: $7c
	ccf                                              ; $5335: $3f
	db $fc                                           ; $5336: $fc
	ld a, a                                          ; $5337: $7f
	ld hl, sp-$01                                    ; $5338: $f8 $ff
	ld hl, sp+$3f                                    ; $533a: $f8 $3f
	ldh a, [$1f]                                     ; $533c: $f0 $1f
	ldh [$3d], a                                     ; $533e: $e0 $3d
	ret nz                                           ; $5340: $c0

	ld a, b                                          ; $5341: $78
	add b                                            ; $5342: $80
	ldh [$be], a                                     ; $5343: $e0 $be
	add b                                            ; $5345: $80
	nop                                              ; $5346: $00
	nop                                              ; $5347: $00
	sbc e                                            ; $5348: $9b
	rst $38                                          ; $5349: $ff
	cp c                                             ; $534a: $b9
	rst $38                                          ; $534b: $ff
	or e                                             ; $534c: $b3
	ld a, e                                          ; $534d: $7b
	dec e                                            ; $534e: $1d
	add b                                            ; $534f: $80
	ld l, c                                          ; $5350: $69
	rst $38                                          ; $5351: $ff
	ld [hl], e                                       ; $5352: $73
	cp $5f                                           ; $5353: $fe $5f
	cp $9f                                           ; $5355: $fe $9f
	db $fc                                           ; $5357: $fc
	rla                                              ; $5358: $17
	cp $13                                           ; $5359: $fe $13

jr_06f_535b:
	cp $3b                                           ; $535b: $fe $3b
	cp $2b                                           ; $535d: $fe $2b
	db $fd                                           ; $535f: $fd
	scf                                              ; $5360: $37
	db $fd                                           ; $5361: $fd
	cpl                                              ; $5362: $2f
	db $fc                                           ; $5363: $fc
	ld a, a                                          ; $5364: $7f
	cp $7b                                           ; $5365: $fe $7b
	and $ff                                          ; $5367: $e6 $ff
	jp nz, $f2ff                                     ; $5369: $c2 $ff $f2

	rst $38                                          ; $536c: $ff
	sbc h                                            ; $536d: $9c
	rst $38                                          ; $536e: $ff
	add l                                            ; $536f: $85
	ld c, $ff                                        ; $5370: $0e $ff
	dec b                                            ; $5372: $05
	rst $38                                          ; $5373: $ff
	add d                                            ; $5374: $82
	rst $38                                          ; $5375: $ff
	ld b, c                                          ; $5376: $41
	rst $38                                          ; $5377: $ff
	nop                                              ; $5378: $00
	rst $38                                          ; $5379: $ff
	jr nz, jr_06f_535b                               ; $537a: $20 $df

	ld h, b                                          ; $537c: $60
	sbc a                                            ; $537d: $9f
	ld [hl-], a                                      ; $537e: $32
	call Call_06f_4cb3                               ; $537f: $cd $b3 $4c
	xor e                                            ; $5382: $ab
	ld b, h                                          ; $5383: $44
	dec hl                                           ; $5384: $2b
	ld b, h                                          ; $5385: $44
	ld h, l                                          ; $5386: $65
	ld [bc], a                                       ; $5387: $02
	ld b, c                                          ; $5388: $41
	ld [bc], a                                       ; $5389: $02
	ld b, [hl]                                       ; $538a: $46
	ldh [$9b], a                                     ; $538b: $e0 $9b
	ccf                                              ; $538d: $3f
	jr c, jr_06f_53c9                                ; $538e: $38 $39

	cpl                                              ; $5390: $2f
	ld d, [hl]                                       ; $5391: $56
	ldh [rPCM34], a                                  ; $5392: $e0 $77
	nop                                              ; $5394: $00
	sbc [hl]                                         ; $5395: $9e
	cp c                                             ; $5396: $b9
	ld [hl], e                                       ; $5397: $73
	nop                                              ; $5398: $00
	ld a, a                                          ; $5399: $7f
	jp $dd9a                                         ; $539a: $c3 $9a $dd


	ld a, $be                                        ; $539d: $3e $be
	ld a, a                                          ; $539f: $7f
	ld h, a                                          ; $53a0: $67
	ld c, e                                          ; $53a1: $4b
	nop                                              ; $53a2: $00
	sbc c                                            ; $53a3: $99
	ld a, a                                          ; $53a4: $7f
	ld [bc], a                                       ; $53a5: $02
	ei                                               ; $53a6: $fb
	ld a, [hl]                                       ; $53a7: $7e
	dec [hl]                                         ; $53a8: $35
	adc $7b                                          ; $53a9: $ce $7b
	and a                                            ; $53ab: $a7
	sbc b                                            ; $53ac: $98
	nop                                              ; $53ad: $00
	cp e                                             ; $53ae: $bb
	ld a, h                                          ; $53af: $7c
	ld a, a                                          ; $53b0: $7f
	cp $cf                                           ; $53b1: $fe $cf
	rst GetHLinHL                                          ; $53b3: $cf
	ld b, a                                          ; $53b4: $47
	ld b, b                                          ; $53b5: $40
	ld d, e                                          ; $53b6: $53
	ld h, b                                          ; $53b7: $60
	sbc h                                            ; $53b8: $9c
	rra                                              ; $53b9: $1f
	db $fc                                           ; $53ba: $fc
	sub a                                            ; $53bb: $97
	ld b, a                                          ; $53bc: $47
	ld h, b                                          ; $53bd: $60
	ld b, a                                          ; $53be: $47
	add b                                            ; $53bf: $80
	sbc c                                            ; $53c0: $99
	inc a                                            ; $53c1: $3c
	jr c, jr_06f_53fc                                ; $53c2: $38 $38

	inc l                                            ; $53c4: $2c
	ld h, $2d                                        ; $53c5: $26 $2d
	cpl                                              ; $53c7: $2f
	add b                                            ; $53c8: $80

jr_06f_53c9:
	ld a, a                                          ; $53c9: $7f
	cp $9c                                           ; $53ca: $fe $9c
	ccf                                              ; $53cc: $3f
	nop                                              ; $53cd: $00
	ld e, l                                          ; $53ce: $5d
	ld a, e                                          ; $53cf: $7b
	ld a, h                                          ; $53d0: $7c
	sbc d                                            ; $53d1: $9a
	rst AddAOntoHL                                          ; $53d2: $ef
	rst $38                                          ; $53d3: $ff
	halt                                             ; $53d4: $76
	ld [hl-], a                                      ; $53d5: $32
	inc a                                            ; $53d6: $3c
	ld b, e                                          ; $53d7: $43
	add b                                            ; $53d8: $80
	ld [hl], a                                       ; $53d9: $77
	cp $7f                                           ; $53da: $fe $7f
	ld e, [hl]                                       ; $53dc: $5e
	sbc c                                            ; $53dd: $99
	ccf                                              ; $53de: $3f
	ld a, a                                          ; $53df: $7f
	rst $38                                          ; $53e0: $ff
	cp $6f                                           ; $53e1: $fe $6f
	ld a, [hl-]                                      ; $53e3: $3a
	inc hl                                           ; $53e4: $23
	add b                                            ; $53e5: $80
	ld a, [hl]                                       ; $53e6: $7e
	ldh [$9e], a                                     ; $53e7: $e0 $9e
	sub e                                            ; $53e9: $93
	cpl                                              ; $53ea: $2f
	add b                                            ; $53eb: $80
	sbc h                                            ; $53ec: $9c
	xor d                                            ; $53ed: $aa
	rst $38                                          ; $53ee: $ff
	xor a                                            ; $53ef: $af
	ld e, a                                          ; $53f0: $5f
	add b                                            ; $53f1: $80
	ld c, e                                          ; $53f2: $4b
	nop                                              ; $53f3: $00
	sbc b                                            ; $53f4: $98
	ld sp, hl                                        ; $53f5: $f9
	nop                                              ; $53f6: $00
	cp [hl]                                          ; $53f7: $be
	ld [hl], b                                       ; $53f8: $70
	rst GetHLinHL                                          ; $53f9: $cf
	ldh a, [rIE]                                     ; $53fa: $f0 $ff

jr_06f_53fc:
	cp e                                             ; $53fc: $bb
	ld a, a                                          ; $53fd: $7f
	rra                                              ; $53fe: $1f
	rrca                                             ; $53ff: $0f
	rrca                                             ; $5400: $0f
	ccf                                              ; $5401: $3f
	ld [hl], e                                       ; $5402: $73
	sbc h                                            ; $5403: $9c
	pop hl                                           ; $5404: $e1
	ld e, $3e                                        ; $5405: $1e $3e
	ld h, a                                          ; $5407: $67
	add b                                            ; $5408: $80
	sbc c                                            ; $5409: $99
	rst $38                                          ; $540a: $ff
	ld [bc], a                                       ; $540b: $02
	ld a, a                                          ; $540c: $7f
	db $fc                                           ; $540d: $fc
	dec sp                                           ; $540e: $3b
	add $67                                          ; $540f: $c6 $67
	ld a, [hl]                                       ; $5411: $7e
	ld [hl], a                                       ; $5412: $77
	jp c, Jump_06f_779b                              ; $5413: $da $9b $77

	ld h, e                                          ; $5416: $63
	dec e                                            ; $5417: $1d
	ld a, $23                                        ; $5418: $3e $23
	add b                                            ; $541a: $80
	ld c, e                                          ; $541b: $4b
	nop                                              ; $541c: $00
	sbc d                                            ; $541d: $9a
	scf                                              ; $541e: $37
	ld [de], a                                       ; $541f: $12
	ld e, $0c                                        ; $5420: $1e $0c
	nop                                              ; $5422: $00
	cp l                                             ; $5423: $bd
	inc c                                            ; $5424: $0c
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	ret nz                                           ; $5427: $c0

	sub e                                            ; $5428: $93
	add b                                            ; $5429: $80
	ei                                               ; $542a: $fb
	pop hl                                           ; $542b: $e1
	ld a, a                                          ; $542c: $7f
	rst $38                                          ; $542d: $ff
	ccf                                              ; $542e: $3f
	ld hl, sp+$1f                                    ; $542f: $f8 $1f
	ldh a, [rIF]                                     ; $5431: $f0 $0f
	ld hl, sp+$07                                    ; $5433: $f8 $07
	ld [hl], a                                       ; $5435: $77
	or l                                             ; $5436: $b5
	sbc d                                            ; $5437: $9a
	or $00                                           ; $5438: $f6 $00
	rst SubAFromBC                                          ; $543a: $e7
	ccf                                              ; $543b: $3f
	ld [hl-], a                                      ; $543c: $32
	dec bc                                           ; $543d: $0b
	ldh [$9c], a                                     ; $543e: $e0 $9c
	ld [bc], a                                       ; $5440: $02
	ccf                                              ; $5441: $3f
	ld e, $67                                        ; $5442: $1e $67
	sbc $33                                          ; $5444: $de $33
	ldh [$99], a                                     ; $5446: $e0 $99
	rlca                                             ; $5448: $07
	rra                                              ; $5449: $1f
	rra                                              ; $544a: $1f
	ld e, $0e                                        ; $544b: $1e $0e
	inc c                                            ; $544d: $0c
	ld [hl], e                                       ; $544e: $73
	sbc $37                                          ; $544f: $de $37
	ldh [$d0], a                                     ; $5451: $e0 $d0
	ld bc, $9580                                     ; $5453: $01 $80 $95
	rst $38                                          ; $5456: $ff
	and l                                            ; $5457: $a5
	rst $38                                          ; $5458: $ff
	ld [hl], l                                       ; $5459: $75
	rst AddAOntoHL                                          ; $545a: $ef
	cp [hl]                                          ; $545b: $be
	rst AddAOntoHL                                          ; $545c: $ef
	xor e                                            ; $545d: $ab
	rst $38                                          ; $545e: $ff

jr_06f_545f:
	xor [hl]                                         ; $545f: $ae
	ei                                               ; $5460: $fb
	jp nc, Jump_06f_50f8                             ; $5461: $d2 $f8 $50

	ld a, b                                          ; $5464: $78
	dec a                                            ; $5465: $3d
	dec sp                                           ; $5466: $3b
	dec sp                                           ; $5467: $3b
	inc l                                            ; $5468: $2c
	daa                                              ; $5469: $27
	inc l                                            ; $546a: $2c
	inc h                                            ; $546b: $24

Call_06f_546c:
	ld l, $3a                                        ; $546c: $2e $3a
	ld l, $1f                                        ; $546e: $2e $1f
	ld d, $0d                                        ; $5470: $16 $0d
	dec bc                                           ; $5472: $0b
	rlca                                             ; $5473: $07
	sbc [hl]                                         ; $5474: $9e
	rlca                                             ; $5475: $07
	call c, $9d01                                    ; $5476: $dc $01 $9d
	inc bc                                           ; $5479: $03
	ld b, $7b                                        ; $547a: $06 $7b
	cp $97                                           ; $547c: $fe $97
	ld c, c                                          ; $547e: $49
	rlca                                             ; $547f: $07
	ld c, c                                          ; $5480: $49
	rlca                                             ; $5481: $07
	ld b, c                                          ; $5482: $41
	ld c, $43                                        ; $5483: $0e $43
	inc c                                            ; $5485: $0c
	ld [hl], a                                       ; $5486: $77
	cp $9a                                           ; $5487: $fe $9a
	ld b, a                                          ; $5489: $47
	ld [$08c7], sp                                   ; $548a: $08 $c7 $08
	add $7b                                          ; $548d: $c6 $7b
	cp $82                                           ; $548f: $fe $82
	adc h                                            ; $5491: $8c
	ld b, b                                          ; $5492: $40
	db $ec                                           ; $5493: $ec
	add $e5                                          ; $5494: $c6 $e5
	ld b, d                                          ; $5496: $42
	cp c                                             ; $5497: $b9
	ld h, b                                          ; $5498: $60
	or $78                                           ; $5499: $f6 $78
	cp a                                             ; $549b: $bf
	ret nz                                           ; $549c: $c0

	rst SubAFromBC                                          ; $549d: $e7
	jr jr_06f_545f                                   ; $549e: $18 $bf

	ld a, [hl]                                       ; $54a0: $7e
	ld [hl], e                                       ; $54a1: $73
	di                                               ; $54a2: $f3
	ldh [c], a                                       ; $54a3: $e2
	db $e3                                           ; $54a4: $e3
	cp $bf                                           ; $54a5: $fe $bf
	dec hl                                           ; $54a7: $2b
	cp [hl]                                          ; $54a8: $be
	ld [hl], $22                                     ; $54a9: $36 $22
	inc e                                            ; $54ab: $1c
	inc e                                            ; $54ac: $1c
	ld a, $be                                        ; $54ad: $3e $be
	nop                                              ; $54af: $00
	add b                                            ; $54b0: $80
	add b                                            ; $54b1: $80
	sub b                                            ; $54b2: $90
	add b                                            ; $54b3: $80
	ret nz                                           ; $54b4: $c0

	add b                                            ; $54b5: $80
	ld h, b                                          ; $54b6: $60
	ret nz                                           ; $54b7: $c0

	or b                                             ; $54b8: $b0
	ldh [$b8], a                                     ; $54b9: $e0 $b8
	ld hl, sp+$66                                    ; $54bb: $f8 $66
	cp $41                                           ; $54bd: $fe $41
	rst $38                                          ; $54bf: $ff
	ld b, b                                          ; $54c0: $40
	rst $38                                          ; $54c1: $ff
	cp c                                             ; $54c2: $b9
	di                                               ; $54c3: $f3
	jp $0487                                         ; $54c4: $c3 $87 $04


	inc c                                            ; $54c7: $0c
	inc e                                            ; $54c8: $1c
	jr jr_06f_5503                                   ; $54c9: $18 $38

	ld a, a                                          ; $54cb: $7f
	di                                               ; $54cc: $f3
	sbc [hl]                                         ; $54cd: $9e
	ld b, b                                          ; $54ce: $40
	or [hl]                                          ; $54cf: $b6
	jr nz, @+$03                                     ; $54d0: $20 $01

	ld bc, $8081                                     ; $54d2: $01 $81 $80
	add b                                            ; $54d5: $80
	add b                                            ; $54d6: $80
	add b                                            ; $54d7: $80
	inc c                                            ; $54d8: $0c
	ld c, $07                                        ; $54d9: $0e $07
	add b                                            ; $54db: $80
	ld [$1c1b], sp                                   ; $54dc: $08 $1b $1c
	ld e, $08                                        ; $54df: $1e $08
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	ld a, a                                          ; $54e3: $7f
	ld [bc], a                                       ; $54e4: $02
	cp e                                             ; $54e5: $bb
	ld a, [hl]                                       ; $54e6: $7e
	push bc                                          ; $54e7: $c5
	cp $ff                                           ; $54e8: $fe $ff
	nop                                              ; $54ea: $00
	ei                                               ; $54eb: $fb
	inc a                                            ; $54ec: $3c
	cp $7f                                           ; $54ed: $fe $7f
	rst SubAFromBC                                          ; $54ef: $e7
	rst SubAFromBC                                          ; $54f0: $e7
	ld b, [hl]                                       ; $54f1: $46
	add $7e                                          ; $54f2: $c6 $7e
	ld a, [hl]                                       ; $54f4: $7e
	ld e, e                                          ; $54f5: $5b
	ld a, [hl]                                       ; $54f6: $7e
	ld l, a                                          ; $54f7: $6f
	ld [hl-], a                                      ; $54f8: $32
	scf                                              ; $54f9: $37
	inc [hl]                                         ; $54fa: $34
	sbc [hl]                                         ; $54fb: $9e
	ld a, a                                          ; $54fc: $7f
	cp h                                             ; $54fd: $bc
	rlca                                             ; $54fe: $07
	inc bc                                           ; $54ff: $03
	inc bc                                           ; $5500: $03
	rlca                                             ; $5501: $07
	rrca                                             ; $5502: $0f

jr_06f_5503:
	adc b                                            ; $5503: $88
	ld bc, $031f                                     ; $5504: $01 $1f $03
	rra                                              ; $5507: $1f
	rlca                                             ; $5508: $07
	ccf                                              ; $5509: $3f
	rrca                                             ; $550a: $0f
	ld a, h                                          ; $550b: $7c
	ccf                                              ; $550c: $3f
	db $fc                                           ; $550d: $fc
	ld a, a                                          ; $550e: $7f
	ld hl, sp-$01                                    ; $550f: $f8 $ff
	ld hl, sp+$3f                                    ; $5511: $f8 $3f
	ldh a, [$1f]                                     ; $5513: $f0 $1f
	ldh [$3d], a                                     ; $5515: $e0 $3d
	ret nz                                           ; $5517: $c0

	ld a, b                                          ; $5518: $78
	add b                                            ; $5519: $80
	ldh [$be], a                                     ; $551a: $e0 $be
	add b                                            ; $551c: $80
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00
	sbc e                                            ; $551f: $9b
	rst $38                                          ; $5520: $ff
	cp c                                             ; $5521: $b9
	rst $38                                          ; $5522: $ff
	or e                                             ; $5523: $b3
	ld a, e                                          ; $5524: $7b
	dec e                                            ; $5525: $1d
	add b                                            ; $5526: $80
	ld l, c                                          ; $5527: $69
	rst $38                                          ; $5528: $ff
	ld [hl], e                                       ; $5529: $73
	cp $5f                                           ; $552a: $fe $5f
	cp $9f                                           ; $552c: $fe $9f
	db $fc                                           ; $552e: $fc
	rla                                              ; $552f: $17
	cp $13                                           ; $5530: $fe $13

jr_06f_5532:
	cp $3b                                           ; $5532: $fe $3b
	cp $2b                                           ; $5534: $fe $2b
	db $fd                                           ; $5536: $fd
	scf                                              ; $5537: $37
	db $fd                                           ; $5538: $fd
	cpl                                              ; $5539: $2f
	db $fc                                           ; $553a: $fc
	ld a, a                                          ; $553b: $7f
	cp $7b                                           ; $553c: $fe $7b
	and $ff                                          ; $553e: $e6 $ff
	jp nz, $f2ff                                     ; $5540: $c2 $ff $f2

	rst $38                                          ; $5543: $ff
	sbc h                                            ; $5544: $9c
	rst $38                                          ; $5545: $ff
	add l                                            ; $5546: $85
	ld c, $ff                                        ; $5547: $0e $ff
	dec b                                            ; $5549: $05
	rst $38                                          ; $554a: $ff
	add d                                            ; $554b: $82
	rst $38                                          ; $554c: $ff
	ld b, c                                          ; $554d: $41
	rst $38                                          ; $554e: $ff
	nop                                              ; $554f: $00
	rst $38                                          ; $5550: $ff
	jr nz, jr_06f_5532                               ; $5551: $20 $df

	ld h, b                                          ; $5553: $60
	sbc a                                            ; $5554: $9f
	ld [hl-], a                                      ; $5555: $32
	call Call_06f_4cb3                               ; $5556: $cd $b3 $4c
	xor e                                            ; $5559: $ab
	ld b, h                                          ; $555a: $44
	dec hl                                           ; $555b: $2b
	ld b, h                                          ; $555c: $44
	ld h, l                                          ; $555d: $65
	ld [bc], a                                       ; $555e: $02
	ld b, c                                          ; $555f: $41
	ld [bc], a                                       ; $5560: $02
	ld b, [hl]                                       ; $5561: $46
	ldh [$9b], a                                     ; $5562: $e0 $9b
	ccf                                              ; $5564: $3f
	jr c, jr_06f_55a0                                ; $5565: $38 $39

	cpl                                              ; $5567: $2f
	ld d, [hl]                                       ; $5568: $56
	ldh [$5f], a                                     ; $5569: $e0 $5f
	nop                                              ; $556b: $00
	ld a, a                                          ; $556c: $7f
	jp $dd99                                         ; $556d: $c3 $99 $dd


	ld a, $be                                        ; $5570: $3e $be
	ld a, a                                          ; $5572: $7f
	ld h, a                                          ; $5573: $67
	rst SubAFromBC                                          ; $5574: $e7
	ld c, a                                          ; $5575: $4f
	nop                                              ; $5576: $00
	ld h, a                                          ; $5577: $67
	ld b, b                                          ; $5578: $40
	ld a, a                                          ; $5579: $7f
	cp $99                                           ; $557a: $fe $99
	cp e                                             ; $557c: $bb
	ld a, h                                          ; $557d: $7c
	ld a, a                                          ; $557e: $7f
	cp $cf                                           ; $557f: $fe $cf
	rst GetHLinHL                                          ; $5581: $cf
	ld b, a                                          ; $5582: $47
	ld b, b                                          ; $5583: $40
	ld d, e                                          ; $5584: $53
	ld h, b                                          ; $5585: $60
	sbc h                                            ; $5586: $9c
	rra                                              ; $5587: $1f
	db $fc                                           ; $5588: $fc
	sub a                                            ; $5589: $97
	ld b, a                                          ; $558a: $47
	ld h, b                                          ; $558b: $60
	ld b, a                                          ; $558c: $47
	add b                                            ; $558d: $80
	sbc c                                            ; $558e: $99
	inc a                                            ; $558f: $3c
	jr c, jr_06f_55ca                                ; $5590: $38 $38

	inc l                                            ; $5592: $2c
	ld h, $2d                                        ; $5593: $26 $2d
	cpl                                              ; $5595: $2f
	add b                                            ; $5596: $80
	ld a, a                                          ; $5597: $7f
	cp $9c                                           ; $5598: $fe $9c
	ccf                                              ; $559a: $3f
	nop                                              ; $559b: $00
	ld e, l                                          ; $559c: $5d
	ld a, e                                          ; $559d: $7b
	ld a, h                                          ; $559e: $7c
	sbc d                                            ; $559f: $9a

jr_06f_55a0:
	rst AddAOntoHL                                          ; $55a0: $ef
	rst $38                                          ; $55a1: $ff
	halt                                             ; $55a2: $76
	ld [hl-], a                                      ; $55a3: $32
	inc a                                            ; $55a4: $3c
	ld b, e                                          ; $55a5: $43
	add b                                            ; $55a6: $80
	ld [hl], a                                       ; $55a7: $77
	cp $7f                                           ; $55a8: $fe $7f
	ld e, [hl]                                       ; $55aa: $5e
	sbc c                                            ; $55ab: $99
	ccf                                              ; $55ac: $3f
	ld a, a                                          ; $55ad: $7f
	rst $38                                          ; $55ae: $ff
	cp $6f                                           ; $55af: $fe $6f
	ld a, [hl-]                                      ; $55b1: $3a
	inc hl                                           ; $55b2: $23
	add b                                            ; $55b3: $80
	ld a, [hl]                                       ; $55b4: $7e
	ldh [$9e], a                                     ; $55b5: $e0 $9e
	sub e                                            ; $55b7: $93
	cpl                                              ; $55b8: $2f
	add b                                            ; $55b9: $80
	sbc h                                            ; $55ba: $9c
	xor d                                            ; $55bb: $aa
	rst $38                                          ; $55bc: $ff
	xor a                                            ; $55bd: $af
	ld e, a                                          ; $55be: $5f
	add b                                            ; $55bf: $80
	ld b, e                                          ; $55c0: $43
	nop                                              ; $55c1: $00
	sbc b                                            ; $55c2: $98
	cp $00                                           ; $55c3: $fe $00
	rst FarCall                                          ; $55c5: $f7
	ld hl, sp+$7f                                    ; $55c6: $f8 $7f
	add b                                            ; $55c8: $80
	ld a, a                                          ; $55c9: $7f

jr_06f_55ca:
	cp h                                             ; $55ca: $bc
	rra                                              ; $55cb: $1f
	rrca                                             ; $55cc: $0f
	rrca                                             ; $55cd: $0f
	ccf                                              ; $55ce: $3f
	ld [hl], e                                       ; $55cf: $73
	sbc h                                            ; $55d0: $9c
	pop hl                                           ; $55d1: $e1
	ld e, $3e                                        ; $55d2: $1e $3e
	ld h, a                                          ; $55d4: $67
	add b                                            ; $55d5: $80
	sbc c                                            ; $55d6: $99
	rst JumpTable                                          ; $55d7: $c7
	ld a, [hl-]                                      ; $55d8: $3a
	dec a                                            ; $55d9: $3d
	cp $fb                                           ; $55da: $fe $fb
	add $67                                          ; $55dc: $c6 $67
	ld a, [hl]                                       ; $55de: $7e
	ld a, a                                          ; $55df: $7f
	cp $7f                                           ; $55e0: $fe $7f
	jp c, Jump_06f_779b                              ; $55e2: $da $9b $77

	ld h, e                                          ; $55e5: $63
	dec e                                            ; $55e6: $1d
	ld a, $23                                        ; $55e7: $3e $23
	add b                                            ; $55e9: $80
	ld c, e                                          ; $55ea: $4b
	nop                                              ; $55eb: $00
	sbc h                                            ; $55ec: $9c
	ld c, $06                                        ; $55ed: $0e $06
	inc e                                            ; $55ef: $1c
	ld a, c                                          ; $55f0: $79
	ld a, [$ee7d]                                    ; $55f1: $fa $7d $ee
	db $fd                                           ; $55f4: $fd
	ld a, l                                          ; $55f5: $7d
	or [hl]                                          ; $55f6: $b6
	sub h                                            ; $55f7: $94
	ei                                               ; $55f8: $fb
	pop hl                                           ; $55f9: $e1
	ld a, a                                          ; $55fa: $7f
	rst $38                                          ; $55fb: $ff
	ccf                                              ; $55fc: $3f
	ld hl, sp+$1f                                    ; $55fd: $f8 $1f
	ldh a, [rIF]                                     ; $55ff: $f0 $0f
	ld hl, sp+$07                                    ; $5601: $f8 $07
	ld [hl], a                                       ; $5603: $77
	or l                                             ; $5604: $b5
	sbc c                                            ; $5605: $99
	or $00                                           ; $5606: $f6 $00
	rst SubAFromBC                                          ; $5608: $e7
	ld c, $06                                        ; $5609: $0e $06
	ld e, $7b                                        ; $560b: $1e $7b
	db $e3                                           ; $560d: $e3
	rra                                              ; $560e: $1f
	ldh [$9d], a                                     ; $560f: $e0 $9d
	ld e, $06                                        ; $5611: $1e $06
	sbc $1e                                          ; $5613: $de $1e
	ld l, e                                          ; $5615: $6b
	sbc $2f                                          ; $5616: $de $2f
	ldh [$de], a                                     ; $5618: $e0 $de
	rra                                              ; $561a: $1f
	sbc l                                            ; $561b: $9d
	ld e, $0e                                        ; $561c: $1e $0e
	ld [hl], e                                       ; $561e: $73
	sbc $37                                          ; $561f: $de $37
	ldh [$b5], a                                     ; $5621: $e0 $b5
	ld bc, $9580                                     ; $5623: $01 $80 $95
	rst $38                                          ; $5626: $ff
	and l                                            ; $5627: $a5
	rst $38                                          ; $5628: $ff
	ld [hl], l                                       ; $5629: $75
	rst AddAOntoHL                                          ; $562a: $ef
	cp [hl]                                          ; $562b: $be
	rst AddAOntoHL                                          ; $562c: $ef
	xor d                                            ; $562d: $aa
	rst $38                                          ; $562e: $ff
	xor a                                            ; $562f: $af
	ld a, [$f8d2]                                    ; $5630: $fa $d2 $f8
	ld d, b                                          ; $5633: $50
	ld a, b                                          ; $5634: $78
	dec a                                            ; $5635: $3d
	dec sp                                           ; $5636: $3b
	add hl, sp                                       ; $5637: $39
	dec l                                            ; $5638: $2d
	ld h, $2d                                        ; $5639: $26 $2d
	inc h                                            ; $563b: $24
	ld l, $3a                                        ; $563c: $2e $3a
	ld l, $1f                                        ; $563e: $2e $1f
	ld d, $0d                                        ; $5640: $16 $0d
	dec bc                                           ; $5642: $0b
	rlca                                             ; $5643: $07
	sbc [hl]                                         ; $5644: $9e
	rlca                                             ; $5645: $07
	call c, $9d01                                    ; $5646: $dc $01 $9d
	inc bc                                           ; $5649: $03
	ld b, $7b                                        ; $564a: $06 $7b
	cp $97                                           ; $564c: $fe $97
	ld c, c                                          ; $564e: $49
	rlca                                             ; $564f: $07
	ld c, c                                          ; $5650: $49
	rlca                                             ; $5651: $07
	ld b, c                                          ; $5652: $41
	ld c, $43                                        ; $5653: $0e $43
	inc c                                            ; $5655: $0c
	ld [hl], a                                       ; $5656: $77
	cp $9a                                           ; $5657: $fe $9a
	ld b, a                                          ; $5659: $47
	ld [$08c7], sp                                   ; $565a: $08 $c7 $08
	add $7b                                          ; $565d: $c6 $7b
	cp $82                                           ; $565f: $fe $82
	adc h                                            ; $5661: $8c
	ld b, b                                          ; $5662: $40
	db $ec                                           ; $5663: $ec
	add $e5                                          ; $5664: $c6 $e5
	ld b, d                                          ; $5666: $42
	and c                                            ; $5667: $a1
	ld [hl], b                                       ; $5668: $70
	ldh a, [$f8]                                     ; $5669: $f0 $f8
	adc $3c                                          ; $566b: $ce $3c
	ld a, [$5b06]                                    ; $566d: $fa $06 $5b
	inc a                                            ; $5670: $3c
	ld a, l                                          ; $5671: $7d
	cp $e7                                           ; $5672: $fe $e7
	and $df                                          ; $5674: $e6 $df
	ld a, [hl]                                       ; $5676: $7e

Call_06f_5677:
	ld c, d                                          ; $5677: $4a
	ld a, [hl]                                       ; $5678: $7e
	ld [hl], $22                                     ; $5679: $36 $22
	ld e, $1c                                        ; $567b: $1e $1c
	ccf                                              ; $567d: $3f
	cp [hl]                                          ; $567e: $be
	nop                                              ; $567f: $00
	add b                                            ; $5680: $80
	add b                                            ; $5681: $80
	sub b                                            ; $5682: $90
	add b                                            ; $5683: $80
	ret nz                                           ; $5684: $c0

	add b                                            ; $5685: $80
	ld h, b                                          ; $5686: $60
	ret nz                                           ; $5687: $c0

	or b                                             ; $5688: $b0
	ldh [$b8], a                                     ; $5689: $e0 $b8
	ld hl, sp+$66                                    ; $568b: $f8 $66
	cp $41                                           ; $568d: $fe $41
	rst $38                                          ; $568f: $ff
	ld b, b                                          ; $5690: $40
	rst $38                                          ; $5691: $ff
	cp c                                             ; $5692: $b9
	di                                               ; $5693: $f3
	jp $0487                                         ; $5694: $c3 $87 $04


	inc c                                            ; $5697: $0c
	inc e                                            ; $5698: $1c
	jr jr_06f_56d3                                   ; $5699: $18 $38

	ld a, a                                          ; $569b: $7f
	di                                               ; $569c: $f3
	sbc [hl]                                         ; $569d: $9e
	ld b, b                                          ; $569e: $40
	or [hl]                                          ; $569f: $b6
	jr nz, jr_06f_56a2                               ; $56a0: $20 $00

jr_06f_56a2:
	nop                                              ; $56a2: $00
	ld bc, $8101                                     ; $56a3: $01 $01 $81
	add b                                            ; $56a6: $80
	nop                                              ; $56a7: $00
	inc c                                            ; $56a8: $0c
	ld c, $07                                        ; $56a9: $0e $07
	add b                                            ; $56ab: $80
	ld [$1c1b], sp                                   ; $56ac: $08 $1b $1c
	ld e, $08                                        ; $56af: $1e $08
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	rrca                                             ; $56b3: $0f
	ld [bc], a                                       ; $56b4: $02
	cpl                                              ; $56b5: $2f
	inc e                                            ; $56b6: $1c
	dec sp                                           ; $56b7: $3b
	ld a, h                                          ; $56b8: $7c
	ld a, a                                          ; $56b9: $7f
	ldh [$bf], a                                     ; $56ba: $e0 $bf
	ret nz                                           ; $56bc: $c0

	dec sp                                           ; $56bd: $3b
	db $fc                                           ; $56be: $fc
	ld l, [hl]                                       ; $56bf: $6e
	rst AddAOntoHL                                          ; $56c0: $ef
	rst GetHLinHL                                          ; $56c1: $cf
	ld c, a                                          ; $56c2: $4f
	cp $7e                                           ; $56c3: $fe $7e
	db $db                                           ; $56c5: $db
	ld a, [hl]                                       ; $56c6: $7e
	ld l, a                                          ; $56c7: $6f
	ld [hl-], a                                      ; $56c8: $32
	scf                                              ; $56c9: $37
	inc [hl]                                         ; $56ca: $34
	sbc [hl]                                         ; $56cb: $9e
	ld a, a                                          ; $56cc: $7f
	cp h                                             ; $56cd: $bc
	rlca                                             ; $56ce: $07
	inc bc                                           ; $56cf: $03
	inc bc                                           ; $56d0: $03
	rlca                                             ; $56d1: $07
	rrca                                             ; $56d2: $0f

jr_06f_56d3:
	adc b                                            ; $56d3: $88
	ld bc, $031f                                     ; $56d4: $01 $1f $03
	rra                                              ; $56d7: $1f
	rlca                                             ; $56d8: $07
	ccf                                              ; $56d9: $3f
	rrca                                             ; $56da: $0f
	ld a, h                                          ; $56db: $7c
	ccf                                              ; $56dc: $3f
	db $fc                                           ; $56dd: $fc
	ld a, a                                          ; $56de: $7f
	ld hl, sp-$01                                    ; $56df: $f8 $ff
	ld hl, sp+$3f                                    ; $56e1: $f8 $3f
	ldh a, [$1f]                                     ; $56e3: $f0 $1f
	ldh [$3d], a                                     ; $56e5: $e0 $3d
	ret nz                                           ; $56e7: $c0

	ld a, b                                          ; $56e8: $78
	add b                                            ; $56e9: $80
	ldh [$be], a                                     ; $56ea: $e0 $be
	add b                                            ; $56ec: $80
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	sbc e                                            ; $56ef: $9b
	rst $38                                          ; $56f0: $ff
	cp c                                             ; $56f1: $b9
	rst $38                                          ; $56f2: $ff
	or e                                             ; $56f3: $b3
	ld a, e                                          ; $56f4: $7b
	dec e                                            ; $56f5: $1d
	add b                                            ; $56f6: $80
	ld l, c                                          ; $56f7: $69
	rst $38                                          ; $56f8: $ff
	ld [hl], e                                       ; $56f9: $73
	cp $5f                                           ; $56fa: $fe $5f
	cp $1f                                           ; $56fc: $fe $1f
	db $fc                                           ; $56fe: $fc
	sub a                                            ; $56ff: $97
	cp $13                                           ; $5700: $fe $13

jr_06f_5702:
	cp $3b                                           ; $5702: $fe $3b
	cp $2b                                           ; $5704: $fe $2b
	db $fd                                           ; $5706: $fd
	scf                                              ; $5707: $37
	db $fd                                           ; $5708: $fd
	cpl                                              ; $5709: $2f
	db $fc                                           ; $570a: $fc
	ld a, a                                          ; $570b: $7f
	cp $7b                                           ; $570c: $fe $7b
	and $ff                                          ; $570e: $e6 $ff
	jp nz, $f2ff                                     ; $5710: $c2 $ff $f2

	rst $38                                          ; $5713: $ff
	sbc h                                            ; $5714: $9c
	rst $38                                          ; $5715: $ff
	add l                                            ; $5716: $85
	ld c, $ff                                        ; $5717: $0e $ff
	dec b                                            ; $5719: $05
	rst $38                                          ; $571a: $ff
	add d                                            ; $571b: $82
	rst $38                                          ; $571c: $ff
	ld b, c                                          ; $571d: $41
	rst $38                                          ; $571e: $ff
	nop                                              ; $571f: $00
	rst $38                                          ; $5720: $ff
	jr nz, jr_06f_5702                               ; $5721: $20 $df

	ld h, b                                          ; $5723: $60
	sbc a                                            ; $5724: $9f
	ld [hl-], a                                      ; $5725: $32
	call Call_06f_4cb3                               ; $5726: $cd $b3 $4c
	xor e                                            ; $5729: $ab
	ld b, h                                          ; $572a: $44
	dec hl                                           ; $572b: $2b
	ld b, h                                          ; $572c: $44
	ld h, l                                          ; $572d: $65
	ld [bc], a                                       ; $572e: $02
	ld b, c                                          ; $572f: $41
	ld [bc], a                                       ; $5730: $02
	ld b, [hl]                                       ; $5731: $46
	ldh [$9b], a                                     ; $5732: $e0 $9b
	ccf                                              ; $5734: $3f
	jr c, jr_06f_5770                                ; $5735: $38 $39

	cpl                                              ; $5737: $2f
	ld d, [hl]                                       ; $5738: $56
	ldh [$57], a                                     ; $5739: $e0 $57
	nop                                              ; $573b: $00
	ld a, a                                          ; $573c: $7f
	ld l, h                                          ; $573d: $6c
	sbc l                                            ; $573e: $9d
	cp e                                             ; $573f: $bb
	ld a, h                                          ; $5740: $7c
	halt                                             ; $5741: $76
	cp $9b                                           ; $5742: $fe $9b
	jp c, $b67e                                      ; $5744: $da $7e $b6

	ld h, $67                                        ; $5747: $26 $67
	nop                                              ; $5749: $00
	ld e, a                                          ; $574a: $5f
	ld b, b                                          ; $574b: $40
	sub [hl]                                         ; $574c: $96
	ld a, a                                          ; $574d: $7f
	add b                                            ; $574e: $80
	cp e                                             ; $574f: $bb
	ld a, h                                          ; $5750: $7c
	cp $7f                                           ; $5751: $fe $7f
	rst SubAFromBC                                          ; $5753: $e7
	ld h, a                                          ; $5754: $67
	jp c, Jump_06f_4053                              ; $5755: $da $53 $40

	ld c, e                                          ; $5758: $4b
	ld h, b                                          ; $5759: $60
	sbc h                                            ; $575a: $9c
	rla                                              ; $575b: $17
	cp $93                                           ; $575c: $fe $93
	ld c, a                                          ; $575e: $4f
	ld h, b                                          ; $575f: $60
	ld b, a                                          ; $5760: $47
	add b                                            ; $5761: $80
	sbc e                                            ; $5762: $9b
	inc a                                            ; $5763: $3c
	jr c, jr_06f_579e                                ; $5764: $38 $38

	inc l                                            ; $5766: $2c
	rra                                              ; $5767: $1f
	add b                                            ; $5768: $80
	ld a, a                                          ; $5769: $7f
	adc h                                            ; $576a: $8c
	sub l                                            ; $576b: $95
	rra                                              ; $576c: $1f
	nop                                              ; $576d: $00
	cp a                                             ; $576e: $bf
	ld a, h                                          ; $576f: $7c

jr_06f_5770:
	rst AddAOntoHL                                          ; $5770: $ef
	rst $38                                          ; $5771: $ff
	push af                                          ; $5772: $f5
	ld [hl], $1a                                     ; $5773: $36 $1a
	inc a                                            ; $5775: $3c
	ccf                                              ; $5776: $3f
	add b                                            ; $5777: $80
	ld a, e                                          ; $5778: $7b
	ld hl, $0096                                     ; $5779: $21 $96 $00
	db $dd                                           ; $577c: $dd
	ld a, $fb                                        ; $577d: $3e $fb
	rst $38                                          ; $577f: $ff
	ld l, a                                          ; $5780: $6f
	ld a, $37                                        ; $5781: $3e $37
	inc d                                            ; $5783: $14
	inc hl                                           ; $5784: $23
	add b                                            ; $5785: $80
	ld a, [hl]                                       ; $5786: $7e
	ldh [$9e], a                                     ; $5787: $e0 $9e
	cp e                                             ; $5789: $bb
	inc bc                                           ; $578a: $03
	add b                                            ; $578b: $80
	sbc [hl]                                         ; $578c: $9e
	inc l                                            ; $578d: $2c
	rla                                              ; $578e: $17
	add b                                            ; $578f: $80
	ld a, a                                          ; $5790: $7f
	cp $7f                                           ; $5791: $fe $7f
	ld a, [$479c]                                    ; $5793: $fa $9c $47
	db $e3                                           ; $5796: $e3
	ld a, [hl]                                       ; $5797: $7e
	dec hl                                           ; $5798: $2b
	add b                                            ; $5799: $80
	ld [hl], a                                       ; $579a: $77
	cp $9b                                           ; $579b: $fe $9b
	rst JumpTable                                          ; $579d: $c7

jr_06f_579e:
	db $e3                                           ; $579e: $e3
	ccf                                              ; $579f: $3f
	inc a                                            ; $57a0: $3c
	dec de                                           ; $57a1: $1b
	add b                                            ; $57a2: $80
	ld d, e                                          ; $57a3: $53
	nop                                              ; $57a4: $00
	sbc e                                            ; $57a5: $9b
	inc e                                            ; $57a6: $1c
	inc c                                            ; $57a7: $0c
	ld [de], a                                       ; $57a8: $12
	ld [de], a                                       ; $57a9: $12
	ld [hl], l                                       ; $57aa: $75
	xor $fd                                          ; $57ab: $ee $fd
	ld a, l                                          ; $57ad: $7d
	or [hl]                                          ; $57ae: $b6
	sub h                                            ; $57af: $94
	ei                                               ; $57b0: $fb
	pop hl                                           ; $57b1: $e1
	ld a, a                                          ; $57b2: $7f
	rst $38                                          ; $57b3: $ff
	ccf                                              ; $57b4: $3f
	ld hl, sp+$1f                                    ; $57b5: $f8 $1f
	ldh a, [rIF]                                     ; $57b7: $f0 $0f
	ld hl, sp+$07                                    ; $57b9: $f8 $07
	ld [hl], a                                       ; $57bb: $77
	or a                                             ; $57bc: $b7
	sbc b                                            ; $57bd: $98
	or $00                                           ; $57be: $f6 $00
	rst SubAFromBC                                          ; $57c0: $e7
	inc e                                            ; $57c1: $1c
	inc c                                            ; $57c2: $0c
	ld e, $1e                                        ; $57c3: $1e $1e
	rlca                                             ; $57c5: $07
	ldh [$9e], a                                     ; $57c6: $e0 $9e
	ld c, $7b                                        ; $57c8: $0e $7b
	pop hl                                           ; $57ca: $e1
	ld [hl], a                                       ; $57cb: $77
	sbc $2b                                          ; $57cc: $de $2b
	ldh [$9c], a                                     ; $57ce: $e0 $9c
	ld c, $1e                                        ; $57d0: $0e $1e
	ld c, $6f                                        ; $57d2: $0e $6f
	sbc $37                                          ; $57d4: $de $37
	ldh [rAUD4ENV], a                                ; $57d6: $e0 $21
	inc bc                                           ; $57d8: $03
	jp hl                                            ; $57d9: $e9


	rst SubAFromHL                                          ; $57da: $d7
	ld bc, $028d                                     ; $57db: $01 $8d $02
	inc bc                                           ; $57de: $03
	inc bc                                           ; $57df: $03
	ld [bc], a                                       ; $57e0: $02
	ld [bc], a                                       ; $57e1: $02
	inc bc                                           ; $57e2: $03
	dec b                                            ; $57e3: $05
	rlca                                             ; $57e4: $07
	dec b                                            ; $57e5: $05
	rlca                                             ; $57e6: $07
	dec bc                                           ; $57e7: $0b
	rrca                                             ; $57e8: $0f
	dec c                                            ; $57e9: $0d
	dec c                                            ; $57ea: $0d
	ld a, [de]                                       ; $57eb: $1a
	dec de                                           ; $57ec: $1b
	ld [bc], a                                       ; $57ed: $02
	inc bc                                           ; $57ee: $03
	ld [hl], a                                       ; $57ef: $77
	cp $dd                                           ; $57f0: $fe $dd
	ld bc, $cc37                                     ; $57f2: $01 $37 $cc
	ld a, a                                          ; $57f5: $7f
	push hl                                          ; $57f6: $e5
	sub c                                            ; $57f7: $91
	dec b                                            ; $57f8: $05
	ld b, $07                                        ; $57f9: $06 $07
	inc b                                            ; $57fb: $04
	dec bc                                           ; $57fc: $0b
	inc c                                            ; $57fd: $0c
	ld c, $09                                        ; $57fe: $0e $09
	ld c, $09                                        ; $5800: $0e $09
	inc d                                            ; $5802: $14
	dec de                                           ; $5803: $1b
	inc e                                            ; $5804: $1c
	inc de                                           ; $5805: $13
	cpl                                              ; $5806: $2f
	and h                                            ; $5807: $a4
	ld a, e                                          ; $5808: $7b
	xor l                                            ; $5809: $ad
	add b                                            ; $580a: $80
	inc bc                                           ; $580b: $03
	rlca                                             ; $580c: $07
	inc b                                            ; $580d: $04
	ld c, $09                                        ; $580e: $0e $09
	dec e                                            ; $5810: $1d
	inc de                                           ; $5811: $13
	ld a, [de]                                       ; $5812: $1a
	rla                                              ; $5813: $17
	inc sp                                           ; $5814: $33
	inc l                                            ; $5815: $2c
	scf                                              ; $5816: $37
	jr z, @+$6e                                      ; $5817: $28 $6c

	ld d, e                                          ; $5819: $53
	ld c, c                                          ; $581a: $49
	ld [hl], a                                       ; $581b: $77
	adc e                                            ; $581c: $8b
	db $fc                                           ; $581d: $fc
	sub a                                            ; $581e: $97
	ld hl, sp-$21                                    ; $581f: $f8 $df
	or c                                             ; $5821: $b1
	xor $b3                                          ; $5822: $ee $b3
	db $fd                                           ; $5824: $fd
	and d                                            ; $5825: $a2
	rst SubAFromDE                                          ; $5826: $df
	and b                                            ; $5827: $a0
	cp $81                                           ; $5828: $fe $81
	add h                                            ; $582a: $84
	ld [hl], $c9                                     ; $582b: $36 $c9
	xor l                                            ; $582d: $ad
	ld d, e                                          ; $582e: $53
	xor [hl]                                         ; $582f: $ae
	ld d, e                                          ; $5830: $53
	call z, Call_06f_5677                            ; $5831: $cc $77 $56
	db $ed                                           ; $5834: $ed
	ld e, d                                          ; $5835: $5a
	db $ed                                           ; $5836: $ed
	sub [hl]                                         ; $5837: $96
	jp hl                                            ; $5838: $e9


	db $e4                                           ; $5839: $e4
	sbc e                                            ; $583a: $9b
	ld [hl], h                                       ; $583b: $74
	sbc e                                            ; $583c: $9b
	dec a                                            ; $583d: $3d
	db $d3                                           ; $583e: $d3
	add hl, hl                                       ; $583f: $29
	rst SubAFromHL                                          ; $5840: $d7
	dec bc                                           ; $5841: $0b
	push af                                          ; $5842: $f5
	dec sp                                           ; $5843: $3b
	push hl                                          ; $5844: $e5
	or e                                             ; $5845: $b3
	ld a, e                                          ; $5846: $7b
	cp $83                                           ; $5847: $fe $83
	or c                                             ; $5849: $b1
	push hl                                          ; $584a: $e5
	ld h, l                                          ; $584b: $65
	pop af                                           ; $584c: $f1
	ld h, l                                          ; $584d: $65
	pop af                                           ; $584e: $f1
	ret c                                            ; $584f: $d8

	push af                                          ; $5850: $f5
	jp c, Jump_06f_73f5                              ; $5851: $da $f5 $73

	ld a, h                                          ; $5854: $7c
	dec l                                            ; $5855: $2d
	ld a, [hl-]                                      ; $5856: $3a
	dec l                                            ; $5857: $2d
	ld a, [hl-]                                      ; $5858: $3a
	dec e                                            ; $5859: $1d
	ld a, [de]                                       ; $585a: $1a
	ld [$0a0f], sp                                   ; $585b: $08 $0f $0a
	dec c                                            ; $585e: $0d
	inc c                                            ; $585f: $0c
	rrca                                             ; $5860: $0f
	inc b                                            ; $5861: $04
	rlca                                             ; $5862: $07
	inc b                                            ; $5863: $04
	rlca                                             ; $5864: $07
	ld [hl], a                                       ; $5865: $77
	ld h, d                                          ; $5866: $62
	db $db                                           ; $5867: $db
	inc bc                                           ; $5868: $03
	db $dd                                           ; $5869: $dd
	ld [bc], a                                       ; $586a: $02
	rst SubAFromDE                                          ; $586b: $df
	inc b                                            ; $586c: $04
	rst SubAFromDE                                          ; $586d: $df
	ld bc, $0792                                     ; $586e: $01 $92 $07
	ld b, $1f                                        ; $5871: $06 $1f
	jr jr_06f_58b4                                   ; $5873: $18 $3f

	jr nz, @+$01                                     ; $5875: $20 $ff

	ret nz                                           ; $5877: $c0

	ld h, b                                          ; $5878: $60
	sbc a                                            ; $5879: $9f
	sbc $21                                          ; $587a: $de $21
	rst $38                                          ; $587c: $ff
	cp a                                             ; $587d: $bf
	rst $38                                          ; $587e: $ff
	cp a                                             ; $587f: $bf

jr_06f_5880:
	sub h                                            ; $5880: $94
	ld b, b                                          ; $5881: $40
	inc a                                            ; $5882: $3c
	jp $cf33                                         ; $5883: $c3 $33 $cf


	dec l                                            ; $5886: $2d
	sbc $57                                          ; $5887: $de $57
	cp b                                             ; $5889: $b8
	rst AddAOntoHL                                          ; $588a: $ef
	jr nc, jr_06f_5880                               ; $588b: $30 $f3

	rst SubAFromDE                                          ; $588d: $df
	ccf                                              ; $588e: $3f
	add b                                            ; $588f: $80
	ld b, b                                          ; $5890: $40
	ld a, a                                          ; $5891: $7f
	adc a                                            ; $5892: $8f
	rst $38                                          ; $5893: $ff
	ld [hl], b                                       ; $5894: $70
	rst $38                                          ; $5895: $ff
	adc a                                            ; $5896: $8f
	rst $38                                          ; $5897: $ff
	ccf                                              ; $5898: $3f
	ldh a, [$7f]                                     ; $5899: $f0 $7f
	ret nz                                           ; $589b: $c0

	ld a, a                                          ; $589c: $7f
	add c                                            ; $589d: $81
	rst $38                                          ; $589e: $ff
	add b                                            ; $589f: $80
	ld a, a                                          ; $58a0: $7f
	add c                                            ; $58a1: $81
	ld a, a                                          ; $58a2: $7f
	rst JumpTable                                          ; $58a3: $c7
	rst $38                                          ; $58a4: $ff
	ld c, h                                          ; $58a5: $4c
	ld a, a                                          ; $58a6: $7f
	set 7, a                                         ; $58a7: $cb $ff
	rst SubAFromBC                                          ; $58a9: $e7
	sbc d                                            ; $58aa: $9a
	ld a, a                                          ; $58ab: $7f
	ld [hl], d                                       ; $58ac: $72
	rst $38                                          ; $58ad: $ff
	and h                                            ; $58ae: $a4
	add b                                            ; $58af: $80

jr_06f_58b0:
	rst $38                                          ; $58b0: $ff
	db $e4                                           ; $58b1: $e4
	ld a, a                                          ; $58b2: $7f
	ld b, h                                          ; $58b3: $44

jr_06f_58b4:
	rst $38                                          ; $58b4: $ff
	ld b, h                                          ; $58b5: $44
	db $fd                                           ; $58b6: $fd
	inc h                                            ; $58b7: $24
	db $f4                                           ; $58b8: $f4
	jr nz, jr_06f_58b0                               ; $58b9: $20 $f5

	and b                                            ; $58bb: $a0
	push af                                          ; $58bc: $f5
	and b                                            ; $58bd: $a0
	rst FarCall                                          ; $58be: $f7
	and b                                            ; $58bf: $a0
	rst $38                                          ; $58c0: $ff
	add l                                            ; $58c1: $85
	ld a, [$bad5]                                    ; $58c2: $fa $d5 $ba
	push de                                          ; $58c5: $d5
	cp d                                             ; $58c6: $ba
	jp nc, $aabd                                     ; $58c7: $d2 $bd $aa

	db $dd                                           ; $58ca: $dd
	xor e                                            ; $58cb: $ab
	call c, $eed5                                    ; $58cc: $dc $d5 $ee
	add b                                            ; $58cf: $80
	call nc, $eaef                                   ; $58d0: $d4 $ef $ea
	or a                                             ; $58d3: $b7
	dec h                                            ; $58d4: $25
	ei                                               ; $58d5: $fb
	ld [hl-], a                                      ; $58d6: $32
	db $dd                                           ; $58d7: $dd
	ld d, c                                          ; $58d8: $51
	rst $38                                          ; $58d9: $ff
	ld e, d                                          ; $58da: $5a
	xor $2d                                          ; $58db: $ee $2d
	db $f4                                           ; $58dd: $f4
	xor h                                            ; $58de: $ac
	push af                                          ; $58df: $f5
	call nc, $d5bd                                   ; $58e0: $d4 $bd $d5
	cp [hl]                                          ; $58e3: $be
	jp z, $e5bf                                      ; $58e4: $ca $bf $e5

	sbc a                                            ; $58e7: $9f

Call_06f_58e8:
	and [hl]                                         ; $58e8: $a6
	rst SubAFromDE                                          ; $58e9: $df
	or l                                             ; $58ea: $b5
	call $acd4                                       ; $58eb: $cd $d4 $ac
	and h                                            ; $58ee: $a4
	add b                                            ; $58ef: $80
	call c, $dce4                                    ; $58f0: $dc $e4 $dc
	call nz, $abfc                                   ; $58f3: $c4 $fc $ab
	cp e                                             ; $58f6: $bb
	xor h                                            ; $58f7: $ac
	cp a                                             ; $58f8: $bf
	ld a, $39                                        ; $58f9: $3e $39
	ld a, a                                          ; $58fb: $7f
	ld [hl], c                                       ; $58fc: $71
	ccf                                              ; $58fd: $3f
	ld hl, $615e                                     ; $58fe: $21 $5e $61
	ld a, a                                          ; $5901: $7f
	ld b, b                                          ; $5902: $40
	rst $38                                          ; $5903: $ff
	ret nz                                           ; $5904: $c0

	ld a, a                                          ; $5905: $7f
	ret nz                                           ; $5906: $c0

	rst SubAFromDE                                          ; $5907: $df
	ld h, b                                          ; $5908: $60
	rst $38                                          ; $5909: $ff
	ld h, b                                          ; $590a: $60

jr_06f_590b:
	rst FarCall                                          ; $590b: $f7
	jr c, jr_06f_590b                                ; $590c: $38 $fd

	ld c, $8b                                        ; $590e: $0e $8b
	ld a, [hl-]                                      ; $5910: $3a
	rst JumpTable                                          ; $5911: $c7
	rrca                                             ; $5912: $0f
	pop af                                           ; $5913: $f1
	add e                                            ; $5914: $83
	ld a, h                                          ; $5915: $7c
	ldh a, [rIF]                                     ; $5916: $f0 $0f
	db $fc                                           ; $5918: $fc
	inc bc                                           ; $5919: $03
	rra                                              ; $591a: $1f
	ldh [$fb], a                                     ; $591b: $e0 $fb
	db $fc                                           ; $591d: $fc
	rst AddAOntoHL                                          ; $591e: $ef
	rra                                              ; $591f: $1f
	adc b                                            ; $5920: $88
	dec c                                            ; $5921: $0d
	add d                                            ; $5922: $82
	ld b, $56                                        ; $5923: $06 $56
	jp z, $287f                                      ; $5925: $ca $7f $28

	add b                                            ; $5928: $80
	push bc                                          ; $5929: $c5
	rst JumpTable                                          ; $592a: $c7
	dec [hl]                                         ; $592b: $35
	rst FarCall                                          ; $592c: $f7
	dec c                                            ; $592d: $0d
	rst $38                                          ; $592e: $ff
	push bc                                          ; $592f: $c5
	rst $38                                          ; $5930: $ff
	db $f4                                           ; $5931: $f4
	rst $38                                          ; $5932: $ff
	rst $38                                          ; $5933: $ff
	rra                                              ; $5934: $1f
	rst $38                                          ; $5935: $ff
	inc bc                                           ; $5936: $03
	rst $38                                          ; $5937: $ff
	pop af                                           ; $5938: $f1
	rst $38                                          ; $5939: $ff
	rrca                                             ; $593a: $0f
	cp $ff                                           ; $593b: $fe $ff
	db $f4                                           ; $593d: $f4
	ld a, a                                          ; $593e: $7f
	and h                                            ; $593f: $a4
	rst $38                                          ; $5940: $ff
	add hl, hl                                       ; $5941: $29
	rst $38                                          ; $5942: $ff
	ld c, c                                          ; $5943: $49
	rst $38                                          ; $5944: $ff
	ld l, d                                          ; $5945: $6a
	db $dd                                           ; $5946: $dd
	ld h, d                                          ; $5947: $62
	sbc h                                            ; $5948: $9c
	db $dd                                           ; $5949: $dd
	ld d, [hl]                                       ; $594a: $56
	ret                                              ; $594b: $c9


	pop hl                                           ; $594c: $e1
	adc a                                            ; $594d: $8f
	ld b, [hl]                                       ; $594e: $46
	ret                                              ; $594f: $c9


	dec h                                            ; $5950: $25
	ld c, e                                          ; $5951: $4b
	ld d, $6f                                        ; $5952: $16 $6f
	dec de                                           ; $5954: $1b
	ld a, h                                          ; $5955: $7c
	inc hl                                           ; $5956: $23
	ld a, a                                          ; $5957: $7f
	ld e, l                                          ; $5958: $5d
	rst $38                                          ; $5959: $ff
	db $e3                                           ; $595a: $e3
	rst $38                                          ; $595b: $ff
	ld b, $ff                                        ; $595c: $06 $ff
	ldh [$c1], a                                     ; $595e: $e0 $c1
	add b                                            ; $5960: $80
	sub b                                            ; $5961: $90

jr_06f_5962:
	ld [hl], b                                       ; $5962: $70
	ret c                                            ; $5963: $d8

	jr nc, jr_06f_5962                               ; $5964: $30 $fc

	ld [$049c], sp                                   ; $5966: $08 $9c $04
	add $0c                                          ; $5969: $c6 $0c
	add $02                                          ; $596b: $c6 $02
	ld h, e                                          ; $596d: $63
	add c                                            ; $596e: $81
	or c                                             ; $596f: $b1
	ret nz                                           ; $5970: $c0

	ld e, b                                          ; $5971: $58
	ldh [$ee], a                                     ; $5972: $e0 $ee
	jr nc, @+$79                                     ; $5974: $30 $77

	sbc b                                            ; $5976: $98
	dec sp                                           ; $5977: $3b
	call z, $3fc4                                    ; $5978: $cc $c4 $3f
	ld [hl], d                                       ; $597b: $72
	sbc a                                            ; $597c: $9f
	ld sp, hl                                        ; $597d: $f9
	rst GetHLinHL                                          ; $597e: $cf
	dec l                                            ; $597f: $2d
	sbc [hl]                                         ; $5980: $9e
	ld [hl], a                                       ; $5981: $77
	rst FarCall                                          ; $5982: $f7
	rst SubAFromDE                                          ; $5983: $df
	ret nz                                           ; $5984: $c0

	rst SubAFromDE                                          ; $5985: $df
	add b                                            ; $5986: $80
	rst SubAFromDE                                          ; $5987: $df
	ld a, $90                                        ; $5988: $3e $90
	ld d, h                                          ; $598a: $54
	ld a, h                                          ; $598b: $7c
	xor e                                            ; $598c: $ab
	ei                                               ; $598d: $fb
	ld c, a                                          ; $598e: $4f
	db $fc                                           ; $598f: $fc
	ld c, a                                          ; $5990: $4f
	ld hl, sp-$01                                    ; $5991: $f8 $ff
	di                                               ; $5993: $f3
	rst $38                                          ; $5994: $ff
	inc d                                            ; $5995: $14
	rst $38                                          ; $5996: $ff
	rrca                                             ; $5997: $0f
	ei                                               ; $5998: $fb
	ld a, d                                          ; $5999: $7a
	xor [hl]                                         ; $599a: $ae
	sub c                                            ; $599b: $91
	sub d                                            ; $599c: $92
	rst $38                                          ; $599d: $ff
	adc c                                            ; $599e: $89
	rst $38                                          ; $599f: $ff
	ld [$04ff], sp                                   ; $59a0: $08 $ff $04
	rst $38                                          ; $59a3: $ff
	ld d, b                                          ; $59a4: $50
	and [hl]                                         ; $59a5: $a6
	jp c, Jump_06f_4c24                              ; $59a6: $da $24 $4c

	cp a                                             ; $59a9: $bf
	pop hl                                           ; $59aa: $e1
	adc a                                            ; $59ab: $8f
	ld [hl], e                                       ; $59ac: $73
	rst $38                                          ; $59ad: $ff
	db $e4                                           ; $59ae: $e4
	jp $1fa7                                         ; $59af: $c3 $a7 $1f


	db $fc                                           ; $59b2: $fc
	rst $38                                          ; $59b3: $ff
	push hl                                          ; $59b4: $e5
	rst $38                                          ; $59b5: $ff
	xor d                                            ; $59b6: $aa
	rst SubAFromDE                                          ; $59b7: $df
	ld e, [hl]                                       ; $59b8: $5e
	or l                                             ; $59b9: $b5
	cp l                                             ; $59ba: $bd
	ld l, a                                          ; $59bb: $6f
	ldh [$c1], a                                     ; $59bc: $e0 $c1
	sub a                                            ; $59be: $97
	ld a, [bc]                                       ; $59bf: $0a
	inc c                                            ; $59c0: $0c
	ld [$060c], sp                                   ; $59c1: $08 $0c $06
	inc b                                            ; $59c4: $04
	inc b                                            ; $59c5: $04
	ld b, $79                                        ; $59c6: $06 $79
	dec e                                            ; $59c8: $1d
	ld a, e                                          ; $59c9: $7b
	db $fd                                           ; $59ca: $fd
	rst SubAFromDE                                          ; $59cb: $df
	add a                                            ; $59cc: $87
	adc a                                            ; $59cd: $8f
	ld c, d                                          ; $59ce: $4a
	adc $2e                                          ; $59cf: $ce $2e
	ld l, d                                          ; $59d1: $6a
	ld a, [hl-]                                      ; $59d2: $3a
	ld [hl-], a                                      ; $59d3: $32
	or h                                             ; $59d4: $b4
	inc d                                            ; $59d5: $14
	sbc h                                            ; $59d6: $9c
	inc d                                            ; $59d7: $14
	ld e, h                                          ; $59d8: $5c
	adc h                                            ; $59d9: $8c
	inc a                                            ; $59da: $3c
	ret z                                            ; $59db: $c8

	ld [$f1fc], sp                                   ; $59dc: $08 $fc $f1
	rst SubAFromDE                                          ; $59df: $df
	ld [hl], b                                       ; $59e0: $70
	add c                                            ; $59e1: $81
	ld hl, sp-$78                                    ; $59e2: $f8 $88
	db $fc                                           ; $59e4: $fc
	inc b                                            ; $59e5: $04
	cp $c2                                           ; $59e6: $fe $c2
	cp $02                                           ; $59e8: $fe $02
	rst $38                                          ; $59ea: $ff
	ld bc, $e1ff                                     ; $59eb: $01 $ff $e1
	rra                                              ; $59ee: $1f
	rst $38                                          ; $59ef: $ff
	call nz, $22ff                                   ; $59f0: $c4 $ff $22
	rst $38                                          ; $59f3: $ff
	ld de, $18ff                                     ; $59f4: $11 $ff $18
	rst $38                                          ; $59f7: $ff
	ld c, a                                          ; $59f8: $4f
	rst $38                                          ; $59f9: $ff
	xor e                                            ; $59fa: $ab
	ld a, l                                          ; $59fb: $7d
	ld d, [hl]                                       ; $59fc: $56
	dec sp                                           ; $59fd: $3b
	ld a, e                                          ; $59fe: $7b
	sub a                                            ; $59ff: $97
	pop hl                                           ; $5a00: $e1
	sbc d                                            ; $5a01: $9a
	sbc [hl]                                         ; $5a02: $9e
	rst FarCall                                          ; $5a03: $f7
	ld a, l                                          ; $5a04: $7d
	rst FarCall                                          ; $5a05: $f7
	or a                                             ; $5a06: $b7
	ld a, d                                          ; $5a07: $7a
	ld b, b                                          ; $5a08: $40
	sbc e                                            ; $5a09: $9b
	ccf                                              ; $5a0a: $3f
	rst $38                                          ; $5a0b: $ff
	ld [hl], d                                       ; $5a0c: $72
	pop bc                                           ; $5a0d: $c1
	ld a, d                                          ; $5a0e: $7a
	rst AddAOntoHL                                          ; $5a0f: $ef
	ldh [$c0], a                                     ; $5a10: $e0 $c0
	sbc h                                            ; $5a12: $9c
	ld b, c                                          ; $5a13: $41
	ld bc, $bee0                                     ; $5a14: $01 $e0 $be
	ld a, b                                          ; $5a17: $78
	ccf                                              ; $5a18: $3f
	ccf                                              ; $5a19: $3f
	sbc l                                            ; $5a1a: $9d
	ld bc, $be1f                                     ; $5a1b: $01 $1f $be
	rra                                              ; $5a1e: $1f
	adc a                                            ; $5a1f: $8f
	rst AddAOntoHL                                          ; $5a20: $ef
	ld a, l                                          ; $5a21: $7d
	ld c, [hl]                                       ; $5a22: $4e
	ld a, l                                          ; $5a23: $7d
	cp a                                             ; $5a24: $bf
	add b                                            ; $5a25: $80
	inc a                                            ; $5a26: $3c
	inc bc                                           ; $5a27: $03
	rrca                                             ; $5a28: $0f
	nop                                              ; $5a29: $00
	rrca                                             ; $5a2a: $0f
	ld bc, $030f                                     ; $5a2b: $01 $0f $03
	ld e, $01                                        ; $5a2e: $1e $01
	rra                                              ; $5a30: $1f
	ret nz                                           ; $5a31: $c0

	ret nz                                           ; $5a32: $c0

	jr nz, @-$1e                                     ; $5a33: $20 $e0

	db $10                                           ; $5a35: $10
	ldh a, [$9c]                                     ; $5a36: $f0 $9c
	db $fc                                           ; $5a38: $fc
	jp z, $7ffe                                      ; $5a39: $ca $fe $7f

	rst $38                                          ; $5a3c: $ff
	rst AddAOntoHL                                          ; $5a3d: $ef
	ldh a, [$bc]                                     ; $5a3e: $f0 $bc
	jp $ff3f                                         ; $5a40: $c3 $3f $ff


	db $fc                                           ; $5a43: $fc
	rst $38                                          ; $5a44: $ff
	sub e                                            ; $5a45: $93
	add [hl]                                         ; $5a46: $86
	rst $38                                          ; $5a47: $ff
	rrca                                             ; $5a48: $0f
	pop af                                           ; $5a49: $f1
	ld hl, sp-$01                                    ; $5a4a: $f8 $ff
	sbc [hl]                                         ; $5a4c: $9e
	rst $38                                          ; $5a4d: $ff
	ld e, c                                          ; $5a4e: $59
	rst AddAOntoHL                                          ; $5a4f: $ef
	sbc $6d                                          ; $5a50: $de $6d
	ldh [$c1], a                                     ; $5a52: $e0 $c1
	add b                                            ; $5a54: $80
	rst SubAFromDE                                          ; $5a55: $df
	ldh [$a7], a                                     ; $5a56: $e0 $a7
	ld a, b                                          ; $5a58: $78
	sub d                                            ; $5a59: $92
	ld a, l                                          ; $5a5a: $7d
	sbc [hl]                                         ; $5a5b: $9e
	ld sp, hl                                        ; $5a5c: $f9
	or a                                             ; $5a5d: $b7

jr_06f_5a5e:
	ld hl, sp-$49                                    ; $5a5e: $f8 $b7
	ld hl, sp+$77                                    ; $5a60: $f8 $77
	ld hl, sp+$5f                                    ; $5a62: $f8 $5f
	ld hl, sp+$4b                                    ; $5a64: $f8 $4b
	db $fc                                           ; $5a66: $fc
	ld b, h                                          ; $5a67: $44
	rst $38                                          ; $5a68: $ff
	add e                                            ; $5a69: $83
	rst $38                                          ; $5a6a: $ff
	adc a                                            ; $5a6b: $8f
	db $f4                                           ; $5a6c: $f4
	sbc a                                            ; $5a6d: $9f
	push hl                                          ; $5a6e: $e5
	db $db                                           ; $5a6f: $db
	ld h, [hl]                                       ; $5a70: $66
	db $fd                                           ; $5a71: $fd
	and e                                            ; $5a72: $a3
	db $ec                                           ; $5a73: $ec
	sbc [hl]                                         ; $5a74: $9e
	ld [hl], e                                       ; $5a75: $73
	rst FarCall                                          ; $5a76: $f7
	rst SubAFromDE                                          ; $5a77: $df
	add b                                            ; $5a78: $80
	add l                                            ; $5a79: $85
	ld h, b                                          ; $5a7a: $60
	ldh [rAUD2LOW], a                                ; $5a7b: $e0 $18
	ld hl, sp-$20                                    ; $5a7d: $f8 $e0
	ldh [$a0], a                                     ; $5a7f: $e0 $a0
	ldh [hDisp1_SCY], a                                     ; $5a81: $e0 $90
	ldh a, [hDisp1_SCY]                                     ; $5a83: $f0 $90
	ldh a, [$50]                                     ; $5a85: $f0 $50
	ldh a, [$30]                                     ; $5a87: $f0 $30
	ldh a, [hDisp0_WY]                                     ; $5a89: $f0 $88
	ld hl, sp-$1c                                    ; $5a8b: $f8 $e4
	db $fc                                           ; $5a8d: $fc
	cp [hl]                                          ; $5a8e: $be
	cp $93                                           ; $5a8f: $fe $93
	di                                               ; $5a91: $f3
	ret nc                                           ; $5a92: $d0

	or b                                             ; $5a93: $b0
	ld [hl], a                                       ; $5a94: $77
	cp $98                                           ; $5a95: $fe $98
	ld h, b                                          ; $5a97: $60
	and b                                            ; $5a98: $a0
	and b                                            ; $5a99: $a0
	ld h, b                                          ; $5a9a: $60
	ldh [$60], a                                     ; $5a9b: $e0 $60
	ld b, b                                          ; $5a9d: $40
	sbc $c0                                          ; $5a9e: $de $c0
	rst SubAFromDE                                          ; $5aa0: $df
	add b                                            ; $5aa1: $80
	ld a, e                                          ; $5aa2: $7b
	ld a, [$fd7f]                                    ; $5aa3: $fa $7f $fd
	sbc [hl]                                         ; $5aa6: $9e
	ld b, b                                          ; $5aa7: $40
	db $dd                                           ; $5aa8: $dd
	add b                                            ; $5aa9: $80
	ld l, a                                          ; $5aaa: $6f
	add $db                                          ; $5aab: $c6 $db
	add b                                            ; $5aad: $80
	ld a, a                                          ; $5aae: $7f
	db $ed                                           ; $5aaf: $ed
	ld a, a                                          ; $5ab0: $7f
	sbc $80                                          ; $5ab1: $de $80
	ret nc                                           ; $5ab3: $d0

	jr nc, jr_06f_5a5e                               ; $5ab4: $30 $a8

	ret c                                            ; $5ab6: $d8

	call nc, $da6c                                   ; $5ab7: $d4 $6c $da
	ld h, $fa                                        ; $5aba: $26 $fa
	ld b, $72                                        ; $5abc: $06 $72
	adc [hl]                                         ; $5abe: $8e
	ldh [c], a                                       ; $5abf: $e2
	ld e, $c4                                        ; $5ac0: $1e $c4
	inc a                                            ; $5ac2: $3c
	db $fc                                           ; $5ac3: $fc
	inc b                                            ; $5ac4: $04
	ld hl, sp+$08                                    ; $5ac5: $f8 $08
	ld hl, sp+$08                                    ; $5ac7: $f8 $08
	db $fc                                           ; $5ac9: $fc
	inc c                                            ; $5aca: $0c
	ldh a, [c]                                       ; $5acb: $f2
	ld e, $f9                                        ; $5acc: $1e $f9
	rra                                              ; $5ace: $1f
	ldh a, [$1f]                                     ; $5acf: $f0 $1f
	ldh [$9a], a                                     ; $5ad1: $e0 $9a
	ccf                                              ; $5ad3: $3f
	ret nz                                           ; $5ad4: $c0

	ld a, a                                          ; $5ad5: $7f
	add b                                            ; $5ad6: $80
	rst $38                                          ; $5ad7: $ff
	cp a                                             ; $5ad8: $bf
	rst $38                                          ; $5ad9: $ff
	rst $38                                          ; $5ada: $ff
	ld a, a                                          ; $5adb: $7f
	ld a, [$fe7f]                                    ; $5adc: $fa $7f $fe
	ld a, h                                          ; $5adf: $7c
	and e                                            ; $5ae0: $a3
	sbc [hl]                                         ; $5ae1: $9e
	ldh [rHDMA1], a                                  ; $5ae2: $e0 $51
	or b                                             ; $5ae4: $b0
	ld [hl], a                                       ; $5ae5: $77
	cp [hl]                                          ; $5ae6: $be
	ld a, [hl]                                       ; $5ae7: $7e
	ldh a, [c]                                       ; $5ae8: $f2
	ld a, a                                          ; $5ae9: $7f
	ld a, h                                          ; $5aea: $7c
	sub e                                            ; $5aeb: $93
	inc d                                            ; $5aec: $14
	db $fc                                           ; $5aed: $fc
	inc d                                            ; $5aee: $14
	db $fc                                           ; $5aef: $fc
	ld [de], a                                       ; $5af0: $12
	cp $12                                           ; $5af1: $fe $12
	cp $22                                           ; $5af3: $fe $22
	cp $42                                           ; $5af5: $fe $42
	cp $21                                           ; $5af7: $fe $21
	nop                                              ; $5af9: $00
	rst SubAFromDE                                          ; $5afa: $df
	xor d                                            ; $5afb: $aa
	sub b                                            ; $5afc: $90
	call z, $aaaa                                    ; $5afd: $cc $aa $aa
	ld [hl+], a                                      ; $5b00: $22
	xor d                                            ; $5b01: $aa
	call z, $55dd                                    ; $5b02: $cc $dd $55
	ld [hl+], a                                      ; $5b05: $22
	xor d                                            ; $5b06: $aa
	ld b, h                                          ; $5b07: $44
	db $dd                                           ; $5b08: $dd
	jr nz, @-$65                                     ; $5b09: $20 $99

	sbc c                                            ; $5b0b: $99
	ld e, a                                          ; $5b0c: $5f
	ei                                               ; $5b0d: $fb
	sbc l                                            ; $5b0e: $9d
	inc sp                                           ; $5b0f: $33
	xor d                                            ; $5b10: $aa
	sbc $99                                          ; $5b11: $de $99
	rst SubAFromDE                                          ; $5b13: $df
	xor d                                            ; $5b14: $aa
	sbc h                                            ; $5b15: $9c
	sbc c                                            ; $5b16: $99
	cp e                                             ; $5b17: $bb
	cp e                                             ; $5b18: $bb
	cp h                                             ; $5b19: $bc
	ld bc, $4b80                                     ; $5b1a: $01 $80 $4b
	cp $54                                           ; $5b1d: $fe $54
	rst $38                                          ; $5b1f: $ff
	xor l                                            ; $5b20: $ad
	ld [hl], a                                       ; $5b21: $77
	cp l                                             ; $5b22: $bd
	ld l, a                                          ; $5b23: $6f
	db $dd                                           ; $5b24: $dd
	ld l, a                                          ; $5b25: $6f
	ld [hl], a                                       ; $5b26: $77
	sbc $ff                                          ; $5b27: $de $ff
	ld d, d                                          ; $5b29: $52
	db $db                                           ; $5b2a: $db
	ld [hl], d                                       ; $5b2b: $72
	ld e, e                                          ; $5b2c: $5b
	di                                               ; $5b2d: $f3
	ld a, e                                          ; $5b2e: $7b
	ldh a, [$a9]                                     ; $5b2f: $f0 $a9
	ld hl, sp-$45                                    ; $5b31: $f8 $bb
	pop hl                                           ; $5b33: $e1
	rst SubAFromDE                                          ; $5b34: $df
	ld [hl], e                                       ; $5b35: $73
	ld e, a                                          ; $5b36: $5f
	rst FarCall                                          ; $5b37: $f7
	ld sp, hl                                        ; $5b38: $f9
	db $d3                                           ; $5b39: $d3
	ld [hl], b                                       ; $5b3a: $70
	add b                                            ; $5b3b: $80
	ret c                                            ; $5b3c: $d8

	jp hl                                            ; $5b3d: $e9


	ret c                                            ; $5b3e: $d8

	add sp, $58                                      ; $5b3f: $e8 $58
	call c, Call_06f_58e8                            ; $5b41: $dc $e8 $58
	db $ec                                           ; $5b44: $ec
	ld a, d                                          ; $5b45: $7a
	db $ec                                           ; $5b46: $ec
	db $ed                                           ; $5b47: $ed
	cp $6e                                           ; $5b48: $fe $6e
	ld a, a                                          ; $5b4a: $7f
	ld l, a                                          ; $5b4b: $6f
	ld a, a                                          ; $5b4c: $7f
	xor d                                            ; $5b4d: $aa
	rst $38                                          ; $5b4e: $ff
	ld l, $ff                                        ; $5b4f: $2e $ff
	ld a, $fb                                        ; $5b51: $3e $fb
	rst $38                                          ; $5b53: $ff
	ld [$eabb], a                                    ; $5b54: $ea $bb $ea
	ld sp, $30e1                                     ; $5b57: $31 $e1 $30
	ldh [$7f], a                                     ; $5b5a: $e0 $7f
	cp $80                                           ; $5b5c: $fe $80
	ld l, h                                          ; $5b5e: $6c
	db $fd                                           ; $5b5f: $fd
	rst $38                                          ; $5b60: $ff

jr_06f_5b61:
	or l                                             ; $5b61: $b5
	db $fd                                           ; $5b62: $fd
	rla                                              ; $5b63: $17
	and a                                            ; $5b64: $a7
	inc bc                                           ; $5b65: $03
	inc bc                                           ; $5b66: $03
	ld bc, $0001                                     ; $5b67: $01 $01 $00
	ldh [rP1], a                                     ; $5b6a: $e0 $00
	ld a, h                                          ; $5b6c: $7c
	ld hl, sp-$42                                    ; $5b6d: $f8 $be
	ret nz                                           ; $5b6f: $c0

	adc $30                                          ; $5b70: $ce $30
	ld a, d                                          ; $5b72: $7a

Jump_06f_5b73:
	db $fc                                           ; $5b73: $fc
	sub h                                            ; $5b74: $94
	sbc [hl]                                         ; $5b75: $9e
	ld a, [hl-]                                      ; $5b76: $3a
	jr c, jr_06f_5b61                                ; $5b77: $38 $e8

	ld hl, sp+$68                                    ; $5b79: $f8 $68
	ld hl, sp-$6f                                    ; $5b7b: $f8 $91
	sbc e                                            ; $5b7d: $9b
	ret c                                            ; $5b7e: $d8

	sub e                                            ; $5b7f: $93
	ld h, b                                          ; $5b80: $60
	dec b                                            ; $5b81: $05
	ld hl, sp-$76                                    ; $5b82: $f8 $8a
	add b                                            ; $5b84: $80
	nop                                              ; $5b85: $00
	ld b, b                                          ; $5b86: $40
	add b                                            ; $5b87: $80
	ldh [$c0], a                                     ; $5b88: $e0 $c0
	ld a, b                                          ; $5b8a: $78
	pop af                                           ; $5b8b: $f1
	db $fd                                           ; $5b8c: $fd
	rra                                              ; $5b8d: $1f
	adc d                                            ; $5b8e: $8a
	rlca                                             ; $5b8f: $07
	ld [bc], a                                       ; $5b90: $02

jr_06f_5b91:
	ld [bc], a                                       ; $5b91: $02
	ld b, $84                                        ; $5b92: $06 $84
	call nz, Call_06f_6ae4                           ; $5b94: $c4 $e4 $6a
	inc a                                            ; $5b97: $3c
	add b                                            ; $5b98: $80
	ld a, e                                          ; $5b99: $7b
	ld [$e87b], a                                    ; $5b9a: $ea $7b $e8
	ld a, e                                          ; $5b9d: $7b
	cp $92                                           ; $5b9e: $fe $92
	and c                                            ; $5ba0: $a1
	add b                                            ; $5ba1: $80
	ld bc, $0300                                     ; $5ba2: $01 $00 $03
	nop                                              ; $5ba5: $00
	rlca                                             ; $5ba6: $07
	nop                                              ; $5ba7: $00
	ld b, $01                                        ; $5ba8: $06 $01
	rlca                                             ; $5baa: $07
	ld bc, $7b03                                     ; $5bab: $01 $03 $7b
	cp $80                                           ; $5bae: $fe $80
	add hl, sp                                       ; $5bb0: $39
	ld bc, $01fc                                     ; $5bb1: $01 $fc $01
	xor d                                            ; $5bb4: $aa
	nop                                              ; $5bb5: $00
	dec l                                            ; $5bb6: $2d
	ld a, [hl]                                       ; $5bb7: $7e
	ld l, e                                          ; $5bb8: $6b
	ld a, $7b                                        ; $5bb9: $3e $7b
	ld a, $7f                                        ; $5bbb: $3e $7f
	ld [hl-], a                                      ; $5bbd: $32
	cp $63                                           ; $5bbe: $fe $63
	rst AddAOntoHL                                          ; $5bc0: $ef
	di                                               ; $5bc1: $f3
	dec e                                            ; $5bc2: $1d
	ei                                               ; $5bc3: $fb
	db $fd                                           ; $5bc4: $fd
	inc bc                                           ; $5bc5: $03
	rra                                              ; $5bc6: $1f
	pop hl                                           ; $5bc7: $e1
	rst $38                                          ; $5bc8: $ff
	pop af                                           ; $5bc9: $f1
	cp l                                             ; $5bca: $bd
	ei                                               ; $5bcb: $fb
	dec l                                            ; $5bcc: $2d
	ccf                                              ; $5bcd: $3f
	xor $80                                          ; $5bce: $ee $80
	db $eb                                           ; $5bd0: $eb
	ld c, [hl]                                       ; $5bd1: $4e
	db $e3                                           ; $5bd2: $e3
	xor d                                            ; $5bd3: $aa
	or a                                             ; $5bd4: $b7
	dec sp                                           ; $5bd5: $3b
	add $f7                                          ; $5bd6: $c6 $f7
	rrca                                             ; $5bd8: $0f
	rst FarCall                                          ; $5bd9: $f7
	rrca                                             ; $5bda: $0f
	push hl                                          ; $5bdb: $e5
	rra                                              ; $5bdc: $1f
	xor $1f                                          ; $5bdd: $ee $1f
	jp z, $913b                                      ; $5bdf: $ca $3b $91

	ld [hl], c                                       ; $5be2: $71
	sub e                                            ; $5be3: $93
	ld [hl], e                                       ; $5be4: $73
	dec h                                            ; $5be5: $25
	and $4f                                          ; $5be6: $e6 $4f
	rst GetHLinHL                                          ; $5be8: $cf
	adc e                                            ; $5be9: $8b
	adc h                                            ; $5bea: $8c
	sub l                                            ; $5beb: $95
	sbc d                                            ; $5bec: $9a
	ld a, [hl]                                       ; $5bed: $7e
	rst $38                                          ; $5bee: $ff
	sub a                                            ; $5bef: $97
	ld h, e                                          ; $5bf0: $63
	rst $38                                          ; $5bf1: $ff
	ld e, a                                          ; $5bf2: $5f
	ldh [$fb], a                                     ; $5bf3: $e0 $fb
	db $fc                                           ; $5bf5: $fc
	ld e, h                                          ; $5bf6: $5c
	rst SubAFromBC                                          ; $5bf7: $e7
	dec hl                                           ; $5bf8: $2b
	jr nz, jr_06f_5b91                               ; $5bf9: $20 $96

	ldh [$de], a                                     ; $5bfb: $e0 $de
	ld [hl], c                                       ; $5bfd: $71
	ld e, l                                          ; $5bfe: $5d
	di                                               ; $5bff: $f3
	rst $38                                          ; $5c00: $ff
	rst SubAFromHL                                          ; $5c01: $d7
	ld [hl], b                                       ; $5c02: $70
	ret c                                            ; $5c03: $d8

	ccf                                              ; $5c04: $3f
	ld b, b                                          ; $5c05: $40
	sub a                                            ; $5c06: $97
	cp $00                                           ; $5c07: $fe $00
	cp $00                                           ; $5c09: $fe $00
	halt                                             ; $5c0b: $76
	ld hl, sp-$64                                    ; $5c0c: $f8 $9c
	sbc [hl]                                         ; $5c0e: $9e
	inc bc                                           ; $5c0f: $03
	ld b, b                                          ; $5c10: $40
	dec hl                                           ; $5c11: $2b
	ld b, b                                          ; $5c12: $40
	ld [hl], a                                       ; $5c13: $77
	ld a, $1f                                        ; $5c14: $3e $1f
	ld b, b                                          ; $5c16: $40
	sub l                                            ; $5c17: $95
	rst $38                                          ; $5c18: $ff
	ld bc, $e11f                                     ; $5c19: $01 $1f $e1
	db $fd                                           ; $5c1c: $fd
	di                                               ; $5c1d: $f3
	xor l                                            ; $5c1e: $ad
	cp e                                             ; $5c1f: $bb
	xor $ef                                          ; $5c20: $ee $ef
	ld l, a                                          ; $5c22: $6f
	ld b, b                                          ; $5c23: $40
	ccf                                              ; $5c24: $3f
	ld h, b                                          ; $5c25: $60
	sub h                                            ; $5c26: $94
	ld a, b                                          ; $5c27: $78
	ldh a, [$a8]                                     ; $5c28: $f0 $a8
	ld hl, sp-$48                                    ; $5c2a: $f8 $b8
	ldh [$d9], a                                     ; $5c2c: $e0 $d9
	ld [hl], b                                       ; $5c2e: $70
	ld e, [hl]                                       ; $5c2f: $5e
	pop af                                           ; $5c30: $f1
	ei                                               ; $5c31: $fb
	dec hl                                           ; $5c32: $2b
	ld h, b                                          ; $5c33: $60
	sbc h                                            ; $5c34: $9c
	ld a, [hl]                                       ; $5c35: $7e
	nop                                              ; $5c36: $00
	ld a, $7b                                        ; $5c37: $3e $7b
	ld e, [hl]                                       ; $5c39: $5e
	sbc e                                            ; $5c3a: $9b
	db $fc                                           ; $5c3b: $fc
	cp $28                                           ; $5c3c: $fe $28
	cp b                                             ; $5c3e: $b8
	inc bc                                           ; $5c3f: $03
	ld h, b                                          ; $5c40: $60
	inc sp                                           ; $5c41: $33
	ld h, b                                          ; $5c42: $60
	ld a, a                                          ; $5c43: $7f
	cp $7f                                           ; $5c44: $fe $7f
	ld hl, sp-$65                                    ; $5c46: $f8 $9b
	ld [bc], a                                       ; $5c48: $02
	ld bc, $033b                                     ; $5c49: $01 $3b $03
	cpl                                              ; $5c4c: $2f
	ld h, b                                          ; $5c4d: $60
	ld a, a                                          ; $5c4e: $7f
	cp $7f                                           ; $5c4f: $fe $7f
	ld a, [$7d99]                                    ; $5c51: $fa $99 $7d
	db $e3                                           ; $5c54: $e3
	or $fb                                           ; $5c55: $f6 $fb
	ld e, d                                          ; $5c57: $5a
	rst $38                                          ; $5c58: $ff
	cpl                                              ; $5c59: $2f
	ld h, b                                          ; $5c5a: $60
	sbc l                                            ; $5c5b: $9d
	ld a, d                                          ; $5c5c: $7a
	di                                               ; $5c5d: $f3
	ld [hl], a                                       ; $5c5e: $77
	ld h, b                                          ; $5c5f: $60
	sub a                                            ; $5c60: $97
	ret c                                            ; $5c61: $d8

	ld [hl], b                                       ; $5c62: $70
	ld e, b                                          ; $5c63: $58
	ldh a, [$fb]                                     ; $5c64: $f0 $fb
	db $d3                                           ; $5c66: $d3
	ld [hl], b                                       ; $5c67: $70
	reti                                             ; $5c68: $d9


	ld c, a                                          ; $5c69: $4f
	ld h, b                                          ; $5c6a: $60
	sbc e                                            ; $5c6b: $9b
	cp h                                             ; $5c6c: $bc
	ld a, b                                          ; $5c6d: $78
	sbc $e0                                          ; $5c6e: $de $e0
	halt                                             ; $5c70: $76
	ret nz                                           ; $5c71: $c0

	ld a, a                                          ; $5c72: $7f
	ld h, b                                          ; $5c73: $60
	sub a                                            ; $5c74: $97
	ld e, $00                                        ; $5c75: $1e $00
	db $fc                                           ; $5c77: $fc
	nop                                              ; $5c78: $00
	inc e                                            ; $5c79: $1c
	adc h                                            ; $5c7a: $8c
	pop af                                           ; $5c7b: $f1
	ld hl, sp+$03                                    ; $5c7c: $f8 $03
	ld h, b                                          ; $5c7e: $60
	dec hl                                           ; $5c7f: $2b
	ld h, b                                          ; $5c80: $60
	ld a, a                                          ; $5c81: $7f
	cp $47                                           ; $5c82: $fe $47
	ld h, b                                          ; $5c84: $60
	sbc c                                            ; $5c85: $99
	rst SubAFromDE                                          ; $5c86: $df
	db $e3                                           ; $5c87: $e3
	dec a                                            ; $5c88: $3d
	di                                               ; $5c89: $f3
	db $ed                                           ; $5c8a: $ed
	dec de                                           ; $5c8b: $1b
	ld l, a                                          ; $5c8c: $6f
	ld h, b                                          ; $5c8d: $60
	ld a, a                                          ; $5c8e: $7f
	cp $80                                           ; $5c8f: $fe $80
	cp $03                                           ; $5c91: $fe $03
	ld a, $1b                                        ; $5c93: $3e $1b
	ld [$3bf7], a                                    ; $5c95: $ea $f7 $3b
	add $45                                          ; $5c98: $c6 $45
	ld [$1c06], sp                                   ; $5c9a: $08 $06 $1c
	inc e                                            ; $5c9d: $1c
	ld [rRAMG], sp                                   ; $5c9e: $08 $00 $00
	ld h, $44                                        ; $5ca1: $26 $44
	inc e                                            ; $5ca3: $1c
	jr c, jr_06f_5ca6                                ; $5ca4: $38 $00

jr_06f_5ca6:
	nop                                              ; $5ca6: $00
	db $10                                           ; $5ca7: $10
	ld [$0001], sp                                   ; $5ca8: $08 $01 $00
	ld [$bbf1], a                                    ; $5cab: $ea $f1 $bb
	rra                                              ; $5cae: $1f
	ld a, [hl]                                       ; $5caf: $7e
	sub [hl]                                         ; $5cb0: $96
	rrca                                             ; $5cb1: $0f
	cp [hl]                                          ; $5cb2: $be
	ld [hl], e                                       ; $5cb3: $73
	rst AddAOntoHL                                          ; $5cb4: $ef
	ld b, e                                          ; $5cb5: $43
	ld c, a                                          ; $5cb6: $4f
	add h                                            ; $5cb7: $84
	dec b                                            ; $5cb8: $05
	ld [$e067], sp                                   ; $5cb9: $08 $67 $e0
	sbc l                                            ; $5cbc: $9d
	ld a, $7c                                        ; $5cbd: $3e $7c
	rrca                                             ; $5cbf: $0f
	ldh [$9a], a                                     ; $5cc0: $e0 $9a
	ld a, [hl]                                       ; $5cc2: $7e
	ld a, h                                          ; $5cc3: $7c
	inc a                                            ; $5cc4: $3c
	ld a, h                                          ; $5cc5: $7c
	jr jr_06f_5d43                                   ; $5cc6: $18 $7b

	sbc $9e                                          ; $5cc8: $de $9e
	add hl, de                                       ; $5cca: $19
	inc hl                                           ; $5ccb: $23
	ldh [$df], a                                     ; $5ccc: $e0 $df
	ld a, h                                          ; $5cce: $7c
	sbc [hl]                                         ; $5ccf: $9e
	jr c, jr_06f_5d4d                                ; $5cd0: $38 $7b

	sbc $47                                          ; $5cd2: $de $47
	ret nz                                           ; $5cd4: $c0

	push de                                          ; $5cd5: $d5
	ld bc, $4b80                                     ; $5cd6: $01 $80 $4b
	cp $54                                           ; $5cd9: $fe $54
	rst $38                                          ; $5cdb: $ff
	xor l                                            ; $5cdc: $ad
	ld [hl], a                                       ; $5cdd: $77
	cp l                                             ; $5cde: $bd
	ld l, a                                          ; $5cdf: $6f
	db $dd                                           ; $5ce0: $dd
	ld l, a                                          ; $5ce1: $6f
	ld [hl], a                                       ; $5ce2: $77
	sbc $ff                                          ; $5ce3: $de $ff
	ld d, d                                          ; $5ce5: $52
	db $db                                           ; $5ce6: $db
	ld [hl], e                                       ; $5ce7: $73
	ld e, e                                          ; $5ce8: $5b
	ldh a, [c]                                       ; $5ce9: $f2
	ld a, e                                          ; $5cea: $7b
	ldh a, [$a8]                                     ; $5ceb: $f0 $a8
	ld sp, hl                                        ; $5ced: $f9
	cp e                                             ; $5cee: $bb
	pop hl                                           ; $5cef: $e1
	rst SubAFromDE                                          ; $5cf0: $df
	ld [hl], a                                       ; $5cf1: $77
	ld e, l                                          ; $5cf2: $5d
	pop af                                           ; $5cf3: $f1
	ld sp, hl                                        ; $5cf4: $f9
	pop de                                           ; $5cf5: $d1
	ld [hl], c                                       ; $5cf6: $71
	add b                                            ; $5cf7: $80
	reti                                             ; $5cf8: $d9


	add sp, -$28                                     ; $5cf9: $e8 $d8
	jp hl                                            ; $5cfb: $e9


	ld e, b                                          ; $5cfc: $58
	call c, Call_06f_58e8                            ; $5cfd: $dc $e8 $58
	db $ec                                           ; $5d00: $ec
	ld a, d                                          ; $5d01: $7a
	db $ec                                           ; $5d02: $ec
	db $ed                                           ; $5d03: $ed
	cp $6e                                           ; $5d04: $fe $6e
	ld a, a                                          ; $5d06: $7f
	ld l, a                                          ; $5d07: $6f
	ld a, a                                          ; $5d08: $7f
	xor d                                            ; $5d09: $aa
	rst $38                                          ; $5d0a: $ff
	ld l, $ff                                        ; $5d0b: $2e $ff
	ld a, $fb                                        ; $5d0d: $3e $fb
	rst $38                                          ; $5d0f: $ff
	ld [$eabb], a                                    ; $5d10: $ea $bb $ea
	ld sp, $30e1                                     ; $5d13: $31 $e1 $30
	ldh [$7f], a                                     ; $5d16: $e0 $7f
	cp $80                                           ; $5d18: $fe $80
	ld l, h                                          ; $5d1a: $6c
	db $fd                                           ; $5d1b: $fd
	rst $38                                          ; $5d1c: $ff

jr_06f_5d1d:
	or l                                             ; $5d1d: $b5
	db $fd                                           ; $5d1e: $fd
	rla                                              ; $5d1f: $17
	and a                                            ; $5d20: $a7
	inc bc                                           ; $5d21: $03
	inc bc                                           ; $5d22: $03
	ld bc, $0071                                     ; $5d23: $01 $71 $00
	ldh a, [$f8]                                     ; $5d26: $f0 $f8
	ld a, b                                          ; $5d28: $78
	add b                                            ; $5d29: $80
	sbc h                                            ; $5d2a: $9c
	ld h, b                                          ; $5d2b: $60
	halt                                             ; $5d2c: $76
	ld hl, sp-$02                                    ; $5d2d: $f8 $fe
	db $fc                                           ; $5d2f: $fc
	sub h                                            ; $5d30: $94
	sbc d                                            ; $5d31: $9a
	ld a, [hl-]                                      ; $5d32: $3a
	jr c, jr_06f_5d1d                                ; $5d33: $38 $e8

	ld hl, sp+$68                                    ; $5d35: $f8 $68
	ld hl, sp+$70                                    ; $5d37: $f8 $70
	sbc e                                            ; $5d39: $9b
	sbc b                                            ; $5d3a: $98
	ret nc                                           ; $5d3b: $d0

	ret nc                                           ; $5d3c: $d0

	ldh a, [$bb]                                     ; $5d3d: $f0 $bb
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00

jr_06f_5d43:
	add b                                            ; $5d43: $80
	ld b, b                                          ; $5d44: $40
	adc l                                            ; $5d45: $8d
	add b                                            ; $5d46: $80
	ldh [$c0], a                                     ; $5d47: $e0 $c0
	ld a, b                                          ; $5d49: $78
	pop af                                           ; $5d4a: $f1
	db $fd                                           ; $5d4b: $fd
	rra                                              ; $5d4c: $1f

jr_06f_5d4d:
	adc d                                            ; $5d4d: $8a
	rlca                                             ; $5d4e: $07

jr_06f_5d4f:
	ld [bc], a                                       ; $5d4f: $02
	ld [bc], a                                       ; $5d50: $02
	ld b, $84                                        ; $5d51: $06 $84
	call nz, Call_06f_6ae4                           ; $5d53: $c4 $e4 $6a
	inc a                                            ; $5d56: $3c
	add b                                            ; $5d57: $80
	cp h                                             ; $5d58: $bc
	add b                                            ; $5d59: $80
	add b                                            ; $5d5a: $80
	ld b, b                                          ; $5d5b: $40
	ld b, b                                          ; $5d5c: $40
	and c                                            ; $5d5d: $a1
	sbc l                                            ; $5d5e: $9d
	add b                                            ; $5d5f: $80
	ld bc, $03be                                     ; $5d60: $01 $be $03
	rlca                                             ; $5d63: $07
	rlca                                             ; $5d64: $07
	sbc e                                            ; $5d65: $9b
	ld bc, $0107                                     ; $5d66: $01 $07 $01
	inc bc                                           ; $5d69: $03
	ld a, e                                          ; $5d6a: $7b
	cp $df                                           ; $5d6b: $fe $df
	ld bc, $0080                                     ; $5d6d: $01 $80 $00
	ld bc, $0008                                     ; $5d70: $01 $08 $00
	dec l                                            ; $5d73: $2d
	ld a, [hl]                                       ; $5d74: $7e
	ld l, e                                          ; $5d75: $6b
	ld a, $7b                                        ; $5d76: $3e $7b
	ld a, $3f                                        ; $5d78: $3e $3f
	ld [hl], d                                       ; $5d7a: $72

Jump_06f_5d7b:
	ld l, [hl]                                       ; $5d7b: $6e
	di                                               ; $5d7c: $f3
	rst FarCall                                          ; $5d7d: $f7
	ei                                               ; $5d7e: $fb
	ld a, c                                          ; $5d7f: $79
	adc a                                            ; $5d80: $8f
	sbc l                                            ; $5d81: $9d
	ld h, e                                          ; $5d82: $63
	rst $38                                          ; $5d83: $ff
	pop af                                           ; $5d84: $f1
	cp a                                             ; $5d85: $bf
	db $fd                                           ; $5d86: $fd
	add hl, hl                                       ; $5d87: $29
	ccf                                              ; $5d88: $3f
	ld [hl], l                                       ; $5d89: $75
	ld l, e                                          ; $5d8a: $6b
	xor $e3                                          ; $5d8b: $ee $e3
	ld c, [hl]                                       ; $5d8d: $4e
	add b                                            ; $5d8e: $80
	db $e3                                           ; $5d8f: $e3
	cp d                                             ; $5d90: $ba
	and a                                            ; $5d91: $a7
	ld a, e                                          ; $5d92: $7b
	add $f7                                          ; $5d93: $c6 $f7
	rrca                                             ; $5d95: $0f
	rst FarCall                                          ; $5d96: $f7
	rrca                                             ; $5d97: $0f
	push hl                                          ; $5d98: $e5
	rra                                              ; $5d99: $1f
	xor $1f                                          ; $5d9a: $ee $1f
	jp z, $913b                                      ; $5d9c: $ca $3b $91

	ld [hl], c                                       ; $5d9f: $71
	sub e                                            ; $5da0: $93
	ld [hl], e                                       ; $5da1: $73
	dec h                                            ; $5da2: $25
	and $4f                                          ; $5da3: $e6 $4f
	rst GetHLinHL                                          ; $5da5: $cf
	adc e                                            ; $5da6: $8b
	adc h                                            ; $5da7: $8c
	sub l                                            ; $5da8: $95
	sbc d                                            ; $5da9: $9a
	ld a, [hl]                                       ; $5daa: $7e
	rst $38                                          ; $5dab: $ff
	ld h, e                                          ; $5dac: $63
	rst $38                                          ; $5dad: $ff
	sbc c                                            ; $5dae: $99
	ld e, a                                          ; $5daf: $5f
	ldh [$fb], a                                     ; $5db0: $e0 $fb
	db $fc                                           ; $5db2: $fc
	ld e, h                                          ; $5db3: $5c
	rst SubAFromBC                                          ; $5db4: $e7
	scf                                              ; $5db5: $37
	jr nz, jr_06f_5d4f                               ; $5db6: $20 $97

	xor c                                            ; $5db8: $a9
	ld hl, sp-$45                                    ; $5db9: $f8 $bb
	pop hl                                           ; $5dbb: $e1
	db $db                                           ; $5dbc: $db
	ld [hl], a                                       ; $5dbd: $77
	ld e, a                                          ; $5dbe: $5f
	rst FarCall                                          ; $5dbf: $f7
	ld [hl], a                                       ; $5dc0: $77
	jr nz, @+$49                                     ; $5dc1: $20 $47

	ld b, b                                          ; $5dc3: $40
	sbc d                                            ; $5dc4: $9a
	db $fc                                           ; $5dc5: $fc
	nop                                              ; $5dc6: $00
	sbc [hl]                                         ; $5dc7: $9e
	ld h, b                                          ; $5dc8: $60
	or $7b                                           ; $5dc9: $f6 $7b
	ld a, $03                                        ; $5dcb: $3e $03
	ld b, b                                          ; $5dcd: $40
	rra                                              ; $5dce: $1f
	ld b, b                                          ; $5dcf: $40
	ld a, e                                          ; $5dd0: $7b
	ld a, $27                                        ; $5dd1: $3e $27
	ld b, b                                          ; $5dd3: $40
	sub l                                            ; $5dd4: $95
	db $fd                                           ; $5dd5: $fd
	inc bc                                           ; $5dd6: $03
	sbc a                                            ; $5dd7: $9f
	ld h, c                                          ; $5dd8: $61
	rst FarCall                                          ; $5dd9: $f7
	ld sp, hl                                        ; $5dda: $f9
	db $fd                                           ; $5ddb: $fd
	rst $38                                          ; $5ddc: $ff
	dec a                                            ; $5ddd: $3d
	dec hl                                           ; $5dde: $2b
	ld h, a                                          ; $5ddf: $67
	ld b, b                                          ; $5de0: $40
	ccf                                              ; $5de1: $3f
	ld h, b                                          ; $5de2: $60
	sub d                                            ; $5de3: $92
	ld a, b                                          ; $5de4: $78
	ldh a, [$a8]                                     ; $5de5: $f0 $a8
	ld hl, sp-$48                                    ; $5de7: $f8 $b8
	ldh [$d8], a                                     ; $5de9: $e0 $d8
	ld [hl], b                                       ; $5deb: $70
	ld e, c                                          ; $5dec: $59
	ldh a, [$fb]                                     ; $5ded: $f0 $fb
	rst SubAFromHL                                          ; $5def: $d7
	ld [hl], d                                       ; $5df0: $72
	dec sp                                           ; $5df1: $3b
	ld h, b                                          ; $5df2: $60
	sbc [hl]                                         ; $5df3: $9e
	cp $bd                                           ; $5df4: $fe $bd
	ld a, [hl]                                       ; $5df6: $7e
	ld a, $3e                                        ; $5df7: $3e $3e
	db $f4                                           ; $5df9: $f4
	sbc b                                            ; $5dfa: $98
	ld hl, sp-$14                                    ; $5dfb: $f8 $ec
	xor $b4                                          ; $5dfd: $ee $b4
	ld hl, sp-$10                                    ; $5dff: $f8 $f0
	ld h, b                                          ; $5e01: $60
	inc bc                                           ; $5e02: $03
	ld h, b                                          ; $5e03: $60
	ccf                                              ; $5e04: $3f
	ld h, b                                          ; $5e05: $60
	cp [hl]                                          ; $5e06: $be
	inc bc                                           ; $5e07: $03
	inc bc                                           ; $5e08: $03
	ld bc, $fd7b                                     ; $5e09: $01 $7b $fd
	ccf                                              ; $5e0c: $3f
	ld h, b                                          ; $5e0d: $60
	adc a                                            ; $5e0e: $8f
	rst $38                                          ; $5e0f: $ff
	ld bc, $01ff                                     ; $5e10: $01 $ff $01
	db $fd                                           ; $5e13: $fd
	inc bc                                           ; $5e14: $03
	db $fd                                           ; $5e15: $fd
	inc bc                                           ; $5e16: $03
	xor $f3                                          ; $5e17: $ee $f3
	cp [hl]                                          ; $5e19: $be
	cp e                                             ; $5e1a: $bb
	jp c, Jump_06f_7bf7                              ; $5e1b: $da $f7 $7b

	and $4b                                          ; $5e1e: $e6 $4b
	ld h, b                                          ; $5e20: $60
	sbc d                                            ; $5e21: $9a
	ld [hl], d                                       ; $5e22: $72
	ld e, e                                          ; $5e23: $5b
	di                                               ; $5e24: $f3
	ld a, d                                          ; $5e25: $7a
	di                                               ; $5e26: $f3
	ld l, a                                          ; $5e27: $6f
	ld h, b                                          ; $5e28: $60
	sbc c                                            ; $5e29: $99
	ld e, b                                          ; $5e2a: $58
	ldh a, [$f8]                                     ; $5e2b: $f0 $f8
	ret nc                                           ; $5e2d: $d0

	ld [hl], c                                       ; $5e2e: $71
	db $db                                           ; $5e2f: $db
	ld d, a                                          ; $5e30: $57
	ld h, b                                          ; $5e31: $60
	sbc b                                            ; $5e32: $98
	ld hl, sp+$00                                    ; $5e33: $f8 $00
	ld hl, sp-$10                                    ; $5e35: $f8 $f0
	ld [hl], h                                       ; $5e37: $74
	adc b                                            ; $5e38: $88
	cp $bb                                           ; $5e39: $fe $bb
	cp $7e                                           ; $5e3b: $fe $7e
	ld a, [hl]                                       ; $5e3d: $7e
	ld e, $7c                                        ; $5e3e: $1e $7c
	inc e                                            ; $5e40: $1c
	sbc h                                            ; $5e41: $9c
	adc [hl]                                         ; $5e42: $8e
	ldh a, [$f8]                                     ; $5e43: $f0 $f8
	inc bc                                           ; $5e45: $03
	ld h, b                                          ; $5e46: $60
	ld e, e                                          ; $5e47: $5b
	ld h, b                                          ; $5e48: $60
	sbc l                                            ; $5e49: $9d
	ld [bc], a                                       ; $5e4a: $02
	ld bc, $605b                                     ; $5e4b: $01 $5b $60
	ld a, e                                          ; $5e4e: $7b
	ld e, [hl]                                       ; $5e4f: $5e
	sbc [hl]                                         ; $5e50: $9e
	add hl, bc                                       ; $5e51: $09
	ld e, e                                          ; $5e52: $5b
	ld h, b                                          ; $5e53: $60
	sub a                                            ; $5e54: $97
	rra                                              ; $5e55: $1f
	db $e3                                           ; $5e56: $e3
	push af                                          ; $5e57: $f5
	ei                                               ; $5e58: $fb
	jp hl                                            ; $5e59: $e9


	rra                                              ; $5e5a: $1f
	rst $38                                          ; $5e5b: $ff
	dec b                                            ; $5e5c: $05
	ld l, a                                          ; $5e5d: $6f

jr_06f_5e5e:
	ld h, b                                          ; $5e5e: $60
	sbc [hl]                                         ; $5e5f: $9e
	cp $7b                                           ; $5e60: $fe $7b
	cp $80                                           ; $5e62: $fe $80
	ld [de], a                                       ; $5e64: $12
	ccf                                              ; $5e65: $3f
	ei                                               ; $5e66: $fb
	and $04                                          ; $5e67: $e6 $04
	ld [$1c06], sp                                   ; $5e69: $08 $06 $1c
	inc e                                            ; $5e6c: $1c
	ld [rRAMG], sp                                   ; $5e6d: $08 $00 $00
	sbc $66                                          ; $5e70: $de $66
	cp $7c                                           ; $5e72: $fe $7c
	inc a                                            ; $5e74: $3c
	ld a, h                                          ; $5e75: $7c
	inc a                                            ; $5e76: $3c
	jr c, jr_06f_5e7a                                ; $5e77: $38 $01

	nop                                              ; $5e79: $00

jr_06f_5e7a:
	ld [$bbf1], a                                    ; $5e7a: $ea $f1 $bb
	rra                                              ; $5e7d: $1f
	ld a, [hl]                                       ; $5e7e: $7e
	rrca                                             ; $5e7f: $0f
	cp [hl]                                          ; $5e80: $be
	ld [hl], e                                       ; $5e81: $73
	rst AddAOntoHL                                          ; $5e82: $ef
	sbc d                                            ; $5e83: $9a
	ld b, e                                          ; $5e84: $43
	ld c, a                                          ; $5e85: $4f
	add h                                            ; $5e86: $84
	dec b                                            ; $5e87: $05
	ld [$e05f], sp                                   ; $5e88: $08 $5f $e0
	sbc d                                            ; $5e8b: $9a
	ld a, $7c                                        ; $5e8c: $3e $7c
	jr jr_06f_5ecc                                   ; $5e8e: $18 $3c

	nop                                              ; $5e90: $00
	cp a                                             ; $5e91: $bf
	add hl, de                                       ; $5e92: $19
	ld [$e033], a                                    ; $5e93: $ea $33 $e0
	sbc h                                            ; $5e96: $9c
	xor $76                                          ; $5e97: $ee $76
	ld a, b                                          ; $5e99: $78
	ld a, e                                          ; $5e9a: $7b
	ldh [c], a                                       ; $5e9b: $e2
	sbc [hl]                                         ; $5e9c: $9e
	jr jr_06f_5e5e                                   ; $5e9d: $18 $bf

	ld bc, $33ea                                     ; $5e9f: $01 $ea $33
	ldh [$9b], a                                     ; $5ea2: $e0 $9b
	cp $66                                           ; $5ea4: $fe $66
	ld e, h                                          ; $5ea6: $5c
	jr c, jr_06f_5ee0                                ; $5ea7: $38 $37

	ldh [$de], a                                     ; $5ea9: $e0 $de
	ld bc, $4b80                                     ; $5eab: $01 $80 $4b
	cp $54                                           ; $5eae: $fe $54
	rst $38                                          ; $5eb0: $ff
	xor l                                            ; $5eb1: $ad
	ld [hl], a                                       ; $5eb2: $77
	cp l                                             ; $5eb3: $bd
	ld l, a                                          ; $5eb4: $6f
	db $dd                                           ; $5eb5: $dd
	ld l, a                                          ; $5eb6: $6f
	ld [hl], a                                       ; $5eb7: $77
	sbc $ff                                          ; $5eb8: $de $ff
	ld d, d                                          ; $5eba: $52
	db $db                                           ; $5ebb: $db
	ld [hl], e                                       ; $5ebc: $73
	ld e, e                                          ; $5ebd: $5b
	ldh a, [c]                                       ; $5ebe: $f2
	ld a, e                                          ; $5ebf: $7b
	ldh a, [$a8]                                     ; $5ec0: $f0 $a8
	ld sp, hl                                        ; $5ec2: $f9
	cp e                                             ; $5ec3: $bb
	pop hl                                           ; $5ec4: $e1
	db $dd                                           ; $5ec5: $dd
	ld [hl], e                                       ; $5ec6: $73
	ld e, a                                          ; $5ec7: $5f
	rst FarCall                                          ; $5ec8: $f7
	ld sp, hl                                        ; $5ec9: $f9
	pop de                                           ; $5eca: $d1
	ld [hl], c                                       ; $5ecb: $71

jr_06f_5ecc:
	add b                                            ; $5ecc: $80
	reti                                             ; $5ecd: $d9


	add sp, -$28                                     ; $5ece: $e8 $d8
	jp hl                                            ; $5ed0: $e9


	ld e, b                                          ; $5ed1: $58
	call c, Call_06f_58e8                            ; $5ed2: $dc $e8 $58
	db $ec                                           ; $5ed5: $ec
	ld a, d                                          ; $5ed6: $7a
	db $ec                                           ; $5ed7: $ec
	db $ed                                           ; $5ed8: $ed
	cp $6e                                           ; $5ed9: $fe $6e
	ld a, a                                          ; $5edb: $7f
	ld l, a                                          ; $5edc: $6f
	ld a, a                                          ; $5edd: $7f
	xor d                                            ; $5ede: $aa
	rst $38                                          ; $5edf: $ff

jr_06f_5ee0:
	ld l, $ff                                        ; $5ee0: $2e $ff
	ld a, $fb                                        ; $5ee2: $3e $fb
	rst $38                                          ; $5ee4: $ff
	ld [$eabb], a                                    ; $5ee5: $ea $bb $ea
	ld sp, $30e1                                     ; $5ee8: $31 $e1 $30
	ldh [$7f], a                                     ; $5eeb: $e0 $7f
	cp $80                                           ; $5eed: $fe $80
	ld l, h                                          ; $5eef: $6c
	db $fd                                           ; $5ef0: $fd
	rst $38                                          ; $5ef1: $ff

jr_06f_5ef2:
	or l                                             ; $5ef2: $b5
	db $fd                                           ; $5ef3: $fd
	rla                                              ; $5ef4: $17
	and a                                            ; $5ef5: $a7
	inc bc                                           ; $5ef6: $03
	inc bc                                           ; $5ef7: $03
	ld bc, $0071                                     ; $5ef8: $01 $71 $00
	ld [hl], b                                       ; $5efb: $70
	ld hl, sp-$48                                    ; $5efc: $f8 $b8
	ret nz                                           ; $5efe: $c0

	db $fc                                           ; $5eff: $fc
	nop                                              ; $5f00: $00
	halt                                             ; $5f01: $76
	ld hl, sp-$02                                    ; $5f02: $f8 $fe
	db $fc                                           ; $5f04: $fc
	sub h                                            ; $5f05: $94
	sbc d                                            ; $5f06: $9a
	ld a, [hl-]                                      ; $5f07: $3a
	jr c, jr_06f_5ef2                                ; $5f08: $38 $e8

	ld hl, sp+$68                                    ; $5f0a: $f8 $68
	ld hl, sp+$70                                    ; $5f0c: $f8 $70
	sbc e                                            ; $5f0e: $9b
	sbc b                                            ; $5f0f: $98
	ret nc                                           ; $5f10: $d0

	ret nc                                           ; $5f11: $d0

	ldh a, [$bb]                                     ; $5f12: $f0 $bb
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	add b                                            ; $5f18: $80
	ld b, b                                          ; $5f19: $40
	adc l                                            ; $5f1a: $8d
	add b                                            ; $5f1b: $80
	ldh [$c0], a                                     ; $5f1c: $e0 $c0
	ld a, b                                          ; $5f1e: $78
	pop af                                           ; $5f1f: $f1
	db $fd                                           ; $5f20: $fd
	rra                                              ; $5f21: $1f
	adc d                                            ; $5f22: $8a
	rlca                                             ; $5f23: $07
	ld [bc], a                                       ; $5f24: $02
	ld [bc], a                                       ; $5f25: $02
	ld b, $84                                        ; $5f26: $06 $84
	call nz, Call_06f_6ae4                           ; $5f28: $c4 $e4 $6a
	inc a                                            ; $5f2b: $3c
	add b                                            ; $5f2c: $80
	cp h                                             ; $5f2d: $bc
	add b                                            ; $5f2e: $80
	add b                                            ; $5f2f: $80
	ld b, b                                          ; $5f30: $40
	ld b, b                                          ; $5f31: $40
	and c                                            ; $5f32: $a1
	sbc l                                            ; $5f33: $9d
	add b                                            ; $5f34: $80
	ld bc, $03be                                     ; $5f35: $01 $be $03
	rlca                                             ; $5f38: $07
	rlca                                             ; $5f39: $07
	sbc e                                            ; $5f3a: $9b
	ld bc, $0107                                     ; $5f3b: $01 $07 $01
	inc bc                                           ; $5f3e: $03
	ld a, e                                          ; $5f3f: $7b
	cp $df                                           ; $5f40: $fe $df
	ld bc, $0080                                     ; $5f42: $01 $80 $00
	ld bc, $0008                                     ; $5f45: $01 $08 $00
	dec l                                            ; $5f48: $2d
	ld a, [hl]                                       ; $5f49: $7e
	ld l, e                                          ; $5f4a: $6b
	ld a, $7b                                        ; $5f4b: $3e $7b
	ld a, $3f                                        ; $5f4d: $3e $3f
	ld [hl], d                                       ; $5f4f: $72
	ld l, [hl]                                       ; $5f50: $6e
	di                                               ; $5f51: $f3
	rst $38                                          ; $5f52: $ff
	ei                                               ; $5f53: $fb
	dec a                                            ; $5f54: $3d
	jp $03fd                                         ; $5f55: $c3 $fd $03


	rst AddAOntoHL                                          ; $5f58: $ef
	pop af                                           ; $5f59: $f1
	or a                                             ; $5f5a: $b7
	ld sp, hl                                        ; $5f5b: $f9
	dec a                                            ; $5f5c: $3d
	ccf                                              ; $5f5d: $3f
	ld l, l                                          ; $5f5e: $6d
	ld a, e                                          ; $5f5f: $7b
	and $eb                                          ; $5f60: $e6 $eb
	ld c, [hl]                                       ; $5f62: $4e
	add b                                            ; $5f63: $80
	db $e3                                           ; $5f64: $e3
	cp d                                             ; $5f65: $ba
	and a                                            ; $5f66: $a7
	ld a, e                                          ; $5f67: $7b
	add $f7                                          ; $5f68: $c6 $f7
	rrca                                             ; $5f6a: $0f
	rst FarCall                                          ; $5f6b: $f7
	rrca                                             ; $5f6c: $0f
	push hl                                          ; $5f6d: $e5
	rra                                              ; $5f6e: $1f
	xor $1f                                          ; $5f6f: $ee $1f
	jp z, $913b                                      ; $5f71: $ca $3b $91

	ld [hl], c                                       ; $5f74: $71
	sub e                                            ; $5f75: $93
	ld [hl], e                                       ; $5f76: $73
	dec h                                            ; $5f77: $25
	and $4f                                          ; $5f78: $e6 $4f
	rst GetHLinHL                                          ; $5f7a: $cf
	adc e                                            ; $5f7b: $8b
	adc h                                            ; $5f7c: $8c
	sub l                                            ; $5f7d: $95
	sbc d                                            ; $5f7e: $9a
	ld a, [hl]                                       ; $5f7f: $7e
	rst $38                                          ; $5f80: $ff
	ld h, e                                          ; $5f81: $63
	rst $38                                          ; $5f82: $ff
	sbc c                                            ; $5f83: $99
	ld e, a                                          ; $5f84: $5f
	ldh [$fb], a                                     ; $5f85: $e0 $fb
	db $fc                                           ; $5f87: $fc
	ld e, h                                          ; $5f88: $5c
	rst SubAFromBC                                          ; $5f89: $e7
	scf                                              ; $5f8a: $37
	jr nz, @-$62                                     ; $5f8b: $20 $9c

	xor c                                            ; $5f8d: $a9
	ld hl, sp-$46                                    ; $5f8e: $f8 $ba
	ld [hl], a                                       ; $5f90: $77
	jr nz, jr_06f_6012                               ; $5f91: $20 $7f

	xor [hl]                                         ; $5f93: $ae
	sbc h                                            ; $5f94: $9c
	rst SubAFromHL                                          ; $5f95: $d7
	ld [hl], c                                       ; $5f96: $71
	reti                                             ; $5f97: $d9


	ccf                                              ; $5f98: $3f
	ld b, b                                          ; $5f99: $40
	sbc h                                            ; $5f9a: $9c
	cp $00                                           ; $5f9b: $fe $00
	ld a, [hl]                                       ; $5f9d: $7e
	ld a, e                                          ; $5f9e: $7b
	ld a, $9d                                        ; $5f9f: $3e $9d
	jr c, jr_06f_5fdd                                ; $5fa1: $38 $3a

	inc bc                                           ; $5fa3: $03
	ld b, b                                          ; $5fa4: $40
	daa                                              ; $5fa5: $27
	ld b, b                                          ; $5fa6: $40
	ld a, e                                          ; $5fa7: $7b
	ld a, $1f                                        ; $5fa8: $3e $1f
	ld b, b                                          ; $5faa: $40
	sub a                                            ; $5fab: $97
	rst $38                                          ; $5fac: $ff
	ld bc, $f1ef                                     ; $5fad: $01 $ef $f1
	push af                                          ; $5fb0: $f5
	ei                                               ; $5fb1: $fb
	ld l, l                                          ; $5fb2: $6d
	ld a, a                                          ; $5fb3: $7f
	ld h, a                                          ; $5fb4: $67
	ld b, b                                          ; $5fb5: $40
	ccf                                              ; $5fb6: $3f
	ld h, b                                          ; $5fb7: $60
	sub d                                            ; $5fb8: $92
	ld a, b                                          ; $5fb9: $78
	ldh a, [$a8]                                     ; $5fba: $f0 $a8
	ld hl, sp-$47                                    ; $5fbc: $f8 $b9
	ldh [$d8], a                                     ; $5fbe: $e0 $d8
	ld [hl], b                                       ; $5fc0: $70
	ld e, c                                          ; $5fc1: $59
	ldh a, [$fb]                                     ; $5fc2: $f0 $fb
	rst SubAFromHL                                          ; $5fc4: $d7
	ld [hl], d                                       ; $5fc5: $72
	cpl                                              ; $5fc6: $2f
	ld h, b                                          ; $5fc7: $60
	cp [hl]                                          ; $5fc8: $be
	cp $1e                                           ; $5fc9: $fe $1e
	db $f4                                           ; $5fcb: $f4
	sbc b                                            ; $5fcc: $98
	ld hl, sp-$14                                    ; $5fcd: $f8 $ec
	xor $b4                                          ; $5fcf: $ee $b4
	ld hl, sp-$10                                    ; $5fd1: $f8 $f0
	ld h, b                                          ; $5fd3: $60
	inc bc                                           ; $5fd4: $03
	ld h, b                                          ; $5fd5: $60
	ld e, a                                          ; $5fd6: $5f
	ld h, b                                          ; $5fd7: $60
	ld a, a                                          ; $5fd8: $7f
	ld l, d                                          ; $5fd9: $6a
	cp e                                             ; $5fda: $bb
	rlca                                             ; $5fdb: $07
	rlca                                             ; $5fdc: $07

jr_06f_5fdd:
	rlca                                             ; $5fdd: $07
	inc bc                                           ; $5fde: $03
	inc bc                                           ; $5fdf: $03
	ld bc, $fd7b                                     ; $5fe0: $01 $7b $fd
	ld d, a                                          ; $5fe3: $57
	ld h, b                                          ; $5fe4: $60
	sbc h                                            ; $5fe5: $9c
	ld a, a                                          ; $5fe6: $7f
	ei                                               ; $5fe7: $fb
	cp l                                             ; $5fe8: $bd
	ld [hl], e                                       ; $5fe9: $73
	ld h, b                                          ; $5fea: $60
	ld a, a                                          ; $5feb: $7f
	cp $7f                                           ; $5fec: $fe $7f
	ld a, [$1d95]                                    ; $5fee: $fa $95 $1d
	inc bc                                           ; $5ff1: $03
	ld l, [hl]                                       ; $5ff2: $6e
	di                                               ; $5ff3: $f3
	cp [hl]                                          ; $5ff4: $be
	cp e                                             ; $5ff5: $bb
	jp c, Jump_06f_7bf7                              ; $5ff6: $da $f7 $7b

	and $4f                                          ; $5ff9: $e6 $4f
	ld h, b                                          ; $5ffb: $60
	sub [hl]                                         ; $5ffc: $96
	jp c, Jump_06f_5b73                              ; $5ffd: $da $73 $5b

	di                                               ; $6000: $f3
	ld a, b                                          ; $6001: $78
	ldh a, [c]                                       ; $6002: $f2
	xor b                                            ; $6003: $a8
	ld hl, sp-$48                                    ; $6004: $f8 $b8
	ld a, e                                          ; $6006: $7b
	ld h, b                                          ; $6007: $60
	sbc c                                            ; $6008: $99
	ld e, b                                          ; $6009: $58
	ldh a, [$f8]                                     ; $600a: $f0 $f8
	ret nc                                           ; $600c: $d0

	ld [hl], c                                       ; $600d: $71
	db $db                                           ; $600e: $db
	ld e, a                                          ; $600f: $5f
	ld h, b                                          ; $6010: $60
	ld a, a                                          ; $6011: $7f

jr_06f_6012:
	ld de, $7098                                     ; $6012: $11 $98 $70
	nop                                              ; $6015: $00
	ld hl, sp-$10                                    ; $6016: $f8 $f0
	db $ec                                           ; $6018: $ec
	jr @-$02                                         ; $6019: $18 $fc

	cp e                                             ; $601b: $bb
	ld a, [hl]                                       ; $601c: $7e
	ld a, [hl]                                       ; $601d: $7e
	ld a, $1e                                        ; $601e: $3e $1e
	ld a, h                                          ; $6020: $7c
	inc e                                            ; $6021: $1c
	sbc h                                            ; $6022: $9c
	adc [hl]                                         ; $6023: $8e
	ldh a, [$f8]                                     ; $6024: $f0 $f8
	inc bc                                           ; $6026: $03
	ld h, b                                          ; $6027: $60
	ld d, [hl]                                       ; $6028: $56
	ret nz                                           ; $6029: $c0

	sbc h                                            ; $602a: $9c
	ld bc, $0106                                     ; $602b: $01 $06 $01
	ld h, e                                          ; $602e: $63
	ld h, b                                          ; $602f: $60
	ld a, e                                          ; $6030: $7b
	ld e, [hl]                                       ; $6031: $5e
	sbc [hl]                                         ; $6032: $9e
	add hl, bc                                       ; $6033: $09
	ld d, [hl]                                       ; $6034: $56
	ret nz                                           ; $6035: $c0

	sbc b                                            ; $6036: $98
	inc bc                                           ; $6037: $03
	ld a, c                                          ; $6038: $79
	rst $38                                          ; $6039: $ff
	cp l                                             ; $603a: $bd
	jp $817f                                         ; $603b: $c3 $7f $81


	ld [hl], a                                       ; $603e: $77
	ld h, b                                          ; $603f: $60
	ld a, a                                          ; $6040: $7f
	cp $9e                                           ; $6041: $fe $9e
	cp $7b                                           ; $6043: $fe $7b
	cp $80                                           ; $6045: $fe $80
	ld [de], a                                       ; $6047: $12
	ccf                                              ; $6048: $3f
	ei                                               ; $6049: $fb
	and $04                                          ; $604a: $e6 $04
	ld [$1c06], sp                                   ; $604c: $08 $06 $1c
	inc e                                            ; $604f: $1c
	ld [rRAMG], sp                                   ; $6050: $08 $00 $00
	ld h, $44                                        ; $6053: $26 $44
	inc e                                            ; $6055: $1c
	jr c, jr_06f_6058                                ; $6056: $38 $00

jr_06f_6058:
	nop                                              ; $6058: $00
	db $10                                           ; $6059: $10
	ld [$0001], sp                                   ; $605a: $08 $01 $00
	ld [$bbf1], a                                    ; $605d: $ea $f1 $bb
	rra                                              ; $6060: $1f
	ld a, [hl]                                       ; $6061: $7e
	rrca                                             ; $6062: $0f
	cp [hl]                                          ; $6063: $be
	ld [hl], e                                       ; $6064: $73
	rst AddAOntoHL                                          ; $6065: $ef
	sbc d                                            ; $6066: $9a
	ld b, e                                          ; $6067: $43
	ld c, a                                          ; $6068: $4f
	add h                                            ; $6069: $84
	dec b                                            ; $606a: $05
	ld [$e067], sp                                   ; $606b: $08 $67 $e0
	sbc l                                            ; $606e: $9d
	ld a, $7c                                        ; $606f: $3e $7c
	rrca                                             ; $6071: $0f
	ldh [$9a], a                                     ; $6072: $e0 $9a
	ld a, [hl]                                       ; $6074: $7e
	ld a, h                                          ; $6075: $7c
	jr c, jr_06f_60f4                                ; $6076: $38 $7c

	db $10                                           ; $6078: $10
	ld a, e                                          ; $6079: $7b
	sbc $9e                                          ; $607a: $de $9e
	add hl, de                                       ; $607c: $19
	inc hl                                           ; $607d: $23
	ldh [$df], a                                     ; $607e: $e0 $df
	ld a, h                                          ; $6080: $7c
	sbc e                                            ; $6081: $9b
	inc a                                            ; $6082: $3c
	ld a, b                                          ; $6083: $78
	jr nc, jr_06f_60be                               ; $6084: $30 $38

	ld b, a                                          ; $6086: $47
	ret nz                                           ; $6087: $c0

	db $dd                                           ; $6088: $dd
	ld bc, $4b80                                     ; $6089: $01 $80 $4b
	cp $54                                           ; $608c: $fe $54
	rst $38                                          ; $608e: $ff
	xor l                                            ; $608f: $ad
	ld [hl], a                                       ; $6090: $77
	cp l                                             ; $6091: $bd
	ld l, a                                          ; $6092: $6f
	db $dd                                           ; $6093: $dd
	ld l, a                                          ; $6094: $6f
	ld [hl], a                                       ; $6095: $77
	sbc $ff                                          ; $6096: $de $ff
	ld d, d                                          ; $6098: $52
	db $db                                           ; $6099: $db
	ld [hl], e                                       ; $609a: $73
	ld e, e                                          ; $609b: $5b
	ldh a, [c]                                       ; $609c: $f2
	ld a, e                                          ; $609d: $7b
	ldh a, [$a9]                                     ; $609e: $f0 $a9
	ld hl, sp-$45                                    ; $60a0: $f8 $bb
	pop hl                                           ; $60a2: $e1
	db $dd                                           ; $60a3: $dd
	ld [hl], e                                       ; $60a4: $73
	ld e, a                                          ; $60a5: $5f
	rst FarCall                                          ; $60a6: $f7
	ld sp, hl                                        ; $60a7: $f9
	pop de                                           ; $60a8: $d1
	ld [hl], c                                       ; $60a9: $71
	add b                                            ; $60aa: $80
	reti                                             ; $60ab: $d9


	add sp, -$28                                     ; $60ac: $e8 $d8
	jp hl                                            ; $60ae: $e9


	ld e, b                                          ; $60af: $58
	call c, Call_06f_58e8                            ; $60b0: $dc $e8 $58
	db $ec                                           ; $60b3: $ec
	ld a, d                                          ; $60b4: $7a
	db $ec                                           ; $60b5: $ec
	db $ed                                           ; $60b6: $ed
	cp $6e                                           ; $60b7: $fe $6e
	ld a, a                                          ; $60b9: $7f
	ld l, a                                          ; $60ba: $6f
	ld a, a                                          ; $60bb: $7f
	xor d                                            ; $60bc: $aa
	rst $38                                          ; $60bd: $ff

jr_06f_60be:
	ld l, $ff                                        ; $60be: $2e $ff
	ld a, $fb                                        ; $60c0: $3e $fb
	rst $38                                          ; $60c2: $ff
	ld [$eabb], a                                    ; $60c3: $ea $bb $ea
	ld sp, $30e1                                     ; $60c6: $31 $e1 $30
	ldh [$7f], a                                     ; $60c9: $e0 $7f
	cp $80                                           ; $60cb: $fe $80
	ld l, h                                          ; $60cd: $6c
	db $fd                                           ; $60ce: $fd
	rst $38                                          ; $60cf: $ff

jr_06f_60d0:
	or l                                             ; $60d0: $b5
	db $fd                                           ; $60d1: $fd
	rla                                              ; $60d2: $17
	and a                                            ; $60d3: $a7
	inc bc                                           ; $60d4: $03
	inc bc                                           ; $60d5: $03
	ld bc, $0071                                     ; $60d6: $01 $71 $00
	ld [hl], b                                       ; $60d9: $70
	ld hl, sp-$48                                    ; $60da: $f8 $b8
	ret nz                                           ; $60dc: $c0

	db $fc                                           ; $60dd: $fc
	nop                                              ; $60de: $00
	or [hl]                                          ; $60df: $b6
	ld a, b                                          ; $60e0: $78
	ld a, [hl]                                       ; $60e1: $7e
	db $fc                                           ; $60e2: $fc
	sub h                                            ; $60e3: $94
	sbc d                                            ; $60e4: $9a
	ld a, [hl-]                                      ; $60e5: $3a
	jr c, jr_06f_60d0                                ; $60e6: $38 $e8

	ld hl, sp+$68                                    ; $60e8: $f8 $68
	ld hl, sp+$70                                    ; $60ea: $f8 $70
	sbc e                                            ; $60ec: $9b
	sbc b                                            ; $60ed: $98
	ret nc                                           ; $60ee: $d0

	ret nc                                           ; $60ef: $d0

	ldh a, [$bb]                                     ; $60f0: $f0 $bb
	nop                                              ; $60f2: $00
	nop                                              ; $60f3: $00

jr_06f_60f4:
	nop                                              ; $60f4: $00
	nop                                              ; $60f5: $00
	add b                                            ; $60f6: $80
	ld b, b                                          ; $60f7: $40
	adc l                                            ; $60f8: $8d
	add b                                            ; $60f9: $80
	ldh [$c0], a                                     ; $60fa: $e0 $c0
	ld a, b                                          ; $60fc: $78
	pop af                                           ; $60fd: $f1
	db $fd                                           ; $60fe: $fd
	rra                                              ; $60ff: $1f
	adc d                                            ; $6100: $8a
	rlca                                             ; $6101: $07
	ld [bc], a                                       ; $6102: $02
	ld [bc], a                                       ; $6103: $02
	ld b, $84                                        ; $6104: $06 $84
	call nz, Call_06f_6ae4                           ; $6106: $c4 $e4 $6a

jr_06f_6109:
	inc a                                            ; $6109: $3c
	add b                                            ; $610a: $80
	cp h                                             ; $610b: $bc
	add b                                            ; $610c: $80
	add b                                            ; $610d: $80
	ld b, b                                          ; $610e: $40
	ld b, b                                          ; $610f: $40
	and c                                            ; $6110: $a1
	sbc l                                            ; $6111: $9d
	add b                                            ; $6112: $80
	ld bc, $03be                                     ; $6113: $01 $be $03
	rlca                                             ; $6116: $07
	rlca                                             ; $6117: $07
	sbc e                                            ; $6118: $9b
	ld bc, $0107                                     ; $6119: $01 $07 $01
	inc bc                                           ; $611c: $03
	ld a, e                                          ; $611d: $7b
	cp $df                                           ; $611e: $fe $df
	ld bc, $0080                                     ; $6120: $01 $80 $00
	ld bc, $0008                                     ; $6123: $01 $08 $00
	dec l                                            ; $6126: $2d
	ld a, [hl]                                       ; $6127: $7e
	ld l, e                                          ; $6128: $6b
	ld a, $7b                                        ; $6129: $3e $7b
	ld a, $3f                                        ; $612b: $3e $3f
	ld [hl], d                                       ; $612d: $72
	ld l, [hl]                                       ; $612e: $6e
	di                                               ; $612f: $f3
	rst $38                                          ; $6130: $ff
	ei                                               ; $6131: $fb
	dec a                                            ; $6132: $3d
	jp $03fd                                         ; $6133: $c3 $fd $03


	ld l, a                                          ; $6136: $6f
	pop af                                           ; $6137: $f1
	or a                                             ; $6138: $b7
	ld sp, hl                                        ; $6139: $f9
	dec a                                            ; $613a: $3d
	ccf                                              ; $613b: $3f
	ld l, l                                          ; $613c: $6d
	ld a, e                                          ; $613d: $7b
	and $eb                                          ; $613e: $e6 $eb
	ld c, [hl]                                       ; $6140: $4e
	add b                                            ; $6141: $80
	db $e3                                           ; $6142: $e3
	cp d                                             ; $6143: $ba
	and a                                            ; $6144: $a7
	ld a, e                                          ; $6145: $7b
	add $f7                                          ; $6146: $c6 $f7
	rrca                                             ; $6148: $0f
	rst FarCall                                          ; $6149: $f7
	rrca                                             ; $614a: $0f
	push hl                                          ; $614b: $e5
	rra                                              ; $614c: $1f
	xor $1f                                          ; $614d: $ee $1f
	jp z, $913b                                      ; $614f: $ca $3b $91

	ld [hl], c                                       ; $6152: $71
	sub e                                            ; $6153: $93
	ld [hl], e                                       ; $6154: $73
	dec h                                            ; $6155: $25
	and $4f                                          ; $6156: $e6 $4f
	rst GetHLinHL                                          ; $6158: $cf
	adc e                                            ; $6159: $8b
	adc h                                            ; $615a: $8c
	sub l                                            ; $615b: $95
	sbc d                                            ; $615c: $9a
	ld a, [hl]                                       ; $615d: $7e
	rst $38                                          ; $615e: $ff
	ld h, e                                          ; $615f: $63
	rst $38                                          ; $6160: $ff
	sbc c                                            ; $6161: $99
	ld e, a                                          ; $6162: $5f
	ldh [$fb], a                                     ; $6163: $e0 $fb
	db $fc                                           ; $6165: $fc
	ld e, h                                          ; $6166: $5c
	rst SubAFromBC                                          ; $6167: $e7
	cpl                                              ; $6168: $2f
	jr nz, jr_06f_6109                               ; $6169: $20 $9e

	cp d                                             ; $616b: $ba
	ld [hl], a                                       ; $616c: $77
	jr nz, jr_06f_61ee                               ; $616d: $20 $7f

	xor [hl]                                         ; $616f: $ae
	sbc h                                            ; $6170: $9c
	rst SubAFromHL                                          ; $6171: $d7
	ld [hl], c                                       ; $6172: $71
	reti                                             ; $6173: $d9


	ccf                                              ; $6174: $3f
	ld b, b                                          ; $6175: $40
	sub a                                            ; $6176: $97
	cp $00                                           ; $6177: $fe $00
	ld a, [hl]                                       ; $6179: $7e
	ld hl, sp-$02                                    ; $617a: $f8 $fe
	db $fc                                           ; $617c: $fc
	jr c, jr_06f_61b9                                ; $617d: $38 $3a

	inc bc                                           ; $617f: $03
	ld b, b                                          ; $6180: $40
	daa                                              ; $6181: $27
	ld b, b                                          ; $6182: $40
	ld a, e                                          ; $6183: $7b
	ld a, $1f                                        ; $6184: $3e $1f
	ld b, b                                          ; $6186: $40
	sub a                                            ; $6187: $97
	rst $38                                          ; $6188: $ff
	ld bc, $f1ef                                     ; $6189: $01 $ef $f1
	push af                                          ; $618c: $f5
	ei                                               ; $618d: $fb
	ld l, l                                          ; $618e: $6d
	ld a, a                                          ; $618f: $7f
	ld h, a                                          ; $6190: $67
	ld b, b                                          ; $6191: $40
	ccf                                              ; $6192: $3f
	ld h, b                                          ; $6193: $60
	sub d                                            ; $6194: $92
	ld a, b                                          ; $6195: $78
	ldh a, [$a8]                                     ; $6196: $f0 $a8
	ld hl, sp-$47                                    ; $6198: $f8 $b9
	ldh [$d8], a                                     ; $619a: $e0 $d8
	ld [hl], b                                       ; $619c: $70
	ld e, c                                          ; $619d: $59
	ldh a, [$fb]                                     ; $619e: $f0 $fb
	rst SubAFromHL                                          ; $61a0: $d7
	ld [hl], d                                       ; $61a1: $72
	cpl                                              ; $61a2: $2f
	ld h, b                                          ; $61a3: $60
	cp [hl]                                          ; $61a4: $be
	cp $1e                                           ; $61a5: $fe $1e
	db $f4                                           ; $61a7: $f4
	sbc b                                            ; $61a8: $98
	ld hl, sp-$14                                    ; $61a9: $f8 $ec
	xor $b4                                          ; $61ab: $ee $b4
	ld hl, sp-$10                                    ; $61ad: $f8 $f0
	ld h, b                                          ; $61af: $60
	inc bc                                           ; $61b0: $03
	ld h, b                                          ; $61b1: $60
	ld e, a                                          ; $61b2: $5f
	ld h, b                                          ; $61b3: $60
	ld a, a                                          ; $61b4: $7f
	ld l, d                                          ; $61b5: $6a
	cp e                                             ; $61b6: $bb
	rlca                                             ; $61b7: $07
	rlca                                             ; $61b8: $07

jr_06f_61b9:
	rlca                                             ; $61b9: $07
	inc bc                                           ; $61ba: $03
	inc bc                                           ; $61bb: $03

jr_06f_61bc:
	ld bc, $fd7b                                     ; $61bc: $01 $7b $fd
	ld d, a                                          ; $61bf: $57
	ld h, b                                          ; $61c0: $60
	sbc h                                            ; $61c1: $9c
	ld a, a                                          ; $61c2: $7f
	ei                                               ; $61c3: $fb
	cp l                                             ; $61c4: $bd
	ld [hl], e                                       ; $61c5: $73
	ld h, b                                          ; $61c6: $60
	ld a, a                                          ; $61c7: $7f
	cp $7f                                           ; $61c8: $fe $7f
	ld a, [$1d95]                                    ; $61ca: $fa $95 $1d
	inc bc                                           ; $61cd: $03
	ld l, [hl]                                       ; $61ce: $6e
	di                                               ; $61cf: $f3
	cp [hl]                                          ; $61d0: $be
	cp e                                             ; $61d1: $bb
	jp c, Jump_06f_7bf7                              ; $61d2: $da $f7 $7b

	and $4f                                          ; $61d5: $e6 $4f
	ld h, b                                          ; $61d7: $60
	sub [hl]                                         ; $61d8: $96
	jp c, Jump_06f_5b73                              ; $61d9: $da $73 $5b

	di                                               ; $61dc: $f3
	ld a, b                                          ; $61dd: $78
	ldh a, [c]                                       ; $61de: $f2
	xor b                                            ; $61df: $a8
	ld hl, sp-$48                                    ; $61e0: $f8 $b8
	ld a, e                                          ; $61e2: $7b
	ld h, b                                          ; $61e3: $60
	sbc c                                            ; $61e4: $99
	ld e, b                                          ; $61e5: $58
	ldh a, [$f8]                                     ; $61e6: $f0 $f8
	ret nc                                           ; $61e8: $d0

	ld [hl], c                                       ; $61e9: $71
	db $db                                           ; $61ea: $db
	ld e, a                                          ; $61eb: $5f
	ld h, b                                          ; $61ec: $60
	ld a, a                                          ; $61ed: $7f

jr_06f_61ee:
	ld de, $7098                                     ; $61ee: $11 $98 $70
	nop                                              ; $61f1: $00
	ld hl, sp-$10                                    ; $61f2: $f8 $f0
	db $ec                                           ; $61f4: $ec
	jr @-$02                                         ; $61f5: $18 $fc

	cp e                                             ; $61f7: $bb
	ld a, [hl]                                       ; $61f8: $7e
	ld a, [hl]                                       ; $61f9: $7e
	ld a, $1e                                        ; $61fa: $3e $1e
	ld a, h                                          ; $61fc: $7c
	inc e                                            ; $61fd: $1c
	sbc h                                            ; $61fe: $9c
	adc [hl]                                         ; $61ff: $8e
	ldh a, [$f8]                                     ; $6200: $f0 $f8
	inc bc                                           ; $6202: $03
	ld h, b                                          ; $6203: $60
	ld d, [hl]                                       ; $6204: $56
	ret nz                                           ; $6205: $c0

	sbc h                                            ; $6206: $9c
	ld bc, $0106                                     ; $6207: $01 $06 $01
	ld h, e                                          ; $620a: $63
	ld h, b                                          ; $620b: $60
	ld a, e                                          ; $620c: $7b
	ld e, [hl]                                       ; $620d: $5e
	sbc [hl]                                         ; $620e: $9e
	add hl, bc                                       ; $620f: $09
	ld d, [hl]                                       ; $6210: $56
	ret nz                                           ; $6211: $c0

	sbc b                                            ; $6212: $98
	inc bc                                           ; $6213: $03
	ld a, c                                          ; $6214: $79
	rst $38                                          ; $6215: $ff
	cp l                                             ; $6216: $bd
	jp $817f                                         ; $6217: $c3 $7f $81


	ld [hl], a                                       ; $621a: $77
	ld h, b                                          ; $621b: $60
	ld a, a                                          ; $621c: $7f
	cp $9e                                           ; $621d: $fe $9e
	cp $7b                                           ; $621f: $fe $7b
	cp $94                                           ; $6221: $fe $94
	ld [de], a                                       ; $6223: $12
	ccf                                              ; $6224: $3f
	ei                                               ; $6225: $fb
	and $04                                          ; $6226: $e6 $04
	ld [$1c06], sp                                   ; $6228: $08 $06 $1c
	inc e                                            ; $622b: $1c
	ld [$bf00], sp                                   ; $622c: $08 $00 $bf
	inc c                                            ; $622f: $0c
	jr c, jr_06f_61bc                                ; $6230: $38 $8a

	inc [hl]                                         ; $6232: $34
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	db $10                                           ; $6235: $10
	ld [$0001], sp                                   ; $6236: $08 $01 $00
	ld [$bbf1], a                                    ; $6239: $ea $f1 $bb
	rra                                              ; $623c: $1f
	ld a, [hl]                                       ; $623d: $7e
	rrca                                             ; $623e: $0f
	cp [hl]                                          ; $623f: $be
	ld [hl], e                                       ; $6240: $73
	rst AddAOntoHL                                          ; $6241: $ef
	ld b, e                                          ; $6242: $43
	ld c, a                                          ; $6243: $4f
	add h                                            ; $6244: $84
	dec b                                            ; $6245: $05
	ld [$e067], sp                                   ; $6246: $08 $67 $e0
	sbc e                                            ; $6249: $9b
	jr @+$1e                                         ; $624a: $18 $1c

	inc a                                            ; $624c: $3c
	jr c, jr_06f_6266                                ; $624d: $38 $17

	ldh [$9c], a                                     ; $624f: $e0 $9c
	inc a                                            ; $6251: $3c
	jr jr_06f_628c                                   ; $6252: $18 $38

	ld a, e                                          ; $6254: $7b
	db $fd                                           ; $6255: $fd
	rst $38                                          ; $6256: $ff
	sbc l                                            ; $6257: $9d
	ld de, $2708                                     ; $6258: $11 $08 $27
	ldh [$df], a                                     ; $625b: $e0 $df
	inc a                                            ; $625d: $3c
	ld a, a                                          ; $625e: $7f
	sbc $9d                                          ; $625f: $de $9d
	db $10                                           ; $6261: $10
	jr jr_06f_62ab                                   ; $6262: $18 $47

	ret nz                                           ; $6264: $c0

	push bc                                          ; $6265: $c5

jr_06f_6266:
	ld bc, $4b80                                     ; $6266: $01 $80 $4b
	cp $54                                           ; $6269: $fe $54
	rst $38                                          ; $626b: $ff
	xor l                                            ; $626c: $ad
	ld [hl], a                                       ; $626d: $77
	cp l                                             ; $626e: $bd
	ld l, a                                          ; $626f: $6f
	db $dd                                           ; $6270: $dd
	ld l, a                                          ; $6271: $6f
	ld [hl], a                                       ; $6272: $77
	sbc $ff                                          ; $6273: $de $ff
	ld d, d                                          ; $6275: $52
	db $db                                           ; $6276: $db
	ld [hl], e                                       ; $6277: $73
	ld e, e                                          ; $6278: $5b
	ldh a, [c]                                       ; $6279: $f2
	ld a, e                                          ; $627a: $7b
	ldh a, [$a9]                                     ; $627b: $f0 $a9
	ld hl, sp-$46                                    ; $627d: $f8 $ba
	pop hl                                           ; $627f: $e1
	db $dd                                           ; $6280: $dd
	ld [hl], e                                       ; $6281: $73
	ld e, a                                          ; $6282: $5f
	rst FarCall                                          ; $6283: $f7
	ei                                               ; $6284: $fb
	pop de                                           ; $6285: $d1
	ld [hl], c                                       ; $6286: $71
	add b                                            ; $6287: $80
	reti                                             ; $6288: $d9


	add sp, -$28                                     ; $6289: $e8 $d8
	jp hl                                            ; $628b: $e9


jr_06f_628c:
	ld e, b                                          ; $628c: $58
	call c, Call_06f_58e8                            ; $628d: $dc $e8 $58
	db $ec                                           ; $6290: $ec
	ld a, d                                          ; $6291: $7a
	db $ec                                           ; $6292: $ec
	db $ed                                           ; $6293: $ed
	cp $6e                                           ; $6294: $fe $6e
	ld a, a                                          ; $6296: $7f
	ld l, a                                          ; $6297: $6f
	ld a, a                                          ; $6298: $7f
	xor d                                            ; $6299: $aa
	rst $38                                          ; $629a: $ff
	ld l, $ff                                        ; $629b: $2e $ff
	ld a, $fb                                        ; $629d: $3e $fb
	rst $38                                          ; $629f: $ff
	ld [$eabb], a                                    ; $62a0: $ea $bb $ea
	ld sp, $30e1                                     ; $62a3: $31 $e1 $30
	ldh [$7f], a                                     ; $62a6: $e0 $7f
	cp $80                                           ; $62a8: $fe $80
	ld l, h                                          ; $62aa: $6c

jr_06f_62ab:
	db $fd                                           ; $62ab: $fd
	rst $38                                          ; $62ac: $ff
	or l                                             ; $62ad: $b5
	db $fd                                           ; $62ae: $fd
	rla                                              ; $62af: $17
	and a                                            ; $62b0: $a7
	inc bc                                           ; $62b1: $03
	inc bc                                           ; $62b2: $03
	ld bc, $0001                                     ; $62b3: $01 $01 $00
	ldh [rP1], a                                     ; $62b6: $e0 $00
	ret c                                            ; $62b8: $d8

	ldh [$b8], a                                     ; $62b9: $e0 $b8
	ld a, h                                          ; $62bb: $7c
	or $0e                                           ; $62bc: $f6 $0e
	halt                                             ; $62be: $76
	ld hl, sp-$32                                    ; $62bf: $f8 $ce
	call z, $9e9e                                    ; $62c1: $cc $9e $9e
	add sp, -$06                                     ; $62c4: $e8 $fa
	ld l, b                                          ; $62c6: $68
	ld hl, sp-$10                                    ; $62c7: $f8 $f0
	sbc e                                            ; $62c9: $9b
	sbc b                                            ; $62ca: $98
	ret c                                            ; $62cb: $d8

	ret nc                                           ; $62cc: $d0

	db $fc                                           ; $62cd: $fc
	ld hl, sp-$76                                    ; $62ce: $f8 $8a
	add b                                            ; $62d0: $80
	nop                                              ; $62d1: $00
	ld b, b                                          ; $62d2: $40
	add b                                            ; $62d3: $80
	ldh [$c0], a                                     ; $62d4: $e0 $c0
	ld a, b                                          ; $62d6: $78

jr_06f_62d7:
	pop af                                           ; $62d7: $f1
	db $fd                                           ; $62d8: $fd
	rra                                              ; $62d9: $1f
	adc d                                            ; $62da: $8a
	rlca                                             ; $62db: $07
	ld [bc], a                                       ; $62dc: $02
	ld [bc], a                                       ; $62dd: $02
	ld b, $84                                        ; $62de: $06 $84
	call nz, Call_06f_6ae4                           ; $62e0: $c4 $e4 $6a
	inc a                                            ; $62e3: $3c
	add b                                            ; $62e4: $80
	ld a, e                                          ; $62e5: $7b
	ld [$e87b], a                                    ; $62e6: $ea $7b $e8
	ld a, e                                          ; $62e9: $7b
	cp $92                                           ; $62ea: $fe $92
	and b                                            ; $62ec: $a0
	add b                                            ; $62ed: $80
	ld bc, $0300                                     ; $62ee: $01 $00 $03
	ld bc, $0106                                     ; $62f1: $01 $06 $01
	rlca                                             ; $62f4: $07
	nop                                              ; $62f5: $00
	rlca                                             ; $62f6: $07
	ld bc, $7b03                                     ; $62f7: $01 $03 $7b
	cp $7b                                           ; $62fa: $fe $7b
	xor a                                            ; $62fc: $af
	add b                                            ; $62fd: $80
	ld bc, $0008                                     ; $62fe: $01 $08 $00
	dec l                                            ; $6301: $2d
	ld a, [hl]                                       ; $6302: $7e
	ld l, e                                          ; $6303: $6b
	ld a, $7b                                        ; $6304: $3e $7b
	ld a, $7f                                        ; $6306: $3e $7f
	ld [hl-], a                                      ; $6308: $32
	ld l, [hl]                                       ; $6309: $6e
	ld [hl], e                                       ; $630a: $73
	rst $38                                          ; $630b: $ff
	inc bc                                           ; $630c: $03
	ld a, l                                          ; $630d: $7d
	ei                                               ; $630e: $fb
	db $dd                                           ; $630f: $dd
	db $e3                                           ; $6310: $e3
	ld a, a                                          ; $6311: $7f
	add c                                            ; $6312: $81
	rst FarCall                                          ; $6313: $f7
	ld sp, hl                                        ; $6314: $f9
	cp l                                             ; $6315: $bd
	cp a                                             ; $6316: $bf
	dec l                                            ; $6317: $2d
	dec sp                                           ; $6318: $3b
	and $eb                                          ; $6319: $e6 $eb
	ld c, [hl]                                       ; $631b: $4e
	db $e3                                           ; $631c: $e3
	add b                                            ; $631d: $80
	cp d                                             ; $631e: $ba
	and a                                            ; $631f: $a7
	ld c, e                                          ; $6320: $4b
	or $f7                                           ; $6321: $f6 $f7
	rrca                                             ; $6323: $0f
	rst FarCall                                          ; $6324: $f7
	rrca                                             ; $6325: $0f
	push hl                                          ; $6326: $e5
	rra                                              ; $6327: $1f
	xor $1f                                          ; $6328: $ee $1f
	jp z, $913b                                      ; $632a: $ca $3b $91

	ld [hl], c                                       ; $632d: $71
	sub e                                            ; $632e: $93
	ld [hl], e                                       ; $632f: $73
	dec h                                            ; $6330: $25
	and $4f                                          ; $6331: $e6 $4f
	rst GetHLinHL                                          ; $6333: $cf
	adc e                                            ; $6334: $8b
	adc h                                            ; $6335: $8c
	sub l                                            ; $6336: $95
	sbc d                                            ; $6337: $9a
	ld a, [hl]                                       ; $6338: $7e
	rst $38                                          ; $6339: $ff
	ld h, e                                          ; $633a: $63
	rst $38                                          ; $633b: $ff
	ld e, a                                          ; $633c: $5f
	sbc d                                            ; $633d: $9a
	ldh [$fb], a                                     ; $633e: $e0 $fb
	db $fc                                           ; $6340: $fc
	ld e, h                                          ; $6341: $5c
	rst SubAFromBC                                          ; $6342: $e7
	ccf                                              ; $6343: $3f
	jr nz, jr_06f_62d7                               ; $6344: $20 $91

	ld a, c                                          ; $6346: $79
	ldh a, [$a8]                                     ; $6347: $f0 $a8
	ld hl, sp-$47                                    ; $6349: $f8 $b9
	ldh [$da], a                                     ; $634b: $e0 $da
	ld [hl], c                                       ; $634d: $71
	ld e, l                                          ; $634e: $5d
	di                                               ; $634f: $f3
	rst $38                                          ; $6350: $ff
	rst SubAFromHL                                          ; $6351: $d7
	ld [hl], c                                       ; $6352: $71
	reti                                             ; $6353: $d9


	scf                                              ; $6354: $37
	ld b, b                                          ; $6355: $40
	sbc b                                            ; $6356: $98
	cp $00                                           ; $6357: $fe $00
	ld a, d                                          ; $6359: $7a
	db $fc                                           ; $635a: $fc
	sbc h                                            ; $635b: $9c
	sbc [hl]                                         ; $635c: $9e
	ld [$4003], a                                    ; $635d: $ea $03 $40
	inc hl                                           ; $6360: $23
	ld b, b                                          ; $6361: $40
	ld a, e                                          ; $6362: $7b
	ld hl, sp+$1f                                    ; $6363: $f8 $1f
	ld b, b                                          ; $6365: $40
	sub a                                            ; $6366: $97
	sbc a                                            ; $6367: $9f
	ld h, c                                          ; $6368: $61
	push af                                          ; $6369: $f5
	ei                                               ; $636a: $fb
	dec a                                            ; $636b: $3d
	ccf                                              ; $636c: $3f
	and $fb                                          ; $636d: $e6 $fb
	ld l, a                                          ; $636f: $6f
	ld b, b                                          ; $6370: $40
	ld [hl], $80                                     ; $6371: $36 $80
	ld a, a                                          ; $6373: $7f
	ld h, b                                          ; $6374: $60
	sub [hl]                                         ; $6375: $96
	cp b                                             ; $6376: $b8
	ldh [$d8], a                                     ; $6377: $e0 $d8
	ld [hl], b                                       ; $6379: $70
	ld e, c                                          ; $637a: $59
	ldh a, [$fb]                                     ; $637b: $f0 $fb
	rst SubAFromHL                                          ; $637d: $d7
	ld [hl], d                                       ; $637e: $72
	inc sp                                           ; $637f: $33
	ld h, b                                          ; $6380: $60
	sub b                                            ; $6381: $90
	ld a, [hl]                                       ; $6382: $7e
	nop                                              ; $6383: $00
	cp $00                                           ; $6384: $fe $00
	ld e, $00                                        ; $6386: $1e $00
	db $f4                                           ; $6388: $f4
	ld hl, sp-$14                                    ; $6389: $f8 $ec
	xor $b4                                          ; $638b: $ee $b4
	ld hl, sp-$10                                    ; $638d: $f8 $f0
	ld h, b                                          ; $638f: $60
	ldh a, [$03]                                     ; $6390: $f0 $03
	ld h, b                                          ; $6392: $60
	dec sp                                           ; $6393: $3b
	ld h, b                                          ; $6394: $60
	ld a, e                                          ; $6395: $7b
	cp $7f                                           ; $6396: $fe $7f
	ld e, l                                          ; $6398: $5d
	cpl                                              ; $6399: $2f
	ld h, b                                          ; $639a: $60
	sub c                                            ; $639b: $91
	rst $38                                          ; $639c: $ff
	ld bc, $03fd                                     ; $639d: $01 $fd $03
	dec e                                            ; $63a0: $1d
	inc bc                                           ; $63a1: $03
	ld l, [hl]                                       ; $63a2: $6e
	di                                               ; $63a3: $f3
	cp [hl]                                          ; $63a4: $be
	cp e                                             ; $63a5: $bb
	jp c, Jump_06f_7bf7                              ; $63a6: $da $f7 $7b

	and $2d                                          ; $63a9: $e6 $2d
	ldh [rPCM34], a                                  ; $63ab: $e0 $77
	ld h, b                                          ; $63ad: $60
	sbc c                                            ; $63ae: $99
	ld e, b                                          ; $63af: $58
	ldh a, [$f8]                                     ; $63b0: $f0 $f8
	ret nc                                           ; $63b2: $d0

	ld [hl], c                                       ; $63b3: $71
	db $db                                           ; $63b4: $db
	ld d, a                                          ; $63b5: $57
	ld h, b                                          ; $63b6: $60
	sub d                                            ; $63b7: $92
	ret nz                                           ; $63b8: $c0

	nop                                              ; $63b9: $00
	sub b                                            ; $63ba: $90
	ldh [$f4], a                                     ; $63bb: $e0 $f4
	ld a, b                                          ; $63bd: $78
	db $fc                                           ; $63be: $fc
	ld c, $fe                                        ; $63bf: $0e $fe
	ld b, $7e                                        ; $63c1: $06 $7e
	nop                                              ; $63c3: $00
	ld a, $7b                                        ; $63c4: $3e $7b
	ld e, [hl]                                       ; $63c6: $5e
	sbc c                                            ; $63c7: $99
	ld a, h                                          ; $63c8: $7c
	nop                                              ; $63c9: $00
	inc e                                            ; $63ca: $1c
	adc [hl]                                         ; $63cb: $8e
	ldh a, [$f8]                                     ; $63cc: $f0 $f8
	inc bc                                           ; $63ce: $03
	ld h, b                                          ; $63cf: $60
	ld e, e                                          ; $63d0: $5b
	ld h, b                                          ; $63d1: $60
	sbc h                                            ; $63d2: $9c
	ld [bc], a                                       ; $63d3: $02
	ld bc, $5f07                                     ; $63d4: $01 $07 $5f
	ld h, b                                          ; $63d7: $60
	ld a, e                                          ; $63d8: $7b
	ld e, [hl]                                       ; $63d9: $5e
	sbc [hl]                                         ; $63da: $9e
	add hl, bc                                       ; $63db: $09
	ld d, e                                          ; $63dc: $53

Call_06f_63dd:
	ld h, b                                          ; $63dd: $60
	sbc c                                            ; $63de: $99
	db $dd                                           ; $63df: $dd
	dec sp                                           ; $63e0: $3b
	db $fd                                           ; $63e1: $fd
	db $e3                                           ; $63e2: $e3
	cp a                                             ; $63e3: $bf
	pop bc                                           ; $63e4: $c1
	ld [hl], a                                       ; $63e5: $77
	ld h, b                                          ; $63e6: $60
	ld a, a                                          ; $63e7: $7f
	cp $9e                                           ; $63e8: $fe $9e
	cp $7b                                           ; $63ea: $fe $7b
	cp $80                                           ; $63ec: $fe $80
	ld a, [de]                                       ; $63ee: $1a
	ccf                                              ; $63ef: $3f
	db $eb                                           ; $63f0: $eb
	or $04                                           ; $63f1: $f6 $04
	ld [$1c06], sp                                   ; $63f3: $08 $06 $1c
	inc e                                            ; $63f6: $1c
	ld [rRAMG], sp                                   ; $63f7: $08 $00 $00
	inc e                                            ; $63fa: $1c
	jr jr_06f_6431                                   ; $63fb: $18 $34

	inc h                                            ; $63fd: $24
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	db $10                                           ; $6400: $10
	ld [$0001], sp                                   ; $6401: $08 $01 $00
	ld [$bbf1], a                                    ; $6404: $ea $f1 $bb
	rra                                              ; $6407: $1f
	ld a, [hl]                                       ; $6408: $7e
	rrca                                             ; $6409: $0f
	cp [hl]                                          ; $640a: $be
	ld [hl], e                                       ; $640b: $73
	rst AddAOntoHL                                          ; $640c: $ef
	sbc d                                            ; $640d: $9a
	ld b, e                                          ; $640e: $43
	ld c, a                                          ; $640f: $4f
	add h                                            ; $6410: $84
	dec b                                            ; $6411: $05
	ld [$e05f], sp                                   ; $6412: $08 $5f $e0
	rst SubAFromDE                                          ; $6415: $df
	inc a                                            ; $6416: $3c
	sbc [hl]                                         ; $6417: $9e
	jr nc, @+$0d                                     ; $6418: $30 $0b

	ldh [$9a], a                                     ; $641a: $e0 $9a
	inc e                                            ; $641c: $1c
	jr c, jr_06f_641f                                ; $641d: $38 $00

jr_06f_641f:
	nop                                              ; $641f: $00
	add hl, de                                       ; $6420: $19
	dec de                                           ; $6421: $1b
	ldh [$9b], a                                     ; $6422: $e0 $9b
	jr c, jr_06f_6462                                ; $6424: $38 $3c

	jr c, jr_06f_6440                                ; $6426: $38 $18

	ld b, a                                          ; $6428: $47
	ret nz                                           ; $6429: $c0

	ld l, $03                                        ; $642a: $2e $03
	ei                                               ; $642c: $fb
	rst SubAFromDE                                          ; $642d: $df
	ld bc, $03de                                     ; $642e: $01 $de $03

jr_06f_6431:
	sub d                                            ; $6431: $92
	ld [bc], a                                       ; $6432: $02
	dec b                                            ; $6433: $05
	ld b, $05                                        ; $6434: $06 $05
	ld b, $0b                                        ; $6436: $06 $0b
	ld c, $0b                                        ; $6438: $0e $0b
	ld c, $17                                        ; $643a: $0e $17
	ld e, $17                                        ; $643c: $1e $17
	dec e                                            ; $643e: $1d
	ld [hl], a                                       ; $643f: $77

jr_06f_6440:
	cp $9b                                           ; $6440: $fe $9b
	rrca                                             ; $6442: $0f
	add hl, bc                                       ; $6443: $09
	ld c, $0b                                        ; $6444: $0e $0b
	di                                               ; $6446: $f3
	ld [hl], a                                       ; $6447: $77
	ret c                                            ; $6448: $d8

	add b                                            ; $6449: $80
	inc b                                            ; $644a: $04
	rlca                                             ; $644b: $07
	ld a, [bc]                                       ; $644c: $0a
	dec c                                            ; $644d: $0d
	dec d                                            ; $644e: $15
	ld a, [de]                                       ; $644f: $1a
	ld a, [hl+]                                      ; $6450: $2a
	dec [hl]                                         ; $6451: $35
	dec l                                            ; $6452: $2d
	ld a, [hl-]                                      ; $6453: $3a
	ld d, d                                          ; $6454: $52
	ld a, a                                          ; $6455: $7f
	ld d, h                                          ; $6456: $54
	ld a, a                                          ; $6457: $7f
	sub l                                            ; $6458: $95
	rst $38                                          ; $6459: $ff
	and l                                            ; $645a: $a5
	rst $38                                          ; $645b: $ff
	xor c                                            ; $645c: $a9
	rst $38                                          ; $645d: $ff
	ld [$2aff], a                                    ; $645e: $ea $ff $2a
	ccf                                              ; $6461: $3f

jr_06f_6462:
	ld e, d                                          ; $6462: $5a
	ld a, a                                          ; $6463: $7f
	ld a, $3f                                        ; $6464: $3e $3f
	adc a                                            ; $6466: $8f
	or a                                             ; $6467: $b7
	adc [hl]                                         ; $6468: $8e
	sub b                                            ; $6469: $90
	and c                                            ; $646a: $a1
	inc h                                            ; $646b: $24
	ld h, b                                          ; $646c: $60
	inc l                                            ; $646d: $2c
	ld h, c                                          ; $646e: $61
	inc a                                            ; $646f: $3c
	push hl                                          ; $6470: $e5
	inc a                                            ; $6471: $3c
	push hl                                          ; $6472: $e5
	ld e, h                                          ; $6473: $5c
	push bc                                          ; $6474: $c5
	ld e, b                                          ; $6475: $58
	ret                                              ; $6476: $c9


	ld e, b                                          ; $6477: $58
	ret                                              ; $6478: $c9


	ld h, a                                          ; $6479: $67
	ret z                                            ; $647a: $c8

	sbc [hl]                                         ; $647b: $9e
	ld [bc], a                                       ; $647c: $02
	ld a, e                                          ; $647d: $7b
	ret z                                            ; $647e: $c8

	rst SubAFromDE                                          ; $647f: $df
	rra                                              ; $6480: $1f
	add b                                            ; $6481: $80
	add hl, bc                                       ; $6482: $09
	rrca                                             ; $6483: $0f
	inc de                                           ; $6484: $13
	rra                                              ; $6485: $1f
	dec e                                            ; $6486: $1d
	ld e, $37                                        ; $6487: $1e $37
	jr c, jr_06f_64da                                ; $6489: $38 $4f

	ld a, a                                          ; $648b: $7f
	db $f4                                           ; $648c: $f4
	rst $38                                          ; $648d: $ff
	add hl, hl                                       ; $648e: $29
	ccf                                              ; $648f: $3f
	ld l, $3b                                        ; $6490: $2e $3b
	ld d, e                                          ; $6492: $53
	ld l, [hl]                                       ; $6493: $6e
	ld d, l                                          ; $6494: $55
	ld l, [hl]                                       ; $6495: $6e
	ld d, a                                          ; $6496: $57
	ld l, l                                          ; $6497: $6d
	ld e, a                                          ; $6498: $5f
	ld l, c                                          ; $6499: $69
	ld c, l                                          ; $649a: $4d
	ld a, e                                          ; $649b: $7b
	ld l, $3b                                        ; $649c: $2e $3b
	ld a, [hl+]                                      ; $649e: $2a
	ccf                                              ; $649f: $3f
	dec hl                                           ; $64a0: $2b
	sub l                                            ; $64a1: $95
	ld a, $17                                        ; $64a2: $3e $17
	ld e, $1f                                        ; $64a4: $1e $1f
	ld e, $0b                                        ; $64a6: $1e $0b
	ld c, $0f                                        ; $64a8: $0e $0f
	ld a, [bc]                                       ; $64aa: $0a
	dec c                                            ; $64ab: $0d
	ld a, e                                          ; $64ac: $7b
	cp $7f                                           ; $64ad: $fe $7f
	db $fd                                           ; $64af: $fd
	sbc e                                            ; $64b0: $9b
	dec b                                            ; $64b1: $05
	rlca                                             ; $64b2: $07
	inc bc                                           ; $64b3: $03
	inc bc                                           ; $64b4: $03
	db $db                                           ; $64b5: $db
	ld bc, $dffb                                     ; $64b6: $01 $fb $df
	ld sp, hl                                        ; $64b9: $f9
	adc b                                            ; $64ba: $88
	rst $38                                          ; $64bb: $ff
	daa                                              ; $64bc: $27
	rst $38                                          ; $64bd: $ff
	ld c, c                                          ; $64be: $49
	rst $38                                          ; $64bf: $ff
	jp nc, $74bf                                     ; $64c0: $d2 $bf $74

	ld e, a                                          ; $64c3: $5f
	cp h                                             ; $64c4: $bc
	and a                                            ; $64c5: $a7
	ld a, a                                          ; $64c6: $7f
	ld a, e                                          ; $64c7: $7b
	add $f5                                          ; $64c8: $c6 $f5
	adc a                                            ; $64ca: $8f
	jp hl                                            ; $64cb: $e9


	sbc a                                            ; $64cc: $9f
	ld de, $11ff                                     ; $64cd: $11 $ff $11
	rst $38                                          ; $64d0: $ff
	inc hl                                           ; $64d1: $23
	ld a, e                                          ; $64d2: $7b
	cp $87                                           ; $64d3: $fe $87
	ld b, a                                          ; $64d5: $47
	cp $4e                                           ; $64d6: $fe $4e
	db $fc                                           ; $64d8: $fc
	ld c, a                                          ; $64d9: $4f

jr_06f_64da:
	db $fc                                           ; $64da: $fc
	rst $38                                          ; $64db: $ff
	ld sp, hl                                        ; $64dc: $f9
	rra                                              ; $64dd: $1f
	ei                                               ; $64de: $fb
	rrca                                             ; $64df: $0f
	ld a, [hl-]                                      ; $64e0: $3a
	rrca                                             ; $64e1: $0f
	ld a, [$fa1f]                                    ; $64e2: $fa $1f $fa
	ccf                                              ; $64e5: $3f
	db $eb                                           ; $64e6: $eb
	ld a, $ef                                        ; $64e7: $3e $ef
	ld a, [hl]                                       ; $64e9: $7e
	add $6e                                          ; $64ea: $c6 $6e
	jp $dfe3                                         ; $64ec: $c3 $e3 $df


	rlca                                             ; $64ef: $07
	add b                                            ; $64f0: $80
	inc e                                            ; $64f1: $1c
	rra                                              ; $64f2: $1f
	ld l, b                                          ; $64f3: $68
	ld a, a                                          ; $64f4: $7f
	or d                                             ; $64f5: $b2
	rst SubAFromDE                                          ; $64f6: $df
	ld h, l                                          ; $64f7: $65
	cp [hl]                                          ; $64f8: $be
	dec bc                                           ; $64f9: $0b
	db $fc                                           ; $64fa: $fc
	sub [hl]                                         ; $64fb: $96
	ld a, c                                          ; $64fc: $79
	rst $38                                          ; $64fd: $ff
	rst $38                                          ; $64fe: $ff
	ld a, $c1                                        ; $64ff: $3e $c1
	ei                                               ; $6501: $fb
	db $fc                                           ; $6502: $fc
	rst $38                                          ; $6503: $ff
	rlca                                             ; $6504: $07
	ret nz                                           ; $6505: $c0

	ccf                                              ; $6506: $3f
	ld a, a                                          ; $6507: $7f
	rst $38                                          ; $6508: $ff
	and h                                            ; $6509: $a4
	rst $38                                          ; $650a: $ff
	ld l, l                                          ; $650b: $6d
	db $db                                           ; $650c: $db
	ld a, e                                          ; $650d: $7b
	sub $df                                          ; $650e: $d6 $df
	sbc [hl]                                         ; $6510: $9e
	or [hl]                                          ; $6511: $b6
	ldh [$c1], a                                     ; $6512: $e0 $c1
	add b                                            ; $6514: $80
	cp $1a                                           ; $6515: $fe $1a
	db $fc                                           ; $6517: $fc
	ld h, h                                          ; $6518: $64
	db $fc                                           ; $6519: $fc
	add [hl]                                         ; $651a: $86
	rst $38                                          ; $651b: $ff
	rlca                                             ; $651c: $07
	ld e, $07                                        ; $651d: $1e $07
	ld a, b                                          ; $651f: $78
	inc c                                            ; $6520: $0c
	ldh a, [$9d]                                     ; $6521: $f0 $9d
	pop hl                                           ; $6523: $e1
	add hl, sp                                       ; $6524: $39
	pop bc                                           ; $6525: $c1
	ld [hl], e                                       ; $6526: $73
	jp nz, $8453                                     ; $6527: $c2 $53 $84

	rst SubAFromHL                                          ; $652a: $d7
	add h                                            ; $652b: $84
	rst SubAFromDE                                          ; $652c: $df
	adc c                                            ; $652d: $89
	rst SubAFromDE                                          ; $652e: $df
	ld d, d                                          ; $652f: $52
	rst $38                                          ; $6530: $ff
	dec [hl]                                         ; $6531: $35
	ld a, a                                          ; $6532: $7f
	rra                                              ; $6533: $1f
	sbc [hl]                                         ; $6534: $9e
	ccf                                              ; $6535: $3f
	rst FarCall                                          ; $6536: $f7
	rst SubAFromDE                                          ; $6537: $df

jr_06f_6538:
	rrca                                             ; $6538: $0f
	adc h                                            ; $6539: $8c
	ld e, $11                                        ; $653a: $1e $11
	cpl                                              ; $653c: $2f
	jr nc, @+$26                                     ; $653d: $30 $24

	dec sp                                           ; $653f: $3b
	ccf                                              ; $6540: $3f
	jr nz, jr_06f_65c2                               ; $6541: $20 $7f

	ld b, b                                          ; $6543: $40
	ld l, b                                          ; $6544: $68
	ld d, a                                          ; $6545: $57
	ld a, a                                          ; $6546: $7f
	ld b, e                                          ; $6547: $43
	ccf                                              ; $6548: $3f
	ccf                                              ; $6549: $3f
	jp $0cff                                         ; $654a: $c3 $ff $0c


	ld a, e                                          ; $654d: $7b
	ld [hl+], a                                      ; $654e: $22
	add c                                            ; $654f: $81
	jr nz, @+$01                                     ; $6550: $20 $ff

	add h                                            ; $6552: $84
	ld l, a                                          ; $6553: $6f
	dec de                                           ; $6554: $1b
	adc $2b                                          ; $6555: $ce $2b
	sbc a                                            ; $6557: $9f
	and d                                            ; $6558: $a2
	ld e, a                                          ; $6559: $5f
	sub d                                            ; $655a: $92
	cp $72                                           ; $655b: $fe $72
	cp $d3                                           ; $655d: $fe $d3
	ld a, $4b                                        ; $655f: $3e $4b
	cp [hl]                                          ; $6561: $be
	add $ff                                          ; $6562: $c6 $ff
	and $ff                                          ; $6564: $e6 $ff
	or a                                             ; $6566: $b7
	rst $38                                          ; $6567: $ff
	sbc h                                            ; $6568: $9c
	ccf                                              ; $6569: $3f
	ld [hl+], a                                      ; $656a: $22
	ld a, a                                          ; $656b: $7f
	ld e, e                                          ; $656c: $5b
	pop hl                                           ; $656d: $e1
	ldh [$c1], a                                     ; $656e: $e0 $c1
	rst SubAFromDE                                          ; $6570: $df
	adc c                                            ; $6571: $89
	rst SubAFromDE                                          ; $6572: $df
	ld c, c                                          ; $6573: $49
	sub d                                            ; $6574: $92
	nop                                              ; $6575: $00
	jr z, jr_06f_6538                                ; $6576: $28 $c0

	add sp, $48                                      ; $6578: $e8 $48
	rst $38                                          ; $657a: $ff
	adc b                                            ; $657b: $88
	rst $38                                          ; $657c: $ff
	sub c                                            ; $657d: $91
	rst $38                                          ; $657e: $ff
	ld [hl+], a                                      ; $657f: $22
	rst $38                                          ; $6580: $ff
	inc h                                            ; $6581: $24
	ld a, d                                          ; $6582: $7a
	sbc a                                            ; $6583: $9f
	sub e                                            ; $6584: $93
	sub e                                            ; $6585: $93
	rst $38                                          ; $6586: $ff
	and a                                            ; $6587: $a7
	cp $4f                                           ; $6588: $fe $4f
	rst $38                                          ; $658a: $ff
	cp a                                             ; $658b: $bf
	ld sp, hl                                        ; $658c: $f9
	ld l, a                                          ; $658d: $6f
	ld hl, sp-$39                                    ; $658e: $f8 $c7
	db $fc                                           ; $6590: $fc
	ld h, [hl]                                       ; $6591: $66
	ld b, b                                          ; $6592: $40
	rst SubAFromDE                                          ; $6593: $df
	ld hl, $1bdf                                     ; $6594: $21 $df $1b
	add b                                            ; $6597: $80
	push de                                          ; $6598: $d5
	rst SubAFromDE                                          ; $6599: $df
	or a                                             ; $659a: $b7
	ld a, l                                          ; $659b: $7d
	rst AddAOntoHL                                          ; $659c: $ef
	dec e                                            ; $659d: $1d
	dec [hl]                                         ; $659e: $35
	rst GetHLinHL                                          ; $659f: $cf
	swap a                                           ; $65a0: $cb $37
	inc sp                                           ; $65a2: $33
	rst GetHLinHL                                          ; $65a3: $cf
	push hl                                          ; $65a4: $e5
	cp $ff                                           ; $65a5: $fe $ff
	db $fc                                           ; $65a7: $fc
	scf                                              ; $65a8: $37
	rst $38                                          ; $65a9: $ff
	ld b, d                                          ; $65aa: $42
	rst $38                                          ; $65ab: $ff
	inc e                                            ; $65ac: $1c
	rst SubAFromBC                                          ; $65ad: $e7
	halt                                             ; $65ae: $76
	adc l                                            ; $65af: $8d
	xor e                                            ; $65b0: $ab
	dec e                                            ; $65b1: $1d
	inc l                                            ; $65b2: $2c
	dec de                                           ; $65b3: $1b
	call nc, $cb3b                                   ; $65b4: $d4 $3b $cb
	sub a                                            ; $65b7: $97
	or [hl]                                          ; $65b8: $b6
	ld c, h                                          ; $65b9: $4c
	or $b6                                           ; $65ba: $f6 $b6
	ld l, h                                          ; $65bc: $6c
	add hl, sp                                       ; $65bd: $39
	db $ec                                           ; $65be: $ec
	ld e, l                                          ; $65bf: $5d
	ld a, e                                          ; $65c0: $7b
	or h                                             ; $65c1: $b4

jr_06f_65c2:
	sub l                                            ; $65c2: $95
	cp a                                             ; $65c3: $bf
	di                                               ; $65c4: $f3
	db $d3                                           ; $65c5: $d3
	ldh [hDisp1_SCX], a                                     ; $65c6: $e0 $91
	cp $4b                                           ; $65c8: $fe $4b
	rst $38                                          ; $65ca: $ff
	ld h, l                                          ; $65cb: $65
	rst $38                                          ; $65cc: $ff
	ldh [$c1], a                                     ; $65cd: $e0 $c1
	add b                                            ; $65cf: $80
	ccf                                              ; $65d0: $3f
	inc hl                                           ; $65d1: $23
	ccf                                              ; $65d2: $3f
	ld h, $9f                                        ; $65d3: $26 $9f
	cp h                                             ; $65d5: $bc
	sbc a                                            ; $65d6: $9f
	cp e                                             ; $65d7: $bb
	sbc a                                            ; $65d8: $9f
	rst FarCall                                          ; $65d9: $f7
	cp a                                             ; $65da: $bf
	db $ec                                           ; $65db: $ec
	ccf                                              ; $65dc: $3f
	ldh a, [$7f]                                     ; $65dd: $f0 $7f
	ldh [rIE], a                                     ; $65df: $e0 $ff
	jp $eefe                                         ; $65e1: $c3 $fe $ee


	or e                                             ; $65e4: $b3
	ld [de], a                                       ; $65e5: $12
	ld l, a                                          ; $65e6: $6f
	inc hl                                           ; $65e7: $23
	cp $4f                                           ; $65e8: $fe $4f
	db $fc                                           ; $65ea: $fc
	db $f4                                           ; $65eb: $f4
	db $e4                                           ; $65ec: $e4
	rst JumpTable                                          ; $65ed: $c7
	sbc a                                            ; $65ee: $9f
	sbc [hl]                                         ; $65ef: $9e
	add a                                            ; $65f0: $87
	db $fd                                           ; $65f1: $fd
	rst SubAFromDE                                          ; $65f2: $df
	add b                                            ; $65f3: $80
	rst $38                                          ; $65f4: $ff
	rst SubAFromDE                                          ; $65f5: $df
	db $10                                           ; $65f6: $10
	rst SubAFromDE                                          ; $65f7: $df
	inc hl                                           ; $65f8: $23
	add b                                            ; $65f9: $80
	ld l, h                                          ; $65fa: $6c
	ld l, a                                          ; $65fb: $6f
	cp c                                             ; $65fc: $b9
	rst FarCall                                          ; $65fd: $f7
	ld [hl], $ef                                     ; $65fe: $36 $ef
	ld l, h                                          ; $6600: $6c
	rst SubAFromDE                                          ; $6601: $df
	ld c, c                                          ; $6602: $49
	rst $38                                          ; $6603: $ff
	rst SubAFromDE                                          ; $6604: $df
	rst $38                                          ; $6605: $ff
	and c                                            ; $6606: $a1
	ld a, [hl]                                       ; $6607: $7e
	inc a                                            ; $6608: $3c
	rst $38                                          ; $6609: $ff
	rst GetHLinHL                                          ; $660a: $cf
	ldh a, [$f7]                                     ; $660b: $f0 $f7
	ld hl, sp-$63                                    ; $660d: $f8 $9d
	cp $af                                           ; $660f: $fe $af
	rst SubAFromDE                                          ; $6611: $df
	ld b, l                                          ; $6612: $45
	sbc a                                            ; $6613: $9f
	xor h                                            ; $6614: $ac
	rla                                              ; $6615: $17
	ld c, $35                                        ; $6616: $0e $35
	ld e, d                                          ; $6618: $5a
	adc e                                            ; $6619: $8b
	dec h                                            ; $661a: $25
	sbc b                                            ; $661b: $98
	ld l, l                                          ; $661c: $6d
	cp c                                             ; $661d: $b9
	ld c, h                                          ; $661e: $4c
	ld h, l                                          ; $661f: $65
	ret c                                            ; $6620: $d8

	ld [hl], c                                       ; $6621: $71
	ret c                                            ; $6622: $d8

	or e                                             ; $6623: $b3
	ret c                                            ; $6624: $d8

	adc [hl]                                         ; $6625: $8e
	pop af                                           ; $6626: $f1
	db $ed                                           ; $6627: $ed
	ld [hl], e                                       ; $6628: $73
	pop de                                           ; $6629: $d1
	ccf                                              ; $662a: $3f
	jp z, Jump_06f_74ff                              ; $662b: $ca $ff $74

	inc bc                                           ; $662e: $03
	ld h, b                                          ; $662f: $60
	pop hl                                           ; $6630: $e1
	add b                                            ; $6631: $80
	rst $38                                          ; $6632: $ff
	ld c, $ff                                        ; $6633: $0e $ff
	ld a, $e7                                        ; $6635: $3e $e7
	db $fc                                           ; $6637: $fc
	rlca                                             ; $6638: $07
	db $fc                                           ; $6639: $fc
	jp $e3fe                                         ; $663a: $c3 $fe $e3


	ccf                                              ; $663d: $3f
	rst $38                                          ; $663e: $ff
	ld a, $e4                                        ; $663f: $3e $e4
	db $fc                                           ; $6641: $fc
	call nz, Call_06f_4444                           ; $6642: $c4 $44 $44
	ld a, h                                          ; $6645: $7c
	call nz, $ff7c                                   ; $6646: $c4 $7c $ff
	db $fc                                           ; $6649: $fc
	ld a, a                                          ; $664a: $7f
	adc $47                                          ; $664b: $ce $47
	ld b, e                                          ; $664d: $43
	pop af                                           ; $664e: $f1
	add b                                            ; $664f: $80
	db $fc                                           ; $6650: $fc
	sbc [hl]                                         ; $6651: $9e
	ldh a, [$f7]                                     ; $6652: $f0 $f7
	rst SubAFromDE                                          ; $6654: $df
	ldh a, [$df]                                     ; $6655: $f0 $df
	add b                                            ; $6657: $80
	rst SubAFromDE                                          ; $6658: $df
	ldh a, [hDisp0_SCX]                                     ; $6659: $f0 $84
	adc h                                            ; $665b: $8c
	db $fc                                           ; $665c: $fc
	ld a, $fe                                        ; $665d: $3e $fe
	ld b, c                                          ; $665f: $41
	rst $38                                          ; $6660: $ff
	cp $ff                                           ; $6661: $fe $ff
	ld sp, hl                                        ; $6663: $f9
	rlca                                             ; $6664: $07
	ld a, [hl]                                       ; $6665: $7e
	add c                                            ; $6666: $81
	inc a                                            ; $6667: $3c
	jp $0ff0                                         ; $6668: $c3 $f0 $0f


	db $ec                                           ; $666b: $ec
	rra                                              ; $666c: $1f
	di                                               ; $666d: $f3
	rrca                                             ; $666e: $0f
	add c                                            ; $666f: $81
	rst $38                                          ; $6670: $ff
	pop hl                                           ; $6671: $e1
	rst $38                                          ; $6672: $ff
	sbc c                                            ; $6673: $99
	rst $38                                          ; $6674: $ff
	ld c, e                                          ; $6675: $4b
	ld a, d                                          ; $6676: $7a
	add d                                            ; $6677: $82
	ld a, a                                          ; $6678: $7f
	ld c, h                                          ; $6679: $4c
	add b                                            ; $667a: $80
	ld [de], a                                       ; $667b: $12
	rst $38                                          ; $667c: $ff
	ld d, l                                          ; $667d: $55
	cp e                                             ; $667e: $bb
	ld e, d                                          ; $667f: $5a
	cp l                                             ; $6680: $bd
	ld e, d                                          ; $6681: $5a
	cp l                                             ; $6682: $bd
	ld e, c                                          ; $6683: $59
	cp [hl]                                          ; $6684: $be
	db $dd                                           ; $6685: $dd
	ld a, $95                                        ; $6686: $3e $95
	ld a, [hl]                                       ; $6688: $7e
	and h                                            ; $6689: $a4
	ld a, a                                          ; $668a: $7f
	ld h, $ff                                        ; $668b: $26 $ff
	ld h, $df                                        ; $668d: $26 $df
	ld l, [hl]                                       ; $668f: $6e
	rst SubAFromDE                                          ; $6690: $df
	rst JumpTable                                          ; $6691: $c7
	rst $38                                          ; $6692: $ff
	rst SubAFromHL                                          ; $6693: $d7
	cp a                                             ; $6694: $bf
	add l                                            ; $6695: $85
	ld a, a                                          ; $6696: $7f
	dec l                                            ; $6697: $2d
	rst $38                                          ; $6698: $ff
	ld c, l                                          ; $6699: $4d
	ld a, a                                          ; $669a: $7f
	ld hl, sp-$73                                    ; $669b: $f8 $8d
	cp l                                             ; $669d: $bd
	cp [hl]                                          ; $669e: $be
	ld a, l                                          ; $669f: $7d
	cpl                                              ; $66a0: $2f
	db $fc                                           ; $66a1: $fc
	ld e, a                                          ; $66a2: $5f
	db $fc                                           ; $66a3: $fc
	sbc [hl]                                         ; $66a4: $9e
	db $fd                                           ; $66a5: $fd
	scf                                              ; $66a6: $37
	db $fd                                           ; $66a7: $fd
	ld h, l                                          ; $66a8: $65
	rst $38                                          ; $66a9: $ff
	db $ed                                           ; $66aa: $ed
	rst FarCall                                          ; $66ab: $f7
	xor l                                            ; $66ac: $ad
	rst FarCall                                          ; $66ad: $f7
	dec l                                            ; $66ae: $2d
	ld a, e                                          ; $66af: $7b
	cp $80                                           ; $66b0: $fe $80
	ld a, l                                          ; $66b2: $7d
	or a                                             ; $66b3: $b7
	ld [hl], e                                       ; $66b4: $73
	cp a                                             ; $66b5: $bf
	di                                               ; $66b6: $f3
	cp a                                             ; $66b7: $bf
	xor d                                            ; $66b8: $aa
	rst AddAOntoHL                                          ; $66b9: $ef
	xor d                                            ; $66ba: $aa
	rst AddAOntoHL                                          ; $66bb: $ef
	and [hl]                                         ; $66bc: $a6
	rst SubAFromBC                                          ; $66bd: $e7
	ld d, d                                          ; $66be: $52
	ld [hl], e                                       ; $66bf: $73
	ld d, c                                          ; $66c0: $51
	ld [hl], c                                       ; $66c1: $71
	or c                                             ; $66c2: $b1
	or c                                             ; $66c3: $b1
	ld a, b                                          ; $66c4: $78
	ld hl, sp-$08                                    ; $66c5: $f8 $f8
	adc b                                            ; $66c7: $88
	db $fc                                           ; $66c8: $fc
	inc b                                            ; $66c9: $04
	cp $02                                           ; $66ca: $fe $02
	rst $38                                          ; $66cc: $ff
	inc bc                                           ; $66cd: $03
	cp $03                                           ; $66ce: $fe $03
	cp $7f                                           ; $66d0: $fe $7f
	ld h, c                                          ; $66d2: $61
	ld [hl], a                                       ; $66d3: $77
	cp $8b                                           ; $66d4: $fe $8b
	rst JumpTable                                          ; $66d6: $c7
	ld hl, sp+$0f                                    ; $66d7: $f8 $0f
	jr c, jr_06f_66ea                                ; $66d9: $38 $0f

	ld [hl], b                                       ; $66db: $70
	rra                                              ; $66dc: $1f
	pop af                                           ; $66dd: $f1

jr_06f_66de:
	rra                                              ; $66de: $1f
	pop hl                                           ; $66df: $e1
	ccf                                              ; $66e0: $3f
	db $e3                                           ; $66e1: $e3
	ld a, $c3                                        ; $66e2: $3e $c3
	ld a, [hl]                                       ; $66e4: $7e
	rst JumpTable                                          ; $66e5: $c7
	ld a, h                                          ; $66e6: $7c
	rst JumpTable                                          ; $66e7: $c7
	ld a, h                                          ; $66e8: $7c
	add a                                            ; $66e9: $87

jr_06f_66ea:
	ld l, d                                          ; $66ea: $6a
	jr nz, jr_06f_66de                               ; $66eb: $20 $f1

	rst SubAFromDE                                          ; $66ed: $df
	add b                                            ; $66ee: $80
	add b                                            ; $66ef: $80
	ld b, b                                          ; $66f0: $40
	ret nz                                           ; $66f1: $c0

	ldh [$e0], a                                     ; $66f2: $e0 $e0
	and b                                            ; $66f4: $a0
	ldh [$d0], a                                     ; $66f5: $e0 $d0
	or b                                             ; $66f7: $b0
	ldh a, [hDisp1_SCY]                                     ; $66f8: $f0 $90
	or b                                             ; $66fa: $b0
	ret nc                                           ; $66fb: $d0

	ret z                                            ; $66fc: $c8

	ld hl, sp+$28                                    ; $66fd: $f8 $28
	ld hl, sp-$68                                    ; $66ff: $f8 $98
	ld a, b                                          ; $6701: $78
	ld c, b                                          ; $6702: $48
	cp b                                             ; $6703: $b8
	xor b                                            ; $6704: $a8
	ret c                                            ; $6705: $d8

	ld [hl], h                                       ; $6706: $74
	call z, $6c94                                    ; $6707: $cc $94 $6c
	ld [hl], d                                       ; $670a: $72
	xor [hl]                                         ; $670b: $ae
	ld a, [$ba86]                                    ; $670c: $fa $86 $ba
	add b                                            ; $670f: $80
	sub $7a                                          ; $6710: $d6 $7a
	sub $6e                                          ; $6712: $d6 $6e
	jp nc, $fa46                                     ; $6714: $d2 $46 $fa

	adc $7a                                          ; $6717: $ce $7a
	cp [hl]                                          ; $6719: $be
	ld l, d                                          ; $671a: $6a
	cp [hl]                                          ; $671b: $be
	ld l, d                                          ; $671c: $6a
	ld a, [hl-]                                      ; $671d: $3a
	xor $b4                                          ; $671e: $ee $b4
	ld l, h                                          ; $6720: $6c
	inc [hl]                                         ; $6721: $34
	db $ec                                           ; $6722: $ec
	ld [hl], h                                       ; $6723: $74
	xor h                                            ; $6724: $ac
	ld h, h                                          ; $6725: $64
	cp h                                             ; $6726: $bc
	ld h, h                                          ; $6727: $64
	cp h                                             ; $6728: $bc
	db $e4                                           ; $6729: $e4
	inc a                                            ; $672a: $3c
	db $e4                                           ; $672b: $e4
	inc a                                            ; $672c: $3c
	add sp, $38                                      ; $672d: $e8 $38
	ld a, e                                          ; $672f: $7b
	cp $9e                                           ; $6730: $fe $9e
	ld a, b                                          ; $6732: $78
	ld [hl], a                                       ; $6733: $77
	cp $91                                           ; $6734: $fe $91
	ret c                                            ; $6736: $d8

	ld e, b                                          ; $6737: $58
	ret c                                            ; $6738: $d8

	ld e, b                                          ; $6739: $58
	ret z                                            ; $673a: $c8

	ld c, b                                          ; $673b: $48
	ld c, b                                          ; $673c: $48
	ret z                                            ; $673d: $c8

	ld b, h                                          ; $673e: $44
	call nz, $c444                                   ; $673f: $c4 $44 $c4
	ld b, b                                          ; $6742: $40
	ret nz                                           ; $6743: $c0

	pop de                                           ; $6744: $d1
	add b                                            ; $6745: $80
	rst SubAFromDE                                          ; $6746: $df
	ld b, b                                          ; $6747: $40
	ld l, a                                          ; $6748: $6f
	sub h                                            ; $6749: $94
	ld [hl], a                                       ; $674a: $77
	sub d                                            ; $674b: $92
	ld [hl], a                                       ; $674c: $77
	cp $7b                                           ; $674d: $fe $7b
	adc a                                            ; $674f: $8f
	ld [hl], a                                       ; $6750: $77
	cp $9e                                           ; $6751: $fe $9e
	jr nz, jr_06f_67c8                               ; $6753: $20 $73

	di                                               ; $6755: $f3
	ld l, e                                          ; $6756: $6b
	cp $1f                                           ; $6757: $fe $1f

Jump_06f_6759:
	nop                                              ; $6759: $00
	adc [hl]                                         ; $675a: $8e
	sbc c                                            ; $675b: $99
	call z, $aa11                                    ; $675c: $cc $11 $aa
	adc b                                            ; $675f: $88
	call z, $aa66                                    ; $6760: $cc $66 $aa
	xor d                                            ; $6763: $aa
	sbc c                                            ; $6764: $99
	sbc c                                            ; $6765: $99
	ld h, [hl]                                       ; $6766: $66
	cp e                                             ; $6767: $bb
	nop                                              ; $6768: $00
	sbc c                                            ; $6769: $99
	sbc c                                            ; $676a: $99
	ld de, $fb5b                                     ; $676b: $11 $5b $fb
	rst SubAFromDE                                          ; $676e: $df
	ld [hl+], a                                      ; $676f: $22
	sbc l                                            ; $6770: $9d
	xor d                                            ; $6771: $aa
	ld de, $aadd                                     ; $6772: $11 $dd $aa
	sbc [hl]                                         ; $6775: $9e
	sbc c                                            ; $6776: $99
	and c                                            ; $6777: $a1
	ld bc, $b690                                     ; $6778: $01 $90 $b6
	rst $38                                          ; $677b: $ff
	cp [hl]                                          ; $677c: $be
	ei                                               ; $677d: $fb
	rst $38                                          ; $677e: $ff
	reti                                             ; $677f: $d9


	db $fd                                           ; $6780: $fd
	adc c                                            ; $6781: $89
	db $fc                                           ; $6782: $fc
	add b                                            ; $6783: $80
	call c, Call_06f_6e3c                            ; $6784: $dc $3c $6e
	ldh a, [$1f]                                     ; $6787: $f0 $1f
	cp a                                             ; $6789: $bf
	ccf                                              ; $678a: $3f
	ld e, a                                          ; $678b: $5f
	sub c                                            ; $678c: $91
	ld a, $bb                                        ; $678d: $3e $bb
	ld [hl], e                                       ; $678f: $73
	pop af                                           ; $6790: $f1
	di                                               ; $6791: $f3
	rst SubAFromDE                                          ; $6792: $df
	ld e, a                                          ; $6793: $5f
	dec d                                            ; $6794: $15
	rra                                              ; $6795: $1f
	ld a, [de]                                       ; $6796: $1a
	ld [de], a                                       ; $6797: $12
	dec a                                            ; $6798: $3d
	ld c, $85                                        ; $6799: $0e $85
	cp a                                             ; $679b: $bf
	add b                                            ; $679c: $80
	nop                                              ; $679d: $00
	add b                                            ; $679e: $80
	add b                                            ; $679f: $80
	ret nz                                           ; $67a0: $c0

	add b                                            ; $67a1: $80
	add b                                            ; $67a2: $80
	ret nz                                           ; $67a3: $c0

	ldh [$c0], a                                     ; $67a4: $e0 $c0
	ldh a, [$e0]                                     ; $67a6: $f0 $e0
	sbc b                                            ; $67a8: $98
	ld [hl], b                                       ; $67a9: $70
	adc h                                            ; $67aa: $8c
	ld hl, sp-$3a                                    ; $67ab: $f8 $c6
	ld a, h                                          ; $67ad: $7c
	rst $38                                          ; $67ae: $ff
	ld a, [hl]                                       ; $67af: $7e
	rst GetHLinHL                                          ; $67b0: $cf
	rst JumpTable                                          ; $67b1: $c7
	ld a, $0f                                        ; $67b2: $3e $0f
	ld hl, sp+$38                                    ; $67b4: $f8 $38
	jp c, $9f74                                      ; $67b6: $da $74 $9f

	di                                               ; $67b9: $f3
	or c                                             ; $67ba: $b1
	pop bc                                           ; $67bb: $c1
	ldh [$80], a                                     ; $67bc: $e0 $80
	ld a, a                                          ; $67be: $7f
	cp $99                                           ; $67bf: $fe $99
	and b                                            ; $67c1: $a0
	add b                                            ; $67c2: $80
	and c                                            ; $67c3: $a1
	add c                                            ; $67c4: $81
	ld d, c                                          ; $67c5: $51
	ld b, b                                          ; $67c6: $40
	db $fd                                           ; $67c7: $fd

jr_06f_67c8:
	sbc [hl]                                         ; $67c8: $9e
	ld bc, $83b9                                     ; $67c9: $01 $b9 $83
	add e                                            ; $67cc: $83
	add e                                            ; $67cd: $83
	ld bc, $a800                                     ; $67ce: $01 $00 $a8
	db $f4                                           ; $67d1: $f4

Jump_06f_67d2:
	ld d, [hl]                                       ; $67d2: $56
	sub l                                            ; $67d3: $95
	rst $38                                          ; $67d4: $ff
	or $df                                           ; $67d5: $f6 $df
	cp c                                             ; $67d7: $b9
	rst SubAFromDE                                          ; $67d8: $df
	rst SubAFromHL                                          ; $67d9: $d7
	sbc c                                            ; $67da: $99
	rst SubAFromDE                                          ; $67db: $df
	ld de, $bf9f                                     ; $67dc: $11 $9f $bf
	ld a, a                                          ; $67df: $7f
	cp l                                             ; $67e0: $bd
	adc c                                            ; $67e1: $89
	ld a, [hl]                                       ; $67e2: $7e
	ei                                               ; $67e3: $fb
	rlca                                             ; $67e4: $07
	rst $38                                          ; $67e5: $ff
	nop                                              ; $67e6: $00
	ei                                               ; $67e7: $fb
	inc a                                            ; $67e8: $3c
	cp $7f                                           ; $67e9: $fe $7f
	inc de                                           ; $67eb: $13
	di                                               ; $67ec: $f3
	and a                                            ; $67ed: $a7
	daa                                              ; $67ee: $27
	dec a                                            ; $67ef: $3d
	ccf                                              ; $67f0: $3f
	dec l                                            ; $67f1: $2d
	ccf                                              ; $67f2: $3f
	scf                                              ; $67f3: $37
	ld [de], a                                       ; $67f4: $12
	ld e, l                                          ; $67f5: $5d
	ld a, $9f                                        ; $67f6: $3e $9f
	cp h                                             ; $67f8: $bc
	rlca                                             ; $67f9: $07
	rrca                                             ; $67fa: $0f
	rra                                              ; $67fb: $1f
	rra                                              ; $67fc: $1f
	ccf                                              ; $67fd: $3f
	add b                                            ; $67fe: $80
	ld bc, $077e                                     ; $67ff: $01 $7e $07
	db $fd                                           ; $6802: $fd
	rra                                              ; $6803: $1f
	ldh a, [c]                                       ; $6804: $f2
	ld a, a                                          ; $6805: $7f
	call $f5fe                                       ; $6806: $cd $fe $f5
	ld hl, sp-$6e                                    ; $6809: $f8 $92
	pop hl                                           ; $680b: $e1
	db $e4                                           ; $680c: $e4
	jp Jump_06f_6759                                 ; $680d: $c3 $59 $67


	xor [hl]                                         ; $6810: $ae
	rst $38                                          ; $6811: $ff
	sub c                                            ; $6812: $91
	cp $5b                                           ; $6813: $fe $5b
	db $fc                                           ; $6815: $fc
	ld c, h                                          ; $6816: $4c
	rst $38                                          ; $6817: $ff
	ld c, d                                          ; $6818: $4a
	rst $38                                          ; $6819: $ff
	jp hl                                            ; $681a: $e9


	rst $38                                          ; $681b: $ff
	xor l                                            ; $681c: $ad
	rst $38                                          ; $681d: $ff
	add b                                            ; $681e: $80
	db $ed                                           ; $681f: $ed
	ccf                                              ; $6820: $3f
	push af                                          ; $6821: $f5
	cp a                                             ; $6822: $bf
	db $ed                                           ; $6823: $ed
	scf                                              ; $6824: $37
	jp c, $ea2f                                      ; $6825: $da $2f $ea

	rra                                              ; $6828: $1f
	ld [hl], l                                       ; $6829: $75
	sbc a                                            ; $682a: $9f
	ld a, [$db8f]                                    ; $682b: $fa $8f $db
	xor $f7                                          ; $682e: $ee $f7
	ld c, $f6                                        ; $6830: $0e $f6
	dec c                                            ; $6832: $0d
	push af                                          ; $6833: $f5
	dec bc                                           ; $6834: $0b
	db $e3                                           ; $6835: $e3
	rra                                              ; $6836: $1f
	rst $38                                          ; $6837: $ff
	rra                                              ; $6838: $1f
	di                                               ; $6839: $f3
	ccf                                              ; $683a: $3f
	pop hl                                           ; $683b: $e1
	ld a, a                                          ; $683c: $7f
	pop af                                           ; $683d: $f1
	adc h                                            ; $683e: $8c
	rst $38                                          ; $683f: $ff
	ld h, e                                          ; $6840: $63
	rst $38                                          ; $6841: $ff
	push bc                                          ; $6842: $c5
	rst $38                                          ; $6843: $ff
	ld l, b                                          ; $6844: $68
	sbc a                                            ; $6845: $9f
	call nc, $a83b                                   ; $6846: $d4 $3b $a8
	ld [hl], a                                       ; $6849: $77
	db $10                                           ; $684a: $10
	rst AddAOntoHL                                          ; $684b: $ef
	jr nz, @-$1f                                     ; $684c: $20 $df

	add c                                            ; $684e: $81
	rst $38                                          ; $684f: $ff
	inc bc                                           ; $6850: $03
	rst $38                                          ; $6851: $ff
	ld b, a                                          ; $6852: $47
	jr nz, jr_06f_68c8                               ; $6853: $20 $73

	sbc b                                            ; $6855: $98
	sbc b                                            ; $6856: $98
	ld a, $b1                                        ; $6857: $3e $b1
	ld [hl], e                                       ; $6859: $73
	rst $38                                          ; $685a: $ff
	rst $38                                          ; $685b: $ff
	ld d, l                                          ; $685c: $55
	ld e, a                                          ; $685d: $5f
	ld [hl], a                                       ; $685e: $77
	jr nz, jr_06f_6864                               ; $685f: $20 $03

	ld b, b                                          ; $6861: $40
	dec sp                                           ; $6862: $3b
	ld b, b                                          ; $6863: $40

jr_06f_6864:
	ld a, a                                          ; $6864: $7f
	cp $9b                                           ; $6865: $fe $9b
	db $fd                                           ; $6867: $fd
	ld a, $7e                                        ; $6868: $3e $7e
	rst $38                                          ; $686a: $ff
	inc bc                                           ; $686b: $03
	ld b, b                                          ; $686c: $40
	inc de                                           ; $686d: $13
	ld b, b                                          ; $686e: $40
	sub a                                            ; $686f: $97
	push af                                          ; $6870: $f5
	rra                                              ; $6871: $1f
	ld a, d                                          ; $6872: $7a
	adc a                                            ; $6873: $8f
	ei                                               ; $6874: $fb
	adc [hl]                                         ; $6875: $8e
	ld d, a                                          ; $6876: $57
	xor $3f                                          ; $6877: $ee $3f
	ld h, b                                          ; $6879: $60
	ld a, a                                          ; $687a: $7f

Jump_06f_687b:
	cp $7f                                           ; $687b: $fe $7f
	or d                                             ; $687d: $b2
	ld a, a                                          ; $687e: $7f
	cp $7f                                           ; $687f: $fe $7f
	xor d                                            ; $6881: $aa
	sbc e                                            ; $6882: $9b
	ld [hl], a                                       ; $6883: $77
	rst $38                                          ; $6884: $ff
	ld a, [de]                                       ; $6885: $1a
	ld a, [de]                                       ; $6886: $1a
	inc bc                                           ; $6887: $03
	ld h, b                                          ; $6888: $60
	dec hl                                           ; $6889: $2b
	ld h, b                                          ; $688a: $60
	ld [hl], a                                       ; $688b: $77
	cp $9e                                           ; $688c: $fe $9e
	db $dd                                           ; $688e: $dd
	ld a, e                                          ; $688f: $7b
	ld e, h                                          ; $6890: $5c
	sbc d                                            ; $6891: $9a
	dec hl                                           ; $6892: $2b
	dec sp                                           ; $6893: $3b
	dec e                                            ; $6894: $1d
	ld e, $7f                                        ; $6895: $1e $7f
	cp e                                             ; $6897: $bb
	sbc a                                            ; $6898: $9f
	rlca                                             ; $6899: $07
	rrca                                             ; $689a: $0f
	rra                                              ; $689b: $1f
	rra                                              ; $689c: $1f
	ccf                                              ; $689d: $3f
	inc bc                                           ; $689e: $03
	ld h, b                                          ; $689f: $60
	ld e, a                                          ; $68a0: $5f
	ld h, b                                          ; $68a1: $60
	sbc d                                            ; $68a2: $9a
	ld a, [$fb0f]                                    ; $68a3: $fa $0f $fb
	ld c, $d7                                        ; $68a6: $0e $d7
	ld e, e                                          ; $68a8: $5b
	ld h, b                                          ; $68a9: $60
	sbc c                                            ; $68aa: $99
	db $ec                                           ; $68ab: $ec
	inc e                                            ; $68ac: $1c
	or [hl]                                          ; $68ad: $b6
	ld a, b                                          ; $68ae: $78
	ld e, a                                          ; $68af: $5f
	ld h, b                                          ; $68b0: $60
	ld h, a                                          ; $68b1: $67
	ld h, b                                          ; $68b2: $60
	ld a, a                                          ; $68b3: $7f
	ld a, [$2599]                                    ; $68b4: $fa $99 $25
	ld [hl], e                                       ; $68b7: $73
	rra                                              ; $68b8: $1f
	ld e, $3f                                        ; $68b9: $1e $3f
	nop                                              ; $68bb: $00
	inc bc                                           ; $68bc: $03
	ld h, b                                          ; $68bd: $60
	ld d, e                                          ; $68be: $53
	ld h, b                                          ; $68bf: $60
	sbc c                                            ; $68c0: $99
	cp e                                             ; $68c1: $bb
	ld a, h                                          ; $68c2: $7c
	or $0f                                           ; $68c3: $f6 $0f
	db $fd                                           ; $68c5: $fd
	inc bc                                           ; $68c6: $03
	ld h, a                                          ; $68c7: $67

jr_06f_68c8:
	ld e, [hl]                                       ; $68c8: $5e
	sbc d                                            ; $68c9: $9a
	pop bc                                           ; $68ca: $c1
	nop                                              ; $68cb: $00
	ld l, a                                          ; $68cc: $6f
	ld [hl], e                                       ; $68cd: $73
	ld a, l                                          ; $68ce: $7d
	inc bc                                           ; $68cf: $03
	ld h, b                                          ; $68d0: $60
	ld c, e                                          ; $68d1: $4b
	ld h, b                                          ; $68d2: $60
	sbc h                                            ; $68d3: $9c
	ccf                                              ; $68d4: $3f
	db $ed                                           ; $68d5: $ed
	or a                                             ; $68d6: $b7
	ld e, a                                          ; $68d7: $5f
	ld h, b                                          ; $68d8: $60
	sbc b                                            ; $68d9: $98
	ld [hl], a                                       ; $68da: $77
	adc [hl]                                         ; $68db: $8e
	ld a, [hl]                                       ; $68dc: $7e
	ld b, b                                          ; $68dd: $40
	cp l                                             ; $68de: $bd
	ret nz                                           ; $68df: $c0

	ldh a, [c]                                       ; $68e0: $f2
	ld a, e                                          ; $68e1: $7b
	add [hl]                                         ; $68e2: $86
	sub a                                            ; $68e3: $97
	ret c                                            ; $68e4: $d8

	sub b                                            ; $68e5: $90
	ld [hl], b                                       ; $68e6: $70
	ld h, b                                          ; $68e7: $60
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00

jr_06f_68ea:
	ld d, b                                          ; $68ea: $50
	jr nz, jr_06f_68ea                               ; $68eb: $20 $fd

	sub e                                            ; $68ed: $93
	or l                                             ; $68ee: $b5
	ld a, b                                          ; $68ef: $78
	rst GetHLinHL                                          ; $68f0: $cf
	rst GetHLinHL                                          ; $68f1: $cf
	or a                                             ; $68f2: $b7
	dec h                                            ; $68f3: $25
	ld e, a                                          ; $68f4: $5f
	sbc a                                            ; $68f5: $9f
	ld [hl], d                                       ; $68f6: $72
	ld [hl], d                                       ; $68f7: $72
	jp nc, Jump_06f_67d2                             ; $68f8: $d2 $d2 $67

	ldh [$9d], a                                     ; $68fb: $e0 $9d
	ld hl, sp-$10                                    ; $68fd: $f8 $f0
	dec bc                                           ; $68ff: $0b
	ldh [$7f], a                                     ; $6900: $e0 $7f
	rst SubAFromDE                                          ; $6902: $df
	sbc c                                            ; $6903: $99
	ld a, b                                          ; $6904: $78
	ld h, b                                          ; $6905: $60
	jr nc, jr_06f_6908                               ; $6906: $30 $00

jr_06f_6908:
	nop                                              ; $6908: $00
	db $10                                           ; $6909: $10
	ld a, e                                          ; $690a: $7b
	sbc $2f                                          ; $690b: $de $2f
	ldh [$df], a                                     ; $690d: $e0 $df
	ld a, b                                          ; $690f: $78
	sbc h                                            ; $6910: $9c
	jr nc, jr_06f_698b                               ; $6911: $30 $78

	jr nc, jr_06f_6988                               ; $6913: $30 $73

	sbc $57                                          ; $6915: $de $57
	ldh [$a5], a                                     ; $6917: $e0 $a5
	ld bc, $b680                                     ; $6919: $01 $80 $b6
	rst $38                                          ; $691c: $ff
	cp [hl]                                          ; $691d: $be
	ei                                               ; $691e: $fb
	rst $38                                          ; $691f: $ff
	reti                                             ; $6920: $d9


	db $fd                                           ; $6921: $fd
	adc c                                            ; $6922: $89
	db $fc                                           ; $6923: $fc
	add b                                            ; $6924: $80
	db $fc                                           ; $6925: $fc
	ld a, h                                          ; $6926: $7c
	cp [hl]                                          ; $6927: $be
	ret nz                                           ; $6928: $c0

	rra                                              ; $6929: $1f
	nop                                              ; $692a: $00
	cpl                                              ; $692b: $2f
	ld e, $7f                                        ; $692c: $1e $7f
	ccf                                              ; $692e: $3f
	db $db                                           ; $692f: $db
	di                                               ; $6930: $f3
	or c                                             ; $6931: $b1
	ld d, c                                          ; $6932: $51
	ld e, a                                          ; $6933: $5f
	rra                                              ; $6934: $1f
	dec d                                            ; $6935: $15
	rra                                              ; $6936: $1f
	ld a, [de]                                       ; $6937: $1a
	ld [de], a                                       ; $6938: $12
	dec a                                            ; $6939: $3d
	sbc l                                            ; $693a: $9d
	ld c, $80                                        ; $693b: $0e $80
	cp a                                             ; $693d: $bf
	add b                                            ; $693e: $80
	nop                                              ; $693f: $00
	add b                                            ; $6940: $80
	add b                                            ; $6941: $80
	ret nz                                           ; $6942: $c0

	add b                                            ; $6943: $80
	add b                                            ; $6944: $80
	ret nz                                           ; $6945: $c0

	ldh [$c0], a                                     ; $6946: $e0 $c0
	ldh a, [$e0]                                     ; $6948: $f0 $e0
	sbc b                                            ; $694a: $98
	ld [hl], b                                       ; $694b: $70
	adc h                                            ; $694c: $8c
	ld hl, sp-$3a                                    ; $694d: $f8 $c6
	ld a, h                                          ; $694f: $7c
	rst $38                                          ; $6950: $ff
	ld a, [hl]                                       ; $6951: $7e
	rst GetHLinHL                                          ; $6952: $cf
	rst JumpTable                                          ; $6953: $c7
	ld a, $0f                                        ; $6954: $3e $0f
	ld hl, sp+$38                                    ; $6956: $f8 $38
	jp c, $9f74                                      ; $6958: $da $74 $9f

	di                                               ; $695b: $f3
	or c                                             ; $695c: $b1
	pop bc                                           ; $695d: $c1
	ldh [$80], a                                     ; $695e: $e0 $80
	ld a, a                                          ; $6960: $7f
	cp $99                                           ; $6961: $fe $99
	and b                                            ; $6963: $a0
	add b                                            ; $6964: $80
	and c                                            ; $6965: $a1
	add c                                            ; $6966: $81
	ld d, c                                          ; $6967: $51
	ld b, b                                          ; $6968: $40
	db $fd                                           ; $6969: $fd
	sbc [hl]                                         ; $696a: $9e
	ld bc, $83b9                                     ; $696b: $01 $b9 $83
	add e                                            ; $696e: $83
	add e                                            ; $696f: $83
	ld bc, $3000                                     ; $6970: $01 $00 $30
	ld a, b                                          ; $6973: $78
	ld d, [hl]                                       ; $6974: $56
	add b                                            ; $6975: $80
	rst $38                                          ; $6976: $ff
	or $df                                           ; $6977: $f6 $df
	cp c                                             ; $6979: $b9
	rst SubAFromDE                                          ; $697a: $df
	rst SubAFromHL                                          ; $697b: $d7
	sbc c                                            ; $697c: $99
	rst SubAFromDE                                          ; $697d: $df
	ld de, $009f                                     ; $697e: $11 $9f $00
	ld a, e                                          ; $6981: $7b
	inc a                                            ; $6982: $3c
	rst FarCall                                          ; $6983: $f7
	ld c, $fd                                        ; $6984: $0e $fd
	inc bc                                           ; $6986: $03
	db $dd                                           ; $6987: $dd

jr_06f_6988:
	ld a, $be                                        ; $6988: $3e $be
	ld a, a                                          ; $698a: $7f

jr_06f_698b:
	ld d, e                                          ; $698b: $53
	di                                               ; $698c: $f3
	pop af                                           ; $698d: $f1
	ld sp, $3fbf                                     ; $698e: $31 $bf $3f
	dec a                                            ; $6991: $3d
	ccf                                              ; $6992: $3f
	dec l                                            ; $6993: $2d
	ccf                                              ; $6994: $3f
	sbc d                                            ; $6995: $9a
	scf                                              ; $6996: $37
	ld [de], a                                       ; $6997: $12
	ld e, l                                          ; $6998: $5d
	ld a, $1f                                        ; $6999: $3e $1f
	cp h                                             ; $699b: $bc
	rlca                                             ; $699c: $07
	rrca                                             ; $699d: $0f
	rra                                              ; $699e: $1f
	rra                                              ; $699f: $1f
	ccf                                              ; $69a0: $3f
	add b                                            ; $69a1: $80
	ld bc, $077e                                     ; $69a2: $01 $7e $07
	db $fd                                           ; $69a5: $fd
	rra                                              ; $69a6: $1f
	ldh a, [c]                                       ; $69a7: $f2
	ld a, a                                          ; $69a8: $7f
	call $f5fe                                       ; $69a9: $cd $fe $f5
	ld hl, sp-$6e                                    ; $69ac: $f8 $92
	pop hl                                           ; $69ae: $e1
	db $e4                                           ; $69af: $e4
	jp Jump_06f_6759                                 ; $69b0: $c3 $59 $67


	xor [hl]                                         ; $69b3: $ae
	rst $38                                          ; $69b4: $ff
	sub c                                            ; $69b5: $91
	cp $5b                                           ; $69b6: $fe $5b
	db $fc                                           ; $69b8: $fc
	ld c, h                                          ; $69b9: $4c
	rst $38                                          ; $69ba: $ff
	ld c, d                                          ; $69bb: $4a
	rst $38                                          ; $69bc: $ff
	jp hl                                            ; $69bd: $e9


	rst $38                                          ; $69be: $ff
	xor l                                            ; $69bf: $ad
	rst $38                                          ; $69c0: $ff
	add b                                            ; $69c1: $80
	db $ed                                           ; $69c2: $ed
	ccf                                              ; $69c3: $3f
	push af                                          ; $69c4: $f5
	ccf                                              ; $69c5: $3f
	db $ed                                           ; $69c6: $ed
	scf                                              ; $69c7: $37
	jp c, Jump_06f_6a2f                              ; $69c8: $da $2f $6a

	sbc a                                            ; $69cb: $9f
	push de                                          ; $69cc: $d5
	rst $38                                          ; $69cd: $ff
	ld a, [$fb8f]                                    ; $69ce: $fa $8f $fb
	ld c, $f7                                        ; $69d1: $0e $f7
	ld c, $f6                                        ; $69d3: $0e $f6
	dec c                                            ; $69d5: $0d
	push af                                          ; $69d6: $f5
	dec bc                                           ; $69d7: $0b
	db $e3                                           ; $69d8: $e3
	rra                                              ; $69d9: $1f
	rst $38                                          ; $69da: $ff
	rra                                              ; $69db: $1f
	di                                               ; $69dc: $f3
	ccf                                              ; $69dd: $3f
	pop hl                                           ; $69de: $e1
	ld a, a                                          ; $69df: $7f
	pop af                                           ; $69e0: $f1
	adc h                                            ; $69e1: $8c
	rst $38                                          ; $69e2: $ff
	ld h, e                                          ; $69e3: $63
	rst $38                                          ; $69e4: $ff
	push bc                                          ; $69e5: $c5
	rst $38                                          ; $69e6: $ff
	ld l, b                                          ; $69e7: $68
	sbc a                                            ; $69e8: $9f
	call nc, $a83b                                   ; $69e9: $d4 $3b $a8
	ld [hl], a                                       ; $69ec: $77
	db $10                                           ; $69ed: $10
	rst AddAOntoHL                                          ; $69ee: $ef
	jr nz, @-$1f                                     ; $69ef: $20 $df

	add c                                            ; $69f1: $81
	rst $38                                          ; $69f2: $ff
	inc bc                                           ; $69f3: $03
	rst $38                                          ; $69f4: $ff
	ld b, a                                          ; $69f5: $47
	jr nz, jr_06f_6a77                               ; $69f6: $20 $7f

	sbc b                                            ; $69f8: $98
	ld a, a                                          ; $69f9: $7f
	cp $99                                           ; $69fa: $fe $99
	ld e, [hl]                                       ; $69fc: $5e
	ccf                                              ; $69fd: $3f
	or e                                             ; $69fe: $b3
	ld [hl], e                                       ; $69ff: $73
	rst $38                                          ; $6a00: $ff
	rst SubAFromDE                                          ; $6a01: $df
	ld l, a                                          ; $6a02: $6f
	jr nz, jr_06f_6a08                               ; $6a03: $20 $03

	ld b, b                                          ; $6a05: $40
	ld b, e                                          ; $6a06: $43
	ld b, b                                          ; $6a07: $40

jr_06f_6a08:
	sbc [hl]                                         ; $6a08: $9e
	rst $38                                          ; $6a09: $ff
	cp a                                             ; $6a0a: $bf
	rst $38                                          ; $6a0b: $ff
	cp l                                             ; $6a0c: $bd
	sbc d                                            ; $6a0d: $9a
	ld a, [hl]                                       ; $6a0e: $7e
	ld e, a                                          ; $6a0f: $5f
	rst $38                                          ; $6a10: $ff
	and a                                            ; $6a11: $a7
	daa                                              ; $6a12: $27
	inc bc                                           ; $6a13: $03
	ld b, b                                          ; $6a14: $40
	inc hl                                           ; $6a15: $23
	ld b, b                                          ; $6a16: $40
	sub l                                            ; $6a17: $95
	ld [$751f], a                                    ; $6a18: $ea $1f $75
	sbc a                                            ; $6a1b: $9f
	ld a, [$db8f]                                    ; $6a1c: $fa $8f $db
	xor $f7                                          ; $6a1f: $ee $f7
	ld c, $37                                        ; $6a21: $0e $37
	ld h, b                                          ; $6a23: $60
	ld a, a                                          ; $6a24: $7f
	or d                                             ; $6a25: $b2
	sbc d                                            ; $6a26: $9a
	cpl                                              ; $6a27: $2f
	inc e                                            ; $6a28: $1c
	ld a, a                                          ; $6a29: $7f
	cp $37                                           ; $6a2a: $fe $37
	inc bc                                           ; $6a2c: $03
	ld h, b                                          ; $6a2d: $60
	rra                                              ; $6a2e: $1f

Jump_06f_6a2f:
	ld h, b                                          ; $6a2f: $60
	ld a, a                                          ; $6a30: $7f
	cp $94                                           ; $6a31: $fe $94
	db $e3                                           ; $6a33: $e3
	nop                                              ; $6a34: $00
	db $dd                                           ; $6a35: $dd
	ld a, $7e                                        ; $6a36: $3e $7e
	rst $38                                          ; $6a38: $ff
	inc hl                                           ; $6a39: $23
	scf                                              ; $6a3a: $37
	ccf                                              ; $6a3b: $3f
	ld e, $41                                        ; $6a3c: $1e $41
	inc bc                                           ; $6a3e: $03
	ld h, b                                          ; $6a3f: $60
	scf                                              ; $6a40: $37
	ld h, b                                          ; $6a41: $60
	sub a                                            ; $6a42: $97
	push af                                          ; $6a43: $f5
	rra                                              ; $6a44: $1f
	ld a, [$fb0f]                                    ; $6a45: $fa $0f $fb
	ld c, $b7                                        ; $6a48: $0e $b7
	adc $5f                                          ; $6a4a: $ce $5f
	ld h, b                                          ; $6a4c: $60
	sbc c                                            ; $6a4d: $99
	call c, Call_06f_6e3c                            ; $6a4e: $dc $3c $6e
	ldh a, [$df]                                     ; $6a51: $f0 $df
	add b                                            ; $6a53: $80
	ld [hl], a                                       ; $6a54: $77
	ld h, d                                          ; $6a55: $62
	ld [hl], a                                       ; $6a56: $77
	cp $7f                                           ; $6a57: $fe $7f
	ld hl, sp-$67                                    ; $6a59: $f8 $99
	ld hl, $3e73                                     ; $6a5b: $21 $73 $3e
	ld e, $3f                                        ; $6a5e: $1e $3f
	nop                                              ; $6a60: $00
	inc bc                                           ; $6a61: $03
	ld h, b                                          ; $6a62: $60
	ld e, e                                          ; $6a63: $5b
	ld h, b                                          ; $6a64: $60
	sub a                                            ; $6a65: $97

jr_06f_6a66:
	ld [hl], a                                       ; $6a66: $77
	jr c, jr_06f_6a66                                ; $6a67: $38 $fd

	ld c, $fe                                        ; $6a69: $0e $fe
	inc bc                                           ; $6a6b: $03
	rst $38                                          ; $6a6c: $ff
	ld bc, $5e6f                                     ; $6a6d: $01 $6f $5e
	ld a, a                                          ; $6a70: $7f
	cp $99                                           ; $6a71: $fe $99
	jp Jump_06f_7b00                                 ; $6a73: $c3 $00 $7b


	rst SubAFromBC                                          ; $6a76: $e7

jr_06f_6a77:
	ld e, l                                          ; $6a77: $5d
	ld a, $77                                        ; $6a78: $3e $77
	ld h, [hl]                                       ; $6a7a: $66
	inc bc                                           ; $6a7b: $03
	ld h, b                                          ; $6a7c: $60
	dec hl                                           ; $6a7d: $2b
	ld h, b                                          ; $6a7e: $60
	sbc b                                            ; $6a7f: $98
	ld [hl], a                                       ; $6a80: $77
	adc [hl]                                         ; $6a81: $8e
	ld a, h                                          ; $6a82: $7c
	ld b, b                                          ; $6a83: $40
	cp b                                             ; $6a84: $b8
	ret nz                                           ; $6a85: $c0

	ldh a, [$7b]                                     ; $6a86: $f0 $7b
	add [hl]                                         ; $6a88: $86
	sbc h                                            ; $6a89: $9c
	xor h                                            ; $6a8a: $ac
	sbc $fe                                          ; $6a8b: $de $fe
	sbc $7c                                          ; $6a8d: $de $7c
	sbc l                                            ; $6a8f: $9d
	ld l, b                                          ; $6a90: $68
	jr c, jr_06f_6b0a                                ; $6a91: $38 $77

	adc d                                            ; $6a93: $8a
	sub e                                            ; $6a94: $93
	or l                                             ; $6a95: $b5
	ld a, b                                          ; $6a96: $78
	rst GetHLinHL                                          ; $6a97: $cf
	rst GetHLinHL                                          ; $6a98: $cf
	or a                                             ; $6a99: $b7
	dec h                                            ; $6a9a: $25
	ld e, a                                          ; $6a9b: $5f
	sbc a                                            ; $6a9c: $9f
	ld [hl], d                                       ; $6a9d: $72
	ld [hl], d                                       ; $6a9e: $72
	jp nc, $5fd2                                     ; $6a9f: $d2 $d2 $5f

	ldh [$9c], a                                     ; $6aa2: $e0 $9c
	ld a, [hl]                                       ; $6aa4: $7e
	ld a, h                                          ; $6aa5: $7c
	inc l                                            ; $6aa6: $2c
	ld a, e                                          ; $6aa7: $7b
	ldh [c], a                                       ; $6aa8: $e2
	sbc h                                            ; $6aa9: $9c
	ld [$0010], sp                                   ; $6aaa: $08 $10 $00
	dec hl                                           ; $6aad: $2b
	ldh [$9d], a                                     ; $6aae: $e0 $9d
	ld a, h                                          ; $6ab0: $7c
	ld a, b                                          ; $6ab1: $78
	ld [hl], a                                       ; $6ab2: $77
	call nz, $37fd                                   ; $6ab3: $c4 $fd $37
	ldh [$9c], a                                     ; $6ab6: $e0 $9c
	db $ec                                           ; $6ab8: $ec
	sbc $34                                          ; $6ab9: $de $34
	inc sp                                           ; $6abb: $33
	ldh [$a1], a                                     ; $6abc: $e0 $a1
	ld bc, $b680                                     ; $6abe: $01 $80 $b6
	rst $38                                          ; $6ac1: $ff
	cp [hl]                                          ; $6ac2: $be
	ei                                               ; $6ac3: $fb
	rst $38                                          ; $6ac4: $ff
	reti                                             ; $6ac5: $d9


	db $fd                                           ; $6ac6: $fd
	adc c                                            ; $6ac7: $89
	db $fc                                           ; $6ac8: $fc
	add b                                            ; $6ac9: $80
	db $fc                                           ; $6aca: $fc
	ld a, h                                          ; $6acb: $7c
	or d                                             ; $6acc: $b2
	call z, $001f                                    ; $6acd: $cc $1f $00
	dec l                                            ; $6ad0: $2d
	ld e, $7e                                        ; $6ad1: $1e $7e
	ccf                                              ; $6ad3: $3f
	ei                                               ; $6ad4: $fb
	ld [hl], e                                       ; $6ad5: $73
	pop af                                           ; $6ad6: $f1
	db $d3                                           ; $6ad7: $d3
	rra                                              ; $6ad8: $1f
	ld e, a                                          ; $6ad9: $5f
	dec d                                            ; $6ada: $15
	rra                                              ; $6adb: $1f
	ld a, [de]                                       ; $6adc: $1a
	ld [de], a                                       ; $6add: $12
	dec a                                            ; $6ade: $3d
	sbc l                                            ; $6adf: $9d
	ld c, $80                                        ; $6ae0: $0e $80
	cp a                                             ; $6ae2: $bf
	add b                                            ; $6ae3: $80

Call_06f_6ae4:
	nop                                              ; $6ae4: $00
	add b                                            ; $6ae5: $80
	add b                                            ; $6ae6: $80
	ret nz                                           ; $6ae7: $c0

	add b                                            ; $6ae8: $80
	add b                                            ; $6ae9: $80
	ret nz                                           ; $6aea: $c0

	ldh [$c0], a                                     ; $6aeb: $e0 $c0
	ldh a, [$e0]                                     ; $6aed: $f0 $e0
	sbc b                                            ; $6aef: $98
	ld [hl], b                                       ; $6af0: $70
	adc h                                            ; $6af1: $8c
	ld hl, sp-$3a                                    ; $6af2: $f8 $c6
	ld a, h                                          ; $6af4: $7c
	rst $38                                          ; $6af5: $ff
	ld a, [hl]                                       ; $6af6: $7e
	rst GetHLinHL                                          ; $6af7: $cf
	rst JumpTable                                          ; $6af8: $c7
	ld a, $0f                                        ; $6af9: $3e $0f
	ld hl, sp+$38                                    ; $6afb: $f8 $38
	jp c, $9f74                                      ; $6afd: $da $74 $9f

	di                                               ; $6b00: $f3
	or c                                             ; $6b01: $b1
	pop bc                                           ; $6b02: $c1
	ldh [$80], a                                     ; $6b03: $e0 $80
	ld a, a                                          ; $6b05: $7f
	cp $99                                           ; $6b06: $fe $99
	and b                                            ; $6b08: $a0
	add b                                            ; $6b09: $80

jr_06f_6b0a:
	and c                                            ; $6b0a: $a1
	add c                                            ; $6b0b: $81
	ld d, c                                          ; $6b0c: $51
	ld b, b                                          ; $6b0d: $40
	db $fd                                           ; $6b0e: $fd
	sbc [hl]                                         ; $6b0f: $9e
	ld bc, $83b9                                     ; $6b10: $01 $b9 $83
	add e                                            ; $6b13: $83
	add e                                            ; $6b14: $83
	ld bc, $3000                                     ; $6b15: $01 $00 $30
	ld a, b                                          ; $6b18: $78
	ld d, [hl]                                       ; $6b19: $56
	sub l                                            ; $6b1a: $95
	rst $38                                          ; $6b1b: $ff
	or $df                                           ; $6b1c: $f6 $df
	cp c                                             ; $6b1e: $b9
	rst SubAFromDE                                          ; $6b1f: $df
	rst SubAFromHL                                          ; $6b20: $d7
	sbc c                                            ; $6b21: $99
	rst SubAFromDE                                          ; $6b22: $df
	ld de, $bf9f                                     ; $6b23: $11 $9f $bf
	ld a, a                                          ; $6b26: $7f
	rst $38                                          ; $6b27: $ff
	adc c                                            ; $6b28: $89
	ld a, $9d                                        ; $6b29: $3e $9d
	ld h, e                                          ; $6b2b: $63
	rst SubAFromBC                                          ; $6b2c: $e7
	jr @-$41                                         ; $6b2d: $18 $bd

	ld a, [hl]                                       ; $6b2f: $7e
	ld a, [hl]                                       ; $6b30: $7e

jr_06f_6b31:
	rst $38                                          ; $6b31: $ff
	ld d, e                                          ; $6b32: $53
	or e                                             ; $6b33: $b3
	and a                                            ; $6b34: $a7
	daa                                              ; $6b35: $27
	dec a                                            ; $6b36: $3d
	ccf                                              ; $6b37: $3f
	dec l                                            ; $6b38: $2d
	ccf                                              ; $6b39: $3f
	scf                                              ; $6b3a: $37
	ld [de], a                                       ; $6b3b: $12
	ld e, l                                          ; $6b3c: $5d
	ld a, $1f                                        ; $6b3d: $3e $1f
	cp h                                             ; $6b3f: $bc
	rlca                                             ; $6b40: $07
	rrca                                             ; $6b41: $0f
	rra                                              ; $6b42: $1f
	rra                                              ; $6b43: $1f
	ccf                                              ; $6b44: $3f
	add b                                            ; $6b45: $80
	ld bc, $077e                                     ; $6b46: $01 $7e $07
	db $fd                                           ; $6b49: $fd
	rra                                              ; $6b4a: $1f
	ldh a, [c]                                       ; $6b4b: $f2
	ld a, a                                          ; $6b4c: $7f
	call $f5fe                                       ; $6b4d: $cd $fe $f5
	ld hl, sp-$6e                                    ; $6b50: $f8 $92
	pop hl                                           ; $6b52: $e1
	db $e4                                           ; $6b53: $e4
	jp Jump_06f_6759                                 ; $6b54: $c3 $59 $67


	xor [hl]                                         ; $6b57: $ae
	rst $38                                          ; $6b58: $ff
	sub c                                            ; $6b59: $91
	cp $5b                                           ; $6b5a: $fe $5b
	db $fc                                           ; $6b5c: $fc
	ld c, h                                          ; $6b5d: $4c
	rst $38                                          ; $6b5e: $ff
	ld c, d                                          ; $6b5f: $4a
	rst $38                                          ; $6b60: $ff
	jp hl                                            ; $6b61: $e9


	rst $38                                          ; $6b62: $ff
	xor l                                            ; $6b63: $ad
	rst $38                                          ; $6b64: $ff
	add b                                            ; $6b65: $80
	db $ed                                           ; $6b66: $ed
	ccf                                              ; $6b67: $3f
	push af                                          ; $6b68: $f5
	cp a                                             ; $6b69: $bf
	ld l, l                                          ; $6b6a: $6d
	or a                                             ; $6b6b: $b7
	jp c, $ea2f                                      ; $6b6c: $da $2f $ea

	rra                                              ; $6b6f: $1f
	ld [hl], l                                       ; $6b70: $75
	sbc a                                            ; $6b71: $9f
	jp c, $fbef                                      ; $6b72: $da $ef $fb

	ld c, $f7                                        ; $6b75: $0e $f7
	ld c, $f6                                        ; $6b77: $0e $f6
	dec c                                            ; $6b79: $0d
	push af                                          ; $6b7a: $f5
	dec bc                                           ; $6b7b: $0b
	db $e3                                           ; $6b7c: $e3
	rra                                              ; $6b7d: $1f
	rst $38                                          ; $6b7e: $ff
	rra                                              ; $6b7f: $1f
	di                                               ; $6b80: $f3
	ccf                                              ; $6b81: $3f
	pop hl                                           ; $6b82: $e1
	ld a, a                                          ; $6b83: $7f
	pop af                                           ; $6b84: $f1
	adc h                                            ; $6b85: $8c
	rst $38                                          ; $6b86: $ff
	ld h, e                                          ; $6b87: $63
	rst $38                                          ; $6b88: $ff
	push bc                                          ; $6b89: $c5
	rst $38                                          ; $6b8a: $ff
	ld l, b                                          ; $6b8b: $68
	sbc a                                            ; $6b8c: $9f
	call nc, $a83b                                   ; $6b8d: $d4 $3b $a8
	ld [hl], a                                       ; $6b90: $77
	db $10                                           ; $6b91: $10
	rst AddAOntoHL                                          ; $6b92: $ef
	jr nz, @-$1f                                     ; $6b93: $20 $df

	add c                                            ; $6b95: $81
	rst $38                                          ; $6b96: $ff
	inc bc                                           ; $6b97: $03
	rst $38                                          ; $6b98: $ff
	ld b, a                                          ; $6b99: $47
	jr nz, jr_06f_6b31                               ; $6b9a: $20 $95

	ccf                                              ; $6b9c: $3f
	nop                                              ; $6b9d: $00
	ld h, c                                          ; $6b9e: $61
	ld e, $de                                        ; $6b9f: $1e $de
	ccf                                              ; $6ba1: $3f
	or e                                             ; $6ba2: $b3
	ld [hl], e                                       ; $6ba3: $73
	rst $38                                          ; $6ba4: $ff
	rst SubAFromDE                                          ; $6ba5: $df
	ld l, a                                          ; $6ba6: $6f
	jr nz, jr_06f_6bac                               ; $6ba7: $20 $03

	ld b, b                                          ; $6ba9: $40
	ld b, e                                          ; $6baa: $43
	ld b, b                                          ; $6bab: $40

jr_06f_6bac:
	sbc [hl]                                         ; $6bac: $9e
	rst $38                                          ; $6bad: $ff
	cp a                                             ; $6bae: $bf
	rst $38                                          ; $6baf: $ff
	cp l                                             ; $6bb0: $bd
	sbc h                                            ; $6bb1: $9c
	ld a, [hl]                                       ; $6bb2: $7e
	ld e, a                                          ; $6bb3: $5f
	rst $38                                          ; $6bb4: $ff
	inc bc                                           ; $6bb5: $03
	ld b, b                                          ; $6bb6: $40
	dec bc                                           ; $6bb7: $0b
	ld b, b                                          ; $6bb8: $40
	sbc c                                            ; $6bb9: $99
	ld a, [$db8f]                                    ; $6bba: $fa $8f $db
	xor $f7                                          ; $6bbd: $ee $f7
	ld c, $47                                        ; $6bbf: $0e $47
	ld h, b                                          ; $6bc1: $60
	ld a, a                                          ; $6bc2: $7f
	cp b                                             ; $6bc3: $b8
	ld a, a                                          ; $6bc4: $7f
	cp $7f                                           ; $6bc5: $fe $7f
	or d                                             ; $6bc7: $b2
	sbc d                                            ; $6bc8: $9a
	cpl                                              ; $6bc9: $2f
	inc e                                            ; $6bca: $1c
	ld a, a                                          ; $6bcb: $7f
	cp $37                                           ; $6bcc: $fe $37
	inc bc                                           ; $6bce: $03
	ld h, b                                          ; $6bcf: $60
	rra                                              ; $6bd0: $1f
	ld h, b                                          ; $6bd1: $60
	ld a, a                                          ; $6bd2: $7f
	cp $94                                           ; $6bd3: $fe $94

Call_06f_6bd5:
	db $e3                                           ; $6bd5: $e3
	nop                                              ; $6bd6: $00
	db $dd                                           ; $6bd7: $dd
	ld a, $7e                                        ; $6bd8: $3e $7e
	rst $38                                          ; $6bda: $ff
	inc hl                                           ; $6bdb: $23
	scf                                              ; $6bdc: $37
	ccf                                              ; $6bdd: $3f
	ld e, $41                                        ; $6bde: $1e $41
	inc bc                                           ; $6be0: $03
	ld h, b                                          ; $6be1: $60
	scf                                              ; $6be2: $37
	ld h, b                                          ; $6be3: $60
	sub a                                            ; $6be4: $97
	push af                                          ; $6be5: $f5
	rra                                              ; $6be6: $1f
	ld a, [$fb0f]                                    ; $6be7: $fa $0f $fb
	ld c, $b7                                        ; $6bea: $0e $b7
	adc $5f                                          ; $6bec: $ce $5f
	ld h, b                                          ; $6bee: $60
	sbc c                                            ; $6bef: $99
	call c, $ee3c                                    ; $6bf0: $dc $3c $ee
	ld [hl], b                                       ; $6bf3: $70
	sbc a                                            ; $6bf4: $9f
	add b                                            ; $6bf5: $80
	ld l, a                                          ; $6bf6: $6f
	ld h, b                                          ; $6bf7: $60
	ld [hl], a                                       ; $6bf8: $77
	or b                                             ; $6bf9: $b0
	sbc c                                            ; $6bfa: $99
	ld hl, $3e73                                     ; $6bfb: $21 $73 $3e
	ld e, $3f                                        ; $6bfe: $1e $3f
	nop                                              ; $6c00: $00
	rra                                              ; $6c01: $1f
	ld h, b                                          ; $6c02: $60
	ld a, a                                          ; $6c03: $7f
	cp $3f                                           ; $6c04: $fe $3f
	ld h, b                                          ; $6c06: $60
	sbc e                                            ; $6c07: $9b
	ei                                               ; $6c08: $fb
	inc a                                            ; $6c09: $3c
	add a                                            ; $6c0a: $87
	ld a, a                                          ; $6c0b: $7f
	ld l, a                                          ; $6c0c: $6f
	ld h, b                                          ; $6c0d: $60
	ld [hl], a                                       ; $6c0e: $77
	cp $99                                           ; $6c0f: $fe $99
	jp Jump_06f_7b00                                 ; $6c11: $c3 $00 $7b


	rst SubAFromBC                                          ; $6c14: $e7
	ld e, l                                          ; $6c15: $5d
	ld a, $67                                        ; $6c16: $3e $67
	or b                                             ; $6c18: $b0
	inc bc                                           ; $6c19: $03
	ld h, b                                          ; $6c1a: $60
	ld [hl], e                                       ; $6c1b: $73
	ld h, b                                          ; $6c1c: $60
	sbc h                                            ; $6c1d: $9c
	ld [hl], l                                       ; $6c1e: $75
	cp a                                             ; $6c1f: $bf
	db $ed                                           ; $6c20: $ed
	ld e, e                                          ; $6c21: $5b
	ld h, b                                          ; $6c22: $60
	sbc b                                            ; $6c23: $98
	ld [hl], a                                       ; $6c24: $77
	adc [hl]                                         ; $6c25: $8e
	ld a, h                                          ; $6c26: $7c
	ld b, b                                          ; $6c27: $40
	cp b                                             ; $6c28: $b8
	ret nz                                           ; $6c29: $c0

	ldh a, [$7b]                                     ; $6c2a: $f0 $7b
	add [hl]                                         ; $6c2c: $86
	sub a                                            ; $6c2d: $97
	ret c                                            ; $6c2e: $d8

	adc b                                            ; $6c2f: $88
	add sp, $70                                      ; $6c30: $e8 $70
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00

jr_06f_6c34:
	ld d, b                                          ; $6c34: $50
	jr nz, jr_06f_6c34                               ; $6c35: $20 $fd

	sub e                                            ; $6c37: $93
	or l                                             ; $6c38: $b5
	ld a, b                                          ; $6c39: $78
	rst GetHLinHL                                          ; $6c3a: $cf
	rst GetHLinHL                                          ; $6c3b: $cf
	or a                                             ; $6c3c: $b7
	dec h                                            ; $6c3d: $25
	ld e, a                                          ; $6c3e: $5f
	sbc a                                            ; $6c3f: $9f
	ld [hl], d                                       ; $6c40: $72
	ld [hl], d                                       ; $6c41: $72
	jp nc, Jump_06f_67d2                             ; $6c42: $d2 $d2 $67

	ldh [$de], a                                     ; $6c45: $e0 $de
	ld hl, sp+$07                                    ; $6c47: $f8 $07
	ldh [$9d], a                                     ; $6c49: $e0 $9d
	ld a, b                                          ; $6c4b: $78
	jr c, jr_06f_6cc9                                ; $6c4c: $38 $7b

	sbc $9e                                          ; $6c4e: $de $9e
	db $10                                           ; $6c50: $10
	ld a, e                                          ; $6c51: $7b
	sbc $27                                          ; $6c52: $de $27
	ldh [$9b], a                                     ; $6c54: $e0 $9b
	jr nc, jr_06f_6cd0                               ; $6c56: $30 $78

	ld h, b                                          ; $6c58: $60
	jr nc, jr_06f_6cd2                               ; $6c59: $30 $77

	sbc $57                                          ; $6c5b: $de $57
	ldh [$9e], a                                     ; $6c5d: $e0 $9e
	ld bc, $b680                                     ; $6c5f: $01 $80 $b6
	rst $38                                          ; $6c62: $ff
	cp [hl]                                          ; $6c63: $be
	ei                                               ; $6c64: $fb
	rst $38                                          ; $6c65: $ff
	reti                                             ; $6c66: $d9


	db $fd                                           ; $6c67: $fd
	adc c                                            ; $6c68: $89
	db $fc                                           ; $6c69: $fc
	add b                                            ; $6c6a: $80
	db $f4                                           ; $6c6b: $f4
	ld hl, sp-$12                                    ; $6c6c: $f8 $ee
	inc e                                            ; $6c6e: $1c
	rra                                              ; $6c6f: $1f
	nop                                              ; $6c70: $00
	dec l                                            ; $6c71: $2d
	ld e, $7e                                        ; $6c72: $1e $7e
	ccf                                              ; $6c74: $3f
	ei                                               ; $6c75: $fb
	ld [hl], e                                       ; $6c76: $73
	pop af                                           ; $6c77: $f1
	db $d3                                           ; $6c78: $d3
	rra                                              ; $6c79: $1f
	ld e, a                                          ; $6c7a: $5f
	dec d                                            ; $6c7b: $15
	rra                                              ; $6c7c: $1f
	ld a, [de]                                       ; $6c7d: $1a
	ld [de], a                                       ; $6c7e: $12
	dec a                                            ; $6c7f: $3d
	sbc l                                            ; $6c80: $9d
	ld c, $80                                        ; $6c81: $0e $80
	cp a                                             ; $6c83: $bf
	add b                                            ; $6c84: $80
	nop                                              ; $6c85: $00
	add b                                            ; $6c86: $80
	add b                                            ; $6c87: $80
	ret nz                                           ; $6c88: $c0

	add b                                            ; $6c89: $80
	add b                                            ; $6c8a: $80
	ret nz                                           ; $6c8b: $c0

	ldh [$c0], a                                     ; $6c8c: $e0 $c0
	ldh a, [$e0]                                     ; $6c8e: $f0 $e0
	sbc b                                            ; $6c90: $98
	ld [hl], b                                       ; $6c91: $70
	adc h                                            ; $6c92: $8c
	ld hl, sp-$3a                                    ; $6c93: $f8 $c6
	ld a, h                                          ; $6c95: $7c
	rst $38                                          ; $6c96: $ff
	ld a, [hl]                                       ; $6c97: $7e
	rst GetHLinHL                                          ; $6c98: $cf
	rst JumpTable                                          ; $6c99: $c7
	ld a, $0f                                        ; $6c9a: $3e $0f
	ld hl, sp+$38                                    ; $6c9c: $f8 $38
	jp c, $9f74                                      ; $6c9e: $da $74 $9f

	di                                               ; $6ca1: $f3
	or c                                             ; $6ca2: $b1
	pop bc                                           ; $6ca3: $c1
	ldh [$80], a                                     ; $6ca4: $e0 $80
	ld a, a                                          ; $6ca6: $7f
	cp $99                                           ; $6ca7: $fe $99
	and b                                            ; $6ca9: $a0
	add b                                            ; $6caa: $80
	and c                                            ; $6cab: $a1
	add c                                            ; $6cac: $81
	ld d, c                                          ; $6cad: $51
	ld b, b                                          ; $6cae: $40
	db $fd                                           ; $6caf: $fd
	sbc [hl]                                         ; $6cb0: $9e
	ld bc, $83b9                                     ; $6cb1: $01 $b9 $83
	add e                                            ; $6cb4: $83
	add e                                            ; $6cb5: $83
	ld bc, $3000                                     ; $6cb6: $01 $00 $30
	ld a, b                                          ; $6cb9: $78
	ld d, [hl]                                       ; $6cba: $56
	sub l                                            ; $6cbb: $95
	rst $38                                          ; $6cbc: $ff
	or $df                                           ; $6cbd: $f6 $df
	cp c                                             ; $6cbf: $b9
	rst SubAFromDE                                          ; $6cc0: $df
	rst SubAFromHL                                          ; $6cc1: $d7
	sbc c                                            ; $6cc2: $99
	rst SubAFromDE                                          ; $6cc3: $df
	ld de, $bf9f                                     ; $6cc4: $11 $9f $bf
	ld a, a                                          ; $6cc7: $7f
	rst $38                                          ; $6cc8: $ff

jr_06f_6cc9:
	adc c                                            ; $6cc9: $89
	ld a, $9d                                        ; $6cca: $3e $9d
	ld h, e                                          ; $6ccc: $63
	rst SubAFromBC                                          ; $6ccd: $e7
	jr @-$41                                         ; $6cce: $18 $bd

jr_06f_6cd0:
	ld a, [hl]                                       ; $6cd0: $7e
	ld a, [hl]                                       ; $6cd1: $7e

jr_06f_6cd2:
	rst $38                                          ; $6cd2: $ff
	ld d, e                                          ; $6cd3: $53
	or e                                             ; $6cd4: $b3
	and a                                            ; $6cd5: $a7
	daa                                              ; $6cd6: $27
	dec a                                            ; $6cd7: $3d
	ccf                                              ; $6cd8: $3f
	dec l                                            ; $6cd9: $2d
	ccf                                              ; $6cda: $3f
	scf                                              ; $6cdb: $37
	ld [de], a                                       ; $6cdc: $12
	ld e, l                                          ; $6cdd: $5d
	ld a, $1f                                        ; $6cde: $3e $1f
	cp h                                             ; $6ce0: $bc
	rlca                                             ; $6ce1: $07
	rrca                                             ; $6ce2: $0f
	rra                                              ; $6ce3: $1f
	rra                                              ; $6ce4: $1f
	ccf                                              ; $6ce5: $3f
	add b                                            ; $6ce6: $80
	ld bc, $077e                                     ; $6ce7: $01 $7e $07
	db $fd                                           ; $6cea: $fd
	rra                                              ; $6ceb: $1f
	ldh a, [c]                                       ; $6cec: $f2
	ld a, a                                          ; $6ced: $7f
	call $f5fe                                       ; $6cee: $cd $fe $f5
	ld hl, sp-$6e                                    ; $6cf1: $f8 $92
	pop hl                                           ; $6cf3: $e1
	db $e4                                           ; $6cf4: $e4
	jp Jump_06f_6759                                 ; $6cf5: $c3 $59 $67


	xor [hl]                                         ; $6cf8: $ae
	rst $38                                          ; $6cf9: $ff
	sub c                                            ; $6cfa: $91
	cp $5b                                           ; $6cfb: $fe $5b
	db $fc                                           ; $6cfd: $fc
	ld c, h                                          ; $6cfe: $4c
	rst $38                                          ; $6cff: $ff
	ld c, d                                          ; $6d00: $4a
	rst $38                                          ; $6d01: $ff
	jp hl                                            ; $6d02: $e9


	rst $38                                          ; $6d03: $ff
	xor l                                            ; $6d04: $ad
	rst $38                                          ; $6d05: $ff
	add b                                            ; $6d06: $80
	db $ed                                           ; $6d07: $ed
	ccf                                              ; $6d08: $3f
	push af                                          ; $6d09: $f5
	cp a                                             ; $6d0a: $bf
	ld l, l                                          ; $6d0b: $6d
	or a                                             ; $6d0c: $b7
	jp c, $ea2f                                      ; $6d0d: $da $2f $ea

	rra                                              ; $6d10: $1f
	ld [hl], l                                       ; $6d11: $75
	sbc a                                            ; $6d12: $9f
	jp c, $fbef                                      ; $6d13: $da $ef $fb

	ld c, $f7                                        ; $6d16: $0e $f7
	ld c, $f6                                        ; $6d18: $0e $f6
	dec c                                            ; $6d1a: $0d
	push af                                          ; $6d1b: $f5
	dec bc                                           ; $6d1c: $0b
	db $e3                                           ; $6d1d: $e3
	rra                                              ; $6d1e: $1f
	rst $38                                          ; $6d1f: $ff
	rra                                              ; $6d20: $1f
	di                                               ; $6d21: $f3
	ccf                                              ; $6d22: $3f
	pop hl                                           ; $6d23: $e1
	ld a, a                                          ; $6d24: $7f
	pop af                                           ; $6d25: $f1
	adc h                                            ; $6d26: $8c
	rst $38                                          ; $6d27: $ff
	ld h, e                                          ; $6d28: $63
	rst $38                                          ; $6d29: $ff
	push bc                                          ; $6d2a: $c5
	rst $38                                          ; $6d2b: $ff
	ld l, b                                          ; $6d2c: $68
	sbc a                                            ; $6d2d: $9f
	call nc, $a83b                                   ; $6d2e: $d4 $3b $a8
	ld [hl], a                                       ; $6d31: $77
	db $10                                           ; $6d32: $10
	rst AddAOntoHL                                          ; $6d33: $ef
	jr nz, @-$1f                                     ; $6d34: $20 $df

	add c                                            ; $6d36: $81
	rst $38                                          ; $6d37: $ff
	inc bc                                           ; $6d38: $03
	rst $38                                          ; $6d39: $ff
	ld b, a                                          ; $6d3a: $47
	jr nz, jr_06f_6db8                               ; $6d3b: $20 $7b

	sbc h                                            ; $6d3d: $9c
	sbc b                                            ; $6d3e: $98
	nop                                              ; $6d3f: $00
	ld e, [hl]                                       ; $6d40: $5e
	ccf                                              ; $6d41: $3f
	or e                                             ; $6d42: $b3
	ld [hl], e                                       ; $6d43: $73
	rst $38                                          ; $6d44: $ff
	rst SubAFromDE                                          ; $6d45: $df
	ld l, a                                          ; $6d46: $6f
	jr nz, jr_06f_6d4c                               ; $6d47: $20 $03

	ld b, b                                          ; $6d49: $40
	ld c, a                                          ; $6d4a: $4f
	ld b, b                                          ; $6d4b: $40

jr_06f_6d4c:
	sbc e                                            ; $6d4c: $9b
	ccf                                              ; $6d4d: $3f
	cp $01                                           ; $6d4e: $fe $01
	rst $38                                          ; $6d50: $ff
	cp a                                             ; $6d51: $bf
	rst $38                                          ; $6d52: $ff
	cp l                                             ; $6d53: $bd
	sbc h                                            ; $6d54: $9c
	ld a, [hl]                                       ; $6d55: $7e
	ld e, a                                          ; $6d56: $5f
	rst $38                                          ; $6d57: $ff
	inc bc                                           ; $6d58: $03
	ld b, b                                          ; $6d59: $40
	dec hl                                           ; $6d5a: $2b
	ld b, b                                          ; $6d5b: $40
	sbc l                                            ; $6d5c: $9d
	db $ed                                           ; $6d5d: $ed
	scf                                              ; $6d5e: $37
	ld l, a                                          ; $6d5f: $6f
	ld b, b                                          ; $6d60: $40
	sbc c                                            ; $6d61: $99
	ld a, [$db8f]                                    ; $6d62: $fa $8f $db
	xor $f7                                          ; $6d65: $ee $f7
	ld c, $47                                        ; $6d67: $0e $47
	ld h, b                                          ; $6d69: $60
	ld a, a                                          ; $6d6a: $7f
	cp b                                             ; $6d6b: $b8
	ld a, a                                          ; $6d6c: $7f
	or h                                             ; $6d6d: $b4
	ld a, a                                          ; $6d6e: $7f
	cp $9a                                           ; $6d6f: $fe $9a
	cpl                                              ; $6d71: $2f
	inc e                                            ; $6d72: $1c
	ld a, a                                          ; $6d73: $7f
	cp $37                                           ; $6d74: $fe $37
	inc bc                                           ; $6d76: $03
	ld h, b                                          ; $6d77: $60
	scf                                              ; $6d78: $37
	ld h, b                                          ; $6d79: $60
	sbc l                                            ; $6d7a: $9d
	sbc [hl]                                         ; $6d7b: $9e
	ld h, c                                          ; $6d7c: $61
	ld [hl], a                                       ; $6d7d: $77
	ld h, b                                          ; $6d7e: $60
	ld a, a                                          ; $6d7f: $7f
	cp $94                                           ; $6d80: $fe $94
	db $e3                                           ; $6d82: $e3
	nop                                              ; $6d83: $00
	db $dd                                           ; $6d84: $dd
	ld a, $7e                                        ; $6d85: $3e $7e
	rst $38                                          ; $6d87: $ff
	inc hl                                           ; $6d88: $23
	scf                                              ; $6d89: $37
	ccf                                              ; $6d8a: $3f
	ld e, $41                                        ; $6d8b: $1e $41
	inc bc                                           ; $6d8d: $03
	ld h, b                                          ; $6d8e: $60
	scf                                              ; $6d8f: $37
	ld h, b                                          ; $6d90: $60
	sub a                                            ; $6d91: $97
	push af                                          ; $6d92: $f5
	rra                                              ; $6d93: $1f
	ld a, [$fb0f]                                    ; $6d94: $fa $0f $fb
	ld c, $b7                                        ; $6d97: $0e $b7
	adc $2f                                          ; $6d99: $ce $2f
	ld h, b                                          ; $6d9b: $60
	ld [hl], a                                       ; $6d9c: $77
	or b                                             ; $6d9d: $b0
	sbc c                                            ; $6d9e: $99
	ld hl, $3e73                                     ; $6d9f: $21 $73 $3e
	ld e, $3f                                        ; $6da2: $1e $3f
	nop                                              ; $6da4: $00
	inc bc                                           ; $6da5: $03
	ld h, b                                          ; $6da6: $60
	dec hl                                           ; $6da7: $2b
	ld h, b                                          ; $6da8: $60
	ld [hl], a                                       ; $6da9: $77
	cp $99                                           ; $6daa: $fe $99
	jp Jump_06f_7b00                                 ; $6dac: $c3 $00 $7b


	rst SubAFromBC                                          ; $6daf: $e7
	ld e, l                                          ; $6db0: $5d
	ld a, $77                                        ; $6db1: $3e $77
	ld h, [hl]                                       ; $6db3: $66
	inc bc                                           ; $6db4: $03
	ld h, b                                          ; $6db5: $60
	dec hl                                           ; $6db6: $2b
	ld h, b                                          ; $6db7: $60

jr_06f_6db8:
	sbc b                                            ; $6db8: $98
	ld [hl], a                                       ; $6db9: $77
	adc [hl]                                         ; $6dba: $8e
	ld a, h                                          ; $6dbb: $7c
	ld b, b                                          ; $6dbc: $40
	cp b                                             ; $6dbd: $b8
	ret nz                                           ; $6dbe: $c0

	ldh a, [$7b]                                     ; $6dbf: $f0 $7b
	add [hl]                                         ; $6dc1: $86
	sub a                                            ; $6dc2: $97
	ldh [rLCDC], a                                   ; $6dc3: $e0 $40
	ld a, b                                          ; $6dc5: $78
	stop                                             ; $6dc6: $10 $00
	nop                                              ; $6dc8: $00

jr_06f_6dc9:
	ld b, b                                          ; $6dc9: $40
	jr nz, jr_06f_6dc9                               ; $6dca: $20 $fd

	sub e                                            ; $6dcc: $93
	or l                                             ; $6dcd: $b5
	ld a, b                                          ; $6dce: $78
	rst GetHLinHL                                          ; $6dcf: $cf
	rst GetHLinHL                                          ; $6dd0: $cf
	or a                                             ; $6dd1: $b7
	dec h                                            ; $6dd2: $25
	ld e, a                                          ; $6dd3: $5f
	sbc a                                            ; $6dd4: $9f
	ld [hl], d                                       ; $6dd5: $72
	ld [hl], d                                       ; $6dd6: $72
	jp nc, Jump_06f_67d2                             ; $6dd7: $d2 $d2 $67

	ldh [$9b], a                                     ; $6dda: $e0 $9b
	ldh a, [$60]                                     ; $6ddc: $f0 $60
	ld a, b                                          ; $6dde: $78
	jr nc, jr_06f_6df8                               ; $6ddf: $30 $17

	ldh [$99], a                                     ; $6de1: $e0 $99
	ld hl, sp+$70                                    ; $6de3: $f8 $70
	jr c, jr_06f_6e5f                                ; $6de5: $38 $78

	ld [hl], b                                       ; $6de7: $70
	jr c, jr_06f_6e61                                ; $6de8: $38 $77

	ld c, h                                          ; $6dea: $4c
	cpl                                              ; $6deb: $2f
	ldh [$98], a                                     ; $6dec: $e0 $98
	ldh [rSVBK], a                                   ; $6dee: $e0 $70
	ld a, b                                          ; $6df0: $78
	ld a, b                                          ; $6df1: $78
	jr c, jr_06f_6e6c                                ; $6df2: $38 $78

	jr nc, jr_06f_6e71                               ; $6df4: $30 $7b

	sbc $9d                                          ; $6df6: $de $9d

jr_06f_6df8:
	db $10                                           ; $6df8: $10
	jr nz, jr_06f_6e52                               ; $6df9: $20 $57

	ldh [$6c], a                                     ; $6dfb: $e0 $6c
	ld bc, $b680                                     ; $6dfd: $01 $80 $b6
	rst $38                                          ; $6e00: $ff
	cp [hl]                                          ; $6e01: $be
	ei                                               ; $6e02: $fb
	rst $38                                          ; $6e03: $ff
	reti                                             ; $6e04: $d9


	db $fd                                           ; $6e05: $fd
	adc c                                            ; $6e06: $89
	db $fc                                           ; $6e07: $fc
	add b                                            ; $6e08: $80
	db $fc                                           ; $6e09: $fc
	nop                                              ; $6e0a: $00
	or $78                                           ; $6e0b: $f6 $78
	ld l, l                                          ; $6e0d: $6d
	ld e, $3e                                        ; $6e0e: $1e $3e
	inc bc                                           ; $6e10: $03
	ld e, l                                          ; $6e11: $5d
	ld a, $ba                                        ; $6e12: $3e $ba
	ld a, e                                          ; $6e14: $7b
	pop af                                           ; $6e15: $f1
	pop de                                           ; $6e16: $d1
	sbc a                                            ; $6e17: $9f
	ld e, a                                          ; $6e18: $5f
	dec d                                            ; $6e19: $15
	rra                                              ; $6e1a: $1f
	ld a, [de]                                       ; $6e1b: $1a
	ld [de], a                                       ; $6e1c: $12
	dec a                                            ; $6e1d: $3d
	sbc l                                            ; $6e1e: $9d
	ld c, $80                                        ; $6e1f: $0e $80
	cp a                                             ; $6e21: $bf
	add b                                            ; $6e22: $80
	nop                                              ; $6e23: $00
	add b                                            ; $6e24: $80
	add b                                            ; $6e25: $80
	ret nz                                           ; $6e26: $c0

	add b                                            ; $6e27: $80
	add b                                            ; $6e28: $80
	ret nz                                           ; $6e29: $c0

	ldh [$c0], a                                     ; $6e2a: $e0 $c0
	ldh a, [$e0]                                     ; $6e2c: $f0 $e0
	sbc b                                            ; $6e2e: $98
	ld [hl], b                                       ; $6e2f: $70
	adc h                                            ; $6e30: $8c
	ld hl, sp-$3a                                    ; $6e31: $f8 $c6
	ld a, h                                          ; $6e33: $7c
	rst $38                                          ; $6e34: $ff
	ld a, [hl]                                       ; $6e35: $7e
	rst GetHLinHL                                          ; $6e36: $cf
	rst JumpTable                                          ; $6e37: $c7
	ld a, $0f                                        ; $6e38: $3e $0f
	ld hl, sp+$38                                    ; $6e3a: $f8 $38

Call_06f_6e3c:
	jp c, $9f74                                      ; $6e3c: $da $74 $9f

	di                                               ; $6e3f: $f3
	or c                                             ; $6e40: $b1
	pop bc                                           ; $6e41: $c1
	ldh [$80], a                                     ; $6e42: $e0 $80
	ld a, a                                          ; $6e44: $7f
	cp $99                                           ; $6e45: $fe $99
	and b                                            ; $6e47: $a0
	add b                                            ; $6e48: $80
	and c                                            ; $6e49: $a1
	add c                                            ; $6e4a: $81
	ld d, c                                          ; $6e4b: $51
	ld b, b                                          ; $6e4c: $40
	db $fd                                           ; $6e4d: $fd
	sbc d                                            ; $6e4e: $9a
	ld bc, $8300                                     ; $6e4f: $01 $00 $83

jr_06f_6e52:
	ld bc, $bb83                                     ; $6e52: $01 $83 $bb
	add e                                            ; $6e55: $83
	ld bc, $3000                                     ; $6e56: $01 $00 $30
	ld a, b                                          ; $6e59: $78
	ld d, [hl]                                       ; $6e5a: $56
	sub l                                            ; $6e5b: $95
	rst $38                                          ; $6e5c: $ff
	or $df                                           ; $6e5d: $f6 $df

jr_06f_6e5f:
	cp c                                             ; $6e5f: $b9
	rst SubAFromDE                                          ; $6e60: $df

jr_06f_6e61:
	rst SubAFromHL                                          ; $6e61: $d7
	sbc c                                            ; $6e62: $99
	rst SubAFromDE                                          ; $6e63: $df
	ld de, $bf9f                                     ; $6e64: $11 $9f $bf
	ld a, a                                          ; $6e67: $7f
	db $fd                                           ; $6e68: $fd
	adc c                                            ; $6e69: $89
	ld a, $df                                        ; $6e6a: $3e $df

jr_06f_6e6c:
	ldh [$7f], a                                     ; $6e6c: $e0 $7f
	add b                                            ; $6e6e: $80
	db $db                                           ; $6e6f: $db
	inc a                                            ; $6e70: $3c

jr_06f_6e71:
	cp $7f                                           ; $6e71: $fe $7f
	db $d3                                           ; $6e73: $d3
	or e                                             ; $6e74: $b3
	and a                                            ; $6e75: $a7
	daa                                              ; $6e76: $27
	dec a                                            ; $6e77: $3d
	ccf                                              ; $6e78: $3f
	dec l                                            ; $6e79: $2d
	ccf                                              ; $6e7a: $3f
	scf                                              ; $6e7b: $37
	ld [de], a                                       ; $6e7c: $12
	ld e, l                                          ; $6e7d: $5d
	ld a, $1f                                        ; $6e7e: $3e $1f
	cp h                                             ; $6e80: $bc
	rlca                                             ; $6e81: $07
	rrca                                             ; $6e82: $0f
	rra                                              ; $6e83: $1f
	rra                                              ; $6e84: $1f
	ccf                                              ; $6e85: $3f
	add b                                            ; $6e86: $80
	ld bc, $077e                                     ; $6e87: $01 $7e $07
	db $fd                                           ; $6e8a: $fd
	rra                                              ; $6e8b: $1f
	ldh a, [c]                                       ; $6e8c: $f2
	ld a, a                                          ; $6e8d: $7f
	call $f5fe                                       ; $6e8e: $cd $fe $f5
	ld hl, sp-$6e                                    ; $6e91: $f8 $92
	pop hl                                           ; $6e93: $e1
	db $e4                                           ; $6e94: $e4
	jp Jump_06f_6759                                 ; $6e95: $c3 $59 $67


	xor [hl]                                         ; $6e98: $ae
	rst $38                                          ; $6e99: $ff
	sub c                                            ; $6e9a: $91
	cp $5b                                           ; $6e9b: $fe $5b
	db $fc                                           ; $6e9d: $fc
	ld c, h                                          ; $6e9e: $4c
	rst $38                                          ; $6e9f: $ff
	ld c, d                                          ; $6ea0: $4a
	rst $38                                          ; $6ea1: $ff
	jp hl                                            ; $6ea2: $e9


	rst $38                                          ; $6ea3: $ff
	xor l                                            ; $6ea4: $ad
	rst $38                                          ; $6ea5: $ff
	add b                                            ; $6ea6: $80
	db $ed                                           ; $6ea7: $ed
	ccf                                              ; $6ea8: $3f
	push af                                          ; $6ea9: $f5
	ccf                                              ; $6eaa: $3f
	db $ed                                           ; $6eab: $ed
	scf                                              ; $6eac: $37
	jp c, $ea2f                                      ; $6ead: $da $2f $ea

	rra                                              ; $6eb0: $1f
	ld [hl], l                                       ; $6eb1: $75
	sbc a                                            ; $6eb2: $9f
	jp c, $fbef                                      ; $6eb3: $da $ef $fb

	ld c, $f7                                        ; $6eb6: $0e $f7
	ld c, $f6                                        ; $6eb8: $0e $f6
	dec c                                            ; $6eba: $0d
	push af                                          ; $6ebb: $f5
	dec bc                                           ; $6ebc: $0b
	db $e3                                           ; $6ebd: $e3
	rra                                              ; $6ebe: $1f
	rst $38                                          ; $6ebf: $ff
	rra                                              ; $6ec0: $1f
	di                                               ; $6ec1: $f3
	ccf                                              ; $6ec2: $3f
	pop hl                                           ; $6ec3: $e1
	ld a, a                                          ; $6ec4: $7f
	pop af                                           ; $6ec5: $f1
	adc h                                            ; $6ec6: $8c
	rst $38                                          ; $6ec7: $ff
	ld h, e                                          ; $6ec8: $63
	rst $38                                          ; $6ec9: $ff
	push bc                                          ; $6eca: $c5
	rst $38                                          ; $6ecb: $ff
	ld l, b                                          ; $6ecc: $68
	sbc a                                            ; $6ecd: $9f
	call nc, $a83b                                   ; $6ece: $d4 $3b $a8
	ld [hl], a                                       ; $6ed1: $77
	db $10                                           ; $6ed2: $10
	rst AddAOntoHL                                          ; $6ed3: $ef
	jr nz, @-$1f                                     ; $6ed4: $20 $df

	add c                                            ; $6ed6: $81
	rst $38                                          ; $6ed7: $ff
	inc bc                                           ; $6ed8: $03
	rst $38                                          ; $6ed9: $ff
	ccf                                              ; $6eda: $3f
	jr nz, jr_06f_6f5c                               ; $6edb: $20 $7f

	ld a, d                                          ; $6edd: $7a
	sbc c                                            ; $6ede: $99
	sbc $3f                                          ; $6edf: $de $3f
	or e                                             ; $6ee1: $b3
	ld [hl], e                                       ; $6ee2: $73
	rst $38                                          ; $6ee3: $ff
	rst SubAFromDE                                          ; $6ee4: $df
	ld l, a                                          ; $6ee5: $6f
	jr nz, jr_06f_6eeb                               ; $6ee6: $20 $03

	ld b, b                                          ; $6ee8: $40
	dec sp                                           ; $6ee9: $3b
	ld b, b                                          ; $6eea: $40

jr_06f_6eeb:
	sbc c                                            ; $6eeb: $99
	rst $38                                          ; $6eec: $ff
	nop                                              ; $6eed: $00
	cp l                                             ; $6eee: $bd
	ld a, [hl]                                       ; $6eef: $7e
	ld e, a                                          ; $6ef0: $5f
	rst $38                                          ; $6ef1: $ff
	inc bc                                           ; $6ef2: $03
	ld b, b                                          ; $6ef3: $40
	dec bc                                           ; $6ef4: $0b
	ld b, b                                          ; $6ef5: $40
	sbc c                                            ; $6ef6: $99
	ld a, [$db8f]                                    ; $6ef7: $fa $8f $db
	xor $f7                                          ; $6efa: $ee $f7
	ld c, $3f                                        ; $6efc: $0e $3f
	ld h, b                                          ; $6efe: $60
	ld a, a                                          ; $6eff: $7f
	or [hl]                                          ; $6f00: $b6
	ld a, a                                          ; $6f01: $7f
	or d                                             ; $6f02: $b2
	sbc d                                            ; $6f03: $9a
	cpl                                              ; $6f04: $2f
	inc e                                            ; $6f05: $1c
	ld a, a                                          ; $6f06: $7f
	cp $37                                           ; $6f07: $fe $37
	inc bc                                           ; $6f09: $03
	ld h, b                                          ; $6f0a: $60
	rra                                              ; $6f0b: $1f
	ld h, b                                          ; $6f0c: $60
	ld a, a                                          ; $6f0d: $7f
	cp $94                                           ; $6f0e: $fe $94
	db $e3                                           ; $6f10: $e3
	nop                                              ; $6f11: $00
	db $dd                                           ; $6f12: $dd
	ld a, $7e                                        ; $6f13: $3e $7e
	rst $38                                          ; $6f15: $ff
	inc hl                                           ; $6f16: $23
	scf                                              ; $6f17: $37
	ccf                                              ; $6f18: $3f
	ld e, $41                                        ; $6f19: $1e $41
	inc bc                                           ; $6f1b: $03
	ld h, b                                          ; $6f1c: $60
	scf                                              ; $6f1d: $37
	ld h, b                                          ; $6f1e: $60
	sub a                                            ; $6f1f: $97
	push af                                          ; $6f20: $f5
	rra                                              ; $6f21: $1f
	ld a, [$fb0f]                                    ; $6f22: $fa $0f $fb
	ld c, $b7                                        ; $6f25: $0e $b7
	adc $03                                          ; $6f27: $ce $03
	ld h, b                                          ; $6f29: $60
	inc bc                                           ; $6f2a: $03
	ld h, b                                          ; $6f2b: $60
	inc bc                                           ; $6f2c: $03
	ld h, b                                          ; $6f2d: $60
	inc bc                                           ; $6f2e: $03
	ld h, b                                          ; $6f2f: $60
	rla                                              ; $6f30: $17
	ld h, b                                          ; $6f31: $60
	sbc d                                            ; $6f32: $9a
	ld a, h                                          ; $6f33: $7c
	ld b, b                                          ; $6f34: $40
	cp b                                             ; $6f35: $b8
	ret nz                                           ; $6f36: $c0

	ldh a, [$7b]                                     ; $6f37: $f0 $7b
	add [hl]                                         ; $6f39: $86
	sub a                                            ; $6f3a: $97
	ld [hl], b                                       ; $6f3b: $70
	ld h, b                                          ; $6f3c: $60
	ld e, b                                          ; $6f3d: $58
	ld d, b                                          ; $6f3e: $50
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00

jr_06f_6f41:
	ld d, b                                          ; $6f41: $50
	jr nz, jr_06f_6f41                               ; $6f42: $20 $fd

	sub e                                            ; $6f44: $93
	or l                                             ; $6f45: $b5
	ld a, b                                          ; $6f46: $78
	rst GetHLinHL                                          ; $6f47: $cf
	rst GetHLinHL                                          ; $6f48: $cf
	or a                                             ; $6f49: $b7
	dec h                                            ; $6f4a: $25
	ld e, a                                          ; $6f4b: $5f
	sbc a                                            ; $6f4c: $9f
	ld [hl], d                                       ; $6f4d: $72
	ld [hl], d                                       ; $6f4e: $72
	jp nc, $5fd2                                     ; $6f4f: $d2 $d2 $5f

	ldh [$9a], a                                     ; $6f52: $e0 $9a
	ld a, b                                          ; $6f54: $78
	ld [hl], b                                       ; $6f55: $70
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	db $10                                           ; $6f58: $10
	inc hl                                           ; $6f59: $23
	ldh [$99], a                                     ; $6f5a: $e0 $99

jr_06f_6f5c:
	ld h, b                                          ; $6f5c: $60
	ld [hl], b                                       ; $6f5d: $70
	jr c, jr_06f_6fd8                                ; $6f5e: $38 $78

	ld [hl], b                                       ; $6f60: $70
	jr c, jr_06f_6fd2                                ; $6f61: $38 $6f

	sbc $03                                          ; $6f63: $de $03
	ldh [$5b], a                                     ; $6f65: $e0 $5b
	ldh [rLCDC], a                                   ; $6f67: $e0 $40
	add e                                            ; $6f69: $83
	db $ec                                           ; $6f6a: $ec
	sbc h                                            ; $6f6b: $9c
	ld bc, $0703                                     ; $6f6c: $01 $03 $07
	ld l, a                                          ; $6f6f: $6f
	ld hl, sp-$6b                                    ; $6f70: $f8 $95
	ld [bc], a                                       ; $6f72: $02
	inc b                                            ; $6f73: $04
	rlca                                             ; $6f74: $07
	dec b                                            ; $6f75: $05
	inc b                                            ; $6f76: $04
	ld [$1008], sp                                   ; $6f77: $08 $08 $10
	rla                                              ; $6f7a: $17
	rra                                              ; $6f7b: $1f
	sbc $07                                          ; $6f7c: $de $07
	rst SubAFromDE                                          ; $6f7e: $df
	rrca                                             ; $6f7f: $0f
	rst SubAFromDE                                          ; $6f80: $df
	rra                                              ; $6f81: $1f
	sbc [hl]                                         ; $6f82: $9e
	inc e                                            ; $6f83: $1c
	sbc $1f                                          ; $6f84: $de $1f
	db $dd                                           ; $6f86: $dd
	ccf                                              ; $6f87: $3f
	sub [hl]                                         ; $6f88: $96
	ld a, a                                          ; $6f89: $7f
	ld [de], a                                       ; $6f8a: $12
	ld [de], a                                       ; $6f8b: $12
	ld de, $303f                                     ; $6f8c: $11 $3f $30
	add hl, hl                                       ; $6f8f: $29
	dec h                                            ; $6f90: $25
	ld b, [hl]                                       ; $6f91: $46
	ld a, e                                          ; $6f92: $7b
	db $db                                           ; $6f93: $db
	ld a, a                                          ; $6f94: $7f
	jp nc, $0380                                     ; $6f95: $d2 $80 $03

	rrca                                             ; $6f98: $0f
	rrca                                             ; $6f99: $0f
	ld bc, $0201                                     ; $6f9a: $01 $01 $02
	ld b, $04                                        ; $6f9d: $06 $04
	inc c                                            ; $6f9f: $0c
	db $10                                           ; $6fa0: $10
	db $10                                           ; $6fa1: $10
	rra                                              ; $6fa2: $1f
	inc bc                                           ; $6fa3: $03
	ld sp, $f478                                     ; $6fa4: $31 $78 $f4
	xor $da                                          ; $6fa7: $ee $da
	and c                                            ; $6fa9: $a1
	jr nz, jr_06f_6fe8                               ; $6faa: $20 $3c

	ld a, $4f                                        ; $6fac: $3e $4f
	sbc a                                            ; $6fae: $9f
	ccf                                              ; $6faf: $3f
	ld a, a                                          ; $6fb0: $7f
	rst $38                                          ; $6fb1: $ff
	ld b, d                                          ; $6fb2: $42
	add d                                            ; $6fb3: $82
	jp nz, $9b64                                     ; $6fb4: $c2 $64 $9b

	jr jr_06f_6fc8                                   ; $6fb7: $18 $0f

	db $e4                                           ; $6fb9: $e4
	cp $da                                           ; $6fba: $fe $da
	rst $38                                          ; $6fbc: $ff
	sbc [hl]                                         ; $6fbd: $9e
	rra                                              ; $6fbe: $1f
	ld h, a                                          ; $6fbf: $67
	rst FarCall                                          ; $6fc0: $f7
	sub a                                            ; $6fc1: $97
	dec hl                                           ; $6fc2: $2b
	ld c, d                                          ; $6fc3: $4a
	add l                                            ; $6fc4: $85
	push hl                                          ; $6fc5: $e5
	sbc h                                            ; $6fc6: $9c
	ld b, e                                          ; $6fc7: $43

jr_06f_6fc8:
	ld b, l                                          ; $6fc8: $45
	dec h                                            ; $6fc9: $25
	db $eb                                           ; $6fca: $eb
	sbc l                                            ; $6fcb: $9d
	ld bc, $6f11                                     ; $6fcc: $01 $11 $6f
	ld sp, hl                                        ; $6fcf: $f9
	sbc h                                            ; $6fd0: $9c
	ld [hl-], a                                      ; $6fd1: $32

jr_06f_6fd2:
	xor $40                                          ; $6fd2: $ee $40
	ld b, a                                          ; $6fd4: $47
	and $98                                          ; $6fd5: $e6 $98
	add b                                            ; $6fd7: $80

jr_06f_6fd8:
	ld [hl+], a                                      ; $6fd8: $22
	push de                                          ; $6fd9: $d5

jr_06f_6fda:
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	ld e, l                                          ; $6fdc: $5d
	jr z, jr_06f_6fda                                ; $6fdd: $28 $fb

	add b                                            ; $6fdf: $80
	and d                                            ; $6fe0: $a2
	rst FarCall                                          ; $6fe1: $f7
	ld a, e                                          ; $6fe2: $7b
	rst SubAFromBC                                          ; $6fe3: $e7
	di                                               ; $6fe4: $f3
	di                                               ; $6fe5: $f3
	cp c                                             ; $6fe6: $b9
	cp c                                             ; $6fe7: $b9

jr_06f_6fe8:
	rst $38                                          ; $6fe8: $ff
	cp e                                             ; $6fe9: $bb
	rst $38                                          ; $6fea: $ff
	cp l                                             ; $6feb: $bd
	sbc $de                                          ; $6fec: $de $de
	rst AddAOntoHL                                          ; $6fee: $ef
	rst AddAOntoHL                                          ; $6fef: $ef
	add hl, hl                                       ; $6ff0: $29
	ld l, l                                          ; $6ff1: $6d
	sbc a                                            ; $6ff2: $9f
	rra                                              ; $6ff3: $1f
	rla                                              ; $6ff4: $17
	rra                                              ; $6ff5: $1f
	cp a                                             ; $6ff6: $bf
	ld sp, hl                                        ; $6ff7: $f9
	ldh [$c1], a                                     ; $6ff8: $e0 $c1
	halt                                             ; $6ffa: $76
	pop af                                           ; $6ffb: $f1
	cp $f8                                           ; $6ffc: $fe $f8
	rst SubAFromBC                                          ; $6ffe: $e7
	sbc h                                            ; $6fff: $9c
	rst SubAFromDE                                          ; $7000: $df
	cp a                                             ; $7001: $bf
	ld a, a                                          ; $7002: $7f
	ld [hl], a                                       ; $7003: $77
	call $2f77                                       ; $7004: $cd $77 $2f
	ld a, e                                          ; $7007: $7b
	ld e, c                                          ; $7008: $59
	sbc [hl]                                         ; $7009: $9e
	ld b, $7b                                        ; $700a: $06 $7b
	ld e, h                                          ; $700c: $5c
	sbc l                                            ; $700d: $9d
	inc b                                            ; $700e: $04
	ld bc, $f177                                     ; $700f: $01 $77 $f1
	adc c                                            ; $7012: $89
	nop                                              ; $7013: $00
	ld b, b                                          ; $7014: $40
	or b                                             ; $7015: $b0
	ld [bc], a                                       ; $7016: $02
	ld bc, $0102                                     ; $7017: $01 $02 $01
	ld bc, $b870                                     ; $701a: $01 $70 $b8
	ld c, h                                          ; $701d: $4c
	add hl, de                                       ; $701e: $19
	inc sp                                           ; $701f: $33
	ld l, d                                          ; $7020: $6a
	dec a                                            ; $7021: $3d
	rra                                              ; $7022: $1f
	cp e                                             ; $7023: $bb
	ld e, e                                          ; $7024: $5b
	cp e                                             ; $7025: $bb
	rlca                                             ; $7026: $07
	rrca                                             ; $7027: $0f
	rla                                              ; $7028: $17
	ld a, e                                          ; $7029: $7b
	ld b, b                                          ; $702a: $40
	rst SubAFromDE                                          ; $702b: $df
	inc c                                            ; $702c: $0c
	add b                                            ; $702d: $80
	ld e, c                                          ; $702e: $59
	xor l                                            ; $702f: $ad
	cp $ee                                           ; $7030: $fe $ee
	push af                                          ; $7032: $f5
	db $e4                                           ; $7033: $e4
	and d                                            ; $7034: $a2
	ld a, [$1e0e]                                    ; $7035: $fa $0e $1e
	rra                                              ; $7038: $1f
	rra                                              ; $7039: $1f
	rrca                                             ; $703a: $0f
	rra                                              ; $703b: $1f
	ld a, a                                          ; $703c: $7f
	rst $38                                          ; $703d: $ff
	and $a1                                          ; $703e: $e6 $a1
	call c, $a78f                                    ; $7040: $dc $8f $a7
	and c                                            ; $7043: $a1
	rst GetHLinHL                                          ; $7044: $cf
	or c                                             ; $7045: $b1
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	and e                                            ; $7048: $a3
	and b                                            ; $7049: $a0
	add b                                            ; $704a: $80
	add b                                            ; $704b: $80
	or b                                             ; $704c: $b0
	adc [hl]                                         ; $704d: $8e
	adc $ee                                          ; $704e: $ce $ee
	sbc [hl]                                         ; $7050: $9e
	pop hl                                           ; $7051: $e1
	cp $67                                           ; $7052: $fe $67
	ld e, e                                          ; $7054: $5b
	cp a                                             ; $7055: $bf
	cp $f1                                           ; $7056: $fe $f1
	rst $38                                          ; $7058: $ff
	rra                                              ; $7059: $1f
	rst $38                                          ; $705a: $ff
	add c                                            ; $705b: $81
	add a                                            ; $705c: $87
	pop bc                                           ; $705d: $c1
	ei                                               ; $705e: $fb
	db $dd                                           ; $705f: $dd
	ld bc, $03df                                     ; $7060: $01 $df $03
	sbc [hl]                                         ; $7063: $9e
	rlca                                             ; $7064: $07
	ld a, e                                          ; $7065: $7b
	and h                                            ; $7066: $a4
	ld a, e                                          ; $7067: $7b
	ld hl, sp+$7e                                    ; $7068: $f8 $7e
	db $fd                                           ; $706a: $fd
	sub [hl]                                         ; $706b: $96
	rlca                                             ; $706c: $07
	ld a, [bc]                                       ; $706d: $0a
	dec bc                                           ; $706e: $0b
	dec bc                                           ; $706f: $0b
	ld c, $01                                        ; $7070: $0e $01
	dec c                                            ; $7072: $0d
	ld e, $3f                                        ; $7073: $1e $3f
	call c, $950f                                    ; $7075: $dc $0f $95
	ld [de], a                                       ; $7078: $12
	ld h, c                                          ; $7079: $61
	ld b, b                                          ; $707a: $40
	add e                                            ; $707b: $83
	add c                                            ; $707c: $81
	inc bc                                           ; $707d: $03
	ld [bc], a                                       ; $707e: $02
	dec b                                            ; $707f: $05
	inc bc                                           ; $7080: $03
	ld bc, $8b77                                     ; $7081: $01 $77 $8b
	db $fc                                           ; $7084: $fc
	ld a, e                                          ; $7085: $7b
	di                                               ; $7086: $f3
	sbc d                                            ; $7087: $9a
	dec b                                            ; $7088: $05
	sub a                                            ; $7089: $97
	rst FarCall                                          ; $708a: $f7
	db $fc                                           ; $708b: $fc
	ret nz                                           ; $708c: $c0

	db $fc                                           ; $708d: $fc
	add b                                            ; $708e: $80
	dec de                                           ; $708f: $1b
	ccf                                              ; $7090: $3f
	rst $38                                          ; $7091: $ff
	db $e3                                           ; $7092: $e3
	ld b, a                                          ; $7093: $47
	ld c, $1c                                        ; $7094: $0e $1c
	jr jr_06f_70d0                                   ; $7096: $18 $38

	or b                                             ; $7098: $b0
	and b                                            ; $7099: $a0
	sbc a                                            ; $709a: $9f
	cp [hl]                                          ; $709b: $be
	db $fc                                           ; $709c: $fc
	ld hl, sp-$10                                    ; $709d: $f8 $f0
	ldh a, [$60]                                     ; $709f: $f0 $60
	ld h, b                                          ; $70a1: $60
	ldh a, [$f0]                                     ; $70a2: $f0 $f0
	ld hl, sp-$24                                    ; $70a4: $f8 $dc
	ld l, [hl]                                       ; $70a6: $6e
	and a                                            ; $70a7: $a7
	ld d, e                                          ; $70a8: $53
	jr z, jr_06f_70cb                                ; $70a9: $28 $20

	db $10                                           ; $70ab: $10
	ld [$8004], sp                                   ; $70ac: $08 $04 $80
	add d                                            ; $70af: $82
	pop bc                                           ; $70b0: $c1
	ldh [$f0], a                                     ; $70b1: $e0 $f0
	inc d                                            ; $70b3: $14
	ld a, [bc]                                       ; $70b4: $0a
	adc e                                            ; $70b5: $8b
	ld b, l                                          ; $70b6: $45
	and l                                            ; $70b7: $a5
	jp nc, $f9ea                                     ; $70b8: $d2 $ea $f9

	ld hl, sp-$04                                    ; $70bb: $f8 $fc
	db $fc                                           ; $70bd: $fc
	cp $7e                                           ; $70be: $fe $7e
	ccf                                              ; $70c0: $3f
	rra                                              ; $70c1: $1f
	rrca                                             ; $70c2: $0f
	ld [hl], l                                       ; $70c3: $75
	sbc l                                            ; $70c4: $9d
	ld [$5552], a                                    ; $70c5: $ea $52 $55
	xor l                                            ; $70c8: $ad
	ld e, [hl]                                       ; $70c9: $5e
	cp [hl]                                          ; $70ca: $be

jr_06f_70cb:
	adc a                                            ; $70cb: $8f
	ld h, a                                          ; $70cc: $67
	sub a                                            ; $70cd: $97
	sbc d                                            ; $70ce: $9a
	rst AddAOntoHL                                          ; $70cf: $ef

jr_06f_70d0:
	db $eb                                           ; $70d0: $eb
	db $d3                                           ; $70d1: $d3
	and c                                            ; $70d2: $a1
	ld b, c                                          ; $70d3: $41
	ei                                               ; $70d4: $fb
	sbc l                                            ; $70d5: $9d
	rlca                                             ; $70d6: $07
	dec bc                                           ; $70d7: $0b
	ld l, e                                          ; $70d8: $6b
	ld hl, sp-$80                                    ; $70d9: $f8 $80
	inc c                                            ; $70db: $0c
	rra                                              ; $70dc: $1f
	rra                                              ; $70dd: $1f
	rla                                              ; $70de: $17
	rrca                                             ; $70df: $0f
	dec de                                           ; $70e0: $1b
	push af                                          ; $70e1: $f5
	rst $38                                          ; $70e2: $ff
	cp $10                                           ; $70e3: $fe $10
	db $10                                           ; $70e5: $10
	add hl, de                                       ; $70e6: $19
	ld [$ee1c], sp                                   ; $70e7: $08 $1c $ee
	add e                                            ; $70ea: $83
	add a                                            ; $70eb: $87
	ld a, b                                          ; $70ec: $78
	ld l, b                                          ; $70ed: $68
	res 1, [hl]                                      ; $70ee: $cb $8e
	reti                                             ; $70f0: $d9


	push af                                          ; $70f1: $f5
	ld [$9fd6], a                                    ; $70f2: $ea $d6 $9f
	rst $38                                          ; $70f5: $ff
	rst $38                                          ; $70f6: $ff
	db $fc                                           ; $70f7: $fc
	or b                                             ; $70f8: $b0
	and e                                            ; $70f9: $a3
	adc l                                            ; $70fa: $8d
	rst JumpTable                                          ; $70fb: $c7
	adc a                                            ; $70fc: $8f
	ld [$5f30], a                                    ; $70fd: $ea $30 $5f
	ld a, c                                          ; $7100: $79
	inc sp                                           ; $7101: $33
	push de                                          ; $7102: $d5
	ld e, b                                          ; $7103: $58
	rst FarCall                                          ; $7104: $f7
	sbc a                                            ; $7105: $9f
	sbc a                                            ; $7106: $9f
	or a                                             ; $7107: $b7
	or a                                             ; $7108: $b7
	rst $38                                          ; $7109: $ff
	db $fc                                           ; $710a: $fc
	ei                                               ; $710b: $fb
	ld [hl], e                                       ; $710c: $73
	ldh [$c1], a                                     ; $710d: $e0 $c1
	sbc e                                            ; $710f: $9b
	dec bc                                           ; $7110: $0b
	rlca                                             ; $7111: $07
	ld [bc], a                                       ; $7112: $02
	inc bc                                           ; $7113: $03
	sbc $06                                          ; $7114: $de $06
	sbc d                                            ; $7116: $9a
	ld c, $1a                                        ; $7117: $0e $1a
	rrca                                             ; $7119: $0f
	ld b, $0f                                        ; $711a: $06 $0f
	ld a, c                                          ; $711c: $79
	and $8e                                          ; $711d: $e6 $8e
	dec sp                                           ; $711f: $3b
	rrca                                             ; $7120: $0f
	dec bc                                           ; $7121: $0b
	dec de                                           ; $7122: $1b
	dec de                                           ; $7123: $1b
	rra                                              ; $7124: $1f
	ld e, $9e                                        ; $7125: $1e $9e
	sbc h                                            ; $7127: $9c
	cp e                                             ; $7128: $bb
	cp c                                             ; $7129: $b9
	cp c                                             ; $712a: $b9
	pop af                                           ; $712b: $f1
	pop af                                           ; $712c: $f1
	di                                               ; $712d: $f3
	di                                               ; $712e: $f3
	rst FarCall                                          ; $712f: $f7
	db $fc                                           ; $7130: $fc
	sbc h                                            ; $7131: $9c
	rra                                              ; $7132: $1f
	pop hl                                           ; $7133: $e1
	db $fc                                           ; $7134: $fc
	ld l, a                                          ; $7135: $6f
	ld hl, sp+$7e                                    ; $7136: $f8 $7e
	res 2, d                                         ; $7138: $cb $92
	ei                                               ; $713a: $fb
	db $fc                                           ; $713b: $fc
	rst $38                                          ; $713c: $ff
	rst $38                                          ; $713d: $ff
	sbc h                                            ; $713e: $9c
	ld a, a                                          ; $713f: $7f
	db $e4                                           ; $7140: $e4
	add e                                            ; $7141: $83
	rlca                                             ; $7142: $07
	rst $38                                          ; $7143: $ff
	nop                                              ; $7144: $00
	rra                                              ; $7145: $1f
	ld h, e                                          ; $7146: $63
	sbc $ff                                          ; $7147: $de $ff
	add b                                            ; $7149: $80
	sbc a                                            ; $714a: $9f
	rst SubAFromDE                                          ; $714b: $df
	ld hl, sp-$31                                    ; $714c: $f8 $cf
	ld [hl], c                                       ; $714e: $71
	add $75                                          ; $714f: $c6 $75
	ld h, e                                          ; $7151: $63
	cp $e0                                           ; $7152: $fe $e0
	rlca                                             ; $7154: $07
	ccf                                              ; $7155: $3f
	rst $38                                          ; $7156: $ff
	ld sp, hl                                        ; $7157: $f9
	set 3, a                                         ; $7158: $cb $df
	inc a                                            ; $715a: $3c
	rst AddAOntoHL                                          ; $715b: $ef
	ld a, a                                          ; $715c: $7f
	rst $38                                          ; $715d: $ff
	ld [hl-], a                                      ; $715e: $32
	ld h, l                                          ; $715f: $65
	sbc d                                            ; $7160: $9a
	xor l                                            ; $7161: $ad
	rst $38                                          ; $7162: $ff
	ldh a, [$80]                                     ; $7163: $f0 $80
	rst $38                                          ; $7165: $ff
	rst $38                                          ; $7166: $ff
	call c, $9eb9                                    ; $7167: $dc $b9 $9e
	ld a, e                                          ; $716a: $7b
	ldh [$c1], a                                     ; $716b: $e0 $c1
	sub d                                            ; $716d: $92
	ld bc, $ff82                                     ; $716e: $01 $82 $ff
	rrca                                             ; $7171: $0f
	jr nz, @+$42                                     ; $7172: $20 $40

	jr jr_06f_71b5                                   ; $7174: $18 $3f

	ld bc, $ff02                                     ; $7176: $01 $02 $ff
	add b                                            ; $7179: $80
	rra                                              ; $717a: $1f
	ld a, c                                          ; $717b: $79
	ld [hl], b                                       ; $717c: $70
	adc a                                            ; $717d: $8f
	ld a, l                                          ; $717e: $7d
	add $1e                                          ; $717f: $c6 $1e
	ld e, [hl]                                       ; $7181: $5e
	ld [hl], c                                       ; $7182: $71
	add $99                                          ; $7183: $c6 $99
	db $e3                                           ; $7185: $e3
	di                                               ; $7186: $f3
	ld sp, hl                                        ; $7187: $f9
	ret                                              ; $7188: $c9


	adc c                                            ; $7189: $89
	cp a                                             ; $718a: $bf
	cp a                                             ; $718b: $bf
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	halt                                             ; $718e: $76
	res 3, e                                         ; $718f: $cb $9b
	ld c, $15                                        ; $7191: $0e $15
	xor [hl]                                         ; $7193: $ae
	ld a, l                                          ; $7194: $7d
	ld [hl], e                                       ; $7195: $73
	ld hl, sp-$67                                    ; $7196: $f8 $99
	dec e                                            ; $7198: $1d
	or a                                             ; $7199: $b7
	rst AddAOntoHL                                          ; $719a: $ef
	ld a, [hl-]                                      ; $719b: $3a
	xor e                                            ; $719c: $ab
	ld a, d                                          ; $719d: $7a
	sbc $ff                                          ; $719e: $de $ff
	sbc b                                            ; $71a0: $98
	ld de, $eefc                                     ; $71a1: $11 $fc $ee
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	rst JumpTable                                          ; $71a6: $c7
	call nc, $ffde                                   ; $71a7: $d4 $de $ff
	ld a, c                                          ; $71aa: $79
	ld d, b                                          ; $71ab: $50
	sbc b                                            ; $71ac: $98
	add hl, bc                                       ; $71ad: $09
	ld l, b                                          ; $71ae: $68
	ld [hl], a                                       ; $71af: $77
	ld d, $c8                                        ; $71b0: $16 $c8
	ld bc, $7b00                                     ; $71b2: $01 $00 $7b

jr_06f_71b5:
	ld d, h                                          ; $71b5: $54
	adc h                                            ; $71b6: $8c
	adc b                                            ; $71b7: $88
	jp hl                                            ; $71b8: $e9


	rst $38                                          ; $71b9: $ff
	jr c, jr_06f_71c9                                ; $71ba: $38 $0d

	add l                                            ; $71bc: $85
	db $e3                                           ; $71bd: $e3
	ld a, c                                          ; $71be: $79
	cp [hl]                                          ; $71bf: $be
	pop hl                                           ; $71c0: $e1
	xor [hl]                                         ; $71c1: $ae
	rst $38                                          ; $71c2: $ff
	rst $38                                          ; $71c3: $ff
	ld a, a                                          ; $71c4: $7f
	rst $38                                          ; $71c5: $ff
	sbc a                                            ; $71c6: $9f
	ld a, a                                          ; $71c7: $7f
	rst $38                                          ; $71c8: $ff

jr_06f_71c9:
	rst SubAFromDE                                          ; $71c9: $df
	ldh [$c1], a                                     ; $71ca: $e0 $c1
	sub l                                            ; $71cc: $95
	ld h, [hl]                                       ; $71cd: $66
	adc $8e                                          ; $71ce: $ce $8e
	rra                                              ; $71d0: $1f
	ld d, $37                                        ; $71d1: $16 $37
	ld b, a                                          ; $71d3: $47
	adc a                                            ; $71d4: $8f
	inc a                                            ; $71d5: $3c
	ld a, h                                          ; $71d6: $7c
	ld a, d                                          ; $71d7: $7a
	rra                                              ; $71d8: $1f
	ld a, a                                          ; $71d9: $7f
	sub e                                            ; $71da: $93
	sub h                                            ; $71db: $94
	db $fd                                           ; $71dc: $fd
	rla                                              ; $71dd: $17
	and a                                            ; $71de: $a7
	adc $8e                                          ; $71df: $ce $8e
	ld c, $1f                                        ; $71e1: $0e $1f
	db $fc                                           ; $71e3: $fc
	dec e                                            ; $71e4: $1d
	db $fd                                           ; $71e5: $fd
	db $fd                                           ; $71e6: $fd
	sbc $fb                                          ; $71e7: $de $fb
	sbc $f7                                          ; $71e9: $de $f7
	cp $9b                                           ; $71eb: $fe $9b
	add b                                            ; $71ed: $80
	nop                                              ; $71ee: $00
	ret nz                                           ; $71ef: $c0

	add b                                            ; $71f0: $80
	db $fd                                           ; $71f1: $fd
	ld [hl], e                                       ; $71f2: $73
	ld hl, sp-$7c                                    ; $71f3: $f8 $84
	ldh [rAUD1SWEEP], a                              ; $71f5: $e0 $10
	db $fc                                           ; $71f7: $fc
	ld a, [$b5ed]                                    ; $71f8: $fa $ed $b5
	ld a, c                                          ; $71fb: $79
	sbc c                                            ; $71fc: $99
	ldh [$f0], a                                     ; $71fd: $e0 $f0
	db $fc                                           ; $71ff: $fc
	ld b, $f3                                        ; $7200: $06 $f3
	set 4, a                                         ; $7202: $cb $e7
	rst $38                                          ; $7204: $ff
	ld l, l                                          ; $7205: $6d
	rst SubAFromBC                                          ; $7206: $e7
	dec sp                                           ; $7207: $3b
	ldh a, [$9e]                                     ; $7208: $f0 $9e
	di                                               ; $720a: $f3
	ld [hl], h                                       ; $720b: $74
	ld a, [hl]                                       ; $720c: $7e
	rst $38                                          ; $720d: $ff
	rra                                              ; $720e: $1f
	rst JumpTable                                          ; $720f: $c7
	ld a, e                                          ; $7210: $7b
	ld e, a                                          ; $7211: $5f
	adc l                                            ; $7212: $8d
	sbc e                                            ; $7213: $9b
	rst $38                                          ; $7214: $ff
	push hl                                          ; $7215: $e5
	ld c, e                                          ; $7216: $4b
	ld d, $bf                                        ; $7217: $16 $bf
	ld b, l                                          ; $7219: $45
	cp $85                                           ; $721a: $fe $85
	ldh a, [c]                                       ; $721c: $f2
	sbc [hl]                                         ; $721d: $9e
	ld a, $7f                                        ; $721e: $3e $7f
	ld a, a                                          ; $7220: $7f
	ld hl, sp-$01                                    ; $7221: $f8 $ff
	ei                                               ; $7223: $fb
	db $fd                                           ; $7224: $fd
	ldh [$c1], a                                     ; $7225: $e0 $c1
	add l                                            ; $7227: $85
	di                                               ; $7228: $f3
	ei                                               ; $7229: $fb
	cp $a6                                           ; $722a: $fe $a6
	ld d, d                                          ; $722c: $52
	and [hl]                                         ; $722d: $a6
	ld e, d                                          ; $722e: $5a
	sub b                                            ; $722f: $90
	ccf                                              ; $7230: $3f
	rra                                              ; $7231: $1f
	ld c, $5e                                        ; $7232: $0e $5e
	xor [hl]                                         ; $7234: $ae
	ld e, [hl]                                       ; $7235: $5e
	xor d                                            ; $7236: $aa
	ldh a, [rSVBK]                                   ; $7237: $f0 $70
	ld d, [hl]                                       ; $7239: $56
	ld e, c                                          ; $723a: $59
	ld [hl], c                                       ; $723b: $71
	ld b, c                                          ; $723c: $41
	jp Jump_06f_7fe7                                 ; $723d: $c3 $e7 $7f


	ldh a, [$f6]                                     ; $7240: $f0 $f6
	db $dd                                           ; $7242: $dd
	rst $38                                          ; $7243: $ff
	ld a, h                                          ; $7244: $7c
	sbc h                                            ; $7245: $9c
	ld [hl], a                                       ; $7246: $77
	ld l, b                                          ; $7247: $68
	sbc e                                            ; $7248: $9b
	ld b, b                                          ; $7249: $40
	and b                                            ; $724a: $a0
	ldh [$a0], a                                     ; $724b: $e0 $a0
	ld [hl], a                                       ; $724d: $77
	ld hl, sp-$62                                    ; $724e: $f8 $9e
	ret nz                                           ; $7250: $c0

	sbc $e0                                          ; $7251: $de $e0
	ld a, a                                          ; $7253: $7f
	rst SubAFromDE                                          ; $7254: $df
	add h                                            ; $7255: $84
	xor b                                            ; $7256: $a8
	ret z                                            ; $7257: $c8

	inc h                                            ; $7258: $24
	call nc, $e4ac                                   ; $7259: $d4 $ac $e4
	or b                                             ; $725c: $b0
	or b                                             ; $725d: $b0
	ld hl, sp-$08                                    ; $725e: $f8 $f8
	db $fc                                           ; $7260: $fc
	inc a                                            ; $7261: $3c
	call c, Call_06f_7efc                            ; $7262: $dc $fc $7e
	and h                                            ; $7265: $a4
	ld d, h                                          ; $7266: $54
	xor b                                            ; $7267: $a8
	ret z                                            ; $7268: $c8

	or h                                             ; $7269: $b4
	sbc d                                            ; $726a: $9a
	adc [hl]                                         ; $726b: $8e
	cp $7c                                           ; $726c: $fe $7c
	cp h                                             ; $726e: $bc
	ret c                                            ; $726f: $d8

	ld hl, sp+$7b                                    ; $7270: $f8 $7b
	ld e, $92                                        ; $7272: $1e $92
	jp z, $bca4                                      ; $7274: $ca $a4 $bc

	inc a                                            ; $7277: $3c
	ld d, d                                          ; $7278: $52
	adc $4e                                          ; $7279: $ce $4e
	ld c, [hl]                                       ; $727b: $4e
	ld a, [$f4fc]                                    ; $727c: $fa $fc $f4
	db $f4                                           ; $727f: $f4
	sbc $de                                          ; $7280: $de $de
	jp z, $2a9d                                      ; $7282: $ca $9d $2a

	and [hl]                                         ; $7285: $a6
	sbc $e4                                          ; $7286: $de $e4
	rst SubAFromDE                                          ; $7288: $df
	xor b                                            ; $7289: $a8
	sbc h                                            ; $728a: $9c
	ld d, b                                          ; $728b: $50
	xor $66                                          ; $728c: $ee $66
	sbc $24                                          ; $728e: $de $24
	rst SubAFromDE                                          ; $7290: $df
	ld l, b                                          ; $7291: $68
	sbc [hl]                                         ; $7292: $9e
	ret nc                                           ; $7293: $d0

	sbc $40                                          ; $7294: $de $40
	sbc $80                                          ; $7296: $de $80
	rst $38                                          ; $7298: $ff
	sbc $c0                                          ; $7299: $de $c0
	ld [hl], e                                       ; $729b: $73
	ld hl, sp-$13                                    ; $729c: $f8 $ed
	ld a, e                                          ; $729e: $7b
	sub a                                            ; $729f: $97
	sbc [hl]                                         ; $72a0: $9e
	ldh a, [$73]                                     ; $72a1: $f0 $73
	ld hl, sp-$64                                    ; $72a3: $f8 $9c
	ld b, b                                          ; $72a5: $40
	jr nz, jr_06f_72b8                               ; $72a6: $20 $10

	jr z, jr_06f_72aa                                ; $72a8: $28 $00

jr_06f_72aa:
	sub l                                            ; $72aa: $95
	sbc c                                            ; $72ab: $99
	call z, $44dd                                    ; $72ac: $cc $dd $44
	db $dd                                           ; $72af: $dd
	ld de, $dd33                                     ; $72b0: $11 $33 $dd
	ld de, $7b11                                     ; $72b3: $11 $11 $7b
	db $fd                                           ; $72b6: $fd
	sub d                                            ; $72b7: $92

jr_06f_72b8:
	ld de, $66ee                                     ; $72b8: $11 $ee $66
	sbc c                                            ; $72bb: $99
	sbc c                                            ; $72bc: $99
	inc sp                                           ; $72bd: $33
	xor $80                                          ; $72be: $ee $80
	sbc c                                            ; $72c0: $99
	sbc c                                            ; $72c1: $99
	ld de, $00ee                                     ; $72c2: $11 $ee $00
	ld [hl], a                                       ; $72c5: $77
	or $9b                                           ; $72c6: $f6 $9b
	ld [hl+], a                                      ; $72c8: $22
	sbc c                                            ; $72c9: $99
	sbc c                                            ; $72ca: $99
	db $dd                                           ; $72cb: $dd
	sbc $aa                                          ; $72cc: $de $aa
	sbc [hl]                                         ; $72ce: $9e
	cp e                                             ; $72cf: $bb
	push de                                          ; $72d0: $d5
	ld bc, $7d82                                     ; $72d1: $01 $82 $7d
	or a                                             ; $72d4: $b7
	scf                                              ; $72d5: $37
	db $fd                                           ; $72d6: $fd
	ld e, a                                          ; $72d7: $5f
	cp c                                             ; $72d8: $b9
	db $d3                                           ; $72d9: $d3
	add hl, sp                                       ; $72da: $39
	sub d                                            ; $72db: $92
	ld a, c                                          ; $72dc: $79
	db $db                                           ; $72dd: $db
	inc sp                                           ; $72de: $33
	sbc c                                            ; $72df: $99
	ld [hl], b                                       ; $72e0: $70
	sub $31                                          ; $72e1: $d6 $31
	push de                                          ; $72e3: $d5
	inc sp                                           ; $72e4: $33
	xor a                                            ; $72e5: $af
	ld a, a                                          ; $72e6: $7f
	or e                                             ; $72e7: $b3
	ld h, a                                          ; $72e8: $67
	add $63                                          ; $72e9: $c6 $63
	and e                                            ; $72eb: $a3
	jp nz, $83c5                                     ; $72ec: $c2 $c5 $83

	add c                                            ; $72ef: $81
	sbc $c0                                          ; $72f0: $de $c0
	sbc [hl]                                         ; $72f2: $9e
	ldh [$7b], a                                     ; $72f3: $e0 $7b
	db $fd                                           ; $72f5: $fd
	add b                                            ; $72f6: $80
	ldh a, [$e0]                                     ; $72f7: $f0 $e0
	and b                                            ; $72f9: $a0
	ldh a, [$b8]                                     ; $72fa: $f0 $b8
	ldh a, [$50]                                     ; $72fc: $f0 $50
	ld a, b                                          ; $72fe: $78
	ld c, h                                          ; $72ff: $4c
	ld a, b                                          ; $7300: $78
	ld h, $3c                                        ; $7301: $26 $3c
	inc hl                                           ; $7303: $23
	ld a, $17                                        ; $7304: $3e $17
	rra                                              ; $7306: $1f
	dec c                                            ; $7307: $0d
	dec c                                            ; $7308: $0d
	inc c                                            ; $7309: $0c
	ld [$181c], sp                                   ; $730a: $08 $1c $18
	or h                                             ; $730d: $b4
	inc h                                            ; $730e: $24
	and $c4                                          ; $730f: $e6 $c4
	or $32                                           ; $7311: $f6 $32
	ld e, d                                          ; $7313: $5a
	or $b6                                           ; $7314: $f6 $b6
	add b                                            ; $7316: $80
	call c, $9c74                                    ; $7317: $dc $74 $9c
	cp $0c                                           ; $731a: $fe $0c
	db $fc                                           ; $731c: $fc
	cp $3a                                           ; $731d: $fe $3a
	add $fe                                          ; $731f: $c6 $fe
	nop                                              ; $7321: $00
	rst AddAOntoHL                                          ; $7322: $ef
	ldh a, [rIE]                                     ; $7323: $f0 $ff
	ld hl, sp+$3b                                    ; $7325: $f8 $3b
	inc a                                            ; $7327: $3c
	sbc $f4                                          ; $7328: $de $f4
	sub h                                            ; $732a: $94
	ldh a, [$60]                                     ; $732b: $f0 $60
	jr nz, jr_06f_736f                               ; $732d: $20 $40

	ld b, b                                          ; $732f: $40
	ld [hl+], a                                      ; $7330: $22
	ret nz                                           ; $7331: $c0

	dec d                                            ; $7332: $15
	nop                                              ; $7333: $00
	sbc c                                            ; $7334: $99
	cp a                                             ; $7335: $bf
	sub c                                            ; $7336: $91
	or h                                             ; $7337: $b4
	cp b                                             ; $7338: $b8
	db $ec                                           ; $7339: $ec
	or b                                             ; $733a: $b0
	xor b                                            ; $733b: $a8
	ldh [$78], a                                     ; $733c: $e0 $78
	ld h, b                                          ; $733e: $60
	inc a                                            ; $733f: $3c
	jr nz, jr_06f_735f                               ; $7340: $20 $1d

	ld de, $0303                                     ; $7342: $11 $03 $03
	db $fd                                           ; $7345: $fd
	sbc [hl]                                         ; $7346: $9e
	ld bc, $07be                                     ; $7347: $01 $be $07
	rrca                                             ; $734a: $0f
	inc e                                            ; $734b: $1c
	sub c                                            ; $734c: $91

jr_06f_734d:
	inc bc                                           ; $734d: $03
	sbc a                                            ; $734e: $9f
	rlca                                             ; $734f: $07
	call nc, $ff0c                                   ; $7350: $d4 $0c $ff
	rrca                                             ; $7353: $0f
	cp h                                             ; $7354: $bc
	ld c, e                                          ; $7355: $4b
	cp e                                             ; $7356: $bb
	ret                                              ; $7357: $c9


	xor [hl]                                         ; $7358: $ae
	rst JumpTable                                          ; $7359: $c7
	rst JumpTable                                          ; $735a: $c7
	cp a                                             ; $735b: $bf
	rlca                                             ; $735c: $07
	ld c, $80                                        ; $735d: $0e $80

jr_06f_735f:
	ld bc, $031d                                     ; $735f: $01 $1d $03
	halt                                             ; $7362: $76
	rrca                                             ; $7363: $0f
	db $dd                                           ; $7364: $dd
	ccf                                              ; $7365: $3f
	db $ed                                           ; $7366: $ed
	rst $38                                          ; $7367: $ff
	push hl                                          ; $7368: $e5
	ccf                                              ; $7369: $3f
	rst FarCall                                          ; $736a: $f7
	ccf                                              ; $736b: $3f
	db $f4                                           ; $736c: $f4
	ld e, a                                          ; $736d: $5f
	push af                                          ; $736e: $f5

jr_06f_736f:
	ld e, [hl]                                       ; $736f: $5e
	or a                                             ; $7370: $b7
	sbc h                                            ; $7371: $9c
	db $dd                                           ; $7372: $dd

jr_06f_7373:
	xor $da                                          ; $7373: $ee $da
	rst AddAOntoHL                                          ; $7375: $ef
	xor a                                            ; $7376: $af
	push af                                          ; $7377: $f5
	db $fd                                           ; $7378: $fd
	or [hl]                                          ; $7379: $b6
	rst FarCall                                          ; $737a: $f7
	cp d                                             ; $737b: $ba
	xor [hl]                                         ; $737c: $ae
	ei                                               ; $737d: $fb
	add b                                            ; $737e: $80
	ld e, e                                          ; $737f: $5b
	rst AddAOntoHL                                          ; $7380: $ef
	or [hl]                                          ; $7381: $b6
	rst SubAFromDE                                          ; $7382: $df
	ld a, [hl]                                       ; $7383: $7e
	dec de                                           ; $7384: $1b
	cp $33                                           ; $7385: $fe $33
	xor $f7                                          ; $7387: $ee $f7
	ld a, l                                          ; $7389: $7d
	rst SubAFromBC                                          ; $738a: $e7

jr_06f_738b:
	rst SubAFromDE                                          ; $738b: $df
	ccf                                              ; $738c: $3f
	ld [hl], a                                       ; $738d: $77
	sbc c                                            ; $738e: $99
	cp l                                             ; $738f: $bd
	set 3, e                                         ; $7390: $cb $db
	rst SubAFromBC                                          ; $7392: $e7
	or $ff                                           ; $7393: $f6 $ff
	xor $bf                                          ; $7395: $ee $bf
	ldh a, [c]                                       ; $7397: $f2
	rra                                              ; $7398: $1f
	ld [$f637], a                                    ; $7399: $ea $37 $f6
	ld l, e                                          ; $739c: $6b
	ld l, h                                          ; $739d: $6c
	sub h                                            ; $739e: $94
	db $d3                                           ; $739f: $d3
	sbc h                                            ; $73a0: $9c
	rst SubAFromBC                                          ; $73a1: $e7
	jr c, jr_06f_7373                                ; $73a2: $38 $cf

	ld a, c                                          ; $73a4: $79
	cp a                                             ; $73a5: $bf
	ld sp, hl                                        ; $73a6: $f9
	rst $38                                          ; $73a7: $ff
	ld c, e                                          ; $73a8: $4b
	db $fd                                           ; $73a9: $fd
	ld [hl], a                                       ; $73aa: $77
	cp $7f                                           ; $73ab: $fe $7f
	cp d                                             ; $73ad: $ba
	sbc e                                            ; $73ae: $9b
	ld h, l                                          ; $73af: $65
	rst $38                                          ; $73b0: $ff
	and l                                            ; $73b1: $a5
	ld a, a                                          ; $73b2: $7f
	ld c, a                                          ; $73b3: $4f
	jr nz, jr_06f_734d                               ; $73b4: $20 $97

	ret nc                                           ; $73b6: $d0

	jr nc, jr_06f_738b                               ; $73b7: $30 $d2

	ld sp, $77ab                                     ; $73b9: $31 $ab $77
	cp a                                             ; $73bc: $bf
	ld l, a                                          ; $73bd: $6f
	ld e, a                                          ; $73be: $5f
	jr nz, jr_06f_7410                               ; $73bf: $20 $4f

	ld b, b                                          ; $73c1: $40
	sbc [hl]                                         ; $73c2: $9e
	rst $38                                          ; $73c3: $ff
	ld a, e                                          ; $73c4: $7b
	ld a, $99                                        ; $73c5: $3e $99
	ld [hl], a                                       ; $73c7: $77
	ld a, b                                          ; $73c8: $78
	jp c, $94fc                                      ; $73c9: $da $fc $94

	db $f4                                           ; $73cc: $f4
	inc bc                                           ; $73cd: $03
	ld b, b                                          ; $73ce: $40
	cp a                                             ; $73cf: $bf
	rra                                              ; $73d0: $1f
	sbc b                                            ; $73d1: $98
	sbc b                                            ; $73d2: $98
	rlca                                             ; $73d3: $07
	rst SubAFromHL                                          ; $73d4: $d7
	rrca                                             ; $73d5: $0f
	db $fd                                           ; $73d6: $fd
	dec c                                            ; $73d7: $0d
	cp a                                             ; $73d8: $bf
	ld c, a                                          ; $73d9: $4f
	inc bc                                           ; $73da: $03
	ld b, b                                          ; $73db: $40
	inc sp                                           ; $73dc: $33
	ld b, b                                          ; $73dd: $40
	sub e                                            ; $73de: $93
	rst FarCall                                          ; $73df: $f7
	add hl, de                                       ; $73e0: $19
	ld a, l                                          ; $73e1: $7d
	adc e                                            ; $73e2: $8b
	cp e                                             ; $73e3: $bb
	rst JumpTable                                          ; $73e4: $c7
	or $cf                                           ; $73e5: $f6 $cf
	xor $ff                                          ; $73e7: $ee $ff
	ld [hl], d                                       ; $73e9: $72
	sbc a                                            ; $73ea: $9f
	inc bc                                           ; $73eb: $03
	ld b, b                                          ; $73ec: $40
	ld h, e                                          ; $73ed: $63
	ld b, b                                          ; $73ee: $40
	ld a, a                                          ; $73ef: $7f
	cp $97                                           ; $73f0: $fe $97
	xor h                                            ; $73f2: $ac
	ld [hl], b                                       ; $73f3: $70
	or [hl]                                          ; $73f4: $b6

Jump_06f_73f5:
	ld l, a                                          ; $73f5: $6f
	rst JumpTable                                          ; $73f6: $c7
	ld h, e                                          ; $73f7: $63
	and d                                            ; $73f8: $a2
	jp Jump_06f_402f                                 ; $73f9: $c3 $2f $40


	sbc [hl]                                         ; $73fc: $9e
	ld a, a                                          ; $73fd: $7f
	cp [hl]                                          ; $73fe: $be

Jump_06f_73ff:
	ld a, a                                          ; $73ff: $7f
	cp $dc                                           ; $7400: $fe $dc
	sbc d                                            ; $7402: $9a
	ldh [$bc], a                                     ; $7403: $e0 $bc
	cp b                                             ; $7405: $b8
	ret nc                                           ; $7406: $d0

	ldh [rTAC], a                                    ; $7407: $e0 $07
	ld b, b                                          ; $7409: $40
	sub e                                            ; $740a: $93
	sbc a                                            ; $740b: $9f
	nop                                              ; $740c: $00
	reti                                             ; $740d: $d9


	ld b, $ff                                        ; $740e: $06 $ff

jr_06f_7410:
	rra                                              ; $7410: $1f
	cp d                                             ; $7411: $ba
	ld c, e                                          ; $7412: $4b
	cp a                                             ; $7413: $bf
	rst JumpTable                                          ; $7414: $c7
	xor a                                            ; $7415: $af
	ret nz                                           ; $7416: $c0

	inc bc                                           ; $7417: $03
	ld b, b                                          ; $7418: $40
	dec sp                                           ; $7419: $3b
	ld b, b                                          ; $741a: $40
	sbc c                                            ; $741b: $99
	db $fd                                           ; $741c: $fd
	dec bc                                           ; $741d: $0b
	ei                                               ; $741e: $fb
	rlca                                             ; $741f: $07
	halt                                             ; $7420: $76
	adc a                                            ; $7421: $8f
	inc bc                                           ; $7422: $03
	ld b, b                                          ; $7423: $40
	ld l, e                                          ; $7424: $6b
	ld b, b                                          ; $7425: $40
	sbc e                                            ; $7426: $9b
	reti                                             ; $7427: $d9


	inc sp                                           ; $7428: $33
	sbc d                                            ; $7429: $9a
	ld [hl], e                                       ; $742a: $73
	ld [hl], a                                       ; $742b: $77
	ld b, b                                          ; $742c: $40
	sub a                                            ; $742d: $97
	xor b                                            ; $742e: $a8
	ld [hl], b                                       ; $742f: $70
	cp b                                             ; $7430: $b8
	ld h, b                                          ; $7431: $60
	push bc                                          ; $7432: $c5
	ld l, [hl]                                       ; $7433: $6e
	and e                                            ; $7434: $a3
	rst JumpTable                                          ; $7435: $c7
	ld c, a                                          ; $7436: $4f
	ld b, b                                          ; $7437: $40
	sbc h                                            ; $7438: $9c
	ld a, h                                          ; $7439: $7c
	cp $ba                                           ; $743a: $fe $ba
	ld [hl], e                                       ; $743c: $73
	ld b, b                                          ; $743d: $40
	ld [hl], a                                       ; $743e: $77
	ld a, $9e                                        ; $743f: $3e $9e
	ld a, [hl]                                       ; $7441: $7e
	cp a                                             ; $7442: $bf
	ld [hl], h                                       ; $7443: $74
	ld [hl], b                                       ; $7444: $70
	sbc h                                            ; $7445: $9c
	add b                                            ; $7446: $80
	ldh a, [$f0]                                     ; $7447: $f0 $f0
	inc bc                                           ; $7449: $03
	ld b, b                                          ; $744a: $40
	cp a                                             ; $744b: $bf
	rst SubAFromDE                                          ; $744c: $df
	rst $38                                          ; $744d: $ff

jr_06f_744e:
	sbc h                                            ; $744e: $9c
	ld [$4fbc], sp                                   ; $744f: $08 $bc $4f
	inc bc                                           ; $7452: $03
	ld b, b                                          ; $7453: $40
	ld b, a                                          ; $7454: $47
	ld b, b                                          ; $7455: $40
	sub b                                            ; $7456: $90
	or a                                             ; $7457: $b7
	ld a, l                                          ; $7458: $7d
	rst JumpTable                                          ; $7459: $c7
	cp a                                             ; $745a: $bf
	ld l, a                                          ; $745b: $6f
	rst SubAFromDE                                          ; $745c: $df
	ld sp, $13fd                                     ; $745d: $31 $fd $13
	ei                                               ; $7460: $fb
	rlca                                             ; $7461: $07
	or $0f                                           ; $7462: $f6 $0f
	xor $df                                          ; $7464: $ee $df
	rla                                              ; $7466: $17
	ld b, b                                          ; $7467: $40
	sbc [hl]                                         ; $7468: $9e
	xor d                                            ; $7469: $aa
	cp a                                             ; $746a: $bf
	nop                                              ; $746b: $00
	ld [bc], a                                       ; $746c: $02
	sbc $01                                          ; $746d: $de $01
	rst SubAFromDE                                          ; $746f: $df
	inc b                                            ; $7470: $04
	sbc [hl]                                         ; $7471: $9e
	rlca                                             ; $7472: $07
	ld a, e                                          ; $7473: $7b
	add h                                            ; $7474: $84
	sbc l                                            ; $7475: $9d
	ld [$7b04], sp                                   ; $7476: $08 $04 $7b
	add d                                            ; $7479: $82
	sbc d                                            ; $747a: $9a
	add b                                            ; $747b: $80
	xor h                                            ; $747c: $ac
	jp Jump_06f_7fff                                 ; $747d: $c3 $ff $7f


	ld sp, hl                                        ; $7480: $f9
	ld h, a                                          ; $7481: $67
	ldh [$98], a                                     ; $7482: $e0 $98
	ld c, $04                                        ; $7484: $0e $04
	rlca                                             ; $7486: $07
	rrca                                             ; $7487: $0f
	ld b, $06                                        ; $7488: $06 $06
	ld [$00bf], sp                                   ; $748a: $08 $bf $00
	ld bc, $e033                                     ; $748d: $01 $33 $e0
	sbc c                                            ; $7490: $99
	ld b, $04                                        ; $7491: $06 $04
	rrca                                             ; $7493: $0f
	rrca                                             ; $7494: $0f
	rlca                                             ; $7495: $07
	ld c, $7b                                        ; $7496: $0e $7b
	cp [hl]                                          ; $7498: $be
	inc hl                                           ; $7499: $23
	ldh [$7f], a                                     ; $749a: $e0 $7f
	ret nz                                           ; $749c: $c0

	sbc d                                            ; $749d: $9a
	rrca                                             ; $749e: $0f
	ld c, $0e                                        ; $749f: $0e $0e
	inc c                                            ; $74a1: $0c
	jr jr_06f_74ef                                   ; $74a2: $18 $4b

	ldh [$e5], a                                     ; $74a4: $e0 $e5
	ld bc, $7d82                                     ; $74a6: $01 $82 $7d
	or a                                             ; $74a9: $b7
	scf                                              ; $74aa: $37
	db $fd                                           ; $74ab: $fd
	ld e, a                                          ; $74ac: $5f
	cp c                                             ; $74ad: $b9
	db $d3                                           ; $74ae: $d3
	dec sp                                           ; $74af: $3b
	sub c                                            ; $74b0: $91
	ld a, e                                          ; $74b1: $7b
	ret c                                            ; $74b2: $d8

	jr nc, jr_06f_744e                               ; $74b3: $30 $99

	ld [hl], b                                       ; $74b5: $70
	rst SubAFromHL                                          ; $74b6: $d7
	inc sp                                           ; $74b7: $33
	pop de                                           ; $74b8: $d1
	inc sp                                           ; $74b9: $33
	and e                                            ; $74ba: $a3
	ld [hl], c                                       ; $74bb: $71
	or e                                             ; $74bc: $b3
	ld h, e                                          ; $74bd: $63
	jp nz, $a363                                     ; $74be: $c2 $63 $a3

	jp nz, $83c5                                     ; $74c1: $c2 $c5 $83

	add c                                            ; $74c4: $81
	sbc $c0                                          ; $74c5: $de $c0

jr_06f_74c7:
	sbc [hl]                                         ; $74c7: $9e
	ldh [$7b], a                                     ; $74c8: $e0 $7b
	db $fd                                           ; $74ca: $fd
	add b                                            ; $74cb: $80
	ldh a, [$e0]                                     ; $74cc: $f0 $e0
	and b                                            ; $74ce: $a0
	ldh a, [$b8]                                     ; $74cf: $f0 $b8
	ldh a, [$50]                                     ; $74d1: $f0 $50
	ld a, b                                          ; $74d3: $78
	ld c, h                                          ; $74d4: $4c
	ld a, b                                          ; $74d5: $78
	ld h, $3c                                        ; $74d6: $26 $3c
	inc hl                                           ; $74d8: $23
	ld a, $17                                        ; $74d9: $3e $17
	rra                                              ; $74db: $1f
	dec c                                            ; $74dc: $0d
	dec c                                            ; $74dd: $0d
	inc c                                            ; $74de: $0c
	ld [$181c], sp                                   ; $74df: $08 $1c $18
	or h                                             ; $74e2: $b4
	inc h                                            ; $74e3: $24
	and $c4                                          ; $74e4: $e6 $c4
	or $32                                           ; $74e6: $f6 $32
	ld e, d                                          ; $74e8: $5a
	or $b6                                           ; $74e9: $f6 $b6
	add b                                            ; $74eb: $80
	call c, $9c74                                    ; $74ec: $dc $74 $9c

jr_06f_74ef:
	cp $fc                                           ; $74ef: $fe $fc
	ld l, d                                          ; $74f1: $6a
	sbc [hl]                                         ; $74f2: $9e
	db $fc                                           ; $74f3: $fc
	ld [bc], a                                       ; $74f4: $02
	ld a, [hl]                                       ; $74f5: $7e
	ldh a, [rIE]                                     ; $74f6: $f0 $ff
	ld hl, sp-$61                                    ; $74f8: $f8 $9f
	sbc h                                            ; $74fa: $9c
	inc sp                                           ; $74fb: $33
	inc a                                            ; $74fc: $3c
	sbc $f0                                          ; $74fd: $de $f0

Jump_06f_74ff:
	sub h                                            ; $74ff: $94
	ldh a, [$60]                                     ; $7500: $f0 $60
	jr nz, jr_06f_7544                               ; $7502: $20 $40

	ld b, b                                          ; $7504: $40
	jr nz, jr_06f_74c7                               ; $7505: $20 $c0

	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	sbc c                                            ; $7509: $99
	cp a                                             ; $750a: $bf
	sub c                                            ; $750b: $91
	or h                                             ; $750c: $b4
	cp b                                             ; $750d: $b8
	db $ec                                           ; $750e: $ec
	or b                                             ; $750f: $b0
	xor b                                            ; $7510: $a8
	ldh [$78], a                                     ; $7511: $e0 $78
	ld h, b                                          ; $7513: $60
	inc a                                            ; $7514: $3c
	jr nz, jr_06f_7534                               ; $7515: $20 $1d

	ld de, $0303                                     ; $7517: $11 $03 $03
	db $fd                                           ; $751a: $fd
	adc d                                            ; $751b: $8a
	ld bc, $0700                                     ; $751c: $01 $00 $07
	nop                                              ; $751f: $00
	dec c                                            ; $7520: $0d
	inc bc                                           ; $7521: $03
	dec de                                           ; $7522: $1b
	rlca                                             ; $7523: $07
	ld e, $06                                        ; $7524: $1e $06
	inc d                                            ; $7526: $14
	inc c                                            ; $7527: $0c

jr_06f_7528:
	ld e, a                                          ; $7528: $5f
	rrca                                             ; $7529: $0f
	xor h                                            ; $752a: $ac
	ld c, e                                          ; $752b: $4b
	cp e                                             ; $752c: $bb
	ret                                              ; $752d: $c9


	xor [hl]                                         ; $752e: $ae
	rst JumpTable                                          ; $752f: $c7
	rst JumpTable                                          ; $7530: $c7
	ld a, e                                          ; $7531: $7b
	db $ec                                           ; $7532: $ec
	add b                                            ; $7533: $80

jr_06f_7534:
	ld c, $01                                        ; $7534: $0e $01
	dec e                                            ; $7536: $1d
	inc bc                                           ; $7537: $03
	halt                                             ; $7538: $76
	rrca                                             ; $7539: $0f
	db $dd                                           ; $753a: $dd
	ccf                                              ; $753b: $3f
	db $ed                                           ; $753c: $ed
	rst $38                                          ; $753d: $ff
	push hl                                          ; $753e: $e5
	ccf                                              ; $753f: $3f
	rst FarCall                                          ; $7540: $f7
	ccf                                              ; $7541: $3f
	db $f4                                           ; $7542: $f4
	ld e, a                                          ; $7543: $5f

jr_06f_7544:
	push af                                          ; $7544: $f5
	ld e, [hl]                                       ; $7545: $5e
	or a                                             ; $7546: $b7
	sbc h                                            ; $7547: $9c
	db $dd                                           ; $7548: $dd

jr_06f_7549:
	xor $da                                          ; $7549: $ee $da
	rst AddAOntoHL                                          ; $754b: $ef
	xor a                                            ; $754c: $af
	push af                                          ; $754d: $f5
	db $fd                                           ; $754e: $fd
	or [hl]                                          ; $754f: $b6
	rst FarCall                                          ; $7550: $f7
	cp d                                             ; $7551: $ba
	xor [hl]                                         ; $7552: $ae
	add b                                            ; $7553: $80
	ei                                               ; $7554: $fb
	ld e, e                                          ; $7555: $5b
	rst AddAOntoHL                                          ; $7556: $ef
	or [hl]                                          ; $7557: $b6
	rst SubAFromDE                                          ; $7558: $df
	ld a, [hl]                                       ; $7559: $7e
	dec de                                           ; $755a: $1b
	cp $33                                           ; $755b: $fe $33

jr_06f_755d:
	xor $f7                                          ; $755d: $ee $f7
	push de                                          ; $755f: $d5
	ccf                                              ; $7560: $3f
	rst $38                                          ; $7561: $ff
	adc a                                            ; $7562: $8f
	rst FarCall                                          ; $7563: $f7
	ret                                              ; $7564: $c9


	ld e, l                                          ; $7565: $5d
	ld h, e                                          ; $7566: $63
	db $eb                                           ; $7567: $eb
	rst FarCall                                          ; $7568: $f7
	sub $af                                          ; $7569: $d6 $af
	adc $bf                                          ; $756b: $ce $bf
	ldh a, [c]                                       ; $756d: $f2
	rra                                              ; $756e: $1f
	ld [$f637], a                                    ; $756f: $ea $37 $f6
	ld l, e                                          ; $7572: $6b
	sub e                                            ; $7573: $93
	ld l, h                                          ; $7574: $6c
	db $d3                                           ; $7575: $d3
	sbc h                                            ; $7576: $9c
	rst SubAFromBC                                          ; $7577: $e7
	jr c, jr_06f_7549                                ; $7578: $38 $cf

	ld a, c                                          ; $757a: $79
	cp a                                             ; $757b: $bf
	ld sp, hl                                        ; $757c: $f9
	rst $38                                          ; $757d: $ff

Jump_06f_757e:
	ld c, e                                          ; $757e: $4b
	db $fd                                           ; $757f: $fd
	ld [hl], a                                       ; $7580: $77
	cp $7f                                           ; $7581: $fe $7f
	cp d                                             ; $7583: $ba
	sbc e                                            ; $7584: $9b
	ld h, l                                          ; $7585: $65
	rst $38                                          ; $7586: $ff
	and l                                            ; $7587: $a5
	ld a, a                                          ; $7588: $7f
	ld c, a                                          ; $7589: $4f

jr_06f_758a:
	jr nz, jr_06f_7528                               ; $758a: $20 $9c

	call nc, $d333                                   ; $758c: $d4 $33 $d3
	ld c, e                                          ; $758f: $4b
	jr nz, jr_06f_75e9                               ; $7590: $20 $57

	ld b, b                                          ; $7592: $40
	sbc b                                            ; $7593: $98
	adc [hl]                                         ; $7594: $8e
	ld [hl], b                                       ; $7595: $70
	rst FarCall                                          ; $7596: $f7
	ld hl, sp-$05                                    ; $7597: $f8 $fb
	db $fc                                           ; $7599: $fc
	ccf                                              ; $759a: $3f
	inc bc                                           ; $759b: $03
	ld b, b                                          ; $759c: $40
	ld [hl], a                                       ; $759d: $77
	ld b, b                                          ; $759e: $40
	sbc c                                            ; $759f: $99
	rrca                                             ; $75a0: $0f
	nop                                              ; $75a1: $00
	dec de                                           ; $75a2: $1b
	rlca                                             ; $75a3: $07
	rra                                              ; $75a4: $1f
	rlca                                             ; $75a5: $07
	inc bc                                           ; $75a6: $03
	ld b, b                                          ; $75a7: $40
	rra                                              ; $75a8: $1f
	ld b, b                                          ; $75a9: $40
	sbc d                                            ; $75aa: $9a
	rrca                                             ; $75ab: $0f
	or a                                             ; $75ac: $b7
	ret                                              ; $75ad: $c9


	db $dd                                           ; $75ae: $dd
	db $e3                                           ; $75af: $e3
	inc bc                                           ; $75b0: $03
	ld b, b                                          ; $75b1: $40
	ld d, e                                          ; $75b2: $53
	ld b, b                                          ; $75b3: $40
	sub c                                            ; $75b4: $91
	sbc b                                            ; $75b5: $98
	ld [hl], b                                       ; $75b6: $70
	ret nc                                           ; $75b7: $d0

	jr nc, jr_06f_758a                               ; $75b8: $30 $d0

	jr nc, jr_06f_755d                               ; $75ba: $30 $a1

	ld [hl], b                                       ; $75bc: $70
	or c                                             ; $75bd: $b1
	ld h, e                                          ; $75be: $63
	add $6e                                          ; $75bf: $c6 $6e
	and d                                            ; $75c1: $a2
	jp $403f                                         ; $75c2: $c3 $3f $40


	sbc h                                            ; $75c5: $9c
	ld a, [hl]                                       ; $75c6: $7e
	nop                                              ; $75c7: $00
	ld a, a                                          ; $75c8: $7f
	ld a, e                                          ; $75c9: $7b
	cp $95                                           ; $75ca: $fe $95
	rst $38                                          ; $75cc: $ff
	nop                                              ; $75cd: $00
	sbc $e0                                          ; $75ce: $de $e0
	db $ec                                           ; $75d0: $ec
	ldh a, [$b8]                                     ; $75d1: $f0 $b8
	ld hl, sp+$50                                    ; $75d3: $f8 $50
	ld h, b                                          ; $75d5: $60
	rrca                                             ; $75d6: $0f
	ld b, b                                          ; $75d7: $40
	sbc [hl]                                         ; $75d8: $9e
	rra                                              ; $75d9: $1f
	ld a, e                                          ; $75da: $7b
	cp $97                                           ; $75db: $fe $97
	rla                                              ; $75dd: $17
	rrca                                             ; $75de: $0f
	ld e, e                                          ; $75df: $5b
	dec de                                           ; $75e0: $1b
	cp [hl]                                          ; $75e1: $be
	ld c, a                                          ; $75e2: $4f
	cp c                                             ; $75e3: $b9
	rlc e                                            ; $75e4: $cb $03
	ld b, b                                          ; $75e6: $40
	ld c, e                                          ; $75e7: $4b
	ld b, b                                          ; $75e8: $40

jr_06f_75e9:
	adc a                                            ; $75e9: $8f
	or l                                             ; $75ea: $b5
	ld a, a                                          ; $75eb: $7f
	rst $38                                          ; $75ec: $ff
	rra                                              ; $75ed: $1f
	ei                                               ; $75ee: $fb
	dec c                                            ; $75ef: $0d
	db $fd                                           ; $75f0: $fd
	inc bc                                           ; $75f1: $03
	ei                                               ; $75f2: $fb
	rlca                                             ; $75f3: $07
	or [hl]                                          ; $75f4: $b6
	rst GetHLinHL                                          ; $75f5: $cf
	xor $ff                                          ; $75f6: $ee $ff
	ld [hl], d                                       ; $75f8: $72
	sbc a                                            ; $75f9: $9f
	inc bc                                           ; $75fa: $03
	ld b, b                                          ; $75fb: $40
	ld e, e                                          ; $75fc: $5b
	ld b, b                                          ; $75fd: $40
	sub h                                            ; $75fe: $94
	and b                                            ; $75ff: $a0
	ld [hl], b                                       ; $7600: $70
	or [hl]                                          ; $7601: $b6
	ld h, a                                          ; $7602: $67
	rst JumpTable                                          ; $7603: $c7
	ld h, e                                          ; $7604: $63
	and a                                            ; $7605: $a7
	pop bc                                           ; $7606: $c1
	pop bc                                           ; $7607: $c1
	add b                                            ; $7608: $80
	add b                                            ; $7609: $80
	ld h, e                                          ; $760a: $63
	ld b, b                                          ; $760b: $40
	sbc c                                            ; $760c: $99
	ld a, [$6cfc]                                    ; $760d: $fa $fc $6c
	sbc [hl]                                         ; $7610: $9e
	ld a, [$7706]                                    ; $7611: $fa $06 $77
	ld b, b                                          ; $7614: $40
	sbc [hl]                                         ; $7615: $9e
	ccf                                              ; $7616: $3f
	ld a, e                                          ; $7617: $7b
	cp $98                                           ; $7618: $fe $98
	ld a, $00                                        ; $761a: $3e $00
	ld a, h                                          ; $761c: $7c
	add b                                            ; $761d: $80
	ld hl, sp-$10                                    ; $761e: $f8 $f0
	ldh a, [$fc]                                     ; $7620: $f0 $fc
	dec hl                                           ; $7622: $2b
	ld b, b                                          ; $7623: $40
	sbc [hl]                                         ; $7624: $9e
	ld bc, $406f                                     ; $7625: $01 $6f $40
	sub l                                            ; $7628: $95
	inc de                                           ; $7629: $13
	nop                                              ; $762a: $00
	ld e, c                                          ; $762b: $59
	jr jr_06f_75e9                                   ; $762c: $18 $bb

	ld c, h                                          ; $762e: $4c
	or a                                             ; $762f: $b7
	rst GetHLinHL                                          ; $7630: $cf
	xor a                                            ; $7631: $af
	ret nz                                           ; $7632: $c0

jr_06f_7633:
	inc bc                                           ; $7633: $03
	ld b, b                                          ; $7634: $40
	ld d, e                                          ; $7635: $53
	ld b, b                                          ; $7636: $40
	sbc c                                            ; $7637: $99
	db $ed                                           ; $7638: $ed
	rst FarCall                                          ; $7639: $f7
	or a                                             ; $763a: $b7
	ld a, a                                          ; $763b: $7f
	db $eb                                           ; $763c: $eb
	dec e                                            ; $763d: $1d
	ld [hl], a                                       ; $763e: $77
	ld b, b                                          ; $763f: $40
	sbc e                                            ; $7640: $9b
	or $0f                                           ; $7641: $f6 $0f
	xor $df                                          ; $7643: $ee $df
	rla                                              ; $7645: $17
	ld b, b                                          ; $7646: $40
	db $fd                                           ; $7647: $fd
	adc h                                            ; $7648: $8c
	ld [bc], a                                       ; $7649: $02
	ld bc, $091d                                     ; $764a: $01 $1d $09
	inc c                                            ; $764d: $0c
	ld e, $1f                                        ; $764e: $1e $1f
	rra                                              ; $7650: $1f
	ld e, $1e                                        ; $7651: $1e $1e
	jr @+$0e                                         ; $7653: $18 $0c

	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	ld de, $ac88                                     ; $7657: $11 $88 $ac
	jp Jump_06f_73ff                                 ; $765a: $c3 $ff $73


	add sp, -$07                                     ; $765d: $e8 $f9
	ld [hl], a                                       ; $765f: $77
	ldh [hDisp1_OBP0], a                                     ; $7660: $e0 $93
	inc e                                            ; $7662: $1c
	ld e, $1e                                        ; $7663: $1e $1e
	rra                                              ; $7665: $1f
	inc e                                            ; $7666: $1c
	ld c, $00                                        ; $7667: $0e $00
	nop                                              ; $7669: $00
	db $10                                           ; $766a: $10
	ld [$8001], sp                                   ; $766b: $08 $01 $80
	ccf                                              ; $766e: $3f
	ldh [hDisp1_WY], a                                     ; $766f: $e0 $95
	dec d                                            ; $7671: $15
	add hl, de                                       ; $7672: $19
	inc e                                            ; $7673: $1c
	ld e, $0f                                        ; $7674: $1e $0f
	rra                                              ; $7676: $1f
	ld c, $0c                                        ; $7677: $0e $0c
	db $10                                           ; $7679: $10
	ld [$427b], sp                                   ; $767a: $08 $7b $42
	dec sp                                           ; $767d: $3b
	ldh [$99], a                                     ; $767e: $e0 $99
	add hl, de                                       ; $7680: $19
	ld de, $1c1e                                     ; $7681: $11 $1e $1c
	dec bc                                           ; $7684: $0b
	rrca                                             ; $7685: $0f
	ld [hl], a                                       ; $7686: $77
	jp nz, $e047                                     ; $7687: $c2 $47 $e0

	db $dd                                           ; $768a: $dd
	ld bc, $7d82                                     ; $768b: $01 $82 $7d
	or a                                             ; $768e: $b7
	scf                                              ; $768f: $37
	db $fd                                           ; $7690: $fd
	ld e, a                                          ; $7691: $5f
	cp c                                             ; $7692: $b9
	db $d3                                           ; $7693: $d3
	dec sp                                           ; $7694: $3b
	sub c                                            ; $7695: $91
	ld a, e                                          ; $7696: $7b
	ret c                                            ; $7697: $d8

	jr nc, jr_06f_7633                               ; $7698: $30 $99

	ld [hl], b                                       ; $769a: $70
	sub $31                                          ; $769b: $d6 $31
	db $d3                                           ; $769d: $d3
	scf                                              ; $769e: $37
	and c                                            ; $769f: $a1
	ld [hl], e                                       ; $76a0: $73
	or e                                             ; $76a1: $b3
	ld h, e                                          ; $76a2: $63
	jp nz, $a363                                     ; $76a3: $c2 $63 $a3

	jp nz, $83c5                                     ; $76a6: $c2 $c5 $83

	add c                                            ; $76a9: $81
	sbc $c0                                          ; $76aa: $de $c0

jr_06f_76ac:
	sbc [hl]                                         ; $76ac: $9e
	ldh [$7b], a                                     ; $76ad: $e0 $7b
	db $fd                                           ; $76af: $fd
	add b                                            ; $76b0: $80
	ldh a, [$e0]                                     ; $76b1: $f0 $e0
	and b                                            ; $76b3: $a0
	ldh a, [$b8]                                     ; $76b4: $f0 $b8
	ldh a, [$50]                                     ; $76b6: $f0 $50
	ld a, b                                          ; $76b8: $78
	ld c, h                                          ; $76b9: $4c
	ld a, b                                          ; $76ba: $78
	ld h, $3c                                        ; $76bb: $26 $3c
	inc hl                                           ; $76bd: $23
	ld a, $17                                        ; $76be: $3e $17
	rra                                              ; $76c0: $1f
	dec c                                            ; $76c1: $0d
	dec c                                            ; $76c2: $0d
	inc c                                            ; $76c3: $0c
	ld [$181c], sp                                   ; $76c4: $08 $1c $18
	or h                                             ; $76c7: $b4
	inc h                                            ; $76c8: $24
	and $c4                                          ; $76c9: $e6 $c4
	or $32                                           ; $76cb: $f6 $32
	ld e, d                                          ; $76cd: $5a
	or $b6                                           ; $76ce: $f6 $b6
	add b                                            ; $76d0: $80
	call c, $9c74                                    ; $76d1: $dc $74 $9c
	cp $fc                                           ; $76d4: $fe $fc
	ld l, h                                          ; $76d6: $6c
	sbc [hl]                                         ; $76d7: $9e
	ld a, [$9e06]                                    ; $76d8: $fa $06 $9e
	ld h, b                                          ; $76db: $60
	rst FarCall                                          ; $76dc: $f7
	ld hl, sp-$65                                    ; $76dd: $f8 $9b
	sbc h                                            ; $76df: $9c
	ccf                                              ; $76e0: $3f
	inc a                                            ; $76e1: $3c
	jp c, $94f4                                      ; $76e2: $da $f4 $94

	ldh a, [$60]                                     ; $76e5: $f0 $60
	jr nz, jr_06f_7729                               ; $76e7: $20 $40

	ld b, b                                          ; $76e9: $40
	jr nz, jr_06f_76ac                               ; $76ea: $20 $c0

	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	sbc c                                            ; $76ee: $99
	cp a                                             ; $76ef: $bf
	sub c                                            ; $76f0: $91
	or h                                             ; $76f1: $b4
	cp b                                             ; $76f2: $b8
	db $ec                                           ; $76f3: $ec
	or b                                             ; $76f4: $b0
	xor b                                            ; $76f5: $a8
	ldh [$78], a                                     ; $76f6: $e0 $78
	ld h, b                                          ; $76f8: $60
	inc a                                            ; $76f9: $3c
	jr nz, jr_06f_7719                               ; $76fa: $20 $1d

	ld de, $0303                                     ; $76fc: $11 $03 $03
	db $fd                                           ; $76ff: $fd
	adc d                                            ; $7700: $8a
	ld bc, $0700                                     ; $7701: $01 $00 $07
	nop                                              ; $7704: $00
	inc c                                            ; $7705: $0c
	inc bc                                           ; $7706: $03
	dec de                                           ; $7707: $1b
	rlca                                             ; $7708: $07
	rra                                              ; $7709: $1f
	rlca                                             ; $770a: $07
	inc d                                            ; $770b: $14

jr_06f_770c:
	inc c                                            ; $770c: $0c
	ld e, a                                          ; $770d: $5f
	rrca                                             ; $770e: $0f
	xor h                                            ; $770f: $ac
	ld c, e                                          ; $7710: $4b
	cp e                                             ; $7711: $bb
	ret                                              ; $7712: $c9


	xor [hl]                                         ; $7713: $ae
	rst JumpTable                                          ; $7714: $c7
	rst JumpTable                                          ; $7715: $c7
	ld a, e                                          ; $7716: $7b
	db $ec                                           ; $7717: $ec
	add b                                            ; $7718: $80

jr_06f_7719:
	ld c, $01                                        ; $7719: $0e $01
	dec e                                            ; $771b: $1d
	inc bc                                           ; $771c: $03
	halt                                             ; $771d: $76
	rrca                                             ; $771e: $0f
	db $dd                                           ; $771f: $dd
	ccf                                              ; $7720: $3f
	db $ed                                           ; $7721: $ed
	rst $38                                          ; $7722: $ff
	push hl                                          ; $7723: $e5
	ccf                                              ; $7724: $3f
	rst FarCall                                          ; $7725: $f7
	ccf                                              ; $7726: $3f
	db $f4                                           ; $7727: $f4
	ld e, a                                          ; $7728: $5f

jr_06f_7729:
	push af                                          ; $7729: $f5
	ld e, [hl]                                       ; $772a: $5e
	or a                                             ; $772b: $b7
	sbc h                                            ; $772c: $9c
	db $dd                                           ; $772d: $dd

jr_06f_772e:
	xor $da                                          ; $772e: $ee $da
	rst AddAOntoHL                                          ; $7730: $ef
	xor a                                            ; $7731: $af
	push af                                          ; $7732: $f5
	db $fd                                           ; $7733: $fd
	or [hl]                                          ; $7734: $b6
	rst FarCall                                          ; $7735: $f7
	cp d                                             ; $7736: $ba
	xor [hl]                                         ; $7737: $ae
	add b                                            ; $7738: $80
	ei                                               ; $7739: $fb
	ld e, e                                          ; $773a: $5b
	rst AddAOntoHL                                          ; $773b: $ef
	or [hl]                                          ; $773c: $b6
	rst SubAFromDE                                          ; $773d: $df
	ld a, [hl]                                       ; $773e: $7e
	dec de                                           ; $773f: $1b
	cp $33                                           ; $7740: $fe $33
	xor $f7                                          ; $7742: $ee $f7
	or l                                             ; $7744: $b5
	ld a, a                                          ; $7745: $7f
	ld a, a                                          ; $7746: $7f
	sbc a                                            ; $7747: $9f
	cp e                                             ; $7748: $bb

jr_06f_7749:
	call $c3fd                                       ; $7749: $cd $fd $c3
	db $db                                           ; $774c: $db
	rst SubAFromBC                                          ; $774d: $e7
	or $af                                           ; $774e: $f6 $af
	adc $bf                                          ; $7750: $ce $bf
	ldh a, [c]                                       ; $7752: $f2
	rra                                              ; $7753: $1f
	ld [$f637], a                                    ; $7754: $ea $37 $f6
	ld l, e                                          ; $7757: $6b
	sub e                                            ; $7758: $93
	ld l, h                                          ; $7759: $6c
	db $d3                                           ; $775a: $d3
	sbc h                                            ; $775b: $9c
	rst SubAFromBC                                          ; $775c: $e7
	jr c, jr_06f_772e                                ; $775d: $38 $cf

	ld a, c                                          ; $775f: $79
	cp a                                             ; $7760: $bf
	ld sp, hl                                        ; $7761: $f9
	rst $38                                          ; $7762: $ff
	ld c, e                                          ; $7763: $4b
	db $fd                                           ; $7764: $fd
	ld [hl], a                                       ; $7765: $77
	cp $7f                                           ; $7766: $fe $7f
	cp d                                             ; $7768: $ba
	sbc e                                            ; $7769: $9b
	ld h, l                                          ; $776a: $65
	rst $38                                          ; $776b: $ff
	and l                                            ; $776c: $a5
	ld a, a                                          ; $776d: $7f
	ld b, a                                          ; $776e: $47
	jr nz, jr_06f_770c                               ; $776f: $20 $9b

	push de                                          ; $7771: $d5
	inc sp                                           ; $7772: $33
	and a                                            ; $7773: $a7
	ld [hl], a                                       ; $7774: $77

jr_06f_7775:
	ld d, a                                          ; $7775: $57
	jr nz, jr_06f_77cf                               ; $7776: $20 $57

	ld b, b                                          ; $7778: $40
	sub l                                            ; $7779: $95
	cp $00                                           ; $777a: $fe $00
	rra                                              ; $777c: $1f
	ldh [$f7], a                                     ; $777d: $e0 $f7
	ld hl, sp+$3b                                    ; $777f: $f8 $3b
	inc a                                            ; $7781: $3c
	sbc $fc                                          ; $7782: $de $fc
	inc bc                                           ; $7784: $03
	ld b, b                                          ; $7785: $40
	sbc d                                            ; $7786: $9a
	nop                                              ; $7787: $00
	rrca                                             ; $7788: $0f
	nop                                              ; $7789: $00
	inc e                                            ; $778a: $1c
	inc bc                                           ; $778b: $03
	inc bc                                           ; $778c: $03
	ld b, b                                          ; $778d: $40
	dec de                                           ; $778e: $1b
	ld b, b                                          ; $778f: $40
	sub l                                            ; $7790: $95
	rst $38                                          ; $7791: $ff
	rra                                              ; $7792: $1f
	ld a, e                                          ; $7793: $7b
	adc l                                            ; $7794: $8d
	cp l                                             ; $7795: $bd
	jp $c7fb                                         ; $7796: $c3 $fb $c7


	or $ef                                           ; $7799: $f6 $ef

Jump_06f_779b:
	inc bc                                           ; $779b: $03
	ld b, b                                          ; $779c: $40
	ld h, e                                          ; $779d: $63
	ld b, b                                          ; $779e: $40
	sub c                                            ; $779f: $91
	sbc b                                            ; $77a0: $98
	ld [hl], b                                       ; $77a1: $70
	ret nc                                           ; $77a2: $d0

	jr nc, jr_06f_7775                               ; $77a3: $30 $d0

	jr nc, jr_06f_7749                               ; $77a5: $30 $a2

	ld [hl], c                                       ; $77a7: $71
	cp a                                             ; $77a8: $bf
	ld l, a                                          ; $77a9: $6f
	jp nz, $a266                                     ; $77aa: $c2 $66 $a2

	jp $403f                                         ; $77ad: $c3 $3f $40


	adc a                                            ; $77b0: $8f
	ld a, [hl]                                       ; $77b1: $7e
	nop                                              ; $77b2: $00
	ld a, [hl]                                       ; $77b3: $7e
	nop                                              ; $77b4: $00
	ld a, a                                          ; $77b5: $7f
	nop                                              ; $77b6: $00
	ccf                                              ; $77b7: $3f
	ret nz                                           ; $77b8: $c0

	sbc $e0                                          ; $77b9: $de $e0
	db $ec                                           ; $77bb: $ec
	ldh a, [$b8]                                     ; $77bc: $f0 $b8
	ld hl, sp+$50                                    ; $77be: $f8 $50
	ld h, b                                          ; $77c0: $60
	rrca                                             ; $77c1: $0f
	ld b, b                                          ; $77c2: $40
	sbc [hl]                                         ; $77c3: $9e
	rra                                              ; $77c4: $1f
	ld a, e                                          ; $77c5: $7b
	cp $97                                           ; $77c6: $fe $97
	rla                                              ; $77c8: $17
	rrca                                             ; $77c9: $0f
	ld e, e                                          ; $77ca: $5b
	dec de                                           ; $77cb: $1b
	cp [hl]                                          ; $77cc: $be

jr_06f_77cd:
	ld c, a                                          ; $77cd: $4f
	cp c                                             ; $77ce: $b9

jr_06f_77cf:
	rlc e                                            ; $77cf: $cb $03
	ld b, b                                          ; $77d1: $40
	dec sp                                           ; $77d2: $3b
	ld b, b                                          ; $77d3: $40
	sub e                                            ; $77d4: $93
	ei                                               ; $77d5: $fb
	dec c                                            ; $77d6: $0d
	db $fd                                           ; $77d7: $fd
	inc bc                                           ; $77d8: $03
	ei                                               ; $77d9: $fb
	rlca                                             ; $77da: $07
	or [hl]                                          ; $77db: $b6
	rst GetHLinHL                                          ; $77dc: $cf
	xor $ff                                          ; $77dd: $ee $ff
	ld [hl], d                                       ; $77df: $72
	sbc a                                            ; $77e0: $9f
	inc bc                                           ; $77e1: $03
	ld b, b                                          ; $77e2: $40
	ld e, e                                          ; $77e3: $5b
	ld b, b                                          ; $77e4: $40
	sub h                                            ; $77e5: $94
	and b                                            ; $77e6: $a0
	ld [hl], b                                       ; $77e7: $70
	or [hl]                                          ; $77e8: $b6
	ld l, [hl]                                       ; $77e9: $6e
	jp $a567                                         ; $77ea: $c3 $67 $a5


	jp $80c1                                         ; $77ed: $c3 $c1 $80


	add b                                            ; $77f0: $80
	ld e, e                                          ; $77f1: $5b
	ld b, b                                          ; $77f2: $40
	sub [hl]                                         ; $77f3: $96
	ld e, [hl]                                       ; $77f4: $5e
	cp h                                             ; $77f5: $bc
	db $f4                                           ; $77f6: $f4
	ld c, $7e                                        ; $77f7: $0e $7e
	ld [bc], a                                       ; $77f9: $02
	ld a, [hl]                                       ; $77fa: $7e
	nop                                              ; $77fb: $00
	ld a, $73                                        ; $77fc: $3e $73
	cp $9a                                           ; $77fe: $fe $9a
	ld a, h                                          ; $7800: $7c
	add b                                            ; $7801: $80
	ld hl, sp-$10                                    ; $7802: $f8 $f0
	ldh a, [$fc]                                     ; $7804: $f0 $fc
	dec hl                                           ; $7806: $2b
	ld b, b                                          ; $7807: $40
	sbc [hl]                                         ; $7808: $9e
	ld bc, $406f                                     ; $7809: $01 $6f $40
	sub l                                            ; $780c: $95
	inc de                                           ; $780d: $13
	nop                                              ; $780e: $00
	ld e, c                                          ; $780f: $59

jr_06f_7810:
	jr jr_06f_77cd                                   ; $7810: $18 $bb

	ld c, h                                          ; $7812: $4c
	or a                                             ; $7813: $b7
	rst GetHLinHL                                          ; $7814: $cf
	xor a                                            ; $7815: $af
	ret nz                                           ; $7816: $c0

	inc bc                                           ; $7817: $03
	ld b, b                                          ; $7818: $40
	ld e, e                                          ; $7819: $5b
	ld b, b                                          ; $781a: $40
	sub a                                            ; $781b: $97
	cp $27                                           ; $781c: $fe $27
	db $ed                                           ; $781e: $ed
	rst FarCall                                          ; $781f: $f7
	or a                                             ; $7820: $b7
	ld a, a                                          ; $7821: $7f
	db $eb                                           ; $7822: $eb
	dec e                                            ; $7823: $1d
	ld [hl], a                                       ; $7824: $77
	ld b, b                                          ; $7825: $40
	sbc e                                            ; $7826: $9b
	or $0f                                           ; $7827: $f6 $0f
	xor $df                                          ; $7829: $ee $df
	rla                                              ; $782b: $17
	ld b, b                                          ; $782c: $40
	db $fd                                           ; $782d: $fd
	sub e                                            ; $782e: $93
	ld [bc], a                                       ; $782f: $02
	ld bc, $0109                                     ; $7830: $01 $09 $01
	inc c                                            ; $7833: $0c
	ld [$0703], sp                                   ; $7834: $08 $03 $07
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	ld [$7b04], sp                                   ; $7839: $08 $04 $7b
	add d                                            ; $783c: $82
	sbc e                                            ; $783d: $9b
	add b                                            ; $783e: $80
	xor h                                            ; $783f: $ac
	jp Jump_06f_73ff                                 ; $7840: $c3 $ff $73


	add sp, -$07                                     ; $7843: $e8 $f9
	ld [hl], a                                       ; $7845: $77
	ldh [$9c], a                                     ; $7846: $e0 $9c
	ld c, $0c                                        ; $7848: $0e $0c
	dec bc                                           ; $784a: $0b
	inc de                                           ; $784b: $13
	ldh [$99], a                                     ; $784c: $e0 $99
	ld e, $0c                                        ; $784e: $1e $0c
	rra                                              ; $7850: $1f
	rrca                                             ; $7851: $0f
	inc b                                            ; $7852: $04
	ld c, $77                                        ; $7853: $0e $77
	sbc $2f                                          ; $7855: $de $2f
	ldh [$df], a                                     ; $7857: $e0 $df
	inc c                                            ; $7859: $0c
	sub l                                            ; $785a: $95
	rrca                                             ; $785b: $0f
	rra                                              ; $785c: $1f
	inc e                                            ; $785d: $1c
	ld e, $08                                        ; $785e: $1e $08
	inc e                                            ; $7860: $1c
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	ld de, $5788                                     ; $7863: $11 $88 $57
	ldh [$e9], a                                     ; $7866: $e0 $e9
	ld bc, $7d82                                     ; $7868: $01 $82 $7d
	or a                                             ; $786b: $b7
	scf                                              ; $786c: $37
	db $fd                                           ; $786d: $fd
	ld e, a                                          ; $786e: $5f
	cp c                                             ; $786f: $b9
	db $d3                                           ; $7870: $d3
	dec sp                                           ; $7871: $3b
	sub c                                            ; $7872: $91
	ld a, e                                          ; $7873: $7b
	ret c                                            ; $7874: $d8

	jr nc, jr_06f_7810                               ; $7875: $30 $99

	ld [hl], b                                       ; $7877: $70
	sub $31                                          ; $7878: $d6 $31
	db $d3                                           ; $787a: $d3
	scf                                              ; $787b: $37
	and c                                            ; $787c: $a1
	ld [hl], e                                       ; $787d: $73
	or e                                             ; $787e: $b3
	ld h, e                                          ; $787f: $63
	jp nz, $a363                                     ; $7880: $c2 $63 $a3

	jp nz, $83c5                                     ; $7883: $c2 $c5 $83

	add c                                            ; $7886: $81
	sbc $c0                                          ; $7887: $de $c0

jr_06f_7889:
	sbc [hl]                                         ; $7889: $9e
	ldh [$7b], a                                     ; $788a: $e0 $7b
	db $fd                                           ; $788c: $fd
	add b                                            ; $788d: $80
	ldh a, [$e0]                                     ; $788e: $f0 $e0
	and b                                            ; $7890: $a0
	ldh a, [$b8]                                     ; $7891: $f0 $b8
	ldh a, [$50]                                     ; $7893: $f0 $50
	ld a, b                                          ; $7895: $78
	ld c, h                                          ; $7896: $4c
	ld a, b                                          ; $7897: $78
	ld h, $3c                                        ; $7898: $26 $3c
	inc hl                                           ; $789a: $23
	ld a, $17                                        ; $789b: $3e $17
	rra                                              ; $789d: $1f
	dec c                                            ; $789e: $0d
	dec c                                            ; $789f: $0d
	inc c                                            ; $78a0: $0c
	ld [$181c], sp                                   ; $78a1: $08 $1c $18
	or h                                             ; $78a4: $b4
	inc h                                            ; $78a5: $24
	and $c4                                          ; $78a6: $e6 $c4
	or $32                                           ; $78a8: $f6 $32
	ld e, d                                          ; $78aa: $5a
	or $b6                                           ; $78ab: $f6 $b6
	add b                                            ; $78ad: $80
	call c, $9c74                                    ; $78ae: $dc $74 $9c
	xor $fc                                          ; $78b1: $ee $fc
	ld e, [hl]                                       ; $78b3: $5e
	cp [hl]                                          ; $78b4: $be
	ld hl, sp+$06                                    ; $78b5: $f8 $06
	cp $00                                           ; $78b7: $fe $00
	rst FarCall                                          ; $78b9: $f7
	ld hl, sp-$65                                    ; $78ba: $f8 $9b
	sbc h                                            ; $78bc: $9c
	ccf                                              ; $78bd: $3f
	inc a                                            ; $78be: $3c
	jp c, $94f4                                      ; $78bf: $da $f4 $94

	ldh a, [$60]                                     ; $78c2: $f0 $60
	jr nz, jr_06f_7906                               ; $78c4: $20 $40

	ld b, b                                          ; $78c6: $40
	jr nz, jr_06f_7889                               ; $78c7: $20 $c0

	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	sbc c                                            ; $78cb: $99
	cp a                                             ; $78cc: $bf
	sub c                                            ; $78cd: $91
	or h                                             ; $78ce: $b4
	cp b                                             ; $78cf: $b8
	db $ec                                           ; $78d0: $ec
	or b                                             ; $78d1: $b0
	xor b                                            ; $78d2: $a8
	ldh [$78], a                                     ; $78d3: $e0 $78
	ld h, b                                          ; $78d5: $60
	inc a                                            ; $78d6: $3c
	jr nz, jr_06f_78f6                               ; $78d7: $20 $1d

	ld de, $0303                                     ; $78d9: $11 $03 $03
	db $fc                                           ; $78dc: $fc
	adc d                                            ; $78dd: $8a
	ld bc, $0007                                     ; $78de: $01 $07 $00
	ld c, $01                                        ; $78e1: $0e $01
	dec de                                           ; $78e3: $1b
	rlca                                             ; $78e4: $07
	rra                                              ; $78e5: $1f
	rlca                                             ; $78e6: $07

jr_06f_78e7:
	inc d                                            ; $78e7: $14
	inc c                                            ; $78e8: $0c
	ld e, a                                          ; $78e9: $5f
	rrca                                             ; $78ea: $0f
	xor h                                            ; $78eb: $ac
	ld c, e                                          ; $78ec: $4b
	cp e                                             ; $78ed: $bb
	ret                                              ; $78ee: $c9


	xor [hl]                                         ; $78ef: $ae
	rst JumpTable                                          ; $78f0: $c7
	rst JumpTable                                          ; $78f1: $c7
	nop                                              ; $78f2: $00
	ld [hl], a                                       ; $78f3: $77
	db $ec                                           ; $78f4: $ec
	add b                                            ; $78f5: $80

jr_06f_78f6:
	dec e                                            ; $78f6: $1d
	inc bc                                           ; $78f7: $03
	halt                                             ; $78f8: $76
	rrca                                             ; $78f9: $0f
	db $dd                                           ; $78fa: $dd
	ccf                                              ; $78fb: $3f
	db $ed                                           ; $78fc: $ed
	rst $38                                          ; $78fd: $ff
	push hl                                          ; $78fe: $e5
	ccf                                              ; $78ff: $3f
	rst FarCall                                          ; $7900: $f7
	ccf                                              ; $7901: $3f
	db $f4                                           ; $7902: $f4
	ld e, a                                          ; $7903: $5f
	push af                                          ; $7904: $f5
	ld e, [hl]                                       ; $7905: $5e

jr_06f_7906:
	or a                                             ; $7906: $b7
	sbc h                                            ; $7907: $9c
	db $dd                                           ; $7908: $dd

jr_06f_7909:
	xor $da                                          ; $7909: $ee $da
	rst AddAOntoHL                                          ; $790b: $ef
	xor a                                            ; $790c: $af
	push af                                          ; $790d: $f5
	db $fd                                           ; $790e: $fd
	or [hl]                                          ; $790f: $b6
	rst FarCall                                          ; $7910: $f7
	cp d                                             ; $7911: $ba
	xor [hl]                                         ; $7912: $ae
	ei                                               ; $7913: $fb
	ld e, e                                          ; $7914: $5b
	add b                                            ; $7915: $80
	rst AddAOntoHL                                          ; $7916: $ef
	or [hl]                                          ; $7917: $b6
	rst SubAFromDE                                          ; $7918: $df
	ld a, [hl]                                       ; $7919: $7e
	dec de                                           ; $791a: $1b
	cp $33                                           ; $791b: $fe $33
	sbc $e7                                          ; $791d: $de $e7
	push hl                                          ; $791f: $e5
	ld a, a                                          ; $7920: $7f
	ld a, a                                          ; $7921: $7f
	sbc a                                            ; $7922: $9f
	cp e                                             ; $7923: $bb
	call $c3fd                                       ; $7924: $cd $fd $c3
	db $eb                                           ; $7927: $eb
	rst FarCall                                          ; $7928: $f7
	or $af                                           ; $7929: $f6 $af
	adc $bf                                          ; $792b: $ce $bf
	ldh a, [c]                                       ; $792d: $f2
	rra                                              ; $792e: $1f
	ld [$f637], a                                    ; $792f: $ea $37 $f6
	ld l, e                                          ; $7932: $6b
	ld l, h                                          ; $7933: $6c
	db $d3                                           ; $7934: $d3
	sub l                                            ; $7935: $95
	sbc h                                            ; $7936: $9c
	rst SubAFromBC                                          ; $7937: $e7
	jr c, jr_06f_7909                                ; $7938: $38 $cf

	ld a, c                                          ; $793a: $79
	cp a                                             ; $793b: $bf
	ld sp, hl                                        ; $793c: $f9
	rst $38                                          ; $793d: $ff
	ld c, e                                          ; $793e: $4b
	db $fd                                           ; $793f: $fd
	ld [hl], a                                       ; $7940: $77
	cp $7f                                           ; $7941: $fe $7f
	cp d                                             ; $7943: $ba
	sbc e                                            ; $7944: $9b
	ld h, l                                          ; $7945: $65
	rst $38                                          ; $7946: $ff
	and l                                            ; $7947: $a5
	ld a, a                                          ; $7948: $7f
	ld b, a                                          ; $7949: $47
	jr nz, jr_06f_78e7                               ; $794a: $20 $9b

	push de                                          ; $794c: $d5
	inc sp                                           ; $794d: $33
	and a                                            ; $794e: $a7
	ld [hl], a                                       ; $794f: $77
	ld d, a                                          ; $7950: $57
	jr nz, jr_06f_79c2                               ; $7951: $20 $6f

	ld b, b                                          ; $7953: $40
	sbc d                                            ; $7954: $9a
	cp $fc                                           ; $7955: $fe $fc
	ld l, h                                          ; $7957: $6c
	sbc [hl]                                         ; $7958: $9e
	ld a, [$407b]                                    ; $7959: $fa $7b $40
	sub a                                            ; $795c: $97

jr_06f_795d:
	rra                                              ; $795d: $1f
	ldh [$f7], a                                     ; $795e: $e0 $f7
	ld hl, sp+$3b                                    ; $7960: $f8 $3b
	inc a                                            ; $7962: $3c
	sbc $fc                                          ; $7963: $de $fc
	rrca                                             ; $7965: $0f
	ld b, b                                          ; $7966: $40
	sbc [hl]                                         ; $7967: $9e
	ld bc, $547b                                     ; $7968: $01 $7b $54
	sbc e                                            ; $796b: $9b
	rrca                                             ; $796c: $0f
	nop                                              ; $796d: $00
	inc e                                            ; $796e: $1c
	inc bc                                           ; $796f: $03
	inc bc                                           ; $7970: $03
	ld b, b                                          ; $7971: $40
	dec hl                                           ; $7972: $2b
	ld b, b                                          ; $7973: $40
	sub c                                            ; $7974: $91
	xor $f7                                          ; $7975: $ee $f7
	or l                                             ; $7977: $b5
	ld a, a                                          ; $7978: $7f
	rst $38                                          ; $7979: $ff
	rra                                              ; $797a: $1f
	ld a, e                                          ; $797b: $7b
	adc l                                            ; $797c: $8d
	cp l                                             ; $797d: $bd
	jp $c7fb                                         ; $797e: $c3 $fb $c7


	or $ef                                           ; $7981: $f6 $ef
	inc bc                                           ; $7983: $03
	ld b, b                                          ; $7984: $40
	ld h, e                                          ; $7985: $63
	ld b, b                                          ; $7986: $40
	sub c                                            ; $7987: $91
	sbc b                                            ; $7988: $98
	ld [hl], b                                       ; $7989: $70
	ret nc                                           ; $798a: $d0

	jr nc, jr_06f_795d                               ; $798b: $30 $d0

	jr nc, @-$5c                                     ; $798d: $30 $a2

	ld [hl], c                                       ; $798f: $71
	cp a                                             ; $7990: $bf
	ld l, a                                          ; $7991: $6f
	jp nz, $a266                                     ; $7992: $c2 $66 $a2

	jp $403f                                         ; $7995: $c3 $3f $40


	adc a                                            ; $7998: $8f
	ld a, [hl]                                       ; $7999: $7e
	nop                                              ; $799a: $00
	ld a, [hl]                                       ; $799b: $7e
	nop                                              ; $799c: $00
	ld a, a                                          ; $799d: $7f
	nop                                              ; $799e: $00
	ccf                                              ; $799f: $3f
	ret nz                                           ; $79a0: $c0

	sbc $e0                                          ; $79a1: $de $e0
	db $ec                                           ; $79a3: $ec
	ldh a, [$b8]                                     ; $79a4: $f0 $b8
	ld hl, sp+$50                                    ; $79a6: $f8 $50
	ld h, b                                          ; $79a8: $60
	rrca                                             ; $79a9: $0f
	ld b, b                                          ; $79aa: $40
	sbc [hl]                                         ; $79ab: $9e
	rra                                              ; $79ac: $1f
	ld a, e                                          ; $79ad: $7b
	cp $97                                           ; $79ae: $fe $97
	rla                                              ; $79b0: $17
	rrca                                             ; $79b1: $0f
	ld e, e                                          ; $79b2: $5b
	dec de                                           ; $79b3: $1b
	cp [hl]                                          ; $79b4: $be
	ld c, a                                          ; $79b5: $4f
	cp c                                             ; $79b6: $b9

jr_06f_79b7:
	rlc e                                            ; $79b7: $cb $03
	ld b, b                                          ; $79b9: $40
	dec sp                                           ; $79ba: $3b
	ld b, b                                          ; $79bb: $40
	sub e                                            ; $79bc: $93
	ei                                               ; $79bd: $fb
	dec c                                            ; $79be: $0d
	db $fd                                           ; $79bf: $fd
	inc bc                                           ; $79c0: $03
	ei                                               ; $79c1: $fb

jr_06f_79c2:
	rlca                                             ; $79c2: $07
	or [hl]                                          ; $79c3: $b6
	rst GetHLinHL                                          ; $79c4: $cf
	xor $ff                                          ; $79c5: $ee $ff
	ld [hl], d                                       ; $79c7: $72
	sbc a                                            ; $79c8: $9f
	inc bc                                           ; $79c9: $03
	ld b, b                                          ; $79ca: $40
	ld e, e                                          ; $79cb: $5b
	ld b, b                                          ; $79cc: $40
	sub h                                            ; $79cd: $94
	and b                                            ; $79ce: $a0
	ld [hl], b                                       ; $79cf: $70
	or [hl]                                          ; $79d0: $b6
	ld h, [hl]                                       ; $79d1: $66
	rst JumpTable                                          ; $79d2: $c7
	ld h, e                                          ; $79d3: $63
	and l                                            ; $79d4: $a5
	jp $80c1                                         ; $79d5: $c3 $c1 $80


	add b                                            ; $79d8: $80
	ld e, e                                          ; $79d9: $5b
	ld b, b                                          ; $79da: $40
	sub [hl]                                         ; $79db: $96
	ld e, [hl]                                       ; $79dc: $5e
	cp h                                             ; $79dd: $bc
	db $f4                                           ; $79de: $f4
	ld c, $7e                                        ; $79df: $0e $7e
	ld [bc], a                                       ; $79e1: $02
	ld a, [hl]                                       ; $79e2: $7e
	nop                                              ; $79e3: $00
	ld a, $7b                                        ; $79e4: $3e $7b
	cp $7e                                           ; $79e6: $fe $7e
	ld a, b                                          ; $79e8: $78
	sbc d                                            ; $79e9: $9a
	ld a, h                                          ; $79ea: $7c
	add b                                            ; $79eb: $80
	ld hl, sp-$10                                    ; $79ec: $f8 $f0
	ldh a, [$fc]                                     ; $79ee: $f0 $fc
	dec hl                                           ; $79f0: $2b
	ld b, b                                          ; $79f1: $40
	sbc [hl]                                         ; $79f2: $9e
	ld bc, $406f                                     ; $79f3: $01 $6f $40
	sub l                                            ; $79f6: $95
	inc de                                           ; $79f7: $13
	nop                                              ; $79f8: $00

jr_06f_79f9:
	ld e, c                                          ; $79f9: $59
	jr jr_06f_79b7                                   ; $79fa: $18 $bb

	ld c, h                                          ; $79fc: $4c
	or a                                             ; $79fd: $b7
	rst GetHLinHL                                          ; $79fe: $cf
	xor a                                            ; $79ff: $af
	ret nz                                           ; $7a00: $c0

	inc bc                                           ; $7a01: $03
	ld b, b                                          ; $7a02: $40
	ld e, e                                          ; $7a03: $5b
	ld b, b                                          ; $7a04: $40
	sub a                                            ; $7a05: $97
	cp $27                                           ; $7a06: $fe $27
	db $ed                                           ; $7a08: $ed
	rst FarCall                                          ; $7a09: $f7
	or a                                             ; $7a0a: $b7
	ld a, a                                          ; $7a0b: $7f
	db $eb                                           ; $7a0c: $eb
	dec e                                            ; $7a0d: $1d
	ld [hl], a                                       ; $7a0e: $77
	ld b, b                                          ; $7a0f: $40
	sbc e                                            ; $7a10: $9b
	or $0f                                           ; $7a11: $f6 $0f
	xor $df                                          ; $7a13: $ee $df
	rla                                              ; $7a15: $17
	ld b, b                                          ; $7a16: $40
	db $fd                                           ; $7a17: $fd
	sbc [hl]                                         ; $7a18: $9e
	ld [bc], a                                       ; $7a19: $02
	sbc $01                                          ; $7a1a: $de $01
	rst SubAFromDE                                          ; $7a1c: $df
	inc c                                            ; $7a1d: $0c
	sbc [hl]                                         ; $7a1e: $9e
	dec b                                            ; $7a1f: $05
	ld a, e                                          ; $7a20: $7b
	add h                                            ; $7a21: $84
	sbc l                                            ; $7a22: $9d
	ld [$7b04], sp                                   ; $7a23: $08 $04 $7b
	add d                                            ; $7a26: $82
	sbc e                                            ; $7a27: $9b
	add b                                            ; $7a28: $80
	xor h                                            ; $7a29: $ac
	jp Jump_06f_73ff                                 ; $7a2a: $c3 $ff $73


	add sp, -$07                                     ; $7a2d: $e8 $f9
	ld [hl], a                                       ; $7a2f: $77
	ldh [$9b], a                                     ; $7a30: $e0 $9b
	ld c, $0c                                        ; $7a32: $0e $0c
	rrca                                             ; $7a34: $0f
	rlca                                             ; $7a35: $07
	dec bc                                           ; $7a36: $0b
	ldh [$99], a                                     ; $7a37: $e0 $99
	rra                                              ; $7a39: $1f
	ld b, $0e                                        ; $7a3a: $06 $0e
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	jr @+$2d                                         ; $7a3e: $18 $2b

	ldh [hDisp1_OBP0], a                                     ; $7a40: $e0 $93
	ld [bc], a                                       ; $7a42: $02
	inc c                                            ; $7a43: $0c
	ld c, $1f                                        ; $7a44: $0e $1f
	ld e, $1e                                        ; $7a46: $1e $1e
	inc e                                            ; $7a48: $1c
	inc c                                            ; $7a49: $0c
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	ld de, $5788                                     ; $7a4c: $11 $88 $57
	ldh [$cf], a                                     ; $7a4f: $e0 $cf
	ld bc, $7d82                                     ; $7a51: $01 $82 $7d
	or a                                             ; $7a54: $b7
	scf                                              ; $7a55: $37
	db $fd                                           ; $7a56: $fd
	ld e, a                                          ; $7a57: $5f
	cp c                                             ; $7a58: $b9
	db $d3                                           ; $7a59: $d3
	dec sp                                           ; $7a5a: $3b
	sub c                                            ; $7a5b: $91
	ld a, e                                          ; $7a5c: $7b
	ret c                                            ; $7a5d: $d8

	jr nc, jr_06f_79f9                               ; $7a5e: $30 $99

	ld [hl], b                                       ; $7a60: $70
	sub $31                                          ; $7a61: $d6 $31
	db $d3                                           ; $7a63: $d3
	scf                                              ; $7a64: $37
	and c                                            ; $7a65: $a1
	ld [hl], e                                       ; $7a66: $73
	or e                                             ; $7a67: $b3
	ld h, e                                          ; $7a68: $63
	jp nz, $a363                                     ; $7a69: $c2 $63 $a3

	jp nz, $83cd                                     ; $7a6c: $c2 $cd $83

	add c                                            ; $7a6f: $81
	sbc $c0                                          ; $7a70: $de $c0

jr_06f_7a72:
	sbc [hl]                                         ; $7a72: $9e
	ldh [$7b], a                                     ; $7a73: $e0 $7b
	db $fd                                           ; $7a75: $fd
	add b                                            ; $7a76: $80
	ldh a, [$e0]                                     ; $7a77: $f0 $e0
	and b                                            ; $7a79: $a0
	ldh a, [$b8]                                     ; $7a7a: $f0 $b8
	ldh a, [$50]                                     ; $7a7c: $f0 $50
	ld a, b                                          ; $7a7e: $78
	ld c, h                                          ; $7a7f: $4c
	ld a, b                                          ; $7a80: $78
	ld h, $3c                                        ; $7a81: $26 $3c

jr_06f_7a83:
	inc hl                                           ; $7a83: $23
	ld a, $17                                        ; $7a84: $3e $17
	rra                                              ; $7a86: $1f
	dec c                                            ; $7a87: $0d
	dec c                                            ; $7a88: $0d
	inc c                                            ; $7a89: $0c
	ld [$181c], sp                                   ; $7a8a: $08 $1c $18
	or h                                             ; $7a8d: $b4
	inc h                                            ; $7a8e: $24
	and $c4                                          ; $7a8f: $e6 $c4
	or $32                                           ; $7a91: $f6 $32
	ld e, d                                          ; $7a93: $5a
	or $b6                                           ; $7a94: $f6 $b6
	add b                                            ; $7a96: $80
	call c, $9c74                                    ; $7a97: $dc $74 $9c
	cp $c8                                           ; $7a9a: $fe $c8
	ld a, $f8                                        ; $7a9c: $3e $f8
	xor $18                                          ; $7a9e: $ee $18
	or $0c                                           ; $7aa0: $f6 $0c
	db $db                                           ; $7aa2: $db
	and $fb                                          ; $7aa3: $e6 $fb
	db $f4                                           ; $7aa5: $f4
	ccf                                              ; $7aa6: $3f
	jr c, jr_06f_7a83                                ; $7aa7: $38 $da

	db $fc                                           ; $7aa9: $fc
	sub b                                            ; $7aaa: $90
	db $f4                                           ; $7aab: $f4
	ld h, b                                          ; $7aac: $60
	jr nz, jr_06f_7aef                               ; $7aad: $20 $40

	ld b, b                                          ; $7aaf: $40
	jr nz, jr_06f_7a72                               ; $7ab0: $20 $c0

	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	sbc c                                            ; $7ab4: $99
	cp a                                             ; $7ab5: $bf
	sub c                                            ; $7ab6: $91
	or h                                             ; $7ab7: $b4
	cp b                                             ; $7ab8: $b8
	db $ec                                           ; $7ab9: $ec
	or b                                             ; $7aba: $b0
	xor b                                            ; $7abb: $a8
	ldh [$78], a                                     ; $7abc: $e0 $78
	ld h, b                                          ; $7abe: $60
	inc a                                            ; $7abf: $3c
	jr nz, jr_06f_7adf                               ; $7ac0: $20 $1d

	ld de, $0303                                     ; $7ac2: $11 $03 $03
	db $fd                                           ; $7ac5: $fd
	add b                                            ; $7ac6: $80
	ld bc, $0500                                     ; $7ac7: $01 $00 $05
	inc bc                                           ; $7aca: $03
	rrca                                             ; $7acb: $0f
	nop                                              ; $7acc: $00
	inc e                                            ; $7acd: $1c
	inc bc                                           ; $7ace: $03
	rra                                              ; $7acf: $1f
	rlca                                             ; $7ad0: $07

jr_06f_7ad1:
	inc d                                            ; $7ad1: $14
	inc c                                            ; $7ad2: $0c
	ld e, a                                          ; $7ad3: $5f
	rrca                                             ; $7ad4: $0f
	xor h                                            ; $7ad5: $ac
	ld c, e                                          ; $7ad6: $4b
	cp e                                             ; $7ad7: $bb
	ret                                              ; $7ad8: $c9


	xor [hl]                                         ; $7ad9: $ae
	rst JumpTable                                          ; $7ada: $c7
	rst JumpTable                                          ; $7adb: $c7
	nop                                              ; $7adc: $00
	rlca                                             ; $7add: $07
	nop                                              ; $7ade: $00

jr_06f_7adf:
	ld c, $01                                        ; $7adf: $0e $01
	dec e                                            ; $7ae1: $1d
	inc bc                                           ; $7ae2: $03
	halt                                             ; $7ae3: $76
	rrca                                             ; $7ae4: $0f
	db $dd                                           ; $7ae5: $dd
	add b                                            ; $7ae6: $80
	ccf                                              ; $7ae7: $3f
	db $ed                                           ; $7ae8: $ed
	rst $38                                          ; $7ae9: $ff
	push hl                                          ; $7aea: $e5
	ccf                                              ; $7aeb: $3f
	rst FarCall                                          ; $7aec: $f7
	ccf                                              ; $7aed: $3f
	db $f4                                           ; $7aee: $f4

jr_06f_7aef:
	ld e, a                                          ; $7aef: $5f
	push af                                          ; $7af0: $f5
	ld e, [hl]                                       ; $7af1: $5e
	or a                                             ; $7af2: $b7
	sbc h                                            ; $7af3: $9c

jr_06f_7af4:
	db $dd                                           ; $7af4: $dd
	xor $da                                          ; $7af5: $ee $da
	rst AddAOntoHL                                          ; $7af7: $ef
	xor a                                            ; $7af8: $af
	push af                                          ; $7af9: $f5
	db $fd                                           ; $7afa: $fd
	or [hl]                                          ; $7afb: $b6
	rst FarCall                                          ; $7afc: $f7
	cp d                                             ; $7afd: $ba
	xor [hl]                                         ; $7afe: $ae
	ei                                               ; $7aff: $fb

Jump_06f_7b00:
	ld e, e                                          ; $7b00: $5b
	rst AddAOntoHL                                          ; $7b01: $ef
	or [hl]                                          ; $7b02: $b6
	rst SubAFromDE                                          ; $7b03: $df
	ld a, [hl]                                       ; $7b04: $7e
	dec de                                           ; $7b05: $1b
	add b                                            ; $7b06: $80
	cp $33                                           ; $7b07: $fe $33
	cp $07                                           ; $7b09: $fe $07
	db $fd                                           ; $7b0b: $fd
	rst SubAFromBC                                          ; $7b0c: $e7
	rst SubAFromDE                                          ; $7b0d: $df
	ccf                                              ; $7b0e: $3f
	ld a, a                                          ; $7b0f: $7f

jr_06f_7b10:
	add c                                            ; $7b10: $81
	cp l                                             ; $7b11: $bd
	jp $e7db                                         ; $7b12: $c3 $db $e7


	or $af                                           ; $7b15: $f6 $af
	adc $bf                                          ; $7b17: $ce $bf
	ldh a, [c]                                       ; $7b19: $f2
	rra                                              ; $7b1a: $1f
	ld [$f637], a                                    ; $7b1b: $ea $37 $f6
	ld l, e                                          ; $7b1e: $6b

jr_06f_7b1f:
	ld l, h                                          ; $7b1f: $6c
	db $d3                                           ; $7b20: $d3
	sbc h                                            ; $7b21: $9c
	rst SubAFromBC                                          ; $7b22: $e7
	jr c, jr_06f_7af4                                ; $7b23: $38 $cf

	ld a, c                                          ; $7b25: $79
	sbc d                                            ; $7b26: $9a
	cp a                                             ; $7b27: $bf
	ld sp, hl                                        ; $7b28: $f9
	rst $38                                          ; $7b29: $ff
	ld c, e                                          ; $7b2a: $4b
	db $fd                                           ; $7b2b: $fd
	ld [hl], a                                       ; $7b2c: $77
	cp $7f                                           ; $7b2d: $fe $7f
	cp d                                             ; $7b2f: $ba
	sbc e                                            ; $7b30: $9b
	ld h, l                                          ; $7b31: $65
	rst $38                                          ; $7b32: $ff
	and l                                            ; $7b33: $a5
	ld a, a                                          ; $7b34: $7f
	ld c, a                                          ; $7b35: $4f
	jr nz, jr_06f_7ad1                               ; $7b36: $20 $99

	rst SubAFromHL                                          ; $7b38: $d7
	jr nc, jr_06f_7b10                               ; $7b39: $30 $d5

	inc sp                                           ; $7b3b: $33
	and a                                            ; $7b3c: $a7
	ld [hl], a                                       ; $7b3d: $77
	ld l, a                                          ; $7b3e: $6f
	jr nz, jr_06f_7adf                               ; $7b3f: $20 $9e

	push bc                                          ; $7b41: $c5
	ld [hl], e                                       ; $7b42: $73
	jr nz, jr_06f_7b94                               ; $7b43: $20 $4f

	ld b, b                                          ; $7b45: $40
	sub l                                            ; $7b46: $95
	dec sp                                           ; $7b47: $3b
	add $eb                                          ; $7b48: $c6 $eb
	db $f4                                           ; $7b4a: $f4
	rst FarCall                                          ; $7b4b: $f7
	ld hl, sp+$5a                                    ; $7b4c: $f8 $5a
	ld a, h                                          ; $7b4e: $7c
	sub h                                            ; $7b4f: $94
	ldh a, [$03]                                     ; $7b50: $f0 $03
	ld b, b                                          ; $7b52: $40
	sub [hl]                                         ; $7b53: $96
	nop                                              ; $7b54: $00
	rra                                              ; $7b55: $1f
	nop                                              ; $7b56: $00
	jr jr_06f_7b60                                   ; $7b57: $18 $07

	rla                                              ; $7b59: $17
	rrca                                             ; $7b5a: $0f
	ld e, l                                          ; $7b5b: $5d
	dec c                                            ; $7b5c: $0d
	inc bc                                           ; $7b5d: $03
	ld b, b                                          ; $7b5e: $40
	dec hl                                           ; $7b5f: $2b

jr_06f_7b60:
	ld b, b                                          ; $7b60: $40
	sub a                                            ; $7b61: $97
	rst $38                                          ; $7b62: $ff
	ld bc, $837d                                     ; $7b63: $01 $7d $83
	cp e                                             ; $7b66: $bb
	rst JumpTable                                          ; $7b67: $c7
	or $ef                                           ; $7b68: $f6 $ef
	inc bc                                           ; $7b6a: $03
	ld b, b                                          ; $7b6b: $40
	ld h, e                                          ; $7b6c: $63
	ld b, b                                          ; $7b6d: $40
	adc [hl]                                         ; $7b6e: $8e
	sbc b                                            ; $7b6f: $98
	ld [hl], b                                       ; $7b70: $70
	ret nc                                           ; $7b71: $d0

	jr nc, @-$2e                                     ; $7b72: $30 $d0

	jr nc, jr_06f_7b1f                               ; $7b74: $30 $a9

	ld a, a                                          ; $7b76: $7f
	or a                                             ; $7b77: $b7
	ld h, a                                          ; $7b78: $67
	jp nz, $a166                                     ; $7b79: $c2 $66 $a1

	jp $81c2                                         ; $7b7c: $c3 $c2 $81


	add b                                            ; $7b7f: $80
	ld c, e                                          ; $7b80: $4b
	ld b, b                                          ; $7b81: $40
	sub b                                            ; $7b82: $90
	halt                                             ; $7b83: $76
	inc c                                            ; $7b84: $0c
	dec sp                                           ; $7b85: $3b
	ld b, $3b                                        ; $7b86: $06 $3b
	inc b                                            ; $7b88: $04
	cp a                                             ; $7b89: $bf
	ret nz                                           ; $7b8a: $c0

	cp $e0                                           ; $7b8b: $fe $e0
	xor h                                            ; $7b8d: $ac
	ldh a, [$d0]                                     ; $7b8e: $f0 $d0
	ld hl, sp-$50                                    ; $7b90: $f8 $b0
	ld a, e                                          ; $7b92: $7b
	ld b, d                                          ; $7b93: $42

jr_06f_7b94:
	rrca                                             ; $7b94: $0f
	ld b, b                                          ; $7b95: $40
	ld a, a                                          ; $7b96: $7f
	cp $7f                                           ; $7b97: $fe $7f
	ld b, b                                          ; $7b99: $40
	sub a                                            ; $7b9a: $97
	ld e, d                                          ; $7b9b: $5a
	rra                                              ; $7b9c: $1f
	xor l                                            ; $7b9d: $ad
	ld c, l                                          ; $7b9e: $4d
	cp a                                             ; $7b9f: $bf
	rst JumpTable                                          ; $7ba0: $c7
	xor a                                            ; $7ba1: $af
	ret nz                                           ; $7ba2: $c0

	inc bc                                           ; $7ba3: $03
	ld b, b                                          ; $7ba4: $40
	dec sp                                           ; $7ba5: $3b
	ld b, b                                          ; $7ba6: $40
	sub l                                            ; $7ba7: $95
	db $fd                                           ; $7ba8: $fd
	inc bc                                           ; $7ba9: $03
	ld a, e                                          ; $7baa: $7b
	add a                                            ; $7bab: $87
	or $cf                                           ; $7bac: $f6 $cf
	xor $ff                                          ; $7bae: $ee $ff
	ld [hl], d                                       ; $7bb0: $72
	sbc a                                            ; $7bb1: $9f
	inc bc                                           ; $7bb2: $03
	ld b, b                                          ; $7bb3: $40
	ld e, e                                          ; $7bb4: $5b
	ld b, b                                          ; $7bb5: $40
	sub l                                            ; $7bb6: $95
	and b                                            ; $7bb7: $a0
	ld [hl], b                                       ; $7bb8: $70
	or [hl]                                          ; $7bb9: $b6
	ld h, [hl]                                       ; $7bba: $66
	rst JumpTable                                          ; $7bbb: $c7
	ld h, e                                          ; $7bbc: $63
	and [hl]                                         ; $7bbd: $a6
	pop bc                                           ; $7bbe: $c1
	pop bc                                           ; $7bbf: $c1
	add b                                            ; $7bc0: $80
	cpl                                              ; $7bc1: $2f
	ld b, b                                          ; $7bc2: $40
	sub [hl]                                         ; $7bc3: $96
	ccf                                              ; $7bc4: $3f
	nop                                              ; $7bc5: $00
	ld a, [hl]                                       ; $7bc6: $7e
	nop                                              ; $7bc7: $00
	db $fc                                           ; $7bc8: $fc
	nop                                              ; $7bc9: $00
	ld hl, sp-$10                                    ; $7bca: $f8 $f0
	ldh a, [$fc]                                     ; $7bcc: $f0 $fc
	rrca                                             ; $7bce: $0f
	ld b, b                                          ; $7bcf: $40
	sbc c                                            ; $7bd0: $99
	inc de                                           ; $7bd1: $13
	nop                                              ; $7bd2: $00
	ld d, c                                          ; $7bd3: $51
	jr @-$43                                         ; $7bd4: $18 $bb

	ld c, h                                          ; $7bd6: $4c
	inc bc                                           ; $7bd7: $03
	ld b, b                                          ; $7bd8: $40
	inc hl                                           ; $7bd9: $23
	ld b, b                                          ; $7bda: $40
	sbc c                                            ; $7bdb: $99
	ei                                               ; $7bdc: $fb
	rlca                                             ; $7bdd: $07
	or $0f                                           ; $7bde: $f6 $0f
	xor $df                                          ; $7be0: $ee $df
	ld d, $80                                        ; $7be2: $16 $80
	db $fd                                           ; $7be4: $fd
	sbc [hl]                                         ; $7be5: $9e
	ld [bc], a                                       ; $7be6: $02
	sbc $01                                          ; $7be7: $de $01
	sub a                                            ; $7be9: $97

Call_06f_7bea:
	ld c, $0c                                        ; $7bea: $0e $0c
	inc bc                                           ; $7bec: $03
	ld [bc], a                                       ; $7bed: $02
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	ld [$7b04], sp                                   ; $7bf0: $08 $04 $7b
	add d                                            ; $7bf3: $82
	sbc e                                            ; $7bf4: $9b
	add b                                            ; $7bf5: $80
	xor h                                            ; $7bf6: $ac

Jump_06f_7bf7:
	jp Jump_06f_73ff                                 ; $7bf7: $c3 $ff $73


	add sp, -$07                                     ; $7bfa: $e8 $f9
	ld [hl], a                                       ; $7bfc: $77
	ldh [$9b], a                                     ; $7bfd: $e0 $9b
	ld b, $0c                                        ; $7bff: $06 $0c
	rra                                              ; $7c01: $1f
	ld c, $17                                        ; $7c02: $0e $17
	ldh [hDisp1_WX], a                                     ; $7c04: $e0 $96
	ld c, $1c                                        ; $7c06: $0e $1c
	rra                                              ; $7c08: $1f
	ld e, $0c                                        ; $7c09: $1e $0c
	ld e, $00                                        ; $7c0b: $1e $00
	nop                                              ; $7c0d: $00
	jr jr_06f_7c37                                   ; $7c0e: $18 $27

	ldh [$7f], a                                     ; $7c10: $e0 $7f
	ret nz                                           ; $7c12: $c0

	sub [hl]                                         ; $7c13: $96
	ld e, $1c                                        ; $7c14: $1e $1c
	ld e, $18                                        ; $7c16: $1e $18
	inc e                                            ; $7c18: $1c
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	ld de, $5788                                     ; $7c1b: $11 $88 $57
	ldh [$0a], a                                     ; $7c1e: $e0 $0a
	inc bc                                           ; $7c20: $03
	pop af                                           ; $7c21: $f1
	rst SubAFromDE                                          ; $7c22: $df
	rrca                                             ; $7c23: $0f
	sbc e                                            ; $7c24: $9b
	inc bc                                           ; $7c25: $03
	ld [bc], a                                       ; $7c26: $02
	ld bc, $e001                                     ; $7c27: $01 $01 $e0
	db $dd                                           ; $7c2a: $dd
	rst SubAFromDE                                          ; $7c2b: $df
	ld bc, $0280                                     ; $7c2c: $01 $80 $02
	inc bc                                           ; $7c2f: $03
	inc b                                            ; $7c30: $04
	rlca                                             ; $7c31: $07
	ld a, [bc]                                       ; $7c32: $0a
	dec c                                            ; $7c33: $0d
	dec e                                            ; $7c34: $1d
	inc de                                           ; $7c35: $13
	rra                                              ; $7c36: $1f

jr_06f_7c37:
	ld [de], a                                       ; $7c37: $12
	ccf                                              ; $7c38: $3f
	inc h                                            ; $7c39: $24
	inc a                                            ; $7c3a: $3c
	dec hl                                           ; $7c3b: $2b
	dec a                                            ; $7c3c: $3d
	inc hl                                           ; $7c3d: $23
	dec a                                            ; $7c3e: $3d
	ld [hl+], a                                      ; $7c3f: $22
	cpl                                              ; $7c40: $2f
	jr nc, jr_06f_7c72                               ; $7c41: $30 $2f

	jr nc, jr_06f_7c84                               ; $7c43: $30 $3f

	jr nc, jr_06f_7c7e                               ; $7c45: $30 $37

	jr c, jr_06f_7c80                                ; $7c47: $38 $37

	jr c, jr_06f_7cc2                                ; $7c49: $38 $77

	ld a, b                                          ; $7c4b: $78
	ld e, e                                          ; $7c4c: $5b
	sbc [hl]                                         ; $7c4d: $9e
	ld a, h                                          ; $7c4e: $7c
	ld [hl], a                                       ; $7c4f: $77
	cp $f1                                           ; $7c50: $fe $f1
	rst SubAFromDE                                          ; $7c52: $df
	pop hl                                           ; $7c53: $e1
	sub c                                            ; $7c54: $91
	cp $1f                                           ; $7c55: $fe $1f
	pop af                                           ; $7c57: $f1
	ld c, $c1                                        ; $7c58: $0e $c1
	cp [hl]                                          ; $7c5a: $be
	ld b, c                                          ; $7c5b: $41
	ld a, [hl]                                       ; $7c5c: $7e
	inc hl                                           ; $7c5d: $23
	inc a                                            ; $7c5e: $3c
	rra                                              ; $7c5f: $1f
	jr jr_06f_7c70                                   ; $7c60: $18 $0e

	rrca                                             ; $7c62: $0f
	db $dd                                           ; $7c63: $dd
	ld bc, $b26f                                     ; $7c64: $01 $6f $b2
	ld a, a                                          ; $7c67: $7f
	adc b                                            ; $7c68: $88
	add b                                            ; $7c69: $80
	ld b, $05                                        ; $7c6a: $06 $05
	dec bc                                           ; $7c6c: $0b
	rrca                                             ; $7c6d: $0f
	inc c                                            ; $7c6e: $0c
	rrca                                             ; $7c6f: $0f

jr_06f_7c70:
	inc sp                                           ; $7c70: $33
	inc a                                            ; $7c71: $3c

jr_06f_7c72:
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rra                                              ; $7c74: $1f
	inc de                                           ; $7c75: $13
	ld a, $37                                        ; $7c76: $3e $37
	dec a                                            ; $7c78: $3d
	ld l, $32                                        ; $7c79: $2e $32
	dec a                                            ; $7c7b: $3d
	ld c, a                                          ; $7c7c: $4f
	ld [hl], a                                       ; $7c7d: $77

jr_06f_7c7e:
	db $fc                                           ; $7c7e: $fc
	rst $38                                          ; $7c7f: $ff

jr_06f_7c80:
	add hl, sp                                       ; $7c80: $39
	cpl                                              ; $7c81: $2f
	add hl, sp                                       ; $7c82: $39
	cpl                                              ; $7c83: $2f

jr_06f_7c84:
	ccf                                              ; $7c84: $3f
	dec sp                                           ; $7c85: $3b
	ld a, $2b                                        ; $7c86: $3e $2b
	ld a, $94                                        ; $7c88: $3e $94
	dec hl                                           ; $7c8a: $2b
	ld a, [de]                                       ; $7c8b: $1a
	rra                                              ; $7c8c: $1f
	ld a, [de]                                       ; $7c8d: $1a
	rra                                              ; $7c8e: $1f
	ld c, $0f                                        ; $7c8f: $0e $0f
	ld b, $07                                        ; $7c91: $06 $07
	rlca                                             ; $7c93: $07
	dec b                                            ; $7c94: $05
	ld [hl], a                                       ; $7c95: $77
	cp $77                                           ; $7c96: $fe $77
	ei                                               ; $7c98: $fb
	ld a, a                                          ; $7c99: $7f
	ld a, [hl]                                       ; $7c9a: $7e
	db $db                                           ; $7c9b: $db
	ld bc, $03df                                     ; $7c9c: $01 $df $03
	db $db                                           ; $7c9f: $db
	ld [bc], a                                       ; $7ca0: $02
	ld h, a                                          ; $7ca1: $67
	or h                                             ; $7ca2: $b4
	add b                                            ; $7ca3: $80
	ld b, d                                          ; $7ca4: $42
	ld b, e                                          ; $7ca5: $43
	and a                                            ; $7ca6: $a7
	rst SubAFromBC                                          ; $7ca7: $e7
	cpl                                              ; $7ca8: $2f
	rst AddAOntoHL                                          ; $7ca9: $ef
	ld a, d                                          ; $7caa: $7a
	cp $fc                                           ; $7cab: $fe $fc
	db $fc                                           ; $7cad: $fc
	ldh [c], a                                       ; $7cae: $e2
	sbc [hl]                                         ; $7caf: $9e
	add a                                            ; $7cb0: $87
	ld a, a                                          ; $7cb1: $7f
	ccf                                              ; $7cb2: $3f
	cp $7f                                           ; $7cb3: $fe $7f
	ld hl, sp-$19                                    ; $7cb5: $f8 $e7
	call c, $bc5f                                    ; $7cb7: $dc $5f $bc
	cp a                                             ; $7cba: $bf
	ld [hl], h                                       ; $7cbb: $74
	ld e, e                                          ; $7cbc: $5b
	and $39                                          ; $7cbd: $e6 $39
	rst GetHLinHL                                          ; $7cbf: $cf
	jp hl                                            ; $7cc0: $e9


	rra                                              ; $7cc1: $1f

jr_06f_7cc2:
	db $db                                           ; $7cc2: $db
	sub h                                            ; $7cc3: $94
	ld [hl], $cf                                     ; $7cc4: $36 $cf
	ld a, $c7                                        ; $7cc6: $3e $c7
	inc a                                            ; $7cc8: $3c
	rst SubAFromBC                                          ; $7cc9: $e7
	inc e                                            ; $7cca: $1c
	rst SubAFromBC                                          ; $7ccb: $e7
	inc e                                            ; $7ccc: $1c
	rst FarCall                                          ; $7ccd: $f7
	inc c                                            ; $7cce: $0c
	pop af                                           ; $7ccf: $f1
	rst SubAFromDE                                          ; $7cd0: $df
	ldh a, [$80]                                     ; $7cd1: $f0 $80
	db $ec                                           ; $7cd3: $ec
	inc e                                            ; $7cd4: $1c
	ldh [c], a                                       ; $7cd5: $e2
	ld e, $c1                                        ; $7cd6: $1e $c1
	ccf                                              ; $7cd8: $3f
	jp $873c                                         ; $7cd9: $c3 $3c $87


	ld a, b                                          ; $7cdc: $78
	rrca                                             ; $7cdd: $0f
	ldh a, [$3f]                                     ; $7cde: $f0 $3f
	call nz, $0606                                   ; $7ce0: $c4 $06 $06
	jp $e0c3                                         ; $7ce3: $c3 $c3 $e0


	ldh [$98], a                                     ; $7ce6: $e0 $98
	ld hl, sp-$44                                    ; $7ce8: $f8 $bc
	ld a, h                                          ; $7cea: $7c
	ld c, [hl]                                       ; $7ceb: $4e
	jp $8183                                         ; $7cec: $c3 $83 $81


	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	jp $0090                                         ; $7cf1: $c3 $90 $00


	ld e, $01                                        ; $7cf4: $1e $01
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	cp h                                             ; $7cf8: $bc
	jp $1fe7                                         ; $7cf9: $c3 $e7 $1f


	cp a                                             ; $7cfc: $bf
	ld a, [hl]                                       ; $7cfd: $7e
	and $fd                                          ; $7cfe: $e6 $fd
	ld e, l                                          ; $7d00: $5d
	set 4, b                                         ; $7d01: $cb $e0
	pop bc                                           ; $7d03: $c1
	sub [hl]                                         ; $7d04: $96
	reti                                             ; $7d05: $d9


	ret z                                            ; $7d06: $c8

	or c                                             ; $7d07: $b1
	db $10                                           ; $7d08: $10
	ld sp, $7120                                     ; $7d09: $31 $20 $71
	jr nz, jr_06f_7d7e                               ; $7d0c: $20 $70

	ld a, e                                          ; $7d0e: $7b
	db $fc                                           ; $7d0f: $fc
	sub l                                            ; $7d10: $95
	ld [hl], d                                       ; $7d11: $72
	ld hl, $237d                                     ; $7d12: $21 $7d $23
	ld a, e                                          ; $7d15: $7b
	scf                                              ; $7d16: $37
	ld l, h                                          ; $7d17: $6c
	ccf                                              ; $7d18: $3f
	ret nz                                           ; $7d19: $c0

	ld a, a                                          ; $7d1a: $7f
	ld [hl], a                                       ; $7d1b: $77
	cp $9d                                           ; $7d1c: $fe $9d
	add b                                            ; $7d1e: $80
	rst $38                                          ; $7d1f: $ff
	ld [hl], a                                       ; $7d20: $77
	cp $fb                                           ; $7d21: $fe $fb
	rst SubAFromDE                                          ; $7d23: $df
	rlca                                             ; $7d24: $07
	add b                                            ; $7d25: $80
	jr jr_06f_7d47                                   ; $7d26: $18 $1f

	ld b, $07                                        ; $7d28: $06 $07
	ld bc, $0f01                                     ; $7d2a: $01 $01 $0f
	rrca                                             ; $7d2d: $0f
	db $10                                           ; $7d2e: $10
	rra                                              ; $7d2f: $1f
	ld hl, $2731                                     ; $7d30: $21 $31 $27
	daa                                              ; $7d33: $27
	rrca                                             ; $7d34: $0f
	add hl, bc                                       ; $7d35: $09
	adc a                                            ; $7d36: $8f
	adc c                                            ; $7d37: $89
	sbc a                                            ; $7d38: $9f
	sbc a                                            ; $7d39: $9f
	ldh a, [c]                                       ; $7d3a: $f2
	ld a, a                                          ; $7d3b: $7f
	call nz, $247f                                   ; $7d3c: $c4 $7f $24
	ccf                                              ; $7d3f: $3f
	ld e, $1f                                        ; $7d40: $1e $1f
	rst $38                                          ; $7d42: $ff
	pop af                                           ; $7d43: $f1
	ld hl, sp-$7a                                    ; $7d44: $f8 $86
	ld b, b                                          ; $7d46: $40

jr_06f_7d47:
	ld c, h                                          ; $7d47: $4c
	ld c, b                                          ; $7d48: $48
	ld c, h                                          ; $7d49: $4c
	ld c, h                                          ; $7d4a: $4c
	ld [$face], a                                    ; $7d4b: $ea $ce $fa
	xor $19                                          ; $7d4e: $ee $19
	rst $38                                          ; $7d50: $ff
	add hl, bc                                       ; $7d51: $09
	rst $38                                          ; $7d52: $ff
	push bc                                          ; $7d53: $c5
	rst $38                                          ; $7d54: $ff
	inc sp                                           ; $7d55: $33
	rst $38                                          ; $7d56: $ff
	dec bc                                           ; $7d57: $0b
	rst $38                                          ; $7d58: $ff
	inc a                                            ; $7d59: $3c
	rst $38                                          ; $7d5a: $ff
	ld sp, hl                                        ; $7d5b: $f9
	ld sp, hl                                        ; $7d5c: $f9
	ret nc                                           ; $7d5d: $d0

	ldh a, [$e0]                                     ; $7d5e: $f0 $e0
	pop bc                                           ; $7d60: $c1
	sub h                                            ; $7d61: $94
	ret nz                                           ; $7d62: $c0

	add b                                            ; $7d63: $80
	ret nz                                           ; $7d64: $c0

	add b                                            ; $7d65: $80
	db $e3                                           ; $7d66: $e3
	ld b, e                                          ; $7d67: $43
	db $fc                                           ; $7d68: $fc
	ld h, a                                          ; $7d69: $67
	ld a, h                                          ; $7d6a: $7c
	rst $38                                          ; $7d6b: $ff
	jp nz, $fe7b                                     ; $7d6c: $c2 $7b $fe

	sub [hl]                                         ; $7d6f: $96
	ld a, [hl]                                       ; $7d70: $7e
	cp a                                             ; $7d71: $bf
	ld d, l                                          ; $7d72: $55
	xor e                                            ; $7d73: $ab
	push de                                          ; $7d74: $d5
	db $eb                                           ; $7d75: $eb
	ccf                                              ; $7d76: $3f
	rst $38                                          ; $7d77: $ff
	nop                                              ; $7d78: $00
	ld e, a                                          ; $7d79: $5f
	cp $69                                           ; $7d7a: $fe $69
	or $98                                           ; $7d7c: $f6 $98

jr_06f_7d7e:
	db $e4                                           ; $7d7e: $e4
	rst SubAFromBC                                          ; $7d7f: $e7
	sub l                                            ; $7d80: $95
	rst FarCall                                          ; $7d81: $f7
	ld c, c                                          ; $7d82: $49
	rst $38                                          ; $7d83: $ff
	xor d                                            ; $7d84: $aa
	ld a, e                                          ; $7d85: $7b
	cp $80                                           ; $7d86: $fe $80
	rst AddAOntoHL                                          ; $7d88: $ef
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	sbc b                                            ; $7d8b: $98
	rst $38                                          ; $7d8c: $ff
	ld hl, $22ff                                     ; $7d8d: $21 $ff $22
	rst $38                                          ; $7d90: $ff
	cp $2f                                           ; $7d91: $fe $2f
	rst $38                                          ; $7d93: $ff
	ld c, c                                          ; $7d94: $49
	rst $38                                          ; $7d95: $ff
	sub a                                            ; $7d96: $97
	cp $bf                                           ; $7d97: $fe $bf
	ld hl, sp-$19                                    ; $7d99: $f8 $e7
	ret nz                                           ; $7d9b: $c0

	rst GetHLinHL                                          ; $7d9c: $cf
	ld b, b                                          ; $7d9d: $40
	rst GetHLinHL                                          ; $7d9e: $cf
	adc [hl]                                         ; $7d9f: $8e
	cp $f0                                           ; $7da0: $fe $f0
	call c, $dcc0                                    ; $7da2: $dc $c0 $dc
	ret nz                                           ; $7da5: $c0

	cp a                                             ; $7da6: $bf

jr_06f_7da7:
	sub b                                            ; $7da7: $90
	rst $38                                          ; $7da8: $ff
	jr jr_06f_7da7                                   ; $7da9: $18 $fc

	ldh [$f0], a                                     ; $7dab: $e0 $f0
	add e                                            ; $7dad: $83
	rst $38                                          ; $7dae: $ff
	or $fc                                           ; $7daf: $f6 $fc
	ld c, e                                          ; $7db1: $4b
	ld l, [hl]                                       ; $7db2: $6e
	dec h                                            ; $7db3: $25
	or a                                             ; $7db4: $b7
	sub e                                            ; $7db5: $93
	db $d3                                           ; $7db6: $d3
	ldh [$c1], a                                     ; $7db7: $e0 $c1
	add [hl]                                         ; $7db9: $86
	inc e                                            ; $7dba: $1c
	inc de                                           ; $7dbb: $13
	ld a, [hl]                                       ; $7dbc: $7e
	ld h, c                                          ; $7dbd: $61
	cp $81                                           ; $7dbe: $fe $81
	db $fc                                           ; $7dc0: $fc
	inc bc                                           ; $7dc1: $03
	db $fd                                           ; $7dc2: $fd
	ld [bc], a                                       ; $7dc3: $02
	ei                                               ; $7dc4: $fb
	inc b                                            ; $7dc5: $04
	rst $38                                          ; $7dc6: $ff
	nop                                              ; $7dc7: $00
	cp $01                                           ; $7dc8: $fe $01
	ld a, [hl]                                       ; $7dca: $7e
	add c                                            ; $7dcb: $81
	ld a, l                                          ; $7dcc: $7d
	add e                                            ; $7dcd: $83
	cp d                                             ; $7dce: $ba
	rst JumpTable                                          ; $7dcf: $c7
	db $f4                                           ; $7dd0: $f4
	rst GetHLinHL                                          ; $7dd1: $cf
	jr c, @+$5d                                      ; $7dd2: $38 $5b

	ld h, b                                          ; $7dd4: $60
	rst SubAFromDE                                          ; $7dd5: $df
	ldh a, [$9a]                                     ; $7dd6: $f0 $9a
	ld b, b                                          ; $7dd8: $40
	ret nz                                           ; $7dd9: $c0

	cp [hl]                                          ; $7dda: $be
	cp [hl]                                          ; $7ddb: $be
	pop hl                                           ; $7ddc: $e1
	ld a, d                                          ; $7ddd: $7a
	or d                                             ; $7dde: $b2
	ld a, [hl]                                       ; $7ddf: $7e
	push de                                          ; $7de0: $d5
	sbc [hl]                                         ; $7de1: $9e
	ld [hl], b                                       ; $7de2: $70
	ld a, e                                          ; $7de3: $7b
	ld a, [$ffdf]                                    ; $7de4: $fa $df $ff
	sub e                                            ; $7de7: $93
	di                                               ; $7de8: $f3
	rra                                              ; $7de9: $1f
	ld hl, sp+$3f                                    ; $7dea: $f8 $3f
	db $fc                                           ; $7dec: $fc
	ld b, a                                          ; $7ded: $47
	rst $38                                          ; $7dee: $ff
	add e                                            ; $7def: $83
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	adc a                                            ; $7df2: $8f
	nop                                              ; $7df3: $00
	ld [hl], a                                       ; $7df4: $77
	cp $85                                           ; $7df5: $fe $85
	ld c, $00                                        ; $7df7: $0e $00
	cp $80                                           ; $7df9: $fe $80

jr_06f_7dfb:
	dec a                                            ; $7dfb: $3d
	ld bc, $037f                                     ; $7dfc: $01 $7f $03
	ld a, l                                          ; $7dff: $7d
	rrca                                             ; $7e00: $0f
	ld sp, hl                                        ; $7e01: $f9
	rst $38                                          ; $7e02: $ff
	ld [hl-], a                                      ; $7e03: $32
	rst $38                                          ; $7e04: $ff
	ld c, $3f                                        ; $7e05: $0e $3f
	ld a, [$3ff3]                                    ; $7e07: $fa $f3 $3f
	ld sp, $08ff                                     ; $7e0a: $31 $ff $08
	rst $38                                          ; $7e0d: $ff
	inc b                                            ; $7e0e: $04
	adc $82                                          ; $7e0f: $ce $82
	ldh [$c1], a                                     ; $7e11: $e0 $c1
	adc h                                            ; $7e13: $8c
	cp a                                             ; $7e14: $bf
	pop hl                                           ; $7e15: $e1
	rra                                              ; $7e16: $1f
	ld hl, sp+$1f                                    ; $7e17: $f8 $1f
	db $fc                                           ; $7e19: $fc
	scf                                              ; $7e1a: $37
	db $fc                                           ; $7e1b: $fc
	cpl                                              ; $7e1c: $2f
	ld hl, sp-$17                                    ; $7e1d: $f8 $e9
	ld a, b                                          ; $7e1f: $78
	ld e, b                                          ; $7e20: $58
	ldh a, [hDisp1_SCY]                                     ; $7e21: $f0 $90
	ldh a, [$b0]                                     ; $7e23: $f0 $b0
	ldh [rAUD4ENV], a                                ; $7e25: $e0 $21
	ld a, e                                          ; $7e27: $7b
	cp $9c                                           ; $7e28: $fe $9c
	ld h, c                                          ; $7e2a: $61
	ret nz                                           ; $7e2b: $c0

	ld b, e                                          ; $7e2c: $43
	ld a, e                                          ; $7e2d: $7b
	cp $9b                                           ; $7e2e: $fe $9b
	rst JumpTable                                          ; $7e30: $c7
	add b                                            ; $7e31: $80
	add a                                            ; $7e32: $87
	add b                                            ; $7e33: $80
	rst FarCall                                          ; $7e34: $f7
	rst SubAFromDE                                          ; $7e35: $df
	add b                                            ; $7e36: $80
	db $dd                                           ; $7e37: $dd
	ret nz                                           ; $7e38: $c0

	sub d                                            ; $7e39: $92
	ld [hl], b                                       ; $7e3a: $70
	ldh a, [$e8]                                     ; $7e3b: $f0 $e8
	jr jr_06f_7dfb                                   ; $7e3d: $18 $bc

	call nz, $f26e                                   ; $7e3f: $c4 $6e $f2
	sbc e                                            ; $7e42: $9b
	db $fd                                           ; $7e43: $fd
	ld h, l                                          ; $7e44: $65
	cp $12                                           ; $7e45: $fe $12
	ld a, d                                          ; $7e47: $7a
	inc [hl]                                         ; $7e48: $34
	rst SubAFromDE                                          ; $7e49: $df
	rst $38                                          ; $7e4a: $ff
	ld a, h                                          ; $7e4b: $7c
	sbc h                                            ; $7e4c: $9c
	adc h                                            ; $7e4d: $8c
	dec de                                           ; $7e4e: $1b
	inc e                                            ; $7e4f: $1c
	ld hl, $4a3e                                     ; $7e50: $21 $3e $4a
	ld [hl], a                                       ; $7e53: $77
	or a                                             ; $7e54: $b7
	bit 3, e                                         ; $7e55: $cb $5b
	push hl                                          ; $7e57: $e5
	xor e                                            ; $7e58: $ab
	ld [hl], l                                       ; $7e59: $75
	push de                                          ; $7e5a: $d5
	ld a, e                                          ; $7e5b: $7b
	push af                                          ; $7e5c: $f5
	ld e, d                                          ; $7e5d: $5a
	ld l, d                                          ; $7e5e: $6a
	db $dd                                           ; $7e5f: $dd
	xor d                                            ; $7e60: $aa
	ld a, e                                          ; $7e61: $7b
	cp $80                                           ; $7e62: $fe $80
	sub $bd                                          ; $7e64: $d6 $bd
	call c, $6cf7                                    ; $7e66: $dc $f7 $6c
	ld [hl], a                                       ; $7e69: $77
	ld e, l                                          ; $7e6a: $5d
	ld l, [hl]                                       ; $7e6b: $6e
	ld c, l                                          ; $7e6c: $4d
	ld a, [hl]                                       ; $7e6d: $7e
	ld d, l                                          ; $7e6e: $55
	ld a, [hl]                                       ; $7e6f: $7e
	inc [hl]                                         ; $7e70: $34
	ccf                                              ; $7e71: $3f
	inc a                                            ; $7e72: $3c
	scf                                              ; $7e73: $37
	inc l                                            ; $7e74: $2c
	scf                                              ; $7e75: $37
	ld [hl], $2d                                     ; $7e76: $36 $2d
	cp d                                             ; $7e78: $ba
	xor l                                            ; $7e79: $ad
	xor e                                            ; $7e7a: $ab
	cp l                                             ; $7e7b: $bd
	xor c                                            ; $7e7c: $a9
	cp a                                             ; $7e7d: $bf
	or l                                             ; $7e7e: $b5
	cp e                                             ; $7e7f: $bb
	or c                                             ; $7e80: $b1
	cp a                                             ; $7e81: $bf
	ld [$f780], a                                    ; $7e82: $ea $80 $f7
	jp z, $d2f7                                      ; $7e85: $ca $f7 $d2

	rst AddAOntoHL                                          ; $7e88: $ef
	sub h                                            ; $7e89: $94
	rst AddAOntoHL                                          ; $7e8a: $ef
	and h                                            ; $7e8b: $a4
	rst SubAFromDE                                          ; $7e8c: $df
	ld h, h                                          ; $7e8d: $64
	sbc a                                            ; $7e8e: $9f
	ld l, c                                          ; $7e8f: $69
	sbc a                                            ; $7e90: $9f
	ld c, c                                          ; $7e91: $49
	cp a                                             ; $7e92: $bf
	ld e, c                                          ; $7e93: $59
	cp a                                             ; $7e94: $bf
	ld e, l                                          ; $7e95: $5d
	cp e                                             ; $7e96: $bb
	rra                                              ; $7e97: $1f
	ld sp, hl                                        ; $7e98: $f9
	cpl                                              ; $7e99: $2f
	jp hl                                            ; $7e9a: $e9


	xor e                                            ; $7e9b: $ab
	ld l, l                                          ; $7e9c: $6d
	xor a                                            ; $7e9d: $af
	ld l, l                                          ; $7e9e: $6d
	push bc                                          ; $7e9f: $c5
	ld b, a                                          ; $7ea0: $47
	push bc                                          ; $7ea1: $c5
	ld b, a                                          ; $7ea2: $47
	sub l                                            ; $7ea3: $95
	ld b, d                                          ; $7ea4: $42
	jp $c342                                         ; $7ea5: $c3 $42 $c3


	and c                                            ; $7ea8: $a1
	pop hl                                           ; $7ea9: $e1
	ld h, b                                          ; $7eaa: $60
	ld h, b                                          ; $7eab: $60
	sub b                                            ; $7eac: $90
	sub b                                            ; $7ead: $90
	ld a, e                                          ; $7eae: $7b
	adc b                                            ; $7eaf: $88
	adc l                                            ; $7eb0: $8d
	ld b, b                                          ; $7eb1: $40
	ldh [rAUD4LEN], a                                ; $7eb2: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $7eb4: $f0 $10
	cp $0e                                           ; $7eb6: $fe $0e
	ld sp, hl                                        ; $7eb8: $f9
	rrca                                             ; $7eb9: $0f
	ld hl, sp+$0f                                    ; $7eba: $f8 $0f
	ldh a, [$1f]                                     ; $7ebc: $f0 $1f
	ldh a, [$1f]                                     ; $7ebe: $f0 $1f
	ldh [$3f], a                                     ; $7ec0: $e0 $3f
	ldh [$71], a                                     ; $7ec2: $e0 $71
	ld a, h                                          ; $7ec4: $7c
	ld e, l                                          ; $7ec5: $5d
	add b                                            ; $7ec6: $80
	db $ed                                           ; $7ec7: $ed
	ld [hl], a                                       ; $7ec8: $77
	ret z                                            ; $7ec9: $c8

	add b                                            ; $7eca: $80
	and b                                            ; $7ecb: $a0
	ld h, b                                          ; $7ecc: $60
	ld h, b                                          ; $7ecd: $60
	and b                                            ; $7ece: $a0
	ret nc                                           ; $7ecf: $d0

	or b                                             ; $7ed0: $b0
	ldh a, [hDisp1_SCY]                                     ; $7ed1: $f0 $90
	xor b                                            ; $7ed3: $a8
	ret c                                            ; $7ed4: $d8

	add sp, $58                                      ; $7ed5: $e8 $58
	ld hl, sp+$48                                    ; $7ed7: $f8 $48
	call nc, Call_06f_546c                           ; $7ed9: $d4 $6c $54
	db $ec                                           ; $7edc: $ec
	inc e                                            ; $7edd: $1c
	db $e4                                           ; $7ede: $e4
	sbc h                                            ; $7edf: $9c
	db $e4                                           ; $7ee0: $e4
	call c, $dca4                                    ; $7ee1: $dc $a4 $dc
	and h                                            ; $7ee4: $a4
	ld d, h                                          ; $7ee5: $54
	xor h                                            ; $7ee6: $ac
	call nc, $c4ac                                   ; $7ee7: $d4 $ac $c4
	ld a, a                                          ; $7eea: $7f
	scf                                              ; $7eeb: $37
	ld [hl], e                                       ; $7eec: $73
	cp $9d                                           ; $7eed: $fe $9d
	and h                                            ; $7eef: $a4
	db $fc                                           ; $7ef0: $fc
	ld e, a                                          ; $7ef1: $5f
	cp $97                                           ; $7ef2: $fe $97
	inc [hl]                                         ; $7ef4: $34
	db $ec                                           ; $7ef5: $ec
	inc [hl]                                         ; $7ef6: $34
	db $ec                                           ; $7ef7: $ec
	ld d, h                                          ; $7ef8: $54
	db $ec                                           ; $7ef9: $ec
	ld a, b                                          ; $7efa: $78
	ret z                                            ; $7efb: $c8

Call_06f_7efc:
	ld l, a                                          ; $7efc: $6f
	cp $7f                                           ; $7efd: $fe $7f
	ret                                              ; $7eff: $c9


	sub c                                            ; $7f00: $91
	xor b                                            ; $7f01: $a8
	cp b                                             ; $7f02: $b8
	xor b                                            ; $7f03: $a8
	cp b                                             ; $7f04: $b8
	jr z, jr_06f_7f3f                                ; $7f05: $28 $38

	inc d                                            ; $7f07: $14
	inc e                                            ; $7f08: $1c
	inc d                                            ; $7f09: $14
	inc e                                            ; $7f0a: $1c
	inc c                                            ; $7f0b: $0c
	inc c                                            ; $7f0c: $0c
	ld b, $06                                        ; $7f0d: $06 $06
	ld h, h                                          ; $7f0f: $64
	ld a, $77                                        ; $7f10: $3e $77
	and d                                            ; $7f12: $a2
	db $db                                           ; $7f13: $db
	add b                                            ; $7f14: $80
	ld c, a                                          ; $7f15: $4f
	adc [hl]                                         ; $7f16: $8e
	sub h                                            ; $7f17: $94
	ld h, b                                          ; $7f18: $60
	ldh [rAUD2LOW], a                                ; $7f19: $e0 $18
	ld hl, sp+$0c                                    ; $7f1b: $f8 $0c
	db $fc                                           ; $7f1d: $fc
	inc b                                            ; $7f1e: $04
	db $fc                                           ; $7f1f: $fc
	ld [hl+], a                                      ; $7f20: $22
	cp $42                                           ; $7f21: $fe $42
	ld a, e                                          ; $7f23: $7b
	cp $7c                                           ; $7f24: $fe $7c
	ld [hl], c                                       ; $7f26: $71
	ld a, a                                          ; $7f27: $7f
	cp $24                                           ; $7f28: $fe $24
	nop                                              ; $7f2a: $00
	sbc c                                            ; $7f2b: $99
	cp e                                             ; $7f2c: $bb
	sbc c                                            ; $7f2d: $99
	sbc c                                            ; $7f2e: $99
	call z, $8888                                    ; $7f2f: $cc $88 $88
	ld a, e                                          ; $7f32: $7b
	ei                                               ; $7f33: $fb
	sub [hl]                                         ; $7f34: $96
	ld [hl+], a                                      ; $7f35: $22
	sbc c                                            ; $7f36: $99
	sbc c                                            ; $7f37: $99
	ld d, l                                          ; $7f38: $55
	cp e                                             ; $7f39: $bb
	inc sp                                           ; $7f3a: $33
	sbc c                                            ; $7f3b: $99
	sbc c                                            ; $7f3c: $99
	ld h, [hl]                                       ; $7f3d: $66
	ld [hl], a                                       ; $7f3e: $77

jr_06f_7f3f:
	ei                                               ; $7f3f: $fb
	ld [hl], e                                       ; $7f40: $73
	or $99                                           ; $7f41: $f6 $99
	ld d, l                                          ; $7f43: $55
	xor d                                            ; $7f44: $aa
	ld [hl+], a                                      ; $7f45: $22
	ld [hl+], a                                      ; $7f46: $22
	xor d                                            ; $7f47: $aa
	db $dd                                           ; $7f48: $dd
	db $dd                                           ; $7f49: $dd
	xor d                                            ; $7f4a: $aa
	sbc [hl]                                         ; $7f4b: $9e
	db $dd                                           ; $7f4c: $dd
	sbc a                                            ; $7f4d: $9f
	ld bc, $ae80                                     ; $7f4e: $01 $80 $ae
	sbc e                                            ; $7f51: $9b
	ld a, l                                          ; $7f52: $7d
	ld [hl], $df                                     ; $7f53: $36 $df
	ld [hl], h                                       ; $7f55: $74
	halt                                             ; $7f56: $76
	call c, $8cfa                                    ; $7f57: $dc $fa $8c
	db $ec                                           ; $7f5a: $ec
	sbc b                                            ; $7f5b: $98
	call c, Call_06f_6e3c                            ; $7f5c: $dc $3c $6e
	ldh a, [$f1]                                     ; $7f5f: $f0 $f1
	ld c, $2e                                        ; $7f61: $0e $2e
	rra                                              ; $7f63: $1f
	ld d, e                                          ; $7f64: $53
	inc sp                                           ; $7f65: $33
	ld [hl], a                                       ; $7f66: $77
	rst FarCall                                          ; $7f67: $f7
	cp a                                             ; $7f68: $bf
	ld e, a                                          ; $7f69: $5f
	rla                                              ; $7f6a: $17
	sbc l                                            ; $7f6b: $9d
	adc e                                            ; $7f6c: $8b
	adc d                                            ; $7f6d: $8a
	sub h                                            ; $7f6e: $94
	add b                                            ; $7f6f: $80
	adc [hl]                                         ; $7f70: $8e
	cp $81                                           ; $7f71: $fe $81
	cp a                                             ; $7f73: $bf
	ret nz                                           ; $7f74: $c0

	cp a                                             ; $7f75: $bf
	ret nz                                           ; $7f76: $c0

	ld a, a                                          ; $7f77: $7f
	ld b, b                                          ; $7f78: $40
	ld e, a                                          ; $7f79: $5f
	ld h, b                                          ; $7f7a: $60
	ccf                                              ; $7f7b: $3f
	jr nz, jr_06f_7f9d                               ; $7f7c: $20 $1f

	inc e                                            ; $7f7e: $1c
	cpl                                              ; $7f7f: $2f
	inc a                                            ; $7f80: $3c
	ld a, e                                          ; $7f81: $7b
	ld a, h                                          ; $7f82: $7c
	push af                                          ; $7f83: $f5
	or $a2                                           ; $7f84: $f6 $a2
	db $e3                                           ; $7f86: $e3
	pop bc                                           ; $7f87: $c1
	pop bc                                           ; $7f88: $c1
	add b                                            ; $7f89: $80
	add b                                            ; $7f8a: $80
	ld bc, $0301                                     ; $7f8b: $01 $01 $03
	ld [bc], a                                       ; $7f8e: $02
	sub b                                            ; $7f8f: $90
	ccf                                              ; $7f90: $3f
	inc a                                            ; $7f91: $3c
	ldh a, [$a0]                                     ; $7f92: $f0 $a0
	ldh a, [$a0]                                     ; $7f94: $f0 $a0
	ldh [$a0], a                                     ; $7f96: $e0 $a0
	and b                                            ; $7f98: $a0
	ldh [$f0], a                                     ; $7f99: $e0 $f0
	ld h, b                                          ; $7f9b: $60
	ld [hl], b                                       ; $7f9c: $70

jr_06f_7f9d:
	jr nc, jr_06f_7fd8                               ; $7f9d: $30 $39

	db $fc                                           ; $7f9f: $fc
	sbc h                                            ; $7fa0: $9c
	add b                                            ; $7fa1: $80
	nop                                              ; $7fa2: $00
	add c                                            ; $7fa3: $81
	ld [hl], e                                       ; $7fa4: $73
	cp $80                                           ; $7fa5: $fe $80
	jr z, jr_06f_7fa9                                ; $7fa7: $28 $00

jr_06f_7fa9:
	ld d, h                                          ; $7fa9: $54
	nop                                              ; $7faa: $00
	rst $38                                          ; $7fab: $ff
	nop                                              ; $7fac: $00
	ld a, [$7b53]                                    ; $7fad: $fa $53 $7b
	ld d, a                                          ; $7fb0: $57
	ld e, [hl]                                       ; $7fb1: $5e
	ld [hl], a                                       ; $7fb2: $77
	ld a, a                                          ; $7fb3: $7f
	ld [hl], h                                       ; $7fb4: $74
	rst SubAFromHL                                          ; $7fb5: $d7
	ld a, h                                          ; $7fb6: $7c
	ld a, e                                          ; $7fb7: $7b
	call z, $bcff                                    ; $7fb8: $cc $ff $bc
	dec de                                           ; $7fbb: $1b
	ld h, a                                          ; $7fbc: $67
	ld a, [hl]                                       ; $7fbd: $7e
	ld bc, $1ce3                                     ; $7fbe: $01 $e3 $1c
	cp l                                             ; $7fc1: $bd
	ld a, [hl]                                       ; $7fc2: $7e
	xor $7f                                          ; $7fc3: $ee $7f
	cp c                                             ; $7fc5: $b9
	adc a                                            ; $7fc6: $8f
	ld e, c                                          ; $7fc7: $59
	sub e                                            ; $7fc8: $93
	inc sp                                           ; $7fc9: $33
	ccf                                              ; $7fca: $3f
	ccf                                              ; $7fcb: $3f
	rla                                              ; $7fcc: $17
	dec a                                            ; $7fcd: $3d
	cp e                                             ; $7fce: $bb
	ld [de], a                                       ; $7fcf: $12
	ld e, a                                          ; $7fd0: $5f
	inc c                                            ; $7fd1: $0c
	rlca                                             ; $7fd2: $07
	nop                                              ; $7fd3: $00
	rrca                                             ; $7fd4: $0f
	nop                                              ; $7fd5: $00
	rra                                              ; $7fd6: $1f
	ld [hl], e                                       ; $7fd7: $73

jr_06f_7fd8:
	cp $80                                           ; $7fd8: $fe $80
	ccf                                              ; $7fda: $3f
	ld bc, $073f                                     ; $7fdb: $01 $3f $07
	rst $38                                          ; $7fde: $ff
	rra                                              ; $7fdf: $1f
	rst $38                                          ; $7fe0: $ff
	ld a, l                                          ; $7fe1: $7d

Call_06f_7fe2:
	rst $38                                          ; $7fe2: $ff
	ld sp, hl                                        ; $7fe3: $f9
	rst $38                                          ; $7fe4: $ff
	pop af                                           ; $7fe5: $f1
	rst $38                                          ; $7fe6: $ff

Jump_06f_7fe7:
	jp $07fe                                         ; $7fe7: $c3 $fe $07


	db $fc                                           ; $7fea: $fc
	rrca                                             ; $7feb: $0f
	ld b, d                                          ; $7fec: $42
	ret nz                                           ; $7fed: $c0

	ld hl, $a1e0                                     ; $7fee: $21 $e0 $a1
	ldh [$d1], a                                     ; $7ff1: $e0 $d1
	ldh a, [$d1]                                     ; $7ff3: $f0 $d1
	ld [hl], b                                       ; $7ff5: $70
	reti                                             ; $7ff6: $d9


	ld a, c                                          ; $7ff7: $79
	reti                                             ; $7ff8: $d9


	add b                                            ; $7ff9: $80
	ld a, c                                          ; $7ffa: $79
	ld a, h                                          ; $7ffb: $7c
	db $ec                                           ; $7ffc: $ec
	cp $ce                                           ; $7ffd: $fe $ce

Jump_06f_7fff:
	db $fa                                           ; $7fff: $fa
