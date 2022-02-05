; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

	sub d                                            ; $4000: $92
	sbc a                                            ; $4001: $9f
	db $fd                                           ; $4002: $fd
	inc bc                                           ; $4003: $03
	inc bc                                           ; $4004: $03
	sbc a                                            ; $4005: $9f
	sbc [hl]                                         ; $4006: $9e
	sbc a                                            ; $4007: $9f
	sbc l                                            ; $4008: $9d
	rst SubAFromDE                                          ; $4009: $df
	ld b, $fe                                        ; $400a: $06 $fe
	cp $62                                           ; $400c: $fe $62
	sbc $63                                          ; $400e: $de $63
	sbc [hl]                                         ; $4010: $9e
	pop hl                                           ; $4011: $e1
	sbc $c0                                          ; $4012: $de $c0
	rst SubAFromDE                                          ; $4014: $df
	ldh [$7f], a                                     ; $4015: $e0 $7f
	sub e                                            ; $4017: $93
	sbc [hl]                                         ; $4018: $9e
	ld [hl], b                                       ; $4019: $70
	db $fd                                           ; $401a: $fd
	ld a, c                                          ; $401b: $79
	ld [hl], a                                       ; $401c: $77
	ld h, c                                          ; $401d: $61
	db $f4                                           ; $401e: $f4
	di                                               ; $401f: $f3
	ld h, a                                          ; $4020: $67
	inc h                                            ; $4021: $24
	sbc l                                            ; $4022: $9d
	ld [bc], a                                       ; $4023: $02
	inc bc                                           ; $4024: $03
	ld l, e                                          ; $4025: $6b
	ld hl, sp-$62                                    ; $4026: $f8 $9e
	call nz, $e86b                                   ; $4028: $c4 $6b $e8
	sbc e                                            ; $402b: $9b
	ld [hl+], a                                      ; $402c: $22
	rrca                                             ; $402d: $0f
	ld [$de08], sp                                   ; $402e: $08 $08 $de
	rlca                                             ; $4031: $07
	sbc d                                            ; $4032: $9a
	inc bc                                           ; $4033: $03
	dec hl                                           ; $4034: $2b
	ld [$0f0f], sp                                   ; $4035: $08 $0f $0f
	sbc $04                                          ; $4038: $de $04
	sbc l                                            ; $403a: $9d
	ldh [c], a                                       ; $403b: $e2
	ld [de], a                                       ; $403c: $12
	ld a, e                                          ; $403d: $7b
	sub b                                            ; $403e: $90
	call c, Call_05e_7b9f                            ; $403f: $dc $9f $7b
	sub b                                            ; $4042: $90
	call c, $8060                                    ; $4043: $dc $60 $80
	reti                                             ; $4046: $d9


	ld e, e                                          ; $4047: $5b
	inc a                                            ; $4048: $3c
	ldh a, [$e6]                                     ; $4049: $f0 $e6
	db $fc                                           ; $404b: $fc
	ld a, [$72fb]                                    ; $404c: $fa $fb $72
	di                                               ; $404f: $f3
	rst $38                                          ; $4050: $ff
	ccf                                              ; $4051: $3f
	ccf                                              ; $4052: $3f
	rra                                              ; $4053: $1f
	dec c                                            ; $4054: $0d
	dec c                                            ; $4055: $0d
	db $fd                                           ; $4056: $fd
	ld e, $1f                                        ; $4057: $1e $1f
	ld c, $0f                                        ; $4059: $0e $0f
	rlca                                             ; $405b: $07
	inc bc                                           ; $405c: $03
	ld bc, $f0e0                                     ; $405d: $01 $e0 $f0
	ldh a, [$f8]                                     ; $4060: $f0 $f8
	ld hl, sp-$04                                    ; $4062: $f8 $fc

Jump_05e_4064:
	cp $76                                           ; $4064: $fe $76
	adc d                                            ; $4066: $8a
	ld a, d                                          ; $4067: $7a
	adc b                                            ; $4068: $88
	sbc l                                            ; $4069: $9d
	push af                                          ; $406a: $f5
	ld a, [$0062]                                    ; $406b: $fa $62 $00
	ld [hl], d                                       ; $406e: $72
	or d                                             ; $406f: $b2
	ld a, a                                          ; $4070: $7f
	cp $f9                                           ; $4071: $fe $f9
	sbc e                                            ; $4073: $9b
	ld a, d                                          ; $4074: $7a
	cp l                                             ; $4075: $bd
	ld a, a                                          ; $4076: $7f
	cp a                                             ; $4077: $bf
	ld a, e                                          ; $4078: $7b
	cp $99                                           ; $4079: $fe $99

Call_05e_407b:
	rst $38                                          ; $407b: $ff
	db $10                                           ; $407c: $10
	ld [$0204], sp                                   ; $407d: $08 $04 $02
	ld [bc], a                                       ; $4080: $02
	sbc $01                                          ; $4081: $de $01
	sbc b                                            ; $4083: $98
	and d                                            ; $4084: $a2
	ld d, h                                          ; $4085: $54
	xor d                                            ; $4086: $aa
	rst FarCall                                          ; $4087: $f7
	rst $38                                          ; $4088: $ff
	add e                                            ; $4089: $83
	cp $fb                                           ; $408a: $fe $fb
	sbc e                                            ; $408c: $9b
	ld a, h                                          ; $408d: $7c
	rst $38                                          ; $408e: $ff
	rst $38                                          ; $408f: $ff
	adc b                                            ; $4090: $88
	ld [hl], a                                       ; $4091: $77
	ld b, b                                          ; $4092: $40
	sbc e                                            ; $4093: $9b
	ldh [c], a                                       ; $4094: $e2
	ld [hl], h                                       ; $4095: $74
	ld [$79f7], a                                    ; $4096: $ea $f7 $79
	sbc b                                            ; $4099: $98
	sbc d                                            ; $409a: $9a
	ccf                                              ; $409b: $3f
	dec a                                            ; $409c: $3d
	xor e                                            ; $409d: $ab
	push af                                          ; $409e: $f5
	pop hl                                           ; $409f: $e1
	db $dd                                           ; $40a0: $dd
	ld h, b                                          ; $40a1: $60
	sbc e                                            ; $40a2: $9b
	ld h, c                                          ; $40a3: $61
	ld h, b                                          ; $40a4: $60
	ld h, b                                          ; $40a5: $60
	sub b                                            ; $40a6: $90
	call c, $96d0                                    ; $40a7: $dc $d0 $96
	pop de                                           ; $40aa: $d1
	ret nc                                           ; $40ab: $d0

	ld d, l                                          ; $40ac: $55
	xor d                                            ; $40ad: $aa
	pop de                                           ; $40ae: $d1
	nop                                              ; $40af: $00
	ld b, b                                          ; $40b0: $40
	ld h, l                                          ; $40b1: $65
	jp nz, $ad7b                                     ; $40b2: $c2 $7b $ad

	adc b                                            ; $40b5: $88
	jr nz, jr_05e_40b8                               ; $40b6: $20 $00

jr_05e_40b8:
	nop                                              ; $40b8: $00
	add d                                            ; $40b9: $82
	dec b                                            ; $40ba: $05
	xor d                                            ; $40bb: $aa
	db $f4                                           ; $40bc: $f4
	cp h                                             ; $40bd: $bc
	ld e, b                                          ; $40be: $58
	jr z, jr_05e_40d1                                ; $40bf: $28 $10

	nop                                              ; $40c1: $00
	xor d                                            ; $40c2: $aa
	ld b, [hl]                                       ; $40c3: $46
	ld [$a040], sp                                   ; $40c4: $08 $40 $a0
	ld d, b                                          ; $40c7: $50
	ld [$5400], sp                                   ; $40c8: $08 $00 $54
	add b                                            ; $40cb: $80
	ld d, b                                          ; $40cc: $50
	jp c, $9e40                                      ; $40cd: $da $40 $9e

	ld l, a                                          ; $40d0: $6f

jr_05e_40d1:
	jp c, $df7f                                      ; $40d1: $da $7f $df

	cp $99                                           ; $40d4: $fe $99

jr_05e_40d6:
	db $f4                                           ; $40d6: $f4
	cp $54                                           ; $40d7: $fe $54
	cp $54                                           ; $40d9: $fe $54
	xor d                                            ; $40db: $aa
	reti                                             ; $40dc: $d9


	ld bc, $fadf                                     ; $40dd: $01 $df $fa
	sub a                                            ; $40e0: $97
	and [hl]                                         ; $40e1: $a6
	or [hl]                                          ; $40e2: $b6
	or a                                             ; $40e3: $b7
	xor e                                            ; $40e4: $ab
	ld l, e                                          ; $40e5: $6b
	ld a, e                                          ; $40e6: $7b
	ldh [$80], a                                     ; $40e7: $e0 $80
	sbc $c8                                          ; $40e9: $de $c8
	sbc $d0                                          ; $40eb: $de $d0
	sub [hl]                                         ; $40ed: $96
	ld a, a                                          ; $40ee: $7f
	xor a                                            ; $40ef: $af
	xor a                                            ; $40f0: $af
	rst $38                                          ; $40f1: $ff
	cp d                                             ; $40f2: $ba
	cp a                                             ; $40f3: $bf
	cp d                                             ; $40f4: $ba
	sub l                                            ; $40f5: $95
	jr c, jr_05e_40d6                                ; $40f6: $38 $de

	ld [$489b], sp                                   ; $40f8: $08 $9b $48
	ld d, b                                          ; $40fb: $50
	ld d, b                                          ; $40fc: $50
	ld [hl], b                                       ; $40fd: $70
	sbc $f0                                          ; $40fe: $de $f0
	sbc [hl]                                         ; $4100: $9e
	cp b                                             ; $4101: $b8
	ld a, e                                          ; $4102: $7b
	scf                                              ; $4103: $37
	sbc [hl]                                         ; $4104: $9e
	ld e, h                                          ; $4105: $5c
	sbc $80                                          ; $4106: $de $80
	sbc [hl]                                         ; $4108: $9e
	ret nz                                           ; $4109: $c0

	sbc $40                                          ; $410a: $de $40
	ld a, [hl]                                       ; $410c: $7e
	ld sp, $0798                                     ; $410d: $31 $98 $07
	ld [$1310], sp                                   ; $4110: $08 $10 $13
	inc [hl]                                         ; $4113: $34
	jr nz, jr_05e_4146                               ; $4114: $20 $30

	ld a, b                                          ; $4116: $78
	push de                                          ; $4117: $d5
	ld a, a                                          ; $4118: $7f
	and c                                            ; $4119: $a1
	sbc b                                            ; $411a: $98
	inc bc                                           ; $411b: $03

jr_05e_411c:
	inc d                                            ; $411c: $14
	inc b                                            ; $411d: $04
	inc bc                                           ; $411e: $03
	cpl                                              ; $411f: $2f
	ret nc                                           ; $4120: $d0

	ld l, d                                          ; $4121: $6a
	ld a, d                                          ; $4122: $7a
	dec sp                                           ; $4123: $3b
	sub h                                            ; $4124: $94
	nop                                              ; $4125: $00
	inc e                                            ; $4126: $1c
	ret nc                                           ; $4127: $d0

	cpl                                              ; $4128: $2f
	inc d                                            ; $4129: $14
	jr jr_05e_411c                                   ; $412a: $18 $f0

	ld h, b                                          ; $412c: $60
	ld b, b                                          ; $412d: $40
	inc bc                                           ; $412e: $03
	ret nz                                           ; $412f: $c0

	ld l, [hl]                                       ; $4130: $6e
	or c                                             ; $4131: $b1
	sbc e                                            ; $4132: $9b
	db $e4                                           ; $4133: $e4
	dec h                                            ; $4134: $25
	db $fd                                           ; $4135: $fd
	dec c                                            ; $4136: $0d
	halt                                             ; $4137: $76
	xor d                                            ; $4138: $aa
	sbc e                                            ; $4139: $9b
	inc de                                           ; $413a: $13
	ld d, l                                          ; $413b: $55
	add hl, hl                                       ; $413c: $29
	add hl, hl                                       ; $413d: $29
	sbc $14                                          ; $413e: $de $14
	sub [hl]                                         ; $4140: $96
	add hl, hl                                       ; $4141: $29
	jp z, $15a9                                      ; $4142: $ca $a9 $15

	dec d                                            ; $4145: $15

jr_05e_4146:
	ld a, [bc]                                       ; $4146: $0a
	adc d                                            ; $4147: $8a
	jp z, $de46                                      ; $4148: $ca $46 $de

	sbc a                                            ; $414b: $9f
	sbc [hl]                                         ; $414c: $9e
	rra                                              ; $414d: $1f
	sbc $9f                                          ; $414e: $de $9f
	sbc [hl]                                         ; $4150: $9e
	ld e, a                                          ; $4151: $5f
	sbc $60                                          ; $4152: $de $60
	db $dd                                           ; $4154: $dd
	ldh [$9b], a                                     ; $4155: $e0 $9b
	ld h, b                                          ; $4157: $60
	push af                                          ; $4158: $f5
	ld a, [$78fa]                                    ; $4159: $fa $fa $78
	dec l                                            ; $415c: $2d
	sbc b                                            ; $415d: $98
	ld a, [$1bfe]                                    ; $415e: $fa $fe $1b
	inc de                                           ; $4161: $13
	inc de                                           ; $4162: $13
	ld a, [de]                                       ; $4163: $1a

jr_05e_4164:
	ld e, $7a                                        ; $4164: $1e $7a
	add $df                                          ; $4166: $c6 $df
	ld bc, $a199                                     ; $4168: $01 $99 $a1
	jr nc, jr_05e_41bd                               ; $416b: $30 $50

	ld l, c                                          ; $416d: $69
	jp hl                                            ; $416e: $e9


	ld e, c                                          ; $416f: $59
	ld a, c                                          ; $4170: $79
	jp nz, Jump_05e_6fdf                             ; $4171: $c2 $df $6f

	rst SubAFromDE                                          ; $4174: $df
	ld c, a                                          ; $4175: $4f
	ld a, h                                          ; $4176: $7c
	ld a, e                                          ; $4177: $7b
	ld a, a                                          ; $4178: $7f
	add hl, bc                                       ; $4179: $09
	sbc d                                            ; $417a: $9a
	rra                                              ; $417b: $1f
	rla                                              ; $417c: $17
	inc de                                           ; $417d: $13
	ld [de], a                                       ; $417e: $12
	ld [bc], a                                       ; $417f: $02
	ld [hl], h                                       ; $4180: $74
	and d                                            ; $4181: $a2
	ld [hl], h                                       ; $4182: $74
	and a                                            ; $4183: $a7
	ld a, l                                          ; $4184: $7d
	jr c, jr_05e_4164                                ; $4185: $38 $dd

	rst $38                                          ; $4187: $ff
	sbc [hl]                                         ; $4188: $9e
	ccf                                              ; $4189: $3f
	ei                                               ; $418a: $fb
	sbc [hl]                                         ; $418b: $9e
	ret nz                                           ; $418c: $c0

	jp c, $80ff                                      ; $418d: $da $ff $80

	db $fd                                           ; $4190: $fd
	ld [$0149], a                            ; $4191: $ea $49 $01
	ld bc, $0202                                     ; $4194: $01 $02 $02
	inc b                                            ; $4197: $04
	ld e, $ff                                        ; $4198: $1e $ff
	rst $38                                          ; $419a: $ff
	jp nc, $d9fb                                     ; $419b: $d2 $fb $d9

	reti                                             ; $419e: $d9


	call $c1cd                                       ; $419f: $cd $cd $c1
	pop hl                                           ; $41a2: $e1
	dec l                                            ; $41a3: $2d
	inc b                                            ; $41a4: $04
	ld h, $26                                        ; $41a5: $26 $26
	ld [hl-], a                                      ; $41a7: $32
	ld [hl-], a                                      ; $41a8: $32
	ld a, d                                          ; $41a9: $7a
	ld a, d                                          ; $41aa: $7a
	ld [hl], h                                       ; $41ab: $74
	jr z, @+$32                                      ; $41ac: $28 $30

	sub l                                            ; $41ae: $95
	sub e                                            ; $41af: $93
	cp d                                             ; $41b0: $ba
	db $f4                                           ; $41b1: $f4
	ld [hl], b                                       ; $41b2: $70
	ld d, b                                          ; $41b3: $50
	db $eb                                           ; $41b4: $eb
	rst FarCall                                          ; $41b5: $f7
	rst $38                                          ; $41b6: $ff
	ld a, d                                          ; $41b7: $7a
	ld d, l                                          ; $41b8: $55
	ld e, e                                          ; $41b9: $5b
	rst SubAFromDE                                          ; $41ba: $df
	rst $38                                          ; $41bb: $ff
	halt                                             ; $41bc: $76

jr_05e_41bd:
	call nz, Call_05e_60df                           ; $41bd: $c4 $df $60
	adc d                                            ; $41c0: $8a
	ld l, b                                          ; $41c1: $68
	ldh a, [$d1]                                     ; $41c2: $f0 $d1
	jp nc, $d0d0                                     ; $41c4: $d2 $d0 $d0

	ldh a, [$d0]                                     ; $41c7: $f0 $d0
	ld d, b                                          ; $41c9: $50
	ld c, b                                          ; $41ca: $48
	and d                                            ; $41cb: $a2
	ld d, l                                          ; $41cc: $55
	xor d                                            ; $41cd: $aa
	push de                                          ; $41ce: $d5
	xor d                                            ; $41cf: $aa
	ld b, l                                          ; $41d0: $45
	and d                                            ; $41d1: $a2
	nop                                              ; $41d2: $00
	ld b, l                                          ; $41d3: $45
	and d                                            ; $41d4: $a2
	ld d, l                                          ; $41d5: $55
	ld a, c                                          ; $41d6: $79
	ld e, c                                          ; $41d7: $59

jr_05e_41d8:
	adc d                                            ; $41d8: $8a
	ld b, c                                          ; $41d9: $41
	nop                                              ; $41da: $00
	nop                                              ; $41db: $00
	inc d                                            ; $41dc: $14
	jp c, $a844                                      ; $41dd: $da $44 $a8

	call c, $3428                                    ; $41e0: $dc $28 $34
	ld b, b                                          ; $41e3: $40
	ld a, [hl+]                                      ; $41e4: $2a
	inc b                                            ; $41e5: $04
	adc b                                            ; $41e6: $88
	ld b, h                                          ; $41e7: $44
	jr nz, jr_05e_41fe                               ; $41e8: $20 $14

	ld [$2a40], sp                                   ; $41ea: $08 $40 $2a
	dec [hl]                                         ; $41ed: $35
	ld [hl], e                                       ; $41ee: $73
	cp $9e                                           ; $41ef: $fe $9e
	ld b, b                                          ; $41f1: $40
	jp c, $9920                                      ; $41f2: $da $20 $99

	ld d, h                                          ; $41f5: $54
	nop                                              ; $41f6: $00
	rst $38                                          ; $41f7: $ff
	rlca                                             ; $41f8: $07
	dec bc                                           ; $41f9: $0b
	rst FarCall                                          ; $41fa: $f7
	ld a, c                                          ; $41fb: $79
	add e                                            ; $41fc: $83
	ld a, l                                          ; $41fd: $7d

jr_05e_41fe:
	rst FarCall                                          ; $41fe: $f7
	sbc l                                            ; $41ff: $9d
	rlca                                             ; $4200: $07
	ld sp, hl                                        ; $4201: $f9
	ld a, d                                          ; $4202: $7a
	ld c, e                                          ; $4203: $4b
	add b                                            ; $4204: $80
	ld a, e                                          ; $4205: $7b
	ld [hl], e                                       ; $4206: $73
	or $7a                                           ; $4207: $f6 $7a
	db $f4                                           ; $4209: $f4
	or $6d                                           ; $420a: $f6 $6d
	db $ec                                           ; $420c: $ec
	ldh [$e1], a                                     ; $420d: $e0 $e1
	ld b, a                                          ; $420f: $47
	call z, $9ad9                                    ; $4210: $cc $d9 $9a
	or [hl]                                          ; $4213: $b6
	scf                                              ; $4214: $37
	ld e, $fd                                        ; $4215: $1e $fd
	cp $1f                                           ; $4217: $fe $1f
	rra                                              ; $4219: $1f
	add sp, -$24                                     ; $421a: $e8 $dc
	or b                                             ; $421c: $b0
	halt                                             ; $421d: $76
	push af                                          ; $421e: $f5
	ld a, [de]                                       ; $421f: $1a
	rlca                                             ; $4220: $07
	ret c                                            ; $4221: $d8

	jr nc, jr_05e_4284                               ; $4222: $30 $60

	add b                                            ; $4224: $80
	ret nz                                           ; $4225: $c0

	cp h                                             ; $4226: $bc
	db $fc                                           ; $4227: $fc
	halt                                             ; $4228: $76
	ld l, $1e                                        ; $4229: $2e $1e
	rra                                              ; $422b: $1f
	rla                                              ; $422c: $17
	rrca                                             ; $422d: $0f
	jr nz, jr_05e_41d8                               ; $422e: $20 $a8

	ld h, b                                          ; $4230: $60
	jr nc, jr_05e_4243                               ; $4231: $30 $10

	db $10                                           ; $4233: $10
	jr jr_05e_423e                                   ; $4234: $18 $08

	inc h                                            ; $4236: $24
	inc h                                            ; $4237: $24
	inc b                                            ; $4238: $04
	inc b                                            ; $4239: $04
	jr jr_05e_425e                                   ; $423a: $18 $22

	add hl, bc                                       ; $423c: $09
	db $10                                           ; $423d: $10

jr_05e_423e:
	ld [$2808], sp                                   ; $423e: $08 $08 $28
	jr z, jr_05e_4267                                ; $4241: $28 $24

jr_05e_4243:
	inc d                                            ; $4243: $14
	sub l                                            ; $4244: $95
	ld [de], a                                       ; $4245: $12
	add hl, bc                                       ; $4246: $09
	add b                                            ; $4247: $80
	ret nz                                           ; $4248: $c0

	add b                                            ; $4249: $80
	db $10                                           ; $424a: $10
	add c                                            ; $424b: $81
	and b                                            ; $424c: $a0
	dec b                                            ; $424d: $05
	inc h                                            ; $424e: $24
	ld a, c                                          ; $424f: $79
	ld h, h                                          ; $4250: $64
	sbc d                                            ; $4251: $9a
	and b                                            ; $4252: $a0
	ld a, $07                                        ; $4253: $3e $07
	and d                                            ; $4255: $a2
	sub d                                            ; $4256: $92
	ld a, d                                          ; $4257: $7a
	jp $1a9a                                         ; $4258: $c3 $9a $1a


	inc h                                            ; $425b: $24
	db $10                                           ; $425c: $10
	and h                                            ; $425d: $a4

jr_05e_425e:
	ld h, c                                          ; $425e: $61
	halt                                             ; $425f: $76
	cp d                                             ; $4260: $ba
	adc c                                            ; $4261: $89
	dec de                                           ; $4262: $1b
	and $43                                          ; $4263: $e6 $43
	add d                                            ; $4265: $82
	ld e, d                                          ; $4266: $5a

jr_05e_4267:
	adc d                                            ; $4267: $8a
	ld a, [bc]                                       ; $4268: $0a
	ld a, [bc]                                       ; $4269: $0a
	ld b, [hl]                                       ; $426a: $46
	dec d                                            ; $426b: $15
	nop                                              ; $426c: $00
	inc c                                            ; $426d: $0c
	dec h                                            ; $426e: $25
	ld [hl], l                                       ; $426f: $75
	or l                                             ; $4270: $b5
	or l                                             ; $4271: $b5
	cp c                                             ; $4272: $b9
	ld [$c0ee], a                                    ; $4273: $ea $ee $c0
	ld e, a                                          ; $4276: $5f
	ld e, a                                          ; $4277: $5f
	sbc $3f                                          ; $4278: $de $3f
	sbc $1f                                          ; $427a: $de $1f
	rst SubAFromDE                                          ; $427c: $df
	ld h, b                                          ; $427d: $60
	sbc $20                                          ; $427e: $de $20
	rst SubAFromDE                                          ; $4280: $df
	db $10                                           ; $4281: $10
	sbc [hl]                                         ; $4282: $9e
	rla                                              ; $4283: $17

jr_05e_4284:
	db $dd                                           ; $4284: $dd
	rst $38                                          ; $4285: $ff
	sbc e                                            ; $4286: $9b
	cp $fd                                           ; $4287: $fe $fd

jr_05e_4289:
	di                                               ; $4289: $f3
	rst AddAOntoHL                                          ; $428a: $ef
	ld a, d                                          ; $428b: $7a
	sub h                                            ; $428c: $94
	ld a, [hl]                                       ; $428d: $7e
	cp $8e                                           ; $428e: $fe $8e
	dec c                                            ; $4290: $0d
	ld [de], a                                       ; $4291: $12
	db $ec                                           ; $4292: $ec
	ld c, h                                          ; $4293: $4c
	xor h                                            ; $4294: $ac
	cp $7f                                           ; $4295: $fe $7f
	db $e3                                           ; $4297: $e3
	pop bc                                           ; $4298: $c1
	ret nz                                           ; $4299: $c0

	ld h, b                                          ; $429a: $60
	rst $38                                          ; $429b: $ff
	rst $38                                          ; $429c: $ff
	ei                                               ; $429d: $fb
	ld hl, $c0e0                                     ; $429e: $21 $e0 $c0
	ld a, e                                          ; $42a1: $7b
	and d                                            ; $42a2: $a2
	sbc b                                            ; $42a3: $98
	add h                                            ; $42a4: $84
	ld c, [hl]                                       ; $42a5: $4e
	jp hl                                            ; $42a6: $e9


	cp c                                             ; $42a7: $b9
	db $ed                                           ; $42a8: $ed
	db $fd                                           ; $42a9: $fd
	ld a, a                                          ; $42aa: $7f
	ld a, e                                          ; $42ab: $7b
	ldh a, [hDisp0_LCDC]                                     ; $42ac: $f0 $82
	ei                                               ; $42ae: $fb
	ld a, e                                          ; $42af: $7b
	dec sp                                           ; $42b0: $3b
	dec de                                           ; $42b1: $1b
	dec de                                           ; $42b2: $1b
	ld b, d                                          ; $42b3: $42
	ld l, d                                          ; $42b4: $6a
	ld e, b                                          ; $42b5: $58
	ld e, l                                          ; $42b6: $5d
	ld [hl], $22                                     ; $42b7: $36 $22
	nop                                              ; $42b9: $00
	nop                                              ; $42ba: $00
	cp l                                             ; $42bb: $bd
	sub l                                            ; $42bc: $95
	add l                                            ; $42bd: $85
	add b                                            ; $42be: $80
	ret                                              ; $42bf: $c9


	db $dd                                           ; $42c0: $dd
	rst $38                                          ; $42c1: $ff
	rst $38                                          ; $42c2: $ff
	ld b, c                                          ; $42c3: $41
	dec b                                            ; $42c4: $05
	dec b                                            ; $42c5: $05
	dec h                                            ; $42c6: $25
	dec h                                            ; $42c7: $25
	add hl, hl                                       ; $42c8: $29
	ld a, [hl+]                                      ; $42c9: $2a
	ld [de], a                                       ; $42ca: $12
	db $db                                           ; $42cb: $db
	rst $38                                          ; $42cc: $ff
	rst SubAFromDE                                          ; $42cd: $df
	cp $84                                           ; $42ce: $fe $84
	pop de                                           ; $42d0: $d1
	adc l                                            ; $42d1: $8d
	xor l                                            ; $42d2: $ad
	xor l                                            ; $42d3: $ad
	add hl, bc                                       ; $42d4: $09
	ld e, d                                          ; $42d5: $5a
	ld [hl], d                                       ; $42d6: $72
	di                                               ; $42d7: $f3
	ld e, d                                          ; $42d8: $5a
	adc e                                            ; $42d9: $8b
	xor e                                            ; $42da: $ab
	dec hl                                           ; $42db: $2b
	rrca                                             ; $42dc: $0f
	rla                                              ; $42dd: $17
	ccf                                              ; $42de: $3f
	sbc a                                            ; $42df: $9f
	ld d, c                                          ; $42e0: $51
	ld d, [hl]                                       ; $42e1: $56
	ld h, l                                          ; $42e2: $65
	ld l, $4d                                        ; $42e3: $2e $4d
	ld c, [hl]                                       ; $42e5: $4e
	adc l                                            ; $42e6: $8d
	adc d                                            ; $42e7: $8a
	db $fc                                           ; $42e8: $fc
	ld hl, sp-$08                                    ; $42e9: $f8 $f8
	db $dd                                           ; $42eb: $dd
	ldh a, [$99]                                     ; $42ec: $f0 $99
	ld [hl], b                                       ; $42ee: $70
	ld sp, $70b0                                     ; $42ef: $31 $b0 $70
	or b                                             ; $42f2: $b0
	ld [hl], c                                       ; $42f3: $71
	ld a, e                                          ; $42f4: $7b
	db $fc                                           ; $42f5: $fc
	sbc l                                            ; $42f6: $9d
	ld l, b                                          ; $42f7: $68
	add hl, hl                                       ; $42f8: $29
	db $db                                           ; $42f9: $db
	jr z, jr_05e_4289                                ; $42fa: $28 $8d

	ld d, b                                          ; $42fc: $50
	xor d                                            ; $42fd: $aa
	call Call_05e_55aa                               ; $42fe: $cd $aa $55
	and c                                            ; $4301: $a1

jr_05e_4302:
	call nc, $28aa                                   ; $4302: $d4 $aa $28
	ld d, l                                          ; $4305: $55
	ld [hl+], a                                      ; $4306: $22
	ld b, h                                          ; $4307: $44
	xor d                                            ; $4308: $aa
	ld b, b                                          ; $4309: $40
	ld a, [hl+]                                      ; $430a: $2a
	ld b, l                                          ; $430b: $45
	nop                                              ; $430c: $00
	xor b                                            ; $430d: $a8
	ld [hl], a                                       ; $430e: $77
	rst FarCall                                          ; $430f: $f7
	sub l                                            ; $4310: $95
	ld d, h                                          ; $4311: $54
	and d                                            ; $4312: $a2
	nop                                              ; $4313: $00
	ld d, h                                          ; $4314: $54
	xor d                                            ; $4315: $aa
	ld b, l                                          ; $4316: $45
	xor d                                            ; $4317: $aa
	ld d, h                                          ; $4318: $54
	ld a, [hl+]                                      ; $4319: $2a
	ld b, h                                          ; $431a: $44
	halt                                             ; $431b: $76
	call nz, $179b                                   ; $431c: $c4 $9b $17
	ld a, [de]                                       ; $431f: $1a
	rra                                              ; $4320: $1f
	ld a, [de]                                       ; $4321: $1a
	db $dd                                           ; $4322: $dd
	jr nz, jr_05e_4302                               ; $4323: $20 $dd

	db $10                                           ; $4325: $10
	reti                                             ; $4326: $d9


	rst $38                                          ; $4327: $ff
	sbc $02                                          ; $4328: $de $02
	sbc $01                                          ; $432a: $de $01
	rst $38                                          ; $432c: $ff
	add b                                            ; $432d: $80
	db $ed                                           ; $432e: $ed
	cp $b7                                           ; $432f: $fe $b7
	cp l                                             ; $4331: $bd
	cp a                                             ; $4332: $bf
	cp $ef                                           ; $4333: $fe $ef
	rst GetHLinHL                                          ; $4335: $cf
	scf                                              ; $4336: $37
	inc de                                           ; $4337: $13
	dec de                                           ; $4338: $1b
	rrca                                             ; $4339: $0f
	dec b                                            ; $433a: $05
	dec b                                            ; $433b: $05
	sub h                                            ; $433c: $94
	sub h                                            ; $433d: $94
	ld b, b                                          ; $433e: $40
	add b                                            ; $433f: $80
	call nz, $1676                                   ; $4340: $c4 $76 $16
	adc c                                            ; $4343: $89
	ld [hl], c                                       ; $4344: $71
	ret nc                                           ; $4345: $d0

	add b                                            ; $4346: $80
	nop                                              ; $4347: $00
	add b                                            ; $4348: $80
	ld h, b                                          ; $4349: $60
	ld a, a                                          ; $434a: $7f
	rst AddAOntoHL                                          ; $434b: $ef
	rst $38                                          ; $434c: $ff
	adc e                                            ; $434d: $8b
	dec a                                            ; $434e: $3d
	rrca                                             ; $434f: $0f
	rrca                                             ; $4350: $0f
	dec bc                                           ; $4351: $0b
	ld a, [hl]                                       ; $4352: $7e
	rst JumpTable                                          ; $4353: $c7
	rlca                                             ; $4354: $07
	adc l                                            ; $4355: $8d
	ld [hl], e                                       ; $4356: $73
	ld [$0e08], sp                                   ; $4357: $08 $08 $0e
	inc a                                            ; $435a: $3c
	db $f4                                           ; $435b: $f4
	inc [hl]                                         ; $435c: $34
	cp [hl]                                          ; $435d: $be
	ld [hl], d                                       ; $435e: $72
	nop                                              ; $435f: $00
	add b                                            ; $4360: $80
	add e                                            ; $4361: $83
	ld a, c                                          ; $4362: $79
	halt                                             ; $4363: $76
	rst SubAFromDE                                          ; $4364: $df
	ret nz                                           ; $4365: $c0

	sbc l                                            ; $4366: $9d
	inc c                                            ; $4367: $0c
	rlca                                             ; $4368: $07
	ei                                               ; $4369: $fb
	sub [hl]                                         ; $436a: $96
	ret nc                                           ; $436b: $d0

	ld b, $80                                        ; $436c: $06 $80
	jr nz, @+$42                                     ; $436e: $20 $40

	db $10                                           ; $4370: $10
	jr z, @+$16                                      ; $4371: $28 $14

	rrca                                             ; $4373: $0f
	ld a, c                                          ; $4374: $79
	ld h, d                                          ; $4375: $62
	ld a, e                                          ; $4376: $7b
	sbc [hl]                                         ; $4377: $9e
	add b                                            ; $4378: $80
	ld [$1480], sp                                   ; $4379: $08 $80 $14
	and e                                            ; $437c: $a3
	inc e                                            ; $437d: $1c
	add b                                            ; $437e: $80
	ld b, c                                          ; $437f: $41
	ld e, $00                                        ; $4380: $1e $00
	ld [hl+], a                                      ; $4382: $22
	ld [hl+], a                                      ; $4383: $22
	inc e                                            ; $4384: $1c
	jp $3e7f                                         ; $4385: $c3 $7f $3e


	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	add h                                            ; $438a: $84
	inc b                                            ; $438b: $04
	ld b, h                                          ; $438c: $44
	inc b                                            ; $438d: $04
	add h                                            ; $438e: $84
	inc c                                            ; $438f: $0c
	ld [bc], a                                       ; $4390: $02
	ccf                                              ; $4391: $3f
	nop                                              ; $4392: $00
	ret nz                                           ; $4393: $c0

	add b                                            ; $4394: $80
	add b                                            ; $4395: $80
	nop                                              ; $4396: $00
	nop                                              ; $4397: $00
	add d                                            ; $4398: $82
	dec c                                            ; $4399: $0d
	ccf                                              ; $439a: $3f
	add hl, de                                       ; $439b: $19
	dec d                                            ; $439c: $15
	rra                                              ; $439d: $1f
	jr nc, jr_05e_43df                               ; $439e: $30 $3f

	ld a, a                                          ; $43a0: $7f
	rst $38                                          ; $43a1: $ff
	rst AddAOntoHL                                          ; $43a2: $ef
	jr jr_05e_43b8                                   ; $43a3: $18 $13

	rra                                              ; $43a5: $1f
	jr nz, jr_05e_43d8                               ; $43a6: $20 $30

	ld a, a                                          ; $43a8: $7f
	jp c, $f8aa                                      ; $43a9: $da $aa $f8

	db $ec                                           ; $43ac: $ec
	ldh [c], a                                       ; $43ad: $e2
	ld bc, $c001                                     ; $43ae: $01 $01 $c0
	ldh [$f0], a                                     ; $43b1: $e0 $f0
	rst SubAFromDE                                          ; $43b3: $df
	daa                                              ; $43b4: $27
	jp Jump_05e_727b                                 ; $43b5: $c3 $7b $72


jr_05e_43b8:
	ld a, a                                          ; $43b8: $7f
	and [hl]                                         ; $43b9: $a6
	ld a, [hl]                                       ; $43ba: $7e
	ld e, e                                          ; $43bb: $5b
	sub a                                            ; $43bc: $97
	inc c                                            ; $43bd: $0c
	ld [$c48c], sp                                   ; $43be: $08 $8c $c4
	ld h, [hl]                                       ; $43c1: $66
	ld h, e                                          ; $43c2: $63
	ldh [$f0], a                                     ; $43c3: $e0 $f0
	ld a, e                                          ; $43c5: $7b
	ld c, $9c                                        ; $43c6: $0e $9c
	ld a, h                                          ; $43c8: $7c
	inc a                                            ; $43c9: $3c
	ld a, $dd                                        ; $43ca: $3e $dd
	ccf                                              ; $43cc: $3f
	adc e                                            ; $43cd: $8b
	ld a, l                                          ; $43ce: $7d
	ld a, a                                          ; $43cf: $7f
	ei                                               ; $43d0: $fb
	rst FarCall                                          ; $43d1: $f7
	add hl, bc                                       ; $43d2: $09
	ld [rRAMG], sp                                   ; $43d3: $08 $00 $00
	ld [bc], a                                       ; $43d6: $02
	inc b                                            ; $43d7: $04

jr_05e_43d8:
	inc c                                            ; $43d8: $0c
	jr c, @+$22                                      ; $43d9: $38 $20

	and d                                            ; $43db: $a2
	and d                                            ; $43dc: $a2
	ldh a, [c]                                       ; $43dd: $f2
	ld sp, hl                                        ; $43de: $f9

jr_05e_43df:
	db $fd                                           ; $43df: $fd
	rst $38                                          ; $43e0: $ff
	db $fc                                           ; $43e1: $fc
	sbc $ff                                          ; $43e2: $de $ff
	add b                                            ; $43e4: $80
	ld e, a                                          ; $43e5: $5f
	rrca                                             ; $43e6: $0f
	rlca                                             ; $43e7: $07
	inc bc                                           ; $43e8: $03
	inc e                                            ; $43e9: $1c
	ld d, l                                          ; $43ea: $55
	ld e, e                                          ; $43eb: $5b
	ld e, a                                          ; $43ec: $5f
	ld a, a                                          ; $43ed: $7f
	ld a, a                                          ; $43ee: $7f
	rst $38                                          ; $43ef: $ff
	ld e, $10                                        ; $43f0: $1e $10
	db $fc                                           ; $43f2: $fc
	ld sp, hl                                        ; $43f3: $f9
	ldh a, [c]                                       ; $43f4: $f2
	db $e4                                           ; $43f5: $e4
	ld hl, sp-$1f                                    ; $43f6: $f8 $e1
	ld a, $f1                                        ; $43f8: $3e $f1
	sbc $cd                                          ; $43fa: $de $cd
	adc $9f                                          ; $43fc: $ce $9f
	rst $38                                          ; $43fe: $ff
	pop hl                                           ; $43ff: $e1
	inc bc                                           ; $4400: $03
	inc c                                            ; $4401: $0c
	adc d                                            ; $4402: $8a
	inc b                                            ; $4403: $04
	sub a                                            ; $4404: $97
	inc b                                            ; $4405: $04
	ld b, $1e                                        ; $4406: $06 $1e
	db $e3                                           ; $4408: $e3
	rra                                              ; $4409: $1f
	db $fc                                           ; $440a: $fc
	adc l                                            ; $440b: $8d
	adc d                                            ; $440c: $8a
	ld [hl], e                                       ; $440d: $73
	cp $9e                                           ; $440e: $fe $9e
	adc [hl]                                         ; $4410: $8e
	db $db                                           ; $4411: $db
	ld [hl], b                                       ; $4412: $70
	ld a, d                                          ; $4413: $7a
	cp a                                             ; $4414: $bf
	ld a, d                                          ; $4415: $7a
	call nz, $fe7f                                   ; $4416: $c4 $7f $fe
	sbc l                                            ; $4419: $9d
	ld [hl], h                                       ; $441a: $74
	cp b                                             ; $441b: $b8
	jp c, $9928                                      ; $441c: $da $28 $99

	inc h                                            ; $441f: $24
	ld b, l                                          ; $4420: $45
	xor d                                            ; $4421: $aa
	dec e                                            ; $4422: $1d
	nop                                              ; $4423: $00
	ld [$8575], sp                                   ; $4424: $08 $75 $85
	sbc [hl]                                         ; $4427: $9e
	ld d, l                                          ; $4428: $55
	ld a, b                                          ; $4429: $78
	xor [hl]                                         ; $442a: $ae
	ld a, a                                          ; $442b: $7f
	ld sp, hl                                        ; $442c: $f9
	ld a, a                                          ; $442d: $7f
	cp $8c                                           ; $442e: $fe $8c
	cp d                                             ; $4430: $ba
	ld d, [hl]                                       ; $4431: $56
	ld h, b                                          ; $4432: $60
	nop                                              ; $4433: $00
	dec b                                            ; $4434: $05
	xor a                                            ; $4435: $af
	jr @-$5c                                         ; $4436: $18 $a2

	ld b, l                                          ; $4438: $45
	and c                                            ; $4439: $a1
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	ld a, [bc]                                       ; $443c: $0a
	ld d, b                                          ; $443d: $50
	jr nz, jr_05e_445f                               ; $443e: $20 $1f

	sbc d                                            ; $4440: $9a
	rra                                              ; $4441: $1f
	dec de                                           ; $4442: $1b
	db $dd                                           ; $4443: $dd
	rra                                              ; $4444: $1f
	reti                                             ; $4445: $d9


	db $10                                           ; $4446: $10
	reti                                             ; $4447: $d9


	rst $38                                          ; $4448: $ff
	ld a, [hl]                                       ; $4449: $7e
	ld [de], a                                       ; $444a: $12
	db $dd                                           ; $444b: $dd
	ld bc, $dfff                                     ; $444c: $01 $ff $df
	call $8780                                       ; $444f: $cd $80 $87
	and [hl]                                         ; $4452: $a6
	or a                                             ; $4453: $b7
	sub $de                                          ; $4454: $d6 $de
	sbc [hl]                                         ; $4456: $9e
	sub [hl]                                         ; $4457: $96
	ld d, $5a                                        ; $4458: $16 $5a
	ld e, e                                          ; $445a: $5b
	ld c, c                                          ; $445b: $49
	add hl, hl                                       ; $445c: $29
	and c                                            ; $445d: $a1
	and c                                            ; $445e: $a1

jr_05e_445f:
	ret nc                                           ; $445f: $d0

	cp [hl]                                          ; $4460: $be
	rst $38                                          ; $4461: $ff
	pop af                                           ; $4462: $f1
	ld a, a                                          ; $4463: $7f
	cp h                                             ; $4464: $bc
	rst AddAOntoHL                                          ; $4465: $ef
	sbc a                                            ; $4466: $9f
	ld c, [hl]                                       ; $4467: $4e
	ldh [$1f], a                                     ; $4468: $e0 $1f
	ld de, $c08e                                     ; $446a: $11 $8e $c0
	ld [hl], b                                       ; $446d: $70
	ld a, a                                          ; $446e: $7f
	add e                                            ; $446f: $83
	sub l                                            ; $4470: $95
	jp nz, $81e1                                     ; $4471: $c2 $e1 $81

	ld bc, $4101                                     ; $4474: $01 $01 $41
	rst $38                                          ; $4477: $ff
	add d                                            ; $4478: $82
	jp $dda1                                         ; $4479: $c3 $a1 $dd


	ld bc, $ff9e                                     ; $447c: $01 $9e $ff
	db $dd                                           ; $447f: $dd
	ldh [$7b], a                                     ; $4480: $e0 $7b
	ld a, d                                          ; $4482: $7a
	sbc [hl]                                         ; $4483: $9e
	ld hl, sp-$05                                    ; $4484: $f8 $fb
	rst SubAFromDE                                          ; $4486: $df
	add b                                            ; $4487: $80
	sub e                                            ; $4488: $93
	add hl, bc                                       ; $4489: $09
	inc b                                            ; $448a: $04
	nop                                              ; $448b: $00
	ld [$0004], sp                                   ; $448c: $08 $04 $00
	ld de, $0618                                     ; $448f: $11 $18 $06
	inc bc                                           ; $4492: $03
	inc b                                            ; $4493: $04
	inc b                                            ; $4494: $04
	sbc $08                                          ; $4495: $de $08
	sub e                                            ; $4497: $93
	inc bc                                           ; $4498: $03
	nop                                              ; $4499: $00
	ld a, h                                          ; $449a: $7c
	add [hl]                                         ; $449b: $86
	nop                                              ; $449c: $00
	jr nz, jr_05e_44bf                               ; $449d: $20 $20

	nop                                              ; $449f: $00
	adc b                                            ; $44a0: $88
	nop                                              ; $44a1: $00
	add e                                            ; $44a2: $83
	ld a, b                                          ; $44a3: $78
	cp $91                                           ; $44a4: $fe $91
	ldh [$30], a                                     ; $44a6: $e0 $30
	inc a                                            ; $44a8: $3c
	cp a                                             ; $44a9: $bf
	ld [hl], b                                       ; $44aa: $70
	ldh a, [$b2]                                     ; $44ab: $f0 $b2
	ld [hl], c                                       ; $44ad: $71
	ld h, c                                          ; $44ae: $61
	pop bc                                           ; $44af: $c1

jr_05e_44b0:
	db $10                                           ; $44b0: $10
	rrca                                             ; $44b1: $0f
	nop                                              ; $44b2: $00
	inc bc                                           ; $44b3: $03
	ld a, b                                          ; $44b4: $78
	sbc l                                            ; $44b5: $9d
	add d                                            ; $44b6: $82
	ld [bc], a                                       ; $44b7: $02
	rst SubAFromBC                                          ; $44b8: $e7
	ld h, d                                          ; $44b9: $62
	ld [hl+], a                                      ; $44ba: $22
	ld bc, $1119                                     ; $44bb: $01 $19 $11
	sub b                                            ; $44be: $90

jr_05e_44bf:
	db $10                                           ; $44bf: $10
	rst GetHLinHL                                          ; $44c0: $cf
	inc hl                                           ; $44c1: $23
	inc de                                           ; $44c2: $13
	ld de, $0901                                     ; $44c3: $11 $01 $09
	jr z, jr_05e_44b0                                ; $44c6: $28 $e8

	db $fc                                           ; $44c8: $fc
	db $fc                                           ; $44c9: $fc
	rra                                              ; $44ca: $1f

jr_05e_44cb:
	rrca                                             ; $44cb: $0f
	inc bc                                           ; $44cc: $03
	ld bc, $8281                                     ; $44cd: $01 $81 $82
	ld [hl], b                                       ; $44d0: $70
	db $ec                                           ; $44d1: $ec
	pop af                                           ; $44d2: $f1
	db $fd                                           ; $44d3: $fd
	ld [hl], l                                       ; $44d4: $75
	cp a                                             ; $44d5: $bf
	sub h                                            ; $44d6: $94

jr_05e_44d7:
	ld [hl], c                                       ; $44d7: $71
	sub b                                            ; $44d8: $90
	ld e, $21                                        ; $44d9: $1e $21
	ld h, c                                          ; $44db: $61
	sub b                                            ; $44dc: $90

jr_05e_44dd:
	stop                                             ; $44dd: $10 $00
	ld a, a                                          ; $44df: $7f
	sbc a                                            ; $44e0: $9f
	rra                                              ; $44e1: $1f
	ld [hl], e                                       ; $44e2: $73
	ld hl, sp-$72                                    ; $44e3: $f8 $8e
	rst $38                                          ; $44e5: $ff
	cp a                                             ; $44e6: $bf
	cp b                                             ; $44e7: $b8
	ld e, b                                          ; $44e8: $58
	ld e, b                                          ; $44e9: $58
	ret c                                            ; $44ea: $d8

	ld d, h                                          ; $44eb: $54
	daa                                              ; $44ec: $27
	ld hl, sp-$01                                    ; $44ed: $f8 $ff
	ld hl, sp-$01                                    ; $44ef: $f8 $ff
	db $fc                                           ; $44f1: $fc
	db $fc                                           ; $44f2: $fc
	ld a, a                                          ; $44f3: $7f
	ccf                                              ; $44f4: $3f
	ldh [$fd], a                                     ; $44f5: $e0 $fd
	sbc d                                            ; $44f7: $9a
	ld bc, $01fe                                     ; $44f8: $01 $fe $01
	db $e3                                           ; $44fb: $e3
	rra                                              ; $44fc: $1f
	call c, $82ff                                    ; $44fd: $dc $ff $82
	ld bc, $2c28                                     ; $4500: $01 $28 $2c
	rla                                              ; $4503: $17
	ld a, [hl-]                                      ; $4504: $3a
	ld h, l                                          ; $4505: $65
	adc a                                            ; $4506: $8f
	inc c                                            ; $4507: $0c

jr_05e_4508:
	ldh a, [$df]                                     ; $4508: $f0 $df
	rst SubAFromDE                                          ; $450a: $df
	rst AddAOntoHL                                          ; $450b: $ef
	add $fb                                          ; $450c: $c6 $fb
	ldh a, [c]                                       ; $450e: $f2
	db $fc                                           ; $450f: $fc
	ldh a, [c]                                       ; $4510: $f2
	jr nc, jr_05e_44d7                               ; $4511: $30 $c4

	inc b                                            ; $4513: $04
	inc d                                            ; $4514: $14
	ld d, b                                          ; $4515: $50
	add b                                            ; $4516: $80
	ldh [c], a                                       ; $4517: $e2
	pop af                                           ; $4518: $f1
	ldh a, [$c8]                                     ; $4519: $f0 $c8
	jr nc, jr_05e_44dd                               ; $451b: $30 $c0

	ld a, d                                          ; $451d: $7a
	ld [hl], c                                       ; $451e: $71
	sbc h                                            ; $451f: $9c
	and b                                            ; $4520: $a0
	ld b, l                                          ; $4521: $45
	ld b, l                                          ; $4522: $45
	ld l, l                                          ; $4523: $6d
	rst JumpTable                                          ; $4524: $c7
	rst SubAFromDE                                          ; $4525: $df
	ld a, d                                          ; $4526: $7a
	ld l, l                                          ; $4527: $6d
	ld [$b89d], sp                                   ; $4528: $08 $9d $b8
	jr c, jr_05e_4508                                ; $452b: $38 $db

	jr jr_05e_44cb                                   ; $452d: $18 $9c

	ld d, h                                          ; $452f: $54
	call nc, $dcfc                                   ; $4530: $d4 $fc $dc
	db $f4                                           ; $4533: $f4
	add b                                            ; $4534: $80
	xor d                                            ; $4535: $aa
	ld d, $2a                                        ; $4536: $16 $2a
	ld d, l                                          ; $4538: $55
	ld l, d                                          ; $4539: $6a
	ld d, l                                          ; $453a: $55
	ld a, [hl+]                                      ; $453b: $2a
	inc b                                            ; $453c: $04
	ld d, l                                          ; $453d: $55
	ld [$2a14], sp                                   ; $453e: $08 $14 $2a
	dec d                                            ; $4541: $15
	ld a, [hl+]                                      ; $4542: $2a
	inc d                                            ; $4543: $14
	nop                                              ; $4544: $00
	add sp, $55                                      ; $4545: $e8 $55
	ld h, $d1                                        ; $4547: $26 $d1
	and d                                            ; $4549: $a2
	ld d, c                                          ; $454a: $51
	ld [hl+], a                                      ; $454b: $22
	ld sp, $2a10                                     ; $454c: $31 $10 $2a
	ld d, c                                          ; $454f: $51
	ld [hl+], a                                      ; $4550: $22
	ld d, c                                          ; $4551: $51
	and d                                            ; $4552: $a2
	ld d, c                                          ; $4553: $51
	adc [hl]                                         ; $4554: $8e
	ld [bc], a                                       ; $4555: $02
	adc a                                            ; $4556: $8f
	ld c, a                                          ; $4557: $4f
	adc a                                            ; $4558: $8f
	rrca                                             ; $4559: $0f
	adc e                                            ; $455a: $8b
	dec bc                                           ; $455b: $0b
	adc d                                            ; $455c: $8a
	ld [$8808], sp                                   ; $455d: $08 $08 $88
	ld [$0c08], sp                                   ; $4560: $08 $08 $0c
	adc h                                            ; $4563: $8c
	dec c                                            ; $4564: $0d
	adc a                                            ; $4565: $8f
	ld h, [hl]                                       ; $4566: $66
	pop bc                                           ; $4567: $c1
	ld a, [$ff8a]                                    ; $4568: $fa $8a $ff
	sub [hl]                                         ; $456b: $96
	sub $ff                                          ; $456c: $d6 $ff
	ei                                               ; $456e: $fb
	or a                                             ; $456f: $b7
	cp e                                             ; $4570: $bb
	cp a                                             ; $4571: $bf
	sub [hl]                                         ; $4572: $96
	xor c                                            ; $4573: $a9
	xor c                                            ; $4574: $a9
	add a                                            ; $4575: $87
	adc d                                            ; $4576: $8a
	adc $cb                                          ; $4577: $ce $cb
	rst JumpTable                                          ; $4579: $c7
	jp hl                                            ; $457a: $e9


	sbc h                                            ; $457b: $9c
	ldh a, [$80]                                     ; $457c: $f0 $80
	push de                                          ; $457e: $d5
	sbc $ff                                          ; $457f: $de $ff
	sbc l                                            ; $4581: $9d
	ccf                                              ; $4582: $3f
	ld a, b                                          ; $4583: $78
	ld [hl], e                                       ; $4584: $73
	ld d, a                                          ; $4585: $57
	sbc b                                            ; $4586: $98
	ret nz                                           ; $4587: $c0

	rst $38                                          ; $4588: $ff
	jr nc, jr_05e_459b                               ; $4589: $30 $10

	nop                                              ; $458b: $00
	jr nz, jr_05e_45fe                               ; $458c: $20 $70

	ld a, b                                          ; $458e: $78
	or a                                             ; $458f: $b7
	ld a, a                                          ; $4590: $7f
	ld sp, hl                                        ; $4591: $f9
	ei                                               ; $4592: $fb
	rst SubAFromDE                                          ; $4593: $df
	ld hl, sp-$69                                    ; $4594: $f8 $97
	xor b                                            ; $4596: $a8
	ld a, h                                          ; $4597: $7c
	ld a, h                                          ; $4598: $7c
	ld e, h                                          ; $4599: $5c
	inc a                                            ; $459a: $3c

jr_05e_459b:
	ld a, $80                                        ; $459b: $3e $80
	and b                                            ; $459d: $a0
	ld a, c                                          ; $459e: $79
	adc a                                            ; $459f: $8f
	ld a, b                                          ; $45a0: $78
	ld a, h                                          ; $45a1: $7c
	sbc h                                            ; $45a2: $9c
	ld a, [de]                                       ; $45a3: $1a
	jr jr_05e_45be                                   ; $45a4: $18 $18

	ld a, d                                          ; $45a6: $7a
	ld b, a                                          ; $45a7: $47
	db $fc                                           ; $45a8: $fc
	ld a, a                                          ; $45a9: $7f
	and b                                            ; $45aa: $a0
	ld a, [hl]                                       ; $45ab: $7e
	jp nz, $93ff                                     ; $45ac: $c2 $ff $93

	ld c, b                                          ; $45af: $48
	jr z, jr_05e_45d6                                ; $45b0: $28 $24

	jr nz, jr_05e_45f4                               ; $45b2: $20 $40

	nop                                              ; $45b4: $00
	ret nz                                           ; $45b5: $c0

	inc e                                            ; $45b6: $1c
	inc [hl]                                         ; $45b7: $34
	ld d, h                                          ; $45b8: $54
	ld e, b                                          ; $45b9: $58
	ld e, b                                          ; $45ba: $58
	ld a, c                                          ; $45bb: $79
	adc l                                            ; $45bc: $8d
	sbc [hl]                                         ; $45bd: $9e

jr_05e_45be:
	ld [bc], a                                       ; $45be: $02
	ld a, [$5476]                                    ; $45bf: $fa $76 $54
	db $fd                                           ; $45c2: $fd
	sbc e                                            ; $45c3: $9b
	and b                                            ; $45c4: $a0
	xor b                                            ; $45c5: $a8
	nop                                              ; $45c6: $00
	nop                                              ; $45c7: $00
	ld [hl], a                                       ; $45c8: $77
	or h                                             ; $45c9: $b4
	sbc h                                            ; $45ca: $9c
	ld e, b                                          ; $45cb: $58
	ld d, b                                          ; $45cc: $50
	ldh [$7a], a                                     ; $45cd: $e0 $7a
	sbc c                                            ; $45cf: $99
	rst $38                                          ; $45d0: $ff

jr_05e_45d1:
	sbc [hl]                                         ; $45d1: $9e
	add d                                            ; $45d2: $82
	sbc $41                                          ; $45d3: $de $41
	ld [hl], a                                       ; $45d5: $77

jr_05e_45d6:
	ld e, $7c                                        ; $45d6: $1e $7c
	ld c, d                                          ; $45d8: $4a
	rst SubAFromDE                                          ; $45d9: $df
	ld a, a                                          ; $45da: $7f
	ld [hl], a                                       ; $45db: $77
	ld e, $ff                                        ; $45dc: $1e $ff
	sbc c                                            ; $45de: $99
	adc b                                            ; $45df: $88
	adc [hl]                                         ; $45e0: $8e
	rst GetHLinHL                                          ; $45e1: $cf
	rst JumpTable                                          ; $45e2: $c7
	rst SubAFromBC                                          ; $45e3: $e7
	rst FarCall                                          ; $45e4: $f7
	ld l, [hl]                                       ; $45e5: $6e
	ld h, d                                          ; $45e6: $62
	adc d                                            ; $45e7: $8a
	add b                                            ; $45e8: $80
	add c                                            ; $45e9: $81
	ld a, $38                                        ; $45ea: $3e $38
	ld [hl], b                                       ; $45ec: $70
	ldh a, [$e0]                                     ; $45ed: $f0 $e0
	sbc $e1                                          ; $45ef: $de $e1
	add b                                            ; $45f1: $80
	jr jr_05e_4604                                   ; $45f2: $18 $10

jr_05e_45f4:
	jr nz, jr_05e_4616                               ; $45f4: $20 $20

	ld b, b                                          ; $45f6: $40
	sbc [hl]                                         ; $45f7: $9e
	pop hl                                           ; $45f8: $e1
	add b                                            ; $45f9: $80
	add $00                                          ; $45fa: $c6 $00
	dec d                                            ; $45fc: $15
	ld [hl], l                                       ; $45fd: $75

jr_05e_45fe:
	ld e, b                                          ; $45fe: $58
	sbc h                                            ; $45ff: $9c
	ld b, b                                          ; $4600: $40
	jr c, jr_05e_4618                                ; $4601: $38 $15

	ld [hl], e                                       ; $4603: $73

jr_05e_4604:
	sbc $99                                          ; $4604: $de $99
	ld b, b                                          ; $4606: $40
	ld [$c220], sp                                   ; $4607: $08 $20 $c2
	ld b, d                                          ; $460a: $42
	ld b, d                                          ; $460b: $42
	ld a, e                                          ; $460c: $7b
	sbc e                                            ; $460d: $9b
	sbc l                                            ; $460e: $9d
	ld b, $ca                                        ; $460f: $06 $ca
	ei                                               ; $4611: $fb
	adc d                                            ; $4612: $8a
	ld sp, hl                                        ; $4613: $f9
	db $ed                                           ; $4614: $ed
	ld h, a                                          ; $4615: $67

jr_05e_4616:
	ld [hl], a                                       ; $4616: $77
	inc sp                                           ; $4617: $33

jr_05e_4618:
	scf                                              ; $4618: $37
	scf                                              ; $4619: $37
	rra                                              ; $461a: $1f
	ld d, b                                          ; $461b: $50
	ld c, b                                          ; $461c: $48
	ld b, h                                          ; $461d: $44
	inc h                                            ; $461e: $24
	ld [hl+], a                                      ; $461f: $22
	ld [hl+], a                                      ; $4620: $22
	ld de, $0811                                     ; $4621: $11 $11 $08
	ld [$0404], sp                                   ; $4624: $08 $04 $04
	rlca                                             ; $4627: $07
	sbc $03                                          ; $4628: $de $03
	rst SubAFromDE                                          ; $462a: $df
	rrca                                             ; $462b: $0f
	rst SubAFromDE                                          ; $462c: $df
	rlca                                             ; $462d: $07
	sbc [hl]                                         ; $462e: $9e
	inc b                                            ; $462f: $04
	sbc $02                                          ; $4630: $de $02
	db $dd                                           ; $4632: $dd
	jr jr_05e_45d1                                   ; $4633: $18 $9c

	sbc b                                            ; $4635: $98
	ld hl, sp-$06                                    ; $4636: $f8 $fa
	call c, $91f4                                    ; $4638: $dc $f4 $91
	ld [hl], h                                       ; $463b: $74
	inc d                                            ; $463c: $14
	inc d                                            ; $463d: $14
	ld a, [de]                                       ; $463e: $1a
	nop                                              ; $463f: $00

Jump_05e_4640:
	dec b                                            ; $4640: $05
	ld c, $01                                        ; $4641: $0e $01
	nop                                              ; $4643: $00
	ld bc, $0502                                     ; $4644: $01 $02 $05
	nop                                              ; $4647: $00
	ld a, [bc]                                       ; $4648: $0a
	ld [hl], a                                       ; $4649: $77
	ld e, a                                          ; $464a: $5f
	ld a, a                                          ; $464b: $7f
	rst FarCall                                          ; $464c: $f7
	sub l                                            ; $464d: $95
	inc bc                                           ; $464e: $03
	add b                                            ; $464f: $80
	add b                                            ; $4650: $80
	ld b, b                                          ; $4651: $40
	and b                                            ; $4652: $a0
	ld d, b                                          ; $4653: $50
	xor b                                            ; $4654: $a8
	inc d                                            ; $4655: $14
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	ld [hl], a                                       ; $4658: $77
	ld sp, hl                                        ; $4659: $f9
	sbc [hl]                                         ; $465a: $9e
	ld d, h                                          ; $465b: $54
	ld a, d                                          ; $465c: $7a
	rst JumpTable                                          ; $465d: $c7
	ld a, a                                          ; $465e: $7f
	cp a                                             ; $465f: $bf
	sbc [hl]                                         ; $4660: $9e
	dec b                                            ; $4661: $05
	sbc $07                                          ; $4662: $de $07
	sbc $0f                                          ; $4664: $de $0f
	sbc l                                            ; $4666: $9d
	rlca                                             ; $4667: $07
	ld b, $de                                        ; $4668: $06 $de
	inc b                                            ; $466a: $04
	ld l, [hl]                                       ; $466b: $6e
	jp $326f                                         ; $466c: $c3 $6f $32


	db $dd                                           ; $466f: $dd
	rst $38                                          ; $4670: $ff
	sbc h                                            ; $4671: $9c
	sub h                                            ; $4672: $94
	call c, $ded1                                    ; $4673: $dc $d1 $de
	rst $38                                          ; $4676: $ff
	adc e                                            ; $4677: $8b
	ei                                               ; $4678: $fb
	ld a, l                                          ; $4679: $7d
	db $eb                                           ; $467a: $eb
	and e                                            ; $467b: $a3
	xor a                                            ; $467c: $af
	adc [hl]                                         ; $467d: $8e
	sub h                                            ; $467e: $94
	and h                                            ; $467f: $a4
	and b                                            ; $4680: $a0
	and b                                            ; $4681: $a0
	ld a, a                                          ; $4682: $7f
	jp $0081                                         ; $4683: $c3 $81 $00


	xor b                                            ; $4686: $a8
	ld hl, sp-$06                                    ; $4687: $f8 $fa
	cp $fc                                           ; $4689: $fe $fc
	add d                                            ; $468b: $82
	ld l, a                                          ; $468c: $6f
	rrca                                             ; $468d: $0f
	ld a, [hl]                                       ; $468e: $7e
	ret c                                            ; $468f: $d8

	sbc l                                            ; $4690: $9d
	ldh [rSVBK], a                                   ; $4691: $e0 $70
	ld a, e                                          ; $4693: $7b
	jr @+$6d                                         ; $4694: $18 $6b

	ld [bc], a                                       ; $4696: $02
	rst $38                                          ; $4697: $ff
	sbc l                                            ; $4698: $9d
	ld a, $2e                                        ; $4699: $3e $2e
	sbc $1f                                          ; $469b: $de $1f
	sbc d                                            ; $469d: $9a
	scf                                              ; $469e: $37
	dec l                                            ; $469f: $2d
	rst GetHLinHL                                          ; $46a0: $cf
	jr nz, @+$32                                     ; $46a1: $20 $30

	sbc $10                                          ; $46a3: $de $10
	sbc l                                            ; $46a5: $9d
	ld a, [hl-]                                      ; $46a6: $3a
	jr c, jr_05e_471e                                ; $46a7: $38 $75

	sbc e                                            ; $46a9: $9b
	ld [hl], e                                       ; $46aa: $73
	ld d, $f9                                        ; $46ab: $16 $f9
	ld a, d                                          ; $46ad: $7a
	xor h                                            ; $46ae: $ac
	pop af                                           ; $46af: $f1
	ld a, a                                          ; $46b0: $7f
	ld b, h                                          ; $46b1: $44
	sbc l                                            ; $46b2: $9d
	rra                                              ; $46b3: $1f
	ld a, a                                          ; $46b4: $7f
	halt                                             ; $46b5: $76
	ld c, a                                          ; $46b6: $4f
	ld a, h                                          ; $46b7: $7c
	xor e                                            ; $46b8: $ab
	sbc e                                            ; $46b9: $9b
	db $10                                           ; $46ba: $10
	ld h, b                                          ; $46bb: $60
	add b                                            ; $46bc: $80
	nop                                              ; $46bd: $00
	ld a, c                                          ; $46be: $79
	ret z                                            ; $46bf: $c8

	sbc c                                            ; $46c0: $99
	rst JumpTable                                          ; $46c1: $c7
	add a                                            ; $46c2: $87
	adc a                                            ; $46c3: $8f
	rst SubAFromDE                                          ; $46c4: $df
	nop                                              ; $46c5: $00
	rra                                              ; $46c6: $1f
	ld [hl], d                                       ; $46c7: $72
	ld e, a                                          ; $46c8: $5f
	ld a, [hl]                                       ; $46c9: $7e
	or h                                             ; $46ca: $b4
	sbc c                                            ; $46cb: $99
	db $10                                           ; $46cc: $10
	ldh a, [$f8]                                     ; $46cd: $f0 $f8
	db $fc                                           ; $46cf: $fc
	sbc [hl]                                         ; $46d0: $9e
	rrca                                             ; $46d1: $0f
	sbc $1f                                          ; $46d2: $de $1f
	adc c                                            ; $46d4: $89
	rst $38                                          ; $46d5: $ff
	rrca                                             ; $46d6: $0f
	rlca                                             ; $46d7: $07
	ld h, e                                          ; $46d8: $63
	pop af                                           ; $46d9: $f1
	pop hl                                           ; $46da: $e1
	ld a, a                                          ; $46db: $7f
	ld a, [hl]                                       ; $46dc: $7e
	ld a, $3c                                        ; $46dd: $3e $3c
	inc e                                            ; $46df: $1c
	inc e                                            ; $46e0: $1c
	ld c, $06                                        ; $46e1: $0e $06
	pop bc                                           ; $46e3: $c1
	jp nz, $e4e2                                     ; $46e4: $c2 $e2 $e4

	db $f4                                           ; $46e7: $f4
	db $f4                                           ; $46e8: $f4
	db $fc                                           ; $46e9: $fc
	db $fc                                           ; $46ea: $fc
	pop af                                           ; $46eb: $f1
	ld a, d                                          ; $46ec: $7a
	sub l                                            ; $46ed: $95
	sbc d                                            ; $46ee: $9a
	inc d                                            ; $46ef: $14
	inc c                                            ; $46f0: $0c
	ld c, $0e                                        ; $46f1: $0e $0e
	rrca                                             ; $46f3: $0f
	ld [hl], l                                       ; $46f4: $75
	xor e                                            ; $46f5: $ab
	db $dd                                           ; $46f6: $dd
	ld [$dff1], sp                                   ; $46f7: $08 $f1 $df
	rra                                              ; $46fa: $1f
	ld [hl], a                                       ; $46fb: $77
	ld d, $df                                        ; $46fc: $16 $df
	rlca                                             ; $46fe: $07
	sbc [hl]                                         ; $46ff: $9e
	ld de, $09de                                     ; $4700: $11 $de $09
	sbc $05                                          ; $4703: $de $05
	sub [hl]                                         ; $4705: $96
	ld [bc], a                                       ; $4706: $02
	ld bc, $8901                                     ; $4707: $01 $01 $89
	ret                                              ; $470a: $c9


	ret z                                            ; $470b: $c8

	call z, $eccc                                    ; $470c: $cc $cc $ec
	ld l, h                                          ; $470f: $6c
	sub d                                            ; $4710: $92
	rst $38                                          ; $4711: $ff
	reti                                             ; $4712: $d9


	db $fc                                           ; $4713: $fc
	db $dd                                           ; $4714: $dd
	ld a, [bc]                                       ; $4715: $0a
	rst SubAFromDE                                          ; $4716: $df
	adc d                                            ; $4717: $8a
	sub c                                            ; $4718: $91
	adc [hl]                                         ; $4719: $8e
	adc d                                            ; $471a: $8a
	ld a, [bc]                                       ; $471b: $0a
	dec d                                            ; $471c: $15
	ld a, [hl+]                                      ; $471d: $2a

jr_05e_471e:
	ld d, b                                          ; $471e: $50
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	dec [hl]                                         ; $4721: $35
	ld a, [hl+]                                      ; $4722: $2a
	dec b                                            ; $4723: $05
	ld a, [bc]                                       ; $4724: $0a
	inc d                                            ; $4725: $14
	jr z, jr_05e_47a0                                ; $4726: $28 $78

	ld c, a                                          ; $4728: $4f
	sbc l                                            ; $4729: $9d
	ld d, l                                          ; $472a: $55
	ld a, [bc]                                       ; $472b: $0a
	ld a, e                                          ; $472c: $7b
	call $9dff                                       ; $472d: $cd $ff $9d
	sub l                                            ; $4730: $95
	xor d                                            ; $4731: $aa
	ld [hl], e                                       ; $4732: $73
	ld sp, hl                                        ; $4733: $f9
	ld a, e                                          ; $4734: $7b
	ldh a, [$df]                                     ; $4735: $f0 $df
	rlca                                             ; $4737: $07
	sub c                                            ; $4738: $91
	add a                                            ; $4739: $87
	ld h, a                                          ; $473a: $67
	rlca                                             ; $473b: $07
	rlca                                             ; $473c: $07
	ld h, e                                          ; $473d: $63
	and e                                            ; $473e: $a3
	inc b                                            ; $473f: $04
	add h                                            ; $4740: $84
	ld b, h                                          ; $4741: $44
	add h                                            ; $4742: $84
	inc b                                            ; $4743: $04
	inc b                                            ; $4744: $04
	add d                                            ; $4745: $82
	ld b, d                                          ; $4746: $42
	db $dd                                           ; $4747: $dd
	ld bc, $3f9c                                     ; $4748: $01 $9c $3f
	ld a, a                                          ; $474b: $7f
	pop bc                                           ; $474c: $c1
	ld l, h                                          ; $474d: $6c
	jr c, @-$68                                      ; $474e: $38 $96

	jp $e080                                         ; $4750: $c3 $80 $e0


	ld a, a                                          ; $4753: $7f
	ld a, a                                          ; $4754: $7f
	ld l, a                                          ; $4755: $6f
	or b                                             ; $4756: $b0
	sbc b                                            ; $4757: $98
	ld [de], a                                       ; $4758: $12
	ld a, c                                          ; $4759: $79
	add sp, -$6b                                     ; $475a: $e8 $95
	sub b                                            ; $475c: $90
	sbc a                                            ; $475d: $9f
	ld c, a                                          ; $475e: $4f
	ld h, a                                          ; $475f: $67
	db $ed                                           ; $4760: $ed
	rst $38                                          ; $4761: $ff
	nop                                              ; $4762: $00
	cp $ff                                           ; $4763: $fe $ff
	ccf                                              ; $4765: $3f
	ld a, e                                          ; $4766: $7b
	add c                                            ; $4767: $81
	ld a, l                                          ; $4768: $7d
	or a                                             ; $4769: $b7
	ld a, l                                          ; $476a: $7d
	dec b                                            ; $476b: $05
	sub e                                            ; $476c: $93
	ldh a, [$fc]                                     ; $476d: $f0 $fc
	ei                                               ; $476f: $fb
	ld hl, sp-$10                                    ; $4770: $f8 $f0
	nop                                              ; $4772: $00
	adc e                                            ; $4773: $8b
	xor a                                            ; $4774: $af
	rst $38                                          ; $4775: $ff
	cp $ff                                           ; $4776: $fe $ff
	db $fd                                           ; $4778: $fd
	ld [hl], h                                       ; $4779: $74
	ld d, c                                          ; $477a: $51
	sbc h                                            ; $477b: $9c
	ld bc, $f30f                                     ; $477c: $01 $0f $f3
	ld a, e                                          ; $477f: $7b
	ei                                               ; $4780: $fb
	sub h                                            ; $4781: $94
	rst GetHLinHL                                          ; $4782: $cf
	adc e                                            ; $4783: $8b
	rlca                                             ; $4784: $07
	dec b                                            ; $4785: $05
	dec b                                            ; $4786: $05
	add e                                            ; $4787: $83
	jp nz, $7822                                     ; $4788: $c2 $22 $78

	db $fc                                           ; $478b: $fc
	db $fc                                           ; $478c: $fc
	sbc $fe                                          ; $478d: $de $fe
	ld a, [hl]                                       ; $478f: $7e
	add sp, $7f                                      ; $4790: $e8 $7f
	ret c                                            ; $4792: $d8

	sbc $c0                                          ; $4793: $de $c0
	sbc $e0                                          ; $4795: $de $e0
	ld sp, hl                                        ; $4797: $f9
	sbc l                                            ; $4798: $9d
	ld bc, $7a03                                     ; $4799: $01 $03 $7a
	ld d, l                                          ; $479c: $55
	sbc d                                            ; $479d: $9a
	rra                                              ; $479e: $1f
	ccf                                              ; $479f: $3f

jr_05e_47a0:
	dec sp                                           ; $47a0: $3b
	ld bc, $7802                                     ; $47a1: $01 $02 $78
	ld sp, $cc7d                                     ; $47a4: $31 $7d $cc
	sub a                                            ; $47a7: $97
	inc h                                            ; $47a8: $24
	rst JumpTable                                          ; $47a9: $c7
	jp $3ff3                                         ; $47aa: $c3 $f3 $3f


	rra                                              ; $47ad: $1f
	rrca                                             ; $47ae: $0f
	sbc a                                            ; $47af: $9f
	halt                                             ; $47b0: $76
	ret nz                                           ; $47b1: $c0

	ld a, a                                          ; $47b2: $7f
	reti                                             ; $47b3: $d9


	sbc l                                            ; $47b4: $9d
	ldh a, [$60]                                     ; $47b5: $f0 $60
	ld [hl], d                                       ; $47b7: $72
	ld c, h                                          ; $47b8: $4c
	ld d, b                                          ; $47b9: $50
	rst $38                                          ; $47ba: $ff
	sbc $ff                                          ; $47bb: $de $ff
	rst SubAFromDE                                          ; $47bd: $df
	db $fd                                           ; $47be: $fd
	rst SubAFromDE                                          ; $47bf: $df
	ld sp, hl                                        ; $47c0: $f9
	db $dd                                           ; $47c1: $dd
	ld bc, $03df                                     ; $47c2: $01 $df $03
	rst SubAFromDE                                          ; $47c5: $df
	rlca                                             ; $47c6: $07
	sbc $06                                          ; $47c7: $de $06
	sbc $07                                          ; $47c9: $de $07
	sbc l                                            ; $47cb: $9d
	inc bc                                           ; $47cc: $03
	adc a                                            ; $47cd: $8f
	db $db                                           ; $47ce: $db
	db $fc                                           ; $47cf: $fc
	sbc l                                            ; $47d0: $9d
	cp $f2                                           ; $47d1: $fe $f2
	ld a, [$6062]                                    ; $47d3: $fa $62 $60
	ld a, e                                          ; $47d6: $7b
	db $e4                                           ; $47d7: $e4
	ld a, d                                          ; $47d8: $7a
	rst FarCall                                          ; $47d9: $f7

jr_05e_47da:
	sbc e                                            ; $47da: $9b
	jr @+$32                                         ; $47db: $18 $30

	inc b                                            ; $47dd: $04
	inc b                                            ; $47de: $04
	ld a, d                                          ; $47df: $7a
	push hl                                          ; $47e0: $e5
	ld a, e                                          ; $47e1: $7b
	ld hl, sp+$7f                                    ; $47e2: $f8 $7f
	and $db                                          ; $47e4: $e6 $db
	sub b                                            ; $47e6: $90
	ld l, d                                          ; $47e7: $6a
	add hl, sp                                       ; $47e8: $39
	sbc [hl]                                         ; $47e9: $9e
	add b                                            ; $47ea: $80
	sbc $03                                          ; $47eb: $de $03
	ld [hl], d                                       ; $47ed: $72
	push de                                          ; $47ee: $d5
	rst SubAFromDE                                          ; $47ef: $df
	ld [bc], a                                       ; $47f0: $02
	ld l, [hl]                                       ; $47f1: $6e
	adc $df                                          ; $47f2: $ce $df
	db $ec                                           ; $47f4: $ec
	sbc [hl]                                         ; $47f5: $9e
	xor $dc                                          ; $47f6: $ee $dc
	cp $66                                           ; $47f8: $fe $66
	jr jr_05e_47da                                   ; $47fa: $18 $de

	db $fc                                           ; $47fc: $fc
	rst SubAFromDE                                          ; $47fd: $df
	ld a, h                                          ; $47fe: $7c

Jump_05e_47ff:
	sbc h                                            ; $47ff: $9c
	ld a, l                                          ; $4800: $7d
	ld a, [hl]                                       ; $4801: $7e
	ld c, [hl]                                       ; $4802: $4e
	sbc $8a                                          ; $4803: $de $8a
	sbc $4a                                          ; $4805: $de $4a
	add b                                            ; $4807: $80
	ld c, c                                          ; $4808: $49
	ld a, l                                          ; $4809: $7d
	dec d                                            ; $480a: $15
	ld [$2c15], sp                                   ; $480b: $08 $15 $2c
	rla                                              ; $480e: $17
	ld a, [bc]                                       ; $480f: $0a
	inc d                                            ; $4810: $14
	ld [$1508], sp                                   ; $4811: $08 $08 $15
	ld a, [hl+]                                      ; $4814: $2a
	db $10                                           ; $4815: $10
	ld [$0815], sp                                   ; $4816: $08 $15 $08
	inc d                                            ; $4819: $14
	ld b, h                                          ; $481a: $44
	adc b                                            ; $481b: $88
	ld d, l                                          ; $481c: $55
	ld a, [bc]                                       ; $481d: $0a
	ld b, a                                          ; $481e: $47
	cp b                                             ; $481f: $b8
	ld d, a                                          ; $4820: $57
	xor d                                            ; $4821: $aa
	adc b                                            ; $4822: $88
	ld b, l                                          ; $4823: $45
	xor d                                            ; $4824: $aa
	dec d                                            ; $4825: $15
	adc b                                            ; $4826: $88
	sub a                                            ; $4827: $97
	ld b, h                                          ; $4828: $44
	xor b                                            ; $4829: $a8
	ld d, l                                          ; $482a: $55
	rst JumpTable                                          ; $482b: $c7
	xor e                                            ; $482c: $ab
	ld d, a                                          ; $482d: $57
	xor e                                            ; $482e: $ab
	ld [hl], a                                       ; $482f: $77
	ld a, e                                          ; $4830: $7b
	db $fc                                           ; $4831: $fc
	sbc h                                            ; $4832: $9c
	ld [hl+], a                                      ; $4833: $22
	ld b, d                                          ; $4834: $42
	add d                                            ; $4835: $82
	ld a, e                                          ; $4836: $7b
	cp $9a                                           ; $4837: $fe $9a
	and d                                            ; $4839: $a2
	ld d, d                                          ; $483a: $52
	nop                                              ; $483b: $00
	adc a                                            ; $483c: $8f
	ld h, a                                          ; $483d: $67
	ld a, b                                          ; $483e: $78
	call c, Call_05e_487b                            ; $483f: $dc $7b $48
	ld a, [hl]                                       ; $4842: $7e
	add hl, bc                                       ; $4843: $09
	call c, $9eff                                    ; $4844: $dc $ff $9e
	rla                                              ; $4847: $17
	sbc $ff                                          ; $4848: $de $ff
	sbc d                                            ; $484a: $9a
	ld [$0a0b], sp                                   ; $484b: $08 $0b $0a
	ld a, [bc]                                       ; $484e: $0a
	add sp, $77                                      ; $484f: $e8 $77
	dec [hl]                                         ; $4851: $35
	db $dd                                           ; $4852: $dd
	db $fc                                           ; $4853: $fc
	ld a, a                                          ; $4854: $7f
	ei                                               ; $4855: $fb
	ld a, a                                          ; $4856: $7f
	ldh a, [$97]                                     ; $4857: $f0 $97
	add sp, $28                                      ; $4859: $e8 $28
	jr z, jr_05e_4860                                ; $485b: $28 $03

	nop                                              ; $485d: $00
	inc bc                                           ; $485e: $03
	rst $38                                          ; $485f: $ff

jr_05e_4860:
	rst $38                                          ; $4860: $ff
	sbc $1f                                          ; $4861: $de $1f
	sbc h                                            ; $4863: $9c
	ld bc, $1d0e                                     ; $4864: $01 $0e $1d
	ld [hl], e                                       ; $4867: $73
	add h                                            ; $4868: $84
	sbc h                                            ; $4869: $9c
	cp $f1                                           ; $486a: $fe $f1
	db $e3                                           ; $486c: $e3
	call c, $9cff                                    ; $486d: $dc $ff $9c
	ld hl, $8141                                     ; $4870: $21 $41 $81
	ld h, c                                          ; $4873: $61
	ld b, h                                          ; $4874: $44
	db $dd                                           ; $4875: $dd
	rst $38                                          ; $4876: $ff
	sub [hl]                                         ; $4877: $96
	ldh [$b0], a                                     ; $4878: $e0 $b0
	ld [hl], b                                       ; $487a: $70

Call_05e_487b:
	ld [hl], b                                       ; $487b: $70
	ld hl, sp-$48                                    ; $487c: $f8 $b8
	cp b                                             ; $487e: $b8
	ld a, h                                          ; $487f: $7c
	ld b, b                                          ; $4880: $40
	ld [hl], a                                       ; $4881: $77
	ld b, e                                          ; $4882: $43
	sbc $c0                                          ; $4883: $de $c0
	rst SubAFromDE                                          ; $4885: $df
	ld [hl], c                                       ; $4886: $71
	sub c                                            ; $4887: $91
	ld h, e                                          ; $4888: $63
	db $e3                                           ; $4889: $e3
	rst FarCall                                          ; $488a: $f7
	cp $fd                                           ; $488b: $fe $fd
	ld a, [$4e4e]                                    ; $488d: $fa $4e $4e
	ld e, h                                          ; $4890: $5c
	sbc h                                            ; $4891: $9c
	adc b                                            ; $4892: $88
	add c                                            ; $4893: $81
	add d                                            ; $4894: $82
	add l                                            ; $4895: $85
	ld a, d                                          ; $4896: $7a
	add e                                            ; $4897: $83
	adc d                                            ; $4898: $8a
	db $fd                                           ; $4899: $fd
	db $dd                                           ; $489a: $dd
	cp l                                             ; $489b: $bd
	ld d, a                                          ; $489c: $57
	or [hl]                                          ; $489d: $b6
	inc bc                                           ; $489e: $03
	dec b                                            ; $489f: $05
	dec b                                            ; $48a0: $05
	inc c                                            ; $48a1: $0c
	inc a                                            ; $48a2: $3c
	ld e, h                                          ; $48a3: $5c
	cp l                                             ; $48a4: $bd
	ld a, a                                          ; $48a5: $7f
	rst $38                                          ; $48a6: $ff
	ld a, a                                          ; $48a7: $7f
	ld a, a                                          ; $48a8: $7f
	or l                                             ; $48a9: $b5
	xor d                                            ; $48aa: $aa
	sub l                                            ; $48ab: $95
	ld a, [hl+]                                      ; $48ac: $2a
	ld d, h                                          ; $48ad: $54
	ld a, e                                          ; $48ae: $7b
	pop de                                           ; $48af: $d1
	add b                                            ; $48b0: $80
	jp z, $ead5                                      ; $48b1: $ca $d5 $ea

	push de                                          ; $48b4: $d5
	xor e                                            ; $48b5: $ab
	ldh a, [c]                                       ; $48b6: $f2
	ldh a, [c]                                       ; $48b7: $f2
	and h                                            ; $48b8: $a4
	ld c, e                                          ; $48b9: $4b
	sbc a                                            ; $48ba: $9f
	ccf                                              ; $48bb: $3f
	ld a, a                                          ; $48bc: $7f
	cp $0e                                           ; $48bd: $fe $0e
	ld c, $5c                                        ; $48bf: $0e $5c
	cp c                                             ; $48c1: $b9
	ld a, [hl]                                       ; $48c2: $7e
	ldh [$e1], a                                     ; $48c3: $e0 $e1
	sbc [hl]                                         ; $48c5: $9e
	cp a                                             ; $48c6: $bf
	rst $38                                          ; $48c7: $ff
	cp a                                             ; $48c8: $bf
	cp $fa                                           ; $48c9: $fe $fa
	di                                               ; $48cb: $f3
	di                                               ; $48cc: $f3
	rlca                                             ; $48cd: $07
	jp nz, $8e85                                     ; $48ce: $c2 $85 $8e

	call nz, $12f4                                   ; $48d1: $c4 $f4 $12
	ld a, [de]                                       ; $48d4: $1a
	ldh a, [c]                                       ; $48d5: $f2
	ld [bc], a                                       ; $48d6: $02
	ret nz                                           ; $48d7: $c0

jr_05e_48d8:
	rst $38                                          ; $48d8: $ff
	rst $38                                          ; $48d9: $ff
	inc bc                                           ; $48da: $03
	rlca                                             ; $48db: $07
	ld a, $fc                                        ; $48dc: $3e $fc
	ldh a, [rP1]                                     ; $48de: $f0 $00
	rlca                                             ; $48e0: $07
	ld hl, sp+$78                                    ; $48e1: $f8 $78
	and d                                            ; $48e3: $a2
	adc e                                            ; $48e4: $8b
	inc c                                            ; $48e5: $0c
	jr nc, jr_05e_48d8                               ; $48e6: $30 $f0

	ldh [$c8], a                                     ; $48e8: $e0 $c8
	sbc c                                            ; $48ea: $99
	add hl, de                                       ; $48eb: $19
	add hl, sp                                       ; $48ec: $39
	inc sp                                           ; $48ed: $33
	ld [hl], e                                       ; $48ee: $73
	ret nc                                           ; $48ef: $d0

	jr nz, jr_05e_493a                               ; $48f0: $20 $48

	sub c                                            ; $48f2: $91
	ld de, $2221                                     ; $48f3: $11 $21 $22
	ld b, d                                          ; $48f6: $42
	or b                                             ; $48f7: $b0
	or b                                             ; $48f8: $b0
	sbc $e0                                          ; $48f9: $de $e0
	sbc $c0                                          ; $48fb: $de $c0
	sbc $80                                          ; $48fd: $de $80
	ld sp, hl                                        ; $48ff: $f9
	rst SubAFromDE                                          ; $4900: $df
	ld [$0cdf], sp                                   ; $4901: $08 $df $0c
	sbc [hl]                                         ; $4904: $9e
	ld c, $f9                                        ; $4905: $0e $f9
	rst SubAFromDE                                          ; $4907: $df
	cp $9e                                           ; $4908: $fe $9e
	ld a, [hl]                                       ; $490a: $7e
	sbc $7f                                          ; $490b: $de $7f
	rst SubAFromDE                                          ; $490d: $df
	ccf                                              ; $490e: $3f
	ld a, h                                          ; $490f: $7c
	ld l, d                                          ; $4910: $6a
	sbc $40                                          ; $4911: $de $40
	sbc $20                                          ; $4913: $de $20
	ld a, [hl]                                       ; $4915: $7e
	add $9d                                          ; $4916: $c6 $9d
	ld [hl], $2e                                     ; $4918: $36 $2e
	db $dd                                           ; $491a: $dd
	ld h, $9b                                        ; $491b: $26 $9b
	ld a, l                                          ; $491d: $7d
	ld b, l                                          ; $491e: $45
	dec l                                            ; $491f: $2d
	dec a                                            ; $4920: $3d
	db $dd                                           ; $4921: $dd
	dec h                                            ; $4922: $25
	sbc h                                            ; $4923: $9c
	dec d                                            ; $4924: $15
	ld e, $05                                        ; $4925: $1e $05
	ld a, c                                          ; $4927: $79
	ld a, l                                          ; $4928: $7d
	sbc h                                            ; $4929: $9c
	ld d, l                                          ; $492a: $55
	xor d                                            ; $492b: $aa
	ld a, [bc]                                       ; $492c: $0a
	cp $7c                                           ; $492d: $fe $7c
	ld a, [hl-]                                      ; $492f: $3a
	add l                                            ; $4930: $85
	ld [bc], a                                       ; $4931: $02
	nop                                              ; $4932: $00
	ld d, a                                          ; $4933: $57
	xor d                                            ; $4934: $aa
	ld d, l                                          ; $4935: $55
	rst AddAOntoHL                                          ; $4936: $ef
	ld e, d                                          ; $4937: $5a
	xor e                                            ; $4938: $ab
	ld a, a                                          ; $4939: $7f

jr_05e_493a:
	xor d                                            ; $493a: $aa
	xor b                                            ; $493b: $a8
	inc b                                            ; $493c: $04
	nop                                              ; $493d: $00
	nop                                              ; $493e: $00
	and l                                            ; $493f: $a5
	nop                                              ; $4940: $00
	add b                                            ; $4941: $80
	ld b, b                                          ; $4942: $40
	ld [hl], a                                       ; $4943: $77
	xor e                                            ; $4944: $ab
	ld d, l                                          ; $4945: $55
	dec hl                                           ; $4946: $2b
	sub l                                            ; $4947: $95
	ld l, e                                          ; $4948: $6b
	push de                                          ; $4949: $d5
	db $eb                                           ; $494a: $eb
	ld a, d                                          ; $494b: $7a
	ld [hl], c                                       ; $494c: $71
	sbc [hl]                                         ; $494d: $9e
	add c                                            ; $494e: $81
	ld a, e                                          ; $494f: $7b
	dec b                                            ; $4950: $05
	sbc [hl]                                         ; $4951: $9e
	ld bc, $0058                                     ; $4952: $01 $58 $00
	rst SubAFromDE                                          ; $4955: $df
	ld h, [hl]                                       ; $4956: $66
	sbc [hl]                                         ; $4957: $9e
	ld b, [hl]                                       ; $4958: $46
	sbc $66                                          ; $4959: $de $66
	sbc e                                            ; $495b: $9b
	ld h, d                                          ; $495c: $62
	ld [hl+], a                                      ; $495d: $22
	daa                                              ; $495e: $27
	ld [hl], a                                       ; $495f: $77
	ld [hl], e                                       ; $4960: $73
	or $9a                                           ; $4961: $f6 $9a
	ld b, h                                          ; $4963: $44
	ld b, d                                          ; $4964: $42
	ld [hl+], a                                      ; $4965: $22
	ld h, [hl]                                       ; $4966: $66
	ld h, a                                          ; $4967: $67
	ld a, e                                          ; $4968: $7b
	ldh a, [$9b]                                     ; $4969: $f0 $9b
	ld h, $66                                        ; $496b: $26 $66
	ld b, l                                          ; $496d: $45
	ld d, l                                          ; $496e: $55
	ld a, e                                          ; $496f: $7b
	or $97                                           ; $4970: $f6 $97
	ld h, d                                          ; $4972: $62
	ld h, [hl]                                       ; $4973: $66
	ld [hl+], a                                      ; $4974: $22
	ld [hl+], a                                      ; $4975: $22
	ld h, [hl]                                       ; $4976: $66
	ld h, h                                          ; $4977: $64
	ld b, h                                          ; $4978: $44
	ld [hl+], a                                      ; $4979: $22
	ld [hl], a                                       ; $497a: $77
	xor $7b                                          ; $497b: $ee $7b
	or $9d                                           ; $497d: $f6 $9d
	ld b, h                                          ; $497f: $44
	ld h, h                                          ; $4980: $64
	ld [hl], e                                       ; $4981: $73
	or $7f                                           ; $4982: $f6 $7f
	jp nc, Jump_05e_549b                             ; $4984: $d2 $9b $54

	ld b, h                                          ; $4987: $44
	ld b, h                                          ; $4988: $44
	ld b, d                                          ; $4989: $42
	ld l, a                                          ; $498a: $6f
	or $9b                                           ; $498b: $f6 $9b
	inc h                                            ; $498d: $24
	ld b, h                                          ; $498e: $44
	ld h, [hl]                                       ; $498f: $66
	ld h, d                                          ; $4990: $62
	ld [hl], a                                       ; $4991: $77
	ret nz                                           ; $4992: $c0

	ld a, e                                          ; $4993: $7b
	or $7b                                           ; $4994: $f6 $7b
	ld sp, hl                                        ; $4996: $f9
	ld [hl], a                                       ; $4997: $77
	or $9c                                           ; $4998: $f6 $9c
	ld h, [hl]                                       ; $499a: $66
	ld h, l                                          ; $499b: $65
	ld d, h                                          ; $499c: $54
	call c, Call_05e_7b66                            ; $499d: $dc $66 $7b
	ret nc                                           ; $49a0: $d0

	sbc l                                            ; $49a1: $9d
	ld d, e                                          ; $49a2: $53
	ld d, l                                          ; $49a3: $55
	ld l, e                                          ; $49a4: $6b
	or $9d                                           ; $49a5: $f6 $9d
	ld h, $55                                        ; $49a7: $26 $55
	ld l, a                                          ; $49a9: $6f
	or $12                                           ; $49aa: $f6 $12
	adc e                                            ; $49ac: $8b
	sbc b                                            ; $49ad: $98
	ld hl, sp-$04                                    ; $49ae: $f8 $fc
	rst $38                                          ; $49b0: $ff
	rst $38                                          ; $49b1: $ff
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	xor d                                            ; $49b4: $aa
	db $fc                                           ; $49b5: $fc
	rst SubAFromDE                                          ; $49b6: $df
	rst $38                                          ; $49b7: $ff
	sub l                                            ; $49b8: $95
	ld d, l                                          ; $49b9: $55
	rst $38                                          ; $49ba: $ff
	nop                                              ; $49bb: $00
	ldh [$f0], a                                     ; $49bc: $e0 $f0
	ld hl, sp+$08                                    ; $49be: $f8 $08
	ld [$61b0], sp                                   ; $49c0: $08 $b0 $61
	db $fd                                           ; $49c3: $fd
	rst SubAFromDE                                          ; $49c4: $df
	ldh a, [hDisp1_WY]                                     ; $49c5: $f0 $95
	ld b, b                                          ; $49c7: $40
	add b                                            ; $49c8: $80
	nop                                              ; $49c9: $00
	ld b, $0e                                        ; $49ca: $06 $0e
	rrca                                             ; $49cc: $0f
	db $10                                           ; $49cd: $10
	jr nz, jr_05e_4a3a                               ; $49ce: $20 $6a

	add c                                            ; $49d0: $81
	db $fd                                           ; $49d1: $fd
	sub e                                            ; $49d2: $93
	rrca                                             ; $49d3: $0f
	rra                                              ; $49d4: $1f
	dec d                                            ; $49d5: $15
	ld a, a                                          ; $49d6: $7f
	ccf                                              ; $49d7: $3f
	ld a, a                                          ; $49d8: $7f
	rst $38                                          ; $49d9: $ff
	ld [rRAMG], a                                    ; $49da: $ea $00 $00
	xor [hl]                                         ; $49dd: $ae
	or $67                                           ; $49de: $f6 $67
	ret nc                                           ; $49e0: $d0

	sbc $ff                                          ; $49e1: $de $ff
	sbc d                                            ; $49e3: $9a
	add [hl]                                         ; $49e4: $86
	nop                                              ; $49e5: $00
	nop                                              ; $49e6: $00
	xor a                                            ; $49e7: $af
	ld e, $6f                                        ; $49e8: $1e $6f
	ldh a, [$9d]                                     ; $49ea: $f0 $9d
	ld e, a                                          ; $49ec: $5f
	di                                               ; $49ed: $f3
	sbc $ff                                          ; $49ee: $de $ff
	sbc d                                            ; $49f0: $9a
	ld a, a                                          ; $49f1: $7f
	inc a                                            ; $49f2: $3c
	rrca                                             ; $49f3: $0f
	ld bc, $7707                                     ; $49f4: $01 $07 $77
	pop de                                           ; $49f7: $d1
	sbc e                                            ; $49f8: $9b
	ldh a, [$fe]                                     ; $49f9: $f0 $fe
	rst $38                                          ; $49fb: $ff
	cp $dd                                           ; $49fc: $fe $dd
	rst $38                                          ; $49fe: $ff
	sbc h                                            ; $49ff: $9c
	ld [hl], c                                       ; $4a00: $71
	ld a, [bc]                                       ; $4a01: $0a
	inc h                                            ; $4a02: $24
	db $fd                                           ; $4a03: $fd
	sbc d                                            ; $4a04: $9a
	add b                                            ; $4a05: $80
	ld a, a                                          ; $4a06: $7f
	ld e, $cc                                        ; $4a07: $1e $cc
	dec b                                            ; $4a09: $05
	db $dd                                           ; $4a0a: $dd
	rst $38                                          ; $4a0b: $ff
	sbc h                                            ; $4a0c: $9c
	ret nz                                           ; $4a0d: $c0

	cp a                                             ; $4a0e: $bf
	rst JumpTable                                          ; $4a0f: $c7
	ld [hl], a                                       ; $4a10: $77
	ldh [$9a], a                                     ; $4a11: $e0 $9a
	ret nz                                           ; $4a13: $c0

	ld a, a                                          ; $4a14: $7f
	rst $38                                          ; $4a15: $ff
	ret nz                                           ; $4a16: $c0

	ccf                                              ; $4a17: $3f
	sbc $ff                                          ; $4a18: $de $ff
	sbc e                                            ; $4a1a: $9b
	db $fd                                           ; $4a1b: $fd
	nop                                              ; $4a1c: $00
	nop                                              ; $4a1d: $00
	push de                                          ; $4a1e: $d5
	ld l, e                                          ; $4a1f: $6b
	add b                                            ; $4a20: $80
	sbc [hl]                                         ; $4a21: $9e
	ld [$ffdd], a                                    ; $4a22: $ea $dd $ff
	sbc e                                            ; $4a25: $9b
	ld b, d                                          ; $4a26: $42
	nop                                              ; $4a27: $00
	nop                                              ; $4a28: $00
	ld d, l                                          ; $4a29: $55
	ld l, e                                          ; $4a2a: $6b
	ldh a, [hDisp1_WY]                                     ; $4a2b: $f0 $95
	xor d                                            ; $4a2d: $aa
	rst $38                                          ; $4a2e: $ff
	ldh a, [$e0]                                     ; $4a2f: $f0 $e0
	pop bc                                           ; $4a31: $c1
	jp Jump_05e_4640                                 ; $4a32: $c3 $40 $46


jr_05e_4a35:
	ld b, l                                          ; $4a35: $45
	jr nz, jr_05e_4a35                               ; $4a36: $20 $fd

	sub e                                            ; $4a38: $93
	add e                                            ; $4a39: $83

jr_05e_4a3a:
	add c                                            ; $4a3a: $81
	add d                                            ; $4a3b: $82
	rst JumpTable                                          ; $4a3c: $c7
	ld a, a                                          ; $4a3d: $7f
	rst GetHLinHL                                          ; $4a3e: $cf
	rst GetHLinHL                                          ; $4a3f: $cf
	cp $1e                                           ; $4a40: $fe $1e
	ld a, b                                          ; $4a42: $78
	ldh [rLCDC], a                                   ; $4a43: $e0 $40
	db $fd                                           ; $4a45: $fd
	sbc [hl]                                         ; $4a46: $9e
	ldh [$7b], a                                     ; $4a47: $e0 $7b
	xor h                                            ; $4a49: $ac
	sbc [hl]                                         ; $4a4a: $9e
	db $fc                                           ; $4a4b: $fc
	ld a, e                                          ; $4a4c: $7b
	ei                                               ; $4a4d: $fb
	ldh [$de], a                                     ; $4a4e: $e0 $de
	sbc [hl]                                         ; $4a50: $9e
	ld bc, $99f7                                     ; $4a51: $01 $f7 $99
	inc bc                                           ; $4a54: $03
	rrca                                             ; $4a55: $0f
	rra                                              ; $4a56: $1f
	ccf                                              ; $4a57: $3f
	ld l, e                                          ; $4a58: $6b

jr_05e_4a59:
	rst SubAFromHL                                          ; $4a59: $d7
	rst FarCall                                          ; $4a5a: $f7
	sbc c                                            ; $4a5b: $99
	ret nz                                           ; $4a5c: $c0

	ld hl, sp-$02                                    ; $4a5d: $f8 $fe
	cp $ff                                           ; $4a5f: $fe $ff
	ld e, a                                          ; $4a61: $5f
	jp hl                                            ; $4a62: $e9


	rst SubAFromDE                                          ; $4a63: $df
	rlca                                             ; $4a64: $07
	rst SubAFromDE                                          ; $4a65: $df
	ld b, $df                                        ; $4a66: $06 $df
	rrca                                             ; $4a68: $0f
	sbc l                                            ; $4a69: $9d
	rra                                              ; $4a6a: $1f
	rrca                                             ; $4a6b: $0f
	ld sp, hl                                        ; $4a6c: $f9
	ld a, [hl]                                       ; $4a6d: $7e
	rst $38                                          ; $4a6e: $ff
	rst SubAFromDE                                          ; $4a6f: $df
	ccf                                              ; $4a70: $3f
	ld a, a                                          ; $4a71: $7f
	ld c, b                                          ; $4a72: $48
	sbc l                                            ; $4a73: $9d
	rst $38                                          ; $4a74: $ff
	cp a                                             ; $4a75: $bf
	ld sp, hl                                        ; $4a76: $f9
	add b                                            ; $4a77: $80
	xor e                                            ; $4a78: $ab

jr_05e_4a79:
	ld d, h                                          ; $4a79: $54
	xor h                                            ; $4a7a: $ac
	ld e, b                                          ; $4a7b: $58
	xor b                                            ; $4a7c: $a8
	ld d, b                                          ; $4a7d: $50
	ldh a, [$50]                                     ; $4a7e: $f0 $50
	ld d, h                                          ; $4a80: $54
	xor d                                            ; $4a81: $aa
	ld d, b                                          ; $4a82: $50
	and b                                            ; $4a83: $a0
	ld d, b                                          ; $4a84: $50
	and b                                            ; $4a85: $a0
	nop                                              ; $4a86: $00
	and b                                            ; $4a87: $a0
	add d                                            ; $4a88: $82
	inc bc                                           ; $4a89: $03
	ld b, $0d                                        ; $4a8a: $06 $0d
	ld a, [bc]                                       ; $4a8c: $0a
	dec d                                            ; $4a8d: $15
	rra                                              ; $4a8e: $1f
	dec [hl]                                         ; $4a8f: $35
	ld bc, $0100                                     ; $4a90: $01 $00 $01
	ld [bc], a                                       ; $4a93: $02
	dec b                                            ; $4a94: $05
	ld a, [bc]                                       ; $4a95: $0a
	nop                                              ; $4a96: $00
	add b                                            ; $4a97: $80
	ld a, [bc]                                       ; $4a98: $0a
	xor d                                            ; $4a99: $aa
	ld d, l                                          ; $4a9a: $55
	xor d                                            ; $4a9b: $aa
	ld d, h                                          ; $4a9c: $54
	xor e                                            ; $4a9d: $ab
	ld d, h                                          ; $4a9e: $54
	jp hl                                            ; $4a9f: $e9


	ld d, e                                          ; $4aa0: $53
	ld d, l                                          ; $4aa1: $55
	xor d                                            ; $4aa2: $aa
	ld d, l                                          ; $4aa3: $55
	xor e                                            ; $4aa4: $ab
	ld d, a                                          ; $4aa5: $57
	xor h                                            ; $4aa6: $ac
	jr jr_05e_4a59                                   ; $4aa7: $18 $b0

	adc a                                            ; $4aa9: $8f
	ld [hl], e                                       ; $4aaa: $73
	ld a, $cc                                        ; $4aab: $3e $cc
	ld a, $f0                                        ; $4aad: $3e $f0
	add b                                            ; $4aaf: $80
	ld h, [hl]                                       ; $4ab0: $66
	adc l                                            ; $4ab1: $8d
	ldh [c], a                                       ; $4ab2: $e2
	pop af                                           ; $4ab3: $f1
	jp $0f01                                         ; $4ab4: $c3 $01 $0f


	sub b                                            ; $4ab7: $90
	ld a, a                                          ; $4ab8: $7f
	sbc c                                            ; $4ab9: $99
	cp l                                             ; $4aba: $bd
	rst FarCall                                          ; $4abb: $f7
	rst SubAFromBC                                          ; $4abc: $e7
	ld c, h                                          ; $4abd: $4c
	ld de, $0003                                     ; $4abe: $11 $03 $00
	nop                                              ; $4ac1: $00
	rst SubAFromBC                                          ; $4ac2: $e7
	ld c, [hl]                                       ; $4ac3: $4e
	jr jr_05e_4a79                                   ; $4ac4: $18 $b3

	xor $7a                                          ; $4ac6: $ee $7a
	ld [hl], h                                       ; $4ac8: $74
	add b                                            ; $4ac9: $80
	call z, $a7d7                                    ; $4aca: $cc $d7 $a7
	and $d9                                          ; $4acd: $e6 $d9
	or e                                             ; $4acf: $b3
	ld h, a                                          ; $4ad0: $67
	ld l, d                                          ; $4ad1: $6a
	ld hl, sp+$73                                    ; $4ad2: $f8 $73
	rst AddAOntoHL                                          ; $4ad4: $ef
	ld e, c                                          ; $4ad5: $59
	or a                                             ; $4ad6: $b7
	xor $dc                                          ; $4ad7: $ee $dc
	db $dd                                           ; $4ad9: $dd
	ldh a, [rP1]                                     ; $4ada: $f0 $00
	pop hl                                           ; $4adc: $e1
	adc d                                            ; $4add: $8a
	call nc, Call_05e_69a5                           ; $4ade: $d4 $a5 $69
	xor c                                            ; $4ae1: $a9
	nop                                              ; $4ae2: $00
	ld hl, sp-$10                                    ; $4ae3: $f8 $f0
	pop hl                                           ; $4ae5: $e1
	dec hl                                           ; $4ae6: $2b
	ld d, e                                          ; $4ae7: $53
	rst SubAFromHL                                          ; $4ae8: $d7
	add b                                            ; $4ae9: $80
	rst SubAFromHL                                          ; $4aea: $d7
	inc b                                            ; $4aeb: $04
	jp z, Jump_05e_77ec                              ; $4aec: $ca $ec $77

	add hl, sp                                       ; $4aef: $39
	inc e                                            ; $4af0: $1c
	inc l                                            ; $4af1: $2c
	ld [hl-], a                                      ; $4af2: $32
	inc bc                                           ; $4af3: $03
	inc b                                            ; $4af4: $04
	ld [hl], e                                       ; $4af5: $73
	sbc c                                            ; $4af6: $99
	adc $e7                                          ; $4af7: $ce $e7
	rst FarCall                                          ; $4af9: $f7
	rst $38                                          ; $4afa: $ff
	push de                                          ; $4afb: $d5
	ld l, d                                          ; $4afc: $6a
	ld [hl], l                                       ; $4afd: $75
	sbc d                                            ; $4afe: $9a
	db $ed                                           ; $4aff: $ed
	ld a, [hl]                                       ; $4b00: $7e
	ccf                                              ; $4b01: $3f
	jp c, $35ea                                      ; $4b02: $da $ea $35

	sbc d                                            ; $4b05: $9a
	db $ed                                           ; $4b06: $ed
	halt                                             ; $4b07: $76
	cp l                                             ; $4b08: $bd
	sbc e                                            ; $4b09: $9b
	ret nc                                           ; $4b0a: $d0

	ld l, l                                          ; $4b0b: $6d
	ld d, l                                          ; $4b0c: $55
	xor e                                            ; $4b0d: $ab
	ld a, e                                          ; $4b0e: $7b
	cp $7e                                           ; $4b0f: $fe $7e
	ret                                              ; $4b11: $c9


	rst SubAFromDE                                          ; $4b12: $df
	xor d                                            ; $4b13: $aa
	add c                                            ; $4b14: $81
	ld d, h                                          ; $4b15: $54
	xor b                                            ; $4b16: $a8
	ld d, h                                          ; $4b17: $54
	xor d                                            ; $4b18: $aa
	ld d, l                                          ; $4b19: $55
	nop                                              ; $4b1a: $00
	ld d, l                                          ; $4b1b: $55
	ld h, e                                          ; $4b1c: $63
	sub d                                            ; $4b1d: $92
	ld h, h                                          ; $4b1e: $64
	bit 2, l                                         ; $4b1f: $cb $55
	jp z, $abff                                      ; $4b21: $ca $ff $ab

	add b                                            ; $4b24: $80
	ld h, c                                          ; $4b25: $61
	add d                                            ; $4b26: $82
	inc b                                            ; $4b27: $04
	adc d                                            ; $4b28: $8a
	dec d                                            ; $4b29: $15
	nop                                              ; $4b2a: $00
	ld d, h                                          ; $4b2b: $54
	ld b, b                                          ; $4b2c: $40
	ret nz                                           ; $4b2d: $c0

	and b                                            ; $4b2e: $a0
	or b                                             ; $4b2f: $b0
	ld d, b                                          ; $4b30: $50
	or b                                             ; $4b31: $b0
	ldh [$7a], a                                     ; $4b32: $e0 $7a
	daa                                              ; $4b34: $27
	rst SubAFromDE                                          ; $4b35: $df
	ld b, b                                          ; $4b36: $40
	sbc [hl]                                         ; $4b37: $9e
	and b                                            ; $4b38: $a0
	ld [hl], d                                       ; $4b39: $72
	cp d                                             ; $4b3a: $ba
	ld a, [hl]                                       ; $4b3b: $7e
	rst AddAOntoHL                                          ; $4b3c: $ef
	rst SubAFromDE                                          ; $4b3d: $df
	rlca                                             ; $4b3e: $07
	rst SubAFromDE                                          ; $4b3f: $df
	rrca                                             ; $4b40: $0f
	rst FarCall                                          ; $4b41: $f7
	sbc c                                            ; $4b42: $99
	ldh a, [$f9]                                     ; $4b43: $f0 $f9
	db $db                                           ; $4b45: $db
	xor $75                                          ; $4b46: $ee $75
	cp d                                             ; $4b48: $ba
	ld h, d                                          ; $4b49: $62
	rst JumpTable                                          ; $4b4a: $c7
	sbc e                                            ; $4b4b: $9b
	rlca                                             ; $4b4c: $07
	ld c, $b5                                        ; $4b4d: $0e $b5
	ld a, [$d177]                                    ; $4b4f: $fa $77 $d1
	ld a, [$ee9e]                                    ; $4b52: $fa $9e $ee
	ld a, e                                          ; $4b55: $7b
	scf                                              ; $4b56: $37
	sbc e                                            ; $4b57: $9b
	ld a, [bc]                                       ; $4b58: $0a
	ld d, l                                          ; $4b59: $55
	ld [hl+], a                                      ; $4b5a: $22
	ld b, l                                          ; $4b5b: $45
	ld sp, hl                                        ; $4b5c: $f9
	sub a                                            ; $4b5d: $97
	cp e                                             ; $4b5e: $bb
	ld [hl], a                                       ; $4b5f: $77
	xor $de                                          ; $4b60: $ee $de
	cp b                                             ; $4b62: $b8
	ld [hl], b                                       ; $4b63: $70
	add sp, $5c                                      ; $4b64: $e8 $5c
	jp hl                                            ; $4b66: $e9


	sbc [hl]                                         ; $4b67: $9e
	add hl, bc                                       ; $4b68: $09
	ldh a, [c]                                       ; $4b69: $f2
	sbc l                                            ; $4b6a: $9d
	rst $38                                          ; $4b6b: $ff
	rst AddAOntoHL                                          ; $4b6c: $ef
	sbc $7f                                          ; $4b6d: $de $7f
	ld a, d                                          ; $4b6f: $7a
	cp l                                             ; $4b70: $bd
	ld h, e                                          ; $4b71: $63
	sub d                                            ; $4b72: $92
	sbc e                                            ; $4b73: $9b
	db $10                                           ; $4b74: $10
	ld [$f8f8], sp                                   ; $4b75: $08 $f8 $f8
	sbc $fc                                          ; $4b78: $de $fc
	ld a, c                                          ; $4b7a: $79
	adc b                                            ; $4b7b: $88
	db $fc                                           ; $4b7c: $fc
	sbc e                                            ; $4b7d: $9b
	ccf                                              ; $4b7e: $3f
	jr nz, @+$12                                     ; $4b7f: $20 $10

	rra                                              ; $4b81: $1f
	sbc $0f                                          ; $4b82: $de $0f
	ld a, l                                          ; $4b84: $7d
	ldh [rOCPS], a                                   ; $4b85: $e0 $6a
	adc l                                            ; $4b87: $8d
	add b                                            ; $4b88: $80
	db $ec                                           ; $4b89: $ec
	ld a, b                                          ; $4b8a: $78
	inc de                                           ; $4b8b: $13
	and $ed                                          ; $4b8c: $e6 $ed
	ld sp, hl                                        ; $4b8e: $f9
	ldh a, [c]                                       ; $4b8f: $f2
	or $2c                                           ; $4b90: $f6 $2c
	ld hl, sp-$0f                                    ; $4b92: $f8 $f1
	ld [hl+], a                                      ; $4b94: $22
	inc l                                            ; $4b95: $2c
	add hl, sp                                       ; $4b96: $39
	ld [de], a                                       ; $4b97: $12
	ld d, $9d                                        ; $4b98: $16 $9d
	ld a, [de]                                       ; $4b9a: $1a
	or [hl]                                          ; $4b9b: $b6
	ld h, [hl]                                       ; $4b9c: $66
	xor [hl]                                         ; $4b9d: $ae
	ld c, [hl]                                       ; $4b9e: $4e
	sbc $bb                                          ; $4b9f: $de $bb
	ld h, d                                          ; $4ba1: $62
	push bc                                          ; $4ba2: $c5
	adc c                                            ; $4ba3: $89
	ld [de], a                                       ; $4ba4: $12
	ld h, $4a                                        ; $4ba5: $26 $4a
	ld c, [hl]                                       ; $4ba7: $4e
	add [hl]                                         ; $4ba8: $86
	sbc d                                            ; $4ba9: $9a
	jr nz, jr_05e_4bd0                               ; $4baa: $20 $24

	nop                                              ; $4bac: $00
	ld d, d                                          ; $4bad: $52
	jp c, $fde9                                      ; $4bae: $da $e9 $fd

	rst $38                                          ; $4bb1: $ff
	rst SubAFromDE                                          ; $4bb2: $df
	ld e, e                                          ; $4bb3: $5b
	ld e, e                                          ; $4bb4: $5b
	ld c, c                                          ; $4bb5: $49
	ld c, c                                          ; $4bb6: $49
	ret z                                            ; $4bb7: $c8

	xor b                                            ; $4bb8: $a8
	cp h                                             ; $4bb9: $bc
	adc b                                            ; $4bba: $88
	sub c                                            ; $4bbb: $91
	sub c                                            ; $4bbc: $91
	sub e                                            ; $4bbd: $93
	xor d                                            ; $4bbe: $aa
	xor e                                            ; $4bbf: $ab
	xor a                                            ; $4bc0: $af
	xor $de                                          ; $4bc1: $ee $de
	rst $38                                          ; $4bc3: $ff
	sbc $fe                                          ; $4bc4: $de $fe
	sub h                                            ; $4bc6: $94
	rst $38                                          ; $4bc7: $ff
	ld a, [$9793]                                    ; $4bc8: $fa $93 $97
	or [hl]                                          ; $4bcb: $b6
	or [hl]                                          ; $4bcc: $b6
	db $ec                                           ; $4bcd: $ec
	db $fc                                           ; $4bce: $fc
	inc c                                            ; $4bcf: $0c

jr_05e_4bd0:
	inc b                                            ; $4bd0: $04
	cp $de                                           ; $4bd1: $fe $de
	db $fc                                           ; $4bd3: $fc
	adc b                                            ; $4bd4: $88
	ld c, h                                          ; $4bd5: $4c
	db $f4                                           ; $4bd6: $f4
	ld [$9a64], sp                                   ; $4bd7: $08 $64 $9a
	sbc d                                            ; $4bda: $9a
	rst SubAFromDE                                          ; $4bdb: $df
	db $d3                                           ; $4bdc: $d3
	ld h, e                                          ; $4bdd: $63
	ld a, l                                          ; $4bde: $7d
	ld b, e                                          ; $4bdf: $43
	add c                                            ; $4be0: $81
	rst $38                                          ; $4be1: $ff
	rst $38                                          ; $4be2: $ff
	ld [hl], a                                       ; $4be3: $77
	ld a, [hl]                                       ; $4be4: $7e
	jr nz, jr_05e_4c23                               ; $4be5: $20 $3c

	ld b, d                                          ; $4be7: $42
	sbc c                                            ; $4be8: $99
	ld a, a                                          ; $4be9: $7f
	inc a                                            ; $4bea: $3c
	ld a, b                                          ; $4beb: $78
	sbc $bf                                          ; $4bec: $de $bf
	sub l                                            ; $4bee: $95
	rst SubAFromDE                                          ; $4bef: $df
	cp a                                             ; $4bf0: $bf
	and h                                            ; $4bf1: $a4
	rst SubAFromHL                                          ; $4bf2: $d7
	rst GetHLinHL                                          ; $4bf3: $cf
	add sp, -$28                                     ; $4bf4: $e8 $d8
	ret nc                                           ; $4bf6: $d0

	ldh a, [$a0]                                     ; $4bf7: $f0 $a0
	ld a, b                                          ; $4bf9: $78
	di                                               ; $4bfa: $f3
	call c, Call_05e_79fb                            ; $4bfb: $dc $fb $79
	add e                                            ; $4bfe: $83
	call c, Call_05e_7f04                            ; $4bff: $dc $04 $7f
	call $089c                                       ; $4c02: $cd $9c $08
	ldh a, [$f0]                                     ; $4c05: $f0 $f0
	sbc $f8                                          ; $4c07: $de $f8
	ld a, e                                          ; $4c09: $7b
	ld a, [$b155]                                    ; $4c0a: $fa $55 $b1
	ld h, c                                          ; $4c0d: $61
	or b                                             ; $4c0e: $b0
	sbc b                                            ; $4c0f: $98
	rra                                              ; $4c10: $1f
	ld e, $37                                        ; $4c11: $1e $37
	dec sp                                           ; $4c13: $3b
	dec a                                            ; $4c14: $3d
	ld a, [$78dd]                                    ; $4c15: $fa $dd $78
	db $ec                                           ; $4c18: $ec
	ei                                               ; $4c19: $fb
	sub a                                            ; $4c1a: $97
	call nc, Call_05e_50e2                           ; $4c1b: $d4 $e2 $50
	xor b                                            ; $4c1e: $a8
	ld b, h                                          ; $4c1f: $44
	and c                                            ; $4c20: $a1
	ld d, [hl]                                       ; $4c21: $56
	adc b                                            ; $4c22: $88

jr_05e_4c23:
	db $f4                                           ; $4c23: $f4
	sbc h                                            ; $4c24: $9c
	add b                                            ; $4c25: $80
	ld b, d                                          ; $4c26: $42
	dec h                                            ; $4c27: $25
	ld sp, hl                                        ; $4c28: $f9
	sbc d                                            ; $4c29: $9a
	ld a, [bc]                                       ; $4c2a: $0a
	ld de, $0000                                     ; $4c2b: $11 $00 $00
	jr c, @+$7b                                      ; $4c2e: $38 $79

	ld e, $f9                                        ; $4c30: $1e $f9
	sub a                                            ; $4c32: $97
	xor [hl]                                         ; $4c33: $ae
	ld d, [hl]                                       ; $4c34: $56
	xor e                                            ; $4c35: $ab
	rla                                              ; $4c36: $17
	rrca                                             ; $4c37: $0f
	dec e                                            ; $4c38: $1d
	adc e                                            ; $4c39: $8b
	ld d, a                                          ; $4c3a: $57
	ld e, e                                          ; $4c3b: $5b
	db $d3                                           ; $4c3c: $d3
	sbc [hl]                                         ; $4c3d: $9e
	ret nz                                           ; $4c3e: $c0

	sbc $e0                                          ; $4c3f: $de $e0
	sbc [hl]                                         ; $4c41: $9e
	ret nz                                           ; $4c42: $c0

	push af                                          ; $4c43: $f5
	sbc h                                            ; $4c44: $9c
	rra                                              ; $4c45: $1f
	ld [hl-], a                                      ; $4c46: $32
	nop                                              ; $4c47: $00
	ld l, [hl]                                       ; $4c48: $6e
	ld d, [hl]                                       ; $4c49: $56
	sbc b                                            ; $4c4a: $98
	dec c                                            ; $4c4b: $0d
	rra                                              ; $4c4c: $1f
	rrca                                             ; $4c4d: $0f
	rst $38                                          ; $4c4e: $ff
	ld a, a                                          ; $4c4f: $7f
	ld [hl], e                                       ; $4c50: $73
	ret nz                                           ; $4c51: $c0

	ld l, [hl]                                       ; $4c52: $6e
	ld [hl], e                                       ; $4c53: $73
	sbc [hl]                                         ; $4c54: $9e
	inc c                                            ; $4c55: $0c
	ld [hl], l                                       ; $4c56: $75
	ld a, b                                          ; $4c57: $78
	sbc c                                            ; $4c58: $99
	rst $38                                          ; $4c59: $ff
	db $fc                                           ; $4c5a: $fc
	db $fc                                           ; $4c5b: $fc
	cp $fe                                           ; $4c5c: $fe $fe
	rst SubAFromHL                                          ; $4c5e: $d7
	ld [hl], h                                       ; $4c5f: $74
	ld c, b                                          ; $4c60: $48
	ld e, l                                          ; $4c61: $5d
	rla                                              ; $4c62: $17
	sbc h                                            ; $4c63: $9c
	ld [$fe1e], sp                                   ; $4c64: $08 $1e $fe
	ld e, a                                          ; $4c67: $5f
	ldh a, [$7e]                                     ; $4c68: $f0 $7e
	db $fd                                           ; $4c6a: $fd
	ld a, [hl]                                       ; $4c6b: $7e
	sub d                                            ; $4c6c: $92
	sbc b                                            ; $4c6d: $98
	ld a, [de]                                       ; $4c6e: $1a
	rra                                              ; $4c6f: $1f
	ld a, [bc]                                       ; $4c70: $0a
	add a                                            ; $4c71: $87
	ld a, [de]                                       ; $4c72: $1a
	inc de                                           ; $4c73: $13
	ld [bc], a                                       ; $4c74: $02
	db $fc                                           ; $4c75: $fc
	add b                                            ; $4c76: $80
	or e                                             ; $4c77: $b3
	cp a                                             ; $4c78: $bf
	ldh [c], a                                       ; $4c79: $e2
	pop bc                                           ; $4c7a: $c1
	ld b, c                                          ; $4c7b: $41
	ld b, c                                          ; $4c7c: $41

Jump_05e_4c7d:
	ld h, e                                          ; $4c7d: $63
	ccf                                              ; $4c7e: $3f
	or e                                             ; $4c7f: $b3
	cp [hl]                                          ; $4c80: $be
	ldh [c], a                                       ; $4c81: $e2
	reti                                             ; $4c82: $d9


	ld [hl], l                                       ; $4c83: $75
	ld l, l                                          ; $4c84: $6d
	ld h, e                                          ; $4c85: $63
	dec a                                            ; $4c86: $3d
	cp a                                             ; $4c87: $bf
	cpl                                              ; $4c88: $2f
	ld de, $e020                                     ; $4c89: $11 $20 $e0
	ldh [$b1], a                                     ; $4c8c: $e0 $b1
	rra                                              ; $4c8e: $1f
	ld [hl], $2f                                     ; $4c8f: $36 $2f
	ld de, $322c                                     ; $4c91: $11 $2c $32
	or $11                                           ; $4c94: $f6 $11
	add b                                            ; $4c96: $80
	ld c, $ea                                        ; $4c97: $0e $ea
	ld a, [$fbfa]                                    ; $4c99: $fa $fa $fb
	rst $38                                          ; $4c9c: $ff
	sbc a                                            ; $4c9d: $9f
	sbc a                                            ; $4c9e: $9f
	rra                                              ; $4c9f: $1f
	cp d                                             ; $4ca0: $ba
	cp d                                             ; $4ca1: $ba
	xor d                                            ; $4ca2: $aa
	ld sp, hl                                        ; $4ca3: $f9
	ld [$0a86], a                                    ; $4ca4: $ea $86 $0a
	dec bc                                           ; $4ca7: $0b
	ld b, $07                                        ; $4ca8: $06 $07
	ld b, $0e                                        ; $4caa: $06 $0e
	cp $6e                                           ; $4cac: $fe $6e
	nop                                              ; $4cae: $00
	rrca                                             ; $4caf: $0f
	sub h                                            ; $4cb0: $94
	or h                                             ; $4cb1: $b4
	inc h                                            ; $4cb2: $24
	ld [$03f0], sp                                   ; $4cb3: $08 $f0 $03
	ld a, a                                          ; $4cb6: $7f
	ld hl, sp-$22                                    ; $4cb7: $f8 $de
	add c                                            ; $4cb9: $81
	sub d                                            ; $4cba: $92
	jp SetWramBankToHighByteInStackAfterReturn                                         ; $4cbb: $c3 $7f $07


	rlca                                             ; $4cbe: $07
	rst SubAFromBC                                          ; $4cbf: $e7
	and l                                            ; $4cc0: $a5
	xor l                                            ; $4cc1: $ad
	adc c                                            ; $4cc2: $89
	ld b, d                                          ; $4cc3: $42
	inc a                                            ; $4cc4: $3c
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	pop hl                                           ; $4cc7: $e1
	sbc $bf                                          ; $4cc8: $de $bf
	rst SubAFromDE                                          ; $4cca: $df
	rst $38                                          ; $4ccb: $ff
	sub l                                            ; $4ccc: $95
	ld a, [$aad5]                                    ; $4ccd: $fa $d5 $aa
	and b                                            ; $4cd0: $a0
	jr nz, jr_05e_4cf3                               ; $4cd1: $20 $20

	and b                                            ; $4cd3: $a0
	ret nz                                           ; $4cd4: $c0

	add b                                            ; $4cd5: $80
	add b                                            ; $4cd6: $80
	ld [hl], d                                       ; $4cd7: $72
	jp Jump_05e_7b9b                                 ; $4cd8: $c3 $9b $7b


	xor d                                            ; $4cdb: $aa
	ld d, c                                          ; $4cdc: $51
	xor d                                            ; $4cdd: $aa
	reti                                             ; $4cde: $d9


	inc b                                            ; $4cdf: $04
	ld a, d                                          ; $4ce0: $7a
	inc hl                                           ; $4ce1: $23
	sbc l                                            ; $4ce2: $9d
	cp [hl]                                          ; $4ce3: $be
	ld [hl], a                                       ; $4ce4: $77
	ld a, b                                          ; $4ce5: $78
	ei                                               ; $4ce6: $fb
	ld c, [hl]                                       ; $4ce7: $4e
	ldh a, [$9d]                                     ; $4ce8: $f0 $9d
	ld l, h                                          ; $4cea: $6c
	xor h                                            ; $4ceb: $ac
	ld [hl], e                                       ; $4cec: $73
	ld d, h                                          ; $4ced: $54
	sub l                                            ; $4cee: $95
	inc bc                                           ; $4cef: $03
	inc de                                           ; $4cf0: $13
	inc de                                           ; $4cf1: $13
	push af                                          ; $4cf2: $f5

jr_05e_4cf3:
	ld a, [hl-]                                      ; $4cf3: $3a
	dec b                                            ; $4cf4: $05
	ld a, [bc]                                       ; $4cf5: $0a
	dec c                                            ; $4cf6: $0d
	ld c, $0e                                        ; $4cf7: $0e $0e
	ld [hl], a                                       ; $4cf9: $77
	ld h, e                                          ; $4cfa: $63
	ld a, a                                          ; $4cfb: $7f
	rlca                                             ; $4cfc: $07
	rst SubAFromDE                                          ; $4cfd: $df
	ldh a, [hDisp1_WX]                                     ; $4cfe: $f0 $96
	db $fc                                           ; $4d00: $fc
	ld d, b                                          ; $4d01: $50
	jr nz, jr_05e_4d04                               ; $4d02: $20 $00

jr_05e_4d04:
	add b                                            ; $4d04: $80
	ld b, e                                          ; $4d05: $43
	adc e                                            ; $4d06: $8b
	dec c                                            ; $4d07: $0d
	ld c, $62                                        ; $4d08: $0e $62
	ret nc                                           ; $4d0a: $d0

	sbc h                                            ; $4d0b: $9c
	inc b                                            ; $4d0c: $04
	ld b, b                                          ; $4d0d: $40
	xor c                                            ; $4d0e: $a9
	ld a, e                                          ; $4d0f: $7b
	and $61                                          ; $4d10: $e6 $61
	add b                                            ; $4d12: $80
	sub a                                            ; $4d13: $97
	nop                                              ; $4d14: $00
	dec b                                            ; $4d15: $05
	adc e                                            ; $4d16: $8b
	ld d, a                                          ; $4d17: $57
	xor [hl]                                         ; $4d18: $ae
	ld c, l                                          ; $4d19: $4d
	dec bc                                           ; $4d1a: $0b
	rla                                              ; $4d1b: $17
	ld sp, hl                                        ; $4d1c: $f9
	sub a                                            ; $4d1d: $97
	cpl                                              ; $4d1e: $2f
	inc b                                            ; $4d1f: $04
	add e                                            ; $4d20: $83
	ld b, b                                          ; $4d21: $40
	ret nz                                           ; $4d22: $c0

	ldh [$f0], a                                     ; $4d23: $e0 $f0
	ld a, h                                          ; $4d25: $7c
	ld e, l                                          ; $4d26: $5d
	adc a                                            ; $4d27: $8f
	sbc [hl]                                         ; $4d28: $9e

jr_05e_4d29:
	inc d                                            ; $4d29: $14
	ld a, e                                          ; $4d2a: $7b
	sub d                                            ; $4d2b: $92
	sbc l                                            ; $4d2c: $9d
	ld d, l                                          ; $4d2d: $55
	dec hl                                           ; $4d2e: $2b
	ld l, d                                          ; $4d2f: $6a
	ldh a, [c]                                       ; $4d30: $f2
	sbc e                                            ; $4d31: $9b
	inc bc                                           ; $4d32: $03
	and b                                            ; $4d33: $a0
	ld c, d                                          ; $4d34: $4a
	dec d                                            ; $4d35: $15
	ld [hl], a                                       ; $4d36: $77
	ldh a, [$9e]                                     ; $4d37: $f0 $9e
	xor e                                            ; $4d39: $ab
	ld a, [$219d]                                    ; $4d3a: $fa $9d $21
	nop                                              ; $4d3d: $00
	ld [hl], a                                       ; $4d3e: $77
	ldh a, [c]                                       ; $4d3f: $f2
	ld a, a                                          ; $4d40: $7f
	cp $66                                           ; $4d41: $fe $66
	ld d, b                                          ; $4d43: $50
	sbc [hl]                                         ; $4d44: $9e
	ldh [$7b], a                                     ; $4d45: $e0 $7b
	db $f4                                           ; $4d47: $f4
	ld a, c                                          ; $4d48: $79
	ld l, e                                          ; $4d49: $6b
	ld l, l                                          ; $4d4a: $6d
	ld h, l                                          ; $4d4b: $65
	ld a, e                                          ; $4d4c: $7b
	db $fd                                           ; $4d4d: $fd
	ld a, [hl]                                       ; $4d4e: $7e
	or [hl]                                          ; $4d4f: $b6
	sbc b                                            ; $4d50: $98
	cp [hl]                                          ; $4d51: $be
	ld b, c                                          ; $4d52: $41
	nop                                              ; $4d53: $00
	add b                                            ; $4d54: $80
	add [hl]                                         ; $4d55: $86
	add a                                            ; $4d56: $87
	ld b, e                                          ; $4d57: $43
	ld [hl], a                                       ; $4d58: $77
	ld [hl], b                                       ; $4d59: $70
	ld [hl], a                                       ; $4d5a: $77
	db $fc                                           ; $4d5b: $fc
	sub a                                            ; $4d5c: $97
	ld c, d                                          ; $4d5d: $4a
	push hl                                          ; $4d5e: $e5
	ld h, [hl]                                       ; $4d5f: $66
	call nz, _SetWramBankToHighByteInStackAfterReturn                                   ; $4d60: $c4 $48 $08
	add b                                            ; $4d63: $80
	ld d, b                                          ; $4d64: $50
	ld [hl], h                                       ; $4d65: $74
	ret c                                            ; $4d66: $d8

	add h                                            ; $4d67: $84
	nop                                              ; $4d68: $00
	rlca                                             ; $4d69: $07

jr_05e_4d6a:
	rrca                                             ; $4d6a: $0f
	adc a                                            ; $4d6b: $8f

Call_05e_4d6c:
	ccf                                              ; $4d6c: $3f
	ccf                                              ; $4d6d: $3f
	inc sp                                           ; $4d6e: $33
	inc sp                                           ; $4d6f: $33
	ld sp, $0c18                                     ; $4d70: $31 $18 $0c
	ld b, $22                                        ; $4d73: $06 $22
	ld hl, $e120                                     ; $4d75: $21 $20 $e1
	jr nz, jr_05e_4d6a                               ; $4d78: $20 $f0

	ld hl, sp-$04                                    ; $4d7a: $f8 $fc
	nop                                              ; $4d7c: $00
	add b                                            ; $4d7d: $80
	ldh [rAUD4LEN], a                                ; $4d7e: $e0 $20
	ret nz                                           ; $4d80: $c0

	inc bc                                           ; $4d81: $03
	rst JumpTable                                          ; $4d82: $c7
	ld [hl], l                                       ; $4d83: $75
	ld d, e                                          ; $4d84: $53
	ld a, a                                          ; $4d85: $7f
	ld hl, sp+$7b                                    ; $4d86: $f8 $7b
	call c, $3f8a                                    ; $4d88: $dc $8a $3f
	ld a, [hl]                                       ; $4d8b: $7e
	db $f4                                           ; $4d8c: $f4
	halt                                             ; $4d8d: $76
	or $e7                                           ; $4d8e: $f6 $e7
	db $ec                                           ; $4d90: $ec
	ldh a, [$27]                                     ; $4d91: $f0 $27
	ld b, [hl]                                       ; $4d93: $46
	inc d                                            ; $4d94: $14
	ld [de], a                                       ; $4d95: $12
	ld [de], a                                       ; $4d96: $12
	ld hl, $87c3                                     ; $4d97: $21 $c3 $87
	adc h                                            ; $4d9a: $8c
	rst JumpTable                                          ; $4d9b: $c7
	ret nz                                           ; $4d9c: $c0

	db $e3                                           ; $4d9d: $e3
	ldh a, [$78]                                     ; $4d9e: $f0 $78
	jr z, jr_05e_4d29                                ; $4da0: $28 $87

	ld [$c087], sp                                   ; $4da2: $08 $87 $c0
	ret nz                                           ; $4da5: $c0

	and b                                            ; $4da6: $a0
	sub b                                            ; $4da7: $90
	adc a                                            ; $4da8: $8f
	add b                                            ; $4da9: $80
	ld l, a                                          ; $4daa: $6f
	adc $1e                                          ; $4dab: $ce $1e
	ld e, $3e                                        ; $4dad: $1e $3e
	ld a, [hl]                                       ; $4daf: $7e
	cp $ff                                           ; $4db0: $fe $ff
	ld hl, $06c2                                     ; $4db2: $21 $c2 $06
	rlca                                             ; $4db5: $07
	ld a, [bc]                                       ; $4db6: $0a
	inc de                                           ; $4db7: $13
	db $e3                                           ; $4db8: $e3
	inc bc                                           ; $4db9: $03
	ld a, d                                          ; $4dba: $7a
	and $7f                                          ; $4dbb: $e6 $7f
	ld e, e                                          ; $4dbd: $5b
	sbc h                                            ; $4dbe: $9c
	inc bc                                           ; $4dbf: $03
	ld b, $03                                        ; $4dc0: $06 $03
	ld [hl], a                                       ; $4dc2: $77
	add b                                            ; $4dc3: $80
	sbc h                                            ; $4dc4: $9c
	ld [bc], a                                       ; $4dc5: $02
	rst $38                                          ; $4dc6: $ff
	db $fc                                           ; $4dc7: $fc
	ld a, e                                          ; $4dc8: $7b
	ld a, h                                          ; $4dc9: $7c
	adc c                                            ; $4dca: $89
	add hl, de                                       ; $4dcb: $19
	rst SubAFromBC                                          ; $4dcc: $e7
	dec de                                           ; $4dcd: $1b
	call $9074                                       ; $4dce: $cd $74 $90
	inc b                                            ; $4dd1: $04
	inc b                                            ; $4dd2: $04
	dec e                                            ; $4dd3: $1d
	rst SubAFromBC                                          ; $4dd4: $e7
	ld [de], a                                       ; $4dd5: $12
	adc c                                            ; $4dd6: $89
	ld h, h                                          ; $4dd7: $64
	sub b                                            ; $4dd8: $90
	nop                                              ; $4dd9: $00
	add b                                            ; $4dda: $80
	ld b, b                                          ; $4ddb: $40
	ret nz                                           ; $4ddc: $c0

	ret nz                                           ; $4ddd: $c0

	ldh [rSVBK], a                                   ; $4dde: $e0 $70
	jr nc, jr_05e_4e5d                               ; $4de0: $30 $7b

	ld hl, sp-$66                                    ; $4de2: $f8 $9a
	ld a, a                                          ; $4de4: $7f
	ret nz                                           ; $4de5: $c0

	ccf                                              ; $4de6: $3f
	rra                                              ; $4de7: $1f
	rra                                              ; $4de8: $1f
	sbc $0c                                          ; $4de9: $de $0c
	sbc d                                            ; $4deb: $9a
	ld b, $77                                        ; $4dec: $06 $77
	ld l, a                                          ; $4dee: $6f
	inc sp                                           ; $4def: $33
	ld a, b                                          ; $4df0: $78
	sbc $13                                          ; $4df1: $de $13
	add e                                            ; $4df3: $83
	rst $38                                          ; $4df4: $ff
	ld a, l                                          ; $4df5: $7d
	call z, $f0e2                                    ; $4df6: $cc $e2 $f0
	ld [$e0a0], sp                                   ; $4df9: $08 $a0 $e0
	ldh [$a0], a                                     ; $4dfc: $e0 $a0
	ld d, c                                          ; $4dfe: $51
	xor l                                            ; $4dff: $ad
	add $f0                                          ; $4e00: $c6 $f0
	ld d, b                                          ; $4e02: $50
	nop                                              ; $4e03: $00
	ret nz                                           ; $4e04: $c0

	and b                                            ; $4e05: $a0
	ld d, c                                          ; $4e06: $51
	dec l                                            ; $4e07: $2d
	ld b, $37                                        ; $4e08: $06 $37
	ld a, d                                          ; $4e0a: $7a
	dec a                                            ; $4e0b: $3d
	ld l, $17                                        ; $4e0c: $2e $17
	dec de                                           ; $4e0e: $1b
	dec d                                            ; $4e0f: $15
	ld h, l                                          ; $4e10: $65
	add b                                            ; $4e11: $80
	sbc l                                            ; $4e12: $9d
	and b                                            ; $4e13: $a0
	ld b, b                                          ; $4e14: $40
	ld a, e                                          ; $4e15: $7b
	cp $7b                                           ; $4e16: $fe $7b
	call nz, $fc7f                                   ; $4e18: $c4 $7f $fc
	ld h, [hl]                                       ; $4e1b: $66
	or b                                             ; $4e1c: $b0
	sbc c                                            ; $4e1d: $99
	dec d                                            ; $4e1e: $15
	inc hl                                           ; $4e1f: $23
	dec b                                            ; $4e20: $05
	ld [bc], a                                       ; $4e21: $02
	inc b                                            ; $4e22: $04
	ld [$97f8], sp                                   ; $4e23: $08 $f8 $97
	cp $df                                           ; $4e26: $fe $df
	xor l                                            ; $4e28: $ad
	ld e, l                                          ; $4e29: $5d
	cp c                                             ; $4e2a: $b9
	ld d, b                                          ; $4e2b: $50
	and c                                            ; $4e2c: $a1
	ld d, e                                          ; $4e2d: $53
	ld sp, hl                                        ; $4e2e: $f9
	add b                                            ; $4e2f: $80
	dec d                                            ; $4e30: $15
	ld a, [hl+]                                      ; $4e31: $2a
	ld e, e                                          ; $4e32: $5b
	ld d, [hl]                                       ; $4e33: $56
	ld d, h                                          ; $4e34: $54
	jp nc, $0896                                     ; $4e35: $d2 $96 $08

	dec b                                            ; $4e38: $05
	ld a, [bc]                                       ; $4e39: $0a
	dec bc                                           ; $4e3a: $0b
	ld [de], a                                       ; $4e3b: $12
	db $10                                           ; $4e3c: $10
	ld [de], a                                       ; $4e3d: $12
	ld d, $08                                        ; $4e3e: $16 $08
	halt                                             ; $4e40: $76
	xor c                                            ; $4e41: $a9
	ld d, a                                          ; $4e42: $57
	rst GetHLinHL                                          ; $4e43: $cf
	sbc d                                            ; $4e44: $9a
	rlca                                             ; $4e45: $07
	ld [hl], e                                       ; $4e46: $73
	dec de                                           ; $4e47: $1b
	ld h, [hl]                                       ; $4e48: $66
	xor b                                            ; $4e49: $a8
	ld de, $0203                                     ; $4e4a: $11 $03 $02
	nop                                              ; $4e4d: $00

Jump_05e_4e4e:
	ld [hl], b                                       ; $4e4e: $70
	adc [hl]                                         ; $4e4f: $8e
	jr jr_05e_4ea7                                   ; $4e50: $18 $55

	xor d                                            ; $4e52: $aa
	ld e, a                                          ; $4e53: $5f
	and $0d                                          ; $4e54: $e6 $0d
	rst SubAFromDE                                          ; $4e56: $df
	or l                                             ; $4e57: $b5
	ld a, a                                          ; $4e58: $7f
	ld b, b                                          ; $4e59: $40
	add b                                            ; $4e5a: $80
	ld e, $e4                                        ; $4e5b: $1e $e4

jr_05e_4e5d:
	ld [$2010], sp                                   ; $4e5d: $08 $10 $20
	ld a, [hl]                                       ; $4e60: $7e
	reti                                             ; $4e61: $d9


	rst $38                                          ; $4e62: $ff
	ld sp, hl                                        ; $4e63: $f9
	sub a                                            ; $4e64: $97
	add d                                            ; $4e65: $82
	pop af                                           ; $4e66: $f1
	ld sp, hl                                        ; $4e67: $f9
	di                                               ; $4e68: $f3
	and $e5                                          ; $4e69: $e6 $e5
	ldh a, [c]                                       ; $4e6b: $f2
	ld sp, hl                                        ; $4e6c: $f9
	ld [hl], h                                       ; $4e6d: $74
	rst SubAFromDE                                          ; $4e6e: $df
	sbc c                                            ; $4e6f: $99
	ld bc, $0102                                     ; $4e70: $01 $02 $01
	ld [bc], a                                       ; $4e73: $02
	xor d                                            ; $4e74: $aa
	ld d, h                                          ; $4e75: $54
	ld a, e                                          ; $4e76: $7b
	cp $7a                                           ; $4e77: $fe $7a
	sbc e                                            ; $4e79: $9b
	ld a, [hl]                                       ; $4e7a: $7e
	ld a, [hl]                                       ; $4e7b: $7e
	ld a, e                                          ; $4e7c: $7b
	cp $7b                                           ; $4e7d: $fe $7b
	rst FarCall                                          ; $4e7f: $f7

Call_05e_4e80:
	sub h                                            ; $4e80: $94

jr_05e_4e81:
	and d                                            ; $4e81: $a2
	inc bc                                           ; $4e82: $03
	xor c                                            ; $4e83: $a9
	nop                                              ; $4e84: $00
	xor b                                            ; $4e85: $a8
	nop                                              ; $4e86: $00
	xor d                                            ; $4e87: $aa
	ld b, b                                          ; $4e88: $40
	ld e, [hl]                                       ; $4e89: $5e
	rst $38                                          ; $4e8a: $ff
	ld d, a                                          ; $4e8b: $57
	ld a, e                                          ; $4e8c: $7b
	cp $91                                           ; $4e8d: $fe $91
	ld d, l                                          ; $4e8f: $55
	cp a                                             ; $4e90: $bf
	rrca                                             ; $4e91: $0f
	rra                                              ; $4e92: $1f
	rst FarCall                                          ; $4e93: $f7
	ld b, $04                                        ; $4e94: $06 $04
	inc b                                            ; $4e96: $04
	ld b, $02                                        ; $4e97: $06 $02
	rlca                                             ; $4e99: $07
	ld c, $fc                                        ; $4e9a: $0e $fc
	cp $78                                           ; $4e9c: $fe $78
	ld c, [hl]                                       ; $4e9e: $4e
	add d                                            ; $4e9f: $82
	rst $38                                          ; $4ea0: $ff
	pop hl                                           ; $4ea1: $e1
	pop bc                                           ; $4ea2: $c1
	add e                                            ; $4ea3: $83
	dec b                                            ; $4ea4: $05
	add hl, bc                                       ; $4ea5: $09
	add hl, de                                       ; $4ea6: $19

jr_05e_4ea7:
	ld sp, $0fd1                                     ; $4ea7: $31 $d1 $0f
	rra                                              ; $4eaa: $1f
	ccf                                              ; $4eab: $3f
	ld a, l                                          ; $4eac: $7d
	ld sp, hl                                        ; $4ead: $f9
	ld a, c                                          ; $4eae: $79
	ld [hl], c                                       ; $4eaf: $71
	pop af                                           ; $4eb0: $f1
	ld bc, $063e                                     ; $4eb1: $01 $3e $06
	ld b, $07                                        ; $4eb4: $06 $07
	add $3f                                          ; $4eb6: $c6 $3f
	ld c, $00                                        ; $4eb8: $0e $00
	jp nz, $e2e2                                     ; $4eba: $c2 $e2 $e2

	ld a, c                                          ; $4ebd: $79
	ld h, [hl]                                       ; $4ebe: $66
	sub d                                            ; $4ebf: $92
	pop af                                           ; $4ec0: $f1
	add b                                            ; $4ec1: $80
	ld a, [hl]                                       ; $4ec2: $7e
	ret z                                            ; $4ec3: $c8

	ret nz                                           ; $4ec4: $c0

	ret nz                                           ; $4ec5: $c0

	jp $aafc                                         ; $4ec6: $c3 $fc $aa


	nop                                              ; $4ec9: $00
	ld b, c                                          ; $4eca: $41
	add a                                            ; $4ecb: $87
	adc a                                            ; $4ecc: $8f
	ld a, c                                          ; $4ecd: $79
	add [hl]                                         ; $4ece: $86
	sub d                                            ; $4ecf: $92
	ld d, l                                          ; $4ed0: $55
	add b                                            ; $4ed1: $80
	ldh [$fc], a                                     ; $4ed2: $e0 $fc
	rst $38                                          ; $4ed4: $ff
	sbc b                                            ; $4ed5: $98
	ret z                                            ; $4ed6: $c8

	ld c, h                                          ; $4ed7: $4c
	call nz, rIE                                   ; $4ed8: $c4 $ff $ff
	cp a                                             ; $4edb: $bf
	sub e                                            ; $4edc: $93
	sbc $c8                                          ; $4edd: $de $c8
	sub [hl]                                         ; $4edf: $96
	call nz, $3060                                   ; $4ee0: $c4 $60 $30
	jr jr_05e_4e81                                   ; $4ee3: $18 $9c

	ld a, h                                          ; $4ee5: $7c
	ld c, $0e                                        ; $4ee6: $0e $0e
	rlca                                             ; $4ee8: $07
	ld a, c                                          ; $4ee9: $79
	db $ec                                           ; $4eea: $ec
	sub d                                            ; $4eeb: $92
	ldh a, [$78]                                     ; $4eec: $f0 $78
	ld [$0408], sp                                   ; $4eee: $08 $08 $04
	dec de                                           ; $4ef1: $1b
	add hl, de                                       ; $4ef2: $19
	ld [$040c], sp                                   ; $4ef3: $08 $0c $04
	dec b                                            ; $4ef6: $05
	ld [bc], a                                       ; $4ef7: $02
	inc bc                                           ; $4ef8: $03
	sbc $0f                                          ; $4ef9: $de $0f
	sbc $07                                          ; $4efb: $de $07
	ld a, a                                          ; $4efd: $7f
	ld hl, sp-$6a                                    ; $4efe: $f8 $96
	call z, $c080                                    ; $4f00: $cc $80 $c0
	ld l, h                                          ; $4f03: $6c
	scf                                              ; $4f04: $37
	rst GetHLinHL                                          ; $4f05: $cf
	ld a, $8f                                        ; $4f06: $3e $8f
	ret nz                                           ; $4f08: $c0

	ld [hl], h                                       ; $4f09: $74
	sbc b                                            ; $4f0a: $98
	sbc h                                            ; $4f0b: $9c
	ret nz                                           ; $4f0c: $c0

	ld bc, $7980                                     ; $4f0d: $01 $80 $79
	add a                                            ; $4f10: $87
	sbc d                                            ; $4f11: $9a
	inc bc                                           ; $4f12: $03
	ld a, a                                          ; $4f13: $7f
	rst AddAOntoHL                                          ; $4f14: $ef
	db $e4                                           ; $4f15: $e4
	db $e4                                           ; $4f16: $e4
	ld [hl], a                                       ; $4f17: $77
	ld hl, sp-$75                                    ; $4f18: $f8 $8b
	dec c                                            ; $4f1a: $0d
	ld h, e                                          ; $4f1b: $63
	call nz, $8c64                                   ; $4f1c: $c4 $64 $8c
	adc d                                            ; $4f1f: $8a
	push af                                          ; $4f20: $f5
	ld [hl+], a                                      ; $4f21: $22
	ld b, e                                          ; $4f22: $43
	adc d                                            ; $4f23: $8a
	add a                                            ; $4f24: $87
	add a                                            ; $4f25: $87
	and b                                            ; $4f26: $a0
	ldh a, [$f0]                                     ; $4f27: $f0 $f0
	jr c, jr_05e_4fa3                                ; $4f29: $38 $78

	db $e4                                           ; $4f2b: $e4
	ldh a, [$f0]                                     ; $4f2c: $f0 $f0
	ld [hl], l                                       ; $4f2e: $75
	db $fc                                           ; $4f2f: $fc
	ld a, a                                          ; $4f30: $7f
	inc d                                            ; $4f31: $14
	ld e, [hl]                                       ; $4f32: $5e
	ret nz                                           ; $4f33: $c0

	ld a, b                                          ; $4f34: $78
	sbc a                                            ; $4f35: $9f
	ld a, a                                          ; $4f36: $7f
	dec hl                                           ; $4f37: $2b
	sbc h                                            ; $4f38: $9c
	dec b                                            ; $4f39: $05
	dec bc                                           ; $4f3a: $0b
	ld b, $f9                                        ; $4f3b: $06 $f9
	sbc b                                            ; $4f3d: $98
	or b                                             ; $4f3e: $b0
	ld h, b                                          ; $4f3f: $60
	ret nz                                           ; $4f40: $c0

	add e                                            ; $4f41: $83
	add h                                            ; $4f42: $84
	rst $38                                          ; $4f43: $ff
	rlca                                             ; $4f44: $07
	ld [hl], l                                       ; $4f45: $75
	ld b, b                                          ; $4f46: $40
	add b                                            ; $4f47: $80
	inc bc                                           ; $4f48: $03
	inc b                                            ; $4f49: $04
	add a                                            ; $4f4a: $87
	ld [bc], a                                       ; $4f4b: $02
	nop                                              ; $4f4c: $00
	ld c, $13                                        ; $4f4d: $0e $13
	inc de                                           ; $4f4f: $13
	sub e                                            ; $4f50: $93
	ld e, a                                          ; $4f51: $5f
	or [hl]                                          ; $4f52: $b6
	ld [hl], b                                       ; $4f53: $70
	ld a, a                                          ; $4f54: $7f
	inc e                                            ; $4f55: $1c
	ld [de], a                                       ; $4f56: $12
	inc de                                           ; $4f57: $13
	sub e                                            ; $4f58: $93
	ld e, l                                          ; $4f59: $5d
	and b                                            ; $4f5a: $a0
	ld h, b                                          ; $4f5b: $60
	ld a, a                                          ; $4f5c: $7f
	nop                                              ; $4f5d: $00
	ret z                                            ; $4f5e: $c8

	inc l                                            ; $4f5f: $2c
	ld a, $3f                                        ; $4f60: $3e $3f
	db $ed                                           ; $4f62: $ed
	xor $0f                                          ; $4f63: $ee $0f
	nop                                              ; $4f65: $00
	ret nz                                           ; $4f66: $c0

	sbc b                                            ; $4f67: $98
	jr nz, jr_05e_4fa8                               ; $4f68: $20 $3e

	dec h                                            ; $4f6a: $25
	push bc                                          ; $4f6b: $c5
	dec b                                            ; $4f6c: $05
	ld b, $65                                        ; $4f6d: $06 $65
	ld a, d                                          ; $4f6f: $7a
	call nz, Call_05e_7596                           ; $4f70: $c4 $96 $75
	ccf                                              ; $4f73: $3f
	rst $38                                          ; $4f74: $ff
	rst $38                                          ; $4f75: $ff
	inc b                                            ; $4f76: $04
	jr jr_05e_4f99                                   ; $4f77: $18 $20

	ld b, b                                          ; $4f79: $40
	ld [hl], b                                       ; $4f7a: $70
	ld a, c                                          ; $4f7b: $79
	adc $46                                          ; $4f7c: $ce $46
	ret nz                                           ; $4f7e: $c0

	adc a                                            ; $4f7f: $8f
	cp $f1                                           ; $4f80: $fe $f1
	rst $38                                          ; $4f82: $ff
	db $fd                                           ; $4f83: $fd
	db $fd                                           ; $4f84: $fd
	rst $38                                          ; $4f85: $ff
	rst SubAFromBC                                          ; $4f86: $e7
	ret nz                                           ; $4f87: $c0

	rrca                                             ; $4f88: $0f
	ld de, $1119                                     ; $4f89: $11 $19 $11
	ld de, $4739                                     ; $4f8c: $11 $39 $47
	add b                                            ; $4f8f: $80
	ld [hl], c                                       ; $4f90: $71
	ld d, c                                          ; $4f91: $51
	sbc h                                            ; $4f92: $9c
	push af                                          ; $4f93: $f5
	or d                                             ; $4f94: $b2
	dec c                                            ; $4f95: $0d
	ld [hl], a                                       ; $4f96: $77
	ld sp, hl                                        ; $4f97: $f9
	sub c                                            ; $4f98: $91

jr_05e_4f99:
	push de                                          ; $4f99: $d5
	ld l, d                                          ; $4f9a: $6a
	sbc l                                            ; $4f9b: $9d
	ld c, $aa                                        ; $4f9c: $0e $aa
	ld b, b                                          ; $4f9e: $40
	xor d                                            ; $4f9f: $aa
	ld b, b                                          ; $4fa0: $40
	xor e                                            ; $4fa1: $ab
	ld d, d                                          ; $4fa2: $52

jr_05e_4fa3:
	xor h                                            ; $4fa3: $ac
	ld a, b                                          ; $4fa4: $78
	ld d, l                                          ; $4fa5: $55
	cp a                                             ; $4fa6: $bf
	ld a, e                                          ; $4fa7: $7b

jr_05e_4fa8:
	cp $98                                           ; $4fa8: $fe $98
	xor [hl]                                         ; $4faa: $ae
	ld d, h                                          ; $4fab: $54
	ld hl, sp-$55                                    ; $4fac: $f8 $ab
	ld c, $b8                                        ; $4fae: $0e $b8
	ldh [$7b], a                                     ; $4fb0: $e0 $7b
	ld l, e                                          ; $4fb2: $6b
	sbc e                                            ; $4fb3: $9b
	ld bc, $fc57                                     ; $4fb4: $01 $57 $fc
	ld [hl], b                                       ; $4fb7: $70
	ld a, c                                          ; $4fb8: $79
	add c                                            ; $4fb9: $81
	ld a, a                                          ; $4fba: $7f
	rst FarCall                                          ; $4fbb: $f7
	sub l                                            ; $4fbc: $95
	or e                                             ; $4fbd: $b3
	inc hl                                           ; $4fbe: $23
	ld h, a                                          ; $4fbf: $67
	ld b, a                                          ; $4fc0: $47
	rst JumpTable                                          ; $4fc1: $c7
	rst JumpTable                                          ; $4fc2: $c7
	add e                                            ; $4fc3: $83
	add e                                            ; $4fc4: $83
	and c                                            ; $4fc5: $a1
	ld hl, $41de                                     ; $4fc6: $21 $de $41
	rst SubAFromDE                                          ; $4fc9: $df
	add c                                            ; $4fca: $81
	ld a, l                                          ; $4fcb: $7d
	and h                                            ; $4fcc: $a4
	ld a, a                                          ; $4fcd: $7f
	dec c                                            ; $4fce: $0d
	ld a, a                                          ; $4fcf: $7f
	ld c, [hl]                                       ; $4fd0: $4e
	sbc e                                            ; $4fd1: $9b
	dec d                                            ; $4fd2: $15
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	db $fd                                           ; $4fd5: $fd
	ld a, d                                          ; $4fd6: $7a
	and h                                            ; $4fd7: $a4
	sub [hl]                                         ; $4fd8: $96
	rst $38                                          ; $4fd9: $ff
	ld [rIE], a                                    ; $4fda: $ea $ff $ff
	sub e                                            ; $4fdd: $93
	ld l, a                                          ; $4fde: $6f
	sub $a8                                          ; $4fdf: $d6 $a8
	ld [hl], b                                       ; $4fe1: $70
	ld a, c                                          ; $4fe2: $79
	ld h, $92                                        ; $4fe3: $26 $92
	rst AddAOntoHL                                          ; $4fe5: $ef
	ld d, h                                          ; $4fe6: $54
	ld l, c                                          ; $4fe7: $69
	rst SubAFromHL                                          ; $4fe8: $d7
	adc a                                            ; $4fe9: $8f
	ld a, a                                          ; $4fea: $7f
	rst $38                                          ; $4feb: $ff
	rst $38                                          ; $4fec: $ff
	ld b, h                                          ; $4fed: $44
	ld b, [hl]                                       ; $4fee: $46
	ld b, d                                          ; $4fef: $42
	ld b, d                                          ; $4ff0: $42
	ld b, e                                          ; $4ff1: $43
	sbc $41                                          ; $4ff2: $de $41
	sbc [hl]                                         ; $4ff4: $9e
	call nz, $c2de                                   ; $4ff5: $c4 $de $c2

jr_05e_4ff8:
	sbc $c1                                          ; $4ff8: $de $c1
	sbc l                                            ; $4ffa: $9d
	ret nz                                           ; $4ffb: $c0

	rlca                                             ; $4ffc: $07
	ld a, e                                          ; $4ffd: $7b
	pop de                                           ; $4ffe: $d1
	ld [hl], a                                       ; $4fff: $77
	inc c                                            ; $5000: $0c
	sbc l                                            ; $5001: $9d
	inc b                                            ; $5002: $04
	ld [bc], a                                       ; $5003: $02
	ld l, a                                          ; $5004: $6f
	ld hl, sp-$80                                    ; $5005: $f8 $80
	add d                                            ; $5007: $82
	pop bc                                           ; $5008: $c1
	pop hl                                           ; $5009: $e1
	pop af                                           ; $500a: $f1
	ld h, c                                          ; $500b: $61
	ld h, b                                          ; $500c: $60
	ldh a, [rIE]                                     ; $500d: $f0 $ff
	ld [bc], a                                       ; $500f: $02
	ld bc, $8101                                     ; $5010: $01 $01 $81
	ld b, b                                          ; $5013: $40
	ld b, b                                          ; $5014: $40
	ret nz                                           ; $5015: $c0

	cp a                                             ; $5016: $bf
	ld [hl], a                                       ; $5017: $77
	dec hl                                           ; $5018: $2b
	ld [hl], a                                       ; $5019: $77
	rst AddAOntoHL                                          ; $501a: $ef
	rst FarCall                                          ; $501b: $f7
	pop af                                           ; $501c: $f1
	ldh a, [$98]                                     ; $501d: $f0 $98
	ld [hl], c                                       ; $501f: $71
	ld h, a                                          ; $5020: $67
	dec a                                            ; $5021: $3d
	dec a                                            ; $5022: $3d
	sbc a                                            ; $5023: $9f
	rst SubAFromDE                                          ; $5024: $df
	cp a                                             ; $5025: $bf
	adc [hl]                                         ; $5026: $8e
	rst AddAOntoHL                                          ; $5027: $ef
	sbc a                                            ; $5028: $9f
	rra                                              ; $5029: $1f
	sub e                                            ; $502a: $93
	ldh a, [$e0]                                     ; $502b: $f0 $e0
	pop af                                           ; $502d: $f1
	ei                                               ; $502e: $fb
	ld a, a                                          ; $502f: $7f
	sbc a                                            ; $5030: $9f
	inc de                                           ; $5031: $13
	sub c                                            ; $5032: $91
	ld h, b                                          ; $5033: $60
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	add c                                            ; $5036: $81
	ldh [c], a                                       ; $5037: $e2
	ld a, e                                          ; $5038: $7b
	or h                                             ; $5039: $b4
	sub l                                            ; $503a: $95
	ld a, [hl]                                       ; $503b: $7e
	ld h, e                                          ; $503c: $63
	add c                                            ; $503d: $81
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	ld a, b                                          ; $5040: $78
	ld a, h                                          ; $5041: $7c
	ld a, h                                          ; $5042: $7c
	ld a, [hl]                                       ; $5043: $7e
	ld h, d                                          ; $5044: $62
	ld a, e                                          ; $5045: $7b
	ld hl, sp+$78                                    ; $5046: $f8 $78
	cp d                                             ; $5048: $ba
	ld a, d                                          ; $5049: $7a
	jp nz, Jump_05e_4064                             ; $504a: $c2 $64 $40

	rst SubAFromDE                                          ; $504d: $df
	add b                                            ; $504e: $80
	sbc b                                            ; $504f: $98
	inc c                                            ; $5050: $0c
	dec b                                            ; $5051: $05
	dec bc                                           ; $5052: $0b
	ld d, $0f                                        ; $5053: $16 $0f
	dec de                                           ; $5055: $1b
	jr nc, jr_05e_50cc                               ; $5056: $30 $74

	or b                                             ; $5058: $b0
	ld a, [hl]                                       ; $5059: $7e
	rst GetHLinHL                                          ; $505a: $cf
	ld a, h                                          ; $505b: $7c
	or b                                             ; $505c: $b0
	add c                                            ; $505d: $81
	rrca                                             ; $505e: $0f
	add [hl]                                         ; $505f: $86
	add b                                            ; $5060: $80
	add hl, bc                                       ; $5061: $09
	ld [$fcff], sp                                   ; $5062: $08 $ff $fc
	ld a, b                                          ; $5065: $78
	inc sp                                           ; $5066: $33
	nop                                              ; $5067: $00
	inc b                                            ; $5068: $04
	inc b                                            ; $5069: $04
	dec c                                            ; $506a: $0d
	rst $38                                          ; $506b: $ff
	inc b                                            ; $506c: $04
	add sp, -$0d                                     ; $506d: $e8 $f3
	pop hl                                           ; $506f: $e1
	jp $ffe7                                         ; $5070: $c3 $e7 $ff


	ld e, a                                          ; $5073: $5f
	ld d, c                                          ; $5074: $51
	sub b                                            ; $5075: $90
	jr nc, jr_05e_4ff8                               ; $5076: $30 $80

	add b                                            ; $5078: $80
	add c                                            ; $5079: $81
	db $e3                                           ; $507a: $e3
	ld a, a                                          ; $507b: $7f
	ld a, e                                          ; $507c: $7b
	ld h, b                                          ; $507d: $60
	add a                                            ; $507e: $87
	sbc a                                            ; $507f: $9f
	db $fd                                           ; $5080: $fd
	cp $a6                                           ; $5081: $fe $a6
	ld l, $de                                        ; $5083: $2e $de
	ld e, [hl]                                       ; $5085: $5e
	ld hl, sp-$74                                    ; $5086: $f8 $8c
	ld sp, hl                                        ; $5088: $f9
	sbc $e4                                          ; $5089: $de $e4
	and h                                            ; $508b: $a4
	ret z                                            ; $508c: $c8

	ret nc                                           ; $508d: $d0

	cp b                                             ; $508e: $b8
	rst $38                                          ; $508f: $ff
	rst $38                                          ; $5090: $ff
	ld a, a                                          ; $5091: $7f
	ccf                                              ; $5092: $3f
	ccf                                              ; $5093: $3f
	ld l, a                                          ; $5094: $6f
	ld h, a                                          ; $5095: $67
	ld h, a                                          ; $5096: $67
	ld a, d                                          ; $5097: $7a
	or b                                             ; $5098: $b0
	sub [hl]                                         ; $5099: $96
	jr nz, jr_05e_50b4                               ; $509a: $20 $18

	inc b                                            ; $509c: $04
	inc b                                            ; $509d: $04
	ld b, d                                          ; $509e: $42
	rst $38                                          ; $509f: $ff
	rst $38                                          ; $50a0: $ff
	xor d                                            ; $50a1: $aa
	rst $38                                          ; $50a2: $ff
	ld a, d                                          ; $50a3: $7a
	push hl                                          ; $50a4: $e5
	cp $7c                                           ; $50a5: $fe $7c
	jr c, @+$7c                                      ; $50a7: $38 $7a

	call c, $ff8d                                    ; $50a9: $dc $8d $ff
	ldh a, [$f0]                                     ; $50ac: $f0 $f0
	ret nz                                           ; $50ae: $c0

	ld hl, sp-$10                                    ; $50af: $f8 $f0
	ld a, b                                          ; $50b1: $78
	cp a                                             ; $50b2: $bf
	rra                                              ; $50b3: $1f

jr_05e_50b4:
	ret nz                                           ; $50b4: $c0

	or b                                             ; $50b5: $b0
	add b                                            ; $50b6: $80
	ret nz                                           ; $50b7: $c0

	ld b, b                                          ; $50b8: $40
	ldh [$60], a                                     ; $50b9: $e0 $60
	ld hl, sp+$07                                    ; $50bb: $f8 $07
	ld [hl], a                                       ; $50bd: $77
	add hl, sp                                       ; $50be: $39
	sbc h                                            ; $50bf: $9c
	ld [hl], b                                       ; $50c0: $70
	rst $38                                          ; $50c1: $ff
	rst $38                                          ; $50c2: $ff
	ld [hl], h                                       ; $50c3: $74
	sbc a                                            ; $50c4: $9f
	cp $92                                           ; $50c5: $fe $92
	rra                                              ; $50c7: $1f
	ret z                                            ; $50c8: $c8

	ret z                                            ; $50c9: $c8

	ld c, b                                          ; $50ca: $48
	ld d, b                                          ; $50cb: $50

jr_05e_50cc:
	call nc, $f4f4                                   ; $50cc: $d4 $f4 $f4
	or $c8                                           ; $50cf: $f6 $c8
	ld c, b                                          ; $50d1: $48
	ld c, b                                          ; $50d2: $48
	ld d, b                                          ; $50d3: $50
	sbc $90                                          ; $50d4: $de $90
	sub [hl]                                         ; $50d6: $96
	and b                                            ; $50d7: $a0
	inc hl                                           ; $50d8: $23
	inc hl                                           ; $50d9: $23
	daa                                              ; $50da: $27
	and a                                            ; $50db: $a7
	add e                                            ; $50dc: $83
	add b                                            ; $50dd: $80
	add b                                            ; $50de: $80
	ret nz                                           ; $50df: $c0

	ld a, c                                          ; $50e0: $79
	ld d, h                                          ; $50e1: $54

Call_05e_50e2:
	ld a, h                                          ; $50e2: $7c
	ccf                                              ; $50e3: $3f
	sbc $20                                          ; $50e4: $de $20
	ld a, a                                          ; $50e6: $7f
	ld bc, $8191                                     ; $50e7: $01 $91 $81
	pop hl                                           ; $50ea: $e1
	ld sp, hl                                        ; $50eb: $f9
	cp $18                                           ; $50ec: $fe $18
	jr nc, jr_05e_50f1                               ; $50ee: $30 $01

	nop                                              ; $50f0: $00

jr_05e_50f1:
	add b                                            ; $50f1: $80
	ld h, b                                          ; $50f2: $60
	jr jr_05e_50fb                                   ; $50f3: $18 $06

	ld [$7b10], sp                                   ; $50f5: $08 $10 $7b
	ld c, l                                          ; $50f8: $4d
	sbc d                                            ; $50f9: $9a
	add c                                            ; $50fa: $81

jr_05e_50fb:
	add d                                            ; $50fb: $82
	add e                                            ; $50fc: $83
	add c                                            ; $50fd: $81
	add b                                            ; $50fe: $80
	db $dd                                           ; $50ff: $dd
	rst $38                                          ; $5100: $ff
	halt                                             ; $5101: $76
	cp l                                             ; $5102: $bd
	ld [hl], c                                       ; $5103: $71
	ldh a, [$7b]                                     ; $5104: $f0 $7b
	ld sp, $ffdd                                     ; $5106: $31 $dd $ff
	ld [hl], a                                       ; $5109: $77
	ld h, b                                          ; $510a: $60
	add a                                            ; $510b: $87
	ld b, b                                          ; $510c: $40
	ld b, c                                          ; $510d: $41
	ld b, e                                          ; $510e: $43
	ld b, a                                          ; $510f: $47
	ld c, a                                          ; $5110: $4f
	ld e, [hl]                                       ; $5111: $5e
	ld c, a                                          ; $5112: $4f
	ld b, e                                          ; $5113: $43
	ret nz                                           ; $5114: $c0

	pop bc                                           ; $5115: $c1
	jp nz, $c8c4                                     ; $5116: $c2 $c4 $c8

	ret nc                                           ; $5119: $d0

	adc $c1                                          ; $511a: $ce $c1
	add h                                            ; $511c: $84
	call nz, $83c2                                   ; $511d: $c4 $c2 $83
	inc bc                                           ; $5120: $03
	ld bc, $c1ff                                     ; $5121: $01 $ff $c1
	ld h, a                                          ; $5124: $67
	rrca                                             ; $5125: $0f
	add b                                            ; $5126: $80
	jp $c0c0                                         ; $5127: $c3 $c0 $c0


	ldh a, [$fc]                                     ; $512a: $f0 $fc
	db $db                                           ; $512c: $db
	call z, $81c6                                    ; $512d: $cc $c6 $81
	add b                                            ; $5130: $80
	add b                                            ; $5131: $80
	ldh [$5c], a                                     ; $5132: $e0 $5c
	ld b, a                                          ; $5134: $47
	ld b, e                                          ; $5135: $43
	ld b, c                                          ; $5136: $41
	db $f4                                           ; $5137: $f4
	rlca                                             ; $5138: $07
	rlca                                             ; $5139: $07
	rrca                                             ; $513a: $0f
	rra                                              ; $513b: $1f
	cp $3c                                           ; $513c: $fe $3c
	ld a, h                                          ; $513e: $7c
	rst $38                                          ; $513f: $ff
	inc bc                                           ; $5140: $03
	ld [bc], a                                       ; $5141: $02
	ld [bc], a                                       ; $5142: $02
	inc bc                                           ; $5143: $03
	cp $c4                                           ; $5144: $fe $c4
	add b                                            ; $5146: $80
	add h                                            ; $5147: $84
	ld e, a                                          ; $5148: $5f
	rst GetHLinHL                                          ; $5149: $cf
	rst SubAFromDE                                          ; $514a: $df
	rst $38                                          ; $514b: $ff
	adc $6c                                          ; $514c: $ce $6c
	dec l                                            ; $514e: $2d
	ld l, a                                          ; $514f: $6f
	db $fc                                           ; $5150: $fc
	ld hl, sp+$30                                    ; $5151: $f8 $30
	ldh a, [hDisp0_WY]                                     ; $5153: $f0 $88
	ld l, b                                          ; $5155: $68
	jr z, jr_05e_51c1                                ; $5156: $28 $69

	ld bc, $87e3                                     ; $5158: $01 $e3 $87
	rlca                                             ; $515b: $07
	ld c, $3b                                        ; $515c: $0e $3b
	ei                                               ; $515e: $fb
	ret                                              ; $515f: $c9


	ld bc, $0301                                     ; $5160: $01 $01 $03
	ld b, $06                                        ; $5163: $06 $06
	rrca                                             ; $5165: $0f
	sbc l                                            ; $5166: $9d
	ld a, a                                          ; $5167: $7f
	ei                                               ; $5168: $fb
	ld a, c                                          ; $5169: $79
	ld e, e                                          ; $516a: $5b
	sbc d                                            ; $516b: $9a
	ldh [$d0], a                                     ; $516c: $e0 $d0
	pop hl                                           ; $516e: $e1
	jr nc, jr_05e_51e4                               ; $516f: $30 $73

	ld a, c                                          ; $5171: $79
	ld d, c                                          ; $5172: $51
	sbc $c0                                          ; $5173: $de $c0
	adc c                                            ; $5175: $89
	ld b, b                                          ; $5176: $40
	ld h, b                                          ; $5177: $60
	jr nz, jr_05e_51ba                               ; $5178: $20 $40

	add b                                            ; $517a: $80
	ld h, c                                          ; $517b: $61
	pop bc                                           ; $517c: $c1
	add e                                            ; $517d: $83
	call nz, $1f48                                   ; $517e: $c4 $48 $1f
	ccf                                              ; $5181: $3f
	ccf                                              ; $5182: $3f
	rra                                              ; $5183: $1f
	ccf                                              ; $5184: $3f
	ld a, a                                          ; $5185: $7f
	db $fc                                           ; $5186: $fc
	ld a, b                                          ; $5187: $78
	inc h                                            ; $5188: $24
	ld c, l                                          ; $5189: $4d
	sub e                                            ; $518a: $93
	ld [hl], d                                       ; $518b: $72
	sbc $d7                                          ; $518c: $de $d7
	adc e                                            ; $518e: $8b
	xor a                                            ; $518f: $af
	rst SubAFromBC                                          ; $5190: $e7
	jp z, Jump_05e_7d9c                              ; $5191: $ca $9c $7d

	cp b                                             ; $5194: $b8
	jr c, jr_05e_51cf                                ; $5195: $38 $38

	ld [hl], b                                       ; $5197: $70
	inc a                                            ; $5198: $3c
	ld a, h                                          ; $5199: $7c
	cp $fe                                           ; $519a: $fe $fe
	ld a, $3c                                        ; $519c: $3e $3c
	ld hl, sp-$0e                                    ; $519e: $f8 $f2
	db $e3                                           ; $51a0: $e3
	jp $7b81                                         ; $51a1: $c3 $81 $7b


	cp l                                             ; $51a4: $bd
	add b                                            ; $51a5: $80
	rlca                                             ; $51a6: $07
	dec c                                            ; $51a7: $0d

jr_05e_51a8:
	adc b                                            ; $51a8: $88
	sbc b                                            ; $51a9: $98
	sbc h                                            ; $51aa: $9c
	db $dd                                           ; $51ab: $dd
	ld a, l                                          ; $51ac: $7d
	ld a, e                                          ; $51ad: $7b
	ld a, a                                          ; $51ae: $7f
	ld l, a                                          ; $51af: $6f
	adc d                                            ; $51b0: $8a
	adc [hl]                                         ; $51b1: $8e
	adc b                                            ; $51b2: $88
	sub b                                            ; $51b3: $90
	ret nc                                           ; $51b4: $d0

	pop de                                           ; $51b5: $d1
	pop hl                                           ; $51b6: $e1
	ldh [c], a                                       ; $51b7: $e2
	rst SubAFromBC                                          ; $51b8: $e7
	rst JumpTable                                          ; $51b9: $c7

jr_05e_51ba:
	adc a                                            ; $51ba: $8f
	call $e8d9                                       ; $51bb: $cd $d9 $e8
	db $ec                                           ; $51be: $ec
	and $42                                          ; $51bf: $e6 $42

jr_05e_51c1:
	ld b, c                                          ; $51c1: $41
	pop bc                                           ; $51c2: $c1
	add b                                            ; $51c3: $80
	add b                                            ; $51c4: $80
	sbc h                                            ; $51c5: $9c
	sub b                                            ; $51c6: $90
	ld d, b                                          ; $51c7: $50

Call_05e_51c8:
	jr c, jr_05e_5227                                ; $51c8: $38 $5d

	add [hl]                                         ; $51ca: $86
	jp c, $84ff                                      ; $51cb: $da $ff $84

	rst FarCall                                          ; $51ce: $f7

jr_05e_51cf:
	inc hl                                           ; $51cf: $23
	dec h                                            ; $51d0: $25
	ld e, a                                          ; $51d1: $5f
	ld e, a                                          ; $51d2: $5f
	or a                                             ; $51d3: $b7
	cp h                                             ; $51d4: $bc
	rra                                              ; $51d5: $1f
	db $10                                           ; $51d6: $10
	ldh [$e0], a                                     ; $51d7: $e0 $e0
	ret nz                                           ; $51d9: $c0

	ret nz                                           ; $51da: $c0

	add b                                            ; $51db: $80
	add e                                            ; $51dc: $83
	rst $38                                          ; $51dd: $ff
	cp a                                             ; $51de: $bf
	and b                                            ; $51df: $a0
	ret nc                                           ; $51e0: $d0

	add sp, $68                                      ; $51e1: $e8 $68
	sub h                                            ; $51e3: $94

jr_05e_51e4:
	inc d                                            ; $51e4: $14
	ldh [c], a                                       ; $51e5: $e2
	ld hl, $1f3f                                     ; $51e6: $21 $3f $1f
	ld a, b                                          ; $51e9: $78
	cp l                                             ; $51ea: $bd
	sbc [hl]                                         ; $51eb: $9e
	add a                                            ; $51ec: $87
	sbc $e6                                          ; $51ed: $de $e6
	sbc b                                            ; $51ef: $98
	scf                                              ; $51f0: $37
	inc sp                                           ; $51f1: $33
	dec sp                                           ; $51f2: $3b
	dec sp                                           ; $51f3: $3b
	ld e, l                                          ; $51f4: $5d
	and h                                            ; $51f5: $a4
	ld b, h                                          ; $51f6: $44
	ld a, b                                          ; $51f7: $78
	ld l, a                                          ; $51f8: $6f
	sbc e                                            ; $51f9: $9b
	ldh a, [c]                                       ; $51fa: $f2
	add sp, -$38                                     ; $51fb: $e8 $c8
	ld h, b                                          ; $51fd: $60
	sbc $61                                          ; $51fe: $de $61
	sbc $21                                          ; $5200: $de $21
	sbc e                                            ; $5202: $9b
	jr nc, jr_05e_5225                               ; $5203: $30 $20

	ld hl, $dc21                                     ; $5205: $21 $21 $dc
	jr nz, jr_05e_51a8                               ; $5208: $20 $9e

	ldh [$7a], a                                     ; $520a: $e0 $7a
	db $10                                           ; $520c: $10
	ld a, d                                          ; $520d: $7a
	or c                                             ; $520e: $b1
	ld a, [hl]                                       ; $520f: $7e
	add [hl]                                         ; $5210: $86
	ld [hl], e                                       ; $5211: $73
	ld hl, sp-$21                                    ; $5212: $f8 $df
	ld b, b                                          ; $5214: $40
	jp c, $9e80                                      ; $5215: $da $80 $9e

	pop bc                                           ; $5218: $c1
	ld c, c                                          ; $5219: $49
	jr jr_05e_51ba                                   ; $521a: $18 $9e

	add c                                            ; $521c: $81
	reti                                             ; $521d: $d9


	rst $38                                          ; $521e: $ff
	sbc $40                                          ; $521f: $de $40
	ld a, [hl]                                       ; $5221: $7e
	sbc a                                            ; $5222: $9f
	sbc h                                            ; $5223: $9c
	add c                                            ; $5224: $81

jr_05e_5225:
	add e                                            ; $5225: $83
	add e                                            ; $5226: $83

jr_05e_5227:
	sbc $c0                                          ; $5227: $de $c0
	ld a, e                                          ; $5229: $7b
	ld hl, sp+$7e                                    ; $522a: $f8 $7e
	sub l                                            ; $522c: $95
	sbc h                                            ; $522d: $9c
	ld a, a                                          ; $522e: $7f
	ldh a, [$f0]                                     ; $522f: $f0 $f0
	sbc $e0                                          ; $5231: $de $e0
	ld a, e                                          ; $5233: $7b
	ld d, $7b                                        ; $5234: $16 $7b
	add $fd                                          ; $5236: $c6 $fd
	sbc h                                            ; $5238: $9c
	add $c3                                          ; $5239: $c6 $c3
	jp $e1de                                         ; $523b: $c3 $de $e1


	ld a, l                                          ; $523e: $7d
	adc a                                            ; $523f: $8f
	sbc [hl]                                         ; $5240: $9e
	ld b, c                                          ; $5241: $41
	jp c, $9340                                      ; $5242: $da $40 $93

	ld e, h                                          ; $5245: $5c
	inc e                                            ; $5246: $1c
	rra                                              ; $5247: $1f
	sbc e                                            ; $5248: $9b
	sbc a                                            ; $5249: $9f
	sbc a                                            ; $524a: $9f
	adc l                                            ; $524b: $8d
	adc l                                            ; $524c: $8d
	add h                                            ; $524d: $84
	add h                                            ; $524e: $84
	add a                                            ; $524f: $87
	ld b, $7a                                        ; $5250: $06 $7a
	cp [hl]                                          ; $5252: $be
	ld a, [hl]                                       ; $5253: $7e
	cp l                                             ; $5254: $bd
	ld a, d                                          ; $5255: $7a
	ld l, e                                          ; $5256: $6b
	sbc [hl]                                         ; $5257: $9e
	ei                                               ; $5258: $fb
	ld a, c                                          ; $5259: $79
	inc hl                                           ; $525a: $23
	add b                                            ; $525b: $80
	xor a                                            ; $525c: $af
	sub e                                            ; $525d: $93
	dec bc                                           ; $525e: $0b
	add hl, bc                                       ; $525f: $09
	ld de, $0408                                     ; $5260: $11 $08 $04
	ld [bc], a                                       ; $5263: $02
	ld c, b                                          ; $5264: $48
	dec d                                            ; $5265: $15
	dec d                                            ; $5266: $15
	dec de                                           ; $5267: $1b
	ld a, [de]                                       ; $5268: $1a
	adc l                                            ; $5269: $8d
	adc l                                            ; $526a: $8d
	ld c, l                                          ; $526b: $4d
	ld sp, hl                                        ; $526c: $f9
	db $ec                                           ; $526d: $ec
	db $ec                                           ; $526e: $ec
	and $e7                                          ; $526f: $e6 $e7
	di                                               ; $5271: $f3
	di                                               ; $5272: $f3
	ld [hl], e                                       ; $5273: $73
	db $fc                                           ; $5274: $fc
	ld h, c                                          ; $5275: $61
	cpl                                              ; $5276: $2f
	jr z, jr_05e_52ad                                ; $5277: $28 $34

	daa                                              ; $5279: $27
	db $10                                           ; $527a: $10
	sub h                                            ; $527b: $94
	rra                                              ; $527c: $1f
	ldh a, [rLCDC]                                   ; $527d: $f0 $40
	jr nz, @+$27                                     ; $527f: $20 $25

	inc hl                                           ; $5281: $23
	jr nc, jr_05e_529c                               ; $5282: $30 $18

	rra                                              ; $5284: $1f
	ld [hl], c                                       ; $5285: $71
	rst SubAFromBC                                          ; $5286: $e7
	sbc $a1                                          ; $5287: $de $a1
	sbc d                                            ; $5289: $9a
	ld l, a                                          ; $528a: $6f
	rst JumpTable                                          ; $528b: $c7
	ld h, d                                          ; $528c: $62
	ld d, b                                          ; $528d: $50
	ld h, b                                          ; $528e: $60
	ld [hl], e                                       ; $528f: $73
	ld d, d                                          ; $5290: $52
	add b                                            ; $5291: $80
	add c                                            ; $5292: $81
	xor a                                            ; $5293: $af
	cp h                                             ; $5294: $bc
	or b                                             ; $5295: $b0
	and a                                            ; $5296: $a7
	ld c, c                                          ; $5297: $49
	sbc c                                            ; $5298: $99
	sub e                                            ; $5299: $93
	add a                                            ; $529a: $87
	ld [hl], b                                       ; $529b: $70

jr_05e_529c:
	ld h, e                                          ; $529c: $63
	ld l, a                                          ; $529d: $6f
	ld a, a                                          ; $529e: $7f
	ldh a, [$e0]                                     ; $529f: $f0 $e0
	db $ec                                           ; $52a1: $ec
	ld hl, sp-$3a                                    ; $52a2: $f8 $c6
	inc e                                            ; $52a4: $1c
	ld hl, sp-$10                                    ; $52a5: $f8 $f0

jr_05e_52a7:
	ldh [$c4], a                                     ; $52a7: $e0 $c4
	adc b                                            ; $52a9: $88
	dec sp                                           ; $52aa: $3b
	add hl, sp                                       ; $52ab: $39
	di                                               ; $52ac: $f3

jr_05e_52ad:
	rst JumpTable                                          ; $52ad: $c7
	rrca                                             ; $52ae: $0f
	rra                                              ; $52af: $1f
	dec sp                                           ; $52b0: $3b
	sbc e                                            ; $52b1: $9b
	ld [hl], a                                       ; $52b2: $77
	rst JumpTable                                          ; $52b3: $c7
	ld l, a                                          ; $52b4: $6f
	ld c, a                                          ; $52b5: $4f
	sbc $5f                                          ; $52b6: $de $5f
	add h                                            ; $52b8: $84
	rst $38                                          ; $52b9: $ff
	or [hl]                                          ; $52ba: $b6
	rst $38                                          ; $52bb: $ff
	jp nz, $c4c4                                     ; $52bc: $c2 $c4 $c4

	ret z                                            ; $52bf: $c8

	ret z                                            ; $52c0: $c8

	db $fd                                           ; $52c1: $fd
	sub d                                            ; $52c2: $92
	rst $38                                          ; $52c3: $ff
	or $fb                                           ; $52c4: $f6 $fb
	rst $38                                          ; $52c6: $ff
	db $fd                                           ; $52c7: $fd
	rst $38                                          ; $52c8: $ff
	rst $38                                          ; $52c9: $ff
	rst SubAFromDE                                          ; $52ca: $df
	rst $38                                          ; $52cb: $ff
	jr jr_05e_52da                                   ; $52cc: $18 $0c

	inc b                                            ; $52ce: $04
	ld b, $02                                        ; $52cf: $06 $02
	or c                                             ; $52d1: $b1
	ld c, b                                          ; $52d2: $48
	cp $4a                                           ; $52d3: $fe $4a
	jp nz, $ff91                                     ; $52d5: $c2 $91 $ff

	or b                                             ; $52d8: $b0
	ld d, b                                          ; $52d9: $50

jr_05e_52da:
	ld e, h                                          ; $52da: $5c
	daa                                              ; $52db: $27
	jr jr_05e_52e5                                   ; $52dc: $18 $07

	nop                                              ; $52de: $00
	nop                                              ; $52df: $00
	adc a                                            ; $52e0: $8f
	add $c3                                          ; $52e1: $c6 $c3
	ldh [$f8], a                                     ; $52e3: $e0 $f8

jr_05e_52e5:
	sbc $ff                                          ; $52e5: $de $ff
	sbc e                                            ; $52e7: $9b
	inc d                                            ; $52e8: $14
	ld [$9028], sp                                   ; $52e9: $08 $28 $90
	ld a, d                                          ; $52ec: $7a
	db $f4                                           ; $52ed: $f4
	sbc d                                            ; $52ee: $9a
	nop                                              ; $52ef: $00
	add a                                            ; $52f0: $87
	xor a                                            ; $52f1: $af
	ld c, a                                          ; $52f2: $4f
	rra                                              ; $52f3: $1f
	ld a, c                                          ; $52f4: $79
	pop de                                           ; $52f5: $d1
	sbc h                                            ; $52f6: $9c
	rst $38                                          ; $52f7: $ff
	ld c, l                                          ; $52f8: $4d
	ld l, a                                          ; $52f9: $6f
	sbc $3f                                          ; $52fa: $de $3f
	sbc $37                                          ; $52fc: $de $37
	rst SubAFromDE                                          ; $52fe: $df

Call_05e_52ff:
	call nz, $c27e                                   ; $52ff: $c4 $7e $c2
	rst SubAFromDE                                          ; $5302: $df
	ldh [$9b], a                                     ; $5303: $e0 $9b
	db $e4                                           ; $5305: $e4
	ldh [c], a                                       ; $5306: $e2
	jr nc, jr_05e_5339                               ; $5307: $30 $30

	db $dd                                           ; $5309: $dd
	cp b                                             ; $530a: $b8
	sbc l                                            ; $530b: $9d
	cp h                                             ; $530c: $bc
	db $fc                                           ; $530d: $fc
	reti                                             ; $530e: $d9


	jr nz, jr_05e_52a7                               ; $530f: $20 $96

	ldh [$f0], a                                     ; $5311: $e0 $f0
	ldh a, [rSVBK]                                   ; $5313: $f0 $70
	ld a, b                                          ; $5315: $78
	ld a, b                                          ; $5316: $78
	ld hl, sp-$04                                    ; $5317: $f8 $fc
	ld b, b                                          ; $5319: $40
	sbc $20                                          ; $531a: $de $20
	sbc $10                                          ; $531c: $de $10
	sub [hl]                                         ; $531e: $96
	ld [$fbe2], sp                                   ; $531f: $08 $e2 $fb
	xor l                                            ; $5322: $ad
	sub $8a                                          ; $5323: $d6 $8a
	ret nz                                           ; $5325: $c0

	add b                                            ; $5326: $80
	ret nz                                           ; $5327: $c0

	ld [hl], l                                       ; $5328: $75
	add h                                            ; $5329: $84
	db $dd                                           ; $532a: $dd
	rst $38                                          ; $532b: $ff
	sbc d                                            ; $532c: $9a
	ld b, d                                          ; $532d: $42
	push bc                                          ; $532e: $c5
	adc e                                            ; $532f: $8b
	ld d, a                                          ; $5330: $57
	and b                                            ; $5331: $a0
	cp $75                                           ; $5332: $fe $75
	add h                                            ; $5334: $84
	db $dd                                           ; $5335: $dd
	rst $38                                          ; $5336: $ff
	sbc [hl]                                         ; $5337: $9e
	add e                                            ; $5338: $83

jr_05e_5339:
	sbc $87                                          ; $5339: $de $87
	rst SubAFromDE                                          ; $533b: $df
	adc a                                            ; $533c: $8f
	rst SubAFromDE                                          ; $533d: $df
	sbc [hl]                                         ; $533e: $9e
	rst SubAFromDE                                          ; $533f: $df
	add d                                            ; $5340: $82
	rst SubAFromDE                                          ; $5341: $df
	add h                                            ; $5342: $84
	sbc $88                                          ; $5343: $de $88
	sbc [hl]                                         ; $5345: $9e
	sub b                                            ; $5346: $90
	halt                                             ; $5347: $76
	cp e                                             ; $5348: $bb
	sbc c                                            ; $5349: $99
	ld bc, $0d09                                     ; $534a: $01 $09 $0d
	dec c                                            ; $534d: $0d
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	sbc $01                                          ; $5350: $de $01
	cp $7a                                           ; $5352: $fe $7a
	or c                                             ; $5354: $b1
	rst SubAFromDE                                          ; $5355: $df
	ret nz                                           ; $5356: $c0

	halt                                             ; $5357: $76
	xor [hl]                                         ; $5358: $ae
	db $dd                                           ; $5359: $dd
	ld b, b                                          ; $535a: $40
	ld a, e                                          ; $535b: $7b
	ei                                               ; $535c: $fb
	rst SubAFromDE                                          ; $535d: $df
	adc a                                            ; $535e: $8f
	rst SubAFromDE                                          ; $535f: $df
	rrca                                             ; $5360: $0f
	rst SubAFromDE                                          ; $5361: $df
	rra                                              ; $5362: $1f
	rst SubAFromDE                                          ; $5363: $df
	ccf                                              ; $5364: $3f
	reti                                             ; $5365: $d9


	ld bc, $ffdc                                     ; $5366: $01 $dc $ff
	rst SubAFromDE                                          ; $5369: $df
	ld b, c                                          ; $536a: $41
	add b                                            ; $536b: $80
	ld [hl+], a                                      ; $536c: $22
	ld a, a                                          ; $536d: $7f
	rst $38                                          ; $536e: $ff
	ld hl, $4121                                     ; $536f: $21 $21 $41
	ld b, c                                          ; $5372: $41
	rst $38                                          ; $5373: $ff
	inc e                                            ; $5374: $1c
	add $e6                                          ; $5375: $c6 $e6
	ldh [c], a                                       ; $5377: $e2
	jp nc, $40d3                                     ; $5378: $d2 $d3 $40

	jr nz, jr_05e_53a5                               ; $537b: $20 $28

	ld sp, hl                                        ; $537d: $f9

jr_05e_537e:
	ld sp, hl                                        ; $537e: $f9
	ld a, l                                          ; $537f: $7d
	ld e, l                                          ; $5380: $5d
	ld e, h                                          ; $5381: $5c
	ld b, b                                          ; $5382: $40
	ld hl, sp+$10                                    ; $5383: $f8 $10
	cp a                                             ; $5385: $bf
	sbc h                                            ; $5386: $9c
	sub b                                            ; $5387: $90
	or [hl]                                          ; $5388: $b6
	xor a                                            ; $5389: $af
	inc [hl]                                         ; $538a: $34
	sbc d                                            ; $538b: $9a
	cpl                                              ; $538c: $2f
	ccf                                              ; $538d: $3f
	cp a                                             ; $538e: $bf
	sbc d                                            ; $538f: $9a
	sub [hl]                                         ; $5390: $96
	ld a, e                                          ; $5391: $7b
	ld hl, sp-$80                                    ; $5392: $f8 $80
	inc h                                            ; $5394: $24
	jr nc, jr_05e_537e                               ; $5395: $30 $e7

	rst SubAFromBC                                          ; $5397: $e7
	rst FarCall                                          ; $5398: $f7
	ccf                                              ; $5399: $3f
	ld a, a                                          ; $539a: $7f
	and [hl]                                         ; $539b: $a6
	ld l, a                                          ; $539c: $6f
	ld hl, sp-$1f                                    ; $539d: $f8 $e1
	pop bc                                           ; $539f: $c1
	ld b, c                                          ; $53a0: $41
	ld h, c                                          ; $53a1: $61
	inc hl                                           ; $53a2: $23
	ldh [c], a                                       ; $53a3: $e2
	ld [hl], h                                       ; $53a4: $74

jr_05e_53a5:
	db $e4                                           ; $53a5: $e4
	ld c, $1f                                        ; $53a6: $0e $1f
	ccf                                              ; $53a8: $3f
	nop                                              ; $53a9: $00
	add a                                            ; $53aa: $87
	add a                                            ; $53ab: $87
	rst JumpTable                                          ; $53ac: $c7
	rlca                                             ; $53ad: $07
	pop af                                           ; $53ae: $f1
	ldh [$c0], a                                     ; $53af: $e0 $c0
	ldh a, [$f0]                                     ; $53b1: $f0 $f0
	add b                                            ; $53b3: $80
	add b                                            ; $53b4: $80
	ld [hl], b                                       ; $53b5: $70
	ld [hl], b                                       ; $53b6: $70
	di                                               ; $53b7: $f3
	db $e3                                           ; $53b8: $e3
	add e                                            ; $53b9: $83
	inc bc                                           ; $53ba: $03
	inc bc                                           ; $53bb: $03
	inc sp                                           ; $53bc: $33
	inc sp                                           ; $53bd: $33
	dec sp                                           ; $53be: $3b
	ld c, $1f                                        ; $53bf: $0e $1f
	ld a, [hl]                                       ; $53c1: $7e
	ld a, [hl]                                       ; $53c2: $7e
	ld b, [hl]                                       ; $53c3: $46
	ld b, d                                          ; $53c4: $42
	ld b, [hl]                                       ; $53c5: $46
	ld b, [hl]                                       ; $53c6: $46
	rst $38                                          ; $53c7: $ff
	rst $38                                          ; $53c8: $ff
	or [hl]                                          ; $53c9: $b6
	or [hl]                                          ; $53ca: $b6
	sub [hl]                                         ; $53cb: $96
	sub $d2                                          ; $53cc: $d6 $d2
	sub d                                            ; $53ce: $92
	nop                                              ; $53cf: $00
	rst $38                                          ; $53d0: $ff
	sub d                                            ; $53d1: $92
	sub d                                            ; $53d2: $92
	rst SubAFromDE                                          ; $53d3: $df
	or d                                             ; $53d4: $b2
	ld a, [hl]                                       ; $53d5: $7e
	cp b                                             ; $53d6: $b8
	ld a, d                                          ; $53d7: $7a
	call nz, $cfdf                                   ; $53d8: $c4 $df $cf
	sbc $4f                                          ; $53db: $de $4f
	sub a                                            ; $53dd: $97
	inc bc                                           ; $53de: $03
	rst $38                                          ; $53df: $ff
	ld c, d                                          ; $53e0: $4a
	ld e, d                                          ; $53e1: $5a
	ld e, d                                          ; $53e2: $5a
	jp c, $fada                                      ; $53e3: $da $da $fa

	ld b, [hl]                                       ; $53e6: $46
	ret nz                                           ; $53e7: $c0

	rlca                                             ; $53e8: $07
	ldh a, [$9d]                                     ; $53e9: $f0 $9d
	scf                                              ; $53eb: $37
	ld [hl], a                                       ; $53ec: $77
	sbc $63                                          ; $53ed: $de $63
	sbc $61                                          ; $53ef: $de $61
	sbc e                                            ; $53f1: $9b
	ldh [c], a                                       ; $53f2: $e2
	jp nz, $c1c1                                     ; $53f3: $c2 $c1 $c1

	db $dd                                           ; $53f6: $dd
	ret nz                                           ; $53f7: $c0

	sbc [hl]                                         ; $53f8: $9e
	db $fc                                           ; $53f9: $fc
	ld [hl], l                                       ; $53fa: $75
	rst $38                                          ; $53fb: $ff
	sbc $ff                                          ; $53fc: $de $ff
	sbc $20                                          ; $53fe: $de $20
	ld a, a                                          ; $5400: $7f
	ld hl, $207b                                     ; $5401: $21 $7b $20
	rst SubAFromDE                                          ; $5404: $df
	db $fc                                           ; $5405: $fc
	ld l, a                                          ; $5406: $6f
	rst AddAOntoHL                                          ; $5407: $ef
	sbc $08                                          ; $5408: $de $08
	sbc $04                                          ; $540a: $de $04
	rst SubAFromDE                                          ; $540c: $df
	ld [bc], a                                       ; $540d: $02
	db $dd                                           ; $540e: $dd
	ret nz                                           ; $540f: $c0

	ld a, h                                          ; $5410: $7c
	ld h, l                                          ; $5411: $65
	sbc l                                            ; $5412: $9d
	jp $dcc1                                         ; $5413: $c3 $c1 $dc


	ld a, a                                          ; $5416: $7f
	rst SubAFromDE                                          ; $5417: $df
	ld a, [hl]                                       ; $5418: $7e
	sub [hl]                                         ; $5419: $96
	ld a, a                                          ; $541a: $7f
	nop                                              ; $541b: $00
	dec d                                            ; $541c: $15
	ld a, [hl+]                                      ; $541d: $2a
	ld d, l                                          ; $541e: $55
	xor e                                            ; $541f: $ab
	ld d, a                                          ; $5420: $57
	rst AddAOntoHL                                          ; $5421: $ef
	push de                                          ; $5422: $d5
	call c, Call_05e_7aff                            ; $5423: $dc $ff $7a
	cp e                                             ; $5426: $bb
	rst SubAFromDE                                          ; $5427: $df
	sbc h                                            ; $5428: $9c
	sbc c                                            ; $5429: $99
	cp h                                             ; $542a: $bc
	cp b                                             ; $542b: $b8
	cp b                                             ; $542c: $b8
	or b                                             ; $542d: $b0
	ldh a, [$e0]                                     ; $542e: $f0 $e0
	sbc $90                                          ; $5430: $de $90
	sbc $a0                                          ; $5432: $de $a0
	rst SubAFromDE                                          ; $5434: $df
	ret nz                                           ; $5435: $c0

	sbc e                                            ; $5436: $9b
	dec c                                            ; $5437: $0d
	inc c                                            ; $5438: $0c
	ld c, $06                                        ; $5439: $0e $06
	db $dd                                           ; $543b: $dd
	rlca                                             ; $543c: $07
	ld sp, hl                                        ; $543d: $f9
	rst SubAFromDE                                          ; $543e: $df
	ldh a, [$9b]                                     ; $543f: $f0 $9b
	ld hl, sp+$78                                    ; $5441: $f8 $78
	ld a, h                                          ; $5443: $7c
	ld a, [hl]                                       ; $5444: $7e
	ld [hl], l                                       ; $5445: $75
	ld e, b                                          ; $5446: $58
	ld a, d                                          ; $5447: $7a
	ld [hl], b                                       ; $5448: $70
	rst SubAFromDE                                          ; $5449: $df
	ld [$069c], sp                                   ; $544a: $08 $9c $06
	ccf                                              ; $544d: $3f
	ccf                                              ; $544e: $3f
	halt                                             ; $544f: $76
	add [hl]                                         ; $5450: $86
	sbc l                                            ; $5451: $9d
	cp $fd                                           ; $5452: $fe $fd

Call_05e_5454:
	sbc $01                                          ; $5454: $de $01
	rst SubAFromDE                                          ; $5456: $df
	ld [bc], a                                       ; $5457: $02
	sub e                                            ; $5458: $93
	inc b                                            ; $5459: $04
	ld [$1410], sp                                   ; $545a: $08 $10 $14
	nop                                              ; $545d: $00
	rst $38                                          ; $545e: $ff
	nop                                              ; $545f: $00
	and d                                            ; $5460: $a2
	ld b, l                                          ; $5461: $45
	xor d                                            ; $5462: $aa
	ld d, l                                          ; $5463: $55
	db $e3                                           ; $5464: $e3
	ld a, [$1096]                                    ; $5465: $fa $96 $10
	nop                                              ; $5468: $00
	ei                                               ; $5469: $fb
	nop                                              ; $546a: $00
	xor d                                            ; $546b: $aa
	ld d, l                                          ; $546c: $55
	xor d                                            ; $546d: $aa
	ld d, l                                          ; $546e: $55
	ldh [$fa], a                                     ; $546f: $e0 $fa
	ld a, [hl]                                       ; $5471: $7e
	ldh [c], a                                       ; $5472: $e2
	sbc b                                            ; $5473: $98
	call c, $a900                                    ; $5474: $dc $00 $a9
	ld e, d                                          ; $5477: $5a
	or c                                             ; $5478: $b1
	ld d, d                                          ; $5479: $52
	cpl                                              ; $547a: $2f
	ld a, [$af96]                                    ; $547b: $fa $96 $af
	inc bc                                           ; $547e: $03
	add b                                            ; $547f: $80
	dec b                                            ; $5480: $05
	nop                                              ; $5481: $00
	add l                                            ; $5482: $85
	ld b, d                                          ; $5483: $42
	and c                                            ; $5484: $a1
	db $f4                                           ; $5485: $f4
	ld l, e                                          ; $5486: $6b
	sbc [hl]                                         ; $5487: $9e
	sbc d                                            ; $5488: $9a
	ret z                                            ; $5489: $c8

	adc a                                            ; $548a: $8f
	nop                                              ; $548b: $00
	ldh a, [rP1]                                     ; $548c: $f0 $00
	ld a, e                                          ; $548e: $7b
	ret nc                                           ; $548f: $d0

	sbc e                                            ; $5490: $9b
	ld [hl], a                                       ; $5491: $77
	rst GetHLinHL                                          ; $5492: $cf
	nop                                              ; $5493: $00
	rrca                                             ; $5494: $0f
	db $fd                                           ; $5495: $fd
	sbc l                                            ; $5496: $9d
	jp $fef3                                         ; $5497: $c3 $f3 $fe


	ld a, e                                          ; $549a: $7b

Jump_05e_549b:
	ldh a, [$9d]                                     ; $549b: $f0 $9d
	ld a, e                                          ; $549d: $7b
	add e                                            ; $549e: $83
	ld a, e                                          ; $549f: $7b
	and a                                            ; $54a0: $a7
	ld [hl], e                                       ; $54a1: $73
	ld [$0095], sp                                   ; $54a2: $08 $95 $00
	ld [bc], a                                       ; $54a5: $02
	nop                                              ; $54a6: $00
	ld d, h                                          ; $54a7: $54
	xor c                                            ; $54a8: $a9
	ld d, d                                          ; $54a9: $52
	ld l, l                                          ; $54aa: $6d
	rst $38                                          ; $54ab: $ff
	nop                                              ; $54ac: $00
	db $fd                                           ; $54ad: $fd
	db $fd                                           ; $54ae: $fd
	rst SubAFromDE                                          ; $54af: $df
	cp $7f                                           ; $54b0: $fe $7f
	xor l                                            ; $54b2: $ad
	sbc [hl]                                         ; $54b3: $9e
	dec b                                            ; $54b4: $05
	ld a, e                                          ; $54b5: $7b
	sbc a                                            ; $54b6: $9f
	sbc e                                            ; $54b7: $9b
	or [hl]                                          ; $54b8: $b6
	cp $00                                           ; $54b9: $fe $00
	ret nz                                           ; $54bb: $c0

	db $fd                                           ; $54bc: $fd
	ld c, [hl]                                       ; $54bd: $4e
	nop                                              ; $54be: $00
	db $db                                           ; $54bf: $db
	ld h, [hl]                                       ; $54c0: $66
	sbc b                                            ; $54c1: $98
	ld h, e                                          ; $54c2: $63
	inc sp                                           ; $54c3: $33
	ld [hl], $77                                     ; $54c4: $36 $77
	ld h, [hl]                                       ; $54c6: $66
	ld h, d                                          ; $54c7: $62
	ld h, $de                                        ; $54c8: $26 $de
	ld h, [hl]                                       ; $54ca: $66
	sbc $33                                          ; $54cb: $de $33
	ld a, e                                          ; $54cd: $7b
	or $9d                                           ; $54ce: $f6 $9d
	inc h                                            ; $54d0: $24
	ld b, h                                          ; $54d1: $44
	ld l, e                                          ; $54d2: $6b
	or $9d                                           ; $54d3: $f6 $9d
	ld h, h                                          ; $54d5: $64
	ld b, h                                          ; $54d6: $44
	ld [hl], e                                       ; $54d7: $73
	or $9d                                           ; $54d8: $f6 $9d
	ld [hl], $66                                     ; $54da: $36 $66
	ld [hl], a                                       ; $54dc: $77
	or $9d                                           ; $54dd: $f6 $9d
	ld h, h                                          ; $54df: $64
	ld b, [hl]                                       ; $54e0: $46
	ld a, e                                          ; $54e1: $7b
	ret c                                            ; $54e2: $d8

	ld a, e                                          ; $54e3: $7b
	db $db                                           ; $54e4: $db
	ld a, a                                          ; $54e5: $7f
	db $ed                                           ; $54e6: $ed
	ld a, a                                          ; $54e7: $7f
	or $9b                                           ; $54e8: $f6 $9b
	ld b, e                                          ; $54ea: $43
	inc sp                                           ; $54eb: $33
	inc [hl]                                         ; $54ec: $34
	ld b, [hl]                                       ; $54ed: $46
	db $dd                                           ; $54ee: $dd
	ld h, [hl]                                       ; $54ef: $66
	ld [hl], a                                       ; $54f0: $77
	or $9e                                           ; $54f1: $f6 $9e
	ld h, h                                          ; $54f3: $64
	ld a, e                                          ; $54f4: $7b
	ld a, [$66dc]                                    ; $54f5: $fa $dc $66
	sbc [hl]                                         ; $54f8: $9e
	inc sp                                           ; $54f9: $33
	ret c                                            ; $54fa: $d8

	ld h, [hl]                                       ; $54fb: $66
	sbc e                                            ; $54fc: $9b
	ld d, [hl]                                       ; $54fd: $56
	ld h, [hl]                                       ; $54fe: $66
	ld h, [hl]                                       ; $54ff: $66
	ld [hl+], a                                      ; $5500: $22
	ld [hl], a                                       ; $5501: $77
	or c                                             ; $5502: $b1
	ld [hl], a                                       ; $5503: $77
	or $df                                           ; $5504: $f6 $df
	ld [hl+], a                                      ; $5506: $22
	ld l, a                                          ; $5507: $6f
	or $de                                           ; $5508: $f6 $de
	ld h, [hl]                                       ; $550a: $66
	or d                                             ; $550b: $b2
	ld [$ff9d], sp                                   ; $550c: $08 $9d $ff
	nop                                              ; $550f: $00
	inc bc                                           ; $5510: $03
	cp $03                                           ; $5511: $fe $03
	cp $6b                                           ; $5513: $fe $6b
	cp $9a                                           ; $5515: $fe $9a
	ld bc, $03ff                                     ; $5517: $01 $ff $03
	cp $07                                           ; $551a: $fe $07
	ld l, e                                          ; $551c: $6b
	db $f4                                           ; $551d: $f4
	sub [hl]                                         ; $551e: $96
	ld a, a                                          ; $551f: $7f
	jp $80c7                                         ; $5520: $c3 $c7 $80


	ret nz                                           ; $5523: $c0

	rst $38                                          ; $5524: $ff
	rst $38                                          ; $5525: $ff
	inc c                                            ; $5526: $0c
	ld e, $63                                        ; $5527: $1e $63
	ldh [c], a                                       ; $5529: $e2
	sbc c                                            ; $552a: $99
	cp $0f                                           ; $552b: $fe $0f
	rra                                              ; $552d: $1f
	ld hl, sp-$02                                    ; $552e: $f8 $fe
	nop                                              ; $5530: $00
	ld d, a                                          ; $5531: $57
	ret nc                                           ; $5532: $d0

	ld a, a                                          ; $5533: $7f
	db $d3                                           ; $5534: $d3
	sbc h                                            ; $5535: $9c
	rra                                              ; $5536: $1f
	ld bc, $5303                                     ; $5537: $01 $03 $53
	cp [hl]                                          ; $553a: $be
	sbc h                                            ; $553b: $9c
	db $fc                                           ; $553c: $fc
	add a                                            ; $553d: $87
	rst GetHLinHL                                          ; $553e: $cf
	ld c, e                                          ; $553f: $4b
	xor h                                            ; $5540: $ac
	sbc c                                            ; $5541: $99
	cp $ff                                           ; $5542: $fe $ff
	nop                                              ; $5544: $00
	ld sp, hl                                        ; $5545: $f9
	nop                                              ; $5546: $00
	add sp, $73                                      ; $5547: $e8 $73
	db $f4                                           ; $5549: $f4
	sbc [hl]                                         ; $554a: $9e
	db $fd                                           ; $554b: $fd
	ld [hl], e                                       ; $554c: $73
	ld a, [$4796]                                    ; $554d: $fa $96 $47
	nop                                              ; $5550: $00
	inc bc                                           ; $5551: $03
	nop                                              ; $5552: $00
	ld bc, $e200                                     ; $5553: $01 $00 $e2
	nop                                              ; $5556: $00
	add b                                            ; $5557: $80
	cp $91                                           ; $5558: $fe $91
	xor b                                            ; $555a: $a8
	nop                                              ; $555b: $00
	db $fc                                           ; $555c: $fc
	nop                                              ; $555d: $00
	push af                                          ; $555e: $f5
	nop                                              ; $555f: $00
	and e                                            ; $5560: $a3
	nop                                              ; $5561: $00
	ld d, l                                          ; $5562: $55
	add b                                            ; $5563: $80
	xor d                                            ; $5564: $aa
	nop                                              ; $5565: $00
	ld d, l                                          ; $5566: $55
	nop                                              ; $5567: $00
	ld [hl], a                                       ; $5568: $77
	db $fc                                           ; $5569: $fc
	sbc h                                            ; $556a: $9c
	xor e                                            ; $556b: $ab
	nop                                              ; $556c: $00
	rst SubAFromHL                                          ; $556d: $d7
	ld a, e                                          ; $556e: $7b
	ldh a, [$9e]                                     ; $556f: $f0 $9e
	ld b, c                                          ; $5571: $41
	ld a, e                                          ; $5572: $7b
	ld hl, sp-$70                                    ; $5573: $f8 $90
	dec e                                            ; $5575: $1d
	nop                                              ; $5576: $00
	cpl                                              ; $5577: $2f
	nop                                              ; $5578: $00
	ld e, d                                          ; $5579: $5a
	dec b                                            ; $557a: $05
	rst $38                                          ; $557b: $ff
	nop                                              ; $557c: $00
	ld b, b                                          ; $557d: $40
	nop                                              ; $557e: $00
	adc d                                            ; $557f: $8a
	nop                                              ; $5580: $00
	ld d, a                                          ; $5581: $57
	nop                                              ; $5582: $00
	cp a                                             ; $5583: $bf
	ld [hl], e                                       ; $5584: $73
	call nz, $8f98                                   ; $5585: $c4 $98 $8f
	ld [hl], b                                       ; $5588: $70
	di                                               ; $5589: $f3
	inc c                                            ; $558a: $0c
	dec b                                            ; $558b: $05
	nop                                              ; $558c: $00
	dec hl                                           ; $558d: $2b
	ld a, e                                          ; $558e: $7b
	ret c                                            ; $558f: $d8

	ld a, a                                          ; $5590: $7f
	xor [hl]                                         ; $5591: $ae
	sbc [hl]                                         ; $5592: $9e
	call nz, $d073                                   ; $5593: $c4 $73 $d0
	ld a, a                                          ; $5596: $7f
	call nc, Call_05e_5f9e                           ; $5597: $d4 $9e $5f
	ld a, e                                          ; $559a: $7b
	add sp, $7f                                      ; $559b: $e8 $7f
	ld hl, sp-$01                                    ; $559d: $f8 $ff
	ld a, a                                          ; $559f: $7f
	xor h                                            ; $55a0: $ac
	add c                                            ; $55a1: $81
	adc d                                            ; $55a2: $8a
	ld bc, $0146                             ; $55a3: $01 $46 $01
	db $fc                                           ; $55a6: $fc
	inc bc                                           ; $55a7: $03
	cp a                                             ; $55a8: $bf
	ld b, b                                          ; $55a9: $40

Call_05e_55aa:
	ld a, [$b500]                                    ; $55aa: $fa $00 $b5
	ld b, b                                          ; $55ad: $40
	dec hl                                           ; $55ae: $2b
	ret nz                                           ; $55af: $c0

	ccf                                              ; $55b0: $3f
	ret nz                                           ; $55b1: $c0

	ld a, a                                          ; $55b2: $7f

jr_05e_55b3:
	add b                                            ; $55b3: $80
	rst SubAFromHL                                          ; $55b4: $d7
	nop                                              ; $55b5: $00
	xor a                                            ; $55b6: $af
	nop                                              ; $55b7: $00
	ld e, e                                          ; $55b8: $5b
	inc b                                            ; $55b9: $04
	inc a                                            ; $55ba: $3c
	inc bc                                           ; $55bb: $03
	ld a, a                                          ; $55bc: $7f
	nop                                              ; $55bd: $00
	cp $01                                           ; $55be: $fe $01
	ld d, a                                          ; $55c0: $57
	ld l, d                                          ; $55c1: $6a
	sub e                                            ; $55c2: $93
	ld a, c                                          ; $55c3: $79
	add b                                            ; $55c4: $80
	ld [hl], a                                       ; $55c5: $77
	adc b                                            ; $55c6: $88
	cpl                                              ; $55c7: $2f
	ret nc                                           ; $55c8: $d0

	sbc [hl]                                         ; $55c9: $9e
	ld h, b                                          ; $55ca: $60
	xor a                                            ; $55cb: $af
	ld [hl], b                                       ; $55cc: $70
	cp [hl]                                          ; $55cd: $be
	ld h, c                                          ; $55ce: $61
	ld [bc], a                                       ; $55cf: $02
	ld [$fe23], a                                    ; $55d0: $ea $23 $fe
	adc l                                            ; $55d3: $8d
	pop hl                                           ; $55d4: $e1
	ld e, $c0                                        ; $55d5: $1e $c0
	ccf                                              ; $55d7: $3f
	add b                                            ; $55d8: $80
	ld a, a                                          ; $55d9: $7f
	cp $0e                                           ; $55da: $fe $0e
	rst $38                                          ; $55dc: $ff
	rrca                                             ; $55dd: $0f
	ld hl, sp+$18                                    ; $55de: $f8 $18
	ldh a, [$38]                                     ; $55e0: $f0 $38
	cp $3f                                           ; $55e2: $fe $3f
	rst $38                                          ; $55e4: $ff
	ld a, a                                          ; $55e5: $7f
	halt                                             ; $55e6: $76
	jp $c88f                                         ; $55e7: $c3 $8f $c8


	inc e                                            ; $55ea: $1c
	ld a, [$effc]                                    ; $55eb: $fa $fc $ef
	rra                                              ; $55ee: $1f
	dec b                                            ; $55ef: $05
	inc bc                                           ; $55f0: $03
	jr c, jr_05e_55b3                                ; $55f1: $38 $c0

	ei                                               ; $55f3: $fb
	db $fc                                           ; $55f4: $fc
	rst $38                                          ; $55f5: $ff
	rst $38                                          ; $55f6: $ff
	rra                                              ; $55f7: $1f
	rst $38                                          ; $55f8: $ff
	db $fd                                           ; $55f9: $fd
	ld a, a                                          ; $55fa: $7f
	inc d                                            ; $55fb: $14
	sbc c                                            ; $55fc: $99
	and b                                            ; $55fd: $a0
	ret nz                                           ; $55fe: $c0

	ld h, b                                          ; $55ff: $60
	ldh a, [$34]                                     ; $5600: $f0 $34
	ld hl, sp-$23                                    ; $5602: $f8 $dd
	rst $38                                          ; $5604: $ff
	ld a, a                                          ; $5605: $7f
	ld e, b                                          ; $5606: $58
	ld sp, hl                                        ; $5607: $f9
	ld a, a                                          ; $5608: $7f
	jp nz, $ffdf                                     ; $5609: $c2 $df $ff

	sub [hl]                                         ; $560c: $96
	pop af                                           ; $560d: $f1
	cp $69                                           ; $560e: $fe $69
	ldh a, [$5d]                                     ; $5610: $f0 $5d
	ld a, $17                                        ; $5612: $3e $17
	rrca                                             ; $5614: $0f
	ld [bc], a                                       ; $5615: $02
	ld a, e                                          ; $5616: $7b
	jp hl                                            ; $5617: $e9


	ld [hl], a                                       ; $5618: $77
	pop hl                                           ; $5619: $e1
	ld a, a                                          ; $561a: $7f
	ld e, b                                          ; $561b: $58
	add b                                            ; $561c: $80
	adc a                                            ; $561d: $8f
	ld a, a                                          ; $561e: $7f
	ld bc, $b000                                     ; $561f: $01 $00 $b0
	ret nz                                           ; $5622: $c0

	ld hl, sp-$01                                    ; $5623: $f8 $ff
	ccf                                              ; $5625: $3f
	ld a, a                                          ; $5626: $7f
	rst FarCall                                          ; $5627: $f7
	ld h, b                                          ; $5628: $60
	db $f4                                           ; $5629: $f4
	ld hl, sp+$7f                                    ; $562a: $f8 $7f
	rst $38                                          ; $562c: $ff
	ld hl, sp-$01                                    ; $562d: $f8 $ff
	rst GetHLinHL                                          ; $562f: $cf
	ccf                                              ; $5630: $3f
	ld bc, $e300                                     ; $5631: $01 $00 $e3
	rra                                              ; $5634: $1f
	rst $38                                          ; $5635: $ff
	rst $38                                          ; $5636: $ff
	add b                                            ; $5637: $80
	ld a, h                                          ; $5638: $7c
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	ld h, b                                          ; $563b: $60
	sbc [hl]                                         ; $563c: $9e
	add b                                            ; $563d: $80
	ld a, e                                          ; $563e: $7b
	sbc l                                            ; $563f: $9d
	sbc b                                            ; $5640: $98
	ldh a, [$3f]                                     ; $5641: $f0 $3f
	ld a, a                                          ; $5643: $7f
	cp $ff                                           ; $5644: $fe $ff
	inc bc                                           ; $5646: $03
	rst JumpTable                                          ; $5647: $c7
	ld a, e                                          ; $5648: $7b
	dec c                                            ; $5649: $0d
	cp $7e                                           ; $564a: $fe $7e
	ret nz                                           ; $564c: $c0

	ld a, [hl]                                       ; $564d: $7e
	ld l, e                                          ; $564e: $6b
	sub d                                            ; $564f: $92
	rra                                              ; $5650: $1f
	ldh [rIF], a                                     ; $5651: $e0 $0f
	ld a, a                                          ; $5653: $7f
	ld bc, $6080                                     ; $5654: $01 $80 $60
	ret nz                                           ; $5657: $c0

	ld d, h                                          ; $5658: $54
	jr c, jr_05e_5672                                ; $5659: $38 $17

	rrca                                             ; $565b: $0f
	rst SubAFromDE                                          ; $565c: $df
	ld a, d                                          ; $565d: $7a
	call nz, $d07e                                   ; $565e: $c4 $7e $d0
	sub b                                            ; $5661: $90
	rst SubAFromDE                                          ; $5662: $df
	ldh [$3c], a                                     ; $5663: $e0 $3c
	rst $38                                          ; $5665: $ff
	ld bc, $0301                                     ; $5666: $01 $01 $03
	ld bc, $c321                                     ; $5669: $01 $21 $c3
	or $01                                           ; $566c: $f6 $01
	xor l                                            ; $566e: $ad
	nop                                              ; $566f: $00
	rra                                              ; $5670: $1f
	ld a, d                                          ; $5671: $7a

jr_05e_5672:
	ret nz                                           ; $5672: $c0

	sbc l                                            ; $5673: $9d
	db $db                                           ; $5674: $db
	nop                                              ; $5675: $00
	ld a, e                                          ; $5676: $7b
	ld d, e                                          ; $5677: $53
	ld a, d                                          ; $5678: $7a
	call nz, $d198                                   ; $5679: $c4 $98 $d1
	nop                                              ; $567c: $00
	dec hl                                           ; $567d: $2b
	ret nz                                           ; $567e: $c0

Jump_05e_567f:
	pop af                                           ; $567f: $f1
	nop                                              ; $5680: $00
	db $eb                                           ; $5681: $eb
	ld a, e                                          ; $5682: $7b
	xor $97                                          ; $5683: $ee $97
	ld a, [hl]                                       ; $5685: $7e
	nop                                              ; $5686: $00
	ld a, l                                          ; $5687: $7d
	nop                                              ; $5688: $00
	cp d                                             ; $5689: $ba
	nop                                              ; $568a: $00
	db $fd                                           ; $568b: $fd
	inc bc                                           ; $568c: $03
	ld [hl], a                                       ; $568d: $77
	cp $7f                                           ; $568e: $fe $7f
	adc b                                            ; $5690: $88
	sbc h                                            ; $5691: $9c
	sbc $01                                          ; $5692: $de $01
	rst AddAOntoHL                                          ; $5694: $ef
	ld a, d                                          ; $5695: $7a
	add h                                            ; $5696: $84
	adc [hl]                                         ; $5697: $8e
	ei                                               ; $5698: $fb
	nop                                              ; $5699: $00
	rst SubAFromDE                                          ; $569a: $df
	nop                                              ; $569b: $00
	ld [$d500], a                                    ; $569c: $ea $00 $d5
	nop                                              ; $569f: $00
	ld l, d                                          ; $56a0: $6a
	add b                                            ; $56a1: $80
	scf                                              ; $56a2: $37
	ret nz                                           ; $56a3: $c0

	ld a, [bc]                                       ; $56a4: $0a
	push af                                          ; $56a5: $f5
	add a                                            ; $56a6: $87
	ld a, a                                          ; $56a7: $7f
	ldh [$7b], a                                     ; $56a8: $e0 $7b

Jump_05e_56aa:
	ccf                                              ; $56aa: $3f
	ld a, a                                          ; $56ab: $7f
	cp $7e                                           ; $56ac: $fe $7e
	sbc h                                            ; $56ae: $9c
	ld a, [hl]                                       ; $56af: $7e
	cp b                                             ; $56b0: $b8
	ld a, a                                          ; $56b1: $7f
	ld a, [$ab8a]                                    ; $56b2: $fa $8a $ab
	ld d, b                                          ; $56b5: $50
	db $e3                                           ; $56b6: $e3
	db $fc                                           ; $56b7: $fc
	jr @+$01                                         ; $56b8: $18 $ff

	db $ed                                           ; $56ba: $ed
	ld [hl-], a                                      ; $56bb: $32
	xor d                                            ; $56bc: $aa
	ld [hl], l                                       ; $56bd: $75
	call nc, $d13b                                   ; $56be: $d4 $3b $d1
	ccf                                              ; $56c1: $3f
	db $e3                                           ; $56c2: $e3
	rra                                              ; $56c3: $1f
	rst GetHLinHL                                          ; $56c4: $cf
	ccf                                              ; $56c5: $3f
	cp h                                             ; $56c6: $bc
	ld a, a                                          ; $56c7: $7f
	ld a, c                                          ; $56c8: $79
	ld a, d                                          ; $56c9: $7a
	jr nz, @+$31                                     ; $56ca: $20 $2f

	cp $7f                                           ; $56cc: $fe $7f
	xor [hl]                                         ; $56ce: $ae
	ld a, [hl]                                       ; $56cf: $7e
	ld [hl], h                                       ; $56d0: $74
	sbc [hl]                                         ; $56d1: $9e
	add b                                            ; $56d2: $80
	ld a, d                                          ; $56d3: $7a
	ld h, e                                          ; $56d4: $63
	ld a, a                                          ; $56d5: $7f
	or $9d                                           ; $56d6: $f6 $9d
	ret nz                                           ; $56d8: $c0

	rra                                              ; $56d9: $1f
	ld a, e                                          ; $56da: $7b
	add a                                            ; $56db: $87
	ld d, e                                          ; $56dc: $53
	db $e3                                           ; $56dd: $e3
	sbc e                                            ; $56de: $9b
	ld hl, sp+$07                                    ; $56df: $f8 $07
	rlca                                             ; $56e1: $07
	ld hl, sp+$4f                                    ; $56e2: $f8 $4f
	xor $7f                                          ; $56e4: $ee $7f
	sbc b                                            ; $56e6: $98
	ld a, a                                          ; $56e7: $7f
	inc a                                            ; $56e8: $3c
	ld c, a                                          ; $56e9: $4f
	xor $7e                                          ; $56ea: $ee $7e
	ldh [c], a                                       ; $56ec: $e2
	ld a, [hl]                                       ; $56ed: $7e
	ld a, $77                                        ; $56ee: $3e $77
	ld hl, sp-$21                                    ; $56f0: $f8 $df
	rst $38                                          ; $56f2: $ff
	sbc l                                            ; $56f3: $9d
	ld c, $f1                                        ; $56f4: $0e $f1
	ld h, c                                          ; $56f6: $61
	or e                                             ; $56f7: $b3
	rst SubAFromDE                                          ; $56f8: $df
	ld bc, $907f                                     ; $56f9: $01 $7f $90
	ld a, [hl]                                       ; $56fc: $7e
	sbc c                                            ; $56fd: $99
	sbc d                                            ; $56fe: $9a
	rst $38                                          ; $56ff: $ff
	ld [hl], e                                       ; $5700: $73
	adc a                                            ; $5701: $8f
	inc bc                                           ; $5702: $03
	db $fc                                           ; $5703: $fc
	ld l, c                                          ; $5704: $69
	adc a                                            ; $5705: $8f
	sbc h                                            ; $5706: $9c
	inc bc                                           ; $5707: $03
	ret nz                                           ; $5708: $c0

	ldh a, [$dd]                                     ; $5709: $f0 $dd
	rst $38                                          ; $570b: $ff
	sbc e                                            ; $570c: $9b
	pop af                                           ; $570d: $f1
	rrca                                             ; $570e: $0f
	rrca                                             ; $570f: $0f
	ldh a, [$6f]                                     ; $5710: $f0 $6f
	xor $9b                                          ; $5712: $ee $9b
	inc bc                                           ; $5714: $03
	rrca                                             ; $5715: $0f
	nop                                              ; $5716: $00
	ret nz                                           ; $5717: $c0

	ld a, e                                          ; $5718: $7b
	db $db                                           ; $5719: $db
	sbc l                                            ; $571a: $9d
	rst $38                                          ; $571b: $ff
	rst JumpTable                                          ; $571c: $c7
	ld l, e                                          ; $571d: $6b
	ret nz                                           ; $571e: $c0

	sbc d                                            ; $571f: $9a
	ldh [$f0], a                                     ; $5720: $e0 $f0
	ld a, b                                          ; $5722: $78
	db $fc                                           ; $5723: $fc
	ld e, $7a                                        ; $5724: $1e $7a
	sub [hl]                                         ; $5726: $96

jr_05e_5727:
	rst SubAFromDE                                          ; $5727: $df
	rst $38                                          ; $5728: $ff
	sbc d                                            ; $5729: $9a
	sbc a                                            ; $572a: $9f
	ld a, a                                          ; $572b: $7f
	ld a, [hl]                                       ; $572c: $7e
	add c                                            ; $572d: $81
	ld bc, $3e79                                     ; $572e: $01 $79 $3e
	rst $38                                          ; $5731: $ff
	ld a, [hl]                                       ; $5732: $7e
	sub d                                            ; $5733: $92
	sbc l                                            ; $5734: $9d
	and a                                            ; $5735: $a7
	rst SubAFromDE                                          ; $5736: $df
	ld [hl], a                                       ; $5737: $77
	call c, $b67f                                    ; $5738: $dc $7f $b6
	sbc b                                            ; $573b: $98
	add c                                            ; $573c: $81
	ld a, a                                          ; $573d: $7f
	ld b, $07                                        ; $573e: $06 $07
	inc c                                            ; $5740: $0c
	ld b, $0c                                        ; $5741: $06 $0c
	sbc $ff                                          ; $5743: $de $ff
	sbc e                                            ; $5745: $9b
	ld [hl], b                                       ; $5746: $70
	adc a                                            ; $5747: $8f
	sbc b                                            ; $5748: $98
	ldh [rPCM34], a                                  ; $5749: $e0 $77
	db $ec                                           ; $574b: $ec
	adc b                                            ; $574c: $88
	ld [hl], d                                       ; $574d: $72
	rst $38                                          ; $574e: $ff

jr_05e_574f:
	ld a, [bc]                                       ; $574f: $0a
	ld b, $02                                        ; $5750: $06 $02
	ld b, $d4                                        ; $5752: $06 $d4
	xor $8d                                          ; $5754: $ee $8d
	ld a, h                                          ; $5756: $7c
	dec b                                            ; $5757: $05
	inc c                                            ; $5758: $0c
	rst SubAFromHL                                          ; $5759: $d7
	inc c                                            ; $575a: $0c
	ei                                               ; $575b: $fb
	db $fc                                           ; $575c: $fc
	ld [hl], a                                       ; $575d: $77
	nop                                              ; $575e: $00
	xor l                                            ; $575f: $ad
	ld [bc], a                                       ; $5760: $02
	halt                                             ; $5761: $76
	ld bc, $7aab                                     ; $5762: $01 $ab $7a
	call nc, $a87d                                   ; $5765: $d4 $7d $a8
	ld a, l                                          ; $5768: $7d
	ld a, $7e                                        ; $5769: $3e $7e
	jp z, Jump_05e_5875                              ; $576b: $ca $75 $58

	halt                                             ; $576e: $76

jr_05e_576f:
	ldh [$7d], a                                     ; $576f: $e0 $7d
	sbc h                                            ; $5771: $9c
	adc b                                            ; $5772: $88
	rst SubAFromDE                                          ; $5773: $df
	jr nz, jr_05e_57c0                               ; $5774: $20 $4a

	jr nc, jr_05e_576f                               ; $5776: $30 $f7

	ld [$10ed], sp                                   ; $5778: $08 $ed $10
	jp c, $fd20                                      ; $577b: $da $20 $fd

	nop                                              ; $577e: $00
	db $db                                           ; $577f: $db
	jr nz, jr_05e_57e1                               ; $5780: $20 $5f

	jr nz, jr_05e_574f                               ; $5782: $20 $cb

	jr nc, @-$33                                     ; $5784: $30 $cb

	jr nc, jr_05e_5727                               ; $5786: $30 $9f

	ld h, b                                          ; $5788: $60
	ld a, a                                          ; $5789: $7f
	ld [hl], c                                       ; $578a: $71
	inc a                                            ; $578b: $3c
	ld [hl], a                                       ; $578c: $77
	db $fc                                           ; $578d: $fc
	ld a, [hl]                                       ; $578e: $7e
	sbc h                                            ; $578f: $9c
	adc e                                            ; $5790: $8b
	rst FarCall                                          ; $5791: $f7
	nop                                              ; $5792: $00
	rst AddAOntoHL                                          ; $5793: $ef
	nop                                              ; $5794: $00
	db $ec                                           ; $5795: $ec
	rra                                              ; $5796: $1f
	sub $0f                                          ; $5797: $d6 $0f
	ei                                               ; $5799: $fb
	rlca                                             ; $579a: $07
	ei                                               ; $579b: $fb
	rlca                                             ; $579c: $07
	ld sp, hl                                        ; $579d: $f9
	rlca                                             ; $579e: $07
	db $fc                                           ; $579f: $fc
	inc bc                                           ; $57a0: $03
	ld hl, sp+$07                                    ; $57a1: $f8 $07
	db $fd                                           ; $57a3: $fd
	inc bc                                           ; $57a4: $03
	ld a, c                                          ; $57a5: $79
	ld [$f892], a                                    ; $57a6: $ea $92 $f8
	or $f9                                           ; $57a9: $f6 $f9
	push af                                          ; $57ab: $f5
	ei                                               ; $57ac: $fb
	ldh a, [c]                                       ; $57ad: $f2
	rst $38                                          ; $57ae: $ff
	ld [hl], l                                       ; $57af: $75
	cp $fb                                           ; $57b0: $fe $fb
	db $fc                                           ; $57b2: $fc
	ei                                               ; $57b3: $fb
	db $fc                                           ; $57b4: $fc
	halt                                             ; $57b5: $76
	ret c                                            ; $57b6: $d8

	ld a, a                                          ; $57b7: $7f
	add sp, $7f                                      ; $57b8: $e8 $7f
	cp $9b                                           ; $57ba: $fe $9b
	ldh a, [rIF]                                     ; $57bc: $f0 $0f
	ldh [$1f], a                                     ; $57be: $e0 $1f

jr_05e_57c0:
	ld [hl], l                                       ; $57c0: $75
	or b                                             ; $57c1: $b0
	ld b, [hl]                                       ; $57c2: $46
	or a                                             ; $57c3: $b7
	ld b, [hl]                                       ; $57c4: $46
	sub $7f                                          ; $57c5: $d6 $7f
	ret c                                            ; $57c7: $d8

	ld h, a                                          ; $57c8: $67
	ld d, $1e                                        ; $57c9: $16 $1e
	call nz, $ba7f                                   ; $57cb: $c4 $7f $ba
	ld a, l                                          ; $57ce: $7d
	inc b                                            ; $57cf: $04
	ld b, a                                          ; $57d0: $47
	cp b                                             ; $57d1: $b8
	halt                                             ; $57d2: $76

jr_05e_57d3:
	call nz, $e072                                   ; $57d3: $c4 $72 $e0
	ld l, d                                          ; $57d6: $6a
	add $76                                          ; $57d7: $c6 $76
	call nz, $f477                                   ; $57d9: $c4 $77 $f4
	ld d, a                                          ; $57dc: $57
	or b                                             ; $57dd: $b0
	ld l, a                                          ; $57de: $6f
	db $f4                                           ; $57df: $f4
	ld d, a                                          ; $57e0: $57

jr_05e_57e1:
	or b                                             ; $57e1: $b0
	ld a, a                                          ; $57e2: $7f
	db $f4                                           ; $57e3: $f4
	ld l, a                                          ; $57e4: $6f
	or b                                             ; $57e5: $b0
	ld [hl], d                                       ; $57e6: $72
	add $73                                          ; $57e7: $c6 $73
	xor $67                                          ; $57e9: $ee $67
	jp nc, $c26f                                     ; $57eb: $d2 $6f $c2

	ld a, e                                          ; $57ee: $7b
	ld h, b                                          ; $57ef: $60
	ld c, e                                          ; $57f0: $4b
	ld h, [hl]                                       ; $57f1: $66
	ld a, a                                          ; $57f2: $7f
	ld [hl+], a                                      ; $57f3: $22
	ld c, [hl]                                       ; $57f4: $4e
	inc a                                            ; $57f5: $3c
	add l                                            ; $57f6: $85
	ld h, c                                          ; $57f7: $61
	ld h, b                                          ; $57f8: $60
	jr c, jr_05e_57d3                                ; $57f9: $38 $d8

	inc d                                            ; $57fb: $14
	adc $22                                          ; $57fc: $ce $22
	jp nz, $c101                                     ; $57fe: $c2 $01 $c1

	jr nz, @-$7e                                     ; $5801: $20 $80

	ld d, c                                          ; $5803: $51
	add b                                            ; $5804: $80
	jr z, @-$7e                                      ; $5805: $28 $80

	di                                               ; $5807: $f3
	inc c                                            ; $5808: $0c
	ld hl, sp+$07                                    ; $5809: $f8 $07
	dec a                                            ; $580b: $3d
	ld [bc], a                                       ; $580c: $02
	db $fd                                           ; $580d: $fd
	ld [bc], a                                       ; $580e: $02
	ld a, h                                          ; $580f: $7c
	add e                                            ; $5810: $83
	ld [hl], a                                       ; $5811: $77
	xor b                                            ; $5812: $a8
	ld a, a                                          ; $5813: $7f
	ld l, d                                          ; $5814: $6a
	ld a, a                                          ; $5815: $7f
	ld d, [hl]                                       ; $5816: $56
	ld h, l                                          ; $5817: $65
	ret nc                                           ; $5818: $d0

	sbc h                                            ; $5819: $9c
	ld d, e                                          ; $581a: $53
	xor a                                            ; $581b: $af
	db $fc                                           ; $581c: $fc
	halt                                             ; $581d: $76
	db $10                                           ; $581e: $10
	sub l                                            ; $581f: $95
	nop                                              ; $5820: $00
	ldh [$1f], a                                     ; $5821: $e0 $1f
	sbc a                                            ; $5823: $9f
	ld a, a                                          ; $5824: $7f
	ld h, b                                          ; $5825: $60
	rst $38                                          ; $5826: $ff
	rst GetHLinHL                                          ; $5827: $cf
	ldh a, [$3f]                                     ; $5828: $f0 $3f
	ld a, b                                          ; $582a: $78
	inc a                                            ; $582b: $3c
	ld a, a                                          ; $582c: $7f
	ldh a, [c]                                       ; $582d: $f2
	halt                                             ; $582e: $76
	ret z                                            ; $582f: $c8

	sub d                                            ; $5830: $92
	ld a, [hl-]                                      ; $5831: $3a
	push bc                                          ; $5832: $c5
	sub l                                            ; $5833: $95
	ld [$fd42], a                                    ; $5834: $ea $42 $fd
	cp l                                             ; $5837: $bd
	ld a, [hl]                                       ; $5838: $7e
	sbc [hl]                                         ; $5839: $9e
	ld a, a                                          ; $583a: $7f
	rst SubAFromBC                                          ; $583b: $e7
	rra                                              ; $583c: $1f
	ld sp, hl                                        ; $583d: $f9
	ld a, e                                          ; $583e: $7b
	ld a, b                                          ; $583f: $78
	ld a, l                                          ; $5840: $7d
	ld a, d                                          ; $5841: $7a
	ld a, a                                          ; $5842: $7f
	db $fc                                           ; $5843: $fc
	sbc b                                            ; $5844: $98
	ld [$3bf7], sp                                   ; $5845: $08 $f7 $3b
	rst $38                                          ; $5848: $ff
	ld l, c                                          ; $5849: $69
	rst $38                                          ; $584a: $ff
	jr nz, jr_05e_5898                               ; $584b: $20 $4b

	ld a, [de]                                       ; $584d: $1a
	sbc [hl]                                         ; $584e: $9e
	ldh [$73], a                                     ; $584f: $e0 $73
	or l                                             ; $5851: $b5
	sub d                                            ; $5852: $92
	nop                                              ; $5853: $00
	db $fc                                           ; $5854: $fc
	nop                                              ; $5855: $00
	ld hl, sp+$08                                    ; $5856: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5858: $f0 $10
	ldh [rAUD4LEN], a                                ; $585a: $e0 $20
	ret nz                                           ; $585c: $c0

	ld b, b                                          ; $585d: $40
	add b                                            ; $585e: $80
	add e                                            ; $585f: $83
	or $7c                                           ; $5860: $f6 $7c
	rst GetHLinHL                                          ; $5862: $cf
	sbc c                                            ; $5863: $99
	rrca                                             ; $5864: $0f
	ccf                                              ; $5865: $3f
	nop                                              ; $5866: $00
	rst $38                                          ; $5867: $ff
	jr c, jr_05e_5871                                ; $5868: $38 $07

	rst FarCall                                          ; $586a: $f7
	rst SubAFromDE                                          ; $586b: $df
	add b                                            ; $586c: $80
	ld [hl], a                                       ; $586d: $77
	jp z, $309d                                      ; $586e: $ca $9d $30

jr_05e_5871:
	rrca                                             ; $5871: $0f
	or $73                                           ; $5872: $f6 $73
	cp b                                             ; $5874: $b8

Jump_05e_5875:
	sbc [hl]                                         ; $5875: $9e
	ld [hl], b                                       ; $5876: $70
	ld e, a                                          ; $5877: $5f
	xor $63                                          ; $5878: $ee $63
	ld [hl+], a                                      ; $587a: $22
	ld l, b                                          ; $587b: $68
	ld b, [hl]                                       ; $587c: $46
	ld e, e                                          ; $587d: $5b
	ld [hl+], a                                      ; $587e: $22
	ld [hl], e                                       ; $587f: $73
	xor $51                                          ; $5880: $ee $51
	ld c, h                                          ; $5882: $4c
	sbc [hl]                                         ; $5883: $9e
	inc bc                                           ; $5884: $03
	ld a, b                                          ; $5885: $78
	ld [hl], h                                       ; $5886: $74
	ld c, [hl]                                       ; $5887: $4e
	halt                                             ; $5888: $76
	ld h, l                                          ; $5889: $65
	jr c, @+$59                                      ; $588a: $38 $57

	db $ec                                           ; $588c: $ec
	ld e, [hl]                                       ; $588d: $5e
	or d                                             ; $588e: $b2
	ld e, [hl]                                       ; $588f: $5e
	ld [hl], h                                       ; $5890: $74
	ld b, [hl]                                       ; $5891: $46
	jr jr_05e_58f8                                   ; $5892: $18 $64

	call c, $e17d                                    ; $5894: $dc $7d $e1
	sbc l                                            ; $5897: $9d

jr_05e_5898:
	ld [bc], a                                       ; $5898: $02
	db $fc                                           ; $5899: $fc
	ld [hl], e                                       ; $589a: $73
	db $fc                                           ; $589b: $fc
	ld l, e                                          ; $589c: $6b
	add sp, $7f                                      ; $589d: $e8 $7f
	adc h                                            ; $589f: $8c
	add d                                            ; $58a0: $82
	ld a, [hl+]                                      ; $58a1: $2a
	nop                                              ; $58a2: $00
	ld d, l                                          ; $58a3: $55
	ld bc, $3ebe                                     ; $58a4: $01 $be $3e
	jp $06f0                                         ; $58a7: $c3 $f0 $06


	nop                                              ; $58aa: $00
	rlca                                             ; $58ab: $07
	ld de, $c306                                     ; $58ac: $11 $06 $c3
	ld a, $0c                                        ; $58af: $3e $0c
	sbc h                                            ; $58b1: $9c
	inc d                                            ; $58b2: $14
	push hl                                          ; $58b3: $e5
	db $e4                                           ; $58b4: $e4
	ld h, [hl]                                       ; $58b5: $66
	ld b, h                                          ; $58b6: $44
	ei                                               ; $58b7: $fb
	jp nz, $8282                                     ; $58b8: $c2 $82 $82

	add l                                            ; $58bb: $85
	ld bc, $798b                                     ; $58bc: $01 $8b $79
	ld h, d                                          ; $58bf: $62
	db $fd                                           ; $58c0: $fd
	sbc b                                            ; $58c1: $98
	and b                                            ; $58c2: $a0
	nop                                              ; $58c3: $00
	ld d, b                                          ; $58c4: $50
	nop                                              ; $58c5: $00
	xor c                                            ; $58c6: $a9
	nop                                              ; $58c7: $00
	ld [hl], d                                       ; $58c8: $72
	ld a, c                                          ; $58c9: $79
	ld c, [hl]                                       ; $58ca: $4e
	adc d                                            ; $58cb: $8a
	rst AddAOntoHL                                          ; $58cc: $ef
	rrca                                             ; $58cd: $0f
	ld [hl], a                                       ; $58ce: $77
	rlca                                             ; $58cf: $07
	xor a                                            ; $58d0: $af
	rlca                                             ; $58d1: $07
	ld e, a                                          ; $58d2: $5f
	rlca                                             ; $58d3: $07
	dec l                                            ; $58d4: $2d

jr_05e_58d5:
	rlca                                             ; $58d5: $07
	jr jr_05e_58dd                                   ; $58d6: $18 $05

	ldh a, [$0a]                                     ; $58d8: $f0 $0a
	ld [hl], b                                       ; $58da: $70
	dec b                                            ; $58db: $05
	inc h                                            ; $58dc: $24

jr_05e_58dd:
	rst $38                                          ; $58dd: $ff
	inc c                                            ; $58de: $0c
	rst $38                                          ; $58df: $ff
	ld a, $7b                                        ; $58e0: $3e $7b
	cp $98                                           ; $58e2: $fe $98
	ld [bc], a                                       ; $58e4: $02
	rst $38                                          ; $58e5: $ff
	and a                                            ; $58e6: $a7
	ld e, a                                          ; $58e7: $5f
	ld c, [hl]                                       ; $58e8: $4e
	cp a                                             ; $58e9: $bf
	ld b, $de                                        ; $58ea: $06 $de
	rst $38                                          ; $58ec: $ff
	sbc e                                            ; $58ed: $9b
	rra                                              ; $58ee: $1f
	rst $38                                          ; $58ef: $ff
	ld [bc], a                                       ; $58f0: $02
	db $fc                                           ; $58f1: $fc
	halt                                             ; $58f2: $76
	adc $9c                                          ; $58f3: $ce $9c
	nop                                              ; $58f5: $00
	ldh a, [rP1]                                     ; $58f6: $f0 $00

jr_05e_58f8:
	ld a, d                                          ; $58f8: $7a
	adc $7e                                          ; $58f9: $ce $7e
	db $ed                                           ; $58fb: $ed
	ld l, [hl]                                       ; $58fc: $6e
	push de                                          ; $58fd: $d5
	add b                                            ; $58fe: $80
	rlca                                             ; $58ff: $07
	inc bc                                           ; $5900: $03
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	inc bc                                           ; $5903: $03
	ld bc, $0301                                     ; $5904: $01 $01 $03
	dec b                                            ; $5907: $05
	ld c, $3e                                        ; $5908: $0e $3e
	rst $38                                          ; $590a: $ff
	dec de                                           ; $590b: $1b
	ld a, b                                          ; $590c: $78
	ld a, b                                          ; $590d: $78
	db $fc                                           ; $590e: $fc
	ld a, e                                          ; $590f: $7b
	db $ed                                           ; $5910: $ed
	and $c3                                          ; $5911: $e6 $c3
	call nz, $1fbf                                   ; $5913: $c4 $bf $1f
	cp a                                             ; $5916: $bf
	sbc b                                            ; $5917: $98
	inc e                                            ; $5918: $1c
	inc a                                            ; $5919: $3c
	jr c, jr_05e_597c                                ; $591a: $38 $60

	ld [hl], b                                       ; $591c: $70
	ldh [hDisp1_WX], a                                     ; $591d: $e0 $96
	ret nz                                           ; $591f: $c0

	add b                                            ; $5920: $80
	add b                                            ; $5921: $80
	ld d, b                                          ; $5922: $50
	jr nz, jr_05e_58d5                               ; $5923: $20 $b0

	ld [hl], b                                       ; $5925: $70
	ld [hl], b                                       ; $5926: $70
	ldh a, [$fb]                                     ; $5927: $f0 $fb
	sub l                                            ; $5929: $95
	rlca                                             ; $592a: $07
	rra                                              ; $592b: $1f
	nop                                              ; $592c: $00
	add hl, bc                                       ; $592d: $09
	ld [$181c], sp                                   ; $592e: $08 $1c $18
	inc e                                            ; $5931: $1c
	add hl, sp                                       ; $5932: $39
	add hl, sp                                       ; $5933: $39
	cp $95                                           ; $5934: $fe $95
	ld h, b                                          ; $5936: $60
	ldh a, [$60]                                     ; $5937: $f0 $60
	ldh [$cc], a                                     ; $5939: $e0 $cc
	ld c, [hl]                                       ; $593b: $4e
	db $fc                                           ; $593c: $fc
	ldh [rSVBK], a                                   ; $593d: $e0 $70
	ret nz                                           ; $593f: $c0

	ld a, e                                          ; $5940: $7b
	reti                                             ; $5941: $d9


	ei                                               ; $5942: $fb
	sub l                                            ; $5943: $95
	inc b                                            ; $5944: $04
	nop                                              ; $5945: $00
	dec bc                                           ; $5946: $0b
	ld b, $2f                                        ; $5947: $06 $2f
	rra                                              ; $5949: $1f
	ld b, d                                          ; $594a: $42
	ccf                                              ; $594b: $3f
	ccf                                              ; $594c: $3f
	ld a, a                                          ; $594d: $7f
	ld e, d                                          ; $594e: $5a
	add h                                            ; $594f: $84
	sbc d                                            ; $5950: $9a
	ret nz                                           ; $5951: $c0

	jr nz, @-$3e                                     ; $5952: $20 $c0

	and b                                            ; $5954: $a0
	ret nz                                           ; $5955: $c0

	push af                                          ; $5956: $f5
	sbc h                                            ; $5957: $9c
	jr jr_05e_598a                                   ; $5958: $18 $30

	ld e, h                                          ; $595a: $5c
	ld d, [hl]                                       ; $595b: $56
	ld h, e                                          ; $595c: $63
	ld l, d                                          ; $595d: $6a
	sub b                                            ; $595e: $90
	ld a, e                                          ; $595f: $7b
	ld [hl], a                                       ; $5960: $77
	ld d, e                                          ; $5961: $53
	ldh a, [$7f]                                     ; $5962: $f0 $7f
	cp $9e                                           ; $5964: $fe $9e
	ld b, $6a                                        ; $5966: $06 $6a
	ld [hl], l                                       ; $5968: $75
	ld e, [hl]                                       ; $5969: $5e
	ld [hl], b                                       ; $596a: $70
	ld e, d                                          ; $596b: $5a
	ld a, $62                                        ; $596c: $3e $62
	ld [hl], h                                       ; $596e: $74
	ld a, [hl]                                       ; $596f: $7e
	inc de                                           ; $5970: $13
	sbc h                                            ; $5971: $9c
	inc c                                            ; $5972: $0c
	rrca                                             ; $5973: $0f
	ld [$4071], sp                                   ; $5974: $08 $71 $40
	halt                                             ; $5977: $76
	sub d                                            ; $5978: $92
	ld l, a                                          ; $5979: $6f
	db $fc                                           ; $597a: $fc
	ld a, c                                          ; $597b: $79

jr_05e_597c:
	add a                                            ; $597c: $87
	adc c                                            ; $597d: $89
	add d                                            ; $597e: $82
	ld [bc], a                                       ; $597f: $02
	add e                                            ; $5980: $83
	ld d, d                                          ; $5981: $52
	add e                                            ; $5982: $83
	inc l                                            ; $5983: $2c
	add [hl]                                         ; $5984: $86
	ld d, e                                          ; $5985: $53
	add b                                            ; $5986: $80
	ld l, $80                                        ; $5987: $2e $80
	ld a, e                                          ; $5989: $7b

jr_05e_598a:
	add b                                            ; $598a: $80
	ld [hl], e                                       ; $598b: $73
	nop                                              ; $598c: $00
	rla                                              ; $598d: $17
	nop                                              ; $598e: $00
	rst GetHLinHL                                          ; $598f: $cf
	nop                                              ; $5990: $00
	sbc a                                            ; $5991: $9f
	nop                                              ; $5992: $00
	ccf                                              ; $5993: $3f
	ld a, e                                          ; $5994: $7b
	cp $9e                                           ; $5995: $fe $9e
	ld e, a                                          ; $5997: $5f
	ld a, e                                          ; $5998: $7b
	ld hl, sp+$7f                                    ; $5999: $f8 $7f
	db $d3                                           ; $599b: $d3
	sbc b                                            ; $599c: $98
	jr z, jr_05e_599f                                ; $599d: $28 $00

jr_05e_599f:
	ld a, c                                          ; $599f: $79
	nop                                              ; $59a0: $00
	cp [hl]                                          ; $59a1: $be
	nop                                              ; $59a2: $00
	ld sp, hl                                        ; $59a3: $f9
	ld a, c                                          ; $59a4: $79
	cp e                                             ; $59a5: $bb
	ld l, c                                          ; $59a6: $69
	ld l, b                                          ; $59a7: $68
	add b                                            ; $59a8: $80
	ld c, $65                                        ; $59a9: $0e $65
	dec b                                            ; $59ab: $05
	pop hl                                           ; $59ac: $e1
	dec bc                                           ; $59ad: $0b
	ld h, a                                          ; $59ae: $67
	rla                                              ; $59af: $17
	rst JumpTable                                          ; $59b0: $c7
	rrca                                             ; $59b1: $0f
	jp $8317                                         ; $59b2: $c3 $17 $83


	dec hl                                           ; $59b5: $2b
	rrca                                             ; $59b6: $0f
	ld e, a                                          ; $59b7: $5f
	inc bc                                           ; $59b8: $03
	rst $38                                          ; $59b9: $ff
	dec bc                                           ; $59ba: $0b
	rst $38                                          ; $59bb: $ff
	ld d, e                                          ; $59bc: $53
	cp a                                             ; $59bd: $bf
	rra                                              ; $59be: $1f
	rst $38                                          ; $59bf: $ff
	ret nz                                           ; $59c0: $c0

	rst $38                                          ; $59c1: $ff
	ld b, b                                          ; $59c2: $40
	rst $38                                          ; $59c3: $ff
	ld a, [bc]                                       ; $59c4: $0a
	rst $38                                          ; $59c5: $ff
	ld c, $ff                                        ; $59c6: $0e $ff
	sbc [hl]                                         ; $59c8: $9e
	nop                                              ; $59c9: $00
	ld h, [hl]                                       ; $59ca: $66
	adc $f2                                          ; $59cb: $ce $f2
	sub a                                            ; $59cd: $97
	ld h, b                                          ; $59ce: $60
	nop                                              ; $59cf: $00
	ccf                                              ; $59d0: $3f
	ld a, a                                          ; $59d1: $7f
	rla                                              ; $59d2: $17
	ld [$1f19], sp                                   ; $59d3: $08 $19 $1f
	ld sp, hl                                        ; $59d6: $f9
	ld a, a                                          ; $59d7: $7f
	inc d                                            ; $59d8: $14
	rst SubAFromDE                                          ; $59d9: $df
	ldh [$97], a                                     ; $59da: $e0 $97
	adc a                                            ; $59dc: $8f
	ld a, a                                          ; $59dd: $7f

jr_05e_59de:
	xor h                                            ; $59de: $ac
	di                                               ; $59df: $f3
	ld [hl], b                                       ; $59e0: $70
	ld h, b                                          ; $59e1: $60
	dec bc                                           ; $59e2: $0b
	rlca                                             ; $59e3: $07
	ld h, a                                          ; $59e4: $67
	ld b, c                                          ; $59e5: $41
	ld a, a                                          ; $59e6: $7f
	rst JumpTable                                          ; $59e7: $c7
	ld a, a                                          ; $59e8: $7f
	cp $99                                           ; $59e9: $fe $99
	ld [hl], c                                       ; $59eb: $71
	dec sp                                           ; $59ec: $3b
	add sp, -$0a                                     ; $59ed: $e8 $f6
	rst AddAOntoHL                                          ; $59ef: $ef
	rra                                              ; $59f0: $1f
	ld l, a                                          ; $59f1: $6f

jr_05e_59f2:
	xor $96                                          ; $59f2: $ee $96
	jr nz, jr_05e_59f6                               ; $59f4: $20 $00

jr_05e_59f6:
	ldh [rSVBK], a                                   ; $59f6: $e0 $70
	nop                                              ; $59f8: $00
	nop                                              ; $59f9: $00
	ld b, b                                          ; $59fa: $40
	nop                                              ; $59fb: $00
	pop bc                                           ; $59fc: $c1
	halt                                             ; $59fd: $76
	ld a, b                                          ; $59fe: $78
	db $fc                                           ; $59ff: $fc
	ld a, l                                          ; $5a00: $7d
	ld b, b                                          ; $5a01: $40
	sub l                                            ; $5a02: $95
	add hl, sp                                       ; $5a03: $39
	inc bc                                           ; $5a04: $03
	scf                                              ; $5a05: $37
	rst GetHLinHL                                          ; $5a06: $cf
	and d                                            ; $5a07: $a2
	pop bc                                           ; $5a08: $c1
	ld a, b                                          ; $5a09: $78
	db $fc                                           ; $5a0a: $fc
	ld b, b                                          ; $5a0b: $40
	inc a                                            ; $5a0c: $3c
	ld a, [$81df]                                    ; $5a0d: $fa $df $81
	rst SubAFromDE                                          ; $5a10: $df
	jp $839a                                         ; $5a11: $c3 $9a $83


	rlca                                             ; $5a14: $07
	rlca                                             ; $5a15: $07
	nop                                              ; $5a16: $00
	ld b, $75                                        ; $5a17: $06 $75
	jr nc, @+$01                                     ; $5a19: $30 $ff

	sub d                                            ; $5a1b: $92
	and h                                            ; $5a1c: $a4
	ret c                                            ; $5a1d: $d8

	nop                                              ; $5a1e: $00
	add b                                            ; $5a1f: $80
	cp b                                             ; $5a20: $b8
	ld a, h                                          ; $5a21: $7c
	inc [hl]                                         ; $5a22: $34
	adc $04                                          ; $5a23: $ce $04
	ld c, $ca                                        ; $5a25: $0e $ca
	inc a                                            ; $5a27: $3c
	ld l, b                                          ; $5a28: $68
	ld a, d                                          ; $5a29: $7a
	ld [hl], d                                       ; $5a2a: $72
	sub c                                            ; $5a2b: $91
	ld bc, $0602                                     ; $5a2c: $01 $02 $06
	inc bc                                           ; $5a2f: $03
	inc bc                                           ; $5a30: $03
	rlca                                             ; $5a31: $07
	ld c, $1f                                        ; $5a32: $0e $1f
	dec de                                           ; $5a34: $1b
	scf                                              ; $5a35: $37
	scf                                              ; $5a36: $37
	ld a, $1c                                        ; $5a37: $3e $1c
	ld a, [hl-]                                      ; $5a39: $3a
	cp $91                                           ; $5a3a: $fe $91
	jr nc, jr_05e_59de                               ; $5a3c: $30 $a0

	ld [hl], b                                       ; $5a3e: $70
	ldh a, [$f8]                                     ; $5a3f: $f0 $f8
	add h                                            ; $5a41: $84
	call c, $8c06                                    ; $5a42: $dc $06 $8c
	ld [$3c0c], sp                                   ; $5a45: $08 $0c $3c
	jr jr_05e_59f2                                   ; $5a48: $18 $a8

	ld a, e                                          ; $5a4a: $7b
	and b                                            ; $5a4b: $a0
	ld a, a                                          ; $5a4c: $7f
	sub $93                                          ; $5a4d: $d6 $93
	rra                                              ; $5a4f: $1f
	ccf                                              ; $5a50: $3f
	ld h, $1f                                        ; $5a51: $26 $1f
	ccf                                              ; $5a53: $3f
	ld a, a                                          ; $5a54: $7f
	dec b                                            ; $5a55: $05
	dec sp                                           ; $5a56: $3b
	add c                                            ; $5a57: $81
	ld a, a                                          ; $5a58: $7f
	ld h, b                                          ; $5a59: $60
	jp Jump_05e_776f                                 ; $5a5a: $c3 $6f $77


	ld a, a                                          ; $5a5d: $7f
	sbc b                                            ; $5a5e: $98
	ld a, [hl]                                       ; $5a5f: $7e
	ld [hl], d                                       ; $5a60: $72
	ld a, d                                          ; $5a61: $7a
	ld l, a                                          ; $5a62: $6f
	ld a, e                                          ; $5a63: $7b
	ld a, [$ce7e]                                    ; $5a64: $fa $7e $ce
	sub c                                            ; $5a67: $91
	jr @+$21                                         ; $5a68: $18 $1f

	jr nc, jr_05e_5a8b                               ; $5a6a: $30 $1f

	db $10                                           ; $5a6c: $10
	ccf                                              ; $5a6d: $3f
	jr nc, jr_05e_5aaf                               ; $5a6e: $30 $3f

	jr nz, jr_05e_5ab1                               ; $5a70: $20 $3f

	jr nz, jr_05e_5af3                               ; $5a72: $20 $7f

	ld a, $7f                                        ; $5a74: $3e $7f
	halt                                             ; $5a76: $76
	call z, $fc77                                    ; $5a77: $cc $77 $fc
	sbc e                                            ; $5a7a: $9b
	dec b                                            ; $5a7b: $05
	ei                                               ; $5a7c: $fb
	dec bc                                           ; $5a7d: $0b
	push af                                          ; $5a7e: $f5
	ld a, e                                          ; $5a7f: $7b
	db $fc                                           ; $5a80: $fc
	sbc [hl]                                         ; $5a81: $9e
	rst FarCall                                          ; $5a82: $f7
	ld [hl], d                                       ; $5a83: $72
	ld [$ffd5], a                                    ; $5a84: $ea $d5 $ff
	dec bc                                           ; $5a87: $0b
	ldh a, [$7d]                                     ; $5a88: $f0 $7d
	ld [de], a                                       ; $5a8a: $12

jr_05e_5a8b:
	ld l, a                                          ; $5a8b: $6f
	pop af                                           ; $5a8c: $f1
	ld h, a                                          ; $5a8d: $67
	db $eb                                           ; $5a8e: $eb
	ld l, a                                          ; $5a8f: $6f
	pop hl                                           ; $5a90: $e1
	sbc [hl]                                         ; $5a91: $9e
	xor b                                            ; $5a92: $a8
	ld e, a                                          ; $5a93: $5f
	ldh a, [$7f]                                     ; $5a94: $f0 $7f
	ld c, [hl]                                       ; $5a96: $4e
	ld a, e                                          ; $5a97: $7b
	ld d, b                                          ; $5a98: $50
	add l                                            ; $5a99: $85
	rrca                                             ; $5a9a: $0f
	ld b, $1d                                        ; $5a9b: $06 $1d
	ld c, $39                                        ; $5a9d: $0e $39
	dec e                                            ; $5a9f: $1d
	nop                                              ; $5aa0: $00
	jr jr_05e_5aa3                                   ; $5aa1: $18 $00

jr_05e_5aa3:
	nop                                              ; $5aa3: $00
	inc [hl]                                         ; $5aa4: $34
	jr c, jr_05e_5aef                                ; $5aa5: $38 $48

	or a                                             ; $5aa7: $b7
	ld h, c                                          ; $5aa8: $61
	add b                                            ; $5aa9: $80
	ld [hl], a                                       ; $5aaa: $77
	ld l, [hl]                                       ; $5aab: $6e
	rst JumpTable                                          ; $5aac: $c7
	xor $ec                                          ; $5aad: $ee $ec

jr_05e_5aaf:
	sbc $03                                          ; $5aaf: $de $03

jr_05e_5ab1:
	dec e                                            ; $5ab1: $1d
	inc bc                                           ; $5ab2: $03
	rlca                                             ; $5ab3: $07
	ld [hl], l                                       ; $5ab4: $75
	cp d                                             ; $5ab5: $ba
	ld a, h                                          ; $5ab6: $7c
	inc [hl]                                         ; $5ab7: $34
	sbc l                                            ; $5ab8: $9d
	jr nc, jr_05e_5b33                               ; $5ab9: $30 $78

	ld a, c                                          ; $5abb: $79
	adc h                                            ; $5abc: $8c
	ld a, l                                          ; $5abd: $7d
	or d                                             ; $5abe: $b2
	rst SubAFromDE                                          ; $5abf: $df
	ret nz                                           ; $5ac0: $c0

	add b                                            ; $5ac1: $80
	add b                                            ; $5ac2: $80
	ld [bc], a                                       ; $5ac3: $02
	ld bc, $0304                                     ; $5ac4: $01 $04 $03
	inc bc                                           ; $5ac7: $03
	nop                                              ; $5ac8: $00
	ld [bc], a                                       ; $5ac9: $02
	ld bc, $0c13                                     ; $5aca: $01 $13 $0c
	dec sp                                           ; $5acd: $3b
	nop                                              ; $5ace: $00
	ld hl, $0e1e                                     ; $5acf: $21 $1e $0e
	rlca                                             ; $5ad2: $07
	pop af                                           ; $5ad3: $f1
	rst $38                                          ; $5ad4: $ff
	and [hl]                                         ; $5ad5: $a6
	ld a, a                                          ; $5ad6: $7f
	xor $7c                                          ; $5ad7: $ee $7c
	sbc h                                            ; $5ad9: $9c
	rst $38                                          ; $5ada: $ff
	rra                                              ; $5adb: $1f
	jr c, jr_05e_5b55                                ; $5adc: $38 $77

	ld hl, sp-$32                                    ; $5ade: $f8 $ce
	rrca                                             ; $5ae0: $0f
	sub [hl]                                         ; $5ae1: $96
	db $fc                                           ; $5ae2: $fc
	rra                                              ; $5ae3: $1f
	ret z                                            ; $5ae4: $c8

	ret nz                                           ; $5ae5: $c0

	call z, $f0fc                                    ; $5ae6: $cc $fc $f0
	call z, Call_05e_79e0                            ; $5ae9: $cc $e0 $79
	and h                                            ; $5aec: $a4
	ld a, [hl]                                       ; $5aed: $7e
	or e                                             ; $5aee: $b3

jr_05e_5aef:
	sbc l                                            ; $5aef: $9d
	ldh a, [$e0]                                     ; $5af0: $f0 $e0
	ld a, d                                          ; $5af2: $7a

jr_05e_5af3:
	ld h, d                                          ; $5af3: $62
	ld [hl], c                                       ; $5af4: $71
	ld [hl-], a                                      ; $5af5: $32
	sub a                                            ; $5af6: $97
	inc b                                            ; $5af7: $04
	add hl, bc                                       ; $5af8: $09
	inc c                                            ; $5af9: $0c
	rra                                              ; $5afa: $1f
	ld a, [de]                                       ; $5afb: $1a
	dec a                                            ; $5afc: $3d
	inc hl                                           ; $5afd: $23
	inc e                                            ; $5afe: $1c
	ld l, l                                          ; $5aff: $6d
	or h                                             ; $5b00: $b4
	sub e                                            ; $5b01: $93
	adc h                                            ; $5b02: $8c
	ret c                                            ; $5b03: $d8

	call z, $89dd                                    ; $5b04: $cc $dd $89
	rst SubAFromDE                                          ; $5b07: $df
	ld [bc], a                                       ; $5b08: $02
	rst $38                                          ; $5b09: $ff
	adc b                                            ; $5b0a: $88
	rlca                                             ; $5b0b: $07
	ld e, l                                          ; $5b0c: $5d
	cp [hl]                                          ; $5b0d: $be
	ld h, l                                          ; $5b0e: $65
	ld [hl], h                                       ; $5b0f: $74
	ld a, l                                          ; $5b10: $7d
	halt                                             ; $5b11: $76
	ld a, [hl]                                       ; $5b12: $7e
	db $fc                                           ; $5b13: $fc
	ld a, a                                          ; $5b14: $7f
	ret nc                                           ; $5b15: $d0

	sbc l                                            ; $5b16: $9d
	sub b                                            ; $5b17: $90
	ldh [$66], a                                     ; $5b18: $e0 $66
	ld h, h                                          ; $5b1a: $64
	ld a, b                                          ; $5b1b: $78
	and d                                            ; $5b1c: $a2
	rst SubAFromDE                                          ; $5b1d: $df
	ld b, $df                                        ; $5b1e: $06 $df
	ld c, $7e                                        ; $5b20: $0e $7e
	ld b, b                                          ; $5b22: $40
	ld h, c                                          ; $5b23: $61
	ld e, [hl]                                       ; $5b24: $5e
	sub h                                            ; $5b25: $94
	inc c                                            ; $5b26: $0c
	nop                                              ; $5b27: $00
	ld c, $0f                                        ; $5b28: $0e $0f
	db $ed                                           ; $5b2a: $ed
	ld e, $f4                                        ; $5b2b: $1e $f4
	ld a, b                                          ; $5b2d: $78
	inc e                                            ; $5b2e: $1c
	ld a, $04                                        ; $5b2f: $3e $04
	ld hl, sp+$7f                                    ; $5b31: $f8 $7f

jr_05e_5b33:
	call z, Call_05e_7ff9                            ; $5b33: $cc $f9 $7f
	ret z                                            ; $5b36: $c8

	ld a, e                                          ; $5b37: $7b
	cp $7f                                           ; $5b38: $fe $7f
	dec [hl]                                         ; $5b3a: $35
	sbc c                                            ; $5b3b: $99
	ld bc, $7f7f                                     ; $5b3c: $01 $7f $7f
	pop bc                                           ; $5b3f: $c1
	ld a, a                                          ; $5b40: $7f
	ld b, b                                          ; $5b41: $40
	ld a, c                                          ; $5b42: $79
	ldh [c], a                                       ; $5b43: $e2
	sbc [hl]                                         ; $5b44: $9e
	add b                                            ; $5b45: $80
	ld [hl], e                                       ; $5b46: $73
	cp $7f                                           ; $5b47: $fe $7f
	ld a, [de]                                       ; $5b49: $1a
	sbc l                                            ; $5b4a: $9d
	rst FarCall                                          ; $5b4b: $f7
	ei                                               ; $5b4c: $fb
	ld a, b                                          ; $5b4d: $78
	sbc [hl]                                         ; $5b4e: $9e
	sub b                                            ; $5b4f: $90
	rst AddAOntoHL                                          ; $5b50: $ef
	dec bc                                           ; $5b51: $0b
	rst FarCall                                          ; $5b52: $f7
	rla                                              ; $5b53: $17
	db $eb                                           ; $5b54: $eb

jr_05e_5b55:
	rrca                                             ; $5b55: $0f
	rst FarCall                                          ; $5b56: $f7
	rla                                              ; $5b57: $17
	rst AddAOntoHL                                          ; $5b58: $ef
	rrca                                             ; $5b59: $0f
	rst FarCall                                          ; $5b5a: $f7
	ldh a, [$f8]                                     ; $5b5b: $f0 $f8
	ldh a, [$f8]                                     ; $5b5d: $f0 $f8
	ld a, e                                          ; $5b5f: $7b
	db $fd                                           ; $5b60: $fd
	sbc $f0                                          ; $5b61: $de $f0
	ld a, e                                          ; $5b63: $7b
	ld h, c                                          ; $5b64: $61
	ld a, e                                          ; $5b65: $7b
	cp $f7                                           ; $5b66: $fe $f7
	sbc d                                            ; $5b68: $9a
	rra                                              ; $5b69: $1f
	rrca                                             ; $5b6a: $0f
	ld sp, $301e                                     ; $5b6b: $31 $1e $30
	ld a, d                                          ; $5b6e: $7a
	cp $61                                           ; $5b6f: $fe $61
	scf                                              ; $5b71: $37
	halt                                             ; $5b72: $76
	db $e3                                           ; $5b73: $e3
	ld d, l                                          ; $5b74: $55
	rla                                              ; $5b75: $17
	ld c, e                                          ; $5b76: $4b
	ldh a, [$9e]                                     ; $5b77: $f0 $9e
	cp $53                                           ; $5b79: $fe $53
	ldh a, [$7f]                                     ; $5b7b: $f0 $7f
	ld b, [hl]                                       ; $5b7d: $46
	ld a, e                                          ; $5b7e: $7b
	ldh a, [$9c]                                     ; $5b7f: $f0 $9c
	rst $38                                          ; $5b81: $ff
	ld d, l                                          ; $5b82: $55
	rst $38                                          ; $5b83: $ff
	ld e, h                                          ; $5b84: $5c
	ret nz                                           ; $5b85: $c0

	ld a, a                                          ; $5b86: $7f
	inc bc                                           ; $5b87: $03
	sbc [hl]                                         ; $5b88: $9e

jr_05e_5b89:
	rst $38                                          ; $5b89: $ff
	ld c, a                                          ; $5b8a: $4f
	db $dd                                           ; $5b8b: $dd
	ld a, c                                          ; $5b8c: $79
	sub d                                            ; $5b8d: $92
	sbc d                                            ; $5b8e: $9a
	rst $38                                          ; $5b8f: $ff
	ld hl, sp+$06                                    ; $5b90: $f8 $06
	rrca                                             ; $5b92: $0f
	inc b                                            ; $5b93: $04
	ld e, h                                          ; $5b94: $5c
	call nc, Call_05e_407b                           ; $5b95: $d4 $7b $40
	sbc b                                            ; $5b98: $98
	add hl, de                                       ; $5b99: $19
	ccf                                              ; $5b9a: $3f
	ldh a, [$f8]                                     ; $5b9b: $f0 $f8
	ldh [$f0], a                                     ; $5b9d: $e0 $f0
	ld h, b                                          ; $5b9f: $60
	ld e, b                                          ; $5ba0: $58
	ld l, d                                          ; $5ba1: $6a
	di                                               ; $5ba2: $f3
	sbc e                                            ; $5ba3: $9b
	sbc h                                            ; $5ba4: $9c
	ld h, b                                          ; $5ba5: $60
	add hl, de                                       ; $5ba6: $19
	rlca                                             ; $5ba7: $07
	ld a, e                                          ; $5ba8: $7b
	jr z, jr_05e_5b89                                ; $5ba9: $28 $de

	rrca                                             ; $5bab: $0f
	ld a, [hl]                                       ; $5bac: $7e
	rst AddAOntoHL                                          ; $5bad: $ef
	db $fd                                           ; $5bae: $fd
	sbc c                                            ; $5baf: $99
	ldh a, [c]                                       ; $5bb0: $f2
	db $fc                                           ; $5bb1: $fc
	ret nc                                           ; $5bb2: $d0

	db $e3                                           ; $5bb3: $e3
	di                                               ; $5bb4: $f3
	rst GetHLinHL                                          ; $5bb5: $cf
	ld a, b                                          ; $5bb6: $78
	jr z, jr_05e_5c1c                                ; $5bb7: $28 $63

	ld b, $7f                                        ; $5bb9: $06 $7f
	rst FarCall                                          ; $5bbb: $f7
	ld a, a                                          ; $5bbc: $7f
	ldh a, [c]                                       ; $5bbd: $f2
	sbc [hl]                                         ; $5bbe: $9e
	add c                                            ; $5bbf: $81
	ld l, l                                          ; $5bc0: $6d
	ld [hl], e                                       ; $5bc1: $73
	ld [hl], h                                       ; $5bc2: $74
	inc a                                            ; $5bc3: $3c
	add b                                            ; $5bc4: $80
	inc e                                            ; $5bc5: $1c
	dec a                                            ; $5bc6: $3d
	ld a, $76                                        ; $5bc7: $3e $76
	ld a, a                                          ; $5bc9: $7f
	cp d                                             ; $5bca: $ba
	pop af                                           ; $5bcb: $f1
	and c                                            ; $5bcc: $a1
	ld [hl], e                                       ; $5bcd: $73
	ld h, e                                          ; $5bce: $63
	ld [hl], b                                       ; $5bcf: $70
	ld h, b                                          ; $5bd0: $60
	pop hl                                           ; $5bd1: $e1
	rst JumpTable                                          ; $5bd2: $c7
	rst AddAOntoHL                                          ; $5bd3: $ef
	jr nz, @+$81                                     ; $5bd4: $20 $7f

	ld [hl], d                                       ; $5bd6: $72
	db $e3                                           ; $5bd7: $e3
	ld b, a                                          ; $5bd8: $47
	pop hl                                           ; $5bd9: $e1
	xor l                                            ; $5bda: $ad
	rst GetHLinHL                                          ; $5bdb: $cf
	ld e, [hl]                                       ; $5bdc: $5e
	db $fc                                           ; $5bdd: $fc
	ld [hl], b                                       ; $5bde: $70
	ld a, b                                          ; $5bdf: $78
	ldh a, [$f0]                                     ; $5be0: $f0 $f0
	ld a, h                                          ; $5be2: $7c
	cp b                                             ; $5be3: $b8
	ld a, [hl]                                       ; $5be4: $7e
	ld h, [hl]                                       ; $5be5: $66
	ld a, a                                          ; $5be6: $7f
	ret nc                                           ; $5be7: $d0

	ld a, c                                          ; $5be8: $79
	sub d                                            ; $5be9: $92
	ld e, [hl]                                       ; $5bea: $5e
	ret z                                            ; $5beb: $c8

	sbc $03                                          ; $5bec: $de $03
	sub e                                            ; $5bee: $93
	ld [bc], a                                       ; $5bef: $02
	inc bc                                           ; $5bf0: $03
	ld [bc], a                                       ; $5bf1: $02
	rlca                                             ; $5bf2: $07
	ld b, $07                                        ; $5bf3: $06 $07
	inc b                                            ; $5bf5: $04
	rlca                                             ; $5bf6: $07
	rrca                                             ; $5bf7: $0f
	rlca                                             ; $5bf8: $07
	rlca                                             ; $5bf9: $07
	rrca                                             ; $5bfa: $0f
	ld h, h                                          ; $5bfb: $64
	ld b, b                                          ; $5bfc: $40
	ld [hl], b                                       ; $5bfd: $70
	inc a                                            ; $5bfe: $3c
	ld a, e                                          ; $5bff: $7b
	ccf                                              ; $5c00: $3f
	ld a, [hl]                                       ; $5c01: $7e
	call nz, $2f9d                                   ; $5c02: $c4 $9d $2f
	rst SubAFromDE                                          ; $5c05: $df
	ld [hl], a                                       ; $5c06: $77
	db $fc                                           ; $5c07: $fc
	sbc h                                            ; $5c08: $9c
	ld e, a                                          ; $5c09: $5f
	cp a                                             ; $5c0a: $bf
	ccf                                              ; $5c0b: $3f
	ld a, e                                          ; $5c0c: $7b
	db $fc                                           ; $5c0d: $fc
	sbc h                                            ; $5c0e: $9c
	cp a                                             ; $5c0f: $bf
	ld e, a                                          ; $5c10: $5f
	ldh a, [$dc]                                     ; $5c11: $f0 $dc
	ldh [$7d], a                                     ; $5c13: $e0 $7d
	db $ec                                           ; $5c15: $ec
	ld a, b                                          ; $5c16: $78
	or c                                             ; $5c17: $b1
	ld [hl], a                                       ; $5c18: $77
	ei                                               ; $5c19: $fb
	adc [hl]                                         ; $5c1a: $8e
	ret nz                                           ; $5c1b: $c0

jr_05e_5c1c:
	jr jr_05e_5c4e                                   ; $5c1c: $18 $30

	jr @+$32                                         ; $5c1e: $18 $30

	db $10                                           ; $5c20: $10
	jr nc, @+$23                                     ; $5c21: $30 $21

	ld sp, $3121                                     ; $5c23: $31 $21 $31
	ld h, e                                          ; $5c26: $63
	ld sp, $3361                                     ; $5c27: $31 $61 $33
	ld [hl], c                                       ; $5c2a: $71
	inc hl                                           ; $5c2b: $23
	db $fd                                           ; $5c2c: $fd
	sbc b                                            ; $5c2d: $98
	add e                                            ; $5c2e: $83
	nop                                              ; $5c2f: $00
	add $8f                                          ; $5c30: $c6 $8f
	adc $9c                                          ; $5c32: $ce $9c
	cp b                                             ; $5c34: $b8
	halt                                             ; $5c35: $76
	sbc e                                            ; $5c36: $9b
	sbc [hl]                                         ; $5c37: $9e
	ld hl, sp-$05                                    ; $5c38: $f8 $fb
	rst SubAFromDE                                          ; $5c3a: $df
	ld sp, $719e                                     ; $5c3b: $31 $9e $71
	ld a, e                                          ; $5c3e: $7b
	cp $7f                                           ; $5c3f: $fe $7f
	pop hl                                           ; $5c41: $e1
	ld a, a                                          ; $5c42: $7f
	cp $fd                                           ; $5c43: $fe $fd
	sub d                                            ; $5c45: $92
	jr nc, jr_05e_5c48                               ; $5c46: $30 $00

jr_05e_5c48:
	ld a, [$8efc]                                    ; $5c48: $fa $fc $8e
	cp $86                                           ; $5c4b: $fe $86
	adc [hl]                                         ; $5c4d: $8e

jr_05e_5c4e:
	adc h                                            ; $5c4e: $8c
	cp $f8                                           ; $5c4f: $fe $f8
	db $fc                                           ; $5c51: $fc
	xor d                                            ; $5c52: $aa
	ld a, d                                          ; $5c53: $7a
	call z, $c676                                    ; $5c54: $cc $76 $c6
	sbc [hl]                                         ; $5c57: $9e
	xor a                                            ; $5c58: $af
	ld a, e                                          ; $5c59: $7b
	ld hl, sp+$77                                    ; $5c5a: $f8 $77
	db $f4                                           ; $5c5c: $f4
	ld l, a                                          ; $5c5d: $6f
	ld hl, sp-$23                                    ; $5c5e: $f8 $dd
	rst $38                                          ; $5c60: $ff
	sbc [hl]                                         ; $5c61: $9e
	ld d, a                                          ; $5c62: $57
	ld [hl], e                                       ; $5c63: $73
	ldh a, [$df]                                     ; $5c64: $f0 $df
	rst $38                                          ; $5c66: $ff
	sbc [hl]                                         ; $5c67: $9e
	ld e, a                                          ; $5c68: $5f
	ld [hl], e                                       ; $5c69: $73
	ld hl, sp-$62                                    ; $5c6a: $f8 $9e
	ld a, [$dc6b]                                    ; $5c6c: $fa $6b $dc
	sbc [hl]                                         ; $5c6f: $9e
	ldh [$63], a                                     ; $5c70: $e0 $63
	call nc, $f59e                                   ; $5c72: $d4 $9e $f5
	ld [hl], e                                       ; $5c75: $73
	db $e4                                           ; $5c76: $e4
	rst $38                                          ; $5c77: $ff
	sbc d                                            ; $5c78: $9a
	db $e4                                           ; $5c79: $e4
	ld hl, sp-$01                                    ; $5c7a: $f8 $ff
	rst $38                                          ; $5c7c: $ff
	ld a, a                                          ; $5c7d: $7f
	ld [hl], e                                       ; $5c7e: $73
	call c, $c877                                    ; $5c7f: $dc $77 $c8
	db $fd                                           ; $5c82: $fd
	sbc [hl]                                         ; $5c83: $9e
	ret nz                                           ; $5c84: $c0

	ld a, e                                          ; $5c85: $7b
	xor $76                                          ; $5c86: $ee $76
	ld [hl], h                                       ; $5c88: $74
	ld [hl], a                                       ; $5c89: $77
	db $ec                                           ; $5c8a: $ec
	ld a, [$f09e]                                    ; $5c8b: $fa $9e $f0
	ld [hl], a                                       ; $5c8e: $77
	call c, $ab9e                                    ; $5c8f: $dc $9e $ab
	ld e, a                                          ; $5c92: $5f
	ldh a, [$7b]                                     ; $5c93: $f0 $7b
	db $db                                           ; $5c95: $db
	ld [hl], a                                       ; $5c96: $77
	adc d                                            ; $5c97: $8a
	ld a, a                                          ; $5c98: $7f
	sbc h                                            ; $5c99: $9c
	rst FarCall                                          ; $5c9a: $f7
	ld a, [hl]                                       ; $5c9b: $7e
	add a                                            ; $5c9c: $87
	ld a, [hl]                                       ; $5c9d: $7e
	ld h, d                                          ; $5c9e: $62
	rst SubAFromDE                                          ; $5c9f: $df
	rst $38                                          ; $5ca0: $ff
	sbc [hl]                                         ; $5ca1: $9e
	ld e, $f6                                        ; $5ca2: $1e $f6
	ld a, [hl]                                       ; $5ca4: $7e
	ld a, $99                                        ; $5ca5: $3e $99
	di                                               ; $5ca7: $f3
	db $fc                                           ; $5ca8: $fc
	dec e                                            ; $5ca9: $1d
	ld e, $0a                                        ; $5caa: $1e $0a
	inc c                                            ; $5cac: $0c
	ld d, [hl]                                       ; $5cad: $56
	ld a, $f1                                        ; $5cae: $3e $f1
	sbc d                                            ; $5cb0: $9a
	inc c                                            ; $5cb1: $0c
	rrca                                             ; $5cb2: $0f
	jr jr_05e_5cc4                                   ; $5cb3: $18 $0f

	jr jr_05e_5d17                                   ; $5cb5: $18 $60

	ld c, h                                          ; $5cb7: $4c
	sbc h                                            ; $5cb8: $9c
	jr nc, jr_05e_5d3a                               ; $5cb9: $30 $7f

	ccf                                              ; $5cbb: $3f
	ld e, d                                          ; $5cbc: $5a
	ret nz                                           ; $5cbd: $c0

	ld a, h                                          ; $5cbe: $7c
	ld c, b                                          ; $5cbf: $48
	ld l, h                                          ; $5cc0: $6c
	sbc d                                            ; $5cc1: $9a
	sbc e                                            ; $5cc2: $9b
	ld a, a                                          ; $5cc3: $7f

jr_05e_5cc4:
	cp a                                             ; $5cc4: $bf
	cp a                                             ; $5cc5: $bf
	ld a, a                                          ; $5cc6: $7f
	ld [hl], e                                       ; $5cc7: $73
	db $fc                                           ; $5cc8: $fc
	ld a, e                                          ; $5cc9: $7b
	push af                                          ; $5cca: $f5
	ld a, d                                          ; $5ccb: $7a
	add b                                            ; $5ccc: $80
	ld l, e                                          ; $5ccd: $6b
	cp $77                                           ; $5cce: $fe $77
	ei                                               ; $5cd0: $fb
	ld a, a                                          ; $5cd1: $7f
	xor a                                            ; $5cd2: $af
	sbc h                                            ; $5cd3: $9c
	ld d, e                                          ; $5cd4: $53
	ld h, e                                          ; $5cd5: $63
	ld b, e                                          ; $5cd6: $43
	ld a, e                                          ; $5cd7: $7b
	cp $83                                           ; $5cd8: $fe $83
	ld b, c                                          ; $5cda: $41
	ld h, e                                          ; $5cdb: $63
	ld h, b                                          ; $5cdc: $60
	ld b, b                                          ; $5cdd: $40
	and $44                                          ; $5cde: $e6 $44
	ld h, h                                          ; $5ce0: $64
	add $64                                          ; $5ce1: $c6 $64
	add $fc                                          ; $5ce3: $c6 $fc
	cp b                                             ; $5ce5: $b8
	inc e                                            ; $5ce6: $1c
	sbc h                                            ; $5ce7: $9c
	ld c, $9e                                        ; $5ce8: $0e $9e
	add c                                            ; $5cea: $81
	ld c, $00                                        ; $5ceb: $0e $00
	nop                                              ; $5ced: $00
	ld [hl], a                                       ; $5cee: $77
	ld [hl+], a                                      ; $5cef: $22
	ld [hl+], a                                      ; $5cf0: $22
	ld [hl], a                                       ; $5cf1: $77
	ld h, $77                                        ; $5cf2: $26 $77
	ld hl, $7773                                     ; $5cf4: $21 $73 $77
	cp $8e                                           ; $5cf7: $fe $8e
	jr nc, jr_05e_5d5e                               ; $5cf9: $30 $63

	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	inc e                                            ; $5cfd: $1c
	ld a, $3e                                        ; $5cfe: $3e $3e
	ld a, a                                          ; $5d00: $7f
	ld h, e                                          ; $5d01: $63
	ld [hl], a                                       ; $5d02: $77
	xor $9c                                          ; $5d03: $ee $9c
	adc [hl]                                         ; $5d05: $8e
	adc h                                            ; $5d06: $8c
	inc c                                            ; $5d07: $0c
	adc [hl]                                         ; $5d08: $8e
	add d                                            ; $5d09: $82
	ld a, e                                          ; $5d0a: $7b
	ld l, h                                          ; $5d0b: $6c
	sbc c                                            ; $5d0c: $99
	inc sp                                           ; $5d0d: $33
	ld hl, $3321                                     ; $5d0e: $21 $21 $33
	ld hl, $6f33                                     ; $5d11: $21 $33 $6f
	ld [$fc03], sp                                   ; $5d14: $08 $03 $fc

jr_05e_5d17:
	inc hl                                           ; $5d17: $23
	db $fc                                           ; $5d18: $fc
	ld h, [hl]                                       ; $5d19: $66
	ret c                                            ; $5d1a: $d8

	ld h, a                                          ; $5d1b: $67
	db $fc                                           ; $5d1c: $fc
	halt                                             ; $5d1d: $76
	ld [$d876], a                                    ; $5d1e: $ea $76 $d8
	ld e, a                                          ; $5d21: $5f
	db $ec                                           ; $5d22: $ec
	halt                                             ; $5d23: $76
	sbc b                                            ; $5d24: $98
	ld l, [hl]                                       ; $5d25: $6e
	ld [hl], h                                       ; $5d26: $74
	ld h, a                                          ; $5d27: $67
	db $fc                                           ; $5d28: $fc
	sbc [hl]                                         ; $5d29: $9e
	ld [$ffde], a                                    ; $5d2a: $ea $de $ff
	sbc [hl]                                         ; $5d2d: $9e
	cp a                                             ; $5d2e: $bf
	ld d, d                                          ; $5d2f: $52
	ld d, b                                          ; $5d30: $50
	sbc [hl]                                         ; $5d31: $9e
	push de                                          ; $5d32: $d5
	ld a, e                                          ; $5d33: $7b
	ret z                                            ; $5d34: $c8

	ld l, [hl]                                       ; $5d35: $6e
	and b                                            ; $5d36: $a0
	ld h, [hl]                                       ; $5d37: $66
	ld d, b                                          ; $5d38: $50
	ld a, a                                          ; $5d39: $7f

jr_05e_5d3a:
	db $fc                                           ; $5d3a: $fc
	sbc [hl]                                         ; $5d3b: $9e
	db $fd                                           ; $5d3c: $fd
	ld [hl], e                                       ; $5d3d: $73
	ret z                                            ; $5d3e: $c8

	sbc l                                            ; $5d3f: $9d
	ret nz                                           ; $5d40: $c0

	db $fc                                           ; $5d41: $fc
	ld e, a                                          ; $5d42: $5f
	call nc, $c877                                   ; $5d43: $d4 $77 $c8
	ld a, d                                          ; $5d46: $7a
	cp h                                             ; $5d47: $bc
	ld e, d                                          ; $5d48: $5a
	ld d, b                                          ; $5d49: $50
	ld a, a                                          ; $5d4a: $7f
	db $fc                                           ; $5d4b: $fc
	ld a, l                                          ; $5d4c: $7d
	ld h, b                                          ; $5d4d: $60
	sbc h                                            ; $5d4e: $9c
	ldh [$7f], a                                     ; $5d4f: $e0 $7f
	ldh [$7a], a                                     ; $5d51: $e0 $7a
	ld a, [hl+]                                      ; $5d53: $2a
	ld a, l                                          ; $5d54: $7d
	sub h                                            ; $5d55: $94
	sbc [hl]                                         ; $5d56: $9e
	ld d, b                                          ; $5d57: $50
	ld [hl], e                                       ; $5d58: $73
	ldh a, [$7e]                                     ; $5d59: $f0 $7e
	call z, $029d                                    ; $5d5b: $cc $9d $02

jr_05e_5d5e:
	db $fd                                           ; $5d5e: $fd
	ld h, a                                          ; $5d5f: $67
	db $fc                                           ; $5d60: $fc
	sbc e                                            ; $5d61: $9b
	add l                                            ; $5d62: $85
	ld a, [$fd56]                                    ; $5d63: $fa $56 $fd
	halt                                             ; $5d66: $76
	call z, $ffd9                                    ; $5d67: $cc $d9 $ff
	ld a, a                                          ; $5d6a: $7f
	sbc h                                            ; $5d6b: $9c
	ld a, a                                          ; $5d6c: $7f
	cp $7a                                           ; $5d6d: $fe $7a
	ld a, l                                          ; $5d6f: $7d
	ld a, c                                          ; $5d70: $79
	ld b, e                                          ; $5d71: $43
	ld a, a                                          ; $5d72: $7f
	cp $7d                                           ; $5d73: $fe $7d
	ld c, $7f                                        ; $5d75: $0e $7f
	cp $7d                                           ; $5d77: $fe $7d
	dec c                                            ; $5d79: $0d
	rst SubAFromDE                                          ; $5d7a: $df
	ld bc, $8c80                                     ; $5d7b: $01 $80 $8c
	add $87                                          ; $5d7e: $c6 $87
	rst GetHLinHL                                          ; $5d80: $cf
	add a                                            ; $5d81: $87
	rst GetHLinHL                                          ; $5d82: $cf
	add [hl]                                         ; $5d83: $86
	call z, $cc8e                                    ; $5d84: $cc $8e $cc
	call z, $888c                                    ; $5d87: $cc $8c $88
	adc h                                            ; $5d8a: $8c
	nop                                              ; $5d8b: $00
	add b                                            ; $5d8c: $80
	ld [hl], a                                       ; $5d8d: $77
	ld h, [hl]                                       ; $5d8e: $66
	rst FarCall                                          ; $5d8f: $f7
	and $ff                                          ; $5d90: $e6 $ff
	and $5e                                          ; $5d92: $e6 $5e
	and $46                                          ; $5d94: $e6 $46
	xor $46                                          ; $5d96: $ee $46
	xor $24                                          ; $5d98: $ee $24
	adc $00                                          ; $5d9a: $ce $00
	add b                                            ; $5d9c: $80
	nop                                              ; $5d9d: $00
	ld b, c                                          ; $5d9e: $41
	ldh [c], a                                       ; $5d9f: $e2
	adc $e0                                          ; $5da0: $ce $e0
	rst AddAOntoHL                                          ; $5da2: $ef
	rst GetHLinHL                                          ; $5da3: $cf
	db $eb                                           ; $5da4: $eb
	rst JumpTable                                          ; $5da5: $c7
	ld h, e                                          ; $5da6: $63
	rst SubAFromBC                                          ; $5da7: $e7
	cp $7f                                           ; $5da8: $fe $7f
	ld e, c                                          ; $5daa: $59
	ld a, $00                                        ; $5dab: $3e $00
	nop                                              ; $5dad: $00
	ld h, e                                          ; $5dae: $63
	inc sp                                           ; $5daf: $33
	ccf                                              ; $5db0: $3f
	ld a, a                                          ; $5db1: $7f
	ccf                                              ; $5db2: $3f
	ld a, a                                          ; $5db3: $7f
	ld [hl-], a                                      ; $5db4: $32
	ld h, a                                          ; $5db5: $67
	ld [hl], d                                       ; $5db6: $72
	ld h, a                                          ; $5db7: $67
	ld h, d                                          ; $5db8: $62
	ld h, a                                          ; $5db9: $67
	ld b, c                                          ; $5dba: $41
	ld h, [hl]                                       ; $5dbb: $66
	rst $38                                          ; $5dbc: $ff
	ld c, [hl]                                       ; $5dbd: $4e
	nop                                              ; $5dbe: $00
	call c, $9e66                                    ; $5dbf: $dc $66 $9e
	ld [hl], a                                       ; $5dc2: $77
	db $dd                                           ; $5dc3: $dd
	ld d, l                                          ; $5dc4: $55
	rst SubAFromDE                                          ; $5dc5: $df
	ld h, [hl]                                       ; $5dc6: $66
	sbc e                                            ; $5dc7: $9b
	ld h, e                                          ; $5dc8: $63
	inc sp                                           ; $5dc9: $33
	inc sp                                           ; $5dca: $33
	ld [hl], $73                                     ; $5dcb: $36 $73
	or $9e                                           ; $5dcd: $f6 $9e
	ld h, h                                          ; $5dcf: $64
	sbc $44                                          ; $5dd0: $de $44
	sbc l                                            ; $5dd2: $9d
	ld b, e                                          ; $5dd3: $43
	dec [hl]                                         ; $5dd4: $35
	sbc $55                                          ; $5dd5: $de $55
	ld [hl], a                                       ; $5dd7: $77
	rst FarCall                                          ; $5dd8: $f7
	sbc $44                                          ; $5dd9: $de $44
	sbc d                                            ; $5ddb: $9a
	ld [hl], l                                       ; $5ddc: $75
	ld d, l                                          ; $5ddd: $55
	ld d, l                                          ; $5dde: $55
	ld b, h                                          ; $5ddf: $44
	inc [hl]                                         ; $5de0: $34
	call c, $df44                                    ; $5de1: $dc $44 $df
	ld [hl], a                                       ; $5de4: $77
	sbc l                                            ; $5de5: $9d
	ld [hl], l                                       ; $5de6: $75
	ld b, e                                          ; $5de7: $43
	db $dd                                           ; $5de8: $dd
	inc sp                                           ; $5de9: $33
	rst SubAFromDE                                          ; $5dea: $df
	ld b, h                                          ; $5deb: $44
	sbc h                                            ; $5dec: $9c
	ld b, a                                          ; $5ded: $47
	ld [hl], a                                       ; $5dee: $77
	ld [hl], l                                       ; $5def: $75
	db $db                                           ; $5df0: $db
	inc sp                                           ; $5df1: $33
	sbc e                                            ; $5df2: $9b
	inc [hl]                                         ; $5df3: $34
	ld b, [hl]                                       ; $5df4: $46
	ld h, [hl]                                       ; $5df5: $66
	ld d, l                                          ; $5df6: $55
	ld l, e                                          ; $5df7: $6b
	or $9c                                           ; $5df8: $f6 $9c
	ld b, h                                          ; $5dfa: $44
	inc sp                                           ; $5dfb: $33
	inc sp                                           ; $5dfc: $33
	ld [hl], e                                       ; $5dfd: $73
	ldh [c], a                                       ; $5dfe: $e2
	ld a, e                                          ; $5dff: $7b
	pop hl                                           ; $5e00: $e1
	ld [hl], a                                       ; $5e01: $77
	db $fc                                           ; $5e02: $fc
	ld a, e                                          ; $5e03: $7b
	cp e                                             ; $5e04: $bb
	ld h, e                                          ; $5e05: $63
	or $73                                           ; $5e06: $f6 $73
	di                                               ; $5e08: $f3
	sbc [hl]                                         ; $5e09: $9e
	inc sp                                           ; $5e0a: $33
	cp b                                             ; $5e0b: $b8
	adc b                                            ; $5e0c: $88
	pop hl                                           ; $5e0d: $e1
	reti                                             ; $5e0e: $d9


jr_05e_5e0f:
	ld d, b                                          ; $5e0f: $50
	reti                                             ; $5e10: $d9


	ld e, b                                          ; $5e11: $58
	add b                                            ; $5e12: $80
	rlca                                             ; $5e13: $07
	dec b                                            ; $5e14: $05
	inc b                                            ; $5e15: $04
	add hl, bc                                       ; $5e16: $09
	add hl, bc                                       ; $5e17: $09
	dec c                                            ; $5e18: $0d
	inc c                                            ; $5e19: $0c
	jr jr_05e_5e22                                   ; $5e1a: $18 $06

	ld b, $07                                        ; $5e1c: $06 $07
	rrca                                             ; $5e1e: $0f
	rrca                                             ; $5e1f: $0f
	dec bc                                           ; $5e20: $0b
	dec bc                                           ; $5e21: $0b

jr_05e_5e22:
	rla                                              ; $5e22: $17
	ld e, c                                          ; $5e23: $59
	xor e                                            ; $5e24: $ab
	xor e                                            ; $5e25: $ab
	ld [hl], e                                       ; $5e26: $73
	ld d, [hl]                                       ; $5e27: $56
	ld d, [hl]                                       ; $5e28: $56
	inc h                                            ; $5e29: $24
	inc h                                            ; $5e2a: $24
	xor $dc                                          ; $5e2b: $ee $dc
	call c, $b99c                                    ; $5e2d: $dc $9c $b9
	cp c                                             ; $5e30: $b9
	ei                                               ; $5e31: $fb
	sub h                                            ; $5e32: $94
	ei                                               ; $5e33: $fb
	ld e, d                                          ; $5e34: $5a
	ld e, d                                          ; $5e35: $5a
	ld a, [$b9b8]                                    ; $5e36: $fa $b8 $b9
	cp c                                             ; $5e39: $b9
	or c                                             ; $5e3a: $b1
	sub c                                            ; $5e3b: $91
	rst SubAFromBC                                          ; $5e3c: $e7
	rst SubAFromBC                                          ; $5e3d: $e7
	db $dd                                           ; $5e3e: $dd
	rst JumpTable                                          ; $5e3f: $c7
	add b                                            ; $5e40: $80
	rst GetHLinHL                                          ; $5e41: $cf
	rst AddAOntoHL                                          ; $5e42: $ef
	xor l                                            ; $5e43: $ad
	xor l                                            ; $5e44: $ad
	xor a                                            ; $5e45: $af
	sbc $d6                                          ; $5e46: $de $d6
	sub $d7                                          ; $5e48: $d6 $d7
	ld c, e                                          ; $5e4a: $4b
	ld [hl], e                                       ; $5e4b: $73
	ld [hl], e                                       ; $5e4c: $73
	ld [hl], c                                       ; $5e4d: $71
	ld sp, $3939                                     ; $5e4e: $31 $39 $39
	jr c, jr_05e_5e0f                                ; $5e51: $38 $bc

	ld e, d                                          ; $5e53: $5a
	ld e, c                                          ; $5e54: $59
	ld l, l                                          ; $5e55: $6d
	db $ed                                           ; $5e56: $ed
	xor l                                            ; $5e57: $ad
	xor h                                            ; $5e58: $ac
	adc b                                            ; $5e59: $88
	ld c, b                                          ; $5e5a: $48
	or a                                             ; $5e5b: $b7
	or a                                             ; $5e5c: $b7

jr_05e_5e5d:
	sbc e                                            ; $5e5d: $9b
	sbc e                                            ; $5e5e: $9b
	db $db                                           ; $5e5f: $db
	add b                                            ; $5e60: $80
	db $db                                           ; $5e61: $db
	rst $38                                          ; $5e62: $ff
	rst $38                                          ; $5e63: $ff
	dec hl                                           ; $5e64: $2b
	rst SubAFromDE                                          ; $5e65: $df
	ld d, c                                          ; $5e66: $51
	ld c, h                                          ; $5e67: $4c

jr_05e_5e68:
	inc hl                                           ; $5e68: $23
	db $ed                                           ; $5e69: $ed
	db $eb                                           ; $5e6a: $eb
	xor $c6                                          ; $5e6b: $ee $c6
	rrca                                             ; $5e6d: $0f
	and b                                            ; $5e6e: $a0
	di                                               ; $5e6f: $f3
	db $fc                                           ; $5e70: $fc
	cp [hl]                                          ; $5e71: $be
	or a                                             ; $5e72: $b7
	or c                                             ; $5e73: $b1
	rst $38                                          ; $5e74: $ff
	rst $38                                          ; $5e75: $ff
	ld a, a                                          ; $5e76: $7f
	ld e, a                                          ; $5e77: $5f
	rst AddAOntoHL                                          ; $5e78: $ef
	ld [hl], a                                       ; $5e79: $77
	cp a                                             ; $5e7a: $bf
	rst SubAFromDE                                          ; $5e7b: $df
	nop                                              ; $5e7c: $00
	add b                                            ; $5e7d: $80
	ldh [$30], a                                     ; $5e7e: $e0 $30
	sbc e                                            ; $5e80: $9b
	ret c                                            ; $5e81: $d8

	ld l, $18                                        ; $5e82: $2e $18
	sub b                                            ; $5e84: $90
	reti                                             ; $5e85: $d9


	cp $f9                                           ; $5e86: $fe $f9
	reti                                             ; $5e88: $d9


	jr nz, jr_05e_5e68                               ; $5e89: $20 $dd

	db $fc                                           ; $5e8b: $fc
	sbc [hl]                                         ; $5e8c: $9e
	db $fd                                           ; $5e8d: $fd
	ld a, e                                          ; $5e8e: $7b
	cp $f8                                           ; $5e8f: $fe $f8
	sbc e                                            ; $5e91: $9b
	rst $38                                          ; $5e92: $ff
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	ccf                                              ; $5e95: $3f
	ld a, e                                          ; $5e96: $7b
	cp $d9                                           ; $5e97: $fe $d9
	ld [$0f9c], sp                                   ; $5e99: $08 $9c $0f
	rst GetHLinHL                                          ; $5e9c: $cf
	rrca                                             ; $5e9d: $0f
	ld a, e                                          ; $5e9e: $7b
	db $fd                                           ; $5e9f: $fd
	ld a, a                                          ; $5ea0: $7f
	cp $63                                           ; $5ea1: $fe $63
	pop hl                                           ; $5ea3: $e1
	jp c, Jump_05e_47ff                              ; $5ea4: $da $ff $47

	ldh a, [$d9]                                     ; $5ea7: $f0 $d9
	sub b                                            ; $5ea9: $90
	reti                                             ; $5eaa: $d9


	cp a                                             ; $5eab: $bf
	rlca                                             ; $5eac: $07
	ret nc                                           ; $5ead: $d0

	daa                                              ; $5eae: $27
	ldh a, [rSC]                                     ; $5eaf: $f0 $02
	ret nz                                           ; $5eb1: $c0

	jp c, $de58                                      ; $5eb2: $da $58 $de

	ld a, [de]                                       ; $5eb5: $1a
	rst SubAFromDE                                          ; $5eb6: $df
	daa                                              ; $5eb7: $27
	sbc h                                            ; $5eb8: $9c
	dec h                                            ; $5eb9: $25
	ld h, l                                          ; $5eba: $65
	ld h, l                                          ; $5ebb: $65
	sbc $17                                          ; $5ebc: $de $17
	rst SubAFromDE                                          ; $5ebe: $df
	jr nc, jr_05e_5e5d                               ; $5ebf: $30 $9c

	jr nz, @+$6a                                     ; $5ec1: $20 $68

	ld c, b                                          ; $5ec3: $48
	sbc $a0                                          ; $5ec4: $de $a0
	rst SubAFromDE                                          ; $5ec6: $df
	and c                                            ; $5ec7: $a1
	adc b                                            ; $5ec8: $88
	xor c                                            ; $5ec9: $a9
	ld l, c                                          ; $5eca: $69
	ld l, c                                          ; $5ecb: $69
	ld a, a                                          ; $5ecc: $7f
	ld a, a                                          ; $5ecd: $7f
	ld e, a                                          ; $5ece: $5f
	ld e, [hl]                                       ; $5ecf: $5e
	ld e, [hl]                                       ; $5ed0: $5e
	ld d, [hl]                                       ; $5ed1: $56
	sub [hl]                                         ; $5ed2: $96
	sub [hl]                                         ; $5ed3: $96
	add c                                            ; $5ed4: $81
	add c                                            ; $5ed5: $81
	add hl, bc                                       ; $5ed6: $09
	ld c, c                                          ; $5ed7: $49
	ld e, l                                          ; $5ed8: $5d
	ld e, l                                          ; $5ed9: $5d
	dec e                                            ; $5eda: $1d
	sbc l                                            ; $5edb: $9d
	rst $38                                          ; $5edc: $ff
	rst $38                                          ; $5edd: $ff
	rst FarCall                                          ; $5ede: $f7
	or a                                             ; $5edf: $b7
	sbc $a3                                          ; $5ee0: $de $a3
	sbc l                                            ; $5ee2: $9d
	inc hl                                           ; $5ee3: $23
	dec bc                                           ; $5ee4: $0b
	db $dd                                           ; $5ee5: $dd
	ld [$0a9b], sp                                   ; $5ee6: $08 $9b $0a
	ld a, [hl+]                                      ; $5ee9: $2a
	ld a, [hl+]                                      ; $5eea: $2a
	db $fc                                           ; $5eeb: $fc
	db $dd                                           ; $5eec: $dd
	rst $38                                          ; $5eed: $ff
	sbc b                                            ; $5eee: $98
	db $fd                                           ; $5eef: $fd
	db $dd                                           ; $5ef0: $dd
	db $dd                                           ; $5ef1: $dd
	ld c, h                                          ; $5ef2: $4c
	ld b, h                                          ; $5ef3: $44
	ld h, h                                          ; $5ef4: $64
	ld h, h                                          ; $5ef5: $64
	db $dd                                           ; $5ef6: $dd
	ld l, h                                          ; $5ef7: $6c
	rst SubAFromDE                                          ; $5ef8: $df
	ei                                               ; $5ef9: $fb
	db $db                                           ; $5efa: $db
	db $db                                           ; $5efb: $db
	add b                                            ; $5efc: $80
	db $ec                                           ; $5efd: $ec
	xor d                                            ; $5efe: $aa
	cp [hl]                                          ; $5eff: $be
	or l                                             ; $5f00: $b5
	or [hl]                                          ; $5f01: $b6
	rst JumpTable                                          ; $5f02: $c7
	push hl                                          ; $5f03: $e5
	sbc [hl]                                         ; $5f04: $9e
	cp b                                             ; $5f05: $b8
	db $fc                                           ; $5f06: $fc
	db $ec                                           ; $5f07: $ec
	xor $ef                                          ; $5f08: $ee $ef
	rst AddAOntoHL                                          ; $5f0a: $ef
	rst GetHLinHL                                          ; $5f0b: $cf
	call $ef5f                                       ; $5f0c: $cd $5f $ef
	scf                                              ; $5f0f: $37
	ld a, a                                          ; $5f10: $7f
	ccf                                              ; $5f11: $3f
	cp a                                             ; $5f12: $bf
	ld a, a                                          ; $5f13: $7f
	cp a                                             ; $5f14: $bf
	ret z                                            ; $5f15: $c8

	ld c, b                                          ; $5f16: $48
	ld l, h                                          ; $5f17: $6c
	inc [hl]                                         ; $5f18: $34
	inc l                                            ; $5f19: $2c
	inc h                                            ; $5f1a: $24
	sub b                                            ; $5f1b: $90
	sbc [hl]                                         ; $5f1c: $9e
	ret nc                                           ; $5f1d: $d0

jr_05e_5f1e:
	ld [hl-], a                                      ; $5f1e: $32
	ret nz                                           ; $5f1f: $c0

	sbc h                                            ; $5f20: $9c
	inc hl                                           ; $5f21: $23
	jr nz, jr_05e_5f44                               ; $5f22: $20 $20

	halt                                             ; $5f24: $76
	call nz, $ac77                                   ; $5f25: $c4 $77 $ac
	ld h, [hl]                                       ; $5f28: $66
	call nz, $fd7f                                   ; $5f29: $c4 $7f $fd
	ld [hl], a                                       ; $5f2c: $77
	ei                                               ; $5f2d: $fb
	rst SubAFromDE                                          ; $5f2e: $df
	rst $38                                          ; $5f2f: $ff
	call c, $9c08                                    ; $5f30: $dc $08 $9c
	ld hl, sp+$00                                    ; $5f33: $f8 $00
	nop                                              ; $5f35: $00
	halt                                             ; $5f36: $76
	call nz, $0f9e                                   ; $5f37: $c4 $9e $0f
	ld d, e                                          ; $5f3a: $53
	db $10                                           ; $5f3b: $10
	sub a                                            ; $5f3c: $97
	add b                                            ; $5f3d: $80
	cp a                                             ; $5f3e: $bf
	add b                                            ; $5f3f: $80
	sbc a                                            ; $5f40: $9f
	add b                                            ; $5f41: $80
	adc a                                            ; $5f42: $8f
	nop                                              ; $5f43: $00

jr_05e_5f44:
	nop                                              ; $5f44: $00
	db $db                                           ; $5f45: $db
	inc b                                            ; $5f46: $04
	rst SubAFromDE                                          ; $5f47: $df
	rst $38                                          ; $5f48: $ff
	sbc c                                            ; $5f49: $99
	rlca                                             ; $5f4a: $07
	rst FarCall                                          ; $5f4b: $f7
	rlca                                             ; $5f4c: $07
	rst SubAFromBC                                          ; $5f4d: $e7
	rlca                                             ; $5f4e: $07
	rst SubAFromBC                                          ; $5f4f: $e7
	ld [bc], a                                       ; $5f50: $02
	ret nz                                           ; $5f51: $c0

	sbc b                                            ; $5f52: $98
	nop                                              ; $5f53: $00
	ld bc, $0603                                     ; $5f54: $01 $03 $06
	inc c                                            ; $5f57: $0c
	dec c                                            ; $5f58: $0d
	add hl, bc                                       ; $5f59: $09
	sbc $ff                                          ; $5f5a: $de $ff
	adc d                                            ; $5f5c: $8a
	cp $fc                                           ; $5f5d: $fe $fc
	db $fc                                           ; $5f5f: $fc
	ld hl, sp-$08                                    ; $5f60: $f8 $f8
	rst $38                                          ; $5f62: $ff
	ld hl, sp-$20                                    ; $5f63: $f8 $e0
	ld b, c                                          ; $5f65: $41
	add [hl]                                         ; $5f66: $86
	sbc l                                            ; $5f67: $9d
	xor e                                            ; $5f68: $ab
	rst SubAFromHL                                          ; $5f69: $d7
	ccf                                              ; $5f6a: $3f
	rst SubAFromBC                                          ; $5f6b: $e7
	sbc a                                            ; $5f6c: $9f
	ld a, $79                                        ; $5f6d: $3e $79
	ld h, d                                          ; $5f6f: $62
	ld b, h                                          ; $5f70: $44
	ld [$c002], sp                                   ; $5f71: $08 $02 $c0
	rst SubAFromDE                                          ; $5f74: $df
	ld d, b                                          ; $5f75: $50
	db $dd                                           ; $5f76: $dd
	or b                                             ; $5f77: $b0
	sbc [hl]                                         ; $5f78: $9e
	ldh a, [$de]                                     ; $5f79: $f0 $de
	ld e, b                                          ; $5f7b: $58
	sbc [hl]                                         ; $5f7c: $9e
	ld hl, sp-$22                                    ; $5f7d: $f8 $de
	jr c, jr_05e_5f1e                                ; $5f7f: $38 $9d

	ld a, b                                          ; $5f81: $78
	ld h, h                                          ; $5f82: $64
	call c, $df60                                    ; $5f83: $dc $60 $df
	jr nz, @-$22                                     ; $5f86: $20 $dc

	ld c, b                                          ; $5f88: $48
	sub e                                            ; $5f89: $93
	ld l, b                                          ; $5f8a: $68
	jr z, @+$3a                                      ; $5f8b: $28 $38

	add hl, sp                                       ; $5f8d: $39
	cp d                                             ; $5f8e: $ba
	cp d                                             ; $5f8f: $ba
	xor d                                            ; $5f90: $aa
	xor d                                            ; $5f91: $aa
	adc d                                            ; $5f92: $8a
	adc [hl]                                         ; $5f93: $8e
	adc l                                            ; $5f94: $8d
	add [hl]                                         ; $5f95: $86
	db $db                                           ; $5f96: $db
	inc b                                            ; $5f97: $04
	sbc [hl]                                         ; $5f98: $9e
	ld b, $de                                        ; $5f99: $06 $de
	sub a                                            ; $5f9b: $97
	sbc d                                            ; $5f9c: $9a
	inc de                                           ; $5f9d: $13

Call_05e_5f9e:
	inc hl                                           ; $5f9e: $23
	inc hl                                           ; $5f9f: $23
	inc bc                                           ; $5fa0: $03
	rlca                                             ; $5fa1: $07
	db $dd                                           ; $5fa2: $dd
	ld hl, $01dd                                     ; $5fa3: $21 $dd $01
	adc b                                            ; $5fa6: $88
	ld a, e                                          ; $5fa7: $7b
	ld e, l                                          ; $5fa8: $5d
	db $dd                                           ; $5fa9: $dd
	db $dd                                           ; $5faa: $dd
	call $8ccd                                       ; $5fab: $cd $cd $8c
	sbc b                                            ; $5fae: $98
	adc h                                            ; $5faf: $8c
	adc b                                            ; $5fb0: $88
	ld [$1808], sp                                   ; $5fb1: $08 $08 $18
	jr jr_05e_5fcf                                   ; $5fb4: $18 $19

	add hl, de                                       ; $5fb6: $19
	ld c, h                                          ; $5fb7: $4c
	ld c, h                                          ; $5fb8: $4c
	ld c, l                                          ; $5fb9: $4d
	ld l, l                                          ; $5fba: $6d
	ld l, l                                          ; $5fbb: $6d
	ld c, l                                          ; $5fbc: $4d
	ret                                              ; $5fbd: $c9


	db $db                                           ; $5fbe: $db
	db $db                                           ; $5fbf: $db
	add b                                            ; $5fc0: $80
	ei                                               ; $5fc1: $fb
	cp a                                             ; $5fc2: $bf
	or a                                             ; $5fc3: $b7
	sbc $b6                                          ; $5fc4: $de $b6
	sub $a9                                          ; $5fc6: $d6 $a9
	ld e, l                                          ; $5fc8: $5d
	or l                                             ; $5fc9: $b5
	ld e, l                                          ; $5fca: $5d
	cp a                                             ; $5fcb: $bf
	adc l                                            ; $5fcc: $8d
	sbc l                                            ; $5fcd: $9d
	cp l                                             ; $5fce: $bd

jr_05e_5fcf:
	rst $38                                          ; $5fcf: $ff
	db $eb                                           ; $5fd0: $eb
	rst SubAFromDE                                          ; $5fd1: $df
	or a                                             ; $5fd2: $b7
	ld l, d                                          ; $5fd3: $6a
	rst SubAFromDE                                          ; $5fd4: $df
	rst $38                                          ; $5fd5: $ff
	cp a                                             ; $5fd6: $bf
	sbc a                                            ; $5fd7: $9f
	ld l, a                                          ; $5fd8: $6f
	or a                                             ; $5fd9: $b7
	db $d3                                           ; $5fda: $d3
	cp c                                             ; $5fdb: $b9
	ldh a, [$b0]                                     ; $5fdc: $f0 $b0

Call_05e_5fde:
	sub b                                            ; $5fde: $90
	add b                                            ; $5fdf: $80
	sbc e                                            ; $5fe0: $9b
	ldh [rSVBK], a                                   ; $5fe1: $e0 $70
	jr nc, jr_05e_5ffd                               ; $5fe3: $30 $18

	jp c, $66fe                                      ; $5fe5: $da $fe $66

	ld hl, sp-$62                                    ; $5fe8: $f8 $9e
	ccf                                              ; $5fea: $3f
	reti                                             ; $5feb: $d9


	jr nz, @+$03                                     ; $5fec: $20 $01

	ldh [rWX], a                                     ; $5fee: $e0 $4b
	ldh a, [$df]                                     ; $5ff0: $f0 $df
	add b                                            ; $5ff2: $80
	sbc c                                            ; $5ff3: $99
	sbc a                                            ; $5ff4: $9f
	xor b                                            ; $5ff5: $a8
	adc b                                            ; $5ff6: $88
	xor e                                            ; $5ff7: $ab
	adc b                                            ; $5ff8: $88
	xor e                                            ; $5ff9: $ab
	reti                                             ; $5ffa: $d9


	inc b                                            ; $5ffb: $04
	rst SubAFromDE                                          ; $5ffc: $df

jr_05e_5ffd:
	rlca                                             ; $5ffd: $07
	sbc c                                            ; $5ffe: $99
	rst FarCall                                          ; $5fff: $f7
	daa                                              ; $6000: $27
	daa                                              ; $6001: $27
	and a                                            ; $6002: $a7
	daa                                              ; $6003: $27
	and a                                            ; $6004: $a7
	sbc $90                                          ; $6005: $de $90
	sbc d                                            ; $6007: $9a
	sbc a                                            ; $6008: $9f
	or e                                             ; $6009: $b3
	rst AddAOntoHL                                          ; $600a: $ef
	cp $cf                                           ; $600b: $fe $cf
	db $dd                                           ; $600d: $dd
	cp a                                             ; $600e: $bf
	sbc e                                            ; $600f: $9b
	or c                                             ; $6010: $b1
	ret nz                                           ; $6011: $c0

	call nz, $fd8c                                   ; $6012: $c4 $8c $fd
	sbc e                                            ; $6015: $9b
	ret nz                                           ; $6016: $c0

	ldh [$60], a                                     ; $6017: $e0 $60
	ld [hl], b                                       ; $6019: $70
	call c, Call_05e_7eff                            ; $601a: $dc $ff $7e
	ld [hl], $9b                                     ; $601d: $36 $9b
	ccf                                              ; $601f: $3f
	dec de                                           ; $6020: $1b
	dec de                                           ; $6021: $1b
	ld a, [de]                                       ; $6022: $1a
	sbc $1e                                          ; $6023: $de $1e
	sbc h                                            ; $6025: $9c
	ld c, $0f                                        ; $6026: $0e $0f
	ld hl, sp-$23                                    ; $6028: $f8 $dd
	ldh a, [$df]                                     ; $602a: $f0 $df
	db $f4                                           ; $602c: $f4
	adc [hl]                                         ; $602d: $8e
	db $fc                                           ; $602e: $fc
	adc e                                            ; $602f: $8b
	ld h, $56                                        ; $6030: $26 $56
	ld c, h                                          ; $6032: $4c
	call z, $aeac                                    ; $6033: $cc $ac $ae
	xor d                                            ; $6036: $aa
	db $10                                           ; $6037: $10
	db $10                                           ; $6038: $10
	jr nz, jr_05e_605b                               ; $6039: $20 $20

	jr z, jr_05e_6095                                ; $603b: $28 $58

	ld e, b                                          ; $603d: $58
	ld e, h                                          ; $603e: $5c
	pop hl                                           ; $603f: $e1
	db $dd                                           ; $6040: $dd
	db $10                                           ; $6041: $10
	sbc e                                            ; $6042: $9b
	ld de, $1512                                     ; $6043: $11 $12 $15
	rla                                              ; $6046: $17
	db $dd                                           ; $6047: $dd
	ld e, b                                          ; $6048: $58
	sub e                                            ; $6049: $93
	ld e, c                                          ; $604a: $59
	ld e, e                                          ; $604b: $5b
	ld e, a                                          ; $604c: $5f
	ld e, l                                          ; $604d: $5d
	jr c, jr_05e_6068                                ; $604e: $38 $18

	ld a, h                                          ; $6050: $7c
	call z, $8386                                    ; $6051: $cc $86 $83
	ld bc, $7700                                     ; $6054: $01 $00 $77
	ld hl, sp-$6d                                    ; $6057: $f8 $93
	adc $cf                                          ; $6059: $ce $cf

jr_05e_605b:
	rst SubAFromDE                                          ; $605b: $df
	sbc a                                            ; $605c: $9f
	ld c, l                                          ; $605d: $4d
	ld c, l                                          ; $605e: $4d
	ld l, l                                          ; $605f: $6d
	ld l, h                                          ; $6060: $6c
	ld l, [hl]                                       ; $6061: $6e
	ld c, d                                          ; $6062: $4a
	jp z, $ded2                                      ; $6063: $ca $d2 $de

	add [hl]                                         ; $6066: $86

jr_05e_6067:
	sub c                                            ; $6067: $91

jr_05e_6068:
	add a                                            ; $6068: $87
	rst SubAFromHL                                          ; $6069: $d7
	rst FarCall                                          ; $606a: $f7
	rst FarCall                                          ; $606b: $f7
	rst $38                                          ; $606c: $ff
	dec h                                            ; $606d: $25
	dec b                                            ; $606e: $05
	adc l                                            ; $606f: $8d
	adc l                                            ; $6070: $8d
	adc $db                                          ; $6071: $ce $db
	db $db                                           ; $6073: $db
	ld e, d                                          ; $6074: $5a
	inc bc                                           ; $6075: $03
	db $dd                                           ; $6076: $dd
	inc hl                                           ; $6077: $23
	rst SubAFromDE                                          ; $6078: $df
	ld h, $8f                                        ; $6079: $26 $8f
	and a                                            ; $607b: $a7
	sbc d                                            ; $607c: $9a
	dec sp                                           ; $607d: $3b
	dec e                                            ; $607e: $1d
	dec a                                            ; $607f: $3d
	ld a, [hl]                                       ; $6080: $7e
	ld a, [hl-]                                      ; $6081: $3a
	db $f4                                           ; $6082: $f4
	ld c, h                                          ; $6083: $4c
	ld de, $3311                                     ; $6084: $11 $11 $33
	inc hl                                           ; $6087: $23
	inc hl                                           ; $6088: $23
	ld h, a                                          ; $6089: $67
	ld c, a                                          ; $608a: $4f
	db $dd                                           ; $608b: $dd
	rst $38                                          ; $608c: $ff
	rst SubAFromDE                                          ; $608d: $df
	ld hl, sp-$6b                                    ; $608e: $f8 $95
	ldh a, [$e0]                                     ; $6090: $f0 $e0
	ret nz                                           ; $6092: $c0

	sub e                                            ; $6093: $93
	rla                                              ; $6094: $17

jr_05e_6095:
	daa                                              ; $6095: $27
	cpl                                              ; $6096: $2f
	ld c, a                                          ; $6097: $4f
	ld e, a                                          ; $6098: $5f
	cp a                                             ; $6099: $bf
	db $dd                                           ; $609a: $dd
	rst $38                                          ; $609b: $ff
	add d                                            ; $609c: $82
	rrca                                             ; $609d: $0f
	inc bc                                           ; $609e: $03
	rlca                                             ; $609f: $07
	dec b                                            ; $60a0: $05
	add hl, bc                                       ; $60a1: $09
	ld d, [hl]                                       ; $60a2: $56
	xor h                                            ; $60a3: $ac
	db $fc                                           ; $60a4: $fc
	db $fc                                           ; $60a5: $fc
	and $ef                                          ; $60a6: $e6 $ef
	rst GetHLinHL                                          ; $60a8: $cf
	rst SubAFromDE                                          ; $60a9: $df
	ret z                                            ; $60aa: $c8

	call z, Call_05e_51c8                            ; $60ab: $cc $c8 $51
	ld de, $e131                                     ; $60ae: $11 $31 $e1
	dec e                                            ; $60b1: $1d
	jr jr_05e_60c8                                   ; $60b2: $18 $14

	jr jr_05e_6067                                   ; $60b4: $18 $b1

	pop af                                           ; $60b6: $f1
	pop af                                           ; $60b7: $f1
	pop hl                                           ; $60b8: $e1
	dec e                                            ; $60b9: $1d
	ld [hl], e                                       ; $60ba: $73
	add hl, sp                                       ; $60bb: $39
	sbc c                                            ; $60bc: $99
	ld e, a                                          ; $60bd: $5f
	ld e, e                                          ; $60be: $5b
	ld c, c                                          ; $60bf: $49
	ld d, d                                          ; $60c0: $52
	and c                                            ; $60c1: $a1
	and c                                            ; $60c2: $a1
	ld [hl], d                                       ; $60c3: $72
	ld [hl], b                                       ; $60c4: $70
	sbc [hl]                                         ; $60c5: $9e
	and b                                            ; $60c6: $a0
	db $dd                                           ; $60c7: $dd

jr_05e_60c8:
	ldh [$df], a                                     ; $60c8: $e0 $df
	and b                                            ; $60ca: $a0
	sbc h                                            ; $60cb: $9c
	ld h, b                                          ; $60cc: $60
	rst $38                                          ; $60cd: $ff
	ld a, a                                          ; $60ce: $7f
	ld a, e                                          ; $60cf: $7b
	inc hl                                           ; $60d0: $23
	sbc $3f                                          ; $60d1: $de $3f
	ld [hl], d                                       ; $60d3: $72
	xor e                                            ; $60d4: $ab
	ld [hl], a                                       ; $60d5: $77
	inc c                                            ; $60d6: $0c
	sbc h                                            ; $60d7: $9c
	rst SubAFromDE                                          ; $60d8: $df
	ret nz                                           ; $60d9: $c0

	ret nz                                           ; $60da: $c0

	db $dd                                           ; $60db: $dd

Jump_05e_60dc:
	rst $38                                          ; $60dc: $ff
	db $dd                                           ; $60dd: $dd
	inc b                                            ; $60de: $04

Call_05e_60df:
	ld [hl], h                                       ; $60df: $74
	dec hl                                           ; $60e0: $2b
	ld a, c                                          ; $60e1: $79
	and d                                            ; $60e2: $a2
	sbc [hl]                                         ; $60e3: $9e
	ld h, a                                          ; $60e4: $67
	ld l, [hl]                                       ; $60e5: $6e
	ret nz                                           ; $60e6: $c0

	sbc [hl]                                         ; $60e7: $9e
	ld a, a                                          ; $60e8: $7f
	db $fc                                           ; $60e9: $fc
	sbc l                                            ; $60ea: $9d
	adc b                                            ; $60eb: $88
	add b                                            ; $60ec: $80
	db $db                                           ; $60ed: $db
	rst $38                                          ; $60ee: $ff
	ld l, a                                          ; $60ef: $6f
	ldh [c], a                                       ; $60f0: $e2
	rst $38                                          ; $60f1: $ff
	sbc l                                            ; $60f2: $9d
	daa                                              ; $60f3: $27
	rlca                                             ; $60f4: $07
	db $db                                           ; $60f5: $db
	rst $38                                          ; $60f6: $ff
	adc d                                            ; $60f7: $8a
	rst SubAFromDE                                          ; $60f8: $df
	sub $8a                                          ; $60f9: $d6 $8a
	and b                                            ; $60fb: $a0
	jp hl                                            ; $60fc: $e9


	call $99a5                                       ; $60fd: $cd $a5 $99
	add h                                            ; $6100: $84
	adc b                                            ; $6101: $88
	ret nz                                           ; $6102: $c0

	ret nz                                           ; $6103: $c0

	jp nc, $baf2                                     ; $6104: $d2 $f2 $ba

	cp a                                             ; $6107: $bf
	jr nc, jr_05e_613a                               ; $6108: $30 $30

	ld [hl], b                                       ; $610a: $70
	ldh a, [$f0]                                     ; $610b: $f0 $f0
	sbc $e0                                          ; $610d: $de $e0
	sbc $1f                                          ; $610f: $de $1f
	sbc d                                            ; $6111: $9a
	ld e, a                                          ; $6112: $5f
	ccf                                              ; $6113: $3f
	ccf                                              ; $6114: $3f
	cp a                                             ; $6115: $bf
	rst $38                                          ; $6116: $ff
	sbc $07                                          ; $6117: $de $07
	sbc b                                            ; $6119: $98
	inc bc                                           ; $611a: $03
	ld bc, $0f07                                     ; $611b: $01 $07 $0f
	rrca                                             ; $611e: $0f
	db $fc                                           ; $611f: $fc
	db $fc                                           ; $6120: $fc
	ld a, d                                          ; $6121: $7a
	dec sp                                           ; $6122: $3b
	adc l                                            ; $6123: $8d
	cp $f9                                           ; $6124: $fe $f9
	rst $38                                          ; $6126: $ff
	db $db                                           ; $6127: $db
	db $dd                                           ; $6128: $dd
	or l                                             ; $6129: $b5
	and [hl]                                         ; $612a: $a6
	ld h, e                                          ; $612b: $63
	ld a, a                                          ; $612c: $7f
	rst $38                                          ; $612d: $ff
	rst $38                                          ; $612e: $ff
	inc a                                            ; $612f: $3c
	ld [hl], $66                                     ; $6130: $36 $66
	ld h, e                                          ; $6132: $63
	pop bc                                           ; $6133: $c1
	rst $38                                          ; $6134: $ff
	ldh [rBCPD], a                                   ; $6135: $e0 $69
	ld bc, $079e                                     ; $6137: $01 $9e $07

jr_05e_613a:
	ld l, a                                          ; $613a: $6f
	ld hl, sp-$62                                    ; $613b: $f8 $9e
	ldh a, [$64]                                     ; $613d: $f0 $64
	pop af                                           ; $613f: $f1
	ld l, e                                          ; $6140: $6b
	ld hl, sp+$7f                                    ; $6141: $f8 $7f
	sbc h                                            ; $6143: $9c
	add h                                            ; $6144: $84
	nop                                              ; $6145: $00
	dec de                                           ; $6146: $1b
	rra                                              ; $6147: $1f
	rla                                              ; $6148: $17
	ld d, $9a                                        ; $6149: $16 $9a
	ld e, d                                          ; $614b: $5a
	jp nc, $5d52                                     ; $614c: $d2 $52 $5d

	ld e, c                                          ; $614f: $59
	ld e, c                                          ; $6150: $59
	ld e, e                                          ; $6151: $5b
	rst SubAFromHL                                          ; $6152: $d7
	rst SubAFromHL                                          ; $6153: $d7
	rst $38                                          ; $6154: $ff
	rst $38                                          ; $6155: $ff
	sub b                                            ; $6156: $90
	sub b                                            ; $6157: $90
	sbc b                                            ; $6158: $98
	cp b                                             ; $6159: $b8
	inc a                                            ; $615a: $3c
	inc a                                            ; $615b: $3c
	ld a, $3f                                        ; $615c: $3e $3f
	rrca                                             ; $615e: $0f
	rrca                                             ; $615f: $0f
	ld a, e                                          ; $6160: $7b
	and a                                            ; $6161: $a7
	ld a, a                                          ; $6162: $7f
	and [hl]                                         ; $6163: $a6
	ld a, a                                          ; $6164: $7f
	ld h, d                                          ; $6165: $62
	sbc h                                            ; $6166: $9c
	rra                                              ; $6167: $1f
	rrca                                             ; $6168: $0f
	dec bc                                           ; $6169: $0b
	db $fd                                           ; $616a: $fd
	sbc h                                            ; $616b: $9c
	ldh a, [c]                                       ; $616c: $f2
	ld sp, hl                                        ; $616d: $f9
	db $fd                                           ; $616e: $fd
	rst SubAFromHL                                          ; $616f: $d7
	rst $38                                          ; $6170: $ff
	sbc [hl]                                         ; $6171: $9e
	ld a, [hl+]                                      ; $6172: $2a
	ld [hl], b                                       ; $6173: $70
	jp c, $899d                                      ; $6174: $da $9d $89

	rst SubAFromDE                                          ; $6177: $df
	call c, $9eff                                    ; $6178: $dc $ff $9e
	cp $78                                           ; $617b: $fe $78
	or d                                             ; $617d: $b2
	rst $38                                          ; $617e: $ff
	sbc h                                            ; $617f: $9c
	ld e, c                                          ; $6180: $59
	sbc e                                            ; $6181: $9b
	or a                                             ; $6182: $b7
	call c, $95ff                                    ; $6183: $dc $ff $95
	add b                                            ; $6186: $80
	inc bc                                           ; $6187: $03
	rrca                                             ; $6188: $0f
	rrca                                             ; $6189: $0f
	rra                                              ; $618a: $1f
	ld a, $7e                                        ; $618b: $3e $7e
	cp $ff                                           ; $618d: $fe $ff
	db $fc                                           ; $618f: $fc
	ld a, e                                          ; $6190: $7b
	ld e, c                                          ; $6191: $59
	sub h                                            ; $6192: $94
	ret nz                                           ; $6193: $c0

	add b                                            ; $6194: $80
	nop                                              ; $6195: $00
	sbc b                                            ; $6196: $98
	sbc b                                            ; $6197: $98
	jr nc, jr_05e_61cb                               ; $6198: $30 $31

	inc sp                                           ; $619a: $33
	ld h, a                                          ; $619b: $67
	ld h, h                                          ; $619c: $64
	ld l, [hl]                                       ; $619d: $6e
	ld a, e                                          ; $619e: $7b
	ld [$1e82], a                                    ; $619f: $ea $82 $1e
	inc e                                            ; $61a2: $1c
	jr c, jr_05e_61e0                                ; $61a3: $38 $3b

	ld sp, $7bf3                                     ; $61a5: $31 $f3 $7b
	ld e, a                                          ; $61a8: $5f
	dec h                                            ; $61a9: $25
	ld a, [de]                                       ; $61aa: $1a
	rra                                              ; $61ab: $1f
	ld c, $8e                                        ; $61ac: $0e $8e
	adc a                                            ; $61ae: $8f
	rst JumpTable                                          ; $61af: $c7
	rst SubAFromBC                                          ; $61b0: $e7
	rst $38                                          ; $61b1: $ff
	db $fd                                           ; $61b2: $fd
	ld hl, sp-$07                                    ; $61b3: $f8 $f9
	ld sp, hl                                        ; $61b5: $f9
	ld c, c                                          ; $61b6: $49
	ret                                              ; $61b7: $c9


	set 7, a                                         ; $61b8: $cb $ff
	db $fd                                           ; $61ba: $fd
	ret                                              ; $61bb: $c9


	ld e, e                                          ; $61bc: $5b
	ld a, a                                          ; $61bd: $7f
	sbc $01                                          ; $61be: $de $01
	ld a, a                                          ; $61c0: $7f
	push af                                          ; $61c1: $f5
	sbc $c9                                          ; $61c2: $de $c9
	sbc [hl]                                         ; $61c4: $9e
	ld h, b                                          ; $61c5: $60
	ld a, d                                          ; $61c6: $7a
	jp $209b                                         ; $61c7: $c3 $9b $20


	ld h, b                                          ; $61ca: $60

jr_05e_61cb:
	ldh [$df], a                                     ; $61cb: $e0 $df
	db $db                                           ; $61cd: $db
	ccf                                              ; $61ce: $3f
	sbc l                                            ; $61cf: $9d
	jr nz, @+$72                                     ; $61d0: $20 $70

	ld c, l                                          ; $61d2: $4d
	sub c                                            ; $61d3: $91
	ld hl, sp+$03                                    ; $61d4: $f8 $03
	ldh a, [$67]                                     ; $61d6: $f0 $67
	ldh a, [$97]                                     ; $61d8: $f0 $97
	adc h                                            ; $61da: $8c
	adc e                                            ; $61db: $8b
	sbc h                                            ; $61dc: $9c
	or b                                             ; $61dd: $b0
	ret nz                                           ; $61de: $c0

	ret nz                                           ; $61df: $c0

jr_05e_61e0:
	add b                                            ; $61e0: $80
	add c                                            ; $61e1: $81
	db $dd                                           ; $61e2: $dd
	cp a                                             ; $61e3: $bf
	db $dd                                           ; $61e4: $dd
	rst $38                                          ; $61e5: $ff
	ld a, l                                          ; $61e6: $7d
	rrca                                             ; $61e7: $0f
	ld a, a                                          ; $61e8: $7f
	dec hl                                           ; $61e9: $2b
	sbc e                                            ; $61ea: $9b
	jr nc, jr_05e_6245                               ; $61eb: $30 $58

	call $dc65                                       ; $61ed: $cd $65 $dc
	rst $38                                          ; $61f0: $ff
	sbc c                                            ; $61f1: $99
	rst GetHLinHL                                          ; $61f2: $cf
	rst SubAFromBC                                          ; $61f3: $e7
	ld [hl], a                                       ; $61f4: $77
	jr @+$3b                                         ; $61f5: $18 $39

	ld a, l                                          ; $61f7: $7d
	halt                                             ; $61f8: $76
	add $93                                          ; $61f9: $c6 $93
	rst $38                                          ; $61fb: $ff
	ei                                               ; $61fc: $fb
	ldh a, [$c8]                                     ; $61fd: $f0 $c8
	add h                                            ; $61ff: $84
	add h                                            ; $6200: $84
	add d                                            ; $6201: $82
	ld [bc], a                                       ; $6202: $02
	ld [bc], a                                       ; $6203: $02
	nop                                              ; $6204: $00
	add b                                            ; $6205: $80
	pop af                                           ; $6206: $f1
	ld a, d                                          ; $6207: $7a
	cpl                                              ; $6208: $2f
	ld a, [hl]                                       ; $6209: $7e
	ld b, h                                          ; $620a: $44
	ld a, a                                          ; $620b: $7f
	db $fc                                           ; $620c: $fc
	sbc [hl]                                         ; $620d: $9e
	ld c, $e0                                        ; $620e: $0e $e0
	call c, Call_05e_779e                            ; $6210: $dc $9e $77
	call c, $9a76                                    ; $6213: $dc $76 $9a
	and [hl]                                         ; $6216: $a6
	and a                                            ; $6217: $a7
	inc a                                            ; $6218: $3c
	inc l                                            ; $6219: $2c
	inc l                                            ; $621a: $2c
	sbc $4c                                          ; $621b: $de $4c
	rst SubAFromDE                                          ; $621d: $df
	call c, Call_05e_7fdb                            ; $621e: $dc $db $7f
	sbc l                                            ; $6221: $9d
	rra                                              ; $6222: $1f
	add a                                            ; $6223: $87
	ld sp, hl                                        ; $6224: $f9
	sbc l                                            ; $6225: $9d
	ret nz                                           ; $6226: $c0

	ld hl, sp+$7b                                    ; $6227: $f8 $7b
	and e                                            ; $6229: $a3
	ld a, e                                          ; $622a: $7b
	and c                                            ; $622b: $a1
	sbc h                                            ; $622c: $9c
	ccf                                              ; $622d: $3f
	rlca                                             ; $622e: $07
	ld bc, $9afd                                     ; $622f: $01 $fd $9a
	inc b                                            ; $6232: $04
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	ld bc, $7a0f                                     ; $6235: $01 $0f $7a
	call z, $eb7b                                    ; $6238: $cc $7b $eb
	sbc l                                            ; $623b: $9d
	cp $f0                                           ; $623c: $fe $f0
	ld a, e                                          ; $623e: $7b
	db $f4                                           ; $623f: $f4
	sbc h                                            ; $6240: $9c
	ld bc, $3f1f                                     ; $6241: $01 $1f $3f
	ld l, h                                          ; $6244: $6c

jr_05e_6245:
	or $7e                                           ; $6245: $f6 $7e
	call nc, $b96c                                   ; $6247: $d4 $6c $b9
	rst SubAFromDE                                          ; $624a: $df
	cp $de                                           ; $624b: $fe $de
	db $fc                                           ; $624d: $fc
	ld a, l                                          ; $624e: $7d
	ld a, a                                          ; $624f: $7f
	sbc [hl]                                         ; $6250: $9e
	pop bc                                           ; $6251: $c1
	ld sp, hl                                        ; $6252: $f9
	rst SubAFromDE                                          ; $6253: $df
	ld l, a                                          ; $6254: $6f
	add b                                            ; $6255: $80
	rst SubAFromBC                                          ; $6256: $e7
	rst AddAOntoHL                                          ; $6257: $ef
	rst GetHLinHL                                          ; $6258: $cf
	rst GetHLinHL                                          ; $6259: $cf
	rst JumpTable                                          ; $625a: $c7
	rst JumpTable                                          ; $625b: $c7
	jr nc, jr_05e_628e                               ; $625c: $30 $30

	jr c, jr_05e_6290                                ; $625e: $38 $30

	ld [hl], b                                       ; $6260: $70
	ld [hl], b                                       ; $6261: $70
	ld a, b                                          ; $6262: $78
	ld a, b                                          ; $6263: $78
	ld l, b                                          ; $6264: $68
	db $dd                                           ; $6265: $dd
	rst SubAFromBC                                          ; $6266: $e7
	di                                               ; $6267: $f3
	ld a, [$7dfb]                                    ; $6268: $fa $fb $7d
	sbc l                                            ; $626b: $9d
	rst $38                                          ; $626c: $ff
	ld a, $1c                                        ; $626d: $3e $1c
	ld c, $07                                        ; $626f: $0e $07
	rlca                                             ; $6271: $07
	add e                                            ; $6272: $83
	ld h, e                                          ; $6273: $63
	ld a, a                                          ; $6274: $7f
	sub l                                            ; $6275: $95
	ld e, a                                          ; $6276: $5f
	ld c, [hl]                                       ; $6277: $4e
	ld c, h                                          ; $6278: $4c
	ld b, h                                          ; $6279: $44
	ld b, h                                          ; $627a: $44
	daa                                              ; $627b: $27
	ld [hl+], a                                      ; $627c: $22
	jp hl                                            ; $627d: $e9


	ld sp, hl                                        ; $627e: $f9
	ei                                               ; $627f: $fb
	call c, $8fff                                    ; $6280: $dc $ff $8f
	sbc c                                            ; $6283: $99
	ld d, l                                          ; $6284: $55
	call nc, $aad4                                   ; $6285: $d4 $d4 $aa
	ld e, d                                          ; $6288: $5a
	ld [$f81e], a                                    ; $6289: $ea $1e $f8
	cp h                                             ; $628c: $bc
	inc a                                            ; $628d: $3c

jr_05e_628e:
	inc a                                            ; $628e: $3c
	halt                                             ; $628f: $76

jr_05e_6290:
	and $f6                                          ; $6290: $e6 $f6
	ld [de], a                                       ; $6292: $12
	ld [hl], d                                       ; $6293: $72
	or $77                                           ; $6294: $f6 $77
	jr nc, jr_05e_62bc                               ; $6296: $30 $24

	ld b, a                                          ; $6298: $47
	jp c, $9ef4                                      ; $6299: $da $f4 $9e

	rst $38                                          ; $629c: $ff
	jp c, Jump_05e_720b                              ; $629d: $da $0b $72

	ld l, $9c                                        ; $62a0: $2e $9c
	ld a, [$e8e8]                                    ; $62a2: $fa $e8 $e8
	ld a, e                                          ; $62a5: $7b
	ld h, l                                          ; $62a6: $65
	ld a, l                                          ; $62a7: $7d
	xor c                                            ; $62a8: $a9
	sub h                                            ; $62a9: $94
	rra                                              ; $62aa: $1f
	cpl                                              ; $62ab: $2f
	cpl                                              ; $62ac: $2f
	adc c                                            ; $62ad: $89
	ld [$4888], sp                                   ; $62ae: $08 $88 $48
	jr jr_05e_62c4                                   ; $62b1: $18 $11

	ld [de], a                                       ; $62b3: $12
	ld [hl-], a                                      ; $62b4: $32
	jp c, $90ff                                      ; $62b5: $da $ff $90

	cp $15                                           ; $62b8: $fe $15
	add l                                            ; $62ba: $85
	add [hl]                                         ; $62bb: $86

jr_05e_62bc:
	ld c, d                                          ; $62bc: $4a
	ldh a, [c]                                       ; $62bd: $f2
	ldh [c], a                                       ; $62be: $e2
	inc h                                            ; $62bf: $24
	ld h, h                                          ; $62c0: $64
	sub a                                            ; $62c1: $97
	add a                                            ; $62c2: $87
	rst GetHLinHL                                          ; $62c3: $cf

jr_05e_62c4:
	rst AddAOntoHL                                          ; $62c4: $ef
	rst $38                                          ; $62c5: $ff
	ccf                                              ; $62c6: $3f
	ld l, a                                          ; $62c7: $6f

jr_05e_62c8:
	ld b, e                                          ; $62c8: $43
	db $dd                                           ; $62c9: $dd
	rst $38                                          ; $62ca: $ff
	db $dd                                           ; $62cb: $dd
	ld bc, $02de                                     ; $62cc: $01 $de $02
	sbc d                                            ; $62cf: $9a
	inc b                                            ; $62d0: $04
	rra                                              ; $62d1: $1f
	rst JumpTable                                          ; $62d2: $c7
	ldh a, [$fc]                                     ; $62d3: $f0 $fc
	ld l, a                                          ; $62d5: $6f
	and c                                            ; $62d6: $a1
	sbc e                                            ; $62d7: $9b
	ret nz                                           ; $62d8: $c0

	jr nc, @+$0e                                     ; $62d9: $30 $0c

	inc bc                                           ; $62db: $03
	ld h, l                                          ; $62dc: $65
	sub a                                            ; $62dd: $97
	sbc [hl]                                         ; $62de: $9e
	ld bc, $f86b                                     ; $62df: $01 $6b $f8
	ld [hl], e                                       ; $62e2: $73
	adc c                                            ; $62e3: $89
	sbc e                                            ; $62e4: $9b
	ld bc, $ff03                                     ; $62e5: $01 $03 $ff
	ld [bc], a                                       ; $62e8: $02
	ld [hl], l                                       ; $62e9: $75
	dec de                                           ; $62ea: $1b
	ld a, e                                          ; $62eb: $7b
	ld hl, sp-$21                                    ; $62ec: $f8 $df
	rst $38                                          ; $62ee: $ff
	sbc c                                            ; $62ef: $99
	add e                                            ; $62f0: $83
	adc b                                            ; $62f1: $88
	sbc h                                            ; $62f2: $9c
	inc a                                            ; $62f3: $3c
	ld a, h                                          ; $62f4: $7c
	ld a, [hl]                                       ; $62f5: $7e
	ld a, d                                          ; $62f6: $7a
	ldh a, [$8e]                                     ; $62f7: $f0 $8e
	rst FarCall                                          ; $62f9: $f7
	db $e3                                           ; $62fa: $e3
	jp $8183                                         ; $62fb: $c3 $83 $81


	ld bc, $e101                                     ; $62fe: $01 $01 $e1
	ld hl, sp+$30                                    ; $6301: $f8 $30
	inc e                                            ; $6303: $1c
	inc bc                                           ; $6304: $03
	inc c                                            ; $6305: $0c
	rra                                              ; $6306: $1f
	ccf                                              ; $6307: $3f
	nop                                              ; $6308: $00
	ret nz                                           ; $6309: $c0

	ld a, e                                          ; $630a: $7b
	cp c                                             ; $630b: $b9
	sbc e                                            ; $630c: $9b
	di                                               ; $630d: $f3
	ldh [$c0], a                                     ; $630e: $e0 $c0
	di                                               ; $6310: $f3
	sbc $03                                          ; $6311: $de $03
	sub e                                            ; $6313: $93
	nop                                              ; $6314: $00
	ldh [$be], a                                     ; $6315: $e0 $be
	rst GetHLinHL                                          ; $6317: $cf
	inc c                                            ; $6318: $0c
	ld a, h                                          ; $6319: $7c
	inc a                                            ; $631a: $3c
	add h                                            ; $631b: $84
	ldh [$f8], a                                     ; $631c: $e0 $f8
	ld [hl], b                                       ; $631e: $70
	inc a                                            ; $631f: $3c
	halt                                             ; $6320: $76
	pop hl                                           ; $6321: $e1
	ld a, d                                          ; $6322: $7a
	rst JumpTable                                          ; $6323: $c7
	sbc l                                            ; $6324: $9d
	sbc a                                            ; $6325: $9f
	ld bc, $e877                                     ; $6326: $01 $77 $e8
	ld a, l                                          ; $6329: $7d
	jr z, jr_05e_62c8                                ; $632a: $28 $9c

	inc bc                                           ; $632c: $03
	ccf                                              ; $632d: $3f
	ld [$fa7b], sp                                   ; $632e: $08 $7b $fa
	sub c                                            ; $6331: $91
	rra                                              ; $6332: $1f
	rst $38                                          ; $6333: $ff
	rst $38                                          ; $6334: $ff
	ret nz                                           ; $6335: $c0

	ldh a, [$e0]                                     ; $6336: $f0 $e0
	inc bc                                           ; $6338: $03
	rra                                              ; $6339: $1f
	db $fc                                           ; $633a: $fc
	ldh [rP1], a                                     ; $633b: $e0 $00
	rlca                                             ; $633d: $07
	ccf                                              ; $633e: $3f
	ld a, a                                          ; $633f: $7f
	ld a, c                                          ; $6340: $79
	ld [bc], a                                       ; $6341: $02
	ld a, e                                          ; $6342: $7b
	ld [hl], b                                       ; $6343: $70
	sbc e                                            ; $6344: $9b
	ld b, $9c                                        ; $6345: $06 $9c
	ldh [$80], a                                     ; $6347: $e0 $80
	cp $8c                                           ; $6349: $fe $8c
	rst JumpTable                                          ; $634b: $c7
	add e                                            ; $634c: $83
	add e                                            ; $634d: $83
	adc c                                            ; $634e: $89
	adc c                                            ; $634f: $89
	ret                                              ; $6350: $c9


	call z, $f8ec                                    ; $6351: $cc $ec $f8
	db $fc                                           ; $6354: $fc
	db $fc                                           ; $6355: $fc
	or $f6                                           ; $6356: $f6 $f6
	halt                                             ; $6358: $76
	ld [hl], e                                       ; $6359: $73
	ld [hl], e                                       ; $635a: $73
	pop hl                                           ; $635b: $e1
	pop af                                           ; $635c: $f1
	ld hl, sp+$7a                                    ; $635d: $f8 $7a
	db $10                                           ; $635f: $10
	rst SubAFromDE                                          ; $6360: $df
	cp $7d                                           ; $6361: $fe $7d
	add hl, hl                                       ; $6363: $29
	ld a, b                                          ; $6364: $78
	ret z                                            ; $6365: $c8

	sbc $01                                          ; $6366: $de $01
	sbc b                                            ; $6368: $98
	daa                                              ; $6369: $27
	and b                                            ; $636a: $a0
	sub e                                            ; $636b: $93
	rst SubAFromHL                                          ; $636c: $d7
	ld [hl], e                                       ; $636d: $73
	ld sp, $7b1c                                     ; $636e: $31 $1c $7b
	cp [hl]                                          ; $6371: $be
	ld a, [hl]                                       ; $6372: $7e
	adc d                                            ; $6373: $8a
	ld a, a                                          ; $6374: $7f
	rst SubAFromBC                                          ; $6375: $e7
	ld a, [hl]                                       ; $6376: $7e
	ld e, b                                          ; $6377: $58
	ld a, a                                          ; $6378: $7f
	ld e, $9e                                        ; $6379: $1e $9e
	ei                                               ; $637b: $fb
	sbc $fa                                          ; $637c: $de $fa
	sbc d                                            ; $637e: $9a
	rlca                                             ; $637f: $07
	db $fc                                           ; $6380: $fc
	rra                                              ; $6381: $1f
	cp $07                                           ; $6382: $fe $07
	sbc $06                                          ; $6384: $de $06
	ld a, a                                          ; $6386: $7f
	db $eb                                           ; $6387: $eb
	adc a                                            ; $6388: $8f
	rst $38                                          ; $6389: $ff
	rra                                              ; $638a: $1f
	rst AddAOntoHL                                          ; $638b: $ef
	rra                                              ; $638c: $1f
	rrca                                             ; $638d: $0f
	rra                                              ; $638e: $1f
	rst AddAOntoHL                                          ; $638f: $ef
	ld a, e                                          ; $6390: $7b
	ldh a, [$08]                                     ; $6391: $f0 $08
	add sp, $18                                      ; $6393: $e8 $18
	ld [$8818], sp                                   ; $6395: $08 $18 $88
	ld l, b                                          ; $6398: $68
	ld b, d                                          ; $6399: $42
	pop bc                                           ; $639a: $c1
	sub h                                            ; $639b: $94
	or $f7                                           ; $639c: $f6 $f7
	di                                               ; $639e: $f3
	rst FarCall                                          ; $639f: $f7
	di                                               ; $63a0: $f3
	di                                               ; $63a1: $f3
	rst FarCall                                          ; $63a2: $f7
	ld [$0e0c], sp                                   ; $63a3: $08 $0c $0e
	rrca                                             ; $63a6: $0f
	db $dd                                           ; $63a7: $dd
	dec bc                                           ; $63a8: $0b
	sub a                                            ; $63a9: $97
	jr jr_05e_63b8                                   ; $63aa: $18 $0c

	inc bc                                           ; $63ac: $03
	rra                                              ; $63ad: $1f
	ldh a, [$78]                                     ; $63ae: $f0 $78
	ld [hl], h                                       ; $63b0: $74
	ld [hl], d                                       ; $63b1: $72
	ld a, e                                          ; $63b2: $7b
	and b                                            ; $63b3: $a0
	sbc [hl]                                         ; $63b4: $9e
	rst $38                                          ; $63b5: $ff
	ld [hl], a                                       ; $63b6: $77
	xor a                                            ; $63b7: $af

jr_05e_63b8:
	sbc h                                            ; $63b8: $9c
	ld [hl-], a                                      ; $63b9: $32
	ld d, d                                          ; $63ba: $52
	sub d                                            ; $63bb: $92
	ld [hl], e                                       ; $63bc: $73
	call nc, $fe9c                                   ; $63bd: $d4 $9c $fe
	sbc $9e                                          ; $63c0: $de $9e
	ld [hl], a                                       ; $63c2: $77
	ld hl, sp-$69                                    ; $63c3: $f8 $97
	ccf                                              ; $63c5: $3f
	ld l, b                                          ; $63c6: $68
	ld l, b                                          ; $63c7: $68
	ld h, b                                          ; $63c8: $60
	ldh [rAUD1SWEEP], a                              ; $63c9: $e0 $10
	db $10                                           ; $63cb: $10
	ld [$ffdc], sp                                   ; $63cc: $08 $dc $ff
	rst SubAFromDE                                          ; $63cf: $df
	rra                                              ; $63d0: $1f
	ld a, a                                          ; $63d1: $7f
	db $db                                           ; $63d2: $db
	sbc b                                            ; $63d3: $98
	dec b                                            ; $63d4: $05
	add hl, bc                                       ; $63d5: $09
	add hl, bc                                       ; $63d6: $09
	add hl, de                                       ; $63d7: $19
	dec h                                            ; $63d8: $25
	ld b, l                                          ; $63d9: $45
	add l                                            ; $63da: $85
	ld [hl], b                                       ; $63db: $70
	and e                                            ; $63dc: $a3
	sbc b                                            ; $63dd: $98
	rst SubAFromBC                                          ; $63de: $e7
	rst JumpTable                                          ; $63df: $c7
	add a                                            ; $63e0: $87
	rlca                                             ; $63e1: $07
	rst $38                                          ; $63e2: $ff
	add b                                            ; $63e3: $80
	add b                                            ; $63e4: $80
	call c, $9bbf                                    ; $63e5: $dc $bf $9b
	nop                                              ; $63e8: $00
	ld b, b                                          ; $63e9: $40
	ccf                                              ; $63ea: $3f
	ld a, a                                          ; $63eb: $7f
	db $dd                                           ; $63ec: $dd
	ld h, b                                          ; $63ed: $60
	sbc l                                            ; $63ee: $9d
	db $fc                                           ; $63ef: $fc
	ld bc, $8666                                     ; $63f0: $01 $66 $86
	ei                                               ; $63f3: $fb
	sbc l                                            ; $63f4: $9d
	inc b                                            ; $63f5: $04
	db $fc                                           ; $63f6: $fc
	db $db                                           ; $63f7: $db
	ld hl, sp+$7c                                    ; $63f8: $f8 $7c
	ld b, h                                          ; $63fa: $44
	db $db                                           ; $63fb: $db
	rrca                                             ; $63fc: $0f
	ld a, e                                          ; $63fd: $7b
	ld [bc], a                                       ; $63fe: $02
	ld a, a                                          ; $63ff: $7f
	cp $9d                                           ; $6400: $fe $9d
	inc c                                            ; $6402: $0c
	ld [$af77], sp                                   ; $6403: $08 $77 $af
	sbc $f0                                          ; $6406: $de $f0
	ld a, a                                          ; $6408: $7f
	ld a, b                                          ; $6409: $78
	ld [hl], b                                       ; $640a: $70
	ld [hl+], a                                      ; $640b: $22
	ld a, c                                          ; $640c: $79
	sub l                                            ; $640d: $95
	ld [hl], e                                       ; $640e: $73
	ld e, l                                          ; $640f: $5d
	sbc [hl]                                         ; $6410: $9e
	rlca                                             ; $6411: $07
	ld a, e                                          ; $6412: $7b
	reti                                             ; $6413: $d9


	ld a, d                                          ; $6414: $7a
	add l                                            ; $6415: $85
	ld [hl], a                                       ; $6416: $77
	push af                                          ; $6417: $f5
	ld [hl], e                                       ; $6418: $73
	ldh a, [$7b]                                     ; $6419: $f0 $7b
	push af                                          ; $641b: $f5
	sbc l                                            ; $641c: $9d
	inc e                                            ; $641d: $1c
	ldh [rVBK], a                                    ; $641e: $e0 $4f
	ldh a, [$73]                                     ; $6420: $f0 $73
	ei                                               ; $6422: $fb
	ld a, [hl]                                       ; $6423: $7e
	ret                                              ; $6424: $c9


	ld l, a                                          ; $6425: $6f
	ldh a, [$9d]                                     ; $6426: $f0 $9d
	ld hl, sp+$07                                    ; $6428: $f8 $07
	ld [hl], a                                       ; $642a: $77
	ldh a, [$7f]                                     ; $642b: $f0 $7f
	adc $7a                                          ; $642d: $ce $7a
	and $6f                                          ; $642f: $e6 $6f
	dec e                                            ; $6431: $1d
	ld a, a                                          ; $6432: $7f
	ccf                                              ; $6433: $3f
	sub h                                            ; $6434: $94
	ld l, h                                          ; $6435: $6c
	ld e, [hl]                                       ; $6436: $5e
	ld d, [hl]                                       ; $6437: $56
	adc a                                            ; $6438: $8f
	adc e                                            ; $6439: $8b
	adc e                                            ; $643a: $8b
	add a                                            ; $643b: $87
	rst JumpTable                                          ; $643c: $c7
	di                                               ; $643d: $f3
	pop af                                           ; $643e: $f1
	ld sp, hl                                        ; $643f: $f9
	ld a, d                                          ; $6440: $7a
	cp l                                             ; $6441: $bd
	halt                                             ; $6442: $76
	push bc                                          ; $6443: $c5
	sub b                                            ; $6444: $90
	db $fc                                           ; $6445: $fc
	ld a, h                                          ; $6446: $7c
	ld a, h                                          ; $6447: $7c
	inc a                                            ; $6448: $3c
	inc e                                            ; $6449: $1c
	call nz, $0101                                   ; $644a: $c4 $01 $01
	inc bc                                           ; $644d: $03
	add e                                            ; $644e: $83
	add e                                            ; $644f: $83
	jp $3be3                                         ; $6450: $c3 $e3 $3b


	rrca                                             ; $6453: $0f
	db $dd                                           ; $6454: $dd
	ld [$df7e], sp                                   ; $6455: $08 $7e $df
	sbc l                                            ; $6458: $9d
	jr @+$01                                         ; $6459: $18 $ff

	jp c, $9ef8                                      ; $645b: $da $f8 $9e

	rst $38                                          ; $645e: $ff
	db $dd                                           ; $645f: $dd
	ld l, $df                                        ; $6460: $2e $df
	rst $38                                          ; $6462: $ff
	ld a, a                                          ; $6463: $7f
	db $fd                                           ; $6464: $fd
	ld a, [$f19e]                                    ; $6465: $fa $9e $f1
	sbc $30                                          ; $6468: $de $30
	ld a, l                                          ; $646a: $7d
	jp c, $e099                                      ; $646b: $da $99 $e0

	ld h, d                                          ; $646e: $62
	ldh a, [rAUD1SWEEP]                              ; $646f: $f0 $10
	db $10                                           ; $6471: $10
	jr nc, @-$21                                     ; $6472: $30 $dd

	jr nz, @+$7b                                     ; $6474: $20 $79

	ld [hl], e                                       ; $6476: $73
	ld a, c                                          ; $6477: $79
	set 7, e                                         ; $6478: $cb $fb
	ld [hl], a                                       ; $647a: $77
	nop                                              ; $647b: $00
	ld a, d                                          ; $647c: $7a
	jp $f796                                         ; $647d: $c3 $96 $f7


Call_05e_6480:
	ei                                               ; $6480: $fb
	rst $38                                          ; $6481: $ff
	add d                                            ; $6482: $82
	ld b, [hl]                                       ; $6483: $46
	dec bc                                           ; $6484: $0b
	dec bc                                           ; $6485: $0b
	ld a, [bc]                                       ; $6486: $0a
	ld a, [bc]                                       ; $6487: $0a
	db $dd                                           ; $6488: $dd
	ei                                               ; $6489: $fb
	sbc b                                            ; $648a: $98
	ld [hl], c                                       ; $648b: $71
	ld a, b                                          ; $648c: $78
	db $fc                                           ; $648d: $fc
	adc $c7                                          ; $648e: $ce $c7
	db $d3                                           ; $6490: $d3
	ld sp, hl                                        ; $6491: $f9
	ld a, d                                          ; $6492: $7a
	inc bc                                           ; $6493: $03
	db $db                                           ; $6494: $db
	ld a, a                                          ; $6495: $7f
	sbc l                                            ; $6496: $9d
	rst $38                                          ; $6497: $ff
	call c, Call_05e_5fde                            ; $6498: $dc $de $5f
	ld a, [hl]                                       ; $649b: $7e
	cp c                                             ; $649c: $b9
	sbc b                                            ; $649d: $98
	cp $87                                           ; $649e: $fe $87
	ret c                                            ; $64a0: $d8

	ret c                                            ; $64a1: $d8

	sbc $df                                          ; $64a2: $de $df
	rst $38                                          ; $64a4: $ff
	ld a, b                                          ; $64a5: $78
	ret                                              ; $64a6: $c9


	ld a, c                                          ; $64a7: $79
	and a                                            ; $64a8: $a7
	sbc e                                            ; $64a9: $9b
	rst FarCall                                          ; $64aa: $f7
	ld a, a                                          ; $64ab: $7f
	rra                                              ; $64ac: $1f
	push bc                                          ; $64ad: $c5
	ld [hl], a                                       ; $64ae: $77
	cp l                                             ; $64af: $bd
	sbc e                                            ; $64b0: $9b
	add b                                            ; $64b1: $80
	ldh [$3f], a                                     ; $64b2: $e0 $3f
	rst SubAFromDE                                          ; $64b4: $df
	ld [hl], a                                       ; $64b5: $77
	ld hl, sp+$5e                                    ; $64b6: $f8 $5e
	ld l, a                                          ; $64b8: $6f
	sbc $ff                                          ; $64b9: $de $ff
	sbc $b0                                          ; $64bb: $de $b0
	ld d, e                                          ; $64bd: $53
	ldh a, [rPCM12]                                  ; $64be: $f0 $76
	rst SubAFromBC                                          ; $64c0: $e7
	ld [hl], e                                       ; $64c1: $73
	pop af                                           ; $64c2: $f1
	sbc h                                            ; $64c3: $9c
	ld bc, $e01e                                     ; $64c4: $01 $1e $e0

jr_05e_64c7:
	ld a, e                                          ; $64c7: $7b
	inc d                                            ; $64c8: $14
	rst SubAFromDE                                          ; $64c9: $df
	db $fc                                           ; $64ca: $fc
	sbc l                                            ; $64cb: $9d
	ldh a, [c]                                       ; $64cc: $f2
	add e                                            ; $64cd: $83
	ld a, d                                          ; $64ce: $7a
	inc de                                           ; $64cf: $13
	ld a, [hl]                                       ; $64d0: $7e
	add sp, -$63                                     ; $64d1: $e8 $9d
	ccf                                              ; $64d3: $3f
	jp $da76                                         ; $64d4: $c3 $76 $da


	ld [hl], b                                       ; $64d7: $70
	adc h                                            ; $64d8: $8c
	sbc [hl]                                         ; $64d9: $9e
	ldh a, [c]                                       ; $64da: $f2
	sbc $f0                                          ; $64db: $de $f0
	db $dd                                           ; $64dd: $dd
	rst FarCall                                          ; $64de: $f7
	sbc d                                            ; $64df: $9a
	ld [hl], a                                       ; $64e0: $77
	rlca                                             ; $64e1: $07
	rst FarCall                                          ; $64e2: $f7
	rlca                                             ; $64e3: $07
	ld [hl], b                                       ; $64e4: $70
	reti                                             ; $64e5: $d9


	rst $38                                          ; $64e6: $ff
	sbc [hl]                                         ; $64e7: $9e
	rst GetHLinHL                                          ; $64e8: $cf
	db $db                                           ; $64e9: $db
	add b                                            ; $64ea: $80
	ld [hl], a                                       ; $64eb: $77
	cp l                                             ; $64ec: $bd
	rst SubAFromDE                                          ; $64ed: $df
	ldh [$73], a                                     ; $64ee: $e0 $73
	xor a                                            ; $64f0: $af
	sbc $3f                                          ; $64f1: $de $3f
	ld h, l                                          ; $64f3: $65
	inc a                                            ; $64f4: $3c
	ld [hl], e                                       ; $64f5: $73
	ldh a, [$78]                                     ; $64f6: $f0 $78
	ld a, [hl-]                                      ; $64f8: $3a
	ld a, e                                          ; $64f9: $7b
	xor d                                            ; $64fa: $aa
	reti                                             ; $64fb: $d9


	rst $38                                          ; $64fc: $ff
	ld l, d                                          ; $64fd: $6a
	ld h, b                                          ; $64fe: $60
	sub a                                            ; $64ff: $97
	pop bc                                           ; $6500: $c1
	pop hl                                           ; $6501: $e1
	pop hl                                           ; $6502: $e1
	jp hl                                            ; $6503: $e9


	push hl                                          ; $6504: $e5
	jp hl                                            ; $6505: $e9


	pop hl                                           ; $6506: $e1
	pop hl                                           ; $6507: $e1
	ld a, e                                          ; $6508: $7b
	add hl, de                                       ; $6509: $19
	sbc l                                            ; $650a: $9d
	ccf                                              ; $650b: $3f
	scf                                              ; $650c: $37
	sbc $3f                                          ; $650d: $de $3f
	sbc l                                            ; $650f: $9d
	db $e3                                           ; $6510: $e3
	ld hl, sp+$7b                                    ; $6511: $f8 $7b
	ld c, h                                          ; $6513: $4c
	ld [hl], b                                       ; $6514: $70
	ld a, l                                          ; $6515: $7d
	sub l                                            ; $6516: $95
	ld c, a                                          ; $6517: $4f
	ld b, e                                          ; $6518: $43
	ld b, b                                          ; $6519: $40
	ld b, b                                          ; $651a: $40
	ld a, a                                          ; $651b: $7f
	ld b, b                                          ; $651c: $40
	nop                                              ; $651d: $00
	add b                                            ; $651e: $80
	nop                                              ; $651f: $00
	add c                                            ; $6520: $81
	reti                                             ; $6521: $d9


	rst $38                                          ; $6522: $ff
	sbc [hl]                                         ; $6523: $9e
	ld a, a                                          ; $6524: $7f
	ld a, e                                          ; $6525: $7b
	add b                                            ; $6526: $80
	rst SubAFromDE                                          ; $6527: $df
	jr nc, jr_05e_64c7                               ; $6528: $30 $9d

	ld h, b                                          ; $652a: $60
	ret nz                                           ; $652b: $c0

	ld [hl], e                                       ; $652c: $73
	ld e, h                                          ; $652d: $5c
	ld a, l                                          ; $652e: $7d
	ld b, b                                          ; $652f: $40
	sbc [hl]                                         ; $6530: $9e
	ret nz                                           ; $6531: $c0

	ld a, e                                          ; $6532: $7b
	sub e                                            ; $6533: $93
	sbc [hl]                                         ; $6534: $9e
	nop                                              ; $6535: $00
	ld l, [hl]                                       ; $6536: $6e
	pop bc                                           ; $6537: $c1
	ld h, [hl]                                       ; $6538: $66
	sbc $7e                                          ; $6539: $de $7e
	ld [hl], h                                       ; $653b: $74
	sbc [hl]                                         ; $653c: $9e
	ld a, a                                          ; $653d: $7f
	sbc $42                                          ; $653e: $de $42
	sbc d                                            ; $6540: $9a
	rst $38                                          ; $6541: $ff
	ldh [c], a                                       ; $6542: $e2
	and d                                            ; $6543: $a2
	or d                                             ; $6544: $b2
	ld h, b                                          ; $6545: $60
	db $dd                                           ; $6546: $dd
	ld b, b                                          ; $6547: $40
	rst SubAFromDE                                          ; $6548: $df
	ld h, b                                          ; $6549: $60
	sbc l                                            ; $654a: $9d
	ld a, b                                          ; $654b: $78
	rlca                                             ; $654c: $07
	cp $79                                           ; $654d: $fe $79
	rlca                                             ; $654f: $07
	ld a, a                                          ; $6550: $7f
	and $df                                          ; $6551: $e6 $df
	rlca                                             ; $6553: $07
	ld a, h                                          ; $6554: $7c
	pop bc                                           ; $6555: $c1
	rst SubAFromDE                                          ; $6556: $df
	inc bc                                           ; $6557: $03
	sub l                                            ; $6558: $95
	ld bc, $22fb                                     ; $6559: $01 $fb $22
	ld [de], a                                       ; $655c: $12
	ld [de], a                                       ; $655d: $12
	ei                                               ; $655e: $fb
	ld a, [bc]                                       ; $655f: $0a
	ld [bc], a                                       ; $6560: $02
	ld [bc], a                                       ; $6561: $02
	ei                                               ; $6562: $fb
	jp c, $96ff                                      ; $6563: $da $ff $96

	rst AddAOntoHL                                          ; $6566: $ef
	and a                                            ; $6567: $a7
	push bc                                          ; $6568: $c5
	push hl                                          ; $6569: $e5
	push af                                          ; $656a: $f5
	ld sp, hl                                        ; $656b: $f9
	ld a, [hl]                                       ; $656c: $7e
	ld a, e                                          ; $656d: $7b
	ld l, a                                          ; $656e: $6f
	sbc $67                                          ; $656f: $de $67
	sbc [hl]                                         ; $6571: $9e
	ld [hl], a                                       ; $6572: $77
	ld a, b                                          ; $6573: $78
	or $df                                           ; $6574: $f6 $df
	ld a, [hl]                                       ; $6576: $7e
	sub b                                            ; $6577: $90
	ld [hl], d                                       ; $6578: $72
	ld [de], a                                       ; $6579: $12
	ld d, $15                                        ; $657a: $16 $15
	ld a, [de]                                       ; $657c: $1a
	ld l, e                                          ; $657d: $6b
	ld a, a                                          ; $657e: $7f
	ld a, a                                          ; $657f: $7f
	ld [hl], e                                       ; $6580: $73
	ld [hl], e                                       ; $6581: $73
	ld [hl], a                                       ; $6582: $77
	ld [hl], a                                       ; $6583: $77
	ld a, a                                          ; $6584: $7f
	ld a, a                                          ; $6585: $7f
	and a                                            ; $6586: $a7
	db $dd                                           ; $6587: $dd
	sub l                                            ; $6588: $95
	sbc e                                            ; $6589: $9b
	ld d, l                                          ; $658a: $55
	or a                                             ; $658b: $b7
	or a                                             ; $658c: $b7
	db $ed                                           ; $658d: $ed
	jp c, Jump_05e_7bf5                              ; $658e: $da $f5 $7b

	dec sp                                           ; $6591: $3b
	ld a, b                                          ; $6592: $78
	add e                                            ; $6593: $83
	ld [hl], a                                       ; $6594: $77
	ld b, b                                          ; $6595: $40
	ld l, e                                          ; $6596: $6b

jr_05e_6597:
	ld hl, sp+$7a                                    ; $6597: $f8 $7a
	xor d                                            ; $6599: $aa
	ld [hl], e                                       ; $659a: $73
	ld c, l                                          ; $659b: $4d
	db $fc                                           ; $659c: $fc
	ld a, h                                          ; $659d: $7c
	xor d                                            ; $659e: $aa
	ld l, a                                          ; $659f: $6f
	rst SubAFromBC                                          ; $65a0: $e7
	ld a, e                                          ; $65a1: $7b
	ld d, $7f                                        ; $65a2: $16 $7f
	ld [hl], l                                       ; $65a4: $75
	call c, $df01                                    ; $65a5: $dc $01 $df
	rst $38                                          ; $65a8: $ff
	db $db                                           ; $65a9: $db
	ld e, a                                          ; $65aa: $5f
	ld l, d                                          ; $65ab: $6a
	and l                                            ; $65ac: $a5
	ld [hl], l                                       ; $65ad: $75
	adc e                                            ; $65ae: $8b
	rst SubAFromDE                                          ; $65af: $df
	ldh a, [$7a]                                     ; $65b0: $f0 $7a
	cp a                                             ; $65b2: $bf
	ld a, [hl]                                       ; $65b3: $7e
	push bc                                          ; $65b4: $c5
	db $db                                           ; $65b5: $db
	rst FarCall                                          ; $65b6: $f7
	db $db                                           ; $65b7: $db
	rst $38                                          ; $65b8: $ff
	sbc [hl]                                         ; $65b9: $9e
	add b                                            ; $65ba: $80
	ld a, c                                          ; $65bb: $79
	add hl, sp                                       ; $65bc: $39
	call c, Call_05e_6480                            ; $65bd: $dc $80 $64
	jp nc, $f165                                     ; $65c0: $d2 $65 $f1

	inc bc                                           ; $65c3: $03
	ldh a, [$dd]                                     ; $65c4: $f0 $dd
	pop hl                                           ; $65c6: $e1
	ld a, [hl]                                       ; $65c7: $7e
	cp a                                             ; $65c8: $bf
	sbc l                                            ; $65c9: $9d
	add hl, hl                                       ; $65ca: $29
	pop hl                                           ; $65cb: $e1
	call c, $7e3f                                    ; $65cc: $dc $3f $7e
	cp a                                             ; $65cf: $bf
	ret c                                            ; $65d0: $d8

	rst $38                                          ; $65d1: $ff
	ld a, [hl]                                       ; $65d2: $7e
	push bc                                          ; $65d3: $c5
	ld l, c                                          ; $65d4: $69
	ldh a, [$63]                                     ; $65d5: $f0 $63
	adc $d9                                          ; $65d7: $ce $d9
	rst $38                                          ; $65d9: $ff
	db $db                                           ; $65da: $db
	ld sp, hl                                        ; $65db: $f9
	halt                                             ; $65dc: $76
	ld [hl], d                                       ; $65dd: $72
	ld l, a                                          ; $65de: $6f
	dec a                                            ; $65df: $3d
	sub [hl]                                         ; $65e0: $96
	sbc [hl]                                         ; $65e1: $9e
	sub a                                            ; $65e2: $97
	sub [hl]                                         ; $65e3: $96
	sub a                                            ; $65e4: $97
	sub a                                            ; $65e5: $97
	sbc b                                            ; $65e6: $98
	ld bc, $efff                                     ; $65e7: $01 $ff $ef
	call c, $94ff                                    ; $65ea: $dc $ff $94
	jr z, jr_05e_6597                                ; $65ed: $28 $a8

	ld l, b                                          ; $65ef: $68
	add sp, $68                                      ; $65f0: $e8 $68
	add sp, -$18                                     ; $65f2: $e8 $e8
	add hl, hl                                       ; $65f4: $29
	cp $fb                                           ; $65f5: $fe $fb
	db $fc                                           ; $65f7: $fc
	ld [hl], a                                       ; $65f8: $77
	sub $9e                                          ; $65f9: $d6 $9e
	db $fd                                           ; $65fb: $fd
	cp $7a                                           ; $65fc: $fe $7a
	ld [$fb7b], sp                                   ; $65fe: $08 $7b $fb
	sbc h                                            ; $6601: $9c
	add c                                            ; $6602: $81
	pop hl                                           ; $6603: $e1
	ccf                                              ; $6604: $3f
	ld a, d                                          ; $6605: $7a
	ld e, h                                          ; $6606: $5c
	sbc e                                            ; $6607: $9b
	ld a, a                                          ; $6608: $7f
	inc bc                                           ; $6609: $03
	rrca                                             ; $660a: $0f
	rrca                                             ; $660b: $0f
	ld [hl], l                                       ; $660c: $75
	db $e4                                           ; $660d: $e4
	ld a, a                                          ; $660e: $7f
	pop de                                           ; $660f: $d1
	rst SubAFromDE                                          ; $6610: $df
	ei                                               ; $6611: $fb
	call c, $97ff                                    ; $6612: $dc $ff $97
	ld a, e                                          ; $6615: $7b
	ld a, a                                          ; $6616: $7f
	ld e, a                                          ; $6617: $5f
	ld c, a                                          ; $6618: $4f
	ld c, a                                          ; $6619: $4f
	ld l, e                                          ; $661a: $6b
	jp hl                                            ; $661b: $e9


	ret                                              ; $661c: $c9


	ld l, d                                          ; $661d: $6a
	ld e, [hl]                                       ; $661e: $5e
	sub [hl]                                         ; $661f: $96
	ld a, a                                          ; $6620: $7f
	ld c, d                                          ; $6621: $4a
	ld e, d                                          ; $6622: $5a
	ld d, l                                          ; $6623: $55
	ld d, h                                          ; $6624: $54
	ld d, h                                          ; $6625: $54
	call nc, Call_05e_5454                           ; $6626: $d4 $54 $54
	ld h, a                                          ; $6629: $67
	add e                                            ; $662a: $83
	rst SubAFromDE                                          ; $662b: $df
	or l                                             ; $662c: $b5
	sbc c                                            ; $662d: $99
	xor h                                            ; $662e: $ac
	or a                                             ; $662f: $b7
	cp d                                             ; $6630: $ba
	db $ed                                           ; $6631: $ed
	rst SubAFromBC                                          ; $6632: $e7
	push af                                          ; $6633: $f5
	ld a, e                                          ; $6634: $7b
	rla                                              ; $6635: $17
	sub d                                            ; $6636: $92
	rst AddAOntoHL                                          ; $6637: $ef
	rst FarCall                                          ; $6638: $f7
	cp e                                             ; $6639: $bb
	cp a                                             ; $663a: $bf
	xor a                                            ; $663b: $af
	rst $38                                          ; $663c: $ff
	rst $38                                          ; $663d: $ff
	ld [bc], a                                       ; $663e: $02
	db $fc                                           ; $663f: $fc
	xor b                                            ; $6640: $a8
	or b                                             ; $6641: $b0
	or b                                             ; $6642: $b0
	pop hl                                           ; $6643: $e1
	reti                                             ; $6644: $d9


	rst $38                                          ; $6645: $ff
	sbc h                                            ; $6646: $9c
	ld hl, sp-$7a                                    ; $6647: $f8 $86
	dec b                                            ; $6649: $05
	call c, wCurrChar1Idxed+1                                    ; $664a: $dc $04 $d8
	rst $38                                          ; $664d: $ff
	ldh a, [c]                                       ; $664e: $f2
	ld b, e                                          ; $664f: $43
	ldh a, [$da]                                     ; $6650: $f0 $da
	jr nc, jr_05e_66b7                               ; $6652: $30 $63

	ldh a, [rWX]                                     ; $6654: $f0 $4b
	ret                                              ; $6656: $c9


	inc bc                                           ; $6657: $03
	ldh a, [rBGP]                                    ; $6658: $f0 $47
	ldh a, [$da]                                     ; $665a: $f0 $da
	pop hl                                           ; $665c: $e1
	ld h, e                                          ; $665d: $63
	ldh a, [$da]                                     ; $665e: $f0 $da
	add b                                            ; $6660: $80
	inc hl                                           ; $6661: $23
	add b                                            ; $6662: $80
	ld b, a                                          ; $6663: $47
	ldh a, [$9e]                                     ; $6664: $f0 $9e
	inc bc                                           ; $6666: $03
	sbc $07                                          ; $6667: $de $07
	rst SubAFromDE                                          ; $6669: $df
	ld c, $9e                                        ; $666a: $0e $9e
	inc e                                            ; $666c: $1c
	call c, $df03                                    ; $666d: $dc $03 $df
	rlca                                             ; $6670: $07
	sbc l                                            ; $6671: $9d
	ld b, $d9                                        ; $6672: $06 $d9
	db $dd                                           ; $6674: $dd
	jp hl                                            ; $6675: $e9


	sbc h                                            ; $6676: $9c
	cpl                                              ; $6677: $2f
	jp hl                                            ; $6678: $e9


	jr z, jr_05e_66e1                                ; $6679: $28 $66

	sub h                                            ; $667b: $94
	ld h, a                                          ; $667c: $67
	set 3, c                                         ; $667d: $cb $d9
	rst $38                                          ; $667f: $ff
	ld [hl], d                                       ; $6680: $72
	or e                                             ; $6681: $b3
	ld e, e                                          ; $6682: $5b
	ldh a, [$9a]                                     ; $6683: $f0 $9a
	ret                                              ; $6685: $c9


	dec c                                            ; $6686: $0d
	dec c                                            ; $6687: $0d
	dec sp                                           ; $6688: $3b
	dec sp                                           ; $6689: $3b
	ld a, c                                          ; $668a: $79
	call nc, Call_05e_7575                           ; $668b: $d4 $75 $75
	halt                                             ; $668e: $76
	ld a, [hl]                                       ; $668f: $7e
	sbc h                                            ; $6690: $9c
	ld d, h                                          ; $6691: $54
	ld e, h                                          ; $6692: $5c
	ld c, h                                          ; $6693: $4c
	call c, $9c40                                    ; $6694: $dc $40 $9c
	rst $38                                          ; $6697: $ff
	db $eb                                           ; $6698: $eb
	di                                               ; $6699: $f3
	call c, $92ff                                    ; $669a: $dc $ff $92
	db $fd                                           ; $669d: $fd
	cp l                                             ; $669e: $bd
	xor a                                            ; $669f: $af
	and a                                            ; $66a0: $a7
	and a                                            ; $66a1: $a7
	and h                                            ; $66a2: $a4
	ld b, h                                          ; $66a3: $44
	inc b                                            ; $66a4: $04
	and l                                            ; $66a5: $a5
	rst SubAFromBC                                          ; $66a6: $e7
	rst FarCall                                          ; $66a7: $f7
	db $fc                                           ; $66a8: $fc
	db $fc                                           ; $66a9: $fc
	sbc $ff                                          ; $66aa: $de $ff
	rst SubAFromDE                                          ; $66ac: $df
	pop bc                                           ; $66ad: $c1
	rst SubAFromDE                                          ; $66ae: $df
	add c                                            ; $66af: $81
	sbc e                                            ; $66b0: $9b
	adc b                                            ; $66b1: $88
	adc h                                            ; $66b2: $8c
	adc [hl]                                         ; $66b3: $8e
	adc a                                            ; $66b4: $8f
	reti                                             ; $66b5: $d9


	rst $38                                          ; $66b6: $ff

jr_05e_66b7:
	sbc h                                            ; $66b7: $9c
	inc b                                            ; $66b8: $04
	add h                                            ; $66b9: $84
	add h                                            ; $66ba: $84
	sbc $c4                                          ; $66bb: $de $c4
	sbc [hl]                                         ; $66bd: $9e
	db $e4                                           ; $66be: $e4
	ld [hl], a                                       ; $66bf: $77
	push hl                                          ; $66c0: $e5
	call c, Call_05e_52ff                            ; $66c1: $dc $ff $52
	nop                                              ; $66c4: $00
	sbc l                                            ; $66c5: $9d
	ld d, l                                          ; $66c6: $55
	ld d, h                                          ; $66c7: $54
	sbc $44                                          ; $66c8: $de $44
	sbc [hl]                                         ; $66ca: $9e
	ld b, a                                          ; $66cb: $47
	db $dd                                           ; $66cc: $dd
	ld [hl], a                                       ; $66cd: $77
	ld h, e                                          ; $66ce: $63
	or $9e                                           ; $66cf: $f6 $9e
	ld [hl], h                                       ; $66d1: $74
	ld e, e                                          ; $66d2: $5b
	or $9b                                           ; $66d3: $f6 $9b
	ld d, l                                          ; $66d5: $55
	ld b, h                                          ; $66d6: $44
	ld b, e                                          ; $66d7: $43
	inc [hl]                                         ; $66d8: $34
	sbc $77                                          ; $66d9: $de $77
	sbc [hl]                                         ; $66db: $9e
	ld b, a                                          ; $66dc: $47
	ld a, e                                          ; $66dd: $7b
	or $9c                                           ; $66de: $f6 $9c
	inc sp                                           ; $66e0: $33

jr_05e_66e1:
	dec [hl]                                         ; $66e1: $35
	ld d, l                                          ; $66e2: $55
	ld [hl], e                                       ; $66e3: $73
	reti                                             ; $66e4: $d9


	call c, $9b55                                    ; $66e5: $dc $55 $9b
	dec [hl]                                         ; $66e8: $35
	ld b, h                                          ; $66e9: $44
	ld b, e                                          ; $66ea: $43
	ld [hl], l                                       ; $66eb: $75
	jp c, $7f55                                      ; $66ec: $da $55 $7f

	sub $9d                                          ; $66ef: $d6 $9d
	ld [hl], e                                       ; $66f1: $73
	inc sp                                           ; $66f2: $33
	db $dd                                           ; $66f3: $dd
	ld h, [hl]                                       ; $66f4: $66
	adc [hl]                                         ; $66f5: $8e
	ld d, l                                          ; $66f6: $55
	ld h, [hl]                                       ; $66f7: $66
	ld h, h                                          ; $66f8: $64
	ld b, l                                          ; $66f9: $45
	ld d, [hl]                                       ; $66fa: $56
	ld h, [hl]                                       ; $66fb: $66
	ld h, [hl]                                       ; $66fc: $66
	ld [hl], $66                                     ; $66fd: $36 $66
	ld h, [hl]                                       ; $66ff: $66
	inc sp                                           ; $6700: $33
	ld h, [hl]                                       ; $6701: $66
	ld h, a                                          ; $6702: $67
	ld [hl], l                                       ; $6703: $75
	dec [hl]                                         ; $6704: $35
	ld h, [hl]                                       ; $6705: $66
	ld b, e                                          ; $6706: $43
	ld [hl], a                                       ; $6707: $77
	or $9a                                           ; $6708: $f6 $9a
	inc sp                                           ; $670a: $33
	ld [hl], a                                       ; $670b: $77
	ld [hl], a                                       ; $670c: $77
	dec [hl]                                         ; $670d: $35
	ld [hl], a                                       ; $670e: $77
	call c, $9e66                                    ; $670f: $dc $66 $9e
	ld h, h                                          ; $6712: $64
	ld [hl], a                                       ; $6713: $77
	or $8a                                           ; $6714: $f6 $8a
	ld a, [bc]                                       ; $6716: $0a
	rst $38                                          ; $6717: $ff
	sbc $ff                                          ; $6718: $de $ff
	ld a, a                                          ; $671a: $7f
	db $fc                                           ; $671b: $fc
	ld h, e                                          ; $671c: $63
	cp $07                                           ; $671d: $fe $07
	ldh a, [$99]                                     ; $671f: $f0 $99
	rrca                                             ; $6721: $0f
	add hl, bc                                       ; $6722: $09
	rst $38                                          ; $6723: $ff
	ld sp, hl                                        ; $6724: $f9
	rst $38                                          ; $6725: $ff
	add hl, bc                                       ; $6726: $09
	ld e, a                                          ; $6727: $5f
	cp $99                                           ; $6728: $fe $99
	ret nz                                           ; $672a: $c0

	ld b, b                                          ; $672b: $40
	rst $38                                          ; $672c: $ff
	ld a, a                                          ; $672d: $7f
	rst $38                                          ; $672e: $ff
	ld b, b                                          ; $672f: $40
	ld e, a                                          ; $6730: $5f
	cp $03                                           ; $6731: $fe $03
	or b                                             ; $6733: $b0
	ld h, a                                          ; $6734: $67
	ldh a, [$98]                                     ; $6735: $f0 $98
	inc bc                                           ; $6737: $03
	db $fc                                           ; $6738: $fc
	rlca                                             ; $6739: $07
	ld sp, hl                                        ; $673a: $f9
	rrca                                             ; $673b: $0f
	rst FarCall                                          ; $673c: $f7
	rra                                              ; $673d: $1f
	ld [hl], a                                       ; $673e: $77
	ldh a, [$80]                                     ; $673f: $f0 $80
	rst AddAOntoHL                                          ; $6741: $ef
	jr nc, @+$01                                     ; $6742: $30 $ff

	rst $38                                          ; $6744: $ff
	ld h, b                                          ; $6745: $60
	add b                                            ; $6746: $80
	ldh [rP1], a                                     ; $6747: $e0 $00
	add b                                            ; $6749: $80
	rst $38                                          ; $674a: $ff
	ld b, c                                          ; $674b: $41
	add b                                            ; $674c: $80
	ld b, l                                          ; $674d: $45
	ld a, l                                          ; $674e: $7d
	ldh [c], a                                       ; $674f: $e2
	cp $72                                           ; $6750: $fe $72
	rst $38                                          ; $6752: $ff
	ret c                                            ; $6753: $d8

	ccf                                              ; $6754: $3f
	db $eb                                           ; $6755: $eb
	rst SubAFromDE                                          ; $6756: $df
	ld [hl], e                                       ; $6757: $73
	cpl                                              ; $6758: $2f
	rst FarCall                                          ; $6759: $f7
	rra                                              ; $675a: $1f
	dec l                                            ; $675b: $2d
	sbc $40                                          ; $675c: $de $40
	ret nz                                           ; $675e: $c0

	ld a, a                                          ; $675f: $7f
	sub d                                            ; $6760: $92
	rst $38                                          ; $6761: $ff
	ld b, [hl]                                       ; $6762: $46
	rst $38                                          ; $6763: $ff
	cp l                                             ; $6764: $bd
	jp $807f                                         ; $6765: $c3 $7f $80


	ld [bc], a                                       ; $6768: $02
	db $fc                                           ; $6769: $fc
	pop hl                                           ; $676a: $e1
	or $f2                                           ; $676b: $f6 $f2
	add hl, de                                       ; $676d: $19
	ld [hl], a                                       ; $676e: $77
	ret nc                                           ; $676f: $d0

	sub e                                            ; $6770: $93
	ld a, a                                          ; $6771: $7f
	ldh [$9f], a                                     ; $6772: $e0 $9f
	ld hl, sp+$67                                    ; $6774: $f8 $67
	db $fc                                           ; $6776: $fc
	inc sp                                           ; $6777: $33
	ld a, [hl]                                       ; $6778: $7e
	add hl, de                                       ; $6779: $19
	dec sp                                           ; $677a: $3b
	add hl, bc                                       ; $677b: $09
	sbc l                                            ; $677c: $9d
	ld c, e                                          ; $677d: $4b
	and b                                            ; $677e: $a0
	sbc b                                            ; $677f: $98
	add b                                            ; $6780: $80
	ld bc, $ff01                                     ; $6781: $01 $01 $ff
	rst $38                                          ; $6784: $ff
	db $fd                                           ; $6785: $fd
	inc bc                                           ; $6786: $03
	ld e, a                                          ; $6787: $5f
	cp $7f                                           ; $6788: $fe $7f
	xor $4f                                          ; $678a: $ee $4f
	cp $7f                                           ; $678c: $fe $7f
	or d                                             ; $678e: $b2
	ld a, e                                          ; $678f: $7b
	cp $7f                                           ; $6790: $fe $7f
	xor h                                            ; $6792: $ac
	ld h, e                                          ; $6793: $63
	cp $dc                                           ; $6794: $fe $dc
	rst $38                                          ; $6796: $ff
	ld l, a                                          ; $6797: $6f
	call nz, $ffde                                   ; $6798: $c4 $de $ff
	sbc l                                            ; $679b: $9d
	xor d                                            ; $679c: $aa
	add b                                            ; $679d: $80
	ld c, e                                          ; $679e: $4b
	ldh a, [$73]                                     ; $679f: $f0 $73
	ld a, [$f053]                                    ; $67a1: $fa $53 $f0
	sbc [hl]                                         ; $67a4: $9e
	ld hl, sp+$7b                                    ; $67a5: $f8 $7b
	cp $9e                                           ; $67a7: $fe $9e
	ld [$fe73], sp                                   ; $67a9: $08 $73 $fe
	sbc h                                            ; $67ac: $9c
	ret z                                            ; $67ad: $c8

	rst $38                                          ; $67ae: $ff
	ld c, b                                          ; $67af: $48
	ld a, e                                          ; $67b0: $7b
	cp $5b                                           ; $67b1: $fe $5b
	inc h                                            ; $67b3: $24
	ld a, a                                          ; $67b4: $7f
	cp $9e                                           ; $67b5: $fe $9e
	ld c, $53                                        ; $67b7: $0e $53
	ldh a, [c]                                       ; $67b9: $f2
	ld [hl], e                                       ; $67ba: $73
	ld [de], a                                       ; $67bb: $12
	ld b, a                                          ; $67bc: $47
	ldh a, [$5a]                                     ; $67bd: $f0 $5a
	call nz, $fe7f                                   ; $67bf: $c4 $7f $fe
	sbc l                                            ; $67c2: $9d
	rra                                              ; $67c3: $1f
	add hl, bc                                       ; $67c4: $09
	ld d, [hl]                                       ; $67c5: $56
	call nz, $fe7f                                   ; $67c6: $c4 $7f $fe
	sbc l                                            ; $67c9: $9d
	call c, $0740                                    ; $67ca: $dc $40 $07
	ret nz                                           ; $67cd: $c0

	add b                                            ; $67ce: $80
	db $fc                                           ; $67cf: $fc
	rra                                              ; $67d0: $1f
	ld hl, sp+$1c                                    ; $67d1: $f8 $1c
	pop af                                           ; $67d3: $f1
	dec sp                                           ; $67d4: $3b
	db $e3                                           ; $67d5: $e3
	scf                                              ; $67d6: $37
	add $7f                                          ; $67d7: $c6 $7f
	call z, $987e                                    ; $67d9: $cc $7e $98
	rst $38                                          ; $67dc: $ff
	xor e                                            ; $67dd: $ab
	rst AddAOntoHL                                          ; $67de: $ef
	ld bc, $0300                                     ; $67df: $01 $00 $03
	db $fc                                           ; $67e2: $fc
	and h                                            ; $67e3: $a4
	jp $01c7                                         ; $67e4: $c3 $c7 $01


	inc bc                                           ; $67e7: $03
	nop                                              ; $67e8: $00
	ld a, [hl]                                       ; $67e9: $7e
	ccf                                              ; $67ea: $3f
	push bc                                          ; $67eb: $c5
	jp $801b                                         ; $67ec: $c3 $1b $80


	rlca                                             ; $67ef: $07
	adc d                                            ; $67f0: $8a
	ld a, h                                          ; $67f1: $7c
	inc a                                            ; $67f2: $3c
	rst $38                                          ; $67f3: $ff
	ld e, a                                          ; $67f4: $5f
	db $e3                                           ; $67f5: $e3
	or l                                             ; $67f6: $b5
	add $eb                                          ; $67f7: $c6 $eb
	adc h                                            ; $67f9: $8c
	rst SubAFromHL                                          ; $67fa: $d7
	sbc e                                            ; $67fb: $9b
	ld l, [hl]                                       ; $67fc: $6e
	cp a                                             ; $67fd: $bf
	ld a, l                                          ; $67fe: $7d
	rst $38                                          ; $67ff: $ff
	add hl, sp                                       ; $6800: $39
	inc c                                            ; $6801: $0c
	db $fc                                           ; $6802: $fc
	cp $1b                                           ; $6803: $fe $1b
	add a                                            ; $6805: $87
	ld c, $01                                        ; $6806: $0e $01
	rst $38                                          ; $6808: $ff
	ld a, a                                          ; $6809: $7f
	sbc l                                            ; $680a: $9d
	db $e3                                           ; $680b: $e3
	ld b, [hl]                                       ; $680c: $46
	add c                                            ; $680d: $81
	add a                                            ; $680e: $87
	rst SubAFromDE                                          ; $680f: $df
	db $fc                                           ; $6810: $fc
	ld d, h                                          ; $6811: $54
	adc h                                            ; $6812: $8c
	ld [$5606], a                                    ; $6813: $ea $06 $56
	ld [hl+], a                                      ; $6816: $22
	jp hl                                            ; $6817: $e9


	db $d3                                           ; $6818: $d3
	db $e3                                           ; $6819: $e3
	ld sp, hl                                        ; $681a: $f9
	ld [hl], a                                       ; $681b: $77
	adc c                                            ; $681c: $89
	or d                                             ; $681d: $b2
	call $ec57                                       ; $681e: $cd $57 $ec
	rst $38                                          ; $6821: $ff
	ret nz                                           ; $6822: $c0

	rst $38                                          ; $6823: $ff
	ret nz                                           ; $6824: $c0

	ld a, a                                          ; $6825: $7f
	ld h, b                                          ; $6826: $60
	ld [hl], a                                       ; $6827: $77
	cp $99                                           ; $6828: $fe $99
	ccf                                              ; $682a: $3f
	ldh a, [$bf]                                     ; $682b: $f0 $bf
	ldh a, [$df]                                     ; $682d: $f0 $df
	ldh a, [rRP]                                     ; $682f: $f0 $56
	call nz, $c032                                   ; $6831: $c4 $32 $c0
	ld e, d                                          ; $6834: $5a
	call nz, $fe77                                   ; $6835: $c4 $77 $fe
	sub [hl]                                         ; $6838: $96
	push de                                          ; $6839: $d5
	add b                                            ; $683a: $80
	xor d                                            ; $683b: $aa
	add b                                            ; $683c: $80
	sub l                                            ; $683d: $95
	add b                                            ; $683e: $80
	add d                                            ; $683f: $82

jr_05e_6840:
	add b                                            ; $6840: $80
	add l                                            ; $6841: $85
	jp c, $9b80                                      ; $6842: $da $80 $9b

	ld d, l                                          ; $6845: $55
	nop                                              ; $6846: $00
	xor d                                            ; $6847: $aa
	nop                                              ; $6848: $00
	ld l, a                                          ; $6849: $6f
	db $fc                                           ; $684a: $fc
	sbc [hl]                                         ; $684b: $9e
	ld [bc], a                                       ; $684c: $02
	ld a, e                                          ; $684d: $7b
	db $fc                                           ; $684e: $fc
	sbc [hl]                                         ; $684f: $9e
	ld a, [hl+]                                      ; $6850: $2a
	ld l, e                                          ; $6851: $6b
	db $f4                                           ; $6852: $f4
	ld h, a                                          ; $6853: $67
	db $fc                                           ; $6854: $fc
	sbc l                                            ; $6855: $9d
	ld a, [bc]                                       ; $6856: $0a
	nop                                              ; $6857: $00
	ld [hl], d                                       ; $6858: $72
	call z, $fe5b                                    ; $6859: $cc $5b $fe
	ld a, [hl]                                       ; $685c: $7e
	adc $77                                          ; $685d: $ce $77

jr_05e_685f:
	cp $95                                           ; $685f: $fe $95
	rrca                                             ; $6861: $0f
	ld bc, $1f1e                                     ; $6862: $01 $1e $1f
	ld [hl+], a                                      ; $6865: $22
	ccf                                              ; $6866: $3f
	ld [hl], b                                       ; $6867: $70
	ld a, a                                          ; $6868: $7f
	add b                                            ; $6869: $80
	sbc a                                            ; $686a: $9f
	db $fd                                           ; $686b: $fd
	rst SubAFromDE                                          ; $686c: $df
	ld hl, sp-$6b                                    ; $686d: $f8 $95
	ld a, a                                          ; $686f: $7f
	add a                                            ; $6870: $87
	add b                                            ; $6871: $80
	ld a, a                                          ; $6872: $7f
	ld a, [hl]                                       ; $6873: $7e
	adc a                                            ; $6874: $8f
	add c                                            ; $6875: $81
	ld a, a                                          ; $6876: $7f
	jr z, jr_05e_6840                                ; $6877: $28 $c7

	ld sp, hl                                        ; $6879: $f9
	rst SubAFromDE                                          ; $687a: $df
	ret nz                                           ; $687b: $c0

	sbc b                                            ; $687c: $98
	jr nz, jr_05e_685f                               ; $687d: $20 $e0

	sub b                                            ; $687f: $90
	ldh a, [rBCPS]                                   ; $6880: $f0 $68
	ld hl, sp+$1f                                    ; $6882: $f8 $1f
	ld a, d                                          ; $6884: $7a
	call z, $fe57                                    ; $6885: $cc $57 $fe
	ld a, [hl]                                       ; $6888: $7e
	adc $67                                          ; $6889: $ce $67
	cp $99                                           ; $688b: $fe $99
	rst SubAFromDE                                          ; $688d: $df
	ld b, e                                          ; $688e: $43
	call c, $d14f                                    ; $688f: $dc $4f $d1
	ld d, a                                          ; $6892: $57
	rst FarCall                                          ; $6893: $f7
	rst SubAFromDE                                          ; $6894: $df
	ld [hl], b                                       ; $6895: $70
	sbc e                                            ; $6896: $9b
	adc h                                            ; $6897: $8c
	db $fc                                           ; $6898: $fc
	ld b, $fe                                        ; $6899: $06 $fe
	pop af                                           ; $689b: $f1
	add b                                            ; $689c: $80
	adc $cc                                          ; $689d: $ce $cc
	sub [hl]                                         ; $689f: $96
	sbc c                                            ; $68a0: $99
	cpl                                              ; $68a1: $2f
	scf                                              ; $68a2: $37
	ld a, l                                          ; $68a3: $7d
	ld a, a                                          ; $68a4: $7f
	ld c, $0a                                        ; $68a5: $0e $0a
	ld a, [de]                                       ; $68a7: $1a
	ld d, $17                                        ; $68a8: $16 $17
	ld e, $1b                                        ; $68aa: $1e $1b
	ld a, [de]                                       ; $68ac: $1a
	ld c, d                                          ; $68ad: $4a
	add hl, sp                                       ; $68ae: $39
	ld [hl], l                                       ; $68af: $75
	di                                               ; $68b0: $f3
	cp e                                             ; $68b1: $bb
	sub [hl]                                         ; $68b2: $96
	ld e, a                                          ; $68b3: $5f
	inc [hl]                                         ; $68b4: $34
	or a                                             ; $68b5: $b7
	ld a, h                                          ; $68b6: $7c

jr_05e_68b7:
	ld a, a                                          ; $68b7: $7f
	db $ec                                           ; $68b8: $ec
	ld a, a                                          ; $68b9: $7f
	call z, $94ff                                    ; $68ba: $cc $ff $94
	add h                                            ; $68bd: $84
	xor $f3                                          ; $68be: $ee $f3
	ei                                               ; $68c0: $fb
	sbc l                                            ; $68c1: $9d
	db $fd                                           ; $68c2: $fd
	rlca                                             ; $68c3: $07
	rst $38                                          ; $68c4: $ff
	inc bc                                           ; $68c5: $03
	rst $38                                          ; $68c6: $ff
	ld bc, $8e6e                                     ; $68c7: $01 $6e $8e
	add b                                            ; $68ca: $80
	xor e                                            ; $68cb: $ab
	inc sp                                           ; $68cc: $33
	ld d, l                                          ; $68cd: $55
	sbc c                                            ; $68ce: $99
	cp e                                             ; $68cf: $bb
	call c, Call_05e_77dc                            ; $68d0: $dc $dc $77
	cp $33                                           ; $68d3: $fe $33
	rst $38                                          ; $68d5: $ff
	ld sp, $3cdf                                     ; $68d6: $31 $df $3c
	ld l, a                                          ; $68d9: $6f
	ldh a, [$e5]                                     ; $68da: $f0 $e5
	ld a, [hl]                                       ; $68dc: $7e
	or a                                             ; $68dd: $b7
	cp $df                                           ; $68de: $fe $df
	cp $ed                                           ; $68e0: $fe $ed
	cp a                                             ; $68e2: $bf
	rst AddAOntoHL                                          ; $68e3: $ef
	or l                                             ; $68e4: $b5
	ld hl, sp-$6b                                    ; $68e5: $f8 $95
	ld hl, sp-$30                                    ; $68e7: $f8 $d0
	ld a, d                                          ; $68e9: $7a
	sbc c                                            ; $68ea: $99
	ret nc                                           ; $68eb: $d0

	cp a                                             ; $68ec: $bf
	ldh a, [$9f]                                     ; $68ed: $f0 $9f
	ldh a, [$5f]                                     ; $68ef: $f0 $5f
	ld a, e                                          ; $68f1: $7b
	cp $9e                                           ; $68f2: $fe $9e
	ld a, a                                          ; $68f4: $7f
	ld a, d                                          ; $68f5: $7a
	jp nz, $ff9e                                     ; $68f6: $c2 $9e $ff

	ld a, e                                          ; $68f9: $7b
	db $f4                                           ; $68fa: $f4
	ld a, [bc]                                       ; $68fb: $0a
	ret nz                                           ; $68fc: $c0

	sbc [hl]                                         ; $68fd: $9e
	cp a                                             ; $68fe: $bf
	ld d, d                                          ; $68ff: $52
	jp nz, $cf9c                                     ; $6900: $c2 $9c $cf

	ld [hl], d                                       ; $6903: $72
	rst $38                                          ; $6904: $ff
	rst SubAFromHL                                          ; $6905: $d7
	add b                                            ; $6906: $80
	rst SubAFromDE                                          ; $6907: $df
	ld hl, sp+$7f                                    ; $6908: $f8 $7f
	ld d, d                                          ; $690a: $52
	sbc [hl]                                         ; $690b: $9e
	ccf                                              ; $690c: $3f
	halt                                             ; $690d: $76
	dec e                                            ; $690e: $1d
	cp $df                                           ; $690f: $fe $df
	inc bc                                           ; $6911: $03
	rst SubAFromDE                                          ; $6912: $df
	rlca                                             ; $6913: $07
	sbc c                                            ; $6914: $99
	ld a, [bc]                                       ; $6915: $0a
	inc c                                            ; $6916: $0c
	inc c                                            ; $6917: $0c
	rrca                                             ; $6918: $0f

jr_05e_6919:
	rla                                              ; $6919: $17
	jr jr_05e_6919                                   ; $691a: $18 $fd

	rst SubAFromDE                                          ; $691c: $df
	rst FarCall                                          ; $691d: $f7
	sub l                                            ; $691e: $95
	dec hl                                           ; $691f: $2b
	sbc h                                            ; $6920: $9c
	call nc, $7fcb                                   ; $6921: $d4 $cb $7f
	jr nz, jr_05e_68b7                               ; $6924: $20 $91

	ld l, $3c                                        ; $6926: $2e $3c
	jp $ca72                                         ; $6928: $c3 $72 $ca


	sbc e                                            ; $692b: $9b
	ret z                                            ; $692c: $c8

	ld a, a                                          ; $692d: $7f
	add sp, $1f                                      ; $692e: $e8 $1f
	ld a, c                                          ; $6930: $79
	ld a, b                                          ; $6931: $78
	add b                                            ; $6932: $80
	rrca                                             ; $6933: $0f
	db $fc                                           ; $6934: $fc
	rlca                                             ; $6935: $07
	sbc h                                            ; $6936: $9c
	ld b, d                                          ; $6937: $42
	dec a                                            ; $6938: $3d
	ret c                                            ; $6939: $d8

	ld h, a                                          ; $693a: $67
	and l                                            ; $693b: $a5
	jp c, $b64d                                      ; $693c: $da $4d $b6

	call c, $ad26                                    ; $693f: $dc $26 $ad
	ld b, [hl]                                       ; $6942: $46
	ld [de], a                                       ; $6943: $12
	rst SubAFromHL                                          ; $6944: $d7
	ld d, c                                          ; $6945: $51
	db $db                                           ; $6946: $db
	nop                                              ; $6947: $00
	di                                               ; $6948: $f3
	db $10                                           ; $6949: $10
	ld hl, sp+$49                                    ; $694a: $f8 $49
	db $fd                                           ; $694c: $fd
	ld b, h                                          ; $694d: $44
	sbc $26                                          ; $694e: $de $26
	rst AddAOntoHL                                          ; $6950: $ef
	inc sp                                           ; $6951: $33
	add b                                            ; $6952: $80
	ld [hl], a                                       ; $6953: $77
	add hl, de                                       ; $6954: $19
	cp a                                             ; $6955: $bf
	add a                                            ; $6956: $87
	rst $38                                          ; $6957: $ff
	inc e                                            ; $6958: $1c
	db $fc                                           ; $6959: $fc
	rlca                                             ; $695a: $07
	rst $38                                          ; $695b: $ff
	nop                                              ; $695c: $00
	ccf                                              ; $695d: $3f
	jp $3fff                                         ; $695e: $c3 $ff $3f


	ld a, a                                          ; $6961: $7f
	ld h, c                                          ; $6962: $61
	sbc a                                            ; $6963: $9f
	cp c                                             ; $6964: $b9
	rst JumpTable                                          ; $6965: $c7
	jp $1fff                                         ; $6966: $c3 $ff $1f


	add hl, bc                                       ; $6969: $09
	rst SubAFromDE                                          ; $696a: $df
	ret                                              ; $696b: $c9


	sbc a                                            ; $696c: $9f
	adc c                                            ; $696d: $89
	rra                                              ; $696e: $1f
	add hl, bc                                       ; $696f: $09
	ld e, $0b                                        ; $6970: $1e $0b
	add b                                            ; $6972: $80
	inc e                                            ; $6973: $1c
	rrca                                             ; $6974: $0f
	inc e                                            ; $6975: $1c
	rrca                                             ; $6976: $0f
	db $fc                                           ; $6977: $fc
	rrca                                             ; $6978: $0f
	ld [$f865], a                                    ; $6979: $ea $65 $f8
	ld l, l                                          ; $697c: $6d
	ret                                              ; $697d: $c9


	db $fd                                           ; $697e: $fd
	ld e, e                                          ; $697f: $5b
	db $fd                                           ; $6980: $fd
	ld e, l                                          ; $6981: $5d
	rst FarCall                                          ; $6982: $f7
	ld e, l                                          ; $6983: $5d
	rst FarCall                                          ; $6984: $f7
	ccf                                              ; $6985: $3f
	ldh [c], a                                       ; $6986: $e2
	inc a                                            ; $6987: $3c
	db $ec                                           ; $6988: $ec
	ld [de], a                                       ; $6989: $12
	adc $2b                                          ; $698a: $ce $2b
	push bc                                          ; $698c: $c5
	ld h, l                                          ; $698d: $65
	add c                                            ; $698e: $81
	ld b, l                                          ; $698f: $45
	and b                                            ; $6990: $a0
	dec hl                                           ; $6991: $2b
	sbc b                                            ; $6992: $98
	db $e4                                           ; $6993: $e4
	and b                                            ; $6994: $a0
	rst $38                                          ; $6995: $ff
	ldh a, [$7f]                                     ; $6996: $f0 $7f
	ld sp, hl                                        ; $6998: $f9
	rrca                                             ; $6999: $0f
	ei                                               ; $699a: $fb
	reti                                             ; $699b: $d9


	add b                                            ; $699c: $80
	ld a, a                                          ; $699d: $7f
	or l                                             ; $699e: $b5
	sbc e                                            ; $699f: $9b
	ld [de], a                                       ; $69a0: $12
	inc de                                           ; $69a1: $13
	ld [de], a                                       ; $69a2: $12
	inc de                                           ; $69a3: $13
	db $db                                           ; $69a4: $db

Call_05e_69a5:
	ld bc, $029c                                     ; $69a5: $01 $9c $02
	inc bc                                           ; $69a8: $03
	ld [bc], a                                       ; $69a9: $02
	ld a, b                                          ; $69aa: $78
	inc a                                            ; $69ab: $3c
	sbc e                                            ; $69ac: $9b
	rst SubAFromDE                                          ; $69ad: $df
	cp h                                             ; $69ae: $bc
	cp e                                             ; $69af: $bb
	and $79                                          ; $69b0: $e6 $79
	cp h                                             ; $69b2: $bc
	ld a, e                                          ; $69b3: $7b
	inc h                                            ; $69b4: $24
	sub [hl]                                         ; $69b5: $96
	ei                                               ; $69b6: $fb
	add a                                            ; $69b7: $87
	or $cf                                           ; $69b8: $f6 $cf
	cp $ca                                           ; $69ba: $fe $ca
	db $fd                                           ; $69bc: $fd
	inc bc                                           ; $69bd: $03
	cp $7b                                           ; $69be: $fe $7b
	adc a                                            ; $69c0: $8f
	ld [hl], a                                       ; $69c1: $77
	cp $90                                           ; $69c2: $fe $90
	ld h, a                                          ; $69c4: $67
	add b                                            ; $69c5: $80
	add e                                            ; $69c6: $83
	ret nz                                           ; $69c7: $c0

	ld b, c                                          ; $69c8: $41
	ld b, b                                          ; $69c9: $40
	cp a                                             ; $69ca: $bf
	ret nz                                           ; $69cb: $c0

	ld hl, sp+$00                                    ; $69cc: $f8 $00
	ldh [rP1], a                                     ; $69ce: $e0 $00
	ret nz                                           ; $69d0: $c0

	nop                                              ; $69d1: $00
	db $fc                                           ; $69d2: $fc
	ld a, e                                          ; $69d3: $7b
	db $fc                                           ; $69d4: $fc
	add c                                            ; $69d5: $81
	sbc [hl]                                         ; $69d6: $9e
	ld a, $b8                                        ; $69d7: $3e $b8
	ld [hl], b                                       ; $69d9: $70
	ld hl, sp+$33                                    ; $69da: $f8 $33
	ld a, e                                          ; $69dc: $7b
	scf                                              ; $69dd: $37
	ccf                                              ; $69de: $3f
	inc d                                            ; $69df: $14
	inc [hl]                                         ; $69e0: $34
	inc e                                            ; $69e1: $1c
	inc e                                            ; $69e2: $1c
	dec de                                           ; $69e3: $1b
	add hl, de                                       ; $69e4: $19
	dec bc                                           ; $69e5: $0b
	dec de                                           ; $69e6: $1b
	dec bc                                           ; $69e7: $0b
	ld a, [bc]                                       ; $69e8: $0a
	dec bc                                           ; $69e9: $0b
	sbc a                                            ; $69ea: $9f
	or b                                             ; $69eb: $b0
	sbc a                                            ; $69ec: $9f
	sub b                                            ; $69ed: $90
	sbc a                                            ; $69ee: $9f
	ret nc                                           ; $69ef: $d0

	ld e, a                                          ; $69f0: $5f
	ret nc                                           ; $69f1: $d0

	ld e, a                                          ; $69f2: $5f
	ld [hl], b                                       ; $69f3: $70
	ld [hl], e                                       ; $69f4: $73
	cp $9e                                           ; $69f5: $fe $9e
	ld a, a                                          ; $69f7: $7f
	halt                                             ; $69f8: $76
	call z, $fe9e                                    ; $69f9: $cc $9e $fe
	ld [hl], e                                       ; $69fc: $73
	cp $72                                           ; $69fd: $fe $72

Jump_05e_69ff:
	jp nz, $a57b                                     ; $69ff: $c2 $7b $a5

	ld a, a                                          ; $6a02: $7f
	or l                                             ; $6a03: $b5
	add b                                            ; $6a04: $80
	sub c                                            ; $6a05: $91
	ld l, [hl]                                       ; $6a06: $6e
	db $db                                           ; $6a07: $db
	inc h                                            ; $6a08: $24
	rst AddAOntoHL                                          ; $6a09: $ef
	or b                                             ; $6a0a: $b0
	or d                                             ; $6a0b: $b2
	db $fd                                           ; $6a0c: $fd
	ret c                                            ; $6a0d: $d8

	rst $38                                          ; $6a0e: $ff
	db $ed                                           ; $6a0f: $ed
	and a                                            ; $6a10: $a7
	pop hl                                           ; $6a11: $e1
	cp $4f                                           ; $6a12: $fe $4f
	ldh a, [$df]                                     ; $6a14: $f0 $df
	ldh [$bd], a                                     ; $6a16: $e0 $bd
	ret nz                                           ; $6a18: $c0

	sub b                                            ; $6a19: $90
	call nz, $d484                                   ; $6a1a: $c4 $84 $d4
	adc a                                            ; $6a1d: $8f
	call nc, $dab7                                   ; $6a1e: $d4 $b7 $da
	db $fd                                           ; $6a21: $fd
	inc bc                                           ; $6a22: $03
	sub $80                                          ; $6a23: $d6 $80
	dec c                                            ; $6a25: $0d
	rlc [hl]                                         ; $6a26: $cb $06
	dec b                                            ; $6a28: $05
	add e                                            ; $6a29: $83
	and $99                                          ; $6a2a: $e6 $99
	cp e                                             ; $6a2c: $bb
	call z, $ec57                                    ; $6a2d: $cc $57 $ec
	cp l                                             ; $6a30: $bd
	ld a, [hl]                                       ; $6a31: $7e
	xor h                                            ; $6a32: $ac
	or e                                             ; $6a33: $b3
	cp d                                             ; $6a34: $ba
	and [hl]                                         ; $6a35: $a6
	ld d, l                                          ; $6a36: $55
	db $ec                                           ; $6a37: $ec
	ld e, [hl]                                       ; $6a38: $5e
	jp hl                                            ; $6a39: $e9


	jp c, $d5f1                                      ; $6a3a: $da $f1 $d5

	ldh a, [c]                                       ; $6a3d: $f2
	ld [hl], h                                       ; $6a3e: $74
	ldh [c], a                                       ; $6a3f: $e2
	ld a, d                                          ; $6a40: $7a
	db $e4                                           ; $6a41: $e4
	rst $38                                          ; $6a42: $ff
	nop                                              ; $6a43: $00
	sbc h                                            ; $6a44: $9c
	cp [hl]                                          ; $6a45: $be
	ld b, b                                          ; $6a46: $40
	ld a, a                                          ; $6a47: $7f
	ld a, e                                          ; $6a48: $7b
	ld c, b                                          ; $6a49: $48
	add b                                            ; $6a4a: $80
	ld e, a                                          ; $6a4b: $5f
	jr nz, jr_05e_6a8d                               ; $6a4c: $20 $3f

	ld b, b                                          ; $6a4e: $40
	cp a                                             ; $6a4f: $bf
	ld b, b                                          ; $6a50: $40
	cp d                                             ; $6a51: $ba
	ld b, b                                          ; $6a52: $40
	inc hl                                           ; $6a53: $23
	adc $83                                          ; $6a54: $ce $83
	ld h, [hl]                                       ; $6a56: $66
	ld b, l                                          ; $6a57: $45
	inc sp                                           ; $6a58: $33
	xor c                                            ; $6a59: $a9
	inc de                                           ; $6a5a: $13
	ld d, a                                          ; $6a5b: $57
	adc c                                            ; $6a5c: $89
	and [hl]                                         ; $6a5d: $a6
	ld c, c                                          ; $6a5e: $49
	ld a, [hl+]                                      ; $6a5f: $2a
	ld b, l                                          ; $6a60: $45
	ld e, d                                          ; $6a61: $5a
	dec h                                            ; $6a62: $25
	ld c, b                                          ; $6a63: $48
	db $fd                                           ; $6a64: $fd
	and a                                            ; $6a65: $a7
	rst $38                                          ; $6a66: $ff
	cp $7f                                           ; $6a67: $fe $7f
	inc de                                           ; $6a69: $13
	adc b                                            ; $6a6a: $88
	rra                                              ; $6a6b: $1f
	ld a, [bc]                                       ; $6a6c: $0a
	ld a, [bc]                                       ; $6a6d: $0a
	ld hl, sp+$08                                    ; $6a6e: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $6a70: $f0 $10
	ld hl, sp+$08                                    ; $6a72: $f8 $08
	ld h, d                                          ; $6a74: $62
	rst $38                                          ; $6a75: $ff
	db $fc                                           ; $6a76: $fc
	sbc a                                            ; $6a77: $9f
	dec de                                           ; $6a78: $1b
	rrca                                             ; $6a79: $0f
	inc c                                            ; $6a7a: $0c
	add [hl]                                         ; $6a7b: $86
	add l                                            ; $6a7c: $85
	add l                                            ; $6a7d: $85
	dec b                                            ; $6a7e: $05
	nop                                              ; $6a7f: $00
	inc bc                                           ; $6a80: $03
	ld bc, $a278                                     ; $6a81: $01 $78 $a2
	ld a, e                                          ; $6a84: $7b
	ld [hl], l                                       ; $6a85: $75
	sub c                                            ; $6a86: $91
	ld [bc], a                                       ; $6a87: $02
	cp $84                                           ; $6a88: $fe $84
	db $fc                                           ; $6a8a: $fc
	add h                                            ; $6a8b: $84
	db $fc                                           ; $6a8c: $fc

jr_05e_6a8d:
	adc a                                            ; $6a8d: $8f
	ld hl, sp-$31                                    ; $6a8e: $f8 $cf
	ld hl, sp-$21                                    ; $6a90: $f8 $df
	ldh a, [$fe]                                     ; $6a92: $f0 $fe
	dec bc                                           ; $6a94: $0b
	ld [hl], h                                       ; $6a95: $74
	ld c, d                                          ; $6a96: $4a
	ld a, d                                          ; $6a97: $7a
	ret nz                                           ; $6a98: $c0

	sbc [hl]                                         ; $6a99: $9e
	ld a, [bc]                                       ; $6a9a: $0a
	ld [hl], a                                       ; $6a9b: $77
	or $7f                                           ; $6a9c: $f6 $7f
	cp $80                                           ; $6a9e: $fe $80
	db $f4                                           ; $6aa0: $f4
	inc h                                            ; $6aa1: $24
	ld a, [$f020]                                    ; $6aa2: $fa $20 $f0
	ldh [$db], a                                     ; $6aa5: $e0 $db
	ld d, d                                          ; $6aa7: $52
	db $10                                           ; $6aa8: $10
	jr @+$1a                                         ; $6aa9: $18 $18

	inc c                                            ; $6aab: $0c
	ccf                                              ; $6aac: $3f
	rra                                              ; $6aad: $1f
	ld a, a                                          ; $6aae: $7f
	add hl, de                                       ; $6aaf: $19
	ld l, l                                          ; $6ab0: $6d
	ld l, a                                          ; $6ab1: $6f
	dec hl                                           ; $6ab2: $2b
	ld l, $0a                                        ; $6ab3: $2e $0a
	ld c, $0c                                        ; $6ab5: $0e $0c
	inc e                                            ; $6ab7: $1c
	db $10                                           ; $6ab8: $10
	jr nc, jr_05e_6b3a                               ; $6ab9: $30 $7f

	ldh [rIE], a                                     ; $6abb: $e0 $ff
	ldh [$f0], a                                     ; $6abd: $e0 $f0
	sbc [hl]                                         ; $6abf: $9e
	db $10                                           ; $6ac0: $10
	ld [hl], h                                       ; $6ac1: $74
	ld a, $fb                                        ; $6ac2: $3e $fb
	ld l, h                                          ; $6ac4: $6c
	ld b, b                                          ; $6ac5: $40
	sbc c                                            ; $6ac6: $99
	inc b                                            ; $6ac7: $04
	rlca                                             ; $6ac8: $07
	db $fc                                           ; $6ac9: $fc
	rlca                                             ; $6aca: $07
	inc b                                            ; $6acb: $04
	rlca                                             ; $6acc: $07
	halt                                             ; $6acd: $76
	call nz, $9e75                                   ; $6ace: $c4 $75 $9e
	rst $38                                          ; $6ad1: $ff
	add b                                            ; $6ad2: $80
	ld a, [$f3aa]                                    ; $6ad3: $fa $aa $f3
	and e                                            ; $6ad6: $a3
	ld a, [$7fa2]                                    ; $6ad7: $fa $a2 $7f
	pop de                                           ; $6ada: $d1
	ld a, [hl]                                       ; $6adb: $7e
	ret nc                                           ; $6adc: $d0

	ccf                                              ; $6add: $3f
	ldh a, [$97]                                     ; $6ade: $f0 $97
	ld hl, sp+$7f                                    ; $6ae0: $f8 $7f
	ld l, b                                          ; $6ae2: $68
	ldh [$c0], a                                     ; $6ae3: $e0 $c0
	ld h, b                                          ; $6ae5: $60
	ret nz                                           ; $6ae6: $c0

	ldh [rLCDC], a                                   ; $6ae7: $e0 $40
	ldh [$a0], a                                     ; $6ae9: $e0 $a0
	ld h, b                                          ; $6aeb: $60
	jr nz, jr_05e_6b60                               ; $6aec: $20 $72

	ld hl, $06fe                                     ; $6aee: $21 $fe $06
	ldh a, [$9b]                                     ; $6af1: $f0 $9b
	db $10                                           ; $6af3: $10

jr_05e_6af4:
	ldh [rP1], a                                     ; $6af4: $e0 $00
	ld b, b                                          ; $6af6: $40
	ld a, [$b37b]                                    ; $6af7: $fa $7b $b3
	sub a                                            ; $6afa: $97
	db $10                                           ; $6afb: $10
	ldh a, [rSVBK]                                   ; $6afc: $f0 $70
	ld [$0802], sp                                   ; $6afe: $08 $02 $08
	ld bc, $7901                                     ; $6b01: $01 $01 $79
	ldh [c], a                                       ; $6b04: $e2
	sbc e                                            ; $6b05: $9b
	dec b                                            ; $6b06: $05
	rlca                                             ; $6b07: $07
	dec b                                            ; $6b08: $05
	rrca                                             ; $6b09: $0f
	sbc $0d                                          ; $6b0a: $de $0d
	sbc b                                            ; $6b0c: $98
	dec e                                            ; $6b0d: $1d
	or b                                             ; $6b0e: $b0
	ldh [$bf], a                                     ; $6b0f: $e0 $bf
	rst $38                                          ; $6b11: $ff
	ccf                                              ; $6b12: $3f
	ldh [$79], a                                     ; $6b13: $e0 $79
	or h                                             ; $6b15: $b4
	ld a, a                                          ; $6b16: $7f
	ld a, [de]                                       ; $6b17: $1a
	ld a, a                                          ; $6b18: $7f
	cp $92                                           ; $6b19: $fe $92
	ret nz                                           ; $6b1b: $c0

	ccf                                              ; $6b1c: $3f
	ldh a, [rTAC]                                    ; $6b1d: $f0 $07
	ld bc, rIE                                     ; $6b1f: $01 $ff $ff
	cp $01                                           ; $6b22: $fe $01
	cp $01                                           ; $6b24: $fe $01
	rst $38                                          ; $6b26: $ff
	ld bc, $497b                                     ; $6b27: $01 $7b $49
	ld a, a                                          ; $6b2a: $7f
	cp $80                                           ; $6b2b: $fe $80
	ld b, $36                                        ; $6b2d: $06 $36
	ld [bc], a                                       ; $6b2f: $02
	inc b                                            ; $6b30: $04
	add d                                            ; $6b31: $82
	rst JumpTable                                          ; $6b32: $c7
	add b                                            ; $6b33: $80
	add a                                            ; $6b34: $87
	add b                                            ; $6b35: $80
	rst GetHLinHL                                          ; $6b36: $cf
	add c                                            ; $6b37: $81
	halt                                             ; $6b38: $76
	ld a, a                                          ; $6b39: $7f

jr_05e_6b3a:
	ld c, b                                          ; $6b3a: $48
	ld a, b                                          ; $6b3b: $78
	ld c, l                                          ; $6b3c: $4d
	db $fd                                           ; $6b3d: $fd
	sbc e                                            ; $6b3e: $9b
	db $fd                                           ; $6b3f: $fd
	ld c, [hl]                                       ; $6b40: $4e
	cp $4f                                           ; $6b41: $fe $4f
	ei                                               ; $6b43: $fb
	ld h, l                                          ; $6b44: $65
	db $fd                                           ; $6b45: $fd
	or a                                             ; $6b46: $b7
	xor h                                            ; $6b47: $ac
	ld a, e                                          ; $6b48: $7b
	ld [hl], $f9                                     ; $6b49: $36 $f9
	ld d, a                                          ; $6b4b: $57
	add b                                            ; $6b4c: $80
	rst $38                                          ; $6b4d: $ff
	sbc d                                            ; $6b4e: $9a
	db $fd                                           ; $6b4f: $fd
	add $7f                                          ; $6b50: $c6 $7f
	ld [hl-], a                                      ; $6b52: $32
	rla                                              ; $6b53: $17
	ld [de], a                                       ; $6b54: $12
	scf                                              ; $6b55: $37
	ld [bc], a                                       ; $6b56: $02
	add a                                            ; $6b57: $87
	add d                                            ; $6b58: $82
	ld c, [hl]                                       ; $6b59: $4e
	rlca                                             ; $6b5a: $07
	sbc a                                            ; $6b5b: $9f
	dec c                                            ; $6b5c: $0d
	rst SubAFromDE                                          ; $6b5d: $df
	ldh a, [$78]                                     ; $6b5e: $f0 $78

jr_05e_6b60:
	db $e4                                           ; $6b60: $e4
	ld e, c                                          ; $6b61: $59
	db $e4                                           ; $6b62: $e4
	ld d, l                                          ; $6b63: $55
	add sp, $57                                      ; $6b64: $e8 $57
	add sp, $56                                      ; $6b66: $e8 $56
	jp hl                                            ; $6b68: $e9


	add $f9                                          ; $6b69: $c6 $f9
	add $81                                          ; $6b6b: $c6 $81
	ld sp, hl                                        ; $6b6d: $f9
	xor $bb                                          ; $6b6e: $ee $bb
	ld a, b                                          ; $6b70: $78
	add b                                            ; $6b71: $80
	jr nc, jr_05e_6af4                               ; $6b72: $30 $80

	inc de                                           ; $6b74: $13
	add b                                            ; $6b75: $80
	ld e, e                                          ; $6b76: $5b
	add b                                            ; $6b77: $80
	ld c, e                                          ; $6b78: $4b
	sub b                                            ; $6b79: $90
	ld l, e                                          ; $6b7a: $6b
	sub b                                            ; $6b7b: $90
	ld l, [hl]                                       ; $6b7c: $6e
	sub c                                            ; $6b7d: $91
	ld l, [hl]                                       ; $6b7e: $6e
	sub c                                            ; $6b7f: $91
	ld e, d                                          ; $6b80: $5a
	dec h                                            ; $6b81: $25
	ld l, d                                          ; $6b82: $6a
	dec d                                            ; $6b83: $15
	ld l, d                                          ; $6b84: $6a
	dec d                                            ; $6b85: $15
	jr z, @+$59                                      ; $6b86: $28 $57

	xor b                                            ; $6b88: $a8
	ld d, a                                          ; $6b89: $57
	xor d                                            ; $6b8a: $aa
	ld [hl], e                                       ; $6b8b: $73
	cp $df                                           ; $6b8c: $fe $df
	ld [$14df], sp                                   ; $6b8e: $08 $df $14
	sub e                                            ; $6b91: $93
	ld l, d                                          ; $6b92: $6a
	ld a, d                                          ; $6b93: $7a
	xor e                                            ; $6b94: $ab
	db $eb                                           ; $6b95: $eb
	xor a                                            ; $6b96: $af
	xor a                                            ; $6b97: $af
	xor c                                            ; $6b98: $a9
	xor l                                            ; $6b99: $ad
	ld [hl], e                                       ; $6b9a: $73
	ld a, [$7223]                                    ; $6b9b: $fa $23 $72
	cp $80                                           ; $6b9e: $fe $80
	ld [$1800], sp                                   ; $6ba0: $08 $00 $18
	jr nc, jr_05e_6bd5                               ; $6ba3: $30 $30

	ldh a, [$f1]                                     ; $6ba5: $f0 $f1
	inc de                                           ; $6ba7: $13
	rra                                              ; $6ba8: $1f
	rst $38                                          ; $6ba9: $ff
	inc e                                            ; $6baa: $1c
	rst $38                                          ; $6bab: $ff
	db $10                                           ; $6bac: $10
	ld [hl], b                                       ; $6bad: $70
	ldh a, [rAUD4LEN]                                ; $6bae: $f0 $20
	ld h, b                                          ; $6bb0: $60
	jr nz, jr_05e_6c13                               ; $6bb1: $20 $60

	jr nc, @+$72                                     ; $6bb3: $30 $70

	ld hl, sp-$38                                    ; $6bb5: $f8 $c8
	rst $38                                          ; $6bb7: $ff
	inc b                                            ; $6bb8: $04
	rst $38                                          ; $6bb9: $ff
	rlca                                             ; $6bba: $07
	rst $38                                          ; $6bbb: $ff
	ld [bc], a                                       ; $6bbc: $02
	rra                                              ; $6bbd: $1f
	ld [$fe7b], sp                                   ; $6bbe: $08 $7b $fe
	halt                                             ; $6bc1: $76
	cp [hl]                                          ; $6bc2: $be
	add b                                            ; $6bc3: $80
	ld a, [bc]                                       ; $6bc4: $0a
	rst $38                                          ; $6bc5: $ff
	ld a, [bc]                                       ; $6bc6: $0a
	rst $38                                          ; $6bc7: $ff
	db $fc                                           ; $6bc8: $fc
	rst $38                                          ; $6bc9: $ff
	inc b                                            ; $6bca: $04
	rst SubAFromBC                                          ; $6bcb: $e7
	rst $38                                          ; $6bcc: $ff
	xor b                                            ; $6bcd: $a8
	rst AddAOntoHL                                          ; $6bce: $ef
	ld [hl], e                                       ; $6bcf: $73
	cp h                                             ; $6bd0: $bc
	ld a, a                                          ; $6bd1: $7f
	add b                                            ; $6bd2: $80
	ld a, a                                          ; $6bd3: $7f
	add b                                            ; $6bd4: $80

jr_05e_6bd5:
	ld b, b                                          ; $6bd5: $40
	rst SubAFromDE                                          ; $6bd6: $df
	ld h, b                                          ; $6bd7: $60
	rst $38                                          ; $6bd8: $ff
	add b                                            ; $6bd9: $80
	ld a, a                                          ; $6bda: $7f
	ccf                                              ; $6bdb: $3f
	rst $38                                          ; $6bdc: $ff
	inc a                                            ; $6bdd: $3c
	jp $07fa                                         ; $6bde: $c3 $fa $07


	push af                                          ; $6be1: $f5
	ld c, $9d                                        ; $6be2: $0e $9d
	dec b                                            ; $6be4: $05
	cp $7a                                           ; $6be5: $fe $7a
	rst SubAFromHL                                          ; $6be7: $d7
	sbc d                                            ; $6be8: $9a
	db $fc                                           ; $6be9: $fc
	inc sp                                           ; $6bea: $33
	call c, $0000                                   ; $6beb: $dc $00 $00
	sbc $c0                                          ; $6bee: $de $c0
	ld a, [hl]                                       ; $6bf0: $7e
	ldh a, [$97]                                     ; $6bf1: $f0 $97
	jr nz, jr_05e_6bd5                               ; $6bf3: $20 $e0

	jr nz, @+$01                                     ; $6bf5: $20 $ff

	ccf                                              ; $6bf7: $3f
	ldh a, [rAUD1SWEEP]                              ; $6bf8: $f0 $10
	rst $38                                          ; $6bfa: $ff
	ld a, d                                          ; $6bfb: $7a
	or b                                             ; $6bfc: $b0
	ld sp, hl                                        ; $6bfd: $f9
	rst SubAFromDE                                          ; $6bfe: $df
	rst $38                                          ; $6bff: $ff
	halt                                             ; $6c00: $76
	xor h                                            ; $6c01: $ac
	add b                                            ; $6c02: $80
	adc e                                            ; $6c03: $8b
	adc h                                            ; $6c04: $8c
	rst GetHLinHL                                          ; $6c05: $cf
	add h                                            ; $6c06: $84
	ld b, l                                          ; $6c07: $45
	ld b, [hl]                                       ; $6c08: $46
	ld h, [hl]                                       ; $6c09: $66
	ld b, e                                          ; $6c0a: $43
	inc hl                                           ; $6c0b: $23
	ld hl, $e6ff                                     ; $6c0c: $21 $ff $e6
	dec de                                           ; $6c0f: $1b
	dec de                                           ; $6c10: $1b
	rst $38                                          ; $6c11: $ff
	ld h, [hl]                                       ; $6c12: $66

jr_05e_6c13:
	and a                                            ; $6c13: $a7
	ld h, e                                          ; $6c14: $63
	rst $38                                          ; $6c15: $ff
	cpl                                              ; $6c16: $2f
	cp $1f                                           ; $6c17: $fe $1f
	db $fd                                           ; $6c19: $fd
	ld c, $7c                                        ; $6c1a: $0e $7c
	add a                                            ; $6c1c: $87
	cp a                                             ; $6c1d: $bf
	jp Jump_05e_60dc                                 ; $6c1e: $c3 $dc $60


	db $fc                                           ; $6c21: $fc
	sub e                                            ; $6c22: $93
	inc sp                                           ; $6c23: $33
	ldh a, [$f0]                                     ; $6c24: $f0 $f0
	and b                                            ; $6c26: $a0
	ldh a, [$b0]                                     ; $6c27: $f0 $b0
	ld h, b                                          ; $6c29: $60
	ld h, b                                          ; $6c2a: $60
	ret nz                                           ; $6c2b: $c0

	ret nz                                           ; $6c2c: $c0

	add b                                            ; $6c2d: $80
	add c                                            ; $6c2e: $81
	ld a, c                                          ; $6c2f: $79
	ld c, [hl]                                       ; $6c30: $4e
	adc d                                            ; $6c31: $8a
	add h                                            ; $6c32: $84
	rlca                                             ; $6c33: $07
	dec d                                            ; $6c34: $15
	rra                                              ; $6c35: $1f
	dec h                                            ; $6c36: $25
	ccf                                              ; $6c37: $3f
	inc hl                                           ; $6c38: $23
	ld [hl], e                                       ; $6c39: $73
	ld b, d                                          ; $6c3a: $42
	and $85                                          ; $6c3b: $e6 $85
	call $9a0b                                       ; $6c3d: $cd $0b $9a
	scf                                              ; $6c40: $37
	inc [hl]                                         ; $6c41: $34
	rst GetHLinHL                                          ; $6c42: $cf
	ret z                                            ; $6c43: $c8

	cp a                                             ; $6c44: $bf
	ldh [rIE], a                                     ; $6c45: $e0 $ff
	ld a, d                                          ; $6c47: $7a
	call nz, $ff9b                                   ; $6c48: $c4 $9b $ff
	and b                                            ; $6c4b: $a0
	rst $38                                          ; $6c4c: $ff
	jr nz, jr_05e_6cca                               ; $6c4d: $20 $7b

	cp $7b                                           ; $6c4f: $fe $7b
	and b                                            ; $6c51: $a0
	sub a                                            ; $6c52: $97
	ei                                               ; $6c53: $fb
	dec bc                                           ; $6c54: $0b
	ei                                               ; $6c55: $fb
	ld c, $ff                                        ; $6c56: $0e $ff
	inc c                                            ; $6c58: $0c
	rst $38                                          ; $6c59: $ff
	inc d                                            ; $6c5a: $14
	ld h, e                                          ; $6c5b: $63
	cp $90                                           ; $6c5c: $fe $90
	rst SubAFromHL                                          ; $6c5e: $d7
	or d                                             ; $6c5f: $b2
	ld l, a                                          ; $6c60: $6f
	and h                                            ; $6c61: $a4
	ld a, a                                          ; $6c62: $7f
	xor c                                            ; $6c63: $a9
	ld a, [hl]                                       ; $6c64: $7e
	or b                                             ; $6c65: $b0
	ld a, a                                          ; $6c66: $7f
	or a                                             ; $6c67: $b7
	ld a, b                                          ; $6c68: $78
	cp c                                             ; $6c69: $b9
	ld a, [hl]                                       ; $6c6a: $7e
	push hl                                          ; $6c6b: $e5
	ld a, $7b                                        ; $6c6c: $3e $7b
	db $e4                                           ; $6c6e: $e4
	ld a, [hl]                                       ; $6c6f: $7e
	ld a, [bc]                                       ; $6c70: $0a
	halt                                             ; $6c71: $76
	and h                                            ; $6c72: $a4
	add b                                            ; $6c73: $80
	ld c, $fe                                        ; $6c74: $0e $fe
	inc c                                            ; $6c76: $0c
	rst $38                                          ; $6c77: $ff
	inc de                                           ; $6c78: $13
	cp $17                                           ; $6c79: $fe $17

Jump_05e_6c7b:
	or c                                             ; $6c7b: $b1
	or c                                             ; $6c7c: $b1
	ld h, e                                          ; $6c7d: $63
	ld [hl+], a                                      ; $6c7e: $22
	ld h, a                                          ; $6c7f: $67
	inc h                                            ; $6c80: $24
	xor a                                            ; $6c81: $af
	ld l, b                                          ; $6c82: $68
	cp a                                             ; $6c83: $bf
	ld [hl], b                                       ; $6c84: $70
	ld a, $60                                        ; $6c85: $3e $60
	and c                                            ; $6c87: $a1
	add b                                            ; $6c88: $80
	ld a, a                                          ; $6c89: $7f
	rst $38                                          ; $6c8a: $ff
	ld [$ea3f], a                                    ; $6c8b: $ea $3f $ea
	ccf                                              ; $6c8e: $3f
	jp c, $da1f                                      ; $6c8f: $da $1f $da

	rrca                                             ; $6c92: $0f
	sub a                                            ; $6c93: $97
	cp d                                             ; $6c94: $ba
	rrca                                             ; $6c95: $0f
	ld a, [hl]                                       ; $6c96: $7e
	daa                                              ; $6c97: $27
	cp $47                                           ; $6c98: $fe $47
	rst $38                                          ; $6c9a: $ff
	add e                                            ; $6c9b: $83
	halt                                             ; $6c9c: $76
	call z, Call_05e_4e80                            ; $6c9d: $cc $80 $4e
	or c                                             ; $6ca0: $b1
	ld c, [hl]                                       ; $6ca1: $4e
	or c                                             ; $6ca2: $b1
	ld h, h                                          ; $6ca3: $64
	cp e                                             ; $6ca4: $bb
	ld h, $fb                                        ; $6ca5: $26 $fb
	ld [hl+], a                                      ; $6ca7: $22
	rst $38                                          ; $6ca8: $ff
	dec h                                            ; $6ca9: $25
	rst $38                                          ; $6caa: $ff
	cp d                                             ; $6cab: $ba
	ld d, a                                          ; $6cac: $57
	or d                                             ; $6cad: $b2
	ld e, a                                          ; $6cae: $5f
	or e                                             ; $6caf: $b3
	ld e, a                                          ; $6cb0: $5f
	db $d3                                           ; $6cb1: $d3
	ld a, a                                          ; $6cb2: $7f
	ld d, e                                          ; $6cb3: $53
	cp $57                                           ; $6cb4: $fe $57
	cp $af                                           ; $6cb6: $fe $af
	db $fc                                           ; $6cb8: $fc
	rst $38                                          ; $6cb9: $ff
	ldh a, [$37]                                     ; $6cba: $f0 $37
	daa                                              ; $6cbc: $27
	daa                                              ; $6cbd: $27
	sbc d                                            ; $6cbe: $9a
	inc b                                            ; $6cbf: $04
	daa                                              ; $6cc0: $27

Jump_05e_6cc1:
	adc h                                            ; $6cc1: $8c
	adc a                                            ; $6cc2: $8f
	adc b                                            ; $6cc3: $88
	ld a, b                                          ; $6cc4: $78
	ld [hl-], a                                      ; $6cc5: $32
	adc c                                            ; $6cc6: $89
	add hl, bc                                       ; $6cc7: $09
	rrca                                             ; $6cc8: $0f
	ld a, [bc]                                       ; $6cc9: $0a

jr_05e_6cca:
	rrca                                             ; $6cca: $0f
	dec c                                            ; $6ccb: $0d
	rst $38                                          ; $6ccc: $ff
	ldh [$60], a                                     ; $6ccd: $e0 $60
	ret nz                                           ; $6ccf: $c0

	ld e, a                                          ; $6cd0: $5f
	ret nz                                           ; $6cd1: $c0

	cp a                                             ; $6cd2: $bf
	cp a                                             ; $6cd3: $bf
	ldh [$7f], a                                     ; $6cd4: $e0 $7f

jr_05e_6cd6:
	cp l                                             ; $6cd6: $bd
	jp nz, $92ed                                     ; $6cd7: $c2 $ed $92

	ld e, l                                          ; $6cda: $5d
	and d                                            ; $6cdb: $a2
	rst $38                                          ; $6cdc: $ff
	ld a, c                                          ; $6cdd: $79
	ret c                                            ; $6cde: $d8

	sub d                                            ; $6cdf: $92
	ld a, a                                          ; $6ce0: $7f
	ld bc, $019f                                     ; $6ce1: $01 $9f $01
	rst GetHLinHL                                          ; $6ce4: $cf
	add b                                            ; $6ce5: $80
	ld l, a                                          ; $6ce6: $6f
	ret nz                                           ; $6ce7: $c0

	or a                                             ; $6ce8: $b7
	ld h, b                                          ; $6ce9: $60
	or a                                             ; $6cea: $b7
	ld h, b                                          ; $6ceb: $60
	rst $38                                          ; $6cec: $ff
	ld a, d                                          ; $6ced: $7a
	ld [$fe77], a                                    ; $6cee: $ea $77 $fe
	sub c                                            ; $6cf1: $91
	adc a                                            ; $6cf2: $8f
	db $fd                                           ; $6cf3: $fd
	cp a                                             ; $6cf4: $bf
	push af                                          ; $6cf5: $f5
	rst $38                                          ; $6cf6: $ff
	ret z                                            ; $6cf7: $c8

	rst $38                                          ; $6cf8: $ff
	ret z                                            ; $6cf9: $c8

	ret nz                                           ; $6cfa: $c0

	ccf                                              ; $6cfb: $3f
	add a                                            ; $6cfc: $87
	cp b                                             ; $6cfd: $b8
	rst GetHLinHL                                          ; $6cfe: $cf
	ldh a, [$7a]                                     ; $6cff: $f0 $7a
	rst FarCall                                          ; $6d01: $f7
	ld [hl], l                                       ; $6d02: $75
	dec de                                           ; $6d03: $1b
	ld a, e                                          ; $6d04: $7b
	cp $89                                           ; $6d05: $fe $89
	db $eb                                           ; $6d07: $eb
	inc e                                            ; $6d08: $1c
	db $eb                                           ; $6d09: $eb
	inc e                                            ; $6d0a: $1c
	adc d                                            ; $6d0b: $8a
	ld a, l                                          ; $6d0c: $7d
	ld c, $ff                                        ; $6d0d: $0e $ff
	add hl, de                                       ; $6d0f: $19
	cp $67                                           ; $6d10: $fe $67
	ld hl, sp-$61                                    ; $6d12: $f8 $9f
	ldh [$ef], a                                     ; $6d14: $e0 $ef
	ldh a, [rIE]                                     ; $6d16: $f0 $ff
	rra                                              ; $6d18: $1f
	rst $38                                          ; $6d19: $ff
	rrca                                             ; $6d1a: $0f
	rst $38                                          ; $6d1b: $ff
	ld [$4c7b], sp                                   ; $6d1c: $08 $7b $4c
	sbc h                                            ; $6d1f: $9c
	rrca                                             ; $6d20: $0f
	ld hl, sp+$08                                    ; $6d21: $f8 $08
	ld a, e                                          ; $6d23: $7b
	cp $86                                           ; $6d24: $fe $86
	jr @+$01                                         ; $6d26: $18 $ff

	rst $38                                          ; $6d28: $ff
	rst SubAFromDE                                          ; $6d29: $df
	pop hl                                           ; $6d2a: $e1
	cp [hl]                                          ; $6d2b: $be
	jp $877c                                         ; $6d2c: $c3 $7c $87


	db $fd                                           ; $6d2f: $fd
	rst $38                                          ; $6d30: $ff
	ld e, [hl]                                       ; $6d31: $5e
	and a                                            ; $6d32: $a7
	ld e, [hl]                                       ; $6d33: $5e
	and e                                            ; $6d34: $a3
	ld e, [hl]                                       ; $6d35: $5e
	and e                                            ; $6d36: $a3
	add a                                            ; $6d37: $87
	cp h                                             ; $6d38: $bc
	rst GetHLinHL                                          ; $6d39: $cf
	ld a, b                                          ; $6d3a: $78
	rst SubAFromDE                                          ; $6d3b: $df
	ldh a, [rIE]                                     ; $6d3c: $f0 $ff
	ldh [$6c], a                                     ; $6d3e: $e0 $6c
	ld c, h                                          ; $6d40: $4c
	ld a, a                                          ; $6d41: $7f
	cp $9d                                           ; $6d42: $fe $9d
	ld hl, sp+$0e                                    ; $6d44: $f8 $0e

jr_05e_6d46:
	ld a, b                                          ; $6d46: $78
	ld b, b                                          ; $6d47: $40
	ld a, h                                          ; $6d48: $7c
	jr z, jr_05e_6cd6                                ; $6d49: $28 $8b

	ld b, $f8                                        ; $6d4b: $06 $f8
	inc c                                            ; $6d4d: $0c
	ldh a, [rAUD2LOW]                                ; $6d4e: $f0 $18
	pop af                                           ; $6d50: $f1
	add hl, de                                       ; $6d51: $19
	ld a, [$0f6f]                                    ; $6d52: $fa $6f $0f
	rrca                                             ; $6d55: $0f
	inc e                                            ; $6d56: $1c
	inc e                                            ; $6d57: $1c
	db $e3                                           ; $6d58: $e3
	db $e3                                           ; $6d59: $e3
	call z, $f0cf                                    ; $6d5a: $cc $cf $f0
	rst $38                                          ; $6d5d: $ff
	add b                                            ; $6d5e: $80
	ld a, d                                          ; $6d5f: $7a
	ld d, [hl]                                       ; $6d60: $56
	add b                                            ; $6d61: $80
	add b                                            ; $6d62: $80
	rst SubAFromHL                                          ; $6d63: $d7
	ccf                                              ; $6d64: $3f
	jr nc, jr_05e_6d46                               ; $6d65: $30 $df

	ldh [$3f], a                                     ; $6d67: $e0 $3f
	ret nz                                           ; $6d69: $c0

	ld a, $c1                                        ; $6d6a: $3e $c1
	dec e                                            ; $6d6c: $1d
	db $e3                                           ; $6d6d: $e3
	ld a, [bc]                                       ; $6d6e: $0a
	rst FarCall                                          ; $6d6f: $f7
	dec b                                            ; $6d70: $05
	cp $1b                                           ; $6d71: $fe $1b
	db $fc                                           ; $6d73: $fc
	rst SubAFromDE                                          ; $6d74: $df
	ccf                                              ; $6d75: $3f
	cp e                                             ; $6d76: $bb
	ld h, a                                          ; $6d77: $67
	ld e, [hl]                                       ; $6d78: $5e
	pop hl                                           ; $6d79: $e1
	rst AddAOntoHL                                          ; $6d7a: $ef
	ldh a, [$1f]                                     ; $6d7b: $f0 $1f
	db $fc                                           ; $6d7d: $fc
	rst SubAFromBC                                          ; $6d7e: $e7
	rra                                              ; $6d7f: $1f
	db $fc                                           ; $6d80: $fc
	ld a, a                                          ; $6d81: $7f
	ld d, h                                          ; $6d82: $54
	ld a, a                                          ; $6d83: $7f
	cp [hl]                                          ; $6d84: $be
	sub [hl]                                         ; $6d85: $96
	db $f4                                           ; $6d86: $f4
	rrca                                             ; $6d87: $0f
	inc a                                            ; $6d88: $3c
	rst JumpTable                                          ; $6d89: $c7
	adc $f1                                          ; $6d8a: $ce $f1
	inc sp                                           ; $6d8c: $33
	db $fc                                           ; $6d8d: $fc
	inc c                                            ; $6d8e: $0c
	ld a, e                                          ; $6d8f: $7b
	adc b                                            ; $6d90: $88
	ld a, a                                          ; $6d91: $7f
	bit 7, [hl]                                      ; $6d92: $cb $7e
	and [hl]                                         ; $6d94: $a6
	ld a, e                                          ; $6d95: $7b
	xor h                                            ; $6d96: $ac
	adc h                                            ; $6d97: $8c
	cp $0f                                           ; $6d98: $fe $0f
	push af                                          ; $6d9a: $f5
	or l                                             ; $6d9b: $b5
	ld l, d                                          ; $6d9c: $6a
	db $eb                                           ; $6d9d: $eb
	xor d                                            ; $6d9e: $aa
	cp [hl]                                          ; $6d9f: $be
	db $f4                                           ; $6da0: $f4
	db $fc                                           ; $6da1: $fc
	ret nz                                           ; $6da2: $c0

	ld h, c                                          ; $6da3: $61
	dec [hl]                                         ; $6da4: $35
	rst AddAOntoHL                                          ; $6da5: $ef
	ld [hl], l                                       ; $6da6: $75
	call $8df5                                       ; $6da7: $cd $f5 $8d
	add h                                            ; $6daa: $84
	sbc $ff                                          ; $6dab: $de $ff
	ld a, a                                          ; $6dad: $7f
	push hl                                          ; $6dae: $e5
	adc b                                            ; $6daf: $88
	ld e, a                                          ; $6db0: $5f
	ld h, b                                          ; $6db1: $60
	cp a                                             ; $6db2: $bf
	ret nz                                           ; $6db3: $c0

	db $db                                           ; $6db4: $db
	cp $83                                           ; $6db5: $fe $83
	jp nz, $e2c3                                     ; $6db7: $c2 $c3 $e2

	add e                                            ; $6dba: $83
	jp $e7c3                                         ; $6dbb: $c3 $c3 $e7


	ld a, $ff                                        ; $6dbe: $3e $ff
	and $1f                                          ; $6dc0: $e6 $1f
	db $fd                                           ; $6dc2: $fd
	ld b, $bd                                        ; $6dc3: $06 $bd
	jp $7bbc                                         ; $6dc5: $c3 $bc $7b


	cp $8c                                           ; $6dc8: $fe $8c
	ld a, l                                          ; $6dca: $7d
	adc e                                            ; $6dcb: $8b
	ld [hl], l                                       ; $6dcc: $75
	sub a                                            ; $6dcd: $97
	ldh a, [c]                                       ; $6dce: $f2
	rla                                              ; $6dcf: $17
	sbc $3f                                          ; $6dd0: $de $3f
	and h                                            ; $6dd2: $a4
	ld l, a                                          ; $6dd3: $6f
	or a                                             ; $6dd4: $b7
	rst $38                                          ; $6dd5: $ff
	cp $f8                                           ; $6dd6: $fe $f8
	add $fc                                          ; $6dd8: $c6 $fc
	ei                                               ; $6dda: $fb
	add [hl]                                         ; $6ddb: $86
	db $fd                                           ; $6ddc: $fd
	ld a, d                                          ; $6ddd: $7a
	ld hl, sp+$71                                    ; $6dde: $f8 $71
	jr z, jr_05e_6e5d                                ; $6de0: $28 $7b

	add hl, de                                       ; $6de2: $19
	adc e                                            ; $6de3: $8b
	ld a, a                                          ; $6de4: $7f
	nop                                              ; $6de5: $00
	ccf                                              ; $6de6: $3f
	nop                                              ; $6de7: $00
	sbc a                                            ; $6de8: $9f
	nop                                              ; $6de9: $00
	rst SubAFromDE                                          ; $6dea: $df
	add b                                            ; $6deb: $80
	rst GetHLinHL                                          ; $6dec: $cf
	add b                                            ; $6ded: $80
	rst AddAOntoHL                                          ; $6dee: $ef
	ret nz                                           ; $6def: $c0

	db $eb                                           ; $6df0: $eb

jr_05e_6df1:
	dec de                                           ; $6df1: $1b
	rst SubAFromHL                                          ; $6df2: $d7
	ld [hl], $e7                                     ; $6df3: $36 $e7
	ld [hl+], a                                      ; $6df5: $22
	and $23                                          ; $6df6: $e6 $23
	ld l, a                                          ; $6df8: $6f
	cp $8b                                           ; $6df9: $fe $8b
	db $e4                                           ; $6dfb: $e4
	daa                                              ; $6dfc: $27
	cp l                                             ; $6dfd: $bd
	ld b, d                                          ; $6dfe: $42
	dec a                                            ; $6dff: $3d
	jp nz, $827d                                     ; $6e00: $c2 $7d $82

	ld a, h                                          ; $6e03: $7c
	add e                                            ; $6e04: $83
	db $fc                                           ; $6e05: $fc
	inc bc                                           ; $6e06: $03
	cp h                                             ; $6e07: $bc
	ld b, e                                          ; $6e08: $43
	inc a                                            ; $6e09: $3c
	jp $837c                                         ; $6e0a: $c3 $7c $83


	rst SubAFromHL                                          ; $6e0d: $d7
	jr nc, jr_05e_6e87                               ; $6e0e: $30 $77

	cp $80                                           ; $6e10: $fe $80
	db $d3                                           ; $6e12: $d3
	jr nc, jr_05e_6df1                               ; $6e13: $30 $dc

	jr nc, jr_05e_6e96                               ; $6e15: $30 $7f

	xor h                                            ; $6e17: $ac
	ld a, a                                          ; $6e18: $7f
	and e                                            ; $6e19: $a3
	ld a, a                                          ; $6e1a: $7f
	ldh [$7e], a                                     ; $6e1b: $e0 $7e
	jp z, $db6f                                      ; $6e1d: $ca $6f $db

	ld e, a                                          ; $6e20: $5f
	ldh a, [$78]                                     ; $6e21: $f0 $78
	rst SubAFromBC                                          ; $6e23: $e7
	ld a, e                                          ; $6e24: $7b
	add $77                                          ; $6e25: $c6 $77
	ld c, [hl]                                       ; $6e27: $4e
	rst GetHLinHL                                          ; $6e28: $cf

jr_05e_6e29:
	ld a, [$f2ff]                                    ; $6e29: $fa $ff $f2
	inc bc                                           ; $6e2c: $03
	rst $38                                          ; $6e2d: $ff
	ld b, $fc                                        ; $6e2e: $06 $fc
	inc c                                            ; $6e30: $0c
	ld a, [hl]                                       ; $6e31: $7e
	jp hl                                            ; $6e32: $e9


	ld a, l                                          ; $6e33: $7d
	and l                                            ; $6e34: $a5
	add h                                            ; $6e35: $84
	ldh a, [rAUD2HIGH]                               ; $6e36: $f0 $19
	pop af                                           ; $6e38: $f1
	rrca                                             ; $6e39: $0f
	db $fd                                           ; $6e3a: $fd
	ld [$70f8], sp                                   ; $6e3b: $08 $f8 $70
	ccf                                              ; $6e3e: $3f
	jr nc, @+$21                                     ; $6e3f: $30 $1f

	ccf                                              ; $6e41: $3f
	rra                                              ; $6e42: $1f
	ld h, b                                          ; $6e43: $60
	jr nz, @+$01                                     ; $6e44: $20 $ff

	ret nz                                           ; $6e46: $c0

	rst $38                                          ; $6e47: $ff
	rst $38                                          ; $6e48: $ff
	add b                                            ; $6e49: $80
	nop                                              ; $6e4a: $00
	db $10                                           ; $6e4b: $10
	rst AddAOntoHL                                          ; $6e4c: $ef
	scf                                              ; $6e4d: $37
	ld hl, sp-$01                                    ; $6e4e: $f8 $ff
	ret nz                                           ; $6e50: $c0

	ld [hl], h                                       ; $6e51: $74
	ld b, a                                          ; $6e52: $47
	ld a, e                                          ; $6e53: $7b
	jr c, jr_05e_6ed1                                ; $6e54: $38 $7b

	ld a, [$0299]                                    ; $6e56: $fa $99 $02
	db $fd                                           ; $6e59: $fd
	ld e, a                                          ; $6e5a: $5f
	and e                                            ; $6e5b: $a3
	ld e, a                                          ; $6e5c: $5f

jr_05e_6e5d:
	and c                                            ; $6e5d: $a1
	ld e, a                                          ; $6e5e: $5f
	ldh a, [$9d]                                     ; $6e5f: $f0 $9d
	cp a                                             ; $6e61: $bf
	ld b, b                                          ; $6e62: $40
	ld a, b                                          ; $6e63: $78
	ld a, [hl-]                                      ; $6e64: $3a
	add b                                            ; $6e65: $80
	add [hl]                                         ; $6e66: $86
	rst $38                                          ; $6e67: $ff
	ld a, c                                          ; $6e68: $79
	inc bc                                           ; $6e69: $03
	ld [bc], a                                       ; $6e6a: $02
	rlca                                             ; $6e6b: $07
	inc b                                            ; $6e6c: $04
	rst $38                                          ; $6e6d: $ff
	db $fc                                           ; $6e6e: $fc
	rrca                                             ; $6e6f: $0f
	ld [$181f], sp                                   ; $6e70: $08 $1f $18
	db $fc                                           ; $6e73: $fc
	and $fc                                          ; $6e74: $e6 $fc
	sub [hl]                                         ; $6e76: $96
	cp $0f                                           ; $6e77: $fe $0f
	ld sp, hl                                        ; $6e79: $f9
	dec bc                                           ; $6e7a: $0b
	ld hl, sp+$09                                    ; $6e7b: $f8 $09
	ld hl, sp+$09                                    ; $6e7d: $f8 $09
	ld sp, hl                                        ; $6e7f: $f9
	add hl, sp                                       ; $6e80: $39
	ret                                              ; $6e81: $c9


	ld e, e                                          ; $6e82: $5b
	xor b                                            ; $6e83: $a8
	rst AddAOntoHL                                          ; $6e84: $ef
	sub [hl]                                         ; $6e85: $96
	ld b, c                                          ; $6e86: $41

jr_05e_6e87:
	ld a, a                                          ; $6e87: $7f
	ld c, [hl]                                       ; $6e88: $4e
	ld a, a                                          ; $6e89: $7f
	rst $38                                          ; $6e8a: $ff
	ld [hl], b                                       ; $6e8b: $70
	rst SubAFromBC                                          ; $6e8c: $e7
	ld hl, sp-$40                                    ; $6e8d: $f8 $c0
	ld [hl], a                                       ; $6e8f: $77
	ld b, l                                          ; $6e90: $45
	sbc [hl]                                         ; $6e91: $9e
	rst $38                                          ; $6e92: $ff
	halt                                             ; $6e93: $76
	ld l, d                                          ; $6e94: $6a
	ld l, [hl]                                       ; $6e95: $6e

jr_05e_6e96:
	sub [hl]                                         ; $6e96: $96
	sbc [hl]                                         ; $6e97: $9e
	rra                                              ; $6e98: $1f
	ld a, d                                          ; $6e99: $7a
	cp b                                             ; $6e9a: $b8
	ld a, a                                          ; $6e9b: $7f
	jr nc, jr_05e_6e29                               ; $6e9c: $30 $8b

	rst GetHLinHL                                          ; $6e9e: $cf
	ccf                                              ; $6e9f: $3f
	ld sp, hl                                        ; $6ea0: $f9
	rlca                                             ; $6ea1: $07
	ldh a, [c]                                       ; $6ea2: $f2
	rrca                                             ; $6ea3: $0f
	db $e4                                           ; $6ea4: $e4
	rra                                              ; $6ea5: $1f
	ret z                                            ; $6ea6: $c8

	ccf                                              ; $6ea7: $3f
	sbc b                                            ; $6ea8: $98
	ld a, a                                          ; $6ea9: $7f
	ld de, $31fe                                     ; $6eaa: $11 $fe $31
	cp $bf                                           ; $6ead: $fe $bf
	ret nz                                           ; $6eaf: $c0

	ccf                                              ; $6eb0: $3f
	ret nz                                           ; $6eb1: $c0

	ld l, d                                          ; $6eb2: $6a
	dec [hl]                                         ; $6eb3: $35
	ld a, e                                          ; $6eb4: $7b
	cp $99                                           ; $6eb5: $fe $99
	db $fd                                           ; $6eb7: $fd
	ld [bc], a                                       ; $6eb8: $02
	db $fd                                           ; $6eb9: $fd
	ccf                                              ; $6eba: $3f
	ldh a, [$1f]                                     ; $6ebb: $f0 $1f
	halt                                             ; $6ebd: $76
	ld b, [hl]                                       ; $6ebe: $46
	ld a, [hl]                                       ; $6ebf: $7e
	dec c                                            ; $6ec0: $0d
	ld [hl], h                                       ; $6ec1: $74
	jp nz, $fe9d                                     ; $6ec2: $c2 $9d $fe

	inc bc                                           ; $6ec5: $03
	ld a, b                                          ; $6ec6: $78
	db $dd                                           ; $6ec7: $dd
	sbc h                                            ; $6ec8: $9c
	ld hl, sp+$07                                    ; $6ec9: $f8 $07
	rrca                                             ; $6ecb: $0f
	ld [hl], c                                       ; $6ecc: $71
	ld bc, $ff70                                     ; $6ecd: $01 $70 $ff
	ld [hl], e                                       ; $6ed0: $73

jr_05e_6ed1:
	ret c                                            ; $6ed1: $d8

	ld a, a                                          ; $6ed2: $7f
	call z, $ed7e                                    ; $6ed3: $cc $7e $ed
	ld l, e                                          ; $6ed6: $6b
	ldh a, [hDisp1_OBP0]                                     ; $6ed7: $f0 $93
	cpl                                              ; $6ed9: $2f
	db $fc                                           ; $6eda: $fc
	ccf                                              ; $6edb: $3f
	db $f4                                           ; $6edc: $f4
	ld [hl], a                                       ; $6edd: $77
	db $e4                                           ; $6ede: $e4
	rst SubAFromBC                                          ; $6edf: $e7
	and h                                            ; $6ee0: $a4
	rst SubAFromBC                                          ; $6ee1: $e7
	and h                                            ; $6ee2: $a4
	rst AddAOntoHL                                          ; $6ee3: $ef
	and h                                            ; $6ee4: $a4
	ld a, d                                          ; $6ee5: $7a
	ld c, a                                          ; $6ee6: $4f
	sbc [hl]                                         ; $6ee7: $9e
	cp b                                             ; $6ee8: $b8
	halt                                             ; $6ee9: $76
	call z, $fe7f                                    ; $6eea: $cc $7f $fe
	ld a, [hl]                                       ; $6eed: $7e
	ldh a, [c]                                       ; $6eee: $f2
	ld a, [hl]                                       ; $6eef: $7e
	ret nz                                           ; $6ef0: $c0

	add b                                            ; $6ef1: $80
	push af                                          ; $6ef2: $f5
	dec bc                                           ; $6ef3: $0b
	push af                                          ; $6ef4: $f5
	dec bc                                           ; $6ef5: $0b
	pop af                                           ; $6ef6: $f1
	rrca                                             ; $6ef7: $0f
	rst SubAFromBC                                          ; $6ef8: $e7
	ret nz                                           ; $6ef9: $c0

	rst SubAFromBC                                          ; $6efa: $e7
	ret nz                                           ; $6efb: $c0

	rst FarCall                                          ; $6efc: $f7
	and b                                            ; $6efd: $a0
	pop af                                           ; $6efe: $f1
	and b                                            ; $6eff: $a0
	ldh a, [rAUD4LEN]                                ; $6f00: $f0 $20
	cp $20                                           ; $6f02: $fe $20
	rst $38                                          ; $6f04: $ff
	inc a                                            ; $6f05: $3c
	rst $38                                          ; $6f06: $ff
	inc bc                                           ; $6f07: $03
	call nc, $dc3f                                   ; $6f08: $d4 $3f $dc
	ccf                                              ; $6f0b: $3f
	ret                                              ; $6f0c: $c9


	ld a, $69                                        ; $6f0d: $3e $69
	sbc [hl]                                         ; $6f0f: $9e
	adc e                                            ; $6f10: $8b
	sbc b                                            ; $6f11: $98
	db $fc                                           ; $6f12: $fc
	sbc b                                            ; $6f13: $98
	rst $38                                          ; $6f14: $ff
	di                                               ; $6f15: $f3
	db $fc                                           ; $6f16: $fc
	rla                                              ; $6f17: $17
	jr jr_05e_6f90                                   ; $6f18: $18 $76

	add $77                                          ; $6f1a: $c6 $77
	jp nc, $fe7f                                     ; $6f1c: $d2 $7f $fe

	sbc l                                            ; $6f1f: $9d
	ld a, l                                          ; $6f20: $7d
	add e                                            ; $6f21: $83
	ld a, d                                          ; $6f22: $7a
	adc h                                            ; $6f23: $8c
	add b                                            ; $6f24: $80
	inc bc                                           ; $6f25: $03
	ld a, a                                          ; $6f26: $7f
	jp $cc7f                                         ; $6f27: $c3 $7f $cc


	ld a, a                                          ; $6f2a: $7f
	di                                               ; $6f2b: $f3
	db $fc                                           ; $6f2c: $fc
	call z, $33f3                                    ; $6f2d: $cc $f3 $33
	call z, $314c                                    ; $6f30: $cc $4c $31
	ld sp, $2121                                     ; $6f33: $31 $21 $21
	inc sp                                           ; $6f36: $33
	di                                               ; $6f37: $f3
	call $3dcd                                       ; $6f38: $cd $cd $3d
	dec [hl]                                         ; $6f3b: $35
	call $1dc5                                       ; $6f3c: $cd $c5 $1d
	dec [hl]                                         ; $6f3f: $35
	rra                                              ; $6f40: $1f
	or $3d                                           ; $6f41: $f6 $3d
	xor $9d                                          ; $6f43: $ee $9d
	ld a, c                                          ; $6f45: $79
	sbc $7a                                          ; $6f46: $de $7a
	inc e                                            ; $6f48: $1c
	ld a, b                                          ; $6f49: $78
	cp [hl]                                          ; $6f4a: $be
	ld [hl], e                                       ; $6f4b: $73
	dec h                                            ; $6f4c: $25
	ld [hl], e                                       ; $6f4d: $73
	cp $9d                                           ; $6f4e: $fe $9d
	ld d, b                                          ; $6f50: $50
	xor a                                            ; $6f51: $af
	ld c, a                                          ; $6f52: $4f
	cp $7f                                           ; $6f53: $fe $7f
	ccf                                              ; $6f55: $3f
	ld c, a                                          ; $6f56: $4f
	cp $7e                                           ; $6f57: $fe $7e
	adc $4f                                          ; $6f59: $ce $4f
	cp $7e                                           ; $6f5b: $fe $7e
	adc $8d                                          ; $6f5d: $ce $8d
	rra                                              ; $6f5f: $1f
	db $10                                           ; $6f60: $10
	ccf                                              ; $6f61: $3f
	jr nc, jr_05e_6fa3                               ; $6f62: $30 $3f

	jr nz, @+$41                                     ; $6f64: $20 $3f

	inc h                                            ; $6f66: $24
	ld a, a                                          ; $6f67: $7f
	ld l, h                                          ; $6f68: $6c
	ld a, a                                          ; $6f69: $7f
	ld c, b                                          ; $6f6a: $48
	ld a, a                                          ; $6f6b: $7f
	ld c, b                                          ; $6f6c: $48
	bit 3, e                                         ; $6f6d: $cb $5b
	bit 7, [hl]                                      ; $6f6f: $cb $7e
	ld a, e                                          ; $6f71: $7b
	ld l, b                                          ; $6f72: $68
	ld a, l                                          ; $6f73: $7d
	jp nz, Jump_05e_4c7d                             ; $6f74: $c2 $7d $4c

	ld [hl], e                                       ; $6f77: $73
	or b                                             ; $6f78: $b0
	ld a, a                                          ; $6f79: $7f
	ld [hl], e                                       ; $6f7a: $73
	sbc e                                            ; $6f7b: $9b
	rlca                                             ; $6f7c: $07
	ld hl, sp+$1f                                    ; $6f7d: $f8 $1f
	ldh [rPCM12], a                                  ; $6f7f: $e0 $76
	xor $99                                          ; $6f81: $ee $99
	ldh [$1f], a                                     ; $6f83: $e0 $1f
	add e                                            ; $6f85: $83
	ld a, h                                          ; $6f86: $7c
	rrca                                             ; $6f87: $0f
	ldh a, [rPCM34]                                  ; $6f88: $f0 $77
	ld h, d                                          ; $6f8a: $62
	ld [hl], a                                       ; $6f8b: $77
	cp $7f                                           ; $6f8c: $fe $7f
	inc l                                            ; $6f8e: $2c
	sbc l                                            ; $6f8f: $9d

jr_05e_6f90:
	ld a, [hl]                                       ; $6f90: $7e
	add c                                            ; $6f91: $81
	ld [hl], a                                       ; $6f92: $77
	ldh [$98], a                                     ; $6f93: $e0 $98
	ld hl, $23fe                                     ; $6f95: $21 $fe $23
	db $fc                                           ; $6f98: $fc
	ld h, e                                          ; $6f99: $63
	db $fc                                           ; $6f9a: $fc
	ld b, e                                          ; $6f9b: $43
	ld a, e                                          ; $6f9c: $7b
	cp $77                                           ; $6f9d: $fe $77
	ld a, e                                          ; $6f9f: $7b
	ld a, a                                          ; $6fa0: $7f
	cp $8d                                           ; $6fa1: $fe $8d

jr_05e_6fa3:
	ld sp, hl                                        ; $6fa3: $f9
	ld b, $f3                                        ; $6fa4: $06 $f3
	inc c                                            ; $6fa6: $0c
	db $e3                                           ; $6fa7: $e3
	inc e                                            ; $6fa8: $1c
	rst JumpTable                                          ; $6fa9: $c7
	jr c, jr_05e_6fbb                                ; $6faa: $38 $0f

	ldh a, [$3f]                                     ; $6fac: $f0 $3f
	ldh [$7b], a                                     ; $6fae: $e0 $7b
	call nz, $84fb                                   ; $6fb0: $c4 $fb $84
	rst $38                                          ; $6fb3: $ff
	ld [bc], a                                       ; $6fb4: $02
	ld [hl], a                                       ; $6fb5: $77
	inc [hl]                                         ; $6fb6: $34
	ld a, a                                          ; $6fb7: $7f
	cp $9d                                           ; $6fb8: $fe $9d
	db $dd                                           ; $6fba: $dd

jr_05e_6fbb:
	inc hl                                           ; $6fbb: $23
	ld [hl], a                                       ; $6fbc: $77
	cp $80                                           ; $6fbd: $fe $80
	call $fe33                                       ; $6fbf: $cd $33 $fe
	nop                                              ; $6fc2: $00
	rst $38                                          ; $6fc3: $ff
	rrca                                             ; $6fc4: $0f
	ldh a, [$38]                                     ; $6fc5: $f0 $38
	ret nz                                           ; $6fc7: $c0

	ld b, c                                          ; $6fc8: $41
	pop hl                                           ; $6fc9: $e1
	ld [hl], c                                       ; $6fca: $71
	sbc c                                            ; $6fcb: $99
	ld a, a                                          ; $6fcc: $7f
	rst JumpTable                                          ; $6fcd: $c7
	ccf                                              ; $6fce: $3f
	ldh [$1f], a                                     ; $6fcf: $e0 $1f
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	ccf                                              ; $6fd3: $3f
	ccf                                              ; $6fd4: $3f
	ret nz                                           ; $6fd5: $c0

	rst $38                                          ; $6fd6: $ff
	cp b                                             ; $6fd7: $b8
	rst JumpTable                                          ; $6fd8: $c7
	ld a, a                                          ; $6fd9: $7f
	add b                                            ; $6fda: $80
	ld a, a                                          ; $6fdb: $7f
	add b                                            ; $6fdc: $80
	inc sp                                           ; $6fdd: $33
	adc d                                            ; $6fde: $8a

Jump_05e_6fdf:
	ret nz                                           ; $6fdf: $c0

	call z, Call_05e_70f0                            ; $6fe0: $cc $f0 $70
	ld a, a                                          ; $6fe3: $7f
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	dec de                                           ; $6fe6: $1b
	db $fc                                           ; $6fe7: $fc
	ld h, l                                          ; $6fe8: $65
	sbc [hl]                                         ; $6fe9: $9e
	dec de                                           ; $6fea: $1b
	and $cf                                          ; $6feb: $e6 $cf
	jr nc, @-$0b                                     ; $6fed: $30 $f3

	inc c                                            ; $6fef: $0c

jr_05e_6ff0:
	ccf                                              ; $6ff0: $3f
	nop                                              ; $6ff1: $00
	di                                               ; $6ff2: $f3
	ld c, $77                                        ; $6ff3: $0e $77
	cp $95                                           ; $6ff5: $fe $95
	rst FarCall                                          ; $6ff7: $f7
	inc c                                            ; $6ff8: $0c
	rst FarCall                                          ; $6ff9: $f7
	inc c                                            ; $6ffa: $0c
	rst SubAFromBC                                          ; $6ffb: $e7
	inc c                                            ; $6ffc: $0c
	rst SubAFromHL                                          ; $6ffd: $d7
	ld c, $8f                                        ; $6ffe: $0e $8f
	rra                                              ; $7000: $1f
	ld h, a                                          ; $7001: $67
	jr @+$6d                                         ; $7002: $18 $6b

	cp $7f                                           ; $7004: $fe $7f
	call z, $3c99                                    ; $7006: $cc $99 $3c
	ld h, b                                          ; $7009: $60
	ld a, a                                          ; $700a: $7f
	rst GetHLinHL                                          ; $700b: $cf
	ldh a, [$bf]                                     ; $700c: $f0 $bf
	ld a, d                                          ; $700e: $7a
	ld c, h                                          ; $700f: $4c
	halt                                             ; $7010: $76
	sbc d                                            ; $7011: $9a
	add b                                            ; $7012: $80
	ldh a, [rIF]                                     ; $7013: $f0 $0f
	ei                                               ; $7015: $fb
	rlca                                             ; $7016: $07
	push af                                          ; $7017: $f5
	rrca                                             ; $7018: $0f
	push hl                                          ; $7019: $e5
	rra                                              ; $701a: $1f
	ret                                              ; $701b: $c9


	ccf                                              ; $701c: $3f
	adc e                                            ; $701d: $8b
	ld a, l                                          ; $701e: $7d
	rla                                              ; $701f: $17
	ld sp, hl                                        ; $7020: $f9
	cpl                                              ; $7021: $2f
	pop af                                           ; $7022: $f1
	ld a, a                                          ; $7023: $7f
	pop af                                           ; $7024: $f1
	daa                                              ; $7025: $27
	and c                                            ; $7026: $a1
	ccf                                              ; $7027: $3f
	and b                                            ; $7028: $a0
	ccf                                              ; $7029: $3f
	and c                                            ; $702a: $a1
	ccf                                              ; $702b: $3f
	and e                                            ; $702c: $a3
	inc a                                            ; $702d: $3c
	and a                                            ; $702e: $a7
	jr c, jr_05e_6ff0                                ; $702f: $38 $bf

	jr nz, @+$81                                     ; $7031: $20 $7f

	or $99                                           ; $7033: $f6 $99
	and b                                            ; $7035: $a0
	pop hl                                           ; $7036: $e1
	cp [hl]                                          ; $7037: $be
	pop bc                                           ; $7038: $c1
	ld a, [hl]                                       ; $7039: $7e
	add c                                            ; $703a: $81
	ld l, [hl]                                       ; $703b: $6e
	ld l, e                                          ; $703c: $6b
	ld a, a                                          ; $703d: $7f
	ld [hl], l                                       ; $703e: $75
	ld c, a                                          ; $703f: $4f
	or h                                             ; $7040: $b4
	halt                                             ; $7041: $76
	dec hl                                           ; $7042: $2b
	ld d, d                                          ; $7043: $52
	ret nz                                           ; $7044: $c0

	ld [hl], a                                       ; $7045: $77
	ldh a, [rRP]                                     ; $7046: $f0 $56
	call nz, $f077                                   ; $7048: $c4 $77 $f0
	ld d, [hl]                                       ; $704b: $56
	call nz, $f07b                                   ; $704c: $c4 $7b $f0
	adc [hl]                                         ; $704f: $8e
	ld bc, $7f58                                     ; $7050: $01 $58 $7f
	sub b                                            ; $7053: $90
	rst $38                                          ; $7054: $ff
	sub c                                            ; $7055: $91
	cp $b1                                           ; $7056: $fe $b1
	sbc $b3                                          ; $7058: $de $b3
	call c, $d8b7                                    ; $705a: $dc $b7 $d8
	or a                                             ; $705d: $b7
	ret c                                            ; $705e: $d8

	rla                                              ; $705f: $17
	ld hl, sp+$79                                    ; $7060: $f8 $79
	ld [hl], b                                       ; $7062: $70
	ld a, [hl]                                       ; $7063: $7e
	ld c, d                                          ; $7064: $4a
	sub [hl]                                         ; $7065: $96
	inc [hl]                                         ; $7066: $34
	rst GetHLinHL                                          ; $7067: $cf
	ld a, b                                          ; $7068: $78
	rst GetHLinHL                                          ; $7069: $cf
	ld c, b                                          ; $706a: $48
	rst GetHLinHL                                          ; $706b: $cf
	ld a, b                                          ; $706c: $78
	rst $38                                          ; $706d: $ff
	jr nc, @+$7d                                     ; $706e: $30 $7b

	ret nc                                           ; $7070: $d0

	ld h, c                                          ; $7071: $61
	or d                                             ; $7072: $b2
	ld a, a                                          ; $7073: $7f
	adc a                                            ; $7074: $8f
	sbc e                                            ; $7075: $9b
	pop hl                                           ; $7076: $e1
	rra                                              ; $7077: $1f
	rra                                              ; $7078: $1f
	rst $38                                          ; $7079: $ff
	ld [hl], a                                       ; $707a: $77
	ld e, d                                          ; $707b: $5a
	ld a, l                                          ; $707c: $7d
	adc [hl]                                         ; $707d: $8e
	ld a, a                                          ; $707e: $7f
	or $80                                           ; $707f: $f6 $80
	add c                                            ; $7081: $81
	ld a, a                                          ; $7082: $7f
	add hl, sp                                       ; $7083: $39
	rst $38                                          ; $7084: $ff
	push hl                                          ; $7085: $e5
	ei                                               ; $7086: $fb
	adc l                                            ; $7087: $8d
	di                                               ; $7088: $f3
	add c                                            ; $7089: $81
	rst $38                                          ; $708a: $ff
	add a                                            ; $708b: $87
	cp $8f                                           ; $708c: $fe $8f
	db $fc                                           ; $708e: $fc
	sbc a                                            ; $708f: $9f
	ld hl, sp-$09                                    ; $7090: $f8 $f7
	ld hl, sp-$11                                    ; $7092: $f8 $ef
	ldh a, [$de]                                     ; $7094: $f0 $de
	pop hl                                           ; $7096: $e1
	cp l                                             ; $7097: $bd
	jp $0cf3                                         ; $7098: $c3 $f3 $0c


	rst SubAFromBC                                          ; $709b: $e7
	jr @-$0f                                         ; $709c: $18 $ef

	db $10                                           ; $709e: $10
	rst GetHLinHL                                          ; $709f: $cf
	sbc d                                            ; $70a0: $9a
	jr nc, @-$6f                                     ; $70a1: $30 $8f

	ld [hl], b                                       ; $70a3: $70
	rra                                              ; $70a4: $1f
	ldh [$75], a                                     ; $70a5: $e0 $75
	ld e, [hl]                                       ; $70a7: $5e
	sub h                                            ; $70a8: $94
	adc l                                            ; $70a9: $8d
	ld [hl], e                                       ; $70aa: $73
	adc l                                            ; $70ab: $8d
	ld [hl], e                                       ; $70ac: $73
	and l                                            ; $70ad: $a5
	ld a, e                                          ; $70ae: $7b
	and c                                            ; $70af: $a1
	ld a, a                                          ; $70b0: $7f
	ld hl, $41ff                                     ; $70b1: $21 $ff $41
	ld a, e                                          ; $70b4: $7b
	cp $9b                                           ; $70b5: $fe $9b
	ld b, e                                          ; $70b7: $43
	rst $38                                          ; $70b8: $ff
	db $fc                                           ; $70b9: $fc
	inc bc                                           ; $70ba: $03
	ld c, a                                          ; $70bb: $4f

jr_05e_70bc:
	ld d, b                                          ; $70bc: $50
	sbc c                                            ; $70bd: $99
	jr nc, jr_05e_70bc                               ; $70be: $30 $fc

	ld c, $ff                                        ; $70c0: $0e $ff
	add c                                            ; $70c2: $81
	ld a, a                                          ; $70c3: $7f
	ld l, a                                          ; $70c4: $6f
	ld [$f077], a                                    ; $70c5: $ea $77 $f0
	cp $9b                                           ; $70c8: $fe $9b
	add b                                            ; $70ca: $80
	ret nz                                           ; $70cb: $c0

	rst $38                                          ; $70cc: $ff
	ccf                                              ; $70cd: $3f
	ld [hl], c                                       ; $70ce: $71
	ld l, e                                          ; $70cf: $6b
	ld [hl], a                                       ; $70d0: $77
	ldh a, [$9a]                                     ; $70d1: $f0 $9a
	jr jr_05e_7114                                   ; $70d3: $18 $3f

	db $10                                           ; $70d5: $10
	ld a, a                                          ; $70d6: $7f
	ld h, b                                          ; $70d7: $60
	ld [hl], c                                       ; $70d8: $71
	pop hl                                           ; $70d9: $e1
	sbc l                                            ; $70da: $9d
	ld a, $c1                                        ; $70db: $3e $c1
	ld [hl], e                                       ; $70dd: $73
	db $10                                           ; $70de: $10
	ld a, a                                          ; $70df: $7f
	xor h                                            ; $70e0: $ac
	ld a, [hl]                                       ; $70e1: $7e
	db $db                                           ; $70e2: $db
	ld a, e                                          ; $70e3: $7b
	pop de                                           ; $70e4: $d1
	ld a, a                                          ; $70e5: $7f
	ld e, c                                          ; $70e6: $59
	ld l, h                                          ; $70e7: $6c
	cp d                                             ; $70e8: $ba
	ld a, a                                          ; $70e9: $7f
	jp c, $f67f                                      ; $70ea: $da $7f $f6

	add d                                            ; $70ed: $82
	ld [bc], a                                       ; $70ee: $02
	rst $38                                          ; $70ef: $ff

Call_05e_70f0:
	dec b                                            ; $70f0: $05
	cp $1b                                           ; $70f1: $fe $1b
	db $fc                                           ; $70f3: $fc
	ld h, h                                          ; $70f4: $64
	ei                                               ; $70f5: $fb
	sbc e                                            ; $70f6: $9b
	rst SubAFromBC                                          ; $70f7: $e7
	ld l, l                                          ; $70f8: $6d
	sbc [hl]                                         ; $70f9: $9e
	cp a                                             ; $70fa: $bf
	pop bc                                           ; $70fb: $c1
	add $f9                                          ; $70fc: $c6 $f9
	jr c, @+$01                                      ; $70fe: $38 $ff

	and a                                            ; $7100: $a7
	ld a, a                                          ; $7101: $7f
	ld e, d                                          ; $7102: $5a
	rst SubAFromBC                                          ; $7103: $e7
	or l                                             ; $7104: $b5
	adc $6b                                          ; $7105: $ce $6b
	sbc h                                            ; $7107: $9c
	rst SubAFromHL                                          ; $7108: $d7
	jr c, @+$22                                      ; $7109: $38 $20

	db $dd                                           ; $710b: $dd
	cp a                                             ; $710c: $bf
	sub h                                            ; $710d: $94
	or [hl]                                          ; $710e: $b6
	cp [hl]                                          ; $710f: $be
	cp h                                             ; $7110: $bc
	cp h                                             ; $7111: $bc
	xor b                                            ; $7112: $a8
	cp l                                             ; $7113: $bd

jr_05e_7114:
	xor b                                            ; $7114: $a8
	cp l                                             ; $7115: $bd
	xor c                                            ; $7116: $a9
	cp l                                             ; $7117: $bd
	xor c                                            ; $7118: $a9
	ld l, c                                          ; $7119: $69
	jr jr_05e_718c                                   ; $711a: $18 $70

	add b                                            ; $711c: $80
	ld l, a                                          ; $711d: $6f
	cp l                                             ; $711e: $bd
	rra                                              ; $711f: $1f
	ldh a, [$9b]                                     ; $7120: $f0 $9b
	db $dd                                           ; $7122: $dd
	ld b, c                                          ; $7123: $41
	db $dd                                           ; $7124: $dd
	ld b, c                                          ; $7125: $41
	ld b, a                                          ; $7126: $47
	ldh [$7f], a                                     ; $7127: $e0 $7f
	sub d                                            ; $7129: $92
	sbc $ff                                          ; $712a: $de $ff
	sbc h                                            ; $712c: $9c
	ld [bc], a                                       ; $712d: $02
	inc bc                                           ; $712e: $03
	ld [bc], a                                       ; $712f: $02
	ld a, e                                          ; $7130: $7b
	adc e                                            ; $7131: $8b
	add [hl]                                         ; $7132: $86
	db $fc                                           ; $7133: $fc
	rst $38                                          ; $7134: $ff
	inc b                                            ; $7135: $04
	rst $38                                          ; $7136: $ff
	inc b                                            ; $7137: $04
	sub a                                            ; $7138: $97
	ld a, b                                          ; $7139: $78
	rst SubAFromHL                                          ; $713a: $d7
	jr c, @+$75                                      ; $713b: $38 $73

	sbc h                                            ; $713d: $9c
	ld sp, $11de                                     ; $713e: $31 $de $11
	cp $88                                           ; $7141: $fe $88
	ld a, a                                          ; $7143: $7f
	adc b                                            ; $7144: $88
	ld a, a                                          ; $7145: $7f
	call c, $c33f                                    ; $7146: $dc $3f $c3
	ccf                                              ; $7149: $3f
	ld hl, sp+$07                                    ; $714a: $f8 $07
	ld h, a                                          ; $714c: $67
	jr nz, jr_05e_71ce                               ; $714d: $20 $7f

	ld [bc], a                                       ; $714f: $02
	ld a, a                                          ; $7150: $7f
	ei                                               ; $7151: $fb
	ld a, [hl]                                       ; $7152: $7e
	xor a                                            ; $7153: $af
	ld a, d                                          ; $7154: $7a
	dec de                                           ; $7155: $1b
	ld l, e                                          ; $7156: $6b
	jr nz, jr_05e_71d0                               ; $7157: $20 $77

	and d                                            ; $7159: $a2
	sbc b                                            ; $715a: $98
	rra                                              ; $715b: $1f
	db $e3                                           ; $715c: $e3
	ccf                                              ; $715d: $3f
	jp $837e                                         ; $715e: $c3 $7e $83


	ld a, [$4c78]                                    ; $7161: $fa $78 $4c
	sbc h                                            ; $7164: $9c
	jp nz, $023f                                     ; $7165: $c2 $3f $02

	ld a, d                                          ; $7168: $7a
	sub l                                            ; $7169: $95
	adc [hl]                                         ; $716a: $8e
	ld a, d                                          ; $716b: $7a
	add a                                            ; $716c: $87
	or $0f                                           ; $716d: $f6 $0f
	db $ec                                           ; $716f: $ec
	rra                                              ; $7170: $1f
	reti                                             ; $7171: $d9


	ld a, $f3                                        ; $7172: $3e $f3
	ld a, h                                          ; $7174: $7c
	db $e3                                           ; $7175: $e3
	db $fc                                           ; $7176: $fc
	rst JumpTable                                          ; $7177: $c7
	ld hl, sp-$39                                    ; $7178: $f8 $c7
	ld hl, sp+$3e                                    ; $717a: $f8 $3e
	ld l, d                                          ; $717c: $6a
	ld hl, $bc6c                                     ; $717d: $21 $6c $bc
	ld a, [hl]                                       ; $7180: $7e
	sub [hl]                                         ; $7181: $96
	adc a                                            ; $7182: $8f
	ld c, e                                          ; $7183: $4b
	rst FarCall                                          ; $7184: $f7
	set 6, a                                         ; $7185: $cb $f7
	adc e                                            ; $7187: $8b
	or $9a                                           ; $7188: $f6 $9a
	and $9b                                          ; $718a: $e6 $9b

jr_05e_718c:
	and $97                                          ; $718c: $e6 $97
	rst AddAOntoHL                                          ; $718e: $ef
	scf                                              ; $718f: $37
	call z, $cc37                                    ; $7190: $cc $37 $cc
	inc bc                                           ; $7193: $03
	ld b, b                                          ; $7194: $40
	ld e, e                                          ; $7195: $5b
	ldh a, [$9c]                                     ; $7196: $f0 $9c
	rst SubAFromDE                                          ; $7198: $df
	ld b, c                                          ; $7199: $41
	rst SubAFromDE                                          ; $719a: $df
	ld b, e                                          ; $719b: $43
	ld b, b                                          ; $719c: $40
	ld b, a                                          ; $719d: $47
	ldh a, [$5e]                                     ; $719e: $f0 $5e
	nop                                              ; $71a0: $00
	db $dd                                           ; $71a1: $dd
	inc sp                                           ; $71a2: $33
	sbc e                                            ; $71a3: $9b
	ld h, [hl]                                       ; $71a4: $66
	ld h, e                                          ; $71a5: $63
	inc sp                                           ; $71a6: $33
	ld [hl], e                                       ; $71a7: $73
	db $db                                           ; $71a8: $db
	inc sp                                           ; $71a9: $33
	rst SubAFromDE                                          ; $71aa: $df
	ld h, [hl]                                       ; $71ab: $66
	ld [hl], a                                       ; $71ac: $77
	or $9e                                           ; $71ad: $f6 $9e
	ld [hl], $7b                                     ; $71af: $36 $7b
	db $fd                                           ; $71b1: $fd
	ld [hl], a                                       ; $71b2: $77
	or $9e                                           ; $71b3: $f6 $9e
	ld [hl], $de                                     ; $71b5: $36 $de
	ld h, e                                          ; $71b7: $63
	ld a, a                                          ; $71b8: $7f
	ld sp, hl                                        ; $71b9: $f9
	ld a, e                                          ; $71ba: $7b
	or $de                                           ; $71bb: $f6 $de
	ld h, [hl]                                       ; $71bd: $66
	ld a, a                                          ; $71be: $7f
	db $ec                                           ; $71bf: $ec
	ld a, a                                          ; $71c0: $7f
	db $db                                           ; $71c1: $db
	ld l, a                                          ; $71c2: $6f
	or $df                                           ; $71c3: $f6 $df
	inc sp                                           ; $71c5: $33
	sbc [hl]                                         ; $71c6: $9e
	ld b, h                                          ; $71c7: $44
	ld [hl], a                                       ; $71c8: $77
	adc $94                                          ; $71c9: $ce $94
	ld b, e                                          ; $71cb: $43
	ld d, e                                          ; $71cc: $53
	ld h, [hl]                                       ; $71cd: $66

jr_05e_71ce:
	ld [hl], l                                       ; $71ce: $75
	ld d, e                                          ; $71cf: $53

jr_05e_71d0:
	ld b, h                                          ; $71d0: $44
	scf                                              ; $71d1: $37
	inc sp                                           ; $71d2: $33
	ld b, h                                          ; $71d3: $44
	ld b, e                                          ; $71d4: $43
	dec [hl]                                         ; $71d5: $35
	sbc $55                                          ; $71d6: $de $55
	sbc b                                            ; $71d8: $98
	ld d, h                                          ; $71d9: $54
	ld b, a                                          ; $71da: $47
	ld [hl], a                                       ; $71db: $77
	inc sp                                           ; $71dc: $33
	ld b, h                                          ; $71dd: $44
	ld b, h                                          ; $71de: $44
	inc sp                                           ; $71df: $33
	ld a, e                                          ; $71e0: $7b
	push af                                          ; $71e1: $f5
	sbc l                                            ; $71e2: $9d
	ld d, a                                          ; $71e3: $57
	ld [hl], a                                       ; $71e4: $77
	ld [hl], a                                       ; $71e5: $77
	or $9e                                           ; $71e6: $f6 $9e
	ld b, a                                          ; $71e8: $47
	sbc $55                                          ; $71e9: $de $55
	sbc $77                                          ; $71eb: $de $77
	sbc [hl]                                         ; $71ed: $9e
	ld b, e                                          ; $71ee: $43
	ld a, e                                          ; $71ef: $7b
	or $df                                           ; $71f0: $f6 $df
	ld [hl], a                                       ; $71f2: $77
	sbc [hl]                                         ; $71f3: $9e
	ld d, l                                          ; $71f4: $55
	sbc $33                                          ; $71f5: $de $33
	sbc $44                                          ; $71f7: $de $44
	sbc h                                            ; $71f9: $9c
	ld b, e                                          ; $71fa: $43
	inc sp                                           ; $71fb: $33
	inc sp                                           ; $71fc: $33
	ld e, e                                          ; $71fd: $5b
	adc d                                            ; $71fe: $8a
	ld sp, hl                                        ; $71ff: $f9
	sub a                                            ; $7200: $97
	ld [hl], h                                       ; $7201: $74
	ld b, h                                          ; $7202: $44
	ld h, l                                          ; $7203: $65
	dec d                                            ; $7204: $15
	dec d                                            ; $7205: $15
	ld h, h                                          ; $7206: $64
	inc b                                            ; $7207: $04
	rst $38                                          ; $7208: $ff
	ld sp, hl                                        ; $7209: $f9
	add b                                            ; $720a: $80

Jump_05e_720b:
	ld c, e                                          ; $720b: $4b
	adc d                                            ; $720c: $8a
	ret z                                            ; $720d: $c8

	jr z, jr_05e_7239                                ; $720e: $28 $29

	ret                                              ; $7210: $c9


	ld [$efff], sp                                   ; $7211: $08 $ff $ef
	cpl                                              ; $7214: $2f
	ld e, d                                          ; $7215: $5a
	sub $d5                                          ; $7216: $d6 $d5
	ld a, l                                          ; $7218: $7d
	xor d                                            ; $7219: $aa
	cp e                                             ; $721a: $bb
	ld sp, $6733                                     ; $721b: $31 $33 $67
	ld l, a                                          ; $721e: $6f
	ld l, [hl]                                       ; $721f: $6e
	ld c, [hl]                                       ; $7220: $4e
	db $dd                                           ; $7221: $dd
	db $dd                                           ; $7222: $dd
	or e                                             ; $7223: $b3
	ld l, l                                          ; $7224: $6d
	jp c, $ebb5                                      ; $7225: $da $b5 $eb

	or $dd                                           ; $7228: $f6 $dd
	add b                                            ; $722a: $80
	xor d                                            ; $722b: $aa
	call z, $2793                                    ; $722c: $cc $93 $27
	ld c, [hl]                                       ; $722f: $4e
	ld e, h                                          ; $7230: $5c
	sbc c                                            ; $7231: $99
	or e                                             ; $7232: $b3
	ld [hl], a                                       ; $7233: $77
	ld [hl], d                                       ; $7234: $72
	adc e                                            ; $7235: $8b
	xor [hl]                                         ; $7236: $ae
	ld e, e                                          ; $7237: $5b
	ld [hl], h                                       ; $7238: $74

jr_05e_7239:
	xor h                                            ; $7239: $ac
	ld d, a                                          ; $723a: $57
	sbc a                                            ; $723b: $9f
	pop hl                                           ; $723c: $e1
	rst JumpTable                                          ; $723d: $c7
	rra                                              ; $723e: $1f
	inc a                                            ; $723f: $3c
	ld hl, sp-$0d                                    ; $7240: $f8 $f3
	rst AddAOntoHL                                          ; $7242: $ef
	db $fc                                           ; $7243: $fc
	db $ed                                           ; $7244: $ed
	or c                                             ; $7245: $b1
	ret nz                                           ; $7246: $c0

	ld sp, $fd9e                                     ; $7247: $31 $9e $fd
	add b                                            ; $724a: $80
	rst $38                                          ; $724b: $ff
	ei                                               ; $724c: $fb
	di                                               ; $724d: $f3
	ret nz                                           ; $724e: $c0

	nop                                              ; $724f: $00
	rrca                                             ; $7250: $0f
	ld a, a                                          ; $7251: $7f
	or $85                                           ; $7252: $f6 $85
	rrca                                             ; $7254: $0f
	adc $6d                                          ; $7255: $ce $6d
	rst FarCall                                          ; $7257: $f7
	adc a                                            ; $7258: $8f
	sub a                                            ; $7259: $97
	halt                                             ; $725a: $76
	cp $8f                                           ; $725b: $fe $8f
	rst FarCall                                          ; $725d: $f7
	or $7d                                           ; $725e: $f6 $7d
	rst $38                                          ; $7260: $ff
	rrca                                             ; $7261: $0f
	ld a, h                                          ; $7262: $7c
	adc a                                            ; $7263: $8f
	inc bc                                           ; $7264: $03
	jp $1f8f                                         ; $7265: $c3 $8f $1f


	db $e3                                           ; $7268: $e3
	sbc h                                            ; $7269: $9c
	add b                                            ; $726a: $80
	rst JumpTable                                          ; $726b: $c7
	ld h, e                                          ; $726c: $63
	ld sp, $f07c                                     ; $726d: $31 $7c $f0
	ldh [$fc], a                                     ; $7270: $e0 $fc
	rst $38                                          ; $7272: $ff
	ld a, e                                          ; $7273: $7b
	dec a                                            ; $7274: $3d
	sbc [hl]                                         ; $7275: $9e
	pop de                                           ; $7276: $d1
	inc l                                            ; $7277: $2c
	ld d, $8a                                        ; $7278: $16 $8a

jr_05e_727a:
	push bc                                          ; $727a: $c5

Jump_05e_727b:
	ld h, e                                          ; $727b: $63
	or d                                             ; $727c: $b2
	reti                                             ; $727d: $d9


	inc a                                            ; $727e: $3c
	ld e, $0f                                        ; $727f: $1e $0f
	rlca                                             ; $7281: $07
	inc bc                                           ; $7282: $03
	add c                                            ; $7283: $81
	pop bc                                           ; $7284: $c1
	ldh [rLY], a                                     ; $7285: $e0 $44
	and d                                            ; $7287: $a2
	ld e, [hl]                                       ; $7288: $5e
	or [hl]                                          ; $7289: $b6
	add b                                            ; $728a: $80
	dec c                                            ; $728b: $0d
	ld e, c                                          ; $728c: $59
	add l                                            ; $728d: $85
	xor l                                            ; $728e: $ad
	db $ec                                           ; $728f: $ec
	halt                                             ; $7290: $76
	ld [hl-], a                                      ; $7291: $32
	ld a, [de]                                       ; $7292: $1a
	sbc e                                            ; $7293: $9b
	adc a                                            ; $7294: $8f
	rst GetHLinHL                                          ; $7295: $cf
	rst JumpTable                                          ; $7296: $c7
	rst GetHLinHL                                          ; $7297: $cf
	rst GetHLinHL                                          ; $7298: $cf
	adc $cc                                          ; $7299: $ce $cc
	ret                                              ; $729b: $c9


	set 2, e                                         ; $729c: $cb $d3
	rst SubAFromHL                                          ; $729e: $d7
	ld c, b                                          ; $729f: $48
	ld c, c                                          ; $72a0: $49
	ld c, e                                          ; $72a1: $4b
	ld c, a                                          ; $72a2: $4f
	ld c, [hl]                                       ; $72a3: $4e
	ld c, h                                          ; $72a4: $4c
	ld e, l                                          ; $72a5: $5d
	ld e, c                                          ; $72a6: $59
	rst JumpTable                                          ; $72a7: $c7
	add hl, de                                       ; $72a8: $19
	ld h, a                                          ; $72a9: $67
	add b                                            ; $72aa: $80
	rst GetHLinHL                                          ; $72ab: $cf
	db $db                                           ; $72ac: $db
	and h                                            ; $72ad: $a4
	ld d, d                                          ; $72ae: $52
	sbc c                                            ; $72af: $99
	ld hl, sp-$1a                                    ; $72b0: $f8 $e6
	sbc b                                            ; $72b2: $98
	jr nc, jr_05e_7319                               ; $72b3: $30 $64

	ret                                              ; $72b5: $c9


	sbc c                                            ; $72b6: $99
	ld [hl-], a                                      ; $72b7: $32
	ret nz                                           ; $72b8: $c0

	db $e3                                           ; $72b9: $e3
	rst $38                                          ; $72ba: $ff
	xor $6e                                          ; $72bb: $ee $6e
	rst SubAFromDE                                          ; $72bd: $df
	sbc $18                                          ; $72be: $de $18
	ccf                                              ; $72c0: $3f
	inc e                                            ; $72c1: $1c
	nop                                              ; $72c2: $00
	ld de, $2091                                     ; $72c3: $11 $91 $20
	jr nz, jr_05e_732a                               ; $72c6: $20 $62

	rst $38                                          ; $72c8: $ff
	ei                                               ; $72c9: $fb
	add c                                            ; $72ca: $81
	db $fc                                           ; $72cb: $fc
	xor $55                                          ; $72cc: $ee $55
	ld d, d                                          ; $72ce: $52
	jr z, jr_05e_727a                                ; $72cf: $28 $a9

	nop                                              ; $72d1: $00
	inc b                                            ; $72d2: $04
	inc bc                                           ; $72d3: $03
	ld de, $8c88                                     ; $72d4: $11 $88 $8c
	add $46                                          ; $72d7: $c6 $46
	ld [hl], a                                       ; $72d9: $77
	jp c, $77ed                                      ; $72da: $da $ed $77

	ld a, [hl+]                                      ; $72dd: $2a
	dec [hl]                                         ; $72de: $35
	sbc e                                            ; $72df: $9b
	add hl, de                                       ; $72e0: $19
	db $ec                                           ; $72e1: $ec
	ld [hl], $1b                                     ; $72e2: $36 $1b
	adc l                                            ; $72e4: $8d
	rst SubAFromHL                                          ; $72e5: $d7
	bit 4, l                                         ; $72e6: $cb $65
	ld h, [hl]                                       ; $72e8: $66
	db $fd                                           ; $72e9: $fd
	sbc $80                                          ; $72ea: $de $80
	sbc h                                            ; $72ec: $9c
	ret nz                                           ; $72ed: $c0

	rst $38                                          ; $72ee: $ff
	nop                                              ; $72ef: $00
	db $db                                           ; $72f0: $db
	rst $38                                          ; $72f1: $ff
	ld sp, hl                                        ; $72f2: $f9
	ld h, a                                          ; $72f3: $67
	ldh a, [$d9]                                     ; $72f4: $f0 $d9
	cpl                                              ; $72f6: $2f
	sbc l                                            ; $72f7: $9d
	ld hl, sp+$38                                    ; $72f8: $f8 $38
	db $db                                           ; $72fa: $db
	ld hl, sp-$27                                    ; $72fb: $f8 $d9
	db $f4                                           ; $72fd: $f4
	rst SubAFromDE                                          ; $72fe: $df
	rla                                              ; $72ff: $17
	db $db                                           ; $7300: $db
	rra                                              ; $7301: $1f
	ei                                               ; $7302: $fb
	sbc l                                            ; $7303: $9d
	ld bc, $d902                                     ; $7304: $01 $02 $d9
	rst $38                                          ; $7307: $ff
	ld sp, hl                                        ; $7308: $f9
	sbc c                                            ; $7309: $99
	inc b                                            ; $730a: $04
	inc h                                            ; $730b: $24
	or l                                             ; $730c: $b5
	inc h                                            ; $730d: $24
	ld h, l                                          ; $730e: $65
	sub h                                            ; $730f: $94
	ld e, [hl]                                       ; $7310: $5e
	ret nz                                           ; $7311: $c0

	adc l                                            ; $7312: $8d
	ld [$eb49], sp                                   ; $7313: $08 $49 $eb
	jp hl                                            ; $7316: $e9


	ld e, e                                          ; $7317: $5b
	ld c, c                                          ; $7318: $49

jr_05e_7319:
	ld [$b5ff], sp                                   ; $7319: $08 $ff $b5
	sub l                                            ; $731c: $95
	sub d                                            ; $731d: $92
	or d                                             ; $731e: $b2
	and a                                            ; $731f: $a7
	xor a                                            ; $7320: $af
	cp a                                             ; $7321: $bf
	cp a                                             ; $7322: $bf
	db $db                                           ; $7323: $db
	ei                                               ; $7324: $fb
	sbc $ff                                          ; $7325: $de $ff
	adc b                                            ; $7327: $88
	ld hl, sp-$0a                                    ; $7328: $f8 $f6

jr_05e_732a:
	pop af                                           ; $732a: $f1
	db $e4                                           ; $732b: $e4
	jp hl                                            ; $732c: $e9


	xor c                                            ; $732d: $a9
	or e                                             ; $732e: $b3
	scf                                              ; $732f: $37
	and a                                            ; $7330: $a7
	xor a                                            ; $7331: $af
	adc a                                            ; $7332: $8f
	ld a, a                                          ; $7333: $7f
	ld a, a                                          ; $7334: $7f
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	cp $fc                                           ; $7337: $fe $fc
	ld hl, sp-$08                                    ; $7339: $f8 $f8
	cp a                                             ; $733b: $bf
	ld b, b                                          ; $733c: $40
	cp a                                             ; $733d: $bf
	ld e, a                                          ; $733e: $5f
	sbc $ff                                          ; $733f: $de $ff
	sbc d                                            ; $7341: $9a
	db $dd                                           ; $7342: $dd
	ldh a, [rIE]                                     ; $7343: $f0 $ff
	rst $38                                          ; $7345: $ff
	ldh [$fe], a                                     ; $7346: $e0 $fe
	sbc c                                            ; $7348: $99
	ld a, $fb                                        ; $7349: $3e $fb
	ld a, h                                          ; $734b: $7c
	sbc h                                            ; $734c: $9c
	ld l, h                                          ; $734d: $6c
	call c, $fcde                                    ; $734e: $dc $de $fc
	sub h                                            ; $7351: $94
	ld c, $8c                                        ; $7352: $0e $8c
	db $ec                                           ; $7354: $ec
	ld hl, sp+$38                                    ; $7355: $f8 $38
	ld [rRAMG], sp                                   ; $7357: $08 $00 $00
	rlca                                             ; $735a: $07
	inc bc                                           ; $735b: $03
	inc bc                                           ; $735c: $03
	sbc $01                                          ; $735d: $de $01
	ld a, e                                          ; $735f: $7b
	ei                                               ; $7360: $fb
	ld l, a                                          ; $7361: $6f
	adc b                                            ; $7362: $88
	add b                                            ; $7363: $80
	ld bc, $9c59                                     ; $7364: $01 $59 $9c
	cp [hl]                                          ; $7367: $be
	sbc [hl]                                         ; $7368: $9e
	cp a                                             ; $7369: $bf
	cp a                                             ; $736a: $bf
	ld a, a                                          ; $736b: $7f
	rst $38                                          ; $736c: $ff
	sbc [hl]                                         ; $736d: $9e
	rst SubAFromHL                                          ; $736e: $d7
	db $d3                                           ; $736f: $d3
	di                                               ; $7370: $f3
	pop hl                                           ; $7371: $e1
	pop hl                                           ; $7372: $e1
	pop bc                                           ; $7373: $c1
	add b                                            ; $7374: $80
	db $ed                                           ; $7375: $ed
	halt                                             ; $7376: $76
	cp d                                             ; $7377: $ba
	dec a                                            ; $7378: $3d
	ld a, a                                          ; $7379: $7f
	ld a, [hl-]                                      ; $737a: $3a
	dec e                                            ; $737b: $1d
	cp e                                             ; $737c: $bb
	ld [hl], b                                       ; $737d: $70
	jr c, jr_05e_73bc                                ; $737e: $38 $3c

	sbc [hl]                                         ; $7380: $9e
	sbc [hl]                                         ; $7381: $9e
	rst SubAFromDE                                          ; $7382: $df
	add e                                            ; $7383: $83
	ei                                               ; $7384: $fb
	jp hl                                            ; $7385: $e9


	ld e, l                                          ; $7386: $5d
	rst SubAFromDE                                          ; $7387: $df
	rst GetHLinHL                                          ; $7388: $cf
	and l                                            ; $7389: $a5
	jp hl                                            ; $738a: $e9


	jp hl                                            ; $738b: $e9


	ld d, b                                          ; $738c: $50
	ret nc                                           ; $738d: $d0

	rst SubAFromBC                                          ; $738e: $e7
	ld h, a                                          ; $738f: $67
	ld [hl], a                                       ; $7390: $77
	ld a, l                                          ; $7391: $7d
	add hl, sp                                       ; $7392: $39
	add hl, sp                                       ; $7393: $39
	or b                                             ; $7394: $b0
	or b                                             ; $7395: $b0
	and $ee                                          ; $7396: $e6 $ee
	db $ed                                           ; $7398: $ed
	call $c9cd                                       ; $7399: $cd $cd $c9
	ret z                                            ; $739c: $c8

	ret z                                            ; $739d: $c8

	ld a, e                                          ; $739e: $7b
	ld [hl], e                                       ; $739f: $73
	sbc $76                                          ; $73a0: $de $76
	add b                                            ; $73a2: $80
	ld a, [hl]                                       ; $73a3: $7e
	ld a, a                                          ; $73a4: $7f
	ld a, a                                          ; $73a5: $7f
	inc h                                            ; $73a6: $24
	ld [hl], b                                       ; $73a7: $70
	ld c, [hl]                                       ; $73a8: $4e
	push bc                                          ; $73a9: $c5
	ld h, l                                          ; $73aa: $65
	cp c                                             ; $73ab: $b9
	xor d                                            ; $73ac: $aa
	xor d                                            ; $73ad: $aa
	ld [hl-], a                                      ; $73ae: $32
	ld h, $64                                        ; $73af: $26 $64
	ld l, h                                          ; $73b1: $6c
	call z, $ddcc                                    ; $73b2: $cc $cc $dd
	db $dd                                           ; $73b5: $dd
	xor c                                            ; $73b6: $a9
	and c                                            ; $73b7: $a1
	ld hl, $a828                                     ; $73b8: $21 $28 $a8
	or d                                             ; $73bb: $b2

jr_05e_73bc:
	or e                                             ; $73bc: $b3
	or a                                             ; $73bd: $b7
	ld b, d                                          ; $73be: $42
	ld b, d                                          ; $73bf: $42
	jp nz, $9ec3                                     ; $73c0: $c2 $c3 $9e

	jp $c9de                                         ; $73c3: $c3 $de $c9


	add b                                            ; $73c6: $80
	ld d, $56                                        ; $73c7: $16 $56
	adc c                                            ; $73c9: $89
	adc e                                            ; $73ca: $8b
	and a                                            ; $73cb: $a7
	ld h, [hl]                                       ; $73cc: $66
	ld [hl], d                                       ; $73cd: $72
	jr c, jr_05e_7433                                ; $73ce: $38 $63

	inc hl                                           ; $73d0: $23
	inc sp                                           ; $73d1: $33
	ld sp, $9919                                     ; $73d2: $31 $19 $99
	sbc l                                            ; $73d5: $9d
	rst SubAFromDE                                          ; $73d6: $df
	ld c, l                                          ; $73d7: $4d
	adc h                                            ; $73d8: $8c
	ld b, $66                                        ; $73d9: $06 $66
	ld [hl-], a                                      ; $73db: $32
	or d                                             ; $73dc: $b2
	sub d                                            ; $73dd: $92
	ret z                                            ; $73de: $c8

	ld [hl-], a                                      ; $73df: $32
	inc sp                                           ; $73e0: $33
	cp c                                             ; $73e1: $b9
	sbc c                                            ; $73e2: $99
	db $dd                                           ; $73e3: $dd
	db $dd                                           ; $73e4: $dd
	db $fd                                           ; $73e5: $fd
	sub d                                            ; $73e6: $92
	rst $38                                          ; $73e7: $ff
	ld b, b                                          ; $73e8: $40
	ret nz                                           ; $73e9: $c0

	ldh [$a0], a                                     ; $73ea: $e0 $a0
	ld h, b                                          ; $73ec: $60
	ld h, b                                          ; $73ed: $60
	ldh [$e0], a                                     ; $73ee: $e0 $e0
	ret nz                                           ; $73f0: $c0

	ld b, b                                          ; $73f1: $40
	ld h, b                                          ; $73f2: $60
	ld h, b                                          ; $73f3: $60
	db $dd                                           ; $73f4: $dd
	and b                                            ; $73f5: $a0
	sbc h                                            ; $73f6: $9c
	nop                                              ; $73f7: $00
	ld b, $06                                        ; $73f8: $06 $06
	db $f4                                           ; $73fa: $f4
	ld h, d                                          ; $73fb: $62
	ret nz                                           ; $73fc: $c0

	jp c, $d9f8                                      ; $73fd: $da $f8 $d9

	db $f4                                           ; $7400: $f4
	reti                                             ; $7401: $d9


	rra                                              ; $7402: $1f
	sbc d                                            ; $7403: $9a
	dec b                                            ; $7404: $05
	dec bc                                           ; $7405: $0b
	ld d, $2c                                        ; $7406: $16 $2c
	ld e, b                                          ; $7408: $58
	sbc $50                                          ; $7409: $de $50
	ld [hl], e                                       ; $740b: $73
	ld [bc], a                                       ; $740c: $02
	sbc $f0                                          ; $740d: $de $f0
	ld h, d                                          ; $740f: $62
	ret nz                                           ; $7410: $c0

	jp c, $7704                                      ; $7411: $da $04 $77

	inc e                                            ; $7414: $1c
	ld a, e                                          ; $7415: $7b
	ld de, $079c                                     ; $7416: $11 $9c $07
	ld [$de08], sp                                   ; $7419: $08 $08 $de
	add hl, bc                                       ; $741c: $09
	rst SubAFromDE                                          ; $741d: $df
	ld a, [bc]                                       ; $741e: $0a
	adc h                                            ; $741f: $8c
	dec c                                            ; $7420: $0d
	cp e                                             ; $7421: $bb
	cp a                                             ; $7422: $bf
	ld a, $3f                                        ; $7423: $3e $3f
	dec a                                            ; $7425: $3d
	cp a                                             ; $7426: $bf
	ei                                               ; $7427: $fb
	rst SubAFromDE                                          ; $7428: $df
	rst SubAFromBC                                          ; $7429: $e7
	db $e4                                           ; $742a: $e4
	jp hl                                            ; $742b: $e9


	jp hl                                            ; $742c: $e9


	db $eb                                           ; $742d: $eb
	ld [$b6a6], a                                    ; $742e: $ea $a6 $b6
	sbc a                                            ; $7431: $9f
	sbc a                                            ; $7432: $9f

jr_05e_7433:
	sbc $bf                                          ; $7433: $de $bf
	sbc $ff                                          ; $7435: $de $ff
	rst SubAFromDE                                          ; $7437: $df
	ldh a, [$df]                                     ; $7438: $f0 $df
	ldh [$9b], a                                     ; $743a: $e0 $9b
	pop hl                                           ; $743c: $e1
	jp $c1c3                                         ; $743d: $c3 $c3 $c1


	sbc $ff                                          ; $7440: $de $ff
	sub c                                            ; $7442: $91
	rst JumpTable                                          ; $7443: $c7
	push bc                                          ; $7444: $c5
	db $fd                                           ; $7445: $fd
	ld a, l                                          ; $7446: $7d
	ld l, c                                          ; $7447: $69
	ld b, c                                          ; $7448: $41
	inc a                                            ; $7449: $3c
	ld a, [hl]                                       ; $744a: $7e
	rst GetHLinHL                                          ; $744b: $cf
	add l                                            ; $744c: $85
	db $fd                                           ; $744d: $fd
	db $fc                                           ; $744e: $fc
	ld hl, sp-$04                                    ; $744f: $f8 $fc
	ld a, d                                          ; $7451: $7a
	xor h                                            ; $7452: $ac
	ld a, a                                          ; $7453: $7f
	push hl                                          ; $7454: $e5
	ld a, l                                          ; $7455: $7d
	add e                                            ; $7456: $83
	ld a, [hl]                                       ; $7457: $7e
	dec de                                           ; $7458: $1b
	ei                                               ; $7459: $fb
	ld a, a                                          ; $745a: $7f

jr_05e_745b:
	or [hl]                                          ; $745b: $b6
	sbc b                                            ; $745c: $98
	rrca                                             ; $745d: $0f
	rra                                              ; $745e: $1f
	rra                                              ; $745f: $1f
	ccf                                              ; $7460: $3f
	ccf                                              ; $7461: $3f
	ld a, a                                          ; $7462: $7f
	inc bc                                           ; $7463: $03
	ei                                               ; $7464: $fb
	rst SubAFromDE                                          ; $7465: $df
	rlca                                             ; $7466: $07
	sub l                                            ; $7467: $95
	ld sp, hl                                        ; $7468: $f9
	or $fd                                           ; $7469: $f6 $fd
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	ei                                               ; $746d: $fb
	db $e3                                           ; $746e: $e3
	ld hl, sp-$02                                    ; $746f: $f8 $fe
	rrca                                             ; $7471: $0f
	ld [hl], e                                       ; $7472: $73
	db $ed                                           ; $7473: $ed
	add a                                            ; $7474: $87
	cp b                                             ; $7475: $b8
	ld a, [$f5ff]                                    ; $7476: $fa $ff $f5
	rst FarCall                                          ; $7479: $f7
	di                                               ; $747a: $f3
	push de                                          ; $747b: $d5
	reti                                             ; $747c: $d9


	jp hl                                            ; $747d: $e9


	ret                                              ; $747e: $c9


	reti                                             ; $747f: $d9


	sbc e                                            ; $7480: $9b
	cp e                                             ; $7481: $bb
	ccf                                              ; $7482: $3f
	ld a, l                                          ; $7483: $7d
	ld sp, hl                                        ; $7484: $f9
	sub b                                            ; $7485: $90
	ret nc                                           ; $7486: $d0

	ld d, b                                          ; $7487: $50
	or b                                             ; $7488: $b0
	jr nc, jr_05e_745b                               ; $7489: $30 $d0

	ld d, b                                          ; $748b: $50
	ret nc                                           ; $748c: $d0

	sbc $f0                                          ; $748d: $de $f0
	rst SubAFromDE                                          ; $748f: $df
	ld [hl], b                                       ; $7490: $70
	ld a, a                                          ; $7491: $7f
	ld sp, hl                                        ; $7492: $f9
	sbc l                                            ; $7493: $9d
	ret nc                                           ; $7494: $d0

	ret z                                            ; $7495: $c8

	sbc $c9                                          ; $7496: $de $c9
	rst SubAFromDE                                          ; $7498: $df
	push hl                                          ; $7499: $e5
	sbc l                                            ; $749a: $9d
	push de                                          ; $749b: $d5

jr_05e_749c:
	rst SubAFromHL                                          ; $749c: $d7
	db $db                                           ; $749d: $db
	ld a, a                                          ; $749e: $7f
	add b                                            ; $749f: $80
	ld e, a                                          ; $74a0: $5f
	ld e, [hl]                                       ; $74a1: $5e
	xor d                                            ; $74a2: $aa
	sbc c                                            ; $74a3: $99
	sbc c                                            ; $74a4: $99
	sbc l                                            ; $74a5: $9d
	sub l                                            ; $74a6: $95
	db $dd                                           ; $74a7: $dd
	ld e, a                                          ; $74a8: $5f
	ei                                               ; $74a9: $fb
	db $dd                                           ; $74aa: $dd
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst FarCall                                          ; $74ad: $f7
	rst $38                                          ; $74ae: $ff
	ld a, a                                          ; $74af: $7f
	di                                               ; $74b0: $f3
	scf                                              ; $74b1: $37
	and l                                            ; $74b2: $a5
	or a                                             ; $74b3: $b7
	sub a                                            ; $74b4: $97
	db $d3                                           ; $74b5: $d3
	db $db                                           ; $74b6: $db
	db $db                                           ; $74b7: $db
	db $fd                                           ; $74b8: $fd
	rst $38                                          ; $74b9: $ff
	db $db                                           ; $74ba: $db
	jp c, Jump_05e_7efa                              ; $74bb: $da $fa $7e

	cp $84                                           ; $74be: $fe $84
	ld a, [hl]                                       ; $74c0: $7e
	scf                                              ; $74c1: $37
	inc sp                                           ; $74c2: $33
	cp b                                             ; $74c3: $b8
	sbc h                                            ; $74c4: $9c
	sbc $df                                          ; $74c5: $de $df
	rst AddAOntoHL                                          ; $74c7: $ef
	rst FarCall                                          ; $74c8: $f7
	xor $d9                                          ; $74c9: $ee $d9
	rst SubAFromDE                                          ; $74cb: $df
	rst FarCall                                          ; $74cc: $f7
	rst FarCall                                          ; $74cd: $f7
	ld a, a                                          ; $74ce: $7f
	add hl, sp                                       ; $74cf: $39
	inc e                                            ; $74d0: $1c
	rra                                              ; $74d1: $1f
	jr nz, jr_05e_749c                               ; $74d2: $20 $c8

	xor c                                            ; $74d4: $a9
	ld h, l                                          ; $74d5: $65
	ld d, l                                          ; $74d6: $55
	xor [hl]                                         ; $74d7: $ae
	cp $fc                                           ; $74d8: $fe $fc
	cp $dc                                           ; $74da: $fe $dc
	rst $38                                          ; $74dc: $ff
	sub e                                            ; $74dd: $93
	ld [hl], a                                       ; $74de: $77
	rlca                                             ; $74df: $07
	rlca                                             ; $74e0: $07
	ldh [rAUD4LEN], a                                ; $74e1: $e0 $20
	jr nz, @+$62                                     ; $74e3: $20 $60

	ld h, b                                          ; $74e5: $60
	ld d, b                                          ; $74e6: $50
	ldh a, [$f0]                                     ; $74e7: $f0 $f0
	and b                                            ; $74e9: $a0
	db $dd                                           ; $74ea: $dd
	ldh [$9c], a                                     ; $74eb: $e0 $9c
	ldh a, [$d0]                                     ; $74ed: $f0 $d0
	ret nc                                           ; $74ef: $d0

	pop af                                           ; $74f0: $f1
	ld b, $c0                                        ; $74f1: $06 $c0
	sub d                                            ; $74f3: $92
	ld d, e                                          ; $74f4: $53
	ld d, [hl]                                       ; $74f5: $56
	ld d, l                                          ; $74f6: $55
	ld d, l                                          ; $74f7: $55
	ld d, [hl]                                       ; $74f8: $56
	ld d, [hl]                                       ; $74f9: $56
	ld d, l                                          ; $74fa: $55
	ld d, h                                          ; $74fb: $54
	di                                               ; $74fc: $f3
	or $f5                                           ; $74fd: $f6 $f5
	push af                                          ; $74ff: $f5
	or $de                                           ; $7500: $f6 $de
	rst FarCall                                          ; $7502: $f7
	ld a, a                                          ; $7503: $7f
	jr jr_05e_7584                                   ; $7504: $18 $7e

	ld [hl], a                                       ; $7506: $77
	add e                                            ; $7507: $83
	inc hl                                           ; $7508: $23
	cpl                                              ; $7509: $2f
	add hl, sp                                       ; $750a: $39
	ld h, c                                          ; $750b: $61
	inc b                                            ; $750c: $04
	add h                                            ; $750d: $84
	call nz, $e7e4                                   ; $750e: $c4 $e4 $e7
	rst AddAOntoHL                                          ; $7511: $ef
	rst $38                                          ; $7512: $ff
	rst $38                                          ; $7513: $ff
	dec bc                                           ; $7514: $0b
	rla                                              ; $7515: $17
	ld h, a                                          ; $7516: $67
	cp $e7                                           ; $7517: $fe $e7
	rst JumpTable                                          ; $7519: $c7
	ld e, a                                          ; $751a: $5f
	ld a, a                                          ; $751b: $7f
	dec c                                            ; $751c: $0d
	dec de                                           ; $751d: $1b
	ld a, a                                          ; $751e: $7f
	rst $38                                          ; $751f: $ff
	and a                                            ; $7520: $a7
	ld b, [hl]                                       ; $7521: $46
	ld e, b                                          ; $7522: $58
	ld h, b                                          ; $7523: $60
	ld [hl], l                                       ; $7524: $75
	call nc, $ffdd                                   ; $7525: $d4 $dd $ff
	sbc e                                            ; $7528: $9b
	ld [hl], h                                       ; $7529: $74
	ld l, h                                          ; $752a: $6c
	call nz, $de84                                   ; $752b: $c4 $84 $de
	inc b                                            ; $752e: $04
	sbc d                                            ; $752f: $9a
	ld b, h                                          ; $7530: $44
	rst $38                                          ; $7531: $ff
	db $fd                                           ; $7532: $fd
	rst $38                                          ; $7533: $ff
	ld sp, hl                                        ; $7534: $f9
	sbc $f0                                          ; $7535: $de $f0
	sbc e                                            ; $7537: $9b
	ldh [rLCDC], a                                   ; $7538: $e0 $40
	ld b, e                                          ; $753a: $43
	ld b, c                                          ; $753b: $41
	db $fc                                           ; $753c: $fc
	sbc l                                            ; $753d: $9d
	ld e, d                                          ; $753e: $5a
	db $f4                                           ; $753f: $f4
	ld a, d                                          ; $7540: $7a

jr_05e_7541:
	dec [hl]                                         ; $7541: $35
	cp $9a                                           ; $7542: $fe $9a
	add sp, $10                                      ; $7544: $e8 $10

jr_05e_7546:
	and b                                            ; $7546: $a0
	ret nz                                           ; $7547: $c0

	jr nz, jr_05e_7541                               ; $7548: $20 $f7

	sbc [hl]                                         ; $754a: $9e
	jr c, jr_05e_7546                                ; $754b: $38 $f9

	sbc $7f                                          ; $754d: $de $7f
	add b                                            ; $754f: $80
	ld [hl], c                                       ; $7550: $71
	ld a, e                                          ; $7551: $7b
	ccf                                              ; $7552: $3f
	ld e, d                                          ; $7553: $5a
	ld a, d                                          ; $7554: $7a
	nop                                              ; $7555: $00
	ld c, $1f                                        ; $7556: $0e $1f
	inc sp                                           ; $7558: $33
	ld sp, $7e7f                                     ; $7559: $31 $7f $7e
	ld e, d                                          ; $755c: $5a
	jp $8783                                         ; $755d: $c3 $83 $87


	adc h                                            ; $7560: $8c
	sbc b                                            ; $7561: $98
	sbc b                                            ; $7562: $98
	cp h                                             ; $7563: $bc
	ld a, h                                          ; $7564: $7c
	add b                                            ; $7565: $80
	ld b, c                                          ; $7566: $41
	inc bc                                           ; $7567: $03
	add h                                            ; $7568: $84
	adc b                                            ; $7569: $88
	adc b                                            ; $756a: $88
	sub h                                            ; $756b: $94
	inc [hl]                                         ; $756c: $34
	pop af                                           ; $756d: $f1
	pop hl                                           ; $756e: $e1
	ld l, [hl]                                       ; $756f: $6e
	sub a                                            ; $7570: $97
	sbc h                                            ; $7571: $9c
	sub c                                            ; $7572: $91
	ld h, c                                          ; $7573: $61
	and b                                            ; $7574: $a0

Call_05e_7575:
	call c, $6a20                                    ; $7575: $dc $20 $6a
	adc c                                            ; $7578: $89
	sbc l                                            ; $7579: $9d
	nop                                              ; $757a: $00
	ret nz                                           ; $757b: $c0

	jp c, $df40                                      ; $757c: $da $40 $df

	rst GetHLinHL                                          ; $757f: $cf
	sub a                                            ; $7580: $97
	jp c, $d5d3                                      ; $7581: $da $d3 $d5

jr_05e_7584:
	and $e5                                          ; $7584: $e6 $e5
	jp c, Jump_05e_4e4e                              ; $7586: $da $4e $4e

	sbc $5f                                          ; $7589: $de $5f
	adc h                                            ; $758b: $8c
	ld a, l                                          ; $758c: $7d
	ld a, h                                          ; $758d: $7c
	ld l, [hl]                                       ; $758e: $6e
	ei                                               ; $758f: $fb
	rst $38                                          ; $7590: $ff
	db $fc                                           ; $7591: $fc
	rst $38                                          ; $7592: $ff
	ld [hl], a                                       ; $7593: $77
	db $f4                                           ; $7594: $f4
	rst $38                                          ; $7595: $ff

Call_05e_7596:
	ld [hl], b                                       ; $7596: $70
	ld de, $1c0f                                     ; $7597: $11 $0f $1c
	scf                                              ; $759a: $37
	sub [hl]                                         ; $759b: $96
	add [hl]                                         ; $759c: $86
	add e                                            ; $759d: $83
	ret nz                                           ; $759e: $c0

	ld a, e                                          ; $759f: $7b
	ld [hl], d                                       ; $75a0: $72
	sub a                                            ; $75a1: $97
	ret nc                                           ; $75a2: $d0

	add d                                            ; $75a3: $82

jr_05e_75a4:
	adc c                                            ; $75a4: $89
	call nc, $1104                                   ; $75a5: $d4 $04 $11
	add b                                            ; $75a8: $80
	ret nz                                           ; $75a9: $c0

	sbc $80                                          ; $75aa: $de $80
	ld a, b                                          ; $75ac: $78
	ld a, b                                          ; $75ad: $78
	sub e                                            ; $75ae: $93
	ld sp, hl                                        ; $75af: $f9
	ld l, a                                          ; $75b0: $6f
	cpl                                              ; $75b1: $2f
	add hl, bc                                       ; $75b2: $09
	ld c, a                                          ; $75b3: $4f
	sub b                                            ; $75b4: $90
	nop                                              ; $75b5: $00
	adc a                                            ; $75b6: $8f
	add hl, de                                       ; $75b7: $19
	rrca                                             ; $75b8: $0f
	dec c                                            ; $75b9: $0d
	dec c                                            ; $75ba: $0d
	ld a, c                                          ; $75bb: $79
	and l                                            ; $75bc: $a5
	ld a, a                                          ; $75bd: $7f
	ld d, c                                          ; $75be: $51
	add c                                            ; $75bf: $81
	jp hl                                            ; $75c0: $e9


	ld c, c                                          ; $75c1: $49
	ld e, a                                          ; $75c2: $5f
	sub [hl]                                         ; $75c3: $96
	rra                                              ; $75c4: $1f
	ld a, [hl-]                                      ; $75c5: $3a

jr_05e_75c6:
	add a                                            ; $75c6: $87
	call nz, Call_05e_4d6c                           ; $75c7: $c4 $6c $4d
	add hl, bc                                       ; $75ca: $09
	dec bc                                           ; $75cb: $0b
	ld d, $1f                                        ; $75cc: $16 $1f
	ld e, b                                          ; $75ce: $58
	cp b                                             ; $75cf: $b8
	db $ec                                           ; $75d0: $ec
	ld d, h                                          ; $75d1: $54
	halt                                             ; $75d2: $76
	adc d                                            ; $75d3: $8a
	db $db                                           ; $75d4: $db
	push hl                                          ; $75d5: $e5
	add sp, -$18                                     ; $75d6: $e8 $e8
	or h                                             ; $75d8: $b4
	or h                                             ; $75d9: $b4
	sub d                                            ; $75da: $92
	jp c, $6dc9                                      ; $75db: $da $c9 $6d

	cp $59                                           ; $75de: $fe $59
	ld a, [hl]                                       ; $75e0: $7e
	rst SubAFromDE                                          ; $75e1: $df
	rst $38                                          ; $75e2: $ff
	sbc l                                            ; $75e3: $9d
	dec l                                            ; $75e4: $2d
	add hl, hl                                       ; $75e5: $29
	db $db                                           ; $75e6: $db
	jr z, jr_05e_75c6                                ; $75e7: $28 $dd

	ld hl, sp-$21                                    ; $75e9: $f8 $df
	add sp, -$64                                     ; $75eb: $e8 $9c
	xor b                                            ; $75ed: $a8
	jr z, jr_05e_75a4                                ; $75ee: $28 $b4

	db $db                                           ; $75f0: $db
	inc [hl]                                         ; $75f1: $34
	sbc [hl]                                         ; $75f2: $9e
	scf                                              ; $75f3: $37
	reti                                             ; $75f4: $d9


	rra                                              ; $75f5: $1f
	call c, $9c54                                    ; $75f6: $dc $54 $9c
	ld e, h                                          ; $75f9: $5c
	ld [hl], h                                       ; $75fa: $74
	call nz, $f7dc                                   ; $75fb: $c4 $dc $f7
	sbc $ff                                          ; $75fe: $de $ff
	sbc [hl]                                         ; $7600: $9e
	add c                                            ; $7601: $81
	call c, Call_05e_7c01                            ; $7602: $dc $01 $7c
	ld d, c                                          ; $7605: $51
	reti                                             ; $7606: $d9


	rst $38                                          ; $7607: $ff
	call c, $9c7f                                    ; $7608: $dc $7f $9c
	cp [hl]                                          ; $760b: $be
	cp a                                             ; $760c: $bf
	cp a                                             ; $760d: $bf
	sbc $40                                          ; $760e: $de $40
	rst SubAFromDE                                          ; $7610: $df
	ld b, c                                          ; $7611: $41
	adc h                                            ; $7612: $8c
	and e                                            ; $7613: $a3
	and d                                            ; $7614: $a2
	and d                                            ; $7615: $a2
	rst $38                                          ; $7616: $ff
	cp a                                             ; $7617: $bf
	rst $38                                          ; $7618: $ff
	dec a                                            ; $7619: $3d
	cp a                                             ; $761a: $bf
	ld a, a                                          ; $761b: $7f
	ld a, [hl]                                       ; $761c: $7e
	ld a, a                                          ; $761d: $7f
	ld b, h                                          ; $761e: $44
	call nz, $8284                                   ; $761f: $c4 $84 $82
	ld [bc], a                                       ; $7622: $02
	ld [bc], a                                       ; $7623: $02
	inc bc                                           ; $7624: $03

jr_05e_7625:
	ld bc, $e0d9                                     ; $7625: $01 $d9 $e0
	jp hl                                            ; $7628: $e9


	sbc d                                            ; $7629: $9a
	ld a, h                                          ; $762a: $7c
	db $fc                                           ; $762b: $fc
	ld a, h                                          ; $762c: $7c
	inc h                                            ; $762d: $24
	inc c                                            ; $762e: $0c
	ld a, b                                          ; $762f: $78
	ld c, b                                          ; $7630: $48
	cp $9d                                           ; $7631: $fe $9d
	inc e                                            ; $7633: $1c

jr_05e_7634:
	jr jr_05e_7634                                   ; $7634: $18 $fe

	sub h                                            ; $7636: $94
	ld [hl], h                                       ; $7637: $74
	ret c                                            ; $7638: $d8

	ld [hl], c                                       ; $7639: $71
	add hl, sp                                       ; $763a: $39
	inc bc                                           ; $763b: $03
	inc bc                                           ; $763c: $03
	ld b, $04                                        ; $763d: $06 $04
	ld c, h                                          ; $763f: $4c
	ld l, b                                          ; $7640: $68
	jr nc, jr_05e_76bc                               ; $7641: $30 $79

	ld h, $98                                        ; $7643: $26 $98
	ld [bc], a                                       ; $7645: $02
	inc b                                            ; $7646: $04
	db $f4                                           ; $7647: $f4
	add sp, -$18                                     ; $7648: $e8 $e8
	ret nc                                           ; $764a: $d0

	and b                                            ; $764b: $a0
	ld a, c                                          ; $764c: $79
	ld h, c                                          ; $764d: $61
	sub a                                            ; $764e: $97
	ld h, h                                          ; $764f: $64
	ld c, b                                          ; $7650: $48
	ret z                                            ; $7651: $c8

	sub b                                            ; $7652: $90
	jr nc, jr_05e_7625                               ; $7653: $30 $d0

	db $10                                           ; $7655: $10
	db $10                                           ; $7656: $10
	ld sp, hl                                        ; $7657: $f9
	reti                                             ; $7658: $d9


jr_05e_7659:
	jr nz, jr_05e_7659                               ; $7659: $20 $fe

	ld a, c                                          ; $765b: $79
	nop                                              ; $765c: $00
	sbc l                                            ; $765d: $9d
	dec b                                            ; $765e: $05
	ld b, $73                                        ; $765f: $06 $73

jr_05e_7661:
	add b                                            ; $7661: $80
	add b                                            ; $7662: $80
	ld b, e                                          ; $7663: $43
	ld b, [hl]                                       ; $7664: $46
	ld b, h                                          ; $7665: $44
	db $db                                           ; $7666: $db
	or l                                             ; $7667: $b5
	or l                                             ; $7668: $b5
	push af                                          ; $7669: $f5
	dec l                                            ; $766a: $2d
	ld l, [hl]                                       ; $766b: $6e
	ld a, [hl]                                       ; $766c: $7e
	or e                                             ; $766d: $b3
	ld l, [hl]                                       ; $766e: $6e
	db $db                                           ; $766f: $db
	db $db                                           ; $7670: $db
	sbc e                                            ; $7671: $9b
	or e                                             ; $7672: $b3
	inc sp                                           ; $7673: $33
	inc hl                                           ; $7674: $23
	ld h, [hl]                                       ; $7675: $66
	ld a, b                                          ; $7676: $78
	db $fc                                           ; $7677: $fc
	db $fc                                           ; $7678: $fc
	ld l, [hl]                                       ; $7679: $6e
	cp [hl]                                          ; $767a: $be
	xor a                                            ; $767b: $af
	xor a                                            ; $767c: $af
	db $db                                           ; $767d: $db
	ld b, b                                          ; $767e: $40
	jr nz, jr_05e_7661                               ; $767f: $20 $e0

	ldh a, [hDisp1_OBP0]                                     ; $7681: $f0 $93
	ld [hl], b                                       ; $7683: $70
	ld a, b                                          ; $7684: $78
	ld a, h                                          ; $7685: $7c
	ld l, [hl]                                       ; $7686: $6e
	ld c, $0e                                        ; $7687: $0e $0e
	nop                                              ; $7689: $00
	ld [$070f], sp                                   ; $768a: $08 $0f $07
	inc bc                                           ; $768d: $03
	add b                                            ; $768e: $80
	ld a, b                                          ; $768f: $78
	add $9c                                          ; $7690: $c6 $9c
	inc c                                            ; $7692: $0c
	rlca                                             ; $7693: $07
	inc b                                            ; $7694: $04
	ld [hl], c                                       ; $7695: $71
	dec l                                            ; $7696: $2d
	ld a, h                                          ; $7697: $7c
	ld e, l                                          ; $7698: $5d
	sbc l                                            ; $7699: $9d
	add b                                            ; $769a: $80
	ld bc, $f777                                     ; $769b: $01 $77 $f7
	ld a, d                                          ; $769e: $7a
	xor a                                            ; $769f: $af
	ld a, a                                          ; $76a0: $7f
	ld hl, sp-$21                                    ; $76a1: $f8 $df
	dec sp                                           ; $76a3: $3b
	sub h                                            ; $76a4: $94
	ld a, [hl]                                       ; $76a5: $7e
	ld l, l                                          ; $76a6: $6d
	rst AddAOntoHL                                          ; $76a7: $ef
	rst SubAFromBC                                          ; $76a8: $e7
	or a                                             ; $76a9: $b7
	cp a                                             ; $76aa: $bf
	dec e                                            ; $76ab: $1d
	dec a                                            ; $76ac: $3d
	dec l                                            ; $76ad: $2d
	halt                                             ; $76ae: $76
	halt                                             ; $76af: $76
	ld a, d                                          ; $76b0: $7a
	add e                                            ; $76b1: $83
	sub a                                            ; $76b2: $97
	dec h                                            ; $76b3: $25
	or [hl]                                          ; $76b4: $b6
	sub d                                            ; $76b5: $92
	db $db                                           ; $76b6: $db
	rst SubAFromDE                                          ; $76b7: $df
	ldh [rAUD4LEN], a                                ; $76b8: $e0 $20
	db $10                                           ; $76ba: $10
	ld [hl], a                                       ; $76bb: $77

jr_05e_76bc:
	ld hl, sp-$62                                    ; $76bc: $f8 $9e
	ld e, a                                          ; $76be: $5f
	sbc $ff                                          ; $76bf: $de $ff
	ld a, l                                          ; $76c1: $7d
	ld h, l                                          ; $76c2: $65
	sbc h                                            ; $76c3: $9c
	rst $38                                          ; $76c4: $ff
	ld hl, sp+$00                                    ; $76c5: $f8 $00
	ld a, c                                          ; $76c7: $79
	db $dd                                           ; $76c8: $dd
	rst SubAFromDE                                          ; $76c9: $df
	add b                                            ; $76ca: $80
	sbc [hl]                                         ; $76cb: $9e
	add a                                            ; $76cc: $87
	ld a, e                                          ; $76cd: $7b
	ei                                               ; $76ce: $fb
	rst $38                                          ; $76cf: $ff
	sbc l                                            ; $76d0: $9d
	jr z, jr_05e_7702                                ; $76d1: $28 $2f

	ld [hl], h                                       ; $76d3: $74
	ld l, l                                          ; $76d4: $6d
	rst SubAFromDE                                          ; $76d5: $df
	rst $38                                          ; $76d6: $ff

jr_05e_76d7:
	ld a, a                                          ; $76d7: $7f
	ld hl, sp-$23                                    ; $76d8: $f8 $dd
	rst $38                                          ; $76da: $ff
	rst $38                                          ; $76db: $ff
	sbc [hl]                                         ; $76dc: $9e
	db $fc                                           ; $76dd: $fc
	ei                                               ; $76de: $fb
	ld a, a                                          ; $76df: $7f
	jp c, $ffdb                                      ; $76e0: $da $db $ff

	adc e                                            ; $76e3: $8b
	inc bc                                           ; $76e4: $03
	scf                                              ; $76e5: $37
	inc sp                                           ; $76e6: $33
	add hl, de                                       ; $76e7: $19
	inc e                                            ; $76e8: $1c
	inc e                                            ; $76e9: $1c
	ld c, $0f                                        ; $76ea: $0e $0f
	rrca                                             ; $76ec: $0f
	call z, $e7ce                                    ; $76ed: $cc $ce $e7
	db $e3                                           ; $76f0: $e3
	db $e3                                           ; $76f1: $e3
	pop af                                           ; $76f2: $f1
	ldh a, [$f0]                                     ; $76f3: $f0 $f0
	jr nc, jr_05e_76d7                               ; $76f5: $30 $e0

	ret nz                                           ; $76f7: $c0

	ld [hl], d                                       ; $76f8: $72
	dec c                                            ; $76f9: $0d
	reti                                             ; $76fa: $d9


	rst $38                                          ; $76fb: $ff
	adc a                                            ; $76fc: $8f
	ld d, [hl]                                       ; $76fd: $56
	ld d, h                                          ; $76fe: $54
	ld d, h                                          ; $76ff: $54
	inc l                                            ; $7700: $2c
	inc l                                            ; $7701: $2c

jr_05e_7702:
	inc d                                            ; $7702: $14
	ld d, $0a                                        ; $7703: $16 $0a
	sub $d4                                          ; $7705: $d6 $d4
	call nc, $ecec                                   ; $7707: $d4 $ec $ec
	db $f4                                           ; $770a: $f4
	or $fa                                           ; $770b: $f6 $fa
	ld l, [hl]                                       ; $770d: $6e
	xor e                                            ; $770e: $ab
	sbc l                                            ; $770f: $9d
	rra                                              ; $7710: $1f
	rlca                                             ; $7711: $07
	ld a, d                                          ; $7712: $7a
	sbc h                                            ; $7713: $9c
	db $fc                                           ; $7714: $fc
	adc [hl]                                         ; $7715: $8e
	ldh [$60], a                                     ; $7716: $e0 $60
	ldh [$a0], a                                     ; $7718: $e0 $a0
	ldh a, [$d0]                                     ; $771a: $f0 $d0
	ldh a, [$f8]                                     ; $771c: $f0 $f8
	nop                                              ; $771e: $00
	add b                                            ; $771f: $80
	add b                                            ; $7720: $80
	ret nz                                           ; $7721: $c0

	ld b, b                                          ; $7722: $40
	ld h, b                                          ; $7723: $60
	jr nz, jr_05e_7756                               ; $7724: $20 $30

	rlca                                             ; $7726: $07
	ld a, b                                          ; $7727: $78
	ld l, h                                          ; $7728: $6c
	ld [hl], a                                       ; $7729: $77
	push hl                                          ; $772a: $e5
	ld l, b                                          ; $772b: $68
	ld h, b                                          ; $772c: $60
	ld a, a                                          ; $772d: $7f
	ld c, e                                          ; $772e: $4b
	sbc [hl]                                         ; $772f: $9e
	ld h, b                                          ; $7730: $60
	ld a, b                                          ; $7731: $78
	ld b, l                                          ; $7732: $45
	ld a, a                                          ; $7733: $7f
	ld c, c                                          ; $7734: $49
	sbc l                                            ; $7735: $9d
	ld c, $80                                        ; $7736: $0e $80
	ld [hl], c                                       ; $7738: $71
	ld [hl], e                                       ; $7739: $73
	sbc c                                            ; $773a: $99
	ld bc, $0c06                                     ; $773b: $01 $06 $0c
	jr jr_05e_7770                                   ; $773e: $18 $30

	ld [hl], b                                       ; $7740: $70
	ld [hl], a                                       ; $7741: $77
	sbc l                                            ; $7742: $9d
	sbc b                                            ; $7743: $98
	inc b                                            ; $7744: $04
	ld [$3818], sp                                   ; $7745: $08 $18 $38
	ld l, b                                          ; $7748: $68
	ret z                                            ; $7749: $c8

	adc b                                            ; $774a: $88
	ld l, [hl]                                       ; $774b: $6e
	and [hl]                                         ; $774c: $a6
	cp $d9                                           ; $774d: $fe $d9
	db $10                                           ; $774f: $10
	ld b, [hl]                                       ; $7750: $46
	ret nz                                           ; $7751: $c0

	sbc h                                            ; $7752: $9c
	ld b, $03                                        ; $7753: $06 $03
	inc bc                                           ; $7755: $03

jr_05e_7756:
	ld [hl], e                                       ; $7756: $73
	sub [hl]                                         ; $7757: $96
	sbc e                                            ; $7758: $9b
	ld b, h                                          ; $7759: $44
	ld b, d                                          ; $775a: $42
	ld b, e                                          ; $775b: $43
	ld b, c                                          ; $775c: $41
	db $dd                                           ; $775d: $dd
	ld b, b                                          ; $775e: $40
	add b                                            ; $775f: $80
	push de                                          ; $7760: $d5
	ld h, [hl]                                       ; $7761: $66
	or [hl]                                          ; $7762: $b6
	sbc a                                            ; $7763: $9f
	push bc                                          ; $7764: $c5
	ei                                               ; $7765: $fb
	rst GetHLinHL                                          ; $7766: $cf
	ret                                              ; $7767: $c9


	ld h, [hl]                                       ; $7768: $66
	call nz, $e4c4                                   ; $7769: $c4 $c4 $e4
	cp $7e                                           ; $776c: $fe $7e
	ld c, a                                          ; $776e: $4f

Jump_05e_776f:
	ld c, c                                          ; $776f: $49

jr_05e_7770:
	ld e, e                                          ; $7770: $5b
	ld a, [$8eaa]                                    ; $7771: $fa $aa $8e
	xor [hl]                                         ; $7774: $ae
	ld l, d                                          ; $7775: $6a
	ld e, e                                          ; $7776: $5b
	rst SubAFromDE                                          ; $7777: $df
	rst AddAOntoHL                                          ; $7778: $ef
	rst GetHLinHL                                          ; $7779: $cf
	rst GetHLinHL                                          ; $777a: $cf
	set 1, e                                         ; $777b: $cb $cb
	rst GetHLinHL                                          ; $777d: $cf
	rst AddAOntoHL                                          ; $777e: $ef
	sbc e                                            ; $777f: $9b
	rst $38                                          ; $7780: $ff
	jp $f0a0                                         ; $7781: $c3 $a0 $f0


	ld [hl], a                                       ; $7784: $77
	inc h                                            ; $7785: $24
	sbc c                                            ; $7786: $99
	or $00                                           ; $7787: $f6 $00
	ret nz                                           ; $7789: $c0

	ldh a, [$cf]                                     ; $778a: $f0 $cf
	jp $c0de                                         ; $778c: $c3 $de $c0


	sub e                                            ; $778f: $93
	ld c, $1e                                        ; $7790: $0e $1e
	ld a, [hl]                                       ; $7792: $7e
	cp $c7                                           ; $7793: $fe $c7
	add e                                            ; $7795: $83
	ld bc, $0701                                     ; $7796: $01 $01 $07
	rrca                                             ; $7799: $0f
	inc sp                                           ; $779a: $33
	jp Jump_05e_6c7b                                 ; $779b: $c3 $7b $6c


Call_05e_779e:
	add h                                            ; $779e: $84
	ld bc, $5f5f                                     ; $779f: $01 $5f $5f
	ld a, a                                          ; $77a2: $7f
	ld l, a                                          ; $77a3: $6f
	rst AddAOntoHL                                          ; $77a4: $ef
	db $e4                                           ; $77a5: $e4

jr_05e_77a6:
	or $f7                                           ; $77a6: $f6 $f7
	ld hl, sp-$10                                    ; $77a8: $f8 $f0
	ldh [$d0], a                                     ; $77aa: $e0 $d0
	ret nc                                           ; $77ac: $d0

	sbc e                                            ; $77ad: $9b
	adc c                                            ; $77ae: $89
	ld [$dbdb], sp                                   ; $77af: $08 $db $db
	db $dd                                           ; $77b2: $dd
	push de                                          ; $77b3: $d5
	rst SubAFromHL                                          ; $77b4: $d7
	ld d, e                                          ; $77b5: $53
	inc sp                                           ; $77b6: $33
	add hl, sp                                       ; $77b7: $39
	inc a                                            ; $77b8: $3c
	inc a                                            ; $77b9: $3c
	sbc $3e                                          ; $77ba: $de $3e
	sbc h                                            ; $77bc: $9c
	cp [hl]                                          ; $77bd: $be
	sbc $de                                          ; $77be: $de $de
	reti                                             ; $77c0: $d9


	rst $38                                          ; $77c1: $ff
	ld e, l                                          ; $77c2: $5d
	ld a, [hl]                                       ; $77c3: $7e
	ld b, a                                          ; $77c4: $47
	ldh a, [$de]                                     ; $77c5: $f0 $de
	cp $73                                           ; $77c7: $fe $73
	ldh a, [$75]                                     ; $77c9: $f0 $75
	sbc c                                            ; $77cb: $99
	ld [hl], e                                       ; $77cc: $73
	ldh [$9b], a                                     ; $77cd: $e0 $9b
	ld a, a                                          ; $77cf: $7f
	ccf                                              ; $77d0: $3f
	rrca                                             ; $77d1: $0f
	add e                                            ; $77d2: $83
	ld a, c                                          ; $77d3: $79
	cp $7f                                           ; $77d4: $fe $7f
	add hl, de                                       ; $77d6: $19
	ld a, a                                          ; $77d7: $7f
	adc l                                            ; $77d8: $8d
	sbc l                                            ; $77d9: $9d
	ld a, h                                          ; $77da: $7c
	ccf                                              ; $77db: $3f

Call_05e_77dc:
	ld a, e                                          ; $77dc: $7b
	ld sp, hl                                        ; $77dd: $f9
	ld a, d                                          ; $77de: $7a
	or $7f                                           ; $77df: $f6 $7f
	ld a, [bc]                                       ; $77e1: $0a
	reti                                             ; $77e2: $d9


	rst $38                                          ; $77e3: $ff
	sbc e                                            ; $77e4: $9b
	ld a, [bc]                                       ; $77e5: $0a
	inc b                                            ; $77e6: $04
	ld [bc], a                                       ; $77e7: $02
	ld [bc], a                                       ; $77e8: $02
	ld [hl], a                                       ; $77e9: $77
	rst SubAFromHL                                          ; $77ea: $d7
	sbc [hl]                                         ; $77eb: $9e

Jump_05e_77ec:
	ld a, [$ca73]                                    ; $77ec: $fa $73 $ca
	ld [hl], a                                       ; $77ef: $77
	ret z                                            ; $77f0: $c8

	rst SubAFromDE                                          ; $77f1: $df
	db $10                                           ; $77f2: $10
	sbc e                                            ; $77f3: $9b
	jr nc, jr_05e_77a6                               ; $77f4: $30 $b0

	or b                                             ; $77f6: $b0
	sub b                                            ; $77f7: $90
	ei                                               ; $77f8: $fb
	rst SubAFromDE                                          ; $77f9: $df
	add b                                            ; $77fa: $80
	adc a                                            ; $77fb: $8f
	ld hl, sp+$3c                                    ; $77fc: $f8 $3c
	inc e                                            ; $77fe: $1c
	ld c, $19                                        ; $77ff: $0e $19
	jr c, jr_05e_786b                                ; $7801: $38 $68

	ld c, b                                          ; $7803: $48
	db $10                                           ; $7804: $10
	ld [$060c], sp                                   ; $7805: $08 $0c $06
	rrca                                             ; $7808: $0f
	ld e, $3e                                        ; $7809: $1e $3e
	ld a, [hl]                                       ; $780b: $7e
	ld a, e                                          ; $780c: $7b
	xor b                                            ; $780d: $a8
	sbc [hl]                                         ; $780e: $9e
	rlca                                             ; $780f: $07
	ld [hl], a                                       ; $7810: $77
	ccf                                              ; $7811: $3f
	halt                                             ; $7812: $76
	cp l                                             ; $7813: $bd
	sbc [hl]                                         ; $7814: $9e
	inc e                                            ; $7815: $1c
	ld a, d                                          ; $7816: $7a
	ld a, [hl-]                                      ; $7817: $3a
	sbc l                                            ; $7818: $9d
	inc e                                            ; $7819: $1c
	ld [hl], b                                       ; $781a: $70
	ld a, e                                          ; $781b: $7b
	and l                                            ; $781c: $a5
	sbc $ff                                          ; $781d: $de $ff
	sbc l                                            ; $781f: $9d
	inc c                                            ; $7820: $0c
	jr nc, jr_05e_789e                               ; $7821: $30 $7b

	db $ec                                           ; $7823: $ec
	ld h, a                                          ; $7824: $67
	ld a, d                                          ; $7825: $7a
	sbc $ff                                          ; $7826: $de $ff
	rst SubAFromDE                                          ; $7828: $df
	ld [$f04f], sp                                   ; $7829: $08 $4f $f0
	rst SubAFromDE                                          ; $782c: $df
	db $10                                           ; $782d: $10
	ld c, a                                          ; $782e: $4f
	ldh a, [$df]                                     ; $782f: $f0 $df
	jr nz, jr_05e_7896                               ; $7831: $20 $63

	ldh a, [$7e]                                     ; $7833: $f0 $7e
	add d                                            ; $7835: $82
	ld a, a                                          ; $7836: $7f
	add l                                            ; $7837: $85
	sbc h                                            ; $7838: $9c
	db $fd                                           ; $7839: $fd
	ld b, b                                          ; $783a: $40
	ld b, b                                          ; $783b: $40
	ld a, d                                          ; $783c: $7a
	inc de                                           ; $783d: $13
	adc h                                            ; $783e: $8c
	rst $38                                          ; $783f: $ff
	rlca                                             ; $7840: $07
	rlca                                             ; $7841: $07
	ret z                                            ; $7842: $c8

	rst $38                                          ; $7843: $ff
	ld h, b                                          ; $7844: $60

jr_05e_7845:
	sub b                                            ; $7845: $90
	ld l, h                                          ; $7846: $6c
	and [hl]                                         ; $7847: $a6
	rst FarCall                                          ; $7848: $f7
	db $d3                                           ; $7849: $d3
	ld c, b                                          ; $784a: $48
	ld a, a                                          ; $784b: $7f
	rst $38                                          ; $784c: $ff
	rst GetHLinHL                                          ; $784d: $cf
	add e                                            ; $784e: $83
	pop bc                                           ; $784f: $c1
	ld b, b                                          ; $7850: $40
	ld h, b                                          ; $7851: $60
	ld [hl], l                                       ; $7852: $75
	rlca                                             ; $7853: $07
	sbc l                                            ; $7854: $9d

jr_05e_7855:
	inc a                                            ; $7855: $3c
	ld a, [hl]                                       ; $7856: $7e
	ld l, a                                          ; $7857: $6f
	ld h, h                                          ; $7858: $64
	sub e                                            ; $7859: $93
	jp $0181                                         ; $785a: $c3 $81 $01


	nop                                              ; $785d: $00
	ld a, b                                          ; $785e: $78
	ld a, b                                          ; $785f: $78
	ld a, h                                          ; $7860: $7c
	ccf                                              ; $7861: $3f
	ld sp, $1e3f                                     ; $7862: $31 $3f $1e
	jr jr_05e_7845                                   ; $7865: $18 $de

	ret nz                                           ; $7867: $c0

	rst SubAFromDE                                          ; $7868: $df
	ldh [hDisp1_OBP1], a                                     ; $7869: $e0 $94

jr_05e_786b:
	pop hl                                           ; $786b: $e1
	rst FarCall                                          ; $786c: $f7
	rst $38                                          ; $786d: $ff
	ld bc, $0601                                     ; $786e: $01 $01 $06
	ld e, $b2                                        ; $7871: $1e $b2
	db $f4                                           ; $7873: $f4
	inc b                                            ; $7874: $04
	ld [$3b79], sp                                   ; $7875: $08 $79 $3b
	rst SubAFromDE                                          ; $7878: $df
	inc bc                                           ; $7879: $03
	rst SubAFromDE                                          ; $787a: $df
	rst FarCall                                          ; $787b: $f7
	sbc d                                            ; $787c: $9a
	rrca                                             ; $787d: $0f
	di                                               ; $787e: $f3
	ei                                               ; $787f: $fb
	ei                                               ; $7880: $fb
	ld sp, hl                                        ; $7881: $f9
	sbc $fc                                          ; $7882: $de $fc
	sbc e                                            ; $7884: $9b
	cp $0c                                           ; $7885: $fe $0c
	inc b                                            ; $7887: $04
	inc b                                            ; $7888: $04
	ld a, d                                          ; $7889: $7a
	ld h, l                                          ; $788a: $65
	ld a, [hl]                                       ; $788b: $7e
	ld h, h                                          ; $788c: $64
	sub b                                            ; $788d: $90
	dec de                                           ; $788e: $1b
	res 7, e                                         ; $788f: $cb $bb
	ret c                                            ; $7891: $d8

	rst AddAOntoHL                                          ; $7892: $ef
	db $f4                                           ; $7893: $f4
	ld [hl], h                                       ; $7894: $74
	ld a, h                                          ; $7895: $7c

jr_05e_7896:
	db $ec                                           ; $7896: $ec
	ld a, h                                          ; $7897: $7c
	ld a, h                                          ; $7898: $7c
	ccf                                              ; $7899: $3f
	rra                                              ; $789a: $1f
	rrca                                             ; $789b: $0f
	adc a                                            ; $789c: $8f
	ld a, c                                          ; $789d: $79

jr_05e_789e:
	adc e                                            ; $789e: $8b
	ld a, e                                          ; $789f: $7b
	adc c                                            ; $78a0: $89
	sbc [hl]                                         ; $78a1: $9e
	rrca                                             ; $78a2: $0f
	ld d, d                                          ; $78a3: $52
	push bc                                          ; $78a4: $c5
	sbc e                                            ; $78a5: $9b
	ld a, a                                          ; $78a6: $7f
	inc bc                                           ; $78a7: $03
	ld hl, sp+$7f                                    ; $78a8: $f8 $7f
	ld [hl], e                                       ; $78aa: $73
	inc de                                           ; $78ab: $13
	ld h, l                                          ; $78ac: $65
	adc e                                            ; $78ad: $8b
	ld l, e                                          ; $78ae: $6b
	ldh [rIE], a                                     ; $78af: $e0 $ff
	sbc c                                            ; $78b1: $99
	ldh a, [rIE]                                     ; $78b2: $f0 $ff
	rst $38                                          ; $78b4: $ff
	ldh [$f0], a                                     ; $78b5: $e0 $f0
	ld hl, sp+$7b                                    ; $78b7: $f8 $7b
	jp hl                                            ; $78b9: $e9


	sbc h                                            ; $78ba: $9c
	ccf                                              ; $78bb: $3f
	inc bc                                           ; $78bc: $03
	rra                                              ; $78bd: $1f
	ld a, c                                          ; $78be: $79
	dec bc                                           ; $78bf: $0b
	ld a, c                                          ; $78c0: $79
	jp nc, $fc96                                     ; $78c1: $d2 $96 $fc

	ld h, b                                          ; $78c4: $60
	jr nc, jr_05e_78d7                               ; $78c5: $30 $10

	jr jr_05e_7855                                   ; $78c7: $18 $8c

	add [hl]                                         ; $78c9: $86
	jp Jump_05e_6cc1                                 ; $78ca: $c3 $c1 $6c


	ld b, h                                          ; $78cd: $44
	rst SubAFromDE                                          ; $78ce: $df
	ccf                                              ; $78cf: $3f
	ld a, a                                          ; $78d0: $7f
	adc c                                            ; $78d1: $89
	sbc c                                            ; $78d2: $99
	inc b                                            ; $78d3: $04
	inc c                                            ; $78d4: $0c
	rra                                              ; $78d5: $1f
	dec sp                                           ; $78d6: $3b

jr_05e_78d7:
	ld [hl], c                                       ; $78d7: $71
	pop de                                           ; $78d8: $d1
	ld a, c                                          ; $78d9: $79
	daa                                              ; $78da: $27
	sub c                                            ; $78db: $91
	ld hl, sp-$02                                    ; $78dc: $f8 $fe
	pop hl                                           ; $78de: $e1
	pop bc                                           ; $78df: $c1
	add c                                            ; $78e0: $81
	add c                                            ; $78e1: $81
	add e                                            ; $78e2: $83
	adc [hl]                                         ; $78e3: $8e
	sbc h                                            ; $78e4: $9c
	cp b                                             ; $78e5: $b8
	inc h                                            ; $78e6: $24
	ld b, h                                          ; $78e7: $44
	add l                                            ; $78e8: $85
	add b                                            ; $78e9: $80
	ld [hl], a                                       ; $78ea: $77
	rst FarCall                                          ; $78eb: $f7
	adc a                                            ; $78ec: $8f
	inc a                                            ; $78ed: $3c
	ld h, l                                          ; $78ee: $65
	rst JumpTable                                          ; $78ef: $c7
	adc b                                            ; $78f0: $88
	ld [$1211], sp                                   ; $78f1: $08 $11 $12
	add hl, sp                                       ; $78f4: $39
	ld h, e                                          ; $78f5: $63
	add a                                            ; $78f6: $87
	ld l, a                                          ; $78f7: $6f
	sbc $9e                                          ; $78f8: $de $9e
	dec e                                            ; $78fa: $1d
	inc sp                                           ; $78fb: $33
	ld a, a                                          ; $78fc: $7f
	ld [hl], l                                       ; $78fd: $75
	ld [bc], a                                       ; $78fe: $02
	jp c, Jump_05e_7fff                              ; $78ff: $da $ff $7f

	ldh [$df], a                                     ; $7902: $e0 $df
	add c                                            ; $7904: $81
	ld l, a                                          ; $7905: $6f
	ld a, e                                          ; $7906: $7b
	ld [hl], a                                       ; $7907: $77
	ld a, b                                          ; $7908: $78
	rst SubAFromDE                                          ; $7909: $df
	add b                                            ; $790a: $80
	ld [hl], d                                       ; $790b: $72
	call z, $0f9d                                    ; $790c: $cc $9d $0f
	ld a, a                                          ; $790f: $7f
	ld a, d                                          ; $7910: $7a
	ld a, [$f677]                                    ; $7911: $fa $77 $f6
	ld l, a                                          ; $7914: $6f
	ld h, d                                          ; $7915: $62
	ld l, a                                          ; $7916: $6f
	db $e3                                           ; $7917: $e3
	sbc c                                            ; $7918: $99
	ld [bc], a                                       ; $7919: $02
	rst $38                                          ; $791a: $ff
	cp $ff                                           ; $791b: $fe $ff
	ld [bc], a                                       ; $791d: $02
	ld [bc], a                                       ; $791e: $02
	ld [hl], a                                       ; $791f: $77
	ldh a, [$7e]                                     ; $7920: $f0 $7e
	ldh [rPCM34], a                                  ; $7922: $e0 $77
	db $fd                                           ; $7924: $fd
	sub [hl]                                         ; $7925: $96
	ld a, a                                          ; $7926: $7f
	sbc a                                            ; $7927: $9f
	ld l, a                                          ; $7928: $6f
	sbc a                                            ; $7929: $9f
	ld l, a                                          ; $792a: $6f
	rra                                              ; $792b: $1f
	nop                                              ; $792c: $00
	add b                                            ; $792d: $80
	ldh [$db], a                                     ; $792e: $e0 $db
	ld hl, sp-$21                                    ; $7930: $f8 $df
	sub b                                            ; $7932: $90
	db $dd                                           ; $7933: $dd
	and b                                            ; $7934: $a0
	sbc e                                            ; $7935: $9b
	ret nz                                           ; $7936: $c0

	rst $38                                          ; $7937: $ff
	sbc a                                            ; $7938: $9f
	sbc a                                            ; $7939: $9f
	db $dd                                           ; $793a: $dd
	cp a                                             ; $793b: $bf

jr_05e_793c:
	sub [hl]                                         ; $793c: $96
	rst $38                                          ; $793d: $ff
	di                                               ; $793e: $f3
	ld l, c                                          ; $793f: $69
	ld a, c                                          ; $7940: $79
	dec [hl]                                         ; $7941: $35
	inc [hl]                                         ; $7942: $34
	inc d                                            ; $7943: $14
	inc e                                            ; $7944: $1c
	ld a, [de]                                       ; $7945: $1a
	ld a, c                                          ; $7946: $79
	dec bc                                           ; $7947: $0b
	db $dd                                           ; $7948: $dd
	ld hl, sp+$63                                    ; $7949: $f8 $63
	sub b                                            ; $794b: $90
	ld sp, hl                                        ; $794c: $f9
	sub l                                            ; $794d: $95
	sbc h                                            ; $794e: $9c
	adc c                                            ; $794f: $89
	rst GetHLinHL                                          ; $7950: $cf
	rst SubAFromBC                                          ; $7951: $e7
	rst FarCall                                          ; $7952: $f7
	ei                                               ; $7953: $fb
	db $fd                                           ; $7954: $fd
	cp $70                                           ; $7955: $fe $70
	ld a, b                                          ; $7957: $78
	ld a, d                                          ; $7958: $7a
	daa                                              ; $7959: $27
	ld a, a                                          ; $795a: $7f
	dec l                                            ; $795b: $2d
	sbc l                                            ; $795c: $9d
	ld bc, $de08                                     ; $795d: $01 $08 $de
	db $10                                           ; $7960: $10
	rst SubAFromDE                                          ; $7961: $df
	jr nz, @+$81                                     ; $7962: $20 $7f

	ret nz                                           ; $7964: $c0

	sbc [hl]                                         ; $7965: $9e
	rrca                                             ; $7966: $0f
	jp c, Jump_05e_69ff                              ; $7967: $da $ff $69

	ld sp, hl                                        ; $796a: $f9
	ld a, d                                          ; $796b: $7a
	xor b                                            ; $796c: $a8
	ei                                               ; $796d: $fb
	rst SubAFromDE                                          ; $796e: $df
	inc a                                            ; $796f: $3c
	sub d                                            ; $7970: $92
	ld e, h                                          ; $7971: $5c
	ld c, h                                          ; $7972: $4c
	inc l                                            ; $7973: $2c
	xor h                                            ; $7974: $ac
	or h                                             ; $7975: $b4
	call nc, $c7c7                                   ; $7976: $d4 $c7 $c7
	rst SubAFromBC                                          ; $7979: $e7
	rst FarCall                                          ; $797a: $f7
	rst FarCall                                          ; $797b: $f7
	ld [hl], a                                       ; $797c: $77
	ld a, a                                          ; $797d: $7f
	ld a, c                                          ; $797e: $79
	ret nz                                           ; $797f: $c0

	ld c, c                                          ; $7980: $49
	adc b                                            ; $7981: $88
	ld a, [hl]                                       ; $7982: $7e
	sbc d                                            ; $7983: $9a
	ld [hl], e                                       ; $7984: $73
	sub $9c                                          ; $7985: $d6 $9c
	rst $38                                          ; $7987: $ff
	ld sp, hl                                        ; $7988: $f9
	db $fc                                           ; $7989: $fc
	ld [hl], e                                       ; $798a: $73
	add $7a                                          ; $798b: $c6 $7a
	cp c                                             ; $798d: $b9
	ld a, [hl]                                       ; $798e: $7e
	jp z, $8078                                      ; $798f: $ca $78 $80

	ld a, e                                          ; $7992: $7b
	ld e, b                                          ; $7993: $58
	ld a, [hl]                                       ; $7994: $7e
	cp d                                             ; $7995: $ba
	ld a, e                                          ; $7996: $7b
	ld e, h                                          ; $7997: $5c
	ld l, h                                          ; $7998: $6c
	ld a, e                                          ; $7999: $7b
	ld l, e                                          ; $799a: $6b
	ld a, c                                          ; $799b: $79
	sub e                                            ; $799c: $93
	rra                                              ; $799d: $1f
	inc bc                                           ; $799e: $03
	nop                                              ; $799f: $00
	ldh [$d0], a                                     ; $79a0: $e0 $d0
	jr z, jr_05e_793c                                ; $79a2: $28 $98

	ld hl, sp-$18                                    ; $79a4: $f8 $e8
	ret nc                                           ; $79a6: $d0

	ldh [rIE], a                                     ; $79a7: $e0 $ff
	halt                                             ; $79a9: $76
	ld [hl], d                                       ; $79aa: $72
	adc d                                            ; $79ab: $8a
	rra                                              ; $79ac: $1f
	ccf                                              ; $79ad: $3f
	rst $38                                          ; $79ae: $ff
	sbc e                                            ; $79af: $9b
	and a                                            ; $79b0: $a7
	xor [hl]                                         ; $79b1: $ae
	sbc h                                            ; $79b2: $9c
	ldh a, [$e3]                                     ; $79b3: $f0 $e3
	rst GetHLinHL                                          ; $79b5: $cf
	db $fc                                           ; $79b6: $fc
	sbc e                                            ; $79b7: $9b
	and [hl]                                         ; $79b8: $a6
	xor h                                            ; $79b9: $ac
	sbc b                                            ; $79ba: $98
	and b                                            ; $79bb: $a0
	ret nz                                           ; $79bc: $c0

	add e                                            ; $79bd: $83
	sbc a                                            ; $79be: $9f
	add a                                            ; $79bf: $87
	rrca                                             ; $79c0: $0f
	ld a, e                                          ; $79c1: $7b
	db $eb                                           ; $79c2: $eb
	sbc e                                            ; $79c3: $9b
	rst JumpTable                                          ; $79c4: $c7
	ccf                                              ; $79c5: $3f
	rst $38                                          ; $79c6: $ff
	ld b, $78                                        ; $79c7: $06 $78
	ld a, a                                          ; $79c9: $7f
	adc e                                            ; $79ca: $8b
	ccf                                              ; $79cb: $3f
	ld hl, sp-$40                                    ; $79cc: $f8 $c0
	nop                                              ; $79ce: $00
	cp a                                             ; $79cf: $bf
	rst $38                                          ; $79d0: $ff
	ld a, a                                          ; $79d1: $7f
	rst AddAOntoHL                                          ; $79d2: $ef
	ld [hl], h                                       ; $79d3: $74
	ld a, [hl-]                                      ; $79d4: $3a
	dec e                                            ; $79d5: $1d
	ld e, $98                                        ; $79d6: $1e $98
	or b                                             ; $79d8: $b0
	ld hl, sp-$08                                    ; $79d9: $f8 $f8
	xor h                                            ; $79db: $ac
	rst SubAFromHL                                          ; $79dc: $d7
	db $eb                                           ; $79dd: $eb
	db $ed                                           ; $79de: $ed
	ld l, e                                          ; $79df: $6b

Call_05e_79e0:
	inc [hl]                                         ; $79e0: $34
	ld l, a                                          ; $79e1: $6f
	jr nc, @+$74                                     ; $79e2: $30 $72

	add $9e                                          ; $79e4: $c6 $9e
	add b                                            ; $79e6: $80
	ld [hl], a                                       ; $79e7: $77
	db $f4                                           ; $79e8: $f4
	sbc [hl]                                         ; $79e9: $9e
	cp $de                                           ; $79ea: $fe $de
	ld b, b                                          ; $79ec: $40
	ld a, [hl]                                       ; $79ed: $7e
	dec sp                                           ; $79ee: $3b
	ld e, a                                          ; $79ef: $5f
	db $e4                                           ; $79f0: $e4
	ld l, a                                          ; $79f1: $6f
	db $fc                                           ; $79f2: $fc
	sbc $ff                                          ; $79f3: $de $ff
	sbc $02                                          ; $79f5: $de $02
	ld [hl], e                                       ; $79f7: $73
	db $f4                                           ; $79f8: $f4
	sbc $03                                          ; $79f9: $de $03

Call_05e_79fb:
	ld [hl], e                                       ; $79fb: $73
	ldh a, [$de]                                     ; $79fc: $f0 $de
	rra                                              ; $79fe: $1f
	ld [hl], e                                       ; $79ff: $73
	ret nc                                           ; $7a00: $d0

	db $dd                                           ; $7a01: $dd
	ldh a, [rPCM34]                                  ; $7a02: $f0 $77
	ldh a, [$dd]                                     ; $7a04: $f0 $dd
	ret nz                                           ; $7a06: $c0

	sbc h                                            ; $7a07: $9c
	ld b, b                                          ; $7a08: $40
	pop bc                                           ; $7a09: $c1
	add e                                            ; $7a0a: $83
	ld [hl], l                                       ; $7a0b: $75
	add sp, $7f                                      ; $7a0c: $e8 $7f
	sub [hl]                                         ; $7a0e: $96
	sub h                                            ; $7a0f: $94
	ld a, [hl]                                       ; $7a10: $7e
	db $fc                                           ; $7a11: $fc
	ld hl, sp+$1a                                    ; $7a12: $f8 $1a
	ld a, [bc]                                       ; $7a14: $0a
	ld c, $0d                                        ; $7a15: $0e $0d
	dec d                                            ; $7a17: $15
	sub l                                            ; $7a18: $95
	rst SubAFromHL                                          ; $7a19: $d7
	call nc, $bc75                                   ; $7a1a: $d4 $75 $bc
	sbc e                                            ; $7a1d: $9b
	xor $6e                                          ; $7a1e: $ee $6e
	cpl                                              ; $7a20: $2f
	cpl                                              ; $7a21: $2f
	sbc $7f                                          ; $7a22: $de $7f
	ld a, a                                          ; $7a24: $7f
	inc c                                            ; $7a25: $0c
	ld a, a                                          ; $7a26: $7f
	inc hl                                           ; $7a27: $23
	sbc [hl]                                         ; $7a28: $9e
	rlca                                             ; $7a29: $07
	ei                                               ; $7a2a: $fb
	ld l, b                                          ; $7a2b: $68
	call c, $019d                                    ; $7a2c: $dc $9d $01
	db $fd                                           ; $7a2f: $fd
	ld l, d                                          ; $7a30: $6a
	or b                                             ; $7a31: $b0
	ld a, a                                          ; $7a32: $7f
	xor h                                            ; $7a33: $ac
	rst SubAFromDE                                          ; $7a34: $df
	ld e, a                                          ; $7a35: $5f
	sub l                                            ; $7a36: $95
	adc $8f                                          ; $7a37: $ce $8f
	add a                                            ; $7a39: $87
	add a                                            ; $7a3a: $87
	add e                                            ; $7a3b: $83
	add e                                            ; $7a3c: $83
	ldh [$e0], a                                     ; $7a3d: $e0 $e0
	pop af                                           ; $7a3f: $f1
	ldh a, [$7a]                                     ; $7a40: $f0 $7a
	sub c                                            ; $7a42: $91
	ld [hl], a                                       ; $7a43: $77
	rla                                              ; $7a44: $17
	ld a, a                                          ; $7a45: $7f
	ld [bc], a                                       ; $7a46: $02
	sbc [hl]                                         ; $7a47: $9e
	adc a                                            ; $7a48: $8f
	ld l, h                                          ; $7a49: $6c
	sub b                                            ; $7a4a: $90
	sub [hl]                                         ; $7a4b: $96
	ldh [rSVBK], a                                   ; $7a4c: $e0 $70
	ld a, h                                          ; $7a4e: $7c
	ccf                                              ; $7a4f: $3f
	call c, $ecec                                    ; $7a50: $dc $ec $ec
	db $f4                                           ; $7a53: $f4
	db $f4                                           ; $7a54: $f4
	sbc $fa                                          ; $7a55: $de $fa
	ld a, a                                          ; $7a57: $7f
	ld de, $107f                                     ; $7a58: $11 $7f $10
	ld a, l                                          ; $7a5b: $7d
	cp l                                             ; $7a5c: $bd
	rst SubAFromDE                                          ; $7a5d: $df
	rlca                                             ; $7a5e: $07
	inc [hl]                                         ; $7a5f: $34
	ld c, b                                          ; $7a60: $48
	sbc e                                            ; $7a61: $9b
	ld b, b                                          ; $7a62: $40
	jr nc, jr_05e_7a7d                               ; $7a63: $30 $18

	ld c, $dd                                        ; $7a65: $0e $dd
	rst $38                                          ; $7a67: $ff
	sbc e                                            ; $7a68: $9b
	cp a                                             ; $7a69: $bf
	rst GetHLinHL                                          ; $7a6a: $cf
	rst SubAFromBC                                          ; $7a6b: $e7
	pop af                                           ; $7a6c: $f1
	ld l, d                                          ; $7a6d: $6a
	adc c                                            ; $7a6e: $89
	ld l, e                                          ; $7a6f: $6b
	sub [hl]                                         ; $7a70: $96
	ld [hl], a                                       ; $7a71: $77
	or d                                             ; $7a72: $b2
	sbc [hl]                                         ; $7a73: $9e
	rrca                                             ; $7a74: $0f
	ld l, a                                          ; $7a75: $6f
	db $ed                                           ; $7a76: $ed
	ld a, [hl]                                       ; $7a77: $7e
	xor c                                            ; $7a78: $a9
	ld [hl], e                                       ; $7a79: $73
	db $ed                                           ; $7a7a: $ed
	ld a, l                                          ; $7a7b: $7d
	sub b                                            ; $7a7c: $90

jr_05e_7a7d:
	sbc c                                            ; $7a7d: $99
	ld b, $0d                                        ; $7a7e: $06 $0d
	jr jr_05e_7ab3                                   ; $7a80: $18 $31

	ld h, $78                                        ; $7a82: $26 $78
	halt                                             ; $7a84: $76
	ld d, l                                          ; $7a85: $55
	db $dd                                           ; $7a86: $dd
	rst $38                                          ; $7a87: $ff
	adc l                                            ; $7a88: $8d
	rst SubAFromBC                                          ; $7a89: $e7
	ld e, $f0                                        ; $7a8a: $1e $f0
	add e                                            ; $7a8c: $83
	ld l, a                                          ; $7a8d: $6f
	cp a                                             ; $7a8e: $bf
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	ld hl, sp-$1f                                    ; $7a91: $f8 $e1
	rrca                                             ; $7a93: $0f
	ld a, h                                          ; $7a94: $7c
	ldh a, [$c0]                                     ; $7a95: $f0 $c0
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	sbc [hl]                                         ; $7a99: $9e
	ld a, a                                          ; $7a9a: $7f
	db $dd                                           ; $7a9b: $dd
	rst $38                                          ; $7a9c: $ff
	ld a, a                                          ; $7a9d: $7f
	sbc c                                            ; $7a9e: $99
	sbc l                                            ; $7a9f: $9d
	ld h, c                                          ; $7aa0: $61
	add b                                            ; $7aa1: $80
	db $fd                                           ; $7aa2: $fd
	sbc e                                            ; $7aa3: $9b
	ld hl, sp-$01                                    ; $7aa4: $f8 $ff
	ld e, $e3                                        ; $7aa6: $1e $e3
	ld [hl], d                                       ; $7aa8: $72
	add h                                            ; $7aa9: $84
	ld a, a                                          ; $7aaa: $7f
	ld [$847a], a                                    ; $7aab: $ea $7a $84
	ld [hl], a                                       ; $7aae: $77
	cp d                                             ; $7aaf: $ba
	add a                                            ; $7ab0: $87
	ret nz                                           ; $7ab1: $c0

	ld h, b                                          ; $7ab2: $60

jr_05e_7ab3:
	cp a                                             ; $7ab3: $bf
	ld e, b                                          ; $7ab4: $58
	xor a                                            ; $7ab5: $af
	db $ec                                           ; $7ab6: $ec
	rst SubAFromHL                                          ; $7ab7: $d7
	or $40                                           ; $7ab8: $f6 $40
	and b                                            ; $7aba: $a0
	rst SubAFromDE                                          ; $7abb: $df
	add sp, $77                                      ; $7abc: $e8 $77
	inc [hl]                                         ; $7abe: $34
	dec sp                                           ; $7abf: $3b
	ld a, [de]                                       ; $7ac0: $1a
	ld [bc], a                                       ; $7ac1: $02
	ld [bc], a                                       ; $7ac2: $02
	add $0a                                          ; $7ac3: $c6 $0a
	jp z, $ca0e                                      ; $7ac5: $ca $0e $ca

	ld a, [bc]                                       ; $7ac8: $0a
	ld h, c                                          ; $7ac9: $61
	ld l, b                                          ; $7aca: $68
	rst SubAFromDE                                          ; $7acb: $df
	add b                                            ; $7acc: $80
	sbc [hl]                                         ; $7acd: $9e
	cp a                                             ; $7ace: $bf
	sbc $a0                                          ; $7acf: $de $a0
	ld a, [hl]                                       ; $7ad1: $7e
	adc c                                            ; $7ad2: $89
	sbc $ff                                          ; $7ad3: $de $ff
	rst SubAFromDE                                          ; $7ad5: $df
	xor $7e                                          ; $7ad6: $ee $7e
	ld e, c                                          ; $7ad8: $59
	rst $38                                          ; $7ad9: $ff
	sbc h                                            ; $7ada: $9c
	rrca                                             ; $7adb: $0f
	add b                                            ; $7adc: $80
	adc a                                            ; $7add: $8f
	ld a, e                                          ; $7ade: $7b
	cp $d9                                           ; $7adf: $fe $d9
	rst $38                                          ; $7ae1: $ff
	rst SubAFromDE                                          ; $7ae2: $df
	ld [bc], a                                       ; $7ae3: $02
	sbc d                                            ; $7ae4: $9a
	ldh [c], a                                       ; $7ae5: $e2
	ld [bc], a                                       ; $7ae6: $02
	db $e3                                           ; $7ae7: $e3
	inc bc                                           ; $7ae8: $03
	db $e3                                           ; $7ae9: $e3
	ld a, c                                          ; $7aea: $79
	ld a, b                                          ; $7aeb: $78
	db $db                                           ; $7aec: $db
	rst $38                                          ; $7aed: $ff
	sub h                                            ; $7aee: $94
	add a                                            ; $7aef: $87
	adc a                                            ; $7af0: $8f
	adc a                                            ; $7af1: $8f
	sbc a                                            ; $7af2: $9f
	rra                                              ; $7af3: $1f
	rra                                              ; $7af4: $1f
	ccf                                              ; $7af5: $3f
	ld a, $f8                                        ; $7af6: $3e $f8
	ldh a, [$f0]                                     ; $7af8: $f0 $f0
	sbc $e0                                          ; $7afa: $de $e0
	sub l                                            ; $7afc: $95
	ret nz                                           ; $7afd: $c0

	pop bc                                           ; $7afe: $c1

Call_05e_7aff:
	ldh a, [c]                                       ; $7aff: $f2
	ldh a, [c]                                       ; $7b00: $f2
	ld a, [$f9fa]                                    ; $7b01: $fa $fa $f9
	ld sp, hl                                        ; $7b04: $f9
	db $fd                                           ; $7b05: $fd
	dec c                                            ; $7b06: $0d
	ld [hl], e                                       ; $7b07: $73
	inc de                                           ; $7b08: $13
	ld a, l                                          ; $7b09: $7d
	and b                                            ; $7b0a: $a0
	sbc l                                            ; $7b0b: $9d
	di                                               ; $7b0c: $f3
	rrca                                             ; $7b0d: $0f
	sbc $1f                                          ; $7b0e: $de $1f
	sbc b                                            ; $7b10: $98
	inc e                                            ; $7b11: $1c
	ld e, $1e                                        ; $7b12: $1e $1e
	inc c                                            ; $7b14: $0c
	ld hl, sp-$0c                                    ; $7b15: $f8 $f4
	di                                               ; $7b17: $f3
	db $dd                                           ; $7b18: $dd
	ldh a, [$7f]                                     ; $7b19: $f0 $7f
	ld l, a                                          ; $7b1b: $6f
	ld [hl], a                                       ; $7b1c: $77
	ld [hl], e                                       ; $7b1d: $73
	sub c                                            ; $7b1e: $91
	ccf                                              ; $7b1f: $3f
	ld a, a                                          ; $7b20: $7f
	rst $38                                          ; $7b21: $ff
	rrca                                             ; $7b22: $0f
	dec sp                                           ; $7b23: $3b
	db $e3                                           ; $7b24: $e3
	rlca                                             ; $7b25: $07
	rlca                                             ; $7b26: $07
	rrca                                             ; $7b27: $0f
	rra                                              ; $7b28: $1f
	scf                                              ; $7b29: $37
	add c                                            ; $7b2a: $81
	add c                                            ; $7b2b: $81
	add b                                            ; $7b2c: $80
	ld [hl], b                                       ; $7b2d: $70
	dec [hl]                                         ; $7b2e: $35
	ld h, l                                          ; $7b2f: $65
	adc b                                            ; $7b30: $88
	ld a, l                                          ; $7b31: $7d
	adc $9d                                          ; $7b32: $ce $9d
	db $fc                                           ; $7b34: $fc
	ld a, [hl]                                       ; $7b35: $7e
	ld [hl], h                                       ; $7b36: $74
	xor b                                            ; $7b37: $a8
	ld a, l                                          ; $7b38: $7d
	cp [hl]                                          ; $7b39: $be
	sbc h                                            ; $7b3a: $9c
	inc bc                                           ; $7b3b: $03
	add c                                            ; $7b3c: $81
	add b                                            ; $7b3d: $80
	ld a, e                                          ; $7b3e: $7b
	push hl                                          ; $7b3f: $e5
	sub [hl]                                         ; $7b40: $96
	ld [hl-], a                                      ; $7b41: $32
	ld [bc], a                                       ; $7b42: $02
	ld [bc], a                                       ; $7b43: $02
	inc bc                                           ; $7b44: $03
	rrca                                             ; $7b45: $0f
	add a                                            ; $7b46: $87
	jp $cfe3                                         ; $7b47: $c3 $e3 $cf


	ld l, a                                          ; $7b4a: $6f
	rst JumpTable                                          ; $7b4b: $c7
	ld a, l                                          ; $7b4c: $7d
	ld [$f36e], sp                                   ; $7b4d: $08 $6e $f3
	ld h, e                                          ; $7b50: $63
	ld [hl], b                                       ; $7b51: $70
	ld a, e                                          ; $7b52: $7b
	sbc c                                            ; $7b53: $99
	sbc d                                            ; $7b54: $9a
	ld b, e                                          ; $7b55: $43
	ld h, e                                          ; $7b56: $63
	inc sp                                           ; $7b57: $33
	inc e                                            ; $7b58: $1c
	rrca                                             ; $7b59: $0f
	ld [hl], d                                       ; $7b5a: $72
	add e                                            ; $7b5b: $83
	ld a, e                                          ; $7b5c: $7b
	dec d                                            ; $7b5d: $15
	ld a, h                                          ; $7b5e: $7c
	ld e, l                                          ; $7b5f: $5d
	ld a, a                                          ; $7b60: $7f
	or $7b                                           ; $7b61: $f6 $7b
	or l                                             ; $7b63: $b5
	sbc d                                            ; $7b64: $9a
	sbc a                                            ; $7b65: $9f

Call_05e_7b66:
	rst $38                                          ; $7b66: $ff
	ccf                                              ; $7b67: $3f
	rrca                                             ; $7b68: $0f
	rlca                                             ; $7b69: $07
	ld a, d                                          ; $7b6a: $7a
	rst JumpTable                                          ; $7b6b: $c7
	sbc [hl]                                         ; $7b6c: $9e
	ldh [$fb], a                                     ; $7b6d: $e0 $fb
	ld a, a                                          ; $7b6f: $7f
	db $eb                                           ; $7b70: $eb
	db $db                                           ; $7b71: $db
	rst $38                                          ; $7b72: $ff
	ld a, a                                          ; $7b73: $7f
	db $eb                                           ; $7b74: $eb
	sbc [hl]                                         ; $7b75: $9e
	ldh [$7a], a                                     ; $7b76: $e0 $7a
	add sp, $7d                                      ; $7b78: $e8 $7d
	cp $7d                                           ; $7b7a: $fe $7d
	ld l, c                                          ; $7b7c: $69
	ld e, [hl]                                       ; $7b7d: $5e
	add b                                            ; $7b7e: $80
	sbc h                                            ; $7b7f: $9c
	ld c, $f9                                        ; $7b80: $0e $f9
	db $e3                                           ; $7b82: $e3
	ld a, e                                          ; $7b83: $7b
	db $ec                                           ; $7b84: $ec
	halt                                             ; $7b85: $76
	or b                                             ; $7b86: $b0
	halt                                             ; $7b87: $76
	sub $7e                                          ; $7b88: $d6 $7e
	inc h                                            ; $7b8a: $24
	ld a, a                                          ; $7b8b: $7f
	ldh [c], a                                       ; $7b8c: $e2
	ld a, a                                          ; $7b8d: $7f
	pop hl                                           ; $7b8e: $e1
	sbc e                                            ; $7b8f: $9b
	inc bc                                           ; $7b90: $03
	ld c, $ff                                        ; $7b91: $0e $ff
	cp $7b                                           ; $7b93: $fe $7b
	push bc                                          ; $7b95: $c5
	ld a, c                                          ; $7b96: $79
	ld a, [hl-]                                      ; $7b97: $3a
	ld a, l                                          ; $7b98: $7d
	halt                                             ; $7b99: $76
	ld a, h                                          ; $7b9a: $7c

Jump_05e_7b9b:
	xor l                                            ; $7b9b: $ad
	sbc e                                            ; $7b9c: $9b
	add a                                            ; $7b9d: $87
	rst GetHLinHL                                          ; $7b9e: $cf

Call_05e_7b9f:
	cp a                                             ; $7b9f: $bf
	rst $38                                          ; $7ba0: $ff
	ld a, d                                          ; $7ba1: $7a
	cpl                                              ; $7ba2: $2f
	sub [hl]                                         ; $7ba3: $96
	inc c                                            ; $7ba4: $0c
	ld a, b                                          ; $7ba5: $78
	ldh a, [$c0]                                     ; $7ba6: $f0 $c0
	nop                                              ; $7ba8: $00
	rst $38                                          ; $7ba9: $ff
	xor $f9                                          ; $7baa: $ee $f9
	db $fd                                           ; $7bac: $fd
	db $dd                                           ; $7bad: $dd
	rst FarCall                                          ; $7bae: $f7
	sbc e                                            ; $7baf: $9b
	dec de                                           ; $7bb0: $1b
	ld a, [de]                                       ; $7bb1: $1a
	rrca                                             ; $7bb2: $0f
	rrca                                             ; $7bb3: $0f
	db $dd                                           ; $7bb4: $dd
	dec c                                            ; $7bb5: $0d
	ld a, [hl]                                       ; $7bb6: $7e
	call nz, $c29c                                   ; $7bb7: $c4 $9c $c2
	ld [bc], a                                       ; $7bba: $02
	jp nz, $9b75                                     ; $7bbb: $c2 $75 $9b

	jp c, Jump_05e_7eff                              ; $7bbe: $da $ff $7e

	add $db                                          ; $7bc1: $c6 $db
	add b                                            ; $7bc3: $80
	reti                                             ; $7bc4: $d9


	rst $38                                          ; $7bc5: $ff
	ld a, [hl]                                       ; $7bc6: $7e
	add $7c                                          ; $7bc7: $c6 $7c
	ld sp, hl                                        ; $7bc9: $f9
	ld a, a                                          ; $7bca: $7f
	cp $5e                                           ; $7bcb: $fe $5e
	db $10                                           ; $7bcd: $10
	sbc [hl]                                         ; $7bce: $9e
	db $e3                                           ; $7bcf: $e3
	ld a, d                                          ; $7bd0: $7a
	ret nz                                           ; $7bd1: $c0

	ld a, a                                          ; $7bd2: $7f
	cp $5f                                           ; $7bd3: $fe $5f
	ret nc                                           ; $7bd5: $d0

	sub l                                            ; $7bd6: $95
	jr c, @+$73                                      ; $7bd7: $38 $71

	ld h, a                                          ; $7bd9: $67
	ld e, a                                          ; $7bda: $5f
	ccf                                              ; $7bdb: $3f
	ccf                                              ; $7bdc: $3f
	inc e                                            ; $7bdd: $1c
	ld bc, $8ec7                                     ; $7bde: $01 $c7 $8e
	ld a, c                                          ; $7be1: $79
	ld bc, $c08c                                     ; $7be2: $01 $8c $c0
	db $e3                                           ; $7be5: $e3
	rst $38                                          ; $7be6: $ff
	dec b                                            ; $7be7: $05
	jp hl                                            ; $7be8: $e9


	rst FarCall                                          ; $7be9: $f7
	ei                                               ; $7bea: $fb
	pop hl                                           ; $7beb: $e1
	rlca                                             ; $7bec: $07
	dec sp                                           ; $7bed: $3b
	rst JumpTable                                          ; $7bee: $c7
	ei                                               ; $7bef: $fb
	rra                                              ; $7bf0: $1f
	rrca                                             ; $7bf1: $0f
	rlca                                             ; $7bf2: $07
	rra                                              ; $7bf3: $1f
	rst $38                                          ; $7bf4: $ff

Jump_05e_7bf5:
	db $fc                                           ; $7bf5: $fc
	ld hl, sp-$23                                    ; $7bf6: $f8 $dd
	inc c                                            ; $7bf8: $0c
	sbc e                                            ; $7bf9: $9b
	add a                                            ; $7bfa: $87
	rst SubAFromBC                                          ; $7bfb: $e7
	rra                                              ; $7bfc: $1f
	ld b, $70                                        ; $7bfd: $06 $70
	inc sp                                           ; $7bff: $33
	ld a, e                                          ; $7c00: $7b

Call_05e_7c01:
	ld e, a                                          ; $7c01: $5f
	sbc l                                            ; $7c02: $9d
	cpl                                              ; $7c03: $2f
	rra                                              ; $7c04: $1f
	ld a, d                                          ; $7c05: $7a
	jp Jump_05e_567f                                 ; $7c06: $c3 $7f $56


	sbc l                                            ; $7c09: $9d
	ld hl, sp+$27                                    ; $7c0a: $f8 $27
	ld a, d                                          ; $7c0c: $7a
	jp $3f9b                                         ; $7c0d: $c3 $9b $3f


	rst GetHLinHL                                          ; $7c10: $cf
	rrca                                             ; $7c11: $0f
	rra                                              ; $7c12: $1f
	ld a, d                                          ; $7c13: $7a
	adc h                                            ; $7c14: $8c
	ld [hl], d                                       ; $7c15: $72
	ld d, $d9                                        ; $7c16: $16 $d9
	rst $38                                          ; $7c18: $ff
	ld [hl], l                                       ; $7c19: $75
	sbc c                                            ; $7c1a: $99
	sbc c                                            ; $7c1b: $99
	rra                                              ; $7c1c: $1f
	ld e, $3c                                        ; $7c1d: $1e $3c
	ld [hl], b                                       ; $7c1f: $70
	ldh [$e0], a                                     ; $7c20: $e0 $e0
	ld a, d                                          ; $7c22: $7a
	ld l, a                                          ; $7c23: $6f
	sub a                                            ; $7c24: $97
	pop hl                                           ; $7c25: $e1
	jp $f38f                                         ; $7c26: $c3 $8f $f3


	ld sp, hl                                        ; $7c29: $f9
	pop af                                           ; $7c2a: $f1
	db $e3                                           ; $7c2b: $e3
	add e                                            ; $7c2c: $83
	ld a, d                                          ; $7c2d: $7a
	sub [hl]                                         ; $7c2e: $96
	ld a, a                                          ; $7c2f: $7f
	or d                                             ; $7c30: $b2
	ld a, a                                          ; $7c31: $7f
	jp hl                                            ; $7c32: $e9


	ld [hl], l                                       ; $7c33: $75
	push hl                                          ; $7c34: $e5
	ld a, [hl]                                       ; $7c35: $7e
	sub l                                            ; $7c36: $95
	sbc h                                            ; $7c37: $9c
	ldh a, [$78]                                     ; $7c38: $f0 $78
	ld e, $7a                                        ; $7c3a: $1e $7a
	and $d9                                          ; $7c3c: $e6 $d9
	rst $38                                          ; $7c3e: $ff
	halt                                             ; $7c3f: $76
	db $db                                           ; $7c40: $db
	ld a, c                                          ; $7c41: $79
	ld d, [hl]                                       ; $7c42: $56
	ld e, a                                          ; $7c43: $5f
	ld h, b                                          ; $7c44: $60
	sbc l                                            ; $7c45: $9d

jr_05e_7c46:
	cp $7f                                           ; $7c46: $fe $7f
	ld [hl], c                                       ; $7c48: $71
	sub $68                                          ; $7c49: $d6 $68
	ld c, [hl]                                       ; $7c4b: $4e
	ld a, a                                          ; $7c4c: $7f
	ld a, [hl]                                       ; $7c4d: $7e
	ld a, h                                          ; $7c4e: $7c
	ld a, e                                          ; $7c4f: $7b
	ld [hl], b                                       ; $7c50: $70
	ld b, a                                          ; $7c51: $47
	sbc [hl]                                         ; $7c52: $9e
	inc bc                                           ; $7c53: $03
	ld a, c                                          ; $7c54: $79
	and h                                            ; $7c55: $a4
	db $dd                                           ; $7c56: $dd
	rst $38                                          ; $7c57: $ff
	ld d, e                                          ; $7c58: $53
	nop                                              ; $7c59: $00
	sbc [hl]                                         ; $7c5a: $9e
	inc sp                                           ; $7c5b: $33
	db $dd                                           ; $7c5c: $dd
	ld h, [hl]                                       ; $7c5d: $66
	rst SubAFromDE                                          ; $7c5e: $df
	ld [hl], a                                       ; $7c5f: $77
	sbc [hl]                                         ; $7c60: $9e
	ld [hl], e                                       ; $7c61: $73
	sbc $33                                          ; $7c62: $de $33
	ld l, a                                          ; $7c64: $6f
	or $9e                                           ; $7c65: $f6 $9e
	ld [hl], a                                       ; $7c67: $77
	ld d, a                                          ; $7c68: $57
	or $9e                                           ; $7c69: $f6 $9e
	ld [hl], $de                                     ; $7c6b: $36 $de
	ld h, [hl]                                       ; $7c6d: $66
	sbc h                                            ; $7c6e: $9c
	inc sp                                           ; $7c6f: $33
	halt                                             ; $7c70: $76
	ld h, [hl]                                       ; $7c71: $66
	ld a, e                                          ; $7c72: $7b
	or $97                                           ; $7c73: $f6 $97
	ld b, [hl]                                       ; $7c75: $46
	ld h, [hl]                                       ; $7c76: $66
	ld h, [hl]                                       ; $7c77: $66
	ld h, e                                          ; $7c78: $63
	inc sp                                           ; $7c79: $33
	ld [hl], a                                       ; $7c7a: $77
	inc sp                                           ; $7c7b: $33
	ld [hl], h                                       ; $7c7c: $74
	sbc $44                                          ; $7c7d: $de $44
	ld a, a                                          ; $7c7f: $7f
	xor $df                                          ; $7c80: $ee $df
	inc sp                                           ; $7c82: $33
	rst SubAFromDE                                          ; $7c83: $df
	ld [hl], a                                       ; $7c84: $77
	db $dd                                           ; $7c85: $dd
	ld b, h                                          ; $7c86: $44
	ld a, a                                          ; $7c87: $7f
	xor $df                                          ; $7c88: $ee $df
	inc sp                                           ; $7c8a: $33
	sbc l                                            ; $7c8b: $9d
	ld d, l                                          ; $7c8c: $55
	inc sp                                           ; $7c8d: $33
	db $dd                                           ; $7c8e: $dd
	ld b, h                                          ; $7c8f: $44
	sbc $33                                          ; $7c90: $de $33
	sbc h                                            ; $7c92: $9c
	dec [hl]                                         ; $7c93: $35
	ld d, l                                          ; $7c94: $55
	ld d, e                                          ; $7c95: $53
	sbc $44                                          ; $7c96: $de $44
	sbc l                                            ; $7c98: $9d
	inc [hl]                                         ; $7c99: $34
	ld b, e                                          ; $7c9a: $43
	ld [hl], a                                       ; $7c9b: $77
	or $9e                                           ; $7c9c: $f6 $9e
	ld d, h                                          ; $7c9e: $54
	call c, Call_05e_7f44                            ; $7c9f: $dc $44 $7f
	push af                                          ; $7ca2: $f5
	sbc h                                            ; $7ca3: $9c
	dec [hl]                                         ; $7ca4: $35
	ld d, e                                          ; $7ca5: $53
	inc [hl]                                         ; $7ca6: $34
	ld h, e                                          ; $7ca7: $63
	or $dd                                           ; $7ca8: $f6 $dd
	ld b, h                                          ; $7caa: $44


;
	sub [hl]                                         ; $7cab: $96
	adc b                                            ; $7cac: $88
	ldh [$b1], a                                     ; $7cad: $e0 $b1
	sub a                                            ; $7caf: $97
	ld bc, $0202                                     ; $7cb0: $01 $02 $02
	ld b, $04                                        ; $7cb3: $06 $04
	dec b                                            ; $7cb5: $05
	inc c                                            ; $7cb6: $0c
	ld c, $7b                                        ; $7cb7: $0e $7b
	ld hl, sp-$22                                    ; $7cb9: $f8 $de
	inc b                                            ; $7cbb: $04
	rst SubAFromDE                                          ; $7cbc: $df
	add hl, bc                                       ; $7cbd: $09
	add b                                            ; $7cbe: $80
	ld e, c                                          ; $7cbf: $59
	jr z, jr_05e_7c46                                ; $7cc0: $28 $84

	sub c                                            ; $7cc2: $91
	nop                                              ; $7cc3: $00
	and b                                            ; $7cc4: $a0
	sub b                                            ; $7cc5: $90
	ld de, $4526                                     ; $7cc6: $11 $26 $45
	ld c, c                                          ; $7cc9: $49
	ld a, [bc]                                       ; $7cca: $0a
	ld [de], a                                       ; $7ccb: $12
	inc d                                            ; $7ccc: $14
	dec h                                            ; $7ccd: $25
	ld hl, $0a05                                     ; $7cce: $21 $05 $0a
	db $10                                           ; $7cd1: $10
	ld hl, $564b                                     ; $7cd2: $21 $4b $56
	adc h                                            ; $7cd5: $8c
	add hl, sp                                       ; $7cd6: $39
	add $8d                                          ; $7cd7: $c6 $8d
	dec de                                           ; $7cd9: $1b
	ld [hl], $64                                     ; $7cda: $36 $64
	ret                                              ; $7cdc: $c9


	db $d3                                           ; $7cdd: $d3
	add b                                            ; $7cde: $80
	add [hl]                                         ; $7cdf: $86
	add hl, sp                                       ; $7ce0: $39
	ld h, a                                          ; $7ce1: $67
	call $359a                                       ; $7ce2: $cd $9a $35
	ld l, e                                          ; $7ce5: $6b
	rst SubAFromHL                                          ; $7ce6: $d7
	xor a                                            ; $7ce7: $af
	add $98                                          ; $7ce8: $c6 $98
	inc sp                                           ; $7cea: $33
	ld h, a                                          ; $7ceb: $67
	adc $9c                                          ; $7cec: $ce $9c
	jr c, jr_05e_7d60                                ; $7cee: $38 $70

	or [hl]                                          ; $7cf0: $b6
	ret c                                            ; $7cf1: $d8

	ld h, e                                          ; $7cf2: $63
	rst GetHLinHL                                          ; $7cf3: $cf
	cp [hl]                                          ; $7cf4: $be
	ei                                               ; $7cf5: $fb
	db $ed                                           ; $7cf6: $ed
	or h                                             ; $7cf7: $b4
	ld a, c                                          ; $7cf8: $79
	rst SubAFromBC                                          ; $7cf9: $e7
	sbc h                                            ; $7cfa: $9c
	jr nc, @+$43                                     ; $7cfb: $30 $41

	rlca                                             ; $7cfd: $07
	add h                                            ; $7cfe: $84
	ld e, $78                                        ; $7cff: $1e $78
	dec a                                            ; $7d01: $3d
	or $d9                                           ; $7d02: $f6 $d9
	db $e4                                           ; $7d04: $e4
	sub b                                            ; $7d05: $90
	ld b, e                                          ; $7d06: $43
	rrca                                             ; $7d07: $0f
	ld a, b                                          ; $7d08: $78
	jp $3e0f                                         ; $7d09: $c3 $0f $3e


	ld a, b                                          ; $7d0c: $78
	ldh [$80], a                                     ; $7d0d: $e0 $80
	nop                                              ; $7d0f: $00
	rlca                                             ; $7d10: $07
	or b                                             ; $7d11: $b0
	pop bc                                           ; $7d12: $c1
	rlca                                             ; $7d13: $07
	rra                                              ; $7d14: $1f
	db $fc                                           ; $7d15: $fc
	ldh a, [$80]                                     ; $7d16: $f0 $80
	inc bc                                           ; $7d18: $03
	ret nz                                           ; $7d19: $c0

	cp $90                                           ; $7d1a: $fe $90
	inc bc                                           ; $7d1c: $03
	rrca                                             ; $7d1d: $0f
	ld a, a                                          ; $7d1e: $7f
	rst $38                                          ; $7d1f: $ff
	ccf                                              ; $7d20: $3f
	db $fc                                           ; $7d21: $fc
	ldh [rP1], a                                     ; $7d22: $e0 $00
	nop                                              ; $7d24: $00
	rlca                                             ; $7d25: $07
	inc a                                            ; $7d26: $3c
	ret nz                                           ; $7d27: $c0

	nop                                              ; $7d28: $00
	inc bc                                           ; $7d29: $03
	rra                                              ; $7d2a: $1f
	call c, Call_05e_7fff                            ; $7d2b: $dc $ff $7f
	db $dd                                           ; $7d2e: $dd
	ld a, a                                          ; $7d2f: $7f
	ldh a, [c]                                       ; $7d30: $f2
	sbc d                                            ; $7d31: $9a
	ld a, b                                          ; $7d32: $78
	add b                                            ; $7d33: $80
	nop                                              ; $7d34: $00
	ld bc, $da7f                                     ; $7d35: $01 $7f $da
	rst $38                                          ; $7d38: $ff
	add b                                            ; $7d39: $80
	nop                                              ; $7d3a: $00
	dec b                                            ; $7d3b: $05
	dec sp                                           ; $7d3c: $3b
	sub $2d                                          ; $7d3d: $d6 $2d
	ld e, l                                          ; $7d3f: $5d
	cp c                                             ; $7d40: $b9
	ld [hl], d                                       ; $7d41: $72
	rst $38                                          ; $7d42: $ff
	cp $fc                                           ; $7d43: $fe $fc
	ld sp, hl                                        ; $7d45: $f9
	di                                               ; $7d46: $f3
	db $e3                                           ; $7d47: $e3
	rst JumpTable                                          ; $7d48: $c7
	adc a                                            ; $7d49: $8f
	db $fc                                           ; $7d4a: $fc

jr_05e_7d4b:
	xor h                                            ; $7d4b: $ac
	ld [hl-], a                                      ; $7d4c: $32
	xor l                                            ; $7d4d: $ad
	ld l, [hl]                                       ; $7d4e: $6e
	scf                                              ; $7d4f: $37
	rrca                                             ; $7d50: $0f
	add [hl]                                         ; $7d51: $86
	ld b, $5e                                        ; $7d52: $06 $5e
	rst GetHLinHL                                          ; $7d54: $cf
	db $d3                                           ; $7d55: $d3
	reti                                             ; $7d56: $d9


	inc a                                            ; $7d57: $3c
	sbc [hl]                                         ; $7d58: $9e
	add b                                            ; $7d59: $80
	rst GetHLinHL                                          ; $7d5a: $cf
	ld e, b                                          ; $7d5b: $58
	ld l, $17                                        ; $7d5c: $2e $17
	dec bc                                           ; $7d5e: $0b
	add [hl]                                         ; $7d5f: $86

jr_05e_7d60:
	ld b, e                                          ; $7d60: $43
	ld [hl], c                                       ; $7d61: $71
	jr nz, jr_05e_7d4b                               ; $7d62: $20 $e7

	ld [hl], c                                       ; $7d64: $71
	jr c, @-$62                                      ; $7d65: $38 $9c

	rst GetHLinHL                                          ; $7d67: $cf
	rst SubAFromBC                                          ; $7d68: $e7
	ld [hl], e                                       ; $7d69: $73
	ld a, c                                          ; $7d6a: $79
	jr nc, jr_05e_7d79                               ; $7d6b: $30 $0c

	add e                                            ; $7d6d: $83
	ldh [$f8], a                                     ; $7d6e: $e0 $f8
	cp [hl]                                          ; $7d70: $be
	ld l, a                                          ; $7d71: $6f
	cp e                                             ; $7d72: $bb
	ldh a, [$fc]                                     ; $7d73: $f0 $fc
	ld a, a                                          ; $7d75: $7f
	rra                                              ; $7d76: $1f
	rlca                                             ; $7d77: $07
	pop bc                                           ; $7d78: $c1

jr_05e_7d79:
	ld a, a                                          ; $7d79: $7f
	ld a, [$9afe]                                    ; $7d7a: $fa $fe $9a
	add b                                            ; $7d7d: $80
	ld b, b                                          ; $7d7e: $40
	jr nz, jr_05e_7d91                               ; $7d7f: $20 $10

	adc b                                            ; $7d81: $88
	ld [hl], a                                       ; $7d82: $77
	ld hl, sp-$65                                    ; $7d83: $f8 $9b
	ret nz                                           ; $7d85: $c0

	ldh [$f0], a                                     ; $7d86: $e0 $f0
	ld a, b                                          ; $7d88: $78
	ldh [$a1], a                                     ; $7d89: $e0 $a1
	sub a                                            ; $7d8b: $97
	dec c                                            ; $7d8c: $0d
	inc e                                            ; $7d8d: $1c
	ld a, [de]                                       ; $7d8e: $1a
	jr jr_05e_7da9                                   ; $7d8f: $18 $18

jr_05e_7d91:
	dec [hl]                                         ; $7d91: $35
	inc sp                                           ; $7d92: $33
	ld sp, $d37a                                     ; $7d93: $31 $7a $d3
	add b                                            ; $7d96: $80
	inc d                                            ; $7d97: $14
	dec d                                            ; $7d98: $15
	add hl, hl                                       ; $7d99: $29
	add hl, hl                                       ; $7d9a: $29
	dec hl                                           ; $7d9b: $2b

Jump_05e_7d9c:
	ld bc, $0aae                                     ; $7d9c: $01 $ae $0a
	push de                                          ; $7d9f: $d5
	push de                                          ; $7da0: $d5
	ld c, e                                          ; $7da1: $4b
	ld [$63d6], a                                    ; $7da2: $ea $d6 $63
	ld b, e                                          ; $7da5: $43
	rst JumpTable                                          ; $7da6: $c7
	adc [hl]                                         ; $7da7: $8e
	adc [hl]                                         ; $7da8: $8e

jr_05e_7da9:
	sbc h                                            ; $7da9: $9c
	dec e                                            ; $7daa: $1d
	add hl, sp                                       ; $7dab: $39
	inc sp                                           ; $7dac: $33
	ld h, $4d                                        ; $7dad: $26 $4d
	ld a, [de]                                       ; $7daf: $1a
	or l                                             ; $7db0: $b5
	cpl                                              ; $7db1: $2f
	ld [hl], b                                       ; $7db2: $70
	xor $8c                                          ; $7db3: $ee $8c
	add hl, de                                       ; $7db5: $19
	ld a, [hl]                                       ; $7db6: $7e
	ret nc                                           ; $7db7: $d0

	sub b                                            ; $7db8: $90
	ld c, a                                          ; $7db9: $4f
	rst SubAFromDE                                          ; $7dba: $df
	sbc a                                            ; $7dbb: $9f
	ld sp, $bb5e                                     ; $7dbc: $31 $5e $bb
	ld l, a                                          ; $7dbf: $6f
	or b                                             ; $7dc0: $b0
	ret nz                                           ; $7dc1: $c0

	rst $38                                          ; $7dc2: $ff
	ld b, [hl]                                       ; $7dc3: $46
	cp h                                             ; $7dc4: $bc
	pop hl                                           ; $7dc5: $e1
	rst JumpTable                                          ; $7dc6: $c7
	sbc h                                            ; $7dc7: $9c
	ld [hl], e                                       ; $7dc8: $73
	dec c                                            ; $7dc9: $0d
	sub h                                            ; $7dca: $94
	pop de                                           ; $7dcb: $d1
	ld c, h                                          ; $7dcc: $4c
	ret nz                                           ; $7dcd: $c0

	inc bc                                           ; $7dce: $03
	inc a                                            ; $7dcf: $3c
	pop bc                                           ; $7dd0: $c1
	rrca                                             ; $7dd1: $0f
	ld a, a                                          ; $7dd2: $7f
	ldh [hDisp0_SCY], a                                     ; $7dd3: $e0 $83
	ccf                                              ; $7dd5: $3f
	sbc $ff                                          ; $7dd6: $de $ff
	sub l                                            ; $7dd8: $95
	cp $f0                                           ; $7dd9: $fe $f0
	ret nz                                           ; $7ddb: $c0

	inc bc                                           ; $7ddc: $03
	ccf                                              ; $7ddd: $3f
	db $fd                                           ; $7dde: $fd
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	ldh a, [$1f]                                     ; $7de1: $f0 $1f
	ld a, e                                          ; $7de3: $7b
	ldh a, [c]                                       ; $7de4: $f2
	sbc c                                            ; $7de5: $99
	adc $30                                          ; $7de6: $ce $30
	ret nz                                           ; $7de8: $c0

	rrca                                             ; $7de9: $0f
	rst $38                                          ; $7dea: $ff
	inc a                                            ; $7deb: $3c
	ld a, d                                          ; $7dec: $7a
	pop de                                           ; $7ded: $d1
	ld a, [hl]                                       ; $7dee: $7e
	call nc, $d57b                                   ; $7def: $d4 $7b $d5
	sbc c                                            ; $7df2: $99
	ld hl, sp-$40                                    ; $7df3: $f8 $c0
	nop                                              ; $7df5: $00
	rlca                                             ; $7df6: $07
	rst $38                                          ; $7df7: $ff
	db $fc                                           ; $7df8: $fc
	ld a, d                                          ; $7df9: $7a
	pop de                                           ; $7dfa: $d1
	ld a, [hl]                                       ; $7dfb: $7e
	call nc, $c67a                                   ; $7dfc: $d4 $7a $c6
	sbc [hl]                                         ; $7dff: $9e
	cp $7b                                           ; $7e00: $fe $7b
	ldh a, [c]                                       ; $7e02: $f2
	adc d                                            ; $7e03: $8a
	ld a, a                                          ; $7e04: $7f
	cp $e0                                           ; $7e05: $fe $e0
	ld bc, $0206                                     ; $7e07: $01 $06 $02
	inc b                                            ; $7e0a: $04
	jr @-$0e                                         ; $7e0b: $18 $f0

	ldh [$80], a                                     ; $7e0d: $e0 $80
	ld bc, $0707                                     ; $7e0f: $01 $07 $07
	ld a, [hl]                                       ; $7e12: $7e
	db $fc                                           ; $7e13: $fc
	ldh a, [$61]                                     ; $7e14: $f0 $61
	rst JumpTable                                          ; $7e16: $c7
	adc a                                            ; $7e17: $8f
	ld a, $7a                                        ; $7e18: $3e $7a
	add hl, sp                                       ; $7e1a: $39
	sbc e                                            ; $7e1b: $9b
	inc c                                            ; $7e1c: $0c
	jr jr_05e_7e97                                   ; $7e1d: $18 $78

	ldh a, [$7b]                                     ; $7e1f: $f0 $7b
	cp a                                             ; $7e21: $bf
	ld a, a                                          ; $7e22: $7f
	pop hl                                           ; $7e23: $e1
	add [hl]                                         ; $7e24: $86
	cp $ee                                           ; $7e25: $fe $ee
	sbc h                                            ; $7e27: $9c
	inc e                                            ; $7e28: $1c
	ld [hl], a                                       ; $7e29: $77
	dec sp                                           ; $7e2a: $3b
	dec a                                            ; $7e2b: $3d
	cpl                                              ; $7e2c: $2f
	daa                                              ; $7e2d: $27
	daa                                              ; $7e2e: $27
	inc hl                                           ; $7e2f: $23
	inc hl                                           ; $7e30: $23
	db $e3                                           ; $7e31: $e3
	pop af                                           ; $7e32: $f1
	ld hl, sp-$08                                    ; $7e33: $f8 $f8
	db $fc                                           ; $7e35: $fc
	db $fc                                           ; $7e36: $fc
	cp $fe                                           ; $7e37: $fe $fe
	ccf                                              ; $7e39: $3f
	rra                                              ; $7e3a: $1f
	sbc a                                            ; $7e3b: $9f
	sbc a                                            ; $7e3c: $9f
	sub a                                            ; $7e3d: $97
	sbc $9f                                          ; $7e3e: $de $9f
	add b                                            ; $7e40: $80
	ld [hl], b                                       ; $7e41: $70
	or b                                             ; $7e42: $b0
	cp b                                             ; $7e43: $b8
	cp b                                             ; $7e44: $b8
	cp h                                             ; $7e45: $bc
	cp h                                             ; $7e46: $bc
	or h                                             ; $7e47: $b4
	or h                                             ; $7e48: $b4
	and $f1                                          ; $7e49: $e6 $f1
	ldh a, [$f8]                                     ; $7e4b: $f0 $f8
	db $fc                                           ; $7e4d: $fc
	db $f4                                           ; $7e4e: $f4
	ldh a, [c]                                       ; $7e4f: $f2
	ld a, [$51a7]                                    ; $7e50: $fa $a7 $51
	ld d, b                                          ; $7e53: $50
	ld e, b                                          ; $7e54: $58
	inc a                                            ; $7e55: $3c
	inc a                                            ; $7e56: $3c
	ld a, $1e                                        ; $7e57: $3e $1e
	ret z                                            ; $7e59: $c8

	db $e4                                           ; $7e5a: $e4
	ld [hl], h                                       ; $7e5b: $74
	ld a, [de]                                       ; $7e5c: $1a
	ld a, [bc]                                       ; $7e5d: $0a
	dec b                                            ; $7e5e: $05
	inc bc                                           ; $7e5f: $03
	sub [hl]                                         ; $7e60: $96
	ld bc, $9c38                                     ; $7e61: $01 $38 $9c
	ld l, h                                          ; $7e64: $6c
	ld d, $0e                                        ; $7e65: $16 $0e
	rlca                                             ; $7e67: $07
	inc bc                                           ; $7e68: $03
	ld bc, $a1e0                                     ; $7e69: $01 $e0 $a1
	add b                                            ; $7e6c: $80
	ld [hl-], a                                      ; $7e6d: $32
	ld l, [hl]                                       ; $7e6e: $6e
	ld l, e                                          ; $7e6f: $6b
	ld l, l                                          ; $7e70: $6d
	ld e, l                                          ; $7e71: $5d
	ld d, a                                          ; $7e72: $57
	ld e, d                                          ; $7e73: $5a
	ld e, d                                          ; $7e74: $5a
	dec hl                                           ; $7e75: $2b
	ld d, e                                          ; $7e76: $53
	ld d, [hl]                                       ; $7e77: $56
	ld d, [hl]                                       ; $7e78: $56
	ld h, [hl]                                       ; $7e79: $66
	ld l, h                                          ; $7e7a: $6c
	ld l, l                                          ; $7e7b: $6d
	ld l, l                                          ; $7e7c: $6d
	call c, $b9a9                                    ; $7e7d: $dc $a9 $b9
	ld d, d                                          ; $7e80: $52
	ld [hl], a                                       ; $7e81: $77
	and [hl]                                         ; $7e82: $a6
	xor e                                            ; $7e83: $ab
	db $dd                                           ; $7e84: $dd
	inc sp                                           ; $7e85: $33
	halt                                             ; $7e86: $76
	ld h, [hl]                                       ; $7e87: $66
	db $ed                                           ; $7e88: $ed
	ret                                              ; $7e89: $c9


	db $db                                           ; $7e8a: $db
	sub $80                                          ; $7e8b: $d6 $80
	and [hl]                                         ; $7e8d: $a6
	cp l                                             ; $7e8e: $bd
	db $db                                           ; $7e8f: $db
	or [hl]                                          ; $7e90: $b6
	db $eb                                           ; $7e91: $eb
	ld [hl], l                                       ; $7e92: $75
	cp $aa                                           ; $7e93: $fe $aa
	ld e, [hl]                                       ; $7e95: $5e
	ld h, e                                          ; $7e96: $63

jr_05e_7e97:
	ld h, [hl]                                       ; $7e97: $66
	call $9b9d                                       ; $7e98: $cd $9d $9b
	inc sp                                           ; $7e9b: $33
	ld [hl], a                                       ; $7e9c: $77
	and $ff                                          ; $7e9d: $e6 $ff
	db $e3                                           ; $7e9f: $e3
	db $dd                                           ; $7ea0: $dd
	cp [hl]                                          ; $7ea1: $be
	cp $7e                                           ; $7ea2: $fe $7e
	ld a, a                                          ; $7ea4: $7f
	ld a, e                                          ; $7ea5: $7b
	ld h, e                                          ; $7ea6: $63
	pop bc                                           ; $7ea7: $c1
	sbc h                                            ; $7ea8: $9c
	ld [hl], $22                                     ; $7ea9: $36 $22
	ld h, [hl]                                       ; $7eab: $66
	sbc l                                            ; $7eac: $9d
	ld e, l                                          ; $7ead: $5d
	ld d, c                                          ; $7eae: $51
	db $dd                                           ; $7eaf: $dd
	rst $38                                          ; $7eb0: $ff
	ld a, l                                          ; $7eb1: $7d
	push de                                          ; $7eb2: $d5
	sub l                                            ; $7eb3: $95
	ld hl, sp-$10                                    ; $7eb4: $f8 $f0
	add a                                            ; $7eb6: $87
	ld a, [$c9a4]                                    ; $7eb7: $fa $a4 $c9
	sub e                                            ; $7eba: $93
	and a                                            ; $7ebb: $a7
	ld l, h                                          ; $7ebc: $6c
	ld e, b                                          ; $7ebd: $58
	sbc $ff                                          ; $7ebe: $de $ff
	ld a, d                                          ; $7ec0: $7a
	sub $7e                                          ; $7ec1: $d6 $7e
	ldh a, [$9d]                                     ; $7ec3: $f0 $9d
	ldh [rLCDC], a                                   ; $7ec5: $e0 $40
	halt                                             ; $7ec7: $76
	push de                                          ; $7ec8: $d5
	rst $38                                          ; $7ec9: $ff
	sbc l                                            ; $7eca: $9d
	rst $38                                          ; $7ecb: $ff
	rst AddAOntoHL                                          ; $7ecc: $ef
	ld a, d                                          ; $7ecd: $7a
	or $df                                           ; $7ece: $f6 $df
	rst $38                                          ; $7ed0: $ff
	sbc [hl]                                         ; $7ed1: $9e
	di                                               ; $7ed2: $f3
	halt                                             ; $7ed3: $76
	ret z                                            ; $7ed4: $c8

	ld a, l                                          ; $7ed5: $7d
	ld h, c                                          ; $7ed6: $61
	adc l                                            ; $7ed7: $8d
	ld [hl], b                                       ; $7ed8: $70
	nop                                              ; $7ed9: $00
	db $fc                                           ; $7eda: $fc
	pop af                                           ; $7edb: $f1
	rst SubAFromBC                                          ; $7edc: $e7
	sbc a                                            ; $7edd: $9f
	rst $38                                          ; $7ede: $ff
	rst SubAFromDE                                          ; $7edf: $df
	rst AddAOntoHL                                          ; $7ee0: $ef
	rst FarCall                                          ; $7ee1: $f7
	rrca                                             ; $7ee2: $0f
	rra                                              ; $7ee3: $1f
	ld a, a                                          ; $7ee4: $7f
	ld hl, sp-$20                                    ; $7ee5: $f8 $e0
	ld h, b                                          ; $7ee7: $60
	jr nc, jr_05e_7f02                               ; $7ee8: $30 $18

	halt                                             ; $7eea: $76
	adc d                                            ; $7eeb: $8a
	db $dd                                           ; $7eec: $dd
	rst $38                                          ; $7eed: $ff
	ld a, e                                          ; $7eee: $7b
	bit 6, a                                         ; $7eef: $cb $77
	db $dd                                           ; $7ef1: $dd
	sbc c                                            ; $7ef2: $99
	inc bc                                           ; $7ef3: $03
	ldh [$e0], a                                     ; $7ef4: $e0 $e0
	ret nz                                           ; $7ef6: $c0

	ret nz                                           ; $7ef7: $c0

	add b                                            ; $7ef8: $80
	ld a, c                                          ; $7ef9: $79

Jump_05e_7efa:
	ld [hl], b                                       ; $7efa: $70
	add a                                            ; $7efb: $87
	dec l                                            ; $7efc: $2d
	add hl, hl                                       ; $7efd: $29
	ld c, c                                          ; $7efe: $49

Call_05e_7eff:
Jump_05e_7eff:
	ld e, c                                          ; $7eff: $59
	db $d3                                           ; $7f00: $d3
	sub e                                            ; $7f01: $93

jr_05e_7f02:
	and e                                            ; $7f02: $a3
	daa                                              ; $7f03: $27

Call_05e_7f04:
	ld d, c                                          ; $7f04: $51
	ld d, c                                          ; $7f05: $51
	ld e, c                                          ; $7f06: $59
	ld e, b                                          ; $7f07: $58
	sbc h                                            ; $7f08: $9c
	sbc h                                            ; $7f09: $9c
	call c, $ef5c                                    ; $7f0a: $dc $5c $ef
	rst AddAOntoHL                                          ; $7f0d: $ef
	rst SubAFromBC                                          ; $7f0e: $e7
	rst SubAFromBC                                          ; $7f0f: $e7
	db $e3                                           ; $7f10: $e3
	db $e3                                           ; $7f11: $e3
	and e                                            ; $7f12: $a3
	and e                                            ; $7f13: $a3
	db $db                                           ; $7f14: $db
	sbc a                                            ; $7f15: $9f
	rst SubAFromDE                                          ; $7f16: $df
	cp a                                             ; $7f17: $bf
	sbc $b2                                          ; $7f18: $de $b2
	sbc $b1                                          ; $7f1a: $de $b1
	sub l                                            ; $7f1c: $95
	and c                                            ; $7f1d: $a1
	and b                                            ; $7f1e: $a0
	ld sp, hl                                        ; $7f1f: $f9
	db $fd                                           ; $7f20: $fd
	db $fd                                           ; $7f21: $fd
	db $f4                                           ; $7f22: $f4
	or $f2                                           ; $7f23: $f6 $f2
	ldh a, [c]                                       ; $7f25: $f2
	ldh a, [$da]                                     ; $7f26: $f0 $da
	rra                                              ; $7f28: $1f
	sbc [hl]                                         ; $7f29: $9e
	sbc a                                            ; $7f2a: $9f
	ld [hl], l                                       ; $7f2b: $75
	adc b                                            ; $7f2c: $88
	db $dd                                           ; $7f2d: $dd
	add b                                            ; $7f2e: $80
	ld e, e                                          ; $7f2f: $5b
	ld hl, sp-$20                                    ; $7f30: $f8 $e0
	and h                                            ; $7f32: $a4
	add b                                            ; $7f33: $80
	ld e, e                                          ; $7f34: $5b
	ld d, l                                          ; $7f35: $55
	ld d, [hl]                                       ; $7f36: $56
	ld d, a                                          ; $7f37: $57
	ld e, e                                          ; $7f38: $5b
	ld l, [hl]                                       ; $7f39: $6e
	ld l, [hl]                                       ; $7f3a: $6e
	halt                                             ; $7f3b: $76
	ld l, l                                          ; $7f3c: $6d
	ld a, e                                          ; $7f3d: $7b
	ld a, e                                          ; $7f3e: $7b
	ld a, d                                          ; $7f3f: $7a
	halt                                             ; $7f40: $76
	ld [hl], l                                       ; $7f41: $75
	ld [hl], l                                       ; $7f42: $75
	ld l, l                                          ; $7f43: $6d

Call_05e_7f44:
	ld e, e                                          ; $7f44: $5b
	xor a                                            ; $7f45: $af
	or l                                             ; $7f46: $b5
	ld l, d                                          ; $7f47: $6a
	ld [hl], l                                       ; $7f48: $75
	sub $eb                                          ; $7f49: $d6 $eb
	or [hl]                                          ; $7f4b: $b6
	xor h                                            ; $7f4c: $ac
	ld e, c                                          ; $7f4d: $59
	ld e, e                                          ; $7f4e: $5b
	or a                                             ; $7f4f: $b7
	xor [hl]                                         ; $7f50: $ae
	ld l, l                                          ; $7f51: $6d
	ld e, l                                          ; $7f52: $5d
	ld a, [hl]                                       ; $7f53: $7e
	jp nz, $ea80                                     ; $7f54: $c2 $80 $ea

	jp nc, Jump_05e_56aa                             ; $7f57: $d2 $aa $56

	xor d                                            ; $7f5a: $aa
	ld d, e                                          ; $7f5b: $53
	daa                                              ; $7f5c: $27
	adc $9e                                          ; $7f5d: $ce $9e
	ld a, $76                                        ; $7f5f: $3e $76
	xor $df                                          ; $7f61: $ee $df
	cp a                                             ; $7f63: $bf
	rst $38                                          ; $7f64: $ff
	ld c, e                                          ; $7f65: $4b
	ld d, e                                          ; $7f66: $53
	ld d, a                                          ; $7f67: $57
	ld d, a                                          ; $7f68: $57
	ld [hl], a                                       ; $7f69: $77
	daa                                              ; $7f6a: $27
	ld e, $0e                                        ; $7f6b: $1e $0e
	ld a, d                                          ; $7f6d: $7a
	halt                                             ; $7f6e: $76
	halt                                             ; $7f6f: $76
	db $fd                                           ; $7f70: $fd
	db $fd                                           ; $7f71: $fd
	ld a, l                                          ; $7f72: $7d
	ld a, [hl-]                                      ; $7f73: $3a
	sbc d                                            ; $7f74: $9a
	ld a, a                                          ; $7f75: $7f
	ld de, $819e                                     ; $7f76: $11 $9e $81
	db $fc                                           ; $7f79: $fc
	sbc l                                            ; $7f7a: $9d
	and b                                            ; $7f7b: $a0
	ret nz                                           ; $7f7c: $c0

	ld l, a                                          ; $7f7d: $6f
	ld d, l                                          ; $7f7e: $55
	sbc l                                            ; $7f7f: $9d
	rra                                              ; $7f80: $1f
	ld a, h                                          ; $7f81: $7c
	ld [hl], l                                       ; $7f82: $75
	adc a                                            ; $7f83: $8f
	rst FarCall                                          ; $7f84: $f7
	ld a, a                                          ; $7f85: $7f
	ld [$069a], a                                    ; $7f86: $ea $9a $06
	rra                                              ; $7f89: $1f
	rra                                              ; $7f8a: $1f
	rrca                                             ; $7f8b: $0f
	rlca                                             ; $7f8c: $07
	ld [hl], l                                       ; $7f8d: $75
	ld hl, sp-$6b                                    ; $7f8e: $f8 $95
	add hl, bc                                       ; $7f90: $09
	inc c                                            ; $7f91: $0c
	ld b, $03                                        ; $7f92: $06 $03
	ld bc, $7efb                                     ; $7f94: $01 $fb $7e
	ccf                                              ; $7f97: $3f
	rra                                              ; $7f98: $1f
	cp a                                             ; $7f99: $bf
	sbc $ff                                          ; $7f9a: $de $ff
	sub a                                            ; $7f9c: $97
	inc c                                            ; $7f9d: $0c
	rlca                                             ; $7f9e: $07
	inc bc                                           ; $7f9f: $03
	nop                                              ; $7fa0: $00
	add b                                            ; $7fa1: $80
	ld h, b                                          ; $7fa2: $60
	sbc b                                            ; $7fa3: $98
	pop hl                                           ; $7fa4: $e1
	halt                                             ; $7fa5: $76
	add h                                            ; $7fa6: $84
	ld a, a                                          ; $7fa7: $7f
	cp h                                             ; $7fa8: $bc
	ld a, l                                          ; $7fa9: $7d
	ld a, a                                          ; $7faa: $7f
	add a                                            ; $7fab: $87
	inc bc                                           ; $7fac: $03
	ld b, $8c                                        ; $7fad: $06 $8c
	jr jr_05e_7fe1                                   ; $7faf: $18 $30

	ld h, b                                          ; $7fb1: $60
	pop bc                                           ; $7fb2: $c1
	add e                                            ; $7fb3: $83
	dec bc                                           ; $7fb4: $0b
	inc bc                                           ; $7fb5: $03
	dec d                                            ; $7fb6: $15
	dec hl                                           ; $7fb7: $2b
	ld e, a                                          ; $7fb8: $5f
	xor [hl]                                         ; $7fb9: $ae
	ld e, [hl]                                       ; $7fba: $5e
	cp e                                             ; $7fbb: $bb
	ld b, a                                          ; $7fbc: $47
	ld c, a                                          ; $7fbd: $4f
	rrca                                             ; $7fbe: $0f
	rra                                              ; $7fbf: $1f
	dec sp                                           ; $7fc0: $3b
	ld [hl], a                                       ; $7fc1: $77
	rst SubAFromBC                                          ; $7fc2: $e7
	adc $de                                          ; $7fc3: $ce $de
	ld a, h                                          ; $7fc5: $7c
	sbc d                                            ; $7fc6: $9a
	db $fd                                           ; $7fc7: $fd
	cp c                                             ; $7fc8: $b9
	ld a, [$78fc]                                    ; $7fc9: $fa $fc $78
	sbc $a3                                          ; $7fcc: $de $a3
	sbc d                                            ; $7fce: $9a
	inc hl                                           ; $7fcf: $23
	ld h, a                                          ; $7fd0: $67
	ld b, a                                          ; $7fd1: $47
	ld b, [hl]                                       ; $7fd2: $46
	call z, $c477                                    ; $7fd3: $cc $77 $c4
	sbc d                                            ; $7fd6: $9a
	rst $38                                          ; $7fd7: $ff
	cp a                                             ; $7fd8: $bf
	cp a                                             ; $7fd9: $bf
	ccf                                              ; $7fda: $3f

Call_05e_7fdb:
	and b                                            ; $7fdb: $a0
	sbc $c0                                          ; $7fdc: $de $c0
	halt                                             ; $7fde: $76
	ldh [c], a                                       ; $7fdf: $e2
	sbc e                                            ; $7fe0: $9b

jr_05e_7fe1:
	or b                                             ; $7fe1: $b0
	xor b                                            ; $7fe2: $a8
	xor b                                            ; $7fe3: $a8
	ld l, b                                          ; $7fe4: $68
	sbc $69                                          ; $7fe5: $de $69
	sbc l                                            ; $7fe7: $9d
	ld c, d                                          ; $7fe8: $4a
	rst $38                                          ; $7fe9: $ff
	db $db                                           ; $7fea: $db
	rst AddAOntoHL                                          ; $7feb: $ef
	sbc [hl]                                         ; $7fec: $9e
	adc $66                                          ; $7fed: $ce $66
	call z, $c402                                    ; $7fef: $cc $02 $c4
	ldh [$ba], a                                     ; $7ff2: $e0 $ba
	add b                                            ; $7ff4: $80
	ld a, h                                          ; $7ff5: $7c
	ld e, l                                          ; $7ff6: $5d
	ld c, e                                          ; $7ff7: $4b
	ld d, e                                          ; $7ff8: $53

Call_05e_7ff9:
	ld [hl], l                                       ; $7ff9: $75
	ld [hl], a                                       ; $7ffa: $77
	ld e, d                                          ; $7ffb: $5a
	ld [hl], l                                       ; $7ffc: $75
	ld l, e                                          ; $7ffd: $6b
	ld l, e                                          ; $7ffe: $6b

Call_05e_7fff:
Jump_05e_7fff:
	ld a, a                                          ; $7fff: $7f
