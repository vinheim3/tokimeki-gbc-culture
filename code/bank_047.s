; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

	rlca                                             ; $4000: $07
	ld b, a                                          ; $4001: $47
	rst AddAOntoHL                                          ; $4002: $ef
	rst $38                                          ; $4003: $ff
	ld sp, hl                                        ; $4004: $f9
	rst FarCall                                          ; $4005: $f7
	sbc [hl]                                         ; $4006: $9e
	ld b, b                                          ; $4007: $40
	db $db                                           ; $4008: $db
	rst $38                                          ; $4009: $ff
	ld a, h                                          ; $400a: $7c
	ld l, $da                                        ; $400b: $2e $da
	rrca                                             ; $400d: $0f
	sub [hl]                                         ; $400e: $96
	rlca                                             ; $400f: $07
	db $fd                                           ; $4010: $fd
	or $ff                                           ; $4011: $f6 $ff
	ei                                               ; $4013: $fb
	rst FarCall                                          ; $4014: $f7
	di                                               ; $4015: $f3
	ei                                               ; $4016: $fb
	ld a, [$80db]                                    ; $4017: $fa $db $80
	rst SubAFromDE                                          ; $401a: $df
	add c                                            ; $401b: $81
	ld a, e                                          ; $401c: $7b
	db $e4                                           ; $401d: $e4
	ld [hl], e                                       ; $401e: $73
	cp $9b                                           ; $401f: $fe $9b
	ld [hl], e                                       ; $4021: $73
	di                                               ; $4022: $f3
	rst SubAFromBC                                          ; $4023: $e7
	xor $7b                                          ; $4024: $ee $7b
	cp b                                             ; $4026: $b8
	sbc d                                            ; $4027: $9a
	ldh a, [$fd]                                     ; $4028: $f0 $fd
	rst AddAOntoHL                                          ; $402a: $ef
	ld a, $dd                                        ; $402b: $3e $dd
	ld a, d                                          ; $402d: $7a
	cp h                                             ; $402e: $bc
	sbc h                                            ; $402f: $9c
	rst AddAOntoHL                                          ; $4030: $ef
	add b                                            ; $4031: $80
	inc b                                            ; $4032: $04
	db $db                                           ; $4033: $db
	add h                                            ; $4034: $84
	reti                                             ; $4035: $d9


	ld a, e                                          ; $4036: $7b
	sbc l                                            ; $4037: $9d
	db $10                                           ; $4038: $10
	jr jr_047_40aa                                   ; $4039: $18 $6f

	cp $9d                                           ; $403b: $fe $9d
	rst GetHLinHL                                          ; $403d: $cf
	rst AddAOntoHL                                          ; $403e: $ef
	ld l, e                                          ; $403f: $6b
	ld [hl], b                                       ; $4040: $70
	sbc [hl]                                         ; $4041: $9e
	add b                                            ; $4042: $80
	db $db                                           ; $4043: $db
	add d                                            ; $4044: $82
	reti                                             ; $4045: $d9


	ld a, l                                          ; $4046: $7d
	call c, $de07                                    ; $4047: $dc $07 $de
	ld [bc], a                                       ; $404a: $02
	sbc [hl]                                         ; $404b: $9e
	ldh [$da], a                                     ; $404c: $e0 $da
	db $f4                                           ; $404e: $f4
	rst SubAFromDE                                          ; $404f: $df
	cp $74                                           ; $4050: $fe $74
	cp e                                             ; $4052: $bb
	sub h                                            ; $4053: $94
	ld h, l                                          ; $4054: $65
	dec h                                            ; $4055: $25
	inc bc                                           ; $4056: $03
	ld d, a                                          ; $4057: $57
	ld h, e                                          ; $4058: $63
	ld b, e                                          ; $4059: $43
	rlca                                             ; $405a: $07
	ld h, e                                          ; $405b: $63
	inc bc                                           ; $405c: $03

Call_047_405d:
	inc bc                                           ; $405d: $03
	inc b                                            ; $405e: $04
	ld [hl], e                                       ; $405f: $73
	ld d, [hl]                                       ; $4060: $56
	rst SubAFromDE                                          ; $4061: $df
	rst $38                                          ; $4062: $ff
	sbc d                                            ; $4063: $9a
	dec bc                                           ; $4064: $0b
	dec e                                            ; $4065: $1d
	ld a, a                                          ; $4066: $7f
	ld sp, hl                                        ; $4067: $f9
	add hl, de                                       ; $4068: $19
	sbc $08                                          ; $4069: $de $08
	add b                                            ; $406b: $80
	add d                                            ; $406c: $82
	add h                                            ; $406d: $84
	inc bc                                           ; $406e: $03
	inc b                                            ; $406f: $04
	nop                                              ; $4070: $00
	db $10                                           ; $4071: $10
	ld a, [bc]                                       ; $4072: $0a
	dec c                                            ; $4073: $0d
	ld a, l                                          ; $4074: $7d
	ld a, e                                          ; $4075: $7b
	db $fc                                           ; $4076: $fc
	ld hl, sp-$0f                                    ; $4077: $f8 $f1
	ldh [$f5], a                                     ; $4079: $e0 $f5
	ldh a, [c]                                       ; $407b: $f2
	jr nz, @+$16                                     ; $407c: $20 $14

	inc b                                            ; $407e: $04
	inc d                                            ; $407f: $14
	inc b                                            ; $4080: $04
	inc bc                                           ; $4081: $03
	xor e                                            ; $4082: $ab
	ld d, h                                          ; $4083: $54
	rst JumpTable                                          ; $4084: $c7
	adc e                                            ; $4085: $8b
	dec sp                                           ; $4086: $3b
	db $eb                                           ; $4087: $eb
	ei                                               ; $4088: $fb
	nop                                              ; $4089: $00
	ld d, h                                          ; $408a: $54
	ld [hl], b                                       ; $408b: $70
	ld [hl], h                                       ; $408c: $74
	ld a, a                                          ; $408d: $7f
	inc de                                           ; $408e: $13
	sbc l                                            ; $408f: $9d
	rra                                              ; $4090: $1f
	ld c, $6b                                        ; $4091: $0e $6b
	inc bc                                           ; $4093: $03
	ld [hl], h                                       ; $4094: $74
	add l                                            ; $4095: $85
	dec sp                                           ; $4096: $3b
	ldh a, [$9e]                                     ; $4097: $f0 $9e
	sbc [hl]                                         ; $4099: $9e
	ld c, e                                          ; $409a: $4b
	ldh a, [$9e]                                     ; $409b: $f0 $9e
	ld [$f04b], sp                                   ; $409d: $08 $4b $f0
	sbc [hl]                                         ; $40a0: $9e
	ld b, $4b                                        ; $40a1: $06 $4b
	ldh a, [$9e]                                     ; $40a3: $f0 $9e
	rlca                                             ; $40a5: $07
	ld h, e                                          ; $40a6: $63
	ldh a, [$80]                                     ; $40a7: $f0 $80
	inc hl                                           ; $40a9: $23

jr_047_40aa:
	rlca                                             ; $40aa: $07
	rlca                                             ; $40ab: $07
	rrca                                             ; $40ac: $0f
	ld c, $1d                                        ; $40ad: $0e $1d
	ld [hl], e                                       ; $40af: $73
	ld [hl+], a                                      ; $40b0: $22
	ret nz                                           ; $40b1: $c0

	jp nz, $8484                                     ; $40b2: $c2 $84 $84

	adc b                                            ; $40b5: $88
	ld [$8008], sp                                   ; $40b6: $08 $08 $80
	xor $de                                          ; $40b9: $ee $de
	cp [hl]                                          ; $40bb: $be
	ld a, a                                          ; $40bc: $7f
	rst $38                                          ; $40bd: $ff
	cp $56                                           ; $40be: $fe $56
	xor d                                            ; $40c0: $aa
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	ld [bc], a                                       ; $40c3: $02
	ld [bc], a                                       ; $40c4: $02
	nop                                              ; $40c5: $00
	ld [bc], a                                       ; $40c6: $02
	nop                                              ; $40c7: $00
	halt                                             ; $40c8: $76
	ld b, b                                          ; $40c9: $40
	rst SubAFromDE                                          ; $40ca: $df
	sub b                                            ; $40cb: $90
	ld a, a                                          ; $40cc: $7f
	rst GetHLinHL                                          ; $40cd: $cf
	sub [hl]                                         ; $40ce: $96
	adc $3f                                          ; $40cf: $ce $3f
	ccf                                              ; $40d1: $3f
	rra                                              ; $40d2: $1f
	rrca                                             ; $40d3: $0f
	rrca                                             ; $40d4: $0f
	rra                                              ; $40d5: $1f
	nop                                              ; $40d6: $00

jr_047_40d7:
	nop                                              ; $40d7: $00
	sbc $07                                          ; $40d8: $de $07
	call c, $9203                                    ; $40da: $dc $03 $92
	ld sp, hl                                        ; $40dd: $f9
	ld hl, sp-$07                                    ; $40de: $f8 $f9
	db $fd                                           ; $40e0: $fd
	db $fc                                           ; $40e1: $fc
	rst $38                                          ; $40e2: $ff
	ld bc, $c102                                     ; $40e3: $01 $02 $c1
	jp $e3c3                                         ; $40e6: $c3 $c3 $e3


	rst SubAFromBC                                          ; $40e9: $e7
	ld [hl], d                                       ; $40ea: $72
	and l                                            ; $40eb: $a5
	sub a                                            ; $40ec: $97
	dec a                                            ; $40ed: $3d
	ld e, l                                          ; $40ee: $5d
	ld sp, hl                                        ; $40ef: $f9
	pop af                                           ; $40f0: $f1
	ei                                               ; $40f1: $fb
	db $fd                                           ; $40f2: $fd
	ldh [$e0], a                                     ; $40f3: $e0 $e0
	db $db                                           ; $40f5: $db
	ret nz                                           ; $40f6: $c0

	ld a, l                                          ; $40f7: $7d
	ld b, l                                          ; $40f8: $45
	ld a, l                                          ; $40f9: $7d
	add c                                            ; $40fa: $81
	rst SubAFromDE                                          ; $40fb: $df
	cp a                                             ; $40fc: $bf
	rst SubAFromDE                                          ; $40fd: $df
	add b                                            ; $40fe: $80
	db $db                                           ; $40ff: $db
	add h                                            ; $4100: $84
	ld a, a                                          ; $4101: $7f
	ld sp, hl                                        ; $4102: $f9
	ld e, d                                          ; $4103: $5a
	ret nz                                           ; $4104: $c0

	ld a, l                                          ; $4105: $7d
	ld e, [hl]                                       ; $4106: $5e
	ld a, e                                          ; $4107: $7b
	cp $75                                           ; $4108: $fe $75
	inc hl                                           ; $410a: $23
	db $dd                                           ; $410b: $dd
	rst SubAFromDE                                          ; $410c: $df
	reti                                             ; $410d: $d9


	add d                                            ; $410e: $82
	reti                                             ; $410f: $d9


	ld a, l                                          ; $4110: $7d
	sbc $02                                          ; $4111: $de $02
	sbc [hl]                                         ; $4113: $9e
	ld b, $dd                                        ; $4114: $06 $dd
	inc b                                            ; $4116: $04
	sbc h                                            ; $4117: $9c
	db $f4                                           ; $4118: $f4
	or $f6                                           ; $4119: $f6 $f6
	sbc $f4                                          ; $411b: $de $f4
	sbc l                                            ; $411d: $9d
	ldh a, [$f4]                                     ; $411e: $f0 $f4
	sbc $65                                          ; $4120: $de $65
	sbc l                                            ; $4122: $9d
	ld c, c                                          ; $4123: $49
	ld l, c                                          ; $4124: $69
	sbc $a9                                          ; $4125: $de $a9
	rst SubAFromDE                                          ; $4127: $df
	inc bc                                           ; $4128: $03
	sbc l                                            ; $4129: $9d
	ld [bc], a                                       ; $412a: $02
	ld h, [hl]                                       ; $412b: $66
	db $dd                                           ; $412c: $dd
	ld b, [hl]                                       ; $412d: $46
	sbc $ff                                          ; $412e: $de $ff
	rst SubAFromDE                                          ; $4130: $df
	rst FarCall                                          ; $4131: $f7
	sbc $f3                                          ; $4132: $de $f3
	rst SubAFromDE                                          ; $4134: $df
	ld [$2d99], sp                                   ; $4135: $08 $99 $2d
	inc a                                            ; $4138: $3c
	jr jr_047_40d7                                   ; $4139: $18 $9c

	sbc [hl]                                         ; $413b: $9e
	sbc [hl]                                         ; $413c: $9e
	sbc $80                                          ; $413d: $de $80
	call c, Call_047_7ec0                            ; $413f: $dc $c0 $7e
	add $98                                          ; $4142: $c6 $98
	ldh a, [c]                                       ; $4144: $f2
	or [hl]                                          ; $4145: $b6
	or $f6                                           ; $4146: $f6 $f6
	halt                                             ; $4148: $76
	halt                                             ; $4149: $76
	ld b, d                                          ; $414a: $42
	call c, $9c40                                    ; $414b: $dc $40 $9c
	ld c, b                                          ; $414e: $48
	ld d, b                                          ; $414f: $50
	cp c                                             ; $4150: $b9
	call c, $9ebb                                    ; $4151: $dc $bb $9e
	or e                                             ; $4154: $b3
	ld l, [hl]                                       ; $4155: $6e
	ret nz                                           ; $4156: $c0

	cp $d9                                           ; $4157: $fe $d9
	ei                                               ; $4159: $fb
	sbc l                                            ; $415a: $9d
	nop                                              ; $415b: $00
	inc b                                            ; $415c: $04
	db $fd                                           ; $415d: $fd
	rst SubAFromDE                                          ; $415e: $df
	inc b                                            ; $415f: $04
	ld h, e                                          ; $4160: $63
	ldh a, [rPCM34]                                  ; $4161: $f0 $77
	ldh a, [c]                                       ; $4163: $f2
	ld a, e                                          ; $4164: $7b
	db $fd                                           ; $4165: $fd
	ld d, a                                          ; $4166: $57
	ldh a, [$7b]                                     ; $4167: $f0 $7b
	pop hl                                           ; $4169: $e1
	ld c, e                                          ; $416a: $4b
	ldh a, [$5b]                                     ; $416b: $f0 $5b
	ret nz                                           ; $416d: $c0

	ld l, a                                          ; $416e: $6f
	pop hl                                           ; $416f: $e1
	ld h, e                                          ; $4170: $63
	ldh [$9c], a                                     ; $4171: $e0 $9c
	dec b                                            ; $4173: $05
	ld [bc], a                                       ; $4174: $02
	ld bc, $08de                                     ; $4175: $01 $de $08
	sbc b                                            ; $4178: $98
	inc c                                            ; $4179: $0c
	dec bc                                           ; $417a: $0b
	ldh [$e8], a                                     ; $417b: $e0 $e8
	add sp, -$10                                     ; $417d: $e8 $f0
	ldh a, [$de]                                     ; $417f: $f0 $de
	ld hl, sp-$6a                                    ; $4181: $f8 $96
	ld d, a                                          ; $4183: $57
	xor [hl]                                         ; $4184: $ae
	ld [hl], b                                       ; $4185: $70
	nop                                              ; $4186: $00
	ld h, d                                          ; $4187: $62
	ld a, [hl]                                       ; $4188: $7e
	ld a, [hl]                                       ; $4189: $7e
	cp $00                                           ; $418a: $fe $00
	sbc $01                                          ; $418c: $de $01
	sbc d                                            ; $418e: $9a
	dec b                                            ; $418f: $05
	ld bc, $552b                                     ; $4190: $01 $2b $55
	ld c, $6b                                        ; $4193: $0e $6b
	rst GetHLinHL                                          ; $4195: $cf
	ld a, [hl]                                       ; $4196: $7e
	push hl                                          ; $4197: $e5
	db $db                                           ; $4198: $db
	ei                                               ; $4199: $fb
	sbc [hl]                                         ; $419a: $9e
	rrca                                             ; $419b: $0f
	ld c, e                                          ; $419c: $4b
	ldh a, [$d9]                                     ; $419d: $f0 $d9

jr_047_419f:
	rst $38                                          ; $419f: $ff
	sub a                                            ; $41a0: $97
	ld a, a                                          ; $41a1: $7f
	cp a                                             ; $41a2: $bf
	ld e, a                                          ; $41a3: $5f
	xor a                                            ; $41a4: $af
	ld e, a                                          ; $41a5: $5f
	ccf                                              ; $41a6: $3f
	ld e, $1f                                        ; $41a7: $1e $1f
	ld [hl], h                                       ; $41a9: $74
	inc [hl]                                         ; $41aa: $34
	ld [hl], a                                       ; $41ab: $77
	inc l                                            ; $41ac: $2c
	sbc e                                            ; $41ad: $9b
	or c                                             ; $41ae: $b1
	cp e                                             ; $41af: $bb
	ei                                               ; $41b0: $fb
	ld a, e                                          ; $41b1: $7b
	ld a, e                                          ; $41b2: $7b
	cp $9b                                           ; $41b3: $fe $9b
	ei                                               ; $41b5: $fb
	ld e, e                                          ; $41b6: $5b
	xor l                                            ; $41b7: $ad
	ld a, [hl]                                       ; $41b8: $7e
	ei                                               ; $41b9: $fb
	sbc l                                            ; $41ba: $9d
	ld d, d                                          ; $41bb: $52
	add c                                            ; $41bc: $81
	db $fc                                           ; $41bd: $fc
	rst SubAFromDE                                          ; $41be: $df
	jr c, jr_047_419f                                ; $41bf: $38 $de

	ld a, b                                          ; $41c1: $78
	sub c                                            ; $41c2: $91
	db $fc                                           ; $41c3: $fc
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	ld d, e                                          ; $41c6: $53
	ld d, b                                          ; $41c7: $50
	scf                                              ; $41c8: $37
	ld a, b                                          ; $41c9: $78
	call c, $007b                                    ; $41ca: $dc $7b $00
	nop                                              ; $41cd: $00
	bit 4, c                                         ; $41ce: $cb $61
	ld d, l                                          ; $41d0: $55
	ld a, b                                          ; $41d1: $78
	ld a, a                                          ; $41d2: $7f
	sbc e                                            ; $41d3: $9b
	ccf                                              ; $41d4: $3f
	nop                                              ; $41d5: $00
	inc [hl]                                         ; $41d6: $34
	nop                                              ; $41d7: $00
	ld a, d                                          ; $41d8: $7a
	ld c, l                                          ; $41d9: $4d
	ld a, d                                          ; $41da: $7a
	cpl                                              ; $41db: $2f
	ld a, l                                          ; $41dc: $7d
	call nz, $04df                                   ; $41dd: $c4 $df $04
	add e                                            ; $41e0: $83
	inc bc                                           ; $41e1: $03
	dec d                                            ; $41e2: $15
	ld a, [bc]                                       ; $41e3: $0a
	nop                                              ; $41e4: $00
	ldh a, [rDIV]                                    ; $41e5: $f0 $04
	ld hl, sp+$01                                    ; $41e7: $f8 $01
	inc b                                            ; $41e9: $04
	ld [$00f5], a                                    ; $41ea: $ea $f5 $00
	xor b                                            ; $41ed: $a8
	jr c, jr_047_4218                                ; $41ee: $38 $28

	jr jr_047_41f9                                   ; $41f0: $18 $07

	xor e                                            ; $41f2: $ab
	ld d, l                                          ; $41f3: $55
	nop                                              ; $41f4: $00
	ld b, a                                          ; $41f5: $47
	add h                                            ; $41f6: $84
	add l                                            ; $41f7: $85
	and h                                            ; $41f8: $a4

jr_047_41f9:
	and c                                            ; $41f9: $a1
	ld d, l                                          ; $41fa: $55
	xor d                                            ; $41fb: $aa
	nop                                              ; $41fc: $00
	halt                                             ; $41fd: $76
	call nz, $097d                                   ; $41fe: $c4 $7d $09
	ld a, a                                          ; $4201: $7f
	ldh a, [$97]                                     ; $4202: $f0 $97
	sbc d                                            ; $4204: $9a
	sbc b                                            ; $4205: $98
	sbc [hl]                                         ; $4206: $9e
	sbc b                                            ; $4207: $98
	pop af                                           ; $4208: $f1
	push af                                          ; $4209: $f5
	xor d                                            ; $420a: $aa
	nop                                              ; $420b: $00
	sbc $c0                                          ; $420c: $de $c0
	add d                                            ; $420e: $82
	ldh [$d0], a                                     ; $420f: $e0 $d0
	ldh [$50], a                                     ; $4211: $e0 $50
	nop                                              ; $4213: $00
	halt                                             ; $4214: $76
	ld h, h                                          ; $4215: $64
	ld h, h                                          ; $4216: $64
	ld b, h                                          ; $4217: $44

jr_047_4218:
	and $d6                                          ; $4218: $e6 $d6
	and [hl]                                         ; $421a: $a6
	inc b                                            ; $421b: $04
	ld b, b                                          ; $421c: $40
	ld e, c                                          ; $421d: $59

jr_047_421e:
	or $55                                           ; $421e: $f6 $55
	and l                                            ; $4220: $a5
	inc l                                            ; $4221: $2c
	and h                                            ; $4222: $a4
	inc [hl]                                         ; $4223: $34
	cp e                                             ; $4224: $bb
	and d                                            ; $4225: $a2
	nop                                              ; $4226: $00
	and d                                            ; $4227: $a2
	ld b, d                                          ; $4228: $42
	jp $8343                                         ; $4229: $c3 $43 $83


	cp $7c                                           ; $422c: $fe $7c
	db $fd                                           ; $422e: $fd
	ld [hl], d                                       ; $422f: $72
	ret nc                                           ; $4230: $d0

	sbc [hl]                                         ; $4231: $9e
	dec sp                                           ; $4232: $3b
	ld a, e                                          ; $4233: $7b
	ld [hl], d                                       ; $4234: $72
	rst SubAFromDE                                          ; $4235: $df
	ei                                               ; $4236: $fb
	halt                                             ; $4237: $76
	pop bc                                           ; $4238: $c1
	ld d, a                                          ; $4239: $57
	nop                                              ; $423a: $00
	reti                                             ; $423b: $d9


	inc b                                            ; $423c: $04
	ld d, a                                          ; $423d: $57
	ldh a, [rRP]                                     ; $423e: $f0 $56
	and b                                            ; $4240: $a0
	scf                                              ; $4241: $37
	ldh [$57], a                                     ; $4242: $e0 $57
	ldh a, [$7e]                                     ; $4244: $f0 $7e
	push bc                                          ; $4246: $c5
	rst SubAFromDE                                          ; $4247: $df
	inc b                                            ; $4248: $04
	sbc d                                            ; $4249: $9a
	ld [bc], a                                       ; $424a: $02
	inc b                                            ; $424b: $04
	ld [$f808], sp                                   ; $424c: $08 $08 $f8
	ld a, d                                          ; $424f: $7a
	jp $8874                                         ; $4250: $c3 $74 $88


	adc a                                            ; $4253: $8f
	ld [hl], d                                       ; $4254: $72
	ld h, d                                          ; $4255: $62
	ld h, b                                          ; $4256: $60
	ld l, h                                          ; $4257: $6c
	or h                                             ; $4258: $b4
	inc h                                            ; $4259: $24
	and b                                            ; $425a: $a0
	add d                                            ; $425b: $82
	ld hl, $0341                                     ; $425c: $21 $41 $03
	ld b, e                                          ; $425f: $43
	ld h, a                                          ; $4260: $67
	ld h, e                                          ; $4261: $63
	ld b, e                                          ; $4262: $43
	ld h, c                                          ; $4263: $61
	ld b, a                                          ; $4264: $47
	ret nc                                           ; $4265: $d0

	ld l, a                                          ; $4266: $6f
	add d                                            ; $4267: $82
	ld e, a                                          ; $4268: $5f
	ldh a, [$66]                                     ; $4269: $f0 $66
	pop bc                                           ; $426b: $c1
	sub a                                            ; $426c: $97
	ld a, [bc]                                       ; $426d: $0a
	add c                                            ; $426e: $81
	ld l, d                                          ; $426f: $6a
	dec h                                            ; $4270: $25
	and d                                            ; $4271: $a2
	add hl, de                                       ; $4272: $19
	dec hl                                           ; $4273: $2b
	sbc a                                            ; $4274: $9f
	call c, $dec0                                    ; $4275: $dc $c0 $de
	ldh [$de], a                                     ; $4278: $e0 $de
	ei                                               ; $427a: $fb
	ld a, a                                          ; $427b: $7f
	ld d, b                                          ; $427c: $50
	sbc h                                            ; $427d: $9c
	ld e, e                                          ; $427e: $5b
	cp e                                             ; $427f: $bb
	ld e, e                                          ; $4280: $5b
	ldh [$a1], a                                     ; $4281: $e0 $a1
	ld a, h                                          ; $4283: $7c
	cp $99                                           ; $4284: $fe $99
	ld [bc], a                                       ; $4286: $02
	inc bc                                           ; $4287: $03
	dec b                                            ; $4288: $05
	inc bc                                           ; $4289: $03
	dec e                                            ; $428a: $1d
	ld a, [de]                                       ; $428b: $1a
	ld [hl], l                                       ; $428c: $75
	ld c, e                                          ; $428d: $4b
	ld a, a                                          ; $428e: $7f
	jr c, jr_047_421e                                ; $428f: $38 $8d

	ld [bc], a                                       ; $4291: $02
	dec b                                            ; $4292: $05
	and b                                            ; $4293: $a0
	call nc, $04ec                                   ; $4294: $d4 $ec $04
	inc c                                            ; $4297: $0c
	push af                                          ; $4298: $f5
	ld d, l                                          ; $4299: $55
	xor d                                            ; $429a: $aa
	rlca                                             ; $429b: $07
	dec bc                                           ; $429c: $0b
	inc de                                           ; $429d: $13
	dec sp                                           ; $429e: $3b
	ld [hl], e                                       ; $429f: $73
	ld [bc], a                                       ; $42a0: $02
	and d                                            ; $42a1: $a2
	ld d, l                                          ; $42a2: $55
	call c, $9c04                                    ; $42a3: $dc $04 $9c
	push af                                          ; $42a6: $f5
	jp nz, $dcaa                                     ; $42a7: $c2 $aa $dc

	ei                                               ; $42aa: $fb
	ld a, h                                          ; $42ab: $7c
	or b                                             ; $42ac: $b0
	ld a, e                                          ; $42ad: $7b
	ldh a, [$fe]                                     ; $42ae: $f0 $fe
	sbc h                                            ; $42b0: $9c
	db $f4                                           ; $42b1: $f4
	ld [bc], a                                       ; $42b2: $02
	xor a                                            ; $42b3: $af
	call c, Call_047_7cfb                            ; $42b4: $dc $fb $7c
	and d                                            ; $42b7: $a2
	ld a, [hl]                                       ; $42b8: $7e
	add a                                            ; $42b9: $87
	ld [hl], a                                       ; $42ba: $77
	cpl                                              ; $42bb: $2f
	sbc h                                            ; $42bc: $9c
	and l                                            ; $42bd: $a5
	inc b                                            ; $42be: $04
	ld a, a                                          ; $42bf: $7f
	call c, $9efb                                    ; $42c0: $dc $fb $9e
	ld d, d                                          ; $42c3: $52
	ld a, d                                          ; $42c4: $7a
	sub h                                            ; $42c5: $94
	db $dd                                           ; $42c6: $dd
	inc b                                            ; $42c7: $04
	sbc h                                            ; $42c8: $9c
	ld d, b                                          ; $42c9: $50
	ld [bc], a                                       ; $42ca: $02
	rst $38                                          ; $42cb: $ff
	call c, Call_047_79fb                            ; $42cc: $dc $fb $79
	ld b, d                                          ; $42cf: $42
	ld [hl], d                                       ; $42d0: $72
	or c                                             ; $42d1: $b1
	ld a, h                                          ; $42d2: $7c
	ld [hl], a                                       ; $42d3: $77
	sbc [hl]                                         ; $42d4: $9e
	ld sp, hl                                        ; $42d5: $f9
	ld e, e                                          ; $42d6: $5b
	ld [bc], a                                       ; $42d7: $02
	ld [hl], a                                       ; $42d8: $77

jr_047_42d9:
	adc d                                            ; $42d9: $8a
	sbc [hl]                                         ; $42da: $9e
	db $fd                                           ; $42db: $fd
	ld h, a                                          ; $42dc: $67
	ldh a, [$df]                                     ; $42dd: $f0 $df
	add hl, bc                                       ; $42df: $09
	add d                                            ; $42e0: $82
	ld c, $1c                                        ; $42e1: $0e $1c
	inc [hl]                                         ; $42e3: $34
	inc a                                            ; $42e4: $3c
	jr jr_047_4303                                   ; $42e5: $18 $1c

	ldh a, [$f0]                                     ; $42e7: $f0 $f0
	ld sp, hl                                        ; $42e9: $f9
	rst $38                                          ; $42ea: $ff
	db $e3                                           ; $42eb: $e3
	db $e3                                           ; $42ec: $e3
	inc h                                            ; $42ed: $24
	ld b, $02                                        ; $42ee: $06 $02
	jr nz, @+$26                                     ; $42f0: $20 $24

	inc h                                            ; $42f2: $24
	inc [hl]                                         ; $42f3: $34
	jr jr_047_432e                                   ; $42f4: $18 $38

	jr c, jr_047_42d9                                ; $42f6: $38 $e1

	jp $e3e3                                         ; $42f8: $c3 $e3 $e3


	jp $1cf3                                         ; $42fb: $c3 $f3 $1c


	call c, $ff04                                    ; $42fe: $dc $04 $ff
	sbc l                                            ; $4301: $9d
	ld e, l                                          ; $4302: $5d

jr_047_4303:
	ld e, b                                          ; $4303: $58
	db $db                                           ; $4304: $db
	ei                                               ; $4305: $fb
	sbc [hl]                                         ; $4306: $9e
	ld [hl+], a                                      ; $4307: $22
	ld [hl], c                                       ; $4308: $71
	ld bc, $04df                                     ; $4309: $01 $df $04
	sbc l                                            ; $430c: $9d
	ld e, d                                          ; $430d: $5a
	dec e                                            ; $430e: $1d
	db $db                                           ; $430f: $db
	ei                                               ; $4310: $fb
	sbc h                                            ; $4311: $9c
	add l                                            ; $4312: $85
	ld [bc], a                                       ; $4313: $02
	ld a, a                                          ; $4314: $7f
	sbc $3f                                          ; $4315: $de $3f
	db $dd                                           ; $4317: $dd
	rra                                              ; $4318: $1f
	sub l                                            ; $4319: $95
	sbc l                                            ; $431a: $9d
	adc $c6                                          ; $431b: $ce $c6
	push bc                                          ; $431d: $c5
	ld [$e7e4], a                                    ; $431e: $ea $e4 $e7
	ld bc, $e0e0                                     ; $4321: $01 $e0 $e0
	ld [hl], l                                       ; $4324: $75
	add hl, sp                                       ; $4325: $39
	rst SubAFromDE                                          ; $4326: $df
	db $fc                                           ; $4327: $fc
	sub a                                            ; $4328: $97
	cp e                                             ; $4329: $bb
	db $db                                           ; $432a: $db
	ld l, e                                          ; $432b: $6b
	ld a, e                                          ; $432c: $7b
	ld [hl], e                                       ; $432d: $73

jr_047_432e:
	di                                               ; $432e: $f3
	ld a, e                                          ; $432f: $7b
	ld a, d                                          ; $4330: $7a
	ldh [hLCDCIntHandlerIdx], a                                     ; $4331: $e0 $81
	sbc [hl]                                         ; $4333: $9e
	rra                                              ; $4334: $1f
	ldh a, [c]                                       ; $4335: $f2
	ld a, h                                          ; $4336: $7c
	and a                                            ; $4337: $a7
	ld l, d                                          ; $4338: $6a
	adc b                                            ; $4339: $88
	ld a, [$0a79]                                    ; $433a: $fa $79 $0a
	db $fc                                           ; $433d: $fc
	ld a, l                                          ; $433e: $7d
	ld l, $2f                                        ; $433f: $2e $2f
	ldh a, [$9e]                                     ; $4341: $f0 $9e
	cp e                                             ; $4343: $bb
	ld l, e                                          ; $4344: $6b
	cp a                                             ; $4345: $bf
	sbc [hl]                                         ; $4346: $9e
	ld b, h                                          ; $4347: $44
	ld a, [$ff9e]                                    ; $4348: $fa $9e $ff
	ld e, e                                          ; $434b: $5b
	cp a                                             ; $434c: $bf
	ld a, h                                          ; $434d: $7c
	ld b, l                                          ; $434e: $45
	rst $38                                          ; $434f: $ff
	sbc [hl]                                         ; $4350: $9e
	ld e, $70                                        ; $4351: $1e $70
	ld e, a                                          ; $4353: $5f
	rst $38                                          ; $4354: $ff
	add a                                            ; $4355: $87
	inc sp                                           ; $4356: $33
	rra                                              ; $4357: $1f
	rrca                                             ; $4358: $0f
	rlca                                             ; $4359: $07
	xor a                                            ; $435a: $af
	ld d, a                                          ; $435b: $57
	dec bc                                           ; $435c: $0b
	dec b                                            ; $435d: $05
	inc l                                            ; $435e: $2c
	jr c, jr_047_4399                                ; $435f: $38 $38

	ld d, l                                          ; $4361: $55
	xor a                                            ; $4362: $af
	ld a, a                                          ; $4363: $7f
	inc hl                                           ; $4364: $23
	inc c                                            ; $4365: $0c
	inc d                                            ; $4366: $14
	and $df                                          ; $4367: $e6 $df
	xor d                                            ; $4369: $aa
	ld d, b                                          ; $436a: $50
	add b                                            ; $436b: $80
	ret nz                                           ; $436c: $c0

	ldh a, [rPCM34]                                  ; $436d: $f0 $77
	or l                                             ; $436f: $b5
	ld a, a                                          ; $4370: $7f
	call z, $ff9a                                    ; $4371: $cc $9a $ff
	ld bc, $0012                                     ; $4374: $01 $12 $00
	rst $38                                          ; $4377: $ff
	ld h, a                                          ; $4378: $67
	and l                                            ; $4379: $a5
	sub [hl]                                         ; $437a: $96
	ld sp, $00ff                                     ; $437b: $31 $ff $00
	ccf                                              ; $437e: $3f
	rst $38                                          ; $437f: $ff
	rst SubAFromBC                                          ; $4380: $e7
	db $10                                           ; $4381: $10
	ld [$fdef], a                                    ; $4382: $ea $ef $fd
	rst SubAFromDE                                          ; $4385: $df
	rrca                                             ; $4386: $0f
	sub c                                            ; $4387: $91
	rra                                              ; $4388: $1f
	ccf                                              ; $4389: $3f
	sbc a                                            ; $438a: $9f
	ccf                                              ; $438b: $3f
	rst $38                                          ; $438c: $ff
	rla                                              ; $438d: $17
	pop hl                                           ; $438e: $e1
	nop                                              ; $438f: $00
	and b                                            ; $4390: $a0
	adc $0a                                          ; $4391: $ce $0a
	dec d                                            ; $4393: $15
	cpl                                              ; $4394: $2f
	nop                                              ; $4395: $00
	sbc $fc                                          ; $4396: $de $fc
	ld a, a                                          ; $4398: $7f

jr_047_4399:
	jp nc, $ffde                                     ; $4399: $d2 $de $ff

	sub a                                            ; $439c: $97
	ld hl, sp-$02                                    ; $439d: $f8 $fe
	ld a, [hl]                                       ; $439f: $7e
	ccf                                              ; $43a0: $3f
	db $fc                                           ; $43a1: $fc
	ld a, [hl+]                                      ; $43a2: $2a
	sub l                                            ; $43a3: $95
	ld l, d                                          ; $43a4: $6a
	dec [hl]                                         ; $43a5: $35
	nop                                              ; $43a6: $00
	sbc [hl]                                         ; $43a7: $9e
	ld d, e                                          ; $43a8: $53
	db $db                                           ; $43a9: $db
	ld d, l                                          ; $43aa: $55
	sbc h                                            ; $43ab: $9c
	ld d, h                                          ; $43ac: $54
	ld b, h                                          ; $43ad: $44
	ld b, h                                          ; $43ae: $44
	ld [hl], e                                       ; $43af: $73
	or $d0                                           ; $43b0: $f6 $d0
	ld b, h                                          ; $43b2: $44
	sbc [hl]                                         ; $43b3: $9e
	ld b, [hl]                                       ; $43b4: $46
	jp c, $df44                                      ; $43b5: $da $44 $df

	ld [hl], $9e                                     ; $43b8: $36 $9e
	ld h, e                                          ; $43ba: $63
	db $dd                                           ; $43bb: $dd
	inc sp                                           ; $43bc: $33
	rst SubAFromDE                                          ; $43bd: $df
	ld [hl], $9e                                     ; $43be: $36 $9e
	ld h, [hl]                                       ; $43c0: $66
	ld l, e                                          ; $43c1: $6b
	or $7f                                           ; $43c2: $f6 $7f
	ld hl, sp-$63                                    ; $43c4: $f8 $9d
	ld h, [hl]                                       ; $43c6: $66
	inc sp                                           ; $43c7: $33
	ld a, e                                          ; $43c8: $7b
	db $fd                                           ; $43c9: $fd
	ld h, e                                          ; $43ca: $63
	or $77                                           ; $43cb: $f6 $77
	db $eb                                           ; $43cd: $eb
	ld a, a                                          ; $43ce: $7f
	ld hl, sp+$7b                                    ; $43cf: $f8 $7b
	ldh [c], a                                       ; $43d1: $e2
	ld h, a                                          ; $43d2: $67
	or $da                                           ; $43d3: $f6 $da
	inc sp                                           ; $43d5: $33
	ld e, e                                          ; $43d6: $5b
	or $df                                           ; $43d7: $f6 $df
	ld h, [hl]                                       ; $43d9: $66
	ld de, $8f0b                                     ; $43da: $11 $0b $8f
	ret nz                                           ; $43dd: $c0

	nop                                              ; $43de: $00
	ld h, b                                          ; $43df: $60
	add b                                            ; $43e0: $80
	nop                                              ; $43e1: $00
	ldh [rAUD1SWEEP], a                              ; $43e2: $e0 $10
	ldh [rDIV], a                                    ; $43e4: $e0 $04
	ld a, [$fe28]                                    ; $43e6: $fa $28 $fe
	ld bc, $03fe                                     ; $43e9: $01 $fe $03
	db $fc                                           ; $43ec: $fc
	di                                               ; $43ed: $f3
	sbc [hl]                                         ; $43ee: $9e
	ldh [$e2], a                                     ; $43ef: $e0 $e2
	sbc d                                            ; $43f1: $9a
	dec c                                            ; $43f2: $0d
	nop                                              ; $43f3: $00
	rrca                                             ; $43f4: $0f

jr_047_43f5:
	nop                                              ; $43f5: $00
	rra                                              ; $43f6: $1f
	ld a, e                                          ; $43f7: $7b
	cp $9e                                           ; $43f8: $fe $9e
	add hl, de                                       ; $43fa: $19
	ld a, [$7c96]                                    ; $43fb: $fa $96 $7c
	add b                                            ; $43fe: $80
	ld l, a                                          ; $43ff: $6f
	sub b                                            ; $4400: $90
	rst SubAFromBC                                          ; $4401: $e7
	jr jr_047_43f5                                   ; $4402: $18 $f1

	ld c, $ff                                        ; $4404: $0e $ff
	ld a, e                                          ; $4406: $7b
	db $ec                                           ; $4407: $ec
	sbc [hl]                                         ; $4408: $9e
	inc bc                                           ; $4409: $03
	ld a, e                                          ; $440a: $7b
	db $e4                                           ; $440b: $e4
	sub l                                            ; $440c: $95

jr_047_440d:
	dec sp                                           ; $440d: $3b
	inc b                                            ; $440e: $04
	push af                                          ; $440f: $f5
	ld [$00ff], sp                                   ; $4410: $08 $ff $00
	db $fd                                           ; $4413: $fd
	ld [bc], a                                       ; $4414: $02
	rst $38                                          ; $4415: $ff
	nop                                              ; $4416: $00
	ld l, a                                          ; $4417: $6f
	cp $98                                           ; $4418: $fe $98
	ld a, a                                          ; $441a: $7f
	add b                                            ; $441b: $80
	db $fc                                           ; $441c: $fc
	inc bc                                           ; $441d: $03
	rst $38                                          ; $441e: $ff
	nop                                              ; $441f: $00
	rst AddAOntoHL                                          ; $4420: $ef
	ld a, e                                          ; $4421: $7b
	or $9a                                           ; $4422: $f6 $9a
	rst FarCall                                          ; $4424: $f7
	ld [$007f], sp                                   ; $4425: $08 $7f $00
	ld a, e                                          ; $4428: $7b
	ld a, e                                          ; $4429: $7b
	ld hl, sp-$72                                    ; $442a: $f8 $8e
	adc c                                            ; $442c: $89
	ldh a, [hDisp1_LCDC]                                     ; $442d: $f0 $8f
	ldh a, [$2f]                                     ; $442f: $f0 $2f
	ret nz                                           ; $4431: $c0

	ld a, b                                          ; $4432: $78
	add a                                            ; $4433: $87
	ret nz                                           ; $4434: $c0

	ccf                                              ; $4435: $3f
	nop                                              ; $4436: $00
	rst $38                                          ; $4437: $ff
	ld e, a                                          ; $4438: $5f
	ldh [hDisp1_OBP1], a                                     ; $4439: $e0 $94
	ld l, e                                          ; $443b: $6b
	ldh [$7b], a                                     ; $443c: $e0 $7b
	ld [hl], e                                       ; $443e: $73
	sub e                                            ; $443f: $93
	ld [de], a                                       ; $4440: $12
	ld hl, sp+$04                                    ; $4441: $f8 $04
	ei                                               ; $4443: $fb
	jr c, jr_047_440d                                ; $4444: $38 $c7

	inc b                                            ; $4446: $04
	rst $38                                          ; $4447: $ff
	ld b, $ff                                        ; $4448: $06 $ff
	dec de                                           ; $444a: $1b
	rst $38                                          ; $444b: $ff
	ei                                               ; $444c: $fb
	ld a, a                                          ; $444d: $7f
	ld e, l                                          ; $444e: $5d
	ld a, a                                          ; $444f: $7f
	ld e, b                                          ; $4450: $58
	sbc c                                            ; $4451: $99
	ret nz                                           ; $4452: $c0

	add b                                            ; $4453: $80
	add d                                            ; $4454: $82
	nop                                              ; $4455: $00
	add a                                            ; $4456: $87
	add b                                            ; $4457: $80
	rst AddAOntoHL                                          ; $4458: $ef
	sbc [hl]                                         ; $4459: $9e
	rlca                                             ; $445a: $07
	ld a, e                                          ; $445b: $7b
	sbc b                                            ; $445c: $98
	ld [hl], a                                       ; $445d: $77
	ld a, d                                          ; $445e: $7a
	sbc b                                            ; $445f: $98
	add hl, de                                       ; $4460: $19
	ld b, $30                                        ; $4461: $06 $30
	rrca                                             ; $4463: $0f
	rla                                              ; $4464: $17
	rrca                                             ; $4465: $0f
	rra                                              ; $4466: $1f
	ld a, e                                          ; $4467: $7b
	xor h                                            ; $4468: $ac
	adc [hl]                                         ; $4469: $8e
	ld hl, sp+$07                                    ; $446a: $f8 $07
	ldh a, [rIF]                                     ; $446c: $f0 $0f
	or e                                             ; $446e: $b3
	ld c, h                                          ; $446f: $4c
	pop af                                           ; $4470: $f1
	ld c, $7f                                        ; $4471: $0e $7f
	add b                                            ; $4473: $80
	ld a, a                                          ; $4474: $7f
	add b                                            ; $4475: $80
	cp $00                                           ; $4476: $fe $00
	sbc b                                            ; $4478: $98
	nop                                              ; $4479: $00
	ret z                                            ; $447a: $c8

	ld a, e                                          ; $447b: $7b
	jr c, @+$81                                      ; $447c: $38 $7f

	ret nz                                           ; $447e: $c0

	ld [hl], a                                       ; $447f: $77

Call_047_4480:
	push bc                                          ; $4480: $c5
	ld [hl], a                                       ; $4481: $77
	db $fc                                           ; $4482: $fc
	sbc h                                            ; $4483: $9c

jr_047_4484:
	ld c, $00                                        ; $4484: $0e $00
	ld bc, $fe7b                                     ; $4486: $01 $7b $fe
	sbc h                                            ; $4489: $9c
	add e                                            ; $448a: $83
	nop                                              ; $448b: $00
	ld h, e                                          ; $448c: $63
	ld a, e                                          ; $448d: $7b
	ld e, [hl]                                       ; $448e: $5e
	ld a, a                                          ; $448f: $7f
	call nz, Call_047_689a                           ; $4490: $c4 $9a $68
	db $10                                           ; $4493: $10
	ccf                                              ; $4494: $3f
	nop                                              ; $4495: $00
	ccf                                              ; $4496: $3f
	ld a, e                                          ; $4497: $7b
	jp nz, $9e91                                     ; $4498: $c2 $91 $9e

	ld bc, $01fe                                     ; $449b: $01 $fe $01
	ld a, b                                          ; $449e: $78
	rlca                                             ; $449f: $07
	ld [bc], a                                       ; $44a0: $02
	rst $38                                          ; $44a1: $ff
	di                                               ; $44a2: $f3
	inc c                                            ; $44a3: $0c
	ldh a, [rIF]                                     ; $44a4: $f0 $0f
	ld hl, sp+$07                                    ; $44a6: $f8 $07
	ld [hl], a                                       ; $44a8: $77
	ld d, e                                          ; $44a9: $53
	add h                                            ; $44aa: $84
	add b                                            ; $44ab: $80
	rst $38                                          ; $44ac: $ff
	ld d, b                                          ; $44ad: $50
	rst $38                                          ; $44ae: $ff
	xor d                                            ; $44af: $aa
	rst $38                                          ; $44b0: $ff
	jr nz, @-$1f                                     ; $44b1: $20 $df

	jr nc, jr_047_4484                               ; $44b3: $30 $cf

	inc a                                            ; $44b5: $3c
	jp $c738                                         ; $44b6: $c3 $38 $c7


	nop                                              ; $44b9: $00
	rst $38                                          ; $44ba: $ff
	ld [bc], a                                       ; $44bb: $02
	rst $38                                          ; $44bc: $ff
	ld b, l                                          ; $44bd: $45
	rst $38                                          ; $44be: $ff
	xor e                                            ; $44bf: $ab
	rst $38                                          ; $44c0: $ff
	ld d, l                                          ; $44c1: $55
	rst $38                                          ; $44c2: $ff
	and d                                            ; $44c3: $a2
	rst $38                                          ; $44c4: $ff
	ld bc, $f47b                                     ; $44c5: $01 $7b $f4
	add h                                            ; $44c8: $84
	rrca                                             ; $44c9: $0f
	rst $38                                          ; $44ca: $ff
	dec bc                                           ; $44cb: $0b
	rst $38                                          ; $44cc: $ff
	ld d, a                                          ; $44cd: $57
	rst $38                                          ; $44ce: $ff
	xor [hl]                                         ; $44cf: $ae
	rst $38                                          ; $44d0: $ff
	add hl, sp                                       ; $44d1: $39
	add $3f                                          ; $44d2: $c6 $3f
	ret nz                                           ; $44d4: $c0

	ld l, a                                          ; $44d5: $6f
	sub b                                            ; $44d6: $90
	inc bc                                           ; $44d7: $03
	db $fc                                           ; $44d8: $fc
	inc bc                                           ; $44d9: $03
	db $fc                                           ; $44da: $fc
	ld a, e                                          ; $44db: $7b
	db $fc                                           ; $44dc: $fc
	sub b                                            ; $44dd: $90
	rst $38                                          ; $44de: $ff
	ld a, [bc]                                       ; $44df: $0a
	rst $38                                          ; $44e0: $ff
	ret nz                                           ; $44e1: $c0

	nop                                              ; $44e2: $00
	add c                                            ; $44e3: $81
	ld a, e                                          ; $44e4: $7b
	sbc d                                            ; $44e5: $9a
	ld a, a                                          ; $44e6: $7f
	cp $8e                                           ; $44e7: $fe $8e
	db $e4                                           ; $44e9: $e4

jr_047_44ea:
	nop                                              ; $44ea: $00
	rst SubAFromHL                                          ; $44eb: $d7
	jr nz, jr_047_44ea                               ; $44ec: $20 $fc

	inc bc                                           ; $44ee: $03
	adc h                                            ; $44ef: $8c
	ld [hl], e                                       ; $44f0: $73
	ld c, [hl]                                       ; $44f1: $4e
	nop                                              ; $44f2: $00
	rst GetHLinHL                                          ; $44f3: $cf
	nop                                              ; $44f4: $00
	call nc, $1a03                                   ; $44f5: $d4 $03 $1a
	ld bc, $7a0b                                     ; $44f8: $01 $0b $7a
	call c, $7780                                    ; $44fb: $dc $80 $77
	sbc b                                            ; $44fe: $98
	dec b                                            ; $44ff: $05
	ld a, [$03fc]                                    ; $4500: $fa $fc $03
	ret z                                            ; $4503: $c8

	scf                                              ; $4504: $37
	rra                                              ; $4505: $1f
	ldh [$03], a                                     ; $4506: $e0 $03
	nop                                              ; $4508: $00
	ld [$9f11], sp                                   ; $4509: $08 $11 $9f
	ld h, b                                          ; $450c: $60
	ld c, h                                          ; $450d: $4c
	di                                               ; $450e: $f3
	ld c, $f1                                        ; $450f: $0e $f1
	rrca                                             ; $4511: $0f
	ldh a, [$98]                                     ; $4512: $f0 $98
	rst SubAFromBC                                          ; $4514: $e7
	ld bc, $c1ff                                     ; $4515: $01 $ff $c1
	ccf                                              ; $4518: $3f
	jp nz, $b03d                                     ; $4519: $c2 $3d $b0

	add b                                            ; $451c: $80
	ld c, a                                          ; $451d: $4f
	ld e, [hl]                                       ; $451e: $5e
	add e                                            ; $451f: $83
	cp b                                             ; $4520: $b8
	jp $0ff0                                         ; $4521: $c3 $f0 $0f


	nop                                              ; $4524: $00
	rst $38                                          ; $4525: $ff
	db $10                                           ; $4526: $10
	rst $38                                          ; $4527: $ff
	and [hl]                                         ; $4528: $a6
	rst $38                                          ; $4529: $ff
	ld a, c                                          ; $452a: $79
	rst $38                                          ; $452b: $ff
	ld [$f3ff], sp                                   ; $452c: $08 $ff $f3
	db $fc                                           ; $452f: $fc
	ld c, b                                          ; $4530: $48
	rst $38                                          ; $4531: $ff
	ccf                                              ; $4532: $3f
	ret nz                                           ; $4533: $c0

	cp a                                             ; $4534: $bf
	ret nz                                           ; $4535: $c0

	ld [hl], c                                       ; $4536: $71
	adc [hl]                                         ; $4537: $8e
	ld [de], a                                       ; $4538: $12
	rst AddAOntoHL                                          ; $4539: $ef
	db $10                                           ; $453a: $10
	rst AddAOntoHL                                          ; $453b: $ef
	halt                                             ; $453c: $76
	jp nz, $f47f                                     ; $453d: $c2 $7f $f4

	sbc [hl]                                         ; $4540: $9e
	adc a                                            ; $4541: $8f
	ld a, e                                          ; $4542: $7b
	ld h, l                                          ; $4543: $65
	sbc e                                            ; $4544: $9b
	and $19                                          ; $4545: $e6 $19
	add c                                            ; $4547: $81
	ld a, a                                          ; $4548: $7f
	ld [hl], a                                       ; $4549: $77
	ld e, [hl]                                       ; $454a: $5e
	add [hl]                                         ; $454b: $86
	ld [bc], a                                       ; $454c: $02
	db $fd                                           ; $454d: $fd
	sbc h                                            ; $454e: $9c
	ld h, e                                          ; $454f: $63
	cp $01                                           ; $4550: $fe $01
	add [hl]                                         ; $4552: $86
	ld bc, $8063                                     ; $4553: $01 $63 $80
	dec de                                           ; $4556: $1b
	ldh [rTAC], a                                    ; $4557: $e0 $07
	ld hl, sp+$41                                    ; $4559: $f8 $41
	cp [hl]                                          ; $455b: $be
	jr nc, @+$01                                     ; $455c: $30 $ff

	add hl, hl                                       ; $455e: $29
	rst $38                                          ; $455f: $ff
	ld bc, $08f8                                     ; $4560: $01 $f8 $08
	ldh a, [$bf]                                     ; $4563: $f0 $bf
	ld [hl], d                                       ; $4565: $72
	ldh a, [c]                                       ; $4566: $f2
	ld a, a                                          ; $4567: $7f
	nop                                              ; $4568: $00
	sbc h                                            ; $4569: $9c
	ldh [c], a                                       ; $456a: $e2
	dec e                                            ; $456b: $1d
	dec d                                            ; $456c: $15
	ld a, e                                          ; $456d: $7b
	jr nc, @-$77                                     ; $456e: $30 $87

	ld h, d                                          ; $4570: $62
	dec e                                            ; $4571: $1d
	pop hl                                           ; $4572: $e1
	ld e, $07                                        ; $4573: $1e $07
	ld hl, sp-$39                                    ; $4575: $f8 $c7
	ld hl, sp+$45                                    ; $4577: $f8 $45
	ld a, [$ff80]                                    ; $4579: $fa $80 $ff
	add sp, -$01                                     ; $457c: $e8 $ff
	sub c                                            ; $457e: $91
	nop                                              ; $457f: $00
	cpl                                              ; $4580: $2f
	sub b                                            ; $4581: $90
	add b                                            ; $4582: $80
	ld a, a                                          ; $4583: $7f
	ret nz                                           ; $4584: $c0

	ccf                                              ; $4585: $3f
	rst GetHLinHL                                          ; $4586: $cf
	jr nc, jr_047_45f7                               ; $4587: $30 $6e

	ld [hl], b                                       ; $4589: $70
	sub a                                            ; $458a: $97
	add d                                            ; $458b: $82
	ld bc, $00dd                                     ; $458c: $01 $dd $00
	ld d, a                                          ; $458f: $57
	adc b                                            ; $4590: $88
	ld a, h                                          ; $4591: $7c
	add e                                            ; $4592: $83
	ld a, e                                          ; $4593: $7b
	ccf                                              ; $4594: $3f
	ld a, e                                          ; $4595: $7b
	cp $9c                                           ; $4596: $fe $9c
	ld sp, hl                                        ; $4598: $f9
	rlca                                             ; $4599: $07
	ldh [$72], a                                     ; $459a: $e0 $72
	sub h                                            ; $459c: $94
	ld a, a                                          ; $459d: $7f
	and $8a                                          ; $459e: $e6 $8a
	ld de, $80ee                                     ; $45a0: $11 $ee $80
	ld a, a                                          ; $45a3: $7f
	ldh a, [rIF]                                     ; $45a4: $f0 $0f
	ld h, b                                          ; $45a6: $60
	sbc a                                            ; $45a7: $9f
	inc bc                                           ; $45a8: $03
	nop                                              ; $45a9: $00
	ld b, $01                                        ; $45aa: $06 $01
	jr c, @+$09                                      ; $45ac: $38 $07

	db $f4                                           ; $45ae: $f4
	rrca                                             ; $45af: $0f
	pop af                                           ; $45b0: $f1
	rrca                                             ; $45b1: $0f
	ld b, b                                          ; $45b2: $40
	cp a                                             ; $45b3: $bf
	jr jr_047_4630                                   ; $45b4: $18 $7a

	xor $8e                                          ; $45b6: $ee $8e
	ld d, $01                                        ; $45b8: $16 $01
	xor a                                            ; $45ba: $af
	db $10                                           ; $45bb: $10
	rrca                                             ; $45bc: $0f
	ldh a, [$c3]                                     ; $45bd: $f0 $c3
	db $fc                                           ; $45bf: $fc
	dec h                                            ; $45c0: $25
	rst SubAFromDE                                          ; $45c1: $df
	rst AddAOntoHL                                          ; $45c2: $ef
	rst SubAFromHL                                          ; $45c3: $d7
	sub l                                            ; $45c4: $95
	rst $38                                          ; $45c5: $ff
	jr z, @+$01                                      ; $45c6: $28 $ff

	add c                                            ; $45c8: $81
	ld a, e                                          ; $45c9: $7b
	ld d, d                                          ; $45ca: $52
	sbc h                                            ; $45cb: $9c
	and l                                            ; $45cc: $a5
	ld a, a                                          ; $45cd: $7f
	ld a, [hl+]                                      ; $45ce: $2a
	ld a, d                                          ; $45cf: $7a
	db $f4                                           ; $45d0: $f4
	sbc b                                            ; $45d1: $98
	ei                                               ; $45d2: $fb
	rst $38                                          ; $45d3: $ff
	ld [hl], d                                       ; $45d4: $72
	rst $38                                          ; $45d5: $ff
	call Call_047_75fe                               ; $45d6: $cd $fe $75
	ld a, d                                          ; $45d9: $7a
	call c, Call_047_5d9e                            ; $45da: $dc $9e $5d
	ld a, d                                          ; $45dd: $7a
	ret z                                            ; $45de: $c8

	sbc [hl]                                         ; $45df: $9e
	sub e                                            ; $45e0: $93
	ld a, d                                          ; $45e1: $7a
	call c, $287f                                    ; $45e2: $dc $7f $28
	add h                                            ; $45e5: $84
	ld [hl], e                                       ; $45e6: $73
	sbc a                                            ; $45e7: $9f
	rst SubAFromHL                                          ; $45e8: $d7
	rst $38                                          ; $45e9: $ff
	adc e                                            ; $45ea: $8b
	rst $38                                          ; $45eb: $ff
	ld l, l                                          ; $45ec: $6d
	rst $38                                          ; $45ed: $ff
	cp $ff                                           ; $45ee: $fe $ff
	call $dbff                                       ; $45f0: $cd $ff $db
	rst $38                                          ; $45f3: $ff
	ld e, a                                          ; $45f4: $5f
	rst $38                                          ; $45f5: $ff
	xor c                                            ; $45f6: $a9

jr_047_45f7:
	rst $38                                          ; $45f7: $ff
	ld e, h                                          ; $45f8: $5c
	rst $38                                          ; $45f9: $ff
	cp b                                             ; $45fa: $b8
	rst $38                                          ; $45fb: $ff
	ld [hl], l                                       ; $45fc: $75
	rst $38                                          ; $45fd: $ff
	ld a, [$fdff]                                    ; $45fe: $fa $ff $fd
	ld a, e                                          ; $4601: $7b
	cp $df                                           ; $4602: $fe $df
	rst $38                                          ; $4604: $ff
	sbc [hl]                                         ; $4605: $9e
	ld a, a                                          ; $4606: $7f
	ld [hl], c                                       ; $4607: $71
	jp hl                                            ; $4608: $e9


	ld [hl], a                                       ; $4609: $77
	ld [hl], l                                       ; $460a: $75
	sbc [hl]                                         ; $460b: $9e
	add a                                            ; $460c: $87
	ld a, d                                          ; $460d: $7a
	ld [de], a                                       ; $460e: $12
	ld a, a                                          ; $460f: $7f
	ld h, b                                          ; $4610: $60
	sub [hl]                                         ; $4611: $96
	sbc b                                            ; $4612: $98
	rst $38                                          ; $4613: $ff
	inc c                                            ; $4614: $0c
	di                                               ; $4615: $f3
	dec b                                            ; $4616: $05
	cp $05                                           ; $4617: $fe $05
	cp $10                                           ; $4619: $fe $10
	ld [hl], l                                       ; $461b: $75
	db $dd                                           ; $461c: $dd
	adc l                                            ; $461d: $8d
	rst $38                                          ; $461e: $ff
	ld b, h                                          ; $461f: $44
	rst $38                                          ; $4620: $ff
	ld d, d                                          ; $4621: $52
	rst $38                                          ; $4622: $ff
	ld [$9ef7], sp                                   ; $4623: $08 $f7 $9e
	ld h, c                                          ; $4626: $61
	ld hl, sp+$07                                    ; $4627: $f8 $07
	ld [hl], c                                       ; $4629: $71
	adc a                                            ; $462a: $8f
	ld [de], a                                       ; $462b: $12
	rst AddAOntoHL                                          ; $462c: $ef
	or c                                             ; $462d: $b1
	rst $38                                          ; $462e: $ff
	inc sp                                           ; $462f: $33

jr_047_4630:
	ld a, e                                          ; $4630: $7b
	xor $7f                                          ; $4631: $ee $7f
	inc c                                            ; $4633: $0c
	sbc [hl]                                         ; $4634: $9e
	ld b, c                                          ; $4635: $41
	ld a, e                                          ; $4636: $7b
	and d                                            ; $4637: $a2
	sbc [hl]                                         ; $4638: $9e
	ld d, h                                          ; $4639: $54
	ld a, e                                          ; $463a: $7b
	call nc, $1e92                                   ; $463b: $d4 $92 $1e
	pop hl                                           ; $463e: $e1
	add h                                            ; $463f: $84
	ei                                               ; $4640: $fb
	ld h, c                                          ; $4641: $61
	cp $28                                           ; $4642: $fe $28
	rst JumpTable                                          ; $4644: $c7
	ld c, h                                          ; $4645: $4c
	di                                               ; $4646: $f3
	ldh [$df], a                                     ; $4647: $e0 $df
	dec b                                            ; $4649: $05
	ld a, d                                          ; $464a: $7a
	add [hl]                                         ; $464b: $86
	ld a, a                                          ; $464c: $7f
	call z, Call_047_6e92                            ; $464d: $cc $92 $6e
	sub c                                            ; $4650: $91
	ld sp, $92cf                                     ; $4651: $31 $cf $92
	rst $38                                          ; $4654: $ff
	call nz, $2aff                                   ; $4655: $c4 $ff $2a
	rst FarCall                                          ; $4658: $f7
	nop                                              ; $4659: $00
	rst $38                                          ; $465a: $ff
	inc b                                            ; $465b: $04
	ld a, e                                          ; $465c: $7b
	ld h, [hl]                                       ; $465d: $66
	ld a, a                                          ; $465e: $7f
	ld a, [$4a9a]                                    ; $465f: $fa $9a $4a
	rst $38                                          ; $4662: $ff
	ld sp, $40ce                                     ; $4663: $31 $ce $40
	ld a, e                                          ; $4666: $7b
	call nc, $8899                                   ; $4667: $d4 $99 $88
	rst $38                                          ; $466a: $ff
	ld b, d                                          ; $466b: $42
	db $fd                                           ; $466c: $fd
	adc d                                            ; $466d: $8a
	push af                                          ; $466e: $f5
	halt                                             ; $466f: $76
	inc a                                            ; $4670: $3c
	sbc h                                            ; $4671: $9c
	sub d                                            ; $4672: $92
	ld l, l                                          ; $4673: $6d
	jr nz, @+$7d                                     ; $4674: $20 $7b

	add sp, -$6a                                     ; $4676: $e8 $96
	jr @-$17                                         ; $4678: $18 $e7

	ccf                                              ; $467a: $3f
	ret nz                                           ; $467b: $c0

	ld a, a                                          ; $467c: $7f
	add b                                            ; $467d: $80
	ld c, $f1                                        ; $467e: $0e $f1
	ld h, h                                          ; $4680: $64
	ld a, e                                          ; $4681: $7b
	ld c, b                                          ; $4682: $48
	sub b                                            ; $4683: $90
	jr c, @+$01                                      ; $4684: $38 $ff

	ld a, b                                          ; $4686: $78
	rst $38                                          ; $4687: $ff
	inc bc                                           ; $4688: $03
	db $fc                                           ; $4689: $fc
	db $eb                                           ; $468a: $eb
	inc d                                            ; $468b: $14
	rst $38                                          ; $468c: $ff
	nop                                              ; $468d: $00
	ld e, $e1                                        ; $468e: $1e $e1
	daa                                              ; $4690: $27
	ret c                                            ; $4691: $d8

	db $ec                                           ; $4692: $ec
	ld a, e                                          ; $4693: $7b
	jp nc, $087f                                     ; $4694: $d2 $7f $08

	add b                                            ; $4697: $80
	db $f4                                           ; $4698: $f4
	dec bc                                           ; $4699: $0b
	db $e4                                           ; $469a: $e4
	dec de                                           ; $469b: $1b
	add b                                            ; $469c: $80
	ld a, a                                          ; $469d: $7f
	add h                                            ; $469e: $84
	ld a, a                                          ; $469f: $7f
	ld c, d                                          ; $46a0: $4a
	cp a                                             ; $46a1: $bf
	rlca                                             ; $46a2: $07
	ld hl, sp+$43                                    ; $46a3: $f8 $43
	db $fc                                           ; $46a5: $fc
	daa                                              ; $46a6: $27
	ld hl, sp+$0f                                    ; $46a7: $f8 $0f
	ldh a, [$e0]                                     ; $46a9: $f0 $e0
	rra                                              ; $46ab: $1f
	ld c, b                                          ; $46ac: $48
	cp a                                             ; $46ad: $bf
	ld e, c                                          ; $46ae: $59
	cp $b8                                           ; $46af: $fe $b8
	rst $38                                          ; $46b1: $ff
	ldh a, [rP1]                                     ; $46b2: $f0 $00
	ldh a, [rP1]                                     ; $46b4: $f0 $00
	call z, $637b                                    ; $46b6: $cc $7b $63
	adc [hl]                                         ; $46b9: $8e
	rst SubAFromDE                                          ; $46ba: $df

jr_047_46bb:
	jr nz, jr_047_4738                               ; $46bb: $20 $7b

jr_047_46bd:
	add b                                            ; $46bd: $80
	inc c                                            ; $46be: $0c
	di                                               ; $46bf: $f3
	rra                                              ; $46c0: $1f
	ldh [$0c], a                                     ; $46c1: $e0 $0c
	inc bc                                           ; $46c3: $03
	ld e, $01                                        ; $46c4: $1e $01
	ld a, h                                          ; $46c6: $7c
	inc bc                                           ; $46c7: $03
	add h                                            ; $46c8: $84
	ld a, e                                          ; $46c9: $7b
	add b                                            ; $46ca: $80
	ld [hl], e                                       ; $46cb: $73
	dec [hl]                                         ; $46cc: $35
	ld a, [hl]                                       ; $46cd: $7e
	ld e, c                                          ; $46ce: $59
	adc h                                            ; $46cf: $8c
	ld l, b                                          ; $46d0: $68
	sub a                                            ; $46d1: $97
	jr jr_047_46bb                                   ; $46d2: $18 $e7

	ld b, h                                          ; $46d4: $44
	rst $38                                          ; $46d5: $ff
	sub b                                            ; $46d6: $90
	ld a, a                                          ; $46d7: $7f
	ld b, h                                          ; $46d8: $44
	cp e                                             ; $46d9: $bb
	inc c                                            ; $46da: $0c
	di                                               ; $46db: $f3
	jr nz, jr_047_46bd                               ; $46dc: $20 $df

	ret nz                                           ; $46de: $c0

	ccf                                              ; $46df: $3f
	and b                                            ; $46e0: $a0
	rst $38                                          ; $46e1: $ff
	ld b, b                                          ; $46e2: $40
	ld a, e                                          ; $46e3: $7b
	adc d                                            ; $46e4: $8a
	ld a, a                                          ; $46e5: $7f
	push hl                                          ; $46e6: $e5
	ld [hl], a                                       ; $46e7: $77
	ld a, [$b598]                                    ; $46e8: $fa $98 $b5
	rst $38                                          ; $46eb: $ff
	ld c, a                                          ; $46ec: $4f
	rst $38                                          ; $46ed: $ff
	dec e                                            ; $46ee: $1d
	rst $38                                          ; $46ef: $ff
	jr nz, @+$7c                                     ; $46f0: $20 $7a

	add sp, $7f                                      ; $46f2: $e8 $7f
	db $fc                                           ; $46f4: $fc
	ld a, l                                          ; $46f5: $7d
	or h                                             ; $46f6: $b4
	sub d                                            ; $46f7: $92
	ld a, $ff                                        ; $46f8: $3e $ff
	ld [hl], e                                       ; $46fa: $73
	rst $38                                          ; $46fb: $ff
	ld [hl+], a                                      ; $46fc: $22
	rst $38                                          ; $46fd: $ff
	ld de, $b0fe                                     ; $46fe: $11 $fe $b0
	rst $38                                          ; $4701: $ff
	ld a, [hl+]                                      ; $4702: $2a
	rst $38                                          ; $4703: $ff
	ld d, [hl]                                       ; $4704: $56
	ld a, d                                          ; $4705: $7a
	jp nz, $bf82                                     ; $4706: $c2 $82 $bf

	rst $38                                          ; $4709: $ff
	call nc, $29bf                                   ; $470a: $d4 $bf $29
	rst $38                                          ; $470d: $ff
	jp z, $8d3f                                      ; $470e: $ca $3f $8d

	ld a, a                                          ; $4711: $7f
	or l                                             ; $4712: $b5
	ld a, a                                          ; $4713: $7f
	xor d                                            ; $4714: $aa
	rst FarCall                                          ; $4715: $f7
	or l                                             ; $4716: $b5
	rst AddAOntoHL                                          ; $4717: $ef
	ld c, d                                          ; $4718: $4a
	rst $38                                          ; $4719: $ff
	add h                                            ; $471a: $84
	rst $38                                          ; $471b: $ff
	ld c, c                                          ; $471c: $49
	cp [hl]                                          ; $471d: $be
	ld [hl], b                                       ; $471e: $70
	rst $38                                          ; $471f: $ff
	and d                                            ; $4720: $a2
	db $fd                                           ; $4721: $fd
	ld d, d                                          ; $4722: $52
	db $fd                                           ; $4723: $fd
	or b                                             ; $4724: $b0
	ld a, e                                          ; $4725: $7b
	ret nz                                           ; $4726: $c0

	ld a, a                                          ; $4727: $7f
	inc a                                            ; $4728: $3c
	ld a, a                                          ; $4729: $7f
	db $fc                                           ; $472a: $fc
	ld a, a                                          ; $472b: $7f
	xor h                                            ; $472c: $ac
	ld a, h                                          ; $472d: $7c
	xor $8e                                          ; $472e: $ee $8e
	ld d, b                                          ; $4730: $50
	cp a                                             ; $4731: $bf
	dec bc                                           ; $4732: $0b
	cp $46                                           ; $4733: $fe $46
	db $fd                                           ; $4735: $fd
	xor d                                            ; $4736: $aa
	ld a, l                                          ; $4737: $7d

jr_047_4738:
	dec b                                            ; $4738: $05
	ld a, e                                          ; $4739: $7b
	xor e                                            ; $473a: $ab
	ld [hl], a                                       ; $473b: $77
	xor e                                            ; $473c: $ab
	ld [hl], a                                       ; $473d: $77
	push hl                                          ; $473e: $e5
	rst $38                                          ; $473f: $ff
	jp c, $0a7a                                      ; $4740: $da $7a $0a

	sbc h                                            ; $4743: $9c
	ld de, $0cfc                                     ; $4744: $11 $fc $0c
	ld a, e                                          ; $4747: $7b
	ld h, a                                          ; $4748: $67
	sbc d                                            ; $4749: $9a
	db $10                                           ; $474a: $10
	jr nz, jr_047_478d                               ; $474b: $20 $40

	nop                                              ; $474d: $00
	ld [$007b], a                                    ; $474e: $ea $7b $00
	ld a, a                                          ; $4751: $7f
	and d                                            ; $4752: $a2
	ld a, a                                          ; $4753: $7f
	ld [de], a                                       ; $4754: $12
	sub b                                            ; $4755: $90
	jr nz, @-$65                                     ; $4756: $20 $99

	inc b                                            ; $4758: $04
	add hl, bc                                       ; $4759: $09
	ld [$0305], sp                                   ; $475a: $08 $05 $03
	inc b                                            ; $475d: $04
	ld b, d                                          ; $475e: $42
	rst $38                                          ; $475f: $ff
	sub h                                            ; $4760: $94
	rst $38                                          ; $4761: $ff
	inc c                                            ; $4762: $0c
	ei                                               ; $4763: $fb
	db $10                                           ; $4764: $10
	ld a, e                                          ; $4765: $7b
	ld a, [hl+]                                      ; $4766: $2a
	sub [hl]                                         ; $4767: $96
	sub l                                            ; $4768: $95
	ei                                               ; $4769: $fb
	ld hl, $26f6                                     ; $476a: $21 $f6 $26
	pop hl                                           ; $476d: $e1
	ld l, b                                          ; $476e: $68
	rst $38                                          ; $476f: $ff
	add d                                            ; $4770: $82
	ld a, e                                          ; $4771: $7b
	add h                                            ; $4772: $84
	ld a, a                                          ; $4773: $7f
	adc [hl]                                         ; $4774: $8e
	ld a, a                                          ; $4775: $7f
	ld a, h                                          ; $4776: $7c
	sub h                                            ; $4777: $94
	ld l, e                                          ; $4778: $6b
	cp a                                             ; $4779: $bf
	nop                                              ; $477a: $00
	rst $38                                          ; $477b: $ff
	ld c, b                                          ; $477c: $48
	cp a                                             ; $477d: $bf
	ld bc, $a8ff                                     ; $477e: $01 $ff $a8
	rst $38                                          ; $4781: $ff
	inc d                                            ; $4782: $14
	ld a, e                                          ; $4783: $7b
	ld a, b                                          ; $4784: $78
	ld a, a                                          ; $4785: $7f
	db $ec                                           ; $4786: $ec
	ld a, a                                          ; $4787: $7f
	and b                                            ; $4788: $a0
	ld a, [hl]                                       ; $4789: $7e
	call z, $229c                                    ; $478a: $cc $9c $22

jr_047_478d:
	call c, Call_047_7a3b                            ; $478d: $dc $3b $7a
	halt                                             ; $4790: $76
	ld a, [hl]                                       ; $4791: $7e
	ld a, [hl+]                                      ; $4792: $2a
	sbc d                                            ; $4793: $9a
	inc e                                            ; $4794: $1c
	rst $38                                          ; $4795: $ff
	add hl, bc                                       ; $4796: $09
	rst $38                                          ; $4797: $ff
	ld b, c                                          ; $4798: $41
	ld a, d                                          ; $4799: $7a
	call nc, $6c98                                   ; $479a: $d4 $98 $6c
	inc bc                                           ; $479d: $03
	dec d                                            ; $479e: $15
	rst $38                                          ; $479f: $ff
	ld a, [hl-]                                      ; $47a0: $3a
	rst $38                                          ; $47a1: $ff
	ld a, l                                          ; $47a2: $7d
	ld a, d                                          ; $47a3: $7a
	ld d, b                                          ; $47a4: $50
	sbc [hl]                                         ; $47a5: $9e
	or h                                             ; $47a6: $b4
	ld a, d                                          ; $47a7: $7a
	or b                                             ; $47a8: $b0
	sbc d                                            ; $47a9: $9a
	add e                                            ; $47aa: $83
	rst $38                                          ; $47ab: $ff
	ld b, e                                          ; $47ac: $43
	cp a                                             ; $47ad: $bf
	ret z                                            ; $47ae: $c8

	ld a, e                                          ; $47af: $7b
	ld l, d                                          ; $47b0: $6a
	ld a, l                                          ; $47b1: $7d
	ld a, [$767f]                                    ; $47b2: $fa $7f $76
	ld a, a                                          ; $47b5: $7f
	call nc, $ed9e                                   ; $47b6: $d4 $9e $ed
	ld a, e                                          ; $47b9: $7b
	ld c, d                                          ; $47ba: $4a
	sbc [hl]                                         ; $47bb: $9e
	cp l                                             ; $47bc: $bd
	ld a, b                                          ; $47bd: $78
	ldh [$7e], a                                     ; $47be: $e0 $7e
	or a                                             ; $47c0: $b7
	sbc h                                            ; $47c1: $9c
	inc h                                            ; $47c2: $24
	rst $38                                          ; $47c3: $ff
	inc c                                            ; $47c4: $0c
	ld a, e                                          ; $47c5: $7b
	ld c, $7f                                        ; $47c6: $0e $7f
	ld a, d                                          ; $47c8: $7a
	sbc h                                            ; $47c9: $9c
	jp $b6ff                                         ; $47ca: $c3 $ff $b6


	ld a, e                                          ; $47cd: $7b
	or h                                             ; $47ce: $b4
	ld a, a                                          ; $47cf: $7f
	sub [hl]                                         ; $47d0: $96
	ld a, h                                          ; $47d1: $7c
	ret nc                                           ; $47d2: $d0

	ld a, h                                          ; $47d3: $7c
	call z, Call_047_7c7b                            ; $47d4: $cc $7b $7c
	ld a, e                                          ; $47d7: $7b
	and [hl]                                         ; $47d8: $a6
	ld a, a                                          ; $47d9: $7f
	sub $7f                                          ; $47da: $d6 $7f
	ret c                                            ; $47dc: $d8

	ld a, a                                          ; $47dd: $7f
	sbc d                                            ; $47de: $9a
	sbc l                                            ; $47df: $9d
	ld [de], a                                       ; $47e0: $12
	db $ed                                           ; $47e1: $ed
	ld [hl], h                                       ; $47e2: $74
	or d                                             ; $47e3: $b2
	halt                                             ; $47e4: $76
	ld l, $7f                                        ; $47e5: $2e $7f
	cp $7e                                           ; $47e7: $fe $7e
	adc $7e                                          ; $47e9: $ce $7e
	add [hl]                                         ; $47eb: $86
	ld a, a                                          ; $47ec: $7f
	cp $7c                                           ; $47ed: $fe $7c
	jp z, $917c                                      ; $47ef: $ca $7c $91

	ld [hl], a                                       ; $47f2: $77
	ldh a, [c]                                       ; $47f3: $f2
	ld a, a                                          ; $47f4: $7f
	ld a, [$fb7f]                                    ; $47f5: $fa $7f $fb
	sub h                                            ; $47f8: $94
	and e                                            ; $47f9: $a3
	ld e, h                                          ; $47fa: $5c
	add $39                                          ; $47fb: $c6 $39
	adc h                                            ; $47fd: $8c
	ld [hl], e                                       ; $47fe: $73
	ld [hl], d                                       ; $47ff: $72
	sbc a                                            ; $4800: $9f
	ret z                                            ; $4801: $c8

	ccf                                              ; $4802: $3f
	inc b                                            ; $4803: $04
	ld a, e                                          ; $4804: $7b
	or d                                             ; $4805: $b2
	sub h                                            ; $4806: $94
	jp nz, $843f                                     ; $4807: $c2 $3f $84

	ld a, a                                          ; $480a: $7f
	ld h, c                                          ; $480b: $61
	sbc a                                            ; $480c: $9f
	sub h                                            ; $480d: $94
	ld l, a                                          ; $480e: $6f
	ld c, d                                          ; $480f: $4a
	rst $38                                          ; $4810: $ff
	sub l                                            ; $4811: $95
	ld a, e                                          ; $4812: $7b
	ldh [$7f], a                                     ; $4813: $e0 $7f
	ld c, b                                          ; $4815: $48
	ld a, a                                          ; $4816: $7f
	xor [hl]                                         ; $4817: $ae
	sbc [hl]                                         ; $4818: $9e
	rst SubAFromDE                                          ; $4819: $df
	ld a, e                                          ; $481a: $7b
	ld [hl], b                                       ; $481b: $70
	ld a, a                                          ; $481c: $7f
	jp nz, $d67f                                     ; $481d: $c2 $7f $d6

	add b                                            ; $4820: $80
	ld b, d                                          ; $4821: $42
	db $fc                                           ; $4822: $fc
	adc e                                            ; $4823: $8b
	ldh a, [rSC]                                     ; $4824: $f0 $02
	ldh a, [$38]                                     ; $4826: $f0 $38
	rst $38                                          ; $4828: $ff
	adc c                                            ; $4829: $89
	rst $38                                          ; $482a: $ff
	dec d                                            ; $482b: $15
	cp $47                                           ; $482c: $fe $47
	cp b                                             ; $482e: $b8
	inc hl                                           ; $482f: $23
	call c, $0ef4                                    ; $4830: $dc $f4 $0e
	dec sp                                           ; $4833: $3b
	add [hl]                                         ; $4834: $86
	inc h                                            ; $4835: $24
	dec de                                           ; $4836: $1b
	ld hl, $4aff                                     ; $4837: $21 $ff $4a
	cp a                                             ; $483a: $bf
	or l                                             ; $483b: $b5
	jp c, $f008                                      ; $483c: $da $08 $f0

	add hl, bc                                       ; $483f: $09

Call_047_4840:
	adc e                                            ; $4840: $8b
	ldh a, [hDisp0_WY]                                     ; $4841: $f0 $88
	ld [hl], e                                       ; $4843: $73
	add c                                            ; $4844: $81
	ld [hl], d                                       ; $4845: $72
	ld hl, $1072                                     ; $4846: $21 $72 $10
	rst $38                                          ; $4849: $ff
	ld [hl+], a                                      ; $484a: $22
	ld a, l                                          ; $484b: $7d
	ld de, $17fe                                     ; $484c: $11 $fe $17
	db $ec                                           ; $484f: $ec

jr_047_4850:
	db $10                                           ; $4850: $10
	adc b                                            ; $4851: $88
	ld h, b                                          ; $4852: $60
	nop                                              ; $4853: $00

Call_047_4854:
	ld b, b                                          ; $4854: $40
	cp $80                                           ; $4855: $fe $80
	jr z, jr_047_4850                                ; $4857: $28 $f7

	inc h                                            ; $4859: $24
	di                                               ; $485a: $f3
	ld [bc], a                                       ; $485b: $02
	db $fd                                           ; $485c: $fd
	ld h, e                                          ; $485d: $63
	db $fc                                           ; $485e: $fc
	and [hl]                                         ; $485f: $a6
	ld b, c                                          ; $4860: $41
	inc bc                                           ; $4861: $03
	ld bc, $0304                                     ; $4862: $01 $04 $03

Jump_047_4865:
	rra                                              ; $4865: $1f
	ld bc, $7fb3                                     ; $4866: $01 $b3 $7f
	ld h, l                                          ; $4869: $65
	cp a                                             ; $486a: $bf
	ld a, [bc]                                       ; $486b: $0a
	rst FarCall                                          ; $486c: $f7
	ld b, c                                          ; $486d: $41
	cp a                                             ; $486e: $bf
	ld b, d                                          ; $486f: $42
	sbc a                                            ; $4870: $9f
	pop hl                                           ; $4871: $e1
	sbc a                                            ; $4872: $9f
	ld [$d3bf], sp                                   ; $4873: $08 $bf $d3
	sub a                                            ; $4876: $97
	ld a, $c0                                        ; $4877: $3e $c0
	nop                                              ; $4879: $00
	call nz, $e000                                   ; $487a: $c4 $00 $e0
	nop                                              ; $487d: $00
	ld a, c                                          ; $487e: $79
	ld [hl], e                                       ; $487f: $73
	ld h, e                                          ; $4880: $63
	add b                                            ; $4881: $80
	ld e, a                                          ; $4882: $5f
	and b                                            ; $4883: $a0
	xor d                                            ; $4884: $aa
	ld d, l                                          ; $4885: $55
	inc b                                            ; $4886: $04
	inc bc                                           ; $4887: $03
	inc b                                            ; $4888: $04
	inc bc                                           ; $4889: $03
	ld b, $01                                        ; $488a: $06 $01
	db $fc                                           ; $488c: $fc
	inc bc                                           ; $488d: $03
	cp $01                                           ; $488e: $fe $01
	ld sp, hl                                        ; $4890: $f9
	nop                                              ; $4891: $00
	ld [hl], l                                       ; $4892: $75
	adc b                                            ; $4893: $88
	xor [hl]                                         ; $4894: $ae
	ld d, c                                          ; $4895: $51
	dec b                                            ; $4896: $05
	ldh [c], a                                       ; $4897: $e2
	nop                                              ; $4898: $00
	db $ec                                           ; $4899: $ec
	ld [$90f0], sp                                   ; $489a: $08 $f0 $90
	ld h, b                                          ; $489d: $60
	ld l, $c0                                        ; $489e: $2e $c0
	ld a, h                                          ; $48a0: $7c
	sbc l                                            ; $48a1: $9d
	ret nz                                           ; $48a2: $c0

	dec a                                            ; $48a3: $3d
	ld a, e                                          ; $48a4: $7b
	ld b, [hl]                                       ; $48a5: $46
	sbc d                                            ; $48a6: $9a
	xor e                                            ; $48a7: $ab
	halt                                             ; $48a8: $76
	sub [hl]                                         ; $48a9: $96
	ld h, b                                          ; $48aa: $60
	add b                                            ; $48ab: $80
	db $fc                                           ; $48ac: $fc
	ld a, [hl]                                       ; $48ad: $7e
	adc a                                            ; $48ae: $8f
	ld [hl], a                                       ; $48af: $77
	call z, $329b                                    ; $48b0: $cc $9b $32
	call z, $08d0                                    ; $48b3: $cc $d0 $08
	ld sp, hl                                        ; $48b6: $f9
	sbc b                                            ; $48b7: $98
	inc e                                            ; $48b8: $1c

jr_047_48b9:
	nop                                              ; $48b9: $00
	di                                               ; $48ba: $f3
	nop                                              ; $48bb: $00
	ld b, [hl]                                       ; $48bc: $46
	ld hl, $7807                                     ; $48bd: $21 $07 $78
	adc $77                                          ; $48c0: $ce $77
	cp $77                                           ; $48c2: $fe $77
	ld hl, sp-$6b                                    ; $48c4: $f8 $95
	ldh [c], a                                       ; $48c6: $e2
	ld bc, $7f80                                     ; $48c7: $01 $80 $7f
	inc bc                                           ; $48ca: $03
	db $fc                                           ; $48cb: $fc
	ld [$0281], sp                                   ; $48cc: $08 $81 $02
	add c                                            ; $48cf: $81
	ld a, b                                          ; $48d0: $78
	xor c                                            ; $48d1: $a9
	ld a, e                                          ; $48d2: $7b
	cp $9c                                           ; $48d3: $fe $9c
	add h                                            ; $48d5: $84
	nop                                              ; $48d6: $00
	db $db                                           ; $48d7: $db
	ld [hl], d                                       ; $48d8: $72
	or $9a                                           ; $48d9: $f6 $9a
	ld b, b                                          ; $48db: $40
	cp h                                             ; $48dc: $bc
	ld d, a                                          ; $48dd: $57
	add b                                            ; $48de: $80
	add c                                            ; $48df: $81
	db $fc                                           ; $48e0: $fc
	ld a, [hl]                                       ; $48e1: $7e
	add $7e                                          ; $48e2: $c6 $7e
	ld d, b                                          ; $48e4: $50
	ld a, l                                          ; $48e5: $7d
	and $7d                                          ; $48e6: $e6 $7d
	ret nz                                           ; $48e8: $c0

	sub [hl]                                         ; $48e9: $96
	ld l, c                                          ; $48ea: $69
	call nz, $c024                                   ; $48eb: $c4 $24 $c0
	ld b, b                                          ; $48ee: $40
	add b                                            ; $48ef: $80
	add b                                            ; $48f0: $80
	ld b, b                                          ; $48f1: $40
	adc b                                            ; $48f2: $88
	ld [hl], d                                       ; $48f3: $72
	jp c, Jump_047_4995                              ; $48f4: $da $95 $49

	or [hl]                                          ; $48f7: $b6
	ld h, d                                          ; $48f8: $62
	sbc l                                            ; $48f9: $9d
	ld d, h                                          ; $48fa: $54
	jr z, jr_047_4965                                ; $48fb: $28 $68

	db $10                                           ; $48fd: $10
	jr nc, jr_047_4910                               ; $48fe: $30 $10

	ld [hl], a                                       ; $4900: $77
	ldh a, [c]                                       ; $4901: $f2
	ld a, h                                          ; $4902: $7c
	add [hl]                                         ; $4903: $86
	ld a, a                                          ; $4904: $7f
	ld a, [hl+]                                      ; $4905: $2a
	sub a                                            ; $4906: $97
	xor c                                            ; $4907: $a9
	ld d, [hl]                                       ; $4908: $56
	dec bc                                           ; $4909: $0b
	call nz, Call_047_4480                           ; $490a: $c4 $80 $44
	ret z                                            ; $490d: $c8

	inc b                                            ; $490e: $04
	ld l, [hl]                                       ; $490f: $6e

jr_047_4910:
	cp d                                             ; $4910: $ba
	ld a, a                                          ; $4911: $7f
	ret nc                                           ; $4912: $d0

	sbc b                                            ; $4913: $98
	ld a, [hl+]                                      ; $4914: $2a
	push de                                          ; $4915: $d5
	ld e, c                                          ; $4916: $59
	add d                                            ; $4917: $82
	ld d, d                                          ; $4918: $52
	add b                                            ; $4919: $80
	jp nz, $e073                                     ; $491a: $c2 $73 $e0

	ld [hl], a                                       ; $491d: $77
	cp $96                                           ; $491e: $fe $96
	and h                                            ; $4920: $a4
	ld e, e                                          ; $4921: $5b
	rst SubAFromDE                                          ; $4922: $df
	nop                                              ; $4923: $00

jr_047_4924:
	adc [hl]                                         ; $4924: $8e
	nop                                              ; $4925: $00
	adc d                                            ; $4926: $8a
	nop                                              ; $4927: $00
	ld [$8e7a], sp                                   ; $4928: $08 $7a $8e
	add b                                            ; $492b: $80
	add hl, bc                                       ; $492c: $09
	cp $84                                           ; $492d: $fe $84
	ld a, [hl]                                       ; $492f: $7e
	adc b                                            ; $4930: $88
	ld h, [hl]                                       ; $4931: $66
	inc h                                            ; $4932: $24
	ld b, d                                          ; $4933: $42

jr_047_4934:
	inc b                                            ; $4934: $04
	ld h, d                                          ; $4935: $62
	ld b, [hl]                                       ; $4936: $46
	jr nz, jr_047_48b9                               ; $4937: $20 $80

	ld a, h                                          ; $4939: $7c
	ld b, b                                          ; $493a: $40
	cp b                                             ; $493b: $b8
	add b                                            ; $493c: $80
	ld a, b                                          ; $493d: $78
	nop                                              ; $493e: $00
	ld a, b                                          ; $493f: $78
	ld d, b                                          ; $4940: $50
	jr c, jr_047_4983                                ; $4941: $38 $40

	jr c, jr_047_4945                                ; $4943: $38 $00

jr_047_4945:
	jr c, jr_047_4984                                ; $4945: $38 $3d

	db $10                                           ; $4947: $10
	xor e                                            ; $4948: $ab
	ld d, h                                          ; $4949: $54
	db $dd                                           ; $494a: $dd
	sbc e                                            ; $494b: $9b
	jr nz, jr_047_494f                               ; $494c: $20 $01

	nop                                              ; $494e: $00

jr_047_494f:
	ld bc, $8bfc                                     ; $494f: $01 $fc $8b
	ld b, h                                          ; $4952: $44
	nop                                              ; $4953: $00
	ld a, [hl]                                       ; $4954: $7e
	nop                                              ; $4955: $00

jr_047_4956:
	ret c                                            ; $4956: $d8

	ld [hl], $a2                                     ; $4957: $36 $a2
	ld a, h                                          ; $4959: $7c
	jr @-$02                                         ; $495a: $18 $fc

	jr jr_047_4956                                   ; $495c: $18 $f8

	ld d, b                                          ; $495e: $50
	cp b                                             ; $495f: $b8

jr_047_4960:
	ret nc                                           ; $4960: $d0

	jr c, jr_047_4924                                ; $4961: $38 $c1

	jr c, jr_047_4934                                ; $4963: $38 $cf

jr_047_4965:
	jr c, jr_047_4960                                ; $4965: $38 $f9

	ld a, a                                          ; $4967: $7f
	ld b, d                                          ; $4968: $42
	sbc [hl]                                         ; $4969: $9e
	rst GetHLinHL                                          ; $496a: $cf
	ld a, e                                          ; $496b: $7b
	xor c                                            ; $496c: $a9
	sbc l                                            ; $496d: $9d
	xor $11                                          ; $496e: $ee $11
	halt                                             ; $4970: $76
	ldh a, [c]                                       ; $4971: $f2
	add [hl]                                         ; $4972: $86
	inc l                                            ; $4973: $2c
	inc bc                                           ; $4974: $03
	ld a, [hl]                                       ; $4975: $7e
	ld bc, $0bf4                                     ; $4976: $01 $f4 $0b
	ld [$d611], a                                    ; $4979: $ea $11 $d6
	add hl, hl                                       ; $497c: $29
	xor [hl]                                         ; $497d: $ae
	ld d, c                                          ; $497e: $51
	add hl, bc                                       ; $497f: $09
	or $1a                                           ; $4980: $f6 $1a
	rst SubAFromBC                                          ; $4982: $e7

jr_047_4983:
	ret z                                            ; $4983: $c8

jr_047_4984:
	ld [hl], a                                       ; $4984: $77
	ld a, [bc]                                       ; $4985: $0a
	rst SubAFromBC                                          ; $4986: $e7
	call z, $53c7                                    ; $4987: $cc $c7 $53
	rst GetHLinHL                                          ; $498a: $cf
	pop af                                           ; $498b: $f1
	ld a, e                                          ; $498c: $7b
	cp $92                                           ; $498d: $fe $92
	ld d, l                                          ; $498f: $55
	xor d                                            ; $4990: $aa
	cp $01                                           ; $4991: $fe $01
	ld d, l                                          ; $4993: $55

jr_047_4994:
	nop                                              ; $4994: $00

Jump_047_4995:
	xor d                                            ; $4995: $aa
	nop                                              ; $4996: $00
	ld d, l                                          ; $4997: $55
	nop                                              ; $4998: $00
	xor [hl]                                         ; $4999: $ae
	nop                                              ; $499a: $00
	db $fc                                           ; $499b: $fc
	ld a, c                                          ; $499c: $79
	jp nc, Jump_047_5680                             ; $499d: $d2 $80 $56

	xor c                                            ; $49a0: $a9
	rst AddAOntoHL                                          ; $49a1: $ef
	db $10                                           ; $49a2: $10
	ld d, l                                          ; $49a3: $55
	nop                                              ; $49a4: $00
	xor l                                            ; $49a5: $ad
	nop                                              ; $49a6: $00
	ld d, a                                          ; $49a7: $57
	nop                                              ; $49a8: $00
	cp e                                             ; $49a9: $bb
	nop                                              ; $49aa: $00
	ei                                               ; $49ab: $fb
	nop                                              ; $49ac: $00
	rla                                              ; $49ad: $17
	ld hl, sp-$49                                    ; $49ae: $f8 $b7
	ret z                                            ; $49b0: $c8

	dec a                                            ; $49b1: $3d
	jp nz, $c02e                                     ; $49b2: $c2 $2e $c0

	sub l                                            ; $49b5: $95
	ret nz                                           ; $49b6: $c0

	xor d                                            ; $49b7: $aa
	ret nz                                           ; $49b8: $c0

	rra                                              ; $49b9: $1f
	ret nz                                           ; $49ba: $c0

	jr z, jr_047_4994                                ; $49bb: $28 $d7

	dec d                                            ; $49bd: $15
	ld a, h                                          ; $49be: $7c
	cp $9b                                           ; $49bf: $fe $9b
	or b                                             ; $49c1: $b0
	cp a                                             ; $49c2: $bf
	ld b, b                                          ; $49c3: $40
	db $eb                                           ; $49c4: $eb
	ld a, e                                          ; $49c5: $7b
	jp nc, $ab9a                                     ; $49c6: $d2 $9a $ab

	nop                                              ; $49c9: $00
	cp $01                                           ; $49ca: $fe $01
	ld [$8a79], sp                                   ; $49cc: $08 $79 $8a
	ld [hl], a                                       ; $49cf: $77
	ld b, e                                          ; $49d0: $43
	ld a, l                                          ; $49d1: $7d
	push af                                          ; $49d2: $f5
	ld a, a                                          ; $49d3: $7f
	ldh a, [$7d]                                     ; $49d4: $f0 $7d
	ld [hl], e                                       ; $49d6: $73
	add b                                            ; $49d7: $80
	db $e3                                           ; $49d8: $e3
	inc e                                            ; $49d9: $1c
	ret nz                                           ; $49da: $c0

	cp a                                             ; $49db: $bf
	add l                                            ; $49dc: $85
	ld a, a                                          ; $49dd: $7f
	cp $01                                           ; $49de: $fe $01
	and $01                                          ; $49e0: $e6 $01
	xor a                                            ; $49e2: $af
	ld bc, $015f                                     ; $49e3: $01 $5f $01
	cp $01                                           ; $49e6: $fe $01
	ld c, $f1                                        ; $49e8: $0e $f1
	xor [hl]                                         ; $49ea: $ae
	pop de                                           ; $49eb: $d1
	ld e, [hl]                                       ; $49ec: $5e
	and c                                            ; $49ed: $a1
	ccf                                              ; $49ee: $3f
	add b                                            ; $49ef: $80
	ld a, [hl+]                                      ; $49f0: $2a
	add b                                            ; $49f1: $80
	push de                                          ; $49f2: $d5
	nop                                              ; $49f3: $00
	rra                                              ; $49f4: $1f
	add b                                            ; $49f5: $80
	xor b                                            ; $49f6: $a8
	sbc b                                            ; $49f7: $98

jr_047_49f8:
	rst SubAFromHL                                          ; $49f8: $d7
	ld d, h                                          ; $49f9: $54
	xor e                                            ; $49fa: $ab
	xor c                                            ; $49fb: $a9
	sub $a0                                          ; $49fc: $d6 $a0
	ret nz                                           ; $49fe: $c0

	ld l, a                                          ; $49ff: $6f
	sub h                                            ; $4a00: $94
	sbc b                                            ; $4a01: $98
	ld sp, hl                                        ; $4a02: $f9
	ld b, $55                                        ; $4a03: $06 $55
	xor d                                            ; $4a05: $aa
	and [hl]                                         ; $4a06: $a6
	ld e, c                                          ; $4a07: $59
	ld b, e                                          ; $4a08: $43
	ld a, d                                          ; $4a09: $7a
	ld [hl], a                                       ; $4a0a: $77
	add [hl]                                         ; $4a0b: $86
	sub l                                            ; $4a0c: $95
	ld b, b                                          ; $4a0d: $40
	xor d                                            ; $4a0e: $aa
	ld b, b                                          ; $4a0f: $40
	rst SubAFromHL                                          ; $4a10: $d7
	nop                                              ; $4a11: $00
	xor c                                            ; $4a12: $a9
	ld d, [hl]                                       ; $4a13: $56
	rst $38                                          ; $4a14: $ff
	nop                                              ; $4a15: $00
	jr jr_047_49f8                                   ; $4a16: $18 $e0

	ret nz                                           ; $4a18: $c0

	nop                                              ; $4a19: $00
	inc bc                                           ; $4a1a: $03
	nop                                              ; $4a1b: $00
	db $10                                           ; $4a1c: $10
	stop                                             ; $4a1d: $10 $00
	stop                                             ; $4a1f: $10 $00
	rrca                                             ; $4a21: $0f
	ld b, h                                          ; $4a22: $44
	sbc b                                            ; $4a23: $98
	add b                                            ; $4a24: $80
	ld a, e                                          ; $4a25: $7b
	ld a, $8e                                        ; $4a26: $3e $8e
	rra                                              ; $4a28: $1f
	nop                                              ; $4a29: $00
	ld a, a                                          ; $4a2a: $7f
	nop                                              ; $4a2b: $00
	nop                                              ; $4a2c: $00
	ld b, b                                          ; $4a2d: $40
	inc b                                            ; $4a2e: $04
	ld b, b                                          ; $4a2f: $40
	jr jr_047_4a92                                   ; $4a30: $18 $60

	ld bc, $0f00                                     ; $4a32: $01 $00 $0f
	nop                                              ; $4a35: $00
	rst SubAFromDE                                          ; $4a36: $df
	nop                                              ; $4a37: $00
	sbc a                                            ; $4a38: $9f
	ld a, e                                          ; $4a39: $7b
	sub h                                            ; $4a3a: $94
	ld a, [hl]                                       ; $4a3b: $7e
	ld a, h                                          ; $4a3c: $7c
	sbc h                                            ; $4a3d: $9c
	ld c, a                                          ; $4a3e: $4f
	nop                                              ; $4a3f: $00
	ccf                                              ; $4a40: $3f
	ld [hl], d                                       ; $4a41: $72
	call $ef9e                                       ; $4a42: $cd $9e $ef
	ld [hl], e                                       ; $4a45: $73
	ld a, [$ce7e]                                    ; $4a46: $fa $7e $ce
	sbc [hl]                                         ; $4a49: $9e
	adc $73                                          ; $4a4a: $ce $73
	ld hl, sp+$7f                                    ; $4a4c: $f8 $7f
	ldh [c], a                                       ; $4a4e: $e2
	ld a, a                                          ; $4a4f: $7f
	cp $77                                           ; $4a50: $fe $77
	ld hl, sp-$80                                    ; $4a52: $f8 $80
	nop                                              ; $4a54: $00
	ld b, d                                          ; $4a55: $42
	db $10                                           ; $4a56: $10
	ld [hl+], a                                      ; $4a57: $22
	ld a, [de]                                       ; $4a58: $1a
	ld h, $03                                        ; $4a59: $26 $03
	rst $38                                          ; $4a5b: $ff
	di                                               ; $4a5c: $f3
	rrca                                             ; $4a5d: $0f
	rst AddAOntoHL                                          ; $4a5e: $ef
	db $10                                           ; $4a5f: $10
	ld a, d                                          ; $4a60: $7a
	rlca                                             ; $4a61: $07
	db $fd                                           ; $4a62: $fd
	inc bc                                           ; $4a63: $03
	db $10                                           ; $4a64: $10
	jr c, jr_047_4a77                                ; $4a65: $38 $10

	dec de                                           ; $4a67: $1b
	db $10                                           ; $4a68: $10
	jr c, jr_047_4a6f                                ; $4a69: $38 $04

	sbc b                                            ; $4a6b: $98
	db $10                                           ; $4a6c: $10
	cp a                                             ; $4a6d: $bf
	add hl, sp                                       ; $4a6e: $39

jr_047_4a6f:
	dec sp                                           ; $4a6f: $3b
	nop                                              ; $4a70: $00
	ccf                                              ; $4a71: $3f
	rst SubAFromDE                                          ; $4a72: $df
	sbc h                                            ; $4a73: $9c
	rst $38                                          ; $4a74: $ff
	ld b, $f8                                        ; $4a75: $06 $f8

jr_047_4a77:
	ld a, [$fc85]                                    ; $4a77: $fa $85 $fc
	db $ec                                           ; $4a7a: $ec
	cp $1c                                           ; $4a7b: $fe $1c
	db $fc                                           ; $4a7d: $fc
	adc b                                            ; $4a7e: $88
	push af                                          ; $4a7f: $f5
	rst SubAFromHL                                          ; $4a80: $d7
	jr c, @+$0f                                      ; $4a81: $38 $0d

	ld a, b                                          ; $4a83: $78
	add d                                            ; $4a84: $82
	ld a, b                                          ; $4a85: $78
	ld d, l                                          ; $4a86: $55
	cp b                                             ; $4a87: $b8
	sub [hl]                                         ; $4a88: $96
	jr c, jr_047_4a94                                ; $4a89: $38 $09

	halt                                             ; $4a8b: $76
	sub c                                            ; $4a8c: $91
	ld a, [hl]                                       ; $4a8d: $7e
	ld [$f5f7], sp                                   ; $4a8e: $08 $f7 $f5
	ld a, [bc]                                       ; $4a91: $0a

jr_047_4a92:
	ld a, a                                          ; $4a92: $7f
	ld [hl], e                                       ; $4a93: $73

jr_047_4a94:
	ld e, [hl]                                       ; $4a94: $5e
	ld a, a                                          ; $4a95: $7f
	db $fc                                           ; $4a96: $fc
	ld a, a                                          ; $4a97: $7f
	or h                                             ; $4a98: $b4
	add b                                            ; $4a99: $80
	ld e, d                                          ; $4a9a: $5a
	and l                                            ; $4a9b: $a5
	or c                                             ; $4a9c: $b1
	ld c, [hl]                                       ; $4a9d: $4e
	ld d, h                                          ; $4a9e: $54
	xor e                                            ; $4a9f: $ab
	push de                                          ; $4aa0: $d5
	ld [bc], a                                       ; $4aa1: $02
	xor [hl]                                         ; $4aa2: $ae
	ld bc, $0057                                     ; $4aa3: $01 $57 $00
	xor b                                            ; $4aa6: $a8
	inc bc                                           ; $4aa7: $03
	ld d, l                                          ; $4aa8: $55
	inc bc                                           ; $4aa9: $03
	ld hl, sp+$07                                    ; $4aaa: $f8 $07
	ld e, h                                          ; $4aac: $5c
	and e                                            ; $4aad: $a3
	add c                                            ; $4aae: $81
	rst $38                                          ; $4aaf: $ff
	ld c, b                                          ; $4ab0: $48
	rst FarCall                                          ; $4ab1: $f7
	add c                                            ; $4ab2: $81
	rst SubAFromDE                                          ; $4ab3: $df
	ld l, c                                          ; $4ab4: $69
	sbc a                                            ; $4ab5: $9f
	ldh a, [$9f]                                     ; $4ab6: $f0 $9f
	ld [hl], c                                       ; $4ab8: $71
	sub l                                            ; $4ab9: $95
	sbc a                                            ; $4aba: $9f
	jp z, $dd3f                                      ; $4abb: $ca $3f $dd

	ccf                                              ; $4abe: $3f
	rst $38                                          ; $4abf: $ff
	rst $38                                          ; $4ac0: $ff
	rst AddAOntoHL                                          ; $4ac1: $ef
	rst $38                                          ; $4ac2: $ff
	sub e                                            ; $4ac3: $93
	sbc $ff                                          ; $4ac4: $de $ff
	ld a, h                                          ; $4ac6: $7c
	rst FarCall                                          ; $4ac7: $f7
	ld a, e                                          ; $4ac8: $7b
	and a                                            ; $4ac9: $a7
	sbc c                                            ; $4aca: $99
	rst $38                                          ; $4acb: $ff
	cp a                                             ; $4acc: $bf
	nop                                              ; $4acd: $00
	pop af                                           ; $4ace: $f1
	ld sp, hl                                        ; $4acf: $f9
	sub b                                            ; $4ad0: $90
	ld a, e                                          ; $4ad1: $7b
	cp $9b                                           ; $4ad2: $fe $9b
	ldh a, [c]                                       ; $4ad4: $f2
	ld sp, hl                                        ; $4ad5: $f9
	ld sp, $79cf                                     ; $4ad6: $31 $cf $79
	cp a                                             ; $4ad9: $bf
	ld a, d                                          ; $4ada: $7a
	ldh [c], a                                       ; $4adb: $e2
	add [hl]                                         ; $4adc: $86
	call c, $cfff                                    ; $4add: $dc $ff $cf
	rst $38                                          ; $4ae0: $ff
	ld hl, sp-$01                                    ; $4ae1: $f8 $ff
	rst $38                                          ; $4ae3: $ff
	ret nz                                           ; $4ae4: $c0

	jp $01cc                                         ; $4ae5: $c3 $cc $01


	rst AddAOntoHL                                          ; $4ae8: $ef
	ld b, $f8                                        ; $4ae9: $06 $f8
	ldh [rP1], a                                     ; $4aeb: $e0 $00
	pop af                                           ; $4aed: $f1
	cp $bd                                           ; $4aee: $fe $bd
	jp nz, $00fe                                     ; $4af0: $c2 $fe $00

	and b                                            ; $4af3: $a0
	nop                                              ; $4af4: $00
	call nc, Call_047_5477                           ; $4af5: $d4 $77 $54
	ld a, e                                          ; $4af8: $7b
	jr nz, jr_047_4b72                               ; $4af9: $20 $77

	ldh a, [$75]                                     ; $4afb: $f0 $75
	ld [hl], b                                       ; $4afd: $70
	ld a, e                                          ; $4afe: $7b
	db $d3                                           ; $4aff: $d3
	ld a, e                                          ; $4b00: $7b
	ldh a, [c]                                       ; $4b01: $f2
	ld a, a                                          ; $4b02: $7f
	db $fc                                           ; $4b03: $fc
	sbc l                                            ; $4b04: $9d
	add c                                            ; $4b05: $81
	ld h, a                                          ; $4b06: $67
	ld [hl], a                                       ; $4b07: $77
	rst SubAFromBC                                          ; $4b08: $e7
	ld a, a                                          ; $4b09: $7f
	db $10                                           ; $4b0a: $10
	ld l, c                                          ; $4b0b: $69
	jp hl                                            ; $4b0c: $e9


	sbc d                                            ; $4b0d: $9a
	nop                                              ; $4b0e: $00
	add h                                            ; $4b0f: $84
	ret nz                                           ; $4b10: $c0

	ld c, $80                                        ; $4b11: $0e $80
	ld [hl], a                                       ; $4b13: $77
	add sp, $6f                                      ; $4b14: $e8 $6f
	cp $7d                                           ; $4b16: $fe $7d
	inc l                                            ; $4b18: $2c
	ld l, a                                          ; $4b19: $6f
	inc b                                            ; $4b1a: $04
	ld l, a                                          ; $4b1b: $6f
	cp $9d                                           ; $4b1c: $fe $9d
	rst FarCall                                          ; $4b1e: $f7
	ld [$f667], sp                                   ; $4b1f: $08 $67 $f6
	ld a, a                                          ; $4b22: $7f
	inc d                                            ; $4b23: $14
	ld a, d                                          ; $4b24: $7a
	ld a, d                                          ; $4b25: $7a
	sbc [hl]                                         ; $4b26: $9e
	ld bc, $f267                                     ; $4b27: $01 $67 $f2
	halt                                             ; $4b2a: $76
	or $97                                           ; $4b2b: $f6 $97
	rst SubAFromDE                                          ; $4b2d: $df
	jr nz, jr_047_4b9a                               ; $4b2e: $20 $6a

	sub l                                            ; $4b30: $95
	push de                                          ; $4b31: $d5
	ld a, [hl+]                                      ; $4b32: $2a
	ld [$6f15], a                                    ; $4b33: $ea $15 $6f
	xor $7e                                          ; $4b36: $ee $7e
	ld [hl], $7f                                     ; $4b38: $36 $7f
	db $fc                                           ; $4b3a: $fc
	ld a, h                                          ; $4b3b: $7c
	db $e4                                           ; $4b3c: $e4
	ld a, [hl]                                       ; $4b3d: $7e
	adc h                                            ; $4b3e: $8c
	ld a, l                                          ; $4b3f: $7d
	jp nz, $c25f                                     ; $4b40: $c2 $5f $c2

	ld a, a                                          ; $4b43: $7f
	cp $9d                                           ; $4b44: $fe $9d
	ld l, c                                          ; $4b46: $69
	sub [hl]                                         ; $4b47: $96
	ld d, a                                          ; $4b48: $57
	ldh a, [c]                                       ; $4b49: $f2
	ld a, e                                          ; $4b4a: $7b
	jp c, $049a                                      ; $4b4b: $da $9a $04

	call nc, Call_047_7f2b                           ; $4b4e: $d4 $2b $7f
	add b                                            ; $4b51: $80
	ld [hl], a                                       ; $4b52: $77
	cp $6f                                           ; $4b53: $fe $6f
	or d                                             ; $4b55: $b2
	sbc e                                            ; $4b56: $9b
	ldh a, [rIF]                                     ; $4b57: $f0 $0f
	nop                                              ; $4b59: $00
	rst $38                                          ; $4b5a: $ff
	ld [hl], a                                       ; $4b5b: $77
	db $f4                                           ; $4b5c: $f4
	ld a, a                                          ; $4b5d: $7f
	cp $7d                                           ; $4b5e: $fe $7d
	and $8b                                          ; $4b60: $e6 $8b
	inc sp                                           ; $4b62: $33
	call z, $1ce3                                    ; $4b63: $cc $e3 $1c
	add a                                            ; $4b66: $87
	ld a, b                                          ; $4b67: $78
	ld bc, $f0fe                                     ; $4b68: $01 $fe $f0
	inc bc                                           ; $4b6b: $03
	ldh a, [rTAC]                                    ; $4b6c: $f0 $07
	ld [$a0f2], sp                                   ; $4b6e: $08 $f2 $a0
	db $fd                                           ; $4b71: $fd

jr_047_4b72:
	sub e                                            ; $4b72: $93
	rra                                              ; $4b73: $1f
	db $e3                                           ; $4b74: $e3
	inc c                                            ; $4b75: $0c
	ld [hl], a                                       ; $4b76: $77
	and $7e                                          ; $4b77: $e6 $7e
	rst $38                                          ; $4b79: $ff
	sbc b                                            ; $4b7a: $98
	ld [hl], d                                       ; $4b7b: $72
	ld sp, hl                                        ; $4b7c: $f9
	ld d, b                                          ; $4b7d: $50
	ld hl, sp+$06                                    ; $4b7e: $f8 $06
	rst $38                                          ; $4b80: $ff
	ld [$f671], a                                    ; $4b81: $ea $71 $f6
	ld a, a                                          ; $4b84: $7f
	cp $93                                           ; $4b85: $fe $93
	ret c                                            ; $4b87: $d8

	rst SubAFromBC                                          ; $4b88: $e7
	ld sp, hl                                        ; $4b89: $f9
	rst $38                                          ; $4b8a: $ff
	cpl                                              ; $4b8b: $2f
	rra                                              ; $4b8c: $1f
	sbc a                                            ; $4b8d: $9f
	pop hl                                           ; $4b8e: $e1
	ld e, a                                          ; $4b8f: $5f
	ld hl, sp-$04                                    ; $4b90: $f8 $fc
	inc bc                                           ; $4b92: $03

jr_047_4b93:
	ld [hl], a                                       ; $4b93: $77
	ldh a, [$80]                                     ; $4b94: $f0 $80
	jr nc, jr_047_4b93                               ; $4b96: $30 $fb

	ldh a, [$f7]                                     ; $4b98: $f0 $f7

jr_047_4b9a:
	ldh a, [$fb]                                     ; $4b9a: $f0 $fb
	ld sp, hl                                        ; $4b9c: $f9
	rst FarCall                                          ; $4b9d: $f7
	ret z                                            ; $4b9e: $c8

	inc sp                                           ; $4b9f: $33
	db $f4                                           ; $4ba0: $f4
	rlca                                             ; $4ba1: $07
	push hl                                          ; $4ba2: $e5
	rrca                                             ; $4ba3: $0f
	pop hl                                           ; $4ba4: $e1
	rlca                                             ; $4ba5: $07
	jp c, $d93f                                      ; $4ba6: $da $3f $d9

	ccf                                              ; $4ba9: $3f
	jr nc, @+$01                                     ; $4baa: $30 $ff

	inc a                                            ; $4bac: $3c
	rst $38                                          ; $4bad: $ff
	ld c, d                                          ; $4bae: $4a
	db $fd                                           ; $4baf: $fd
	dec b                                            ; $4bb0: $05
	rst $38                                          ; $4bb1: $ff
	ld c, h                                          ; $4bb2: $4c
	rst $38                                          ; $4bb3: $ff
	jp nc, $9d9e                                     ; $4bb4: $d2 $9e $9d

	ld a, d                                          ; $4bb7: $7a
	res 2, d                                         ; $4bb8: $cb $92
	nop                                              ; $4bba: $00

jr_047_4bbb:
	rst SubAFromBC                                          ; $4bbb: $e7
	jr jr_047_4bbb                                   ; $4bbc: $18 $fd

	ld [bc], a                                       ; $4bbe: $02
	ld [hl-], a                                      ; $4bbf: $32
	call $40bf                                       ; $4bc0: $cd $bf $40
	ld a, a                                          ; $4bc3: $7f
	add b                                            ; $4bc4: $80
	ld a, [$7705]                                    ; $4bc5: $fa $05 $77
	ldh a, [$67]                                     ; $4bc8: $f0 $67
	cp $9c                                           ; $4bca: $fe $9c
	rst GetHLinHL                                          ; $4bcc: $cf
	jr nc, @+$01                                     ; $4bcd: $30 $ff

	ld a, d                                          ; $4bcf: $7a
	ld [$206f], sp                                   ; $4bd0: $08 $6f $20
	sub e                                            ; $4bd3: $93
	di                                               ; $4bd4: $f3
	inc c                                            ; $4bd5: $0c
	xor [hl]                                         ; $4bd6: $ae
	ld d, b                                          ; $4bd7: $50
	rst $38                                          ; $4bd8: $ff
	nop                                              ; $4bd9: $00
	ld a, [$c005]                                    ; $4bda: $fa $05 $c0
	ccf                                              ; $4bdd: $3f
	db $db                                           ; $4bde: $db
	inc h                                            ; $4bdf: $24
	ld h, a                                          ; $4be0: $67
	ldh [$9b], a                                     ; $4be1: $e0 $9b
	add hl, sp                                       ; $4be3: $39
	add $d7                                          ; $4be4: $c6 $d7
	jr z, jr_047_4c57                                ; $4be6: $28 $6f

	ld d, [hl]                                       ; $4be8: $56
	ld a, [hl]                                       ; $4be9: $7e
	ld c, d                                          ; $4bea: $4a
	sub l                                            ; $4beb: $95
	sbc a                                            ; $4bec: $9f
	ld h, b                                          ; $4bed: $60
	ld [$b515], a                                    ; $4bee: $ea $15 $b5
	ld c, d                                          ; $4bf1: $4a
	xor $11                                          ; $4bf2: $ee $11
	rst FarCall                                          ; $4bf4: $f7
	ld [$1877], sp                                   ; $4bf5: $08 $77 $18
	sub a                                            ; $4bf8: $97
	cp d                                             ; $4bf9: $ba
	ld b, l                                          ; $4bfa: $45
	ld e, h                                          ; $4bfb: $5c
	and e                                            ; $4bfc: $a3
	xor d                                            ; $4bfd: $aa
	ld d, l                                          ; $4bfe: $55
	ld d, e                                          ; $4bff: $53
	xor h                                            ; $4c00: $ac
	ld l, a                                          ; $4c01: $6f
	ret c                                            ; $4c02: $d8

	sub h                                            ; $4c03: $94
	ld a, h                                          ; $4c04: $7c
	add e                                            ; $4c05: $83
	ldh a, [rIF]                                     ; $4c06: $f0 $0f
	ld c, a                                          ; $4c08: $4f
	or b                                             ; $4c09: $b0
	ld hl, sp+$00                                    ; $4c0a: $f8 $00
	add e                                            ; $4c0c: $83
	nop                                              ; $4c0d: $00
	ld a, h                                          ; $4c0e: $7c
	ld [hl], e                                       ; $4c0f: $73
	ld [hl-], a                                      ; $4c10: $32
	ld a, a                                          ; $4c11: $7f
	cp $96                                           ; $4c12: $fe $96
	ld a, [hl]                                       ; $4c14: $7e
	add c                                            ; $4c15: $81
	adc a                                            ; $4c16: $8f
	ld [hl], b                                       ; $4c17: $70
	ld sp, hl                                        ; $4c18: $f9
	nop                                              ; $4c19: $00
	add c                                            ; $4c1a: $81
	nop                                              ; $4c1b: $00
	dec e                                            ; $4c1c: $1d
	ld l, d                                          ; $4c1d: $6a
	jp z, $1f9d                                      ; $4c1e: $ca $9d $1f

	ldh [rPCM34], a                                  ; $4c21: $e0 $77
	ld [de], a                                       ; $4c23: $12
	sub [hl]                                         ; $4c24: $96
	or $09                                           ; $4c25: $f6 $09
	db $f4                                           ; $4c27: $f4
	dec bc                                           ; $4c28: $0b
	rlca                                             ; $4c29: $07
	ld hl, sp-$04                                    ; $4c2a: $f8 $fc
	nop                                              ; $4c2c: $00
	call c, $ee7b                                    ; $4c2d: $dc $7b $ee
	sub [hl]                                         ; $4c30: $96
	ld [hl], b                                       ; $4c31: $70
	adc a                                            ; $4c32: $8f
	push af                                          ; $4c33: $f5
	ld a, [bc]                                       ; $4c34: $0a
	ld a, [bc]                                       ; $4c35: $0a
	push af                                          ; $4c36: $f5
	ld b, l                                          ; $4c37: $45
	cp d                                             ; $4c38: $ba
	rst $38                                          ; $4c39: $ff
	ld a, c                                          ; $4c3a: $79
	ld l, h                                          ; $4c3b: $6c
	ld a, [hl]                                       ; $4c3c: $7e
	adc h                                            ; $4c3d: $8c
	ld a, l                                          ; $4c3e: $7d
	ld d, b                                          ; $4c3f: $50
	sub a                                            ; $4c40: $97
	ld [bc], a                                       ; $4c41: $02
	db $fd                                           ; $4c42: $fd
	nop                                              ; $4c43: $00
	rst $38                                          ; $4c44: $ff
	add b                                            ; $4c45: $80
	ld a, a                                          ; $4c46: $7f
	ld d, b                                          ; $4c47: $50
	xor a                                            ; $4c48: $af
	ld [hl], a                                       ; $4c49: $77
	jp nc, $967f                                     ; $4c4a: $d2 $7f $96

	ld a, a                                          ; $4c4d: $7f
	sbc [hl]                                         ; $4c4e: $9e
	ld [hl], a                                       ; $4c4f: $77
	sbc d                                            ; $4c50: $9a
	ld a, h                                          ; $4c51: $7c
	inc a                                            ; $4c52: $3c
	ld a, a                                          ; $4c53: $7f
	db $fc                                           ; $4c54: $fc
	ld a, a                                          ; $4c55: $7f
	db $f4                                           ; $4c56: $f4

jr_047_4c57:
	ld a, [hl]                                       ; $4c57: $7e
	sbc d                                            ; $4c58: $9a
	sbc c                                            ; $4c59: $99
	adc b                                            ; $4c5a: $88
	ld [hl], a                                       ; $4c5b: $77
	ld d, a                                          ; $4c5c: $57
	xor b                                            ; $4c5d: $a8
	xor a                                            ; $4c5e: $af
	ld d, b                                          ; $4c5f: $50
	ld [hl], a                                       ; $4c60: $77
	db $fc                                           ; $4c61: $fc

jr_047_4c62:
	ld a, l                                          ; $4c62: $7d
	jp nc, Jump_047_536e                             ; $4c63: $d2 $6e $53

	halt                                             ; $4c66: $76
	cp e                                             ; $4c67: $bb
	ld a, a                                          ; $4c68: $7f
	ld sp, hl                                        ; $4c69: $f9
	ld a, [hl]                                       ; $4c6a: $7e
	ld [de], a                                       ; $4c6b: $12
	ld a, a                                          ; $4c6c: $7f
	ld sp, hl                                        ; $4c6d: $f9
	ld [hl], a                                       ; $4c6e: $77
	ldh a, [c]                                       ; $4c6f: $f2
	sub l                                            ; $4c70: $95
	inc e                                            ; $4c71: $1c
	db $e3                                           ; $4c72: $e3
	inc e                                            ; $4c73: $1c
	db $e3                                           ; $4c74: $e3
	ccf                                              ; $4c75: $3f
	ret nz                                           ; $4c76: $c0

Call_047_4c77:
	rst $38                                          ; $4c77: $ff
	nop                                              ; $4c78: $00
	ld hl, sp+$07                                    ; $4c79: $f8 $07
	ld a, d                                          ; $4c7b: $7a
	ret nc                                           ; $4c7c: $d0

	ld a, h                                          ; $4c7d: $7c
	cp b                                             ; $4c7e: $b8
	adc b                                            ; $4c7f: $88
	ldh [$15], a                                     ; $4c80: $e0 $15
	ld [$f50a], a                                    ; $4c82: $ea $0a $f5
	push bc                                          ; $4c85: $c5
	ld a, [hl-]                                      ; $4c86: $3a
	ld [bc], a                                       ; $4c87: $02
	db $fd                                           ; $4c88: $fd
	ld bc, $02fe                                     ; $4c89: $01 $fe $02
	db $fd                                           ; $4c8c: $fd
	rst $38                                          ; $4c8d: $ff
	nop                                              ; $4c8e: $00
	jr nz, jr_047_4d10                               ; $4c8f: $20 $7f

	rst SubAFromDE                                          ; $4c91: $df
	ccf                                              ; $4c92: $3f
	pop af                                           ; $4c93: $f1
	rrca                                             ; $4c94: $0f
	db $fd                                           ; $4c95: $fd
	inc bc                                           ; $4c96: $03
	ld l, l                                          ; $4c97: $6d
	jr nc, jr_047_4d14                               ; $4c98: $30 $7a

	inc bc                                           ; $4c9a: $03
	add b                                            ; $4c9b: $80
	rst $38                                          ; $4c9c: $ff
	pop bc                                           ; $4c9d: $c1
	cp $86                                           ; $4c9e: $fe $86
	rst $38                                          ; $4ca0: $ff
	jr c, jr_047_4c62                                ; $4ca1: $38 $bf

	ld b, l                                          ; $4ca3: $45
	rst AddAOntoHL                                          ; $4ca4: $ef
	db $db                                           ; $4ca5: $db
	ccf                                              ; $4ca6: $3f
	ld hl, sp+$06                                    ; $4ca7: $f8 $06
	jp $0207                                         ; $4ca9: $c3 $07 $02


	or a                                             ; $4cac: $b7
	ld h, $16                                        ; $4cad: $26 $16
	nop                                              ; $4caf: $00
	ld d, [hl]                                       ; $4cb0: $56
	or $ff                                           ; $4cb1: $f6 $ff
	and $af                                          ; $4cb3: $e6 $af
	ld l, h                                          ; $4cb5: $6c
	ld l, a                                          ; $4cb6: $6f
	ld c, [hl]                                       ; $4cb7: $4e
	ld a, a                                          ; $4cb8: $7f
	ld h, [hl]                                       ; $4cb9: $66
	sbc l                                            ; $4cba: $9d
	add b                                            ; $4cbb: $80
	cpl                                              ; $4cbc: $2f
	call c, $fc1f                                    ; $4cbd: $dc $1f $fc
	inc bc                                           ; $4cc0: $03
	ld a, h                                          ; $4cc1: $7c
	ld sp, $5bca                                     ; $4cc2: $31 $ca $5b
	db $ed                                           ; $4cc5: $ed
	ld [hl-], a                                      ; $4cc6: $32
	call $cc36                                       ; $4cc7: $cd $36 $cc
	ld a, l                                          ; $4cca: $7d
	add d                                            ; $4ccb: $82
	cp $01                                           ; $4ccc: $fe $01
	ld e, l                                          ; $4cce: $5d
	and d                                            ; $4ccf: $a2
	db $fd                                           ; $4cd0: $fd
	ld [bc], a                                       ; $4cd1: $02
	rst FarCall                                          ; $4cd2: $f7
	ld [$2ad5], sp                                   ; $4cd3: $08 $d5 $2a
	xor d                                            ; $4cd6: $aa
	ld d, l                                          ; $4cd7: $55
	rst FarCall                                          ; $4cd8: $f7
	ld [$9a5f], sp                                   ; $4cd9: $08 $5f $9a
	and b                                            ; $4cdc: $a0
	xor h                                            ; $4cdd: $ac
	ld d, e                                          ; $4cde: $53
	rst $38                                          ; $4cdf: $ff
	nop                                              ; $4ce0: $00
	halt                                             ; $4ce1: $76
	ld b, $6f                                        ; $4ce2: $06 $6f
	ld e, h                                          ; $4ce4: $5c
	ld a, [hl]                                       ; $4ce5: $7e
	add $7d                                          ; $4ce6: $c6 $7d
	or $7f                                           ; $4ce8: $f6 $7f
	ldh a, [$7f]                                     ; $4cea: $f0 $7f
	ld h, h                                          ; $4cec: $64
	ld a, a                                          ; $4ced: $7f
	db $f4                                           ; $4cee: $f4
	ld a, a                                          ; $4cef: $7f
	adc d                                            ; $4cf0: $8a
	ld [hl], a                                       ; $4cf1: $77
	ldh a, [$7f]                                     ; $4cf2: $f0 $7f
	db $fc                                           ; $4cf4: $fc
	ld l, [hl]                                       ; $4cf5: $6e
	xor $6f                                          ; $4cf6: $ee $6f
	db $f4                                           ; $4cf8: $f4
	ld a, a                                          ; $4cf9: $7f
	db $fc                                           ; $4cfa: $fc
	ld a, [hl]                                       ; $4cfb: $7e
	call z, $de9d                                    ; $4cfc: $cc $9d $de
	ld hl, $d467                                     ; $4cff: $21 $67 $d4
	ld a, a                                          ; $4d02: $7f

jr_047_4d03:
	db $fc                                           ; $4d03: $fc
	ld a, a                                          ; $4d04: $7f
	db $10                                           ; $4d05: $10
	ld a, [hl]                                       ; $4d06: $7e
	ld a, [$819d]                                    ; $4d07: $fa $9d $81
	ld a, [hl]                                       ; $4d0a: $7e
	ld [hl], a                                       ; $4d0b: $77
	ld h, [hl]                                       ; $4d0c: $66
	ld [hl], a                                       ; $4d0d: $77
	ldh a, [$8a]                                     ; $4d0e: $f0 $8a

jr_047_4d10:
	xor b                                            ; $4d10: $a8
	ld d, a                                          ; $4d11: $57
	ld d, b                                          ; $4d12: $50
	xor a                                            ; $4d13: $af

jr_047_4d14:
	rlca                                             ; $4d14: $07
	ld hl, sp+$40                                    ; $4d15: $f8 $40
	cp a                                             ; $4d17: $bf
	xor b                                            ; $4d18: $a8
	ld d, a                                          ; $4d19: $57
	db $10                                           ; $4d1a: $10
	rst AddAOntoHL                                          ; $4d1b: $ef
	and b                                            ; $4d1c: $a0
	ld e, a                                          ; $4d1d: $5f
	nop                                              ; $4d1e: $00
	rst $38                                          ; $4d1f: $ff
	xor d                                            ; $4d20: $aa
	ld d, l                                          ; $4d21: $55
	nop                                              ; $4d22: $00
	rst $38                                          ; $4d23: $ff
	cp $61                                           ; $4d24: $fe $61
	ld h, l                                          ; $4d26: $65
	ld [hl], a                                       ; $4d27: $77
	ld d, $9c                                        ; $4d28: $16 $9c
	jr z, jr_047_4d03                                ; $4d2a: $28 $d7

	inc b                                            ; $4d2c: $04
	ld [hl], l                                       ; $4d2d: $75
	and l                                            ; $4d2e: $a5

Jump_047_4d2f:
	ld e, e                                          ; $4d2f: $5b
	cp $6f                                           ; $4d30: $fe $6f
	cp b                                             ; $4d32: $b8
	sbc l                                            ; $4d33: $9d
	ld d, c                                          ; $4d34: $51
	xor [hl]                                         ; $4d35: $ae
	ld d, a                                          ; $4d36: $57
	ldh a, [$7e]                                     ; $4d37: $f0 $7e
	ld h, $7f                                        ; $4d39: $26 $7f
	inc c                                            ; $4d3b: $0c
	ld e, a                                          ; $4d3c: $5f
	ldh a, [rPCM12]                                  ; $4d3d: $f0 $76
	ld c, [hl]                                       ; $4d3f: $4e
	ld a, a                                          ; $4d40: $7f
	ld d, b                                          ; $4d41: $50
	ld a, [hl]                                       ; $4d42: $7e
	cp $90                                           ; $4d43: $fe $90
	dec b                                            ; $4d45: $05
	ld a, [$fd02]                                    ; $4d46: $fa $02 $fd
	inc b                                            ; $4d49: $04
	ei                                               ; $4d4a: $fb
	xor d                                            ; $4d4b: $aa
	ld d, l                                          ; $4d4c: $55
	push af                                          ; $4d4d: $f5
	ld a, [bc]                                       ; $4d4e: $0a
	pop bc                                           ; $4d4f: $c1
	ld a, $3f                                        ; $4d50: $3e $3f
	ret nz                                           ; $4d52: $c0

	rst GetHLinHL                                          ; $4d53: $cf
	ld a, c                                          ; $4d54: $79
	ld a, [$947f]                                    ; $4d55: $fa $7f $94
	ld [hl], a                                       ; $4d58: $77
	sbc $7f                                          ; $4d59: $de $7f
	jp nc, $d37f                                     ; $4d5b: $d2 $7f $d3

	sbc [hl]                                         ; $4d5e: $9e
	rla                                              ; $4d5f: $17
	ld a, e                                          ; $4d60: $7b
	rst FarCall                                          ; $4d61: $f7
	ld a, h                                          ; $4d62: $7c
	jp c, $c276                                      ; $4d63: $da $76 $c2

	ld a, c                                          ; $4d66: $79
	ldh [c], a                                       ; $4d67: $e2
	ld a, b                                          ; $4d68: $78
	add sp, $7e                                      ; $4d69: $e8 $7e
	ld a, [bc]                                       ; $4d6b: $0a
	ld a, [hl]                                       ; $4d6c: $7e

jr_047_4d6d:
	call nz, $3e97                                   ; $4d6d: $c4 $97 $3e
	ld bc, $0bf4                                     ; $4d70: $01 $f4 $0b
	inc bc                                           ; $4d73: $03
	db $fc                                           ; $4d74: $fc
	adc a                                            ; $4d75: $8f
	ld [hl], b                                       ; $4d76: $70
	ld e, a                                          ; $4d77: $5f
	adc [hl]                                         ; $4d78: $8e
	ld a, a                                          ; $4d79: $7f
	ldh a, [c]                                       ; $4d7a: $f2
	sbc c                                            ; $4d7b: $99
	and $18                                          ; $4d7c: $e6 $18
	db $e3                                           ; $4d7e: $e3
	nop                                              ; $4d7f: $00
	db $fd                                           ; $4d80: $fd
	ld [bc], a                                       ; $4d81: $02
	ld [hl], a                                       ; $4d82: $77
	ld d, b                                          ; $4d83: $50
	ld [hl], a                                       ; $4d84: $77
	ldh a, [rPCM12]                                  ; $4d85: $f0 $76
	or d                                             ; $4d87: $b2
	ld [hl], l                                       ; $4d88: $75
	adc d                                            ; $4d89: $8a
	ld a, a                                          ; $4d8a: $7f
	cp [hl]                                          ; $4d8b: $be
	ld a, a                                          ; $4d8c: $7f
	db $10                                           ; $4d8d: $10
	halt                                             ; $4d8e: $76
	ld h, h                                          ; $4d8f: $64
	ld [hl], a                                       ; $4d90: $77
	sub h                                            ; $4d91: $94
	sbc l                                            ; $4d92: $9d
	nop                                              ; $4d93: $00
	sbc $76                                          ; $4d94: $de $76
	halt                                             ; $4d96: $76
	ld [hl], a                                       ; $4d97: $77
	cp $7f                                           ; $4d98: $fe $7f
	cp b                                             ; $4d9a: $b8
	ld [hl], h                                       ; $4d9b: $74
	sbc [hl]                                         ; $4d9c: $9e
	sbc l                                            ; $4d9d: $9d
	nop                                              ; $4d9e: $00
	xor $77                                          ; $4d9f: $ee $77
	xor h                                            ; $4da1: $ac
	ld e, a                                          ; $4da2: $5f
	cp $7d                                           ; $4da3: $fe $7d
	xor [hl]                                         ; $4da5: $ae
	sbc b                                            ; $4da6: $98
	ld h, $d9                                        ; $4da7: $26 $d9
	or $09                                           ; $4da9: $f6 $09
	ret nz                                           ; $4dab: $c0

	ccf                                              ; $4dac: $3f
	ccf                                              ; $4dad: $3f
	cp $7f                                           ; $4dae: $fe $7f
	cp e                                             ; $4db0: $bb
	ld a, a                                          ; $4db1: $7f
	cp b                                             ; $4db2: $b8
	ld a, [hl]                                       ; $4db3: $7e
	db $f4                                           ; $4db4: $f4
	ld a, [hl]                                       ; $4db5: $7e
	ret c                                            ; $4db6: $d8

	ld a, a                                          ; $4db7: $7f
	db $ec                                           ; $4db8: $ec
	ld [hl], l                                       ; $4db9: $75
	jp nc, $7eff                                     ; $4dba: $d2 $ff $7e

	ld b, $6c                                        ; $4dbd: $06 $6c
	jp z, $ec7f                                      ; $4dbf: $ca $7f $ec

	sbc h                                            ; $4dc2: $9c
	ldh [$1f], a                                     ; $4dc3: $e0 $1f
	ccf                                              ; $4dc5: $3f
	ld a, b                                          ; $4dc6: $78
	ld l, h                                          ; $4dc7: $6c
	sbc e                                            ; $4dc8: $9b
	adc b                                            ; $4dc9: $88
	rlca                                             ; $4dca: $07
	ld a, b                                          ; $4dcb: $78
	add a                                            ; $4dcc: $87
	ld l, a                                          ; $4dcd: $6f
	jr nz, jr_047_4e4e                               ; $4dce: $20 $7e

	jr jr_047_4d6d                                   ; $4dd0: $18 $9b

	cp e                                             ; $4dd2: $bb
	ld b, h                                          ; $4dd3: $44
	add c                                            ; $4dd4: $81
	ld a, [hl]                                       ; $4dd5: $7e
	ld [hl], a                                       ; $4dd6: $77
	cp a                                             ; $4dd7: $bf
	ld a, [hl]                                       ; $4dd8: $7e
	add sp, -$63                                     ; $4dd9: $e8 $9d
	ld b, c                                          ; $4ddb: $41
	cp [hl]                                          ; $4ddc: $be
	halt                                             ; $4ddd: $76
	db $e4                                           ; $4dde: $e4
	ld h, a                                          ; $4ddf: $67
	cp $7e                                           ; $4de0: $fe $7e
	call nc, $8a7d                                   ; $4de2: $d4 $7d $8a
	sbc l                                            ; $4de5: $9d
	ld [bc], a                                       ; $4de6: $02
	db $fc                                           ; $4de7: $fc
	ld e, a                                          ; $4de8: $5f
	ldh a, [$7f]                                     ; $4de9: $f0 $7f
	ld l, h                                          ; $4deb: $6c
	sbc c                                            ; $4dec: $99
	call c, $2723                                    ; $4ded: $dc $23 $27
	jr @+$44                                         ; $4df0: $18 $42

	cp l                                             ; $4df2: $bd
	ld e, a                                          ; $4df3: $5f
	xor $9d                                          ; $4df4: $ee $9d
	ld a, e                                          ; $4df6: $7b
	add b                                            ; $4df7: $80
	ld [hl], a                                       ; $4df8: $77
	xor b                                            ; $4df9: $a8
	ld a, a                                          ; $4dfa: $7f
	add sp, $7f                                      ; $4dfb: $e8 $7f
	cp b                                             ; $4dfd: $b8
	ld [hl], a                                       ; $4dfe: $77
	ldh a, [c]                                       ; $4dff: $f2
	sub b                                            ; $4e00: $90
	rla                                              ; $4e01: $17
	add sp, $37                                      ; $4e02: $e8 $37
	ret z                                            ; $4e04: $c8

	push hl                                          ; $4e05: $e5
	ld a, [de]                                       ; $4e06: $1a
	cp $01                                           ; $4e07: $fe $01
	adc a                                            ; $4e09: $8f
	ld [hl], b                                       ; $4e0a: $70
	ld e, b                                          ; $4e0b: $58
	and b                                            ; $4e0c: $a0
	inc hl                                           ; $4e0d: $23
	call c, $7910                                    ; $4e0e: $dc $10 $79
	ei                                               ; $4e11: $fb
	sub l                                            ; $4e12: $95
	inc h                                            ; $4e13: $24
	db $db                                           ; $4e14: $db
	ld b, b                                          ; $4e15: $40
	cp a                                             ; $4e16: $bf
	rrca                                             ; $4e17: $0f
	ldh a, [$fb]                                     ; $4e18: $f0 $fb
	nop                                              ; $4e1a: $00
	inc a                                            ; $4e1b: $3c
	inc bc                                           ; $4e1c: $03
	ld l, l                                          ; $4e1d: $6d
	or h                                             ; $4e1e: $b4
	ld a, a                                          ; $4e1f: $7f
	cp $7f                                           ; $4e20: $fe $7f
	ld [$807f], a                                    ; $4e22: $ea $7f $80
	ld a, a                                          ; $4e25: $7f
	ld e, [hl]                                       ; $4e26: $5e
	ld c, [hl]                                       ; $4e27: $4e
	sbc b                                            ; $4e28: $98
	ld a, [hl]                                       ; $4e29: $7e
	ld a, [$dc7f]                                    ; $4e2a: $fa $7f $dc
	ld e, a                                          ; $4e2d: $5f
	ldh a, [c]                                       ; $4e2e: $f2
	ld a, [hl]                                       ; $4e2f: $7e
	add $7e                                          ; $4e30: $c6 $7e
	call nc, $9199                                   ; $4e32: $d4 $99 $91
	ld l, [hl]                                       ; $4e35: $6e
	add b                                            ; $4e36: $80
	ld a, a                                          ; $4e37: $7f
	dec b                                            ; $4e38: $05
	ld a, [$f06f]                                    ; $4e39: $fa $6f $f0
	ld a, [hl]                                       ; $4e3c: $7e
	ld a, [hl-]                                      ; $4e3d: $3a
	ld a, [hl]                                       ; $4e3e: $7e
	ld hl, sp+$7f                                    ; $4e3f: $f8 $7f
	xor h                                            ; $4e41: $ac
	ld a, a                                          ; $4e42: $7f
	ld l, b                                          ; $4e43: $68
	ld a, a                                          ; $4e44: $7f
	ld a, [$e66e]                                    ; $4e45: $fa $6e $e6
	ld a, a                                          ; $4e48: $7f
	jp nz, $e87d                                     ; $4e49: $c2 $7d $e8

	ld a, [hl]                                       ; $4e4c: $7e
	sbc h                                            ; $4e4d: $9c

jr_047_4e4e:
	ld [hl], h                                       ; $4e4e: $74
	ld [hl-], a                                      ; $4e4f: $32
	ld a, a                                          ; $4e50: $7f
	halt                                             ; $4e51: $76
	adc [hl]                                         ; $4e52: $8e
	ld b, $f8                                        ; $4e53: $06 $f8
	ld bc, $3cfe                                     ; $4e55: $01 $fe $3c
	ret nz                                           ; $4e58: $c0

	ret nz                                           ; $4e59: $c0

	nop                                              ; $4e5a: $00
	inc e                                            ; $4e5b: $1c
	nop                                              ; $4e5c: $00
	sbc a                                            ; $4e5d: $9f
	nop                                              ; $4e5e: $00
	rst FarCall                                          ; $4e5f: $f7
	nop                                              ; $4e60: $00
	ret nz                                           ; $4e61: $c0

	nop                                              ; $4e62: $00
	rlca                                             ; $4e63: $07
	ld a, b                                          ; $4e64: $78
	sbc h                                            ; $4e65: $9c
	sbc [hl]                                         ; $4e66: $9e
	inc b                                            ; $4e67: $04
	cp $9e                                           ; $4e68: $fe $9e
	jr nz, @+$74                                     ; $4e6a: $20 $72

	ldh a, [c]                                       ; $4e6c: $f2
	sbc h                                            ; $4e6d: $9c
	ld a, l                                          ; $4e6e: $7d
	ld [bc], a                                       ; $4e6f: $02
	adc a                                            ; $4e70: $8f
	ld a, e                                          ; $4e71: $7b
	ld hl, sp+$7e                                    ; $4e72: $f8 $7e
	cp [hl]                                          ; $4e74: $be
	ld a, a                                          ; $4e75: $7f
	call nz, $959d                                   ; $4e76: $c4 $9d $95
	ld l, d                                          ; $4e79: $6a
	ld [hl], a                                       ; $4e7a: $77
	adc h                                            ; $4e7b: $8c
	ld a, a                                          ; $4e7c: $7f
	adc $7f                                          ; $4e7d: $ce $7f
	ld [de], a                                       ; $4e7f: $12
	ld a, l                                          ; $4e80: $7d
	or d                                             ; $4e81: $b2
	ld a, l                                          ; $4e82: $7d
	cp d                                             ; $4e83: $ba
	sub a                                            ; $4e84: $97
	ld l, $d0                                        ; $4e85: $2e $d0
	inc bc                                           ; $4e87: $03
	db $fc                                           ; $4e88: $fc
	ld hl, sp+$07                                    ; $4e89: $f8 $07
	nop                                              ; $4e8b: $00
	rst $38                                          ; $4e8c: $ff
	ld [hl], a                                       ; $4e8d: $77
	ld [bc], a                                       ; $4e8e: $02
	ld a, a                                          ; $4e8f: $7f
	ld h, b                                          ; $4e90: $60
	ld a, a                                          ; $4e91: $7f
	xor b                                            ; $4e92: $a8
	ld a, a                                          ; $4e93: $7f
	cp $67                                           ; $4e94: $fe $67
	ld l, [hl]                                       ; $4e96: $6e
	ld a, a                                          ; $4e97: $7f
	ldh a, [c]                                       ; $4e98: $f2
	ld d, a                                          ; $4e99: $57
	ld l, b                                          ; $4e9a: $68
	sbc l                                            ; $4e9b: $9d
	ld c, $f1                                        ; $4e9c: $0e $f1
	ld c, a                                          ; $4e9e: $4f
	ld e, b                                          ; $4e9f: $58
	ld d, a                                          ; $4ea0: $57
	ld e, h                                          ; $4ea1: $5c
	ld e, l                                          ; $4ea2: $5d
	ld a, [$5c6f]                                    ; $4ea3: $fa $6f $5c
	sbc e                                            ; $4ea6: $9b
	db $10                                           ; $4ea7: $10
	rrca                                             ; $4ea8: $0f
	pop af                                           ; $4ea9: $f1
	ld c, $27                                        ; $4eaa: $0e $27
	jp nc, $fe2f                                     ; $4eac: $d2 $2f $fe

	ld a, l                                          ; $4eaf: $7d
	ld [hl], b                                       ; $4eb0: $70
	ld b, a                                          ; $4eb1: $47
	xor $55                                          ; $4eb2: $ee $55
	add b                                            ; $4eb4: $80
	ld a, l                                          ; $4eb5: $7d
	xor h                                            ; $4eb6: $ac
	ld d, a                                          ; $4eb7: $57
	ldh a, [c]                                       ; $4eb8: $f2
	ld l, a                                          ; $4eb9: $6f
	ld b, $5f                                        ; $4eba: $06 $5f
	cp $7f                                           ; $4ebc: $fe $7f
	ld e, b                                          ; $4ebe: $58
	ld h, [hl]                                       ; $4ebf: $66
	or b                                             ; $4ec0: $b0
	rla                                              ; $4ec1: $17
	cp $74                                           ; $4ec2: $fe $74
	ld h, b                                          ; $4ec4: $60
	ld d, a                                          ; $4ec5: $57
	ldh a, [$74]                                     ; $4ec6: $f0 $74
	ccf                                              ; $4ec8: $3f
	ld d, a                                          ; $4ec9: $57
	ldh a, [$7f]                                     ; $4eca: $f0 $7f
	db $fd                                           ; $4ecc: $fd
	ld a, l                                          ; $4ecd: $7d
	ld a, [$f29d]                                    ; $4ece: $fa $9d $f2
	dec c                                            ; $4ed1: $0d
	ld e, a                                          ; $4ed2: $5f
	jp nc, $f87e                                     ; $4ed3: $d2 $7e $f8

	ld e, l                                          ; $4ed6: $5d
	ld [hl], d                                       ; $4ed7: $72
	sbc h                                            ; $4ed8: $9c
	ld a, [hl]                                       ; $4ed9: $7e
	add b                                            ; $4eda: $80
	add b                                            ; $4edb: $80
	ld l, e                                          ; $4edc: $6b
	call nc, $f47f                                   ; $4edd: $d4 $7f $f4
	ld a, a                                          ; $4ee0: $7f
	add d                                            ; $4ee1: $82
	ld a, a                                          ; $4ee2: $7f
	sub d                                            ; $4ee3: $92
	sbc l                                            ; $4ee4: $9d
	ld a, [hl-]                                      ; $4ee5: $3a
	dec b                                            ; $4ee6: $05
	ld h, a                                          ; $4ee7: $67
	jr nz, @+$21                                     ; $4ee8: $20 $1f

	add [hl]                                         ; $4eea: $86
	inc sp                                           ; $4eeb: $33
	nop                                              ; $4eec: $00
	db $dd                                           ; $4eed: $dd
	ld b, h                                          ; $4eee: $44
	sbc $77                                          ; $4eef: $de $77
	reti                                             ; $4ef1: $d9


	ld b, h                                          ; $4ef2: $44
	sbc l                                            ; $4ef3: $9d
	ld [hl], a                                       ; $4ef4: $77
	ld [hl], h                                       ; $4ef5: $74
	call nc, $de44                                   ; $4ef6: $d4 $44 $de
	ld h, [hl]                                       ; $4ef9: $66
	sbc [hl]                                         ; $4efa: $9e
	ld h, h                                          ; $4efb: $64
	sbc $44                                          ; $4efc: $de $44
	sbc h                                            ; $4efe: $9c

Call_047_4eff:
	ld b, [hl]                                       ; $4eff: $46
	ld h, [hl]                                       ; $4f00: $66
	ld h, h                                          ; $4f01: $64
	ret c                                            ; $4f02: $d8

	ld h, [hl]                                       ; $4f03: $66
	ld [hl], e                                       ; $4f04: $73
	or $9e                                           ; $4f05: $f6 $9e
	ld h, l                                          ; $4f07: $65
	sbc $55                                          ; $4f08: $de $55
	ld a, a                                          ; $4f0a: $7f
	or $de                                           ; $4f0b: $f6 $de
	ld d, l                                          ; $4f0d: $55
	sbc [hl]                                         ; $4f0e: $9e
	ld d, e                                          ; $4f0f: $53
	sbc $33                                          ; $4f10: $de $33
	sbc h                                            ; $4f12: $9c
	dec [hl]                                         ; $4f13: $35
	ld d, l                                          ; $4f14: $55
	ld d, h                                          ; $4f15: $54
	reti                                             ; $4f16: $d9


	inc sp                                           ; $4f17: $33
	ld e, a                                          ; $4f18: $5f
	or $7f                                           ; $4f19: $f6 $7f
	push af                                          ; $4f1b: $f5
	call Call_047_6833                               ; $4f1c: $cd $33 $68
	ld a, [bc]                                       ; $4f1f: $0a
	db $fd                                           ; $4f20: $fd
	sbc [hl]                                         ; $4f21: $9e
	ld bc, $fe73                                     ; $4f22: $01 $73 $fe
	ld l, a                                          ; $4f25: $6f
	ld sp, hl                                        ; $4f26: $f9
	adc h                                            ; $4f27: $8c
	ld c, [hl]                                       ; $4f28: $4e
	sub b                                            ; $4f29: $90
	ld c, [hl]                                       ; $4f2a: $4e
	sub b                                            ; $4f2b: $90
	ld e, [hl]                                       ; $4f2c: $5e
	add b                                            ; $4f2d: $80
	ld b, $90                                        ; $4f2e: $06 $90
	add [hl]                                         ; $4f30: $86
	db $10                                           ; $4f31: $10
	sub [hl]                                         ; $4f32: $96
	jr nz, @-$6c                                     ; $4f33: $20 $92

	inc h                                            ; $4f35: $24
	or [hl]                                          ; $4f36: $b6
	nop                                              ; $4f37: $00
	ld d, l                                          ; $4f38: $55
	nop                                              ; $4f39: $00
	xor d                                            ; $4f3a: $aa
	ld c, a                                          ; $4f3b: $4f
	db $fc                                           ; $4f3c: $fc
	sbc h                                            ; $4f3d: $9c
	ld bc, $01a9                                     ; $4f3e: $01 $a9 $01
	ld d, a                                          ; $4f41: $57
	db $fc                                           ; $4f42: $fc
	sbc b                                            ; $4f43: $98
	pop bc                                           ; $4f44: $c1
	ldh [$d2], a                                     ; $4f45: $e0 $d2
	ldh [$d5], a                                     ; $4f47: $e0 $d5
	ldh [$da], a                                     ; $4f49: $e0 $da
	ld l, e                                          ; $4f4b: $6b
	db $fc                                           ; $4f4c: $fc
	ld a, a                                          ; $4f4d: $7f
	db $f4                                           ; $4f4e: $f4
	sub [hl]                                         ; $4f4f: $96
	ld h, d                                          ; $4f50: $62
	add b                                            ; $4f51: $80
	pop bc                                           ; $4f52: $c1
	nop                                              ; $4f53: $00
	and b                                            ; $4f54: $a0
	nop                                              ; $4f55: $00
	ld d, h                                          ; $4f56: $54
	nop                                              ; $4f57: $00
	xor b                                            ; $4f58: $a8
	ld [hl], e                                       ; $4f59: $73
	db $fc                                           ; $4f5a: $fc
	ld h, a                                          ; $4f5b: $67
	jp z, $059c                                      ; $4f5c: $ca $9c $05

	nop                                              ; $4f5f: $00
	ld [bc], a                                       ; $4f60: $02
	ld a, e                                          ; $4f61: $7b
	ld hl, sp-$6b                                    ; $4f62: $f8 $95
	xor e                                            ; $4f64: $ab
	nop                                              ; $4f65: $00
	ld d, a                                          ; $4f66: $57
	nop                                              ; $4f67: $00
	cp d                                             ; $4f68: $ba
	dec b                                            ; $4f69: $05
	ld e, l                                          ; $4f6a: $5d
	ld [bc], a                                       ; $4f6b: $02
	xor d                                            ; $4f6c: $aa
	dec b                                            ; $4f6d: $05
	ld [hl], a                                       ; $4f6e: $77
	ld hl, sp-$80                                    ; $4f6f: $f8 $80
	push af                                          ; $4f71: $f5
	ld a, [bc]                                       ; $4f72: $0a
	add sp, $17                                      ; $4f73: $e8 $17
	ret nc                                           ; $4f75: $d0

	cpl                                              ; $4f76: $2f
	nop                                              ; $4f77: $00
	rst $38                                          ; $4f78: $ff
	ld b, b                                          ; $4f79: $40
	cp a                                             ; $4f7a: $bf
	add e                                            ; $4f7b: $83
	ld a, h                                          ; $4f7c: $7c
	ld b, e                                          ; $4f7d: $43
	cp a                                             ; $4f7e: $bf
	add l                                            ; $4f7f: $85
	ld a, l                                          ; $4f80: $7d
	inc b                                            ; $4f81: $04
	db $fc                                           ; $4f82: $fc
	rrca                                             ; $4f83: $0f
	rst FarCall                                          ; $4f84: $f7
	rrca                                             ; $4f85: $0f
	db $f4                                           ; $4f86: $f4
	dec sp                                           ; $4f87: $3b
	db $dd                                           ; $4f88: $dd
	ld l, l                                          ; $4f89: $6d
	or d                                             ; $4f8a: $b2
	ldh a, [rVBK]                                    ; $4f8b: $f0 $4f
	ret nz                                           ; $4f8d: $c0

	cp a                                             ; $4f8e: $bf
	add b                                            ; $4f8f: $80
	add b                                            ; $4f90: $80
	rst $38                                          ; $4f91: $ff
	add b                                            ; $4f92: $80
	rst $38                                          ; $4f93: $ff
	pop bc                                           ; $4f94: $c1
	rst $38                                          ; $4f95: $ff
	ld a, [$e0fe]                                    ; $4f96: $fa $fe $e0
	rra                                              ; $4f99: $1f
	add c                                            ; $4f9a: $81
	rst $38                                          ; $4f9b: $ff
	call z, $207f                                    ; $4f9c: $cc $7f $20
	rst $38                                          ; $4f9f: $ff
	ld b, b                                          ; $4fa0: $40
	db $fd                                           ; $4fa1: $fd
	adc h                                            ; $4fa2: $8c
	sub a                                            ; $4fa3: $97
	ld b, $7b                                        ; $4fa4: $06 $7b
	inc bc                                           ; $4fa6: $03
	db $fd                                           ; $4fa7: $fd
	add c                                            ; $4fa8: $81
	rst $38                                          ; $4fa9: $ff
	add c                                            ; $4faa: $81
	add c                                            ; $4fab: $81
	cp a                                             ; $4fac: $bf
	pop bc                                           ; $4fad: $c1
	ld b, c                                          ; $4fae: $41
	db $e3                                           ; $4faf: $e3
	sub a                                            ; $4fb0: $97
	rst GetHLinHL                                          ; $4fb1: $cf
	ld [hl], e                                       ; $4fb2: $73
	rst GetHLinHL                                          ; $4fb3: $cf
	ld [hl], e                                       ; $4fb4: $73
	ld h, d                                          ; $4fb5: $62
	cp a                                             ; $4fb6: $bf
	and [hl]                                         ; $4fb7: $a6
	rst SubAFromBC                                          ; $4fb8: $e7
	ld [hl], a                                       ; $4fb9: $77
	ret c                                            ; $4fba: $d8

	ld a, a                                          ; $4fbb: $7f
	cp h                                             ; $4fbc: $bc
	add [hl]                                         ; $4fbd: $86
	ld b, c                                          ; $4fbe: $41
	di                                               ; $4fbf: $f3
	ld [de], a                                       ; $4fc0: $12
	ccf                                              ; $4fc1: $3f
	inc c                                            ; $4fc2: $0c
	adc $0c                                          ; $4fc3: $ce $0c
	rst $38                                          ; $4fc5: $ff
	ld de, $fcbf                                     ; $4fc6: $11 $bf $fc
	di                                               ; $4fc9: $f3
	ld a, b                                          ; $4fca: $78
	rst SubAFromBC                                          ; $4fcb: $e7
	ret c                                            ; $4fcc: $d8

	rst FarCall                                          ; $4fcd: $f7
	inc c                                            ; $4fce: $0c
	ei                                               ; $4fcf: $fb
	ld b, $fd                                        ; $4fd0: $06 $fd
	inc bc                                           ; $4fd2: $03
	cp $03                                           ; $4fd3: $fe $03
	cp $01                                           ; $4fd5: $fe $01
	ld a, e                                          ; $4fd7: $7b
	db $e4                                           ; $4fd8: $e4
	ld d, a                                          ; $4fd9: $57
	cp $9d                                           ; $4fda: $fe $9d
	add b                                            ; $4fdc: $80
	ld a, a                                          ; $4fdd: $7f
	ld c, a                                          ; $4fde: $4f
	ldh a, [$03]                                     ; $4fdf: $f0 $03
	cp $0b                                           ; $4fe1: $fe $0b
	cp $9b                                           ; $4fe3: $fe $9b
	dec b                                            ; $4fe5: $05
	ld a, [$0102]                                    ; $4fe6: $fa $02 $01
	ld a, e                                          ; $4fe9: $7b
	cp $8d                                           ; $4fea: $fe $8d
	nop                                              ; $4fec: $00
	ldh [c], a                                       ; $4fed: $e2
	nop                                              ; $4fee: $00
	jr jr_047_4ff1                                   ; $4fef: $18 $00

jr_047_4ff1:
	ld [bc], a                                       ; $4ff1: $02
	ldh [rSB], a                                     ; $4ff2: $e0 $01
	inc e                                            ; $4ff4: $1c
	inc b                                            ; $4ff5: $04
	ld [bc], a                                       ; $4ff6: $02
	ld [hl+], a                                      ; $4ff7: $22
	inc b                                            ; $4ff8: $04
	ld h, d                                          ; $4ff9: $62
	inc b                                            ; $4ffa: $04
	ld b, d                                          ; $4ffb: $42
	inc b                                            ; $4ffc: $04
	ld [bc], a                                       ; $4ffd: $02
	ld a, e                                          ; $4ffe: $7b
	cp $9c                                           ; $4fff: $fe $9c
	xor d                                            ; $5001: $aa
	inc b                                            ; $5002: $04
	ld d, d                                          ; $5003: $52
	ld a, e                                          ; $5004: $7b
	db $fc                                           ; $5005: $fc
	ld h, [hl]                                       ; $5006: $66
	cp $97                                           ; $5007: $fe $97
	dec d                                            ; $5009: $15
	nop                                              ; $500a: $00
	inc bc                                           ; $500b: $03
	add b                                            ; $500c: $80
	add b                                            ; $500d: $80
	ld a, b                                          ; $500e: $78
	ld sp, hl                                        ; $500f: $f9
	ld b, $6e                                        ; $5010: $06 $6e
	ret z                                            ; $5012: $c8

	sbc b                                            ; $5013: $98
	xor l                                            ; $5014: $ad
	ld bc, $017d                                     ; $5015: $01 $7d $01
	db $fd                                           ; $5018: $fd
	ld bc, $7bff                                     ; $5019: $01 $ff $7b
	cp $9d                                           ; $501c: $fe $9d
	ret nc                                           ; $501e: $d0

	ldh [$5f], a                                     ; $501f: $e0 $5f
	cp $98                                           ; $5021: $fe $98
	jp nc, $d5ec                                     ; $5023: $d2 $ec $d5

	ld [$0055], a                                    ; $5026: $ea $55 $00
	ld a, [hl+]                                      ; $5029: $2a
	ld [hl], d                                       ; $502a: $72
	ld l, [hl]                                       ; $502b: $6e
	sub [hl]                                         ; $502c: $96
	ld b, $07                                        ; $502d: $06 $07
	rrca                                             ; $502f: $0f
	rrca                                             ; $5030: $0f
	rlca                                             ; $5031: $07
	rlca                                             ; $5032: $07
	ld d, a                                          ; $5033: $57
	xor a                                            ; $5034: $af
	xor a                                            ; $5035: $af
	ld a, e                                          ; $5036: $7b
	sbc c                                            ; $5037: $99
	sbc [hl]                                         ; $5038: $9e
	ld a, [$d476]                                    ; $5039: $fa $76 $d4
	add b                                            ; $503c: $80
	sub a                                            ; $503d: $97
	rst AddAOntoHL                                          ; $503e: $ef
	db $10                                           ; $503f: $10
	ld hl, sp-$01                                    ; $5040: $f8 $ff
	ld a, a                                          ; $5042: $7f
	rst $38                                          ; $5043: $ff
	ldh [$1f], a                                     ; $5044: $e0 $1f
	ld d, b                                          ; $5046: $50
	xor a                                            ; $5047: $af
	and b                                            ; $5048: $a0
	ld e, a                                          ; $5049: $5f
	nop                                              ; $504a: $00
	rst $38                                          ; $504b: $ff
	xor d                                            ; $504c: $aa
	ld d, l                                          ; $504d: $55
	push de                                          ; $504e: $d5
	ld a, [hl+]                                      ; $504f: $2a
	ld a, $c1                                        ; $5050: $3e $c1
	db $fd                                           ; $5052: $fd
	cp $0e                                           ; $5053: $fe $0e
	push af                                          ; $5055: $f5
	ld e, $ed                                        ; $5056: $1e $ed
	ld e, $ed                                        ; $5058: $1e $ed
	ld l, [hl]                                       ; $505a: $6e
	sbc a                                            ; $505b: $9f
	adc a                                            ; $505c: $8f
	or a                                             ; $505d: $b7
	ld d, a                                          ; $505e: $57
	ld [hl], e                                       ; $505f: $73
	sub e                                            ; $5060: $93
	rst AddAOntoHL                                          ; $5061: $ef
	ld e, $c6                                        ; $5062: $1e $c6
	dec a                                            ; $5064: $3d
	rst AddAOntoHL                                          ; $5065: $ef
	rra                                              ; $5066: $1f
	ld [hl-], a                                      ; $5067: $32
	call $fc0b                                       ; $5068: $cd $0b $fc
	ld e, $fd                                        ; $506b: $1e $fd
	sbc $ff                                          ; $506d: $de $ff
	rst SubAFromDE                                          ; $506f: $df
	db $10                                           ; $5070: $10
	ld a, e                                          ; $5071: $7b
	ret nc                                           ; $5072: $d0

	sub c                                            ; $5073: $91
	add h                                            ; $5074: $84
	db $fc                                           ; $5075: $fc
	ld hl, sp-$07                                    ; $5076: $f8 $f9
	sbc a                                            ; $5078: $9f
	ld a, a                                          ; $5079: $7f
	ld [hl], e                                       ; $507a: $73
	sub e                                            ; $507b: $93
	rst $38                                          ; $507c: $ff
	rst $38                                          ; $507d: $ff
	pop hl                                           ; $507e: $e1
	ld hl, $ff2f                                     ; $507f: $21 $2f $ff
	ld a, e                                          ; $5082: $7b
	jp hl                                            ; $5083: $e9


	sbc d                                            ; $5084: $9a
	sub [hl]                                         ; $5085: $96
	rst $38                                          ; $5086: $ff
	ld a, l                                          ; $5087: $7d
	rst AddAOntoHL                                          ; $5088: $ef
	ccf                                              ; $5089: $3f
	sbc $ff                                          ; $508a: $de $ff
	sbc [hl]                                         ; $508c: $9e
	rst AddAOntoHL                                          ; $508d: $ef
	ld a, e                                          ; $508e: $7b
	cp $80                                           ; $508f: $fe $80
	rst FarCall                                          ; $5091: $f7
	rst $38                                          ; $5092: $ff
	di                                               ; $5093: $f3
	inc l                                            ; $5094: $2c
	di                                               ; $5095: $f3
	ld e, a                                          ; $5096: $5f
	ldh [hDisp0_OBP0], a                                     ; $5097: $e0 $86
	ld sp, hl                                        ; $5099: $f9
	rst $38                                          ; $509a: $ff
	ld a, [$40f0]                                    ; $509b: $fa $f0 $40
	ldh a, [$b0]                                     ; $509e: $f0 $b0
	db $ec                                           ; $50a0: $ec
	cp b                                             ; $50a1: $b8
	db $e3                                           ; $50a2: $e3
	ldh a, [c]                                       ; $50a3: $f2
	ld bc, $b7ff                                     ; $50a4: $01 $ff $b7
	ret                                              ; $50a7: $c9


	ei                                               ; $50a8: $fb
	db $fc                                           ; $50a9: $fc
	ld c, $e1                                        ; $50aa: $0e $e1
	ld c, a                                          ; $50ac: $4f
	ld h, b                                          ; $50ad: $60
	ld e, a                                          ; $50ae: $5f
	ld h, b                                          ; $50af: $60
	adc e                                            ; $50b0: $8b
	db $d3                                           ; $50b1: $d3
	ld h, l                                          ; $50b2: $65
	pop bc                                           ; $50b3: $c1
	db $fd                                           ; $50b4: $fd
	ret nz                                           ; $50b5: $c0

	ccf                                              ; $50b6: $3f
	ldh a, [$7f]                                     ; $50b7: $f0 $7f
	ldh a, [rIE]                                     ; $50b9: $f0 $ff
	ret nz                                           ; $50bb: $c0

	cp a                                             ; $50bc: $bf
	ret nz                                           ; $50bd: $c0

	cp a                                             ; $50be: $bf
	ldh [$9f], a                                     ; $50bf: $e0 $9f
	ret nz                                           ; $50c1: $c0

	cp a                                             ; $50c2: $bf
	ldh a, [hDisp1_LCDC]                                     ; $50c3: $f0 $8f
	ld d, a                                          ; $50c5: $57
	ld [bc], a                                       ; $50c6: $02
	sbc e                                            ; $50c7: $9b
	ld [bc], a                                       ; $50c8: $02
	db $fd                                           ; $50c9: $fd
	ld d, l                                          ; $50ca: $55
	xor d                                            ; $50cb: $aa
	ld d, [hl]                                       ; $50cc: $56
	db $f4                                           ; $50cd: $f4
	sbc e                                            ; $50ce: $9b
	xor e                                            ; $50cf: $ab
	ld d, h                                          ; $50d0: $54
	ld d, a                                          ; $50d1: $57
	xor b                                            ; $50d2: $a8
	ld l, a                                          ; $50d3: $6f
	db $f4                                           ; $50d4: $f4
	sub l                                            ; $50d5: $95
	inc b                                            ; $50d6: $04
	ei                                               ; $50d7: $fb
	xor d                                            ; $50d8: $aa
	ld d, l                                          ; $50d9: $55
	ld d, l                                          ; $50da: $55
	xor d                                            ; $50db: $aa
	cp a                                             ; $50dc: $bf
	ld b, b                                          ; $50dd: $40
	rst $38                                          ; $50de: $ff
	nop                                              ; $50df: $00
	ld [hl], a                                       ; $50e0: $77
	add sp, $77                                      ; $50e1: $e8 $77
	db $f4                                           ; $50e3: $f4
	sbc l                                            ; $50e4: $9d
	xor a                                            ; $50e5: $af
	ld d, b                                          ; $50e6: $50
	ld l, a                                          ; $50e7: $6f
	reti                                             ; $50e8: $d9


	sbc l                                            ; $50e9: $9d
	ld a, [bc]                                       ; $50ea: $0a
	push af                                          ; $50eb: $f5
	ld e, a                                          ; $50ec: $5f
	db $f4                                           ; $50ed: $f4
	sbc [hl]                                         ; $50ee: $9e
	push de                                          ; $50ef: $d5
	ld a, d                                          ; $50f0: $7a
	add sp, -$63                                     ; $50f1: $e8 $9d
	ld e, $e3                                        ; $50f3: $1e $e3
	ld a, d                                          ; $50f5: $7a
	ld e, e                                          ; $50f6: $5b
	sbc l                                            ; $50f7: $9d
	ld bc, $7a7f                                     ; $50f8: $01 $7f $7a
	dec sp                                           ; $50fb: $3b
	ld a, a                                          ; $50fc: $7f
	db $fc                                           ; $50fd: $fc
	ld a, a                                          ; $50fe: $7f
	cp $7f                                           ; $50ff: $fe $7f
	db $fd                                           ; $5101: $fd
	adc a                                            ; $5102: $8f
	ld a, d                                          ; $5103: $7a
	inc b                                            ; $5104: $04
	ld a, d                                          ; $5105: $7a
	inc b                                            ; $5106: $04
	ld a, [hl-]                                      ; $5107: $3a
	add h                                            ; $5108: $84
	ld a, [hl-]                                      ; $5109: $3a
	add h                                            ; $510a: $84
	adc d                                            ; $510b: $8a
	add h                                            ; $510c: $84
	rrca                                             ; $510d: $0f
	ldh [$c7], a                                     ; $510e: $e0 $c7
	ld a, b                                          ; $5110: $78
	rlca                                             ; $5111: $07
	ld hl, sp+$67                                    ; $5112: $f8 $67
	and c                                            ; $5114: $a1
	sbc e                                            ; $5115: $9b
	rrca                                             ; $5116: $0f
	nop                                              ; $5117: $00
	rst $38                                          ; $5118: $ff
	ld bc, $747b                                     ; $5119: $01 $7b $74
	sub e                                            ; $511c: $93
	rrca                                             ; $511d: $0f
	rst $38                                          ; $511e: $ff
	ld bc, $07f9                                     ; $511f: $01 $f9 $07
	rst FarCall                                          ; $5122: $f7
	rrca                                             ; $5123: $0f
	ld sp, hl                                        ; $5124: $f9
	rra                                              ; $5125: $1f
	pop hl                                           ; $5126: $e1
	ld a, a                                          ; $5127: $7f
	add c                                            ; $5128: $81
	halt                                             ; $5129: $76
	pop bc                                           ; $512a: $c1
	sbc d                                            ; $512b: $9a
	rst $38                                          ; $512c: $ff
	jp nc, $d5ed                                     ; $512d: $d2 $ed $d5

	ld [$fc5f], a                                    ; $5130: $ea $5f $fc
	add e                                            ; $5133: $83
	rst SubAFromHL                                          ; $5134: $d7
	add sp, -$46                                     ; $5135: $e8 $ba
	ld b, l                                          ; $5137: $45
	ld [hl], l                                       ; $5138: $75
	sbc d                                            ; $5139: $9a
	ld a, [$7575]                                    ; $513a: $fa $75 $75
	ld a, [$05fa]                                    ; $513d: $fa $fa $05
	ld d, l                                          ; $5140: $55
	xor d                                            ; $5141: $aa
	xor d                                            ; $5142: $aa
	ld d, l                                          ; $5143: $55
	push af                                          ; $5144: $f5
	ld a, [bc]                                       ; $5145: $0a
	xor d                                            ; $5146: $aa
	ld d, l                                          ; $5147: $55
	ld e, l                                          ; $5148: $5d
	and d                                            ; $5149: $a2
	cp d                                             ; $514a: $ba
	ld c, l                                          ; $514b: $4d
	ld a, l                                          ; $514c: $7d
	cp d                                             ; $514d: $ba
	cp d                                             ; $514e: $ba
	ld a, l                                          ; $514f: $7d
	ld [hl], a                                       ; $5150: $77
	ldh a, [$7b]                                     ; $5151: $f0 $7b
	ld l, h                                          ; $5153: $6c
	ld a, l                                          ; $5154: $7d
	or [hl]                                          ; $5155: $b6
	sub c                                            ; $5156: $91
	ret nz                                           ; $5157: $c0

	and c                                            ; $5158: $a1
	ld h, b                                          ; $5159: $60
	ld l, a                                          ; $515a: $6f
	or b                                             ; $515b: $b0
	or a                                             ; $515c: $b7
	ld d, b                                          ; $515d: $50
	ld e, e                                          ; $515e: $5b
	cp b                                             ; $515f: $b8
	xor c                                            ; $5160: $a9
	ld e, h                                          ; $5161: $5c
	ld d, h                                          ; $5162: $54
	xor h                                            ; $5163: $ac
	db $e4                                           ; $5164: $e4
	sbc $ff                                          ; $5165: $de $ff
	add b                                            ; $5167: $80
	or $07                                           ; $5168: $f6 $07
	db $fd                                           ; $516a: $fd
	rla                                              ; $516b: $17
	db $db                                           ; $516c: $db
	rla                                              ; $516d: $17
	rst JumpTable                                          ; $516e: $c7
	rra                                              ; $516f: $1f
	ld c, $1f                                        ; $5170: $0e $1f
	ld a, l                                          ; $5172: $7d
	ccf                                              ; $5173: $3f

jr_047_5174:
	jr nc, jr_047_5174                               ; $5174: $30 $fe

	ld [hl], b                                       ; $5176: $70
	cp $74                                           ; $5177: $fe $74
	ld a, [$fad4]                                    ; $5179: $fa $d4 $fa
	or b                                             ; $517c: $b0
	or $50                                           ; $517d: $f6 $50
	di                                               ; $517f: $f3
	or d                                             ; $5180: $b2
	di                                               ; $5181: $f3
	ld d, b                                          ; $5182: $50
	di                                               ; $5183: $f3
	ld de, $9a11                                     ; $5184: $11 $11 $9a
	ld a, a                                          ; $5187: $7f
	ld c, l                                          ; $5188: $4d
	add b                                            ; $5189: $80
	dec c                                            ; $518a: $0d
	db $db                                           ; $518b: $db
	dec sp                                           ; $518c: $3b
	ld [hl], a                                       ; $518d: $77
	rst FarCall                                          ; $518e: $f7
	db $eb                                           ; $518f: $eb
	xor $d2                                          ; $5190: $ee $d2
	ret c                                            ; $5192: $d8

	and h                                            ; $5193: $a4
	or c                                             ; $5194: $b1
	dec sp                                           ; $5195: $3b
	rst $38                                          ; $5196: $ff
	ld a, e                                          ; $5197: $7b
	rst AddAOntoHL                                          ; $5198: $ef
	ld sp, hl                                        ; $5199: $f9
	rst SubAFromDE                                          ; $519a: $df
	sbc c                                            ; $519b: $99
	sbc a                                            ; $519c: $9f
	or l                                             ; $519d: $b5
	dec sp                                           ; $519e: $3b
	ld [hl], l                                       ; $519f: $75
	ld a, e                                          ; $51a0: $7b
	ld h, l                                          ; $51a1: $65
	ei                                               ; $51a2: $fb
	ld l, l                                          ; $51a3: $6d
	di                                               ; $51a4: $f3
	add hl, hl                                       ; $51a5: $29
	or c                                             ; $51a6: $b1
	db $10                                           ; $51a7: $10
	ld hl, sp-$80                                    ; $51a8: $f8 $80
	ld [$85ec], sp                                   ; $51aa: $08 $ec $85
	or a                                             ; $51ad: $b7
	add e                                            ; $51ae: $83
	rst $38                                          ; $51af: $ff
	add d                                            ; $51b0: $82
	rst SubAFromDE                                          ; $51b1: $df
	call nz, $f0df                                   ; $51b2: $c4 $df $f0
	rst $38                                          ; $51b5: $ff
	ld b, d                                          ; $51b6: $42
	pop af                                           ; $51b7: $f1
	ret nz                                           ; $51b8: $c0

	call $c198                                       ; $51b9: $cd $98 $c1
	cp [hl]                                          ; $51bc: $be
	add e                                            ; $51bd: $83
	cp l                                             ; $51be: $bd
	add [hl]                                         ; $51bf: $86
	ld hl, sp-$31                                    ; $51c0: $f8 $cf
	add b                                            ; $51c2: $80
	ld a, a                                          ; $51c3: $7f
	inc a                                            ; $51c4: $3c
	pop bc                                           ; $51c5: $c1
	inc b                                            ; $51c6: $04
	db $fc                                           ; $51c7: $fc
	ld [$f895], sp                                   ; $51c8: $08 $95 $f8
	ld d, b                                          ; $51cb: $50
	ldh a, [$60]                                     ; $51cc: $f0 $60
	ldh [$61], a                                     ; $51ce: $e0 $61
	ldh [$72], a                                     ; $51d0: $e0 $72
	pop af                                           ; $51d2: $f1
	ld a, $7b                                        ; $51d3: $3e $7b
	scf                                              ; $51d5: $37
	ld a, a                                          ; $51d6: $7f
	ld a, h                                          ; $51d7: $7c
	sub c                                            ; $51d8: $91
	rst FarCall                                          ; $51d9: $f7
	ld [$00f8], sp                                   ; $51da: $08 $f8 $00
	ret nz                                           ; $51dd: $c0

	nop                                              ; $51de: $00
	ccf                                              ; $51df: $3f
	ccf                                              ; $51e0: $3f
	db $fc                                           ; $51e1: $fc
	jp $f907                                         ; $51e2: $c3 $07 $f9


	rst $38                                          ; $51e5: $ff
	call c, $2477                                    ; $51e6: $dc $77 $24
	cp $96                                           ; $51e9: $fe $96
	rst $38                                          ; $51eb: $ff
	db $eb                                           ; $51ec: $eb
	rst $38                                          ; $51ed: $ff
	db $dd                                           ; $51ee: $dd
	ld h, c                                          ; $51ef: $61
	rst $38                                          ; $51f0: $ff
	rst $38                                          ; $51f1: $ff
	pop af                                           ; $51f2: $f1
	ld b, c                                          ; $51f3: $41
	ld [hl], a                                       ; $51f4: $77
	ldh a, [$9e]                                     ; $51f5: $f0 $9e
	push af                                          ; $51f7: $f5
	ld a, d                                          ; $51f8: $7a
	add sp, $7c                                      ; $51f9: $e8 $7c
	or h                                             ; $51fb: $b4
	sub [hl]                                         ; $51fc: $96
	cp b                                             ; $51fd: $b8
	cp $86                                           ; $51fe: $fe $86
	adc a                                            ; $5200: $8f
	pop hl                                           ; $5201: $e1
	di                                               ; $5202: $f3
	rst $38                                          ; $5203: $ff
	nop                                              ; $5204: $00
	ld [$b670], a                                    ; $5205: $ea $70 $b6
	ei                                               ; $5208: $fb
	sbc d                                            ; $5209: $9a
	add b                                            ; $520a: $80
	ret nz                                           ; $520b: $c0

	ld d, b                                          ; $520c: $50
	nop                                              ; $520d: $00
	add b                                            ; $520e: $80
	db $f4                                           ; $520f: $f4
	ld l, a                                          ; $5210: $6f
	jp nz, $ffdd                                     ; $5211: $c2 $dd $ff

	halt                                             ; $5214: $76
	reti                                             ; $5215: $d9


	rst SubAFromDE                                          ; $5216: $df
	rst $38                                          ; $5217: $ff
	ld a, [hl]                                       ; $5218: $7e
	sbc $ff                                          ; $5219: $de $ff
	sbc l                                            ; $521b: $9d
	rra                                              ; $521c: $1f
	ldh [$6f], a                                     ; $521d: $e0 $6f
	ldh a, [$7e]                                     ; $521f: $f0 $7e
	ldh [c], a                                       ; $5221: $e2
	ld [hl], a                                       ; $5222: $77
	ld a, [$039a]                                    ; $5223: $fa $9a $03
	rrca                                             ; $5226: $0f
	ret nz                                           ; $5227: $c0

	nop                                              ; $5228: $00
	add b                                            ; $5229: $80
	sbc $ff                                          ; $522a: $de $ff
	sbc [hl]                                         ; $522c: $9e
	rra                                              ; $522d: $1f
	sbc $ff                                          ; $522e: $de $ff
	ld a, a                                          ; $5230: $7f
	adc a                                            ; $5231: $8f
	ld [hl], a                                       ; $5232: $77
	db $ec                                           ; $5233: $ec
	sbc h                                            ; $5234: $9c
	ld b, $01                                        ; $5235: $06 $01
	db $10                                           ; $5237: $10
	ld a, e                                          ; $5238: $7b
	sbc $77                                          ; $5239: $de $77
	ret nc                                           ; $523b: $d0

	sub h                                            ; $523c: $94
	push hl                                          ; $523d: $e5
	ld hl, sp-$11                                    ; $523e: $f8 $ef
	ret nz                                           ; $5240: $c0

	rst AddAOntoHL                                          ; $5241: $ef
	rst GetHLinHL                                          ; $5242: $cf
	ld l, a                                          ; $5243: $6f
	rst GetHLinHL                                          ; $5244: $cf
	nop                                              ; $5245: $00
	rrca                                             ; $5246: $0f
	ret nz                                           ; $5247: $c0

	ld [hl], a                                       ; $5248: $77
	ret nc                                           ; $5249: $d0

	sbc l                                            ; $524a: $9d
	cp $54                                           ; $524b: $fe $54
	ld [hl], a                                       ; $524d: $77
	db $eb                                           ; $524e: $eb
	ld a, e                                          ; $524f: $7b
	db $e4                                           ; $5250: $e4
	ld a, a                                          ; $5251: $7f
	jp c, Jump_047_6e76                              ; $5252: $da $76 $6e

	ld [hl], a                                       ; $5255: $77
	and h                                            ; $5256: $a4
	ld a, [hl]                                       ; $5257: $7e
	cp b                                             ; $5258: $b8
	ld a, [hl]                                       ; $5259: $7e
	ld a, h                                          ; $525a: $7c
	ld a, a                                          ; $525b: $7f
	ld a, [hl+]                                      ; $525c: $2a
	rst SubAFromDE                                          ; $525d: $df
	rst $38                                          ; $525e: $ff
	add b                                            ; $525f: $80
	ld d, [hl]                                       ; $5260: $56
	xor a                                            ; $5261: $af
	ld a, $ff                                        ; $5262: $3e $ff
	ld a, [hl]                                       ; $5264: $7e
	cp a                                             ; $5265: $bf
	add $3f                                          ; $5266: $c6 $3f
	ld d, h                                          ; $5268: $54
	ld b, $83                                        ; $5269: $06 $83
	rlca                                             ; $526b: $07
	db $fd                                           ; $526c: $fd
	rrca                                             ; $526d: $0f
	rst $38                                          ; $526e: $ff
	rst $38                                          ; $526f: $ff
	xor d                                            ; $5270: $aa
	rst $38                                          ; $5271: $ff
	ld d, l                                          ; $5272: $55
	rst $38                                          ; $5273: $ff
	dec bc                                           ; $5274: $0b
	rst $38                                          ; $5275: $ff
	rla                                              ; $5276: $17
	cp $ea                                           ; $5277: $fe $ea
	ld a, a                                          ; $5279: $7f
	ld d, a                                          ; $527a: $57
	rst $38                                          ; $527b: $ff
	cp l                                             ; $527c: $bd
	ld a, [$8072]                                    ; $527d: $fa $72 $80
	pop hl                                           ; $5280: $e1
	ret z                                            ; $5281: $c8

	add a                                            ; $5282: $87
	and b                                            ; $5283: $a0
	rra                                              ; $5284: $1f
	ld b, c                                          ; $5285: $41
	ccf                                              ; $5286: $3f
	scf                                              ; $5287: $37
	rst $38                                          ; $5288: $ff
	and e                                            ; $5289: $a3
	db $fd                                           ; $528a: $fd
	jp $fffe                                         ; $528b: $c3 $fe $ff


	dec c                                            ; $528e: $0d
	rra                                              ; $528f: $1f
	db $eb                                           ; $5290: $eb
	ld bc, $60fe                                     ; $5291: $01 $fe $60
	rst $38                                          ; $5294: $ff
	or b                                             ; $5295: $b0
	rst $38                                          ; $5296: $ff
	db $10                                           ; $5297: $10
	rst $38                                          ; $5298: $ff
	adc d                                            ; $5299: $8a
	ld h, c                                          ; $529a: $61

Jump_047_529b:
	ldh a, [$cb]                                     ; $529b: $f0 $cb
	ret nz                                           ; $529d: $c0

	sub a                                            ; $529e: $97
	adc [hl]                                         ; $529f: $8e
	add b                                            ; $52a0: $80
	cpl                                              ; $52a1: $2f
	add b                                            ; $52a2: $80
	ld e, l                                          ; $52a3: $5d
	nop                                              ; $52a4: $00
	ld sp, hl                                        ; $52a5: $f9
	nop                                              ; $52a6: $00
	pop af                                           ; $52a7: $f1
	db $10                                           ; $52a8: $10
	ld [$f36d], a                                    ; $52a9: $ea $6d $f3
	ld a, l                                          ; $52ac: $7d
	db $e3                                           ; $52ad: $e3
	dec [hl]                                         ; $52ae: $35
	db $e3                                           ; $52af: $e3
	dec h                                            ; $52b0: $25
	ld [hl], e                                       ; $52b1: $73
	cp $9d                                           ; $52b2: $fe $9d
	cp l                                             ; $52b4: $bd
	ld a, e                                          ; $52b5: $7b
	ld a, d                                          ; $52b6: $7a
	ld l, $78                                        ; $52b7: $2e $78
	ld b, b                                          ; $52b9: $40
	sub h                                            ; $52ba: $94
	ld c, $ff                                        ; $52bb: $0e $ff
	pop af                                           ; $52bd: $f1
	di                                               ; $52be: $f3
	ld l, d                                          ; $52bf: $6a
	di                                               ; $52c0: $f3
	ld hl, sp+$1e                                    ; $52c1: $f8 $1e
	rst $38                                          ; $52c3: $ff
	rrca                                             ; $52c4: $0f
	ccf                                              ; $52c5: $3f
	ld a, e                                          ; $52c6: $7b
	adc e                                            ; $52c7: $8b
	ld a, c                                          ; $52c8: $79
	ld h, e                                          ; $52c9: $63
	adc e                                            ; $52ca: $8b
	rst SubAFromBC                                          ; $52cb: $e7
	sbc a                                            ; $52cc: $9f
	push bc                                          ; $52cd: $c5
	rra                                              ; $52ce: $1f
	add l                                            ; $52cf: $85
	rra                                              ; $52d0: $1f
	dec b                                            ; $52d1: $05
	rra                                              ; $52d2: $1f
	dec b                                            ; $52d3: $05
	cp a                                             ; $52d4: $bf
	and l                                            ; $52d5: $a5
	nop                                              ; $52d6: $00
	rst $38                                          ; $52d7: $ff
	call c, $9d9f                                    ; $52d8: $dc $9f $9d
	ld c, h                                          ; $52db: $4c
	pop de                                           ; $52dc: $d1
	nop                                              ; $52dd: $00
	db $d3                                           ; $52de: $d3
	ld [hl], e                                       ; $52df: $73
	cp $80                                           ; $52e0: $fe $80
	jp nc, $0301                                     ; $52e2: $d2 $01 $03

	db $fc                                           ; $52e5: $fc
	ld h, b                                          ; $52e6: $60
	ld a, a                                          ; $52e7: $7f
	pop bc                                           ; $52e8: $c1
	cp $5a                                           ; $52e9: $fe $5a
	ld a, b                                          ; $52eb: $78
	ld l, a                                          ; $52ec: $6f
	nop                                              ; $52ed: $00
	ld l, h                                          ; $52ee: $6c
	inc bc                                           ; $52ef: $03
	ld h, [hl]                                       ; $52f0: $66
	rra                                              ; $52f1: $1f
	ld a, h                                          ; $52f2: $7c
	db $e4                                           ; $52f3: $e4
	ldh a, [c]                                       ; $52f4: $f2
	ld c, l                                          ; $52f5: $4d
	ld [$1441], a                                    ; $52f6: $ea $41 $14
	ld b, c                                          ; $52f9: $41
	xor b                                            ; $52fa: $a8
	ld b, c                                          ; $52fb: $41
	cp [hl]                                          ; $52fc: $be
	ld b, c                                          ; $52fd: $41
	ldh a, [rIE]                                     ; $52fe: $f0 $ff
	inc bc                                           ; $5300: $03
	ld a, e                                          ; $5301: $7b

jr_047_5302:
	ld c, a                                          ; $5302: $4f
	sbc c                                            ; $5303: $99
	inc [hl]                                         ; $5304: $34
	ld hl, sp+$24                                    ; $5305: $f8 $24
	add [hl]                                         ; $5307: $86
	ld b, b                                          ; $5308: $40
	add c                                            ; $5309: $81
	ld a, d                                          ; $530a: $7a
	db $db                                           ; $530b: $db
	ld a, e                                          ; $530c: $7b
	cp $df                                           ; $530d: $fe $df
	add b                                            ; $530f: $80
	adc l                                            ; $5310: $8d
	and b                                            ; $5311: $a0
	db $e3                                           ; $5312: $e3
	and b                                            ; $5313: $a0
	ld b, b                                          ; $5314: $40
	db $10                                           ; $5315: $10
	ld h, b                                          ; $5316: $60
	jr c, @-$3e                                      ; $5317: $38 $c0

	inc h                                            ; $5319: $24
	ret z                                            ; $531a: $c8

	ld d, d                                          ; $531b: $52
	inc h                                            ; $531c: $24
	inc de                                           ; $531d: $13
	ld a, [bc]                                       ; $531e: $0a
	rst $38                                          ; $531f: $ff
	inc b                                            ; $5320: $04
	ccf                                              ; $5321: $3f
	pop bc                                           ; $5322: $c1
	ld a, b                                          ; $5323: $78
	or d                                             ; $5324: $b2
	sbc e                                            ; $5325: $9b
	nop                                              ; $5326: $00
	ld b, b                                          ; $5327: $40
	nop                                              ; $5328: $00
	adc d                                            ; $5329: $8a
	ld a, b                                          ; $532a: $78
	ld l, h                                          ; $532b: $6c
	ld a, a                                          ; $532c: $7f
	or $98                                           ; $532d: $f6 $98
	add a                                            ; $532f: $87
	ld a, b                                          ; $5330: $78
	jr nc, jr_047_5302                               ; $5331: $30 $cf

	rst $38                                          ; $5333: $ff
	rst $38                                          ; $5334: $ff
	ld [bc], a                                       ; $5335: $02
	ld [hl], e                                       ; $5336: $73
	cp $fd                                           ; $5337: $fe $fd
	db $dd                                           ; $5339: $dd
	ld a, a                                          ; $533a: $7f
	ld [hl], a                                       ; $533b: $77
	inc b                                            ; $533c: $04
	halt                                             ; $533d: $76
	ei                                               ; $533e: $fb
	sbc [hl]                                         ; $533f: $9e
	add hl, bc                                       ; $5340: $09
	sbc $0f                                          ; $5341: $de $0f
	sub [hl]                                         ; $5343: $96
	ret                                              ; $5344: $c9


	rst GetHLinHL                                          ; $5345: $cf
	ret z                                            ; $5346: $c8

	rst GetHLinHL                                          ; $5347: $cf
	ei                                               ; $5348: $fb
	db $fd                                           ; $5349: $fd
	ei                                               ; $534a: $fb
	db $fd                                           ; $534b: $fd
	dec de                                           ; $534c: $1b
	ld a, e                                          ; $534d: $7b
	cp $77                                           ; $534e: $fe $77
	ld hl, sp+$7f                                    ; $5350: $f8 $7f
	cp $94                                           ; $5352: $fe $94
	ld a, [de]                                       ; $5354: $1a
	db $fd                                           ; $5355: $fd
	ldh [rIE], a                                     ; $5356: $e0 $ff
	db $eb                                           ; $5358: $eb
	ei                                               ; $5359: $fb
	adc c                                            ; $535a: $89
	ld a, c                                          ; $535b: $79
	adc c                                            ; $535c: $89
	ld a, c                                          ; $535d: $79
	rst AddAOntoHL                                          ; $535e: $ef
	ld a, d                                          ; $535f: $7a
	reti                                             ; $5360: $d9


	sbc [hl]                                         ; $5361: $9e
	pop hl                                           ; $5362: $e1
	ld a, b                                          ; $5363: $78
	and b                                            ; $5364: $a0
	ld a, a                                          ; $5365: $7f
	sub $df                                          ; $5366: $d6 $df
	sub $df                                          ; $5368: $d6 $df
	ld l, a                                          ; $536a: $6f
	rst SubAFromDE                                          ; $536b: $df
	ld a, l                                          ; $536c: $7d
	rst SubAFromDE                                          ; $536d: $df

Jump_047_536e:
	rst $38                                          ; $536e: $ff
	add [hl]                                         ; $536f: $86
	rst JumpTable                                          ; $5370: $c7
	ld hl, sp-$20                                    ; $5371: $f8 $e0
	sbc a                                            ; $5373: $9f
	db $fc                                           ; $5374: $fc
	ld a, a                                          ; $5375: $7f
	nop                                              ; $5376: $00
	rst $38                                          ; $5377: $ff
	db $ec                                           ; $5378: $ec
	db $ed                                           ; $5379: $ed
	cp h                                             ; $537a: $bc
	cp l                                             ; $537b: $bd
	db $ec                                           ; $537c: $ec
	db $ed                                           ; $537d: $ed
	inc a                                            ; $537e: $3c
	rst $38                                          ; $537f: $ff
	jr nc, @-$2f                                     ; $5380: $30 $cf

	ld sp, hl                                        ; $5382: $f9
	ld h, $78                                        ; $5383: $26 $78
	sub a                                            ; $5385: $97
	ld a, [hl]                                       ; $5386: $7e
	add a                                            ; $5387: $87
	ccf                                              ; $5388: $3f
	ld a, e                                          ; $5389: $7b
	ld l, $9d                                        ; $538a: $2e $9d
	ld b, a                                          ; $538c: $47
	cp a                                             ; $538d: $bf
	ld a, e                                          ; $538e: $7b
	ld hl, sp-$7d                                    ; $538f: $f8 $83
	cp $3f                                           ; $5391: $fe $3f
	cp $87                                           ; $5393: $fe $87
	ld a, [hl]                                       ; $5395: $7e
	xor a                                            ; $5396: $af
	cp $5e                                           ; $5397: $fe $5e
	db $fd                                           ; $5399: $fd
	rst $38                                          ; $539a: $ff
	db $fd                                           ; $539b: $fd
	cp $ff                                           ; $539c: $fe $ff
	rrca                                             ; $539e: $0f
	db $fd                                           ; $539f: $fd
	rst FarCall                                          ; $53a0: $f7
	rrca                                             ; $53a1: $0f
	rst FarCall                                          ; $53a2: $f7
	rrca                                             ; $53a3: $0f
	ldh a, [rIF]                                     ; $53a4: $f0 $0f
	sub $7f                                          ; $53a6: $d6 $7f

jr_047_53a8:
	xor e                                            ; $53a8: $ab
	rst $38                                          ; $53a9: $ff
	ld e, h                                          ; $53aa: $5c
	rst $38                                          ; $53ab: $ff
	cp $dd                                           ; $53ac: $fe $dd
	rst $38                                          ; $53ae: $ff
	sub l                                            ; $53af: $95
	add e                                            ; $53b0: $83
	db $fd                                           ; $53b1: $fd
	add e                                            ; $53b2: $83
	ld a, h                                          ; $53b3: $7c
	add e                                            ; $53b4: $83
	cpl                                              ; $53b5: $2f
	rst $38                                          ; $53b6: $ff
	ld d, a                                          ; $53b7: $57
	rst $38                                          ; $53b8: $ff
	ld e, $dc                                        ; $53b9: $1e $dc
	rst $38                                          ; $53bb: $ff
	ld a, e                                          ; $53bc: $7b
	sub [hl]                                         ; $53bd: $96
	add b                                            ; $53be: $80
	ldh a, [$0b]                                     ; $53bf: $f0 $0b
	ldh a, [rLCDC]                                   ; $53c1: $f0 $40
	xor l                                            ; $53c3: $ad
	cp b                                             ; $53c4: $b8
	jp nz, $e5d8                                     ; $53c5: $c2 $d8 $e5

	call c, $dce2                                    ; $53c8: $dc $e2 $dc
	ldh [rAUD2LOW], a                                ; $53cb: $e0 $18
	rst SubAFromBC                                          ; $53cd: $e7
	rst SubAFromHL                                          ; $53ce: $d7
	jr c, jr_047_53a8                                ; $53cf: $38 $d7

	jr c, jr_047_5437                                ; $53d1: $38 $64

	rra                                              ; $53d3: $1f
	dec bc                                           ; $53d4: $0b
	inc a                                            ; $53d5: $3c
	jr jr_047_5457                                   ; $53d6: $18 $7f

	ld [hl], $7f                                     ; $53d8: $36 $7f
	dec e                                            ; $53da: $1d
	rst $38                                          ; $53db: $ff
	cpl                                              ; $53dc: $2f
	rst SubAFromDE                                          ; $53dd: $df
	sub h                                            ; $53de: $94
	cp a                                             ; $53df: $bf
	ld e, b                                          ; $53e0: $58
	add a                                            ; $53e1: $87
	ld a, b                                          ; $53e2: $78
	add b                                            ; $53e3: $80
	ld a, a                                          ; $53e4: $7f
	dec bc                                           ; $53e5: $0b
	cp $bc                                           ; $53e6: $fe $bc
	rst $38                                          ; $53e8: $ff
	push af                                          ; $53e9: $f5
	ld a, c                                          ; $53ea: $79
	ret nz                                           ; $53eb: $c0

	ld a, a                                          ; $53ec: $7f
	cp h                                             ; $53ed: $bc
	add b                                            ; $53ee: $80
	cp a                                             ; $53ef: $bf
	ld [hl], b                                       ; $53f0: $70
	cp c                                             ; $53f1: $b9
	ld [hl], b                                       ; $53f2: $70
	rst JumpTable                                          ; $53f3: $c7
	ccf                                              ; $53f4: $3f
	and c                                            ; $53f5: $a1
	ld e, a                                          ; $53f6: $5f
	db $10                                           ; $53f7: $10
	rst $38                                          ; $53f8: $ff
	call z, Call_047_4eff                            ; $53f9: $cc $ff $4e
	rst $38                                          ; $53fc: $ff
	cp a                                             ; $53fd: $bf
	rst $38                                          ; $53fe: $ff
	rst $38                                          ; $53ff: $ff
	jp $c367                                         ; $5400: $c3 $67 $c3


	pop hl                                           ; $5403: $e1
	ld e, $cc                                        ; $5404: $1e $cc
	cp a                                             ; $5406: $bf
	ld b, [hl]                                       ; $5407: $46
	rst $38                                          ; $5408: $ff
	ld l, e                                          ; $5409: $6b
	rst $38                                          ; $540a: $ff
	rst SubAFromBC                                          ; $540b: $e7
	rst $38                                          ; $540c: $ff
	rst FarCall                                          ; $540d: $f7
	adc a                                            ; $540e: $8f
	rst $38                                          ; $540f: $ff
	inc c                                            ; $5410: $0c
	rst $38                                          ; $5411: $ff
	sbc l                                            ; $5412: $9d
	ld c, $20                                        ; $5413: $0e $20
	ret nz                                           ; $5415: $c0

	add hl, bc                                       ; $5416: $09
	or $96                                           ; $5417: $f6 $96
	jp hl                                            ; $5419: $e9


	ccf                                              ; $541a: $3f
	ret nz                                           ; $541b: $c0

	ld a, [hl]                                       ; $541c: $7e
	pop bc                                           ; $541d: $c1
	ret nz                                           ; $541e: $c0

	ld a, c                                          ; $541f: $79
	xor $80                                          ; $5420: $ee $80
	rra                                              ; $5422: $1f
	dec sp                                           ; $5423: $3b
	rlca                                             ; $5424: $07
	nop                                              ; $5425: $00
	ld h, l                                          ; $5426: $65
	ld a, [$3afd]                                    ; $5427: $fa $fd $3a
	sub l                                            ; $542a: $95
	ld l, [hl]                                       ; $542b: $6e
	dec b                                            ; $542c: $05
	cp $f4                                           ; $542d: $fe $f4
	rst $38                                          ; $542f: $ff
	sbc h                                            ; $5430: $9c
	rst $38                                          ; $5431: $ff
	adc a                                            ; $5432: $8f
	ccf                                              ; $5433: $3f
	ldh [c], a                                       ; $5434: $e2
	ld e, $1c                                        ; $5435: $1e $1c

jr_047_5437:
	inc bc                                           ; $5437: $03
	ld c, h                                          ; $5438: $4c
	sub e                                            ; $5439: $93
	ld c, l                                          ; $543a: $4d
	sub d                                            ; $543b: $92
	call c, $0503                                    ; $543c: $dc $03 $05
	db $e3                                           ; $543f: $e3
	nop                                              ; $5440: $00
	ld a, a                                          ; $5441: $7f
	xor h                                            ; $5442: $ac
	sub c                                            ; $5443: $91
	pop hl                                           ; $5444: $e1
	cp $00                                           ; $5445: $fe $00
	ld a, h                                          ; $5447: $7c
	nop                                              ; $5448: $00
	cp a                                             ; $5449: $bf
	ld b, b                                          ; $544a: $40
	add hl, bc                                       ; $544b: $09
	or $90                                           ; $544c: $f6 $90
	ld a, a                                          ; $544e: $7f
	jr z, @+$01                                      ; $544f: $28 $ff

	or d                                             ; $5451: $b2
	sbc $ff                                          ; $5452: $de $ff
	sub d                                            ; $5454: $92
	and b                                            ; $5455: $a0
	ld b, a                                          ; $5456: $47

jr_047_5457:
	ld b, b                                          ; $5457: $40
	daa                                              ; $5458: $27
	db $e3                                           ; $5459: $e3
	rra                                              ; $545a: $1f
	add sp, -$01                                     ; $545b: $e8 $ff
	ld e, a                                          ; $545d: $5f
	ld hl, sp+$3d                                    ; $545e: $f8 $3d
	di                                               ; $5460: $f3
	rst SubAFromDE                                          ; $5461: $df
	ld a, e                                          ; $5462: $7b
	sbc h                                            ; $5463: $9c
	sbc b                                            ; $5464: $98
	ld l, d                                          ; $5465: $6a
	ld a, a                                          ; $5466: $7f
	ld d, l                                          ; $5467: $55
	ld a, a                                          ; $5468: $7f
	ld b, d                                          ; $5469: $42
	ld a, a                                          ; $546a: $7f
	ld b, c                                          ; $546b: $41
	ld a, e                                          ; $546c: $7b
	db $fc                                           ; $546d: $fc
	sub [hl]                                         ; $546e: $96
	ld b, e                                          ; $546f: $43
	ld d, a                                          ; $5470: $57
	ld b, e                                          ; $5471: $43

jr_047_5472:
	ld l, a                                          ; $5472: $6f
	ld b, e                                          ; $5473: $43
	ld e, a                                          ; $5474: $5f
	ret z                                            ; $5475: $c8

	rst GetHLinHL                                          ; $5476: $cf

Call_047_5477:
	ret                                              ; $5477: $c9


	ld a, e                                          ; $5478: $7b
	cp $df                                           ; $5479: $fe $df
	rst GetHLinHL                                          ; $547b: $cf
	halt                                             ; $547c: $76
	call nz, $f477                                   ; $547d: $c4 $77 $f4
	ld a, [hl]                                       ; $5480: $7e
	adc $7f                                          ; $5481: $ce $7f
	and c                                            ; $5483: $a1
	ld l, a                                          ; $5484: $6f
	cp $9e                                           ; $5485: $fe $9e
	sbc d                                            ; $5487: $9a
	ld a, e                                          ; $5488: $7b
	cp $7f                                           ; $5489: $fe $7f
	ld a, [$8398]                                    ; $548b: $fa $98 $83
	ld a, [hl]                                       ; $548e: $7e
	push hl                                          ; $548f: $e5
	cp $e6                                           ; $5490: $fe $e6
	db $fd                                           ; $5492: $fd
	rst SubAFromBC                                          ; $5493: $e7
	ld a, e                                          ; $5494: $7b
	cp $94                                           ; $5495: $fe $94
	add a                                            ; $5497: $87
	ld a, l                                          ; $5498: $7d
	cp a                                             ; $5499: $bf
	ld a, l                                          ; $549a: $7d

Call_047_549b:
	rst SubAFromBC                                          ; $549b: $e7
	db $fd                                           ; $549c: $fd
	ld a, $ff                                        ; $549d: $3e $ff
	ld [hl], c                                       ; $549f: $71
	rst $38                                          ; $54a0: $ff
	ld h, b                                          ; $54a1: $60
	sbc $ff                                          ; $54a2: $de $ff
	sub d                                            ; $54a4: $92
	reti                                             ; $54a5: $d9


	pop af                                           ; $54a6: $f1
	reti                                             ; $54a7: $d9


	pop af                                           ; $54a8: $f1
	or l                                             ; $54a9: $b5
	ei                                               ; $54aa: $fb
	rst AddAOntoHL                                          ; $54ab: $ef
	rst FarCall                                          ; $54ac: $f7
	ld d, h                                          ; $54ad: $54
	db $eb                                           ; $54ae: $eb
	and h                                            ; $54af: $a4
	ei                                               ; $54b0: $fb
	call nc, $fe5b                                   ; $54b1: $d4 $5b $fe
	adc e                                            ; $54b4: $8b
	cp l                                             ; $54b5: $bd
	ld c, a                                          ; $54b6: $4f
	cp a                                             ; $54b7: $bf
	ld a, a                                          ; $54b8: $7f
	ld [hl], a                                       ; $54b9: $77
	cp a                                             ; $54ba: $bf
	ld a, d                                          ; $54bb: $7a
	adc c                                            ; $54bc: $89
	dec c                                            ; $54bd: $0d
	ei                                               ; $54be: $fb
	scf                                              ; $54bf: $37
	cp $3d                                           ; $54c0: $fe $3d
	ld a, [$b659]                                    ; $54c2: $fa $59 $b6
	ld [hl], b                                       ; $54c5: $70
	adc a                                            ; $54c6: $8f
	rst $38                                          ; $54c7: $ff
	add b                                            ; $54c8: $80
	ld [hl], l                                       ; $54c9: $75
	ld [hl-], a                                      ; $54ca: $32
	ld a, a                                          ; $54cb: $7f
	ld b, d                                          ; $54cc: $42
	sub a                                            ; $54cd: $97
	ldh [$3f], a                                     ; $54ce: $e0 $3f
	ld a, [$f415]                                    ; $54d0: $fa $15 $f4
	dec de                                           ; $54d3: $1b
	ld a, h                                          ; $54d4: $7c
	add e                                            ; $54d5: $83
	ld a, d                                          ; $54d6: $7a
	ld b, l                                          ; $54d7: $45
	ld [hl], c                                       ; $54d8: $71
	jr jr_047_5472                                   ; $54d9: $18 $97

	inc b                                            ; $54db: $04
	ei                                               ; $54dc: $fb
	and d                                            ; $54dd: $a2
	ld e, l                                          ; $54de: $5d
	ld d, a                                          ; $54df: $57
	xor e                                            ; $54e0: $ab
	rrca                                             ; $54e1: $0f
	ldh a, [$67]                                     ; $54e2: $f0 $67
	ldh a, [$7f]                                     ; $54e4: $f0 $7f
	cp $99                                           ; $54e6: $fe $99
	adc d                                            ; $54e8: $8a
	ld [hl], l                                       ; $54e9: $75
	push de                                          ; $54ea: $d5
	xor d                                            ; $54eb: $aa
	rst JumpTable                                          ; $54ec: $c7
	jr c, jr_047_554e                                ; $54ed: $38 $5f

	ldh a, [$7c]                                     ; $54ef: $f0 $7c
	add h                                            ; $54f1: $84
	sbc e                                            ; $54f2: $9b
	ld b, l                                          ; $54f3: $45
	cp d                                             ; $54f4: $ba
	add a                                            ; $54f5: $87
	ld a, b                                          ; $54f6: $78
	ld e, a                                          ; $54f7: $5f
	ldh a, [rPCM34]                                  ; $54f8: $f0 $77
	ret nc                                           ; $54fa: $d0

	sbc d                                            ; $54fb: $9a
	adc a                                            ; $54fc: $8f
	ld [hl], b                                       ; $54fd: $70
	rst $38                                          ; $54fe: $ff
	nop                                              ; $54ff: $00
	inc bc                                           ; $5500: $03
	sbc $ff                                          ; $5501: $de $ff
	sub h                                            ; $5503: $94
	dec b                                            ; $5504: $05
	rst $38                                          ; $5505: $ff
	ld b, $fd                                        ; $5506: $06 $fd
	and a                                            ; $5508: $a7
	ld e, a                                          ; $5509: $5f
	rrca                                             ; $550a: $0f
	rst $38                                          ; $550b: $ff
	inc a                                            ; $550c: $3c
	jp Jump_047_70ff                                 ; $550d: $c3 $ff $70


	jp nc, $a07f                                     ; $5510: $d2 $7f $a0

	sub a                                            ; $5513: $97
	sub l                                            ; $5514: $95
	ld [$ffe0], a                                    ; $5515: $ea $e0 $ff
	push af                                          ; $5518: $f5
	ld a, [$0cf3]                                    ; $5519: $fa $f3 $0c
	ld h, a                                          ; $551c: $67
	ret nc                                           ; $551d: $d0

	sub a                                            ; $551e: $97
	ld d, b                                          ; $551f: $50
	xor a                                            ; $5520: $af
	dec [hl]                                         ; $5521: $35
	ld a, [$bd72]                                    ; $5522: $fa $72 $bd
	rst SubAFromBC                                          ; $5525: $e7
	add hl, de                                       ; $5526: $19
	ld l, a                                          ; $5527: $6f
	ldh a, [$7f]                                     ; $5528: $f0 $7f
	sub $7f                                          ; $552a: $d6 $7f
	ld l, [hl]                                       ; $552c: $6e
	sub a                                            ; $552d: $97
	ld e, l                                          ; $552e: $5d
	xor e                                            ; $552f: $ab
	adc a                                            ; $5530: $8f
	ld a, a                                          ; $5531: $7f
	ret                                              ; $5532: $c9


	ld a, $cb                                        ; $5533: $3e $cb
	inc a                                            ; $5535: $3c
	ld a, e                                          ; $5536: $7b
	cp $84                                           ; $5537: $fe $84
	cp h                                             ; $5539: $bc
	srl h                                            ; $553a: $cb $3c
	adc e                                            ; $553c: $8b
	ld a, h                                          ; $553d: $7c
	adc e                                            ; $553e: $8b
	db $fc                                           ; $553f: $fc
	adc e                                            ; $5540: $8b
	db $fc                                           ; $5541: $fc
	ld a, a                                          ; $5542: $7f
	ld a, h                                          ; $5543: $7c
	rst JumpTable                                          ; $5544: $c7
	cp $bb                                           ; $5545: $fe $bb
	rst GetHLinHL                                          ; $5547: $cf
	sbc a                                            ; $5548: $9f
	rst $38                                          ; $5549: $ff
	db $fd                                           ; $554a: $fd
	rst $38                                          ; $554b: $ff
	db $d3                                           ; $554c: $d3
	ld d, l                                          ; $554d: $55

jr_047_554e:
	add c                                            ; $554e: $81
	ld b, e                                          ; $554f: $43
	ld b, a                                          ; $5550: $47
	ld h, e                                          ; $5551: $63
	ld e, e                                          ; $5552: $5b
	ld c, c                                          ; $5553: $49
	ld [hl], a                                       ; $5554: $77
	ret nc                                           ; $5555: $d0

	ld a, a                                          ; $5556: $7f
	cp $95                                           ; $5557: $fe $95
	ld d, l                                          ; $5559: $55
	xor d                                            ; $555a: $aa
	xor e                                            ; $555b: $ab
	ld d, a                                          ; $555c: $57
	ld d, [hl]                                       ; $555d: $56
	xor a                                            ; $555e: $af
	xor h                                            ; $555f: $ac
	rst SubAFromHL                                          ; $5560: $d7
	ld l, l                                          ; $5561: $6d
	dec h                                            ; $5562: $25
	ld h, a                                          ; $5563: $67
	ldh a, [$99]                                     ; $5564: $f0 $99
	ld a, [$adf5]                                    ; $5566: $fa $f5 $ad
	ld e, d                                          ; $5569: $5a
	ld e, [hl]                                       ; $556a: $5e
	and l                                            ; $556b: $a5
	ld l, h                                          ; $556c: $6c
	ld b, c                                          ; $556d: $41
	ld a, l                                          ; $556e: $7d
	add b                                            ; $556f: $80
	ld a, [hl]                                       ; $5570: $7e
	jr c, @-$6a                                      ; $5571: $38 $94

	ld h, b                                          ; $5573: $60
	sbc a                                            ; $5574: $9f
	jr nc, @-$2f                                     ; $5575: $30 $cf

	ld e, b                                          ; $5577: $58
	and a                                            ; $5578: $a7
	rrca                                             ; $5579: $0f
	rrca                                             ; $557a: $0f
	add hl, bc                                       ; $557b: $09
	rrca                                             ; $557c: $0f
	ld sp, hl                                        ; $557d: $f9
	ld [hl], e                                       ; $557e: $73
	ld h, d                                          ; $557f: $62
	ld a, l                                          ; $5580: $7d
	and h                                            ; $5581: $a4
	ld a, l                                          ; $5582: $7d
	halt                                             ; $5583: $76
	ld a, a                                          ; $5584: $7f
	cp $6e                                           ; $5585: $fe $6e
	call nz, $ba7e                                   ; $5587: $c4 $7e $ba
	ld h, [hl]                                       ; $558a: $66
	cp b                                             ; $558b: $b8
	halt                                             ; $558c: $76

Call_047_558d:
	add $76                                          ; $558d: $c6 $76
	call nz, $8f9b                                   ; $558f: $c4 $9b $8f
	halt                                             ; $5592: $76
	rst AddAOntoHL                                          ; $5593: $ef
	rst FarCall                                          ; $5594: $f7
	ld [hl], a                                       ; $5595: $77
	cp $99                                           ; $5596: $fe $99
	or l                                             ; $5598: $b5
	call nz, $a477                                   ; $5599: $c4 $77 $a4
	or $2d                                           ; $559c: $f6 $2d
	ld a, e                                          ; $559e: $7b
	cp l                                             ; $559f: $bd
	sbc l                                            ; $55a0: $9d
	nop                                              ; $55a1: $00
	ldh [$7b], a                                     ; $55a2: $e0 $7b
	ld c, c                                          ; $55a4: $49
	ld a, a                                          ; $55a5: $7f
	db $fd                                           ; $55a6: $fd
	sbc l                                            ; $55a7: $9d
	ld b, $f9                                        ; $55a8: $06 $f9
	ld a, b                                          ; $55aa: $78
	xor h                                            ; $55ab: $ac
	sbc b                                            ; $55ac: $98
	rrca                                             ; $55ad: $0f
	ld a, d                                          ; $55ae: $7a
	push af                                          ; $55af: $f5
	cp e                                             ; $55b0: $bb
	inc b                                            ; $55b1: $04
	ldh [$1f], a                                     ; $55b2: $e0 $1f
	ld [hl], h                                       ; $55b4: $74
	dec a                                            ; $55b5: $3d
	add b                                            ; $55b6: $80
	dec a                                            ; $55b7: $3d
	and $f4                                          ; $55b8: $e6 $f4
	rst GetHLinHL                                          ; $55ba: $cf
	jp hl                                            ; $55bb: $e9


	ld e, $be                                        ; $55bc: $1e $be
	ld a, c                                          ; $55be: $79
	db $ed                                           ; $55bf: $ed
	sbc $fa                                          ; $55c0: $de $fa
	rst $38                                          ; $55c2: $ff
	cp c                                             ; $55c3: $b9
	cp $4a                                           ; $55c4: $fe $4a
	cp l                                             ; $55c6: $bd
	ld l, b                                          ; $55c7: $68
	sbc a                                            ; $55c8: $9f
	rst $38                                          ; $55c9: $ff
	ld [$8c7b], sp                                   ; $55ca: $08 $7b $8c
	ei                                               ; $55cd: $fb
	inc c                                            ; $55ce: $0c
	ld a, e                                          ; $55cf: $7b
	adc h                                            ; $55d0: $8c
	db $f4                                           ; $55d1: $f4
	rrca                                             ; $55d2: $0f

jr_047_55d3:
	sub $2d                                          ; $55d3: $d6 $2d
	sbc $94                                          ; $55d5: $de $94
	dec h                                            ; $55d7: $25
	inc bc                                           ; $55d8: $03
	rst $38                                          ; $55d9: $ff
	ld d, a                                          ; $55da: $57
	xor e                                            ; $55db: $ab
	and e                                            ; $55dc: $a3
	ld e, a                                          ; $55dd: $5f
	rst FarCall                                          ; $55de: $f7
	ld [$2ad5], sp                                   ; $55df: $08 $d5 $2a
	ld [hl], a                                       ; $55e2: $77
	cp h                                             ; $55e3: $bc
	ld [hl], a                                       ; $55e4: $77
	inc b                                            ; $55e5: $04

jr_047_55e6:
	sub c                                            ; $55e6: $91
	call nc, $aaab                                   ; $55e7: $d4 $ab $aa
	push de                                          ; $55ea: $d5
	cp $01                                           ; $55eb: $fe $01
	ld b, b                                          ; $55ed: $40
	cp a                                             ; $55ee: $bf
	rrca                                             ; $55ef: $0f
	ldh a, [$df]                                     ; $55f0: $f0 $df
	jr nz, jr_047_55d3                               ; $55f2: $20 $df

	jr nz, jr_047_566d                               ; $55f4: $20 $77

	ld d, [hl]                                       ; $55f6: $56
	ld a, [hl]                                       ; $55f7: $7e
	ret z                                            ; $55f8: $c8

	ld [hl], a                                       ; $55f9: $77
	ld c, h                                          ; $55fa: $4c
	sbc c                                            ; $55fb: $99
	rst AddAOntoHL                                          ; $55fc: $ef
	db $10                                           ; $55fd: $10
	rst AddAOntoHL                                          ; $55fe: $ef
	db $10                                           ; $55ff: $10
	add sp, $17                                      ; $5600: $e8 $17
	ld [hl], a                                       ; $5602: $77
	ret nc                                           ; $5603: $d0

	add b                                            ; $5604: $80
	jr c, jr_047_55e6                                ; $5605: $38 $df

	ld a, h                                          ; $5607: $7c
	sbc h                                            ; $5608: $9c
	inc a                                            ; $5609: $3c
	rst $38                                          ; $560a: $ff
	rst AddAOntoHL                                          ; $560b: $ef
	ld a, h                                          ; $560c: $7c
	and $66                                          ; $560d: $e6 $66
	nop                                              ; $560f: $00
	ret nz                                           ; $5610: $c0

	and h                                            ; $5611: $a4
	rra                                              ; $5612: $1f
	inc b                                            ; $5613: $04
	rra                                              ; $5614: $1f
	inc b                                            ; $5615: $04
	ccf                                              ; $5616: $3f
	ld [$187f], sp                                   ; $5617: $08 $7f $18
	rst $38                                          ; $561a: $ff
	ld hl, sp-$31                                    ; $561b: $f8 $cf
	cp b                                             ; $561d: $b8
	rst GetHLinHL                                          ; $561e: $cf
	cpl                                              ; $561f: $2f
	rst SubAFromDE                                          ; $5620: $df
	ei                                               ; $5621: $fb
	db $f4                                           ; $5622: $f4
	ldh a, [$9c]                                     ; $5623: $f0 $9c
	rst $38                                          ; $5625: $ff
	db $db                                           ; $5626: $db
	db $f4                                           ; $5627: $f4
	ld [hl], a                                       ; $5628: $77
	ld a, [$bf80]                                    ; $5629: $fa $80 $bf
	ldh a, [$37]                                     ; $562c: $f0 $37
	ld hl, sp+$50                                    ; $562e: $f8 $50
	rst $38                                          ; $5630: $ff
	jr nc, @+$01                                     ; $5631: $30 $ff

	ld a, [bc]                                       ; $5633: $0a
	push af                                          ; $5634: $f5
	push hl                                          ; $5635: $e5
	ld a, [de]                                       ; $5636: $1a
	ldh [$1f], a                                     ; $5637: $e0 $1f
	dec b                                            ; $5639: $05
	ld a, [$827d]                                    ; $563a: $fa $7d $82
	ld a, h                                          ; $563d: $7c
	add e                                            ; $563e: $83
	inc bc                                           ; $563f: $03
	db $fc                                           ; $5640: $fc
	rla                                              ; $5641: $17
	cp $9f                                           ; $5642: $fe $9f
	ld a, d                                          ; $5644: $7a
	ld d, h                                          ; $5645: $54
	cp a                                             ; $5646: $bf
	rla                                              ; $5647: $17
	rst $38                                          ; $5648: $ff
	db $fd                                           ; $5649: $fd
	sub h                                            ; $564a: $94
	rra                                              ; $564b: $1f
	cp $09                                           ; $564c: $fe $09
	ld c, $f9                                        ; $564e: $0e $f9
	ld hl, sp+$0f                                    ; $5650: $f8 $0f
	ld c, e                                          ; $5652: $4b
	db $fc                                           ; $5653: $fc
	bit 7, h                                         ; $5654: $cb $7c
	ld a, e                                          ; $5656: $7b
	cp $8a                                           ; $5657: $fe $8a
	ld a, l                                          ; $5659: $7d
	set 7, l                                         ; $565a: $cb $fd
	jp z, $cbbd                                      ; $565c: $ca $bd $cb

	cp $ea                                           ; $565f: $fe $ea
	cp [hl]                                          ; $5661: $be
	dec sp                                           ; $5662: $3b
	ld h, $5d                                        ; $5663: $26 $5d
	ld e, [hl]                                       ; $5665: $5e
	rst SubAFromDE                                          ; $5666: $df
	or a                                             ; $5667: $b7
	cp h                                             ; $5668: $bc
	ld a, $48                                        ; $5669: $3e $48
	ld e, h                                          ; $566b: $5c

jr_047_566c:
	nop                                              ; $566c: $00

jr_047_566d:
	ld c, b                                          ; $566d: $48
	ld a, e                                          ; $566e: $7b
	cp $80                                           ; $566f: $fe $80
	adc b                                            ; $5671: $88
	rst SubAFromHL                                          ; $5672: $d7
	ei                                               ; $5673: $fb
	adc e                                            ; $5674: $8b
	sbc a                                            ; $5675: $9f
	add a                                            ; $5676: $87

Jump_047_5677:
	adc [hl]                                         ; $5677: $8e
	ld [bc], a                                       ; $5678: $02
	rst JumpTable                                          ; $5679: $c7
	inc bc                                           ; $567a: $03
	daa                                              ; $567b: $27
	ld bc, $2323                                     ; $567c: $01 $23 $23
	inc sp                                           ; $567f: $33

Jump_047_5680:
	ld h, e                                          ; $5680: $63
	inc sp                                           ; $5681: $33
	db $e4                                           ; $5682: $e4
	cp $76                                           ; $5683: $fe $76
	ld e, a                                          ; $5685: $5f
	ldh a, [c]                                       ; $5686: $f2
	ld e, $69                                        ; $5687: $1e $69
	cp a                                             ; $5689: $bf
	xor l                                            ; $568a: $ad
	rst $38                                          ; $568b: $ff
	ei                                               ; $568c: $fb
	rst SubAFromDE                                          ; $568d: $df
	db $fd                                           ; $568e: $fd
	inc hl                                           ; $568f: $23
	adc l                                            ; $5690: $8d
	db $fd                                           ; $5691: $fd
	db $e3                                           ; $5692: $e3
	ld a, e                                          ; $5693: $7b
	sbc c                                            ; $5694: $99
	rst SubAFromBC                                          ; $5695: $e7
	ei                                               ; $5696: $fb
	pop hl                                           ; $5697: $e1
	rra                                              ; $5698: $1f
	push hl                                          ; $5699: $e5
	rra                                              ; $569a: $1f
	ld l, l                                          ; $569b: $6d
	rla                                              ; $569c: $17
	ld h, a                                          ; $569d: $67
	rla                                              ; $569e: $17
	rst SubAFromBC                                          ; $569f: $e7
	rlca                                             ; $56a0: $07
	rst SubAFromBC                                          ; $56a1: $e7
	rlca                                             ; $56a2: $07
	ld [hl], b                                       ; $56a3: $70
	ld b, d                                          ; $56a4: $42
	sub h                                            ; $56a5: $94
	add b                                            ; $56a6: $80
	ld h, h                                          ; $56a7: $64
	inc bc                                           ; $56a8: $03
	ld h, [hl]                                       ; $56a9: $66
	ld bc, $6304                                     ; $56aa: $01 $04 $63
	ld h, [hl]                                       ; $56ad: $66
	ld bc, $0000                                     ; $56ae: $01 $00 $00
	ld [hl], d                                       ; $56b1: $72
	call nz, $3d83                                   ; $56b2: $c4 $83 $3d
	ld a, [hl-]                                      ; $56b5: $3a
	cp l                                             ; $56b6: $bd
	ld a, d                                          ; $56b7: $7a
	cp l                                             ; $56b8: $bd
	ld a, [hl-]                                      ; $56b9: $3a
	cp l                                             ; $56ba: $bd
	cp d                                             ; $56bb: $ba
	dec a                                            ; $56bc: $3d
	ld a, [de]                                       ; $56bd: $1a
	dec a                                            ; $56be: $3d
	db $ec                                           ; $56bf: $ec
	di                                               ; $56c0: $f3
	add b                                            ; $56c1: $80
	ld a, a                                          ; $56c2: $7f
	adc d                                            ; $56c3: $8a
	ld [hl], l                                       ; $56c4: $75
	push hl                                          ; $56c5: $e5
	ld a, [$f5ea]                                    ; $56c6: $fa $ea $f5
	rst AddAOntoHL                                          ; $56c9: $ef
	ldh a, [$e0]                                     ; $56ca: $f0 $e0
	rst $38                                          ; $56cc: $ff
	adc [hl]                                         ; $56cd: $8e
	ld [hl], c                                       ; $56ce: $71
	rst $38                                          ; $56cf: $ff
	ld a, d                                          ; $56d0: $7a
	sbc h                                            ; $56d1: $9c
	ld a, a                                          ; $56d2: $7f
	jr nz, jr_047_566c                               ; $56d3: $20 $97

	ld d, h                                          ; $56d5: $54
	xor e                                            ; $56d6: $ab
	xor [hl]                                         ; $56d7: $ae
	ld d, c                                          ; $56d8: $51
	ret nz                                           ; $56d9: $c0

	ccf                                              ; $56da: $3f
	ccf                                              ; $56db: $3f
	ret nz                                           ; $56dc: $c0

	ld a, e                                          ; $56dd: $7b
	jp $d871                                         ; $56de: $c3 $71 $d8


	add b                                            ; $56e1: $80
	ld e, a                                          ; $56e2: $5f
	and b                                            ; $56e3: $a0
	ret nz                                           ; $56e4: $c0

	ccf                                              ; $56e5: $3f
	dec sp                                           ; $56e6: $3b
	call nz, $04fb                                   ; $56e7: $c4 $fb $04
	ei                                               ; $56ea: $fb
	dec b                                            ; $56eb: $05
	ld a, b                                          ; $56ec: $78
	adc a                                            ; $56ed: $8f
	ld a, a                                          ; $56ee: $7f
	cp a                                             ; $56ef: $bf
	rst $38                                          ; $56f0: $ff
	ccf                                              ; $56f1: $3f
	ld c, [hl]                                       ; $56f2: $4e
	cp a                                             ; $56f3: $bf
	ld a, h                                          ; $56f4: $7c
	adc a                                            ; $56f5: $8f
	cp $3d                                           ; $56f6: $fe $3d
	ld a, [hl]                                       ; $56f8: $7e
	cp l                                             ; $56f9: $bd
	ld c, [hl]                                       ; $56fa: $4e
	cp l                                             ; $56fb: $bd
	cp $f9                                           ; $56fc: $fe $f9
	xor $f9                                          ; $56fe: $ee $f9
	ret z                                            ; $5700: $c8

	sub h                                            ; $5701: $94
	rst $38                                          ; $5702: $ff
	ld c, a                                          ; $5703: $4f

jr_047_5704:
	ld hl, sp+$6f                                    ; $5704: $f8 $6f
	ret c                                            ; $5706: $d8

	ld l, a                                          ; $5707: $6f
	ret c                                            ; $5708: $d8

	add sp, -$21                                     ; $5709: $e8 $df
	xor $d9                                          ; $570b: $ee $d9
	ld a, e                                          ; $570d: $7b
	sub e                                            ; $570e: $93
	sub b                                            ; $570f: $90
	ld a, a                                          ; $5710: $7f
	scf                                              ; $5711: $37
	ret z                                            ; $5712: $c8

	rst FarCall                                          ; $5713: $f7
	ld [$08f7], sp                                   ; $5714: $08 $f7 $08
	ret nz                                           ; $5717: $c0

	ccf                                              ; $5718: $3f
	rra                                              ; $5719: $1f
	ldh [rIE], a                                     ; $571a: $e0 $ff
	nop                                              ; $571c: $00
	ret nz                                           ; $571d: $c0

	ccf                                              ; $571e: $3f
	ld a, b                                          ; $571f: $78
	jp z, $0192                                      ; $5720: $ca $92 $01

	cp $01                                           ; $5723: $fe $01
	ldh [$1f], a                                     ; $5725: $e0 $1f
	rlca                                             ; $5727: $07
	ld hl, sp-$21                                    ; $5728: $f8 $df
	jr nz, jr_047_5704                               ; $572a: $20 $d8

	daa                                              ; $572c: $27
	ld bc, $77fe                                     ; $572d: $01 $fe $77
	ld l, a                                          ; $5730: $6f
	add b                                            ; $5731: $80
	ld hl, sp+$07                                    ; $5732: $f8 $07
	ld bc, $effe                                     ; $5734: $01 $fe $ef
	db $10                                           ; $5737: $10
	rst SubAFromBC                                          ; $5738: $e7
	rra                                              ; $5739: $1f
	db $e3                                           ; $573a: $e3
	db $fc                                           ; $573b: $fc
	ld b, c                                          ; $573c: $41
	and e                                            ; $573d: $a3
	ld [hl], h                                       ; $573e: $74
	cp a                                             ; $573f: $bf
	ld b, b                                          ; $5740: $40
	and a                                            ; $5741: $a7
	ld bc, $c3c2                                     ; $5742: $01 $c2 $c3
	ld b, d                                          ; $5745: $42
	cp h                                             ; $5746: $bc
	ld a, a                                          ; $5747: $7f
	dec sp                                           ; $5748: $3b
	db $ec                                           ; $5749: $ec
	rst $38                                          ; $574a: $ff
	jr z, @-$07                                      ; $574b: $28 $f7

jr_047_574d:
	adc a                                            ; $574d: $8f
	ei                                               ; $574e: $fb
	rlca                                             ; $574f: $07
	inc bc                                           ; $5750: $03
	ld a, [hl]                                       ; $5751: $7e
	ldh a, [c]                                       ; $5752: $f2
	add b                                            ; $5753: $80
	inc bc                                           ; $5754: $03
	db $e3                                           ; $5755: $e3
	rra                                              ; $5756: $1f
	ld de, $03e3                                     ; $5757: $11 $e3 $03
	inc bc                                           ; $575a: $03
	rlca                                             ; $575b: $07
	inc bc                                           ; $575c: $03
	rst GetHLinHL                                          ; $575d: $cf
	cp $b7                                           ; $575e: $fe $b7
	cp $fa                                           ; $5760: $fe $fa
	rst $38                                          ; $5762: $ff
	adc a                                            ; $5763: $8f
	xor a                                            ; $5764: $af
	adc l                                            ; $5765: $8d
	sbc $f8                                          ; $5766: $de $f8
	db $fc                                           ; $5768: $fc
	ret nz                                           ; $5769: $c0

	ldh [$c0], a                                     ; $576a: $e0 $c0
	ldh [$df], a                                     ; $576c: $e0 $df
	jr nz, jr_047_574d                               ; $576e: $20 $dd

	inc hl                                           ; $5770: $23
	jr c, @+$01                                      ; $5771: $38 $ff

	sbc h                                            ; $5773: $9c
	adc a                                            ; $5774: $8f
	ldh a, [$f0]                                     ; $5775: $f0 $f0
	ld a, [$fd89]                                    ; $5777: $fa $89 $fd
	rrca                                             ; $577a: $0f
	rst GetHLinHL                                          ; $577b: $cf
	rst $38                                          ; $577c: $ff
	ld a, d                                          ; $577d: $7a
	adc a                                            ; $577e: $8f
	adc a                                            ; $577f: $8f
	ld a, [bc]                                       ; $5780: $0a
	inc bc                                           ; $5781: $03
	ld c, $07                                        ; $5782: $0e $07
	ld c, $07                                        ; $5784: $0e $07
	rrca                                             ; $5786: $0f
	rrca                                             ; $5787: $0f
	rlca                                             ; $5788: $07
	ldh a, [c]                                       ; $5789: $f2
	cp [hl]                                          ; $578a: $be
	and $ba                                          ; $578b: $e6 $ba
	ldh [c], a                                       ; $578d: $e2
	and d                                            ; $578e: $a2
	ld a, e                                          ; $578f: $7b
	cp $95                                           ; $5790: $fe $95
	ldh [c], a                                       ; $5792: $e2
	ld [bc], a                                       ; $5793: $02
	jp nz, $8202                                     ; $5794: $c2 $02 $82

	inc bc                                           ; $5797: $03
	ld bc, $8888                                     ; $5798: $01 $88 $88
	add b                                            ; $579b: $80
	sbc $88                                          ; $579c: $de $88
	adc b                                            ; $579e: $88
	ld [$4888], sp                                   ; $579f: $08 $88 $48
	ld c, b                                          ; $57a2: $48
	ld a, a                                          ; $57a3: $7f
	ld a, a                                          ; $57a4: $7f
	ld e, e                                          ; $57a5: $5b
	ld a, a                                          ; $57a6: $7f
	sbc l                                            ; $57a7: $9d
	rst $38                                          ; $57a8: $ff
	xor e                                            ; $57a9: $ab
	halt                                             ; $57aa: $76
	ld hl, $72ff                                     ; $57ab: $21 $ff $72
	rst $38                                          ; $57ae: $ff
	ld a, [hl]                                       ; $57af: $7e
	rst GetHLinHL                                          ; $57b0: $cf
	cp $cf                                           ; $57b1: $fe $cf
	rst FarCall                                          ; $57b3: $f7
	rst $38                                          ; $57b4: $ff
	rst SubAFromBC                                          ; $57b5: $e7
	ld a, d                                          ; $57b6: $7a
	ld c, h                                          ; $57b7: $4c
	adc c                                            ; $57b8: $89
	push af                                          ; $57b9: $f5
	db $e3                                           ; $57ba: $e3
	rst $38                                          ; $57bb: $ff
	jp $ce52                                         ; $57bc: $c3 $52 $ce


	or [hl]                                          ; $57bf: $b6
	ld c, [hl]                                       ; $57c0: $4e
	db $fc                                           ; $57c1: $fc
	inc c                                            ; $57c2: $0c
	ld a, [$f516]                                    ; $57c3: $fa $16 $f5
	db $eb                                           ; $57c6: $eb
	ld e, d                                          ; $57c7: $5a
	push hl                                          ; $57c8: $e5
	scf                                              ; $57c9: $37
	rst GetHLinHL                                          ; $57ca: $cf
	ld [hl], a                                       ; $57cb: $77
	adc a                                            ; $57cc: $8f
	rst FarCall                                          ; $57cd: $f7
	rrca                                             ; $57ce: $0f
	ld e, a                                          ; $57cf: $5f
	cp $75                                           ; $57d0: $fe $75
	add [hl]                                         ; $57d2: $86
	ld [hl], l                                       ; $57d3: $75
	adc b                                            ; $57d4: $88
	ld [hl], d                                       ; $57d5: $72
	cp b                                             ; $57d6: $b8
	ld a, e                                          ; $57d7: $7b
	cp $5d                                           ; $57d8: $fe $5d
	add [hl]                                         ; $57da: $86
	ld [hl], a                                       ; $57db: $77
	or $7f                                           ; $57dc: $f6 $7f
	cp $7e                                           ; $57de: $fe $7e
	adc $9d                                          ; $57e0: $ce $9d
	xor $f1                                          ; $57e2: $ee $f1
	ld [hl], a                                       ; $57e4: $77
	cp $7f                                           ; $57e5: $fe $7f
	dec d                                            ; $57e7: $15
	ld [hl], h                                       ; $57e8: $74
	add $9d                                          ; $57e9: $c6 $9d
	adc e                                            ; $57eb: $8b
	ld [hl], a                                       ; $57ec: $77
	ld l, a                                          ; $57ed: $6f
	reti                                             ; $57ee: $d9


	ld a, a                                          ; $57ef: $7f
	ld a, [bc]                                       ; $57f0: $0a
	adc h                                            ; $57f1: $8c
	ld a, $c1                                        ; $57f2: $3e $c1
	cp $01                                           ; $57f4: $fe $01
	rst SubAFromDE                                          ; $57f6: $df

Jump_047_57f7:
	ccf                                              ; $57f7: $3f
	rst SubAFromBC                                          ; $57f8: $e7
	ld hl, sp-$05                                    ; $57f9: $f8 $fb
	dec b                                            ; $57fb: $05
	ei                                               ; $57fc: $fb
	dec b                                            ; $57fd: $05
	add b                                            ; $57fe: $80
	ld a, a                                          ; $57ff: $7f
	ld a, a                                          ; $5800: $7f
	add b                                            ; $5801: $80
	rst $38                                          ; $5802: $ff
	inc bc                                           ; $5803: $03
	ld a, h                                          ; $5804: $7c
	ld a, e                                          ; $5805: $7b
	ld c, d                                          ; $5806: $4a
	ld a, a                                          ; $5807: $7f
	db $ec                                           ; $5808: $ec
	sub h                                            ; $5809: $94
	ld a, [hl]                                       ; $580a: $7e
	adc l                                            ; $580b: $8d
	ld a, d                                          ; $580c: $7a
	cp l                                             ; $580d: $bd
	ccf                                              ; $580e: $3f
	ld sp, hl                                        ; $580f: $f9
	call $f93b                                       ; $5810: $cd $3b $f9
	cp a                                             ; $5813: $bf
	ccf                                              ; $5814: $3f
	ld a, c                                          ; $5815: $79
	ld l, $7c                                        ; $5816: $2e $7c
	jp z, $ce7e                                      ; $5818: $ca $7e $ce

	ld a, a                                          ; $581b: $7f
	cp $9a                                           ; $581c: $fe $9a
	ld l, b                                          ; $581e: $68
	rst SubAFromDE                                          ; $581f: $df
	adc $7f                                          ; $5820: $ce $7f
	ld d, c                                          ; $5822: $51
	ld a, c                                          ; $5823: $79
	db $e4                                           ; $5824: $e4
	ld a, a                                          ; $5825: $7f
	cp a                                             ; $5826: $bf
	ld a, a                                          ; $5827: $7f
	cp $7f                                           ; $5828: $fe $7f
	call nz, $007f                                   ; $582a: $c4 $7f $00
	sbc h                                            ; $582d: $9c
	ld a, h                                          ; $582e: $7c
	ld hl, sp+$01                                    ; $582f: $f8 $01
	ld a, e                                          ; $5831: $7b
	cp h                                             ; $5832: $bc
	sbc h                                            ; $5833: $9c
	ld a, h                                          ; $5834: $7c
	add b                                            ; $5835: $80
	ldh [$fe], a                                     ; $5836: $e0 $fe
	sbc c                                            ; $5838: $99
	dec sp                                           ; $5839: $3b
	db $fc                                           ; $583a: $fc
	and b                                            ; $583b: $a0
	ret nz                                           ; $583c: $c0

	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	ld a, e                                          ; $583f: $7b
	db $fd                                           ; $5840: $fd
	ld [$3f9b], a                                    ; $5841: $ea $9b $3f
	inc a                                            ; $5844: $3c

jr_047_5845:
	ccf                                              ; $5845: $3f
	inc l                                            ; $5846: $2c
	ld a, e                                          ; $5847: $7b
	db $fc                                           ; $5848: $fc
	sbc [hl]                                         ; $5849: $9e
	jr c, jr_047_5845                                ; $584a: $38 $f9

	ld a, [hl]                                       ; $584c: $7e
	cp $9e                                           ; $584d: $fe $9e
	rst $38                                          ; $584f: $ff
	ld a, e                                          ; $5850: $7b
	cp $9b                                           ; $5851: $fe $9b
	adc a                                            ; $5853: $8f
	rlca                                             ; $5854: $07
	rlca                                             ; $5855: $07
	ld bc, $137a                                     ; $5856: $01 $7a $13
	cp $7e                                           ; $5859: $fe $7e
	call Call_047_6092                               ; $585b: $cd $92 $60
	ret nz                                           ; $585e: $c0

	ld [hl], b                                       ; $585f: $70
	ret nz                                           ; $5860: $c0

	ld l, b                                          ; $5861: $68
	ret nc                                           ; $5862: $d0

	ret nc                                           ; $5863: $d0

	ldh [$c2], a                                     ; $5864: $e0 $c2
	nop                                              ; $5866: $00
	dec d                                            ; $5867: $15
	nop                                              ; $5868: $00
	xor d                                            ; $5869: $aa
	ld hl, sp+$77                                    ; $586a: $f8 $77
	db $f4                                           ; $586c: $f4
	sbc [hl]                                         ; $586d: $9e
	ld d, l                                          ; $586e: $55
	ld l, e                                          ; $586f: $6b
	ldh a, [$67]                                     ; $5870: $f0 $67
	db $f4                                           ; $5872: $f4
	ld [hl], a                                       ; $5873: $77
	db $fc                                           ; $5874: $fc
	sbc c                                            ; $5875: $99
	ld b, $02                                        ; $5876: $06 $02
	xor d                                            ; $5878: $aa
	ld [bc], a                                       ; $5879: $02
	ld d, l                                          ; $587a: $55
	ld bc, $f05f                                     ; $587b: $01 $5f $f0
	add b                                            ; $587e: $80
	sbc e                                            ; $587f: $9b
	cp $8d                                           ; $5880: $fe $8d
	rst $38                                          ; $5882: $ff
	adc [hl]                                         ; $5883: $8e
	rst $38                                          ; $5884: $ff
	xor l                                            ; $5885: $ad
	rst SubAFromDE                                          ; $5886: $df
	xor [hl]                                         ; $5887: $ae
	rst SubAFromDE                                          ; $5888: $df
	db $ed                                           ; $5889: $ed
	sbc a                                            ; $588a: $9f
	xor $9b                                          ; $588b: $ee $9b
	db $dd                                           ; $588d: $dd
	cp e                                             ; $588e: $bb
	ld a, [$d5fc]                                    ; $588f: $fa $fc $d5
	ret c                                            ; $5892: $d8

	sbc d                                            ; $5893: $9a
	sub b                                            ; $5894: $90
	xor l                                            ; $5895: $ad
	or b                                             ; $5896: $b0
	db $eb                                           ; $5897: $eb
	ldh a, [$d4]                                     ; $5898: $f0 $d4
	pop hl                                           ; $589a: $e1
	xor $f1                                          ; $589b: $ee $f1
	ld [hl], h                                       ; $589d: $74
	adc c                                            ; $589e: $89
	ei                                               ; $589f: $fb
	db $dd                                           ; $58a0: $dd
	ld h, d                                          ; $58a1: $62
	or a                                             ; $58a2: $b7
	ld c, b                                          ; $58a3: $48
	cp e                                             ; $58a4: $bb
	ld b, h                                          ; $58a5: $44
	cp c                                             ; $58a6: $b9
	ld b, [hl]                                       ; $58a7: $46
	db $fc                                           ; $58a8: $fc
	inc bc                                           ; $58a9: $03
	db $ec                                           ; $58aa: $ec
	inc de                                           ; $58ab: $13
	db $ed                                           ; $58ac: $ed
	inc de                                           ; $58ad: $13
	and $1e                                          ; $58ae: $e6 $1e
	rla                                              ; $58b0: $17
	rrca                                             ; $58b1: $0f
	jp $1f3f                                         ; $58b2: $c3 $3f $1f


	sbc $ff                                          ; $58b5: $de $ff
	sbc l                                            ; $58b7: $9d
	pop af                                           ; $58b8: $f1
	db $fc                                           ; $58b9: $fc
	ei                                               ; $58ba: $fb
	sbc d                                            ; $58bb: $9a
	xor d                                            ; $58bc: $aa
	rst $38                                          ; $58bd: $ff
	ld d, l                                          ; $58be: $55
	rst $38                                          ; $58bf: $ff
	xor b                                            ; $58c0: $a8
	ld a, b                                          ; $58c1: $78
	ld [hl], e                                       ; $58c2: $73
	ld sp, hl                                        ; $58c3: $f9
	ld a, a                                          ; $58c4: $7f
	ldh a, [$9c]                                     ; $58c5: $f0 $9c
	ld b, b                                          ; $58c7: $40
	rst $38                                          ; $58c8: $ff
	db $10                                           ; $58c9: $10
	ld h, e                                          ; $58ca: $63
	ldh a, [c]                                       ; $58cb: $f2
	rst $38                                          ; $58cc: $ff
	sbc e                                            ; $58cd: $9b
	ldh a, [$fc]                                     ; $58ce: $f0 $fc
	nop                                              ; $58d0: $00
	add b                                            ; $58d1: $80
	ldh [$d4], a                                     ; $58d2: $e0 $d4
	ld a, [hl]                                       ; $58d4: $7e
	ld l, [hl]                                       ; $58d5: $6e
	and $9e                                          ; $58d6: $e6 $9e
	ld a, [bc]                                       ; $58d8: $0a
	db $f4                                           ; $58d9: $f4
	sbc [hl]                                         ; $58da: $9e
	dec b                                            ; $58db: $05
	ld e, e                                          ; $58dc: $5b
	db $10                                           ; $58dd: $10
	ld a, [hl]                                       ; $58de: $7e
	ldh a, [c]                                       ; $58df: $f2
	ld a, h                                          ; $58e0: $7c
	cpl                                              ; $58e1: $2f
	ld h, a                                          ; $58e2: $67
	db $10                                           ; $58e3: $10
	db $fd                                           ; $58e4: $fd
	ld h, a                                          ; $58e5: $67
	jr nz, jr_047_592f                               ; $58e6: $20 $47

	nop                                              ; $58e8: $00
	ld [hl], a                                       ; $58e9: $77
	call z, $f467                                    ; $58ea: $cc $67 $f4
	inc bc                                           ; $58ed: $03
	db $fc                                           ; $58ee: $fc
	sbc l                                            ; $58ef: $9d
	nop                                              ; $58f0: $00
	xor e                                            ; $58f1: $ab
	ld d, e                                          ; $58f2: $53
	db $f4                                           ; $58f3: $f4
	sbc [hl]                                         ; $58f4: $9e
	ld a, a                                          ; $58f5: $7f
	ld a, d                                          ; $58f6: $7a
	ld c, d                                          ; $58f7: $4a
	ld h, a                                          ; $58f8: $67
	db $f4                                           ; $58f9: $f4
	sbc [hl]                                         ; $58fa: $9e
	ld e, a                                          ; $58fb: $5f
	ld l, l                                          ; $58fc: $6d
	pop de                                           ; $58fd: $d1
	add a                                            ; $58fe: $87
	nop                                              ; $58ff: $00
	jp c, $dfbf                                      ; $5900: $da $bf $df

	cp e                                             ; $5903: $bb
	db $db                                           ; $5904: $db
	cp l                                             ; $5905: $bd
	ld e, l                                          ; $5906: $5d
	cp e                                             ; $5907: $bb
	jp c, $fcbd                                      ; $5908: $da $bd $fc

	sbc e                                            ; $590b: $9b
	add sp, -$61                                     ; $590c: $e8 $9f
	add sp, -$61                                     ; $590e: $e8 $9f
	cp a                                             ; $5910: $bf
	rst $38                                          ; $5911: $ff
	ld h, c                                          ; $5912: $61
	rst AddAOntoHL                                          ; $5913: $ef
	and b                                            ; $5914: $a0
	rst $38                                          ; $5915: $ff
	ldh a, [$7b]                                     ; $5916: $f0 $7b
	cp $9c                                           ; $5918: $fe $9c
	ld hl, sp-$01                                    ; $591a: $f8 $ff
	ld a, b                                          ; $591c: $78
	ld a, e                                          ; $591d: $7b
	cp $8f                                           ; $591e: $fe $8f
	ld l, b                                          ; $5920: $68
	sbc l                                            ; $5921: $9d
	ld hl, sp-$01                                    ; $5922: $f8 $ff
	ret z                                            ; $5924: $c8

	rst $38                                          ; $5925: $ff
	ld c, h                                          ; $5926: $4c
	rst SubAFromDE                                          ; $5927: $df
	ld c, d                                          ; $5928: $4a
	db $db                                           ; $5929: $db
	ld c, c                                          ; $592a: $49
	db $db                                           ; $592b: $db
	ld e, c                                          ; $592c: $59
	rst SubAFromDE                                          ; $592d: $df
	ld e, d                                          ; $592e: $5a

jr_047_592f:
	rst SubAFromDE                                          ; $592f: $df
	db $e3                                           ; $5930: $e3
	ld a, a                                          ; $5931: $7f
	inc a                                            ; $5932: $3c
	push af                                          ; $5933: $f5
	ld d, a                                          ; $5934: $57
	jr nc, jr_047_599e                               ; $5935: $30 $67

	ld c, b                                          ; $5937: $48
	ld h, a                                          ; $5938: $67
	ret c                                            ; $5939: $d8

	rra                                              ; $593a: $1f
	jr nz, @+$61                                     ; $593b: $20 $5f

	db $e4                                           ; $593d: $e4
	inc bc                                           ; $593e: $03
	db $fc                                           ; $593f: $fc
	dec bc                                           ; $5940: $0b
	db $fc                                           ; $5941: $fc
	sbc [hl]                                         ; $5942: $9e
	ld d, a                                          ; $5943: $57
	ld h, e                                          ; $5944: $63
	db $10                                           ; $5945: $10
	ld [hl], a                                       ; $5946: $77
	db $fc                                           ; $5947: $fc
	sbc [hl]                                         ; $5948: $9e
	xor a                                            ; $5949: $af
	ld [hl], e                                       ; $594a: $73
	db $10                                           ; $594b: $10
	ld d, a                                          ; $594c: $57
	db $f4                                           ; $594d: $f4
	ld h, a                                          ; $594e: $67
	ldh a, [rPCM12]                                  ; $594f: $f0 $76
	add sp, $67                                      ; $5951: $e8 $67
	cp $66                                           ; $5953: $fe $66
	add sp, $03                                      ; $5955: $e8 $03
	cp $6b                                           ; $5957: $fe $6b
	cp $76                                           ; $5959: $fe $76
	call z, $c89c                                    ; $595b: $cc $9c $c8
	cp a                                             ; $595e: $bf
	sbc b                                            ; $595f: $98
	ld a, d                                          ; $5960: $7a
	jp nc, Jump_047_7b90                             ; $5961: $d2 $90 $7b

	rst $38                                          ; $5964: $ff
	sbc a                                            ; $5965: $9f
	sbc a                                            ; $5966: $9f
	rst $38                                          ; $5967: $ff
	rst $38                                          ; $5968: $ff
	jr c, @+$01                                      ; $5969: $38 $ff

	inc a                                            ; $596b: $3c
	rst $38                                          ; $596c: $ff
	inc l                                            ; $596d: $2c
	rst $38                                          ; $596e: $ff
	daa                                              ; $596f: $27
	rst $38                                          ; $5970: $ff
	ld a, $dc                                        ; $5971: $3e $dc
	rst $38                                          ; $5973: $ff
	sub h                                            ; $5974: $94
	cp $ff                                           ; $5975: $fe $ff
	ld d, h                                          ; $5977: $54
	rst SubAFromDE                                          ; $5978: $df
	ld d, b                                          ; $5979: $50
	rst SubAFromDE                                          ; $597a: $df
	add b                                            ; $597b: $80
	sbc a                                            ; $597c: $9f
	db $10                                           ; $597d: $10
	ld a, a                                          ; $597e: $7f
	jr c, jr_047_59fc                                ; $597f: $38 $7b

	db $f4                                           ; $5981: $f4
	ld a, a                                          ; $5982: $7f
	cp $7f                                           ; $5983: $fe $7f
	rst GetHLinHL                                          ; $5985: $cf
	ld d, h                                          ; $5986: $54
	nop                                              ; $5987: $00
	rst SubAFromDE                                          ; $5988: $df
	inc sp                                           ; $5989: $33
	sbc [hl]                                         ; $598a: $9e
	ld b, l                                          ; $598b: $45
	jp c, $df55                                      ; $598c: $da $55 $df

	inc sp                                           ; $598f: $33
	sbc [hl]                                         ; $5990: $9e
	ld b, h                                          ; $5991: $44
	ld e, a                                          ; $5992: $5f
	or $9b                                           ; $5993: $f6 $9b
	ld b, h                                          ; $5995: $44
	inc sp                                           ; $5996: $33
	ld b, h                                          ; $5997: $44
	ld h, h                                          ; $5998: $64
	ld a, e                                          ; $5999: $7b
	rst SubAFromBC                                          ; $599a: $e7
	sbc $33                                          ; $599b: $de $33
	sub h                                            ; $599d: $94

jr_047_599e:
	ld b, e                                          ; $599e: $43
	inc sp                                           ; $599f: $33
	ld h, h                                          ; $59a0: $64
	ld b, h                                          ; $59a1: $44
	ld b, h                                          ; $59a2: $44
	ld b, e                                          ; $59a3: $43
	inc [hl]                                         ; $59a4: $34
	ld h, [hl]                                       ; $59a5: $66
	ld h, h                                          ; $59a6: $64
	ld b, h                                          ; $59a7: $44
	ld b, e                                          ; $59a8: $43
	sbc $33                                          ; $59a9: $de $33
	sbc h                                            ; $59ab: $9c
	inc [hl]                                         ; $59ac: $34
	ld b, h                                          ; $59ad: $44
	inc sp                                           ; $59ae: $33
	ld a, e                                          ; $59af: $7b
	or $9e                                           ; $59b0: $f6 $9e
	ld [hl], h                                       ; $59b2: $74
	db $dd                                           ; $59b3: $dd
	ld b, h                                          ; $59b4: $44
	sub [hl]                                         ; $59b5: $96
	ld b, e                                          ; $59b6: $43
	ld b, h                                          ; $59b7: $44
	ld h, [hl]                                       ; $59b8: $66
	ld h, h                                          ; $59b9: $64
	ld h, [hl]                                       ; $59ba: $66
	ld [hl], a                                       ; $59bb: $77
	ld b, h                                          ; $59bc: $44
	ld b, h                                          ; $59bd: $44
	scf                                              ; $59be: $37
	ld l, a                                          ; $59bf: $6f
	ldh [c], a                                       ; $59c0: $e2
	ld a, e                                          ; $59c1: $7b
	or $9a                                           ; $59c2: $f6 $9a
	inc sp                                           ; $59c4: $33
	ld [hl], a                                       ; $59c5: $77
	dec [hl]                                         ; $59c6: $35
	ld [hl], a                                       ; $59c7: $77
	ld b, [hl]                                       ; $59c8: $46
	ld a, e                                          ; $59c9: $7b
	or $dd                                           ; $59ca: $f6 $dd
	inc sp                                           ; $59cc: $33
	ld a, a                                          ; $59cd: $7f
	or $9d                                           ; $59ce: $f6 $9d
	scf                                              ; $59d0: $37
	ld [hl], e                                       ; $59d1: $73
	db $db                                           ; $59d2: $db
	inc sp                                           ; $59d3: $33
	ld a, a                                          ; $59d4: $7f
	or $d9                                           ; $59d5: $f6 $d9
	inc sp                                           ; $59d7: $33
	ld a, a                                          ; $59d8: $7f
	or $96                                           ; $59d9: $f6 $96
	ld a, [bc]                                       ; $59db: $0a
	sbc l                                            ; $59dc: $9d
	nop                                              ; $59dd: $00
	rst $38                                          ; $59de: $ff
	ld e, a                                          ; $59df: $5f
	cp $9b                                           ; $59e0: $fe $9b
	ld [bc], a                                       ; $59e2: $02
	db $fd                                           ; $59e3: $fd
	add hl, bc                                       ; $59e4: $09
	or $77                                           ; $59e5: $f6 $77
	ld hl, sp-$80                                    ; $59e7: $f8 $80
	inc bc                                           ; $59e9: $03
	db $fc                                           ; $59ea: $fc
	dec d                                            ; $59eb: $15
	ld [$d02f], a                                    ; $59ec: $ea $2f $d0
	dec e                                            ; $59ef: $1d
	ldh [$fa], a                                     ; $59f0: $e0 $fa
	nop                                              ; $59f2: $00
	push de                                          ; $59f3: $d5
	jr z, @+$52                                      ; $59f4: $28 $50

	xor a                                            ; $59f6: $af
	rst SubAFromBC                                          ; $59f7: $e7
	jr @-$1e                                         ; $59f8: $18 $e0

	nop                                              ; $59fa: $00
	ret nz                                           ; $59fb: $c0

jr_047_59fc:
	nop                                              ; $59fc: $00

jr_047_59fd:
	and b                                            ; $59fd: $a0
	nop                                              ; $59fe: $00
	ld b, b                                          ; $59ff: $40
	nop                                              ; $5a00: $00
	add b                                            ; $5a01: $80
	nop                                              ; $5a02: $00
	xor b                                            ; $5a03: $a8
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	rst $38                                          ; $5a06: $ff
	sub b                                            ; $5a07: $90
	rst SubAFromDE                                          ; $5a08: $df

jr_047_5a09:
	rrca                                             ; $5a09: $0f
	push af                                          ; $5a0a: $f5

jr_047_5a0b:
	ld a, e                                          ; $5a0b: $7b
	ret nc                                           ; $5a0c: $d0

	sbc h                                            ; $5a0d: $9c
	add b                                            ; $5a0e: $80
	ld a, a                                          ; $5a0f: $7f
	ld a, a                                          ; $5a10: $7f
	ld d, e                                          ; $5a11: $53
	ldh a, [$98]                                     ; $5a12: $f0 $98
	ld [hl], b                                       ; $5a14: $70
	adc a                                            ; $5a15: $8f
	sbc $01                                          ; $5a16: $de $01
	rlca                                             ; $5a18: $07
	nop                                              ; $5a19: $00
	inc bc                                           ; $5a1a: $03
	ld h, e                                          ; $5a1b: $63
	ldh a, [rPCM34]                                  ; $5a1c: $f0 $77
	sbc $7f                                          ; $5a1e: $de $7f
	cp b                                             ; $5a20: $b8
	adc c                                            ; $5a21: $89
	ld [$3a15], a                                    ; $5a22: $ea $15 $3a
	ld bc, $0902                                     ; $5a25: $01 $02 $09
	jr nz, jr_047_5a09                               ; $5a28: $20 $df

	jr nz, jr_047_5a0b                               ; $5a2a: $20 $df

	jr nc, jr_047_59fd                               ; $5a2c: $30 $cf

	or b                                             ; $5a2e: $b0
	ld l, a                                          ; $5a2f: $6f
	cp h                                             ; $5a30: $bc
	ld h, d                                          ; $5a31: $62
	db $f4                                           ; $5a32: $f4
	ld a, d                                          ; $5a33: $7a
	add h                                            ; $5a34: $84
	dec bc                                           ; $5a35: $0b
	add h                                            ; $5a36: $84
	ld a, a                                          ; $5a37: $7f
	ld [hl], a                                       ; $5a38: $77
	ldh [c], a                                       ; $5a39: $e2
	sbc e                                            ; $5a3a: $9b
	dec b                                            ; $5a3b: $05
	ld a, [$05fa]                                    ; $5a3c: $fa $fa $05
	db $fd                                           ; $5a3f: $fd
	sbc l                                            ; $5a40: $9d
	ld d, l                                          ; $5a41: $55
	xor d                                            ; $5a42: $aa
	ld l, a                                          ; $5a43: $6f
	jp nc, $d47f                                     ; $5a44: $d2 $7f $d4

	sub l                                            ; $5a47: $95
	cp h                                             ; $5a48: $bc
	ld b, e                                          ; $5a49: $43
	db $10                                           ; $5a4a: $10
	rrca                                             ; $5a4b: $0f
	add sp, $17                                      ; $5a4c: $e8 $17
	ld b, b                                          ; $5a4e: $40
	cp a                                             ; $5a4f: $bf
	dec b                                            ; $5a50: $05
	ld a, [$6057]                                    ; $5a51: $fa $57 $60
	inc bc                                           ; $5a54: $03
	cp $03                                           ; $5a55: $fe $03
	cp $0f                                           ; $5a57: $fe $0f
	cp $7f                                           ; $5a59: $fe $7f
	nop                                              ; $5a5b: $00
	ld h, a                                          ; $5a5c: $67
	ld a, [hl]                                       ; $5a5d: $7e
	ld [hl], a                                       ; $5a5e: $77
	cp $7e                                           ; $5a5f: $fe $7e
	db $fc                                           ; $5a61: $fc
	sbc e                                            ; $5a62: $9b
	xor e                                            ; $5a63: $ab
	ld d, h                                          ; $5a64: $54
	ld a, b                                          ; $5a65: $78
	add b                                            ; $5a66: $80
	ld h, a                                          ; $5a67: $67
	ldh a, [c]                                       ; $5a68: $f2
	sbc l                                            ; $5a69: $9d
	dec hl                                           ; $5a6a: $2b
	call nc, $f47b                                   ; $5a6b: $d4 $7b $f4
	ld l, e                                          ; $5a6e: $6b
	jr nc, jr_047_5af0                               ; $5a6f: $30 $7f

	ret c                                            ; $5a71: $d8

	sbc b                                            ; $5a72: $98
	ld d, a                                          ; $5a73: $57
	xor b                                            ; $5a74: $a8
	rst $38                                          ; $5a75: $ff
	nop                                              ; $5a76: $00
	ld [bc], a                                       ; $5a77: $02
	nop                                              ; $5a78: $00
	ld bc, $fc7b                                     ; $5a79: $01 $7b $fc
	ld l, a                                          ; $5a7c: $6f
	ldh [c], a                                       ; $5a7d: $e2
	ld a, a                                          ; $5a7e: $7f
	ret z                                            ; $5a7f: $c8

	sbc l                                            ; $5a80: $9d
	xor d                                            ; $5a81: $aa
	ld d, l                                          ; $5a82: $55
	ld l, a                                          ; $5a83: $6f
	rst SubAFromHL                                          ; $5a84: $d7
	ld a, a                                          ; $5a85: $7f
	call z, Call_047_4c77                            ; $5a86: $cc $77 $4c
	ld a, a                                          ; $5a89: $7f
	ldh a, [$6f]                                     ; $5a8a: $f0 $6f
	ldh a, [c]                                       ; $5a8c: $f2
	ld a, a                                          ; $5a8d: $7f
	or c                                             ; $5a8e: $b1
	ld a, a                                          ; $5a8f: $7f
	di                                               ; $5a90: $f3
	sbc c                                            ; $5a91: $99
	db $fd                                           ; $5a92: $fd
	nop                                              ; $5a93: $00
	ld l, [hl]                                       ; $5a94: $6e
	sub c                                            ; $5a95: $91
	ld e, a                                          ; $5a96: $5f
	and b                                            ; $5a97: $a0
	ld [hl], a                                       ; $5a98: $77
	ldh a, [c]                                       ; $5a99: $f2
	sbc [hl]                                         ; $5a9a: $9e
	rst SubAFromHL                                          ; $5a9b: $d7
	ld a, e                                          ; $5a9c: $7b
	ldh a, [$7e]                                     ; $5a9d: $f0 $7e
	cp [hl]                                          ; $5a9f: $be
	sbc h                                            ; $5aa0: $9c
	ld d, l                                          ; $5aa1: $55
	nop                                              ; $5aa2: $00
	cp $73                                           ; $5aa3: $fe $73
	db $e4                                           ; $5aa5: $e4
	sbc h                                            ; $5aa6: $9c
	ei                                               ; $5aa7: $fb
	nop                                              ; $5aa8: $00
	push de                                          ; $5aa9: $d5
	ld a, e                                          ; $5aaa: $7b
	ldh a, [rIE]                                     ; $5aab: $f0 $ff
	ld a, [hl]                                       ; $5aad: $7e
	xor b                                            ; $5aae: $a8
	sbc [hl]                                         ; $5aaf: $9e
	xor e                                            ; $5ab0: $ab
	ld h, e                                          ; $5ab1: $63
	adc e                                            ; $5ab2: $8b
	ld [hl], a                                       ; $5ab3: $77
	ldh a, [$9e]                                     ; $5ab4: $f0 $9e
	inc e                                            ; $5ab6: $1c
	ld l, e                                          ; $5ab7: $6b
	db $f4                                           ; $5ab8: $f4
	add b                                            ; $5ab9: $80
	db $fd                                           ; $5aba: $fd
	ld [bc], a                                       ; $5abb: $02
	cp $01                                           ; $5abc: $fe $01
	xor c                                            ; $5abe: $a9
	ld [bc], a                                       ; $5abf: $02
	ld [$1c0b], sp                                   ; $5ac0: $08 $0b $1c
	dec bc                                           ; $5ac3: $0b
	db $fc                                           ; $5ac4: $fc
	dec bc                                           ; $5ac5: $0b
	rst $38                                          ; $5ac6: $ff
	inc c                                            ; $5ac7: $0c
	db $fd                                           ; $5ac8: $fd
	inc e                                            ; $5ac9: $1c
	pop hl                                           ; $5aca: $e1
	nop                                              ; $5acb: $00
	call $8b30                                       ; $5acc: $cd $30 $8b
	ld [hl], b                                       ; $5acf: $70
	halt                                             ; $5ad0: $76
	adc a                                            ; $5ad1: $8f
	or $09                                           ; $5ad2: $f6 $09
	sub [hl]                                         ; $5ad4: $96
	ld c, c                                          ; $5ad5: $49
	add b                                            ; $5ad6: $80
	ld l, a                                          ; $5ad7: $6f
	add l                                            ; $5ad8: $85
	sbc b                                            ; $5ad9: $98
	ld e, d                                          ; $5ada: $5a
	inc b                                            ; $5adb: $04
	db $db                                           ; $5adc: $db
	dec d                                            ; $5add: $15
	jp c, $9a1d                                      ; $5ade: $da $1d $9a

	ld [hl], a                                       ; $5ae1: $77
	ld [hl], d                                       ; $5ae2: $72
	ld a, a                                          ; $5ae3: $7f
	ld d, [hl]                                       ; $5ae4: $56
	sbc d                                            ; $5ae5: $9a
	and a                                            ; $5ae6: $a7
	ld d, b                                          ; $5ae7: $50
	ld h, b                                          ; $5ae8: $60
	add b                                            ; $5ae9: $80
	push af                                          ; $5aea: $f5
	ld [hl], e                                       ; $5aeb: $73
	jp z, $0a9a                                      ; $5aec: $ca $9a $0a

	push af                                          ; $5aef: $f5

jr_047_5af0:
	or a                                             ; $5af0: $b7
	ld c, b                                          ; $5af1: $48
	pop hl                                           ; $5af2: $e1
	db $fc                                           ; $5af3: $fc
	ld a, a                                          ; $5af4: $7f
	xor b                                            ; $5af5: $a8
	sbc [hl]                                         ; $5af6: $9e
	ld [$f07b], a                                    ; $5af7: $ea $7b $f0
	sub [hl]                                         ; $5afa: $96
	and b                                            ; $5afb: $a0
	ld e, a                                          ; $5afc: $5f
	ld d, h                                          ; $5afd: $54
	xor e                                            ; $5afe: $ab
	ld [$0515], a                                    ; $5aff: $ea $15 $05
	ld [bc], a                                       ; $5b02: $02
	ld bc, $527b                                     ; $5b03: $01 $7b $52
	ld a, a                                          ; $5b06: $7f
	and d                                            ; $5b07: $a2
	sbc l                                            ; $5b08: $9d
	ld sp, hl                                        ; $5b09: $f9
	inc bc                                           ; $5b0a: $03
	ld [hl], a                                       ; $5b0b: $77
	db $db                                           ; $5b0c: $db
	ld a, a                                          ; $5b0d: $7f
	ld d, h                                          ; $5b0e: $54
	ld [hl], a                                       ; $5b0f: $77
	ld h, b                                          ; $5b10: $60
	sub l                                            ; $5b11: $95
	add a                                            ; $5b12: $87
	rra                                              ; $5b13: $1f
	rra                                              ; $5b14: $1f
	rst $38                                          ; $5b15: $ff
	adc [hl]                                         ; $5b16: $8e
	db $f4                                           ; $5b17: $f4

jr_047_5b18:
	nop                                              ; $5b18: $00
	rst $38                                          ; $5b19: $ff
	ld bc, $6ffe                                     ; $5b1a: $01 $fe $6f
	ldh a, [hDisp1_OBP0]                                     ; $5b1d: $f0 $93
	rst SubAFromBC                                          ; $5b1f: $e7
	ld hl, sp-$02                                    ; $5b20: $f8 $fe
	rst $38                                          ; $5b22: $ff
	rst SubAFromDE                                          ; $5b23: $df
	ccf                                              ; $5b24: $3f
	nop                                              ; $5b25: $00
	rst $38                                          ; $5b26: $ff
	ld d, h                                          ; $5b27: $54
	xor e                                            ; $5b28: $ab
	xor d                                            ; $5b29: $aa
	ld d, l                                          ; $5b2a: $55
	ld [hl], a                                       ; $5b2b: $77
	ld d, b                                          ; $5b2c: $50
	sbc c                                            ; $5b2d: $99
	ld a, a                                          ; $5b2e: $7f
	add b                                            ; $5b2f: $80
	ccf                                              ; $5b30: $3f
	add b                                            ; $5b31: $80
	rst JumpTable                                          ; $5b32: $c7
	ldh [rPCM34], a                                  ; $5b33: $e0 $77
	and d                                            ; $5b35: $a2
	ld a, a                                          ; $5b36: $7f
	inc l                                            ; $5b37: $2c
	ld [hl], a                                       ; $5b38: $77
	and [hl]                                         ; $5b39: $a6
	sbc c                                            ; $5b3a: $99
	db $fc                                           ; $5b3b: $fc
	nop                                              ; $5b3c: $00
	ld hl, sp+$00                                    ; $5b3d: $f8 $00
	sbc a                                            ; $5b3f: $9f
	nop                                              ; $5b40: $00
	ld l, a                                          ; $5b41: $6f
	call nc, $fe77                                   ; $5b42: $d4 $77 $fe
	sbc [hl]                                         ; $5b45: $9e
	rra                                              ; $5b46: $1f
	ld [hl], d                                       ; $5b47: $72
	di                                               ; $5b48: $f3
	ld a, a                                          ; $5b49: $7f
	db $e4                                           ; $5b4a: $e4
	ld a, a                                          ; $5b4b: $7f
	call nc, $e67f                                   ; $5b4c: $d4 $7f $e6
	ld h, a                                          ; $5b4f: $67
	ld b, b                                          ; $5b50: $40
	sbc h                                            ; $5b51: $9c
	rst SubAFromDE                                          ; $5b52: $df
	nop                                              ; $5b53: $00
	ldh [$fc], a                                     ; $5b54: $e0 $fc
	ld a, a                                          ; $5b56: $7f
	inc e                                            ; $5b57: $1c
	sbc [hl]                                         ; $5b58: $9e
	cp d                                             ; $5b59: $ba
	ld l, e                                          ; $5b5a: $6b
	xor $fd                                          ; $5b5b: $ee $fd
	ld a, [hl]                                       ; $5b5d: $7e
	jp c, $f07f                                      ; $5b5e: $da $7f $f0

	ld h, [hl]                                       ; $5b61: $66
	and a                                            ; $5b62: $a7
	ld a, l                                          ; $5b63: $7d
	add sp, $7f                                      ; $5b64: $e8 $7f
	db $f4                                           ; $5b66: $f4
	sbc d                                            ; $5b67: $9a
	xor a                                            ; $5b68: $af
	nop                                              ; $5b69: $00
	ld d, a                                          ; $5b6a: $57
	nop                                              ; $5b6b: $00
	cp a                                             ; $5b6c: $bf
	ld h, e                                          ; $5b6d: $63
	ld c, $77                                        ; $5b6e: $0e $77
	db $e4                                           ; $5b70: $e4
	sbc [hl]                                         ; $5b71: $9e
	ld d, h                                          ; $5b72: $54
	ld a, c                                          ; $5b73: $79
	and b                                            ; $5b74: $a0
	di                                               ; $5b75: $f3
	sbc c                                            ; $5b76: $99
	inc c                                            ; $5b77: $0c
	nop                                              ; $5b78: $00
	ld a, [hl+]                                      ; $5b79: $2a
	inc d                                            ; $5b7a: $14
	ld d, l                                          ; $5b7b: $55
	jr z, jr_047_5bf9                                ; $5b7c: $28 $7b

	sub d                                            ; $5b7e: $92
	halt                                             ; $5b7f: $76
	sbc h                                            ; $5b80: $9c
	ld hl, sp+$6e                                    ; $5b81: $f8 $6e
	ld a, l                                          ; $5b83: $7d
	sub e                                            ; $5b84: $93
	ld c, $00                                        ; $5b85: $0e $00
	dec d                                            ; $5b87: $15
	ld a, [bc]                                       ; $5b88: $0a
	ld a, [hl+]                                      ; $5b89: $2a
	dec d                                            ; $5b8a: $15
	ld d, a                                          ; $5b8b: $57
	jr z, jr_047_5b18                                ; $5b8c: $28 $8a

	ld [hl], l                                       ; $5b8e: $75
	ld b, b                                          ; $5b8f: $40
	cp a                                             ; $5b90: $bf
	ei                                               ; $5b91: $fb
	ld a, c                                          ; $5b92: $79
	ld h, b                                          ; $5b93: $60
	rst SubAFromDE                                          ; $5b94: $df
	ld b, b                                          ; $5b95: $40
	sub c                                            ; $5b96: $91
	and b                                            ; $5b97: $a0
	ld [$07f0], sp                                   ; $5b98: $08 $f0 $07
	ld hl, sp+$56                                    ; $5b9b: $f8 $56
	ld bc, $03a9                                     ; $5b9d: $01 $a9 $03
	dec b                                            ; $5ba0: $05
	inc bc                                           ; $5ba1: $03
	dec hl                                           ; $5ba2: $2b
	inc bc                                           ; $5ba3: $03
	rla                                              ; $5ba4: $17
	ld a, e                                          ; $5ba5: $7b
	sbc d                                            ; $5ba6: $9a
	sbc [hl]                                         ; $5ba7: $9e
	ld e, a                                          ; $5ba8: $5f
	ld a, e                                          ; $5ba9: $7b
	and b                                            ; $5baa: $a0
	sub l                                            ; $5bab: $95
	add e                                            ; $5bac: $83
	ld [hl], h                                       ; $5bad: $74
	add d                                            ; $5bae: $82
	ld h, e                                          ; $5baf: $63
	add d                                            ; $5bb0: $82
	ld a, a                                          ; $5bb1: $7f
	nop                                              ; $5bb2: $00
	di                                               ; $5bb3: $f3
	rlca                                             ; $5bb4: $07
	rst SubAFromHL                                          ; $5bb5: $d7
	ld a, d                                          ; $5bb6: $7a
	add c                                            ; $5bb7: $81
	ld a, [hl]                                       ; $5bb8: $7e
	adc a                                            ; $5bb9: $8f
	sub l                                            ; $5bba: $95
	push af                                          ; $5bbb: $f5
	dec e                                            ; $5bbc: $1d
	ld a, [$fa1d]                                    ; $5bbd: $fa $1d $fa
	cp $b3                                           ; $5bc0: $fe $b3
	dec bc                                           ; $5bc2: $0b
	rst FarCall                                          ; $5bc3: $f7
	add b                                            ; $5bc4: $80
	ld a, c                                          ; $5bc5: $79
	ld a, [de]                                       ; $5bc6: $1a
	sbc e                                            ; $5bc7: $9b
	nop                                              ; $5bc8: $00
	and $04                                          ; $5bc9: $e6 $04
	ldh [c], a                                       ; $5bcb: $e2
	ld l, a                                          ; $5bcc: $6f
	ld a, d                                          ; $5bcd: $7a
	ld a, a                                          ; $5bce: $7f
	inc d                                            ; $5bcf: $14
	ld a, a                                          ; $5bd0: $7f
	cp $9c                                           ; $5bd1: $fe $9c
	ld d, l                                          ; $5bd3: $55
	add b                                            ; $5bd4: $80
	ld a, [hl+]                                      ; $5bd5: $2a
	ld a, e                                          ; $5bd6: $7b
	db $fc                                           ; $5bd7: $fc
	ld [hl], a                                       ; $5bd8: $77
	ldh a, [c]                                       ; $5bd9: $f2
	ld a, [hl]                                       ; $5bda: $7e
	ld h, b                                          ; $5bdb: $60
	ld a, [hl]                                       ; $5bdc: $7e
	ld c, h                                          ; $5bdd: $4c
	add b                                            ; $5bde: $80
	ei                                               ; $5bdf: $fb
	ld bc, $066f                                     ; $5be0: $01 $6f $06
	sbc a                                            ; $5be3: $9f
	inc c                                            ; $5be4: $0c
	ccf                                              ; $5be5: $3f
	db $10                                           ; $5be6: $10
	rst SubAFromBC                                          ; $5be7: $e7
	rrca                                             ; $5be8: $0f
	adc a                                            ; $5be9: $8f
	rra                                              ; $5bea: $1f
	or l                                             ; $5beb: $b5
	ld a, e                                          ; $5bec: $7b
	jp hl                                            ; $5bed: $e9


	di                                               ; $5bee: $f3
	rst $38                                          ; $5bef: $ff
	rst $38                                          ; $5bf0: $ff
	ld c, c                                          ; $5bf1: $49
	di                                               ; $5bf2: $f3
	ld b, c                                          ; $5bf3: $41
	di                                               ; $5bf4: $f3
	ld c, l                                          ; $5bf5: $4d
	di                                               ; $5bf6: $f3
	sub h                                            ; $5bf7: $94
	ld l, a                                          ; $5bf8: $6f

jr_047_5bf9:
	ei                                               ; $5bf9: $fb
	rst $38                                          ; $5bfa: $ff
	dec bc                                           ; $5bfb: $0b
	call nz, $8038                                   ; $5bfc: $c4 $38 $80
	call nz, $fde2                                   ; $5bff: $c4 $e2 $fd
	xor [hl]                                         ; $5c02: $ae
	ld d, l                                          ; $5c03: $55
	inc d                                            ; $5c04: $14
	rst AddAOntoHL                                          ; $5c05: $ef
	inc l                                            ; $5c06: $2c
	rst SubAFromHL                                          ; $5c07: $d7
	db $10                                           ; $5c08: $10
	rst $38                                          ; $5c09: $ff
	call nc, $ebff                                   ; $5c0a: $d4 $ff $eb
	inc d                                            ; $5c0d: $14
	ld bc, $fa14                                     ; $5c0e: $01 $14 $fa
	dec d                                            ; $5c11: $15
	jp hl                                            ; $5c12: $e9


	ld d, $ac                                        ; $5c13: $16 $ac
	dec d                                            ; $5c15: $15
	db $e4                                           ; $5c16: $e4
	rra                                              ; $5c17: $1f
	rst GetHLinHL                                          ; $5c18: $cf
	ldh a, [$31]                                     ; $5c19: $f0 $31
	db $fc                                           ; $5c1b: $fc
	adc h                                            ; $5c1c: $8c
	ld a, [hl]                                       ; $5c1d: $7e
	sub l                                            ; $5c1e: $95
	ld b, $fb                                        ; $5c1f: $06 $fb
	ld sp, hl                                        ; $5c21: $f9
	rst $38                                          ; $5c22: $ff
	cp $03                                           ; $5c23: $fe $03
	ld b, $fb                                        ; $5c25: $06 $fb
	ld b, [hl]                                       ; $5c27: $46
	ei                                               ; $5c28: $fb
	ld l, e                                          ; $5c29: $6b
	and b                                            ; $5c2a: $a0
	sub [hl]                                         ; $5c2b: $96
	nop                                              ; $5c2c: $00
	or l                                             ; $5c2d: $b5
	add b                                            ; $5c2e: $80
	jp z, $25c0                                      ; $5c2f: $ca $c0 $25

	ldh [rAUD1SWEEP], a                              ; $5c32: $e0 $10
	or $6f                                           ; $5c34: $f6 $6f
	ldh a, [$7f]                                     ; $5c36: $f0 $7f
	sbc [hl]                                         ; $5c38: $9e
	sbc d                                            ; $5c39: $9a
	ld e, b                                          ; $5c3a: $58
	nop                                              ; $5c3b: $00
	and c                                            ; $5c3c: $a1
	ld [bc], a                                       ; $5c3d: $02
	ld c, h                                          ; $5c3e: $4c
	ld a, d                                          ; $5c3f: $7a
	cp h                                             ; $5c40: $bc
	ld a, a                                          ; $5c41: $7f
	db $f4                                           ; $5c42: $f4
	sub a                                            ; $5c43: $97
	db $e3                                           ; $5c44: $e3
	nop                                              ; $5c45: $00
	add h                                            ; $5c46: $84
	jr jr_047_5ca3                                   ; $5c47: $18 $5a

	jr nz, jr_047_5cab                               ; $5c49: $20 $60

	add b                                            ; $5c4b: $80
	ld [hl], a                                       ; $5c4c: $77
	inc h                                            ; $5c4d: $24
	ld h, [hl]                                       ; $5c4e: $66
	cp b                                             ; $5c4f: $b8
	ld a, [hl]                                       ; $5c50: $7e
	ld a, c                                          ; $5c51: $79
	ld a, [hl]                                       ; $5c52: $7e
	ret c                                            ; $5c53: $d8

	sbc h                                            ; $5c54: $9c
	ld hl, $1800                                     ; $5c55: $21 $00 $18
	ld d, c                                          ; $5c58: $51
	ld h, c                                          ; $5c59: $61
	ld a, [hl]                                       ; $5c5a: $7e
	jp c, $db7c                                      ; $5c5b: $da $7c $db

	sbc l                                            ; $5c5e: $9d
	add sp, $10                                      ; $5c5f: $e8 $10
	ld h, a                                          ; $5c61: $67
	ret nz                                           ; $5c62: $c0

	ld l, l                                          ; $5c63: $6d
	call nz, $97ff                                   ; $5c64: $c4 $ff $97
	jr @+$04                                         ; $5c67: $18 $02

	cp h                                             ; $5c69: $bc
	ld bc, $2ad5                                     ; $5c6a: $01 $d5 $2a
	xor e                                            ; $5c6d: $ab
	ld d, h                                          ; $5c6e: $54
	ld [hl], l                                       ; $5c6f: $75
	ld a, [hl]                                       ; $5c70: $7e
	ld a, a                                          ; $5c71: $7f
	db $fc                                           ; $5c72: $fc
	add b                                            ; $5c73: $80
	ld [hl+], a                                      ; $5c74: $22
	db $dd                                           ; $5c75: $dd
	inc b                                            ; $5c76: $04
	ei                                               ; $5c77: $fb
	add e                                            ; $5c78: $83
	ld a, l                                          ; $5c79: $7d
	ld b, $ff                                        ; $5c7a: $06 $ff
	adc c                                            ; $5c7c: $89
	ld a, [hl]                                       ; $5c7d: $7e
	inc de                                           ; $5c7e: $13
	db $fc                                           ; $5c7f: $fc
	sub e                                            ; $5c80: $93
	ld a, h                                          ; $5c81: $7c
	di                                               ; $5c82: $f3
	inc a                                            ; $5c83: $3c
	and a                                            ; $5c84: $a7
	ld a, b                                          ; $5c85: $78
	nop                                              ; $5c86: $00
	add c                                            ; $5c87: $81
	ldh [$e2], a                                     ; $5c88: $e0 $e2
	add sp, $1d                                      ; $5c8a: $e8 $1d
	sbc h                                            ; $5c8c: $9c
	ld h, [hl]                                       ; $5c8d: $66
	ld a, [hl]                                       ; $5c8e: $7e
	di                                               ; $5c8f: $f3
	xor [hl]                                         ; $5c90: $ae
	dec e                                            ; $5c91: $1d
	ld d, $9b                                        ; $5c92: $16 $9b
	rrca                                             ; $5c94: $0f
	dec bc                                           ; $5c95: $0b
	ld b, $80                                        ; $5c96: $06 $80
	ld a, b                                          ; $5c98: $78
	adc [hl]                                         ; $5c99: $8e
	sbc b                                            ; $5c9a: $98
	add c                                            ; $5c9b: $81
	ld a, a                                          ; $5c9c: $7f

jr_047_5c9d:
	rra                                              ; $5c9d: $1f
	rst $38                                          ; $5c9e: $ff
	rst AddAOntoHL                                          ; $5c9f: $ef
	ldh a, [$7f]                                     ; $5ca0: $f0 $7f
	ld [hl], e                                       ; $5ca2: $73

jr_047_5ca3:
	inc d                                            ; $5ca3: $14
	sub c                                            ; $5ca4: $91
	ld l, h                                          ; $5ca5: $6c
	cp [hl]                                          ; $5ca6: $be
	sbc e                                            ; $5ca7: $9b
	rst SubAFromBC                                          ; $5ca8: $e7
	ld a, c                                          ; $5ca9: $79
	add a                                            ; $5caa: $87

jr_047_5cab:
	dec [hl]                                         ; $5cab: $35
	ret                                              ; $5cac: $c9


	pop bc                                           ; $5cad: $c1
	add hl, sp                                       ; $5cae: $39
	di                                               ; $5caf: $f3
	rrca                                             ; $5cb0: $0f
	db $fd                                           ; $5cb1: $fd
	inc bc                                           ; $5cb2: $03
	ld [hl], a                                       ; $5cb3: $77
	xor $80                                          ; $5cb4: $ee $80
	ld e, l                                          ; $5cb6: $5d
	and d                                            ; $5cb7: $a2
	xor d                                            ; $5cb8: $aa
	ld d, l                                          ; $5cb9: $55
	ld d, c                                          ; $5cba: $51
	xor [hl]                                         ; $5cbb: $ae
	jr nz, jr_047_5c9d                               ; $5cbc: $20 $df

	nop                                              ; $5cbe: $00
	rst $38                                          ; $5cbf: $ff
	inc h                                            ; $5cc0: $24
	sbc $d0                                          ; $5cc1: $de $d0
	ld hl, sp+$01                                    ; $5cc3: $f8 $01
	db $f4                                           ; $5cc5: $f4
	adc l                                            ; $5cc6: $8d
	ld [hl], d                                       ; $5cc7: $72
	ldh [c], a                                       ; $5cc8: $e2
	dec e                                            ; $5cc9: $1d
	ld b, h                                          ; $5cca: $44
	cp e                                             ; $5ccb: $bb
	dec hl                                           ; $5ccc: $2b
	call nc, $bd1e                                   ; $5ccd: $d4 $1e $bd
	ld [hl], e                                       ; $5cd0: $73
	ld [hl], b                                       ; $5cd1: $70
	and $c9                                          ; $5cd2: $e6 $c9
	and h                                            ; $5cd4: $a4
	sbc c                                            ; $5cd5: $99
	ld e, d                                          ; $5cd6: $5a
	dec d                                            ; $5cd7: $15
	ld [$7d82], a                                    ; $5cd8: $ea $82 $7d
	ld bc, $3d79                                     ; $5cdb: $01 $79 $3d
	add b                                            ; $5cde: $80
	db $fc                                           ; $5cdf: $fc
	rra                                              ; $5ce0: $1f
	add e                                            ; $5ce1: $83
	ld h, h                                          ; $5ce2: $64
	ld b, $09                                        ; $5ce3: $06 $09
	ld bc, $0480                                     ; $5ce5: $01 $80 $04
	add e                                            ; $5ce8: $83
	sbc e                                            ; $5ce9: $9b
	dec b                                            ; $5cea: $05
	ld h, [hl]                                       ; $5ceb: $66
	sbc e                                            ; $5cec: $9b
	inc e                                            ; $5ced: $1c
	rst SubAFromBC                                          ; $5cee: $e7
	ldh a, [$1f]                                     ; $5cef: $f0 $1f
	or b                                             ; $5cf1: $b0
	ld a, a                                          ; $5cf2: $7f
	nop                                              ; $5cf3: $00
	rra                                              ; $5cf4: $1f
	ld a, a                                          ; $5cf5: $7f
	jr nz, @+$01                                     ; $5cf6: $20 $ff

	rst SubAFromDE                                          ; $5cf8: $df
	rst SubAFromDE                                          ; $5cf9: $df
	or b                                             ; $5cfa: $b0
	ld sp, $11de                                     ; $5cfb: $31 $de $11
	sub a                                            ; $5cfe: $97
	cp $10                                           ; $5cff: $fe $10
	rst $38                                          ; $5d01: $ff
	ld a, a                                          ; $5d02: $7f
	rst $38                                          ; $5d03: $ff
	dec e                                            ; $5d04: $1d
	ldh a, [c]                                       ; $5d05: $f2
	ld c, l                                          ; $5d06: $4d
	ld a, d                                          ; $5d07: $7a
	add $8b                                          ; $5d08: $c6 $8b
	db $fd                                           ; $5d0a: $fd
	ld b, e                                          ; $5d0b: $43
	ld b, l                                          ; $5d0c: $45
	ei                                               ; $5d0d: $fb
	ld c, c                                          ; $5d0e: $49
	rst FarCall                                          ; $5d0f: $f7
	ld b, l                                          ; $5d10: $45
	ei                                               ; $5d11: $fb
	rst $38                                          ; $5d12: $ff
	rst $38                                          ; $5d13: $ff
	ld b, l                                          ; $5d14: $45
	ei                                               ; $5d15: $fb
	sub h                                            ; $5d16: $94
	ld l, a                                          ; $5d17: $6f
	rst $38                                          ; $5d18: $ff
	db $fc                                           ; $5d19: $fc
	ei                                               ; $5d1a: $fb
	inc b                                            ; $5d1b: $04
	inc l                                            ; $5d1c: $2c
	rst SubAFromHL                                          ; $5d1d: $d7
	halt                                             ; $5d1e: $76
	call nz, $ffdf                                   ; $5d1f: $c4 $df $ff
	sub l                                            ; $5d22: $95
	inc l                                            ; $5d23: $2c
	db $d3                                           ; $5d24: $d3
	ld a, a                                          ; $5d25: $7f
	rst $38                                          ; $5d26: $ff
	rst $38                                          ; $5d27: $ff
	inc d                                            ; $5d28: $14
	sub h                                            ; $5d29: $94
	ld a, a                                          ; $5d2a: $7f
	inc d                                            ; $5d2b: $14
	rst $38                                          ; $5d2c: $ff
	ld [hl], a                                       ; $5d2d: $77
	cp $7b                                           ; $5d2e: $fe $7b
	push af                                          ; $5d30: $f5
	sub [hl]                                         ; $5d31: $96
	rst $38                                          ; $5d32: $ff
	cp e                                             ; $5d33: $bb
	rst $38                                          ; $5d34: $ff
	cp $43                                           ; $5d35: $fe $43
	ld h, a                                          ; $5d37: $67
	jp c, $db66                                      ; $5d38: $da $66 $db

	ld [hl], a                                       ; $5d3b: $77
	db $fc                                           ; $5d3c: $fc
	adc [hl]                                         ; $5d3d: $8e
	rst SubAFromDE                                          ; $5d3e: $df
	ei                                               ; $5d3f: $fb
	ld h, [hl]                                       ; $5d40: $66
	db $db                                           ; $5d41: $db
	db $fc                                           ; $5d42: $fc
	ei                                               ; $5d43: $fb
	adc [hl]                                         ; $5d44: $8e
	ld [hl], l                                       ; $5d45: $75
	rlca                                             ; $5d46: $07
	ld a, [$fd03]                                    ; $5d47: $fa $03 $fd
	ld bc, $02fe                                     ; $5d4a: $01 $fe $02
	db $fd                                           ; $5d4d: $fd
	rst $38                                          ; $5d4e: $ff
	ld a, c                                          ; $5d4f: $79
	ld b, [hl]                                       ; $5d50: $46
	ld a, [hl]                                       ; $5d51: $7e
	ld h, a                                          ; $5d52: $67
	add b                                            ; $5d53: $80
	ld h, b                                          ; $5d54: $60
	pop af                                           ; $5d55: $f1
	ld [hl], c                                       ; $5d56: $71
	ei                                               ; $5d57: $fb
	ld sp, $91fb                                     ; $5d58: $31 $fb $91
	ei                                               ; $5d5b: $fb
	pop bc                                           ; $5d5c: $c1
	ld a, e                                          ; $5d5d: $7b
	pop hl                                           ; $5d5e: $e1
	dec sp                                           ; $5d5f: $3b
	pop af                                           ; $5d60: $f1
	dec de                                           ; $5d61: $1b
	nop                                              ; $5d62: $00
	rst AddAOntoHL                                          ; $5d63: $ef
	jp $e7ef                                         ; $5d64: $c3 $ef $e7


	rst AddAOntoHL                                          ; $5d67: $ef
	rst JumpTable                                          ; $5d68: $c7
	rst AddAOntoHL                                          ; $5d69: $ef
	ld b, a                                          ; $5d6a: $47
	xor a                                            ; $5d6b: $af
	pop bc                                           ; $5d6c: $c1
	cpl                                              ; $5d6d: $2f
	call nc, $f62b                                   ; $5d6e: $d4 $2b $f6
	add hl, bc                                       ; $5d71: $09
	nop                                              ; $5d72: $00
	sbc c                                            ; $5d73: $99
	rst SubAFromDE                                          ; $5d74: $df
	ld c, l                                          ; $5d75: $4d
	sbc [hl]                                         ; $5d76: $9e
	rst GetHLinHL                                          ; $5d77: $cf
	sbc [hl]                                         ; $5d78: $9e
	rst SubAFromDE                                          ; $5d79: $df
	ld l, e                                          ; $5d7a: $6b
	cp $7f                                           ; $5d7b: $fe $7f
	jp z, $3397                                      ; $5d7d: $ca $97 $33

	nop                                              ; $5d80: $00
	ld d, l                                          ; $5d81: $55
	ld a, [hl+]                                      ; $5d82: $2a
	ld a, [hl+]                                      ; $5d83: $2a
	ld d, l                                          ; $5d84: $55
	ld b, c                                          ; $5d85: $41
	ld a, $7a                                        ; $5d86: $3e $7a
	ld a, l                                          ; $5d88: $7d
	ld a, e                                          ; $5d89: $7b
	cp $98                                           ; $5d8a: $fe $98
	ld d, e                                          ; $5d8c: $53
	cpl                                              ; $5d8d: $2f
	jr nz, jr_047_5d90                               ; $5d8e: $20 $00

jr_047_5d90:
	ld d, b                                          ; $5d90: $50
	xor [hl]                                         ; $5d91: $ae
	and b                                            ; $5d92: $a0
	ld [hl], l                                       ; $5d93: $75
	rst SubAFromBC                                          ; $5d94: $e7
	sub [hl]                                         ; $5d95: $96
	rst $38                                          ; $5d96: $ff
	rlca                                             ; $5d97: $07
	rst $38                                          ; $5d98: $ff
	ld [hl], a                                       ; $5d99: $77
	ld hl, sp-$41                                    ; $5d9a: $f8 $bf
	ret nz                                           ; $5d9c: $c0

	ld b, l                                          ; $5d9d: $45

Call_047_5d9e:
	cp d                                             ; $5d9e: $ba
	ld l, a                                          ; $5d9f: $6f
	ld [hl-], a                                      ; $5da0: $32
	ld [hl], a                                       ; $5da1: $77
	db $fc                                           ; $5da2: $fc
	ld [hl], a                                       ; $5da3: $77
	cp $80                                           ; $5da4: $fe $80
	and [hl]                                         ; $5da6: $a6
	ld a, c                                          ; $5da7: $79
	and [hl]                                         ; $5da8: $a6
	ld a, c                                          ; $5da9: $79
	or e                                             ; $5daa: $b3
	inc a                                            ; $5dab: $3c
	inc sp                                           ; $5dac: $33
	ld a, h                                          ; $5dad: $7c
	ld de, $08be                                     ; $5dae: $11 $be $08
	ld e, a                                          ; $5db1: $5f
	inc c                                            ; $5db2: $0c
	cp a                                             ; $5db3: $bf
	adc a                                            ; $5db4: $8f
	ld e, a                                          ; $5db5: $5f
	ld [$8d07], sp                                   ; $5db6: $08 $07 $8d
	ld b, $05                                        ; $5db9: $06 $05
	adc [hl]                                         ; $5dbb: $8e
	ld d, e                                          ; $5dbc: $53
	adc h                                            ; $5dbd: $8c
	sbc e                                            ; $5dbe: $9b
	ld a, h                                          ; $5dbf: $7c
	di                                               ; $5dc0: $f3
	inc e                                            ; $5dc1: $1c
	ld [hl], a                                       ; $5dc2: $77
	cp b                                             ; $5dc3: $b8
	rst AddAOntoHL                                          ; $5dc4: $ef
	sbc [hl]                                         ; $5dc5: $9e
	ldh a, [rRP]                                     ; $5dc6: $f0 $56
	ld l, [hl]                                       ; $5dc8: $6e
	ld a, h                                          ; $5dc9: $7c
	ld h, b                                          ; $5dca: $60
	ld a, a                                          ; $5dcb: $7f
	cp $5f                                           ; $5dcc: $fe $5f
	ldh a, [c]                                       ; $5dce: $f2

jr_047_5dcf:
	ld a, [hl]                                       ; $5dcf: $7e
	or b                                             ; $5dd0: $b0
	ld a, [hl]                                       ; $5dd1: $7e
	inc b                                            ; $5dd2: $04
	add b                                            ; $5dd3: $80
	sbc c                                            ; $5dd4: $99
	cp [hl]                                          ; $5dd5: $be
	and c                                            ; $5dd6: $a1
	ld h, e                                          ; $5dd7: $63
	sub $36                                          ; $5dd8: $d6 $36
	ldh [rAUD2LOW], a                                ; $5dda: $e0 $18
	push af                                          ; $5ddc: $f5
	inc c                                            ; $5ddd: $0c
	db $fd                                           ; $5dde: $fd
	ld b, $fb                                        ; $5ddf: $06 $fb
	ld b, $fa                                        ; $5de1: $06 $fa
	rlca                                             ; $5de3: $07
	rst $38                                          ; $5de4: $ff
	inc bc                                           ; $5de5: $03
	nop                                              ; $5de6: $00
	ld a, $01                                        ; $5de7: $3e $01
	ld a, b                                          ; $5de9: $78
	ld h, e                                          ; $5dea: $63
	ldh a, [$cd]                                     ; $5deb: $f0 $cd
	db $e3                                           ; $5ded: $e3
	sub e                                            ; $5dee: $93
	rst JumpTable                                          ; $5def: $c7
	daa                                              ; $5df0: $27
	adc a                                            ; $5df1: $8f
	ld c, [hl]                                       ; $5df2: $4e
	add b                                            ; $5df3: $80
	rra                                              ; $5df4: $1f
	ld e, [hl]                                       ; $5df5: $5e
	inc a                                            ; $5df6: $3c
	nop                                              ; $5df7: $00
	inc e                                            ; $5df8: $1c
	ret nz                                           ; $5df9: $c0

	jr c, jr_047_5e5c                                ; $5dfa: $38 $60

	pop af                                           ; $5dfc: $f1
	jp $87e7                                         ; $5dfd: $c3 $e7 $87


	rst GetHLinHL                                          ; $5e00: $cf
	ld c, $9f                                        ; $5e01: $0e $9f
	inc e                                            ; $5e03: $1c
	ld a, $38                                        ; $5e04: $3e $38
	ld a, h                                          ; $5e06: $7c
	rlca                                             ; $5e07: $07
	ccf                                              ; $5e08: $3f
	dec bc                                           ; $5e09: $0b
	ld [hl], c                                       ; $5e0a: $71
	ld bc, $80e0                                     ; $5e0b: $01 $e0 $80
	pop bc                                           ; $5e0e: $c1
	nop                                              ; $5e0f: $00
	adc [hl]                                         ; $5e10: $8e
	inc c                                            ; $5e11: $0c
	inc a                                            ; $5e12: $3c
	ld a, a                                          ; $5e13: $7f
	ldh a, [c]                                       ; $5e14: $f2
	add b                                            ; $5e15: $80
	ld [hl], b                                       ; $5e16: $70
	ld sp, hl                                        ; $5e17: $f9
	ld sp, hl                                        ; $5e18: $f9
	cp $fb                                           ; $5e19: $fe $fb
	add $e7                                          ; $5e1b: $c6 $e7
	ld a, d                                          ; $5e1d: $7a
	ld [hl], a                                       ; $5e1e: $77
	cp a                                             ; $5e1f: $bf
	add hl, sp                                       ; $5e20: $39
	rra                                              ; $5e21: $1f
	inc c                                            ; $5e22: $0c
	ccf                                              ; $5e23: $3f
	dec l                                            ; $5e24: $2d
	ld a, a                                          ; $5e25: $7f
	adc $37                                          ; $5e26: $ce $37
	ret                                              ; $5e28: $c9


	ld [hl], a                                       ; $5e29: $77
	cp [hl]                                          ; $5e2a: $be
	ld b, c                                          ; $5e2b: $41
	ret                                              ; $5e2c: $c9


	ld [hl], a                                       ; $5e2d: $77
	rst $38                                          ; $5e2e: $ff
	ld a, a                                          ; $5e2f: $7f
	ld c, c                                          ; $5e30: $49
	or a                                             ; $5e31: $b7
	cp $01                                           ; $5e32: $fe $01
	jr z, jr_047_5dcf                                ; $5e34: $28 $99

	rst SubAFromHL                                          ; $5e36: $d7
	db $ed                                           ; $5e37: $ed
	sub e                                            ; $5e38: $93
	ld e, $ef                                        ; $5e39: $1e $ef
	db $fc                                           ; $5e3b: $fc
	ld a, b                                          ; $5e3c: $78
	ld c, b                                          ; $5e3d: $48
	rst SubAFromDE                                          ; $5e3e: $df
	rst $38                                          ; $5e3f: $ff
	ld a, e                                          ; $5e40: $7b
	db $fc                                           ; $5e41: $fc
	ld a, e                                          ; $5e42: $7b
	ld hl, sp-$70                                    ; $5e43: $f8 $90
	cp a                                             ; $5e45: $bf
	rst $38                                          ; $5e46: $ff
	ld a, a                                          ; $5e47: $7f
	sbc [hl]                                         ; $5e48: $9e
	rst $38                                          ; $5e49: $ff
	rlca                                             ; $5e4a: $07
	daa                                              ; $5e4b: $27
	jp $e395                                         ; $5e4c: $c3 $95 $e3


	rst FarCall                                          ; $5e4f: $f7
	db $e3                                           ; $5e50: $e3
	jp hl                                            ; $5e51: $e9


	rst FarCall                                          ; $5e52: $f7
	pop af                                           ; $5e53: $f1
	sbc $ff                                          ; $5e54: $de $ff
	ld a, a                                          ; $5e56: $7f
	ld a, d                                          ; $5e57: $7a
	sub h                                            ; $5e58: $94
	ld a, [hl]                                       ; $5e59: $7e
	adc e                                            ; $5e5a: $8b
	ld a, a                                          ; $5e5b: $7f

jr_047_5e5c:
	cp h                                             ; $5e5c: $bc
	pop af                                           ; $5e5d: $f1
	cp $fd                                           ; $5e5e: $fe $fd
	cp $fc                                           ; $5e60: $fe $fc
	rst $38                                          ; $5e62: $ff
	cp $de                                           ; $5e63: $fe $de
	rst $38                                          ; $5e65: $ff
	ld a, l                                          ; $5e66: $7d
	db $e4                                           ; $5e67: $e4
	adc b                                            ; $5e68: $88
	ldh [$1f], a                                     ; $5e69: $e0 $1f
	sbc l                                            ; $5e6b: $9d
	ld h, d                                          ; $5e6c: $62
	adc l                                            ; $5e6d: $8d
	ld [hl], d                                       ; $5e6e: $72
	or h                                             ; $5e6f: $b4
	ld a, e                                          ; $5e70: $7b
	sub [hl]                                         ; $5e71: $96
	ld a, c                                          ; $5e72: $79
	adc $fd                                          ; $5e73: $ce $fd
	xor e                                            ; $5e75: $ab
	cp c                                             ; $5e76: $b9
	dec l                                            ; $5e77: $2d
	sbc $3a                                          ; $5e78: $de $3a
	rst JumpTable                                          ; $5e7a: $c7
	call z, $c133                                    ; $5e7b: $cc $33 $c1
	cp $70                                           ; $5e7e: $fe $70
	ld a, d                                          ; $5e80: $7a
	ld h, d                                          ; $5e81: $62
	ld a, a                                          ; $5e82: $7f
	cp $7f                                           ; $5e83: $fe $7f
	cp [hl]                                          ; $5e85: $be
	add d                                            ; $5e86: $82
	adc [hl]                                         ; $5e87: $8e
	ld [hl], c                                       ; $5e88: $71
	nop                                              ; $5e89: $00
	rst $38                                          ; $5e8a: $ff
	rst $38                                          ; $5e8b: $ff
	ldh [$1f], a                                     ; $5e8c: $e0 $1f
	rst $38                                          ; $5e8e: $ff
	ld a, a                                          ; $5e8f: $7f
	adc a                                            ; $5e90: $8f
	ld a, a                                          ; $5e91: $7f
	adc a                                            ; $5e92: $8f
	cpl                                              ; $5e93: $2f
	rst SubAFromDE                                          ; $5e94: $df
	sub e                                            ; $5e95: $93
	rst $38                                          ; $5e96: $ff
	ldh a, [rIF]                                     ; $5e97: $f0 $0f
	ld a, h                                          ; $5e99: $7c
	add e                                            ; $5e9a: $83
	rst SubAFromBC                                          ; $5e9b: $e7
	rra                                              ; $5e9c: $1f
	ld sp, hl                                        ; $5e9d: $f9
	cp $07                                           ; $5e9e: $fe $07
	ld hl, sp-$09                                    ; $5ea0: $f8 $f7
	ld hl, sp-$0f                                    ; $5ea2: $f8 $f1
	ld a, e                                          ; $5ea4: $7b
	cp h                                             ; $5ea5: $bc
	add b                                            ; $5ea6: $80
	rrca                                             ; $5ea7: $0f
	rst $38                                          ; $5ea8: $ff
	ldh a, [$7f]                                     ; $5ea9: $f0 $7f
	inc b                                            ; $5eab: $04
	ld hl, sp-$80                                    ; $5eac: $f8 $80
	ld a, a                                          ; $5eae: $7f
	add e                                            ; $5eaf: $83
	ld a, h                                          ; $5eb0: $7c
	pop bc                                           ; $5eb1: $c1
	ld a, $00                                        ; $5eb2: $3e $00
	ccf                                              ; $5eb4: $3f
	xor [hl]                                         ; $5eb5: $ae
	db $10                                           ; $5eb6: $10
	rst $38                                          ; $5eb7: $ff
	rst $38                                          ; $5eb8: $ff
	nop                                              ; $5eb9: $00
	ld a, e                                          ; $5eba: $7b
	add h                                            ; $5ebb: $84
	nop                                              ; $5ebc: $00
	nop                                              ; $5ebd: $00
	ld a, e                                          ; $5ebe: $7b
	rst $38                                          ; $5ebf: $ff
	nop                                              ; $5ec0: $00
	ld a, $c1                                        ; $5ec1: $3e $c1
	ld c, l                                          ; $5ec3: $4d
	or d                                             ; $5ec4: $b2
	ld [hl+], a                                      ; $5ec5: $22
	sbc [hl]                                         ; $5ec6: $9e
	sbc h                                            ; $5ec7: $9c
	ld [hl], a                                       ; $5ec8: $77
	dec b                                            ; $5ec9: $05
	ld a, l                                          ; $5eca: $7d
	adc h                                            ; $5ecb: $8c
	ld [hl], l                                       ; $5ecc: $75
	add h                                            ; $5ecd: $84
	ld [hl], h                                       ; $5ece: $74
	ld [hl], $80                                     ; $5ecf: $36 $80
	ld [bc], a                                       ; $5ed1: $02
	dec c                                            ; $5ed2: $0d
	ld d, a                                          ; $5ed3: $57
	xor a                                            ; $5ed4: $af
	daa                                              ; $5ed5: $27
	rst SubAFromDE                                          ; $5ed6: $df
	rla                                              ; $5ed7: $17
	rst AddAOntoHL                                          ; $5ed8: $ef
	and a                                            ; $5ed9: $a7
	ld e, a                                          ; $5eda: $5f
	ld d, a                                          ; $5edb: $57
	xor a                                            ; $5edc: $af
	and a                                            ; $5edd: $a7
	rrca                                             ; $5ede: $0f
	ld [hl], e                                       ; $5edf: $73
	rlca                                             ; $5ee0: $07
	inc sp                                           ; $5ee1: $33
	rst JumpTable                                          ; $5ee2: $c7
	rra                                              ; $5ee3: $1f
	ldh [$af], a                                     ; $5ee4: $e0 $af
	ld d, b                                          ; $5ee6: $50

jr_047_5ee7:
	ld e, a                                          ; $5ee7: $5f
	and b                                            ; $5ee8: $a0
	cpl                                              ; $5ee9: $2f
	ret nc                                           ; $5eea: $d0

	rra                                              ; $5eeb: $1f
	ldh [$2f], a                                     ; $5eec: $e0 $2f
	ret nc                                           ; $5eee: $d0

	sbc a                                            ; $5eef: $9f
	sbc h                                            ; $5ef0: $9c
	ldh [hDisp1_LCDC], a                                     ; $5ef1: $e0 $8f
	ldh a, [rRP]                                     ; $5ef3: $f0 $56
	adc $77                                          ; $5ef5: $ce $77
	cp $df                                           ; $5ef7: $fe $df
	add a                                            ; $5ef9: $87
	add b                                            ; $5efa: $80
	ld [bc], a                                       ; $5efb: $02
	add d                                            ; $5efc: $82
	ld [bc], a                                       ; $5efd: $02
	jp nz, Jump_047_6383                             ; $5efe: $c2 $83 $63

	jp c, $ff3f                                      ; $5f01: $da $3f $ff

	nop                                              ; $5f04: $00
	rst SubAFromBC                                          ; $5f05: $e7
	jr jr_047_5ee7                                   ; $5f06: $18 $df

	jr nc, jr_047_5f29                               ; $5f08: $30 $1f

	db $e3                                           ; $5f0a: $e3
	ld e, [hl]                                       ; $5f0b: $5e
	ld h, a                                          ; $5f0c: $67
	dec [hl]                                         ; $5f0d: $35
	ld c, [hl]                                       ; $5f0e: $4e
	ld l, [hl]                                       ; $5f0f: $6e
	sbc h                                            ; $5f10: $9c
	ld [$e81d], a                                    ; $5f11: $ea $1d $e8
	jr @-$11                                         ; $5f14: $18 $ed

	ld e, $f7                                        ; $5f16: $1e $f7
	ld c, $fc                                        ; $5f18: $0e $fc
	sbc b                                            ; $5f1a: $98
	cp b                                             ; $5f1b: $b8
	ld sp, hl                                        ; $5f1c: $f9
	ldh a, [rLCDC]                                   ; $5f1d: $f0 $40
	rst $38                                          ; $5f1f: $ff
	ld a, a                                          ; $5f20: $7f
	ld a, a                                          ; $5f21: $7f
	sbc $c0                                          ; $5f22: $de $c0
	add b                                            ; $5f24: $80
	ld b, b                                          ; $5f25: $40
	add b                                            ; $5f26: $80
	ret nz                                           ; $5f27: $c0

	add b                                            ; $5f28: $80

jr_047_5f29:
	rst $38                                          ; $5f29: $ff
	add sp, $7c                                      ; $5f2a: $e8 $7c
	rst FarCall                                          ; $5f2c: $f7
	rst FarCall                                          ; $5f2d: $f7
	rla                                              ; $5f2e: $17
	ld a, [$f6db]                                    ; $5f2f: $fa $db $f6
	rra                                              ; $5f32: $1f
	ld [hl-], a                                      ; $5f33: $32
	rra                                              ; $5f34: $1f
	inc de                                           ; $5f35: $13
	dec c                                            ; $5f36: $0d
	ld e, $0f                                        ; $5f37: $1e $0f
	rst $38                                          ; $5f39: $ff
	ldh [hDisp1_OBP0], a                                     ; $5f3a: $e0 $93
	ld l, [hl]                                       ; $5f3c: $6e
	ld de, $f136                                     ; $5f3d: $11 $36 $f1
	ld b, $41                                        ; $5f40: $06 $41
	ld b, $c1                                        ; $5f42: $06 $c1
	adc a                                            ; $5f44: $8f
	add $21                                          ; $5f45: $c6 $21
	add $21                                          ; $5f47: $c6 $21
	ret nz                                           ; $5f49: $c0

	rst $38                                          ; $5f4a: $ff
	rrca                                             ; $5f4b: $0f
	rst FarCall                                          ; $5f4c: $f7
	cpl                                              ; $5f4d: $2f
	rst FarCall                                          ; $5f4e: $f7
	rst AddAOntoHL                                          ; $5f4f: $ef
	rst FarCall                                          ; $5f50: $f7
	add sp, -$09                                     ; $5f51: $e8 $f7
	add sp, -$10                                     ; $5f53: $e8 $f0
	ld [hl], a                                       ; $5f55: $77
	cp $8d                                           ; $5f56: $fe $8d
	sub b                                            ; $5f58: $90
	ldh [$ef], a                                     ; $5f59: $e0 $ef
	pop de                                           ; $5f5b: $d1
	rst $38                                          ; $5f5c: $ff
	pop hl                                           ; $5f5d: $e1
	ld sp, hl                                        ; $5f5e: $f9
	rst $38                                          ; $5f5f: $ff
	ld bc, $7f01                                     ; $5f60: $01 $01 $7f
	ld bc, $7f81                                     ; $5f63: $01 $81 $7f
	rst $38                                          ; $5f66: $ff
	nop                                              ; $5f67: $00
	ld a, [hl]                                       ; $5f68: $7e
	nop                                              ; $5f69: $00
	ld [hl], a                                       ; $5f6a: $77
	ld a, [bc]                                       ; $5f6b: $0a
	sbc b                                            ; $5f6c: $98
	sbc d                                            ; $5f6d: $9a
	rst $38                                          ; $5f6e: $ff
	rrca                                             ; $5f6f: $0f
	sbc a                                            ; $5f70: $9f
	dec de                                           ; $5f71: $1b
	cp a                                             ; $5f72: $bf
	cp $7b                                           ; $5f73: $fe $7b
	ld [bc], a                                       ; $5f75: $02
	sbc [hl]                                         ; $5f76: $9e
	rlca                                             ; $5f77: $07
	ld a, c                                          ; $5f78: $79
	add c                                            ; $5f79: $81
	rst SubAFromDE                                          ; $5f7a: $df
	rst $38                                          ; $5f7b: $ff
	sbc h                                            ; $5f7c: $9c
	ld h, e                                          ; $5f7d: $63
	ld a, a                                          ; $5f7e: $7f
	ldh [$7a], a                                     ; $5f7f: $e0 $7a
	or [hl]                                          ; $5f81: $b6
	sbc [hl]                                         ; $5f82: $9e
	add a                                            ; $5f83: $87
	ld a, d                                          ; $5f84: $7a
	jr nc, @-$23                                     ; $5f85: $30 $db

	rst $38                                          ; $5f87: $ff
	ld a, a                                          ; $5f88: $7f
	ld [hl], l                                       ; $5f89: $75
	sbc [hl]                                         ; $5f8a: $9e
	dec e                                            ; $5f8b: $1d
	halt                                             ; $5f8c: $76
	or [hl]                                          ; $5f8d: $b6
	adc e                                            ; $5f8e: $8b
	rst JumpTable                                          ; $5f8f: $c7
	rst $38                                          ; $5f90: $ff
	rst $38                                          ; $5f91: $ff
	add b                                            ; $5f92: $80
	rst $38                                          ; $5f93: $ff
	xor a                                            ; $5f94: $af
	di                                               ; $5f95: $f3
	xor a                                            ; $5f96: $af
	di                                               ; $5f97: $f3
	cpl                                              ; $5f98: $2f
	di                                               ; $5f99: $f3
	scf                                              ; $5f9a: $37
	db $db                                           ; $5f9b: $db
	inc hl                                           ; $5f9c: $23
	rst $38                                          ; $5f9d: $ff
	inc l                                            ; $5f9e: $2c
	rst $38                                          ; $5f9f: $ff
	rst AddAOntoHL                                          ; $5fa0: $ef
	db $fc                                           ; $5fa1: $fc
	adc $7a                                          ; $5fa2: $ce $7a
	ldh a, [$80]                                     ; $5fa4: $f0 $80
	xor a                                            ; $5fa6: $af
	rst $38                                          ; $5fa7: $ff
	rst SubAFromDE                                          ; $5fa8: $df
	ld e, a                                          ; $5fa9: $5f
	ld a, b                                          ; $5faa: $78
	sbc a                                            ; $5fab: $9f
	or $cf                                           ; $5fac: $f6 $cf
	ldh a, [$df]                                     ; $5fae: $f0 $df
	rst SubAFromDE                                          ; $5fb0: $df
	rst $38                                          ; $5fb1: $ff
	sub b                                            ; $5fb2: $90
	rst $38                                          ; $5fb3: $ff
	and b                                            ; $5fb4: $a0
	rst $38                                          ; $5fb5: $ff
	ldh [rIE], a                                     ; $5fb6: $e0 $ff
	call nz, $033f                                   ; $5fb8: $c4 $3f $03
	rst $38                                          ; $5fbb: $ff
	ld a, d                                          ; $5fbc: $7a
	db $fd                                           ; $5fbd: $fd
	rra                                              ; $5fbe: $1f
	rst $38                                          ; $5fbf: $ff
	rst FarCall                                          ; $5fc0: $f7
	ld hl, sp+$7f                                    ; $5fc1: $f8 $7f
	rst $38                                          ; $5fc3: $ff
	db $fc                                           ; $5fc4: $fc
	sbc e                                            ; $5fc5: $9b
	rst $38                                          ; $5fc6: $ff
	ld a, l                                          ; $5fc7: $7d
	rst $38                                          ; $5fc8: $ff
	ei                                               ; $5fc9: $fb
	ld a, e                                          ; $5fca: $7b
	cp $87                                           ; $5fcb: $fe $87
	xor c                                            ; $5fcd: $a9
	rst SubAFromDE                                          ; $5fce: $df
	rst $38                                          ; $5fcf: $ff
	rst $38                                          ; $5fd0: $ff
	or $0f                                           ; $5fd1: $f6 $0f
	ld sp, hl                                        ; $5fd3: $f9
	db $fc                                           ; $5fd4: $fc
	ld a, [bc]                                       ; $5fd5: $0a
	add e                                            ; $5fd6: $83
	add h                                            ; $5fd7: $84
	call nz, $c481                                   ; $5fd8: $c4 $81 $c4
	jp $c3ee                                         ; $5fdb: $c3 $ee $c3


	rst AddAOntoHL                                          ; $5fde: $ef
	db $fd                                           ; $5fdf: $fd
	pop af                                           ; $5fe0: $f1
	ld c, $f4                                        ; $5fe1: $0e $f4
	ld c, [hl]                                       ; $5fe3: $4e
	dec d                                            ; $5fe4: $15
	ld a, c                                          ; $5fe5: $79
	sbc b                                            ; $5fe6: $98
	ld a, e                                          ; $5fe7: $7b
	ld a, [bc]                                       ; $5fe8: $0a
	ld a, [hl]                                       ; $5fe9: $7e
	sbc d                                            ; $5fea: $9a
	add b                                            ; $5feb: $80
	ldh [$f0], a                                     ; $5fec: $e0 $f0
	add b                                            ; $5fee: $80
	rst SubAFromBC                                          ; $5fef: $e7
	rlca                                             ; $5ff0: $07
	ccf                                              ; $5ff1: $3f
	rra                                              ; $5ff2: $1f
	ld a, a                                          ; $5ff3: $7f
	dec c                                            ; $5ff4: $0d
	ld [de], a                                       ; $5ff5: $12
	inc b                                            ; $5ff6: $04
	rra                                              ; $5ff7: $1f
	rrca                                             ; $5ff8: $0f
	rra                                              ; $5ff9: $1f
	rlca                                             ; $5ffa: $07
	dec c                                            ; $5ffb: $0d
	inc bc                                           ; $5ffc: $03
	ld b, $03                                        ; $5ffd: $06 $03
	ld [bc], a                                       ; $5fff: $02
	ld [bc], a                                       ; $6000: $02
	nop                                              ; $6001: $00
	inc bc                                           ; $6002: $03
	ld [bc], a                                       ; $6003: $02
	sbc $a3                                          ; $6004: $de $a3
	dec de                                           ; $6006: $1b
	db $fd                                           ; $6007: $fd
	ld sp, hl                                        ; $6008: $f9
	db $fc                                           ; $6009: $fc
	ld e, b                                          ; $600a: $58
	add [hl]                                         ; $600b: $86
	ld e, h                                          ; $600c: $5c
	ld sp, $fb19                                     ; $600d: $31 $19 $fb
	inc hl                                           ; $6010: $23
	cp a                                             ; $6011: $bf
	ld [hl-], a                                      ; $6012: $32
	rst $38                                          ; $6013: $ff
	xor l                                            ; $6014: $ad
	rst SubAFromHL                                          ; $6015: $d7
	add sp, -$15                                     ; $6016: $e8 $eb
	db $f4                                           ; $6018: $f4
	daa                                              ; $6019: $27
	ld a, b                                          ; $601a: $78
	pop af                                           ; $601b: $f1
	cp $c4                                           ; $601c: $fe $c4
	rst $38                                          ; $601e: $ff
	add hl, hl                                       ; $601f: $29
	rst SubAFromHL                                          ; $6020: $d7
	ld d, h                                          ; $6021: $54
	xor e                                            ; $6022: $ab
	cp [hl]                                          ; $6023: $be
	ld b, c                                          ; $6024: $41
	ld e, l                                          ; $6025: $5d
	sub d                                            ; $6026: $92
	ld a, [hl]                                       ; $6027: $7e
	or d                                             ; $6028: $b2
	ld a, a                                          ; $6029: $7f
	add [hl]                                         ; $602a: $86
	add b                                            ; $602b: $80
	adc a                                            ; $602c: $8f
	rst $38                                          ; $602d: $ff
	and a                                            ; $602e: $a7
	ld a, h                                          ; $602f: $7c
	xor a                                            ; $6030: $af
	ld d, e                                          ; $6031: $53
	or e                                             ; $6032: $b3
	ld c, b                                          ; $6033: $48
	ldh a, [$08]                                     ; $6034: $f0 $08
	ld hl, sp+$04                                    ; $6036: $f8 $04
	db $fc                                           ; $6038: $fc
	inc bc                                           ; $6039: $03
	ld b, $fb                                        ; $603a: $06 $fb
	db $fd                                           ; $603c: $fd
	cp $f7                                           ; $603d: $fe $f7
	rrca                                             ; $603f: $0f
	ld a, [$7907]                                    ; $6040: $fa $07 $79
	db $e4                                           ; $6043: $e4
	jp z, $613c                                      ; $6044: $ca $3c $61

	ld a, $dc                                        ; $6047: $3e $dc
	ld h, e                                          ; $6049: $63
	ld a, [hl]                                       ; $604a: $7e
	sbc d                                            ; $604b: $9a
	add c                                            ; $604c: $81
	cp a                                             ; $604d: $bf
	ld b, b                                          ; $604e: $40
	rst $38                                          ; $604f: $ff
	add b                                            ; $6050: $80
	halt                                             ; $6051: $76
	ld l, b                                          ; $6052: $68
	db $fd                                           ; $6053: $fd
	sub c                                            ; $6054: $91
	add b                                            ; $6055: $80
	nop                                              ; $6056: $00
	ret nz                                           ; $6057: $c0

	add b                                            ; $6058: $80
	add b                                            ; $6059: $80
	ret nz                                           ; $605a: $c0

	db $fd                                           ; $605b: $fd
	rra                                              ; $605c: $1f
	cp h                                             ; $605d: $bc
	ld d, $75                                        ; $605e: $16 $75
	inc h                                            ; $6060: $24
	cpl                                              ; $6061: $2f
	inc h                                            ; $6062: $24
	ld sp, hl                                        ; $6063: $f9
	sbc d                                            ; $6064: $9a
	rst $38                                          ; $6065: $ff
	ret nz                                           ; $6066: $c0

	ld [$d5c0], a                                    ; $6067: $ea $c0 $d5
	sbc $80                                          ; $606a: $de $80
	ld h, e                                          ; $606c: $63
	ldh a, [$9e]                                     ; $606d: $f0 $9e
	nop                                              ; $606f: $00
	ld h, a                                          ; $6070: $67
	ret nc                                           ; $6071: $d0

	cpl                                              ; $6072: $2f
	ldh a, [$9d]                                     ; $6073: $f0 $9d
	di                                               ; $6075: $f3
	rrca                                             ; $6076: $0f
	ld c, e                                          ; $6077: $4b
	ldh [$7c], a                                     ; $6078: $e0 $7c
	ld l, h                                          ; $607a: $6c
	ld d, e                                          ; $607b: $53
	ldh a, [$9e]                                     ; $607c: $f0 $9e
	ld d, l                                          ; $607e: $55

Jump_047_607f:
	ld h, e                                          ; $607f: $63
	sub b                                            ; $6080: $90
	ei                                               ; $6081: $fb
	sbc c                                            ; $6082: $99
	jp hl                                            ; $6083: $e9


	adc $ff                                          ; $6084: $ce $ff
	ret c                                            ; $6086: $d8

	ei                                               ; $6087: $fb
	adc h                                            ; $6088: $8c
	rst FarCall                                          ; $6089: $f7
	sbc c                                            ; $608a: $99
	ld [$e570], a                                    ; $608b: $ea $70 $e5
	or b                                             ; $608e: $b0
	ld [$f730], a                                    ; $608f: $ea $30 $f7

Call_047_6092:
	sbc d                                            ; $6092: $9a
	adc b                                            ; $6093: $88
	ld [hl], a                                       ; $6094: $77
	ld d, l                                          ; $6095: $55
	nop                                              ; $6096: $00
	xor b                                            ; $6097: $a8
	or $9c                                           ; $6098: $f6 $9c
	ld [bc], a                                       ; $609a: $02
	ld hl, sp+$54                                    ; $609b: $f8 $54
	db $f4                                           ; $609d: $f4
	sbc b                                            ; $609e: $98
	xor l                                            ; $609f: $ad
	inc l                                            ; $60a0: $2c
	dec d                                            ; $60a1: $15
	inc d                                            ; $60a2: $14
	inc l                                            ; $60a3: $2c
	inc b                                            ; $60a4: $04
	inc b                                            ; $60a5: $04
	ld hl, sp-$63                                    ; $60a6: $f8 $9d
	rrca                                             ; $60a8: $0f
	ccf                                              ; $60a9: $3f
	ld a, d                                          ; $60aa: $7a
	db $db                                           ; $60ab: $db
	push af                                          ; $60ac: $f5
	ld a, h                                          ; $60ad: $7c
	sbc [hl]                                         ; $60ae: $9e
	sbc l                                            ; $60af: $9d
	rlca                                             ; $60b0: $07
	ld bc, $fe7b                                     ; $60b1: $01 $7b $fe
	rst SubAFromDE                                          ; $60b4: $df
	rlca                                             ; $60b5: $07
	rst SubAFromDE                                          ; $60b6: $df
	inc bc                                           ; $60b7: $03
	db $dd                                           ; $60b8: $dd
	ld bc, $9f82                                     ; $60b9: $01 $82 $9f
	cp $cf                                           ; $60bc: $fe $cf
	db $fd                                           ; $60be: $fd
	xor a                                            ; $60bf: $af
	cp $2f                                           ; $60c0: $fe $2f
	db $fd                                           ; $60c2: $fd
	rra                                              ; $60c3: $1f
	cp $1f                                           ; $60c4: $fe $1f
	rst $38                                          ; $60c6: $ff
	rrca                                             ; $60c7: $0f
	rlca                                             ; $60c8: $07
	rrca                                             ; $60c9: $0f
	rlca                                             ; $60ca: $07
	ld a, a                                          ; $60cb: $7f
	add c                                            ; $60cc: $81
	cp $01                                           ; $60cd: $fe $01
	ld a, a                                          ; $60cf: $7f
	add b                                            ; $60d0: $80
	rst $38                                          ; $60d1: $ff
	nop                                              ; $60d2: $00
	cp a                                             ; $60d3: $bf
	ret nz                                           ; $60d4: $c0

	ld e, l                                          ; $60d5: $5d
	ldh [c], a                                       ; $60d6: $e2
	and b                                            ; $60d7: $a0
	sbc $ff                                          ; $60d8: $de $ff
	add l                                            ; $60da: $85
	ld [hl], l                                       ; $60db: $75
	adc a                                            ; $60dc: $8f
	db $fc                                           ; $60dd: $fc
	rlca                                             ; $60de: $07
	db $e4                                           ; $60df: $e4
	rra                                              ; $60e0: $1f
	ld a, [$ba07]                                    ; $60e1: $fa $07 $ba
	ld b, a                                          ; $60e4: $47
	push bc                                          ; $60e5: $c5
	ld a, $eb                                        ; $60e6: $3e $eb
	inc e                                            ; $60e8: $1c
	rla                                              ; $60e9: $17
	ld hl, sp+$55                                    ; $60ea: $f8 $55
	cp $0e                                           ; $60ec: $fe $0e
	rst $38                                          ; $60ee: $ff
	or e                                             ; $60ef: $b3
	ld c, h                                          ; $60f0: $4c
	ld a, e                                          ; $60f1: $7b
	adc h                                            ; $60f2: $8c
	db $fd                                           ; $60f3: $fd
	ld c, $76                                        ; $60f4: $0e $76
	add $9d                                          ; $60f6: $c6 $9d
	ei                                               ; $60f8: $fb
	rlca                                             ; $60f9: $07
	ld l, [hl]                                       ; $60fa: $6e
	and d                                            ; $60fb: $a2
	sub l                                            ; $60fc: $95
	or $09                                           ; $60fd: $f6 $09
	or c                                             ; $60ff: $b1
	ld c, a                                          ; $6100: $4f

jr_047_6101:
	ld l, a                                          ; $6101: $6f
	sbc a                                            ; $6102: $9f
	jr c, jr_047_6101                                ; $6103: $38 $fc

	reti                                             ; $6105: $d9


	db $ec                                           ; $6106: $ec
	jp c, $96c0                                      ; $6107: $da $c0 $96

	add b                                            ; $610a: $80
	db $e4                                           ; $610b: $e4
	add e                                            ; $610c: $83
	ld h, $d9                                        ; $610d: $26 $d9
	cp l                                             ; $610f: $bd
	dec sp                                           ; $6110: $3b
	ld e, d                                          ; $6111: $5a
	ld hl, $98f9                                     ; $6112: $21 $f9 $98
	ld [$44b4], sp                                   ; $6115: $08 $b4 $44
	cp e                                             ; $6118: $bb
	ld [bc], a                                       ; $6119: $02
	ldh a, [$9d]                                     ; $611a: $f0 $9d
	ld hl, sp-$69                                    ; $611c: $f8 $97
	add hl, sp                                       ; $611e: $39

jr_047_611f:
	ld b, l                                          ; $611f: $45
	nop                                              ; $6120: $00
	db $e3                                           ; $6121: $e3
	ld h, b                                          ; $6122: $60
	sub l                                            ; $6123: $95
	add a                                            ; $6124: $87
	ei                                               ; $6125: $fb
	ld sp, hl                                        ; $6126: $f9
	sub a                                            ; $6127: $97
	sub e                                            ; $6128: $93
	or a                                             ; $6129: $b7
	cpl                                              ; $612a: $2f
	rst SubAFromDE                                          ; $612b: $df
	ldh a, [$fc]                                     ; $612c: $f0 $fc
	add b                                            ; $612e: $80
	ldh [$5e], a                                     ; $612f: $e0 $5e
	ret c                                            ; $6131: $d8

	ld a, e                                          ; $6132: $7b
	xor c                                            ; $6133: $a9
	ld a, a                                          ; $6134: $7f
	ld d, l                                          ; $6135: $55
	ld e, d                                          ; $6136: $5a
	ret z                                            ; $6137: $c8

	ld a, a                                          ; $6138: $7f
	db $fd                                           ; $6139: $fd
	sbc [hl]                                         ; $613a: $9e
	ldh a, [rHDMA2]                                  ; $613b: $f0 $52
	cp b                                             ; $613d: $b8
	ld [hl], a                                       ; $613e: $77
	ldh [$9d], a                                     ; $613f: $e0 $9d
	nop                                              ; $6141: $00
	ld bc, $f05f                                     ; $6142: $01 $5f $f0
	ld a, l                                          ; $6145: $7d
	sub [hl]                                         ; $6146: $96
	sbc h                                            ; $6147: $9c
	add hl, sp                                       ; $6148: $39
	ld a, a                                          ; $6149: $7f
	jp nz, $c063                                     ; $614a: $c2 $63 $c0

	sbc c                                            ; $614d: $99
	sub e                                            ; $614e: $93
	nop                                              ; $614f: $00
	rst AddAOntoHL                                          ; $6150: $ef
	db $10                                           ; $6151: $10
	sub b                                            ; $6152: $90
	rst AddAOntoHL                                          ; $6153: $ef

jr_047_6154:
	rst FarCall                                          ; $6154: $f7
	sub a                                            ; $6155: $97
	adc l                                            ; $6156: $8d
	ld h, d                                          ; $6157: $62
	jp hl                                            ; $6158: $e9


	ld d, $e0                                        ; $6159: $16 $e0
	rra                                              ; $615b: $1f
	ld de, $f92e                                     ; $615c: $11 $2e $f9
	sub a                                            ; $615f: $97
	sub h                                            ; $6160: $94
	dec bc                                           ; $6161: $0b
	daa                                              ; $6162: $27
	ret c                                            ; $6163: $d8

	rra                                              ; $6164: $1f
	ldh a, [$8a]                                     ; $6165: $f0 $8a
	ld a, a                                          ; $6167: $7f
	ld sp, hl                                        ; $6168: $f9
	sub a                                            ; $6169: $97
	or b                                             ; $616a: $b0
	ld b, b                                          ; $616b: $40
	ret nc                                           ; $616c: $d0

	jr nc, jr_047_611f                               ; $616d: $30 $b0

	ld [hl], b                                       ; $616f: $70
	ldh [rSVBK], a                                   ; $6170: $e0 $70
	pop af                                           ; $6172: $f1
	ld [hl], a                                       ; $6173: $77
	sbc a                                            ; $6174: $9f
	ld a, a                                          ; $6175: $7f
	db $fc                                           ; $6176: $fc
	ld a, [hl]                                       ; $6177: $7e
	cp [hl]                                          ; $6178: $be
	ld [hl], a                                       ; $6179: $77
	db $fc                                           ; $617a: $fc
	sbc d                                            ; $617b: $9a
	dec d                                            ; $617c: $15
	nop                                              ; $617d: $00
	ld a, [hl+]                                      ; $617e: $2a
	nop                                              ; $617f: $00
	ld bc, $8e63                                     ; $6180: $01 $63 $8e
	ld a, e                                          ; $6183: $7b
	adc l                                            ; $6184: $8d
	ld a, e                                          ; $6185: $7b
	ld a, e                                          ; $6186: $7b
	sbc e                                            ; $6187: $9b
	rra                                              ; $6188: $1f
	dec c                                            ; $6189: $0d
	sbc a                                            ; $618a: $9f
	sbc a                                            ; $618b: $9f
	ld a, c                                          ; $618c: $79
	inc b                                            ; $618d: $04
	add d                                            ; $618e: $82
	ld e, a                                          ; $618f: $5f
	ld a, a                                          ; $6190: $7f
	ld e, a                                          ; $6191: $5f
	rst $38                                          ; $6192: $ff
	rst SubAFromDE                                          ; $6193: $df
	rst $38                                          ; $6194: $ff
	adc $7f                                          ; $6195: $ce $7f
	dec l                                            ; $6197: $2d
	jp nz, $82ff                                     ; $6198: $c2 $ff $82

	rst $38                                          ; $619b: $ff
	sub l                                            ; $619c: $95
	xor $25                                          ; $619d: $ee $25
	sbc $ce                                          ; $619f: $de $ce
	cp a                                             ; $61a1: $bf
	ccf                                              ; $61a2: $3f
	ldh a, [$d7]                                     ; $61a3: $f0 $d7
	add sp, $6b                                      ; $61a5: $e8 $6b
	call nc, $f0ef                                   ; $61a7: $d4 $ef $f0
	ccf                                              ; $61aa: $3f
	ret nz                                           ; $61ab: $c0

	ld l, l                                          ; $61ac: $6d
	add b                                            ; $61ad: $80
	ld a, c                                          ; $61ae: $79
	and h                                            ; $61af: $a4
	sbc d                                            ; $61b0: $9a
	jr nz, @+$01                                     ; $61b1: $20 $ff

	db $10                                           ; $61b3: $10
	db $fc                                           ; $61b4: $fc
	inc bc                                           ; $61b5: $03
	ld c, h                                          ; $61b6: $4c
	jr nc, jr_047_6154                               ; $61b7: $30 $9b

	ld [hl], b                                       ; $61b9: $70
	adc h                                            ; $61ba: $8c
	db $f4                                           ; $61bb: $f4
	ld c, $7b                                        ; $61bc: $0e $7b

jr_047_61be:
	cp $80                                           ; $61be: $fe $80
	rrca                                             ; $61c0: $0f
	push af                                          ; $61c1: $f5
	rrca                                             ; $61c2: $0f
	ld a, [$ef0d]                                    ; $61c3: $fa $0d $ef
	jr jr_047_61be                                   ; $61c6: $18 $f6

	add hl, de                                       ; $61c8: $19
	nop                                              ; $61c9: $00
	adc l                                            ; $61ca: $8d
	ld b, $00                                        ; $61cb: $06 $00
	nop                                              ; $61cd: $00
	ldh a, [$6c]                                     ; $61ce: $f0 $6c
	rst $38                                          ; $61d0: $ff
	add a                                            ; $61d1: $87
	rst $38                                          ; $61d2: $ff
	cp [hl]                                          ; $61d3: $be
	jp $817f                                         ; $61d4: $c3 $7f $81


	ld sp, hl                                        ; $61d7: $f9
	rrca                                             ; $61d8: $0f
	ld d, l                                          ; $61d9: $55
	add d                                            ; $61da: $82
	dec hl                                           ; $61db: $2b
	rlca                                             ; $61dc: $07
	sbc [hl]                                         ; $61dd: $9e
	ld a, a                                          ; $61de: $7f
	ld a, [hl]                                       ; $61df: $7e
	and $9d                                          ; $61e0: $e6 $9d
	ret nz                                           ; $61e2: $c0

	ldh a, [$79]                                     ; $61e3: $f0 $79
	ld l, a                                          ; $61e5: $6f
	ld a, e                                          ; $61e6: $7b
	ret nc                                           ; $61e7: $d0

	sbc e                                            ; $61e8: $9b
	ld a, h                                          ; $61e9: $7c
	ld a, $c0                                        ; $61ea: $3e $c0

jr_047_61ec:
	ldh [$61], a                                     ; $61ec: $e0 $61
	add e                                            ; $61ee: $83
	ld [hl], d                                       ; $61ef: $72
	db $fd                                           ; $61f0: $fd
	ld l, [hl]                                       ; $61f1: $6e
	dec hl                                           ; $61f2: $2b
	sbc d                                            ; $61f3: $9a
	inc c                                            ; $61f4: $0c
	nop                                              ; $61f5: $00
	jr nc, jr_047_61f8                               ; $61f6: $30 $00

jr_047_61f8:
	ret nz                                           ; $61f8: $c0

	ld a, e                                          ; $61f9: $7b
	ldh a, [$9a]                                     ; $61fa: $f0 $9a
	ld c, $00                                        ; $61fc: $0e $00
	jr c, jr_047_6200                                ; $61fe: $38 $00

jr_047_6200:
	ldh [rPCM34], a                                  ; $6200: $e0 $77
	push de                                          ; $6202: $d5
	ld [hl], a                                       ; $6203: $77
	ld [$c37c], a                                    ; $6204: $ea $7c $c3
	ld a, a                                          ; $6207: $7f
	rst SubAFromBC                                          ; $6208: $e7
	ld l, a                                          ; $6209: $6f
	or $8f                                           ; $620a: $f6 $8f
	inc bc                                           ; $620c: $03
	add hl, de                                       ; $620d: $19
	ld e, $e7                                        ; $620e: $1e $e7
	ld a, b                                          ; $6210: $78
	sbc a                                            ; $6211: $9f
	ldh [rIF], a                                     ; $6212: $e0 $0f
	ldh a, [rTMA]                                    ; $6214: $f0 $06
	ld c, $15                                        ; $6216: $0e $15
	jr c, jr_047_61ec                                ; $6218: $38 $d2

	ldh [$79], a                                     ; $621a: $e0 $79
	ld a, d                                          ; $621c: $7a
	ld e, $7c                                        ; $621d: $1e $7c
	and a                                            ; $621f: $a7
	adc h                                            ; $6220: $8c
	rst FarCall                                          ; $6221: $f7
	ld [$00fd], sp                                   ; $6222: $08 $fd $00
	ld [bc], a                                       ; $6225: $02
	db $10                                           ; $6226: $10
	ld d, l                                          ; $6227: $55
	nop                                              ; $6228: $00
	adc b                                            ; $6229: $88
	nop                                              ; $622a: $00
	ld h, l                                          ; $622b: $65
	nop                                              ; $622c: $00
	cp l                                             ; $622d: $bd
	nop                                              ; $622e: $00
	rst AddAOntoHL                                          ; $622f: $ef
	nop                                              ; $6230: $00
	jp c, $fd21                                      ; $6231: $da $21 $fd

	ld [hl], c                                       ; $6234: $71
	push de                                          ; $6235: $d5
	add [hl]                                         ; $6236: $86
	add c                                            ; $6237: $81
	nop                                              ; $6238: $00
	ld d, h                                          ; $6239: $54
	nop                                              ; $623a: $00
	jp z, $b520                                      ; $623b: $ca $20 $b5

	ld b, b                                          ; $623e: $40
	cp $00                                           ; $623f: $fe $00
	dec hl                                           ; $6241: $2b
	ld d, h                                          ; $6242: $54
	ld d, h                                          ; $6243: $54
	inc bc                                           ; $6244: $03
	ld a, [bc]                                       ; $6245: $0a
	nop                                              ; $6246: $00
	dec h                                            ; $6247: $25
	add b                                            ; $6248: $80
	ld bc, $8200                                     ; $6249: $01 $00 $82
	ld b, b                                          ; $624c: $40
	ld d, l                                          ; $624d: $55
	nop                                              ; $624e: $00
	and d                                            ; $624f: $a2
	ld a, e                                          ; $6250: $7b
	xor b                                            ; $6251: $a8
	sbc b                                            ; $6252: $98
	xor d                                            ; $6253: $aa
	ld d, l                                          ; $6254: $55
	ret z                                            ; $6255: $c8

	scf                                              ; $6256: $37
	ld d, c                                          ; $6257: $51
	ld c, $14                                        ; $6258: $0e $14
	ld l, b                                          ; $625a: $68
	sbc $9d                                          ; $625b: $de $9d
	or $00                                           ; $625d: $f6 $00
	sbc $e0                                          ; $625f: $de $e0
	ld a, [hl]                                       ; $6261: $7e
	inc de                                           ; $6262: $13
	ld a, b                                          ; $6263: $78
	rst SubAFromHL                                          ; $6264: $d7
	ld a, [hl]                                       ; $6265: $7e
	ld sp, $e47e                                     ; $6266: $31 $7e $e4
	sbc [hl]                                         ; $6269: $9e
	dec b                                            ; $626a: $05
	ld a, e                                          ; $626b: $7b
	ld a, b                                          ; $626c: $78
	ld a, a                                          ; $626d: $7f
	sub $7f                                          ; $626e: $d6 $7f
	ret nc                                           ; $6270: $d0

	ld a, [hl]                                       ; $6271: $7e
	ret c                                            ; $6272: $d8

	ld [hl], l                                       ; $6273: $75
	inc l                                            ; $6274: $2c
	sbc h                                            ; $6275: $9c
	xor a                                            ; $6276: $af
	nop                                              ; $6277: $00
	ld a, a                                          ; $6278: $7f
	ld a, e                                          ; $6279: $7b
	ld [hl], b                                       ; $627a: $70
	ld a, a                                          ; $627b: $7f
	ld hl, sp-$66                                    ; $627c: $f8 $9a
	xor e                                            ; $627e: $ab
	nop                                              ; $627f: $00
	ld e, a                                          ; $6280: $5f
	nop                                              ; $6281: $00
	cp a                                             ; $6282: $bf
	ld [hl], e                                       ; $6283: $73
	inc d                                            ; $6284: $14
	add b                                            ; $6285: $80
	ld hl, sp+$06                                    ; $6286: $f8 $06
	ret nz                                           ; $6288: $c0

	ld [hl], l                                       ; $6289: $75
	ei                                               ; $628a: $fb
	db $db                                           ; $628b: $db
	or [hl]                                          ; $628c: $b6
	ld bc, $1fef                                     ; $628d: $01 $ef $1f
	ld a, b                                          ; $6290: $78
	ld a, h                                          ; $6291: $7c
	add b                                            ; $6292: $80
	ret nz                                           ; $6293: $c0

	ld bc, $0e01                                     ; $6294: $01 $01 $0e
	rra                                              ; $6297: $1f
	ld [hl], b                                       ; $6298: $70
	rst $38                                          ; $6299: $ff
	cp $3f                                           ; $629a: $fe $3f
	ld l, l                                          ; $629c: $6d
	cp a                                             ; $629d: $bf
	adc $7f                                          ; $629e: $ce $7f
	ld c, a                                          ; $62a0: $4f
	ld a, a                                          ; $62a1: $7f
	ld l, [hl]                                       ; $62a2: $6e
	ld a, a                                          ; $62a3: $7f
	rst $38                                          ; $62a4: $ff
	sub b                                            ; $62a5: $90
	cp a                                             ; $62a6: $bf
	rrca                                             ; $62a7: $0f

jr_047_62a8:
	rst $38                                          ; $62a8: $ff
	rlca                                             ; $62a9: $07
	rst $38                                          ; $62aa: $ff
	sub b                                            ; $62ab: $90
	rst AddAOntoHL                                          ; $62ac: $ef
	xor e                                            ; $62ad: $ab
	call c, $fa95                                    ; $62ae: $dc $95 $fa
	sub d                                            ; $62b1: $92
	db $fd                                           ; $62b2: $fd
	sbc c                                            ; $62b3: $99
	cp $77                                           ; $62b4: $fe $77
	db $fc                                           ; $62b6: $fc
	adc l                                            ; $62b7: $8d
	sub h                                            ; $62b8: $94
	rst $38                                          ; $62b9: $ff
	rst AddAOntoHL                                          ; $62ba: $ef
	sub b                                            ; $62bb: $90
	rst $38                                          ; $62bc: $ff
	ld c, b                                          ; $62bd: $48
	ei                                               ; $62be: $fb
	inc l                                            ; $62bf: $2c
	db $dd                                           ; $62c0: $dd
	ld a, [hl+]                                      ; $62c1: $2a
	ld e, l                                          ; $62c2: $5d
	xor a                                            ; $62c3: $af
	jp c, Jump_047_4d2f                              ; $62c4: $da $2f $4d

	cp a                                             ; $62c7: $bf
	sbc a                                            ; $62c8: $9f
	ld l, a                                          ; $62c9: $6f
	ld [hl], a                                       ; $62ca: $77
	cp b                                             ; $62cb: $b8
	sub [hl]                                         ; $62cc: $96
	ld a, [$5405]                                    ; $62cd: $fa $05 $54
	xor e                                            ; $62d0: $ab
	ld d, l                                          ; $62d1: $55
	rst $38                                          ; $62d2: $ff
	xor e                                            ; $62d3: $ab
	rst $38                                          ; $62d4: $ff
	ld e, a                                          ; $62d5: $5f
	sbc $ff                                          ; $62d6: $de $ff
	add h                                            ; $62d8: $84
	call $bf32                                       ; $62d9: $cd $32 $bf
	ld h, b                                          ; $62dc: $60
	ld l, e                                          ; $62dd: $6b
	call nc, $e8d7                                   ; $62de: $d4 $d7 $e8
	rst JumpTable                                          ; $62e1: $c7
	ld hl, sp-$59                                    ; $62e2: $f8 $a7
	ld hl, sp-$2d                                    ; $62e4: $f8 $d3
	db $fc                                           ; $62e6: $fc
	ld [$cafd], a                                    ; $62e7: $ea $fd $ca
	dec [hl]                                         ; $62ea: $35
	db $f4                                           ; $62eb: $f4
	dec hl                                           ; $62ec: $2b
	xor d                                            ; $62ed: $aa
	ld d, l                                          ; $62ee: $55
	push de                                          ; $62ef: $d5
	ld l, e                                          ; $62f0: $6b
	ld h, c                                          ; $62f1: $61
	rst SubAFromDE                                          ; $62f2: $df
	add c                                            ; $62f3: $81
	ld a, d                                          ; $62f4: $7a
	halt                                             ; $62f5: $76
	ld a, a                                          ; $62f6: $7f
	cp $66                                           ; $62f7: $fe $66
	ldh [$9c], a                                     ; $62f9: $e0 $9c
	db $fc                                           ; $62fb: $fc
	ldh [$1f], a                                     ; $62fc: $e0 $1f
	ld [hl], d                                       ; $62fe: $72
	adc a                                            ; $62ff: $8f
	ld l, [hl]                                       ; $6300: $6e
	ret c                                            ; $6301: $d8

	rst $38                                          ; $6302: $ff
	sub a                                            ; $6303: $97
	jr nz, jr_047_6306                               ; $6304: $20 $00

jr_047_6306:
	call z, $f900                                    ; $6306: $cc $00 $f9
	ldh [$fe], a                                     ; $6309: $e0 $fe
	db $fc                                           ; $630b: $fc
	push af                                          ; $630c: $f5
	ld a, a                                          ; $630d: $7f
	jr nc, jr_047_62a8                               ; $630e: $30 $98

	ld h, b                                          ; $6310: $60
	nop                                              ; $6311: $00
	dec bc                                           ; $6312: $0b
	rlca                                             ; $6313: $07
	db $10                                           ; $6314: $10
	rrca                                             ; $6315: $0f
	rra                                              ; $6316: $1f
	ld d, h                                          ; $6317: $54
	ld b, b                                          ; $6318: $40
	sub [hl]                                         ; $6319: $96
	db $fc                                           ; $631a: $fc
	rra                                              ; $631b: $1f
	rst $38                                          ; $631c: $ff
	add c                                            ; $631d: $81
	ld a, a                                          ; $631e: $7f
	ld a, b                                          ; $631f: $78
	rlca                                             ; $6320: $07
	ld b, $01                                        ; $6321: $06 $01
	ld l, [hl]                                       ; $6323: $6e
	or l                                             ; $6324: $b5
	adc h                                            ; $6325: $8c
	rst SubAFromHL                                          ; $6326: $d7
	nop                                              ; $6327: $00
	db $fc                                           ; $6328: $fc
	nop                                              ; $6329: $00
	cp e                                             ; $632a: $bb
	ret nz                                           ; $632b: $c0

	ld l, a                                          ; $632c: $6f
	pop af                                           ; $632d: $f1
	inc de                                           ; $632e: $13
	db $fc                                           ; $632f: $fc
	adc b                                            ; $6330: $88
	ld a, a                                          ; $6331: $7f
	call nz, $223f                                   ; $6332: $c4 $3f $22
	rra                                              ; $6335: $1f
	xor h                                            ; $6336: $ac
	db $10                                           ; $6337: $10
	or a                                             ; $6338: $b7
	ld a, e                                          ; $6339: $7b
	xor c                                            ; $633a: $a9
	add h                                            ; $633b: $84
	ld h, $88                                        ; $633c: $26 $88
	rst $38                                          ; $633e: $ff
	nop                                              ; $633f: $00
	db $eb                                           ; $6340: $eb
	ld [hl-], a                                      ; $6341: $32
	ld e, c                                          ; $6342: $59
	and [hl]                                         ; $6343: $a6
	add e                                            ; $6344: $83
	ld sp, hl                                        ; $6345: $f9
	ei                                               ; $6346: $fb
	inc b                                            ; $6347: $04
	ld a, e                                          ; $6348: $7b
	add b                                            ; $6349: $80
	rst $38                                          ; $634a: $ff
	db $10                                           ; $634b: $10
	ldh a, [rSC]                                     ; $634c: $f0 $02
	scf                                              ; $634e: $37
	add b                                            ; $634f: $80
	ld l, l                                          ; $6350: $6d
	add b                                            ; $6351: $80
	add b                                            ; $6352: $80
	ld h, b                                          ; $6353: $60
	ld c, $c3                                        ; $6354: $0e $c3
	ldh [$7b], a                                     ; $6356: $e0 $7b
	ret nc                                           ; $6358: $d0

	add b                                            ; $6359: $80
	ld e, [hl]                                       ; $635a: $5e
	add b                                            ; $635b: $80
	ld e, [hl]                                       ; $635c: $5e
	nop                                              ; $635d: $00
	db $fd                                           ; $635e: $fd
	nop                                              ; $635f: $00
	ccf                                              ; $6360: $3f
	ret nz                                           ; $6361: $c0

	sbc a                                            ; $6362: $9f
	db $10                                           ; $6363: $10
	ld e, a                                          ; $6364: $5f
	ld l, b                                          ; $6365: $68
	jr nc, jr_047_6368                               ; $6366: $30 $00

jr_047_6368:
	ccf                                              ; $6368: $3f
	nop                                              ; $6369: $00
	and [hl]                                         ; $636a: $a6
	nop                                              ; $636b: $00
	adc a                                            ; $636c: $8f
	nop                                              ; $636d: $00
	ret nc                                           ; $636e: $d0

	nop                                              ; $636f: $00
	cp $01                                           ; $6370: $fe $01
	ld a, l                                          ; $6372: $7d
	ld [$24ff], sp                                   ; $6373: $08 $ff $24
	ret nz                                           ; $6376: $c0

	ld bc, $7bcc                                     ; $6377: $01 $cc $7b
	sbc $80                                          ; $637a: $de $80
	ld h, [hl]                                       ; $637c: $66
	ret nc                                           ; $637d: $d0

	nop                                              ; $637e: $00
	inc c                                            ; $637f: $0c
	ld h, $b0                                        ; $6380: $26 $b0
	dec hl                                           ; $6382: $2b

Jump_047_6383:
	db $d3                                           ; $6383: $d3
	ld l, a                                          ; $6384: $6f
	sbc b                                            ; $6385: $98
	ld b, a                                          ; $6386: $47
	adc a                                            ; $6387: $8f
	ld c, b                                          ; $6388: $48
	ld [hl], a                                       ; $6389: $77
	inc c                                            ; $638a: $0c
	inc de                                           ; $638b: $13
	add hl, bc                                       ; $638c: $09
	adc [hl]                                         ; $638d: $8e
	ld b, $07                                        ; $638e: $06 $07
	dec b                                            ; $6390: $05
	ld h, e                                          ; $6391: $63
	add b                                            ; $6392: $80
	inc de                                           ; $6393: $13
	add b                                            ; $6394: $80
	ld d, l                                          ; $6395: $55
	nop                                              ; $6396: $00
	db $db                                           ; $6397: $db
	ld [$03f5], sp                                   ; $6398: $08 $f5 $03
	sub h                                            ; $639b: $94
	db $ec                                           ; $639c: $ec
	inc sp                                           ; $639d: $33
	adc h                                            ; $639e: $8c
	ld b, a                                          ; $639f: $47
	ld hl, $d73c                                     ; $63a0: $21 $3c $d7
	cp h                                             ; $63a3: $bc
	rst AddAOntoHL                                          ; $63a4: $ef
	ret c                                            ; $63a5: $d8

	scf                                              ; $63a6: $37
	ld a, d                                          ; $63a7: $7a
	ld b, a                                          ; $63a8: $47
	ld h, e                                          ; $63a9: $63
	cp $7d                                           ; $63aa: $fe $7d
	and a                                            ; $63ac: $a7
	rst SubAFromDE                                          ; $63ad: $df
	rra                                              ; $63ae: $1f
	ld c, l                                          ; $63af: $4d
	or c                                             ; $63b0: $b1
	sub l                                            ; $63b1: $95
	ldh [rIE], a                                     ; $63b2: $e0 $ff
	sbc c                                            ; $63b4: $99
	cp $96                                           ; $63b5: $fe $96
	db $fd                                           ; $63b7: $fd
	ld c, h                                          ; $63b8: $4c
	rst $38                                          ; $63b9: $ff
	daa                                              ; $63ba: $27
	rst $38                                          ; $63bb: $ff
	ld l, a                                          ; $63bc: $6f
	ld [de], a                                       ; $63bd: $12
	ld a, a                                          ; $63be: $7f
	cp $98                                           ; $63bf: $fe $98
	ld l, a                                          ; $63c1: $6f
	cp a                                             ; $63c2: $bf
	xor a                                            ; $63c3: $af
	ld a, a                                          ; $63c4: $7f
	ld d, b                                          ; $63c5: $50
	rst $38                                          ; $63c6: $ff
	or b                                             ; $63c7: $b0
	ld a, e                                          ; $63c8: $7b
	call nc, $f06f                                   ; $63c9: $d4 $6f $f0
	sbc [hl]                                         ; $63cc: $9e
	db $fc                                           ; $63cd: $fc
	ld h, e                                          ; $63ce: $63
	or $6f                                           ; $63cf: $f6 $6f
	cp $9c                                           ; $63d1: $fe $9c
	ld a, b                                          ; $63d3: $78
	rst $38                                          ; $63d4: $ff
	inc e                                            ; $63d5: $1c
	ld a, d                                          ; $63d6: $7a
	adc d                                            ; $63d7: $8a
	ld h, a                                          ; $63d8: $67
	ldh a, [c]                                       ; $63d9: $f2
	rst SubAFromDE                                          ; $63da: $df
	rst $38                                          ; $63db: $ff
	sbc h                                            ; $63dc: $9c
	add h                                            ; $63dd: $84
	rst $38                                          ; $63de: $ff
	ld e, b                                          ; $63df: $58
	ld a, e                                          ; $63e0: $7b
	cp d                                             ; $63e1: $ba
	ld l, a                                          ; $63e2: $6f
	ldh a, [c]                                       ; $63e3: $f2
	ld a, [hl]                                       ; $63e4: $7e
	ld l, l                                          ; $63e5: $6d
	sbc l                                            ; $63e6: $9d
	add b                                            ; $63e7: $80
	cp $67                                           ; $63e8: $fe $67
	and $7f                                          ; $63ea: $e6 $7f
	call c, $fe9c                                    ; $63ec: $dc $9c $fe
	ld hl, sp-$08                                    ; $63ef: $f8 $f8
	ld a, d                                          ; $63f1: $7a
	cp b                                             ; $63f2: $b8
	sub h                                            ; $63f3: $94
	inc bc                                           ; $63f4: $03
	cp $07                                           ; $63f5: $fe $07
	cp $1e                                           ; $63f7: $fe $1e
	ld hl, sp+$78                                    ; $63f9: $f8 $78
	ldh [$e3], a                                     ; $63fb: $e0 $e3
	add b                                            ; $63fd: $80
	rra                                              ; $63fe: $1f
	ld [hl], e                                       ; $63ff: $73
	rst SubAFromBC                                          ; $6400: $e7
	sub l                                            ; $6401: $95
	jr jr_047_6424                                   ; $6402: $18 $20

	ld h, $18                                        ; $6404: $26 $18
	ld [hl], c                                       ; $6406: $71
	ld c, $3c                                        ; $6407: $0e $3c
	jp $01fe                                         ; $6409: $c3 $fe $01


	ld l, a                                          ; $640c: $6f
	rst SubAFromHL                                          ; $640d: $d7
	ld l, [hl]                                       ; $640e: $6e
	cp b                                             ; $640f: $b8
	ld a, c                                          ; $6410: $79
	jr z, @-$66                                      ; $6411: $28 $98

	add b                                            ; $6413: $80
	jr @-$1e                                         ; $6414: $18 $e0

	adc b                                            ; $6416: $88
	ld [hl], b                                       ; $6417: $70
	ret nz                                           ; $6418: $c0

	jr nc, jr_047_6468                               ; $6419: $30 $4d

	ld e, b                                          ; $641b: $58
	rst $38                                          ; $641c: $ff
	sbc d                                            ; $641d: $9a
	inc sp                                           ; $641e: $33
	rrca                                             ; $641f: $0f
	add hl, de                                       ; $6420: $19
	rlca                                             ; $6421: $07
	inc b                                            ; $6422: $04
	ld a, e                                          ; $6423: $7b

jr_047_6424:
	ld c, e                                          ; $6424: $4b
	sbc [hl]                                         ; $6425: $9e
	inc c                                            ; $6426: $0c
	ld l, c                                          ; $6427: $69
	ld h, [hl]                                       ; $6428: $66
	sbc b                                            ; $6429: $98
	xor [hl]                                         ; $642a: $ae
	jp z, $edff                                      ; $642b: $ca $ff $ed

	cp a                                             ; $642e: $bf
	ret nz                                           ; $642f: $c0

	add b                                            ; $6430: $80
	ld [hl], b                                       ; $6431: $70
	or h                                             ; $6432: $b4
	sbc [hl]                                         ; $6433: $9e
	ld b, b                                          ; $6434: $40
	ld a, e                                          ; $6435: $7b
	add $9d                                          ; $6436: $c6 $9d
	sbc [hl]                                         ; $6438: $9e
	ld h, c                                          ; $6439: $61
	ld a, b                                          ; $643a: $78
	jp c, $0f9d                                      ; $643b: $da $9d $0f

	ld h, b                                          ; $643e: $60
	ld a, b                                          ; $643f: $78
	xor h                                            ; $6440: $ac
	ld l, a                                          ; $6441: $6f
	call z, $a39b                                    ; $6442: $cc $9b $a3
	db $fc                                           ; $6445: $fc
	rst $38                                          ; $6446: $ff
	ld b, h                                          ; $6447: $44
	ld a, e                                          ; $6448: $7b
	push af                                          ; $6449: $f5
	ld [hl], e                                       ; $644a: $73
	ldh [$6f], a                                     ; $644b: $e0 $6f
	or [hl]                                          ; $644d: $b6
	ld [hl], a                                       ; $644e: $77
	di                                               ; $644f: $f3
	ld e, a                                          ; $6450: $5f
	ldh a, [$9c]                                     ; $6451: $f0 $9c
	sub e                                            ; $6453: $93
	ld a, l                                          ; $6454: $7d
	ret nz                                           ; $6455: $c0

	ld [hl], a                                       ; $6456: $77
	push af                                          ; $6457: $f5
	db $dd                                           ; $6458: $dd
	rst $38                                          ; $6459: $ff
	sub a                                            ; $645a: $97
	ld b, b                                          ; $645b: $40
	ret nz                                           ; $645c: $c0

	ld b, b                                          ; $645d: $40
	ret nz                                           ; $645e: $c0

	add b                                            ; $645f: $80
	nop                                              ; $6460: $00
	ld e, c                                          ; $6461: $59
	ld l, b                                          ; $6462: $68
	ld h, a                                          ; $6463: $67
	ldh a, [$fc]                                     ; $6464: $f0 $fc
	sbc b                                            ; $6466: $98
	ld e, b                                          ; $6467: $58

jr_047_6468:
	rst SubAFromBC                                          ; $6468: $e7
	xor d                                            ; $6469: $aa
	db $fd                                           ; $646a: $fd
	rst $38                                          ; $646b: $ff
	rst $38                                          ; $646c: $ff
	ld bc, $f063                                     ; $646d: $01 $63 $f0
	ld c, l                                          ; $6470: $4d
	nop                                              ; $6471: $00
	call $df44                                       ; $6472: $cd $44 $df
	ld b, l                                          ; $6475: $45
	sbc d                                            ; $6476: $9a
	ld d, h                                          ; $6477: $54
	ld b, h                                          ; $6478: $44
	ld b, h                                          ; $6479: $44
	ld d, l                                          ; $647a: $55
	ld d, l                                          ; $647b: $55
	sbc $44                                          ; $647c: $de $44
	sbc h                                            ; $647e: $9c
	ld d, l                                          ; $647f: $55
	dec [hl]                                         ; $6480: $35
	dec [hl]                                         ; $6481: $35
	db $dd                                           ; $6482: $dd
	ld d, l                                          ; $6483: $55
	ld a, a                                          ; $6484: $7f
	pop af                                           ; $6485: $f1
	sbc c                                            ; $6486: $99
	ld d, l                                          ; $6487: $55
	ld d, e                                          ; $6488: $53
	inc sp                                           ; $6489: $33
	inc sp                                           ; $648a: $33
	ld b, h                                          ; $648b: $44
	ld b, l                                          ; $648c: $45
	db $db                                           ; $648d: $db
	ld d, l                                          ; $648e: $55
	db $dd                                           ; $648f: $dd
	inc sp                                           ; $6490: $33
	rst SubAFromDE                                          ; $6491: $df
	ld d, l                                          ; $6492: $55
	ld a, a                                          ; $6493: $7f
	rst SubAFromBC                                          ; $6494: $e7
	sbc l                                            ; $6495: $9d
	dec [hl]                                         ; $6496: $35
	ld [hl], a                                       ; $6497: $77
	ld a, e                                          ; $6498: $7b
	db $ec                                           ; $6499: $ec
	db $db                                           ; $649a: $db
	ld b, h                                          ; $649b: $44
	sub d                                            ; $649c: $92
	ld h, [hl]                                       ; $649d: $66
	inc sp                                           ; $649e: $33
	inc sp                                           ; $649f: $33
	ld h, [hl]                                       ; $64a0: $66
	ld h, l                                          ; $64a1: $65
	inc sp                                           ; $64a2: $33
	dec [hl]                                         ; $64a3: $35
	ld h, [hl]                                       ; $64a4: $66
	ld h, [hl]                                       ; $64a5: $66
	ld b, h                                          ; $64a6: $44
	ld b, [hl]                                       ; $64a7: $46
	inc sp                                           ; $64a8: $33
	inc sp                                           ; $64a9: $33
	ld a, e                                          ; $64aa: $7b
	call $339b                                       ; $64ab: $cd $9b $33
	ld [hl], $64                                     ; $64ae: $36 $64
	ld b, h                                          ; $64b0: $44
	ld l, a                                          ; $64b1: $6f
	reti                                             ; $64b2: $d9


	ld a, a                                          ; $64b3: $7f
	ret z                                            ; $64b4: $c8

	sbc [hl]                                         ; $64b5: $9e
	ld d, l                                          ; $64b6: $55
	ld a, e                                          ; $64b7: $7b
	db $e3                                           ; $64b8: $e3
	ld l, a                                          ; $64b9: $6f
	db $f4                                           ; $64ba: $f4
	rst SubAFromDE                                          ; $64bb: $df
	ld d, l                                          ; $64bc: $55
	ld b, d                                          ; $64bd: $42
	add hl, bc                                       ; $64be: $09
	sbc [hl]                                         ; $64bf: $9e
	rlca                                             ; $64c0: $07
	cp $80                                           ; $64c1: $fe $80
	ldh a, [rP1]                                     ; $64c3: $f0 $00
	ccf                                              ; $64c5: $3f
	ret nz                                           ; $64c6: $c0

	ld bc, $00fe                                     ; $64c7: $01 $fe $00
	rst $38                                          ; $64ca: $ff
	db $fc                                           ; $64cb: $fc
	rst $38                                          ; $64cc: $ff
	rrca                                             ; $64cd: $0f
	cp a                                             ; $64ce: $bf
	nop                                              ; $64cf: $00
	cp $f8                                           ; $64d0: $fe $f8
	ld b, $06                                        ; $64d2: $06 $06
	nop                                              ; $64d4: $00
	ret nz                                           ; $64d5: $c0

	nop                                              ; $64d6: $00
	cp $00                                           ; $64d7: $fe $00
	ld e, $e0                                        ; $64d9: $1e $e0
	ld bc, $f0ff                                     ; $64db: $01 $ff $f0
	rst $38                                          ; $64de: $ff
	ld b, b                                          ; $64df: $40
	ldh [$6f], a                                     ; $64e0: $e0 $6f
	sbc h                                            ; $64e2: $9c
	ldh a, [$7f]                                     ; $64e3: $f0 $7f
	rst $38                                          ; $64e5: $ff
	ld l, a                                          ; $64e6: $6f
	cp $8a                                           ; $64e7: $fe $8a
	ccf                                              ; $64e9: $3f
	ld a, a                                          ; $64ea: $7f
	adc a                                            ; $64eb: $8f
	rra                                              ; $64ec: $1f
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	rst $38                                          ; $64ef: $ff
	nop                                              ; $64f0: $00
	rst $38                                          ; $64f1: $ff
	rst $38                                          ; $64f2: $ff
	ld sp, hl                                        ; $64f3: $f9
	cp $cf                                           ; $64f4: $fe $cf
	ldh a, [$b0]                                     ; $64f6: $f0 $b0
	ret nz                                           ; $64f8: $c0

	and b                                            ; $64f9: $a0
	ret nz                                           ; $64fa: $c0

	cp h                                             ; $64fb: $bc
	ret nz                                           ; $64fc: $c0

	rst $38                                          ; $64fd: $ff
	ld a, e                                          ; $64fe: $7b
	pop af                                           ; $64ff: $f1
	sbc e                                            ; $6500: $9b
	ld a, h                                          ; $6501: $7c
	add e                                            ; $6502: $83
	rrca                                             ; $6503: $0f
	db $fc                                           ; $6504: $fc
	ld a, e                                          ; $6505: $7b
	jp nz, $039e                                     ; $6506: $c2 $9e $03

	ld [hl], a                                       ; $6509: $77
	or h                                             ; $650a: $b4
	sub [hl]                                         ; $650b: $96
	ldh [$fc], a                                     ; $650c: $e0 $fc
	rst $38                                          ; $650e: $ff
	rst $38                                          ; $650f: $ff
	rlca                                             ; $6510: $07
	rst $38                                          ; $6511: $ff
	ld hl, sp+$07                                    ; $6512: $f8 $07
	ld a, a                                          ; $6514: $7f
	ld a, e                                          ; $6515: $7b
	jp nz, $c09c                                     ; $6516: $c2 $9c $c0

	ccf                                              ; $6519: $3f
	ccf                                              ; $651a: $3f
	cp $df                                           ; $651b: $fe $df
	ret nz                                           ; $651d: $c0

	rst SubAFromDE                                          ; $651e: $df
	rst $38                                          ; $651f: $ff
	sbc b                                            ; $6520: $98
	sbc a                                            ; $6521: $9f
	ld a, a                                          ; $6522: $7f
	sbc [hl]                                         ; $6523: $9e
	ld a, [hl]                                       ; $6524: $7e
	sbc [hl]                                         ; $6525: $9e
	ld a, a                                          ; $6526: $7f
	sbc a                                            ; $6527: $9f
	ld a, e                                          ; $6528: $7b
	cp $9e                                           ; $6529: $fe $9e
	jr nz, jr_047_65a8                               ; $652b: $20 $7b

	cp [hl]                                          ; $652d: $be
	sbc [hl]                                         ; $652e: $9e
	ldh [$de], a                                     ; $652f: $e0 $de
	rst $38                                          ; $6531: $ff
	sbc d                                            ; $6532: $9a
	adc a                                            ; $6533: $8f
	ld a, a                                          ; $6534: $7f
	rlca                                             ; $6535: $07
	ld hl, sp-$10                                    ; $6536: $f8 $f0
	sbc $ff                                          ; $6538: $de $ff
	ld a, a                                          ; $653a: $7f
	ret z                                            ; $653b: $c8

	ld a, a                                          ; $653c: $7f
	xor $9c                                          ; $653d: $ee $9c
	ld bc, $fa80                                     ; $653f: $01 $80 $fa
	ld a, e                                          ; $6542: $7b
	jp z, $879c                                      ; $6543: $ca $9c $87

	ld a, a                                          ; $6546: $7f
	pop hl                                           ; $6547: $e1
	ld [hl], a                                       ; $6548: $77
	ldh a, [$7f]                                     ; $6549: $f0 $7f
	add a                                            ; $654b: $87
	ld a, e                                          ; $654c: $7b
	cp $93                                           ; $654d: $fe $93
	ld [bc], a                                       ; $654f: $02
	nop                                              ; $6550: $00
	add sp, -$10                                     ; $6551: $e8 $f0
	cp $fe                                           ; $6553: $fe $fe
	sbc $be                                          ; $6555: $de $be
	db $fc                                           ; $6557: $fc
	add d                                            ; $6558: $82
	add b                                            ; $6559: $80
	ld a, a                                          ; $655a: $7f
	ld c, a                                          ; $655b: $4f
	cp $9d                                           ; $655c: $fe $9d

jr_047_655e:
	ld b, a                                          ; $655e: $47
	jp nz, $fe4f                                     ; $655f: $c2 $4f $fe

	ld a, e                                          ; $6562: $7b
	cp a                                             ; $6563: $bf
	ld c, a                                          ; $6564: $4f
	cp $80                                           ; $6565: $fe $80
	inc bc                                           ; $6567: $03
	ld a, [$f407]                                    ; $6568: $fa $07 $f4
	rrca                                             ; $656b: $0f
	add sp, $0e                                      ; $656c: $e8 $0e
	db $ed                                           ; $656e: $ed
	rra                                              ; $656f: $1f
	add sp, $1f                                      ; $6570: $e8 $1f
	db $ec                                           ; $6572: $ec
	rra                                              ; $6573: $1f
	add sp, $1b                                      ; $6574: $e8 $1b
	adc e                                            ; $6576: $8b
	rst SubAFromBC                                          ; $6577: $e7
	rlca                                             ; $6578: $07
	call z, wUseRulesForTextLine1stOrLastChar                                    ; $6579: $cc $0f $d8
	sbc a                                            ; $657c: $9f
	jr nc, jr_047_655e                               ; $657d: $30 $df

	and b                                            ; $657f: $a0
	ccf                                              ; $6580: $3f
	ld h, b                                          ; $6581: $60
	ccf                                              ; $6582: $3f
	ld h, b                                          ; $6583: $60
	cp [hl]                                          ; $6584: $be
	ld h, b                                          ; $6585: $60
	sbc b                                            ; $6586: $98
	db $fd                                           ; $6587: $fd
	nop                                              ; $6588: $00
	ld a, [$f500]                                    ; $6589: $fa $00 $f5
	nop                                              ; $658c: $00
	ld [$fc7b], a                                    ; $658d: $ea $7b $fc
	sub h                                            ; $6590: $94
	xor d                                            ; $6591: $aa
	nop                                              ; $6592: $00
	pop de                                           ; $6593: $d1
	nop                                              ; $6594: $00
	adc h                                            ; $6595: $8c
	inc c                                            ; $6596: $0c
	ld d, b                                          ; $6597: $50
	nop                                              ; $6598: $00
	add b                                            ; $6599: $80
	nop                                              ; $659a: $00
	ld b, b                                          ; $659b: $40
	ld a, e                                          ; $659c: $7b
	db $fc                                           ; $659d: $fc
	rst $38                                          ; $659e: $ff
	ld l, a                                          ; $659f: $6f
	db $fc                                           ; $65a0: $fc
	add [hl]                                         ; $65a1: $86
	db $10                                           ; $65a2: $10
	ld e, $20                                        ; $65a3: $1e $20
	inc c                                            ; $65a5: $0c
	jr nc, @+$3f                                     ; $65a6: $30 $3d

jr_047_65a8:
	ld b, b                                          ; $65a8: $40
	add hl, sp                                       ; $65a9: $39
	ld bc, $617b                                     ; $65aa: $01 $7b $61
	inc de                                           ; $65ad: $13
	pop bc                                           ; $65ae: $c1
	ld [hl], d                                       ; $65af: $72
	pop bc                                           ; $65b0: $c1
	ld [hl], d                                       ; $65b1: $72
	rra                                              ; $65b2: $1f
	ld [hl], b                                       ; $65b3: $70
	ld a, [hl+]                                      ; $65b4: $2a
	ldh [rHDMA5], a                                  ; $65b5: $e0 $55
	ret nz                                           ; $65b7: $c0

	xor d                                            ; $65b8: $aa
	add b                                            ; $65b9: $80
	ld d, l                                          ; $65ba: $55
	ld a, e                                          ; $65bb: $7b
	ret nc                                           ; $65bc: $d0

	ld a, a                                          ; $65bd: $7f
	db $fc                                           ; $65be: $fc
	add [hl]                                         ; $65bf: $86
	xor b                                            ; $65c0: $a8
	inc bc                                           ; $65c1: $03
	ld sp, hl                                        ; $65c2: $f9
	dec b                                            ; $65c3: $05
	di                                               ; $65c4: $f3
	ld c, $7a                                        ; $65c5: $0e $7a
	dec c                                            ; $65c7: $0d
	and h                                            ; $65c8: $a4
	add hl, de                                       ; $65c9: $19
	ld c, c                                          ; $65ca: $49
	inc sp                                           ; $65cb: $33
	sub c                                            ; $65cc: $91
	ld h, [hl]                                       ; $65cd: $66
	inc sp                                           ; $65ce: $33
	call z, $9863                                    ; $65cf: $cc $63 $98
	ld c, a                                          ; $65d2: $4f
	rra                                              ; $65d3: $1f
	xor a                                            ; $65d4: $af
	rra                                              ; $65d5: $1f
	ld c, a                                          ; $65d6: $4f
	rra                                              ; $65d7: $1f
	rst AddAOntoHL                                          ; $65d8: $ef
	ld a, e                                          ; $65d9: $7b
	ld a, [$cf9e]                                    ; $65da: $fa $9e $cf
	ld a, e                                          ; $65dd: $7b
	ld a, [$2f9a]                                    ; $65de: $fa $9a $2f
	rra                                              ; $65e1: $1f
	rst $38                                          ; $65e2: $ff
	rst $38                                          ; $65e3: $ff
	cp $7b                                           ; $65e4: $fe $7b
	cp $d7                                           ; $65e6: $fe $d7
	rst $38                                          ; $65e8: $ff
	sbc d                                            ; $65e9: $9a
	set 6, a                                         ; $65ea: $cb $f7
	ccf                                              ; $65ec: $3f
	rst $38                                          ; $65ed: $ff
	ld bc, $656b                                     ; $65ee: $01 $6b $65
	sbc [hl]                                         ; $65f1: $9e
	add b                                            ; $65f2: $80
	ld a, e                                          ; $65f3: $7b
	cp $9c                                           ; $65f4: $fe $9c
	adc a                                            ; $65f6: $8f
	ldh a, [$c0]                                     ; $65f7: $f0 $c0
	ld a, d                                          ; $65f9: $7a
	sbc b                                            ; $65fa: $98
	sbc [hl]                                         ; $65fb: $9e
	inc bc                                           ; $65fc: $03
	ld l, e                                          ; $65fd: $6b
	xor $94                                          ; $65fe: $ee $94
	ld a, [bc]                                       ; $6600: $0a
	push af                                          ; $6601: $f5
	db $fc                                           ; $6602: $fc
	nop                                              ; $6603: $00
	rrca                                             ; $6604: $0f
	ldh a, [rSB]                                     ; $6605: $f0 $01
	cp $f0                                           ; $6607: $fe $f0
	rst $38                                          ; $6609: $ff
	rrca                                             ; $660a: $0f
	ld a, e                                          ; $660b: $7b
	ldh a, [c]                                       ; $660c: $f2
	sbc e                                            ; $660d: $9b
	ld d, h                                          ; $660e: $54
	xor e                                            ; $660f: $ab
	xor d                                            ; $6610: $aa
	ld d, l                                          ; $6611: $55
	ld a, d                                          ; $6612: $7a
	ret nc                                           ; $6613: $d0

	ld a, e                                          ; $6614: $7b
	rst SubAFromBC                                          ; $6615: $e7
	sbc e                                            ; $6616: $9b
	rra                                              ; $6617: $1f
	ldh [$c0], a                                     ; $6618: $e0 $c0
	rst $38                                          ; $661a: $ff
	ld [hl], a                                       ; $661b: $77
	ret z                                            ; $661c: $c8

	sbc l                                            ; $661d: $9d
	and b                                            ; $661e: $a0
	ld e, a                                          ; $661f: $5f
	halt                                             ; $6620: $76
	call z, $fe7f                                    ; $6621: $cc $7f $fe
	ld a, [hl]                                       ; $6624: $7e
	jp nc, $e397                                     ; $6625: $d2 $97 $e3

	rra                                              ; $6628: $1f
	ld hl, sp-$19                                    ; $6629: $f8 $e7
	cp $f9                                           ; $662b: $fe $f9
	rrca                                             ; $662d: $0f
	ld c, $7b                                        ; $662e: $0e $7b
	and e                                            ; $6630: $a3
	rst SubAFromDE                                          ; $6631: $df
	db $fc                                           ; $6632: $fc
	sbc [hl]                                         ; $6633: $9e
	ld hl, sp+$77                                    ; $6634: $f8 $77
	cp $7e                                           ; $6636: $fe $7e
	call z, Call_047_7d98                            ; $6638: $cc $98 $7d
	cp $be                                           ; $663b: $fe $be
	ld a, a                                          ; $663d: $7f
	nop                                              ; $663e: $00
	rst $38                                          ; $663f: $ff
	ldh a, [$7b]                                     ; $6640: $f0 $7b
	push bc                                          ; $6642: $c5
	ld a, d                                          ; $6643: $7a
	xor e                                            ; $6644: $ab
	ld a, e                                          ; $6645: $7b
	ret z                                            ; $6646: $c8

	sbc d                                            ; $6647: $9a
	inc a                                            ; $6648: $3c
	ret nz                                           ; $6649: $c0

	inc bc                                           ; $664a: $03
	db $fc                                           ; $664b: $fc
	ld [bc], a                                       ; $664c: $02
	ld a, d                                          ; $664d: $7a
	jp nz, $c09a                                     ; $664e: $c2 $9a $c0

	ld a, $fe                                        ; $6651: $3e $fe
	nop                                              ; $6653: $00
	ld a, $fc                                        ; $6654: $3e $fc
	sbc l                                            ; $6656: $9d
	add d                                            ; $6657: $82
	nop                                              ; $6658: $00
	ld [de], a                                       ; $6659: $12
	ret nz                                           ; $665a: $c0

	sbc h                                            ; $665b: $9c
	jp $c040                                         ; $665c: $c3 $40 $c0


	ld d, [hl]                                       ; $665f: $56
	call nz, $fd77                                   ; $6660: $c4 $77 $fd
	sub [hl]                                         ; $6663: $96
	and $13                                          ; $6664: $e6 $13
	db $fc                                           ; $6666: $fc
	rlca                                             ; $6667: $07
	db $fc                                           ; $6668: $fc
	rrca                                             ; $6669: $0f
	rst $38                                          ; $666a: $ff
	rlca                                             ; $666b: $07
	cp $7b                                           ; $666c: $fe $7b
	ld e, l                                          ; $666e: $5d
	ld [hl], a                                       ; $666f: $77
	ldh a, [hDisp1_OBP1]                                     ; $6670: $f0 $94
	dec d                                            ; $6672: $15
	and b                                            ; $6673: $a0
	ld a, [hl+]                                      ; $6674: $2a
	ret nc                                           ; $6675: $d0

	ld e, [hl]                                       ; $6676: $5e
	rst $38                                          ; $6677: $ff
	sub b                                            ; $6678: $90
	sbc a                                            ; $6679: $9f
	ccf                                              ; $667a: $3f
	rst $38                                          ; $667b: $ff
	add b                                            ; $667c: $80
	ld a, e                                          ; $667d: $7b
	sub h                                            ; $667e: $94
	rst $38                                          ; $667f: $ff
	sub e                                            ; $6680: $93
	sub b                                            ; $6681: $90
	dec [hl]                                         ; $6682: $35
	inc b                                            ; $6683: $04
	rst SubAFromBC                                          ; $6684: $e7
	ld bc, $22ef                                     ; $6685: $01 $ef $22
	cp $48                                           ; $6688: $fe $48
	ld hl, sp+$7f                                    ; $668a: $f8 $7f
	ldh [rPCM34], a                                  ; $668c: $e0 $77
	ldh a, [$6e]                                     ; $668e: $f0 $6e
	call nz, Call_047_7ffd                           ; $6690: $c4 $fd $7f
	di                                               ; $6693: $f3
	sbc [hl]                                         ; $6694: $9e
	ld h, b                                          ; $6695: $60
	ld a, e                                          ; $6696: $7b
	push af                                          ; $6697: $f5
	sub e                                            ; $6698: $93
	add b                                            ; $6699: $80
	ld a, b                                          ; $669a: $78
	jp Jump_047_607f                                 ; $669b: $c3 $7f $60


	ccf                                              ; $669e: $3f
	inc h                                            ; $669f: $24
	dec de                                           ; $66a0: $1b
	inc de                                           ; $66a1: $13
	inc b                                            ; $66a2: $04
	rst $38                                          ; $66a3: $ff
	nop                                              ; $66a4: $00
	halt                                             ; $66a5: $76
	ld [bc], a                                       ; $66a6: $02
	sub d                                            ; $66a7: $92
	jr c, jr_047_66b9                                ; $66a8: $38 $0f

	db $e3                                           ; $66aa: $e3
	db $ec                                           ; $66ab: $ec
	inc h                                            ; $66ac: $24
	jp $0ef3                                         ; $66ad: $c3 $f3 $0e


	cp $78                                           ; $66b0: $fe $78
	di                                               ; $66b2: $f3
	nop                                              ; $66b3: $00
	ldh [$7b], a                                     ; $66b4: $e0 $7b
	ld e, c                                          ; $66b6: $59
	sbc c                                            ; $66b7: $99
	sub l                                            ; $66b8: $95

jr_047_66b9:
	ld [hl], b                                       ; $66b9: $70
	dec hl                                           ; $66ba: $2b
	ldh [$d5], a                                     ; $66bb: $e0 $d5
	add b                                            ; $66bd: $80
	halt                                             ; $66be: $76
	or h                                             ; $66bf: $b4
	ld a, a                                          ; $66c0: $7f
	db $fc                                           ; $66c1: $fc
	ld [hl], a                                       ; $66c2: $77
	ret nz                                           ; $66c3: $c0

	db $db                                           ; $66c4: $db
	rrca                                             ; $66c5: $0f
	ld a, a                                          ; $66c6: $7f
	ld sp, hl                                        ; $66c7: $f9
	sbc d                                            ; $66c8: $9a
	db $d3                                           ; $66c9: $d3
	inc c                                            ; $66ca: $0c
	inc sp                                           ; $66cb: $33
	inc c                                            ; $66cc: $0c
	inc bc                                           ; $66cd: $03
	ld a, e                                          ; $66ce: $7b
	cp $9c                                           ; $66cf: $fe $9c
	db $fd                                           ; $66d1: $fd
	rst $38                                          ; $66d2: $ff
	db $fd                                           ; $66d3: $fd
	sbc $ff                                          ; $66d4: $de $ff
	adc d                                            ; $66d6: $8a
	ld a, [hl]                                       ; $66d7: $7e
	rst $38                                          ; $66d8: $ff
	ld e, $fe                                        ; $66d9: $1e $fe
	rst GetHLinHL                                          ; $66db: $cf
	ld a, $6e                                        ; $66dc: $3e $6e
	ld e, $27                                        ; $66de: $1e $27
	ld e, $85                                        ; $66e0: $1e $85
	ld a, [$f5ca]                                    ; $66e2: $fa $ca $f5
	push af                                          ; $66e5: $f5
	jp z, $e0df                                      ; $66e6: $ca $df $e0

	rst $38                                          ; $66e9: $ff
	ldh [$7f], a                                     ; $66ea: $e0 $7f
	ld [hl], l                                       ; $66ec: $75
	halt                                             ; $66ed: $76
	sbc b                                            ; $66ee: $98
	ld [hl], b                                       ; $66ef: $70
	ld d, l                                          ; $66f0: $55
	xor d                                            ; $66f1: $aa
	xor d                                            ; $66f2: $aa
	ld d, l                                          ; $66f3: $55
	ld a, a                                          ; $66f4: $7f
	add b                                            ; $66f5: $80
	ld l, a                                          ; $66f6: $6f
	ld d, b                                          ; $66f7: $50
	ld a, a                                          ; $66f8: $7f
	ld b, $99                                        ; $66f9: $06 $99
	inc b                                            ; $66fb: $04
	ld hl, sp+$55                                    ; $66fc: $f8 $55
	xor d                                            ; $66fe: $aa

Jump_047_66ff:
	xor e                                            ; $66ff: $ab
	ld d, h                                          ; $6700: $54
	ld h, a                                          ; $6701: $67
	db $f4                                           ; $6702: $f4
	sbc e                                            ; $6703: $9b
	ld c, h                                          ; $6704: $4c
	adc a                                            ; $6705: $8f
	rrca                                             ; $6706: $0f
	ld a, a                                          ; $6707: $7f
	ld [hl], a                                       ; $6708: $77
	db $e4                                           ; $6709: $e4
	ld a, l                                          ; $670a: $7d
	add d                                            ; $670b: $82
	add b                                            ; $670c: $80
	ld b, $f8                                        ; $670d: $06 $f8
	ld b, e                                          ; $670f: $43
	add a                                            ; $6710: $87
	inc bc                                           ; $6711: $03
	ld a, a                                          ; $6712: $7f
	inc a                                            ; $6713: $3c
	rst $38                                          ; $6714: $ff
	ei                                               ; $6715: $fb
	call c, $07f9                                    ; $6716: $dc $f9 $07
	add h                                            ; $6719: $84
	ld a, b                                          ; $671a: $78
	ld b, b                                          ; $671b: $40
	add a                                            ; $671c: $87
	ld [hl], e                                       ; $671d: $73
	adc a                                            ; $671e: $8f
	inc a                                            ; $671f: $3c
	rst $38                                          ; $6720: $ff
	rst GetHLinHL                                          ; $6721: $cf
	ldh a, [$7e]                                     ; $6722: $f0 $7e
	add b                                            ; $6724: $80
	push af                                          ; $6725: $f5
	nop                                              ; $6726: $00
	sbc a                                            ; $6727: $9f
	rst $38                                          ; $6728: $ff
	rst SubAFromBC                                          ; $6729: $e7
	rst GetHLinHL                                          ; $672a: $cf
	rst $38                                          ; $672b: $ff
	ld a, e                                          ; $672c: $7b
	db $f4                                           ; $672d: $f4
	ld [hl], a                                       ; $672e: $77
	call z, $ba9e                                    ; $672f: $cc $9e $ba
	ld a, e                                          ; $6732: $7b
	ld a, d                                          ; $6733: $7a
	ld [hl], l                                       ; $6734: $75
	ld [hl], h                                       ; $6735: $74
	ld a, d                                          ; $6736: $7a
	ld l, c                                          ; $6737: $69
	ld [hl], e                                       ; $6738: $73
	or b                                             ; $6739: $b0
	adc l                                            ; $673a: $8d
	xor [hl]                                         ; $673b: $ae
	ld bc, $0a75                                     ; $673c: $01 $75 $0a
	ld a, [hl]                                       ; $673f: $7e
	add b                                            ; $6740: $80
	add b                                            ; $6741: $80
	cp $7e                                           ; $6742: $fe $7e
	cp $56                                           ; $6744: $fe $56
	xor [hl]                                         ; $6746: $ae
	and b                                            ; $6747: $a0
	ld e, a                                          ; $6748: $5f
	ld d, b                                          ; $6749: $50
	xor a                                            ; $674a: $af
	and b                                            ; $674b: $a0
	ld e, a                                          ; $674c: $5f
	ld a, d                                          ; $674d: $7a
	ld c, h                                          ; $674e: $4c
	ld [hl], d                                       ; $674f: $72
	jp z, $98ff                                      ; $6750: $ca $ff $98

	add e                                            ; $6753: $83
	ld a, a                                          ; $6754: $7f
	ldh [$1f], a                                     ; $6755: $e0 $1f
	rst $38                                          ; $6757: $ff
	nop                                              ; $6758: $00
	ldh [$71], a                                     ; $6759: $e0 $71
	ld bc, $d572                                     ; $675b: $01 $72 $d5

jr_047_675e:
	ld [hl], h                                       ; $675e: $74
	ld sp, hl                                        ; $675f: $f9
	ld l, a                                          ; $6760: $6f
	add hl, bc                                       ; $6761: $09
	rra                                              ; $6762: $1f
	ldh a, [$9c]                                     ; $6763: $f0 $9c
	ld [$0800], sp                                   ; $6765: $08 $00 $08
	scf                                              ; $6768: $37
	ldh [$7f], a                                     ; $6769: $e0 $7f
	xor a                                            ; $676b: $af
	ld c, a                                          ; $676c: $4f
	ldh a, [$7e]                                     ; $676d: $f0 $7e
	ld b, [hl]                                       ; $676f: $46
	sbc [hl]                                         ; $6770: $9e
	ld bc, $f053                                     ; $6771: $01 $53 $f0
	ld a, h                                          ; $6774: $7c
	cp b                                             ; $6775: $b8
	ld [hl], e                                       ; $6776: $73
	di                                               ; $6777: $f3
	ld h, e                                          ; $6778: $63
	ldh a, [$73]                                     ; $6779: $f0 $73
	cp l                                             ; $677b: $bd
	dec hl                                           ; $677c: $2b
	ldh a, [rPCM12]                                  ; $677d: $f0 $76
	call z, $c399                                    ; $677f: $cc $99 $c3
	inc c                                            ; $6782: $0c
	inc sp                                           ; $6783: $33

jr_047_6784:
	call z, $3c03                                    ; $6784: $cc $03 $3c
	ld [hl], e                                       ; $6787: $73
	or $9b                                           ; $6788: $f6 $9b
	db $ec                                           ; $678a: $ec
	ld [hl], $0e                                     ; $678b: $36 $0e
	ld d, $6b                                        ; $678d: $16 $6b
	cp $80                                           ; $678f: $fe $80
	rla                                              ; $6791: $17
	rrca                                             ; $6792: $0f
	rla                                              ; $6793: $17
	rrca                                             ; $6794: $0f
	ld d, $0e                                        ; $6795: $16 $0e
	ld b, b                                          ; $6797: $40
	ld a, a                                          ; $6798: $7f
	rrca                                             ; $6799: $0f
	jr nc, jr_047_675e                               ; $679a: $30 $c2

	jr c, @-$17                                      ; $679c: $38 $e7

	ld hl, sp-$20                                    ; $679e: $f8 $e0
	ld a, a                                          ; $67a0: $7f
	sub e                                            ; $67a1: $93
	db $ec                                           ; $67a2: $ec
	ldh a, [$0e]                                     ; $67a3: $f0 $0e
	db $10                                           ; $67a5: $10
	ld c, $08                                        ; $67a6: $0e $08
	add a                                            ; $67a8: $87
	sbc c                                            ; $67a9: $99
	ld a, c                                          ; $67aa: $79
	cp $1f                                           ; $67ab: $fe $1f
	ldh [$fc], a                                     ; $67ad: $e0 $fc
	dec b                                            ; $67af: $05
	sub d                                            ; $67b0: $92
	ldh [$0a], a                                     ; $67b1: $e0 $0a
	ret nz                                           ; $67b3: $c0

	add hl, bc                                       ; $67b4: $09
	cp b                                             ; $67b5: $b8
	ld [bc], a                                       ; $67b6: $02
	and a                                            ; $67b7: $a7
	ld a, $ff                                        ; $67b8: $3e $ff
	ret nz                                           ; $67ba: $c0

	rst $38                                          ; $67bb: $ff
	dec d                                            ; $67bc: $15
	ret nz                                           ; $67bd: $c0

	ld l, [hl]                                       ; $67be: $6e
	ld [hl], b                                       ; $67bf: $70
	ld a, a                                          ; $67c0: $7f
	db $fc                                           ; $67c1: $fc
	adc l                                            ; $67c2: $8d
	ld a, [hl+]                                      ; $67c3: $2a
	nop                                              ; $67c4: $00
	ld a, [hl-]                                      ; $67c5: $3a
	ret c                                            ; $67c6: $d8

	db $fd                                           ; $67c7: $fd
	jr @+$5c                                         ; $67c8: $18 $5a

	jr jr_047_6784                                   ; $67ca: $18 $b8

	jr jr_047_6840                                   ; $67cc: $18 $72

	db $10                                           ; $67ce: $10
	ret nz                                           ; $67cf: $c0

	nop                                              ; $67d0: $00
	ld a, [de]                                       ; $67d1: $1a
	rra                                              ; $67d2: $1f
	add hl, sp                                       ; $67d3: $39
	ld a, [hl-]                                      ; $67d4: $3a
	ld a, d                                          ; $67d5: $7a
	ld e, d                                          ; $67d6: $5a
	db $fc                                           ; $67d7: $fc
	sub b                                            ; $67d8: $90
	xor b                                            ; $67d9: $a8
	nop                                              ; $67da: $00
	dec c                                            ; $67db: $0d
	nop                                              ; $67dc: $00
	ret nc                                           ; $67dd: $d0

	nop                                              ; $67de: $00
	ld h, h                                          ; $67df: $64
	rst $38                                          ; $67e0: $ff
	dec hl                                           ; $67e1: $2b
	nop                                              ; $67e2: $00
	rla                                              ; $67e3: $17
	nop                                              ; $67e4: $00
	cpl                                              ; $67e5: $2f
	nop                                              ; $67e6: $00
	dec d                                            ; $67e7: $15
	ld a, e                                          ; $67e8: $7b
	sub $9e                                          ; $67e9: $d6 $9e
	ld d, h                                          ; $67eb: $54
	cp $92                                           ; $67ec: $fe $92
	ld h, e                                          ; $67ee: $63
	rst $38                                          ; $67ef: $ff
	ld [$b515], a                                    ; $67f0: $ea $15 $b5

jr_047_67f3:
	ld c, d                                          ; $67f3: $4a
	ld [$5f15], a                                    ; $67f4: $ea $15 $5f
	nop                                              ; $67f7: $00
	dec hl                                           ; $67f8: $2b
	nop                                              ; $67f9: $00
	dec b                                            ; $67fa: $05
	cp $92                                           ; $67fb: $fe $92
	ld e, c                                          ; $67fd: $59
	cp [hl]                                          ; $67fe: $be
	nop                                              ; $67ff: $00
	rst $38                                          ; $6800: $ff
	ld b, b                                          ; $6801: $40
	cp a                                             ; $6802: $bf
	xor b                                            ; $6803: $a8
	ld d, a                                          ; $6804: $57
	ld d, l                                          ; $6805: $55
	xor d                                            ; $6806: $aa
	ld [$df15], a                                    ; $6807: $ea $15 $df
	cp $9e                                           ; $680a: $fe $9e
	ld h, b                                          ; $680c: $60
	halt                                             ; $680d: $76
	call $fe73                                       ; $680e: $cd $73 $fe
	sbc e                                            ; $6811: $9b
	and b                                            ; $6812: $a0
	ld b, b                                          ; $6813: $40
	ld b, b                                          ; $6814: $40
	and b                                            ; $6815: $a0
	ld a, c                                          ; $6816: $79
	ld e, h                                          ; $6817: $5c
	ld a, d                                          ; $6818: $7a
	cp a                                             ; $6819: $bf
	db $e3                                           ; $681a: $e3
	pop de                                           ; $681b: $d1
	ld [$7efd], sp                                   ; $681c: $08 $fd $7e
	ldh [c], a                                       ; $681f: $e2
	ld e, a                                          ; $6820: $5f
	cp $71                                           ; $6821: $fe $71
	bit 7, a                                         ; $6823: $cb $7f
	db $fd                                           ; $6825: $fd
	sbc d                                            ; $6826: $9a
	ret nz                                           ; $6827: $c0

	ld e, $cf                                        ; $6828: $1e $cf
	inc c                                            ; $682a: $0c
	add $77                                          ; $682b: $c6 $77
	cp $ff                                           ; $682d: $fe $ff
	sub b                                            ; $682f: $90
	ldh a, [rP1]                                     ; $6830: $f0 $00
	dec l                                            ; $6832: $2d

Call_047_6833:
	ret nc                                           ; $6833: $d0

	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	ld b, [hl]                                       ; $6836: $46
	ld h, d                                          ; $6837: $62
	ld c, l                                          ; $6838: $4d
	ld h, [hl]                                       ; $6839: $66
	ld c, l                                          ; $683a: $4d
	ld h, [hl]                                       ; $683b: $66
	ld b, [hl]                                       ; $683c: $46
	ld h, e                                          ; $683d: $63
	nop                                              ; $683e: $00
	ld a, b                                          ; $683f: $78

jr_047_6840:
	db $f4                                           ; $6840: $f4
	sub e                                            ; $6841: $93
	ld d, b                                          ; $6842: $50
	cpl                                              ; $6843: $2f
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	ld a, a                                          ; $6846: $7f
	xor e                                            ; $6847: $ab
	ld a, [$7933]                                    ; $6848: $fa $33 $79
	inc sp                                           ; $684b: $33
	ld l, [hl]                                       ; $684c: $6e
	cp e                                             ; $684d: $bb
	ld l, e                                          ; $684e: $6b
	ret nc                                           ; $684f: $d0

	sub [hl]                                         ; $6850: $96
	ld bc, $bdf8                                     ; $6851: $01 $f8 $bd
	jr nc, jr_047_686f                               ; $6854: $30 $19

	or b                                             ; $6856: $b0
	sbc c                                            ; $6857: $99
	jr nc, jr_047_67f3                               ; $6858: $30 $99

	ld [hl], h                                       ; $685a: $74
	ret c                                            ; $685b: $d8

	sbc l                                            ; $685c: $9d
	ld b, b                                          ; $685d: $40
	add b                                            ; $685e: $80
	ld e, a                                          ; $685f: $5f
	cp $9c                                           ; $6860: $fe $9c
	ld [hl], e                                       ; $6862: $73
	db $fc                                           ; $6863: $fc
	inc de                                           ; $6864: $13
	ld a, d                                          ; $6865: $7a
	add $9d                                          ; $6866: $c6 $9d
	add e                                            ; $6868: $83
	adc h                                            ; $6869: $8c
	ld h, a                                          ; $686a: $67
	cp $7a                                           ; $686b: $fe $7a
	ret z                                            ; $686d: $c8

	halt                                             ; $686e: $76

jr_047_686f:
	call nz, $c26e                                   ; $686f: $c4 $6e $c2
	ld a, d                                          ; $6872: $7a
	ret nz                                           ; $6873: $c0

	add b                                            ; $6874: $80
	ld h, [hl]                                       ; $6875: $66
	rra                                              ; $6876: $1f
	adc a                                            ; $6877: $8f
	rla                                              ; $6878: $17
	rst SubAFromBC                                          ; $6879: $e7
	inc bc                                           ; $687a: $03
	sbc e                                            ; $687b: $9b
	inc bc                                           ; $687c: $03
	add a                                            ; $687d: $87
	db $e3                                           ; $687e: $e3
	pop hl                                           ; $687f: $e1
	ld sp, hl                                        ; $6880: $f9
	ld a, e                                          ; $6881: $7b
	db $fd                                           ; $6882: $fd
	rra                                              ; $6883: $1f
	ld a, a                                          ; $6884: $7f
	ld l, h                                          ; $6885: $6c
	add b                                            ; $6886: $80
	ret                                              ; $6887: $c9


	nop                                              ; $6888: $00
	ld e, c                                          ; $6889: $59
	add b                                            ; $688a: $80
	add e                                            ; $688b: $83
	ld [hl], b                                       ; $688c: $70
	ld h, e                                          ; $688d: $63
	sbc h                                            ; $688e: $9c
	dec e                                            ; $688f: $1d
	add d                                            ; $6890: $82
	ld h, [hl]                                       ; $6891: $66
	add b                                            ; $6892: $80

jr_047_6893:
	inc c                                            ; $6893: $0c
	add b                                            ; $6894: $80

jr_047_6895:
	ret nz                                           ; $6895: $c0

	ld b, [hl]                                       ; $6896: $46
	ldh [$08], a                                     ; $6897: $e0 $08
	cp c                                             ; $6899: $b9

Call_047_689a:
	ld bc, $0393                                     ; $689a: $01 $93 $03
	dec h                                            ; $689d: $25
	ld c, l                                          ; $689e: $4d
	adc c                                            ; $689f: $89
	sub l                                            ; $68a0: $95
	add hl, sp                                       ; $68a1: $39
	dec [hl]                                         ; $68a2: $35
	ld l, c                                          ; $68a3: $69
	dec [hl]                                         ; $68a4: $35
	xor c                                            ; $68a5: $a9
	ld a, c                                          ; $68a6: $79
	ld e, d                                          ; $68a7: $5a
	ld sp, hl                                        ; $68a8: $f9
	sbc d                                            ; $68a9: $9a
	add hl, bc                                       ; $68aa: $09
	sbc d                                            ; $68ab: $9a
	or b                                             ; $68ac: $b0
	ld a, d                                          ; $68ad: $7a
	ret z                                            ; $68ae: $c8

	dec de                                           ; $68af: $1b
	pop de                                           ; $68b0: $d1
	ld a, [de]                                       ; $68b1: $1a
	adc c                                            ; $68b2: $89
	ld a, [de]                                       ; $68b3: $1a
	sbc c                                            ; $68b4: $99
	ld [$db1b], sp                                   ; $68b5: $08 $1b $db
	jr nz, jr_047_6895                               ; $68b8: $20 $db

	nop                                              ; $68ba: $00
	ld [hl], a                                       ; $68bb: $77
	cp $90                                           ; $68bc: $fe $90
	dec de                                           ; $68be: $1b
	nop                                              ; $68bf: $00
	ld b, e                                          ; $68c0: $43
	ret nz                                           ; $68c1: $c0

	ld c, b                                          ; $68c2: $48
	sbc b                                            ; $68c3: $98
	ld e, c                                          ; $68c4: $59
	add e                                            ; $68c5: $83
	jr z, jr_047_690a                                ; $68c6: $28 $42

	ld de, $2842                                     ; $68c8: $11 $42 $28
	ld b, d                                          ; $68cb: $42
	add hl, sp                                       ; $68cc: $39
	ld l, e                                          ; $68cd: $6b
	cp $94                                           ; $68ce: $fe $94
	add hl, de                                       ; $68d0: $19
	ld b, d                                          ; $68d1: $42
	adc b                                            ; $68d2: $88
	db $10                                           ; $68d3: $10
	ld bc, $0810                                     ; $68d4: $01 $10 $08
	db $10                                           ; $68d7: $10
	ld c, l                                          ; $68d8: $4d
	db $10                                           ; $68d9: $10
	rst GetHLinHL                                          ; $68da: $cf
	ld l, e                                          ; $68db: $6b
	cp $96                                           ; $68dc: $fe $96
	ld l, $40                                        ; $68de: $2e $40
	ld e, $40                                        ; $68e0: $1e $40
	ld l, $40                                        ; $68e2: $2e $40
	ld d, $40                                        ; $68e4: $16 $40
	ld a, $7b                                        ; $68e6: $3e $7b
	cp $98                                           ; $68e8: $fe $98
	inc a                                            ; $68ea: $3c
	ld b, b                                          ; $68eb: $40
	jr c, jr_047_692f                                ; $68ec: $38 $41

	ld h, b                                          ; $68ee: $60
	add b                                            ; $68ef: $80
	ld h, b                                          ; $68f0: $60
	ld a, e                                          ; $68f1: $7b
	ld e, d                                          ; $68f2: $5a
	ld a, b                                          ; $68f3: $78
	sbc e                                            ; $68f4: $9b
	rst SubAFromDE                                          ; $68f5: $df
	jr nz, jr_047_6893                               ; $68f6: $20 $9b

	ld b, b                                          ; $68f8: $40
	ld h, b                                          ; $68f9: $60
	add b                                            ; $68fa: $80
	ldh [$64], a                                     ; $68fb: $e0 $64
	sub e                                            ; $68fd: $93
	ld [bc], a                                       ; $68fe: $02
	ret nz                                           ; $68ff: $c0

	reti                                             ; $6900: $d9


	ld [$ca66], sp                                   ; $6901: $08 $66 $ca
	ld a, h                                          ; $6904: $7c
	sbc l                                            ; $6905: $9d
	sub a                                            ; $6906: $97
	jr jr_047_6910                                   ; $6907: $18 $07

	inc sp                                           ; $6909: $33

jr_047_690a:
	rrca                                             ; $690a: $0f
	daa                                              ; $690b: $27
	rra                                              ; $690c: $1f
	ld bc, $defe                                     ; $690d: $01 $fe $de

jr_047_6910:
	rst $38                                          ; $6910: $ff
	ld l, d                                          ; $6911: $6a
	cp d                                             ; $6912: $ba
	db $dd                                           ; $6913: $dd
	rst $38                                          ; $6914: $ff
	sbc e                                            ; $6915: $9b
	ld e, a                                          ; $6916: $5f
	and b                                            ; $6917: $a0
	db $e4                                           ; $6918: $e4
	ld hl, sp+$77                                    ; $6919: $f8 $77
	ldh a, [$7e]                                     ; $691b: $f0 $7e
	ld [$199e], a                                    ; $691d: $ea $9e $19
	ld [hl], b                                       ; $6920: $70
	push af                                          ; $6921: $f5
	ld a, [hl]                                       ; $6922: $7e
	ld c, b                                          ; $6923: $48
	sbc l                                            ; $6924: $9d
	sbc a                                            ; $6925: $9f
	ld a, a                                          ; $6926: $7f
	ld [hl], a                                       ; $6927: $77
	ldh a, [$7c]                                     ; $6928: $f0 $7c
	ld b, h                                          ; $692a: $44
	ld a, l                                          ; $692b: $7d
	ld a, [bc]                                       ; $692c: $0a
	db $dd                                           ; $692d: $dd
	rst $38                                          ; $692e: $ff

jr_047_692f:
	ld a, [hl]                                       ; $692f: $7e
	ld [hl-], a                                      ; $6930: $32
	ld a, e                                          ; $6931: $7b
	jp hl                                            ; $6932: $e9


	ld e, e                                          ; $6933: $5b
	ret nc                                           ; $6934: $d0

	halt                                             ; $6935: $76
	call z, $d47f                                    ; $6936: $cc $7f $d4
	rst $38                                          ; $6939: $ff
	sub a                                            ; $693a: $97
	ld hl, sp+$00                                    ; $693b: $f8 $00
	inc b                                            ; $693d: $04
	ld hl, sp-$20                                    ; $693e: $f8 $e0
	call c, $ecf2                                    ; $6940: $dc $f2 $ec
	ld h, [hl]                                       ; $6943: $66
	ret z                                            ; $6944: $c8

	sbc [hl]                                         ; $6945: $9e
	adc e                                            ; $6946: $8b
	ld l, e                                          ; $6947: $6b
	cp $65                                           ; $6948: $fe $65
	add d                                            ; $694a: $82
	ld [hl], c                                       ; $694b: $71
	ld a, [hl]                                       ; $694c: $7e
	ld a, e                                          ; $694d: $7b
	cp $9a                                           ; $694e: $fe $9a
	rlca                                             ; $6950: $07
	inc bc                                           ; $6951: $03
	ld bc, $0c00                                     ; $6952: $01 $00 $0c
	ld a, e                                          ; $6955: $7b
	add d                                            ; $6956: $82
	add b                                            ; $6957: $80
	ld e, $00                                        ; $6958: $1e $00
	inc a                                            ; $695a: $3c
	nop                                              ; $695b: $00
	dec sp                                           ; $695c: $3b
	ld bc, $0336                                     ; $695d: $01 $36 $03
	ldh a, [c]                                       ; $6960: $f2
	pop bc                                           ; $6961: $c1
	rst SubAFromBC                                          ; $6962: $e7
	ldh [c], a                                       ; $6963: $e2
	ld d, a                                          ; $6964: $57
	rst JumpTable                                          ; $6965: $c7
	and b                                            ; $6966: $a0
	rla                                              ; $6967: $17
	ld d, b                                          ; $6968: $50
	inc h                                            ; $6969: $24
	ld h, b                                          ; $696a: $60
	ld [hl], h                                       ; $696b: $74
	ld sp, $3274                                     ; $696c: $31 $74 $32
	ld [hl], h                                       ; $696f: $74
	dec b                                            ; $6970: $05
	xor c                                            ; $6971: $a9
	adc h                                            ; $6972: $8c
	ld hl, $b984                                     ; $6973: $21 $84 $b9
	sub b                                            ; $6976: $90
	sub h                                            ; $6977: $94
	cp l                                             ; $6978: $bd
	dec c                                            ; $6979: $0d
	dec a                                            ; $697a: $3d
	ld bc, $1021                                     ; $697b: $01 $21 $10
	ld hl, $2180                                     ; $697e: $21 $80 $21
	jr @-$23                                         ; $6981: $18 $db

	ld [hl], a                                       ; $6983: $77
	cp $80                                           ; $6984: $fe $80
	add hl, de                                       ; $6986: $19
	db $db                                           ; $6987: $db
	add hl, de                                       ; $6988: $19
	jp c, $da59                                      ; $6989: $da $59 $da

	jr jr_047_69a9                                   ; $698c: $18 $1b

	sbc c                                            ; $698e: $99
	dec de                                           ; $698f: $1b
	ret c                                            ; $6990: $d8

	ld bc, $09d0                                     ; $6991: $01 $d0 $09
	ld b, b                                          ; $6994: $40
	adc c                                            ; $6995: $89
	nop                                              ; $6996: $00
	db $db                                           ; $6997: $db
	pop de                                           ; $6998: $d1
	jp z, $9ad9                                      ; $6999: $ca $d9 $9a

	db $d3                                           ; $699c: $d3
	sbc e                                            ; $699d: $9b
	sub d                                            ; $699e: $92
	reti                                             ; $699f: $d9


	ld bc, $1062                                     ; $69a0: $01 $62 $10
	ld e, d                                          ; $69a3: $5a
	ld [$5380], sp                                   ; $69a4: $08 $80 $53
	add hl, bc                                       ; $69a7: $09
	ld d, d                                          ; $69a8: $52

jr_047_69a9:
	add hl, de                                       ; $69a9: $19
	ld h, d                                          ; $69aa: $62
	add hl, de                                       ; $69ab: $19
	ld h, d                                          ; $69ac: $62
	ld de, $0162                                     ; $69ad: $11 $62 $01
	ld a, d                                          ; $69b0: $7a
	rst GetHLinHL                                          ; $69b1: $cf
	db $10                                           ; $69b2: $10
	ld c, a                                          ; $69b3: $4f
	db $10                                           ; $69b4: $10
	rrca                                             ; $69b5: $0f
	sub b                                            ; $69b6: $90
	add d                                            ; $69b7: $82
	ret nc                                           ; $69b8: $d0

	add b                                            ; $69b9: $80
	dec e                                            ; $69ba: $1d
	adc [hl]                                         ; $69bb: $8e
	ld d, d                                          ; $69bc: $52
	adc h                                            ; $69bd: $8c
	ld d, b                                          ; $69be: $50
	ret nz                                           ; $69bf: $c0

	add hl, de                                       ; $69c0: $19
	ld sp, $2243                                     ; $69c1: $31 $43 $22
	ld b, [hl]                                       ; $69c4: $46
	sub d                                            ; $69c5: $92
	ld b, $4c                                        ; $69c6: $06 $4c
	ld c, $98                                        ; $69c8: $0e $98
	ld e, $30                                        ; $69ca: $1e $30
	ld a, $70                                        ; $69cc: $3e $70
	ld e, b                                          ; $69ce: $58
	sbc $92                                          ; $69cf: $de $92
	call nc, Call_047_7ae0                           ; $69d1: $d4 $e0 $7a
	call z, $fe7f                                    ; $69d4: $cc $7f $fe
	halt                                             ; $69d7: $76
	cp d                                             ; $69d8: $ba
	ld l, a                                          ; $69d9: $6f
	cp $02                                           ; $69da: $fe $02
	ret nz                                           ; $69dc: $c0

	jp nc, $9d08                                     ; $69dd: $d2 $08 $9d

	cpl                                              ; $69e0: $2f
	rra                                              ; $69e1: $1f
	ld d, a                                          ; $69e2: $57
	cp $9d                                           ; $69e3: $fe $9d
	ccf                                              ; $69e5: $3f
	rrca                                             ; $69e6: $0f
	db $d3                                           ; $69e7: $d3
	rst $38                                          ; $69e8: $ff

jr_047_69e9:
	sbc [hl]                                         ; $69e9: $9e
	ldh a, [$ca]                                     ; $69ea: $f0 $ca
	rst $38                                          ; $69ec: $ff
	ld a, [hl]                                       ; $69ed: $7e
	sbc e                                            ; $69ee: $9b
	sbc h                                            ; $69ef: $9c
	db $fc                                           ; $69f0: $fc
	cp $f8                                           ; $69f1: $fe $f8
	sbc $ff                                          ; $69f3: $de $ff
	ld a, a                                          ; $69f5: $7f
	ld a, [$ffdb]                                    ; $69f6: $fa $db $ff
	sub e                                            ; $69f9: $93
	rra                                              ; $69fa: $1f
	rst $38                                          ; $69fb: $ff
	rrca                                             ; $69fc: $0f
	rra                                              ; $69fd: $1f
	rlca                                             ; $69fe: $07
	rrca                                             ; $69ff: $0f
	add a                                            ; $6a00: $87
	adc a                                            ; $6a01: $8f
	rrca                                             ; $6a02: $0f
	rst $38                                          ; $6a03: $ff
	ld a, [$4ff4]                                    ; $6a04: $fa $f4 $4f
	cp $9a                                           ; $6a07: $fe $9a
	sbc e                                            ; $6a09: $9b
	adc h                                            ; $6a0a: $8c
	db $db                                           ; $6a0b: $db
	adc h                                            ; $6a0c: $8c
	ei                                               ; $6a0d: $fb
	ld e, e                                          ; $6a0e: $5b
	cp $76                                           ; $6a0f: $fe $76
	call z, $fe77                                    ; $6a11: $cc $77 $fe
	sbc [hl]                                         ; $6a14: $9e
	scf                                              ; $6a15: $37
	ld a, e                                          ; $6a16: $7b
	cp $92                                           ; $6a17: $fe $92
	ld [hl], a                                       ; $6a19: $77
	ld c, $e7                                        ; $6a1a: $0e $e7
	ld e, $0e                                        ; $6a1c: $1e $0e
	inc b                                            ; $6a1e: $04
	inc bc                                           ; $6a1f: $03
	ld [$0827], sp                                   ; $6a20: $08 $27 $08
	and a                                            ; $6a23: $a7
	ld [$6f67], sp                                   ; $6a24: $08 $67 $6f
	db $fc                                           ; $6a27: $fc
	adc c                                            ; $6a28: $89
	ld c, b                                          ; $6a29: $48
	ld de, $2274                                     ; $6a2a: $11 $74 $22
	ld d, h                                          ; $6a2d: $54
	inc hl                                           ; $6a2e: $23
	ld d, h                                          ; $6a2f: $54
	inc de                                           ; $6a30: $13
	ld b, h                                          ; $6a31: $44
	ld sp, $3246                                     ; $6a32: $31 $46 $32
	ld b, l                                          ; $6a35: $45
	inc sp                                           ; $6a36: $33
	ld b, [hl]                                       ; $6a37: $46
	inc hl                                           ; $6a38: $23
	ld d, a                                          ; $6a39: $57
	inc d                                            ; $6a3a: $14
	ld hl, $2188                                     ; $6a3b: $21 $88 $21
	sbc h                                            ; $6a3e: $9c
	ld a, e                                          ; $6a3f: $7b
	cp $81                                           ; $6a40: $fe $81
	jr jr_047_69e9                                   ; $6a42: $18 $a5

	sub b                                            ; $6a44: $90
	inc l                                            ; $6a45: $2c
	ld bc, $02b8                                     ; $6a46: $01 $b8 $02
	or c                                             ; $6a49: $b1
	add sp, $1b                                      ; $6a4a: $e8 $1b
	ld b, b                                          ; $6a4c: $40
	adc [hl]                                         ; $6a4d: $8e
	nop                                              ; $6a4e: $00
	sbc a                                            ; $6a4f: $9f
	ld [$003b], sp                                   ; $6a50: $08 $3b $00
	ld h, b                                          ; $6a53: $60
	db $10                                           ; $6a54: $10
	rst SubAFromDE                                          ; $6a55: $df
	ret z                                            ; $6a56: $c8

	rra                                              ; $6a57: $1f
	sub h                                            ; $6a58: $94
	rra                                              ; $6a59: $1f
	sub d                                            ; $6a5a: $92
	reti                                             ; $6a5b: $d9


	dec de                                           ; $6a5c: $1b
	jr jr_047_6a60                                   ; $6a5d: $18 $01

	rlca                                             ; $6a5f: $07

jr_047_6a60:
	ld [hl], h                                       ; $6a60: $74
	jp c, $3d7a                                      ; $6a61: $da $7a $3d

	ld a, e                                          ; $6a64: $7b
	cp $97                                           ; $6a65: $fe $97
	jr c, jr_047_6ac4                                ; $6a67: $38 $5b

	inc bc                                           ; $6a69: $03
	ld a, e                                          ; $6a6a: $7b
	jr nz, jr_047_6ac8                               ; $6a6b: $20 $5b

	ld a, [de]                                       ; $6a6d: $1a
	dec a                                            ; $6a6e: $3d
	ld [hl], d                                       ; $6a6f: $72
	dec l                                            ; $6a70: $2d
	ld a, e                                          ; $6a71: $7b
	cp $93                                           ; $6a72: $fe $93
	sub c                                            ; $6a74: $91
	ld b, e                                          ; $6a75: $43
	ld [bc], a                                       ; $6a76: $02
	rst SubAFromBC                                          ; $6a77: $e7
	add h                                            ; $6a78: $84
	call $9d0c                                       ; $6a79: $cd $0c $9d
	nop                                              ; $6a7c: $00
	or c                                             ; $6a7d: $b1
	nop                                              ; $6a7e: $00
	cp l                                             ; $6a7f: $bd
	ld [hl], a                                       ; $6a80: $77
	cp $8b                                           ; $6a81: $fe $8b
	ld [de], a                                       ; $6a83: $12
	inc e                                            ; $6a84: $1c
	ld [bc], a                                       ; $6a85: $02
	sbc h                                            ; $6a86: $9c
	add d                                            ; $6a87: $82
	ld e, b                                          ; $6a88: $58
	ret nz                                           ; $6a89: $c0

	inc e                                            ; $6a8a: $1c
	nop                                              ; $6a8b: $00
	ld [de], a                                       ; $6a8c: $12
	ld c, $d0                                        ; $6a8d: $0e $d0
	nop                                              ; $6a8f: $00
	sbc $00                                          ; $6a90: $de $00
	sbc $20                                          ; $6a92: $de $20
	ret nz                                           ; $6a94: $c0

	nop                                              ; $6a95: $00
	and b                                            ; $6a96: $a0
	ld e, [hl]                                       ; $6a97: $5e
	jp nz, Jump_047_7679                             ; $6a98: $c2 $79 $76

	ld [bc], a                                       ; $6a9b: $02
	ret nz                                           ; $6a9c: $c0

	db $d3                                           ; $6a9d: $d3
	ld [$ce7e], sp                                   ; $6a9e: $08 $7e $ce
	ld e, a                                          ; $6aa1: $5f
	cp $76                                           ; $6aa2: $fe $76
	cp [hl]                                          ; $6aa4: $be
	sub [hl]                                         ; $6aa5: $96
	ldh [$f9], a                                     ; $6aa6: $e0 $f9
	pop hl                                           ; $6aa8: $e1
	or $e0                                           ; $6aa9: $f6 $e0
	rst $38                                          ; $6aab: $ff
	ldh [rIE], a                                     ; $6aac: $e0 $ff
	ret nz                                           ; $6aae: $c0

	ld [hl], e                                       ; $6aaf: $73
	cp $9c                                           ; $6ab0: $fe $9c
	add d                                            ; $6ab2: $82
	rst $38                                          ; $6ab3: $ff
	ld a, a                                          ; $6ab4: $7f
	ld a, e                                          ; $6ab5: $7b
	cp $80                                           ; $6ab6: $fe $80
	ld a, [hl]                                       ; $6ab8: $7e
	cp $7c                                           ; $6ab9: $fe $7c
	db $fd                                           ; $6abb: $fd
	ld a, c                                          ; $6abc: $79
	ld a, [$f770]                                    ; $6abd: $fa $70 $f7
	ld [hl], d                                       ; $6ac0: $72
	cp $72                                           ; $6ac1: $fe $72
	ei                                               ; $6ac3: $fb

jr_047_6ac4:
	cp $ff                                           ; $6ac4: $fe $ff
	cp $fe                                           ; $6ac6: $fe $fe

jr_047_6ac8:
	rra                                              ; $6ac8: $1f
	ld a, a                                          ; $6ac9: $7f
	rrca                                             ; $6aca: $0f
	cp a                                             ; $6acb: $bf
	rst JumpTable                                          ; $6acc: $c7
	ld l, a                                          ; $6acd: $6f
	inc bc                                           ; $6ace: $03
	inc de                                           ; $6acf: $13
	inc de                                           ; $6ad0: $13
	sbc a                                            ; $6ad1: $9f
	rra                                              ; $6ad2: $1f
	ccf                                              ; $6ad3: $3f
	ld e, a                                          ; $6ad4: $5f
	ld e, a                                          ; $6ad5: $5f
	rla                                              ; $6ad6: $17

jr_047_6ad7:
	sub d                                            ; $6ad7: $92
	rla                                              ; $6ad8: $17
	inc hl                                           ; $6ad9: $23
	ccf                                              ; $6ada: $3f
	call $9bf3                                       ; $6adb: $cd $f3 $9b
	rst SubAFromBC                                          ; $6ade: $e7
	push de                                          ; $6adf: $d5
	cp e                                             ; $6ae0: $bb
	ld l, d                                          ; $6ae1: $6a
	sbc a                                            ; $6ae2: $9f
	ld d, l                                          ; $6ae3: $55
	cp a                                             ; $6ae4: $bf
	ld b, [hl]                                       ; $6ae5: $46
	ret nz                                           ; $6ae6: $c0

	halt                                             ; $6ae7: $76
	call z, $99ff                                    ; $6ae8: $cc $ff $99
	ld a, l                                          ; $6aeb: $7d
	nop                                              ; $6aec: $00
	ld e, c                                          ; $6aed: $59
	rst GetHLinHL                                          ; $6aee: $cf
	ld e, c                                          ; $6aef: $59
	inc c                                            ; $6af0: $0c
	ld [hl], a                                       ; $6af1: $77
	cp $7e                                           ; $6af2: $fe $7e
	adc $7f                                          ; $6af4: $ce $7f
	cp $99                                           ; $6af6: $fe $99
	inc bc                                           ; $6af8: $03
	ld b, $f7                                        ; $6af9: $06 $f7
	ld [bc], a                                       ; $6afb: $02
	ld h, a                                          ; $6afc: $67
	sub d                                            ; $6afd: $92
	ld l, a                                          ; $6afe: $6f
	cp $80                                           ; $6aff: $fe $80
	ld b, l                                          ; $6b01: $45
	xor d                                            ; $6b02: $aa
	and b                                            ; $6b03: $a0
	ld c, a                                          ; $6b04: $4f
	inc b                                            ; $6b05: $04
	db $eb                                           ; $6b06: $eb
	ld b, b                                          ; $6b07: $40
	xor a                                            ; $6b08: $af
	and b                                            ; $6b09: $a0
	ld c, a                                          ; $6b0a: $4f
	ld b, b                                          ; $6b0b: $40
	xor a                                            ; $6b0c: $af
	and l                                            ; $6b0d: $a5
	ld c, d                                          ; $6b0e: $4a
	rrca                                             ; $6b0f: $0f
	ld [$6713], sp                                   ; $6b10: $08 $13 $67
	inc hl                                           ; $6b13: $23
	ld d, a                                          ; $6b14: $57
	ld [bc], a                                       ; $6b15: $02
	ld [hl], a                                       ; $6b16: $77
	ld b, b                                          ; $6b17: $40
	halt                                             ; $6b18: $76
	ld b, b                                          ; $6b19: $40
	ld [hl], h                                       ; $6b1a: $74
	ld b, c                                          ; $6b1b: $41
	ld [hl], b                                       ; $6b1c: $70
	ld d, e                                          ; $6b1d: $53
	ld h, b                                          ; $6b1e: $60
	daa                                              ; $6b1f: $27
	sub b                                            ; $6b20: $90
	ld b, b                                          ; $6b21: $40
	nop                                              ; $6b22: $00
	and [hl]                                         ; $6b23: $a6
	ld b, $88                                        ; $6b24: $06 $88
	ld c, $10                                        ; $6b26: $0e $10
	db $10                                           ; $6b28: $10
	jr nz, @+$22                                     ; $6b29: $20 $20

	ret nz                                           ; $6b2b: $c0

	and b                                            ; $6b2c: $a0
	rst GetHLinHL                                          ; $6b2d: $cf
	and b                                            ; $6b2e: $a0
	rst GetHLinHL                                          ; $6b2f: $cf
	ld a, c                                          ; $6b30: $79
	ld d, a                                          ; $6b31: $57
	sbc h                                            ; $6b32: $9c
	nop                                              ; $6b33: $00
	inc bc                                           ; $6b34: $03
	db $fc                                           ; $6b35: $fc
	ld [hl], d                                       ; $6b36: $72
	and $7d                                          ; $6b37: $e6 $7d
	jr nz, jr_047_6ad7                               ; $6b39: $20 $9c

	ei                                               ; $6b3b: $fb
	ld bc, $77fe                                     ; $6b3c: $01 $fe $77
	ld hl, sp-$80                                    ; $6b3f: $f8 $80
	sbc c                                            ; $6b41: $99
	ld h, [hl]                                       ; $6b42: $66
	ld h, [hl]                                       ; $6b43: $66
	sbc c                                            ; $6b44: $99
	add hl, de                                       ; $6b45: $19
	and $00                                          ; $6b46: $e6 $00
	nop                                              ; $6b48: $00
	call z, $3333                                    ; $6b49: $cc $33 $33
	call z, $33cc                                    ; $6b4c: $cc $cc $33
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	sbc b                                            ; $6b51: $98
	ld h, a                                          ; $6b52: $67
	ld h, b                                          ; $6b53: $60
	sbc a                                            ; $6b54: $9f
	add b                                            ; $6b55: $80
	ld b, b                                          ; $6b56: $40
	rrca                                             ; $6b57: $0f
	rra                                              ; $6b58: $1f
	sbc h                                            ; $6b59: $9c
	inc sp                                           ; $6b5a: $33
	inc sp                                           ; $6b5b: $33
	sbc h                                            ; $6b5c: $9c
	cp h                                             ; $6b5d: $bc
	inc de                                           ; $6b5e: $13
	nop                                              ; $6b5f: $00
	sbc [hl]                                         ; $6b60: $9e
	and c                                            ; $6b61: $a1
	ld [hl], d                                       ; $6b62: $72
	ret z                                            ; $6b63: $c8

	ld a, h                                          ; $6b64: $7c
	ret nz                                           ; $6b65: $c0

	sbc b                                            ; $6b66: $98
	rst $38                                          ; $6b67: $ff
	ld bc, $19bc                                     ; $6b68: $01 $bc $19
	cp h                                             ; $6b6b: $bc
	ld bc, $79bc                                     ; $6b6c: $01 $bc $79
	rla                                              ; $6b6f: $17
	sbc h                                            ; $6b70: $9c
	sbc $4e                                          ; $6b71: $de $4e
	sub b                                            ; $6b73: $90
	ld a, e                                          ; $6b74: $7b
	ldh a, [$98]                                     ; $6b75: $f0 $98
	cp $26                                           ; $6b77: $fe $26
	ld c, a                                          ; $6b79: $4f
	ld c, $5f                                        ; $6b7a: $0e $5f
	inc e                                            ; $6b7c: $1c
	ld a, l                                          ; $6b7d: $7d
	reti                                             ; $6b7e: $d9


	ld b, b                                          ; $6b7f: $40
	sbc h                                            ; $6b80: $9c
	ld d, l                                          ; $6b81: $55
	ld b, b                                          ; $6b82: $40
	ld c, d                                          ; $6b83: $4a
	ld [hl], e                                       ; $6b84: $73
	db $fc                                           ; $6b85: $fc
	ei                                               ; $6b86: $fb
	sbc d                                            ; $6b87: $9a
	ld [bc], a                                       ; $6b88: $02
	nop                                              ; $6b89: $00
	ld d, l                                          ; $6b8a: $55
	nop                                              ; $6b8b: $00
	xor d                                            ; $6b8c: $aa
	ld [hl], e                                       ; $6b8d: $73
	db $fc                                           ; $6b8e: $fc
	db $fd                                           ; $6b8f: $fd
	ld a, h                                          ; $6b90: $7c
	sbc $6f                                          ; $6b91: $de $6f
	db $f4                                           ; $6b93: $f4
	ld [hl], a                                       ; $6b94: $77
	db $fc                                           ; $6b95: $fc
	rst SubAFromDE                                          ; $6b96: $df
	ld [$0d9a], sp                                   ; $6b97: $08 $9a $0d
	ld [$084a], sp                                   ; $6b9a: $08 $4a $08
	xor l                                            ; $6b9d: $ad
	ld h, e                                          ; $6b9e: $63
	db $fc                                           ; $6b9f: $fc
	add b                                            ; $6ba0: $80
	cpl                                              ; $6ba1: $2f
	dec de                                           ; $6ba2: $1b
	ld l, [hl]                                       ; $6ba3: $6e
	dec de                                           ; $6ba4: $1b
	xor a                                            ; $6ba5: $af
	add hl, de                                       ; $6ba6: $19
	ld l, [hl]                                       ; $6ba7: $6e
	add hl, de                                       ; $6ba8: $19
	xor a                                            ; $6ba9: $af
	add hl, de                                       ; $6baa: $19
	ld l, a                                          ; $6bab: $6f
	add hl, de                                       ; $6bac: $19
	and e                                            ; $6bad: $a3
	dec e                                            ; $6bae: $1d
	ld h, c                                          ; $6baf: $61
	ld hl, $bf12                                     ; $6bb0: $21 $12 $bf
	inc de                                           ; $6bb3: $13
	ccf                                              ; $6bb4: $3f
	ld [hl], e                                       ; $6bb5: $73
	ccf                                              ; $6bb6: $3f
	ld a, e                                          ; $6bb7: $7b
	ld e, $5f                                        ; $6bb8: $1e $5f
	inc c                                            ; $6bba: $0c
	ld b, c                                          ; $6bbb: $41
	nop                                              ; $6bbc: $00
	ld h, a                                          ; $6bbd: $67
	nop                                              ; $6bbe: $00
	ld a, c                                          ; $6bbf: $79
	add c                                            ; $6bc0: $81
	ccf                                              ; $6bc1: $3f
	rst $38                                          ; $6bc2: $ff
	cp a                                             ; $6bc3: $bf
	cp [hl]                                          ; $6bc4: $be

jr_047_6bc5:
	sub a                                            ; $6bc5: $97
	ld [de], a                                       ; $6bc6: $12
	ld e, $3f                                        ; $6bc7: $1e $3f
	ld de, $1030                                     ; $6bc9: $11 $30 $10
	add h                                            ; $6bcc: $84
	dec bc                                           ; $6bcd: $0b
	adc a                                            ; $6bce: $8f
	rlca                                             ; $6bcf: $07
	ret c                                            ; $6bd0: $d8

	adc b                                            ; $6bd1: $88
	db $fd                                           ; $6bd2: $fd
	ei                                               ; $6bd3: $fb
	sbc d                                            ; $6bd4: $9a
	reti                                             ; $6bd5: $d9


	adc c                                            ; $6bd6: $89
	inc e                                            ; $6bd7: $1c
	sub c                                            ; $6bd8: $91
	db $fc                                           ; $6bd9: $fc
	ld bc, $0100                                     ; $6bda: $01 $00 $01
	db $fc                                           ; $6bdd: $fc
	db $fd                                           ; $6bde: $fd
	ld a, e                                          ; $6bdf: $7b
	ld a, [$ea96]                                    ; $6be0: $fa $96 $ea
	ccf                                              ; $6be3: $3f

jr_047_6be4:
	ld e, l                                          ; $6be4: $5d
	rst $38                                          ; $6be5: $ff
	ld a, [hl+]                                      ; $6be6: $2a
	rst $38                                          ; $6be7: $ff
	db $dd                                           ; $6be8: $dd

jr_047_6be9:
	rst $38                                          ; $6be9: $ff
	xor d                                            ; $6bea: $aa
	ld [hl], e                                       ; $6beb: $73

jr_047_6bec:
	db $fc                                           ; $6bec: $fc
	sbc l                                            ; $6bed: $9d
	cp l                                             ; $6bee: $bd
	rst SubAFromDE                                          ; $6bef: $df
	ld l, [hl]                                       ; $6bf0: $6e
	jp z, $fe9e                                      ; $6bf1: $ca $9e $fe

	ld [hl], e                                       ; $6bf4: $73
	cp $9b                                           ; $6bf5: $fe $9b
	db $fc                                           ; $6bf7: $fc
	db $f4                                           ; $6bf8: $f4
	ldh a, [$e0]                                     ; $6bf9: $f0 $e0
	ld l, [hl]                                       ; $6bfb: $6e
	jp z, $fe6b                                      ; $6bfc: $ca $6b $fe

	sbc h                                            ; $6bff: $9c
	inc l                                            ; $6c00: $2c
	ld a, h                                          ; $6c01: $7c
	dec a                                            ; $6c02: $3d
	ld h, [hl]                                       ; $6c03: $66
	ret z                                            ; $6c04: $c8

	ld l, a                                          ; $6c05: $6f
	cp $80                                           ; $6c06: $fe $80
	rlca                                             ; $6c08: $07
	di                                               ; $6c09: $f3
	adc a                                            ; $6c0a: $8f
	ld [$09ef], sp                                   ; $6c0b: $08 $ef $09
	xor $0b                                          ; $6c0e: $ee $0b
	adc h                                            ; $6c10: $8c
	ld c, $09                                        ; $6c11: $0e $09
	inc c                                            ; $6c13: $0c
	ld [bc], a                                       ; $6c14: $02
	dec c                                            ; $6c15: $0d
	nop                                              ; $6c16: $00
	inc bc                                           ; $6c17: $03
	add sp, -$12                                     ; $6c18: $e8 $ee
	ld b, c                                          ; $6c1a: $41
	ld c, $07                                        ; $6c1b: $0e $07
	jr jr_047_6c68                                   ; $6c1d: $18 $49

	jr nc, @-$6d                                     ; $6c1f: $30 $91

	ld h, b                                          ; $6c21: $60
	jr nz, jr_047_6be4                               ; $6c22: $20 $c0

	jr nz, jr_047_6bc5                               ; $6c24: $20 $9f

	jr nz, jr_047_6ca6                               ; $6c26: $20 $7e

	ld [hl-], a                                      ; $6c28: $32
	sbc [hl]                                         ; $6c29: $9e
	rst SubAFromDE                                          ; $6c2a: $df
	ld h, l                                          ; $6c2b: $65
	cp b                                             ; $6c2c: $b8
	ld h, a                                          ; $6c2d: $67
	ld hl, sp+$7b                                    ; $6c2e: $f8 $7b
	rst FarCall                                          ; $6c30: $f7
	ld [hl], e                                       ; $6c31: $73
	ld hl, sp+$79                                    ; $6c32: $f8 $79
	adc l                                            ; $6c34: $8d
	ld [hl], e                                       ; $6c35: $73
	ld hl, sp+$7d                                    ; $6c36: $f8 $7d
	rst GetHLinHL                                          ; $6c38: $cf
	halt                                             ; $6c39: $76
	jp nz, $fc7f                                     ; $6c3a: $c2 $7f $fc

	ld a, l                                          ; $6c3d: $7d
	cp c                                             ; $6c3e: $b9
	ld a, [hl]                                       ; $6c3f: $7e
	jp nz, $0c91                                     ; $6c40: $c2 $91 $0c

	di                                               ; $6c43: $f3
	inc bc                                           ; $6c44: $03
	db $fc                                           ; $6c45: $fc
	jr nc, jr_047_6c58                               ; $6c46: $30 $10

	jr nc, jr_047_6be9                               ; $6c48: $30 $9f

	cp c                                             ; $6c4a: $b9
	ld d, $34                                        ; $6c4b: $16 $34
	sbc e                                            ; $6c4d: $9b
	jr nc, jr_047_6c60                               ; $6c4e: $30 $10

	halt                                             ; $6c50: $76
	jp nz, $fc7f                                     ; $6c51: $c2 $7f $fc

	sbc l                                            ; $6c54: $9d
	jr z, jr_047_6bec                                ; $6c55: $28 $95

	ld a, e                                          ; $6c57: $7b

jr_047_6c58:
	cp $89                                           ; $6c58: $fe $89
	sub e                                            ; $6c5a: $93
	ld bc, $23b7                                     ; $6c5b: $01 $b7 $23
	adc a                                            ; $6c5e: $8f
	rlca                                             ; $6c5f: $07

jr_047_6c60:
	sbc a                                            ; $6c60: $9f
	ld c, $bf                                        ; $6c61: $0e $bf
	dec e                                            ; $6c63: $1d
	cp [hl]                                          ; $6c64: $be
	ld e, b                                          ; $6c65: $58
	add hl, sp                                       ; $6c66: $39
	halt                                             ; $6c67: $76

jr_047_6c68:
	ld sp, $215e                                     ; $6c68: $31 $5e $21
	ld a, [hl]                                       ; $6c6b: $7e
	ld bc, $016a                                     ; $6c6c: $01 $6a $01
	ld d, h                                          ; $6c6f: $54
	ld a, e                                          ; $6c70: $7b
	db $fc                                           ; $6c71: $fc
	sbc l                                            ; $6c72: $9d
	ld b, c                                          ; $6c73: $41
	ld bc, $c86e                                     ; $6c74: $01 $6e $c8
	sbc [hl]                                         ; $6c77: $9e
	ld e, a                                          ; $6c78: $5f
	ld l, e                                          ; $6c79: $6b
	cp $9d                                           ; $6c7a: $fe $9d
	rst SubAFromDE                                          ; $6c7c: $df
	ld b, b                                          ; $6c7d: $40
	ld l, [hl]                                       ; $6c7e: $6e
	ret c                                            ; $6c7f: $d8

	ld l, a                                          ; $6c80: $6f
	adc l                                            ; $6c81: $8d
	ld [hl], a                                       ; $6c82: $77
	cp $77                                           ; $6c83: $fe $77
	ldh a, [$5f]                                     ; $6c85: $f0 $5f
	ldh a, [c]                                       ; $6c87: $f2
	ld a, a                                          ; $6c88: $7f

jr_047_6c89:
	cp $7e                                           ; $6c89: $fe $7e
	call z, $af9c                                    ; $6c8b: $cc $9c $af
	ld [$5bef], sp                                   ; $6c8e: $08 $ef $5b
	cp $99                                           ; $6c91: $fe $99
	and b                                            ; $6c93: $a0
	jr nc, jr_047_6c89                               ; $6c94: $30 $f3

	rra                                              ; $6c96: $1f
	ld hl, sp+$0f                                    ; $6c97: $f8 $0f
	ld [hl], a                                       ; $6c99: $77
	and $8c                                          ; $6c9a: $e6 $8c
	cp $01                                           ; $6c9c: $fe $01
	rst $38                                          ; $6c9e: $ff
	ld bc, $01fe                                     ; $6c9f: $01 $fe $01
	rst SubAFromDE                                          ; $6ca2: $df
	and b                                            ; $6ca3: $a0
	and b                                            ; $6ca4: $a0
	ret nz                                           ; $6ca5: $c0

jr_047_6ca6:
	nop                                              ; $6ca6: $00
	ret nz                                           ; $6ca7: $c0

	ret nz                                           ; $6ca8: $c0

	add b                                            ; $6ca9: $80
	inc b                                            ; $6caa: $04
	add b                                            ; $6cab: $80
	add h                                            ; $6cac: $84
	nop                                              ; $6cad: $00
	inc b                                            ; $6cae: $04
	ld a, e                                          ; $6caf: $7b
	cp $9c                                           ; $6cb0: $fe $9c
	sbc a                                            ; $6cb2: $9f
	ldh [$80], a                                     ; $6cb3: $e0 $80
	db $dd                                           ; $6cb5: $dd
	ld a, a                                          ; $6cb6: $7f
	sbc l                                            ; $6cb7: $9d
	jr nz, jr_047_6cf9                               ; $6cb8: $20 $3f

	ld [hl], a                                       ; $6cba: $77
	cp $9c                                           ; $6cbb: $fe $9c
	nop                                              ; $6cbd: $00
	rra                                              ; $6cbe: $1f

jr_047_6cbf:
	db $10                                           ; $6cbf: $10
	ld [hl], a                                       ; $6cc0: $77
	ld b, b                                          ; $6cc1: $40
	sbc $ff                                          ; $6cc2: $de $ff
	ld h, e                                          ; $6cc4: $63
	or b                                             ; $6cc5: $b0
	ld a, [hl]                                       ; $6cc6: $7e
	ret nz                                           ; $6cc7: $c0

	adc [hl]                                         ; $6cc8: $8e
	sbc l                                            ; $6cc9: $9d
	rst $38                                          ; $6cca: $ff
	ld [$bdff], a                                    ; $6ccb: $ea $ff $bd
	rra                                              ; $6cce: $1f
	sbc d                                            ; $6ccf: $9a
	rra                                              ; $6cd0: $1f
	db $ed                                           ; $6cd1: $ed
	cp a                                             ; $6cd2: $bf
	rst JumpTable                                          ; $6cd3: $c7
	rst $38                                          ; $6cd4: $ff
	sub e                                            ; $6cd5: $93
	rst GetHLinHL                                          ; $6cd6: $cf
	db $fd                                           ; $6cd7: $fd
	add e                                            ; $6cd8: $83
	add e                                            ; $6cd9: $83
	ld [hl], h                                       ; $6cda: $74
	ld hl, $809e                                     ; $6cdb: $21 $9e $80
	ld h, a                                          ; $6cde: $67
	cp $7d                                           ; $6cdf: $fe $7d
	add [hl]                                         ; $6ce1: $86
	ld a, [hl]                                       ; $6ce2: $7e
	ld a, b                                          ; $6ce3: $78
	ld l, a                                          ; $6ce4: $6f
	cp $9c                                           ; $6ce5: $fe $9c
	ld b, l                                          ; $6ce7: $45
	jr c, jr_047_6d2b                                ; $6ce8: $38 $41

	ld a, e                                          ; $6cea: $7b
	rst GetHLinHL                                          ; $6ceb: $cf
	sbc c                                            ; $6cec: $99
	or $01                                           ; $6ced: $f6 $01
	inc b                                            ; $6cef: $04
	nop                                              ; $6cf0: $00
	rlca                                             ; $6cf1: $07
	inc bc                                           ; $6cf2: $03
	ld [hl], a                                       ; $6cf3: $77
	and [hl]                                         ; $6cf4: $a6
	sbc h                                            ; $6cf5: $9c
	inc b                                            ; $6cf6: $04
	di                                               ; $6cf7: $f3
	rlca                                             ; $6cf8: $07

jr_047_6cf9:
	ld [hl], l                                       ; $6cf9: $75
	or [hl]                                          ; $6cfa: $b6
	adc a                                            ; $6cfb: $8f
	db $ed                                           ; $6cfc: $ed
	nop                                              ; $6cfd: $00
	add sp, $02                                      ; $6cfe: $e8 $02
	jp hl                                            ; $6d00: $e9


	ld [bc], a                                       ; $6d01: $02
	add hl, bc                                       ; $6d02: $09
	ld [bc], a                                       ; $6d03: $02
	add hl, bc                                       ; $6d04: $09
	ld b, d                                          ; $6d05: $42
	or c                                             ; $6d06: $b1
	cp a                                             ; $6d07: $bf
	ld a, b                                          ; $6d08: $78
	ld h, a                                          ; $6d09: $67
	ld hl, sp+$20                                    ; $6d0a: $f8 $20
	ld e, [hl]                                       ; $6d0c: $5e
	adc $73                                          ; $6d0d: $ce $73
	sbc d                                            ; $6d0f: $9a
	ld e, [hl]                                       ; $6d10: $5e
	add $5f                                          ; $6d11: $c6 $5f
	ldh a, [$9d]                                     ; $6d13: $f0 $9d
	ld [bc], a                                       ; $6d15: $02
	db $fd                                           ; $6d16: $fd
	ld [hl], c                                       ; $6d17: $71
	add [hl]                                         ; $6d18: $86
	ld h, e                                          ; $6d19: $63
	ldh a, [$7e]                                     ; $6d1a: $f0 $7e
	jp nz, Jump_047_7c7d                             ; $6d1c: $c2 $7d $7c

	sbc l                                            ; $6d1f: $9d
	ld h, $d9                                        ; $6d20: $26 $d9
	ld l, a                                          ; $6d22: $6f
	ldh a, [$9c]                                     ; $6d23: $f0 $9c
	inc a                                            ; $6d25: $3c
	sub e                                            ; $6d26: $93
	ld sp, $be72                                     ; $6d27: $31 $72 $be
	sub b                                            ; $6d2a: $90

jr_047_6d2b:
	ld [hl], $99                                     ; $6d2b: $36 $99
	jr c, jr_047_6cbf                                ; $6d2d: $38 $90

	cp a                                             ; $6d2f: $bf
	rra                                              ; $6d30: $1f
	sub b                                            ; $6d31: $90
	ccf                                              ; $6d32: $3f
	ld a, [hl-]                                      ; $6d33: $3a
	cp h                                             ; $6d34: $bc
	inc [hl]                                         ; $6d35: $34
	cp b                                             ; $6d36: $b8
	nop                                              ; $6d37: $00
	cp a                                             ; $6d38: $bf
	ccf                                              ; $6d39: $3f
	ld a, e                                          ; $6d3a: $7b
	cp $97                                           ; $6d3b: $fe $97
	inc e                                            ; $6d3d: $1c
	add b                                            ; $6d3e: $80
	ldh [rIE], a                                     ; $6d3f: $e0 $ff
	rra                                              ; $6d41: $1f
	rst $38                                          ; $6d42: $ff
	ld b, c                                          ; $6d43: $41
	ld bc, $cb7a                                     ; $6d44: $01 $7a $cb
	sub e                                            ; $6d47: $93
	ld a, a                                          ; $6d48: $7f
	ccf                                              ; $6d49: $3f
	ld a, a                                          ; $6d4a: $7f
	dec [hl]                                         ; $6d4b: $35
	ld a, c                                          ; $6d4c: $79
	ld bc, $3f01                                     ; $6d4d: $01 $01 $3f
	rst $38                                          ; $6d50: $ff
	jp $dfff                                         ; $6d51: $c3 $ff $df


	ld h, d                                          ; $6d54: $62
	call nz, $fe6f                                   ; $6d55: $c4 $6f $fe
	ld d, [hl]                                       ; $6d58: $56
	call nc, $fe37                                   ; $6d59: $d4 $37 $fe
	ld d, [hl]                                       ; $6d5c: $56
	call nz, $fe77                                   ; $6d5d: $c4 $77 $fe
	sbc h                                            ; $6d60: $9c
	db $fc                                           ; $6d61: $fc
	ld [bc], a                                       ; $6d62: $02
	cp $73                                           ; $6d63: $fe $73
	cp $9a                                           ; $6d65: $fe $9a
	ld hl, sp+$04                                    ; $6d67: $f8 $04
	ld hl, sp+$04                                    ; $6d69: $f8 $04
	db $fc                                           ; $6d6b: $fc
	ld a, e                                          ; $6d6c: $7b
	cp $9c                                           ; $6d6d: $fe $9c
	ld [$4800], sp                                   ; $6d6f: $08 $00 $48
	ld [hl], e                                       ; $6d72: $73
	cp $87                                           ; $6d73: $fe $87
	adc b                                            ; $6d75: $88
	nop                                              ; $6d76: $00
	adc c                                            ; $6d77: $89
	nop                                              ; $6d78: $00
	adc c                                            ; $6d79: $89
	ld [$8899], sp                                   ; $6d7a: $08 $99 $88
	sbc a                                            ; $6d7d: $9f
	db $10                                           ; $6d7e: $10
	sbc a                                            ; $6d7f: $9f
	add b                                            ; $6d80: $80
	adc a                                            ; $6d81: $8f
	add b                                            ; $6d82: $80
	rst GetHLinHL                                          ; $6d83: $cf
	adc b                                            ; $6d84: $88
	ld c, a                                          ; $6d85: $4f
	ld c, b                                          ; $6d86: $48
	ld c, a                                          ; $6d87: $4f
	ld c, b                                          ; $6d88: $48
	ld l, a                                          ; $6d89: $6f
	ld c, b                                          ; $6d8a: $48
	ld l, a                                          ; $6d8b: $6f
	ld l, a                                          ; $6d8c: $6f
	ld c, e                                          ; $6d8d: $4b
	or b                                             ; $6d8e: $b0
	adc [hl]                                         ; $6d8f: $8e
	rst $38                                          ; $6d90: $ff
	sub d                                            ; $6d91: $92
	rst GetHLinHL                                          ; $6d92: $cf
	add d                                            ; $6d93: $82
	rst GetHLinHL                                          ; $6d94: $cf
	res 0, a                                         ; $6d95: $cb $87
	db $eb                                           ; $6d97: $eb
	add a                                            ; $6d98: $87
	xor e                                            ; $6d99: $ab
	add a                                            ; $6d9a: $87
	xor l                                            ; $6d9b: $ad
	add a                                            ; $6d9c: $87
	adc l                                            ; $6d9d: $8d
	rst JumpTable                                          ; $6d9e: $c7
	add l                                            ; $6d9f: $85
	rst JumpTable                                          ; $6da0: $c7
	ld a, d                                          ; $6da1: $7a
	call z, $e053                                    ; $6da2: $cc $53 $e0
	db $fd                                           ; $6da5: $fd
	ld l, d                                          ; $6da6: $6a
	ld a, [$03f8]                                    ; $6da7: $fa $f8 $03
	ldh a, [$03]                                     ; $6daa: $f0 $03
	ldh a, [$1f]                                     ; $6dac: $f0 $1f
	ldh a, [$9e]                                     ; $6dae: $f0 $9e
	ld h, b                                          ; $6db0: $60
	inc bc                                           ; $6db1: $03
	ret nc                                           ; $6db2: $d0

	ld c, a                                          ; $6db3: $4f
	ldh a, [$7b]                                     ; $6db4: $f0 $7b
	ld d, c                                          ; $6db6: $51
	ld c, a                                          ; $6db7: $4f
	ldh [$0b], a                                     ; $6db8: $e0 $0b
	ldh a, [$9e]                                     ; $6dba: $f0 $9e
	ld [$f04b], sp                                   ; $6dbc: $08 $4b $f0
	sbc e                                            ; $6dbf: $9b
	rlca                                             ; $6dc0: $07
	rst $38                                          ; $6dc1: $ff
	inc bc                                           ; $6dc2: $03
	inc bc                                           ; $6dc3: $03
	ld d, a                                          ; $6dc4: $57
	ldh a, [$97]                                     ; $6dc5: $f0 $97
	ei                                               ; $6dc7: $fb
	reti                                             ; $6dc8: $d9


	rst $38                                          ; $6dc9: $ff
	reti                                             ; $6dca: $d9


	rst $38                                          ; $6dcb: $ff
	ld a, a                                          ; $6dcc: $7f
	rra                                              ; $6dcd: $1f
	rst $38                                          ; $6dce: $ff
	db $dd                                           ; $6dcf: $dd
	ld c, $96                                        ; $6dd0: $0e $96
	ld a, a                                          ; $6dd2: $7f
	ld e, $ff                                        ; $6dd3: $1e $ff
	rra                                              ; $6dd5: $1f
	ld hl, sp+$78                                    ; $6dd6: $f8 $78
	ld a, a                                          ; $6dd8: $7f
	ldh a, [$e0]                                     ; $6dd9: $f0 $e0
	ld l, e                                          ; $6ddb: $6b
	ldh [c], a                                       ; $6ddc: $e2
	sbc h                                            ; $6ddd: $9c
	ldh [rP1], a                                     ; $6dde: $e0 $00
	ld hl, sp+$5b                                    ; $6de0: $f8 $5b
	add d                                            ; $6de2: $82
	rst SubAFromDE                                          ; $6de3: $df
	ld bc, $07dd                                     ; $6de4: $01 $dd $07
	sub h                                            ; $6de7: $94
	call $cd87                                       ; $6de8: $cd $87 $cd
	add a                                            ; $6deb: $87
	ld b, l                                          ; $6dec: $45
	adc a                                            ; $6ded: $8f
	ld d, l                                          ; $6dee: $55
	adc a                                            ; $6def: $8f
	ld c, c                                          ; $6df0: $49
	adc a                                            ; $6df1: $8f
	ret                                              ; $6df2: $c9


	sbc $ff                                          ; $6df3: $de $ff
	ld a, l                                          ; $6df5: $7d
	add a                                            ; $6df6: $87
	ld h, a                                          ; $6df7: $67
	ldh [$7c], a                                     ; $6df8: $e0 $7c
	xor b                                            ; $6dfa: $a8
	ld [hl], a                                       ; $6dfb: $77

jr_047_6dfc:
	jp nc, $9f7d                                     ; $6dfc: $d2 $7d $9f

	ld e, c                                          ; $6dff: $59

jr_047_6e00:
	nop                                              ; $6e00: $00
	sub l                                            ; $6e01: $95
	ld d, l                                          ; $6e02: $55
	inc sp                                           ; $6e03: $33
	ld d, l                                          ; $6e04: $55
	dec [hl]                                         ; $6e05: $35
	ld d, l                                          ; $6e06: $55
	ld b, h                                          ; $6e07: $44
	ld h, [hl]                                       ; $6e08: $66
	ld h, [hl]                                       ; $6e09: $66
	ld h, e                                          ; $6e0a: $63
	ld h, [hl]                                       ; $6e0b: $66
	sbc $55                                          ; $6e0c: $de $55
	ld a, a                                          ; $6e0e: $7f
	db $f4                                           ; $6e0f: $f4
	ld a, a                                          ; $6e10: $7f
	or $9b                                           ; $6e11: $f6 $9b
	ld h, e                                          ; $6e13: $63
	inc sp                                           ; $6e14: $33
	ld [hl], $33                                     ; $6e15: $36 $33
	db $dd                                           ; $6e17: $dd
	ld d, l                                          ; $6e18: $55
	call c, $9d44                                    ; $6e19: $dc $44 $9d
	inc sp                                           ; $6e1c: $33
	ld b, l                                          ; $6e1d: $45
	call c, $9e55                                    ; $6e1e: $dc $55 $9e
	ld d, e                                          ; $6e21: $53
	sbc $33                                          ; $6e22: $de $33
	sbc [hl]                                         ; $6e24: $9e
	ld d, h                                          ; $6e25: $54
	call c, $dd55                                    ; $6e26: $dc $55 $dd
	inc sp                                           ; $6e29: $33
	sbc l                                            ; $6e2a: $9d
	ld d, a                                          ; $6e2b: $57
	ld [hl], l                                       ; $6e2c: $75
	ld [hl], a                                       ; $6e2d: $77
	db $ed                                           ; $6e2e: $ed
	rst SubAFromDE                                          ; $6e2f: $df
	ld [hl], $7f                                     ; $6e30: $36 $7f
	sub $9e                                          ; $6e32: $d6 $9e
	ld [hl], a                                       ; $6e34: $77
	ld a, e                                          ; $6e35: $7b
	or $7f                                           ; $6e36: $f6 $7f
	db $e4                                           ; $6e38: $e4
	sbc d                                            ; $6e39: $9a
	ld [hl], $66                                     ; $6e3a: $36 $66
	ld d, e                                          ; $6e3c: $53
	inc sp                                           ; $6e3d: $33
	ld [hl], a                                       ; $6e3e: $77
	ld [hl], e                                       ; $6e3f: $73
	db $e4                                           ; $6e40: $e4
	sbc [hl]                                         ; $6e41: $9e
	ld [hl], $7b                                     ; $6e42: $36 $7b
	ldh a, [c]                                       ; $6e44: $f2
	sbc $55                                          ; $6e45: $de $55
	sbc c                                            ; $6e47: $99
	ld d, a                                          ; $6e48: $57
	inc sp                                           ; $6e49: $33
	inc sp                                           ; $6e4a: $33
	scf                                              ; $6e4b: $37
	inc sp                                           ; $6e4c: $33
	ld d, e                                          ; $6e4d: $53
	ld l, e                                          ; $6e4e: $6b
	ret nc                                           ; $6e4f: $d0

	ld a, e                                          ; $6e50: $7b
	or $da                                           ; $6e51: $f6 $da
	ld b, h                                          ; $6e53: $44
	sbc h                                            ; $6e54: $9c
	ld b, a                                          ; $6e55: $47
	ld b, h                                          ; $6e56: $44
	ld d, h                                          ; $6e57: $54
	ldh a, [c]                                       ; $6e58: $f2
	ld a, [bc]                                       ; $6e59: $0a
	adc a                                            ; $6e5a: $8f
	ld b, $04                                        ; $6e5b: $06 $04
	nop                                              ; $6e5d: $00
	ld c, h                                          ; $6e5e: $4c
	inc c                                            ; $6e5f: $0c
	ld a, $8c                                        ; $6e60: $3e $8c
	ld e, [hl]                                       ; $6e62: $5e
	rlca                                             ; $6e63: $07
	ld [$0101], sp                                   ; $6e64: $08 $01 $01
	inc b                                            ; $6e67: $04
	ld bc, $0304                                     ; $6e68: $01 $04 $03
	cp a                                             ; $6e6b: $bf
	nop                                              ; $6e6c: $00
	ld bc, $029e                                     ; $6e6d: $01 $9e $02
	ld [hl], a                                       ; $6e70: $77
	ld sp, hl                                        ; $6e71: $f9
	adc b                                            ; $6e72: $88
	ld b, b                                          ; $6e73: $40
	rra                                              ; $6e74: $1f
	add b                                            ; $6e75: $80

Jump_047_6e76:
	ret nz                                           ; $6e76: $c0

	ldh [$60], a                                     ; $6e77: $e0 $60
	sub b                                            ; $6e79: $90
	jr nz, jr_047_6dfc                               ; $6e7a: $20 $80

	ret nc                                           ; $6e7c: $d0

	nop                                              ; $6e7d: $00
	jr nz, jr_047_6e00                               ; $6e7e: $20 $80

	ld de, $aa44                                     ; $6e80: $11 $44 $aa
	ld de, $2fd0                                     ; $6e83: $11 $d0 $2f
	ld [$b765], sp                                   ; $6e86: $08 $65 $b7
	ld c, b                                          ; $6e89: $48
	db $fd                                           ; $6e8a: $fd
	sub d                                            ; $6e8b: $92
	add c                                            ; $6e8c: $81
	nop                                              ; $6e8d: $00
	inc bc                                           ; $6e8e: $03
	ld bc, $0300                                     ; $6e8f: $01 $00 $03

Call_047_6e92:
	ld a, e                                          ; $6e92: $7b
	add h                                            ; $6e93: $84
	nop                                              ; $6e94: $00
	and c                                            ; $6e95: $a1
	ld bc, $8003                                     ; $6e96: $01 $03 $80
	cp a                                             ; $6e99: $bf
	ccf                                              ; $6e9a: $3f
	sbc a                                            ; $6e9b: $9f
	add b                                            ; $6e9c: $80
	ld a, a                                          ; $6e9d: $7f
	add c                                            ; $6e9e: $81
	add b                                            ; $6e9f: $80
	ld a, a                                          ; $6ea0: $7f
	nop                                              ; $6ea1: $00
	ccf                                              ; $6ea2: $3f
	rst $38                                          ; $6ea3: $ff
	ret nz                                           ; $6ea4: $c0

	rst $38                                          ; $6ea5: $ff
	rla                                              ; $6ea6: $17
	ret nz                                           ; $6ea7: $c0

	ld h, e                                          ; $6ea8: $63
	rra                                              ; $6ea9: $1f
	db $fd                                           ; $6eaa: $fd
	inc bc                                           ; $6eab: $03
	or $f9                                           ; $6eac: $f6 $f9
	pop hl                                           ; $6eae: $e1
	ld e, $fa                                        ; $6eaf: $1e $fa
	rlca                                             ; $6eb1: $07
	pop hl                                           ; $6eb2: $e1
	rst $38                                          ; $6eb3: $ff
	ld c, $ff                                        ; $6eb4: $0e $ff
	pop af                                           ; $6eb6: $f1
	rrca                                             ; $6eb7: $0f
	rst AddAOntoHL                                          ; $6eb8: $ef
	ldh a, [$c0]                                     ; $6eb9: $f0 $c0
	rst $38                                          ; $6ebb: $ff
	sub c                                            ; $6ebc: $91
	or b                                             ; $6ebd: $b0
	ldh [rSTAT], a                                   ; $6ebe: $e0 $41
	xor $a3                                          ; $6ec0: $ee $a3
	ldh a, [$60]                                     ; $6ec2: $f0 $60
	rst FarCall                                          ; $6ec4: $f7
	ldh [c], a                                       ; $6ec5: $e2
	pop af                                           ; $6ec6: $f1
	ld h, c                                          ; $6ec7: $61
	xor $ff                                          ; $6ec8: $ee $ff
	nop                                              ; $6eca: $00
	cp h                                             ; $6ecb: $bc
	rst $38                                          ; $6ecc: $ff
	nop                                              ; $6ecd: $00
	ld c, c                                          ; $6ece: $49
	ld c, d                                          ; $6ecf: $4a
	ld a, d                                          ; $6ed0: $7a
	sub e                                            ; $6ed1: $93
	db $10                                           ; $6ed2: $10

jr_047_6ed3:
	ld c, d                                          ; $6ed3: $4a
	db $10                                           ; $6ed4: $10
	ld c, c                                          ; $6ed5: $49
	nop                                              ; $6ed6: $00
	rst $38                                          ; $6ed7: $ff
	ld bc, $00fe                                     ; $6ed8: $01 $fe $00
	nop                                              ; $6edb: $00
	ld [de], a                                       ; $6edc: $12
	adc h                                            ; $6edd: $8c
	cp [hl]                                          ; $6ede: $be
	ld d, d                                          ; $6edf: $52
	ld c, h                                          ; $6ee0: $4c
	ld d, d                                          ; $6ee1: $52
	ld a, a                                          ; $6ee2: $7f
	ld hl, sp-$72                                    ; $6ee3: $f8 $8e
	xor l                                            ; $6ee5: $ad
	ld d, b                                          ; $6ee6: $50
	ld e, [hl]                                       ; $6ee7: $5e
	and b                                            ; $6ee8: $a0
	inc b                                            ; $6ee9: $04
	nop                                              ; $6eea: $00
	inc d                                            ; $6eeb: $14
	ldh [rAUDVOL], a                                 ; $6eec: $e0 $24
	ld b, b                                          ; $6eee: $40
	inc h                                            ; $6eef: $24
	ld b, b                                          ; $6ef0: $40
	dec h                                            ; $6ef1: $25
	ld b, b                                          ; $6ef2: $40
	jr nz, jr_047_6f3c                               ; $6ef3: $20 $47

	ld d, l                                          ; $6ef5: $55
	cp [hl]                                          ; $6ef6: $be
	xor d                                            ; $6ef7: $aa
	nop                                              ; $6ef8: $00
	ld c, b                                          ; $6ef9: $48
	sub l                                            ; $6efa: $95
	ld [hl-], a                                      ; $6efb: $32
	ld d, d                                          ; $6efc: $52
	ld hl, $58a1                                     ; $6efd: $21 $a1 $58
	ld e, c                                          ; $6f00: $59
	sbc h                                            ; $6f01: $9c
	jr nc, jr_047_6ed3                               ; $6f02: $30 $cf

	ld d, a                                          ; $6f04: $57
	cp a                                             ; $6f05: $bf
	xor e                                            ; $6f06: $ab
	db $10                                           ; $6f07: $10
	sub e                                            ; $6f08: $93
	inc b                                            ; $6f09: $04
	inc [hl]                                         ; $6f0a: $34
	ld c, $34                                        ; $6f0b: $0e $34
	ld c, $38                                        ; $6f0d: $0e $38
	adc a                                            ; $6f0f: $8f
	jr z, @-$60                                      ; $6f10: $28 $9e

	inc [hl]                                         ; $6f12: $34
	ld a, [de]                                       ; $6f13: $1a
	rst $38                                          ; $6f14: $ff
	cp [hl]                                          ; $6f15: $be
	rst $38                                          ; $6f16: $ff
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	ld a, e                                          ; $6f19: $7b
	call nz, $d2bf                                   ; $6f1a: $c4 $bf $d2
	ld d, d                                          ; $6f1d: $52
	sub l                                            ; $6f1e: $95
	ld [bc], a                                       ; $6f1f: $02
	ld c, h                                          ; $6f20: $4c
	ei                                               ; $6f21: $fb
	inc b                                            ; $6f22: $04
	ei                                               ; $6f23: $fb
	inc b                                            ; $6f24: $04
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	inc b                                            ; $6f27: $04
	sub e                                            ; $6f28: $93
	cp [hl]                                          ; $6f29: $be
	sub h                                            ; $6f2a: $94
	sub e                                            ; $6f2b: $93

jr_047_6f2c:
	sub h                                            ; $6f2c: $94
	add b                                            ; $6f2d: $80
	sub h                                            ; $6f2e: $94
	ld h, e                                          ; $6f2f: $63
	db $fd                                           ; $6f30: $fd
	ld [bc], a                                       ; $6f31: $02
	ld hl, sp+$04                                    ; $6f32: $f8 $04
	inc bc                                           ; $6f34: $03
	ld [$3f82], sp                                   ; $6f35: $08 $82 $3f
	ld bc, $00a3                                     ; $6f38: $01 $a3 $00
	dec sp                                           ; $6f3b: $3b

jr_047_6f3c:
	ld bc, $c0a3                                     ; $6f3c: $01 $a3 $c0
	ccf                                              ; $6f3f: $3f
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	ldh [$1f], a                                     ; $6f42: $e0 $1f
	ccf                                              ; $6f44: $3f
	rst $38                                          ; $6f45: $ff
	and b                                            ; $6f46: $a0
	ret nz                                           ; $6f47: $c0

	adc a                                            ; $6f48: $8f
	ld a, a                                          ; $6f49: $7f
	jr c, jr_047_6f2c                                ; $6f4a: $38 $e0

jr_047_6f4c:
	ret nz                                           ; $6f4c: $c0

	add b                                            ; $6f4d: $80
	add b                                            ; $6f4e: $80
	adc a                                            ; $6f4f: $8f
	add b                                            ; $6f50: $80
	ld [bc], a                                       ; $6f51: $02
	ld bc, $e01d                                     ; $6f52: $01 $1d $e0
	jp $24fc                                         ; $6f55: $c3 $fc $24


	dec bc                                           ; $6f58: $0b
	adc d                                            ; $6f59: $8a
	push af                                          ; $6f5a: $f5
	inc b                                            ; $6f5b: $04
	dec de                                           ; $6f5c: $1b
	ld a, [hl-]                                      ; $6f5d: $3a
	push bc                                          ; $6f5e: $c5
	ld hl, sp+$3f                                    ; $6f5f: $f8 $3f
	ld e, a                                          ; $6f61: $5f
	rst $38                                          ; $6f62: $ff
	sbc a                                            ; $6f63: $9f
	rst $38                                          ; $6f64: $ff
	sbc l                                            ; $6f65: $9d
	ld a, a                                          ; $6f66: $7f
	cp d                                             ; $6f67: $ba
	ld a, a                                          ; $6f68: $7f
	ld [hl], h                                       ; $6f69: $74
	rst $38                                          ; $6f6a: $ff
	ld l, c                                          ; $6f6b: $69
	cp $80                                           ; $6f6c: $fe $80
	db $f4                                           ; $6f6e: $f4
	rst $38                                          ; $6f6f: $ff
	jp hl                                            ; $6f70: $e9


	cp $c5                                           ; $6f71: $fe $c5
	ldh a, [hDisp1_BGP]                                     ; $6f73: $f0 $92
	add sp, $24                                      ; $6f75: $e8 $24
	db $d3                                           ; $6f77: $d3
	ld c, b                                          ; $6f78: $48
	and a                                            ; $6f79: $a7
	and h                                            ; $6f7a: $a4
	ld d, c                                          ; $6f7b: $51
	ld d, c                                          ; $6f7c: $51
	xor a                                            ; $6f7d: $af
	xor [hl]                                         ; $6f7e: $ae
	ld d, a                                          ; $6f7f: $57
	ld e, h                                          ; $6f80: $5c
	cp e                                             ; $6f81: $bb
	inc d                                            ; $6f82: $14
	ld b, e                                          ; $6f83: $43
	jr z, jr_047_6f4c                                ; $6f84: $28 $c6

	dec b                                            ; $6f86: $05
	ld hl, sp-$78                                    ; $6f87: $f8 $88
	ld h, a                                          ; $6f89: $67
	adc b                                            ; $6f8a: $88
	ld [hl], b                                       ; $6f8b: $70
	ld b, b                                          ; $6f8c: $40
	ld a, [hl]                                       ; $6f8d: $7e
	ldh [$7a], a                                     ; $6f8e: $e0 $7a
	and $9c                                          ; $6f90: $e6 $9c
	inc b                                            ; $6f92: $04
	ld a, [bc]                                       ; $6f93: $0a
	dec bc                                           ; $6f94: $0b
	sbc $07                                          ; $6f95: $de $07
	sbc d                                            ; $6f97: $9a
	dec c                                            ; $6f98: $0d
	rrca                                             ; $6f99: $0f
	inc c                                            ; $6f9a: $0c
	ld bc, $bc04                                     ; $6f9b: $01 $04 $bc
	ld [$b108], sp                                   ; $6f9e: $08 $08 $b1
	jp c, $8fcd                                      ; $6fa1: $da $cd $8f

	add b                                            ; $6fa4: $80
	call c, $9183                                    ; $6fa5: $dc $83 $91
	add e                                            ; $6fa8: $83
	add hl, de                                       ; $6fa9: $19
	add e                                            ; $6faa: $83
	add hl, bc                                       ; $6fab: $09
	inc bc                                           ; $6fac: $03
	ld bc, $0803                                     ; $6fad: $01 $03 $08
	ld [hl], b                                       ; $6fb0: $70
	ret c                                            ; $6fb1: $d8

	jr nz, jr_047_7004                               ; $6fb2: $20 $50

	cp [hl]                                          ; $6fb4: $be
	cp h                                             ; $6fb5: $bc
	ld e, e                                          ; $6fb6: $5b
	or l                                             ; $6fb7: $b5
	sbc d                                            ; $6fb8: $9a
	ld a, [bc]                                       ; $6fb9: $0a
	ld b, b                                          ; $6fba: $40
	rrca                                             ; $6fbb: $0f
	db $fc                                           ; $6fbc: $fc
	inc bc                                           ; $6fbd: $03
	ld a, e                                          ; $6fbe: $7b
	db $ed                                           ; $6fbf: $ed
	sbc c                                            ; $6fc0: $99
	inc bc                                           ; $6fc1: $03
	halt                                             ; $6fc2: $76
	inc bc                                           ; $6fc3: $03
	adc c                                            ; $6fc4: $89
	ld [bc], a                                       ; $6fc5: $02
	ld [bc], a                                       ; $6fc6: $02
	db $dd                                           ; $6fc7: $dd
	ld bc, $038a                                     ; $6fc8: $01 $8a $03
	db $fd                                           ; $6fcb: $fd
	inc bc                                           ; $6fcc: $03
	ld [$c580], a                                    ; $6fcd: $ea $80 $c5
	ret nz                                           ; $6fd0: $c0

	and b                                            ; $6fd1: $a0
	ld bc, $c317                                     ; $6fd2: $01 $17 $c3
	ld h, d                                          ; $6fd5: $62
	sbc c                                            ; $6fd6: $99
	sub l                                            ; $6fd7: $95
	ldh [$a1], a                                     ; $6fd8: $e0 $a1
	adc $47                                          ; $6fda: $ce $47
	call nz, $ffc3                                   ; $6fdc: $c4 $c3 $ff
	ld a, e                                          ; $6fdf: $7b
	add h                                            ; $6fe0: $84
	adc e                                            ; $6fe1: $8b
	sbc a                                            ; $6fe2: $9f
	xor l                                            ; $6fe3: $ad
	db $db                                           ; $6fe4: $db
	push de                                          ; $6fe5: $d5
	db $eb                                           ; $6fe6: $eb
	ret nc                                           ; $6fe7: $d0

	rst AddAOntoHL                                          ; $6fe8: $ef
	ld l, h                                          ; $6fe9: $6c
	di                                               ; $6fea: $f3
	and h                                            ; $6feb: $a4
	ld a, e                                          ; $6fec: $7b
	and a                                            ; $6fed: $a7
	ldh a, [$b3]                                     ; $6fee: $f0 $b3
	rst AddAOntoHL                                          ; $6ff0: $ef
	ld l, d                                          ; $6ff1: $6a
	ldh [$f7], a                                     ; $6ff2: $e0 $f7
	ldh [$6f], a                                     ; $6ff4: $e0 $6f
	ld a, e                                          ; $6ff6: $7b
	db $fc                                           ; $6ff7: $fc
	sbc e                                            ; $6ff8: $9b
	xor $e1                                          ; $6ff9: $ee $e1
	di                                               ; $6ffb: $f3
	rst SubAFromBC                                          ; $6ffc: $e7
	ld a, e                                          ; $6ffd: $7b
	db $10                                           ; $6ffe: $10
	sub d                                            ; $6fff: $92
	rst $38                                          ; $7000: $ff
	xor d                                            ; $7001: $aa
	nop                                              ; $7002: $00
	push de                                          ; $7003: $d5

jr_047_7004:
	inc bc                                           ; $7004: $03
	rst AddAOntoHL                                          ; $7005: $ef
	rra                                              ; $7006: $1f
	cp [hl]                                          ; $7007: $be
	ld a, a                                          ; $7008: $7f
	ei                                               ; $7009: $fb
	db $fc                                           ; $700a: $fc
	rst GetHLinHL                                          ; $700b: $cf
	ldh a, [rPCM34]                                  ; $700c: $f0 $77
	ldh a, [$80]                                     ; $700e: $f0 $80
	ld a, a                                          ; $7010: $7f
	rst $38                                          ; $7011: $ff
	ld sp, hl                                        ; $7012: $f9
	cp $df                                           ; $7013: $fe $df
	ldh [$79], a                                     ; $7015: $e0 $79

jr_047_7017:
	add a                                            ; $7017: $87
	rst GetHLinHL                                          ; $7018: $cf
	jr c, jr_047_7017                                ; $7019: $38 $fc

	jp $02fd                                         ; $701b: $c3 $fd $02


	ei                                               ; $701e: $fb
	rst $38                                          ; $701f: $ff
	ei                                               ; $7020: $fb
	di                                               ; $7021: $f3
	ei                                               ; $7022: $fb
	inc bc                                           ; $7023: $03
	add [hl]                                         ; $7024: $86
	ld a, e                                          ; $7025: $7b
	rst $38                                          ; $7026: $ff
	add b                                            ; $7027: $80
	add h                                            ; $7028: $84
	ld a, e                                          ; $7029: $7b
	ld a, [hl+]                                      ; $702a: $2a
	add b                                            ; $702b: $80
	ld d, l                                          ; $702c: $55
	xor d                                            ; $702d: $aa
	rst $38                                          ; $702e: $ff
	sbc d                                            ; $702f: $9a
	rst $38                                          ; $7030: $ff
	ld a, [hl+]                                      ; $7031: $2a
	push de                                          ; $7032: $d5
	sub l                                            ; $7033: $95
	ld [$d97b], a                                    ; $7034: $ea $7b $d9
	ld a, d                                          ; $7037: $7a
	add [hl]                                         ; $7038: $86
	ld a, a                                          ; $7039: $7f
	add $8f                                          ; $703a: $c6 $8f
	or [hl]                                          ; $703c: $b6
	ld e, c                                          ; $703d: $59
	rst SubAFromDE                                          ; $703e: $df
	rst $38                                          ; $703f: $ff
	rst $38                                          ; $7040: $ff
	rst AddAOntoHL                                          ; $7041: $ef
	rst $38                                          ; $7042: $ff
	ldh [rSTAT], a                                   ; $7043: $e0 $41
	cp $ff                                           ; $7045: $fe $ff
	ld bc, $fe05                                     ; $7047: $01 $05 $fe
	cp [hl]                                          ; $704a: $be
	ccf                                              ; $704b: $3f
	ld [hl], a                                       ; $704c: $77
	ret nz                                           ; $704d: $c0

	ld a, a                                          ; $704e: $7f
	push af                                          ; $704f: $f5
	ld a, [hl]                                       ; $7050: $7e
	ld a, $97                                        ; $7051: $3e $97
	ei                                               ; $7053: $fb
	rlca                                             ; $7054: $07
	sbc [hl]                                         ; $7055: $9e
	pop hl                                           ; $7056: $e1
	di                                               ; $7057: $f3
	inc e                                            ; $7058: $1c
	ccf                                              ; $7059: $3f
	jp $a06f                                         ; $705a: $c3 $6f $a0


	ld a, a                                          ; $705d: $7f
	ld [hl], h                                       ; $705e: $74
	add b                                            ; $705f: $80
	or $f8                                           ; $7060: $f6 $f8
	ld a, c                                          ; $7062: $79
	cp $de                                           ; $7063: $fe $de
	ccf                                              ; $7065: $3f
	di                                               ; $7066: $f3
	rrca                                             ; $7067: $0f
	push af                                          ; $7068: $f5
	rrca                                             ; $7069: $0f
	ei                                               ; $706a: $fb
	rst $38                                          ; $706b: $ff
	xor b                                            ; $706c: $a8
	add hl, de                                       ; $706d: $19
	ld b, b                                          ; $706e: $40
	inc sp                                           ; $706f: $33
	adc c                                            ; $7070: $89
	ld h, $53                                        ; $7071: $26 $53
	inc b                                            ; $7073: $04
	xor e                                            ; $7074: $ab
	nop                                              ; $7075: $00
	dec d                                            ; $7076: $15
	ret nz                                           ; $7077: $c0

	db $ec                                           ; $7078: $ec
	rst SubAFromHL                                          ; $7079: $d7
	or a                                             ; $707a: $b7
	ld a, [$f430]                                    ; $707b: $fa $30 $f4
	cp b                                             ; $707e: $b8
	add b                                            ; $707f: $80
	ld hl, sp+$78                                    ; $7080: $f8 $78
	call c, $ea80                                    ; $7082: $dc $80 $ea
	ld h, b                                          ; $7085: $60
	push bc                                          ; $7086: $c5
	ld d, b                                          ; $7087: $50
	xor e                                            ; $7088: $ab
	inc d                                            ; $7089: $14
	ld l, a                                          ; $708a: $6f
	ld l, [hl]                                       ; $708b: $6e
	rra                                              ; $708c: $1f
	sub [hl]                                         ; $708d: $96
	ld a, a                                          ; $708e: $7f
	ld l, e                                          ; $708f: $6b
	ccf                                              ; $7090: $3f
	dec d                                            ; $7091: $15
	cpl                                              ; $7092: $2f
	ld a, [de]                                       ; $7093: $1a
	rrca                                             ; $7094: $0f
	dec e                                            ; $7095: $1d
	inc hl                                           ; $7096: $23
	ld l, $83                                        ; $7097: $2e $83
	push de                                          ; $7099: $d5
	ld a, [$f6ea]                                    ; $709a: $fa $ea $f6
	sbc $f7                                          ; $709d: $de $f7
	add h                                            ; $709f: $84
	db $e3                                           ; $70a0: $e3
	rst $38                                          ; $70a1: $ff
	pop de                                           ; $70a2: $d1
	rst $38                                          ; $70a3: $ff
	ld [$cdf1], a                                    ; $70a4: $ea $f1 $cd
	ldh a, [$dc]                                     ; $70a7: $f0 $dc
	ldh [$30], a                                     ; $70a9: $e0 $30
	ei                                               ; $70ab: $fb
	and c                                            ; $70ac: $a1
	ld a, e                                          ; $70ad: $7b
	and e                                            ; $70ae: $a3
	ld a, [hl-]                                      ; $70af: $3a
	ld bc, $022a                                     ; $70b0: $01 $2a $02
	and h                                            ; $70b3: $a4
	nop                                              ; $70b4: $00
	or h                                             ; $70b5: $b4
	call nc, $a028                                   ; $70b6: $d4 $28 $a0
	ld b, h                                          ; $70b9: $44
	and b                                            ; $70ba: $a0
	cp a                                             ; $70bb: $bf
	ldh a, [rAUD3LEVEL]                              ; $70bc: $f0 $1c
	sub a                                            ; $70be: $97
	ld e, b                                          ; $70bf: $58
	ccf                                              ; $70c0: $3f
	ld c, $17                                        ; $70c1: $0e $17
	rlca                                             ; $70c3: $07
	nop                                              ; $70c4: $00
	ld [$be0c], sp                                   ; $70c5: $08 $0c $be
	ld b, $d0                                        ; $70c8: $06 $d0
	ldh a, [$97]                                     ; $70ca: $f0 $97
	ret nz                                           ; $70cc: $c0

	ld hl, sp-$10                                    ; $70cd: $f8 $f0
	db $fc                                           ; $70cf: $fc
	ld hl, sp-$01                                    ; $70d0: $f8 $ff
	db $fc                                           ; $70d2: $fc
	db $fd                                           ; $70d3: $fd
	call c, Call_047_7efe                            ; $70d4: $dc $fe $7e
	db $ec                                           ; $70d7: $ec
	ld a, [hl]                                       ; $70d8: $7e
	or [hl]                                          ; $70d9: $b6
	sbc [hl]                                         ; $70da: $9e
	jr nc, @-$43                                     ; $70db: $30 $bb

	ret nz                                           ; $70dd: $c0

	add b                                            ; $70de: $80
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	jp nz, $ff91                                     ; $70e2: $c2 $91 $ff

	push bc                                          ; $70e5: $c5
	pop af                                           ; $70e6: $f1
	ld e, d                                          ; $70e7: $5a
	ldh [$8d], a                                     ; $70e8: $e0 $8d
	ldh a, [c]                                       ; $70ea: $f2
	ld e, d                                          ; $70eb: $5a
	rst SubAFromBC                                          ; $70ec: $e7
	adc b                                            ; $70ed: $88
	rst FarCall                                          ; $70ee: $f7
	ld d, l                                          ; $70ef: $55
	xor $ca                                          ; $70f0: $ee $ca
	ld a, c                                          ; $70f2: $79
	jp nc, $d17d                                     ; $70f3: $d2 $7d $d1

	add b                                            ; $70f6: $80
	xor d                                            ; $70f7: $aa
	call nz, Call_047_4854                           ; $70f8: $c4 $54 $48
	cp b                                             ; $70fb: $b8
	jr nc, jr_047_710e                               ; $70fc: $30 $10

	ld c, b                                          ; $70fe: $48

Jump_047_70ff:
	nop                                              ; $70ff: $00
	add l                                            ; $7100: $85
	add b                                            ; $7101: $80
	ld a, a                                          ; $7102: $7f
	add b                                            ; $7103: $80
	inc bc                                           ; $7104: $03
	sub b                                            ; $7105: $90
	ld b, $81                                        ; $7106: $06 $81
	nop                                              ; $7108: $00
	add a                                            ; $7109: $87
	add hl, bc                                       ; $710a: $09
	add e                                            ; $710b: $83
	rlca                                             ; $710c: $07
	add d                                            ; $710d: $82

jr_047_710e:
	dec bc                                           ; $710e: $0b
	xor h                                            ; $710f: $ac
	rla                                              ; $7110: $17
	sub [hl]                                         ; $7111: $96
	inc bc                                           ; $7112: $03
	ld c, d                                          ; $7113: $4a
	cp l                                             ; $7114: $bd
	and [hl]                                         ; $7115: $a6
	add b                                            ; $7116: $80
	ld e, l                                          ; $7117: $5d
	ld a, d                                          ; $7118: $7a
	push hl                                          ; $7119: $e5
	and [hl]                                         ; $711a: $a6
	ret                                              ; $711b: $c9


	sub $09                                          ; $711c: $d6 $09
	ld a, [hl+]                                      ; $711e: $2a
	dec b                                            ; $711f: $05
	ld d, [hl]                                       ; $7120: $56
	and c                                            ; $7121: $a1
	ld c, d                                          ; $7122: $4a
	ld hl, $ef67                                     ; $7123: $21 $67 $ef
	ld a, [hl]                                       ; $7126: $7e
	rst $38                                          ; $7127: $ff
	ld a, l                                          ; $7128: $7d
	cp $7b                                           ; $7129: $fe $7b
	db $fc                                           ; $712b: $fc
	halt                                             ; $712c: $76
	ld sp, hl                                        ; $712d: $f9
	ld a, l                                          ; $712e: $7d
	di                                               ; $712f: $f3
	ld a, d                                          ; $7130: $7a
	rst SubAFromBC                                          ; $7131: $e7
	ld l, e                                          ; $7132: $6b
	rst FarCall                                          ; $7133: $f7
	cp a                                             ; $7134: $bf
	jp Jump_047_7796                                 ; $7135: $c3 $96 $77


	adc h                                            ; $7138: $8c
	sbc $31                                          ; $7139: $de $31
	ld a, b                                          ; $713b: $78
	add $75                                          ; $713c: $c6 $75
	adc b                                            ; $713e: $88
	ld [$d5bf], a                                    ; $713f: $ea $bf $d5
	rst $38                                          ; $7142: $ff
	sub a                                            ; $7143: $97
	rst $38                                          ; $7144: $ff
	pop hl                                           ; $7145: $e1
	inc e                                            ; $7146: $1c
	sbc d                                            ; $7147: $9a
	ld h, b                                          ; $7148: $60
	ld d, l                                          ; $7149: $55
	add b                                            ; $714a: $80
	xor d                                            ; $714b: $aa
	cp l                                             ; $714c: $bd
	ld d, b                                          ; $714d: $50
	and b                                            ; $714e: $a0
	rst $38                                          ; $714f: $ff
	rst $38                                          ; $7150: $ff
	sbc [hl]                                         ; $7151: $9e
	rst $38                                          ; $7152: $ff
	ld [hl], l                                       ; $7153: $75
	sub b                                            ; $7154: $90
	sbc [hl]                                         ; $7155: $9e
	ld b, b                                          ; $7156: $40
	cp h                                             ; $7157: $bc
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	ld a, e                                          ; $715d: $7b
	ldh a, [$df]                                     ; $715e: $f0 $df
	inc bc                                           ; $7160: $03
	sbc d                                            ; $7161: $9a
	inc b                                            ; $7162: $04
	ld b, $09                                        ; $7163: $06 $09
	ld [$be0a], sp                                   ; $7165: $08 $0a $be
	dec b                                            ; $7168: $05
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	sbc c                                            ; $716b: $99
	rst $38                                          ; $716c: $ff
	push de                                          ; $716d: $d5
	xor $7f                                          ; $716e: $ee $7f
	add b                                            ; $7170: $80
	cp d                                             ; $7171: $ba
	cp h                                             ; $7172: $bc
	ld d, l                                          ; $7173: $55
	xor d                                            ; $7174: $aa
	ld d, l                                          ; $7175: $55
	rst $38                                          ; $7176: $ff
	rst $38                                          ; $7177: $ff

jr_047_7178:
	sbc b                                            ; $7178: $98
	rst $38                                          ; $7179: $ff
	rst JumpTable                                          ; $717a: $c7
	jr c, jr_047_71d6                                ; $717b: $38 $59

	ld b, $aa                                        ; $717d: $06 $aa
	ld bc, $f05f                                     ; $717f: $01 $5f $f0
	sub h                                            ; $7182: $94
	db $fd                                           ; $7183: $fd
	jp $31ee                                         ; $7184: $c3 $ee $31


	ld a, e                                          ; $7187: $7b
	adc h                                            ; $7188: $8c
	ld a, [de]                                       ; $7189: $1a
	ld h, a                                          ; $718a: $67
	and h                                            ; $718b: $a4
	dec de                                           ; $718c: $1b
	ld e, a                                          ; $718d: $5f
	cp a                                             ; $718e: $bf
	rst $38                                          ; $718f: $ff
	nop                                              ; $7190: $00
	add b                                            ; $7191: $80
	rst $38                                          ; $7192: $ff
	set 4, b                                         ; $7193: $cb $e0
	ld h, l                                          ; $7195: $65
	ldh a, [$b3]                                     ; $7196: $f0 $b3
	ld a, b                                          ; $7198: $78
	reti                                             ; $7199: $d9


	inc a                                            ; $719a: $3c
	ld l, l                                          ; $719b: $6d
	sbc h                                            ; $719c: $9c
	cp l                                             ; $719d: $bd
	call z, $64dd                                    ; $719e: $cc $dd $64
	ld d, l                                          ; $71a1: $55
	db $ec                                           ; $71a2: $ec
	ld [hl+], a                                      ; $71a3: $22
	push bc                                          ; $71a4: $c5
	ld d, b                                          ; $71a5: $50
	adc e                                            ; $71a6: $8b
	cp $1f                                           ; $71a7: $fe $1f
	sbc e                                            ; $71a9: $9b
	ld a, a                                          ; $71aa: $7f
	ld h, l                                          ; $71ab: $65
	ld a, [hl-]                                      ; $71ac: $3a
	ld [$7f15], a                                    ; $71ad: $ea $15 $7f
	rlca                                             ; $71b0: $07
	add h                                            ; $71b1: $84
	or [hl]                                          ; $71b2: $b6
	ld a, a                                          ; $71b3: $7f
	ld d, l                                          ; $71b4: $55
	inc bc                                           ; $71b5: $03
	adc d                                            ; $71b6: $8a
	daa                                              ; $71b7: $27
	ld b, l                                          ; $71b8: $45
	ccf                                              ; $71b9: $3f
	ld a, [$7607]                                    ; $71ba: $fa $07 $76
	adc a                                            ; $71bd: $8f
	or d                                             ; $71be: $b2
	ld e, l                                          ; $71bf: $5d
	ld d, h                                          ; $71c0: $54
	cp a                                             ; $71c1: $bf
	adc $ff                                          ; $71c2: $ce $ff
	db $db                                           ; $71c4: $db
	ldh [$d8], a                                     ; $71c5: $e0 $d8

jr_047_71c7:
	ldh [$dc], a                                     ; $71c7: $e0 $dc
	ldh [$da], a                                     ; $71c9: $e0 $da
	ldh [$dd], a                                     ; $71cb: $e0 $dd
	ld l, a                                          ; $71cd: $6f
	db $fc                                           ; $71ce: $fc
	add b                                            ; $71cf: $80
	pop hl                                           ; $71d0: $e1
	ld h, b                                          ; $71d1: $60
	ld b, h                                          ; $71d2: $44
	ld h, h                                          ; $71d3: $64
	ret nc                                           ; $71d4: $d0

	inc b                                            ; $71d5: $04

jr_047_71d6:
	ld l, b                                          ; $71d6: $68
	add h                                            ; $71d7: $84

jr_047_71d8:
	jr c, jr_047_7178                                ; $71d8: $38 $9e

	jr z, jr_047_71d8                                ; $71da: $28 $fc

	adc [hl]                                         ; $71dc: $8e
	cp $dd                                           ; $71dd: $fe $dd
	cp l                                             ; $71df: $bd
	db $fc                                           ; $71e0: $fc
	nop                                              ; $71e1: $00
	ld [bc], a                                       ; $71e2: $02
	ld bc, $0600                                     ; $71e3: $01 $00 $06
	ld bc, $0719                                     ; $71e6: $01 $19 $07
	daa                                              ; $71e9: $27
	rra                                              ; $71ea: $1f
	ld c, a                                          ; $71eb: $4f
	ccf                                              ; $71ec: $3f
	cp a                                             ; $71ed: $bf
	ld a, a                                          ; $71ee: $7f
	ld a, [hl]                                       ; $71ef: $7e
	ld b, $8e                                        ; $71f0: $06 $8e
	ld e, [hl]                                       ; $71f2: $5e
	ld a, $16                                        ; $71f3: $3e $16
	ld c, $fe                                        ; $71f5: $0e $fe
	cp $42                                           ; $71f7: $fe $42
	ccf                                              ; $71f9: $3f
	ld b, d                                          ; $71fa: $42
	ld a, $86                                        ; $71fb: $3e $86
	ld a, [hl]                                       ; $71fd: $7e
	add [hl]                                         ; $71fe: $86
	ld a, [hl]                                       ; $71ff: $7e
	adc [hl]                                         ; $7200: $8e
	ld a, [hl]                                       ; $7201: $7e
	nop                                              ; $7202: $00
	cp c                                             ; $7203: $b9
	rlca                                             ; $7204: $07
	jr c, jr_047_71c7                                ; $7205: $38 $c0

	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	db $10                                           ; $720a: $10
	ld d, h                                          ; $720b: $54
	adc h                                            ; $720c: $8c
	rst AddAOntoHL                                          ; $720d: $ef
	adc $ff                                          ; $720e: $ce $ff
	ld d, a                                          ; $7210: $57
	rst AddAOntoHL                                          ; $7211: $ef
	jp z, Jump_047_57f7                              ; $7212: $ca $f7 $57

	rst AddAOntoHL                                          ; $7215: $ef
	set 6, a                                         ; $7216: $cb $f7
	ld d, l                                          ; $7218: $55
	db $eb                                           ; $7219: $eb
	ret z                                            ; $721a: $c8

	rst FarCall                                          ; $721b: $f7
	ld h, c                                          ; $721c: $61
	sbc [hl]                                         ; $721d: $9e
	and d                                            ; $721e: $a2
	inc e                                            ; $721f: $1c
	ld [hl], a                                       ; $7220: $77
	db $10                                           ; $7221: $10
	ld a, a                                          ; $7222: $7f
	db $fc                                           ; $7223: $fc
	sbc c                                            ; $7224: $99
	and d                                            ; $7225: $a2
	call c, $ff80                                    ; $7226: $dc $80 $ff
	jp nz, Jump_047_7af8                             ; $7229: $c2 $f8 $7a

	ret z                                            ; $722c: $c8

	add b                                            ; $722d: $80
	rrca                                             ; $722e: $0f
	inc bc                                           ; $722f: $03
	ld b, $85                                        ; $7230: $06 $85
	dec b                                            ; $7232: $05
	ld bc, $8108                                     ; $7233: $01 $08 $81
	inc bc                                           ; $7236: $03
	add d                                            ; $7237: $82
	ld [bc], a                                       ; $7238: $02
	sub c                                            ; $7239: $91
	nop                                              ; $723a: $00
	sub [hl]                                         ; $723b: $96
	ld b, c                                          ; $723c: $41
	call z, $9283                                    ; $723d: $cc $83 $92
	add l                                            ; $7240: $85
	call z, $b203                                    ; $7241: $cc $03 $b2
	push bc                                          ; $7244: $c5
	ld b, b                                          ; $7245: $40
	xor a                                            ; $7246: $af
	ldh a, [c]                                       ; $7247: $f2
	dec c                                            ; $7248: $0d
	ld b, h                                          ; $7249: $44
	cp e                                             ; $724a: $bb
	halt                                             ; $724b: $76
	rst AddAOntoHL                                          ; $724c: $ef
	sbc l                                            ; $724d: $9d
	ld l, [hl]                                       ; $724e: $6e
	rst FarCall                                          ; $724f: $f7
	ld d, a                                          ; $7250: $57
	db $fc                                           ; $7251: $fc
	add b                                            ; $7252: $80
	ld b, a                                          ; $7253: $47
	cp a                                             ; $7254: $bf
	ld [hl], c                                       ; $7255: $71
	adc [hl]                                         ; $7256: $8e
	ld e, h                                          ; $7257: $5c
	cp a                                             ; $7258: $bf
	ld b, e                                          ; $7259: $43
	cp a                                             ; $725a: $bf
	ld d, l                                          ; $725b: $55
	xor d                                            ; $725c: $aa
	ld c, d                                          ; $725d: $4a
	or l                                             ; $725e: $b5
	ld d, l                                          ; $725f: $55
	xor d                                            ; $7260: $aa
	ld d, d                                          ; $7261: $52
	xor l                                            ; $7262: $ad
	db $e3                                           ; $7263: $e3
	sbc a                                            ; $7264: $9f
	rst $38                                          ; $7265: $ff
	ld a, b                                          ; $7266: $78
	inc bc                                           ; $7267: $03
	rst $38                                          ; $7268: $ff
	adc a                                            ; $7269: $8f
	ldh a, [$ab]                                     ; $726a: $f0 $ab
	rst FarCall                                          ; $726c: $f7
	xor h                                            ; $726d: $ac
	di                                               ; $726e: $f3
	xor [hl]                                         ; $726f: $ae
	pop af                                           ; $7270: $f1
	xor l                                            ; $7271: $ad
	adc e                                            ; $7272: $8b
	ldh a, [c]                                       ; $7273: $f2
	rst $38                                          ; $7274: $ff
	rst $38                                          ; $7275: $ff
	cp a                                             ; $7276: $bf
	ld a, a                                          ; $7277: $7f
	rst FarCall                                          ; $7278: $f7
	adc a                                            ; $7279: $8f
	cp l                                             ; $727a: $bd
	ld a, e                                          ; $727b: $7b
	dec a                                            ; $727c: $3d
	set 7, l                                         ; $727d: $cb $fd
	db $eb                                           ; $727f: $eb
	cp l                                             ; $7280: $bd
	ld l, e                                          ; $7281: $6b
	ld a, l                                          ; $7282: $7d
	xor e                                            ; $7283: $ab
	nop                                              ; $7284: $00
	rst $38                                          ; $7285: $ff
	db $fc                                           ; $7286: $fc
	ld a, c                                          ; $7287: $79
	and b                                            ; $7288: $a0
	sbc [hl]                                         ; $7289: $9e
	db $fd                                           ; $728a: $fd
	ld a, e                                          ; $728b: $7b
	db $fc                                           ; $728c: $fc
	ld a, a                                          ; $728d: $7f
	ld hl, sp+$7e                                    ; $728e: $f8 $7e
	dec e                                            ; $7290: $1d
	sbc b                                            ; $7291: $98
	db $fc                                           ; $7292: $fc
	cp $00                                           ; $7293: $fe $00
	rst $38                                          ; $7295: $ff
	ccf                                              ; $7296: $3f
	rst $38                                          ; $7297: $ff
	cp a                                             ; $7298: $bf
	ld a, c                                          ; $7299: $79
	ld c, [hl]                                       ; $729a: $4e
	ld a, a                                          ; $729b: $7f
	db $fc                                           ; $729c: $fc
	sbc h                                            ; $729d: $9c
	ld a, l                                          ; $729e: $7d
	rst $38                                          ; $729f: $ff
	ld a, $7b                                        ; $72a0: $3e $7b
	db $fc                                           ; $72a2: $fc
	call c, $dfff                                    ; $72a3: $dc $ff $df
	db $fc                                           ; $72a6: $fc
	adc d                                            ; $72a7: $8a
	di                                               ; $72a8: $f3
	ldh a, [c]                                       ; $72a9: $f2
	rst GetHLinHL                                          ; $72aa: $cf
	call z, $caff                                    ; $72ab: $cc $ff $ca
	rst $38                                          ; $72ae: $ff
	call z, $f3ff                                    ; $72af: $cc $ff $f3
	rst GetHLinHL                                          ; $72b2: $cf
	rst GetHLinHL                                          ; $72b3: $cf
	ccf                                              ; $72b4: $3f
	inc sp                                           ; $72b5: $33
	rst $38                                          ; $72b6: $ff
	rst SubAFromHL                                          ; $72b7: $d7
	db $eb                                           ; $72b8: $eb
	xor e                                            ; $72b9: $ab
	rst FarCall                                          ; $72ba: $f7
	rst JumpTable                                          ; $72bb: $c7
	ei                                               ; $72bc: $fb
	ld [hl], a                                       ; $72bd: $77
	db $fc                                           ; $72be: $fc
	sbc l                                            ; $72bf: $9d
	sbc a                                            ; $72c0: $9f
	db $ec                                           ; $72c1: $ec
	ld [hl], a                                       ; $72c2: $77
	cp $9b                                           ; $72c3: $fe $9b
	sbc l                                            ; $72c5: $9d
	xor $9e                                          ; $72c6: $ee $9e
	db $ed                                           ; $72c8: $ed
	ld l, a                                          ; $72c9: $6f
	db $fc                                           ; $72ca: $fc
	sub [hl]                                         ; $72cb: $96
	call $ba7a                                       ; $72cc: $cd $7a $ba
	ld c, b                                          ; $72cf: $48
	sub l                                            ; $72d0: $95
	ld l, d                                          ; $72d1: $6a
	cp b                                             ; $72d2: $b8
	ld b, b                                          ; $72d3: $40
	db $f4                                           ; $72d4: $f4
	cp l                                             ; $72d5: $bd
	add sp, -$0c                                     ; $72d6: $e8 $f4
	add sp, $75                                      ; $72d8: $e8 $75
	adc d                                            ; $72da: $8a
	dec sp                                           ; $72db: $3b
	cp d                                             ; $72dc: $ba
	dec b                                            ; $72dd: $05
	ld e, l                                          ; $72de: $5d
	ld [bc], a                                       ; $72df: $02
	ld a, [hl+]                                      ; $72e0: $2a
	dec b                                            ; $72e1: $05
	inc d                                            ; $72e2: $14
	inc bc                                           ; $72e3: $03
	ld a, [hl+]                                      ; $72e4: $2a
	ld bc, $0116                                     ; $72e5: $01 $16 $01
	ld a, [hl+]                                      ; $72e8: $2a
	ld bc, $e3df                                     ; $72e9: $01 $df $e3
	jp c, $dde6                                      ; $72ec: $da $e6 $dd

	ldh [c], a                                       ; $72ef: $e2
	halt                                             ; $72f0: $76
	call nz, $ca89                                   ; $72f1: $c4 $89 $ca
	ldh a, [$d5]                                     ; $72f4: $f0 $d5
	add sp, -$36                                     ; $72f6: $e8 $ca
	ldh a, [$75]                                     ; $72f8: $f0 $75
	and h                                            ; $72fa: $a4
	ld [hl], c                                       ; $72fb: $71
	jr nz, jr_047_736f                               ; $72fc: $20 $71

	nop                                              ; $72fe: $00

jr_047_72ff:
	ld a, c                                          ; $72ff: $79
	db $10                                           ; $7300: $10
	db $dd                                           ; $7301: $dd
	jr jr_047_7341                                   ; $7302: $18 $3d

	jr jr_047_7325                                   ; $7304: $18 $1f

	ld [$0809], sp                                   ; $7306: $08 $09 $08
	call c, Call_047_77ff                            ; $7309: $dc $ff $77
	ld [hl], e                                       ; $730c: $73
	add a                                            ; $730d: $87
	ld hl, sp-$02                                    ; $730e: $f8 $fe
	ld hl, sp-$04                                    ; $7310: $f8 $fc
	ldh a, [$fc]                                     ; $7312: $f0 $fc
	ldh a, [$0e]                                     ; $7314: $f0 $0e
	cp $0e                                           ; $7316: $fe $0e
	rst $38                                          ; $7318: $ff
	rrca                                             ; $7319: $0f
	db $fc                                           ; $731a: $fc
	ld [bc], a                                       ; $731b: $02
	db $fc                                           ; $731c: $fc
	ld a, [$dafc]                                    ; $731d: $fa $fc $da
	inc a                                            ; $7320: $3c
	jp c, $9e3c                                      ; $7321: $da $3c $9e

	ld a, b                                          ; $7324: $78

jr_047_7325:
	db $10                                           ; $7325: $10
	cp a                                             ; $7326: $bf
	rst $38                                          ; $7327: $ff
	nop                                              ; $7328: $00
	rst SubAFromDE                                          ; $7329: $df
	db $10                                           ; $732a: $10
	ld a, l                                          ; $732b: $7d
	and d                                            ; $732c: $a2
	sub h                                            ; $732d: $94
	jr nc, @+$35                                     ; $732e: $30 $33

	inc sp                                           ; $7330: $33
	ld [hl], l                                       ; $7331: $75
	ld [hl], $7a                                     ; $7332: $36 $7a
	inc a                                            ; $7334: $3c
	ld b, d                                          ; $7335: $42
	rst $38                                          ; $7336: $ff
	add $ff                                          ; $7337: $c6 $ff
	ld [hl], a                                       ; $7339: $77
	db $fc                                           ; $733a: $fc
	ld a, a                                          ; $733b: $7f
	cp $84                                           ; $733c: $fe $84
	and $ff                                          ; $733e: $e6 $ff
	db $dd                                           ; $7340: $dd

jr_047_7341:
	cp $d7                                           ; $7341: $fe $d7
	rst GetHLinHL                                          ; $7343: $cf
	sbc a                                            ; $7344: $9f
	ld h, b                                          ; $7345: $60
	rst AddAOntoHL                                          ; $7346: $ef
	jr nc, @-$0f                                     ; $7347: $30 $ef

	jr nc, @+$81                                     ; $7349: $30 $7f

	or b                                             ; $734b: $b0
	ld l, a                                          ; $734c: $6f
	or b                                             ; $734d: $b0
	jr nc, @+$01                                     ; $734e: $30 $ff

	cp a                                             ; $7350: $bf
	ld [hl], b                                       ; $7351: $70
	ld a, a                                          ; $7352: $7f
	ldh a, [hDisp0_SCX]                                     ; $7353: $f0 $84
	jr c, jr_047_72ff                                ; $7355: $38 $a8

	db $10                                           ; $7357: $10
	adc b                                            ; $7358: $88
	cp l                                             ; $7359: $bd
	add b                                            ; $735a: $80
	add b                                            ; $735b: $80
	or b                                             ; $735c: $b0
	ld e, b                                          ; $735d: $58
	sub a                                            ; $735e: $97
	cp b                                             ; $735f: $b8
	cp h                                             ; $7360: $bc
	ld a, h                                          ; $7361: $7c
	ld [$7415], a                                    ; $7362: $ea $15 $74
	dec bc                                           ; $7365: $0b
	xor d                                            ; $7366: $aa
	ld a, e                                          ; $7367: $7b
	db $fc                                           ; $7368: $fc
	ld a, a                                          ; $7369: $7f
	ld l, d                                          ; $736a: $6a
	ld [hl], a                                       ; $736b: $77
	db $fc                                           ; $736c: $fc
	sbc l                                            ; $736d: $9d
	ld a, h                                          ; $736e: $7c

jr_047_736f:
	inc bc                                           ; $736f: $03
	ld b, [hl]                                       ; $7370: $46
	ret nz                                           ; $7371: $c0

	halt                                             ; $7372: $76
	call z, $fc77                                    ; $7373: $cc $77 $fc
	sbc e                                            ; $7376: $9b
	ld d, c                                          ; $7377: $51
	xor [hl]                                         ; $7378: $ae
	ld d, b                                          ; $7379: $50
	xor a                                            ; $737a: $af
	ld [hl], a                                       ; $737b: $77
	db $fc                                           ; $737c: $fc
	halt                                             ; $737d: $76
	call z, $fc57                                    ; $737e: $cc $57 $fc
	halt                                             ; $7381: $76
	call z, $fc57                                    ; $7382: $cc $57 $fc
	halt                                             ; $7385: $76
	call z, $fc57                                    ; $7386: $cc $57 $fc
	sbc [hl]                                         ; $7389: $9e
	ld a, [hl-]                                      ; $738a: $3a
	ld a, d                                          ; $738b: $7a
	call z, $fc57                                    ; $738c: $cc $57 $fc
	halt                                             ; $738f: $76
	call z, $fc57                                    ; $7390: $cc $57 $fc
	ld h, [hl]                                       ; $7393: $66
	ret z                                            ; $7394: $c8

	ld [hl], a                                       ; $7395: $77
	db $fc                                           ; $7396: $fc

jr_047_7397:
	sbc e                                            ; $7397: $9b
	and e                                            ; $7398: $a3
	rst $38                                          ; $7399: $ff
	jp Jump_047_66ff                                 ; $739a: $c3 $ff $66


	ret z                                            ; $739d: $c8

	ld h, a                                          ; $739e: $67
	db $fc                                           ; $739f: $fc
	ld l, [hl]                                       ; $73a0: $6e
	ret z                                            ; $73a1: $c8

	sbc [hl]                                         ; $73a2: $9e
	ldh [c], a                                       ; $73a3: $e2
	cp h                                             ; $73a4: $bc
	db $f4                                           ; $73a5: $f4
	add sp, -$0c                                     ; $73a6: $e8 $f4
	add sp, $06                                      ; $73a8: $e8 $06
	sbc h                                            ; $73aa: $9c
	ld bc, $010a                                     ; $73ab: $01 $0a $01
	ld [hl], a                                       ; $73ae: $77
	db $fc                                           ; $73af: $fc
	sub a                                            ; $73b0: $97
	db $10                                           ; $73b1: $10
	inc bc                                           ; $73b2: $03
	jr z, jr_047_73b8                                ; $73b3: $28 $03

	ld [de], a                                       ; $73b5: $12
	inc bc                                           ; $73b6: $03
	and c                                            ; $73b7: $a1

jr_047_73b8:
	rrca                                             ; $73b8: $0f
	halt                                             ; $73b9: $76
	call z, $fc77                                    ; $73ba: $cc $77 $fc
	sub [hl]                                         ; $73bd: $96
	call nc, $cce8                                   ; $73be: $d4 $e8 $cc
	ldh a, [c]                                       ; $73c1: $f2
	ret nc                                           ; $73c2: $d0

	add sp, -$38                                     ; $73c3: $e8 $c8
	ldh a, [rSB]                                     ; $73c5: $f0 $01
	cp a                                             ; $73c7: $bf
	dec b                                            ; $73c8: $05
	ld bc, $0480                                     ; $73c9: $01 $80 $04
	ld bc, $0504                                     ; $73cc: $01 $04 $05
	inc b                                            ; $73cf: $04
	rst $38                                          ; $73d0: $ff
	inc b                                            ; $73d1: $04
	dec b                                            ; $73d2: $05
	adc a                                            ; $73d3: $8f
	sbc h                                            ; $73d4: $9c
	adc h                                            ; $73d5: $8c
	push af                                          ; $73d6: $f5
	ld [$fdea], a                                    ; $73d7: $ea $ea $fd
	jp hl                                            ; $73da: $e9


	cp $eb                                           ; $73db: $fe $eb
	db $fc                                           ; $73dd: $fc
	ret nz                                           ; $73de: $c0

	ld sp, hl                                        ; $73df: $f9
	xor c                                            ; $73e0: $a9
	rst JumpTable                                          ; $73e1: $c7
	rrca                                             ; $73e2: $0f
	scf                                              ; $73e3: $37

jr_047_73e4:
	rst FarCall                                          ; $73e4: $f7
	rst FarCall                                          ; $73e5: $f7
	ld d, d                                          ; $73e6: $52
	cp l                                             ; $73e7: $bd
	sub e                                            ; $73e8: $93
	ld a, l                                          ; $73e9: $7d
	sbc b                                            ; $73ea: $98
	ld [hl], a                                       ; $73eb: $77
	cp l                                             ; $73ec: $bd
	daa                                              ; $73ed: $27
	ei                                               ; $73ee: $fb
	daa                                              ; $73ef: $27
	ei                                               ; $73f0: $fb
	rst SubAFromBC                                          ; $73f1: $e7
	ld a, d                                          ; $73f2: $7a
	sbc $83                                          ; $73f3: $de $83
	ei                                               ; $73f5: $fb
	cp a                                             ; $73f6: $bf
	db $db                                           ; $73f7: $db
	inc a                                            ; $73f8: $3c
	db $10                                           ; $73f9: $10
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	ld [hl], b                                       ; $73fc: $70
	ld [hl], b                                       ; $73fd: $70
	ld d, b                                          ; $73fe: $50
	ld a, b                                          ; $73ff: $78
	ret nc                                           ; $7400: $d0

	or b                                             ; $7401: $b0
	ret nc                                           ; $7402: $d0

	cp b                                             ; $7403: $b8
	sub b                                            ; $7404: $90
	jr nc, jr_047_7397                               ; $7405: $30 $90

	xor $c3                                          ; $7407: $ee $c3
	db $db                                           ; $7409: $db
	add $eb                                          ; $740a: $c6 $eb
	add $db                                          ; $740c: $c6 $db
	add $c2                                          ; $740e: $c6 $c2
	rst $38                                          ; $7410: $ff
	ld l, a                                          ; $7411: $6f
	ld hl, sp-$80                                    ; $7412: $f8 $80
	and $f9                                          ; $7414: $e6 $f9
	cp b                                             ; $7416: $b8
	ld a, a                                          ; $7417: $7f
	and [hl]                                         ; $7418: $a6
	ld a, a                                          ; $7419: $7f
	cp c                                             ; $741a: $b9
	ld h, a                                          ; $741b: $67
	jr nz, @+$01                                     ; $741c: $20 $ff

	cp h                                             ; $741e: $bc
	ld h, e                                          ; $741f: $63
	cp h                                             ; $7420: $bc
	ld h, e                                          ; $7421: $63
	cp b                                             ; $7422: $b8
	ld h, a                                          ; $7423: $67
	ld [hl], d                                       ; $7424: $72
	jr z, jr_047_744c                                ; $7425: $28 $25

	jr nc, jr_047_73e4                               ; $7427: $30 $bb

	db $10                                           ; $7429: $10
	ld c, a                                          ; $742a: $4f
	adc c                                            ; $742b: $89
	ld h, b                                          ; $742c: $60
	ret nz                                           ; $742d: $c0

	ld [hl], a                                       ; $742e: $77
	rst SubAFromBC                                          ; $742f: $e7
	add e                                            ; $7430: $83
	ld a, a                                          ; $7431: $7f
	ld a, c                                          ; $7432: $79
	adc [hl]                                         ; $7433: $8e
	rst FarCall                                          ; $7434: $f7
	ld [$d405], a                                    ; $7435: $ea $05 $d4
	ld c, e                                          ; $7438: $4b
	ld a, [$d4c5]                                    ; $7439: $fa $c5 $d4
	db $eb                                           ; $743c: $eb
	xor d                                            ; $743d: $aa
	dec b                                            ; $743e: $05
	ld [hl], h                                       ; $743f: $74
	adc e                                            ; $7440: $8b
	jp c, $b4a5                                      ; $7441: $da $a5 $b4

	bit 0, [hl]                                      ; $7444: $cb $46
	ret nz                                           ; $7446: $c0

	ld a, [hl]                                       ; $7447: $7e
	adc $67                                          ; $7448: $ce $67
	cp $97                                           ; $744a: $fe $97

jr_047_744c:
	ld d, a                                          ; $744c: $57
	xor a                                            ; $744d: $af
	ld c, a                                          ; $744e: $4f
	or b                                             ; $744f: $b0
	ld d, e                                          ; $7450: $53
	xor h                                            ; $7451: $ac
	xor h                                            ; $7452: $ac
	di                                               ; $7453: $f3
	ld h, a                                          ; $7454: $67
	cp $97                                           ; $7455: $fe $97
	rst AddAOntoHL                                          ; $7457: $ef
	ld [hl], c                                       ; $7458: $71
	xor e                                            ; $7459: $ab
	ld [hl], h                                       ; $745a: $74
	ret z                                            ; $745b: $c8

	ld [hl], a                                       ; $745c: $77
	dec a                                            ; $745d: $3d
	db $eb                                           ; $745e: $eb
	ld h, a                                          ; $745f: $67
	cp $99                                           ; $7460: $fe $99
	db $ed                                           ; $7462: $ed
	db $db                                           ; $7463: $db
	db $fd                                           ; $7464: $fd
	dec bc                                           ; $7465: $0b
	db $fd                                           ; $7466: $fd
	dec bc                                           ; $7467: $0b
	ld l, [hl]                                       ; $7468: $6e
	ret z                                            ; $7469: $c8

	ld a, l                                          ; $746a: $7d
	add b                                            ; $746b: $80
	ld a, a                                          ; $746c: $7f
	db $fc                                           ; $746d: $fc
	sbc d                                            ; $746e: $9a
	db $ed                                           ; $746f: $ed
	rst $38                                          ; $7470: $ff
	ld d, [hl]                                       ; $7471: $56
	rst $38                                          ; $7472: $ff
	xor l                                            ; $7473: $ad
	ld l, c                                          ; $7474: $69
	add h                                            ; $7475: $84
	ld a, a                                          ; $7476: $7f
	db $fc                                           ; $7477: $fc

Call_047_7478:
	rst SubAFromDE                                          ; $7478: $df
	rst $38                                          ; $7479: $ff
	sbc d                                            ; $747a: $9a
	ld e, a                                          ; $747b: $5f
	rst $38                                          ; $747c: $ff
	xor d                                            ; $747d: $aa
	rst $38                                          ; $747e: $ff
	ld d, l                                          ; $747f: $55

jr_047_7480:
	ld h, d                                          ; $7480: $62
	ret z                                            ; $7481: $c8

	sbc [hl]                                         ; $7482: $9e
	ret z                                            ; $7483: $c8

	ld a, e                                          ; $7484: $7b
	cp $7c                                           ; $7485: $fe $7c
	sub $7f                                          ; $7487: $d6 $7f
	or $76                                           ; $7489: $f6 $76
	call z, $fc7f                                    ; $748b: $cc $7f $fc
	sbc [hl]                                         ; $748e: $9e
	add e                                            ; $748f: $83
	ld a, e                                          ; $7490: $7b
	cp $99                                           ; $7491: $fe $99
	ei                                               ; $7493: $fb
	rst $38                                          ; $7494: $ff
	db $db                                           ; $7495: $db
	rst AddAOntoHL                                          ; $7496: $ef

jr_047_7497:
	sbc e                                            ; $7497: $9b
	rst AddAOntoHL                                          ; $7498: $ef
	ld b, [hl]                                       ; $7499: $46
	ret nz                                           ; $749a: $c0

	add b                                            ; $749b: $80
	push af                                          ; $749c: $f5
	ld [bc], a                                       ; $749d: $02
	di                                               ; $749e: $f3
	rst GetHLinHL                                          ; $749f: $cf
	rst SubAFromBC                                          ; $74a0: $e7
	ld a, a                                          ; $74a1: $7f
	ld sp, hl                                        ; $74a2: $f9
	inc a                                            ; $74a3: $3c
	ld h, b                                          ; $74a4: $60
	jp hl                                            ; $74a5: $e9


	pop bc                                           ; $74a6: $c1
	ret nz                                           ; $74a7: $c0

	ld [hl+], a                                      ; $74a8: $22
	pop af                                           ; $74a9: $f1
	ld d, h                                          ; $74aa: $54
	or e                                             ; $74ab: $b3
	ld c, d                                          ; $74ac: $4a
	ccf                                              ; $74ad: $3f
	inc d                                            ; $74ae: $14
	cp e                                             ; $74af: $bb
	or h                                             ; $74b0: $b4
	db $e3                                           ; $74b1: $e3
	ld e, d                                          ; $74b2: $5a
	push af                                          ; $74b3: $f5
	sub [hl]                                         ; $74b4: $96

jr_047_74b5:
	ld h, c                                          ; $74b5: $61
	ld l, $c5                                        ; $74b6: $2e $c5
	ld d, [hl]                                       ; $74b8: $56
	add c                                            ; $74b9: $81
	adc d                                            ; $74ba: $8a
	add b                                            ; $74bb: $80
	ld hl, $e8d4                                     ; $74bc: $21 $d4 $e8
	ret z                                            ; $74bf: $c8

	di                                               ; $74c0: $f3
	push de                                          ; $74c1: $d5
	db $eb                                           ; $74c2: $eb
	ret nz                                           ; $74c3: $c0

	db $fc                                           ; $74c4: $fc
	ret nc                                           ; $74c5: $d0

	ldh [c], a                                       ; $74c6: $e2
	add $f8                                          ; $74c7: $c6 $f8
	ret c                                            ; $74c9: $d8

	db $ec                                           ; $74ca: $ec
	call z, $e1f6                                    ; $74cb: $cc $f6 $e1
	sub e                                            ; $74ce: $93
	add b                                            ; $74cf: $80
	jp z, $b288                                      ; $74d0: $ca $88 $b2

	jr nz, jr_047_7497                               ; $74d3: $20 $c2

	ld [$1092], sp                                   ; $74d5: $08 $92 $10
	xor d                                            ; $74d8: $aa
	jr nz, jr_047_74b5                               ; $74d9: $20 $da

	sbc l                                            ; $74db: $9d
	jr jr_047_7480                                   ; $74dc: $18 $a2

	pop de                                           ; $74de: $d1
	rst FarCall                                          ; $74df: $f7
	adc [hl]                                         ; $74e0: $8e
	cp $f7                                           ; $74e1: $fe $f7
	cp $f2                                           ; $74e3: $fe $f2
	cp $62                                           ; $74e5: $fe $62
	cp $72                                           ; $74e7: $fe $72
	or $0a                                           ; $74e9: $f6 $0a
	sbc [hl]                                         ; $74eb: $9e
	ld a, [bc]                                       ; $74ec: $0a
	adc [hl]                                         ; $74ed: $8e
	ld [de], a                                       ; $74ee: $12
	xor a                                            ; $74ef: $af
	ld [de], a                                       ; $74f0: $12
	jr c, jr_047_756c                                ; $74f1: $38 $79

	add l                                            ; $74f3: $85
	ld [hl], a                                       ; $74f4: $77
	db $fc                                           ; $74f5: $fc
	sbc [hl]                                         ; $74f6: $9e
	ld a, [hl-]                                      ; $74f7: $3a
	ld [hl], e                                       ; $74f8: $73
	db $fc                                           ; $74f9: $fc
	sbc l                                            ; $74fa: $9d
	ldh a, [rAUD1SWEEP]                              ; $74fb: $f0 $10
	halt                                             ; $74fd: $76
	call z, $fc7f                                    ; $74fe: $cc $7f $fc
	ld a, [hl]                                       ; $7501: $7e
	jp nz, $fb9e                                     ; $7502: $c2 $9e $fb

	ld a, e                                          ; $7505: $7b
	ld hl, sp+$7f                                    ; $7506: $f8 $7f
	db $fc                                           ; $7508: $fc
	sbc c                                            ; $7509: $99
	ld a, e                                          ; $750a: $7b
	add $ba                                          ; $750b: $c6 $ba
	ld h, l                                          ; $750d: $65
	cp e                                             ; $750e: $bb
	ld h, l                                          ; $750f: $65
	halt                                             ; $7510: $76
	jp nz, $fc7f                                     ; $7511: $c2 $7f $fc

	sbc [hl]                                         ; $7514: $9e
	cp l                                             ; $7515: $bd
	ld a, d                                          ; $7516: $7a
	ret nz                                           ; $7517: $c0

	add b                                            ; $7518: $80
	cp [hl]                                          ; $7519: $be
	ld h, c                                          ; $751a: $61
	sbc $cb                                          ; $751b: $de $cb
	ccf                                              ; $751d: $3f
	call c, $d237                                    ; $751e: $dc $37 $d2
	rst $38                                          ; $7521: $ff
	cp h                                             ; $7522: $bc
	ldh [rLCDC], a                                   ; $7523: $e0 $40
	ldh [$80], a                                     ; $7525: $e0 $80
	ret nz                                           ; $7527: $c0

	add b                                            ; $7528: $80
	and c                                            ; $7529: $a1
	add b                                            ; $752a: $80
	ld a, [hl+]                                      ; $752b: $2a
	add l                                            ; $752c: $85
	call nc, $a80b                                   ; $752d: $d4 $0b $a8
	rlca                                             ; $7530: $07
	ld e, b                                          ; $7531: $58
	rlca                                             ; $7532: $07
	xor b                                            ; $7533: $a8
	rlca                                             ; $7534: $07
	db $10                                           ; $7535: $10
	rrca                                             ; $7536: $0f
	xor d                                            ; $7537: $aa
	sbc h                                            ; $7538: $9c
	dec e                                            ; $7539: $1d
	ld e, [hl]                                       ; $753a: $5e
	cp c                                             ; $753b: $b9
	ld b, [hl]                                       ; $753c: $46
	ret nz                                           ; $753d: $c0

	sbc c                                            ; $753e: $99
	ld e, a                                          ; $753f: $5f
	cp a                                             ; $7540: $bf
	ld [hl], l                                       ; $7541: $75
	adc d                                            ; $7542: $8a
	ld l, d                                          ; $7543: $6a
	sub l                                            ; $7544: $95
	ld e, a                                          ; $7545: $5f
	db $fc                                           ; $7546: $fc
	sbc c                                            ; $7547: $99
	adc e                                            ; $7548: $8b
	rst FarCall                                          ; $7549: $f7
	ld c, c                                          ; $754a: $49
	or $ca                                           ; $754b: $f6 $ca
	ld [hl], l                                       ; $754d: $75
	ld e, a                                          ; $754e: $5f
	db $fc                                           ; $754f: $fc
	sbc l                                            ; $7550: $9d
	db $fd                                           ; $7551: $fd
	bit 6, l                                         ; $7552: $cb $75
	adc b                                            ; $7554: $88
	sub l                                            ; $7555: $95
	ld a, a                                          ; $7556: $7f
	xor l                                            ; $7557: $ad
	cp e                                             ; $7558: $bb
	ld l, c                                          ; $7559: $69
	ld a, e                                          ; $755a: $7b
	xor c                                            ; $755b: $a9
	cp e                                             ; $755c: $bb
	ld l, l                                          ; $755d: $6d
	ld a, l                                          ; $755e: $7d
	xor a                                            ; $755f: $af
	halt                                             ; $7560: $76
	call z, Call_047_549b                            ; $7561: $cc $9b $54
	rst $38                                          ; $7564: $ff
	add h                                            ; $7565: $84
	rst $38                                          ; $7566: $ff
	ld a, d                                          ; $7567: $7a
	ld bc, $fe7b                                     ; $7568: $01 $7b $fe
	sbc l                                            ; $756b: $9d

jr_047_756c:
	inc d                                            ; $756c: $14
	rst AddAOntoHL                                          ; $756d: $ef
	halt                                             ; $756e: $76
	call z, $fc7f                                    ; $756f: $cc $7f $fc
	adc h                                            ; $7572: $8c
	dec b                                            ; $7573: $05
	rst $38                                          ; $7574: $ff
	ld [bc], a                                       ; $7575: $02
	rst $38                                          ; $7576: $ff
	nop                                              ; $7577: $00
	rst $38                                          ; $7578: $ff
	add b                                            ; $7579: $80
	ld a, a                                          ; $757a: $7f
	ld d, h                                          ; $757b: $54
	xor e                                            ; $757c: $ab
	call z, $daff                                    ; $757d: $cc $ff $da
	rst $38                                          ; $7580: $ff
	call c, $daef                                    ; $7581: $dc $ef $da
	rst AddAOntoHL                                          ; $7584: $ef
	call c, $b66a                                    ; $7585: $dc $6a $b6
	ld a, [hl]                                       ; $7588: $7e
	adc $4f                                          ; $7589: $ce $4f
	cp $46                                           ; $758b: $fe $46
	ret nz                                           ; $758d: $c0

	add b                                            ; $758e: $80
	ld a, c                                          ; $758f: $79
	xor [hl]                                         ; $7590: $ae
	ld a, b                                          ; $7591: $78
	adc h                                            ; $7592: $8c
	inc a                                            ; $7593: $3c
	call z, $ac4c                                    ; $7594: $cc $4c $ac
	ld b, $d7                                        ; $7597: $06 $d7
	ld b, e                                          ; $7599: $43
	xor a                                            ; $759a: $af
	ld l, d                                          ; $759b: $6a
	sub a                                            ; $759c: $97
	ld [hl], b                                       ; $759d: $70
	adc c                                            ; $759e: $89
	ld b, $71                                        ; $759f: $06 $71
	ld a, [bc]                                       ; $75a1: $0a
	ld sp, $0106                                     ; $75a2: $31 $06 $01
	xor d                                            ; $75a5: $aa
	ld hl, $01d6                                     ; $75a6: $21 $d6 $01
	ld l, d                                          ; $75a9: $6a
	add c                                            ; $75aa: $81
	sub [hl]                                         ; $75ab: $96
	jp hl                                            ; $75ac: $e9


	ld a, [hl+]                                      ; $75ad: $2a
	sbc d                                            ; $75ae: $9a
	ld a, l                                          ; $75af: $7d
	jp nc, $c8ea                                     ; $75b0: $d2 $ea $c8

	ldh a, [$75]                                     ; $75b3: $f0 $75
	adc b                                            ; $75b5: $88
	sbc d                                            ; $75b6: $9a
	ret c                                            ; $75b7: $d8

	ldh [$e0], a                                     ; $75b8: $e0 $e0
	ldh a, [$f0]                                     ; $75ba: $f0 $f0
	sbc $e0                                          ; $75bc: $de $e0
	adc l                                            ; $75be: $8d
	jr c, @-$3c                                      ; $75bf: $38 $c2

	jr c, @-$2c                                      ; $75c1: $38 $d2

	jr @-$1c                                         ; $75c3: $18 $e2

	ld l, b                                          ; $75c5: $68
	or d                                             ; $75c6: $b2
	add hl, hl                                       ; $75c7: $29
	sbc d                                            ; $75c8: $9a
	db $10                                           ; $75c9: $10
	adc e                                            ; $75ca: $8b
	ld [$0083], sp                                   ; $75cb: $08 $83 $00
	add e                                            ; $75ce: $83
	rst $38                                          ; $75cf: $ff

jr_047_75d0:
	rst FarCall                                          ; $75d0: $f7
	ld h, a                                          ; $75d1: $67
	cp $9e                                           ; $75d2: $fe $9e
	ld [$08be], sp                                   ; $75d4: $08 $be $08
	ld [$96ee], sp                                   ; $75d7: $08 $ee $96
	ld [hl+], a                                      ; $75da: $22
	ld [hl], a                                       ; $75db: $77
	and d                                            ; $75dc: $a2
	adc $62                                          ; $75dd: $ce $62
	ld b, [hl]                                       ; $75df: $46
	ei                                               ; $75e0: $fb
	ld b, $82                                        ; $75e1: $06 $82
	ld a, e                                          ; $75e3: $7b
	cp $91                                           ; $75e4: $fe $91
	ld [bc], a                                       ; $75e6: $02
	ld b, $02                                        ; $75e7: $06 $02
	cp d                                             ; $75e9: $ba
	db $10                                           ; $75ea: $10
	ld [hl], l                                       ; $75eb: $75
	db $10                                           ; $75ec: $10
	cp d                                             ; $75ed: $ba
	db $10                                           ; $75ee: $10
	jr nc, jr_047_75d0                               ; $75ef: $30 $df

	ccf                                              ; $75f1: $3f
	db $10                                           ; $75f2: $10
	rst $38                                          ; $75f3: $ff
	ld [hl], e                                       ; $75f4: $73
	cp $7e                                           ; $75f5: $fe $7e
	adc $4f                                          ; $75f7: $ce $4f
	cp $7e                                           ; $75f9: $fe $7e
	adc $9d                                          ; $75fb: $ce $9d
	cp a                                             ; $75fd: $bf

Call_047_75fe:
	ld h, b                                          ; $75fe: $60
	ld [hl], a                                       ; $75ff: $77
	cp $7f                                           ; $7600: $fe $7f
	ld hl, sp+$7b                                    ; $7602: $f8 $7b
	cp $9b                                           ; $7604: $fe $9b
	ld h, e                                          ; $7606: $63
	cp l                                             ; $7607: $bd
	ld h, [hl]                                       ; $7608: $66
	ret nz                                           ; $7609: $c0

	cp l                                             ; $760a: $bd
	and c                                            ; $760b: $a1
	ld b, b                                          ; $760c: $40
	and c                                            ; $760d: $a1
	ld b, a                                          ; $760e: $47
	adc b                                            ; $760f: $88
	inc bc                                           ; $7610: $03
	ld l, $c6                                        ; $7611: $2e $c6
	xor $fd                                          ; $7613: $ee $fd
	sub e                                            ; $7615: $93
	ld a, [hl]                                       ; $7616: $7e
	cp [hl]                                          ; $7617: $be
	ld [hl], c                                       ; $7618: $71
	ld e, h                                          ; $7619: $5c
	and e                                            ; $761a: $a3
	ld a, [$fa47]                                    ; $761b: $fa $47 $fa
	and l                                            ; $761e: $a5
	cp d                                             ; $761f: $ba
	adc l                                            ; $7620: $8d
	ld e, [hl]                                       ; $7621: $5e
	add c                                            ; $7622: $81
	xor l                                            ; $7623: $ad
	ld b, d                                          ; $7624: $42
	ld d, [hl]                                       ; $7625: $56
	add c                                            ; $7626: $81
	ld b, [hl]                                       ; $7627: $46
	ret nz                                           ; $7628: $c0

	sub d                                            ; $7629: $92
	ld e, d                                          ; $762a: $5a
	and l                                            ; $762b: $a5
	ld d, h                                          ; $762c: $54
	xor e                                            ; $762d: $ab
	ld e, d                                          ; $762e: $5a
	and l                                            ; $762f: $a5
	ld d, b                                          ; $7630: $50
	xor a                                            ; $7631: $af

jr_047_7632:
	ld e, b                                          ; $7632: $58
	and a                                            ; $7633: $a7
	ld d, b                                          ; $7634: $50
	xor a                                            ; $7635: $af
	ld [hl], b                                       ; $7636: $70
	ld a, e                                          ; $7637: $7b
	cp $99                                           ; $7638: $fe $99
	jp c, Jump_047_4865                              ; $763a: $da $65 $48

	rst FarCall                                          ; $763d: $f7
	ld e, b                                          ; $763e: $58
	rst SubAFromBC                                          ; $763f: $e7
	ld h, a                                          ; $7640: $67
	db $fc                                           ; $7641: $fc
	ld a, l                                          ; $7642: $7d
	ld l, [hl]                                       ; $7643: $6e
	ld a, [hl]                                       ; $7644: $7e
	call z, $867d                                    ; $7645: $cc $7d $86
	sbc c                                            ; $7648: $99
	dec sp                                           ; $7649: $3b
	db $ed                                           ; $764a: $ed
	dec l                                            ; $764b: $2d
	ei                                               ; $764c: $fb
	dec hl                                           ; $764d: $2b
	db $fd                                           ; $764e: $fd
	ld a, e                                          ; $764f: $7b
	db $fc                                           ; $7650: $fc
	sub h                                            ; $7651: $94
	db $dd                                           ; $7652: $dd
	db $ed                                           ; $7653: $ed
	dec de                                           ; $7654: $1b
	ld l, h                                          ; $7655: $6c
	sub a                                            ; $7656: $97
	inc d                                            ; $7657: $14
	rst AddAOntoHL                                          ; $7658: $ef
	xor h                                            ; $7659: $ac
	ld d, a                                          ; $765a: $57
	ld d, h                                          ; $765b: $54
	xor a                                            ; $765c: $af
	ld h, a                                          ; $765d: $67
	db $fc                                           ; $765e: $fc
	sbc e                                            ; $765f: $9b
	xor d                                            ; $7660: $aa
	ld d, l                                          ; $7661: $55
	ld d, l                                          ; $7662: $55
	xor d                                            ; $7663: $aa
	ld d, a                                          ; $7664: $57
	db $fc                                           ; $7665: $fc
	ld c, h                                          ; $7666: $4c
	ld b, d                                          ; $7667: $42
	ld [bc], a                                       ; $7668: $02
	ret nz                                           ; $7669: $c0

jr_047_766a:
	add b                                            ; $766a: $80
	xor $61                                          ; $766b: $ee $61
	sub a                                            ; $766d: $97
	ld b, b                                          ; $766e: $40
	xor e                                            ; $766f: $ab
	jr nc, jr_047_7632                               ; $7670: $30 $c0

	ld d, h                                          ; $7672: $54
	xor d                                            ; $7673: $aa
	ld e, d                                          ; $7674: $5a
	and b                                            ; $7675: $a0
	ld b, h                                          ; $7676: $44
	or b                                             ; $7677: $b0
	ld b, c                                          ; $7678: $41

Jump_047_7679:
	cp b                                             ; $7679: $b8
	add hl, sp                                       ; $767a: $39
	cp $7c                                           ; $767b: $fe $7c
	rst SubAFromDE                                          ; $767d: $df
	ld a, $e7                                        ; $767e: $3e $e7
	add [hl]                                         ; $7680: $86
	dec a                                            ; $7681: $3d
	ld a, d                                          ; $7682: $7a
	dec a                                            ; $7683: $3d
	sub [hl]                                         ; $7684: $96
	add hl, sp                                       ; $7685: $39
	ld b, [hl]                                       ; $7686: $46
	ld e, c                                          ; $7687: $59
	xor [hl]                                         ; $7688: $ae
	add c                                            ; $7689: $81
	ld a, a                                          ; $768a: $7f
	ld d, b                                          ; $768b: $50
	adc c                                            ; $768c: $89
	ldh [$fe], a                                     ; $768d: $e0 $fe
	or $fe                                           ; $768f: $f6 $fe
	ld [$defc], a                                    ; $7691: $ea $fc $de
	db $e4                                           ; $7694: $e4
	jp nz, $dafc                                     ; $7695: $c2 $fc $da

	db $e4                                           ; $7698: $e4
	ret nz                                           ; $7699: $c0

	cp $7e                                           ; $769a: $fe $7e
	add c                                            ; $769c: $81
	nop                                              ; $769d: $00
	ei                                               ; $769e: $fb
	ld a, c                                          ; $769f: $79
	ei                                               ; $76a0: $fb
	ld [$bf82], sp                                   ; $76a1: $08 $82 $bf
	ei                                               ; $76a4: $fb
	ei                                               ; $76a5: $fb
	sbc [hl]                                         ; $76a6: $9e
	ld a, c                                          ; $76a7: $79
	ld a, e                                          ; $76a8: $7b
	ld a, [$f99c]                                    ; $76a9: $fa $9c $f9
	ld b, $08                                        ; $76ac: $06 $08
	ld a, d                                          ; $76ae: $7a
	add $9b                                          ; $76af: $c6 $9b
	jr c, jr_047_76b3                                ; $76b1: $38 $00

jr_047_76b3:
	ld [$7bf7], sp                                   ; $76b3: $08 $f7 $7b
	ld hl, sp+$7b                                    ; $76b6: $f8 $7b
	ld a, [$f97f]                                    ; $76b8: $fa $7f $f9
	sbc d                                            ; $76bb: $9a
	rlca                                             ; $76bc: $07
	ei                                               ; $76bd: $fb
	ld d, a                                          ; $76be: $57
	ei                                               ; $76bf: $fb
	xor a                                            ; $76c0: $af
	ld a, e                                          ; $76c1: $7b
	db $fc                                           ; $76c2: $fc
	sub l                                            ; $76c3: $95
	xor [hl]                                         ; $76c4: $ae
	ei                                               ; $76c5: $fb
	ld d, a                                          ; $76c6: $57
	ld a, [$faae]                                    ; $76c7: $fa $ae $fa
	ld d, [hl]                                       ; $76ca: $56
	ld a, [$fbd4]                                    ; $76cb: $fa $d4 $fb
	ld a, c                                          ; $76ce: $79
	add a                                            ; $76cf: $87
	adc l                                            ; $76d0: $8d
	jr nc, jr_047_766a                               ; $76d1: $30 $97

	rst $38                                          ; $76d3: $ff
	db $10                                           ; $76d4: $10
	or b                                             ; $76d5: $b0
	db $10                                           ; $76d6: $10
	ld sp, $3631                                     ; $76d7: $31 $31 $36
	inc d                                            ; $76da: $14
	jr c, jr_047_76df                                ; $76db: $38 $02

	rst $38                                          ; $76dd: $ff
	ccf                                              ; $76de: $3f

jr_047_76df:
	nop                                              ; $76df: $00
	jr nc, @+$11                                     ; $76e0: $30 $0f

	ccf                                              ; $76e2: $3f
	ld a, d                                          ; $76e3: $7a
	inc d                                            ; $76e4: $14
	sub h                                            ; $76e5: $94
	ld h, b                                          ; $76e6: $60
	sbc a                                            ; $76e7: $9f
	ld b, b                                          ; $76e8: $40
	ccf                                              ; $76e9: $3f
	ld b, b                                          ; $76ea: $40
	ccf                                              ; $76eb: $3f
	jr nz, @+$01                                     ; $76ec: $20 $ff

	ld hl, sp+$07                                    ; $76ee: $f8 $07
	ld bc, $ffde                                     ; $76f0: $01 $de $ff
	ld a, a                                          ; $76f3: $7f
	db $fc                                           ; $76f4: $fc
	ld l, a                                          ; $76f5: $6f
	cp $9c                                           ; $76f6: $fe $9c
	db $fc                                           ; $76f8: $fc
	db $ec                                           ; $76f9: $ec
	add b                                            ; $76fa: $80
	cp a                                             ; $76fb: $bf
	add b                                            ; $76fc: $80
	ret nz                                           ; $76fd: $c0

	add [hl]                                         ; $76fe: $86
	add b                                            ; $76ff: $80
	ldh [$c0], a                                     ; $7700: $e0 $c0
	ld hl, sp-$20                                    ; $7702: $f8 $e0
	or $f8                                           ; $7704: $f6 $f8
	ld a, c                                          ; $7706: $79
	cp $2d                                           ; $7707: $fe $2d
	ld [bc], a                                       ; $7709: $02
	ld d, $01                                        ; $770a: $16 $01
	dec l                                            ; $770c: $2d
	ld [bc], a                                       ; $770d: $02
	ld e, d                                          ; $770e: $5a
	dec b                                            ; $770f: $05
	or h                                             ; $7710: $b4
	dec bc                                           ; $7711: $0b
	ld e, d                                          ; $7712: $5a
	dec b                                            ; $7713: $05
	or l                                             ; $7714: $b5
	ld a, [bc]                                       ; $7715: $0a
	ld [$4615], a                                    ; $7716: $ea $15 $46
	ret nz                                           ; $7719: $c0

	sub d                                            ; $771a: $92
	ld a, a                                          ; $771b: $7f
	and b                                            ; $771c: $a0
	ld h, c                                          ; $771d: $61
	cp a                                             ; $771e: $bf
	ld a, [hl]                                       ; $771f: $7e
	cp a                                             ; $7720: $bf
	ld b, b                                          ; $7721: $40
	cp a                                             ; $7722: $bf
	ld e, a                                          ; $7723: $5f
	cp a                                             ; $7724: $bf
	ld c, d                                          ; $7725: $4a
	cp a                                             ; $7726: $bf
	ld d, l                                          ; $7727: $55
	ld a, e                                          ; $7728: $7b
	db $fc                                           ; $7729: $fc
	sbc h                                            ; $772a: $9c
	jp $fc3f                                         ; $772b: $c3 $3f $fc


	ld a, c                                          ; $772e: $79
	or [hl]                                          ; $772f: $b6
	ld a, h                                          ; $7730: $7c
	ld [hl], b                                       ; $7731: $70
	sbc [hl]                                         ; $7732: $9e
	push af                                          ; $7733: $f5
	ld [hl], b                                       ; $7734: $70
	ld [hl], d                                       ; $7735: $72
	ld a, a                                          ; $7736: $7f
	db $fc                                           ; $7737: $fc
	adc h                                            ; $7738: $8c
	di                                               ; $7739: $f3
	db $fd                                           ; $773a: $fd
	dec b                                            ; $773b: $05
	ei                                               ; $773c: $fb
	ld a, e                                          ; $773d: $7b
	db $fd                                           ; $773e: $fd
	sbc h                                            ; $773f: $9c
	db $eb                                           ; $7740: $eb
	ld a, [hl+]                                      ; $7741: $2a
	db $dd                                           ; $7742: $dd
	ld e, h                                          ; $7743: $5c
	xor e                                            ; $7744: $ab
	ld a, [hl+]                                      ; $7745: $2a
	db $dd                                           ; $7746: $dd
	ld a, h                                          ; $7747: $7c
	ei                                               ; $7748: $fb
	xor h                                            ; $7749: $ac
	ld d, a                                          ; $774a: $57
	inc b                                            ; $774b: $04
	db $dd                                           ; $774c: $dd
	rst $38                                          ; $774d: $ff
	cp h                                             ; $774e: $bc
	db $dd                                           ; $774f: $dd
	inc sp                                           ; $7750: $33
	call z, $aa33                                    ; $7751: $cc $33 $aa
	sbc e                                            ; $7754: $9b
	ld d, l                                          ; $7755: $55
	ld d, h                                          ; $7756: $54
	xor e                                            ; $7757: $ab
	pop af                                           ; $7758: $f1
	ld e, e                                          ; $7759: $5b
	ldh a, [$7c]                                     ; $775a: $f0 $7c
	ld c, d                                          ; $775c: $4a
	sbc [hl]                                         ; $775d: $9e
	rst GetHLinHL                                          ; $775e: $cf
	ld a, b                                          ; $775f: $78
	ld b, [hl]                                       ; $7760: $46
	sbc [hl]                                         ; $7761: $9e
	bit 7, d                                         ; $7762: $cb $7a
	add $9e                                          ; $7764: $c6 $9e
	ld c, e                                          ; $7766: $4b
	ld a, e                                          ; $7767: $7b
	db $fc                                           ; $7768: $fc
	sbc h                                            ; $7769: $9c
	ldh [$7f], a                                     ; $776a: $e0 $7f
	inc bc                                           ; $776c: $03
	ld [hl], b                                       ; $776d: $70
	ld b, [hl]                                       ; $776e: $46
	sbc d                                            ; $776f: $9a
	adc e                                            ; $7770: $8b
	rst $38                                          ; $7771: $ff
	ld d, e                                          ; $7772: $53
	rst $38                                          ; $7773: $ff
	xor e                                            ; $7774: $ab
	ld [hl], e                                       ; $7775: $73
	db $fc                                           ; $7776: $fc
	ld b, [hl]                                       ; $7777: $46
	ret nz                                           ; $7778: $c0

	sub [hl]                                         ; $7779: $96
	ret                                              ; $777a: $c9


	ld a, a                                          ; $777b: $7f
	xor c                                            ; $777c: $a9
	ld c, l                                          ; $777d: $4d
	jp nc, $f80b                                     ; $777e: $d2 $0b $f8

	ld d, $d0                                        ; $7781: $16 $d0
	cp l                                             ; $7783: $bd
	add sp, -$2c                                     ; $7784: $e8 $d4
	add sp, $58                                      ; $7786: $e8 $58
	adc l                                            ; $7788: $8d
	or a                                             ; $7789: $b7
	inc h                                            ; $778a: $24
	ei                                               ; $778b: $fb
	ld e, d                                          ; $778c: $5a
	ld [hl], l                                       ; $778d: $75
	ld d, h                                          ; $778e: $54
	ld h, e                                          ; $778f: $63
	xor d                                            ; $7790: $aa
	ld h, l                                          ; $7791: $65
	ld e, h                                          ; $7792: $5c
	inc hl                                           ; $7793: $23
	ld a, [hl+]                                      ; $7794: $2a
	dec b                                            ; $7795: $05

Jump_047_7796:
	ld d, h                                          ; $7796: $54
	dec bc                                           ; $7797: $0b
	add b                                            ; $7798: $80
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	sbc $ff                                          ; $779b: $de $ff
	sbc c                                            ; $779d: $99
	add b                                            ; $779e: $80
	rst $38                                          ; $779f: $ff
	xor d                                            ; $77a0: $aa

jr_047_77a1:
	push de                                          ; $77a1: $d5
	sub l                                            ; $77a2: $95
	ld [$fc77], a                                    ; $77a3: $ea $77 $fc
	cp a                                             ; $77a6: $bf
	nop                                              ; $77a7: $00
	rst $38                                          ; $77a8: $ff
	rst SubAFromDE                                          ; $77a9: $df
	rst $38                                          ; $77aa: $ff
	sub c                                            ; $77ab: $91
	inc bc                                           ; $77ac: $03
	db $fc                                           ; $77ad: $fc
	xor b                                            ; $77ae: $a8
	ld d, h                                          ; $77af: $54
	ld d, d                                          ; $77b0: $52
	xor h                                            ; $77b1: $ac
	xor d                                            ; $77b2: $aa
	ld d, h                                          ; $77b3: $54
	ld d, l                                          ; $77b4: $55
	xor d                                            ; $77b5: $aa
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	ld a, b                                          ; $77b8: $78
	add b                                            ; $77b9: $80
	ld [hl], a                                       ; $77ba: $77
	ld [hl], b                                       ; $77bb: $70
	ld sp, hl                                        ; $77bc: $f9
	ld a, [hl]                                       ; $77bd: $7e
	call z, $5293                                    ; $77be: $cc $93 $52
	cp $aa                                           ; $77c1: $fe $aa
	or $52                                           ; $77c3: $f6 $52
	and $82                                          ; $77c5: $e6 $82
	and $02                                          ; $77c7: $e6 $02
	add $02                                          ; $77c9: $c6 $02
	add a                                            ; $77cb: $87
	cp a                                             ; $77cc: $bf
	ld b, $30                                        ; $77cd: $06 $30
	sub h                                            ; $77cf: $94
	inc bc                                           ; $77d0: $03
	nop                                              ; $77d1: $00
	ld [$2207], sp                                   ; $77d2: $08 $07 $22
	dec e                                            ; $77d5: $1d
	ld c, h                                          ; $77d6: $4c
	inc sp                                           ; $77d7: $33
	jr c, jr_047_77a1                                ; $77d8: $38 $c7

	adc b                                            ; $77da: $88
	ld a, b                                          ; $77db: $78
	ld a, h                                          ; $77dc: $7c
	ld a, [hl]                                       ; $77dd: $7e
	ret z                                            ; $77de: $c8

	cp d                                             ; $77df: $ba
	rst $38                                          ; $77e0: $ff
	rst $38                                          ; $77e1: $ff
	rst $38                                          ; $77e2: $ff
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst $38                                          ; $77e5: $ff
	rst $38                                          ; $77e6: $ff
	ld h, [hl]                                       ; $77e7: $66
	ret z                                            ; $77e8: $c8

	ld a, a                                          ; $77e9: $7f
	ld a, [de]                                       ; $77ea: $1a
	ld a, a                                          ; $77eb: $7f
	ld d, [hl]                                       ; $77ec: $56
	ld a, [hl]                                       ; $77ed: $7e
	add h                                            ; $77ee: $84
	ld a, a                                          ; $77ef: $7f
	db $fc                                           ; $77f0: $fc
	ld l, a                                          ; $77f1: $6f
	ld a, [bc]                                       ; $77f2: $0a
	ld a, a                                          ; $77f3: $7f
	db $fc                                           ; $77f4: $fc
	sbc [hl]                                         ; $77f5: $9e
	ld a, [hl+]                                      ; $77f6: $2a
	ld a, e                                          ; $77f7: $7b
	db $e4                                           ; $77f8: $e4
	ld a, e                                          ; $77f9: $7b
	xor c                                            ; $77fa: $a9
	sbc c                                            ; $77fb: $99
	rst $38                                          ; $77fc: $ff
	ld [hl], l                                       ; $77fd: $75
	adc d                                            ; $77fe: $8a

Call_047_77ff:
	ld d, a                                          ; $77ff: $57
	rst $38                                          ; $7800: $ff
	xor a                                            ; $7801: $af
	ld a, b                                          ; $7802: $78
	adc [hl]                                         ; $7803: $8e
	sbc [hl]                                         ; $7804: $9e
	and b                                            ; $7805: $a0
	ld a, e                                          ; $7806: $7b
	call c, $fe98                                    ; $7807: $dc $98 $fe
	rst $38                                          ; $780a: $ff
	ld b, $f8                                        ; $780b: $06 $f8
	ld h, [hl]                                       ; $780d: $66
	rst $38                                          ; $780e: $ff
	and $7b                                          ; $780f: $e6 $7b
	cp $98                                           ; $7811: $fe $98
	ld b, $ff                                        ; $7813: $06 $ff
	ccf                                              ; $7815: $3f
	rst $38                                          ; $7816: $ff
	call $eaf0                                       ; $7817: $cd $f0 $ea
	cp a                                             ; $781a: $bf
	ld d, l                                          ; $781b: $55
	ld d, l                                          ; $781c: $55
	sub [hl]                                         ; $781d: $96
	cp a                                             ; $781e: $bf
	ld b, a                                          ; $781f: $47
	cp a                                             ; $7820: $bf
	ld hl, sp-$01                                    ; $7821: $f8 $ff
	rlca                                             ; $7823: $07
	rst $38                                          ; $7824: $ff
	ei                                               ; $7825: $fb
	db $fc                                           ; $7826: $fc
	ei                                               ; $7827: $fb
	sub l                                            ; $7828: $95
	ld e, a                                          ; $7829: $5f
	rst $38                                          ; $782a: $ff
	ldh [rIE], a                                     ; $782b: $e0 $ff
	rrca                                             ; $782d: $0f
	rst $38                                          ; $782e: $ff
	db $fc                                           ; $782f: $fc
	di                                               ; $7830: $f3
	inc sp                                           ; $7831: $33
	call z, $95fb                                    ; $7832: $cc $fb $95
	add d                                            ; $7835: $82
	db $fd                                           ; $7836: $fd
	rra                                              ; $7837: $1f
	cp $f3                                           ; $7838: $fe $f3
	db $ec                                           ; $783a: $ec
	call z, $3f33                                    ; $783b: $cc $33 $3f
	ret nz                                           ; $783e: $c0

	ei                                               ; $783f: $fb
	ld a, a                                          ; $7840: $7f
	add sp, -$65                                     ; $7841: $e8 $9b
	rst GetHLinHL                                          ; $7843: $cf
	jr nc, jr_047_7885                               ; $7844: $30 $3f

	ret nz                                           ; $7846: $c0

	ld [hl], a                                       ; $7847: $77
	add l                                            ; $7848: $85
	ld h, a                                          ; $7849: $67
	ldh a, [$9d]                                     ; $784a: $f0 $9d
	db $fc                                           ; $784c: $fc
	inc bc                                           ; $784d: $03
	ld l, a                                          ; $784e: $6f
	ld [hl], l                                       ; $784f: $75
	ei                                               ; $7850: $fb
	sub l                                            ; $7851: $95
	inc a                                            ; $7852: $3c
	rst SubAFromDE                                          ; $7853: $df
	swap a                                           ; $7854: $cb $37
	inc sp                                           ; $7856: $33
	call z, $33cc                                    ; $7857: $cc $cc $33
	di                                               ; $785a: $f3
	inc c                                            ; $785b: $0c
	ei                                               ; $785c: $fb
	sbc [hl]                                         ; $785d: $9e
	inc de                                           ; $785e: $13
	ld a, d                                          ; $785f: $7a
	ret nz                                           ; $7860: $c0

	sbc e                                            ; $7861: $9b
	ld [hl], e                                       ; $7862: $73
	rst $38                                          ; $7863: $ff
	rst GetHLinHL                                          ; $7864: $cf
	ccf                                              ; $7865: $3f
	ld h, a                                          ; $7866: $67
	or b                                             ; $7867: $b0
	sbc l                                            ; $7868: $9d
	sbc a                                            ; $7869: $9f
	db $ec                                           ; $786a: $ec
	ld [hl], a                                       ; $786b: $77
	cp $9b                                           ; $786c: $fe $9b
	sbc [hl]                                         ; $786e: $9e
	db $ec                                           ; $786f: $ec
	cp $05                                           ; $7870: $fe $05
	ei                                               ; $7872: $fb
	ld a, [hl]                                       ; $7873: $7e
	call z, Call_047_7a7f                            ; $7874: $cc $7f $7a
	ld a, a                                          ; $7877: $7f

jr_047_7878:
	db $fc                                           ; $7878: $fc
	ld a, a                                          ; $7879: $7f
	dec hl                                           ; $787a: $2b
	ld a, [hl]                                       ; $787b: $7e
	ret c                                            ; $787c: $d8

	sbc h                                            ; $787d: $9c
	rst JumpTable                                          ; $787e: $c7
	jr c, jr_047_78a0                                ; $787f: $38 $1f

	cp a                                             ; $7881: $bf
	nop                                              ; $7882: $00
	ld [hl+], a                                      ; $7883: $22
	sub [hl]                                         ; $7884: $96

jr_047_7885:
	dec b                                            ; $7885: $05
	inc d                                            ; $7886: $14
	dec bc                                           ; $7887: $0b
	ld l, $01                                        ; $7888: $2e $01
	ld sp, hl                                        ; $788a: $f9
	ld b, $00                                        ; $788b: $06 $00
	nop                                              ; $788d: $00
	ld [hl], a                                       ; $788e: $77
	xor b                                            ; $788f: $a8
	rst $38                                          ; $7890: $ff
	ld a, [hl]                                       ; $7891: $7e
	call z, Call_047_558d                            ; $7892: $cc $8d $55
	ld [$55ea], a                                    ; $7895: $ea $ea $55
	dec d                                            ; $7898: $15
	ld l, d                                          ; $7899: $6a
	ld l, d                                          ; $789a: $6a
	dec [hl]                                         ; $789b: $35
	dec [hl]                                         ; $789c: $35
	jp z, $0708                                      ; $789d: $ca $08 $07

jr_047_78a0:
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	xor c                                            ; $78a2: $a9
	ld d, [hl]                                       ; $78a3: $56
	ld d, h                                          ; $78a4: $54
	xor e                                            ; $78a5: $ab
	ld h, l                                          ; $78a6: $65
	inc d                                            ; $78a7: $14
	sbc d                                            ; $78a8: $9a
	ld a, [hl+]                                      ; $78a9: $2a
	push de                                          ; $78aa: $d5
	dec d                                            ; $78ab: $15
	ld a, [hl+]                                      ; $78ac: $2a
	nop                                              ; $78ad: $00
	cp [hl]                                          ; $78ae: $be
	add b                                            ; $78af: $80
	add b                                            ; $78b0: $80
	ld b, b                                          ; $78b1: $40
	sub [hl]                                         ; $78b2: $96
	add b                                            ; $78b3: $80
	ld b, b                                          ; $78b4: $40
	add b                                            ; $78b5: $80
	jr nz, jr_047_7878                               ; $78b6: $20 $c0

	and b                                            ; $78b8: $a0
	ld b, b                                          ; $78b9: $40
	ld d, b                                          ; $78ba: $50
	and b                                            ; $78bb: $a0
	db $fd                                           ; $78bc: $fd
	sbc [hl]                                         ; $78bd: $9e
	ld bc, $07bd                                     ; $78be: $01 $bd $07
	dec e                                            ; $78c1: $1d
	ld [hl], c                                       ; $78c2: $71
	jp nz, $0196                                     ; $78c3: $c2 $96 $01

	inc b                                            ; $78c6: $04
	inc bc                                           ; $78c7: $03
	jr nz, jr_047_78e9                               ; $78c8: $20 $1f

	ld h, b                                          ; $78ca: $60
	rra                                              ; $78cb: $1f
	ret nz                                           ; $78cc: $c0

	ccf                                              ; $78cd: $3f
	ld b, [hl]                                       ; $78ce: $46
	jp z, $ffbe                                      ; $78cf: $ca $be $ff

	rst $38                                          ; $78d2: $ff
	rst $38                                          ; $78d3: $ff
	sbc [hl]                                         ; $78d4: $9e
	dec b                                            ; $78d5: $05
	ld a, d                                          ; $78d6: $7a
	jp c, $d67d                                      ; $78d7: $da $7d $d6

	rst SubAFromDE                                          ; $78da: $df
	rst $38                                          ; $78db: $ff
	ld h, l                                          ; $78dc: $65
	call nc, $fc77                                   ; $78dd: $d4 $77 $fc
	db $dd                                           ; $78e0: $dd
	rst $38                                          ; $78e1: $ff
	ld l, a                                          ; $78e2: $6f
	db $f4                                           ; $78e3: $f4
	sbc b                                            ; $78e4: $98
	xor b                                            ; $78e5: $a8
	rst $38                                          ; $78e6: $ff
	ld d, a                                          ; $78e7: $57
	db $fc                                           ; $78e8: $fc

jr_047_78e9:
	xor a                                            ; $78e9: $af
	ldh a, [$fe]                                     ; $78ea: $f0 $fe
	ld [hl], d                                       ; $78ec: $72
	ld b, d                                          ; $78ed: $42
	ld [hl], a                                       ; $78ee: $77
	cp $9d                                           ; $78ef: $fe $9d
	ld a, a                                          ; $78f1: $7f
	add b                                            ; $78f2: $80
	ld [hl], e                                       ; $78f3: $73
	ld a, [de]                                       ; $78f4: $1a
	ld [hl], d                                       ; $78f5: $72
	xor d                                            ; $78f6: $aa
	cp a                                             ; $78f7: $bf
	rst $38                                          ; $78f8: $ff
	rst $38                                          ; $78f9: $ff
	ld l, e                                          ; $78fa: $6b
	ld a, [bc]                                       ; $78fb: $0a
	ld h, e                                          ; $78fc: $63
	ldh a, [$9e]                                     ; $78fd: $f0 $9e
	cp $be                                           ; $78ff: $fe $be
	db $fd                                           ; $7901: $fd
	ld [$6300], a                                    ; $7902: $ea $00 $63
	ldh a, [$7e]                                     ; $7905: $f0 $7e
	dec h                                            ; $7907: $25
	ld a, [hl]                                       ; $7908: $7e
	and d                                            ; $7909: $a2
	sbc [hl]                                         ; $790a: $9e
	xor e                                            ; $790b: $ab
	ld e, e                                          ; $790c: $5b
	ldh a, [$79]                                     ; $790d: $f0 $79
	or $53                                           ; $790f: $f6 $53
	ret nc                                           ; $7911: $d0

	db $fd                                           ; $7912: $fd
	inc bc                                           ; $7913: $03
	ldh a, [rPCM34]                                  ; $7914: $f0 $77
	pop af                                           ; $7916: $f1
	inc bc                                           ; $7917: $03
	ldh a, [$57]                                     ; $7918: $f0 $57
	ldh a, [$9e]                                     ; $791a: $f0 $9e
	ld a, [$327b]                                    ; $791c: $fa $7b $32
	ld l, e                                          ; $791f: $6b
	cp h                                             ; $7920: $bc
	cp [hl]                                          ; $7921: $be
	nop                                              ; $7922: $00
	rst $38                                          ; $7923: $ff
	xor d                                            ; $7924: $aa
	ld [hl], a                                       ; $7925: $77
	ld [hl-], a                                      ; $7926: $32
	ld a, a                                          ; $7927: $7f
	db $fd                                           ; $7928: $fd
	ld e, a                                          ; $7929: $5f
	ldh a, [hDisp0_OBP0]                                     ; $792a: $f0 $86
	push af                                          ; $792c: $f5
	ld b, l                                          ; $792d: $45
	ld a, [$55ea]                                    ; $792e: $fa $ea $55
	push de                                          ; $7931: $d5
	ld [$15ea], a                                    ; $7932: $ea $ea $15
	dec c                                            ; $7935: $0d
	ld [bc], a                                       ; $7936: $02
	ld [bc], a                                       ; $7937: $02
	ld bc, $00ff                                     ; $7938: $01 $ff $00
	sub b                                            ; $793b: $90
	ld h, b                                          ; $793c: $60
	ld c, b                                          ; $793d: $48
	or b                                             ; $793e: $b0
	xor b                                            ; $793f: $a8
	ld d, b                                          ; $7940: $50
	ld d, h                                          ; $7941: $54
	xor b                                            ; $7942: $a8
	and h                                            ; $7943: $a4
	ld e, b                                          ; $7944: $58
	ld [hl], l                                       ; $7945: $75
	ld [hl], b                                       ; $7946: $70
	sbc l                                            ; $7947: $9d
	dec d                                            ; $7948: $15
	ld [$0047], a                                    ; $7949: $ea $47 $00
	sbc l                                            ; $794c: $9d
	ld [hl], l                                       ; $794d: $75
	ld d, l                                          ; $794e: $55
	db $db                                           ; $794f: $db
	ld [hl], a                                       ; $7950: $77
	sbc d                                            ; $7951: $9a
	ld [hl], l                                       ; $7952: $75
	ld d, a                                          ; $7953: $57
	ld [hl], e                                       ; $7954: $73
	ld d, l                                          ; $7955: $55
	ld [hl], a                                       ; $7956: $77
	db $dd                                           ; $7957: $dd
	ld d, l                                          ; $7958: $55
	sbc d                                            ; $7959: $9a
	ld d, a                                          ; $795a: $57
	ld [hl], a                                       ; $795b: $77
	ld [hl], e                                       ; $795c: $73
	ld d, a                                          ; $795d: $57
	ld [hl], l                                       ; $795e: $75
	ld [hl], a                                       ; $795f: $77
	ld [$ee7f], a                                    ; $7960: $ea $7f $ee
	rst SubAFromDE                                          ; $7963: $df
	ld [hl], a                                       ; $7964: $77
	sub l                                            ; $7965: $95
	ld h, a                                          ; $7966: $67
	ld [hl], a                                       ; $7967: $77
	ld [hl], a                                       ; $7968: $77
	ld d, e                                          ; $7969: $53
	ld b, h                                          ; $796a: $44
	ld h, [hl]                                       ; $796b: $66
	ld b, e                                          ; $796c: $43
	ld d, a                                          ; $796d: $57
	ld [hl], a                                       ; $796e: $77
	halt                                             ; $796f: $76
	ld [hl], a                                       ; $7970: $77
	or $9e                                           ; $7971: $f6 $9e
	inc sp                                           ; $7973: $33
	ld [hl], a                                       ; $7974: $77
	or $77                                           ; $7975: $f6 $77
	jp hl                                            ; $7977: $e9


	ld l, a                                          ; $7978: $6f
	or $9e                                           ; $7979: $f6 $9e
	ld d, h                                          ; $797b: $54
	ld h, e                                          ; $797c: $63
	db $ec                                           ; $797d: $ec
	db $dd                                           ; $797e: $dd
	ld [hl], a                                       ; $797f: $77
	ld l, e                                          ; $7980: $6b
	or $9e                                           ; $7981: $f6 $9e
	ld [hl], e                                       ; $7983: $73
	ld e, e                                          ; $7984: $5b
	db $ec                                           ; $7985: $ec
	sbc l                                            ; $7986: $9d
	ld d, l                                          ; $7987: $55
	ld [hl], e                                       ; $7988: $73
	sbc $33                                          ; $7989: $de $33
	sbc [hl]                                         ; $798b: $9e
	scf                                              ; $798c: $37
	ld [hl], e                                       ; $798d: $73
	and e                                            ; $798e: $a3
	jp c, Jump_047_5677                              ; $798f: $da $77 $56

	adc c                                            ; $7992: $89
	cp $9e                                           ; $7993: $fe $9e
	ld d, l                                          ; $7995: $55
	jp c, $f9ff                                      ; $7996: $da $ff $f9

	inc de                                           ; $7999: $13
	ldh a, [$9b]                                     ; $799a: $f0 $9b
	jr nc, jr_047_79b6                               ; $799c: $30 $18

	inc c                                            ; $799e: $0c
	ld d, h                                          ; $799f: $54
	db $dd                                           ; $79a0: $dd
	rst $38                                          ; $79a1: $ff
	sbc h                                            ; $79a2: $9c
	ld hl, sp-$04                                    ; $79a3: $f8 $fc
	cp $fc                                           ; $79a5: $fe $fc
	sub h                                            ; $79a7: $94
	dec b                                            ; $79a8: $05
	ld [bc], a                                       ; $79a9: $02
	ld bc, $d500                                     ; $79aa: $01 $00 $d5
	ld [$eaf5], a                                    ; $79ad: $ea $f5 $ea
	rrca                                             ; $79b0: $0f
	rlca                                             ; $79b1: $07
	inc bc                                           ; $79b2: $03
	ld l, a                                          ; $79b3: $6f
	db $d3                                           ; $79b4: $d3
	sbc l                                            ; $79b5: $9d

jr_047_79b6:
	xor d                                            ; $79b6: $aa
	ld d, l                                          ; $79b7: $55
	ld [hl], a                                       ; $79b8: $77
	db $fc                                           ; $79b9: $fc
	sbc [hl]                                         ; $79ba: $9e
	xor d                                            ; $79bb: $aa
	ld h, a                                          ; $79bc: $67
	ret nc                                           ; $79bd: $d0

	sub a                                            ; $79be: $97
	ld b, b                                          ; $79bf: $40
	and h                                            ; $79c0: $a4
	ld d, b                                          ; $79c1: $50
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	and b                                            ; $79c4: $a0
	ld b, b                                          ; $79c5: $40
	and b                                            ; $79c6: $a0
	ld e, e                                          ; $79c7: $5b
	or b                                             ; $79c8: $b0
	db $fc                                           ; $79c9: $fc
	ld h, a                                          ; $79ca: $67
	ldh a, [$97]                                     ; $79cb: $f0 $97
	ld [bc], a                                       ; $79cd: $02
	sub l                                            ; $79ce: $95
	ld a, [hl+]                                      ; $79cf: $2a
	nop                                              ; $79d0: $00
	ld bc, $0100                                     ; $79d1: $01 $00 $01
	ld a, [bc]                                       ; $79d4: $0a
	ld h, a                                          ; $79d5: $67
	ldh a, [hDisp1_OBP1]                                     ; $79d6: $f0 $94
	xor d                                            ; $79d8: $aa
	ld d, h                                          ; $79d9: $54
	xor b                                            ; $79da: $a8
	nop                                              ; $79db: $00
	ld d, a                                          ; $79dc: $57
	xor e                                            ; $79dd: $ab
	ld d, l                                          ; $79de: $55
	xor e                                            ; $79df: $ab
	rst $38                                          ; $79e0: $ff
	cp $fc                                           ; $79e1: $fe $fc
	ld sp, hl                                        ; $79e3: $f9
	sbc [hl]                                         ; $79e4: $9e
	dec d                                            ; $79e5: $15
	ld l, a                                          ; $79e6: $6f
	add e                                            ; $79e7: $83
	ld a, a                                          ; $79e8: $7f
	jp c, $9efd                                      ; $79e9: $da $fd $9e

	ld a, [hl+]                                      ; $79ec: $2a
	ld a, e                                          ; $79ed: $7b
	and e                                            ; $79ee: $a3
	db $dd                                           ; $79ef: $dd
	rst $38                                          ; $79f0: $ff
	sbc [hl]                                         ; $79f1: $9e
	ld a, a                                          ; $79f2: $7f
	ld l, e                                          ; $79f3: $6b
	ret nc                                           ; $79f4: $d0

	sbc h                                            ; $79f5: $9c
	and b                                            ; $79f6: $a0
	ld d, b                                          ; $79f7: $50
	and d                                            ; $79f8: $a2
	inc de                                           ; $79f9: $13
	ld d, b                                          ; $79fa: $50

Call_047_79fb:
	sbc h                                            ; $79fb: $9c
	dec b                                            ; $79fc: $05
	ld a, [bc]                                       ; $79fd: $0a
	ld bc, $f053                                     ; $79fe: $01 $53 $f0
	ld a, e                                          ; $7a01: $7b
	pop bc                                           ; $7a02: $c1
	ld c, a                                          ; $7a03: $4f
	ret nc                                           ; $7a04: $d0

	sbc l                                            ; $7a05: $9d
	add b                                            ; $7a06: $80
	ld b, b                                          ; $7a07: $40
	ld [hl], e                                       ; $7a08: $73
	ldh a, [$9c]                                     ; $7a09: $f0 $9c
	add b                                            ; $7a0b: $80
	ret nz                                           ; $7a0c: $c0

	ldh [$6f], a                                     ; $7a0d: $e0 $6f
	ld [hl], b                                       ; $7a0f: $70
	ld a, a                                          ; $7a10: $7f
	sbc c                                            ; $7a11: $99
	ld [hl], e                                       ; $7a12: $73
	ldh a, [$7f]                                     ; $7a13: $f0 $7f
	ld sp, $906f                                     ; $7a15: $31 $6f $90
	ld a, e                                          ; $7a18: $7b
	dec [hl]                                         ; $7a19: $35
	ld d, e                                          ; $7a1a: $53
	ret nc                                           ; $7a1b: $d0

	ld a, a                                          ; $7a1c: $7f
	pop de                                           ; $7a1d: $d1
	sbc l                                            ; $7a1e: $9d
	or b                                             ; $7a1f: $b0
	ld d, a                                          ; $7a20: $57
	ld d, a                                          ; $7a21: $57
	ldh a, [$7f]                                     ; $7a22: $f0 $7f
	ld a, [$fe7f]                                    ; $7a24: $fa $7f $fe
	ld [hl], a                                       ; $7a27: $77
	rst SubAFromDE                                          ; $7a28: $df
	ld a, e                                          ; $7a29: $7b
	cpl                                              ; $7a2a: $2f
	ld [hl], a                                       ; $7a2b: $77
	inc l                                            ; $7a2c: $2c
	ld [hl], a                                       ; $7a2d: $77
	ld a, [$f043]                                    ; $7a2e: $fa $43 $f0
	ld l, a                                          ; $7a31: $6f
	ld sp, hl                                        ; $7a32: $f9
	ld e, e                                          ; $7a33: $5b
	ldh a, [$7b]                                     ; $7a34: $f0 $7b
	xor e                                            ; $7a36: $ab
	ld h, a                                          ; $7a37: $67
	ldh a, [$9e]                                     ; $7a38: $f0 $9e
	push af                                          ; $7a3a: $f5

Call_047_7a3b:
	ld a, e                                          ; $7a3b: $7b
	ldh a, [$9e]                                     ; $7a3c: $f0 $9e
	push de                                          ; $7a3e: $d5
	ld e, e                                          ; $7a3f: $5b
	ldh a, [$7e]                                     ; $7a40: $f0 $7e
	jp nz, $c07b                                     ; $7a42: $c2 $7b $c0

	ld e, e                                          ; $7a45: $5b
	ldh a, [$9d]                                     ; $7a46: $f0 $9d
	ld d, b                                          ; $7a48: $50
	ld l, e                                          ; $7a49: $6b
	ld a, e                                          ; $7a4a: $7b
	ldh a, [$7e]                                     ; $7a4b: $f0 $7e
	db $ed                                           ; $7a4d: $ed
	sbc h                                            ; $7a4e: $9c
	and b                                            ; $7a4f: $a0
	nop                                              ; $7a50: $00
	sub h                                            ; $7a51: $94
	ld e, a                                          ; $7a52: $5f
	cp b                                             ; $7a53: $b8
	ld a, a                                          ; $7a54: $7f
	call c, $866b                                    ; $7a55: $dc $6b $86
	sbc $ff                                          ; $7a58: $de $ff
	sbc l                                            ; $7a5a: $9d
	dec d                                            ; $7a5b: $15
	xor d                                            ; $7a5c: $aa
	ld a, e                                          ; $7a5d: $7b
	ldh a, [$7f]                                     ; $7a5e: $f0 $7f
	inc e                                            ; $7a60: $1c
	ld [hl], a                                       ; $7a61: $77
	ld a, [bc]                                       ; $7a62: $0a
	ld [hl], e                                       ; $7a63: $73
	ldh a, [$9e]                                     ; $7a64: $f0 $9e
	ld d, a                                          ; $7a66: $57
	ld l, a                                          ; $7a67: $6f
	ret nz                                           ; $7a68: $c0

	ld a, [hl]                                       ; $7a69: $7e
	xor e                                            ; $7a6a: $ab
	ld e, e                                          ; $7a6b: $5b
	sub b                                            ; $7a6c: $90
	sbc [hl]                                         ; $7a6d: $9e
	ld a, a                                          ; $7a6e: $7f
	ld e, e                                          ; $7a6f: $5b
	or b                                             ; $7a70: $b0
	ld [hl], e                                       ; $7a71: $73
	add b                                            ; $7a72: $80
	ld a, [hl]                                       ; $7a73: $7e
	and b                                            ; $7a74: $a0
	ld c, a                                          ; $7a75: $4f
	ldh a, [$7e]                                     ; $7a76: $f0 $7e
	or d                                             ; $7a78: $b2
	sbc [hl]                                         ; $7a79: $9e
	cp a                                             ; $7a7a: $bf
	ld h, a                                          ; $7a7b: $67
	ldh a, [$7e]                                     ; $7a7c: $f0 $7e
	ld a, [hl+]                                      ; $7a7e: $2a

Call_047_7a7f:
	ld c, a                                          ; $7a7f: $4f
	ld d, b                                          ; $7a80: $50
	ld a, a                                          ; $7a81: $7f
	add l                                            ; $7a82: $85
	ld a, a                                          ; $7a83: $7f
	xor $df                                          ; $7a84: $ee $df
	db $fc                                           ; $7a86: $fc
	sbc l                                            ; $7a87: $9d
	ei                                               ; $7a88: $fb
	rst FarCall                                          ; $7a89: $f7
	ld a, e                                          ; $7a8a: $7b
	di                                               ; $7a8b: $f3
	sbc l                                            ; $7a8c: $9d
	ld [bc], a                                       ; $7a8d: $02
	cp $73                                           ; $7a8e: $fe $73
	add sp, -$67                                     ; $7a90: $e8 $99
	ld a, a                                          ; $7a92: $7f
	ld d, l                                          ; $7a93: $55
	ld l, d                                          ; $7a94: $6a
	push de                                          ; $7a95: $d5
	xor d                                            ; $7a96: $aa
	dec d                                            ; $7a97: $15
	ld [hl], a                                       ; $7a98: $77
	add b                                            ; $7a99: $80
	ld a, a                                          ; $7a9a: $7f
	and a                                            ; $7a9b: $a7
	ld a, [hl]                                       ; $7a9c: $7e
	ld a, d                                          ; $7a9d: $7a
	ld a, e                                          ; $7a9e: $7b
	add sp, $7b                                      ; $7a9f: $e8 $7b
	or e                                             ; $7aa1: $b3
	sbc [hl]                                         ; $7aa2: $9e
	ld a, [bc]                                       ; $7aa3: $0a
	ld l, a                                          ; $7aa4: $6f
	ldh a, [$7f]                                     ; $7aa5: $f0 $7f
	ld [hl-], a                                      ; $7aa7: $32
	sbc [hl]                                         ; $7aa8: $9e
	ld [$f07b], a                                    ; $7aa9: $ea $7b $f0
	sbc d                                            ; $7aac: $9a
	add b                                            ; $7aad: $80
	rst $38                                          ; $7aae: $ff
	ld a, [hl]                                       ; $7aaf: $7e
	sub a                                            ; $7ab0: $97
	ld c, e                                          ; $7ab1: $4b
	ld a, e                                          ; $7ab2: $7b
	di                                               ; $7ab3: $f3
	sbc e                                            ; $7ab4: $9b
	add b                                            ; $7ab5: $80
	inc bc                                           ; $7ab6: $03
	db $fd                                           ; $7ab7: $fd
	ld a, [hl]                                       ; $7ab8: $7e
	ld l, e                                          ; $7ab9: $6b
	xor b                                            ; $7aba: $a8
	sbc l                                            ; $7abb: $9d
	cp $f1                                           ; $7abc: $fe $f1
	ld l, e                                          ; $7abe: $6b
	ld d, b                                          ; $7abf: $50
	sbc [hl]                                         ; $7ac0: $9e
	ld a, c                                          ; $7ac1: $79
	ld [hl], a                                       ; $7ac2: $77
	ldh a, [$9b]                                     ; $7ac3: $f0 $9b
	ldh a, [$a1]                                     ; $7ac5: $f0 $a1
	inc bc                                           ; $7ac7: $03
	add [hl]                                         ; $7ac8: $86
	ld a, e                                          ; $7ac9: $7b
	ldh a, [$9a]                                     ; $7aca: $f0 $9a
	ld bc, $f0fe                                     ; $7acc: $01 $fe $f0
	ld bc, $7b02                                     ; $7acf: $01 $02 $7b
	ld c, [hl]                                       ; $7ad2: $4e
	sbc l                                            ; $7ad3: $9d
	xor e                                            ; $7ad4: $ab
	ld d, [hl]                                       ; $7ad5: $56
	ld a, e                                          ; $7ad6: $7b
	cp $d6                                           ; $7ad7: $fe $d6
	rst $38                                          ; $7ad9: $ff
	ld a, a                                          ; $7ada: $7f
	ld b, b                                          ; $7adb: $40
	sbc [hl]                                         ; $7adc: $9e
	xor a                                            ; $7add: $af
	ld a, d                                          ; $7ade: $7a
	ld [hl+], a                                      ; $7adf: $22

Call_047_7ae0:
	sbc $ff                                          ; $7ae0: $de $ff
	sbc h                                            ; $7ae2: $9c
	xor d                                            ; $7ae3: $aa
	ld d, b                                          ; $7ae4: $50
	add b                                            ; $7ae5: $80
	ld [hl], c                                       ; $7ae6: $71
	ret c                                            ; $7ae7: $d8

	ld a, d                                          ; $7ae8: $7a
	or b                                             ; $7ae9: $b0
	sbc [hl]                                         ; $7aea: $9e
	ei                                               ; $7aeb: $fb
	ld [hl], e                                       ; $7aec: $73
	ldh a, [rBCPD]                                   ; $7aed: $f0 $69
	ret z                                            ; $7aef: $c8

	ld a, a                                          ; $7af0: $7f
	ldh a, [$9d]                                     ; $7af1: $f0 $9d
	ld d, l                                          ; $7af3: $55
	ld [$f067], a                                    ; $7af4: $ea $67 $f0
	sbc l                                            ; $7af7: $9d

Jump_047_7af8:
	ld d, l                                          ; $7af8: $55
	ld a, [$f077]                                    ; $7af9: $fa $77 $f0
	sbc l                                            ; $7afc: $9d
	pop af                                           ; $7afd: $f1
	add b                                            ; $7afe: $80
	ld h, e                                          ; $7aff: $63
	ldh a, [rPCM12]                                  ; $7b00: $f0 $76
	ldh a, [$7f]                                     ; $7b02: $f0 $7f
	ld d, a                                          ; $7b04: $57
	sbc [hl]                                         ; $7b05: $9e
	ld a, $73                                        ; $7b06: $3e $73

Jump_047_7b08:
	ldh a, [$79]                                     ; $7b08: $f0 $79
	and a                                            ; $7b0a: $a7
	sub a                                            ; $7b0b: $97
	ld b, b                                          ; $7b0c: $40
	xor d                                            ; $7b0d: $aa
	rst $38                                          ; $7b0e: $ff
	xor a                                            ; $7b0f: $af
	ld a, [hl]                                       ; $7b10: $7e
	and b                                            ; $7b11: $a0
	ldh a, [$c0]                                     ; $7b12: $f0 $c0

jr_047_7b14:
	sbc $ff                                          ; $7b14: $de $ff
	sbc c                                            ; $7b16: $99
	ldh a, [rIE]                                     ; $7b17: $f0 $ff
	ld a, a                                          ; $7b19: $7f
	jr nz, jr_047_7b14                               ; $7b1a: $20 $f8

	nop                                              ; $7b1c: $00
	ld a, c                                          ; $7b1d: $79
	ld h, [hl]                                       ; $7b1e: $66
	sbc l                                            ; $7b1f: $9d
	ld [hl], e                                       ; $7b20: $73
	ld [hl], b                                       ; $7b21: $70
	ld l, a                                          ; $7b22: $6f
	cp b                                             ; $7b23: $b8
	sbc [hl]                                         ; $7b24: $9e
	adc a                                            ; $7b25: $8f
	ld a, e                                          ; $7b26: $7b
	ld c, l                                          ; $7b27: $4d
	sub a                                            ; $7b28: $97
	dec b                                            ; $7b29: $05
	xor d                                            ; $7b2a: $aa
	rst $38                                          ; $7b2b: $ff
	call nc, $1fff                                   ; $7b2c: $d4 $ff $1f
	ld a, a                                          ; $7b2f: $7f
	ld e, e                                          ; $7b30: $5b
	ld [hl], l                                       ; $7b31: $75
	xor l                                            ; $7b32: $ad
	sbc e                                            ; $7b33: $9b

jr_047_7b34:
	ld hl, sp-$10                                    ; $7b34: $f8 $f0
	jr nz, jr_047_7b34                               ; $7b36: $20 $fc

	ld [hl], a                                       ; $7b38: $77
	ret nz                                           ; $7b39: $c0

	ld h, e                                          ; $7b3a: $63
	ld [hl], a                                       ; $7b3b: $77
	ld l, e                                          ; $7b3c: $6b
	or b                                             ; $7b3d: $b0
	rla                                              ; $7b3e: $17
	ldh a, [$75]                                     ; $7b3f: $f0 $75
	ld a, b                                          ; $7b41: $78
	ld d, a                                          ; $7b42: $57
	ldh a, [rPCM34]                                  ; $7b43: $f0 $77
	ld sp, hl                                        ; $7b45: $f9
	sbc e                                            ; $7b46: $9b
	ld d, a                                          ; $7b47: $57
	xor d                                            ; $7b48: $aa
	ld d, h                                          ; $7b49: $54
	cpl                                              ; $7b4a: $2f
	ld [hl], e                                       ; $7b4b: $73
	ldh a, [hDisp0_OBP0]                                     ; $7b4c: $f0 $86
	ld bc, $0703                                     ; $7b4e: $01 $03 $07
	pop af                                           ; $7b51: $f1
	db $e3                                           ; $7b52: $e3
	rst SubAFromBC                                          ; $7b53: $e7
	sbc $e4                                          ; $7b54: $de $e4
	rrca                                             ; $7b56: $0f
	ld l, d                                          ; $7b57: $6a
	cp l                                             ; $7b58: $bd
	xor $dd                                          ; $7b59: $ee $dd
	cp l                                             ; $7b5b: $bd
	ld a, e                                          ; $7b5c: $7b
	ei                                               ; $7b5d: $fb
	rst FarCall                                          ; $7b5e: $f7
	rst FarCall                                          ; $7b5f: $f7
	rst GetHLinHL                                          ; $7b60: $cf
	ld l, e                                          ; $7b61: $6b
	cp h                                             ; $7b62: $bc
	xor d                                            ; $7b63: $aa
	ld b, l                                          ; $7b64: $45
	cp d                                             ; $7b65: $ba
	rst AddAOntoHL                                          ; $7b66: $ef
	ld h, c                                          ; $7b67: $61
	xor h                                            ; $7b68: $ac
	add c                                            ; $7b69: $81
	rst $38                                          ; $7b6a: $ff
	xor [hl]                                         ; $7b6b: $ae
	di                                               ; $7b6c: $f3
	ld a, [bc]                                       ; $7b6d: $0a
	dec b                                            ; $7b6e: $05
	cp d                                             ; $7b6f: $ba
	rst SubAFromDE                                          ; $7b70: $df
	xor d                                            ; $7b71: $aa
	dec d                                            ; $7b72: $15
	ld e, l                                          ; $7b73: $5d
	rst $38                                          ; $7b74: $ff
	push af                                          ; $7b75: $f5
	ld a, [$eff5]                                    ; $7b76: $fa $f5 $ef
	push de                                          ; $7b79: $d5
	ld [$dfb5], a                                    ; $7b7a: $ea $b5 $df
	xor b                                            ; $7b7d: $a8
	ld d, [hl]                                       ; $7b7e: $56
	pop hl                                           ; $7b7f: $e1
	sbc a                                            ; $7b80: $9f
	xor c                                            ; $7b81: $a9
	ld d, h                                          ; $7b82: $54
	ld a, a                                          ; $7b83: $7f
	rst AddAOntoHL                                          ; $7b84: $ef
	ld d, a                                          ; $7b85: $57
	xor e                                            ; $7b86: $ab
	ld a, a                                          ; $7b87: $7f
	ld a, d                                          ; $7b88: $7a
	db $e4                                           ; $7b89: $e4
	ld a, l                                          ; $7b8a: $7d
	ld l, c                                          ; $7b8b: $69
	sbc c                                            ; $7b8c: $99
	ld [hl], b                                       ; $7b8d: $70
	inc [hl]                                         ; $7b8e: $34
	adc d                                            ; $7b8f: $8a

Jump_047_7b90:
	ld a, a                                          ; $7b90: $7f
	ld d, l                                          ; $7b91: $55
	xor d                                            ; $7b92: $aa
	ld a, c                                          ; $7b93: $79
	ld h, b                                          ; $7b94: $60
	sbc l                                            ; $7b95: $9d
	ld hl, sp-$03                                    ; $7b96: $f8 $fd
	ld a, d                                          ; $7b98: $7a
	ld a, a                                          ; $7b99: $7f
	sbc l                                            ; $7b9a: $9d
	call z, Call_047_7478                            ; $7b9b: $cc $78 $74
	or $df                                           ; $7b9e: $f6 $df
	rst $38                                          ; $7ba0: $ff
	sbc [hl]                                         ; $7ba1: $9e
	add h                                            ; $7ba2: $84
	ld a, e                                          ; $7ba3: $7b
	ld hl, sp+$7e                                    ; $7ba4: $f8 $7e
	ld h, [hl]                                       ; $7ba6: $66
	ld a, [hl]                                       ; $7ba7: $7e
	ld c, b                                          ; $7ba8: $48
	ld a, [hl]                                       ; $7ba9: $7e
	add $7f                                          ; $7baa: $c6 $7f
	call c, $fe7b                                    ; $7bac: $dc $7b $fe
	ld a, a                                          ; $7baf: $7f
	ld l, d                                          ; $7bb0: $6a
	jp c, $9cfe                                      ; $7bb1: $da $fe $9c

	ld a, l                                          ; $7bb4: $7d
	ld a, [$7a75]                                    ; $7bb5: $fa $75 $7a
	ld [de], a                                       ; $7bb8: $12
	ld a, b                                          ; $7bb9: $78
	adc h                                            ; $7bba: $8c
	ld [hl], b                                       ; $7bbb: $70

Call_047_7bbc:
	add e                                            ; $7bbc: $83
	sub l                                            ; $7bbd: $95
	and b                                            ; $7bbe: $a0
	ld hl, sp+$3f                                    ; $7bbf: $f8 $3f
	ld a, [bc]                                       ; $7bc1: $0a
	inc b                                            ; $7bc2: $04
	ld bc, $c001                                     ; $7bc3: $01 $01 $c0
	ldh a, [c]                                       ; $7bc6: $f2
	ld e, d                                          ; $7bc7: $5a
	db $fc                                           ; $7bc8: $fc
	rst SubAFromDE                                          ; $7bc9: $df
	ld bc, $2599                                     ; $7bca: $01 $99 $25
	nop                                              ; $7bcd: $00
	inc d                                            ; $7bce: $14
	adc a                                            ; $7bcf: $8f
	ld e, [hl]                                       ; $7bd0: $5e
	db $fd                                           ; $7bd1: $fd
	ld a, d                                          ; $7bd2: $7a
	or b                                             ; $7bd3: $b0
	rst FarCall                                          ; $7bd4: $f7
	sbc c                                            ; $7bd5: $99
	ld b, b                                          ; $7bd6: $40
	add b                                            ; $7bd7: $80
	jp nz, $c880                                     ; $7bd8: $c2 $80 $c8

	xor b                                            ; $7bdb: $a8
	ld [hl], e                                       ; $7bdc: $73
	pop hl                                           ; $7bdd: $e1
	add b                                            ; $7bde: $80
	ld b, $05                                        ; $7bdf: $06 $05
	ld b, $01                                        ; $7be1: $06 $01
	inc b                                            ; $7be3: $04
	db $10                                           ; $7be4: $10
	ld b, b                                          ; $7be5: $40
	add c                                            ; $7be6: $81
	rlca                                             ; $7be7: $07
	rra                                              ; $7be8: $1f
	add hl, sp                                       ; $7be9: $39
	inc bc                                           ; $7bea: $03
	ld c, $39                                        ; $7beb: $0e $39
	and $98                                          ; $7bed: $e6 $98
	ld h, c                                          ; $7bef: $61
	add [hl]                                         ; $7bf0: $86
	rra                                              ; $7bf1: $1f
	ld [$8020], sp                                   ; $7bf2: $08 $20 $80
	nop                                              ; $7bf5: $00
	ret nz                                           ; $7bf6: $c0

	and a                                            ; $7bf7: $a7
	xor b                                            ; $7bf8: $a8
	xor e                                            ; $7bf9: $ab
	cp b                                             ; $7bfa: $b8
	ld h, [hl]                                       ; $7bfb: $66
	add e                                            ; $7bfc: $83
	nop                                              ; $7bfd: $00
	sub a                                            ; $7bfe: $97
	ld h, b                                          ; $7bff: $60
	xor b                                            ; $7c00: $a8
	scf                                              ; $7c01: $37
	scf                                              ; $7c02: $37
	ld bc, $0402                                     ; $7c03: $01 $02 $04
	ld a, b                                          ; $7c06: $78
	ld a, d                                          ; $7c07: $7a
	dec [hl]                                         ; $7c08: $35
	sbc d                                            ; $7c09: $9a
	cp $01                                           ; $7c0a: $fe $01
	ld [bc], a                                       ; $7c0c: $02
	adc h                                            ; $7c0d: $8c
	ld hl, sp+$7b                                    ; $7c0e: $f8 $7b
	ld [de], a                                       ; $7c10: $12
	sbc l                                            ; $7c11: $9d
	cp $05                                           ; $7c12: $fe $05
	ld a, c                                          ; $7c14: $79
	add l                                            ; $7c15: $85
	sbc d                                            ; $7c16: $9a
	inc e                                            ; $7c17: $1c
	xor a                                            ; $7c18: $af
	cpl                                              ; $7c19: $2f
	inc l                                            ; $7c1a: $2c
	ld [bc], a                                       ; $7c1b: $02
	cp $8c                                           ; $7c1c: $fe $8c
	jr nc, jr_047_7c4c                               ; $7c1e: $30 $2c

	db $e3                                           ; $7c20: $e3
	ld h, a                                          ; $7c21: $67
	rst $38                                          ; $7c22: $ff
	ld a, a                                          ; $7c23: $7f
	ld e, a                                          ; $7c24: $5f
	cpl                                              ; $7c25: $2f
	dec bc                                           ; $7c26: $0b
	dec b                                            ; $7c27: $05
	jp $00e1                                         ; $7c28: $c3 $e1 $00


	add b                                            ; $7c2b: $80
	jr nz, jr_047_7c3e                               ; $7c2c: $20 $10

	inc b                                            ; $7c2e: $04
	ld [bc], a                                       ; $7c2f: $02
	nop                                              ; $7c30: $00
	ld a, d                                          ; $7c31: $7a
	adc b                                            ; $7c32: $88
	sbc d                                            ; $7c33: $9a
	cp $55                                           ; $7c34: $fe $55
	xor b                                            ; $7c36: $a8
	ld d, b                                          ; $7c37: $50
	xor b                                            ; $7c38: $a8
	ld l, e                                          ; $7c39: $6b
	ld l, a                                          ; $7c3a: $6f
	ld a, e                                          ; $7c3b: $7b
	ld c, h                                          ; $7c3c: $4c
	sbc [hl]                                         ; $7c3d: $9e

jr_047_7c3e:
	push af                                          ; $7c3e: $f5
	ld a, e                                          ; $7c3f: $7b
	ld h, c                                          ; $7c40: $61
	sbc [hl]                                         ; $7c41: $9e
	ld b, c                                          ; $7c42: $41
	db $fc                                           ; $7c43: $fc
	sub d                                            ; $7c44: $92
	jr nz, jr_047_7c9b                               ; $7c45: $20 $54

	cp [hl]                                          ; $7c47: $be
	ld a, a                                          ; $7c48: $7f
	cp [hl]                                          ; $7c49: $be
	xor d                                            ; $7c4a: $aa
	ld d, h                                          ; $7c4b: $54

jr_047_7c4c:
	xor b                                            ; $7c4c: $a8
	ld d, a                                          ; $7c4d: $57
	and e                                            ; $7c4e: $a3
	ld b, a                                          ; $7c4f: $47
	ld [bc], a                                       ; $7c50: $02
	ld hl, $8ffd                                     ; $7c51: $21 $fd $8f
	ld [$7d18], sp                                   ; $7c54: $08 $18 $7d
	sbc $11                                          ; $7c57: $de $11
	cpl                                              ; $7c59: $2f
	ld e, $72                                        ; $7c5a: $1e $72
	ret nc                                           ; $7c5c: $d0

	ld [hl], b                                       ; $7c5d: $70
	rst SubAFromHL                                          ; $7c5e: $d7
	or h                                             ; $7c5f: $b4
	ld c, $13                                        ; $7c60: $0e $13
	ccf                                              ; $7c62: $3f
	inc a                                            ; $7c63: $3c
	cp $93                                           ; $7c64: $fe $93
	inc b                                            ; $7c66: $04
	rst $38                                          ; $7c67: $ff
	rst GetHLinHL                                          ; $7c68: $cf
	ld b, c                                          ; $7c69: $41
	inc bc                                           ; $7c6a: $03
	ld bc, $09fb                                     ; $7c6b: $01 $fb $09
	dec bc                                           ; $7c6e: $0b
	ld a, a                                          ; $7c6f: $7f
	ldh a, [$80]                                     ; $7c70: $f0 $80
	ld [hl], a                                       ; $7c72: $77
	sbc $9e                                          ; $7c73: $de $9e
	ld [$c474], sp                                   ; $7c75: $08 $74 $c4
	ld [hl], a                                       ; $7c78: $77
	cp $d8                                           ; $7c79: $fe $d8

Call_047_7c7b:
	rst $38                                          ; $7c7b: $ff
	rlca                                             ; $7c7c: $07

Jump_047_7c7d:
	ldh a, [$79]                                     ; $7c7d: $f0 $79
	inc d                                            ; $7c7f: $14
	ld a, e                                          ; $7c80: $7b
	cp $7d                                           ; $7c81: $fe $7d
	and b                                            ; $7c83: $a0
	sbc l                                            ; $7c84: $9d
	db $fc                                           ; $7c85: $fc
	ld a, [$fe73]                                    ; $7c86: $fa $73 $fe
	sub [hl]                                         ; $7c89: $96
	add e                                            ; $7c8a: $83
	db $fd                                           ; $7c8b: $fd
	db $fd                                           ; $7c8c: $fd
	xor l                                            ; $7c8d: $ad
	ld d, l                                          ; $7c8e: $55
	and l                                            ; $7c8f: $a5
	ld d, l                                          ; $7c90: $55
	add l                                            ; $7c91: $85
	rst $38                                          ; $7c92: $ff
	jp c, $9d03                                      ; $7c93: $da $03 $9d

	ld d, [hl]                                       ; $7c96: $56
	xor d                                            ; $7c97: $aa
	ld a, e                                          ; $7c98: $7b
	cp $9c                                           ; $7c99: $fe $9c

jr_047_7c9b:
	xor [hl]                                         ; $7c9b: $ae
	ld d, [hl]                                       ; $7c9c: $56
	xor [hl]                                         ; $7c9d: $ae
	reti                                             ; $7c9e: $d9


	cp $80                                           ; $7c9f: $fe $80
	ld b, b                                          ; $7ca1: $40
	ld d, b                                          ; $7ca2: $50
	xor b                                            ; $7ca3: $a8
	db $fc                                           ; $7ca4: $fc
	ld [$e8d5], a                                    ; $7ca5: $ea $d5 $e8
	db $f4                                           ; $7ca8: $f4
	cp b                                             ; $7ca9: $b8
	xor h                                            ; $7caa: $ac
	ld d, l                                          ; $7cab: $55
	ld [bc], a                                       ; $7cac: $02
	dec d                                            ; $7cad: $15
	ld a, [hl+]                                      ; $7cae: $2a
	rla                                              ; $7caf: $17
	adc e                                            ; $7cb0: $8b
	inc d                                            ; $7cb1: $14
	dec bc                                           ; $7cb2: $0b
	dec b                                            ; $7cb3: $05
	ld a, [bc]                                       ; $7cb4: $0a
	dec d                                            ; $7cb5: $15
	add hl, bc                                       ; $7cb6: $09
	ld a, [bc]                                       ; $7cb7: $0a
	dec d                                            ; $7cb8: $15
	dec bc                                           ; $7cb9: $0b
	inc d                                            ; $7cba: $14
	ld a, [hl-]                                      ; $7cbb: $3a
	or l                                             ; $7cbc: $b5
	ld l, e                                          ; $7cbd: $6b
	or a                                             ; $7cbe: $b7
	rst $38                                          ; $7cbf: $ff
	sbc [hl]                                         ; $7cc0: $9e
	rst $38                                          ; $7cc1: $ff
	ld a, d                                          ; $7cc2: $7a
	ld a, h                                          ; $7cc3: $7c
	sbc l                                            ; $7cc4: $9d
	db $fd                                           ; $7cc5: $fd
	ei                                               ; $7cc6: $fb
	ld a, d                                          ; $7cc7: $7a
	cp a                                             ; $7cc8: $bf
	db $fc                                           ; $7cc9: $fc
	sbc b                                            ; $7cca: $98
	add b                                            ; $7ccb: $80
	add c                                            ; $7ccc: $81
	ld b, e                                          ; $7ccd: $43
	ld e, b                                          ; $7cce: $58
	cp b                                             ; $7ccf: $b8
	ld a, b                                          ; $7cd0: $78
	ld a, b                                          ; $7cd1: $78
	sbc $f8                                          ; $7cd2: $de $f8
	sbc [hl]                                         ; $7cd4: $9e
	ld sp, hl                                        ; $7cd5: $f9
	ld sp, hl                                        ; $7cd6: $f9
	add b                                            ; $7cd7: $80
	di                                               ; $7cd8: $f3
	ret                                              ; $7cd9: $c9


	db $d3                                           ; $7cda: $d3
	db $e3                                           ; $7cdb: $e3
	sbc $bf                                          ; $7cdc: $de $bf
	ld a, $3c                                        ; $7cde: $3e $3c
	ld l, a                                          ; $7ce0: $6f
	ld c, l                                          ; $7ce1: $4d
	ld b, c                                          ; $7ce2: $41
	ld e, a                                          ; $7ce3: $5f
	ld a, a                                          ; $7ce4: $7f
	ccf                                              ; $7ce5: $3f
	ld a, [hl]                                       ; $7ce6: $7e
	db $fc                                           ; $7ce7: $fc
	ld l, d                                          ; $7ce8: $6a
	db $eb                                           ; $7ce9: $eb
	sbc e                                            ; $7cea: $9b
	sub b                                            ; $7ceb: $90
	ld h, b                                          ; $7cec: $60
	ld hl, sp-$4c                                    ; $7ced: $f8 $b4
	cp h                                             ; $7cef: $bc
	sub a                                            ; $7cf0: $97
	ld [hl], a                                       ; $7cf1: $77
	db $f4                                           ; $7cf2: $f4
	db $f4                                           ; $7cf3: $f4
	ld hl, sp-$34                                    ; $7cf4: $f8 $cc
	call c, $ec9e                                    ; $7cf6: $dc $9e $ec
	ld a, e                                          ; $7cf9: $7b
	ld h, a                                          ; $7cfa: $67

Call_047_7cfb:
	sbc d                                            ; $7cfb: $9a
	nop                                              ; $7cfc: $00
	ld [bc], a                                       ; $7cfd: $02
	dec b                                            ; $7cfe: $05
	ld [bc], a                                       ; $7cff: $02
	ld b, l                                          ; $7d00: $45
	ld l, e                                          ; $7d01: $6b
	cp [hl]                                          ; $7d02: $be
	sub d                                            ; $7d03: $92
	nop                                              ; $7d04: $00
	ld l, a                                          ; $7d05: $6f
	ld l, e                                          ; $7d06: $6b
	ld a, a                                          ; $7d07: $7f
	cp $87                                           ; $7d08: $fe $87
	add e                                            ; $7d0a: $83
	add e                                            ; $7d0b: $83
	add a                                            ; $7d0c: $87
	ld hl, $2127                                     ; $7d0d: $21 $27 $21
	add b                                            ; $7d10: $80
	ld a, e                                          ; $7d11: $7b
	xor c                                            ; $7d12: $a9
	ld a, h                                          ; $7d13: $7c
	db $eb                                           ; $7d14: $eb
	sub h                                            ; $7d15: $94
	ld h, c                                          ; $7d16: $61
	ld b, c                                          ; $7d17: $41
	or c                                             ; $7d18: $b1
	ld sp, hl                                        ; $7d19: $f9
	ld e, l                                          ; $7d1a: $5d
	xor a                                            ; $7d1b: $af
	ld e, a                                          ; $7d1c: $5f
	inc [hl]                                         ; $7d1d: $34
	db $f4                                           ; $7d1e: $f4
	ld h, h                                          ; $7d1f: $64
	xor h                                            ; $7d20: $ac
	db $dd                                           ; $7d21: $dd
	cp $9c                                           ; $7d22: $fe $9c
	add c                                            ; $7d24: $81
	adc d                                            ; $7d25: $8a
	or d                                             ; $7d26: $b2
	ld h, c                                          ; $7d27: $61
	and h                                            ; $7d28: $a4
	sub l                                            ; $7d29: $95
	ld bc, $5528                                     ; $7d2a: $01 $28 $55
	xor e                                            ; $7d2d: $ab
	ld a, a                                          ; $7d2e: $7f
	sub $ef                                          ; $7d2f: $d6 $ef
	rst SubAFromHL                                          ; $7d31: $d7
	xor a                                            ; $7d32: $af
	rst SubAFromDE                                          ; $7d33: $df
	ld l, a                                          ; $7d34: $6f
	ldh a, [$99]                                     ; $7d35: $f0 $99
	ld [$4685], sp                                   ; $7d37: $08 $85 $46
	and e                                            ; $7d3a: $a3
	ld a, c                                          ; $7d3b: $79
	cp $79                                           ; $7d3c: $fe $79
	db $eb                                           ; $7d3e: $eb
	ld a, a                                          ; $7d3f: $7f
	ld l, [hl]                                       ; $7d40: $6e
	ld a, h                                          ; $7d41: $7c
	ld h, b                                          ; $7d42: $60
	ld [hl], e                                       ; $7d43: $73
	rst SubAFromDE                                          ; $7d44: $df
	ld a, a                                          ; $7d45: $7f
	cp b                                             ; $7d46: $b8
	adc [hl]                                         ; $7d47: $8e
	inc d                                            ; $7d48: $14
	add b                                            ; $7d49: $80
	ld d, b                                          ; $7d4a: $50
	db $10                                           ; $7d4b: $10
	rla                                              ; $7d4c: $17
	ld d, $17                                        ; $7d4d: $16 $17
	add a                                            ; $7d4f: $87
	ld b, h                                          ; $7d50: $44
	ld [hl], h                                       ; $7d51: $74
	or a                                             ; $7d52: $b7
	ldh [$f0], a                                     ; $7d53: $e0 $f0
	db $e3                                           ; $7d55: $e3
	ldh a, [c]                                       ; $7d56: $f2
	jp nc, Jump_047_7b08                             ; $7d57: $d2 $08 $7b

	reti                                             ; $7d5a: $d9


	sub e                                            ; $7d5b: $93
	db $fc                                           ; $7d5c: $fc
	ld d, h                                          ; $7d5d: $54
	inc d                                            ; $7d5e: $14
	inc d                                            ; $7d5f: $14
	add hl, de                                       ; $7d60: $19
	di                                               ; $7d61: $f3
	ld bc, $053f                                     ; $7d62: $01 $3f $05
	ei                                               ; $7d65: $fb
	add hl, sp                                       ; $7d66: $39
	ld e, e                                          ; $7d67: $5b
	ld a, d                                          ; $7d68: $7a
	db $f4                                           ; $7d69: $f4
	sbc e                                            ; $7d6a: $9b
	and b                                            ; $7d6b: $a0
	ld d, b                                          ; $7d6c: $50
	or e                                             ; $7d6d: $b3
	ld d, a                                          ; $7d6e: $57
	ld a, e                                          ; $7d6f: $7b
	ld [hl], $99                                     ; $7d70: $36 $99
	rst $38                                          ; $7d72: $ff

jr_047_7d73:
	ld hl, sp-$09                                    ; $7d73: $f8 $f7
	db $f4                                           ; $7d75: $f4
	ldh a, [$f0]                                     ; $7d76: $f0 $f0
	ld a, e                                          ; $7d78: $7b
	ldh a, [$7c]                                     ; $7d79: $f0 $7c
	db $fc                                           ; $7d7b: $fc
	sbc h                                            ; $7d7c: $9c
	and d                                            ; $7d7d: $a2
	pop de                                           ; $7d7e: $d1
	and d                                            ; $7d7f: $a2
	ld [hl], b                                       ; $7d80: $70
	dec h                                            ; $7d81: $25
	ld a, [hl]                                       ; $7d82: $7e
	ld b, l                                          ; $7d83: $45

jr_047_7d84:
	sbc [hl]                                         ; $7d84: $9e
	ld e, a                                          ; $7d85: $5f
	ld [hl], a                                       ; $7d86: $77
	ldh a, [$9b]                                     ; $7d87: $f0 $9b
	ld e, [hl]                                       ; $7d89: $5e
	xor a                                            ; $7d8a: $af
	ld e, a                                          ; $7d8b: $5f
	xor a                                            ; $7d8c: $af
	ld [hl], e                                       ; $7d8d: $73
	ldh a, [$de]                                     ; $7d8e: $f0 $de
	rst $38                                          ; $7d90: $ff
	ld a, [hl]                                       ; $7d91: $7e
	pop af                                           ; $7d92: $f1
	sbc b                                            ; $7d93: $98
	ld d, a                                          ; $7d94: $57
	ld l, $57                                        ; $7d95: $2e $57
	cpl                                              ; $7d97: $2f

Call_047_7d98:
	ld d, a                                          ; $7d98: $57
	cpl                                              ; $7d99: $2f
	ld hl, sp+$74                                    ; $7d9a: $f8 $74
	rst SubAFromDE                                          ; $7d9c: $df
	sbc $7f                                          ; $7d9d: $de $7f
	sub l                                            ; $7d9f: $95
	rlca                                             ; $7da0: $07
	db $fd                                           ; $7da1: $fd
	ld b, e                                          ; $7da2: $43
	and c                                            ; $7da3: $a1
	ld b, e                                          ; $7da4: $43
	and c                                            ; $7da5: $a1
	ret nz                                           ; $7da6: $c0

	and c                                            ; $7da7: $a1
	ld bc, $dd03                                     ; $7da8: $01 $03 $dd
	rst $38                                          ; $7dab: $ff
	rst SubAFromDE                                          ; $7dac: $df
	cp $97                                           ; $7dad: $fe $97
	ld d, [hl]                                       ; $7daf: $56
	and [hl]                                         ; $7db0: $a6
	nop                                              ; $7db1: $00
	cp $46                                           ; $7db2: $fe $46
	and [hl]                                         ; $7db4: $a6
	ld b, [hl]                                       ; $7db5: $46
	and [hl]                                         ; $7db6: $a6
	ld [hl], a                                       ; $7db7: $77
	pop de                                           ; $7db8: $d1
	db $dd                                           ; $7db9: $dd
	xor $7b                                          ; $7dba: $ee $7b
	ld hl, sp-$67                                    ; $7dbc: $f8 $99
	ld b, $f3                                        ; $7dbe: $06 $f3
	ei                                               ; $7dc0: $fb
	di                                               ; $7dc1: $f3
	ld a, [$79c0]                                    ; $7dc2: $fa $c0 $79
	db $e3                                           ; $7dc5: $e3
	sbc d                                            ; $7dc6: $9a
	ldh [c], a                                       ; $7dc7: $e2
	ld b, b                                          ; $7dc8: $40
	and b                                            ; $7dc9: $a0
	ld h, b                                          ; $7dca: $60
	sbc a                                            ; $7dcb: $9f
	ld a, b                                          ; $7dcc: $78
	ld a, [$fedd]                                    ; $7dcd: $fa $dd $fe
	sbc [hl]                                         ; $7dd0: $9e
	ld e, $7b                                        ; $7dd1: $1e $7b
	ldh a, [$9b]                                     ; $7dd3: $f0 $9b
	ld a, [bc]                                       ; $7dd5: $0a
	inc d                                            ; $7dd6: $14
	ld a, [bc]                                       ; $7dd7: $0a
	inc b                                            ; $7dd8: $04
	ld a, e                                          ; $7dd9: $7b
	ldh [$98], a                                     ; $7dda: $e0 $98
	add b                                            ; $7ddc: $80
	rst GetHLinHL                                          ; $7ddd: $cf
	cp a                                             ; $7dde: $bf
	rst SubAFromDE                                          ; $7ddf: $df
	cp [hl]                                          ; $7de0: $be
	ld d, e                                          ; $7de1: $53
	ld [de], a                                       ; $7de2: $12
	ld a, c                                          ; $7de3: $79
	cp d                                             ; $7de4: $ba
	cp $80                                           ; $7de5: $fe $80
	db $fc                                           ; $7de7: $fc
	ld hl, sp+$1a                                    ; $7de8: $f8 $1a
	jr c, jr_047_7d84                                ; $7dea: $38 $98

	jr c, jr_047_7e46                                ; $7dec: $38 $58

	jr jr_047_7d73                                   ; $7dee: $18 $83

	add h                                            ; $7df0: $84
	ld bc, $2585                                     ; $7df1: $01 $85 $25
	dec h                                            ; $7df4: $25
	dec b                                            ; $7df5: $05
	ld b, l                                          ; $7df6: $45
	add hl, sp                                       ; $7df7: $39
	sbc [hl]                                         ; $7df8: $9e
	ld e, $1e                                        ; $7df9: $1e $1e
	ld d, $0a                                        ; $7dfb: $16 $0a
	ld c, $04                                        ; $7dfd: $0e $04
	add hl, sp                                       ; $7dff: $39
	ld a, a                                          ; $7e00: $7f
	pop af                                           ; $7e01: $f1
	ld sp, hl                                        ; $7e02: $f9
	ld sp, hl                                        ; $7e03: $f9
	db $fd                                           ; $7e04: $fd
	db $fd                                           ; $7e05: $fd
	sub h                                            ; $7e06: $94
	cp $34                                           ; $7e07: $fe $34
	add sp, -$2d                                     ; $7e09: $e8 $d3
	xor e                                            ; $7e0b: $ab
	rst SubAFromHL                                          ; $7e0c: $d7
	ld c, a                                          ; $7e0d: $4f
	dec bc                                           ; $7e0e: $0b
	rlca                                             ; $7e0f: $07
	call c, Call_047_7bbc                            ; $7e10: $dc $bc $7b
	sub d                                            ; $7e13: $92
	rst SubAFromDE                                          ; $7e14: $df
	add [hl]                                         ; $7e15: $86
	sbc [hl]                                         ; $7e16: $9e
	xor [hl]                                         ; $7e17: $ae
	ld a, e                                          ; $7e18: $7b
	ld h, c                                          ; $7e19: $61
	ld a, l                                          ; $7e1a: $7d
	ld c, [hl]                                       ; $7e1b: $4e
	sbc $40                                          ; $7e1c: $de $40
	ld [hl], h                                       ; $7e1e: $74
	sub [hl]                                         ; $7e1f: $96
	db $dd                                           ; $7e20: $dd
	ld a, a                                          ; $7e21: $7f
	add b                                            ; $7e22: $80
	rst $38                                          ; $7e23: $ff
	cp c                                             ; $7e24: $b9
	ld [de], a                                       ; $7e25: $12
	inc b                                            ; $7e26: $04
	ld [bc], a                                       ; $7e27: $02
	add hl, bc                                       ; $7e28: $09
	dec b                                            ; $7e29: $05
	ld de, $bc8f                                     ; $7e2a: $11 $8f $bc
	db $fc                                           ; $7e2d: $fc
	ld sp, hl                                        ; $7e2e: $f9
	ld sp, hl                                        ; $7e2f: $f9
	ldh a, [c]                                       ; $7e30: $f2
	ldh a, [c]                                       ; $7e31: $f2
	db $e4                                           ; $7e32: $e4
	cp a                                             ; $7e33: $bf
	db $fd                                           ; $7e34: $fd
	db $fd                                           ; $7e35: $fd
	reti                                             ; $7e36: $d9


	pop af                                           ; $7e37: $f1
	pop af                                           ; $7e38: $f1
	and c                                            ; $7e39: $a1
	and c                                            ; $7e3a: $a1
	cp $f6                                           ; $7e3b: $fe $f6
	or $fa                                           ; $7e3d: $f6 $fa
	ld hl, sp-$10                                    ; $7e3f: $f8 $f0
	ldh a, [$8e]                                     ; $7e41: $f0 $8e
	ldh [rIE], a                                     ; $7e43: $e0 $ff
	rst $38                                          ; $7e45: $ff

jr_047_7e46:
	db $fc                                           ; $7e46: $fc
	db $fc                                           ; $7e47: $fc
	cp $fc                                           ; $7e48: $fe $fc
	db $fd                                           ; $7e4a: $fd
	db $fd                                           ; $7e4b: $fd
	rst SubAFromDE                                          ; $7e4c: $df
	cp a                                             ; $7e4d: $bf
	ret c                                            ; $7e4e: $d8

	ld a, [$e9fe]                                    ; $7e4f: $fa $fe $e9
	push de                                          ; $7e52: $d5
	jp hl                                            ; $7e53: $e9


	ld [hl], a                                       ; $7e54: $77
	ld e, b                                          ; $7e55: $58
	rst SubAFromDE                                          ; $7e56: $df
	ld a, a                                          ; $7e57: $7f
	rst SubAFromDE                                          ; $7e58: $df
	ccf                                              ; $7e59: $3f
	add a                                            ; $7e5a: $87
	rst JumpTable                                          ; $7e5b: $c7
	add e                                            ; $7e5c: $83
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	ccf                                              ; $7e5f: $3f
	dec hl                                           ; $7e60: $2b
	dec d                                            ; $7e61: $15
	xor d                                            ; $7e62: $aa
	ld [$e87f], a                                    ; $7e63: $ea $7f $e8
	ld a, [$424d]                                    ; $7e66: $fa $4d $42
	xor c                                            ; $7e69: $a9
	rst JumpTable                                          ; $7e6a: $c7
	rst $38                                          ; $7e6b: $ff
	ld a, a                                          ; $7e6c: $7f
	ret c                                            ; $7e6d: $d8

	cp a                                             ; $7e6e: $bf
	rst SubAFromDE                                          ; $7e6f: $df
	rst GetHLinHL                                          ; $7e70: $cf
	rst $38                                          ; $7e71: $ff
	xor $7b                                          ; $7e72: $ee $7b
	rlca                                             ; $7e74: $07
	sub d                                            ; $7e75: $92
	sub a                                            ; $7e76: $97
	cpl                                              ; $7e77: $2f
	rst SubAFromDE                                          ; $7e78: $df
	ld c, a                                          ; $7e79: $4f
	cp a                                             ; $7e7a: $bf
	or d                                             ; $7e7b: $b2
	ldh a, [c]                                       ; $7e7c: $f2
	ld a, d                                          ; $7e7d: $7a
	ldh a, [c]                                       ; $7e7e: $f2
	ldh a, [c]                                       ; $7e7f: $f2
	ld [$f292], a                                    ; $7e80: $ea $92 $f2
	call c, $8714                                    ; $7e83: $dc $14 $87
	and h                                            ; $7e86: $a4
	ld d, h                                          ; $7e87: $54
	and h                                            ; $7e88: $a4
	cp c                                             ; $7e89: $b9
	ld e, e                                          ; $7e8a: $5b
	cp c                                             ; $7e8b: $b9
	ld a, e                                          ; $7e8c: $7b
	ld sp, hl                                        ; $7e8d: $f9
	ei                                               ; $7e8e: $fb
	ld sp, hl                                        ; $7e8f: $f9
	ei                                               ; $7e90: $fb
	ld d, a                                          ; $7e91: $57
	or a                                             ; $7e92: $b7
	ld d, l                                          ; $7e93: $55
	or d                                             ; $7e94: $b2
	ld d, h                                          ; $7e95: $54
	or b                                             ; $7e96: $b0
	ld d, l                                          ; $7e97: $55
	or d                                             ; $7e98: $b2
	ldh a, [$f0]                                     ; $7e99: $f0 $f0
	ldh a, [c]                                       ; $7e9b: $f2
	push af                                          ; $7e9c: $f5
	di                                               ; $7e9d: $f3
	sbc $f7                                          ; $7e9e: $de $f7
	sbc d                                            ; $7ea0: $9a
	push de                                          ; $7ea1: $d5
	and d                                            ; $7ea2: $a2
	ld b, l                                          ; $7ea3: $45
	adc d                                            ; $7ea4: $8a
	dec d                                            ; $7ea5: $15
	ld a, c                                          ; $7ea6: $79
	and b                                            ; $7ea7: $a0
	ld a, [hl]                                       ; $7ea8: $7e
	add $9d                                          ; $7ea9: $c6 $9d
	cp a                                             ; $7eab: $bf
	ld a, a                                          ; $7eac: $7f
	db $dd                                           ; $7ead: $dd
	rst $38                                          ; $7eae: $ff
	ld a, a                                          ; $7eaf: $7f
	ld sp, hl                                        ; $7eb0: $f9
	ld l, e                                          ; $7eb1: $6b
	rst FarCall                                          ; $7eb2: $f7
	jp c, $7eff                                      ; $7eb3: $da $ff $7e

	add $9d                                          ; $7eb6: $c6 $9d
	ld d, b                                          ; $7eb8: $50
	jr z, jr_047_7f32                                ; $7eb9: $28 $77

	cp $df                                           ; $7ebb: $fe $df
	ld a, a                                          ; $7ebd: $7f
	sbc [hl]                                         ; $7ebe: $9e
	ld a, b                                          ; $7ebf: $78

Call_047_7ec0:
	db $dd                                           ; $7ec0: $dd
	ld a, a                                          ; $7ec1: $7f
	adc e                                            ; $7ec2: $8b
	ld a, [hl]                                       ; $7ec3: $7e
	ret nz                                           ; $7ec4: $c0

	ldh [c], a                                       ; $7ec5: $e2
	nop                                              ; $7ec6: $00
	call nz, Call_047_4840                           ; $7ec7: $c4 $40 $48
	ld b, b                                          ; $7eca: $40
	ld b, b                                          ; $7ecb: $40
	db $fd                                           ; $7ecc: $fd
	db $fd                                           ; $7ecd: $fd
	nop                                              ; $7ece: $00
	ld a, [$2434]                                    ; $7ecf: $fa $34 $24
	jr z, @+$2a                                      ; $7ed2: $28 $28

	ld b, [hl]                                       ; $7ed4: $46
	ld b, [hl]                                       ; $7ed5: $46
	ld b, a                                          ; $7ed6: $47
	ld a, e                                          ; $7ed7: $7b
	db $fd                                           ; $7ed8: $fd
	sbc l                                            ; $7ed9: $9d
	ld b, a                                          ; $7eda: $47
	ld l, $da                                        ; $7edb: $2e $da
	xor $95                                          ; $7edd: $ee $95
	call nz, $faf3                                   ; $7edf: $c4 $f3 $fa
	ld d, e                                          ; $7ee2: $53
	ld [bc], a                                       ; $7ee3: $02
	xor d                                            ; $7ee4: $aa
	ei                                               ; $7ee5: $fb
	ld a, [$c003]                                    ; $7ee6: $fa $03 $c0
	ld a, c                                          ; $7ee9: $79
	ld de, $f9de                                     ; $7eea: $11 $de $f9
	sub a                                            ; $7eed: $97
	ld bc, $aa54                                     ; $7eee: $01 $54 $aa
	ld d, h                                          ; $7ef1: $54
	nop                                              ; $7ef2: $00
	xor d                                            ; $7ef3: $aa
	cp $fe                                           ; $7ef4: $fe $fe
	ld [hl], l                                       ; $7ef6: $75
	inc bc                                           ; $7ef7: $03
	ld a, [hl]                                       ; $7ef8: $7e
	sub a                                            ; $7ef9: $97
	rst SubAFromDE                                          ; $7efa: $df
	cp $96                                           ; $7efb: $fe $96
	nop                                              ; $7efd: $00

Call_047_7efe:
	sbc $bc                                          ; $7efe: $de $bc
	db $dd                                           ; $7f00: $dd
	add b                                            ; $7f01: $80
	xor e                                            ; $7f02: $ab
	ld sp, hl                                        ; $7f03: $f9
	db $eb                                           ; $7f04: $eb
	ld [$1276], a                                    ; $7f05: $ea $76 $12
	adc a                                            ; $7f08: $8f
	ld a, c                                          ; $7f09: $79
	ld a, e                                          ; $7f0a: $7b
	ld a, e                                          ; $7f0b: $7b
	ld b, d                                          ; $7f0c: $42
	ret c                                            ; $7f0d: $d8

	ld e, d                                          ; $7f0e: $5a
	call c, Call_047_405d                            ; $7f0f: $dc $5d $40
	ccf                                              ; $7f12: $3f
	ccf                                              ; $7f13: $3f
	add b                                            ; $7f14: $80
	ld b, l                                          ; $7f15: $45
	add h                                            ; $7f16: $84
	add d                                            ; $7f17: $82
	add d                                            ; $7f18: $82
	sbc $9f                                          ; $7f19: $de $9f
	ld a, h                                          ; $7f1b: $7c
	rst GetHLinHL                                          ; $7f1c: $cf
	add [hl]                                         ; $7f1d: $86
	dec b                                            ; $7f1e: $05
	rlca                                             ; $7f1f: $07
	ld [bc], a                                       ; $7f20: $02
	adc [hl]                                         ; $7f21: $8e
	rst $38                                          ; $7f22: $ff
	ldh a, [c]                                       ; $7f23: $f2
	rrca                                             ; $7f24: $0f
	db $fc                                           ; $7f25: $fc
	ld hl, sp-$07                                    ; $7f26: $f8 $f9
	ld a, e                                          ; $7f28: $7b
	dec sp                                           ; $7f29: $3b
	rst FarCall                                          ; $7f2a: $f7

Call_047_7f2b:
	ld sp, hl                                        ; $7f2b: $f9
	ld e, $8b                                        ; $7f2c: $1e $8b
	add a                                            ; $7f2e: $87
	add e                                            ; $7f2f: $83
	add a                                            ; $7f30: $87
	adc a                                            ; $7f31: $8f

jr_047_7f32:
	add a                                            ; $7f32: $87
	sbc a                                            ; $7f33: $9f
	db $fd                                           ; $7f34: $fd
	and [hl]                                         ; $7f35: $a6
	xor [hl]                                         ; $7f36: $ae
	ld a, e                                          ; $7f37: $7b
	cp $9a                                           ; $7f38: $fe $9a
	xor a                                            ; $7f3a: $af
	and l                                            ; $7f3b: $a5
	ld a, c                                          ; $7f3c: $79
	ld b, b                                          ; $7f3d: $40
	ld b, b                                          ; $7f3e: $40
	sbc $c0                                          ; $7f3f: $de $c0
	rst SubAFromDE                                          ; $7f41: $df
	rst $38                                          ; $7f42: $ff
	sbc [hl]                                         ; $7f43: $9e
	ret nz                                           ; $7f44: $c0

	ld a, d                                          ; $7f45: $7a
	add $dd                                          ; $7f46: $c6 $dd
	rst $38                                          ; $7f48: $ff
	sub c                                            ; $7f49: $91
	ret nz                                           ; $7f4a: $c0

	ld [$1020], sp                                   ; $7f4b: $08 $20 $10
	ld b, b                                          ; $7f4e: $40
	cpl                                              ; $7f4f: $2f
	rst $38                                          ; $7f50: $ff
	cp $00                                           ; $7f51: $fe $00
	push hl                                          ; $7f53: $e5
	ret                                              ; $7f54: $c9


	ret                                              ; $7f55: $c9


	sub b                                            ; $7f56: $90
	sub b                                            ; $7f57: $90
	ld a, d                                          ; $7f58: $7a
	db $e3                                           ; $7f59: $e3
	add a                                            ; $7f5a: $87
	ldh [$c0], a                                     ; $7f5b: $e0 $c0
	pop bc                                           ; $7f5d: $c1
	pop bc                                           ; $7f5e: $c1
	jp $efdf                                         ; $7f5f: $c3 $df $ef


	nop                                              ; $7f62: $00
	pop hl                                           ; $7f63: $e1
	pop hl                                           ; $7f64: $e1
	jp $c5c2                                         ; $7f65: $c3 $c2 $c5


	ld a, a                                          ; $7f68: $7f
	rst $38                                          ; $7f69: $ff
	nop                                              ; $7f6a: $00
	push af                                          ; $7f6b: $f5
	ld sp, hl                                        ; $7f6c: $f9
	ld d, l                                          ; $7f6d: $55
	xor c                                            ; $7f6e: $a9
	ld d, l                                          ; $7f6f: $55
	db $fd                                           ; $7f70: $fd
	db $fd                                           ; $7f71: $fd
	ld bc, $fdda                                     ; $7f72: $01 $da $fd
	add b                                            ; $7f75: $80
	ld bc, $9f9f                                     ; $7f76: $01 $9f $9f
	ld c, a                                          ; $7f79: $4f
	rrca                                             ; $7f7a: $0f
	ld l, $4e                                        ; $7f7b: $2e $4e
	ld c, h                                          ; $7f7d: $4c
	ld c, [hl]                                       ; $7f7e: $4e
	sub l                                            ; $7f7f: $95
	ld c, e                                          ; $7f80: $4b
	ld b, l                                          ; $7f81: $45
	dec hl                                           ; $7f82: $2b
	ld h, h                                          ; $7f83: $64
	ld l, [hl]                                       ; $7f84: $6e
	ld l, h                                          ; $7f85: $6c
	ld c, [hl]                                       ; $7f86: $4e
	ld a, [hl]                                       ; $7f87: $7e
	dec a                                            ; $7f88: $3d
	ld a, $ad                                        ; $7f89: $3e $ad
	ld a, [$e75f]                                    ; $7f8b: $fa $5f $e7
	ei                                               ; $7f8e: $fb
	dec l                                            ; $7f8f: $2d
	inc de                                           ; $7f90: $13
	add hl, de                                       ; $7f91: $19
	ld a, $e7                                        ; $7f92: $3e $e7
	ld a, c                                          ; $7f94: $79
	add l                                            ; $7f95: $85
	sbc a                                            ; $7f96: $9f
	rst JumpTable                                          ; $7f97: $c7
	sub a                                            ; $7f98: $97
	ld l, a                                          ; $7f99: $6f
	cp a                                             ; $7f9a: $bf
	rst SubAFromHL                                          ; $7f9b: $d7
	xor e                                            ; $7f9c: $ab
	call z, $1ffc                                    ; $7f9d: $cc $fc $1f
	ld h, d                                          ; $7fa0: $62
	or d                                             ; $7fa1: $b2
	ldh a, [c]                                       ; $7fa2: $f2
	ld a, e                                          ; $7fa3: $7b
	db $dd                                           ; $7fa4: $dd
	or h                                             ; $7fa5: $b4
	db $ec                                           ; $7fa6: $ec
	dec sp                                           ; $7fa7: $3b
	ld d, h                                          ; $7fa8: $54
	and h                                            ; $7fa9: $a4
	db $f4                                           ; $7faa: $f4
	db $e4                                           ; $7fab: $e4
	db $f4                                           ; $7fac: $f4
	ld h, h                                          ; $7fad: $64
	inc d                                            ; $7fae: $14
	db $fc                                           ; $7faf: $fc
	halt                                             ; $7fb0: $76
	call nz, $fe7f                                   ; $7fb1: $c4 $7f $fe
	sub l                                            ; $7fb4: $95
	add hl, sp                                       ; $7fb5: $39
	ei                                               ; $7fb6: $fb
	ld d, l                                          ; $7fb7: $55
	or [hl]                                          ; $7fb8: $b6
	ld d, l                                          ; $7fb9: $55
	or a                                             ; $7fba: $b7
	ld d, a                                          ; $7fbb: $57
	or a                                             ; $7fbc: $b7
	ld d, b                                          ; $7fbd: $50
	cp a                                             ; $7fbe: $bf
	db $db                                           ; $7fbf: $db
	rst FarCall                                          ; $7fc0: $f7
	ld a, l                                          ; $7fc1: $7d
	xor d                                            ; $7fc2: $aa
	sbc l                                            ; $7fc3: $9d
	ld d, a                                          ; $7fc4: $57
	xor a                                            ; $7fc5: $af
	ld [hl], a                                       ; $7fc6: $77
	ld [hl], a                                       ; $7fc7: $77
	ld [hl], c                                       ; $7fc8: $71
	sub l                                            ; $7fc9: $95
	inc sp                                           ; $7fca: $33
	ld hl, sp+$6e                                    ; $7fcb: $f8 $6e
	jp nz, Jump_047_529b                             ; $7fcd: $c2 $9b $52

	xor e                                            ; $7fd0: $ab
	ld a, l                                          ; $7fd1: $7d
	ld a, d                                          ; $7fd2: $7a
	ld [hl], a                                       ; $7fd3: $77
	cp $92                                           ; $7fd4: $fe $92
	db $fd                                           ; $7fd6: $fd
	ld hl, sp+$48                                    ; $7fd7: $f8 $48
	ld b, d                                          ; $7fd9: $42
	ld b, h                                          ; $7fda: $44
	ld b, c                                          ; $7fdb: $41
	ld b, b                                          ; $7fdc: $40
	ld b, b                                          ; $7fdd: $40
	ld a, a                                          ; $7fde: $7f
	ret nz                                           ; $7fdf: $c0

	inc b                                            ; $7fe0: $04
	inc h                                            ; $7fe1: $24
	inc bc                                           ; $7fe2: $03
	cp $9d                                           ; $7fe3: $fe $9d
	ccf                                              ; $7fe5: $3f
	ret nz                                           ; $7fe6: $c0

	ld a, c                                          ; $7fe7: $79
	cp e                                             ; $7fe8: $bb
	ld [hl], c                                       ; $7fe9: $71
	cp b                                             ; $7fea: $b8
	sbc [hl]                                         ; $7feb: $9e
	db $10                                           ; $7fec: $10
	reti                                             ; $7fed: $d9


	rst $38                                          ; $7fee: $ff
	ld l, e                                          ; $7fef: $6b
	ldh a, [$79]                                     ; $7ff0: $f0 $79
	sub a                                            ; $7ff2: $97
	ld d, e                                          ; $7ff3: $53
	ldh a, [$9e]                                     ; $7ff4: $f0 $9e
	ld bc, $ffda                                     ; $7ff6: $01 $da $ff
	sbc e                                            ; $7ff9: $9b
	ld a, [$0202]                                    ; $7ffa: $fa $02 $02

Call_047_7ffd:
	ei                                               ; $7ffd: $fb
	sbc $02                                          ; $7ffe: $de $02
