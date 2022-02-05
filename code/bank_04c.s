; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

	rst SubAFromBC                                          ; $4000: $e7
	db $fc                                           ; $4001: $fc
	cp $7e                                           ; $4002: $fe $7e
	call c, $8ffe                                    ; $4004: $dc $fe $8f
	ld e, a                                          ; $4007: $5f
	ld h, c                                          ; $4008: $61
	pop bc                                           ; $4009: $c1
	dec l                                            ; $400a: $2d
	dec c                                            ; $400b: $0d
	inc bc                                           ; $400c: $03
	dec b                                            ; $400d: $05
	dec e                                            ; $400e: $1d
	add b                                            ; $400f: $80
	add b                                            ; $4010: $80
	db $20, $c2                                      ; $4011: $20 $c2
	cp $fc                                           ; $4013: $fe $fc
	cp $fe                                           ; $4015: $fe $fe
	ld [hl], l                                       ; $4017: $75
	add e                                            ; $4018: $83
	ld [hl], e                                       ; $4019: $73
	db $fd                                           ; $401a: $fd
	ld e, a                                          ; $401b: $5f
	ld hl, sp-$64                                    ; $401c: $f8 $9c
	pop hl                                           ; $401e: $e1
	ld b, c                                          ; $401f: $41
	ret nz                                           ; $4020: $c0

	ld a, e                                          ; $4021: $7b
	ld c, e                                          ; $4022: $4b
	ld a, e                                          ; $4023: $7b
	ld hl, sp-$63                                    ; $4024: $f8 $9d
	ld h, c                                          ; $4026: $61
	ldh [$79], a                                     ; $4027: $e0 $79
	sbc a                                            ; $4029: $9f
	ld a, [hl]                                       ; $402a: $7e
	sbc l                                            ; $402b: $9d
	sbc h                                            ; $402c: $9c
	ldh [$e3], a                                     ; $402d: $e0 $e3
	ld b, b                                          ; $402f: $40
	ld [hl], a                                       ; $4030: $77
	ldh a, [$67]                                     ; $4031: $f0 $67
	ld hl, sp+$7f                                    ; $4033: $f8 $7f
	db $db                                           ; $4035: $db
	sbc l                                            ; $4036: $9d
	pop af                                           ; $4037: $f1
	inc bc                                           ; $4038: $03
	ld l, l                                          ; $4039: $6d
	ld c, e                                          ; $403a: $4b
	ld [hl], a                                       ; $403b: $77
	ld hl, sp+$7b                                    ; $403c: $f8 $7b
	ld e, c                                          ; $403e: $59
	sbc d                                            ; $403f: $9a
	db $e3                                           ; $4040: $e3
	rst $38                                          ; $4041: $ff
	inc e                                            ; $4042: $1c
	inc e                                            ; $4043: $1c
	inc c                                            ; $4044: $0c

jr_04c_4045:
	reti                                             ; $4045: $d9


	rst $38                                          ; $4046: $ff
	sub a                                            ; $4047: $97
	ld sp, hl                                        ; $4048: $f9
	db $fd                                           ; $4049: $fd
	ld sp, hl                                        ; $404a: $f9
	db $dd                                           ; $404b: $dd
	reti                                             ; $404c: $d9


	ld sp, hl                                        ; $404d: $f9
	ld hl, sp-$3e                                    ; $404e: $f8 $c2
	ld a, e                                          ; $4050: $7b
	inc [hl]                                         ; $4051: $34
	ld [hl], a                                       ; $4052: $77
	ld sp, $f17f                                     ; $4053: $31 $7f $f1
	sbc [hl]                                         ; $4056: $9e
	or $78                                           ; $4057: $f6 $78
	adc l                                            ; $4059: $8d
	sbc h                                            ; $405a: $9c
	ld bc, $b88e                                     ; $405b: $01 $8e $b8
	db $db                                           ; $405e: $db
	rst $38                                          ; $405f: $ff
	ld a, a                                          ; $4060: $7f
	dec sp                                           ; $4061: $3b
	sbc h                                            ; $4062: $9c
	add hl, sp                                       ; $4063: $39
	inc bc                                           ; $4064: $03
	ld sp, $7f78                                     ; $4065: $31 $78 $7f
	sbc l                                            ; $4068: $9d
	ld h, b                                          ; $4069: $60
	jr nc, jr_04c_4045                               ; $406a: $30 $d9

	rst $38                                          ; $406c: $ff
	sbc d                                            ; $406d: $9a
	push af                                          ; $406e: $f5
	dec l                                            ; $406f: $2d
	dec c                                            ; $4070: $0d
	dec e                                            ; $4071: $1d
	dec sp                                           ; $4072: $3b
	sbc $04                                          ; $4073: $de $04
	call c, $deff                                    ; $4075: $dc $ff $de
	ei                                               ; $4078: $fb
	add a                                            ; $4079: $87
	cp $ae                                           ; $407a: $fe $ae
	ldh a, [c]                                       ; $407c: $f2
	set 1, [hl]                                      ; $407d: $cb $ce
	add d                                            ; $407f: $82
	adc d                                            ; $4080: $8a
	cp d                                             ; $4081: $ba
	dec [hl]                                         ; $4082: $35
	ld [hl], l                                       ; $4083: $75
	ld [hl], l                                       ; $4084: $75
	or l                                             ; $4085: $b5
	ld [hl], a                                       ; $4086: $77
	ld [hl], l                                       ; $4087: $75
	ld [hl], l                                       ; $4088: $75
	ld h, a                                          ; $4089: $67
	adc [hl]                                         ; $408a: $8e
	sub $fe                                          ; $408b: $d6 $fe
	db $fc                                           ; $408d: $fc
	ret z                                            ; $408e: $c8

	ld a, b                                          ; $408f: $78
	inc de                                           ; $4090: $13
	ld bc, $4862                                     ; $4091: $01 $62 $48

Call_04c_4094:
	sbc b                                            ; $4094: $98
	ld [de], a                                       ; $4095: $12
	ld de, $1f20                                     ; $4096: $11 $20 $1f
	rrca                                             ; $4099: $0f
	rlca                                             ; $409a: $07
	db $e3                                           ; $409b: $e3
	sbc $ff                                          ; $409c: $de $ff
	sub d                                            ; $409e: $92
	rst SubAFromDE                                          ; $409f: $df
	ldh [$f0], a                                     ; $40a0: $e0 $f0
	ld hl, sp-$04                                    ; $40a2: $f8 $fc
	ld a, a                                          ; $40a4: $7f
	rst $38                                          ; $40a5: $ff
	add e                                            ; $40a6: $83
	add a                                            ; $40a7: $87

Call_04c_40a8:
	inc b                                            ; $40a8: $04
	add l                                            ; $40a9: $85
	db $fc                                           ; $40aa: $fc
	cp $dc                                           ; $40ab: $fe $dc
	ei                                               ; $40ad: $fb
	sub h                                            ; $40ae: $94
	ld a, e                                          ; $40af: $7b
	inc bc                                           ; $40b0: $03
	ld bc, $fefc                                     ; $40b1: $01 $fc $fe
	halt                                             ; $40b4: $76
	add $de                                          ; $40b5: $c6 $de
	rst $38                                          ; $40b7: $ff
	cp a                                             ; $40b8: $bf
	ret nz                                           ; $40b9: $c0

	reti                                             ; $40ba: $d9


	rst $38                                          ; $40bb: $ff
	ld a, [hl]                                       ; $40bc: $7e
	ld e, d                                          ; $40bd: $5a
	sbc d                                            ; $40be: $9a
	rrca                                             ; $40bf: $0f
	ld [$a030], sp                                   ; $40c0: $08 $30 $a0
	add b                                            ; $40c3: $80
	ld h, d                                          ; $40c4: $62
	ld [$f97e], sp                                   ; $40c5: $08 $7e $f9
	sbc c                                            ; $40c8: $99
	ccf                                              ; $40c9: $3f
	or e                                             ; $40ca: $b3
	ld [hl], e                                       ; $40cb: $73
	ld a, [hl]                                       ; $40cc: $7e
	ld l, a                                          ; $40cd: $6f
	push de                                          ; $40ce: $d5
	ld a, e                                          ; $40cf: $7b
	or $96                                           ; $40d0: $f6 $96
	or $f2                                           ; $40d2: $f6 $f2
	rst $38                                          ; $40d4: $ff
	rst JumpTable                                          ; $40d5: $c7
	add b                                            ; $40d6: $80
	adc c                                            ; $40d7: $89
	db $e3                                           ; $40d8: $e3
	ld h, c                                          ; $40d9: $61
	xor $77                                          ; $40da: $ee $77
	or h                                             ; $40dc: $b4
	jp c, $96ff                                      ; $40dd: $da $ff $96

	cp a                                             ; $40e0: $bf
	db $fd                                           ; $40e1: $fd
	rst $38                                          ; $40e2: $ff
	rst $38                                          ; $40e3: $ff
	rra                                              ; $40e4: $1f
	ccf                                              ; $40e5: $3f
	ccf                                              ; $40e6: $3f
	rst AddAOntoHL                                          ; $40e7: $ef
	and a                                            ; $40e8: $a7
	ld a, e                                          ; $40e9: $7b
	ld hl, sp-$25                                    ; $40ea: $f8 $db
	rst $38                                          ; $40ec: $ff
	rst SubAFromDE                                          ; $40ed: $df
	db $fd                                           ; $40ee: $fd
	sbc d                                            ; $40ef: $9a
	cp l                                             ; $40f0: $bd
	rst $38                                          ; $40f1: $ff
	ld l, a                                          ; $40f2: $6f
	add $de                                          ; $40f3: $c6 $de
	jp c, $96fe                                      ; $40f5: $da $fe $96

	rst $38                                          ; $40f8: $ff
	ld a, [hl]                                       ; $40f9: $7e
	ccf                                              ; $40fa: $3f
	cp [hl]                                          ; $40fb: $be

jr_04c_40fc:
	ld a, [hl]                                       ; $40fc: $7e
	ld e, a                                          ; $40fd: $5f
	ld a, [hl]                                       ; $40fe: $7e
	ld a, [hl]                                       ; $40ff: $7e
	ld c, a                                          ; $4100: $4f
	db $dd                                           ; $4101: $dd
	ld a, a                                          ; $4102: $7f
	ld [hl], a                                       ; $4103: $77
	ret nc                                           ; $4104: $d0

	sbc b                                            ; $4105: $98
	add b                                            ; $4106: $80
	ld b, $00                                        ; $4107: $06 $00
	nop                                              ; $4109: $00
	inc a                                            ; $410a: $3c
	inc a                                            ; $410b: $3c
	inc e                                            ; $410c: $1c
	ld l, [hl]                                       ; $410d: $6e
	ld h, c                                          ; $410e: $61
	rst SubAFromDE                                          ; $410f: $df
	rst $38                                          ; $4110: $ff
	sub e                                            ; $4111: $93
	pop bc                                           ; $4112: $c1
	add hl, de                                       ; $4113: $19
	add hl, sp                                       ; $4114: $39
	dec c                                            ; $4115: $0d
	inc c                                            ; $4116: $0c
	ld a, [bc]                                       ; $4117: $0a
	ld c, b                                          ; $4118: $48
	jp z, $ffcb                                      ; $4119: $ca $cb $ff

	rst SubAFromDE                                          ; $411c: $df
	adc $dc                                          ; $411d: $ce $dc
	rst JumpTable                                          ; $411f: $c7
	sbc h                                            ; $4120: $9c
	add b                                            ; $4121: $80
	db $fc                                           ; $4122: $fc
	add h                                            ; $4123: $84
	db $dd                                           ; $4124: $dd
	add b                                            ; $4125: $80
	sbc [hl]                                         ; $4126: $9e
	add [hl]                                         ; $4127: $86
	call c, $967f                                    ; $4128: $dc $7f $96
	ld [hl], a                                       ; $412b: $77
	ld a, a                                          ; $412c: $7f
	ld a, c                                          ; $412d: $79
	nop                                              ; $412e: $00
	nop                                              ; $412f: $00
	ld b, d                                          ; $4130: $42
	ld c, [hl]                                       ; $4131: $4e
	rst SubAFromDE                                          ; $4132: $df
	call c, $246e                                    ; $4133: $dc $6e $24
	db $dd                                           ; $4136: $dd
	rst $38                                          ; $4137: $ff
	sbc [hl]                                         ; $4138: $9e
	ld b, $de                                        ; $4139: $06 $de
	inc bc                                           ; $413b: $03
	sbc e                                            ; $413c: $9b
	ld hl, $0101                                     ; $413d: $21 $01 $01
	rra                                              ; $4140: $1f
	db $dd                                           ; $4141: $dd
	rst $38                                          ; $4142: $ff
	ld a, e                                          ; $4143: $7b
	ld a, e                                          ; $4144: $7b
	add b                                            ; $4145: $80
	ldh [$f5], a                                     ; $4146: $e0 $f5
	push af                                          ; $4148: $f5
	dec d                                            ; $4149: $15
	dec e                                            ; $414a: $1d
	ld c, l                                          ; $414b: $4d
	jp nz, $fdb7                                     ; $414c: $c2 $b7 $fd

	adc e                                            ; $414f: $8b
	adc e                                            ; $4150: $8b
	db $eb                                           ; $4151: $eb
	db $e3                                           ; $4152: $e3
	or e                                             ; $4153: $b3
	cp d                                             ; $4154: $ba
	rst GetHLinHL                                          ; $4155: $cf
	rra                                              ; $4156: $1f

jr_04c_4157:
	ld sp, hl                                        ; $4157: $f9
	sbc e                                            ; $4158: $9b
	sub a                                            ; $4159: $97
	rst $38                                          ; $415a: $ff
	call c, $87fe                                    ; $415b: $dc $fe $87
	call z, $dfff                                    ; $415e: $cc $ff $df
	sbc a                                            ; $4161: $9f
	rst $38                                          ; $4162: $ff
	rst SubAFromDE                                          ; $4163: $df
	add [hl]                                         ; $4164: $86
	rst SubAFromDE                                          ; $4165: $df
	rst $38                                          ; $4166: $ff
	sbc b                                            ; $4167: $98
	sub b                                            ; $4168: $90
	ldh a, [$c0]                                     ; $4169: $f0 $c0
	db $fc                                           ; $416b: $fc
	ccf                                              ; $416c: $3f
	and $c3                                          ; $416d: $e6 $c3
	ld [hl], a                                       ; $416f: $77
	jr nc, jr_04c_40fc                               ; $4170: $30 $8a

	db $e3                                           ; $4172: $e3
	add b                                            ; $4173: $80
	dec e                                            ; $4174: $1d
	db $fc                                           ; $4175: $fc
	nop                                              ; $4176: $00
	inc b                                            ; $4177: $04
	inc b                                            ; $4178: $04
	dec b                                            ; $4179: $05
	ccf                                              ; $417a: $3f
	ld hl, sp+$61                                    ; $417b: $f8 $61
	ret z                                            ; $417d: $c8

	dec b                                            ; $417e: $05
	ei                                               ; $417f: $fb
	ei                                               ; $4180: $fb
	ld a, [$1f40]                                    ; $4181: $fa $40 $1f
	sbc [hl]                                         ; $4184: $9e
	nop                                              ; $4185: $00
	dec b                                            ; $4186: $05
	ld l, a                                          ; $4187: $6f
	dec de                                           ; $4188: $1b
	rst $38                                          ; $4189: $ff
	sbc d                                            ; $418a: $9a
	scf                                              ; $418b: $37
	ld [hl-], a                                      ; $418c: $32
	inc h                                            ; $418d: $24
	dec bc                                           ; $418e: $0b
	ld [hl], c                                       ; $418f: $71
	ld h, [hl]                                       ; $4190: $66
	jp z, $0198                                      ; $4191: $ca $98 $01

	ld c, $10                                        ; $4194: $0e $10
	rst $38                                          ; $4196: $ff
	ld h, a                                          ; $4197: $67
	rlca                                             ; $4198: $07
	rst $38                                          ; $4199: $ff
	ld [hl], a                                       ; $419a: $77
	pop af                                           ; $419b: $f1
	ld a, [hl]                                       ; $419c: $7e
	ld l, d                                          ; $419d: $6a
	rst SubAFromDE                                          ; $419e: $df
	rst $38                                          ; $419f: $ff
	sbc d                                            ; $41a0: $9a
	rst FarCall                                          ; $41a1: $f7
	db $e3                                           ; $41a2: $e3
	ld c, $03                                        ; $41a3: $0e $03
	db $f4                                           ; $41a5: $f4
	sbc $f0                                          ; $41a6: $de $f0
	sbc [hl]                                         ; $41a8: $9e
	add sp, $75                                      ; $41a9: $e8 $75
	add hl, bc                                       ; $41ab: $09
	ld l, e                                          ; $41ac: $6b
	ret nc                                           ; $41ad: $d0

	ld a, d                                          ; $41ae: $7a
	ld e, e                                          ; $41af: $5b
	ld a, [hl]                                       ; $41b0: $7e
	inc bc                                           ; $41b1: $03
	sbc h                                            ; $41b2: $9c
	ld bc, $55aa                                     ; $41b3: $01 $aa $55
	db $dd                                           ; $41b6: $dd
	rst $38                                          ; $41b7: $ff
	sbc [hl]                                         ; $41b8: $9e
	ldh [$de], a                                     ; $41b9: $e0 $de
	jr nz, jr_04c_4157                               ; $41bb: $20 $9a

	add b                                            ; $41bd: $80
	sub b                                            ; $41be: $90
	sub b                                            ; $41bf: $90
	nop                                              ; $41c0: $00
	ccf                                              ; $41c1: $3f
	ld l, l                                          ; $41c2: $6d
	adc d                                            ; $41c3: $8a
	sbc [hl]                                         ; $41c4: $9e
	db $fd                                           ; $41c5: $fd
	ld [hl], c                                       ; $41c6: $71
	ld [$1f9c], a                                    ; $41c7: $ea $9c $1f
	inc bc                                           ; $41ca: $03
	ld [bc], a                                       ; $41cb: $02
	ld [hl], a                                       ; $41cc: $77
	jp nc, $2a9c                                     ; $41cd: $d2 $9c $2a

	or l                                             ; $41d0: $b5
	ld l, c                                          ; $41d1: $69
	sbc $7f                                          ; $41d2: $de $7f
	rst SubAFromDE                                          ; $41d4: $df
	ld a, [hl]                                       ; $41d5: $7e
	sbc b                                            ; $41d6: $98
	push af                                          ; $41d7: $f5
	ld l, e                                          ; $41d8: $6b
	or a                                             ; $41d9: $b7
	rst SubAFromDE                                          ; $41da: $df
	rst AddAOntoHL                                          ; $41db: $ef
	rst SubAFromDE                                          ; $41dc: $df
	db $eb                                           ; $41dd: $eb
	halt                                             ; $41de: $76
	ret z                                            ; $41df: $c8

	sbc [hl]                                         ; $41e0: $9e
	add a                                            ; $41e1: $87
	ld [hl], b                                       ; $41e2: $70
	ld [hl], a                                       ; $41e3: $77
	sbc l                                            ; $41e4: $9d
	sbc h                                            ; $41e5: $9c
	adc b                                            ; $41e6: $88
	ld c, h                                          ; $41e7: $4c
	and h                                            ; $41e8: $a4
	sbc l                                            ; $41e9: $9d
	add $06                                          ; $41ea: $c6 $06
	ld [hl], d                                       ; $41ec: $72
	inc l                                            ; $41ed: $2c
	ld [hl], l                                       ; $41ee: $75
	ld a, b                                          ; $41ef: $78
	db $fd                                           ; $41f0: $fd
	sbc l                                            ; $41f1: $9d
	sub d                                            ; $41f2: $92
	inc c                                            ; $41f3: $0c
	ld h, b                                          ; $41f4: $60
	add h                                            ; $41f5: $84
	ld [hl], e                                       ; $41f6: $73
	sub d                                            ; $41f7: $92
	sbc h                                            ; $41f8: $9c
	rlca                                             ; $41f9: $07
	inc bc                                           ; $41fa: $03
	nop                                              ; $41fb: $00
	ld [hl], e                                       ; $41fc: $73
	ld h, d                                          ; $41fd: $62
	sub a                                            ; $41fe: $97
	nop                                              ; $41ff: $00
	ret nz                                           ; $4200: $c0

	pop hl                                           ; $4201: $e1
	pop hl                                           ; $4202: $e1
	ld a, $3f                                        ; $4203: $3e $3f
	ld a, a                                          ; $4205: $7f
	ld [hl], a                                       ; $4206: $77
	ld a, c                                          ; $4207: $79
	db $e4                                           ; $4208: $e4
	ld [hl], b                                       ; $4209: $70
	dec [hl]                                         ; $420a: $35
	ld a, a                                          ; $420b: $7f
	adc a                                            ; $420c: $8f
	sbc l                                            ; $420d: $9d
	rst GetHLinHL                                          ; $420e: $cf
	rst JumpTable                                          ; $420f: $c7
	db $fd                                           ; $4210: $fd
	sbc h                                            ; $4211: $9c
	jp nz, $02c6                                     ; $4212: $c2 $c6 $02

	ld h, a                                          ; $4215: $67
	ret nc                                           ; $4216: $d0

	add b                                            ; $4217: $80
	ld l, [hl]                                       ; $4218: $6e
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	inc b                                            ; $421b: $04
	jr nz, jr_04c_4225                               ; $421c: $20 $07

	ld [hl], a                                       ; $421e: $77
	ld bc, $fc00                                     ; $421f: $01 $00 $fc
	ld hl, sp-$08                                    ; $4222: $f8 $f8
	push bc                                          ; $4224: $c5

jr_04c_4225:
	rst $38                                          ; $4225: $ff
	rst GetHLinHL                                          ; $4226: $cf
	rst SubAFromDE                                          ; $4227: $df
	ccf                                              ; $4228: $3f
	nop                                              ; $4229: $00
	add b                                            ; $422a: $80
	add b                                            ; $422b: $80
	db $10                                           ; $422c: $10
	db $fd                                           ; $422d: $fd
	rst $38                                          ; $422e: $ff
	rst SubAFromBC                                          ; $422f: $e7
	jp $3f7f                                         ; $4230: $c3 $7f $3f


	rra                                              ; $4233: $1f
	rst JumpTable                                          ; $4234: $c7
	ld a, a                                          ; $4235: $7f
	rst $38                                          ; $4236: $ff
	sbc l                                            ; $4237: $9d
	cp $c1                                           ; $4238: $fe $c1
	ld [hl], l                                       ; $423a: $75
	ld l, d                                          ; $423b: $6a
	sbc d                                            ; $423c: $9a
	adc a                                            ; $423d: $8f
	pop hl                                           ; $423e: $e1
	ld bc, $5f2a                                     ; $423f: $01 $2a $5f
	db $dd                                           ; $4242: $dd
	rst $38                                          ; $4243: $ff
	sbc l                                            ; $4244: $9d
	sbc b                                            ; $4245: $98
	ld [$9cfc], sp                                   ; $4246: $08 $fc $9c
	db $fd                                           ; $4249: $fd
	and d                                            ; $424a: $a2
	ld d, a                                          ; $424b: $57
	call c, $90ff                                    ; $424c: $dc $ff $90
	rst JumpTable                                          ; $424f: $c7
	sub b                                            ; $4250: $90
	add b                                            ; $4251: $80
	sub b                                            ; $4252: $90
	add b                                            ; $4253: $80
	nop                                              ; $4254: $00
	db $10                                           ; $4255: $10
	ld d, b                                          ; $4256: $50
	db $fc                                           ; $4257: $fc
	rst GetHLinHL                                          ; $4258: $cf
	sub a                                            ; $4259: $97
	add a                                            ; $425a: $87
	sub a                                            ; $425b: $97
	sub a                                            ; $425c: $97
	add a                                            ; $425d: $87
	ld [hl], e                                       ; $425e: $73
	ld d, h                                          ; $425f: $54
	cp $9e                                           ; $4260: $fe $9e
	inc bc                                           ; $4262: $03
	ld d, e                                          ; $4263: $53
	ld d, h                                          ; $4264: $54
	ld a, a                                          ; $4265: $7f
	ld [hl], d                                       ; $4266: $72
	ret c                                            ; $4267: $d8

	rst $38                                          ; $4268: $ff
	db $fc                                           ; $4269: $fc
	ld a, [hl]                                       ; $426a: $7e
	ld [hl], d                                       ; $426b: $72
	sbc [hl]                                         ; $426c: $9e
	add sp, $65                                      ; $426d: $e8 $65
	ld h, c                                          ; $426f: $61
	sbc b                                            ; $4270: $98
	jr nc, jr_04c_429d                               ; $4271: $30 $2a

	ld c, [hl]                                       ; $4273: $4e
	ld c, [hl]                                       ; $4274: $4e
	ld a, l                                          ; $4275: $7d
	sbc a                                            ; $4276: $9f
	adc [hl]                                         ; $4277: $8e
	ld a, e                                          ; $4278: $7b
	ld h, b                                          ; $4279: $60
	ld a, d                                          ; $427a: $7a
	ld h, b                                          ; $427b: $60
	rst SubAFromDE                                          ; $427c: $df
	rst FarCall                                          ; $427d: $f7
	ld a, a                                          ; $427e: $7f
	ldh [$99], a                                     ; $427f: $e0 $99
	inc b                                            ; $4281: $04
	ld b, h                                          ; $4282: $44
	add [hl]                                         ; $4283: $86
	adc [hl]                                         ; $4284: $8e
	rlca                                             ; $4285: $07
	rlca                                             ; $4286: $07
	ld l, h                                          ; $4287: $6c
	add d                                            ; $4288: $82
	ld a, [hl]                                       ; $4289: $7e
	push hl                                          ; $428a: $e5
	sub e                                            ; $428b: $93
	cp $55                                           ; $428c: $fe $55
	ld a, [hl+]                                      ; $428e: $2a
	ld e, l                                          ; $428f: $5d
	rst SubAFromDE                                          ; $4290: $df
	ld a, a                                          ; $4291: $7f
	ld b, b                                          ; $4292: $40
	add b                                            ; $4293: $80
	ld [$d5aa], a                                    ; $4294: $ea $aa $d5
	add d                                            ; $4297: $82
	halt                                             ; $4298: $76
	add $9e                                          ; $4299: $c6 $9e
	ldh a, [$de]                                     ; $429b: $f0 $de

jr_04c_429d:
	and b                                            ; $429d: $a0
	rst SubAFromDE                                          ; $429e: $df
	rst $38                                          ; $429f: $ff
	sbc h                                            ; $42a0: $9c
	ld [bc], a                                       ; $42a1: $02
	dec b                                            ; $42a2: $05
	xor d                                            ; $42a3: $aa
	ld [hl], c                                       ; $42a4: $71
	pop hl                                           ; $42a5: $e1
	sbc [hl]                                         ; $42a6: $9e
	db $fd                                           ; $42a7: $fd
	db $fc                                           ; $42a8: $fc
	rst SubAFromDE                                          ; $42a9: $df
	rst $38                                          ; $42aa: $ff
	ld a, [hl]                                       ; $42ab: $7e
	xor c                                            ; $42ac: $a9
	sbc [hl]                                         ; $42ad: $9e
	xor d                                            ; $42ae: $aa
	call c, $9cff                                    ; $42af: $dc $ff $9c
	ld d, l                                          ; $42b2: $55
	ld a, [bc]                                       ; $42b3: $0a
	nop                                              ; $42b4: $00
	sbc $7e                                          ; $42b5: $de $7e
	ld a, d                                          ; $42b7: $7a
	ld a, a                                          ; $42b8: $7f
	sub l                                            ; $42b9: $95
	ld c, [hl]                                       ; $42ba: $4e
	ld b, [hl]                                       ; $42bb: $46
	ei                                               ; $42bc: $fb
	rst $38                                          ; $42bd: $ff
	db $db                                           ; $42be: $db
	rst $38                                          ; $42bf: $ff
	ei                                               ; $42c0: $fb
	xor $f6                                          ; $42c1: $ee $f6
	rst AddAOntoHL                                          ; $42c3: $ef
	ld [hl], e                                       ; $42c4: $73
	ldh [$7f], a                                     ; $42c5: $e0 $7f
	pop hl                                           ; $42c7: $e1
	ld l, a                                          ; $42c8: $6f
	ldh [$7f], a                                     ; $42c9: $e0 $7f
	ret c                                            ; $42cb: $d8

	ld l, a                                          ; $42cc: $6f
	ret nc                                           ; $42cd: $d0

	sbc h                                            ; $42ce: $9c
	ld d, l                                          ; $42cf: $55
	or l                                             ; $42d0: $b5
	or c                                             ; $42d1: $b1
	ld l, a                                          ; $42d2: $6f
	ldh a, [$9d]                                     ; $42d3: $f0 $9d
	ld b, b                                          ; $42d5: $40
	ld c, $6f                                        ; $42d6: $0e $6f
	ldh a, [$9e]                                     ; $42d8: $f0 $9e
	xor e                                            ; $42da: $ab
	ld l, e                                          ; $42db: $6b
	ldh [$9e], a                                     ; $42dc: $e0 $9e
	ld d, h                                          ; $42de: $54
	ld l, a                                          ; $42df: $6f
	ldh [$9c], a                                     ; $42e0: $e0 $9c
	ld d, h                                          ; $42e2: $54
	ld d, e                                          ; $42e3: $53
	xor e                                            ; $42e4: $ab
	call c, $95ff                                    ; $42e5: $dc $ff $95
	xor e                                            ; $42e8: $ab
	inc b                                            ; $42e9: $04
	nop                                              ; $42ea: $00
	ld h, a                                          ; $42eb: $67
	ld h, a                                          ; $42ec: $67
	ld h, [hl]                                       ; $42ed: $66
	cp $ff                                           ; $42ee: $fe $ff
	and $01                                          ; $42f0: $e6 $01
	ld [hl], a                                       ; $42f2: $77
	add e                                            ; $42f3: $83
	halt                                             ; $42f4: $76
	and l                                            ; $42f5: $a5
	sbc [hl]                                         ; $42f6: $9e
	ld a, l                                          ; $42f7: $7d
	cp $9a                                           ; $42f8: $fe $9a
	ld a, a                                          ; $42fa: $7f
	ld d, $20                                        ; $42fb: $16 $20
	ld d, d                                          ; $42fd: $52
	and l                                            ; $42fe: $a5
	db $dd                                           ; $42ff: $dd
	rst $38                                          ; $4300: $ff
	ld a, [hl]                                       ; $4301: $7e
	ld h, b                                          ; $4302: $60
	adc l                                            ; $4303: $8d
	xor b                                            ; $4304: $a8
	db $10                                           ; $4305: $10
	ld [hl], h                                       ; $4306: $74
	ld b, $00                                        ; $4307: $06 $00
	ld l, e                                          ; $4309: $6b
	sbc e                                            ; $430a: $9b
	ld [de], a                                       ; $430b: $12
	xor e                                            ; $430c: $ab
	ld d, b                                          ; $430d: $50
	adc e                                            ; $430e: $8b
	ld sp, hl                                        ; $430f: $f9
	rst $38                                          ; $4310: $ff
	sbc l                                            ; $4311: $9d
	ld a, l                                          ; $4312: $7d
	db $ed                                           ; $4313: $ed
	inc d                                            ; $4314: $14
	rrca                                             ; $4315: $0f
	ld l, a                                          ; $4316: $6f
	ld [hl], b                                       ; $4317: $70
	sbc [hl]                                         ; $4318: $9e
	push hl                                          ; $4319: $e5
	ld [hl], d                                       ; $431a: $72
	jr jr_04c_4394                                   ; $431b: $18 $77

	ld [hl], b                                       ; $431d: $70
	ld [hl], d                                       ; $431e: $72
	ld b, $9d                                        ; $431f: $06 $9d
	rrca                                             ; $4321: $0f
	ld a, a                                          ; $4322: $7f
	ld h, l                                          ; $4323: $65
	ld de, $647a                                     ; $4324: $11 $7a $64
	ld a, c                                          ; $4327: $79
	ld [hl], h                                       ; $4328: $74
	sbc l                                            ; $4329: $9d
	db $fc                                           ; $432a: $fc
	and b                                            ; $432b: $a0
	ld l, [hl]                                       ; $432c: $6e
	add h                                            ; $432d: $84
	add h                                            ; $432e: $84
	ld a, [$aad5]                                    ; $432f: $fa $d5 $aa
	db $10                                           ; $4332: $10
	rla                                              ; $4333: $17
	or a                                             ; $4334: $b7
	or b                                             ; $4335: $b0
	db $10                                           ; $4336: $10
	ld c, b                                          ; $4337: $48
	ld e, [hl]                                       ; $4338: $5e
	adc $c7                                          ; $4339: $ce $c7
	and a                                            ; $433b: $a7
	and a                                            ; $433c: $a7
	cp l                                             ; $433d: $bd
	cp $bd                                           ; $433e: $fe $bd
	db $ec                                           ; $4340: $ec
	ld l, a                                          ; $4341: $6f
	ld a, a                                          ; $4342: $7f

Jump_04c_4343:
	ld hl, sp-$76                                    ; $4343: $f8 $8a
	ld d, l                                          ; $4345: $55
	xor d                                            ; $4346: $aa
	ld d, l                                          ; $4347: $55
	db $eb                                           ; $4348: $eb
	ld e, d                                          ; $4349: $5a
	ld a, d                                          ; $434a: $7a
	push hl                                          ; $434b: $e5
	sbc c                                            ; $434c: $99
	xor d                                            ; $434d: $aa
	ld d, b                                          ; $434e: $50
	add b                                            ; $434f: $80
	nop                                              ; $4350: $00
	dec b                                            ; $4351: $05
	ldh [$7b], a                                     ; $4352: $e0 $7b
	ldh a, [c]                                       ; $4354: $f2
	ld a, a                                          ; $4355: $7f
	cp $7b                                           ; $4356: $fe $7b
	inc d                                            ; $4358: $14
	ld a, a                                          ; $4359: $7f
	ei                                               ; $435a: $fb
	ld a, a                                          ; $435b: $7f
	ldh a, [c]                                       ; $435c: $f2
	ld a, [hl]                                       ; $435d: $7e
	ld h, a                                          ; $435e: $67
	sbc [hl]                                         ; $435f: $9e
	nop                                              ; $4360: $00
	ld [hl], a                                       ; $4361: $77
	ldh a, [c]                                       ; $4362: $f2
	sbc c                                            ; $4363: $99
	cp e                                             ; $4364: $bb
	ld d, h                                          ; $4365: $54
	add sp, -$34                                     ; $4366: $e8 $cc
	ld d, l                                          ; $4368: $55
	xor d                                            ; $4369: $aa
	ld [hl], c                                       ; $436a: $71
	jp z, $0083                                      ; $436b: $ca $83 $00

	ld l, h                                          ; $436e: $6c
	ld h, e                                          ; $436f: $63
	adc e                                            ; $4370: $8b
	ld e, d                                          ; $4371: $5a
	or e                                             ; $4372: $b3
	rlca                                             ; $4373: $07
	ld bc, $f701                                     ; $4374: $01 $01 $f7
	db $fc                                           ; $4377: $fc
	ld [hl], h                                       ; $4378: $74
	and a                                            ; $4379: $a7
	rlca                                             ; $437a: $07
	inc bc                                           ; $437b: $03
	inc bc                                           ; $437c: $03
	ld bc, $7e02                                     ; $437d: $01 $02 $7e
	ld [hl], $d6                                     ; $4380: $36 $d6
	sub [hl]                                         ; $4382: $96
	sub h                                            ; $4383: $94
	or d                                             ; $4384: $b2
	or h                                             ; $4385: $b4
	db $fc                                           ; $4386: $fc
	add h                                            ; $4387: $84
	call z, $ecde                                    ; $4388: $cc $de $ec
	rst SubAFromDE                                          ; $438b: $df
	call z, $bc9c                                    ; $438c: $cc $9c $bc
	ld [hl+], a                                      ; $438f: $22
	ld c, [hl]                                       ; $4390: $4e
	ld [hl], a                                       ; $4391: $77
	ld a, [hl]                                       ; $4392: $7e
	sbc h                                            ; $4393: $9c

jr_04c_4394:
	ld a, [hl+]                                      ; $4394: $2a
	ld a, b                                          ; $4395: $78
	inc e                                            ; $4396: $1c
	ei                                               ; $4397: $fb
	ld a, [hl]                                       ; $4398: $7e
	or b                                             ; $4399: $b0
	sbc c                                            ; $439a: $99
	dec d                                            ; $439b: $15
	ld [bc], a                                       ; $439c: $02
	nop                                              ; $439d: $00
	nop                                              ; $439e: $00
	inc d                                            ; $439f: $14
	xor d                                            ; $43a0: $aa
	ld sp, hl                                        ; $43a1: $f9
	ld a, a                                          ; $43a2: $7f
	cp b                                             ; $43a3: $b8
	sbc c                                            ; $43a4: $99
	ld d, h                                          ; $43a5: $54
	and e                                            ; $43a6: $a3
	inc b                                            ; $43a7: $04
	inc bc                                           ; $43a8: $03
	ld d, c                                          ; $43a9: $51
	add e                                            ; $43aa: $83
	ld a, e                                          ; $43ab: $7b
	call c, $fe7b                                    ; $43ac: $dc $7b $fe
	rst $38                                          ; $43af: $ff
	add a                                            ; $43b0: $87
	rst GetHLinHL                                          ; $43b1: $cf
	adc $bb                                          ; $43b2: $ce $bb
	ld a, [hl]                                       ; $43b4: $7e
	ld a, [hl]                                       ; $43b5: $7e
	ld a, h                                          ; $43b6: $7c
	inc e                                            ; $43b7: $1c
	ld [$e7d6], sp                                   ; $43b8: $08 $d6 $e7
	ld b, h                                          ; $43bb: $44
	ld bc, $0180                                     ; $43bc: $01 $80 $01
	and d                                            ; $43bf: $a2
	ld d, l                                          ; $43c0: $55
	ld d, l                                          ; $43c1: $55
	ld a, [hl+]                                      ; $43c2: $2a

jr_04c_43c3:
	push de                                          ; $43c3: $d5
	add b                                            ; $43c4: $80
	ret nz                                           ; $43c5: $c0

	and b                                            ; $43c6: $a0
	db $f4                                           ; $43c7: $f4
	and e                                            ; $43c8: $a3
	ld a, e                                          ; $43c9: $7b
	add l                                            ; $43ca: $85
	db $fc                                           ; $43cb: $fc
	sub a                                            ; $43cc: $97
	ld a, a                                          ; $43cd: $7f
	sbc e                                            ; $43ce: $9b
	rlca                                             ; $43cf: $07
	add hl, hl                                       ; $43d0: $29
	ld [$0211], sp                                   ; $43d1: $08 $11 $02
	db $e4                                           ; $43d4: $e4
	ld a, b                                          ; $43d5: $78
	dec sp                                           ; $43d6: $3b
	ld a, a                                          ; $43d7: $7f
	sub c                                            ; $43d8: $91
	sub h                                            ; $43d9: $94
	ld b, $0d                                        ; $43da: $06 $0d
	dec de                                           ; $43dc: $1b
	ld d, l                                          ; $43dd: $55
	add sp, -$30                                     ; $43de: $e8 $d0
	ret nz                                           ; $43e0: $c0

	inc d                                            ; $43e1: $14
	add a                                            ; $43e2: $87
	ld b, e                                          ; $43e3: $43
	jr nz, jr_04c_43c3                               ; $43e4: $20 $dd

	add b                                            ; $43e6: $80
	sbc c                                            ; $43e7: $99
	ldh [$78], a                                     ; $43e8: $e0 $78
	cp a                                             ; $43ea: $bf
	rst SubAFromDE                                          ; $43eb: $df
	ld d, l                                          ; $43ec: $55
	and d                                            ; $43ed: $a2
	ld [hl], e                                       ; $43ee: $73
	ld l, b                                          ; $43ef: $68
	sbc [hl]                                         ; $43f0: $9e
	ldh [$fb], a                                     ; $43f1: $e0 $fb
	rst SubAFromDE                                          ; $43f3: $df
	ret nz                                           ; $43f4: $c0

	sub e                                            ; $43f5: $93
	push de                                          ; $43f6: $d5
	db $eb                                           ; $43f7: $eb
	ld d, a                                          ; $43f8: $57
	ld [$2875], a                                    ; $43f9: $ea $75 $28
	ld bc, $2a00                                     ; $43fc: $01 $00 $2a
	inc d                                            ; $43ff: $14
	jr z, jr_04c_4412                                ; $4400: $28 $10

	db $fd                                           ; $4402: $fd
	sub a                                            ; $4403: $97
	ld e, d                                          ; $4404: $5a
	cp a                                             ; $4405: $bf
	ld a, [hl]                                       ; $4406: $7e
	cp a                                             ; $4407: $bf
	ld a, l                                          ; $4408: $7d
	ld [$3f7f], a                                    ; $4409: $ea $7f $3f
	db $fd                                           ; $440c: $fd
	adc e                                            ; $440d: $8b
	ld [bc], a                                       ; $440e: $02
	dec d                                            ; $440f: $15
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00

jr_04c_4412:
	xor a                                            ; $4412: $af
	sbc $f9                                          ; $4413: $de $f9
	cp d                                             ; $4415: $ba
	ld d, l                                          ; $4416: $55
	xor d                                            ; $4417: $aa
	push af                                          ; $4418: $f5
	xor b                                            ; $4419: $a8
	ld b, $07                                        ; $441a: $06 $07
	ld b, $45                                        ; $441c: $06 $45
	xor d                                            ; $441e: $aa
	ld d, l                                          ; $441f: $55
	ld a, [bc]                                       ; $4420: $0a
	rlca                                             ; $4421: $07
	ld a, c                                          ; $4422: $79
	ld e, a                                          ; $4423: $5f
	sbc d                                            ; $4424: $9a
	ld d, l                                          ; $4425: $55
	ld l, [hl]                                       ; $4426: $6e
	ld bc, $d520                                     ; $4427: $01 $20 $d5
	ld [hl], c                                       ; $442a: $71
	inc c                                            ; $442b: $0c
	sbc c                                            ; $442c: $99
	ret nz                                           ; $442d: $c0

	add b                                            ; $442e: $80
	nop                                              ; $442f: $00
	add sp, -$80                                     ; $4430: $e8 $80
	ld b, b                                          ; $4432: $40
	ld [hl], e                                       ; $4433: $73
	add [hl]                                         ; $4434: $86
	sbc e                                            ; $4435: $9b
	push af                                          ; $4436: $f5
	ld [$2a15], a                                    ; $4437: $ea $15 $2a
	halt                                             ; $443a: $76
	push af                                          ; $443b: $f5
	ld [hl], a                                       ; $443c: $77
	nop                                              ; $443d: $00
	ld a, a                                          ; $443e: $7f
	cp $9d                                           ; $443f: $fe $9d
	xor h                                            ; $4441: $ac
	ld a, e                                          ; $4442: $7b
	ld a, e                                          ; $4443: $7b
	ei                                               ; $4444: $fb
	add b                                            ; $4445: $80
	xor b                                            ; $4446: $a8
	ld b, c                                          ; $4447: $41
	ld a, [bc]                                       ; $4448: $0a
	ld d, b                                          ; $4449: $50
	add b                                            ; $444a: $80
	add d                                            ; $444b: $82
	ld b, c                                          ; $444c: $41
	xor e                                            ; $444d: $ab
	ld d, a                                          ; $444e: $57
	xor d                                            ; $444f: $aa
	ld d, a                                          ; $4450: $57
	xor e                                            ; $4451: $ab
	ld d, l                                          ; $4452: $55
	ld a, l                                          ; $4453: $7d
	cp [hl]                                          ; $4454: $be
	ld d, h                                          ; $4455: $54
	jr z, @+$52                                      ; $4456: $28 $50

	jr z, jr_04c_44ae                                ; $4458: $28 $54

	xor d                                            ; $445a: $aa

jr_04c_445b:
	sub a                                            ; $445b: $97
	cp l                                             ; $445c: $bd
	ld a, [$aa55]                                    ; $445d: $fa $55 $aa
	push de                                          ; $4460: $d5
	ld [$28d5], a                                    ; $4461: $ea $d5 $28
	ld b, b                                          ; $4464: $40
	ei                                               ; $4465: $fb
	sub a                                            ; $4466: $97
	cp d                                             ; $4467: $ba
	ld e, a                                          ; $4468: $5f
	cp $54                                           ; $4469: $fe $54
	xor d                                            ; $446b: $aa
	ld d, c                                          ; $446c: $51
	and d                                            ; $446d: $a2
	dec b                                            ; $446e: $05
	ld sp, hl                                        ; $446f: $f9
	sbc e                                            ; $4470: $9b
	cp b                                             ; $4471: $b8
	call nc, Call_04c_40a8                           ; $4472: $d4 $a8 $40
	ld l, e                                          ; $4475: $6b
	xor l                                            ; $4476: $ad
	ld l, [hl]                                       ; $4477: $6e
	ld h, h                                          ; $4478: $64
	ld [hl], h                                       ; $4479: $74
	ld l, c                                          ; $447a: $69
	ld a, a                                          ; $447b: $7f
	add e                                            ; $447c: $83
	sbc [hl]                                         ; $447d: $9e
	rrca                                             ; $447e: $0f

Jump_04c_447f:
	db $dd                                           ; $447f: $dd
	ld bc, $03df                                     ; $4480: $01 $df $03
	add a                                            ; $4483: $87
	ld [bc], a                                       ; $4484: $02
	inc b                                            ; $4485: $04
	or d                                             ; $4486: $b2
	xor b                                            ; $4487: $a8
	adc h                                            ; $4488: $8c
	inc c                                            ; $4489: $0c
	ret nc                                           ; $448a: $d0

	ret nc                                           ; $448b: $d0

	or b                                             ; $448c: $b0
	jr nc, jr_04c_445b                               ; $448d: $30 $cc

	call c, $f8f8                                    ; $448f: $dc $f8 $f8
	jr c, jr_04c_44cc                                ; $4492: $38 $38

	ld a, b                                          ; $4494: $78
	ld hl, sp+$15                                    ; $4495: $f8 $15
	ld a, [bc]                                       ; $4497: $0a
	nop                                              ; $4498: $00
	inc c                                            ; $4499: $0c
	nop                                              ; $449a: $00

Call_04c_449b:
	adc b                                            ; $449b: $88
	ld h, e                                          ; $449c: $63
	pop bc                                           ; $449d: $c1
	ld a, d                                          ; $449e: $7a
	ret nc                                           ; $449f: $d0

	sbc e                                            ; $44a0: $9b
	rla                                              ; $44a1: $17
	cp $13                                           ; $44a2: $fe $13
	adc b                                            ; $44a4: $88
	rst FarCall                                          ; $44a5: $f7
	ld a, a                                          ; $44a6: $7f
	ldh a, [$9a]                                     ; $44a7: $f0 $9a
	ld b, c                                          ; $44a9: $41
	ld [bc], a                                       ; $44aa: $02
	ld d, c                                          ; $44ab: $51
	add b                                            ; $44ac: $80
	nop                                              ; $44ad: $00

jr_04c_44ae:
	ld [hl], h                                       ; $44ae: $74
	db $dd                                           ; $44af: $dd
	db $fc                                           ; $44b0: $fc
	sub l                                            ; $44b1: $95
	push de                                          ; $44b2: $d5
	xor e                                            ; $44b3: $ab
	rst SubAFromDE                                          ; $44b4: $df
	db $fc                                           ; $44b5: $fc
	pop af                                           ; $44b6: $f1
	ret nz                                           ; $44b7: $c0

	add c                                            ; $44b8: $81
	ld [bc], a                                       ; $44b9: $02
	ld a, [hl+]                                      ; $44ba: $2a
	ld d, h                                          ; $44bb: $54
	ld l, a                                          ; $44bc: $6f
	db $ed                                           ; $44bd: $ed
	ld a, a                                          ; $44be: $7f
	ld h, c                                          ; $44bf: $61
	ld a, a                                          ; $44c0: $7f
	add hl, de                                       ; $44c1: $19
	sbc d                                            ; $44c2: $9a
	ld [hl], l                                       ; $44c3: $75
	cp a                                             ; $44c4: $bf
	ld d, l                                          ; $44c5: $55
	xor b                                            ; $44c6: $a8
	inc bc                                           ; $44c7: $03
	ld l, [hl]                                       ; $44c8: $6e
	ld d, c                                          ; $44c9: $51
	sub h                                            ; $44ca: $94
	nop                                              ; $44cb: $00

jr_04c_44cc:
	add a                                            ; $44cc: $87
	rlca                                             ; $44cd: $07
	db $10                                           ; $44ce: $10
	xor c                                            ; $44cf: $a9
	sbc $fe                                          ; $44d0: $de $fe
	inc h                                            ; $44d2: $24
	ld bc, $f9ff                                     ; $44d3: $01 $ff $f9
	ld a, e                                          ; $44d6: $7b
	adc b                                            ; $44d7: $88
	ld a, a                                          ; $44d8: $7f
	adc [hl]                                         ; $44d9: $8e
	adc [hl]                                         ; $44da: $8e
	rlca                                             ; $44db: $07
	inc d                                            ; $44dc: $14
	db $10                                           ; $44dd: $10
	adc b                                            ; $44de: $88
	db $fc                                           ; $44df: $fc
	add sp, -$1e                                     ; $44e0: $e8 $e2
	ldh a, [c]                                       ; $44e2: $f2
	rst AddAOntoHL                                          ; $44e3: $ef
	add sp, -$14                                     ; $44e4: $e8 $ec
	db $fc                                           ; $44e6: $fc
	ld hl, sp-$04                                    ; $44e7: $f8 $fc
	db $fc                                           ; $44e9: $fc
	rst $38                                          ; $44ea: $ff
	sbc a                                            ; $44eb: $9f
	ei                                               ; $44ec: $fb
	sbc h                                            ; $44ed: $9c
	ld d, b                                          ; $44ee: $50
	ld a, $c0                                        ; $44ef: $3e $c0
	ei                                               ; $44f1: $fb
	ld l, b                                          ; $44f2: $68
	ret nz                                           ; $44f3: $c0

	ld h, [hl]                                       ; $44f4: $66
	add d                                            ; $44f5: $82
	rst $38                                          ; $44f6: $ff
	ld a, d                                          ; $44f7: $7a
	call $93f4                                       ; $44f8: $cd $f4 $93
	dec e                                            ; $44fb: $1d
	dec bc                                           ; $44fc: $0b
	dec e                                            ; $44fd: $1d
	ld a, [hl+]                                      ; $44fe: $2a
	ld d, a                                          ; $44ff: $57
	ld l, $1d                                        ; $4500: $2e $1d
	ld [$0402], sp                                   ; $4502: $08 $02 $04
	ld [bc], a                                       ; $4505: $02
	inc b                                            ; $4506: $04
	ld [hl], b                                       ; $4507: $70
	jr z, @+$61                                      ; $4508: $28 $5f

	dec h                                            ; $450a: $25
	db $fc                                           ; $450b: $fc
	ld a, d                                          ; $450c: $7a
	db $e4                                           ; $450d: $e4
	sbc l                                            ; $450e: $9d
	ld e, a                                          ; $450f: $5f
	cp a                                             ; $4510: $bf
	ld [hl], l                                       ; $4511: $75
	ld [hl], l                                       ; $4512: $75
	sbc h                                            ; $4513: $9c
	xor b                                            ; $4514: $a8
	ld d, h                                          ; $4515: $54
	and b                                            ; $4516: $a0
	halt                                             ; $4517: $76
	db $ed                                           ; $4518: $ed
	sbc e                                            ; $4519: $9b
	xor $df                                          ; $451a: $ee $df
	cp [hl]                                          ; $451c: $be
	ld a, l                                          ; $451d: $7d
	db $dd                                           ; $451e: $dd
	rst $38                                          ; $451f: $ff
	ld a, e                                          ; $4520: $7b
	add d                                            ; $4521: $82
	ld a, c                                          ; $4522: $79
	ld hl, sp+$7b                                    ; $4523: $f8 $7b
	ldh [$8c], a                                     ; $4525: $e0 $8c
	ld b, l                                          ; $4527: $45
	add e                                            ; $4528: $83
	dec b                                            ; $4529: $05
	xor e                                            ; $452a: $ab
	ld d, a                                          ; $452b: $57
	cp [hl]                                          ; $452c: $be
	rst $38                                          ; $452d: $ff
	ld d, l                                          ; $452e: $55
	cp d                                             ; $452f: $ba
	ld a, h                                          ; $4530: $7c
	ld a, [$a854]                                    ; $4531: $fa $54 $a8
	ld b, b                                          ; $4534: $40
	nop                                              ; $4535: $00
	add sp, -$2c                                     ; $4536: $e8 $d4
	and b                                            ; $4538: $a0
	ld b, h                                          ; $4539: $44
	ld a, e                                          ; $453a: $7b
	sub c                                            ; $453b: $91
	ld l, d                                          ; $453c: $6a
	jp nz, Jump_04c_5a72                             ; $453d: $c2 $72 $5a

	halt                                             ; $4540: $76
	jp c, $079e                                      ; $4541: $da $9e $07

	ld sp, hl                                        ; $4544: $f9
	ld a, a                                          ; $4545: $7f
	and c                                            ; $4546: $a1
	sbc [hl]                                         ; $4547: $9e
	ld d, b                                          ; $4548: $50
	ld a, e                                          ; $4549: $7b
	daa                                              ; $454a: $27
	sbc l                                            ; $454b: $9d
	ret nz                                           ; $454c: $c0

	ldh a, [$f9]                                     ; $454d: $f0 $f9
	rst SubAFromDE                                          ; $454f: $df
	ld b, $81                                        ; $4550: $06 $81
	ld a, [de]                                       ; $4552: $1a
	dec c                                            ; $4553: $0d
	ld a, $3f                                        ; $4554: $3e $3f
	ld b, $23                                        ; $4556: $06 $23
	dec c                                            ; $4558: $0d
	add hl, bc                                       ; $4559: $09
	dec c                                            ; $455a: $0d
	rra                                              ; $455b: $1f
	rra                                              ; $455c: $1f
	ld e, $3f                                        ; $455d: $1e $3f
	rra                                              ; $455f: $1f
	ldh a, [$d0]                                     ; $4560: $f0 $d0
	pop de                                           ; $4562: $d1
	ld d, b                                          ; $4563: $50
	jr c, jr_04c_45a2                                ; $4564: $38 $3c

	inc a                                            ; $4566: $3c
	pop bc                                           ; $4567: $c1
	ld hl, sp-$08                                    ; $4568: $f8 $f8
	cp b                                             ; $456a: $b8
	cp b                                             ; $456b: $b8
	ld a, h                                          ; $456c: $7c
	ld a, [hl]                                       ; $456d: $7e
	ld a, [hl]                                       ; $456e: $7e
	ld a, $6f                                        ; $456f: $3e $6f
	ld b, [hl]                                       ; $4571: $46
	sbc l                                            ; $4572: $9d
	ld [$f9dd], a                                    ; $4573: $ea $dd $f9
	halt                                             ; $4576: $76
	or [hl]                                          ; $4577: $b6
	sbc l                                            ; $4578: $9d
	ld [de], a                                       ; $4579: $12
	ld bc, $776c                                     ; $457a: $01 $6c $77
	ld [hl], e                                       ; $457d: $73
	ld d, $7c                                        ; $457e: $16 $7c
	push af                                          ; $4580: $f5
	ld a, [hl]                                       ; $4581: $7e
	jp $877f                                         ; $4582: $c3 $7f $87


	ld h, e                                          ; $4585: $63
	ldh a, [$73]                                     ; $4586: $f0 $73
	dec sp                                           ; $4588: $3b
	sbc [hl]                                         ; $4589: $9e

Jump_04c_458a:
	ld [bc], a                                       ; $458a: $02
	ld e, [hl]                                       ; $458b: $5e
	sub b                                            ; $458c: $90
	ld l, a                                          ; $458d: $6f
	dec sp                                           ; $458e: $3b
	ld h, e                                          ; $458f: $63
	pop hl                                           ; $4590: $e1
	ld a, d                                          ; $4591: $7a
	call z, $137d                                    ; $4592: $cc $7d $13
	sbc d                                            ; $4595: $9a
	inc bc                                           ; $4596: $03
	and e                                            ; $4597: $a3
	ld e, a                                          ; $4598: $5f
	ld hl, $7507                                     ; $4599: $21 $07 $75
	inc de                                           ; $459c: $13
	rst SubAFromDE                                          ; $459d: $df
	rlca                                             ; $459e: $07
	sbc e                                            ; $459f: $9b
	rra                                              ; $45a0: $1f
	dec bc                                           ; $45a1: $0b

jr_04c_45a2:
	ret nz                                           ; $45a2: $c0

	add b                                            ; $45a3: $80
	ld a, c                                          ; $45a4: $79
	reti                                             ; $45a5: $d9


	sbc d                                            ; $45a6: $9a
	cp a                                             ; $45a7: $bf
	push bc                                          ; $45a8: $c5
	add a                                            ; $45a9: $87
	add b                                            ; $45aa: $80
	ret nz                                           ; $45ab: $c0

	ld [hl], a                                       ; $45ac: $77
	or $93                                           ; $45ad: $f6 $93
	ld a, [$02fe]                                    ; $45af: $fa $fe $02
	ld b, $00                                        ; $45b2: $06 $00
	nop                                              ; $45b4: $00
	db $f4                                           ; $45b5: $f4
	rst $38                                          ; $45b6: $ff
	ld d, l                                          ; $45b7: $55
	rst $38                                          ; $45b8: $ff
	rlca                                             ; $45b9: $07
	inc bc                                           ; $45ba: $03
	ld [hl], e                                       ; $45bb: $73
	add $7b                                          ; $45bc: $c6 $7b
	add b                                            ; $45be: $80
	ld a, e                                          ; $45bf: $7b
	ld a, [hl]                                       ; $45c0: $7e
	ld a, e                                          ; $45c1: $7b

jr_04c_45c2:
	db $e4                                           ; $45c2: $e4
	ld e, [hl]                                       ; $45c3: $5e
	cp l                                             ; $45c4: $bd
	ldh [$d4], a                                     ; $45c5: $e0 $d4
	sbc h                                            ; $45c7: $9c
	ei                                               ; $45c8: $fb
	rst $38                                          ; $45c9: $ff
	ei                                               ; $45ca: $fb
	call c, $f9ff                                    ; $45cb: $dc $ff $f9
	ld [hl], b                                       ; $45ce: $70
	dec sp                                           ; $45cf: $3b
	ld e, e                                          ; $45d0: $5b
	ldh a, [rPCM34]                                  ; $45d1: $f0 $77
	db $f4                                           ; $45d3: $f4
	ld a, c                                          ; $45d4: $79
	ld c, h                                          ; $45d5: $4c
	ld h, e                                          ; $45d6: $63
	ldh a, [$97]                                     ; $45d7: $f0 $97
	add b                                            ; $45d9: $80
	ld d, b                                          ; $45da: $50
	adc b                                            ; $45db: $88
	reti                                             ; $45dc: $d9


	add sp, -$38                                     ; $45dd: $e8 $c8
	db $ec                                           ; $45df: $ec
	sbc $f9                                          ; $45e0: $de $f9
	sbc b                                            ; $45e2: $98
	ld a, [hl+]                                      ; $45e3: $2a
	rla                                              ; $45e4: $17
	rrca                                             ; $45e5: $0f
	adc a                                            ; $45e6: $8f
	ld b, c                                          ; $45e7: $41
	jr nz, jr_04c_45c2                               ; $45e8: $20 $d8

	ld h, e                                          ; $45ea: $63
	ldh [$97], a                                     ; $45eb: $e0 $97
	ld sp, hl                                        ; $45ed: $f9
	ei                                               ; $45ee: $fb
	db $fd                                           ; $45ef: $fd
	ld a, [$6afd]                                    ; $45f0: $fa $fd $6a
	dec [hl]                                         ; $45f3: $35
	ld c, $f9                                        ; $45f4: $0e $f9
	add b                                            ; $45f6: $80
	pop af                                           ; $45f7: $f1
	xor c                                            ; $45f8: $a9
	push af                                          ; $45f9: $f5
	rst $38                                          ; $45fa: $ff
	ld [hl], l                                       ; $45fb: $75
	ld a, d                                          ; $45fc: $7a
	dec a                                            ; $45fd: $3d
	cp [hl]                                          ; $45fe: $be
	ld c, $56                                        ; $45ff: $0e $56
	ld a, [bc]                                       ; $4601: $0a
	nop                                              ; $4602: $00
	ld a, [bc]                                       ; $4603: $0a
	dec b                                            ; $4604: $05
	ld [bc], a                                       ; $4605: $02
	ld bc, $0081                                     ; $4606: $01 $81 $00
	db $d3                                           ; $4609: $d3
	rst AddAOntoHL                                          ; $460a: $ef
	rst SubAFromDE                                          ; $460b: $df
	xor a                                            ; $460c: $af
	ld d, [hl]                                       ; $460d: $56
	xor a                                            ; $460e: $af
	ld a, [hl]                                       ; $460f: $7e
	rst $38                                          ; $4610: $ff
	inc l                                            ; $4611: $2c
	db $10                                           ; $4612: $10
	jr nz, jr_04c_4665                               ; $4613: $20 $50

	xor b                                            ; $4615: $a8
	sbc h                                            ; $4616: $9c
	ld d, b                                          ; $4617: $50
	cp $fd                                           ; $4618: $fe $fd
	sbc $ff                                          ; $461a: $de $ff
	sbc h                                            ; $461c: $9c
	ld e, l                                          ; $461d: $5d
	cp a                                             ; $461e: $bf
	ld e, l                                          ; $461f: $5d
	ld e, [hl]                                       ; $4620: $5e
	push af                                          ; $4621: $f5
	call c, $9eff                                    ; $4622: $dc $ff $9e
	push af                                          ; $4625: $f5
	ld sp, hl                                        ; $4626: $f9
	sub a                                            ; $4627: $97
	and b                                            ; $4628: $a0
	ld d, c                                          ; $4629: $51
	xor d                                            ; $462a: $aa
	db $f4                                           ; $462b: $f4
	ld e, d                                          ; $462c: $5a
	push af                                          ; $462d: $f5
	ld a, [$5dfd]                                    ; $462e: $fa $fd $5d
	ld l, a                                          ; $4631: $6f
	sbc c                                            ; $4632: $99
	jr z, jr_04c_468a                                ; $4633: $28 $55

	cp a                                             ; $4635: $bf
	ld e, a                                          ; $4636: $5f
	cp d                                             ; $4637: $ba
	ld a, a                                          ; $4638: $7f
	ld sp, hl                                        ; $4639: $f9
	ld a, [hl]                                       ; $463a: $7e
	add hl, bc                                       ; $463b: $09
	sbc e                                            ; $463c: $9b
	add b                                            ; $463d: $80
	ld d, l                                          ; $463e: $55
	ld [$5fff], a                                    ; $463f: $ea $ff $5f
	ldh [$80], a                                     ; $4642: $e0 $80
	inc de                                           ; $4644: $13
	ld [$0e85], sp                                   ; $4645: $08 $85 $0e
	xor h                                            ; $4648: $ac
	cp $ad                                           ; $4649: $fe $ad
	ld e, [hl]                                       ; $464b: $5e
	rrca                                             ; $464c: $0f
	rlca                                             ; $464d: $07
	ld [bc], a                                       ; $464e: $02
	ld bc, $0103                                     ; $464f: $01 $03 $01
	ld [bc], a                                       ; $4652: $02
	ld bc, $3f8b                                     ; $4653: $01 $8b $3f
	ld a, a                                          ; $4656: $7f
	cp d                                             ; $4657: $ba
	ld e, l                                          ; $4658: $5d
	xor a                                            ; $4659: $af
	ld d, a                                          ; $465a: $57
	xor e                                            ; $465b: $ab
	db $f4                                           ; $465c: $f4
	ret nz                                           ; $465d: $c0

	add b                                            ; $465e: $80
	ld b, l                                          ; $465f: $45
	and d                                            ; $4660: $a2
	ld d, b                                          ; $4661: $50
	xor b                                            ; $4662: $a8
	sub d                                            ; $4663: $92
	ld d, h                                          ; $4664: $54

jr_04c_4665:
	cp a                                             ; $4665: $bf
	ld a, [$bd7f]                                    ; $4666: $fa $7f $bd
	ld a, [$dfff]                                    ; $4669: $fa $ff $df
	xor a                                            ; $466c: $af
	ld b, b                                          ; $466d: $40
	nop                                              ; $466e: $00
	add b                                            ; $466f: $80
	ld b, d                                          ; $4670: $42
	ld l, [hl]                                       ; $4671: $6e
	ld a, d                                          ; $4672: $7a
	sbc c                                            ; $4673: $99
	ret nz                                           ; $4674: $c0

	xor b                                            ; $4675: $a8
	call nc, $d1a8                                   ; $4676: $d4 $a8 $d1
	xor d                                            ; $4679: $aa
	db $f4                                           ; $467a: $f4
	sbc l                                            ; $467b: $9d
	ld [$5711], sp                                   ; $467c: $08 $11 $57
	ldh a, [$9a]                                     ; $467f: $f0 $9a
	ld a, [bc]                                       ; $4681: $0a
	ld d, a                                          ; $4682: $57
	xor b                                            ; $4683: $a8
	ld d, l                                          ; $4684: $55
	cp a                                             ; $4685: $bf
	rst FarCall                                          ; $4686: $f7
	ld a, l                                          ; $4687: $7d
	or c                                             ; $4688: $b1
	ld a, [hl]                                       ; $4689: $7e

jr_04c_468a:
	pop af                                           ; $468a: $f1
	ld a, a                                          ; $468b: $7f
	cp $f9                                           ; $468c: $fe $f9
	sub d                                            ; $468e: $92
	ld a, a                                          ; $468f: $7f
	sbc a                                            ; $4690: $9f
	di                                               ; $4691: $f3
	sbc [hl]                                         ; $4692: $9e
	di                                               ; $4693: $f3
	ei                                               ; $4694: $fb
	db $fd                                           ; $4695: $fd
	rst $38                                          ; $4696: $ff
	add b                                            ; $4697: $80
	ldh [$fc], a                                     ; $4698: $e0 $fc
	ld a, a                                          ; $469a: $7f
	rrca                                             ; $469b: $0f
	ld a, e                                          ; $469c: $7b
	adc [hl]                                         ; $469d: $8e
	halt                                             ; $469e: $76
	jp nc, $ef9c                                     ; $469f: $d2 $9c $ef

	db $fc                                           ; $46a2: $fc
	sub a                                            ; $46a3: $97
	ld [hl], a                                       ; $46a4: $77
	ldh [$98], a                                     ; $46a5: $e0 $98
	add b                                            ; $46a7: $80
	ldh a, [rIE]                                     ; $46a8: $f0 $ff
	rst GetHLinHL                                          ; $46aa: $cf
	ret nz                                           ; $46ab: $c0

	rst $38                                          ; $46ac: $ff
	ld a, a                                          ; $46ad: $7f
	ld [hl], l                                       ; $46ae: $75
	ld h, d                                          ; $46af: $62
	sbc l                                            ; $46b0: $9d
	rst GetHLinHL                                          ; $46b1: $cf
	ld a, h                                          ; $46b2: $7c
	ei                                               ; $46b3: $fb
	ld a, a                                          ; $46b4: $7f
	xor $72                                          ; $46b5: $ee $72
	or b                                             ; $46b7: $b0
	ld e, d                                          ; $46b8: $5a
	and b                                            ; $46b9: $a0
	rst SubAFromDE                                          ; $46ba: $df
	ld a, a                                          ; $46bb: $7f
	ld [hl], a                                       ; $46bc: $77
	ldh [$5f], a                                     ; $46bd: $e0 $5f
	ldh a, [$9b]                                     ; $46bf: $f0 $9b
	rst JumpTable                                          ; $46c1: $c7
	pop hl                                           ; $46c2: $e1
	ldh a, [$f9]                                     ; $46c3: $f0 $f9
	ld d, a                                          ; $46c5: $57
	ldh a, [hDisp1_WX]                                     ; $46c6: $f0 $96
	db $fd                                           ; $46c8: $fd
	ld e, $8f                                        ; $46c9: $1e $8f
	ld a, [hl]                                       ; $46cb: $7e
	cp a                                             ; $46cc: $bf
	sbc $ff                                          ; $46cd: $de $ff
	cp $02                                           ; $46cf: $fe $02
	ld a, c                                          ; $46d1: $79
	cpl                                              ; $46d2: $2f
	ld [hl], a                                       ; $46d3: $77
	cp $7e                                           ; $46d4: $fe $7e
	add $7f                                          ; $46d6: $c6 $7f
	cp $9e                                           ; $46d8: $fe $9e
	ld d, a                                          ; $46da: $57
	ld a, e                                          ; $46db: $7b
	cp $7e                                           ; $46dc: $fe $7e
	add $6f                                          ; $46de: $c6 $6f
	cp $9d                                           ; $46e0: $fe $9d
	xor e                                            ; $46e2: $ab
	ld e, l                                          ; $46e3: $5d
	ld l, [hl]                                       ; $46e4: $6e
	adc $f9                                          ; $46e5: $ce $f9
	sbc c                                            ; $46e7: $99
	ld [$aa75], a                                    ; $46e8: $ea $75 $aa
	ld a, a                                          ; $46eb: $7f
	xor d                                            ; $46ec: $aa
	db $f4                                           ; $46ed: $f4
	ld e, a                                          ; $46ee: $5f
	ldh a, [$7f]                                     ; $46ef: $f0 $7f
	ldh [c], a                                       ; $46f1: $e2
	sbc c                                            ; $46f2: $99
	xor d                                            ; $46f3: $aa
	push af                                          ; $46f4: $f5
	xor d                                            ; $46f5: $aa
	ld e, l                                          ; $46f6: $5d
	adc d                                            ; $46f7: $8a
	db $f4                                           ; $46f8: $f4
	ld sp, hl                                        ; $46f9: $f9
	sub a                                            ; $46fa: $97
	xor e                                            ; $46fb: $ab
	ld d, l                                          ; $46fc: $55
	xor a                                            ; $46fd: $af
	ld d, l                                          ; $46fe: $55
	cp e                                             ; $46ff: $bb
	ld d, l                                          ; $4700: $55
	cp d                                             ; $4701: $ba
	ld d, a                                          ; $4702: $57
	ld h, d                                          ; $4703: $62
	db $10                                           ; $4704: $10
	ld a, a                                          ; $4705: $7f
	ld b, l                                          ; $4706: $45
	sbc d                                            ; $4707: $9a
	ld e, a                                          ; $4708: $5f
	ld a, [$aa55]                                    ; $4709: $fa $55 $aa
	call nc, $f063                                   ; $470c: $d4 $63 $f0
	ld a, [hl]                                       ; $470f: $7e
	ld h, a                                          ; $4710: $67
	sbc d                                            ; $4711: $9a
	rst SubAFromHL                                          ; $4712: $d7
	xor e                                            ; $4713: $ab
	ld d, l                                          ; $4714: $55
	xor d                                            ; $4715: $aa
	ld d, b                                          ; $4716: $50
	ld a, e                                          ; $4717: $7b
	sub h                                            ; $4718: $94
	db $fc                                           ; $4719: $fc
	ld a, [hl]                                       ; $471a: $7e
	add $95                                          ; $471b: $c6 $95
	ld d, l                                          ; $471d: $55
	xor e                                            ; $471e: $ab
	rst $38                                          ; $471f: $ff
	ld a, a                                          ; $4720: $7f
	and d                                            ; $4721: $a2
	inc b                                            ; $4722: $04
	xor b                                            ; $4723: $a8
	ld d, h                                          ; $4724: $54
	xor d                                            ; $4725: $aa
	ld d, h                                          ; $4726: $54
	db $fd                                           ; $4727: $fd
	sbc [hl]                                         ; $4728: $9e
	ld [hl], a                                       ; $4729: $77
	sbc $ff                                          ; $472a: $de $ff
	sbc e                                            ; $472c: $9b
	cp a                                             ; $472d: $bf
	ld d, l                                          ; $472e: $55
	nop                                              ; $472f: $00
	ccf                                              ; $4730: $3f
	ld sp, hl                                        ; $4731: $f9
	sbc b                                            ; $4732: $98
	push de                                          ; $4733: $d5
	rst $38                                          ; $4734: $ff
	rst $38                                          ; $4735: $ff
	ld [rIE], a                                    ; $4736: $ea $ff $ff
	db $10                                           ; $4739: $10
	ld h, e                                          ; $473a: $63
	sub b                                            ; $473b: $90
	ld a, e                                          ; $473c: $7b
	ld [hl], e                                       ; $473d: $73
	sbc d                                            ; $473e: $9a
	xor a                                            ; $473f: $af
	rst $38                                          ; $4740: $ff
	ld e, a                                          ; $4741: $5f
	rla                                              ; $4742: $17
	ld c, a                                          ; $4743: $4f
	ld d, l                                          ; $4744: $55
	or b                                             ; $4745: $b0
	rst SubAFromDE                                          ; $4746: $df
	rst $38                                          ; $4747: $ff
	sbc [hl]                                         ; $4748: $9e
	rst SubAFromDE                                          ; $4749: $df
	ld d, c                                          ; $474a: $51
	and b                                            ; $474b: $a0
	ld d, a                                          ; $474c: $57
	ld d, b                                          ; $474d: $50
	inc [hl]                                         ; $474e: $34
	nop                                              ; $474f: $00
	sbc e                                            ; $4750: $9b
	ld h, [hl]                                       ; $4751: $66
	ld h, a                                          ; $4752: $67
	ld [hl], a                                       ; $4753: $77
	ld [hl], a                                       ; $4754: $77
	db $dd                                           ; $4755: $dd
	ld h, [hl]                                       ; $4756: $66
	rst SubAFromDE                                          ; $4757: $df
	ld [hl], a                                       ; $4758: $77
	sbc c                                            ; $4759: $99
	inc sp                                           ; $475a: $33
	ld h, [hl]                                       ; $475b: $66
	ld h, e                                          ; $475c: $63
	ld [hl], $66                                     ; $475d: $36 $66
	ld h, e                                          ; $475f: $63
	ld [hl], e                                       ; $4760: $73
	or $db                                           ; $4761: $f6 $db
	inc sp                                           ; $4763: $33
	sbc [hl]                                         ; $4764: $9e
	ld [hl], $d7                                     ; $4765: $36 $d7
	inc sp                                           ; $4767: $33
	sbc [hl]                                         ; $4768: $9e
	ld h, [hl]                                       ; $4769: $66
	sbc $33                                          ; $476a: $de $33
	sbc [hl]                                         ; $476c: $9e
	inc [hl]                                         ; $476d: $34
	sub $44                                          ; $476e: $d6 $44
	sbc l                                            ; $4770: $9d
	ld d, l                                          ; $4771: $55
	ld d, h                                          ; $4772: $54
	db $dd                                           ; $4773: $dd
	ld d, l                                          ; $4774: $55
	sbc l                                            ; $4775: $9d
	ld b, h                                          ; $4776: $44
	ld b, l                                          ; $4777: $45
	sbc $55                                          ; $4778: $de $55
	ld [hl], e                                       ; $477a: $73
	or $77                                           ; $477b: $f6 $77
	rst FarCall                                          ; $477d: $f7
	inc bc                                           ; $477e: $03
	rst $38                                          ; $477f: $ff
	sbc $55                                          ; $4780: $de $55
	inc [hl]                                         ; $4782: $34
	adc d                                            ; $4783: $8a
	rst $38                                          ; $4784: $ff
	sbc [hl]                                         ; $4785: $9e
	ld bc, $dffe                                     ; $4786: $01 $fe $df
	ld bc, $008b                                     ; $4789: $01 $8b $00
	ld [bc], a                                       ; $478c: $02
	rlca                                             ; $478d: $07
	rra                                              ; $478e: $1f
	rst SubAFromDE                                          ; $478f: $df
	ld a, a                                          ; $4790: $7f
	ld a, a                                          ; $4791: $7f
	ld l, a                                          ; $4792: $6f
	jr jr_04c_4795                                   ; $4793: $18 $00

jr_04c_4795:
	ld [$0404], sp                                   ; $4795: $08 $04 $04
	ld bc, $fef6                                     ; $4798: $01 $f6 $fe
	nop                                              ; $479b: $00
	add hl, bc                                       ; $479c: $09
	ret nz                                           ; $479d: $c0

	rst GetHLinHL                                          ; $479e: $cf
	call c, $90ff                                    ; $479f: $dc $ff $90
	rra                                              ; $47a2: $1f
	inc bc                                           ; $47a3: $03
	rlca                                             ; $47a4: $07
	dec sp                                           ; $47a5: $3b
	ld b, c                                          ; $47a6: $41
	rrca                                             ; $47a7: $0f
	rra                                              ; $47a8: $1f
	nop                                              ; $47a9: $00
	ldh [$fc], a                                     ; $47aa: $e0 $fc
	ld hl, sp-$04                                    ; $47ac: $f8 $fc
	cp $f0                                           ; $47ae: $fe $f0
	ldh [$d9], a                                     ; $47b0: $e0 $d9
	rst $38                                          ; $47b2: $ff
	ld sp, hl                                        ; $47b3: $f9
	sub a                                            ; $47b4: $97
	ld d, b                                          ; $47b5: $50
	and b                                            ; $47b6: $a0
	ret nc                                           ; $47b7: $d0

	add sp, -$4c                                     ; $47b8: $e8 $b4
	cp d                                             ; $47ba: $ba
	cp h                                             ; $47bb: $bc
	ld a, [$defc]                                    ; $47bc: $fa $fc $de
	db $10                                           ; $47bf: $10
	di                                               ; $47c0: $f3
	sbc b                                            ; $47c1: $98
	ccf                                              ; $47c2: $3f
	ld a, a                                          ; $47c3: $7f
	dec d                                            ; $47c4: $15
	ld a, [bc]                                       ; $47c5: $0a
	db $10                                           ; $47c6: $10
	jr nz, jr_04c_47c9                               ; $47c7: $20 $00

jr_04c_47c9:
	ld [hl], e                                       ; $47c9: $73
	ld [$bc7f], a                                    ; $47ca: $ea $7f $bc
	rst SubAFromDE                                          ; $47cd: $df
	rra                                              ; $47ce: $1f
	rst SubAFromDE                                          ; $47cf: $df
	rst $38                                          ; $47d0: $ff
	sbc d                                            ; $47d1: $9a
	ld e, a                                          ; $47d2: $5f
	cp h                                             ; $47d3: $bc
	ld a, b                                          ; $47d4: $78
	inc b                                            ; $47d5: $04
	inc b                                            ; $47d6: $04
	db $fd                                           ; $47d7: $fd
	sbc l                                            ; $47d8: $9d
	inc bc                                           ; $47d9: $03
	add a                                            ; $47da: $87
	db $db                                           ; $47db: $db
	rst $38                                          ; $47dc: $ff
	sbc l                                            ; $47dd: $9d
	ccf                                              ; $47de: $3f
	rlca                                             ; $47df: $07
	ei                                               ; $47e0: $fb
	sbc l                                            ; $47e1: $9d
	ret nz                                           ; $47e2: $c0

	ld hl, sp-$24                                    ; $47e3: $f8 $dc
	rst $38                                          ; $47e5: $ff
	call c, $fee0                                    ; $47e6: $dc $e0 $fe
	db $dd                                           ; $47e9: $dd
	rra                                              ; $47ea: $1f
	db $dd                                           ; $47eb: $dd
	rst $38                                          ; $47ec: $ff
	sbc l                                            ; $47ed: $9d
	ldh a, [rLCDC]                                   ; $47ee: $f0 $40
	ei                                               ; $47f0: $fb
	sbc l                                            ; $47f1: $9d
	rrca                                             ; $47f2: $0f
	cp a                                             ; $47f3: $bf
	jp c, $dfff                                      ; $47f4: $da $ff $df

	ld a, a                                          ; $47f7: $7f
	sbc [hl]                                         ; $47f8: $9e
	ld a, b                                          ; $47f9: $78
	ld [hl], e                                       ; $47fa: $73
	db $ed                                           ; $47fb: $ed
	rst SubAFromDE                                          ; $47fc: $df
	add b                                            ; $47fd: $80
	sbc [hl]                                         ; $47fe: $9e
	add a                                            ; $47ff: $87
	ld l, e                                          ; $4800: $6b
	db $ed                                           ; $4801: $ed
	ld l, e                                          ; $4802: $6b
	cp a                                             ; $4803: $bf
	sbc [hl]                                         ; $4804: $9e
	nop                                              ; $4805: $00
	ld l, a                                          ; $4806: $6f
	cp a                                             ; $4807: $bf
	rst SubAFromDE                                          ; $4808: $df
	rst $38                                          ; $4809: $ff
	sbc [hl]                                         ; $480a: $9e
	add c                                            ; $480b: $81
	ld a, [$7e9e]                                    ; $480c: $fa $9e $7e
	reti                                             ; $480f: $d9


	rst $38                                          ; $4810: $ff
	rst SubAFromDE                                          ; $4811: $df
	ccf                                              ; $4812: $3f
	sbc l                                            ; $4813: $9d
	ld d, l                                          ; $4814: $55
	jp z, $9d73                                      ; $4815: $ca $73 $9d

	sbc $e0                                          ; $4818: $de $e0
	call c, $9cff                                    ; $481a: $dc $ff $9c
	ld [$aa55], a                                    ; $481d: $ea $55 $aa
	ld sp, hl                                        ; $4820: $f9
	call c, $9dff                                    ; $4821: $dc $ff $9d
	xor a                                            ; $4824: $af
	ld d, a                                          ; $4825: $57
	ld c, a                                          ; $4826: $4f
	ldh a, [$df]                                     ; $4827: $f0 $df
	rst $38                                          ; $4829: $ff
	ld a, a                                          ; $482a: $7f
	nop                                              ; $482b: $00
	ld e, a                                          ; $482c: $5f
	ldh a, [$9a]                                     ; $482d: $f0 $9a
	rst AddAOntoHL                                          ; $482f: $ef
	rst SubAFromHL                                          ; $4830: $d7
	ld [$a8d1], a                                    ; $4831: $ea $d1 $a8
	ld d, e                                          ; $4834: $53
	ldh [$9d], a                                     ; $4835: $e0 $9d
	cp $7d                                           ; $4837: $fe $7d
	ld h, a                                          ; $4839: $67
	ret nc                                           ; $483a: $d0

	sbc [hl]                                         ; $483b: $9e
	inc c                                            ; $483c: $0c
	cp $9a                                           ; $483d: $fe $9a
	inc b                                            ; $483f: $04
	ld [$3f05], sp                                   ; $4840: $08 $05 $3f
	ccf                                              ; $4843: $3f
	ld [hl], e                                       ; $4844: $73
	ld h, l                                          ; $4845: $65
	sbc $ff                                          ; $4846: $de $ff
	sbc b                                            ; $4848: $98
	ld a, [hl]                                       ; $4849: $7e
	ld l, [hl]                                       ; $484a: $6e
	ldh [c], a                                       ; $484b: $e2
	inc de                                           ; $484c: $13
	pop af                                           ; $484d: $f1
	rst AddAOntoHL                                          ; $484e: $ef
	db $fc                                           ; $484f: $fc
	sbc $ff                                          ; $4850: $de $ff
	sbc [hl]                                         ; $4852: $9e
	db $fd                                           ; $4853: $fd
	ld a, d                                          ; $4854: $7a
	pop de                                           ; $4855: $d1
	rst SubAFromDE                                          ; $4856: $df
	rst $38                                          ; $4857: $ff
	rst SubAFromDE                                          ; $4858: $df
	sbc a                                            ; $4859: $9f
	ld a, a                                          ; $485a: $7f
	add hl, sp                                       ; $485b: $39
	adc e                                            ; $485c: $8b
	cp a                                             ; $485d: $bf
	rst SubAFromDE                                          ; $485e: $df
	add sp, -$08                                     ; $485f: $e8 $f8
	ld h, b                                          ; $4861: $60
	ld h, b                                          ; $4862: $60
	ldh [rP1], a                                     ; $4863: $e0 $00
	ld b, b                                          ; $4865: $40
	ret nz                                           ; $4866: $c0

	rst $38                                          ; $4867: $ff
	ei                                               ; $4868: $fb
	cp $f5                                           ; $4869: $fe $f5
	xor d                                            ; $486b: $aa
	ld b, h                                          ; $486c: $44
	call nz, $c646                                   ; $486d: $c4 $46 $c6
	and $fd                                          ; $4870: $e6 $fd
	add b                                            ; $4872: $80
	ld a, h                                          ; $4873: $7c
	ld b, h                                          ; $4874: $44
	add $c6                                          ; $4875: $c6 $c6
	cp h                                             ; $4877: $bc
	ld a, d                                          ; $4878: $7a
	cp l                                             ; $4879: $bd
	ld a, d                                          ; $487a: $7a
	ld a, l                                          ; $487b: $7d
	ld e, [hl]                                       ; $487c: $5e
	db $fd                                           ; $487d: $fd
	ld a, [$1010]                                    ; $487e: $fa $10 $10
	jr jr_04c_488b                                   ; $4881: $18 $08

	ld [$fc0c], sp                                   ; $4883: $08 $0c $fc
	ld a, c                                          ; $4886: $79
	nop                                              ; $4887: $00
	ld b, b                                          ; $4888: $40
	jr nz, jr_04c_488b                               ; $4889: $20 $00

jr_04c_488b:
	nop                                              ; $488b: $00
	ld b, $50                                        ; $488c: $06 $50
	add b                                            ; $488e: $80
	ld a, a                                          ; $488f: $7f
	ccf                                              ; $4890: $3f
	rra                                              ; $4891: $1f
	sub d                                            ; $4892: $92
	rra                                              ; $4893: $1f
	rlca                                             ; $4894: $07
	inc bc                                           ; $4895: $03
	cpl                                              ; $4896: $2f
	ld a, a                                          ; $4897: $7f
	nop                                              ; $4898: $00
	ld [bc], a                                       ; $4899: $02
	ld [bc], a                                       ; $489a: $02
	dec b                                            ; $489b: $05
	add hl, bc                                       ; $489c: $09
	inc d                                            ; $489d: $14
	ld a, [hl+]                                      ; $489e: $2a
	ld [de], a                                       ; $489f: $12
	ld a, e                                          ; $48a0: $7b
	or b                                             ; $48a1: $b0
	add b                                            ; $48a2: $80
	ld a, [$eaf7]                                    ; $48a3: $fa $f7 $ea
	call nc, $80ec                                   ; $48a6: $d4 $ec $80
	ld b, [hl]                                       ; $48a9: $46
	xor e                                            ; $48aa: $ab
	jr c, @+$7e                                      ; $48ab: $38 $7c

	ld [bc], a                                       ; $48ad: $02
	ld h, b                                          ; $48ae: $60
	ld b, b                                          ; $48af: $40
	rst $38                                          ; $48b0: $ff
	cp a                                             ; $48b1: $bf
	ld d, a                                          ; $48b2: $57
	rst $38                                          ; $48b3: $ff
	add e                                            ; $48b4: $83
	ld bc, $bf1f                                     ; $48b5: $01 $1f $bf
	inc b                                            ; $48b8: $04
	nop                                              ; $48b9: $00
	rlca                                             ; $48ba: $07
	cp c                                             ; $48bb: $b9
	ld b, h                                          ; $48bc: $44
	ld [$2010], sp                                   ; $48bd: $08 $10 $20
	ld hl, sp-$20                                    ; $48c0: $f8 $e0
	add b                                            ; $48c2: $80
	jp $f8ce                                         ; $48c3: $c3 $ce $f8


	ldh a, [$e1]                                     ; $48c6: $f0 $e1
	ret nz                                           ; $48c8: $c0

	db $10                                           ; $48c9: $10
	ret nz                                           ; $48ca: $c0

	ld b, c                                          ; $48cb: $41
	ld [bc], a                                       ; $48cc: $02
	ld h, c                                          ; $48cd: $61
	ld b, h                                          ; $48ce: $44
	ld h, c                                          ; $48cf: $61
	inc b                                            ; $48d0: $04
	rrca                                             ; $48d1: $0f
	rlca                                             ; $48d2: $07
	add [hl]                                         ; $48d3: $86
	inc e                                            ; $48d4: $1c
	inc a                                            ; $48d5: $3c
	ld sp, hl                                        ; $48d6: $f9
	sbc c                                            ; $48d7: $99
	add hl, bc                                       ; $48d8: $09
	nop                                              ; $48d9: $00
	sub b                                            ; $48da: $90
	nop                                              ; $48db: $00
	call nz, $9094                                   ; $48dc: $c4 $94 $90
	inc b                                            ; $48df: $04
	ret z                                            ; $48e0: $c8

	rst $38                                          ; $48e1: $ff
	ld a, a                                          ; $48e2: $7f
	rst AddAOntoHL                                          ; $48e3: $ef
	add b                                            ; $48e4: $80
	ld h, e                                          ; $48e5: $63
	ldh [c], a                                       ; $48e6: $e2
	and $e4                                          ; $48e7: $e6 $e4
	add h                                            ; $48e9: $84
	nop                                              ; $48ea: $00
	nop                                              ; $48eb: $00
	ld c, b                                          ; $48ec: $48
	nop                                              ; $48ed: $00
	ld b, e                                          ; $48ee: $43

jr_04c_48ef:
	ld b, b                                          ; $48ef: $40
	nop                                              ; $48f0: $00
	add b                                            ; $48f1: $80
	rst $38                                          ; $48f2: $ff
	rst $38                                          ; $48f3: $ff
	add a                                            ; $48f4: $87
	inc bc                                           ; $48f5: $03
	ld [hl], d                                       ; $48f6: $72
	di                                               ; $48f7: $f3
	di                                               ; $48f8: $f3
	rst SubAFromBC                                          ; $48f9: $e7
	nop                                              ; $48fa: $00
	ld a, [hl+]                                      ; $48fb: $2a
	ld d, l                                          ; $48fc: $55
	sbc [hl]                                         ; $48fd: $9e
	ld d, [hl]                                       ; $48fe: $56
	nop                                              ; $48ff: $00
	db $fc                                           ; $4900: $fc
	ld bc, $d5ff                                     ; $4901: $01 $ff $d5
	sbc c                                            ; $4904: $99
	xor d                                            ; $4905: $aa
	ld a, a                                          ; $4906: $7f
	pop hl                                           ; $4907: $e1
	ret nz                                           ; $4908: $c0

	add b                                            ; $4909: $80
	cp $75                                           ; $490a: $fe $75
	ldh a, [c]                                       ; $490c: $f2
	sbc e                                            ; $490d: $9b
	adc b                                            ; $490e: $88
	xor b                                            ; $490f: $a8
	inc d                                            ; $4910: $14
	jr z, jr_04c_48ef                                ; $4911: $28 $dc

	rst $38                                          ; $4913: $ff
	sbc d                                            ; $4914: $9a
	ld e, a                                          ; $4915: $5f
	ld l, a                                          ; $4916: $6f
	ld e, a                                          ; $4917: $5f
	ld b, d                                          ; $4918: $42
	add b                                            ; $4919: $80
	db $fc                                           ; $491a: $fc
	sbc l                                            ; $491b: $9d
	ld a, [bc]                                       ; $491c: $0a
	cp l                                             ; $491d: $bd
	ld [hl], a                                       ; $491e: $77
	inc hl                                           ; $491f: $23
	rst SubAFromDE                                          ; $4920: $df
	rst $38                                          ; $4921: $ff
	sbc c                                            ; $4922: $99
	push af                                          ; $4923: $f5
	nop                                              ; $4924: $00
	add b                                            ; $4925: $80
	ldh [$f0], a                                     ; $4926: $e0 $f0
	ldh a, [$72]                                     ; $4928: $f0 $72
	ld e, [hl]                                       ; $492a: $5e
	sbc [hl]                                         ; $492b: $9e
	nop                                              ; $492c: $00
	sbc $20                                          ; $492d: $de $20
	sbc h                                            ; $492f: $9c
	ret nz                                           ; $4930: $c0

	nop                                              ; $4931: $00
	dec b                                            ; $4932: $05
	ldh a, [c]                                       ; $4933: $f2
	sbc e                                            ; $4934: $9b
	ld a, l                                          ; $4935: $7d
	xor [hl]                                         ; $4936: $ae
	ld d, l                                          ; $4937: $55
	ld a, [hl+]                                      ; $4938: $2a
	ld d, a                                          ; $4939: $57
	db $ec                                           ; $493a: $ec
	sbc l                                            ; $493b: $9d
	ld d, h                                          ; $493c: $54
	ld a, [bc]                                       ; $493d: $0a
	di                                               ; $493e: $f3
	sub b                                            ; $493f: $90
	ld e, h                                          ; $4940: $5c
	ld l, $17                                        ; $4941: $2e $17
	rrca                                             ; $4943: $0f
	daa                                              ; $4944: $27
	ld [$1f0e], sp                                   ; $4945: $08 $0e $1f
	inc c                                            ; $4948: $0c
	ld b, $07                                        ; $4949: $06 $07
	rlca                                             ; $494b: $07
	ld b, $00                                        ; $494c: $06 $00
	ld c, $7a                                        ; $494e: $0e $7a
	inc e                                            ; $4950: $1c
	sbc d                                            ; $4951: $9a
	db $fd                                           ; $4952: $fd
	pop af                                           ; $4953: $f1
	ldh [$c0], a                                     ; $4954: $e0 $c0
	call c, $ffdd                                    ; $4956: $dc $dd $ff
	sbc [hl]                                         ; $4959: $9e
	db $fd                                           ; $495a: $fd
	ld a, d                                          ; $495b: $7a
	pop de                                           ; $495c: $d1
	call c, $9cff                                    ; $495d: $dc $ff $9c
	ld a, l                                          ; $4960: $7d
	rra                                              ; $4961: $1f
	sbc a                                            ; $4962: $9f
	ret c                                            ; $4963: $d8

	rst $38                                          ; $4964: $ff
	sub b                                            ; $4965: $90
	pop hl                                           ; $4966: $e1
	jp hl                                            ; $4967: $e9


	db $dd                                           ; $4968: $dd
	db $ed                                           ; $4969: $ed
	pop bc                                           ; $496a: $c1
	ret nz                                           ; $496b: $c0

	ldh [$f0], a                                     ; $496c: $e0 $f0
	cp $d6                                           ; $496e: $fe $d6
	ldh [c], a                                       ; $4970: $e2
	ldh a, [c]                                       ; $4971: $f2
	cp $ff                                           ; $4972: $fe $ff
	rst $38                                          ; $4974: $ff
	halt                                             ; $4975: $76
	inc e                                            ; $4976: $1c
	add e                                            ; $4977: $83
	db $fd                                           ; $4978: $fd
	ld hl, sp-$10                                    ; $4979: $f8 $f0
	ldh [$28], a                                     ; $497b: $e0 $28
	and $fb                                          ; $497d: $e6 $fb
	cp a                                             ; $497f: $bf
	sbc [hl]                                         ; $4980: $9e
	sbc a                                            ; $4981: $9f
	ld sp, hl                                        ; $4982: $f9
	ld sp, hl                                        ; $4983: $f9
	rst $38                                          ; $4984: $ff
	rrca                                             ; $4985: $0f
	inc e                                            ; $4986: $1c
	inc e                                            ; $4987: $1c
	inc d                                            ; $4988: $14
	sub l                                            ; $4989: $95
	ld [bc], a                                       ; $498a: $02
	ld e, a                                          ; $498b: $5f
	ld e, [hl]                                       ; $498c: $5e
	db $10                                           ; $498d: $10
	inc bc                                           ; $498e: $03
	inc bc                                           ; $498f: $03
	dec bc                                           ; $4990: $0b
	dec bc                                           ; $4991: $0b
	add c                                            ; $4992: $81
	add b                                            ; $4993: $80
	halt                                             ; $4994: $76
	inc b                                            ; $4995: $04
	sbc d                                            ; $4996: $9a
	ld bc, $15ca                                     ; $4997: $01 $ca $15
	xor d                                            ; $499a: $aa
	ld e, a                                          ; $499b: $5f
	halt                                             ; $499c: $76
	ld e, d                                          ; $499d: $5a
	adc e                                            ; $499e: $8b
	push af                                          ; $499f: $f5
	ld [$a055], a                                    ; $49a0: $ea $55 $a0
	jr z, jr_04c_49ba                                ; $49a3: $28 $15

	ld a, [bc]                                       ; $49a5: $0a
	ld b, h                                          ; $49a6: $44
	xor d                                            ; $49a7: $aa
	ld d, l                                          ; $49a8: $55
	xor a                                            ; $49a9: $af
	rst SubAFromDE                                          ; $49aa: $df
	rst SubAFromHL                                          ; $49ab: $d7
	ld [$bbf5], a                                    ; $49ac: $ea $f5 $bb
	ld d, l                                          ; $49af: $55
	xor d                                            ; $49b0: $aa
	ld d, b                                          ; $49b1: $50
	jr nz, jr_04c_4a2f                               ; $49b2: $20 $7b

	ld sp, $519d                                     ; $49b4: $31 $9d $51
	xor c                                            ; $49b7: $a9
	ld l, [hl]                                       ; $49b8: $6e
	ld d, h                                          ; $49b9: $54

jr_04c_49ba:
	sbc h                                            ; $49ba: $9c
	xor [hl]                                         ; $49bb: $ae
	ld d, a                                          ; $49bc: $57
	inc bc                                           ; $49bd: $03
	ld a, e                                          ; $49be: $7b
	dec sp                                           ; $49bf: $3b
	add b                                            ; $49c0: $80
	ld a, [de]                                       ; $49c1: $1a
	nop                                              ; $49c2: $00
	inc d                                            ; $49c3: $14
	ld a, [$fe45]                                    ; $49c4: $fa $45 $fe
	rst $38                                          ; $49c7: $ff
	ret nz                                           ; $49c8: $c0

	rst SubAFromBC                                          ; $49c9: $e7
	rst $38                                          ; $49ca: $ff
	db $eb                                           ; $49cb: $eb
	push af                                          ; $49cc: $f5
	cp d                                             ; $49cd: $ba
	ld bc, $f000                                     ; $49ce: $01 $00 $f0
	ld bc, $4100                                     ; $49d1: $01 $00 $41
	ld a, [hl+]                                      ; $49d4: $2a
	ld d, l                                          ; $49d5: $55
	cp a                                             ; $49d6: $bf
	ld a, a                                          ; $49d7: $7f
	inc c                                            ; $49d8: $0c
	cp $ff                                           ; $49d9: $fe $ff
	cp [hl]                                          ; $49db: $be
	push de                                          ; $49dc: $d5
	xor d                                            ; $49dd: $aa
	ld b, b                                          ; $49de: $40
	add b                                            ; $49df: $80
	add b                                            ; $49e0: $80
	nop                                              ; $49e1: $00
	jr nc, jr_04c_49e5                               ; $49e2: $30 $01

	ld b, b                                          ; $49e4: $40

jr_04c_49e5:
	xor c                                            ; $49e5: $a9
	ld d, l                                          ; $49e6: $55
	xor e                                            ; $49e7: $ab
	cp $0c                                           ; $49e8: $fe $0c
	ld e, $ff                                        ; $49ea: $1e $ff
	cp a                                             ; $49ec: $bf
	ld d, [hl]                                       ; $49ed: $56
	xor e                                            ; $49ee: $ab
	ld d, l                                          ; $49ef: $55
	ld bc, $188c                                     ; $49f0: $01 $8c $18
	push bc                                          ; $49f3: $c5
	dec bc                                           ; $49f4: $0b
	ld d, a                                          ; $49f5: $57
	xor d                                            ; $49f6: $aa
	ld d, a                                          ; $49f7: $57
	rst $38                                          ; $49f8: $ff
	ld b, a                                          ; $49f9: $47
	rrca                                             ; $49fa: $0f
	ld a, [$aff7]                                    ; $49fb: $fa $f7 $af
	ld d, l                                          ; $49fe: $55
	xor b                                            ; $49ff: $a8
	halt                                             ; $4a00: $76
	ldh [c], a                                       ; $4a01: $e2
	sbc e                                            ; $4a02: $9b
	jr nz, @-$29                                     ; $4a03: $20 $d5

	ld [$ddd5], a                                    ; $4a05: $ea $d5 $dd
	rst $38                                          ; $4a08: $ff
	add b                                            ; $4a09: $80
	rst SubAFromDE                                          ; $4a0a: $df
	ld [$2a75], a                                    ; $4a0b: $ea $75 $2a
	nop                                              ; $4a0e: $00
	adc b                                            ; $4a0f: $88
	jr nc, jr_04c_4a3c                               ; $4a10: $30 $2a

	ld d, l                                          ; $4a12: $55
	ld a, [bc]                                       ; $4a13: $0a
	or l                                             ; $4a14: $b5
	ld l, e                                          ; $4a15: $6b
	rst FarCall                                          ; $4a16: $f7
	ld a, a                                          ; $4a17: $7f
	rst SubAFromDE                                          ; $4a18: $df
	push af                                          ; $4a19: $f5
	ld [$5af5], a                                    ; $4a1a: $ea $f5 $5a
	sbc h                                            ; $4a1d: $9c
	inc c                                            ; $4a1e: $0c
	ld bc, $8000                                     ; $4a1f: $01 $00 $80
	ld b, b                                          ; $4a22: $40
	and b                                            ; $4a23: $a0
	ld d, h                                          ; $4a24: $54
	xor d                                            ; $4a25: $aa
	push af                                          ; $4a26: $f5
	cp $ff                                           ; $4a27: $fe $ff
	sbc d                                            ; $4a29: $9a
	ld a, a                                          ; $4a2a: $7f
	cp a                                             ; $4a2b: $bf
	ld e, a                                          ; $4a2c: $5f
	xor e                                            ; $4a2d: $ab
	ld d, l                                          ; $4a2e: $55

jr_04c_4a2f:
	ld a, d                                          ; $4a2f: $7a
	ldh a, [c]                                       ; $4a30: $f2
	ld a, h                                          ; $4a31: $7c
	sub a                                            ; $4a32: $97
	sub d                                            ; $4a33: $92
	rla                                              ; $4a34: $17
	ld a, a                                          ; $4a35: $7f
	rra                                              ; $4a36: $1f
	rlca                                             ; $4a37: $07
	add b                                            ; $4a38: $80
	ldh [$f2], a                                     ; $4a39: $e0 $f2
	db $fd                                           ; $4a3b: $fd

jr_04c_4a3c:
	ld a, [$eaf5]                                    ; $4a3c: $fa $f5 $ea
	db $fd                                           ; $4a3f: $fd
	ld c, $6d                                        ; $4a40: $0e $6d
	add hl, de                                       ; $4a42: $19
	ld a, h                                          ; $4a43: $7c
	or b                                             ; $4a44: $b0
	sub c                                            ; $4a45: $91
	ld a, [bc]                                       ; $4a46: $0a
	dec b                                            ; $4a47: $05
	ld a, [bc]                                       ; $4a48: $0a
	add c                                            ; $4a49: $81
	ld b, b                                          ; $4a4a: $40
	xor d                                            ; $4a4b: $aa
	ld d, l                                          ; $4a4c: $55
	nop                                              ; $4a4d: $00
	nop                                              ; $4a4e: $00
	ldh a, [$c0]                                     ; $4a4f: $f0 $c0
	ret nz                                           ; $4a51: $c0

	ldh a, [$f9]                                     ; $4a52: $f0 $f9
	ld [hl], h                                       ; $4a54: $74
	or b                                             ; $4a55: $b0
	ld a, e                                          ; $4a56: $7b
	and h                                            ; $4a57: $a4
	sbc l                                            ; $4a58: $9d
	jr z, jr_04c_4a9e                                ; $4a59: $28 $43

	ld a, e                                          ; $4a5b: $7b
	ld sp, $039a                                     ; $4a5c: $31 $9a $03
	rrca                                             ; $4a5f: $0f
	rrca                                             ; $4a60: $0f
	ld a, [hl]                                       ; $4a61: $7e
	db $fc                                           ; $4a62: $fc
	ld l, a                                          ; $4a63: $6f
	ret z                                            ; $4a64: $c8

	ld a, a                                          ; $4a65: $7f
	ld l, b                                          ; $4a66: $68
	ld a, h                                          ; $4a67: $7c
	xor [hl]                                         ; $4a68: $ae
	sbc l                                            ; $4a69: $9d
	di                                               ; $4a6a: $f3
	pop hl                                           ; $4a6b: $e1
	ld [hl], a                                       ; $4a6c: $77
	adc e                                            ; $4a6d: $8b

jr_04c_4a6e:
	halt                                             ; $4a6e: $76

jr_04c_4a6f:
	ld [hl], c                                       ; $4a6f: $71
	ld a, h                                          ; $4a70: $7c
	ld l, [hl]                                       ; $4a71: $6e
	ld a, [hl]                                       ; $4a72: $7e
	add $7d                                          ; $4a73: $c6 $7d
	ei                                               ; $4a75: $fb

Call_04c_4a76:
	cp $9c                                           ; $4a76: $fe $9c
	dec c                                            ; $4a78: $0d
	jr nc, jr_04c_4a6f                               ; $4a79: $30 $f4

	rst SubAFromHL                                          ; $4a7b: $d7
	rst $38                                          ; $4a7c: $ff
	sbc c                                            ; $4a7d: $99
	ccf                                              ; $4a7e: $3f
	ld a, $1e                                        ; $4a7f: $3e $1e
	dec e                                            ; $4a81: $1d
	ld e, b                                          ; $4a82: $58
	ld a, l                                          ; $4a83: $7d
	ld l, l                                          ; $4a84: $6d
	ld e, b                                          ; $4a85: $58
	rst SubAFromDE                                          ; $4a86: $df
	rst $38                                          ; $4a87: $ff
	add b                                            ; $4a88: $80
	call c, $fce0                                    ; $4a89: $dc $e0 $fc
	ld c, d                                          ; $4a8c: $4a
	db $ec                                           ; $4a8d: $ec
	adc a                                            ; $4a8e: $8f
	jp $e4fe                                         ; $4a8f: $c3 $fe $e4


	ld hl, sp-$04                                    ; $4a92: $f8 $fc
	or $73                                           ; $4a94: $f6 $73
	ld [hl], b                                       ; $4a96: $70
	inc a                                            ; $4a97: $3c
	rst $38                                          ; $4a98: $ff
	ld d, b                                          ; $4a99: $50
	db $10                                           ; $4a9a: $10
	ld l, $a2                                        ; $4a9b: $2e $a2
	or [hl]                                          ; $4a9d: $b6

jr_04c_4a9e:
	inc e                                            ; $4a9e: $1c
	ld b, b                                          ; $4a9f: $40
	ldh [c], a                                       ; $4aa0: $e2
	rst AddAOntoHL                                          ; $4aa1: $ef
	rst AddAOntoHL                                          ; $4aa2: $ef
	pop bc                                           ; $4aa3: $c1
	call Call_04c_6349                               ; $4aa4: $cd $49 $63
	cp [hl]                                          ; $4aa7: $be
	sub [hl]                                         ; $4aa8: $96
	add hl, de                                       ; $4aa9: $19
	nop                                              ; $4aaa: $00
	ret nz                                           ; $4aab: $c0

	ld b, b                                          ; $4aac: $40
	ld b, c                                          ; $4aad: $41
	ld a, h                                          ; $4aae: $7c
	ld hl, sp-$10                                    ; $4aaf: $f8 $f0
	jr nc, jr_04c_4b2d                               ; $4ab1: $30 $7a

	rst AddAOntoHL                                          ; $4ab3: $ef
	add b                                            ; $4ab4: $80
	cp a                                             ; $4ab5: $bf
	adc a                                            ; $4ab6: $8f
	add a                                            ; $4ab7: $87
	ld l, a                                          ; $4ab8: $6f
	rst SubAFromDE                                          ; $4ab9: $df
	cp a                                             ; $4aba: $bf
	ld e, a                                          ; $4abb: $5f
	cpl                                              ; $4abc: $2f
	ld d, b                                          ; $4abd: $50
	xor d                                            ; $4abe: $aa
	ld d, l                                          ; $4abf: $55
	and d                                            ; $4ac0: $a2
	rra                                              ; $4ac1: $1f
	ld b, b                                          ; $4ac2: $40
	and b                                            ; $4ac3: $a0
	ret nc                                           ; $4ac4: $d0

	and b                                            ; $4ac5: $a0
	ld d, l                                          ; $4ac6: $55
	xor d                                            ; $4ac7: $aa
	ld e, l                                          ; $4ac8: $5d
	ldh [$bf], a                                     ; $4ac9: $e0 $bf
	rst SubAFromDE                                          ; $4acb: $df
	xor a                                            ; $4acc: $af
	dec [hl]                                         ; $4acd: $35
	add $14                                          ; $4ace: $c6 $14
	adc d                                            ; $4ad0: $8a
	push af                                          ; $4ad1: $f5
	ld b, b                                          ; $4ad2: $40
	jr nz, jr_04c_4a6e                               ; $4ad3: $20 $99

	ld d, b                                          ; $4ad5: $50
	ld a, [bc]                                       ; $4ad6: $0a
	ld bc, $75e8                                     ; $4ad7: $01 $e8 $75
	ld a, [bc]                                       ; $4ada: $0a
	sbc $ff                                          ; $4adb: $de $ff
	sbc d                                            ; $4add: $9a
	db $dd                                           ; $4ade: $dd
	xor d                                            ; $4adf: $aa
	push de                                          ; $4ae0: $d5
	ld [$fe45], a                                    ; $4ae1: $ea $45 $fe
	add b                                            ; $4ae4: $80
	ld [hl+], a                                      ; $4ae5: $22
	ld d, l                                          ; $4ae6: $55
	ld a, [hl+]                                      ; $4ae7: $2a
	dec d                                            ; $4ae8: $15
	cp d                                             ; $4ae9: $ba
	cp $ff                                           ; $4aea: $fe $ff
	cp $7f                                           ; $4aec: $fe $7f
	xor d                                            ; $4aee: $aa
	ld d, h                                          ; $4aef: $54
	xor d                                            ; $4af0: $aa
	ld d, h                                          ; $4af1: $54
	ld bc, $0100                                     ; $4af2: $01 $00 $01
	add b                                            ; $4af5: $80
	ld d, l                                          ; $4af6: $55
	xor e                                            ; $4af7: $ab
	ld d, l                                          ; $4af8: $55
	xor e                                            ; $4af9: $ab
	rst $38                                          ; $4afa: $ff
	ld a, a                                          ; $4afb: $7f
	rst GetHLinHL                                          ; $4afc: $cf
	ld h, e                                          ; $4afd: $63
	rst SubAFromDE                                          ; $4afe: $df
	rst $38                                          ; $4aff: $ff
	ld a, a                                          ; $4b00: $7f
	ld e, a                                          ; $4b01: $5f
	nop                                              ; $4b02: $00
	add b                                            ; $4b03: $80
	ld [hl], b                                       ; $4b04: $70
	db $ed                                           ; $4b05: $ed
	ld a, b                                          ; $4b06: $78
	ld e, l                                          ; $4b07: $5d
	sbc [hl]                                         ; $4b08: $9e
	rst SubAFromBC                                          ; $4b09: $e7
	ld a, e                                          ; $4b0a: $7b
	ld a, d                                          ; $4b0b: $7a
	ld a, [hl]                                       ; $4b0c: $7e
	ld c, h                                          ; $4b0d: $4c
	ld l, b                                          ; $4b0e: $68
	ld h, c                                          ; $4b0f: $61
	sbc h                                            ; $4b10: $9c
	cp $bf                                           ; $4b11: $fe $bf
	rst $38                                          ; $4b13: $ff
	sbc $bf                                          ; $4b14: $de $bf
	sbc d                                            ; $4b16: $9a
	push af                                          ; $4b17: $f5
	ld a, [hl+]                                      ; $4b18: $2a
	ld d, l                                          ; $4b19: $55
	ret nz                                           ; $4b1a: $c0

	add b                                            ; $4b1b: $80
	sbc $c0                                          ; $4b1c: $de $c0
	sbc h                                            ; $4b1e: $9c
	adc d                                            ; $4b1f: $8a
	push de                                          ; $4b20: $d5
	xor d                                            ; $4b21: $aa
	ld [hl], e                                       ; $4b22: $73
	db $eb                                           ; $4b23: $eb
	sbc [hl]                                         ; $4b24: $9e
	ld e, l                                          ; $4b25: $5d
	ld [hl], a                                       ; $4b26: $77
	ld [$7ffe], sp                                   ; $4b27: $08 $fe $7f
	adc [hl]                                         ; $4b2a: $8e
	add [hl]                                         ; $4b2b: $86
	xor b                                            ; $4b2c: $a8

jr_04c_4b2d:
	rst $38                                          ; $4b2d: $ff
	db $fd                                           ; $4b2e: $fd
	cp $c5                                           ; $4b2f: $fe $c5
	cp l                                             ; $4b31: $bd
	ld e, l                                          ; $4b32: $5d
	or a                                             ; $4b33: $b7
	ld d, l                                          ; $4b34: $55
	inc b                                            ; $4b35: $04
	ld b, $04                                        ; $4b36: $06 $04
	ld [bc], a                                       ; $4b38: $02
	ld b, $a6                                        ; $4b39: $06 $a6
	ld c, h                                          ; $4b3b: $4c
	nop                                              ; $4b3c: $00
	ld a, [$0fff]                                    ; $4b3d: $fa $ff $0f
	rst $38                                          ; $4b40: $ff
	rst $38                                          ; $4b41: $ff
	ld a, [$4a55]                                    ; $4b42: $fa $55 $4a
	ld [hl], c                                       ; $4b45: $71
	xor h                                            ; $4b46: $ac
	adc h                                            ; $4b47: $8c
	dec b                                            ; $4b48: $05
	xor d                                            ; $4b49: $aa
	dec b                                            ; $4b4a: $05
	and e                                            ; $4b4b: $a3
	ld d, c                                          ; $4b4c: $51
	ld hl, sp-$03                                    ; $4b4d: $f8 $fd
	rst $38                                          ; $4b4f: $ff
	xor e                                            ; $4b50: $ab
	ld d, a                                          ; $4b51: $57
	add a                                            ; $4b52: $87
	ld e, [hl]                                       ; $4b53: $5e
	xor a                                            ; $4b54: $af
	rlca                                             ; $4b55: $07
	inc bc                                           ; $4b56: $03
	ld bc, $ae55                                     ; $4b57: $01 $55 $ae
	ld a, h                                          ; $4b5a: $7c
	ld [hl], e                                       ; $4b5b: $73
	ret nz                                           ; $4b5c: $c0

	ld a, a                                          ; $4b5d: $7f
	ld b, b                                          ; $4b5e: $40
	sbc [hl]                                         ; $4b5f: $9e
	pop bc                                           ; $4b60: $c1
	ld a, e                                          ; $4b61: $7b
	ld c, h                                          ; $4b62: $4c
	adc l                                            ; $4b63: $8d
	ld d, c                                          ; $4b64: $51
	daa                                              ; $4b65: $27
	rra                                              ; $4b66: $1f
	ccf                                              ; $4b67: $3f
	rst $38                                          ; $4b68: $ff
	dec b                                            ; $4b69: $05
	rlca                                             ; $4b6a: $07
	dec de                                           ; $4b6b: $1b
	ld a, a                                          ; $4b6c: $7f
	ld e, [hl]                                       ; $4b6d: $5e
	cp h                                             ; $4b6e: $bc
	ld [hl], b                                       ; $4b6f: $70
	ldh [$8a], a                                     ; $4b70: $e0 $8a
	add hl, sp                                       ; $4b72: $39
	and $8d                                          ; $4b73: $e6 $8d
	cp a                                             ; $4b75: $bf
	ld a, d                                          ; $4b76: $7a
	db $db                                           ; $4b77: $db
	ld a, l                                          ; $4b78: $7d
	push de                                          ; $4b79: $d5
	ld a, l                                          ; $4b7a: $7d
	ld e, h                                          ; $4b7b: $5c
	ld l, h                                          ; $4b7c: $6c
	ld c, b                                          ; $4b7d: $48
	ld a, [hl]                                       ; $4b7e: $7e
	jp nc, $a67e                                     ; $4b7f: $d2 $7e $a6

	ld a, d                                          ; $4b82: $7a
	add $94                                          ; $4b83: $c6 $94
	inc h                                            ; $4b85: $24
	nop                                              ; $4b86: $00
	ld [hl+], a                                      ; $4b87: $22
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	ld h, [hl]                                       ; $4b8a: $66
	nop                                              ; $4b8b: $00
	or h                                             ; $4b8c: $b4
	halt                                             ; $4b8d: $76
	nop                                              ; $4b8e: $00
	halt                                             ; $4b8f: $76
	ld [hl], a                                       ; $4b90: $77
	db $fd                                           ; $4b91: $fd
	rst SubAFromDE                                          ; $4b92: $df
	rst $38                                          ; $4b93: $ff
	sbc e                                            ; $4b94: $9b
	rst GetHLinHL                                          ; $4b95: $cf
	and $ff                                          ; $4b96: $e6 $ff
	xor d                                            ; $4b98: $aa
	ld l, h                                          ; $4b99: $6c
	add hl, hl                                       ; $4b9a: $29
	db $dd                                           ; $4b9b: $dd
	rst $38                                          ; $4b9c: $ff
	ld a, l                                          ; $4b9d: $7d
	ld a, h                                          ; $4b9e: $7c
	sbc l                                            ; $4b9f: $9d
	ei                                               ; $4ba0: $fb
	ret nz                                           ; $4ba1: $c0

	ld d, a                                          ; $4ba2: $57
	ldh a, [$98]                                     ; $4ba3: $f0 $98
	rlca                                             ; $4ba5: $07
	rst $38                                          ; $4ba6: $ff
	rst $38                                          ; $4ba7: $ff
	inc bc                                           ; $4ba8: $03
	rst $38                                          ; $4ba9: $ff
	xor e                                            ; $4baa: $ab
	ld bc, $ffd8                                     ; $4bab: $01 $d8 $ff
	add b                                            ; $4bae: $80
	ld l, l                                          ; $4baf: $6d
	or b                                             ; $4bb0: $b0
	ret nc                                           ; $4bb1: $d0

	ldh a, [$f8]                                     ; $4bb2: $f0 $f8
	ld hl, sp-$03                                    ; $4bb4: $f8 $fd
	cp $93                                           ; $4bb6: $fe $93
	rst GetHLinHL                                          ; $4bb8: $cf
	rst AddAOntoHL                                          ; $4bb9: $ef
	rst AddAOntoHL                                          ; $4bba: $ef
	rst FarCall                                          ; $4bbb: $f7
	rst $38                                          ; $4bbc: $ff
	db $fc                                           ; $4bbd: $fc
	rst $38                                          ; $4bbe: $ff
	call c, $0600                                    ; $4bbf: $dc $00 $06
	inc c                                            ; $4bc2: $0c
	ld [$48c8], sp                                   ; $4bc3: $08 $c8 $48
	and l                                            ; $4bc6: $a5
	db $e3                                           ; $4bc7: $e3
	rst SubAFromBC                                          ; $4bc8: $e7
	pop hl                                           ; $4bc9: $e1
	db $e3                                           ; $4bca: $e3
	rst FarCall                                          ; $4bcb: $f7
	scf                                              ; $4bcc: $37
	scf                                              ; $4bcd: $37
	sbc l                                            ; $4bce: $9d
	ld e, e                                          ; $4bcf: $5b
	ld c, d                                          ; $4bd0: $4a
	cp $9b                                           ; $4bd1: $fe $9b
	ld [bc], a                                       ; $4bd3: $02
	inc b                                            ; $4bd4: $04
	ld b, b                                          ; $4bd5: $40
	adc a                                            ; $4bd6: $8f
	ld a, b                                          ; $4bd7: $78
	sbc a                                            ; $4bd8: $9f
	ld a, a                                          ; $4bd9: $7f
	ldh [c], a                                       ; $4bda: $e2
	adc l                                            ; $4bdb: $8d
	di                                               ; $4bdc: $f3
	rst AddAOntoHL                                          ; $4bdd: $ef
	ret nc                                           ; $4bde: $d0

	and c                                            ; $4bdf: $a1
	dec d                                            ; $4be0: $15
	rrca                                             ; $4be1: $0f
	ld h, $45                                        ; $4be2: $26 $45
	ld [bc], a                                       ; $4be4: $02
	ld bc, $00ff                                     ; $4be5: $01 $ff $00
	ld [$81f0], a                                    ; $4be8: $ea $f0 $81
	ld a, [hl-]                                      ; $4beb: $3a
	db $fd                                           ; $4bec: $fd
	cp $7a                                           ; $4bed: $fe $7a
	ld a, [hl+]                                      ; $4bef: $2a
	ld a, e                                          ; $4bf0: $7b
	ld a, h                                          ; $4bf1: $7c
	ld a, a                                          ; $4bf2: $7f
	jr jr_04c_4c6e                                   ; $4bf3: $18 $79

	ld a, a                                          ; $4bf5: $7f
	ld a, e                                          ; $4bf6: $7b
	ld h, e                                          ; $4bf7: $63
	sbc e                                            ; $4bf8: $9b
	ld e, a                                          ; $4bf9: $5f
	xor d                                            ; $4bfa: $aa
	nop                                              ; $4bfb: $00
	ld [$9bfd], sp                                   ; $4bfc: $08 $fd $9b
	ld [bc], a                                       ; $4bff: $02
	ld b, b                                          ; $4c00: $40
	rst $38                                          ; $4c01: $ff
	rst FarCall                                          ; $4c02: $f7
	call c, $94ff                                    ; $4c03: $dc $ff $94
	cp a                                             ; $4c06: $bf
	nop                                              ; $4c07: $00
	add hl, hl                                       ; $4c08: $29
	nop                                              ; $4c09: $00
	inc bc                                           ; $4c0a: $03
	inc b                                            ; $4c0b: $04
	db $10                                           ; $4c0c: $10
	add b                                            ; $4c0d: $80
	nop                                              ; $4c0e: $00
	rst $38                                          ; $4c0f: $ff
	rst SubAFromHL                                          ; $4c10: $d7
	db $db                                           ; $4c11: $db
	rst $38                                          ; $4c12: $ff
	adc a                                            ; $4c13: $8f
	nop                                              ; $4c14: $00
	jp z, Jump_04c_6040                              ; $4c15: $ca $40 $60

	jr nc, jr_04c_4c38                               ; $4c18: $30 $1e

	inc bc                                           ; $4c1a: $03
	nop                                              ; $4c1b: $00
	rst $38                                          ; $4c1c: $ff
	push af                                          ; $4c1d: $f5
	cp a                                             ; $4c1e: $bf
	sbc a                                            ; $4c1f: $9f
	rst GetHLinHL                                          ; $4c20: $cf
	pop hl                                           ; $4c21: $e1
	db $fc                                           ; $4c22: $fc
	rst $38                                          ; $4c23: $ff
	ei                                               ; $4c24: $fb
	sbc h                                            ; $4c25: $9c
	ret nz                                           ; $4c26: $c0

	ld a, a                                          ; $4c27: $7f
	add a                                            ; $4c28: $87
	ld l, [hl]                                       ; $4c29: $6e
	dec d                                            ; $4c2a: $15
	sbc h                                            ; $4c2b: $9c
	add b                                            ; $4c2c: $80
	ld a, b                                          ; $4c2d: $78
	ld b, $7b                                        ; $4c2e: $06 $7b
	jp nz, $9cff                                     ; $4c30: $c2 $ff $9c

	ld a, [$f180]                                    ; $4c33: $fa $80 $f1
	ld [hl], b                                       ; $4c36: $70
	db $e4                                           ; $4c37: $e4

jr_04c_4c38:
	sbc l                                            ; $4c38: $9d
	dec b                                            ; $4c39: $05
	ld a, a                                          ; $4c3a: $7f
	sbc $10                                          ; $4c3b: $de $10
	sbc e                                            ; $4c3d: $9b
	and b                                            ; $4c3e: $a0
	inc d                                            ; $4c3f: $14
	ld e, b                                          ; $4c40: $58
	inc b                                            ; $4c41: $04
	db $dd                                           ; $4c42: $dd
	rst $38                                          ; $4c43: $ff
	sbc [hl]                                         ; $4c44: $9e
	rra                                              ; $4c45: $1f
	ld a, e                                          ; $4c46: $7b
	db $ec                                           ; $4c47: $ec
	sbc l                                            ; $4c48: $9d
	inc bc                                           ; $4c49: $03
	ld d, h                                          ; $4c4a: $54
	db $fc                                           ; $4c4b: $fc
	sbc h                                            ; $4c4c: $9c
	ld [$abe7], sp                                   ; $4c4d: $08 $e7 $ab
	jp c, $9eff                                      ; $4c50: $da $ff $9e

	ld bc, $02dd                                     ; $4c53: $01 $dd $02
	sbc h                                            ; $4c56: $9c
	inc b                                            ; $4c57: $04
	adc c                                            ; $4c58: $89
	ld [hl], b                                       ; $4c59: $70
	reti                                             ; $4c5a: $d9


	rst $38                                          ; $4c5b: $ff
	sbc d                                            ; $4c5c: $9a
	inc sp                                           ; $4c5d: $33
	ld l, a                                          ; $4c5e: $6f
	cp [hl]                                          ; $4c5f: $be
	ld a, h                                          ; $4c60: $7c
	db $fc                                           ; $4c61: $fc
	ld a, e                                          ; $4c62: $7b
	ld [hl], d                                       ; $4c63: $72
	sbc e                                            ; $4c64: $9b
	rst GetHLinHL                                          ; $4c65: $cf
	sub a                                            ; $4c66: $97
	ld c, a                                          ; $4c67: $4f
	sbc a                                            ; $4c68: $9f
	ld [hl], l                                       ; $4c69: $75
	xor h                                            ; $4c6a: $ac
	halt                                             ; $4c6b: $76
	db $dd                                           ; $4c6c: $dd
	ld a, l                                          ; $4c6d: $7d

jr_04c_4c6e:
	ld l, [hl]                                       ; $4c6e: $6e
	ld a, [hl]                                       ; $4c6f: $7e
	res 3, [hl]                                      ; $4c70: $cb $9e
	cp $7a                                           ; $4c72: $fe $7a
	pop de                                           ; $4c74: $d1
	sbc h                                            ; $4c75: $9c
	ldh [rIE], a                                     ; $4c76: $e0 $ff
	rst SubAFromDE                                          ; $4c78: $df
	ld [hl], d                                       ; $4c79: $72
	jp $797b                                         ; $4c7a: $c3 $7b $79


	ei                                               ; $4c7d: $fb
	rst SubAFromDE                                          ; $4c7e: $df
	rst $38                                          ; $4c7f: $ff
	sbc [hl]                                         ; $4c80: $9e
	ld [de], a                                       ; $4c81: $12
	ld c, e                                          ; $4c82: $4b
	ldh a, [$7e]                                     ; $4c83: $f0 $7e
	or d                                             ; $4c85: $b2
	ld a, e                                          ; $4c86: $7b
	di                                               ; $4c87: $f3
	ld [hl], e                                       ; $4c88: $73
	db $fd                                           ; $4c89: $fd
	jp c, $07ff                                      ; $4c8a: $da $ff $07

	ldh a, [$6c]                                     ; $4c8d: $f0 $6c
	add l                                            ; $4c8f: $85
	ld [hl], c                                       ; $4c90: $71
	db $e4                                           ; $4c91: $e4
	call c, $93ff                                    ; $4c92: $dc $ff $93
	rst FarCall                                          ; $4c95: $f7
	ldh a, [c]                                       ; $4c96: $f2
	add a                                            ; $4c97: $87
	jp $f3e7                                         ; $4c98: $c3 $e7 $f3


	rst FarCall                                          ; $4c9b: $f7
	di                                               ; $4c9c: $f3
	ld [$c888], sp                                   ; $4c9d: $08 $88 $c8
	add sp, -$23                                     ; $4ca0: $e8 $dd
	ld hl, sp-$21                                    ; $4ca2: $f8 $df
	cp a                                             ; $4ca4: $bf
	sbc [hl]                                         ; $4ca5: $9e
	ccf                                              ; $4ca6: $3f
	ld [hl], e                                       ; $4ca7: $73
	cp $d9                                           ; $4ca8: $fe $d9
	ld a, a                                          ; $4caa: $7f
	sbc $ff                                          ; $4cab: $de $ff
	rst SubAFromDE                                          ; $4cad: $df
	ld sp, hl                                        ; $4cae: $f9
	ld a, [hl]                                       ; $4caf: $7e
	db $ec                                           ; $4cb0: $ec
	ld l, a                                          ; $4cb1: $6f
	cp a                                             ; $4cb2: $bf
	sbc $9f                                          ; $4cb3: $de $9f
	ld l, a                                          ; $4cb5: $6f
	xor e                                            ; $4cb6: $ab
	sbc [hl]                                         ; $4cb7: $9e
	ld [hl], e                                       ; $4cb8: $73
	ld d, a                                          ; $4cb9: $57
	xor a                                            ; $4cba: $af
	rst SubAFromDE                                          ; $4cbb: $df
	di                                               ; $4cbc: $f3
	sbc l                                            ; $4cbd: $9d
	nop                                              ; $4cbe: $00
	jr c, @+$59                                      ; $4cbf: $38 $57

	ldh a, [$df]                                     ; $4cc1: $f0 $df
	rst AddAOntoHL                                          ; $4cc3: $ef
	sbc h                                            ; $4cc4: $9c
	db $10                                           ; $4cc5: $10
	ld bc, $d610                                     ; $4cc6: $01 $10 $d6
	rst $38                                          ; $4cc9: $ff
	rst SubAFromDE                                          ; $4cca: $df
	sbc a                                            ; $4ccb: $9f
	sbc l                                            ; $4ccc: $9d
	nop                                              ; $4ccd: $00
	reti                                             ; $4cce: $d9


	ld d, a                                          ; $4ccf: $57
	ldh [$df], a                                     ; $4cd0: $e0 $df
	cp $9d                                           ; $4cd2: $fe $9d
	nop                                              ; $4cd4: $00
	or [hl]                                          ; $4cd5: $b6
	ld d, a                                          ; $4cd6: $57
	ldh a, [$df]                                     ; $4cd7: $f0 $df
	ld a, a                                          ; $4cd9: $7f
	sbc l                                            ; $4cda: $9d
	rlca                                             ; $4cdb: $07
	add a                                            ; $4cdc: $87
	ld a, d                                          ; $4cdd: $7a
	add hl, de                                       ; $4cde: $19
	ld l, e                                          ; $4cdf: $6b
	db $d3                                           ; $4ce0: $d3
	rst SubAFromDE                                          ; $4ce1: $df
	and b                                            ; $4ce2: $a0
	sub d                                            ; $4ce3: $92
	and e                                            ; $4ce4: $a3
	and c                                            ; $4ce5: $a1
	and c                                            ; $4ce6: $a1
	xor b                                            ; $4ce7: $a8
	xor h                                            ; $4ce8: $ac
	ldh [$df], a                                     ; $4ce9: $e0 $df
	rst SubAFromDE                                          ; $4ceb: $df
	call c, $dede                                    ; $4cec: $dc $de $de
	rst SubAFromHL                                          ; $4cef: $d7
	db $d3                                           ; $4cf0: $d3
	ld a, e                                          ; $4cf1: $7b
	dec d                                            ; $4cf2: $15
	ld h, e                                          ; $4cf3: $63
	jr c, jr_04c_4d69                                ; $4cf4: $38 $73

	dec c                                            ; $4cf6: $0d
	ld a, l                                          ; $4cf7: $7d
	adc d                                            ; $4cf8: $8a

jr_04c_4cf9:
	adc l                                            ; $4cf9: $8d
	ld sp, hl                                        ; $4cfa: $f9
	pop af                                           ; $4cfb: $f1
	pop hl                                           ; $4cfc: $e1
	pop hl                                           ; $4cfd: $e1
	ret                                              ; $4cfe: $c9


	ld bc, $fffd                                     ; $4cff: $01 $fd $ff
	rlca                                             ; $4d02: $07
	rrca                                             ; $4d03: $0f
	rra                                              ; $4d04: $1f
	rra                                              ; $4d05: $1f
	scf                                              ; $4d06: $37
	ld a, a                                          ; $4d07: $7f
	ld a, a                                          ; $4d08: $7f
	ld d, l                                          ; $4d09: $55
	ld a, [bc]                                       ; $4d0a: $0a
	rrca                                             ; $4d0b: $0f
	ld [hl], d                                       ; $4d0c: $72
	push af                                          ; $4d0d: $f5
	ld a, h                                          ; $4d0e: $7c
	ld l, $9c                                        ; $4d0f: $2e $9c
	ldh a, [$bf]                                     ; $4d11: $f0 $bf
	add b                                            ; $4d13: $80
	ld a, d                                          ; $4d14: $7a
	add hl, bc                                       ; $4d15: $09
	ld a, h                                          ; $4d16: $7c
	jp z, $e19e                                      ; $4d17: $ca $9e $e1

	cp $7e                                           ; $4d1a: $fe $7e
	call nz, $009b                                   ; $4d1c: $c4 $9b $00
	inc b                                            ; $4d1f: $04
	ld e, $f3                                        ; $4d20: $1e $f3
	ld [hl], a                                       ; $4d22: $77
	add sp, $73                                      ; $4d23: $e8 $73
	ldh a, [$9d]                                     ; $4d25: $f0 $9d
	ld a, [hl]                                       ; $4d27: $7e
	nop                                              ; $4d28: $00
	ld l, a                                          ; $4d29: $6f
	ldh a, [$de]                                     ; $4d2a: $f0 $de
	rst $38                                          ; $4d2c: $ff
	ld a, a                                          ; $4d2d: $7f
	ldh a, [$7b]                                     ; $4d2e: $f0 $7b
	jp hl                                            ; $4d30: $e9


	ld a, e                                          ; $4d31: $7b
	rst SubAFromBC                                          ; $4d32: $e7
	rst $38                                          ; $4d33: $ff
	sbc l                                            ; $4d34: $9d
	inc c                                            ; $4d35: $0c
	rst SubAFromBC                                          ; $4d36: $e7
	ld [hl], a                                       ; $4d37: $77
	xor d                                            ; $4d38: $aa
	sbc h                                            ; $4d39: $9c
	dec d                                            ; $4d3a: $15
	nop                                              ; $4d3b: $00
	nop                                              ; $4d3c: $00
	sbc $83                                          ; $4d3d: $de $83
	rst SubAFromDE                                          ; $4d3f: $df
	rst $38                                          ; $4d40: $ff
	sbc h                                            ; $4d41: $9c
	ld [rIE], a                                    ; $4d42: $ea $ff $ff
	sbc $7c                                          ; $4d45: $de $7c
	ld a, a                                          ; $4d47: $7f
	ldh a, [$98]                                     ; $4d48: $f0 $98
	ld d, a                                          ; $4d4a: $57
	xor a                                            ; $4d4b: $af
	rla                                              ; $4d4c: $17
	nop                                              ; $4d4d: $00
	add b                                            ; $4d4e: $80
	jr nz, @+$01                                     ; $4d4f: $20 $ff

	ld a, c                                          ; $4d51: $79
	dec de                                           ; $4d52: $1b
	sbc e                                            ; $4d53: $9b
	db $eb                                           ; $4d54: $eb
	db $fc                                           ; $4d55: $fc
	db $fc                                           ; $4d56: $fc
	call c, $877b                                    ; $4d57: $dc $7b $87
	sbc e                                            ; $4d5a: $9b
	rst FarCall                                          ; $4d5b: $f7
	ei                                               ; $4d5c: $fb
	ld a, a                                          ; $4d5d: $7f
	ccf                                              ; $4d5e: $3f
	ld a, e                                          ; $4d5f: $7b
	jr nc, jr_04c_4cf9                               ; $4d60: $30 $97

	ret nz                                           ; $4d62: $c0

	ld hl, sp-$04                                    ; $4d63: $f8 $fc
	ld a, b                                          ; $4d65: $78
	ld a, b                                          ; $4d66: $78
	ccf                                              ; $4d67: $3f
	rst $38                                          ; $4d68: $ff

jr_04c_4d69:
	rra                                              ; $4d69: $1f
	sbc $df                                          ; $4d6a: $de $df
	rst SubAFromDE                                          ; $4d6c: $df
	cp a                                             ; $4d6d: $bf
	ld a, h                                          ; $4d6e: $7c
	ld d, b                                          ; $4d6f: $50
	ld a, [hl]                                       ; $4d70: $7e
	cp h                                             ; $4d71: $bc
	rst SubAFromDE                                          ; $4d72: $df
	ccf                                              ; $4d73: $3f
	rst SubAFromDE                                          ; $4d74: $df
	ld c, a                                          ; $4d75: $4f
	sbc l                                            ; $4d76: $9d
	rst GetHLinHL                                          ; $4d77: $cf
	rst FarCall                                          ; $4d78: $f7
	ld a, d                                          ; $4d79: $7a
	call nz, $b79b                                   ; $4d7a: $c4 $9b $b7
	or d                                             ; $4d7d: $b2
	ld d, l                                          ; $4d7e: $55
	ld d, d                                          ; $4d7f: $52
	db $db                                           ; $4d80: $db
	ld hl, sp-$21                                    ; $4d81: $f8 $df
	cp b                                             ; $4d83: $b8
	ld l, [hl]                                       ; $4d84: $6e
	jp nz, $3f9d                                     ; $4d85: $c2 $9d $3f

	cp e                                             ; $4d88: $bb
	reti                                             ; $4d89: $d9


	ld a, a                                          ; $4d8a: $7f
	ld [hl], b                                       ; $4d8b: $70
	adc d                                            ; $4d8c: $8a
	sbc $ff                                          ; $4d8d: $de $ff
	sub [hl]                                         ; $4d8f: $96
	add b                                            ; $4d90: $80
	cp a                                             ; $4d91: $bf
	xor d                                            ; $4d92: $aa
	xor d                                            ; $4d93: $aa
	rst $38                                          ; $4d94: $ff
	xor d                                            ; $4d95: $aa
	ld [$8fff], a                                    ; $4d96: $ea $ff $8f
	ld h, d                                          ; $4d99: $62
	ld l, b                                          ; $4d9a: $68
	ld [hl], a                                       ; $4d9b: $77
	ldh a, [$7f]                                     ; $4d9c: $f0 $7f
	db $fd                                           ; $4d9e: $fd
	sbc l                                            ; $4d9f: $9d
	ld [$def9], sp                                   ; $4da0: $08 $f9 $de
	ei                                               ; $4da3: $fb
	rst SubAFromDE                                          ; $4da4: $df
	ld hl, sp+$7f                                    ; $4da5: $f8 $7f
	ld hl, sp-$67                                    ; $4da7: $f8 $99
	add sp, -$58                                     ; $4da9: $e8 $a8
	xor b                                            ; $4dab: $a8
	add sp, -$48                                     ; $4dac: $e8 $b8
	cp b                                             ; $4dae: $b8
	ld [hl], d                                       ; $4daf: $72
	ld h, [hl]                                       ; $4db0: $66
	sbc e                                            ; $4db1: $9b
	ccf                                              ; $4db2: $3f
	ld a, [hl]                                       ; $4db3: $7e
	ld a, [hl-]                                      ; $4db4: $3a
	rst $38                                          ; $4db5: $ff
	jp c, Jump_04c_7e1a                              ; $4db6: $da $1a $7e

	or e                                             ; $4db9: $b3
	sbc $e7                                          ; $4dba: $de $e7
	sbc b                                            ; $4dbc: $98
	ld l, a                                          ; $4dbd: $6f
	rlca                                             ; $4dbe: $07
	rrca                                             ; $4dbf: $0f
	rst $38                                          ; $4dc0: $ff
	inc b                                            ; $4dc1: $04
	dec b                                            ; $4dc2: $05
	ld b, $77                                        ; $4dc3: $06 $77
	cp $9a                                           ; $4dc5: $fe $9a
	db $fd                                           ; $4dc7: $fd
	rst FarCall                                          ; $4dc8: $f7
	ei                                               ; $4dc9: $fb
	jp $de73                                         ; $4dca: $c3 $73 $de


	ei                                               ; $4dcd: $fb
	ld a, a                                          ; $4dce: $7f
	ret nz                                           ; $4dcf: $c0

	sub [hl]                                         ; $4dd0: $96
	ld b, b                                          ; $4dd1: $40
	nop                                              ; $4dd2: $00
	nop                                              ; $4dd3: $00
	and c                                            ; $4dd4: $a1
	ld d, e                                          ; $4dd5: $53
	and e                                            ; $4dd6: $a3
	ld [hl], d                                       ; $4dd7: $72
	inc c                                            ; $4dd8: $0c
	ld [$0fdb], sp                                   ; $4dd9: $08 $db $0f
	db $dd                                           ; $4ddc: $dd
	rra                                              ; $4ddd: $1f
	rst SubAFromDE                                          ; $4dde: $df
	rst $38                                          ; $4ddf: $ff
	sub d                                            ; $4de0: $92
	rst SubAFromDE                                          ; $4de1: $df
	rra                                              ; $4de2: $1f
	xor h                                            ; $4de3: $ac
	xor [hl]                                         ; $4de4: $ae
	xor [hl]                                         ; $4de5: $ae
	xor a                                            ; $4de6: $af
	xor a                                            ; $4de7: $af
	add l                                            ; $4de8: $85
	xor d                                            ; $4de9: $aa
	add l                                            ; $4dea: $85
	db $d3                                           ; $4deb: $d3
	pop de                                           ; $4dec: $d1
	pop de                                           ; $4ded: $d1
	call c, $ded0                                    ; $4dee: $dc $d0 $de
	ld a, a                                          ; $4df1: $7f
	sbc d                                            ; $4df2: $9a
	ccf                                              ; $4df3: $3f
	ld a, $14                                        ; $4df4: $3e $14
	adc d                                            ; $4df6: $8a
	ld b, b                                          ; $4df7: $40
	sbc $80                                          ; $4df8: $de $80
	adc b                                            ; $4dfa: $88
	ret nz                                           ; $4dfb: $c0

	pop bc                                           ; $4dfc: $c1
	ld h, c                                          ; $4dfd: $61
	ld hl, $c933                                     ; $4dfe: $21 $33 $c9
	sbc c                                            ; $4e01: $99
	sbc c                                            ; $4e02: $99
	add hl, sp                                       ; $4e03: $39
	add hl, sp                                       ; $4e04: $39
	ld d, c                                          ; $4e05: $51
	xor c                                            ; $4e06: $a9
	ld d, c                                          ; $4e07: $51
	scf                                              ; $4e08: $37
	ld h, a                                          ; $4e09: $67
	ld h, a                                          ; $4e0a: $67

jr_04c_4e0b:
	rst JumpTable                                          ; $4e0b: $c7
	rst JumpTable                                          ; $4e0c: $c7
	add a                                            ; $4e0d: $87
	rlca                                             ; $4e0e: $07
	rlca                                             ; $4e0f: $07
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	db $db                                           ; $4e12: $db
	ld bc, $809d                                     ; $4e13: $01 $9d $80
	add e                                            ; $4e16: $83
	db $dd                                           ; $4e17: $dd
	add d                                            ; $4e18: $82
	rst SubAFromDE                                          ; $4e19: $df
	add e                                            ; $4e1a: $83
	halt                                             ; $4e1b: $76
	adc $9b                                          ; $4e1c: $ce $9b
	rst JumpTable                                          ; $4e1e: $c7
	ei                                               ; $4e1f: $fb
	cp $fc                                           ; $4e20: $fe $fc
	ld a, d                                          ; $4e22: $7a
	ldh [$df], a                                     ; $4e23: $e0 $df
	ld a, [hl]                                       ; $4e25: $7e
	adc e                                            ; $4e26: $8b
	db $fc                                           ; $4e27: $fc
	db $fd                                           ; $4e28: $fd
	db $db                                           ; $4e29: $db
	rst FarCall                                          ; $4e2a: $f7
	rst $38                                          ; $4e2b: $ff
	rst SubAFromDE                                          ; $4e2c: $df
	rst SubAFromDE                                          ; $4e2d: $df
	rst $38                                          ; $4e2e: $ff
	cp a                                             ; $4e2f: $bf
	rst AddAOntoHL                                          ; $4e30: $ef
	rst SubAFromDE                                          ; $4e31: $df
	rst $38                                          ; $4e32: $ff
	rst $38                                          ; $4e33: $ff
	ld c, a                                          ; $4e34: $4f
	cpl                                              ; $4e35: $2f
	ld b, $7f                                        ; $4e36: $06 $7f
	ld [hl], b                                       ; $4e38: $70
	ldh [rP1], a                                     ; $4e39: $e0 $00
	ld [hl], h                                       ; $4e3b: $74
	and a                                            ; $4e3c: $a7
	ld a, a                                          ; $4e3d: $7f
	rst AddAOntoHL                                          ; $4e3e: $ef
	sbc e                                            ; $4e3f: $9b
	ret nc                                           ; $4e40: $d0

	add b                                            ; $4e41: $80
	rst $38                                          ; $4e42: $ff
	nop                                              ; $4e43: $00
	sbc $3f                                          ; $4e44: $de $3f
	sbc e                                            ; $4e46: $9b
	ret nz                                           ; $4e47: $c0

	ld h, b                                          ; $4e48: $60
	rst $38                                          ; $4e49: $ff
	rst $38                                          ; $4e4a: $ff
	db $db                                           ; $4e4b: $db
	add e                                            ; $4e4c: $83
	rst $38                                          ; $4e4d: $ff
	db $db                                           ; $4e4e: $db
	ld a, h                                          ; $4e4f: $7c
	sbc d                                            ; $4e50: $9a
	ldh a, [$fd]                                     ; $4e51: $f0 $fd
	inc bc                                           ; $4e53: $03
	rlca                                             ; $4e54: $07
	ld c, $de                                        ; $4e55: $0e $de
	ld [de], a                                       ; $4e57: $12
	sbc d                                            ; $4e58: $9a
	ld c, $03                                        ; $4e59: $0e $03
	cp $fe                                           ; $4e5b: $fe $fe
	ld a, [$fede]                                    ; $4e5d: $fa $de $fe
	adc h                                            ; $4e60: $8c
	cpl                                              ; $4e61: $2f
	ccf                                              ; $4e62: $3f
	db $e4                                           ; $4e63: $e4
	ld d, a                                          ; $4e64: $57
	ld d, l                                          ; $4e65: $55
	ld l, d                                          ; $4e66: $6a
	sub d                                            ; $4e67: $92
	and e                                            ; $4e68: $a3
	jr nc, jr_04c_4e0b                               ; $4e69: $30 $a0

	ccf                                              ; $4e6b: $3f
	ld l, [hl]                                       ; $4e6c: $6e
	ld l, a                                          ; $4e6d: $6f
	ld e, l                                          ; $4e6e: $5d
	db $fd                                           ; $4e6f: $fd

jr_04c_4e70:
	db $fc                                           ; $4e70: $fc
	ldh a, [rIE]                                     ; $4e71: $f0 $ff
	ccf                                              ; $4e73: $3f
	call c, Call_04c_7ebf                            ; $4e74: $dc $bf $7e
	ld c, h                                          ; $4e77: $4c
	sbc [hl]                                         ; $4e78: $9e
	rst GetHLinHL                                          ; $4e79: $cf
	ld a, d                                          ; $4e7a: $7a
	jp nz, $cfdf                                     ; $4e7b: $c2 $df $cf

	sub l                                            ; $4e7e: $95
	dec b                                            ; $4e7f: $05
	ld [hl], d                                       ; $4e80: $72
	sub h                                            ; $4e81: $94
	jp nc, $c0c4                                     ; $4e82: $d2 $c4 $c0

	ld b, b                                          ; $4e85: $40
	ld b, h                                          ; $4e86: $44
	ld hl, sp-$78                                    ; $4e87: $f8 $88
	ld a, d                                          ; $4e89: $7a
	jp $b8de                                         ; $4e8a: $c3 $de $b8


	sub a                                            ; $4e8d: $97
	dec [hl]                                         ; $4e8e: $35
	ld a, [hl-]                                      ; $4e8f: $3a
	dec [hl]                                         ; $4e90: $35
	ld a, [hl+]                                      ; $4e91: $2a
	dec [hl]                                         ; $4e92: $35
	jr z, jr_04c_4ea5                                ; $4e93: $28 $10

	jr nz, jr_04c_4e70                               ; $4e95: $20 $d9

	ld a, a                                          ; $4e97: $7f
	adc l                                            ; $4e98: $8d
	nop                                              ; $4e99: $00
	ld c, $03                                        ; $4e9a: $0e $03

Jump_04c_4e9c:
	ld a, a                                          ; $4e9c: $7f
	nop                                              ; $4e9d: $00
	jr c, jr_04c_4f00                                ; $4e9e: $38 $60

	ld [$909e], sp                                   ; $4ea0: $08 $9e $90
	rst $38                                          ; $4ea3: $ff
	add b                                            ; $4ea4: $80

jr_04c_4ea5:
	add b                                            ; $4ea5: $80
	or b                                             ; $4ea6: $b0
	ei                                               ; $4ea7: $fb
	adc h                                            ; $4ea8: $8c
	nop                                              ; $4ea9: $00
	ld a, $75                                        ; $4eaa: $3e $75
	rst FarCall                                          ; $4eac: $f7
	ld a, l                                          ; $4ead: $7d
	ei                                               ; $4eae: $fb
	sbc l                                            ; $4eaf: $9d
	ld a, a                                          ; $4eb0: $7f
	pop bc                                           ; $4eb1: $c1
	ld [hl], l                                       ; $4eb2: $75
	ldh a, [$99]                                     ; $4eb3: $f0 $99
	db $fc                                           ; $4eb5: $fc
	ld b, $20                                        ; $4eb6: $06 $20
	ld h, b                                          ; $4eb8: $60
	nop                                              ; $4eb9: $00
	db $fc                                           ; $4eba: $fc
	ld [hl], h                                       ; $4ebb: $74
	ld l, [hl]                                       ; $4ebc: $6e
	sbc h                                            ; $4ebd: $9c
	db $dd                                           ; $4ebe: $dd
	sbc b                                            ; $4ebf: $98
	db $fd                                           ; $4ec0: $fd
	ld l, h                                          ; $4ec1: $6c
	sub [hl]                                         ; $4ec2: $96
	sbc b                                            ; $4ec3: $98
	ld h, d                                          ; $4ec4: $62
	add sp, -$7d                                     ; $4ec5: $e8 $83
	ld [$1802], sp                                   ; $4ec7: $08 $02 $18
	ld de, $ffde                                     ; $4eca: $11 $de $ff
	sbc $1a                                          ; $4ecd: $de $1a
	sub d                                            ; $4ecf: $92
	dec de                                           ; $4ed0: $1b
	ccf                                              ; $4ed1: $3f
	cp [hl]                                          ; $4ed2: $be
	rst $38                                          ; $4ed3: $ff
	ld a, a                                          ; $4ed4: $7f
	cp c                                             ; $4ed5: $b9
	rst AddAOntoHL                                          ; $4ed6: $ef
	ld bc, $0383                                     ; $4ed7: $01 $83 $03
	ret nz                                           ; $4eda: $c0

	sub b                                            ; $4edb: $90
	sbc c                                            ; $4edc: $99
	ld a, d                                          ; $4edd: $7a
	and a                                            ; $4ede: $a7
	sbc h                                            ; $4edf: $9c
	add c                                            ; $4ee0: $81
	add e                                            ; $4ee1: $83
	ld [hl], a                                       ; $4ee2: $77
	ld a, c                                          ; $4ee3: $79
	add b                                            ; $4ee4: $80
	adc e                                            ; $4ee5: $8b
	rst $38                                          ; $4ee6: $ff
	db $fc                                           ; $4ee7: $fc
	db $fc                                           ; $4ee8: $fc
	adc h                                            ; $4ee9: $8c
	ld [hl], b                                       ; $4eea: $70
	ld [hl], b                                       ; $4eeb: $70
	db $fd                                           ; $4eec: $fd
	adc a                                            ; $4eed: $8f
	rrca                                             ; $4eee: $0f
	adc a                                            ; $4eef: $8f
	db $fc                                           ; $4ef0: $fc
	db $fc                                           ; $4ef1: $fc
	rrca                                             ; $4ef2: $0f
	rrca                                             ; $4ef3: $0f
	cpl                                              ; $4ef4: $2f
	rst AddAOntoHL                                          ; $4ef5: $ef
	rst AddAOntoHL                                          ; $4ef6: $ef
	ld hl, sp+$08                                    ; $4ef7: $f8 $08
	ld [$297a], sp                                   ; $4ef9: $08 $7a $29
	call c, $9e1f                                    ; $4efc: $dc $1f $9e
	xor d                                            ; $4eff: $aa

jr_04c_4f00:
	sbc $80                                          ; $4f00: $de $80
	sbc [hl]                                         ; $4f02: $9e
	and b                                            ; $4f03: $a0
	ld a, d                                          ; $4f04: $7a
	ret nz                                           ; $4f05: $c0

	reti                                             ; $4f06: $d9


	ret nc                                           ; $4f07: $d0

	sub l                                            ; $4f08: $95
	xor l                                            ; $4f09: $ad
	ld e, $0a                                        ; $4f0a: $1e $0a
	ld [$041a], sp                                   ; $4f0c: $08 $1a $04
	add l                                            ; $4f0f: $85
	ld d, b                                          ; $4f10: $50
	ld [de], a                                       ; $4f11: $12
	nop                                              ; $4f12: $00
	sbc $04                                          ; $4f13: $de $04
	sbc d                                            ; $4f15: $9a
	ld a, [de]                                       ; $4f16: $1a
	ld [hl-], a                                      ; $4f17: $32
	inc hl                                           ; $4f18: $23
	xor c                                            ; $4f19: $a9
	ld b, c                                          ; $4f1a: $41
	db $dd                                           ; $4f1b: $dd
	ld bc, $419d                                     ; $4f1c: $01 $9d $41
	xor c                                            ; $4f1f: $a9
	reti                                             ; $4f20: $d9


	rlca                                             ; $4f21: $07

jr_04c_4f22:
	db $dd                                           ; $4f22: $dd
	ld bc, $0e7f                                     ; $4f23: $01 $7f $0e
	rst SubAFromDE                                          ; $4f26: $df
	rlca                                             ; $4f27: $07
	halt                                             ; $4f28: $76
	jp $8297                                         ; $4f29: $c3 $97 $82


	add h                                            ; $4f2c: $84
	add h                                            ; $4f2d: $84
	db $fc                                           ; $4f2e: $fc
	rst SubAFromBC                                          ; $4f2f: $e7

jr_04c_4f30:
	db $fc                                           ; $4f30: $fc
	rst $38                                          ; $4f31: $ff
	db $fd                                           ; $4f32: $fd
	ld [hl], h                                       ; $4f33: $74
	sbc l                                            ; $4f34: $9d
	adc c                                            ; $4f35: $89
	reti                                             ; $4f36: $d9


	ld a, l                                          ; $4f37: $7d
	ld a, l                                          ; $4f38: $7d
	cp a                                             ; $4f39: $bf
	ccf                                              ; $4f3a: $3f
	dec de                                           ; $4f3b: $1b
	sbc e                                            ; $4f3c: $9b
	adc e                                            ; $4f3d: $8b
	rst $38                                          ; $4f3e: $ff
	rst AddAOntoHL                                          ; $4f3f: $ef
	rst $38                                          ; $4f40: $ff
	ldh [rIE], a                                     ; $4f41: $e0 $ff
	db $ec                                           ; $4f43: $ec
	rst $38                                          ; $4f44: $ff
	ret nz                                           ; $4f45: $c0

	ld h, b                                          ; $4f46: $60
	jr nc, jr_04c_4f88                               ; $4f47: $30 $3f

	rst $38                                          ; $4f49: $ff
	ldh [$73], a                                     ; $4f4a: $e0 $73
	ld a, b                                          ; $4f4c: $78
	or b                                             ; $4f4d: $b0
	ld a, [hl]                                       ; $4f4e: $7e
	rst $38                                          ; $4f4f: $ff
	sub e                                            ; $4f50: $93
	ld a, b                                          ; $4f51: $78
	ld hl, sp-$11                                    ; $4f52: $f8 $ef
	ldh [$b0], a                                     ; $4f54: $e0 $b0
	ld h, b                                          ; $4f56: $60
	ld h, b                                          ; $4f57: $60
	ldh [$e7], a                                     ; $4f58: $e0 $e7
	rst SubAFromBC                                          ; $4f5a: $e7
	or b                                             ; $4f5b: $b0
	cp a                                             ; $4f5c: $bf
	ld l, [hl]                                       ; $4f5d: $6e

jr_04c_4f5e:
	jp nz, $03df                                     ; $4f5e: $c2 $df $03

	sbc [hl]                                         ; $4f61: $9e
	inc c                                            ; $4f62: $0c
	call c, Call_04c_7f7c                            ; $4f63: $dc $7c $7f
	ld [hl+], a                                      ; $4f66: $22
	sbc h                                            ; $4f67: $9c
	rrca                                             ; $4f68: $0f
	dec de                                           ; $4f69: $1b
	dec l                                            ; $4f6a: $2d
	sbc $2e                                          ; $4f6b: $de $2e
	sbc e                                            ; $4f6d: $9b
	ld c, a                                          ; $4f6e: $4f
	ld e, a                                          ; $4f6f: $5f
	ld c, a                                          ; $4f70: $4f
	rst FarCall                                          ; $4f71: $f7
	db $dd                                           ; $4f72: $dd
	ei                                               ; $4f73: $fb
	adc c                                            ; $4f74: $89
	ld a, [$faea]                                    ; $4f75: $fa $ea $fa
	ld d, e                                          ; $4f78: $53
	or e                                             ; $4f79: $b3
	ld h, l                                          ; $4f7a: $65
	ld h, l                                          ; $4f7b: $65
	pop hl                                           ; $4f7c: $e1
	ei                                               ; $4f7d: $fb
	ei                                               ; $4f7e: $fb
	di                                               ; $4f7f: $f3
	db $ec                                           ; $4f80: $ec
	call z, $9e9e                                    ; $4f81: $cc $9e $9e
	ld e, $04                                        ; $4f84: $1e $04
	inc b                                            ; $4f86: $04
	inc c                                            ; $4f87: $0c

jr_04c_4f88:
	cp a                                             ; $4f88: $bf
	ld [hl], l                                       ; $4f89: $75
	ld a, d                                          ; $4f8a: $7a
	ld a, e                                          ; $4f8b: $7b
	cp $9d                                           ; $4f8c: $fe $9d
	ld a, e                                          ; $4f8e: $7b
	ld b, b                                          ; $4f8f: $40
	db $db                                           ; $4f90: $db
	rst GetHLinHL                                          ; $4f91: $cf
	sbc e                                            ; $4f92: $9b
	adc $c0                                          ; $4f93: $ce $c0
	ld b, d                                          ; $4f95: $42
	ld b, l                                          ; $4f96: $45
	ld [hl], e                                       ; $4f97: $73
	cp $9e                                           ; $4f98: $fe $9e

Call_04c_4f9a:
	push af                                          ; $4f9a: $f5
	jp c, $97b8                                      ; $4f9b: $da $b8 $97

	jr jr_04c_4f30                                   ; $4f9e: $18 $90

	jr nz, jr_04c_4f22                               ; $4fa0: $20 $80

	jr nz, @-$7e                                     ; $4fa2: $20 $80

	nop                                              ; $4fa4: $00
	add c                                            ; $4fa5: $81
	ld h, d                                          ; $4fa6: $62
	ret nz                                           ; $4fa7: $c0

	adc a                                            ; $4fa8: $8f
	inc bc                                           ; $4fa9: $03
	inc b                                            ; $4faa: $04
	jr @+$7e                                         ; $4fab: $18 $7c

	inc c                                            ; $4fad: $0c
	adc h                                            ; $4fae: $8c
	inc b                                            ; $4faf: $04
	cp $84                                           ; $4fb0: $fe $84
	add h                                            ; $4fb2: $84
	ld hl, sp-$08                                    ; $4fb3: $f8 $f8
	call c, $9e8c                                    ; $4fb5: $dc $8c $9e
	db $fc                                           ; $4fb8: $fc
	halt                                             ; $4fb9: $76
	db $d3                                           ; $4fba: $d3
	push hl                                          ; $4fbb: $e5
	sbc e                                            ; $4fbc: $9b
	inc bc                                           ; $4fbd: $03
	rla                                              ; $4fbe: $17
	dec hl                                           ; $4fbf: $2b
	rla                                              ; $4fc0: $17
	db $dd                                           ; $4fc1: $dd
	inc bc                                           ; $4fc2: $03
	call c, Call_04c_7b3f                            ; $4fc3: $dc $3f $7b
	db $f4                                           ; $4fc6: $f4
	reti                                             ; $4fc7: $d9


	add b                                            ; $4fc8: $80
	sbc [hl]                                         ; $4fc9: $9e
	inc bc                                           ; $4fca: $03
	ld a, [$408f]                                    ; $4fcb: $fa $8f $40
	ld [hl], b                                       ; $4fce: $70
	ld [hl], b                                       ; $4fcf: $70
	ld h, b                                          ; $4fd0: $60
	ld b, b                                          ; $4fd1: $40
	jr nc, jr_04c_5034                               ; $4fd2: $30 $60

	jr nc, jr_04c_4f5e                               ; $4fd4: $30 $88

	add b                                            ; $4fd6: $80
	add b                                            ; $4fd7: $80
	sub b                                            ; $4fd8: $90
	or b                                             ; $4fd9: $b0
	ret nz                                           ; $4fda: $c0

	sub b                                            ; $4fdb: $90
	ld b, b                                          ; $4fdc: $40
	reti                                             ; $4fdd: $d9


	ld [$1fd9], sp                                   ; $4fde: $08 $d9 $1f
	ld a, [hl]                                       ; $4fe1: $7e
	add $99                                          ; $4fe2: $c6 $99
	xor d                                            ; $4fe4: $aa
	xor [hl]                                         ; $4fe5: $ae
	xor [hl]                                         ; $4fe6: $ae
	xor h                                            ; $4fe7: $ac
	xor h                                            ; $4fe8: $ac
	xor c                                            ; $4fe9: $a9
	sbc $d0                                          ; $4fea: $de $d0
	rst SubAFromDE                                          ; $4fec: $df
	pop de                                           ; $4fed: $d1
	rst SubAFromDE                                          ; $4fee: $df
	db $d3                                           ; $4fef: $d3
	sbc e                                            ; $4ff0: $9b
	sub $8a                                          ; $4ff1: $d6 $8a
	inc d                                            ; $4ff3: $14
	ld a, [hl+]                                      ; $4ff4: $2a
	sbc $7f                                          ; $4ff5: $de $7f
	rst SubAFromDE                                          ; $4ff7: $df
	rst $38                                          ; $4ff8: $ff
	rst SubAFromDE                                          ; $4ff9: $df
	ld h, c                                          ; $4ffa: $61
	sbc [hl]                                         ; $4ffb: $9e
	pop bc                                           ; $4ffc: $c1
	sbc $80                                          ; $4ffd: $de $80
	rst $38                                          ; $4fff: $ff
	adc a                                            ; $5000: $8f
	ld d, c                                          ; $5001: $51
	add hl, hl                                       ; $5002: $29
	ld d, c                                          ; $5003: $51
	add hl, sp                                       ; $5004: $39
	add hl, sp                                       ; $5005: $39
	sbc c                                            ; $5006: $99
	sbc c                                            ; $5007: $99
	ret                                              ; $5008: $c9


	rlca                                             ; $5009: $07
	add a                                            ; $500a: $87
	add a                                            ; $500b: $87
	rst JumpTable                                          ; $500c: $c7
	rst JumpTable                                          ; $500d: $c7
	ld h, a                                          ; $500e: $67
	ld h, a                                          ; $500f: $67
	scf                                              ; $5010: $37
	db $dd                                           ; $5011: $dd
	rst $38                                          ; $5012: $ff
	ld a, l                                          ; $5013: $7d
	sub d                                            ; $5014: $92
	add b                                            ; $5015: $80
	db $ec                                           ; $5016: $ec
	db $e4                                           ; $5017: $e4
	db $fc                                           ; $5018: $fc
	ld hl, sp-$07                                    ; $5019: $f8 $f9
	ld sp, hl                                        ; $501b: $f9
	ei                                               ; $501c: $fb
	rst $38                                          ; $501d: $ff
	rst $38                                          ; $501e: $ff
	rst SubAFromBC                                          ; $501f: $e7
	add h                                            ; $5020: $84
	db $fd                                           ; $5021: $fd
	nop                                              ; $5022: $00
	ld c, d                                          ; $5023: $4a
	ld [de], a                                       ; $5024: $12
	ld h, d                                          ; $5025: $62
	di                                               ; $5026: $f3
	pop af                                           ; $5027: $f1
	adc $fd                                          ; $5028: $ce $fd
	rst $38                                          ; $502a: $ff
	or [hl]                                          ; $502b: $b6
	cp $9f                                           ; $502c: $fe $9f
	rrca                                             ; $502e: $0f
	ld c, $40                                        ; $502f: $0e $40
	ld d, c                                          ; $5031: $51
	add b                                            ; $5032: $80
	ld h, a                                          ; $5033: $67

jr_04c_5034:
	ld c, b                                          ; $5034: $48
	adc h                                            ; $5035: $8c
	ld l, d                                          ; $5036: $6a
	xor e                                            ; $5037: $ab
	db $eb                                           ; $5038: $eb
	rst $38                                          ; $5039: $ff
	xor $ff                                          ; $503a: $ee $ff
	rst SubAFromDE                                          ; $503c: $df
	ld a, a                                          ; $503d: $7f
	db $dd                                           ; $503e: $dd
	call c, Call_04c_7f9c                            ; $503f: $dc $9c $7f
	ld a, a                                          ; $5042: $7f
	ld a, h                                          ; $5043: $7c
	inc a                                            ; $5044: $3c
	cp $ff                                           ; $5045: $fe $ff
	ld h, a                                          ; $5047: $67
	ld [hl], e                                       ; $5048: $73
	ld a, c                                          ; $5049: $79
	ld a, h                                          ; $504a: $7c
	sbc l                                            ; $504b: $9d
	or [hl]                                          ; $504c: $b6
	or e                                             ; $504d: $b3
	ld a, b                                          ; $504e: $78
	db $e3                                           ; $504f: $e3
	sbc c                                            ; $5050: $99
	rst $38                                          ; $5051: $ff
	rst GetHLinHL                                          ; $5052: $cf
	rst SubAFromDE                                          ; $5053: $df
	rst FarCall                                          ; $5054: $f7
	ld a, a                                          ; $5055: $7f
	cp a                                             ; $5056: $bf
	ld a, b                                          ; $5057: $78
	ld b, l                                          ; $5058: $45
	rst SubAFromDE                                          ; $5059: $df
	add a                                            ; $505a: $87
	add b                                            ; $505b: $80
	sbc a                                            ; $505c: $9f
	pop af                                           ; $505d: $f1
	ld c, h                                          ; $505e: $4c
	ld b, d                                          ; $505f: $42
	ld b, c                                          ; $5060: $41
	jp z, $eafa                                      ; $5061: $ca $fa $ea

	sbc a                                            ; $5064: $9f
	db $d3                                           ; $5065: $d3
	ld hl, sp-$04                                    ; $5066: $f8 $fc
	add h                                            ; $5068: $84
	ld a, a                                          ; $5069: $7f
	rst $38                                          ; $506a: $ff
	rst GetHLinHL                                          ; $506b: $cf
	rst GetHLinHL                                          ; $506c: $cf
	ccf                                              ; $506d: $3f
	ld l, a                                          ; $506e: $6f
	ld l, a                                          ; $506f: $6f
	rst JumpTable                                          ; $5070: $c7
	di                                               ; $5071: $f3
	db $f4                                           ; $5072: $f4
	ldh a, [$9c]                                     ; $5073: $f0 $9c
	pop af                                           ; $5075: $f1
	ld c, l                                          ; $5076: $4d
	db $ed                                           ; $5077: $ed
	rst AddAOntoHL                                          ; $5078: $ef
	inc c                                            ; $5079: $0c
	rrca                                             ; $507a: $0f
	sbc c                                            ; $507b: $99
	inc c                                            ; $507c: $0c
	db $fc                                           ; $507d: $fc
	rst $38                                          ; $507e: $ff
	di                                               ; $507f: $f3
	ld d, e                                          ; $5080: $53
	ld d, d                                          ; $5081: $52
	ld a, e                                          ; $5082: $7b
	ld [hl], l                                       ; $5083: $75
	ld l, h                                          ; $5084: $6c
	add c                                            ; $5085: $81
	db $dd                                           ; $5086: $dd
	rst $38                                          ; $5087: $ff
	sub h                                            ; $5088: $94
	ld e, a                                          ; $5089: $5f
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	ldh a, [c]                                       ; $508c: $f2
	rst FarCall                                          ; $508d: $f7
	di                                               ; $508e: $f3
	push af                                          ; $508f: $f5
	ldh a, [c]                                       ; $5090: $f2
	push af                                          ; $5091: $f5
	nop                                              ; $5092: $00
	rst FarCall                                          ; $5093: $f7

jr_04c_5094:
	db $db                                           ; $5094: $db
	ld hl, sp-$21                                    ; $5095: $f8 $df
	rrca                                             ; $5097: $0f
	sub a                                            ; $5098: $97
	sub l                                            ; $5099: $95
	ld a, [hl+]                                      ; $509a: $2a
	or l                                             ; $509b: $b5

jr_04c_509c:
	dec hl                                           ; $509c: $2b
	or a                                             ; $509d: $b7
	ld a, $fc                                        ; $509e: $3e $fc
	rst $38                                          ; $50a0: $ff
	db $db                                           ; $50a1: $db
	ld a, a                                          ; $50a2: $7f
	ld a, [hl]                                       ; $50a3: $7e
	ld c, h                                          ; $50a4: $4c
	sub h                                            ; $50a5: $94
	inc c                                            ; $50a6: $0c
	ld hl, sp+$50                                    ; $50a7: $f8 $50
	rst FarCall                                          ; $50a9: $f7
	ld a, a                                          ; $50aa: $7f
	ld [hl], b                                       ; $50ab: $70
	add b                                            ; $50ac: $80
	rst $38                                          ; $50ad: $ff
	db $fc                                           ; $50ae: $fc
	ld hl, sp-$20                                    ; $50af: $f8 $e0
	ld l, a                                          ; $50b1: $6f
	rst JumpTable                                          ; $50b2: $c7
	ld [hl], h                                       ; $50b3: $74
	rst SubAFromDE                                          ; $50b4: $df
	ld a, e                                          ; $50b5: $7b
	db $fc                                           ; $50b6: $fc
	ld [hl], e                                       ; $50b7: $73
	ld hl, sp+$67                                    ; $50b8: $f8 $67
	ldh a, [$7c]                                     ; $50ba: $f0 $7c
	add d                                            ; $50bc: $82
	ld h, e                                          ; $50bd: $63
	ldh a, [$de]                                     ; $50be: $f0 $de
	inc bc                                           ; $50c0: $03
	sbc [hl]                                         ; $50c1: $9e
	rlca                                             ; $50c2: $07
	ld [hl], a                                       ; $50c3: $77
	cp $7e                                           ; $50c4: $fe $7e
	add $9d                                          ; $50c6: $c6 $9d
	cpl                                              ; $50c8: $2f
	sub a                                            ; $50c9: $97
	db $dd                                           ; $50ca: $dd
	cp a                                             ; $50cb: $bf
	ld a, e                                          ; $50cc: $7b
	inc c                                            ; $50cd: $0c
	sbc e                                            ; $50ce: $9b
	ld a, [hl+]                                      ; $50cf: $2a
	ld d, l                                          ; $50d0: $55
	ld a, [hl+]                                      ; $50d1: $2a
	ld d, b                                          ; $50d2: $50
	ld a, e                                          ; $50d3: $7b
	ldh [rSVBK], a                                   ; $50d4: $e0 $70
	rst JumpTable                                          ; $50d6: $c7
	sub e                                            ; $50d7: $93
	rst $38                                          ; $50d8: $ff
	jr nz, jr_04c_512b                               ; $50d9: $20 $50

	jr nz, jr_04c_509c                               ; $50db: $20 $bf

	ld b, l                                          ; $50dd: $45
	xor d                                            ; $50de: $aa
	dec d                                            ; $50df: $15
	rst $38                                          ; $50e0: $ff
	ret nc                                           ; $50e1: $d0

	ldh [$7e], a                                     ; $50e2: $e0 $7e
	call c, $deff                                    ; $50e4: $dc $ff $de
	ld [$fc9a], sp                                   ; $50e7: $08 $9a $fc
	ld d, [hl]                                       ; $50ea: $56
	xor e                                            ; $50eb: $ab
	ld d, l                                          ; $50ec: $55
	rst $38                                          ; $50ed: $ff
	ld [hl], b                                       ; $50ee: $70
	ld b, c                                          ; $50ef: $41
	sbc $ff                                          ; $50f0: $de $ff
	sbc d                                            ; $50f2: $9a
	xor c                                            ; $50f3: $a9
	and e                                            ; $50f4: $a3
	and e                                            ; $50f5: $a3
	and a                                            ; $50f6: $a7
	and b                                            ; $50f7: $a0
	ld a, e                                          ; $50f8: $7b
	jr nc, jr_04c_5094                               ; $50f9: $30 $99

	sub $dc                                          ; $50fb: $d6 $dc
	call c, $dfd8                                    ; $50fd: $dc $d8 $df
	ret nz                                           ; $5100: $c0

	ld e, a                                          ; $5101: $5f
	ld d, e                                          ; $5102: $53
	db $fd                                           ; $5103: $fd
	ld [hl], a                                       ; $5104: $77
	rst FarCall                                          ; $5105: $f7
	sbc d                                            ; $5106: $9a
	ret                                              ; $5107: $c9


	pop hl                                           ; $5108: $e1
	pop hl                                           ; $5109: $e1
	pop af                                           ; $510a: $f1
	ld bc, $9e79                                     ; $510b: $01 $79 $9e
	sub a                                            ; $510e: $97
	scf                                              ; $510f: $37
	rra                                              ; $5110: $1f
	rra                                              ; $5111: $1f
	rrca                                             ; $5112: $0f
	rst $38                                          ; $5113: $ff
	inc bc                                           ; $5114: $03
	rst $38                                          ; $5115: $ff
	rst $38                                          ; $5116: $ff
	db $dd                                           ; $5117: $dd
	ldh [$9b], a                                     ; $5118: $e0 $9b
	pop hl                                           ; $511a: $e1
	pop bc                                           ; $511b: $c1
	rst $38                                          ; $511c: $ff
	ld bc, $e7dd                                     ; $511d: $01 $dd $e7
	sbc [hl]                                         ; $5120: $9e
	ldh [$de], a                                     ; $5121: $e0 $de
	cp $df                                           ; $5123: $fe $df
	pop af                                           ; $5125: $f1
	sbc b                                            ; $5126: $98
	pop hl                                           ; $5127: $e1
	ld bc, $23e5                                     ; $5128: $01 $e5 $23

jr_04c_512b:
	inc hl                                           ; $512b: $23
	ld h, h                                          ; $512c: $64
	ld c, $7b                                        ; $512d: $0e $7b
	ld l, h                                          ; $512f: $6c
	sbc [hl]                                         ; $5130: $9e
	rst SubAFromBC                                          ; $5131: $e7
	sbc $23                                          ; $5132: $de $23
	sub l                                            ; $5134: $95
	ld l, e                                          ; $5135: $6b
	ld l, d                                          ; $5136: $6a
	ld c, d                                          ; $5137: $4a
	ld e, d                                          ; $5138: $5a
	ld e, d                                          ; $5139: $5a
	ld l, e                                          ; $513a: $6b
	db $ed                                           ; $513b: $ed
	add hl, hl                                       ; $513c: $29
	sbc h                                            ; $513d: $9c
	sbc l                                            ; $513e: $9d
	sbc $bd                                          ; $513f: $de $bd
	sub b                                            ; $5141: $90
	sbc h                                            ; $5142: $9c
	sbc [hl]                                         ; $5143: $9e
	sbc $f1                                          ; $5144: $de $f1
	ldh a, [$f0]                                     ; $5146: $f0 $f0
	ldh [$f0], a                                     ; $5148: $e0 $f0
	ld h, b                                          ; $514a: $60
	ld a, a                                          ; $514b: $7f
	ld h, b                                          ; $514c: $60
	pop hl                                           ; $514d: $e1
	ldh [$e0], a                                     ; $514e: $e0 $e0
	ldh a, [$73]                                     ; $5150: $f0 $73
	ld l, $de                                        ; $5152: $2e $de
	cp $9a                                           ; $5154: $fe $9a
	ld a, [hl]                                       ; $5156: $7e
	ld e, d                                          ; $5157: $5a
	ld d, [hl]                                       ; $5158: $56
	ld a, h                                          ; $5159: $7c
	ld h, b                                          ; $515a: $60
	ld [hl], a                                       ; $515b: $77
	ld [hl], c                                       ; $515c: $71
	sbc d                                            ; $515d: $9a
	ld c, d                                          ; $515e: $4a
	ld d, d                                          ; $515f: $52
	ld b, h                                          ; $5160: $44
	inc b                                            ; $5161: $04
	inc b                                            ; $5162: $04
	ei                                               ; $5163: $fb
	db $dd                                           ; $5164: $dd
	rlca                                             ; $5165: $07
	db $dd                                           ; $5166: $dd
	inc bc                                           ; $5167: $03
	ld a, l                                          ; $5168: $7d
	ld b, c                                          ; $5169: $41
	sub c                                            ; $516a: $91
	rst SubAFromDE                                          ; $516b: $df
	rst SubAFromHL                                          ; $516c: $d7
	or a                                             ; $516d: $b7
	dec [hl]                                         ; $516e: $35
	ccf                                              ; $516f: $3f

jr_04c_5170:
	dec a                                            ; $5170: $3d
	ld d, d                                          ; $5171: $52
	ld b, d                                          ; $5172: $42
	ld h, d                                          ; $5173: $62
	ld l, d                                          ; $5174: $6a
	ld l, d                                          ; $5175: $6a
	db $eb                                           ; $5176: $eb
	pop hl                                           ; $5177: $e1
	db $e3                                           ; $5178: $e3
	jp hl                                            ; $5179: $e9


	ld a, h                                          ; $517a: $7c
	jr nc, jr_04c_5170                               ; $517b: $30 $f3

	dec b                                            ; $517d: $05
	sbc b                                            ; $517e: $98
	pop hl                                           ; $517f: $e1
	sbc [hl]                                         ; $5180: $9e
	ld a, [hl]                                       ; $5181: $7e
	ldh [$9a], a                                     ; $5182: $e0 $9a
	sbc $01                                          ; $5184: $de $01
	ld a, c                                          ; $5186: $79
	dec bc                                           ; $5187: $0b
	ld [hl], e                                       ; $5188: $73
	ld b, d                                          ; $5189: $42
	ld a, h                                          ; $518a: $7c
	jr c, @-$62                                      ; $518b: $38 $9c

	inc b                                            ; $518d: $04
	ld a, a                                          ; $518e: $7f
	rrca                                             ; $518f: $0f
	sbc $98                                          ; $5190: $de $98
	rst SubAFromDE                                          ; $5192: $df
	ld [$b99d], sp                                   ; $5193: $08 $9d $b9
	rst FarCall                                          ; $5196: $f7
	db $fd                                           ; $5197: $fd
	rst SubAFromDE                                          ; $5198: $df
	cp h                                             ; $5199: $bc
	sbc [hl]                                         ; $519a: $9e
	add $72                                          ; $519b: $c6 $72
	ld h, b                                          ; $519d: $60
	sbc d                                            ; $519e: $9a
	ld [$f1f9], sp                                   ; $519f: $08 $f9 $f1
	di                                               ; $51a2: $f3
	nop                                              ; $51a3: $00
	db $dd                                           ; $51a4: $dd
	ld a, e                                          ; $51a5: $7b
	sbc l                                            ; $51a6: $9d
	ei                                               ; $51a7: $fb
	ld a, [bc]                                       ; $51a8: $0a
	ld l, [hl]                                       ; $51a9: $6e
	ld a, b                                          ; $51aa: $78
	sbc e                                            ; $51ab: $9b
	ret nz                                           ; $51ac: $c0

	add b                                            ; $51ad: $80
	ldh [rP1], a                                     ; $51ae: $e0 $00
	call c, $9cc0                                    ; $51b0: $dc $c0 $9c
	ld b, b                                          ; $51b3: $40
	ldh a, [$f8]                                     ; $51b4: $f0 $f8
	ld b, l                                          ; $51b6: $45
	nop                                              ; $51b7: $00
	sbc l                                            ; $51b8: $9d
	ld h, [hl]                                       ; $51b9: $66
	ld h, l                                          ; $51ba: $65
	reti                                             ; $51bb: $d9


	ld d, l                                          ; $51bc: $55
	ld a, a                                          ; $51bd: $7f
	or $9e                                           ; $51be: $f6 $9e
	ld d, e                                          ; $51c0: $53
	db $dd                                           ; $51c1: $dd
	inc sp                                           ; $51c2: $33
	sbc [hl]                                         ; $51c3: $9e
	inc [hl]                                         ; $51c4: $34
	ld [hl], a                                       ; $51c5: $77
	or $dc                                           ; $51c6: $f6 $dc
	inc sp                                           ; $51c8: $33
	sbc d                                            ; $51c9: $9a
	dec [hl]                                         ; $51ca: $35
	ld d, l                                          ; $51cb: $55
	ld b, h                                          ; $51cc: $44
	ld h, [hl]                                       ; $51cd: $66
	ld h, e                                          ; $51ce: $63
	ld [hl], e                                       ; $51cf: $73
	db $ec                                           ; $51d0: $ec
	sbc d                                            ; $51d1: $9a
	inc sp                                           ; $51d2: $33
	ld d, h                                          ; $51d3: $54
	ld b, h                                          ; $51d4: $44
	ld b, h                                          ; $51d5: $44
	ld [hl], e                                       ; $51d6: $73
	db $db                                           ; $51d7: $db
	inc sp                                           ; $51d8: $33
	rst SubAFromDE                                          ; $51d9: $df
	ld b, h                                          ; $51da: $44
	sbc h                                            ; $51db: $9c
	ld [hl], a                                       ; $51dc: $77
	ld [hl], h                                       ; $51dd: $74
	ld [hl], a                                       ; $51de: $77
	sbc $44                                          ; $51df: $de $44
	sbc [hl]                                         ; $51e1: $9e
	ld b, e                                          ; $51e2: $43
	ld [hl], a                                       ; $51e3: $77
	or $df                                           ; $51e4: $f6 $df
	ld [hl], a                                       ; $51e6: $77
	sbc $55                                          ; $51e7: $de $55
	ld l, e                                          ; $51e9: $6b
	or $df                                           ; $51ea: $f6 $df
	ld b, h                                          ; $51ec: $44
	ld e, a                                          ; $51ed: $5f
	or $7b                                           ; $51ee: $f6 $7b
	ldh [c], a                                       ; $51f0: $e2
	sbc h                                            ; $51f1: $9c
	ld b, a                                          ; $51f2: $47
	ld [hl], h                                       ; $51f3: $74
	ld b, h                                          ; $51f4: $44
	ld l, e                                          ; $51f5: $6b
	ret c                                            ; $51f6: $d8

	ld [hl], a                                       ; $51f7: $77
	or $d9                                           ; $51f8: $f6 $d9
	ld b, h                                          ; $51fa: $44
	cp b                                             ; $51fb: $b8
	adc c                                            ; $51fc: $89
	jp c, $9e33                                      ; $51fd: $da $33 $9e

	inc hl                                           ; $5200: $23
	reti                                             ; $5201: $d9


	db $ec                                           ; $5202: $ec
	reti                                             ; $5203: $d9


	rst $38                                          ; $5204: $ff
	ld sp, hl                                        ; $5205: $f9
	inc bc                                           ; $5206: $03
	ldh a, [$03]                                     ; $5207: $f0 $03
	ldh a, [$03]                                     ; $5209: $f0 $03
	ldh a, [$03]                                     ; $520b: $f0 $03
	ldh a, [$03]                                     ; $520d: $f0 $03
	ldh a, [$03]                                     ; $520f: $f0 $03
	ldh a, [$27]                                     ; $5211: $f0 $27
	ldh a, [$9d]                                     ; $5213: $f0 $9d
	rra                                              ; $5215: $1f
	ccf                                              ; $5216: $3f
	jp c, $9eff                                      ; $5217: $da $ff $9e

	ld a, a                                          ; $521a: $7f
	ld c, a                                          ; $521b: $4f
	ldh [c], a                                       ; $521c: $e2
	ld h, a                                          ; $521d: $67
	ldh [$d8], a                                     ; $521e: $e0 $d8
	rst $38                                          ; $5220: $ff
	sbc [hl]                                         ; $5221: $9e
	rst GetHLinHL                                          ; $5222: $cf
	ld c, e                                          ; $5223: $4b
	ldh a, [$9e]                                     ; $5224: $f0 $9e
	sbc a                                            ; $5226: $9f
	ld h, a                                          ; $5227: $67
	ldh a, [$d9]                                     ; $5228: $f0 $d9
	db $e3                                           ; $522a: $e3
	reti                                             ; $522b: $d9


	cpl                                              ; $522c: $2f
	sbc d                                            ; $522d: $9a
	rst $38                                          ; $522e: $ff
	ei                                               ; $522f: $fb
	rst $38                                          ; $5230: $ff
	ld hl, sp-$07                                    ; $5231: $f8 $f9
	call c, $dff8                                    ; $5233: $dc $f8 $df
	rst $38                                          ; $5236: $ff
	db $dd                                           ; $5237: $dd
	di                                               ; $5238: $f3
	sbc $ff                                          ; $5239: $de $ff
	sbc d                                            ; $523b: $9a
	inc bc                                           ; $523c: $03
	db $fc                                           ; $523d: $fc
	dec sp                                           ; $523e: $3b
	rlca                                             ; $523f: $07
	ld bc, $d477                                     ; $5240: $01 $77 $d4
	sbc [hl]                                         ; $5243: $9e
	ld l, h                                          ; $5244: $6c
	db $db                                           ; $5245: $db
	rst $38                                          ; $5246: $ff
	sbc d                                            ; $5247: $9a
	inc h                                            ; $5248: $24
	jp nc, $7375                                     ; $5249: $d2 $75 $73

	ld [hl], l                                       ; $524c: $75
	ld [hl], a                                       ; $524d: $77
	ldh a, [$9b]                                     ; $524e: $f0 $9b
	sbc c                                            ; $5250: $99
	reti                                             ; $5251: $d9


	ld sp, hl                                        ; $5252: $f9
	reti                                             ; $5253: $d9


	sbc $ff                                          ; $5254: $de $ff
	sbc d                                            ; $5256: $9a
	ld l, [hl]                                       ; $5257: $6e
	db $db                                           ; $5258: $db
	push hl                                          ; $5259: $e5
	db $eb                                           ; $525a: $eb
	cp l                                             ; $525b: $bd
	ld [hl], a                                       ; $525c: $77
	ldh a, [$9b]                                     ; $525d: $f0 $9b
	sub c                                            ; $525f: $91
	pop af                                           ; $5260: $f1
	cp c                                             ; $5261: $b9
	sbc l                                            ; $5262: $9d
	sbc $ff                                          ; $5263: $de $ff
	sbc d                                            ; $5265: $9a
	ld c, [hl]                                       ; $5266: $4e
	cp e                                             ; $5267: $bb
	ld d, a                                          ; $5268: $57
	cp d                                             ; $5269: $ba
	ld d, l                                          ; $526a: $55
	ld [hl], a                                       ; $526b: $77
	ldh a, [$9b]                                     ; $526c: $f0 $9b
	add hl, de                                       ; $526e: $19
	rla                                              ; $526f: $17
	inc de                                           ; $5270: $13
	ld de, $ffde                                     ; $5271: $11 $de $ff
	sbc d                                            ; $5274: $9a
	db $ec                                           ; $5275: $ec
	cp e                                             ; $5276: $bb
	ld d, a                                          ; $5277: $57
	cp e                                             ; $5278: $bb
	rst FarCall                                          ; $5279: $f7
	ld [hl], a                                       ; $527a: $77
	ldh a, [$df]                                     ; $527b: $f0 $df
	inc de                                           ; $527d: $13
	sbc [hl]                                         ; $527e: $9e
	sub e                                            ; $527f: $93
	ld [hl], a                                       ; $5280: $77
	or b                                             ; $5281: $b0
	adc l                                            ; $5282: $8d
	jp c, $f265                                      ; $5283: $da $65 $f2

	ld a, c                                          ; $5286: $79
	cp $00                                           ; $5287: $fe $00
	nop                                              ; $5289: $00
	ldh [$f0], a                                     ; $528a: $e0 $f0
	jr c, jr_04c_530a                                ; $528c: $38 $7c

	cpl                                              ; $528e: $2f
	ld a, e                                          ; $528f: $7b
	rst $38                                          ; $5290: $ff
	rst $38                                          ; $5291: $ff
	db $fd                                           ; $5292: $fd
	xor d                                            ; $5293: $aa
	ld d, l                                          ; $5294: $55
	ld a, e                                          ; $5295: $7b
	cp $fa                                           ; $5296: $fe $fa
	sbc e                                            ; $5298: $9b
	add b                                            ; $5299: $80
	rst $38                                          ; $529a: $ff
	rst $38                                          ; $529b: $ff
	ld d, a                                          ; $529c: $57
	ld [hl], a                                       ; $529d: $77
	ldh a, [$f8]                                     ; $529e: $f0 $f8
	sbc $ff                                          ; $52a0: $de $ff
	ld [hl], a                                       ; $52a2: $77
	ldh a, [$9e]                                     ; $52a3: $f0 $9e
	ld a, [hl+]                                      ; $52a5: $2a
	ld c, e                                          ; $52a6: $4b
	ldh a, [$67]                                     ; $52a7: $f0 $67
	ret nc                                           ; $52a9: $d0

	ld a, e                                          ; $52aa: $7b
	ldh a, [$9e]                                     ; $52ab: $f0 $9e
	push af                                          ; $52ad: $f5
	ld [hl], a                                       ; $52ae: $77
	ldh a, [$9e]                                     ; $52af: $f0 $9e
	and b                                            ; $52b1: $a0
	ld e, a                                          ; $52b2: $5f
	ldh a, [rPCM34]                                  ; $52b3: $f0 $77
	ldh [c], a                                       ; $52b5: $e2

jr_04c_52b6:
	sbc l                                            ; $52b6: $9d
	ld d, l                                          ; $52b7: $55
	ld a, [bc]                                       ; $52b8: $0a
	ld e, a                                          ; $52b9: $5f
	ldh a, [$99]                                     ; $52ba: $f0 $99
	ld e, a                                          ; $52bc: $5f
	xor d                                            ; $52bd: $aa
	ld d, l                                          ; $52be: $55
	xor e                                            ; $52bf: $ab
	ld d, a                                          ; $52c0: $57
	ld l, e                                          ; $52c1: $6b
	db $fc                                           ; $52c2: $fc
	sbc h                                            ; $52c3: $9c
	ld bc, $c203                                     ; $52c4: $01 $03 $c2
	sbc $df                                          ; $52c7: $de $df
	sbc b                                            ; $52c9: $98
	ld l, a                                          ; $52ca: $6f
	ld d, l                                          ; $52cb: $55
	ld a, [bc]                                       ; $52cc: $0a
	push de                                          ; $52cd: $d5
	add d                                            ; $52ce: $82
	ld h, b                                          ; $52cf: $60
	ld h, b                                          ; $52d0: $60
	sbc $e0                                          ; $52d1: $de $e0
	sbc $a0                                          ; $52d3: $de $a0
	db $dd                                           ; $52d5: $dd
	ld a, l                                          ; $52d6: $7d
	sbc e                                            ; $52d7: $9b
	ld d, l                                          ; $52d8: $55
	jr z, jr_04c_5330                                ; $52d9: $28 $55

	jr z, jr_04c_52b6                                ; $52db: $28 $d9

	add d                                            ; $52dd: $82
	db $dd                                           ; $52de: $dd
	rst FarCall                                          ; $52df: $f7
	sbc e                                            ; $52e0: $9b
	ld d, l                                          ; $52e1: $55
	and d                                            ; $52e2: $a2
	ld d, l                                          ; $52e3: $55
	and d                                            ; $52e4: $a2
	reti                                             ; $52e5: $d9


	ld [$efdd], sp                                   ; $52e6: $08 $dd $ef
	sbc e                                            ; $52e9: $9b
	ld l, d                                          ; $52ea: $6a
	and l                                            ; $52eb: $a5
	ld l, d                                          ; $52ec: $6a
	or l                                             ; $52ed: $b5
	reti                                             ; $52ee: $d9


	jr nc, @-$64                                     ; $52ef: $30 $9a

	sbc a                                            ; $52f1: $9f
	cp a                                             ; $52f2: $bf
	cp a                                             ; $52f3: $bf
	ld a, [hl+]                                      ; $52f4: $2a
	or l                                             ; $52f5: $b5
	ld a, e                                          ; $52f6: $7b
	cp $d9                                           ; $52f7: $fe $d9
	ld h, b                                          ; $52f9: $60
	adc a                                            ; $52fa: $8f
	jp $8383                                         ; $52fb: $c3 $83 $83


	inc bc                                           ; $52fe: $03
	jp $03fb                                         ; $52ff: $c3 $fb $03


	ld b, e                                          ; $5302: $43
	cpl                                              ; $5303: $2f
	ld l, a                                          ; $5304: $6f
	ld l, a                                          ; $5305: $6f
	rst AddAOntoHL                                          ; $5306: $ef
	ccf                                              ; $5307: $3f
	rlca                                             ; $5308: $07
	rst AddAOntoHL                                          ; $5309: $ef

jr_04c_530a:
	xor a                                            ; $530a: $af
	reti                                             ; $530b: $d9


	db $e3                                           ; $530c: $e3
	reti                                             ; $530d: $d9


	ldh a, [$80]                                     ; $530e: $f0 $80
	pop bc                                           ; $5310: $c1
	ret z                                            ; $5311: $c8

	ret z                                            ; $5312: $c8

	ld c, b                                          ; $5313: $48
	ld c, h                                          ; $5314: $4c
	ld c, h                                          ; $5315: $4c
	ld c, $0a                                        ; $5316: $0e $0a
	ld a, $37                                        ; $5318: $3e $37
	scf                                              ; $531a: $37
	or a                                             ; $531b: $b7
	or e                                             ; $531c: $b3
	or e                                             ; $531d: $b3
	pop af                                           ; $531e: $f1
	push af                                          ; $531f: $f5
	or c                                             ; $5320: $b1
	ld h, c                                          ; $5321: $61
	sbc h                                            ; $5322: $9c
	db $d3                                           ; $5323: $d3
	reti                                             ; $5324: $d9


	reti                                             ; $5325: $d9


	ret c                                            ; $5326: $d8

	sbc b                                            ; $5327: $98
	ld a, c                                          ; $5328: $79
	sbc c                                            ; $5329: $99
	ld h, e                                          ; $532a: $63
	inc l                                            ; $532b: $2c
	ld h, $26                                        ; $532c: $26 $26
	daa                                              ; $532e: $27
	add b                                            ; $532f: $80

jr_04c_5330:
	ld h, a                                          ; $5330: $67
	sub e                                            ; $5331: $93
	ld bc, $0901                                     ; $5332: $01 $01 $09
	ld e, c                                          ; $5335: $59
	dec de                                           ; $5336: $1b
	add c                                            ; $5337: $81
	add b                                            ; $5338: $80
	sub e                                            ; $5339: $93
	sub c                                            ; $533a: $91
	sub c                                            ; $533b: $91
	reti                                             ; $533c: $d9


	xor c                                            ; $533d: $a9
	rst SubAFromBC                                          ; $533e: $e7
	ld a, [hl]                                       ; $533f: $7e
	ld a, a                                          ; $5340: $7f
	sub c                                            ; $5341: $91
	ld [hl], b                                       ; $5342: $70
	add hl, de                                       ; $5343: $19
	ld [de], a                                       ; $5344: $12
	sub b                                            ; $5345: $90
	and b                                            ; $5346: $a0
	jr jr_04c_5351                                   ; $5347: $18 $08

	sub c                                            ; $5349: $91
	ld [hl], c                                       ; $534a: $71
	add hl, de                                       ; $534b: $19
	inc de                                           ; $534c: $13
	sub c                                            ; $534d: $91
	or c                                             ; $534e: $b1
	add b                                            ; $534f: $80
	sbc c                                            ; $5350: $99

jr_04c_5351:
	ld sp, hl                                        ; $5351: $f9
	sbc b                                            ; $5352: $98
	db $f4                                           ; $5353: $f4
	cp a                                             ; $5354: $bf
	pop af                                           ; $5355: $f1
	dec a                                            ; $5356: $3d
	ret c                                            ; $5357: $d8

	rst FarCall                                          ; $5358: $f7
	ld e, e                                          ; $5359: $5b
	inc sp                                           ; $535a: $33
	dec de                                           ; $535b: $1b
	inc de                                           ; $535c: $13
	inc de                                           ; $535d: $13
	db $d3                                           ; $535e: $d3
	inc sp                                           ; $535f: $33
	dec de                                           ; $5360: $1b
	or a                                             ; $5361: $b7
	ld d, h                                          ; $5362: $54
	add c                                            ; $5363: $81
	ld d, h                                          ; $5364: $54
	nop                                              ; $5365: $00
	and h                                            ; $5366: $a4
	jr c, @-$58                                      ; $5367: $38 $a6

	or e                                             ; $5369: $b3
	dec hl                                           ; $536a: $2b
	ld a, [hl]                                       ; $536b: $7e
	dec hl                                           ; $536c: $2b
	rst $38                                          ; $536d: $ff
	ld a, e                                          ; $536e: $7b

jr_04c_536f:
	sbc $7f                                          ; $536f: $de $7f
	sub c                                            ; $5371: $91
	ldh [$60], a                                     ; $5372: $e0 $60
	or b                                             ; $5374: $b0
	ld c, $17                                        ; $5375: $0e $17
	dec bc                                           ; $5377: $0b
	ld bc, $c0fe                                     ; $5378: $01 $fe $c0
	ldh a, [$78]                                     ; $537b: $f0 $78
	db $fc                                           ; $537d: $fc
	xor $f7                                          ; $537e: $ee $f7
	ld l, d                                          ; $5380: $6a
	ld [$809c], sp                                   ; $5381: $08 $9c $80
	ld b, b                                          ; $5384: $40
	or e                                             ; $5385: $b3
	ei                                               ; $5386: $fb
	sbc l                                            ; $5387: $9d
	ret nz                                           ; $5388: $c0

	ldh [$fd], a                                     ; $5389: $e0 $fd
	sbc h                                            ; $538b: $9c
	inc b                                            ; $538c: $04
	ld b, $1a                                        ; $538d: $06 $1a
	ld a, d                                          ; $538f: $7a
	ld h, b                                          ; $5390: $60
	db $fd                                           ; $5391: $fd
	sbc l                                            ; $5392: $9d
	dec b                                            ; $5393: $05
	ld [bc], a                                       ; $5394: $02
	ld l, d                                          ; $5395: $6a
	sbc c                                            ; $5396: $99
	sbc [hl]                                         ; $5397: $9e
	add b                                            ; $5398: $80
	rst SubAFromBC                                          ; $5399: $e7
	sbc [hl]                                         ; $539a: $9e
	inc bc                                           ; $539b: $03
	ld l, d                                          ; $539c: $6a
	push de                                          ; $539d: $d5
	sbc h                                            ; $539e: $9c
	rlca                                             ; $539f: $07
	inc e                                            ; $53a0: $1c

jr_04c_53a1:
	jr nc, jr_04c_53a1                               ; $53a1: $30 $fe

	adc e                                            ; $53a3: $8b
	ld [hl+], a                                      ; $53a4: $22
	ld [de], a                                       ; $53a5: $12
	adc [hl]                                         ; $53a6: $8e
	ld c, $06                                        ; $53a7: $0e $06
	ld [de], a                                       ; $53a9: $12
	dec de                                           ; $53aa: $1b
	inc de                                           ; $53ab: $13
	jp nz, $3cf6                                     ; $53ac: $c2 $f6 $3c

	sbc h                                            ; $53af: $9c
	inc e                                            ; $53b0: $1c
	ld e, [hl]                                       ; $53b1: $5e
	rra                                              ; $53b2: $1f
	ccf                                              ; $53b3: $3f
	ld [hl], l                                       ; $53b4: $75
	ld [bc], a                                       ; $53b5: $02
	ld d, b                                          ; $53b6: $50
	nop                                              ; $53b7: $00
	ld [hl], a                                       ; $53b8: $77
	cp $d9                                           ; $53b9: $fe $d9
	and b                                            ; $53bb: $a0
	sbc [hl]                                         ; $53bc: $9e
	sub $de                                          ; $53bd: $d6 $de
	add d                                            ; $53bf: $82
	db $dd                                           ; $53c0: $dd
	ld [bc], a                                       ; $53c1: $02
	reti                                             ; $53c2: $d9


	add d                                            ; $53c3: $82
	ld sp, hl                                        ; $53c4: $f9
	reti                                             ; $53c5: $d9


	ld [$7776], sp                                   ; $53c6: $08 $76 $77
	sbc e                                            ; $53c9: $9b
	ld hl, $2122                                     ; $53ca: $21 $22 $21
	ld [hl+], a                                      ; $53cd: $22
	reti                                             ; $53ce: $d9


	jr nc, jr_04c_536f                               ; $53cf: $30 $9e

	push de                                          ; $53d1: $d5
	db $dd                                           ; $53d2: $dd
	ld b, b                                          ; $53d3: $40
	sbc h                                            ; $53d4: $9c
	jp z, $ca55                                      ; $53d5: $ca $55 $ca

	reti                                             ; $53d8: $d9


	ld h, b                                          ; $53d9: $60
	sbc l                                            ; $53da: $9d
	ld b, e                                          ; $53db: $43
	inc bc                                           ; $53dc: $03
	db $db                                           ; $53dd: $db
	ld b, e                                          ; $53de: $43
	sbc l                                            ; $53df: $9d
	xor a                                            ; $53e0: $af
	rst AddAOntoHL                                          ; $53e1: $ef
	db $db                                           ; $53e2: $db
	xor a                                            ; $53e3: $af
	db $dd                                           ; $53e4: $dd
	db $e3                                           ; $53e5: $e3
	rst SubAFromDE                                          ; $53e6: $df
	di                                               ; $53e7: $f3
	sbc [hl]                                         ; $53e8: $9e
	ldh a, [c]                                       ; $53e9: $f2
	db $db                                           ; $53ea: $db
	ldh a, [$80]                                     ; $53eb: $f0 $80
	db $fc                                           ; $53ed: $fc
	pop af                                           ; $53ee: $f1
	di                                               ; $53ef: $f3
	ld c, h                                          ; $53f0: $4c
	rst $38                                          ; $53f1: $ff
	ld l, h                                          ; $53f2: $6c
	inc l                                            ; $53f3: $2c
	inc a                                            ; $53f4: $3c
	rst $38                                          ; $53f5: $ff
	call z, $b348                                    ; $53f6: $cc $48 $b3
	nop                                              ; $53f9: $00
	sub e                                            ; $53fa: $93
	db $d3                                           ; $53fb: $d3
	jp $3300                                         ; $53fc: $c3 $00 $33


	or a                                             ; $53ff: $b7
	ret z                                            ; $5400: $c8

	rst $38                                          ; $5401: $ff
	db $dd                                           ; $5402: $dd
	adc b                                            ; $5403: $88
	adc b                                            ; $5404: $88
	rst $38                                          ; $5405: $ff
	ld hl, sp-$06                                    ; $5406: $f8 $fa
	scf                                              ; $5408: $37
	nop                                              ; $5409: $00
	ld [hl+], a                                      ; $540a: $22
	ld [hl], a                                       ; $540b: $77
	add b                                            ; $540c: $80
	ld [hl], a                                       ; $540d: $77
	nop                                              ; $540e: $00
	rlca                                             ; $540f: $07
	dec b                                            ; $5410: $05
	sub c                                            ; $5411: $91
	rst $38                                          ; $5412: $ff
	push af                                          ; $5413: $f5
	add c                                            ; $5414: $81
	sub c                                            ; $5415: $91
	rst $38                                          ; $5416: $ff
	rst JumpTable                                          ; $5417: $c7
	add d                                            ; $5418: $82
	ld l, [hl]                                       ; $5419: $6e
	nop                                              ; $541a: $00
	ld a, [bc]                                       ; $541b: $0a
	ld a, [hl]                                       ; $541c: $7e
	ld l, [hl]                                       ; $541d: $6e
	nop                                              ; $541e: $00
	jr c, jr_04c_549e                                ; $541f: $38 $7d

	ld [bc], a                                       ; $5421: $02
	cp $00                                           ; $5422: $fe $00
	add b                                            ; $5424: $80
	nop                                              ; $5425: $00
	rst $38                                          ; $5426: $ff
	nop                                              ; $5427: $00
	ld de, $01ff                                     ; $5428: $11 $ff $01
	rst $38                                          ; $542b: $ff
	sbc d                                            ; $542c: $9a
	ld a, a                                          ; $542d: $7f
	rst $38                                          ; $542e: $ff
	nop                                              ; $542f: $00
	rst $38                                          ; $5430: $ff
	xor $fd                                          ; $5431: $ee $fd
	adc e                                            ; $5433: $8b
	ld hl, $03f0                                     ; $5434: $21 $f0 $03
	nop                                              ; $5437: $00
	ld de, $1191                                     ; $5438: $11 $91 $11
	sub c                                            ; $543b: $91
	pop af                                           ; $543c: $f1
	rrca                                             ; $543d: $0f
	di                                               ; $543e: $f3
	pop af                                           ; $543f: $f1
	dec sp                                           ; $5440: $3b
	cp e                                             ; $5441: $bb
	ld a, [hl-]                                      ; $5442: $3a
	cp d                                             ; $5443: $ba
	ld a, d                                          ; $5444: $7a
	di                                               ; $5445: $f3
	ld a, [hl-]                                      ; $5446: $3a
	xor a                                            ; $5447: $af
	ld a, e                                          ; $5448: $7b
	ldh [c], a                                       ; $5449: $e2
	sbc l                                            ; $544a: $9d
	ld a, a                                          ; $544b: $7f
	cp a                                             ; $544c: $bf
	ld a, b                                          ; $544d: $78
	ret z                                            ; $544e: $c8

	sbc $fe                                          ; $544f: $de $fe
	sbc e                                            ; $5451: $9b
	rst $38                                          ; $5452: $ff
	cp [hl]                                          ; $5453: $be
	cp a                                             ; $5454: $bf
	rst $38                                          ; $5455: $ff
	ld h, h                                          ; $5456: $64
	cp b                                             ; $5457: $b8
	sub c                                            ; $5458: $91
	rst $38                                          ; $5459: $ff
	ld l, e                                          ; $545a: $6b
	ld [$f3f5], a                                    ; $545b: $ea $f5 $f3
	ld sp, hl                                        ; $545e: $f9
	ldh a, [rIE]                                     ; $545f: $f0 $ff
	rst $38                                          ; $5461: $ff
	ldh a, [$fd]                                     ; $5462: $f0 $fd
	xor $ef                                          ; $5464: $ee $ef
	rst SubAFromBC                                          ; $5466: $e7
	sbc $ef                                          ; $5467: $de $ef
	sub h                                            ; $5469: $94
	ld e, h                                          ; $546a: $5c
	inc c                                            ; $546b: $0c
	ret nz                                           ; $546c: $c0

	ret nz                                           ; $546d: $c0

	add c                                            ; $546e: $81
	adc $e0                                          ; $546f: $ce $e0
	ld a, a                                          ; $5471: $7f
	and e                                            ; $5472: $a3
	di                                               ; $5473: $f3
	ccf                                              ; $5474: $3f
	ld [hl], e                                       ; $5475: $73
	call c, $ac94                                    ; $5476: $dc $94 $ac
	ld a, [hl]                                       ; $5479: $7e
	rrca                                             ; $547a: $0f
	sub a                                            ; $547b: $97
	sub h                                            ; $547c: $94
	rlca                                             ; $547d: $07
	dec bc                                           ; $547e: $0b
	ld bc, $8040                                     ; $547f: $01 $40 $80
	ldh a, [$de]                                     ; $5482: $f0 $de
	ld hl, sp-$6b                                    ; $5484: $f8 $95
	db $f4                                           ; $5486: $f4
	cp $00                                           ; $5487: $fe $00
	ld bc, $878f                                     ; $5489: $01 $8f $87
	ld b, h                                          ; $548c: $44
	rst $38                                          ; $548d: $ff
	ldh [c], a                                       ; $548e: $e2
	add c                                            ; $548f: $81
	ld l, [hl]                                       ; $5490: $6e
	add $80                                          ; $5491: $c6 $80
	dec e                                            ; $5493: $1d
	ld a, [hl]                                       ; $5494: $7e
	ld [hl], b                                       ; $5495: $70
	jp nc, $fadf                                     ; $5496: $d2 $df $fa

	cp b                                             ; $5499: $b8
	db $fc                                           ; $549a: $fc
	rst SubAFromDE                                          ; $549b: $df
	ld d, h                                          ; $549c: $54
	nop                                              ; $549d: $00

jr_04c_549e:
	jr nz, jr_04c_54c0                               ; $549e: $20 $20

	inc b                                            ; $54a0: $04
	ld b, h                                          ; $54a1: $44
	ld bc, $8b01                                     ; $54a2: $01 $01 $8b
	ld h, c                                          ; $54a5: $61
	sub d                                            ; $54a6: $92
	push de                                          ; $54a7: $d5
	ld e, e                                          ; $54a8: $5b
	sub a                                            ; $54a9: $97
	sbc [hl]                                         ; $54aa: $9e
	ld a, $68                                        ; $54ab: $3e $68
	ccf                                              ; $54ad: $3f
	rrca                                             ; $54ae: $0f
	ld c, e                                          ; $54af: $4b
	ld c, a                                          ; $54b0: $4f
	res 0, e                                         ; $54b1: $cb $83
	adc a                                            ; $54b3: $8f
	ld c, a                                          ; $54b4: $4f
	ld c, a                                          ; $54b5: $4f
	cp a                                             ; $54b6: $bf
	ldh a, [$e0]                                     ; $54b7: $f0 $e0
	and b                                            ; $54b9: $a0
	ldh [$e0], a                                     ; $54ba: $e0 $e0
	ld l, c                                          ; $54bc: $69
	cp l                                             ; $54bd: $bd
	cp l                                             ; $54be: $bd
	pop hl                                           ; $54bf: $e1

jr_04c_54c0:
	add c                                            ; $54c0: $81
	add c                                            ; $54c1: $81
	pop bc                                           ; $54c2: $c1
	pop hl                                           ; $54c3: $e1
	ldh [$e0], a                                     ; $54c4: $e0 $e0
	ldh a, [c]                                       ; $54c6: $f2
	di                                               ; $54c7: $f3
	add d                                            ; $54c8: $82
	add d                                            ; $54c9: $82
	add e                                            ; $54ca: $83
	rlca                                             ; $54cb: $07
	rst JumpTable                                          ; $54cc: $c7
	rst SubAFromBC                                          ; $54cd: $e7
	rst $38                                          ; $54ce: $ff
	jp c, $9586                                      ; $54cf: $da $86 $95

	ld a, c                                          ; $54d2: $79
	sbc e                                            ; $54d3: $9b
	ld c, b                                          ; $54d4: $48
	db $fc                                           ; $54d5: $fc
	ld hl, sp-$30                                    ; $54d6: $f8 $d0
	ldh a, [$b0]                                     ; $54d8: $f0 $b0
	rst $38                                          ; $54da: $ff
	ld a, b                                          ; $54db: $78
	call c, $9418                                    ; $54dc: $dc $18 $94
	ld e, b                                          ; $54df: $58
	di                                               ; $54e0: $f3
	ld hl, sp+$27                                    ; $54e1: $f8 $27
	daa                                              ; $54e3: $27
	cpl                                              ; $54e4: $2f
	inc hl                                           ; $54e5: $23
	inc h                                            ; $54e6: $24
	ld l, e                                          ; $54e7: $6b
	rst $38                                          ; $54e8: $ff
	scf                                              ; $54e9: $37
	call c, $8e30                                    ; $54ea: $dc $30 $8e
	inc [hl]                                         ; $54ed: $34
	db $fc                                           ; $54ee: $fc
	ld d, c                                          ; $54ef: $51
	call c, Call_04c_7a5c                            ; $54f0: $dc $5c $7a
	ld e, [hl]                                       ; $54f3: $5e
	ld [hl], d                                       ; $54f4: $72
	ld e, [hl]                                       ; $54f5: $5e
	rst $38                                          ; $54f6: $ff
	xor $63                                          ; $54f7: $ee $63
	db $e3                                           ; $54f9: $e3
	rst JumpTable                                          ; $54fa: $c7
	rst SubAFromBC                                          ; $54fb: $e7
	rst GetHLinHL                                          ; $54fc: $cf
	rst $38                                          ; $54fd: $ff
	db $db                                           ; $54fe: $db
	ld b, e                                          ; $54ff: $43
	sbc l                                            ; $5500: $9d
	inc de                                           ; $5501: $13
	db $eb                                           ; $5502: $eb
	db $db                                           ; $5503: $db
	xor a                                            ; $5504: $af
	sbc l                                            ; $5505: $9d
	rst $38                                          ; $5506: $ff
	rla                                              ; $5507: $17
	jp c, $7ff2                                      ; $5508: $da $f2 $7f

	rla                                              ; $550b: $17
	db $db                                           ; $550c: $db
	pop af                                           ; $550d: $f1
	adc d                                            ; $550e: $8a
	ldh a, [rAUD2LOW]                                ; $550f: $f0 $18
	jr @+$21                                         ; $5511: $18 $1f

	ld e, h                                          ; $5513: $5c
	ld e, b                                          ; $5514: $58
	ld e, b                                          ; $5515: $58
	ret c                                            ; $5516: $d8

	ret z                                            ; $5517: $c8

	rst SubAFromBC                                          ; $5518: $e7
	rst SubAFromBC                                          ; $5519: $e7
	ldh [$a3], a                                     ; $551a: $e0 $a3
	and a                                            ; $551c: $a7
	and a                                            ; $551d: $a7
	daa                                              ; $551e: $27
	scf                                              ; $551f: $37
	ei                                               ; $5520: $fb
	adc [hl]                                         ; $5521: $8e
	ld hl, sp-$58                                    ; $5522: $f8 $a8
	db $dd                                           ; $5524: $dd
	adc b                                            ; $5525: $88
	sbc e                                            ; $5526: $9b
	inc b                                            ; $5527: $04
	ld [hl], c                                       ; $5528: $71
	rlca                                             ; $5529: $07
	ld d, a                                          ; $552a: $57
	db $dd                                           ; $552b: $dd
	ld [hl], a                                       ; $552c: $77
	adc c                                            ; $552d: $89
	add a                                            ; $552e: $87
	add b                                            ; $552f: $80
	adc c                                            ; $5530: $89
	jp $8089                                         ; $5531: $c3 $89 $80


	reti                                             ; $5534: $d9


	ret z                                            ; $5535: $c8

	ld a, b                                          ; $5536: $78
	ld a, a                                          ; $5537: $7f
	halt                                             ; $5538: $76
	inc a                                            ; $5539: $3c
	halt                                             ; $553a: $76
	ld a, a                                          ; $553b: $7f
	ld h, $37                                        ; $553c: $26 $37
	nop                                              ; $553e: $00
	ld de, $f100                                     ; $553f: $11 $00 $f1
	jr nz, @+$33                                     ; $5542: $20 $31

	ld a, d                                          ; $5544: $7a
	ret nz                                           ; $5545: $c0

	sbc d                                            ; $5546: $9a
	xor $ff                                          ; $5547: $ee $ff
	ld c, $df                                        ; $5549: $0e $df
	adc $7a                                          ; $554b: $ce $7a
	ret nz                                           ; $554d: $c0

	sub e                                            ; $554e: $93
	jr jr_04c_555b                                   ; $554f: $18 $0a

	ld d, $06                                        ; $5551: $16 $06
	stop                                             ; $5553: $10 $00
	db $10                                           ; $5555: $10
	pop af                                           ; $5556: $f1
	jp hl                                            ; $5557: $e9


	ei                                               ; $5558: $fb
	rst AddAOntoHL                                          ; $5559: $ef
	rst $38                                          ; $555a: $ff

jr_04c_555b:
	ld a, e                                          ; $555b: $7b
	cp $98                                           ; $555c: $fe $98
	inc sp                                           ; $555e: $33
	cp d                                             ; $555f: $ba
	dec sp                                           ; $5560: $3b
	cp d                                             ; $5561: $ba
	ld a, [hl-]                                      ; $5562: $3a
	cp e                                             ; $5563: $bb
	dec sp                                           ; $5564: $3b
	ld a, d                                          ; $5565: $7a
	jp nz, $fe73                                     ; $5566: $c2 $73 $fe

	sbc b                                            ; $5569: $98
	rst $38                                          ; $556a: $ff
	sbc $f6                                          ; $556b: $de $f6
	ld a, h                                          ; $556d: $7c
	sbc $b7                                          ; $556e: $de $b7
	cp l                                             ; $5570: $bd
	rst SubAFromHL                                          ; $5571: $d7
	rst $38                                          ; $5572: $ff
	db $dd                                           ; $5573: $dd
	ldh [$9e], a                                     ; $5574: $e0 $9e
	ld h, b                                          ; $5576: $60
	sbc $20                                          ; $5577: $de $20
	reti                                             ; $5579: $d9


	rst AddAOntoHL                                          ; $557a: $ef
	sbc l                                            ; $557b: $9d
	ld a, a                                          ; $557c: $7f
	daa                                              ; $557d: $27
	sbc $23                                          ; $557e: $de $23
	sbc $22                                          ; $5580: $de $22
	sbc [hl]                                         ; $5582: $9e
	rst $38                                          ; $5583: $ff
	db $dd                                           ; $5584: $dd
	cp a                                             ; $5585: $bf
	sbc $be                                          ; $5586: $de $be
	sbc b                                            ; $5588: $98
	ld b, b                                          ; $5589: $40
	ld b, d                                          ; $558a: $42
	rlca                                             ; $558b: $07
	inc b                                            ; $558c: $04
	nop                                              ; $558d: $00
	inc a                                            ; $558e: $3c
	inc a                                            ; $558f: $3c
	ret c                                            ; $5590: $d8

	rst $38                                          ; $5591: $ff
	add h                                            ; $5592: $84
	ld h, b                                          ; $5593: $60
	add hl, hl                                       ; $5594: $29
	add hl, bc                                       ; $5595: $09
	inc e                                            ; $5596: $1c
	inc [hl]                                         ; $5597: $34
	ld d, [hl]                                       ; $5598: $56
	ld a, h                                          ; $5599: $7c
	cp $9f                                           ; $559a: $fe $9f
	rst SubAFromHL                                          ; $559c: $d7
	rst $38                                          ; $559d: $ff
	rst AddAOntoHL                                          ; $559e: $ef
	ei                                               ; $559f: $fb

Call_04c_55a0:
	ld sp, hl                                        ; $55a0: $f9
	rst $38                                          ; $55a1: $ff
	rst $38                                          ; $55a2: $ff
	ld a, $ba                                        ; $55a3: $3e $ba
	xor h                                            ; $55a5: $ac
	inc b                                            ; $55a6: $04
	adc c                                            ; $55a7: $89
	dec de                                           ; $55a8: $1b
	sub [hl]                                         ; $55a9: $96
	ccf                                              ; $55aa: $3f
	jp $d7c7                                         ; $55ab: $c3 $c7 $d7


	ld [hl], a                                       ; $55ae: $77
	and c                                            ; $55af: $a1
	add d                                            ; $55b0: $82
	rst $38                                          ; $55b1: $ff
	jr jr_04c_55f8                                   ; $55b2: $18 $44

	ld e, b                                          ; $55b4: $58
	add d                                            ; $55b5: $82
	db $10                                           ; $55b6: $10
	inc c                                            ; $55b7: $0c
	sub l                                            ; $55b8: $95
	db $f4                                           ; $55b9: $f4
	ld e, a                                          ; $55ba: $5f
	ld a, a                                          ; $55bb: $7f
	rst GetHLinHL                                          ; $55bc: $cf
	rst SubAFromDE                                          ; $55bd: $df
	sbc a                                            ; $55be: $9f
	rra                                              ; $55bf: $1f
	rst SubAFromDE                                          ; $55c0: $df
	rst $38                                          ; $55c1: $ff
	and c                                            ; $55c2: $a1
	or b                                             ; $55c3: $b0
	or c                                             ; $55c4: $b1
	inc l                                            ; $55c5: $2c
	and [hl]                                         ; $55c6: $a6
	ld sp, $a328                                     ; $55c7: $31 $28 $a3
	pop af                                           ; $55ca: $f1
	pop af                                           ; $55cb: $f1
	ld sp, hl                                        ; $55cc: $f9
	db $fc                                           ; $55cd: $fc
	db $dd                                           ; $55ce: $dd
	rst $38                                          ; $55cf: $ff
	add a                                            ; $55d0: $87
	rst SubAFromHL                                          ; $55d1: $d7
	or a                                             ; $55d2: $b7
	rst SubAFromDE                                          ; $55d3: $df
	rrca                                             ; $55d4: $0f
	ld c, a                                          ; $55d5: $4f
	cp a                                             ; $55d6: $bf
	rst $38                                          ; $55d7: $ff
	rst AddAOntoHL                                          ; $55d8: $ef
	and [hl]                                         ; $55d9: $a6
	add $a6                                          ; $55da: $c6 $a6
	or $b6                                           ; $55dc: $f6 $b6
	add $c6                                          ; $55de: $c6 $c6
	rst $38                                          ; $55e0: $ff
	ld hl, sp-$08                                    ; $55e1: $f8 $f8
	rst $38                                          ; $55e3: $ff
	rst $38                                          ; $55e4: $ff
	db $f4                                           ; $55e5: $f4
	cp $f4                                           ; $55e6: $fe $f4
	rst $38                                          ; $55e8: $ff
	sbc $18                                          ; $55e9: $de $18
	add l                                            ; $55eb: $85
	add hl, de                                       ; $55ec: $19
	dec de                                           ; $55ed: $1b
	add hl, de                                       ; $55ee: $19

jr_04c_55ef:
	dec de                                           ; $55ef: $1b
	rst $38                                          ; $55f0: $ff
	inc l                                            ; $55f1: $2c
	ld l, a                                          ; $55f2: $6f
	inc l                                            ; $55f3: $2c
	jr z, jr_04c_5662                                ; $55f4: $28 $6c

	xor b                                            ; $55f6: $a8
	ld l, d                                          ; $55f7: $6a

jr_04c_55f8:
	rst $38                                          ; $55f8: $ff
	inc sp                                           ; $55f9: $33
	jr nc, jr_04c_55ef                               ; $55fa: $30 $f3

	rst FarCall                                          ; $55fc: $f7
	di                                               ; $55fd: $f3
	ld [hl], a                                       ; $55fe: $77
	rst FarCall                                          ; $55ff: $f7
	rst $38                                          ; $5600: $ff
	ld b, [hl]                                       ; $5601: $46
	ld h, e                                          ; $5602: $63
	ld a, e                                          ; $5603: $7b
	pop bc                                           ; $5604: $c1
	ret nz                                           ; $5605: $c0

	ld a, e                                          ; $5606: $7b
	ret c                                            ; $5607: $d8

	reti                                             ; $5608: $d9


	rst $38                                          ; $5609: $ff
	rst SubAFromDE                                          ; $560a: $df
	ld b, e                                          ; $560b: $43
	sbc [hl]                                         ; $560c: $9e
	ld h, e                                          ; $560d: $63
	sbc $43                                          ; $560e: $de $43
	ld a, l                                          ; $5610: $7d
	ld a, e                                          ; $5611: $7b
	db $db                                           ; $5612: $db
	xor a                                            ; $5613: $af
	ld a, l                                          ; $5614: $7d
	ld a, e                                          ; $5615: $7b
	ld a, d                                          ; $5616: $7a
	push bc                                          ; $5617: $c5
	call c, Call_04c_7af3                            ; $5618: $dc $f3 $7a
	push bc                                          ; $561b: $c5
	call c, $9af0                                    ; $561c: $dc $f0 $9a
	ret z                                            ; $561f: $c8

	add sp, -$32                                     ; $5620: $e8 $ce
	rst $38                                          ; $5622: $ff
	ld hl, sp-$22                                    ; $5623: $f8 $de
	ret z                                            ; $5625: $c8

	sbc d                                            ; $5626: $9a
	scf                                              ; $5627: $37
	rla                                              ; $5628: $17
	ld sp, $0700                                     ; $5629: $31 $00 $07
	sbc $37                                          ; $562c: $de $37
	sbc $99                                          ; $562e: $de $99
	rst SubAFromDE                                          ; $5630: $df
	sbc h                                            ; $5631: $9c
	sbc h                                            ; $5632: $9c
	call $88f8                                       ; $5633: $cd $f8 $88
	sbc $66                                          ; $5636: $de $66
	rst SubAFromDE                                          ; $5638: $df
	ld h, e                                          ; $5639: $63
	add b                                            ; $563a: $80
	ld [hl-], a                                      ; $563b: $32
	rlca                                             ; $563c: $07
	ld [hl], a                                       ; $563d: $77
	ret                                              ; $563e: $c9


	set 1, b                                         ; $563f: $cb $c8
	ret                                              ; $5641: $c9


	ldh [$d9], a                                     ; $5642: $e0 $d9
	add b                                            ; $5644: $80
	adc c                                            ; $5645: $89
	ld [hl], $34                                     ; $5646: $36 $34
	scf                                              ; $5648: $37
	ld [hl], $3f                                     ; $5649: $36 $3f
	ld h, $7f                                        ; $564b: $26 $7f
	halt                                             ; $564d: $76
	ld b, b                                          ; $564e: $40
	ld sp, $1132                                     ; $564f: $31 $32 $11
	db $10                                           ; $5652: $10
	ld de, $1011                                     ; $5653: $11 $11 $10
	cp a                                             ; $5656: $bf

jr_04c_5657:
	adc $cd                                          ; $5657: $ce $cd
	xor $9a                                          ; $5659: $ee $9a
	rst AddAOntoHL                                          ; $565b: $ef
	xor $ee                                          ; $565c: $ee $ee
	rst AddAOntoHL                                          ; $565e: $ef
	nop                                              ; $565f: $00
	db $dd                                           ; $5660: $dd

jr_04c_5661:
	db $10                                           ; $5661: $10

jr_04c_5662:
	sbc e                                            ; $5662: $9b
	jr jr_04c_5680                                   ; $5663: $18 $1b

	inc de                                           ; $5665: $13
	rst $38                                          ; $5666: $ff
	db $dd                                           ; $5667: $dd
	rst AddAOntoHL                                          ; $5668: $ef
	sbc h                                            ; $5669: $9c
	rst SubAFromBC                                          ; $566a: $e7
	db $e4                                           ; $566b: $e4
	db $ec                                           ; $566c: $ec
	db $dd                                           ; $566d: $dd
	rst $38                                          ; $566e: $ff
	sbc $5f                                          ; $566f: $de $5f
	sbc [hl]                                         ; $5671: $9e
	ld c, a                                          ; $5672: $4f
	ret                                              ; $5673: $c9


	rst $38                                          ; $5674: $ff
	db $db                                           ; $5675: $db
	jr nz, jr_04c_5657                               ; $5676: $20 $df

	and b                                            ; $5678: $a0
	reti                                             ; $5679: $d9


	rst AddAOntoHL                                          ; $567a: $ef
	sbc $9c                                          ; $567b: $de $9c
	rst SubAFromDE                                          ; $567d: $df
	cp h                                             ; $567e: $bc
	sbc h                                            ; $567f: $9c

jr_04c_5680:
	adc l                                            ; $5680: $8d
	inc l                                            ; $5681: $2c
	jr z, jr_04c_5661                                ; $5682: $28 $dd

	cp [hl]                                          ; $5684: $be
	sbc e                                            ; $5685: $9b
	cp $ae                                           ; $5686: $fe $ae
	adc [hl]                                         ; $5688: $8e
	sbc h                                            ; $5689: $9c
	db $db                                           ; $568a: $db
	rst $38                                          ; $568b: $ff
	sbc l                                            ; $568c: $9d
	rst FarCall                                          ; $568d: $f7
	inc bc                                           ; $568e: $03
	call nc, $deff                                   ; $568f: $d4 $ff $de
	db $e3                                           ; $5692: $e3
	db $db                                           ; $5693: $db
	rst $38                                          ; $5694: $ff
	sbc c                                            ; $5695: $99
	ei                                               ; $5696: $fb
	di                                               ; $5697: $f3
	rst JumpTable                                          ; $5698: $c7
	ldh [$e5], a                                     ; $5699: $e0 $e5
	and $de                                          ; $569b: $e6 $de
	db $e4                                           ; $569d: $e4
	ld [hl], e                                       ; $569e: $73
	sbc b                                            ; $569f: $98
	db $dd                                           ; $56a0: $dd
	rst $38                                          ; $56a1: $ff
	sub a                                            ; $56a2: $97
	cp c                                             ; $56a3: $b9
	pop de                                           ; $56a4: $d1
	dec d                                            ; $56a5: $15
	dec a                                            ; $56a6: $3d
	db $fd                                           ; $56a7: $fd
	db $fd                                           ; $56a8: $fd
	ld a, a                                          ; $56a9: $7f
	ccf                                              ; $56aa: $3f
	sbc $f7                                          ; $56ab: $de $f7
	sbc $ff                                          ; $56ad: $de $ff
	rst SubAFromDE                                          ; $56af: $df
	db $fd                                           ; $56b0: $fd
	sub [hl]                                         ; $56b1: $96
	ld h, c                                          ; $56b2: $61
	add sp, -$15                                     ; $56b3: $e8 $eb
	rst $38                                          ; $56b5: $ff
	ld bc, $9149                                     ; $56b6: $01 $49 $91
	sub l                                            ; $56b9: $95
	rst $38                                          ; $56ba: $ff
	ld [hl], a                                       ; $56bb: $77
	pop af                                           ; $56bc: $f1
	sub e                                            ; $56bd: $93
	or a                                             ; $56be: $b7
	ld l, a                                          ; $56bf: $6f
	ld l, e                                          ; $56c0: $6b
	sub [hl]                                         ; $56c1: $96
	add h                                            ; $56c2: $84
	and [hl]                                         ; $56c3: $a6
	rst SubAFromDE                                          ; $56c4: $df
	sub [hl]                                         ; $56c5: $96
	add [hl]                                         ; $56c6: $86
	ld b, $86                                        ; $56c7: $06 $86
	and $da                                          ; $56c9: $e6 $da
	rst $38                                          ; $56cb: $ff
	sub l                                            ; $56cc: $95
	db $10                                           ; $56cd: $10
	reti                                             ; $56ce: $d9


	sbc l                                            ; $56cf: $9d
	rst $38                                          ; $56d0: $ff
	sbc l                                            ; $56d1: $9d
	add hl, de                                       ; $56d2: $19
	sbc l                                            ; $56d3: $9d
	jr jr_04c_56e6                                   ; $56d4: $18 $10

	db $fd                                           ; $56d6: $fd
	ld a, e                                          ; $56d7: $7b
	or d                                             ; $56d8: $b2
	sbc $ff                                          ; $56d9: $de $ff
	sub [hl]                                         ; $56db: $96
	halt                                             ; $56dc: $76
	ld [hl-], a                                      ; $56dd: $32
	or a                                             ; $56de: $b7
	cp $bf                                           ; $56df: $fe $bf
	cp [hl]                                          ; $56e1: $be
	ld [hl-], a                                      ; $56e2: $32
	or b                                             ; $56e3: $b0
	ld [hl], $77                                     ; $56e4: $36 $77

jr_04c_56e6:
	ret nc                                           ; $56e6: $d0

	sbc $ff                                          ; $56e7: $de $ff
	sbc l                                            ; $56e9: $9d
	ret z                                            ; $56ea: $c8

	db $dd                                           ; $56eb: $dd
	ld a, e                                          ; $56ec: $7b
	cp d                                             ; $56ed: $ba
	ld a, c                                          ; $56ee: $79
	rst FarCall                                          ; $56ef: $f7
	reti                                             ; $56f0: $d9


	rst $38                                          ; $56f1: $ff
	sbc $03                                          ; $56f2: $de $03
	sbc [hl]                                         ; $56f4: $9e
	ld [$c0de], sp                                   ; $56f5: $08 $de $c0
	sbc [hl]                                         ; $56f8: $9e
	adc b                                            ; $56f9: $88
	sbc $ef                                          ; $56fa: $de $ef
	sbc [hl]                                         ; $56fc: $9e
	call z, $0cde                                    ; $56fd: $cc $de $0c
	sbc [hl]                                         ; $5700: $9e
	ld c, h                                          ; $5701: $4c
	sbc $f3                                          ; $5702: $de $f3
	sbc d                                            ; $5704: $9a
	inc bc                                           ; $5705: $03
	ld bc, $c6c6                                     ; $5706: $01 $c6 $c6
	inc bc                                           ; $5709: $03
	sbc $f0                                          ; $570a: $de $f0
	rst SubAFromDE                                          ; $570c: $df
	inc bc                                           ; $570d: $03
	rst SubAFromDE                                          ; $570e: $df
	push bc                                          ; $570f: $c5
	add b                                            ; $5710: $80
	inc bc                                           ; $5711: $03
	ret z                                            ; $5712: $c8

	ret z                                            ; $5713: $c8

	db $ec                                           ; $5714: $ec
	nop                                              ; $5715: $00
	ld a, a                                          ; $5716: $7f
	ld a, d                                          ; $5717: $7a
	ld a, [hl]                                       ; $5718: $7e
	db $10                                           ; $5719: $10
	scf                                              ; $571a: $37
	scf                                              ; $571b: $37
	inc de                                           ; $571c: $13
	nop                                              ; $571d: $00
	ld a, a                                          ; $571e: $7f
	dec c                                            ; $571f: $0d
	dec c                                            ; $5720: $0d
	db $10                                           ; $5721: $10
	adc b                                            ; $5722: $88

jr_04c_5723:
	adc b                                            ; $5723: $88
	call c, $f000                                    ; $5724: $dc $00 $f0
	dec bc                                           ; $5727: $0b
	ld c, c                                          ; $5728: $49
	ld a, [bc]                                       ; $5729: $0a
	ld [hl], a                                       ; $572a: $77
	ld [hl], a                                       ; $572b: $77
	inc hl                                           ; $572c: $23
	nop                                              ; $572d: $00
	db $fd                                           ; $572e: $fd
	or $98                                           ; $572f: $f6 $98
	db $f4                                           ; $5731: $f4
	rrca                                             ; $5732: $0f
	add b                                            ; $5733: $80
	adc b                                            ; $5734: $88
	reti                                             ; $5735: $d9


	nop                                              ; $5736: $00
	db $10                                           ; $5737: $10
	sbc $d8                                          ; $5738: $de $d8
	sbc d                                            ; $573a: $9a
	ld a, a                                          ; $573b: $7f
	ld [hl], a                                       ; $573c: $77
	ld h, $00                                        ; $573d: $26 $00
	sbc $de                                          ; $573f: $de $de
	ld d, $7d                                        ; $5741: $16 $7d
	add c                                            ; $5743: $81
	add b                                            ; $5744: $80
	inc sp                                           ; $5745: $33
	nop                                              ; $5746: $00
	adc b                                            ; $5747: $88
	inc hl                                           ; $5748: $23
	ld bc, $ee80                                     ; $5749: $01 $80 $ee
	rst $38                                          ; $574c: $ff
	call z, $ff00                                    ; $574d: $cc $00 $ff
	call nc, $f7f6                                   ; $5750: $d4 $f6 $f7
	inc de                                           ; $5753: $13
	inc de                                           ; $5754: $13
	ld a, a                                          ; $5755: $7f
	nop                                              ; $5756: $00
	add b                                            ; $5757: $80
	cp e                                             ; $5758: $bb
	ld sp, $ec50                                     ; $5759: $31 $50 $ec
	db $ec                                           ; $575c: $ec
	add b                                            ; $575d: $80
	nop                                              ; $575e: $00
	ei                                               ; $575f: $fb
	ret nz                                           ; $5760: $c0

	ld c, d                                          ; $5761: $4a
	ld l, e                                          ; $5762: $6b
	rrca                                             ; $5763: $0f
	sbc b                                            ; $5764: $98
	rlca                                             ; $5765: $07
	rrca                                             ; $5766: $0f
	rst $38                                          ; $5767: $ff
	ld h, l                                          ; $5768: $65
	dec b                                            ; $5769: $05
	ld h, h                                          ; $576a: $64
	ld h, l                                          ; $576b: $65
	sbc $ff                                          ; $576c: $de $ff
	sbc [hl]                                         ; $576e: $9e
	rla                                              ; $576f: $17
	call c, $9dff                                    ; $5770: $dc $ff $9d
	cp $e7                                           ; $5773: $fe $e7
	ld [hl], l                                       ; $5775: $75
	reti                                             ; $5776: $d9


	ld h, e                                          ; $5777: $63
	ld l, a                                          ; $5778: $6f
	sub a                                            ; $5779: $97
	and a                                            ; $577a: $a7
	rst AddAOntoHL                                          ; $577b: $ef
	ldh [c], a                                       ; $577c: $e2
	db $e3                                           ; $577d: $e3

jr_04c_577e:
	ldh [$ef], a                                     ; $577e: $e0 $ef
	db $fc                                           ; $5780: $fc
	ldh a, [$db]                                     ; $5781: $f0 $db
	rst AddAOntoHL                                          ; $5783: $ef
	adc h                                            ; $5784: $8c
	db $fc                                           ; $5785: $fc
	jr nc, jr_04c_5723                               ; $5786: $30 $9b

	sbc a                                            ; $5788: $9f
	sbc [hl]                                         ; $5789: $9e
	sbc [hl]                                         ; $578a: $9e
	sbc h                                            ; $578b: $9c
	or b                                             ; $578c: $b0
	and b                                            ; $578d: $a0
	and b                                            ; $578e: $a0
	ld h, h                                          ; $578f: $64
	ld a, b                                          ; $5790: $78
	db $e4                                           ; $5791: $e4
	add sp, -$20                                     ; $5792: $e8 $e0
	ld h, b                                          ; $5794: $60
	ld [hl], b                                       ; $5795: $70
	ld h, b                                          ; $5796: $60
	add a                                            ; $5797: $87
	ld [hl], h                                       ; $5798: $74
	ld e, b                                          ; $5799: $58
	sbc h                                            ; $579a: $9c
	ld [bc], a                                       ; $579b: $02
	inc bc                                           ; $579c: $03
	inc bc                                           ; $579d: $03
	cp $80                                           ; $579e: $fe $80
	ld bc, $0303                                     ; $57a0: $01 $03 $03
	ld bc, $fd03                                     ; $57a3: $01 $03 $fd
	ld [bc], a                                       ; $57a6: $02
	nop                                              ; $57a7: $00
	inc b                                            ; $57a8: $04
	inc e                                            ; $57a9: $1c
	inc e                                            ; $57aa: $1c
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	ld c, h                                          ; $57ad: $4c
	inc a                                            ; $57ae: $3c
	ccf                                              ; $57af: $3f
	ld a, $be                                        ; $57b0: $3e $be
	sbc [hl]                                         ; $57b2: $9e
	ld a, $be                                        ; $57b3: $3e $be
	rst $38                                          ; $57b5: $ff
	cp e                                             ; $57b6: $bb
	ld a, e                                          ; $57b7: $7b
	dec sp                                           ; $57b8: $3b
	dec sp                                           ; $57b9: $3b
	ccf                                              ; $57ba: $3f
	dec l                                            ; $57bb: $2d
	scf                                              ; $57bc: $37
	cp a                                             ; $57bd: $bf
	ld [bc], a                                       ; $57be: $02
	adc h                                            ; $57bf: $8c
	ld [bc], a                                       ; $57c0: $02
	ld h, $36                                        ; $57c1: $26 $36
	jr nc, jr_04c_57f1                               ; $57c3: $30 $2c

	jr nz, jr_04c_577e                               ; $57c5: $20 $b7

	daa                                              ; $57c7: $27
	dec b                                            ; $57c8: $05
	dec h                                            ; $57c9: $25
	ld b, a                                          ; $57ca: $47
	daa                                              ; $57cb: $27
	ld b, a                                          ; $57cc: $47
	xor c                                            ; $57cd: $a9
	db $fd                                           ; $57ce: $fd
	dec [hl]                                         ; $57cf: $35
	daa                                              ; $57d0: $27
	scf                                              ; $57d1: $37
	daa                                              ; $57d2: $27
	sbc $2f                                          ; $57d3: $de $2f

jr_04c_57d5:
	ld a, a                                          ; $57d5: $7f
	call Call_04c_4094                               ; $57d6: $cd $94 $40
	ld [hl], l                                       ; $57d9: $75
	and $65                                          ; $57da: $e6 $65
	ld h, [hl]                                       ; $57dc: $66
	ld l, l                                          ; $57dd: $6d
	jp $fdd1                                         ; $57de: $c3 $d1 $fd


	jp $de43                                         ; $57e1: $c3 $43 $de


	jp $2587                                         ; $57e4: $c3 $87 $25


	ld b, $07                                        ; $57e7: $06 $07
	dec h                                            ; $57e9: $25
	rrca                                             ; $57ea: $0f
	and a                                            ; $57eb: $a7
	adc l                                            ; $57ec: $8d
	xor l                                            ; $57ed: $ad
	ld a, h                                          ; $57ee: $7c
	dec b                                            ; $57ef: $05
	rrca                                             ; $57f0: $0f

jr_04c_57f1:
	rst SubAFromDE                                          ; $57f1: $df
	dec d                                            ; $57f2: $15
	dec e                                            ; $57f3: $1d
	inc d                                            ; $57f4: $14
	inc d                                            ; $57f5: $14
	sub b                                            ; $57f6: $90
	sub l                                            ; $57f7: $95
	sub c                                            ; $57f8: $91
	ld d, c                                          ; $57f9: $51
	push de                                          ; $57fa: $d5
	call nc, $3090                                   ; $57fb: $d4 $90 $30
	ld a, e                                          ; $57fe: $7b
	inc c                                            ; $57ff: $0c
	adc [hl]                                         ; $5800: $8e
	cp [hl]                                          ; $5801: $be
	cp d                                             ; $5802: $ba
	cp c                                             ; $5803: $b9
	db $fd                                           ; $5804: $fd
	db $dd                                           ; $5805: $dd
	ld h, [hl]                                       ; $5806: $66
	or c                                             ; $5807: $b1
	xor d                                            ; $5808: $aa
	dec sp                                           ; $5809: $3b
	xor b                                            ; $580a: $a8
	xor d                                            ; $580b: $aa
	xor b                                            ; $580c: $a8
	jr z, jr_04c_5842                                ; $580d: $28 $33

	ld [hl], d                                       ; $580f: $72
	daa                                              ; $5810: $27
	rst FarCall                                          ; $5811: $f7
	sbc $67                                          ; $5812: $de $67
	sbc e                                            ; $5814: $9b
	rst SubAFromBC                                          ; $5815: $e7
	db $ed                                           ; $5816: $ed
	ld h, b                                          ; $5817: $60
	ei                                               ; $5818: $fb
	sbc $cb                                          ; $5819: $de $cb
	ld a, h                                          ; $581b: $7c
	ld c, b                                          ; $581c: $48
	sbc h                                            ; $581d: $9c
	rst $38                                          ; $581e: $ff
	ret                                              ; $581f: $c9


	ret                                              ; $5820: $c9


	db $dd                                           ; $5821: $dd
	ld sp, hl                                        ; $5822: $f9
	adc c                                            ; $5823: $89
	ret                                              ; $5824: $c9


	ldh [c], a                                       ; $5825: $e2
	ldh [$38], a                                     ; $5826: $e0 $38
	nop                                              ; $5828: $00
	ldh [c], a                                       ; $5829: $e2
	xor h                                            ; $582a: $ac
	jr z, jr_04c_57d5                                ; $582b: $28 $a8

	ld l, $2c                                        ; $582d: $2e $2c
	rst $38                                          ; $582f: $ff
	rst $38                                          ; $5830: $ff
	cpl                                              ; $5831: $2f
	ld l, l                                          ; $5832: $6d
	db $ed                                           ; $5833: $ed
	ld l, l                                          ; $5834: $6d
	nop                                              ; $5835: $00
	ld h, h                                          ; $5836: $64
	ld [de], a                                       ; $5837: $12
	add b                                            ; $5838: $80
	inc h                                            ; $5839: $24
	sbc $01                                          ; $583a: $de $01
	sbc d                                            ; $583c: $9a
	ld h, e                                          ; $583d: $63
	ld h, a                                          ; $583e: $67
	pop af                                           ; $583f: $f1
	ld h, e                                          ; $5840: $63
	rst SubAFromBC                                          ; $5841: $e7

jr_04c_5842:
	sbc $83                                          ; $5842: $de $83
	sbc d                                            ; $5844: $9a
	adc e                                            ; $5845: $8b
	and h                                            ; $5846: $a4
	ld b, e                                          ; $5847: $43
	ld de, $de00                                     ; $5848: $11 $00 $de
	ld [$db9a], sp                                   ; $584b: $08 $9a $db
	ei                                               ; $584e: $fb
	ld c, a                                          ; $584f: $4f
	ld e, a                                          ; $5850: $5f
	ld e, a                                          ; $5851: $5f
	sbc $0c                                          ; $5852: $de $0c
	sub d                                            ; $5854: $92
	add c                                            ; $5855: $81
	reti                                             ; $5856: $d9


	sub c                                            ; $5857: $91
	add b                                            ; $5858: $80
	ld [bc], a                                       ; $5859: $02

jr_04c_585a:
	ld b, d                                          ; $585a: $42
	ld [bc], a                                       ; $585b: $02
	ld b, d                                          ; $585c: $42
	rst $38                                          ; $585d: $ff
	or a                                             ; $585e: $b7
	rst $38                                          ; $585f: $ff
	rst $38                                          ; $5860: $ff
	ld a, a                                          ; $5861: $7f
	sbc $66                                          ; $5862: $de $66
	sbc d                                            ; $5864: $9a
	db $fc                                           ; $5865: $fc
	cp a                                             ; $5866: $bf
	sbc b                                            ; $5867: $98
	rst $38                                          ; $5868: $ff
	rst $38                                          ; $5869: $ff
	cp $9a                                           ; $586a: $fe $9a
	rst SubAFromDE                                          ; $586c: $df
	sbc $ff                                          ; $586d: $de $ff
	sbc $ce                                          ; $586f: $de $ce
	cp $9c                                           ; $5871: $fe $9c
	ld de, $1819                                     ; $5873: $11 $19 $18
	ld [hl], e                                       ; $5876: $73
	ldh a, [$7e]                                     ; $5877: $f0 $7e
	jr nz, jr_04c_585a                               ; $5879: $20 $df

	rst FarCall                                          ; $587b: $f7
	sbc [hl]                                         ; $587c: $9e
	and $fe                                          ; $587d: $e6 $fe
	ld a, l                                          ; $587f: $7d
	add [hl]                                         ; $5880: $86
	sbc h                                            ; $5881: $9c
	ld de, $fbfb                                     ; $5882: $11 $fb $fb
	cp $9e                                           ; $5885: $fe $9e
	ld [hl], a                                       ; $5887: $77
	ld a, e                                          ; $5888: $7b
	pop de                                           ; $5889: $d1
	sbc [hl]                                         ; $588a: $9e
	ld [hl], a                                       ; $588b: $77
	cp $de                                           ; $588c: $fe $de
	scf                                              ; $588e: $37
	sbc l                                            ; $588f: $9d
	cp $f7                                           ; $5890: $fe $f7
	cp $9a                                           ; $5892: $fe $9a
	ld [$eadd], a                                    ; $5894: $ea $dd $ea
	sub l                                            ; $5897: $95
	db $10                                           ; $5898: $10
	cp $9a                                           ; $5899: $fe $9a
	rst GetHLinHL                                          ; $589b: $cf
	ld hl, sp-$76                                    ; $589c: $f8 $8a
	ld d, a                                          ; $589e: $57
	jr nz, @+$79                                     ; $589f: $20 $77

	ret nc                                           ; $58a1: $d0

	sbc e                                            ; $58a2: $9b
	cp $f5                                           ; $58a3: $fe $f5
	xor b                                            ; $58a5: $a8
	ret nz                                           ; $58a6: $c0

	cp $9a                                           ; $58a7: $fe $9a
	ld a, l                                          ; $58a9: $7d
	ldh [hDisp0_WY], a                                     ; $58aa: $e0 $88
	ret nc                                           ; $58ac: $d0

	add b                                            ; $58ad: $80
	cp $77                                           ; $58ae: $fe $77
	db $fc                                           ; $58b0: $fc
	db $fd                                           ; $58b1: $fd
	sbc h                                            ; $58b2: $9c
	ld h, l                                          ; $58b3: $65
	and e                                            ; $58b4: $a3
	nop                                              ; $58b5: $00
	ld [hl], a                                       ; $58b6: $77
	pop hl                                           ; $58b7: $e1
	sbc h                                            ; $58b8: $9c
	nop                                              ; $58b9: $00
	ld a, [$fb5c]                                    ; $58ba: $fa $5c $fb
	sbc $03                                          ; $58bd: $de $03
	db $dd                                           ; $58bf: $dd
	ld bc, $009b                                     ; $58c0: $01 $9b $00
	ld b, $07                                        ; $58c3: $06 $07
	rlca                                             ; $58c5: $07
	db $dd                                           ; $58c6: $dd
	inc bc                                           ; $58c7: $03
	ld a, [$e080]                                    ; $58c8: $fa $80 $e0
	nop                                              ; $58cb: $00
	cp [hl]                                          ; $58cc: $be
	sbc h                                            ; $58cd: $9c
	sbc h                                            ; $58ce: $9c
	inc e                                            ; $58cf: $1c
	inc e                                            ; $58d0: $1c
	sbc h                                            ; $58d1: $9c
	cp b                                             ; $58d2: $b8
	jr jr_04c_5908                                   ; $58d3: $18 $33

	scf                                              ; $58d5: $37
	scf                                              ; $58d6: $37
	ld [hl], $1f                                     ; $58d7: $36 $1f
	rra                                              ; $58d9: $1f
	ld e, $1e                                        ; $58da: $1e $1e
	ld h, $21                                        ; $58dc: $26 $21
	jr nz, @+$22                                     ; $58de: $20 $20

	dec h                                            ; $58e0: $25
	inc b                                            ; $58e1: $04
	dec b                                            ; $58e2: $05
	dec b                                            ; $58e3: $05
	rlca                                             ; $58e4: $07
	dec bc                                           ; $58e5: $0b
	rlca                                             ; $58e6: $07
	db $db                                           ; $58e7: $db
	cpl                                              ; $58e8: $2f
	adc h                                            ; $58e9: $8c
	pop bc                                           ; $58ea: $c1
	push af                                          ; $58eb: $f5
	ld [hl], c                                       ; $58ec: $71
	ld l, l                                          ; $58ed: $6d
	dec l                                            ; $58ee: $2d
	dec e                                            ; $58ef: $1d
	ld c, l                                          ; $58f0: $4d
	ld l, a                                          ; $58f1: $6f
	inc sp                                           ; $58f2: $33
	inc de                                           ; $58f3: $13
	add hl, bc                                       ; $58f4: $09
	ld e, [hl]                                       ; $58f5: $5e
	ld e, l                                          ; $58f6: $5d
	ld e, [hl]                                       ; $58f7: $5e
	ld a, l                                          ; $58f8: $7d
	ld l, e                                          ; $58f9: $6b
	ld a, l                                          ; $58fa: $7d
	ld a, a                                          ; $58fb: $7f
	ld a, a                                          ; $58fc: $7f
	db $dd                                           ; $58fd: $dd
	jp $ff9a                                         ; $58fe: $c3 $9a $ff


	jp $c1c1                                         ; $5901: $c3 $c1 $c1


	dec [hl]                                         ; $5904: $35
	sbc $25                                          ; $5905: $de $25
	sbc [hl]                                         ; $5907: $9e

jr_04c_5908:
	ld e, [hl]                                       ; $5908: $5e
	ld a, c                                          ; $5909: $79
	ld h, h                                          ; $590a: $64
	db $dd                                           ; $590b: $dd
	inc b                                            ; $590c: $04
	sub e                                            ; $590d: $93
	rst $38                                          ; $590e: $ff
	inc c                                            ; $590f: $0c
	inc c                                            ; $5910: $0c
	inc b                                            ; $5911: $04
	jp nc, $b2d2                                     ; $5912: $d2 $d2 $b2

	ldh a, [c]                                       ; $5915: $f2
	ld sp, $d3f3                                     ; $5916: $31 $f3 $d3
	db $d3                                           ; $5919: $d3
	sbc $7d                                          ; $591a: $de $7d
	sbc l                                            ; $591c: $9d
	dec a                                            ; $591d: $3d
	rst $38                                          ; $591e: $ff
	sbc $3c                                          ; $591f: $de $3c
	sub a                                            ; $5921: $97
	ld [$eaae], a                                    ; $5922: $ea $ae $ea
	xor l                                            ; $5925: $ad
	halt                                             ; $5926: $76
	rst $38                                          ; $5927: $ff
	rst SubAFromDE                                          ; $5928: $df
	rst SubAFromDE                                          ; $5929: $df
	sbc $e7                                          ; $592a: $de $e7
	sbc l                                            ; $592c: $9d
	ldh [rIE], a                                     ; $592d: $e0 $ff
	sbc $60                                          ; $592f: $de $60
	rst SubAFromDE                                          ; $5931: $df
	rst AddAOntoHL                                          ; $5932: $ef
	sbc c                                            ; $5933: $99
	rst $38                                          ; $5934: $ff
	rst GetHLinHL                                          ; $5935: $cf
	db $fd                                           ; $5936: $fd
	cp d                                             ; $5937: $ba
	cp a                                             ; $5938: $bf
	cp a                                             ; $5939: $bf
	db $dd                                           ; $593a: $dd
	ret                                              ; $593b: $c9


	add b                                            ; $593c: $80
	rst $38                                          ; $593d: $ff
	push bc                                          ; $593e: $c5
	ret nz                                           ; $593f: $c0

	ret nz                                           ; $5940: $c0

	xor b                                            ; $5941: $a8
	jr nz, jr_04c_5966                               ; $5942: $20 $22

	jr z, jr_04c_594a                                ; $5944: $28 $04

	ld [$60e6], sp                                   ; $5946: $08 $e6 $60
	ld l, l                                          ; $5949: $6d

jr_04c_594a:
	db $ed                                           ; $594a: $ed
	rst AddAOntoHL                                          ; $594b: $ef
	db $ed                                           ; $594c: $ed
	db $ed                                           ; $594d: $ed
	push af                                          ; $594e: $f5
	rra                                              ; $594f: $1f
	pop hl                                           ; $5950: $e1
	ld bc, $7001                                     ; $5951: $01 $01 $70
	ld bc, $7800                                     ; $5954: $01 $00 $78
	ld b, b                                          ; $5957: $40
	inc bc                                           ; $5958: $03
	add e                                            ; $5959: $83
	add e                                            ; $595a: $83
	di                                               ; $595b: $f3
	rst SubAFromDE                                          ; $595c: $df
	add e                                            ; $595d: $83
	add b                                            ; $595e: $80
	ei                                               ; $595f: $fb
	jp $0883                                         ; $5960: $c3 $83 $08


	ld [$0ac3], sp                                   ; $5963: $08 $c3 $0a

jr_04c_5966:
	ld l, b                                          ; $5966: $68
	dec bc                                           ; $5967: $0b
	rst SubAFromDE                                          ; $5968: $df
	or b                                             ; $5969: $b0
	inc c                                            ; $596a: $0c
	inc c                                            ; $596b: $0c
	rst GetHLinHL                                          ; $596c: $cf
	ld c, $6c                                        ; $596d: $0e $6c
	rrca                                             ; $596f: $0f
	rst $38                                          ; $5970: $ff
	ldh a, [$b5]                                     ; $5971: $f0 $b5
	cp l                                             ; $5973: $bd
	ld h, [hl]                                       ; $5974: $66
	and [hl]                                         ; $5975: $a6
	and b                                            ; $5976: $a0
	add b                                            ; $5977: $80
	ld c, a                                          ; $5978: $4f
	ld [hl], c                                       ; $5979: $71
	ld l, [hl]                                       ; $597a: $6e
	ld h, [hl]                                       ; $597b: $66
	rst $38                                          ; $597c: $ff
	ld a, a                                          ; $597d: $7f
	ld a, l                                          ; $597e: $7d
	rst JumpTable                                          ; $597f: $c7
	sub [hl]                                         ; $5980: $96
	cp a                                             ; $5981: $bf
	cp $ff                                           ; $5982: $fe $ff
	db $fd                                           ; $5984: $fd
	nop                                              ; $5985: $00
	ld bc, $e10e                                     ; $5986: $01 $0e $e1
	ccf                                              ; $5989: $3f
	ld a, d                                          ; $598a: $7a
	call $ffde                                       ; $598b: $cd $de $ff
	sub h                                            ; $598e: $94
	db $fc                                           ; $598f: $fc
	ret nz                                           ; $5990: $c0

	nop                                              ; $5991: $00
	xor d                                            ; $5992: $aa
	ld e, l                                          ; $5993: $5d
	rra                                              ; $5994: $1f
	rst SubAFromDE                                          ; $5995: $df
	ld e, a                                          ; $5996: $5f
	ld a, a                                          ; $5997: $7f
	rst $38                                          ; $5998: $ff
	cp $7b                                           ; $5999: $fe $7b
	inc l                                            ; $599b: $2c
	sbc [hl]                                         ; $599c: $9e
	ldh [$72], a                                     ; $599d: $e0 $72
	db $fc                                           ; $599f: $fc
	sub l                                            ; $59a0: $95
	ld a, [$fe57]                                    ; $59a1: $fa $57 $fe
	call c, Call_04c_55a0                            ; $59a4: $dc $a0 $55
	xor $00                                          ; $59a7: $ee $00
	nop                                              ; $59a9: $00
	xor b                                            ; $59aa: $a8
	ei                                               ; $59ab: $fb
	sbc l                                            ; $59ac: $9d
	xor d                                            ; $59ad: $aa
	call nc, $e97b                                   ; $59ae: $d4 $7b $e9
	sbc [hl]                                         ; $59b1: $9e
	ld d, l                                          ; $59b2: $55
	ld h, [hl]                                       ; $59b3: $66
	pop hl                                           ; $59b4: $e1
	sbc e                                            ; $59b5: $9b
	nop                                              ; $59b6: $00
	ld d, h                                          ; $59b7: $54
	add b                                            ; $59b8: $80
	ld bc, $9dfe                                     ; $59b9: $01 $fe $9d
	dec b                                            ; $59bc: $05
	ld a, [bc]                                       ; $59bd: $0a
	ld sp, hl                                        ; $59be: $f9
	sbc l                                            ; $59bf: $9d
	ld [$7990], sp                                   ; $59c0: $08 $90 $79
	xor a                                            ; $59c3: $af
	sbc h                                            ; $59c4: $9c
	add b                                            ; $59c5: $80
	ld b, b                                          ; $59c6: $40
	and b                                            ; $59c7: $a0
	halt                                             ; $59c8: $76
	and h                                            ; $59c9: $a4
	ldh [$dd], a                                     ; $59ca: $e0 $dd
	sbc l                                            ; $59cc: $9d
	ld [$fb0f], sp                                   ; $59cd: $08 $0f $fb
	sbc h                                            ; $59d0: $9c
	inc e                                            ; $59d1: $1c
	rra                                              ; $59d2: $1f
	inc b                                            ; $59d3: $04
	db $fc                                           ; $59d4: $fc
	sbc l                                            ; $59d5: $9d
	ld d, $fe                                        ; $59d6: $16 $fe
	ld a, d                                          ; $59d8: $7a
	ei                                               ; $59d9: $fb
	sbc c                                            ; $59da: $99
	inc b                                            ; $59db: $04
	ld b, $02                                        ; $59dc: $06 $02
	dec c                                            ; $59de: $0d
	push hl                                          ; $59df: $e5
	dec b                                            ; $59e0: $05
	ld a, d                                          ; $59e1: $7a
	sbc [hl]                                         ; $59e2: $9e
	add b                                            ; $59e3: $80
	dec c                                            ; $59e4: $0d
	dec b                                            ; $59e5: $05
	push af                                          ; $59e6: $f5
	ldh a, [c]                                       ; $59e7: $f2
	pop af                                           ; $59e8: $f1
	sub c                                            ; $59e9: $91
	cp d                                             ; $59ea: $ba
	ld a, [de]                                       ; $59eb: $1a
	ld e, d                                          ; $59ec: $5a
	adc d                                            ; $59ed: $8a
	inc c                                            ; $59ee: $0c
	ld b, $03                                        ; $59ef: $06 $03
	ld b, e                                          ; $59f1: $43
	ld h, d                                          ; $59f2: $62
	ld b, d                                          ; $59f3: $42
	ld [bc], a                                       ; $59f4: $02
	ld d, [hl]                                       ; $59f5: $56
	ld a, a                                          ; $59f6: $7f
	rst $38                                          ; $59f7: $ff
	nop                                              ; $59f8: $00
	rst FarCall                                          ; $59f9: $f7
	ld b, l                                          ; $59fa: $45
	push bc                                          ; $59fb: $c5
	rst SubAFromHL                                          ; $59fc: $d7
	set 0, c                                         ; $59fd: $cb $c1
	ld b, c                                          ; $59ff: $41
	nop                                              ; $5a00: $00
	ei                                               ; $5a01: $fb
	db $d3                                           ; $5a02: $d3
	sub c                                            ; $5a03: $91
	jp $cfdb                                         ; $5a04: $c3 $db $cf


	rst $38                                          ; $5a07: $ff
	rst SubAFromDE                                          ; $5a08: $df
	nop                                              ; $5a09: $00
	inc e                                            ; $5a0a: $1c
	rst AddAOntoHL                                          ; $5a0b: $ef
	rst FarCall                                          ; $5a0c: $f7
	rst $38                                          ; $5a0d: $ff
	rla                                              ; $5a0e: $17
	inc b                                            ; $5a0f: $04
	inc b                                            ; $5a10: $04
	nop                                              ; $5a11: $00
	ld a, d                                          ; $5a12: $7a
	pop bc                                           ; $5a13: $c1
	ld a, a                                          ; $5a14: $7f
	dec de                                           ; $5a15: $1b
	adc a                                            ; $5a16: $8f
	rst SubAFromDE                                          ; $5a17: $df
	rst FarCall                                          ; $5a18: $f7
	nop                                              ; $5a19: $00
	ld a, a                                          ; $5a1a: $7f
	db $d3                                           ; $5a1b: $d3
	db $dd                                           ; $5a1c: $dd
	sbc c                                            ; $5a1d: $99
	ldh a, [$38]                                     ; $5a1e: $f0 $38
	stop                                             ; $5a20: $10 $00
	cp [hl]                                          ; $5a22: $be
	ld [hl-], a                                      ; $5a23: $32
	ld [hl-], a                                      ; $5a24: $32
	ld [hl], b                                       ; $5a25: $70
	di                                               ; $5a26: $f3
	ld a, e                                          ; $5a27: $7b
	ldh [$9e], a                                     ; $5a28: $e0 $9e
	ld d, [hl]                                       ; $5a2a: $56
	sbc $db                                          ; $5a2b: $de $db
	sbc c                                            ; $5a2d: $99
	reti                                             ; $5a2e: $d9


	ld h, b                                          ; $5a2f: $60
	ld b, b                                          ; $5a30: $40
	nop                                              ; $5a31: $00
	rst AddAOntoHL                                          ; $5a32: $ef
	ld h, [hl]                                       ; $5a33: $66
	sbc $62                                          ; $5a34: $de $62
	sub a                                            ; $5a36: $97
	rst $38                                          ; $5a37: $ff
	ccf                                              ; $5a38: $3f
	nop                                              ; $5a39: $00
	ld e, a                                          ; $5a3a: $5f
	ld a, b                                          ; $5a3b: $78
	ld a, h                                          ; $5a3c: $7c
	ld a, b                                          ; $5a3d: $78
	ld [hl], b                                       ; $5a3e: $70
	ld a, d                                          ; $5a3f: $7a
	inc d                                            ; $5a40: $14
	sbc [hl]                                         ; $5a41: $9e
	rst SubAFromBC                                          ; $5a42: $e7
	sbc $c1                                          ; $5a43: $de $c1
	adc c                                            ; $5a45: $89
	ret                                              ; $5a46: $c9


	rst SubAFromDE                                          ; $5a47: $df
	db $fc                                           ; $5a48: $fc
	ld a, b                                          ; $5a49: $78
	ld [$3878], sp                                   ; $5a4a: $08 $78 $38
	inc bc                                           ; $5a4d: $03
	cp $a1                                           ; $5a4e: $fe $a1
	add e                                            ; $5a50: $83
	add a                                            ; $5a51: $87
	rst $38                                          ; $5a52: $ff
	add a                                            ; $5a53: $87
	rst $38                                          ; $5a54: $ff
	db $fc                                           ; $5a55: $fc
	ld bc, $8080                                     ; $5a56: $01 $80 $80
	rlca                                             ; $5a59: $07
	ld hl, sp-$79                                    ; $5a5a: $f8 $87
	ld a, e                                          ; $5a5c: $7b
	nop                                              ; $5a5d: $00
	db $dd                                           ; $5a5e: $dd
	rst $38                                          ; $5a5f: $ff
	adc b                                            ; $5a60: $88
	ld hl, sp-$80                                    ; $5a61: $f8 $80
	nop                                              ; $5a63: $00
	ld bc, $7867                                     ; $5a64: $01 $67 $78
	add a                                            ; $5a67: $87
	rst $38                                          ; $5a68: $ff
	rst $38                                          ; $5a69: $ff
	di                                               ; $5a6a: $f3
	rst $38                                          ; $5a6b: $ff
	rst $38                                          ; $5a6c: $ff
	sbc a                                            ; $5a6d: $9f
	rst $38                                          ; $5a6e: $ff
	ld hl, sp+$00                                    ; $5a6f: $f8 $00
	nop                                              ; $5a71: $00

Jump_04c_5a72:
	inc c                                            ; $5a72: $0c
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	adc a                                            ; $5a75: $8f
	rst $38                                          ; $5a76: $ff
	ld sp, hl                                        ; $5a77: $f9
	ld a, b                                          ; $5a78: $78
	adc h                                            ; $5a79: $8c
	ld a, a                                          ; $5a7a: $7f
	pop hl                                           ; $5a7b: $e1
	sbc h                                            ; $5a7c: $9c
	ldh a, [rP1]                                     ; $5a7d: $f0 $00
	ld b, $78                                        ; $5a7f: $06 $78
	cp [hl]                                          ; $5a81: $be
	ld a, a                                          ; $5a82: $7f
	inc b                                            ; $5a83: $04
	call c, Call_04c_7aff                            ; $5a84: $dc $ff $7a
	or [hl]                                          ; $5a87: $b6
	db $fc                                           ; $5a88: $fc
	rst SubAFromDE                                          ; $5a89: $df
	add b                                            ; $5a8a: $80
	ld a, e                                          ; $5a8b: $7b
	ldh a, [$9e]                                     ; $5a8c: $f0 $9e
	rst SubAFromDE                                          ; $5a8e: $df
	call c, $f9ff                                    ; $5a8f: $dc $ff $f9
	sbc [hl]                                         ; $5a92: $9e
	ld e, l                                          ; $5a93: $5d
	ld a, e                                          ; $5a94: $7b
	or [hl]                                          ; $5a95: $b6
	sbc [hl]                                         ; $5a96: $9e
	ei                                               ; $5a97: $fb
	ld e, e                                          ; $5a98: $5b
	ldh a, [$97]                                     ; $5a99: $f0 $97
	ld b, l                                          ; $5a9b: $45
	ld [$6ad5], a                                    ; $5a9c: $ea $d5 $6a
	db $fd                                           ; $5a9f: $fd
	xor d                                            ; $5aa0: $aa
	rst SubAFromHL                                          ; $5aa1: $d7
	db $eb                                           ; $5aa2: $eb
	ld sp, hl                                        ; $5aa3: $f9
	sub a                                            ; $5aa4: $97
	ld d, l                                          ; $5aa5: $55
	xor d                                            ; $5aa6: $aa
	ld d, b                                          ; $5aa7: $50
	add b                                            ; $5aa8: $80
	ld d, l                                          ; $5aa9: $55
	xor d                                            ; $5aaa: $aa
	ld d, l                                          ; $5aab: $55
	cp e                                             ; $5aac: $bb
	push af                                          ; $5aad: $f5
	sbc e                                            ; $5aae: $9b
	ld d, h                                          ; $5aaf: $54
	xor d                                            ; $5ab0: $aa
	ld d, l                                          ; $5ab1: $55
	xor d                                            ; $5ab2: $aa
	db $f4                                           ; $5ab3: $f4
	sbc [hl]                                         ; $5ab4: $9e
	adc b                                            ; $5ab5: $88
	ld c, e                                          ; $5ab6: $4b
	ldh a, [$9c]                                     ; $5ab7: $f0 $9c
	nop                                              ; $5ab9: $00
	ld b, b                                          ; $5aba: $40
	and b                                            ; $5abb: $a0
	push af                                          ; $5abc: $f5
	sbc e                                            ; $5abd: $9b
	ld bc, $050a                                     ; $5abe: $01 $0a $05
	ld [hl+], a                                      ; $5ac1: $22
	ld sp, hl                                        ; $5ac2: $f9
	sub a                                            ; $5ac3: $97
	dec b                                            ; $5ac4: $05
	jr nz, @+$54                                     ; $5ac5: $20 $52

	xor b                                            ; $5ac7: $a8
	ld d, c                                          ; $5ac8: $51
	xor h                                            ; $5ac9: $ac
	ld d, l                                          ; $5aca: $55
	xor e                                            ; $5acb: $ab
	db $db                                           ; $5acc: $db
	inc bc                                           ; $5acd: $03
	rst $38                                          ; $5ace: $ff
	add e                                            ; $5acf: $83
	add $ca                                          ; $5ad0: $c6 $ca
	sub b                                            ; $5ad2: $90
	jp c, $1280                                      ; $5ad3: $da $80 $12

	nop                                              ; $5ad6: $00
	add d                                            ; $5ad7: $82
	ld [de], a                                       ; $5ad8: $12
	ld a, [de]                                       ; $5ad9: $1a
	ld b, d                                          ; $5ada: $42
	ld [bc], a                                       ; $5adb: $02
	ld e, [hl]                                       ; $5adc: $5e
	ld c, [hl]                                       ; $5add: $4e
	ld e, [hl]                                       ; $5ade: $5e
	ld d, [hl]                                       ; $5adf: $56
	rst GetHLinHL                                          ; $5ae0: $cf
	ld d, e                                          ; $5ae1: $53
	adc $d7                                          ; $5ae2: $ce $d7
	adc $df                                          ; $5ae4: $ce $df
	adc [hl]                                         ; $5ae6: $8e
	rst SubAFromDE                                          ; $5ae7: $df
	rst GetHLinHL                                          ; $5ae8: $cf
	rst SubAFromDE                                          ; $5ae9: $df
	db $d3                                           ; $5aea: $d3
	db $db                                           ; $5aeb: $db
	db $dd                                           ; $5aec: $dd
	db $d3                                           ; $5aed: $d3
	sbc d                                            ; $5aee: $9a
	rst SubAFromDE                                          ; $5aef: $df
	ld e, h                                          ; $5af0: $5c
	rst AddAOntoHL                                          ; $5af1: $ef
	rst AddAOntoHL                                          ; $5af2: $ef
	rst GetHLinHL                                          ; $5af3: $cf
	sbc $cb                                          ; $5af4: $de $cb
	ld a, a                                          ; $5af6: $7f
	ei                                               ; $5af7: $fb
	db $db                                           ; $5af8: $db
	inc c                                            ; $5af9: $0c
	sbc l                                            ; $5afa: $9d
	di                                               ; $5afb: $f3
	ld a, [hl-]                                      ; $5afc: $3a
	db $db                                           ; $5afd: $db
	reti                                             ; $5afe: $d9


	rst SubAFromDE                                          ; $5aff: $df
	di                                               ; $5b00: $f3
	db $db                                           ; $5b01: $db
	ld [hl-], a                                      ; $5b02: $32
	rst SubAFromDE                                          ; $5b03: $df
	ld e, e                                          ; $5b04: $5b
	rst SubAFromDE                                          ; $5b05: $df
	db $db                                           ; $5b06: $db
	rst SubAFromDE                                          ; $5b07: $df
	ld c, e                                          ; $5b08: $4b
	sub l                                            ; $5b09: $95
	ld e, e                                          ; $5b0a: $5b
	pop de                                           ; $5b0b: $d1
	ldh [c], a                                       ; $5b0c: $e2
	ldh [c], a                                       ; $5b0d: $e2
	ld h, d                                          ; $5b0e: $62
	ld h, d                                          ; $5b0f: $62
	ldh a, [c]                                       ; $5b10: $f2
	ldh a, [c]                                       ; $5b11: $f2
	ldh [c], a                                       ; $5b12: $e2
	ld h, d                                          ; $5b13: $62
	db $dd                                           ; $5b14: $dd
	ld h, b                                          ; $5b15: $60
	sbc e                                            ; $5b16: $9b
	db $e4                                           ; $5b17: $e4
	jp nz, $e2a2                                     ; $5b18: $c2 $a2 $e2

	call c, $96d9                                    ; $5b1b: $dc $d9 $96
	ld sp, hl                                        ; $5b1e: $f9
	reti                                             ; $5b1f: $d9


	reti                                             ; $5b20: $d9


	inc bc                                           ; $5b21: $03
	ld sp, hl                                        ; $5b22: $f9
	rst FarCall                                          ; $5b23: $f7
	rra                                              ; $5b24: $1f
	ld a, a                                          ; $5b25: $7f
	daa                                              ; $5b26: $27
	ld a, c                                          ; $5b27: $79
	push bc                                          ; $5b28: $c5
	sbc d                                            ; $5b29: $9a
	cp $f8                                           ; $5b2a: $fe $f8
	ldh [$80], a                                     ; $5b2c: $e0 $80
	ret c                                            ; $5b2e: $d8

	ld [hl], c                                       ; $5b2f: $71
	cp d                                             ; $5b30: $ba
	ld d, e                                          ; $5b31: $53
	nop                                              ; $5b32: $00
	inc bc                                           ; $5b33: $03
	ldh a, [$03]                                     ; $5b34: $f0 $03
	ldh a, [$03]                                     ; $5b36: $f0 $03
	ldh a, [rHDMA3]                                  ; $5b38: $f0 $53
	ldh a, [$9b]                                     ; $5b3a: $f0 $9b
	push de                                          ; $5b3c: $d5
	ld a, [$fdff]                                    ; $5b3d: $fa $ff $fd
	ld d, a                                          ; $5b40: $57
	ldh a, [$7e]                                     ; $5b41: $f0 $7e
	add $9b                                          ; $5b43: $c6 $9b
	push af                                          ; $5b45: $f5
	cp $ff                                           ; $5b46: $fe $ff
	ld a, [$3075]                                    ; $5b48: $fa $75 $30
	ld e, [hl]                                       ; $5b4b: $5e
	and h                                            ; $5b4c: $a4
	ld [hl], a                                       ; $5b4d: $77
	cp $f9                                           ; $5b4e: $fe $f9
	sbc [hl]                                         ; $5b50: $9e
	ld de, $f273                                     ; $5b51: $11 $73 $f2
	sbc [hl]                                         ; $5b54: $9e
	ld d, a                                          ; $5b55: $57
	ld h, e                                          ; $5b56: $63
	ldh a, [$7e]                                     ; $5b57: $f0 $7e
	add $4f                                          ; $5b59: $c6 $4f
	ldh [hDisp1_WY], a                                     ; $5b5b: $e0 $95
	sub b                                            ; $5b5d: $90
	ld [$0800], sp                                   ; $5b5e: $08 $00 $08
	nop                                              ; $5b61: $00
	adc b                                            ; $5b62: $88
	ret nz                                           ; $5b63: $c0

	adc b                                            ; $5b64: $88
	ld c, h                                          ; $5b65: $4c
	inc e                                            ; $5b66: $1c
	call c, $955c                                    ; $5b67: $dc $5c $95
	inc e                                            ; $5b6a: $1c
	add [hl]                                         ; $5b6b: $86
	sub $8e                                          ; $5b6c: $d6 $8e
	sbc $82                                          ; $5b6e: $de $82
	jp nc, $d282                                     ; $5b70: $d2 $82 $d2

	db $db                                           ; $5b73: $db
	ld a, d                                          ; $5b74: $7a
	jp nz, $dfdd                                     ; $5b75: $c2 $dd $df

	sbc d                                            ; $5b78: $9a
	db $eb                                           ; $5b79: $eb
	res 1, d                                         ; $5b7a: $cb $8a
	adc c                                            ; $5b7c: $89
	adc b                                            ; $5b7d: $88
	sbc $8a                                          ; $5b7e: $de $8a
	rst SubAFromDE                                          ; $5b80: $df
	inc c                                            ; $5b81: $0c
	sbc h                                            ; $5b82: $9c
	ld c, l                                          ; $5b83: $4d
	ld c, a                                          ; $5b84: $4f
	ld c, a                                          ; $5b85: $4f
	sbc $4d                                          ; $5b86: $de $4d
	rst SubAFromDE                                          ; $5b88: $df
	reti                                             ; $5b89: $d9


	sub b                                            ; $5b8a: $90
	db $dd                                           ; $5b8b: $dd
	inc [hl]                                         ; $5b8c: $34
	ld [hl], h                                       ; $5b8d: $74
	dec a                                            ; $5b8e: $3d
	dec [hl]                                         ; $5b8f: $35
	inc h                                            ; $5b90: $24
	ld [hl-], a                                      ; $5b91: $32
	ld [hl], $36                                     ; $5b92: $36 $36
	rst FarCall                                          ; $5b94: $f7
	or a                                             ; $5b95: $b7
	or $f6                                           ; $5b96: $f6 $f6
	rst FarCall                                          ; $5b98: $f7
	ld d, e                                          ; $5b99: $53
	sbc $51                                          ; $5b9a: $de $51
	sbc e                                            ; $5b9c: $9b
	ld b, c                                          ; $5b9d: $41
	ld b, h                                          ; $5b9e: $44
	ld b, b                                          ; $5b9f: $40
	ld b, h                                          ; $5ba0: $44
	db $dd                                           ; $5ba1: $dd
	ldh [c], a                                       ; $5ba2: $e2
	sbc [hl]                                         ; $5ba3: $9e
	ldh a, [c]                                       ; $5ba4: $f2
	sbc $f7                                          ; $5ba5: $de $f7
	sbc $a2                                          ; $5ba7: $de $a2
	ld a, h                                          ; $5ba9: $7c
	add c                                            ; $5baa: $81
	sbc h                                            ; $5bab: $9c
	add d                                            ; $5bac: $82
	ret nz                                           ; $5bad: $c0

	jp nz, $c172                                     ; $5bae: $c2 $72 $c1

	sbc $f9                                          ; $5bb1: $de $f9
	ld b, [hl]                                       ; $5bb3: $46
	nop                                              ; $5bb4: $00
	rst SubAFromHL                                          ; $5bb5: $d7
	ld b, h                                          ; $5bb6: $44
	sbc [hl]                                         ; $5bb7: $9e
	ld d, h                                          ; $5bb8: $54
	ret c                                            ; $5bb9: $d8

	ld b, h                                          ; $5bba: $44
	sbc $55                                          ; $5bbb: $de $55
	sbc d                                            ; $5bbd: $9a
	inc sp                                           ; $5bbe: $33
	inc [hl]                                         ; $5bbf: $34
	inc [hl]                                         ; $5bc0: $34
	ld b, a                                          ; $5bc1: $47
	ld [hl], h                                       ; $5bc2: $74
	ld [hl], e                                       ; $5bc3: $73
	or $9e                                           ; $5bc4: $f6 $9e
	ld d, e                                          ; $5bc6: $53
	sbc $33                                          ; $5bc7: $de $33
	sbc h                                            ; $5bc9: $9c
	ld h, a                                          ; $5bca: $67
	inc sp                                           ; $5bcb: $33
	inc sp                                           ; $5bcc: $33
	ld [hl], a                                       ; $5bcd: $77
	or $9b                                           ; $5bce: $f6 $9b
	dec [hl]                                         ; $5bd0: $35
	ld d, e                                          ; $5bd1: $53
	inc sp                                           ; $5bd2: $33
	ld h, [hl]                                       ; $5bd3: $66
	ld [hl], e                                       ; $5bd4: $73
	or $98                                           ; $5bd5: $f6 $98
	ld d, h                                          ; $5bd7: $54
	dec [hl]                                         ; $5bd8: $35
	ld h, e                                          ; $5bd9: $63
	ld b, h                                          ; $5bda: $44
	ld h, [hl]                                       ; $5bdb: $66
	ld h, [hl]                                       ; $5bdc: $66
	ld h, e                                          ; $5bdd: $63
	ld [hl], e                                       ; $5bde: $73
	or $df                                           ; $5bdf: $f6 $df
	ld [hl], a                                       ; $5be1: $77
	sub l                                            ; $5be2: $95
	ld h, a                                          ; $5be3: $67
	halt                                             ; $5be4: $76
	ld h, [hl]                                       ; $5be5: $66
	ld d, l                                          ; $5be6: $55
	ld d, l                                          ; $5be7: $55
	ld [hl], a                                       ; $5be8: $77
	ld [hl], a                                       ; $5be9: $77
	inc sp                                           ; $5bea: $33
	scf                                              ; $5beb: $37
	ld [hl], a                                       ; $5bec: $77
	sbc $66                                          ; $5bed: $de $66
	ld [hl], e                                       ; $5bef: $73
	ret nc                                           ; $5bf0: $d0

	sbc [hl]                                         ; $5bf1: $9e
	inc sp                                           ; $5bf2: $33
	ld [hl], a                                       ; $5bf3: $77
	or $da                                           ; $5bf4: $f6 $da
	inc sp                                           ; $5bf6: $33
	ld d, e                                          ; $5bf7: $53
	or $1b                                           ; $5bf8: $f6 $1b
	adc d                                            ; $5bfa: $8a
	db $db                                           ; $5bfb: $db
	rst $38                                          ; $5bfc: $ff
	sbc l                                            ; $5bfd: $9d
	ld a, a                                          ; $5bfe: $7f
	cp a                                             ; $5bff: $bf
	ei                                               ; $5c00: $fb
	sbc l                                            ; $5c01: $9d
	add b                                            ; $5c02: $80
	ld b, b                                          ; $5c03: $40
	call c, $dfff                                    ; $5c04: $dc $ff $df
	cp $9e                                           ; $5c07: $fe $9e
	db $fc                                           ; $5c09: $fc
	ld sp, hl                                        ; $5c0a: $f9
	sub a                                            ; $5c0b: $97
	rst AddAOntoHL                                          ; $5c0c: $ef
	rst GetHLinHL                                          ; $5c0d: $cf
	rst SubAFromDE                                          ; $5c0e: $df
	cp a                                             ; $5c0f: $bf
	ccf                                              ; $5c10: $3f
	ld a, e                                          ; $5c11: $7b
	rst FarCall                                          ; $5c12: $f7
	rst $38                                          ; $5c13: $ff
	cp $df                                           ; $5c14: $fe $df
	ld bc, $0392                                     ; $5c16: $01 $92 $03
	ld [bc], a                                       ; $5c19: $02
	ld b, $f0                                        ; $5c1a: $06 $f0
	ldh a, [$e0]                                     ; $5c1c: $f0 $e0
	ldh [$c0], a                                     ; $5c1e: $e0 $c0
	add b                                            ; $5c20: $80
	add b                                            ; $5c21: $80
	nop                                              ; $5c22: $00
	ld h, b                                          ; $5c23: $60
	ld h, b                                          ; $5c24: $60
	ld [hl], a                                       ; $5c25: $77
	ld a, [$4fe0]                                    ; $5c26: $fa $e0 $4f
	adc a                                            ; $5c29: $8f
	rla                                              ; $5c2a: $17
	rra                                              ; $5c2b: $1f
	dec bc                                           ; $5c2c: $0b
	dec c                                            ; $5c2d: $0d
	dec c                                            ; $5c2e: $0d
	ld b, $06                                        ; $5c2f: $06 $06
	inc bc                                           ; $5c31: $03
	stop                                             ; $5c32: $10 $00
	ld [rRAMG], sp                                   ; $5c34: $08 $00 $00
	inc b                                            ; $5c37: $04
	ld [bc], a                                       ; $5c38: $02
	ld [bc], a                                       ; $5c39: $02
	reti                                             ; $5c3a: $d9


	rst $38                                          ; $5c3b: $ff
	rst SubAFromDE                                          ; $5c3c: $df
	ccf                                              ; $5c3d: $3f
	rst SubAFromDE                                          ; $5c3e: $df
	rra                                              ; $5c3f: $1f
	sbc $0f                                          ; $5c40: $de $0f
	adc e                                            ; $5c42: $8b
	rlca                                             ; $5c43: $07
	ld a, [hl+]                                      ; $5c44: $2a
	dec d                                            ; $5c45: $15
	ld a, [hl+]                                      ; $5c46: $2a
	ld d, l                                          ; $5c47: $55
	ld a, [hl+]                                      ; $5c48: $2a
	dec d                                            ; $5c49: $15
	ld a, [bc]                                       ; $5c4a: $0a
	dec d                                            ; $5c4b: $15
	push de                                          ; $5c4c: $d5
	ld [$aad5], a                                    ; $5c4d: $ea $d5 $aa
	push de                                          ; $5c50: $d5
	ld [$eaf5], a                                    ; $5c51: $ea $f5 $ea
	xor a                                            ; $5c54: $af
	ld e, a                                          ; $5c55: $5f
	cp a                                             ; $5c56: $bf
	ld [hl], e                                       ; $5c57: $73
	cp $9c                                           ; $5c58: $fe $9c
	ld d, b                                          ; $5c5a: $50
	and b                                            ; $5c5b: $a0
	ld b, b                                          ; $5c5c: $40
	ld [hl], e                                       ; $5c5d: $73
	cp $8b                                           ; $5c5e: $fe $8b
	db $fd                                           ; $5c60: $fd
	ldh a, [c]                                       ; $5c61: $f2
	db $fd                                           ; $5c62: $fd
	ld a, [$aac5]                                    ; $5c63: $fa $c5 $aa
	push bc                                          ; $5c66: $c5
	xor d                                            ; $5c67: $aa
	ld [bc], a                                       ; $5c68: $02
	dec c                                            ; $5c69: $0d
	ld b, $0d                                        ; $5c6a: $06 $0d
	ld a, [hl-]                                      ; $5c6c: $3a
	ld d, l                                          ; $5c6d: $55
	ld a, [hl-]                                      ; $5c6e: $3a
	ld [hl], l                                       ; $5c6f: $75
	ld e, a                                          ; $5c70: $5f
	xor a                                            ; $5c71: $af
	rst $38                                          ; $5c72: $ff
	sub l                                            ; $5c73: $95
	sbc $ff                                          ; $5c74: $de $ff
	sbc d                                            ; $5c76: $9a
	ld e, [hl]                                       ; $5c77: $5e
	and b                                            ; $5c78: $a0
	ld d, b                                          ; $5c79: $50
	nop                                              ; $5c7a: $00
	ld a, a                                          ; $5c7b: $7f
	db $dd                                           ; $5c7c: $dd
	rst $38                                          ; $5c7d: $ff
	ld a, a                                          ; $5c7e: $7f
	ldh [c], a                                       ; $5c7f: $e2
	sbc c                                            ; $5c80: $99
	ld sp, hl                                        ; $5c81: $f9
	ld [hl-], a                                      ; $5c82: $32
	push hl                                          ; $5c83: $e5
	ld [$92a5], a                                    ; $5c84: $ea $a5 $92
	cp $9e                                           ; $5c87: $fe $9e
	ret nz                                           ; $5c89: $c0

	ld a, d                                          ; $5c8a: $7a
	sub $91                                          ; $5c8b: $d6 $91
	inc c                                            ; $5c8d: $0c
	xor $fe                                          ; $5c8e: $ee $fe
	call c, $f8b8                                    ; $5c90: $dc $b8 $f8
	ld [hl], b                                       ; $5c93: $70
	ldh [$e0], a                                     ; $5c94: $e0 $e0
	inc c                                            ; $5c96: $0c
	inc c                                            ; $5c97: $0c
	jr @+$32                                         ; $5c98: $18 $30

	jr nc, jr_04c_5d16                               ; $5c9a: $30 $7a

	set 5, [hl]                                      ; $5c9c: $cb $ee
	sbc $01                                          ; $5c9e: $de $01
	ld h, a                                          ; $5ca0: $67
	ld hl, sp+$7f                                    ; $5ca1: $f8 $7f
	rst FarCall                                          ; $5ca3: $f7
	sub a                                            ; $5ca4: $97
	ld e, $3f                                        ; $5ca5: $1e $3f
	ret nz                                           ; $5ca7: $c0

	adc a                                            ; $5ca8: $8f
	ld [$8808], sp                                   ; $5ca9: $08 $08 $88
	add b                                            ; $5cac: $80
	ld a, e                                          ; $5cad: $7b
	or d                                             ; $5cae: $b2
	sub d                                            ; $5caf: $92
	db $fc                                           ; $5cb0: $fc
	ld hl, sp-$10                                    ; $5cb1: $f8 $f0
	ldh a, [$78]                                     ; $5cb3: $f0 $78
	nop                                              ; $5cb5: $00
	jr nz, jr_04c_5cc8                               ; $5cb6: $20 $10

	add b                                            ; $5cb8: $80
	nop                                              ; $5cb9: $00
	ret nz                                           ; $5cba: $c0

	ret z                                            ; $5cbb: $c8

	ld [hl], b                                       ; $5cbc: $70
	ld a, e                                          ; $5cbd: $7b
	or d                                             ; $5cbe: $b2
	sbc $78                                          ; $5cbf: $de $78
	sbc l                                            ; $5cc1: $9d
	ld [hl], b                                       ; $5cc2: $70
	jr nz, jr_04c_5d30                               ; $5cc3: $20 $6b

	call $7f9e                                       ; $5cc5: $cd $9e $7f

jr_04c_5cc8:
	ld a, [$0f9e]                                    ; $5cc8: $fa $9e $0f
	ei                                               ; $5ccb: $fb
	sbc l                                            ; $5ccc: $9d
	ld b, b                                          ; $5ccd: $40
	ldh [$fa], a                                     ; $5cce: $e0 $fa
	ld h, a                                          ; $5cd0: $67
	ld hl, sp+$4b                                    ; $5cd1: $f8 $4b
	ldh [$9d], a                                     ; $5cd3: $e0 $9d
	nop                                              ; $5cd5: $00
	pop bc                                           ; $5cd6: $c1
	ld a, [$4d66]                                    ; $5cd7: $fa $66 $4d

jr_04c_5cda:
	halt                                             ; $5cda: $76
	jr nc, jr_04c_5cda                               ; $5cdb: $30 $fd

	sbc d                                            ; $5cdd: $9a
	ld e, $00                                        ; $5cde: $1e $00
	nop                                              ; $5ce0: $00
	jr jr_04c_5cf3                                   ; $5ce1: $18 $10

	db $dd                                           ; $5ce3: $dd
	ld [de], a                                       ; $5ce4: $12
	sbc [hl]                                         ; $5ce5: $9e
	nop                                              ; $5ce6: $00
	ld [hl], e                                       ; $5ce7: $73
	ld bc, $0fdf                                     ; $5ce8: $01 $df $0f
	ld a, a                                          ; $5ceb: $7f
	sub b                                            ; $5cec: $90
	sub c                                            ; $5ced: $91
	inc [hl]                                         ; $5cee: $34
	rlca                                             ; $5cef: $07
	pop af                                           ; $5cf0: $f1
	adc l                                            ; $5cf1: $8d
	add h                                            ; $5cf2: $84

jr_04c_5cf3:
	add d                                            ; $5cf3: $82

jr_04c_5cf4:
	nop                                              ; $5cf4: $00
	ret nz                                           ; $5cf5: $c0

	ld hl, sp-$02                                    ; $5cf6: $f8 $fe
	rst $38                                          ; $5cf8: $ff
	rlca                                             ; $5cf9: $07
	inc bc                                           ; $5cfa: $03
	inc bc                                           ; $5cfb: $03
	ld l, e                                          ; $5cfc: $6b
	ret                                              ; $5cfd: $c9


	ld l, a                                          ; $5cfe: $6f
	ld c, b                                          ; $5cff: $48
	sbc $80                                          ; $5d00: $de $80
	sbc [hl]                                         ; $5d02: $9e
	inc bc                                           ; $5d03: $03
	ld l, e                                          ; $5d04: $6b
	ld d, e                                          ; $5d05: $53
	ld sp, hl                                        ; $5d06: $f9
	rst SubAFromDE                                          ; $5d07: $df
	ld a, a                                          ; $5d08: $7f

jr_04c_5d09:
	sbc c                                            ; $5d09: $99
	cp a                                             ; $5d0a: $bf
	rst $38                                          ; $5d0b: $ff
	rst $38                                          ; $5d0c: $ff
	ld e, a                                          ; $5d0d: $5f
	ld l, a                                          ; $5d0e: $6f
	cpl                                              ; $5d0f: $2f
	ld a, e                                          ; $5d10: $7b
	push de                                          ; $5d11: $d5
	rst SubAFromDE                                          ; $5d12: $df
	add c                                            ; $5d13: $81
	add b                                            ; $5d14: $80
	ld b, b                                          ; $5d15: $40

jr_04c_5d16:
	nop                                              ; $5d16: $00
	jr nz, @+$0c                                     ; $5d17: $20 $0a

	dec b                                            ; $5d19: $05
	ld [bc], a                                       ; $5d1a: $02
	add l                                            ; $5d1b: $85
	add d                                            ; $5d1c: $82
	ld b, c                                          ; $5d1d: $41
	jp nz, $f581                                     ; $5d1e: $c2 $81 $f5

	ld a, [$fafd]                                    ; $5d21: $fa $fd $fa
	db $fd                                           ; $5d24: $fd
	cp $7d                                           ; $5d25: $fe $7d
	ld a, [hl]                                       ; $5d27: $7e
	xor a                                            ; $5d28: $af
	ld e, [hl]                                       ; $5d29: $5e
	xor a                                            ; $5d2a: $af
	ld d, [hl]                                       ; $5d2b: $56
	xor a                                            ; $5d2c: $af
	ld e, l                                          ; $5d2d: $5d
	xor a                                            ; $5d2e: $af
	ld e, h                                          ; $5d2f: $5c

jr_04c_5d30:
	ld d, b                                          ; $5d30: $50
	and c                                            ; $5d31: $a1
	ld d, b                                          ; $5d32: $50
	xor c                                            ; $5d33: $a9
	add d                                            ; $5d34: $82
	ld d, c                                          ; $5d35: $51
	and e                                            ; $5d36: $a3
	ld d, d                                          ; $5d37: $52
	and e                                            ; $5d38: $a3
	ld d, l                                          ; $5d39: $55
	xor d                                            ; $5d3a: $aa
	ld d, h                                          ; $5d3b: $54
	xor b                                            ; $5d3c: $a8
	ld d, l                                          ; $5d3d: $55
	xor d                                            ; $5d3e: $aa
	ld e, c                                          ; $5d3f: $59
	and d                                            ; $5d40: $a2
	ld [$aa54], a                                    ; $5d41: $ea $54 $aa
	call nc, $50a8                                   ; $5d44: $d4 $a8 $50
	and b                                            ; $5d47: $a0
	ld d, b                                          ; $5d48: $50
	db $fc                                           ; $5d49: $fc
	ldh a, [$c0]                                     ; $5d4a: $f0 $c0
	add b                                            ; $5d4c: $80
	inc bc                                           ; $5d4d: $03
	rlca                                             ; $5d4e: $07
	cpl                                              ; $5d4f: $2f
	rst SubAFromDE                                          ; $5d50: $df
	ld hl, sp+$79                                    ; $5d51: $f8 $79
	xor d                                            ; $5d53: $aa
	ld a, e                                          ; $5d54: $7b
	jr z, jr_04c_5cf4                                ; $5d55: $28 $9d

	inc bc                                           ; $5d57: $03
	dec a                                            ; $5d58: $3d
	ld a, d                                          ; $5d59: $7a
	cp d                                             ; $5d5a: $ba
	sub d                                            ; $5d5b: $92
	rst FarCall                                          ; $5d5c: $f7
	xor $fc                                          ; $5d5d: $ee $fc
	db $fc                                           ; $5d5f: $fc
	inc c                                            ; $5d60: $0c
	add hl, de                                       ; $5d61: $19
	dec de                                           ; $5d62: $1b
	ld [hl-], a                                      ; $5d63: $32
	ld h, [hl]                                       ; $5d64: $66
	db $ec                                           ; $5d65: $ec
	ld hl, sp-$08                                    ; $5d66: $f8 $f8
	ret nz                                           ; $5d68: $c0

	ld [hl], a                                       ; $5d69: $77
	jp hl                                            ; $5d6a: $e9


	rst $38                                          ; $5d6b: $ff
	sbc [hl]                                         ; $5d6c: $9e
	inc bc                                           ; $5d6d: $03
	ld l, c                                          ; $5d6e: $69
	sub e                                            ; $5d6f: $93
	ld h, a                                          ; $5d70: $67
	add e                                            ; $5d71: $83
	sbc [hl]                                         ; $5d72: $9e
	ldh a, [$5f]                                     ; $5d73: $f0 $5f
	db $10                                           ; $5d75: $10
	sbc d                                            ; $5d76: $9a
	inc bc                                           ; $5d77: $03
	ld b, $07                                        ; $5d78: $06 $07
	inc b                                            ; $5d7a: $04
	inc b                                            ; $5d7b: $04
	ld a, e                                          ; $5d7c: $7b
	ld e, b                                          ; $5d7d: $58
	ld a, a                                          ; $5d7e: $7f
	call nz, $f57f                                   ; $5d7f: $c4 $7f $f5
	ld a, e                                          ; $5d82: $7b
	ld h, d                                          ; $5d83: $62
	add b                                            ; $5d84: $80
	add hl, bc                                       ; $5d85: $09
	ret nz                                           ; $5d86: $c0

	jr nz, jr_04c_5d09                               ; $5d87: $20 $80

	ld de, $0000                                     ; $5d89: $11 $00 $00
	ld a, $07                                        ; $5d8c: $3e $07
	add c                                            ; $5d8e: $81
	ret nz                                           ; $5d8f: $c0

	ld h, b                                          ; $5d90: $60
	pop hl                                           ; $5d91: $e1
	rst $38                                          ; $5d92: $ff
	rst $38                                          ; $5d93: $ff
	rlca                                             ; $5d94: $07
	ld [$8918], sp                                   ; $5d95: $08 $18 $89
	ld a, [hl]                                       ; $5d98: $7e
	dec c                                            ; $5d99: $0d
	ld [$0108], sp                                   ; $5d9a: $08 $08 $01
	adc a                                            ; $5d9d: $8f
	rst AddAOntoHL                                          ; $5d9e: $ef
	rst $38                                          ; $5d9f: $ff
	adc c                                            ; $5da0: $89
	ei                                               ; $5da1: $fb
	rst $38                                          ; $5da2: $ff
	rst AddAOntoHL                                          ; $5da3: $ef
	sub a                                            ; $5da4: $97
	rst $38                                          ; $5da5: $ff
	inc e                                            ; $5da6: $1c
	ld a, [de]                                       ; $5da7: $1a
	di                                               ; $5da8: $f3
	ccf                                              ; $5da9: $3f
	db $ec                                           ; $5daa: $ec
	rlca                                             ; $5dab: $07
	rlca                                             ; $5dac: $07
	db $dd                                           ; $5dad: $dd
	rst $38                                          ; $5dae: $ff
	sbc l                                            ; $5daf: $9d
	rst FarCall                                          ; $5db0: $f7
	di                                               ; $5db1: $f3
	sbc $ff                                          ; $5db2: $de $ff
	sbc b                                            ; $5db4: $98
	rst GetHLinHL                                          ; $5db5: $cf
	ld c, [hl]                                       ; $5db6: $4e
	ld c, [hl]                                       ; $5db7: $4e
	cp $f6                                           ; $5db8: $fe $f6
	ld sp, $dd39                                     ; $5dba: $31 $39 $dd
	rst $38                                          ; $5dbd: $ff
	sbc l                                            ; $5dbe: $9d
	ld h, l                                          ; $5dbf: $65
	dec l                                            ; $5dc0: $2d
	sbc $ff                                          ; $5dc1: $de $ff
	sbc b                                            ; $5dc3: $98
	ld a, b                                          ; $5dc4: $78
	ld sp, $ff32                                     ; $5dc5: $31 $32 $ff
	xor a                                            ; $5dc8: $af
	add $cf                                          ; $5dc9: $c6 $cf
	db $dd                                           ; $5dcb: $dd
	rst $38                                          ; $5dcc: $ff
	sbc l                                            ; $5dcd: $9d
	and d                                            ; $5dce: $a2
	sub $de                                          ; $5dcf: $d6 $de
	rst $38                                          ; $5dd1: $ff
	ld a, a                                          ; $5dd2: $7f
	halt                                             ; $5dd3: $76
	sub h                                            ; $5dd4: $94
	inc b                                            ; $5dd5: $04
	rst $38                                          ; $5dd6: $ff
	halt                                             ; $5dd7: $76
	inc b                                            ; $5dd8: $04
	inc c                                            ; $5dd9: $0c
	rst SubAFromBC                                          ; $5dda: $e7
	rst SubAFromDE                                          ; $5ddb: $df
	rst $38                                          ; $5ddc: $ff
	rst $38                                          ; $5ddd: $ff
	ld h, h                                          ; $5dde: $64
	db $ed                                           ; $5ddf: $ed
	sbc $ff                                          ; $5de0: $de $ff
	sbc b                                            ; $5de2: $98
	ld b, $02                                        ; $5de3: $06 $02
	ldh [c], a                                       ; $5de5: $e2
	rra                                              ; $5de6: $1f
	cpl                                              ; $5de7: $2f
	ldh [c], a                                       ; $5de8: $e2
	ldh [c], a                                       ; $5de9: $e2
	db $dd                                           ; $5dea: $dd
	rst $38                                          ; $5deb: $ff
	sbc [hl]                                         ; $5dec: $9e
	ldh [c], a                                       ; $5ded: $e2
	ld a, e                                          ; $5dee: $7b
	ldh [$9e], a                                     ; $5def: $e0 $9e
	sub d                                            ; $5df1: $92
	sbc $52                                          ; $5df2: $de $52
	sbc e                                            ; $5df4: $9b
	ld d, h                                          ; $5df5: $54
	ld d, [hl]                                       ; $5df6: $56
	ld [bc], a                                       ; $5df7: $02
	inc b                                            ; $5df8: $04
	db $dd                                           ; $5df9: $dd
	adc a                                            ; $5dfa: $8f
	adc d                                            ; $5dfb: $8a
	adc e                                            ; $5dfc: $8b
	adc c                                            ; $5dfd: $89
	rst $38                                          ; $5dfe: $ff
	rst $38                                          ; $5dff: $ff
	add d                                            ; $5e00: $82
	add d                                            ; $5e01: $82
	add b                                            ; $5e02: $80
	adc c                                            ; $5e03: $89
	xor [hl]                                         ; $5e04: $ae
	inc [hl]                                         ; $5e05: $34
	ld bc, $030e                                     ; $5e06: $01 $0e $03
	inc bc                                           ; $5e09: $03
	rlca                                             ; $5e0a: $07
	rlca                                             ; $5e0b: $07
	add hl, de                                       ; $5e0c: $19
	ei                                               ; $5e0d: $fb
	rst $38                                          ; $5e0e: $ff
	db $fc                                           ; $5e0f: $fc
	add b                                            ; $5e10: $80
	ld a, d                                          ; $5e11: $7a
	push bc                                          ; $5e12: $c5
	ld a, a                                          ; $5e13: $7f
	ld b, l                                          ; $5e14: $45
	ld a, a                                          ; $5e15: $7f
	di                                               ; $5e16: $f3
	ld a, e                                          ; $5e17: $7b
	jr c, jr_04c_5e95                                ; $5e18: $38 $7b

	dec a                                            ; $5e1a: $3d
	ld a, e                                          ; $5e1b: $7b
	ld e, h                                          ; $5e1c: $5c
	db $fd                                           ; $5e1d: $fd
	ld a, [hl]                                       ; $5e1e: $7e
	and l                                            ; $5e1f: $a5
	sbc [hl]                                         ; $5e20: $9e
	sbc a                                            ; $5e21: $9f
	db $fc                                           ; $5e22: $fc
	sbc h                                            ; $5e23: $9c
	ld [hl], b                                       ; $5e24: $70
	db $fc                                           ; $5e25: $fc
	ld b, $79                                        ; $5e26: $06 $79
	adc b                                            ; $5e28: $88
	sbc e                                            ; $5e29: $9b
	ld a, [bc]                                       ; $5e2a: $0a
	rrca                                             ; $5e2b: $0f
	rrca                                             ; $5e2c: $0f
	ld bc, $197a                                     ; $5e2d: $01 $7a $19
	rst $38                                          ; $5e30: $ff
	sbc l                                            ; $5e31: $9d
	ld [$7a07], sp                                   ; $5e32: $08 $07 $7a
	ld h, a                                          ; $5e35: $67
	ld a, b                                          ; $5e36: $78

jr_04c_5e37:
	ld [hl], e                                       ; $5e37: $73
	sbc $ff                                          ; $5e38: $de $ff
	ld h, d                                          ; $5e3a: $62
	ld e, d                                          ; $5e3b: $5a
	ld a, h                                          ; $5e3c: $7c
	add [hl]                                         ; $5e3d: $86
	call c, Call_04c_63ff                            ; $5e3e: $dc $ff $63
	ldh a, [$9e]                                     ; $5e41: $f0 $9e
	rst SubAFromBC                                          ; $5e43: $e7
	jp c, $6fff                                      ; $5e44: $da $ff $6f

	ldh a, [hDisp1_SCY]                                     ; $5e47: $f0 $90
	rrca                                             ; $5e49: $0f
	ld a, a                                          ; $5e4a: $7f
	rst $38                                          ; $5e4b: $ff
	cp $f8                                           ; $5e4c: $fe $f8
	ldh a, [$c0]                                     ; $5e4e: $f0 $c0
	ret nz                                           ; $5e50: $c0

	ldh a, [$f0]                                     ; $5e51: $f0 $f0
	ld b, $1c                                        ; $5e53: $06 $1c
	jr nc, jr_04c_5e37                               ; $5e55: $30 $e0

	add b                                            ; $5e57: $80
	ld a, c                                          ; $5e58: $79
	adc [hl]                                         ; $5e59: $8e
	pop af                                           ; $5e5a: $f1
	sbc e                                            ; $5e5b: $9b
	rrca                                             ; $5e5c: $0f
	ld c, $1c                                        ; $5e5d: $0e $1c
	ld e, $7a                                        ; $5e5f: $1e $7a
	ld h, $7e                                        ; $5e61: $26 $7e
	db $db                                           ; $5e63: $db
	sbc [hl]                                         ; $5e64: $9e
	inc c                                            ; $5e65: $0c
	sbc $08                                          ; $5e66: $de $08
	sub d                                            ; $5e68: $92
	inc c                                            ; $5e69: $0c
	ld b, $01                                        ; $5e6a: $06 $01
	db $fc                                           ; $5e6c: $fc
	ld a, h                                          ; $5e6d: $7c
	ld a, $7e                                        ; $5e6e: $3e $7e
	cp $fc                                           ; $5e70: $fe $fc
	db $fc                                           ; $5e72: $fc
	ldh a, [rAUD2LOW]                                ; $5e73: $f0 $18
	inc c                                            ; $5e75: $0c
	sbc $04                                          ; $5e76: $de $04
	ld a, l                                          ; $5e78: $7d
	ld l, h                                          ; $5e79: $6c
	ld a, a                                          ; $5e7a: $7f
	ret nc                                           ; $5e7b: $d0

	sbc b                                            ; $5e7c: $98
	dec d                                            ; $5e7d: $15
	dec bc                                           ; $5e7e: $0b

Call_04c_5e7f:
	rla                                              ; $5e7f: $17
	dec c                                            ; $5e80: $0d
	rla                                              ; $5e81: $17
	dec l                                            ; $5e82: $2d
	dec de                                           ; $5e83: $1b
	ld d, l                                          ; $5e84: $55
	halt                                             ; $5e85: $76
	rst SubAFromDE                                          ; $5e86: $df
	rst $38                                          ; $5e87: $ff
	sbc [hl]                                         ; $5e88: $9e
	cp a                                             ; $5e89: $bf
	ld [hl], d                                       ; $5e8a: $72
	db $10                                           ; $5e8b: $10
	db $dd                                           ; $5e8c: $dd
	rst $38                                          ; $5e8d: $ff
	ld [hl], l                                       ; $5e8e: $75
	cp a                                             ; $5e8f: $bf
	ld h, e                                          ; $5e90: $63
	sub c                                            ; $5e91: $91
	sbc $ff                                          ; $5e92: $de $ff
	sbc [hl]                                         ; $5e94: $9e

jr_04c_5e95:
	cp a                                             ; $5e95: $bf
	ld l, a                                          ; $5e96: $6f
	ld hl, sp-$62                                    ; $5e97: $f8 $9e
	ld a, [bc]                                       ; $5e99: $0a
	ld l, e                                          ; $5e9a: $6b
	ldh a, [$9d]                                     ; $5e9b: $f0 $9d
	push af                                          ; $5e9d: $f5
	rst FarCall                                          ; $5e9e: $f7
	ld l, a                                          ; $5e9f: $6f
	ld hl, sp-$62                                    ; $5ea0: $f8 $9e
	xor d                                            ; $5ea2: $aa
	ld l, e                                          ; $5ea3: $6b
	ldh a, [$9d]                                     ; $5ea4: $f0 $9d
	ld d, l                                          ; $5ea6: $55
	ld b, c                                          ; $5ea7: $41
	ld c, e                                          ; $5ea8: $4b
	ldh a, [rPCM12]                                  ; $5ea9: $f0 $76
	ld c, c                                          ; $5eab: $49
	sbc $ff                                          ; $5eac: $de $ff
	sbc [hl]                                         ; $5eae: $9e
	push bc                                          ; $5eaf: $c5
	ld l, e                                          ; $5eb0: $6b
	ldh a, [$9e]                                     ; $5eb1: $f0 $9e
	ld a, [hl-]                                      ; $5eb3: $3a
	halt                                             ; $5eb4: $76
	rst $38                                          ; $5eb5: $ff
	sbc $ff                                          ; $5eb6: $de $ff
	ld a, l                                          ; $5eb8: $7d
	sub $6f                                          ; $5eb9: $d6 $6f
	ld hl, sp-$63                                    ; $5ebb: $f8 $9d
	cp a                                             ; $5ebd: $bf
	db $ec                                           ; $5ebe: $ec
	ld l, a                                          ; $5ebf: $6f
	ld hl, sp-$62                                    ; $5ec0: $f8 $9e
	ld [bc], a                                       ; $5ec2: $02
	ld h, a                                          ; $5ec3: $67
	and b                                            ; $5ec4: $a0
	ld [hl], d                                       ; $5ec5: $72
	pop hl                                           ; $5ec6: $e1
	ld a, a                                          ; $5ec7: $7f
	dec l                                            ; $5ec8: $2d
	sbc [hl]                                         ; $5ec9: $9e
	xor h                                            ; $5eca: $ac
	ld l, a                                          ; $5ecb: $6f
	ld hl, sp-$70                                    ; $5ecc: $f8 $90
	ld hl, sp+$58                                    ; $5ece: $f8 $58
	rlca                                             ; $5ed0: $07
	adc a                                            ; $5ed1: $8f
	rst GetHLinHL                                          ; $5ed2: $cf
	rst JumpTable                                          ; $5ed3: $c7
	ld b, a                                          ; $5ed4: $47
	db $e3                                           ; $5ed5: $e3
	ld h, b                                          ; $5ed6: $60
	ldh [rTMA], a                                    ; $5ed7: $e0 $06
	inc b                                            ; $5ed9: $04
	inc b                                            ; $5eda: $04
	ld b, [hl]                                       ; $5edb: $46
	ld b, e                                          ; $5edc: $43
	ld a, d                                          ; $5edd: $7a
	reti                                             ; $5ede: $d9


	rst SubAFromDE                                          ; $5edf: $df

jr_04c_5ee0:
	rrca                                             ; $5ee0: $0f
	sbc l                                            ; $5ee1: $9d
	sbc a                                            ; $5ee2: $9f
	rst $38                                          ; $5ee3: $ff
	ld a, e                                          ; $5ee4: $7b
	inc c                                            ; $5ee5: $0c
	ld a, [hl]                                       ; $5ee6: $7e
	xor [hl]                                         ; $5ee7: $ae
	rst SubAFromDE                                          ; $5ee8: $df
	ld bc, $2c7f                                     ; $5ee9: $01 $7f $2c
	sbc l                                            ; $5eec: $9d
	db $fc                                           ; $5eed: $fc
	ld [hl], b                                       ; $5eee: $70
	ld [hl], l                                       ; $5eef: $75
	ld l, h                                          ; $5ef0: $6c
	db $e4                                           ; $5ef1: $e4
	ld a, [hl]                                       ; $5ef2: $7e
	add [hl]                                         ; $5ef3: $86

Call_04c_5ef4:
	ld a, a                                          ; $5ef4: $7f
	ld [bc], a                                       ; $5ef5: $02
	sub e                                            ; $5ef6: $93
	rra                                              ; $5ef7: $1f
	ccf                                              ; $5ef8: $3f
	ld a, $3f                                        ; $5ef9: $3e $3f
	ld bc, $0703                                     ; $5efb: $01 $03 $07
	jr @+$1a                                         ; $5efe: $18 $18

	db $10                                           ; $5f00: $10
	db $10                                           ; $5f01: $10
	jr nc, jr_04c_5ee0                               ; $5f02: $30 $dc

	rst $38                                          ; $5f04: $ff
	sbc h                                            ; $5f05: $9c
	ld a, a                                          ; $5f06: $7f
	sub a                                            ; $5f07: $97
	ld a, a                                          ; $5f08: $7f
	ld a, c                                          ; $5f09: $79
	and [hl]                                         ; $5f0a: $a6
	ld h, l                                          ; $5f0b: $65
	cp a                                             ; $5f0c: $bf
	ld e, d                                          ; $5f0d: $5a
	sbc a                                            ; $5f0e: $9f
	ld [hl], b                                       ; $5f0f: $70
	add sp, -$66                                     ; $5f10: $e8 $9a
	rst $38                                          ; $5f12: $ff
	ei                                               ; $5f13: $fb
	ei                                               ; $5f14: $fb
	db $fd                                           ; $5f15: $fd
	db $dd                                           ; $5f16: $dd
	cp $9e                                           ; $5f17: $fe $9e
	ld [bc], a                                       ; $5f19: $02
	ld a, e                                          ; $5f1a: $7b
	sbc h                                            ; $5f1b: $9c
	ld [hl], e                                       ; $5f1c: $73
	and e                                            ; $5f1d: $a3
	ld a, [hl]                                       ; $5f1e: $7e
	xor b                                            ; $5f1f: $a8
	rst SubAFromDE                                          ; $5f20: $df
	ret nz                                           ; $5f21: $c0

	ld l, c                                          ; $5f22: $69
	nop                                              ; $5f23: $00
	ld b, b                                          ; $5f24: $40
	ld b, b                                          ; $5f25: $40
	sub a                                            ; $5f26: $97
	dec a                                            ; $5f27: $3d
	dec de                                           ; $5f28: $1b
	ccf                                              ; $5f29: $3f
	ld a, e                                          ; $5f2a: $7b
	scf                                              ; $5f2b: $37
	ld a, a                                          ; $5f2c: $7f
	scf                                              ; $5f2d: $37
	ld a, a                                          ; $5f2e: $7f
	sbc $01                                          ; $5f2f: $de $01
	db $dd                                           ; $5f31: $dd
	inc bc                                           ; $5f32: $03
	sub [hl]                                         ; $5f33: $96
	rlca                                             ; $5f34: $07
	xor d                                            ; $5f35: $aa
	push bc                                          ; $5f36: $c5
	xor d                                            ; $5f37: $aa
	ld b, h                                          ; $5f38: $44
	ret z                                            ; $5f39: $c8

	ld b, b                                          ; $5f3a: $40
	add b                                            ; $5f3b: $80
	ret nc                                           ; $5f3c: $d0

	jp c, $96ff                                      ; $5f3d: $da $ff $96

	rst AddAOntoHL                                          ; $5f40: $ef
	xor d                                            ; $5f41: $aa
	ld d, b                                          ; $5f42: $50
	add b                                            ; $5f43: $80
	nop                                              ; $5f44: $00
	ld a, [bc]                                       ; $5f45: $0a
	dec d                                            ; $5f46: $15
	ld a, [hl+]                                      ; $5f47: $2a
	ld d, l                                          ; $5f48: $55
	db $dd                                           ; $5f49: $dd
	rst $38                                          ; $5f4a: $ff
	adc a                                            ; $5f4b: $8f
	push af                                          ; $5f4c: $f5
	ld [$abd5], a                                    ; $5f4d: $ea $d5 $ab
	ld bc, $1b06                                     ; $5f50: $01 $06 $1b
	ld c, a                                          ; $5f53: $4f
	cp l                                             ; $5f54: $bd
	ld l, [hl]                                       ; $5f55: $6e
	push de                                          ; $5f56: $d5
	ld a, [hl+]                                      ; $5f57: $2a
	cp $f9                                           ; $5f58: $fe $f9
	rst SubAFromBC                                          ; $5f5a: $e7
	cp a                                             ; $5f5b: $bf
	halt                                             ; $5f5c: $76
	rla                                              ; $5f5d: $17
	sub a                                            ; $5f5e: $97
	ld b, c                                          ; $5f5f: $41
	ld a, a                                          ; $5f60: $7f
	ld a, [$ef75]                                    ; $5f61: $fa $75 $ef
	rst $38                                          ; $5f64: $ff
	ld d, l                                          ; $5f65: $55
	xor d                                            ; $5f66: $aa
	ld a, b                                          ; $5f67: $78
	cp d                                             ; $5f68: $ba
	call c, $97ff                                    ; $5f69: $dc $ff $97
	ld e, b                                          ; $5f6c: $58
	rst $38                                          ; $5f6d: $ff
	xor d                                            ; $5f6e: $aa
	ld d, l                                          ; $5f6f: $55
	ei                                               ; $5f70: $fb

jr_04c_5f71:
	ld b, e                                          ; $5f71: $43
	ld d, l                                          ; $5f72: $55
	xor d                                            ; $5f73: $aa
	reti                                             ; $5f74: $d9


	rst $38                                          ; $5f75: $ff
	sbc d                                            ; $5f76: $9a
	db $10                                           ; $5f77: $10
	db $f4                                           ; $5f78: $f4
	cp $77                                           ; $5f79: $fe $77
	cp l                                             ; $5f7b: $bd
	ld a, e                                          ; $5f7c: $7b
	ldh [$9d], a                                     ; $5f7d: $e0 $9d
	rst AddAOntoHL                                          ; $5f7f: $ef
	ei                                               ; $5f80: $fb
	db $db                                           ; $5f81: $db
	rst $38                                          ; $5f82: $ff
	ld a, [hl]                                       ; $5f83: $7e
	db $fd                                           ; $5f84: $fd
	sbc c                                            ; $5f85: $99
	ld b, b                                          ; $5f86: $40
	sub b                                            ; $5f87: $90
	db $ec                                           ; $5f88: $ec
	cp d                                             ; $5f89: $ba
	ld e, l                                          ; $5f8a: $5d
	xor [hl]                                         ; $5f8b: $ae
	ld a, d                                          ; $5f8c: $7a
	push bc                                          ; $5f8d: $c5
	sbc b                                            ; $5f8e: $98
	rst AddAOntoHL                                          ; $5f8f: $ef
	di                                               ; $5f90: $f3
	db $fd                                           ; $5f91: $fd
	cp $ff                                           ; $5f92: $fe $ff
	xor e                                            ; $5f94: $ab
	inc b                                            ; $5f95: $04
	halt                                             ; $5f96: $76
	push bc                                          ; $5f97: $c5
	sbc h                                            ; $5f98: $9c
	add b                                            ; $5f99: $80
	ld b, b                                          ; $5f9a: $40
	cp $6f                                           ; $5f9b: $fe $6f
	daa                                              ; $5f9d: $27
	adc l                                            ; $5f9e: $8d
	cp a                                             ; $5f9f: $bf
	ld c, h                                          ; $5fa0: $4c
	xor h                                            ; $5fa1: $ac
	ld c, h                                          ; $5fa2: $4c
	and b                                            ; $5fa3: $a0
	ld d, d                                          ; $5fa4: $52

jr_04c_5fa5:
	and d                                            ; $5fa5: $a2
	ld d, d                                          ; $5fa6: $52
	ld [hl+], a                                      ; $5fa7: $22
	cp b                                             ; $5fa8: $b8
	ld e, b                                          ; $5fa9: $58
	cp b                                             ; $5faa: $b8
	ld e, h                                          ; $5fab: $5c
	xor h                                            ; $5fac: $ac
	ld e, h                                          ; $5fad: $5c
	xor h                                            ; $5fae: $ac
	call c, $de60                                    ; $5faf: $dc $60 $de
	ldh a, [$99]                                     ; $5fb2: $f0 $99
	or b                                             ; $5fb4: $b0
	ldh a, [$f8]                                     ; $5fb5: $f0 $f8
	ld e, b                                          ; $5fb7: $58
	jr nz, jr_04c_5fda                               ; $5fb8: $20 $20

	push af                                          ; $5fba: $f5
	ld h, b                                          ; $5fbb: $60
	dec sp                                           ; $5fbc: $3b
	ld a, e                                          ; $5fbd: $7b
	ld hl, sp-$67                                    ; $5fbe: $f8 $99
	rla                                              ; $5fc0: $17
	rst AddAOntoHL                                          ; $5fc1: $ef
	rst AddAOntoHL                                          ; $5fc2: $ef
	rst SubAFromDE                                          ; $5fc3: $df
	rst $38                                          ; $5fc4: $ff
	rst SubAFromDE                                          ; $5fc5: $df
	cp $9e                                           ; $5fc6: $fe $9e
	ld b, b                                          ; $5fc8: $40
	ld [hl], l                                       ; $5fc9: $75
	ld e, h                                          ; $5fca: $5c
	ld l, d                                          ; $5fcb: $6a
	pop af                                           ; $5fcc: $f1
	ld h, [hl]                                       ; $5fcd: $66
	ldh a, [$7c]                                     ; $5fce: $f0 $7c
	cp b                                             ; $5fd0: $b8
	sbc h                                            ; $5fd1: $9c
	ccf                                              ; $5fd2: $3f
	cp $ff                                           ; $5fd3: $fe $ff
	ld [hl], a                                       ; $5fd5: $77
	and h                                            ; $5fd6: $a4
	db $dd                                           ; $5fd7: $dd
	jr nc, @-$1f                                     ; $5fd8: $30 $df

jr_04c_5fda:
	jr jr_04c_5f71                                   ; $5fda: $18 $95

	inc c                                            ; $5fdc: $0c
	ld c, $bf                                        ; $5fdd: $0e $bf
	ld a, a                                          ; $5fdf: $7f
	xor a                                            ; $5fe0: $af
	ld d, a                                          ; $5fe1: $57
	xor e                                            ; $5fe2: $ab
	ld d, l                                          ; $5fe3: $55
	xor d                                            ; $5fe4: $aa
	push af                                          ; $5fe5: $f5
	ld sp, hl                                        ; $5fe6: $f9
	ld a, d                                          ; $5fe7: $7a
	dec e                                            ; $5fe8: $1d
	sbc d                                            ; $5fe9: $9a
	xor e                                            ; $5fea: $ab
	rst $38                                          ; $5feb: $ff
	ld hl, sp-$08                                    ; $5fec: $f8 $f8
	add sp, -$25                                     ; $5fee: $e8 $db
	rst $38                                          ; $5ff0: $ff
	rst SubAFromDE                                          ; $5ff1: $df
	ldh a, [hDisp1_WX]                                     ; $5ff2: $f0 $96
	xor d                                            ; $5ff4: $aa
	push de                                          ; $5ff5: $d5
	ld [$e2f5], a                                    ; $5ff6: $ea $f5 $e2
	push af                                          ; $5ff9: $f5
	xor d                                            ; $5ffa: $aa
	ld d, l                                          ; $5ffb: $55
	ret nz                                           ; $5ffc: $c0

	ld a, c                                          ; $5ffd: $79
	ld [hl], h                                       ; $5ffe: $74
	sbc [hl]                                         ; $5fff: $9e
	ldh [$78], a                                     ; $6000: $e0 $78
	ld e, d                                          ; $6002: $5a
	ld a, e                                          ; $6003: $7b
	ei                                               ; $6004: $fb
	sbc b                                            ; $6005: $98
	ld [hl], b                                       ; $6006: $70
	ld a, b                                          ; $6007: $78
	ld hl, sp-$48                                    ; $6008: $f8 $b8
	cp h                                             ; $600a: $bc
	ret nz                                           ; $600b: $c0

	ret nz                                           ; $600c: $c0

	sbc $60                                          ; $600d: $de $60
	sbc $30                                          ; $600f: $de $30
	ld h, e                                          ; $6011: $63
	adc c                                            ; $6012: $89
	ld a, [$0797]                                    ; $6013: $fa $97 $07
	inc bc                                           ; $6016: $03
	ld b, $0f                                        ; $6017: $06 $0f
	ld c, $0d                                        ; $6019: $0e $0d
	ld b, $0d                                        ; $601b: $06 $0d
	db $db                                           ; $601d: $db
	rlca                                             ; $601e: $07
	rst SubAFromDE                                          ; $601f: $df
	rrca                                             ; $6020: $0f
	add h                                            ; $6021: $84
	add b                                            ; $6022: $80
	jr nz, jr_04c_5fa5                               ; $6023: $20 $80

	ld hl, $4182                                     ; $6025: $21 $82 $41
	ld [bc], a                                       ; $6028: $02
	dec b                                            ; $6029: $05
	rst $38                                          ; $602a: $ff
	rst SubAFromDE                                          ; $602b: $df
	rst $38                                          ; $602c: $ff
	sbc $fd                                          ; $602d: $de $fd
	cp [hl]                                          ; $602f: $be
	db $fd                                           ; $6030: $fd
	ld a, [$572b]                                    ; $6031: $fa $2b $57
	xor a                                            ; $6034: $af
	ld e, e                                          ; $6035: $5b
	or l                                             ; $6036: $b5
	ld a, e                                          ; $6037: $7b
	rst $38                                          ; $6038: $ff
	db $eb                                           ; $6039: $eb
	rst SubAFromHL                                          ; $603a: $d7
	xor a                                            ; $603b: $af
	ld e, a                                          ; $603c: $5f
	halt                                             ; $603d: $76
	ret nc                                           ; $603e: $d0

	sub [hl]                                         ; $603f: $96

Jump_04c_6040:
	rst SubAFromDE                                          ; $6040: $df
	ld e, l                                          ; $6041: $5d
	cp d                                             ; $6042: $ba
	ld [hl], h                                       ; $6043: $74
	xor a                                            ; $6044: $af
	ld a, a                                          ; $6045: $7f
	xor l                                            ; $6046: $ad
	ld [hl], a                                       ; $6047: $77
	or b                                             ; $6048: $b0
	db $dd                                           ; $6049: $dd
	rst $38                                          ; $604a: $ff
	sub e                                            ; $604b: $93
	db $fd                                           ; $604c: $fd
	ld sp, hl                                        ; $604d: $f9
	db $fc                                           ; $604e: $fc
	ld hl, sp+$50                                    ; $604f: $f8 $50
	and b                                            ; $6051: $a0
	ld h, b                                          ; $6052: $60
	nop                                              ; $6053: $00
	ld hl, $a3c0                                     ; $6054: $21 $c0 $a3
	ret nz                                           ; $6057: $c0

	db $dd                                           ; $6058: $dd
	rst $38                                          ; $6059: $ff
	sub e                                            ; $605a: $93
	cp $bf                                           ; $605b: $fe $bf
	db $fc                                           ; $605d: $fc
	ld a, a                                          ; $605e: $7f
	nop                                              ; $605f: $00
	jr nz, jr_04c_6062                               ; $6060: $20 $00

jr_04c_6062:
	jr nc, jr_04c_6064                               ; $6062: $30 $00

jr_04c_6064:
	or b                                             ; $6064: $b0
	ld c, b                                          ; $6065: $48
	or h                                             ; $6066: $b4
	halt                                             ; $6067: $76
	add h                                            ; $6068: $84
	sub e                                            ; $6069: $93
	rst $38                                          ; $606a: $ff
	ld l, a                                          ; $606b: $6f
	or a                                             ; $606c: $b7
	ld l, e                                          ; $606d: $6b
	rst $38                                          ; $606e: $ff
	xor e                                            ; $606f: $ab
	ld d, a                                          ; $6070: $57
	dec hl                                           ; $6071: $2b
	dec d                                            ; $6072: $15
	dec hl                                           ; $6073: $2b
	dec d                                            ; $6074: $15
	inc hl                                           ; $6075: $23
	reti                                             ; $6076: $d9


	rst $38                                          ; $6077: $ff
	sub a                                            ; $6078: $97
	rst SubAFromHL                                          ; $6079: $d7
	db $eb                                           ; $607a: $eb
	db $fd                                           ; $607b: $fd
	xor $fd                                          ; $607c: $ee $fd
	ld a, [$6efd]                                    ; $607e: $fa $fd $6e
	jp c, $80ff                                      ; $6081: $da $ff $80

	sbc a                                            ; $6084: $9f
	and b                                            ; $6085: $a0

jr_04c_6086:
	and b                                            ; $6086: $a0
	ret nc                                           ; $6087: $d0

	add sp, -$0c                                     ; $6088: $e8 $f4
	add sp, -$0c                                     ; $608a: $e8 $f4
	cp d                                             ; $608c: $ba
	rst SubAFromDE                                          ; $608d: $df
	rst SubAFromDE                                          ; $608e: $df
	rst AddAOntoHL                                          ; $608f: $ef
	rst FarCall                                          ; $6090: $f7
	db $eb                                           ; $6091: $eb
	rst FarCall                                          ; $6092: $f7
	ei                                               ; $6093: $fb
	push af                                          ; $6094: $f5
	ld d, d                                          ; $6095: $52
	jr z, jr_04c_60e9                                ; $6096: $28 $51

	add hl, hl                                       ; $6098: $29
	rla                                              ; $6099: $17
	cpl                                              ; $609a: $2f
	rra                                              ; $609b: $1f
	inc hl                                           ; $609c: $23
	xor h                                            ; $609d: $ac
	sub $ae                                          ; $609e: $d6 $ae
	sub $ef                                          ; $60a0: $d6 $ef
	db $db                                           ; $60a2: $db
	ld a, a                                          ; $60a3: $7f
	sub b                                            ; $60a4: $90
	sbc [hl]                                         ; $60a5: $9e
	jr jr_04c_6086                                   ; $60a6: $18 $de

	ld [$cc9b], sp                                   ; $60a8: $08 $9b $cc
	db $ec                                           ; $60ab: $ec
	db $f4                                           ; $60ac: $f4
	db $e4                                           ; $60ad: $e4
	ld [hl], d                                       ; $60ae: $72
	ld bc, $e0de                                     ; $60af: $01 $de $e0
	sub a                                            ; $60b2: $97
	ld b, c                                          ; $60b3: $41
	add e                                            ; $60b4: $83
	ld d, e                                          ; $60b5: $53
	and e                                            ; $60b6: $a3
	ld d, a                                          ; $60b7: $57
	and [hl]                                         ; $60b8: $a6
	ld b, a                                          ; $60b9: $47
	xor [hl]                                         ; $60ba: $ae
	halt                                             ; $60bb: $76
	ld de, $0292                                     ; $60bc: $11 $92 $02
	ld b, $06                                        ; $60bf: $06 $06
	inc b                                            ; $60c1: $04
	rla                                              ; $60c2: $17
	xor e                                            ; $60c3: $ab
	dec d                                            ; $60c4: $15
	cpl                                              ; $60c5: $2f
	ld d, a                                          ; $60c6: $57
	cp e                                             ; $60c7: $bb
	ld a, a                                          ; $60c8: $7f
	and a                                            ; $60c9: $a7
	add b                                            ; $60ca: $80
	halt                                             ; $60cb: $76
	ld bc, $3f7b                                     ; $60cc: $01 $7b $3f
	call c, $9dff                                    ; $60cf: $dc $ff $9d
	and b                                            ; $60d2: $a0
	add b                                            ; $60d3: $80
	ld l, d                                          ; $60d4: $6a
	cp d                                             ; $60d5: $ba
	rst SubAFromDE                                          ; $60d6: $df
	add b                                            ; $60d7: $80
	sub h                                            ; $60d8: $94
	db $fc                                           ; $60d9: $fc
	ld a, [$fafd]                                    ; $60da: $fa $fd $fa
	rst $38                                          ; $60dd: $ff
	inc d                                            ; $60de: $14
	inc bc                                           ; $60df: $03
	inc bc                                           ; $60e0: $03
	rst $38                                          ; $60e1: $ff
	db $fd                                           ; $60e2: $fd
	cp $7a                                           ; $60e3: $fe $7a
	ld d, d                                          ; $60e5: $52
	ld h, [hl]                                       ; $60e6: $66
	and d                                            ; $60e7: $a2
	adc e                                            ; $60e8: $8b

jr_04c_60e9:
	rst $38                                          ; $60e9: $ff
	db $fc                                           ; $60ea: $fc
	add b                                            ; $60eb: $80
	ldh [$f0], a                                     ; $60ec: $e0 $f0
	db $fc                                           ; $60ee: $fc
	rst FarCall                                          ; $60ef: $f7
	rst FarCall                                          ; $60f0: $f7
	jp hl                                            ; $60f1: $e9


	ld hl, sp-$28                                    ; $60f2: $f8 $d8
	ret c                                            ; $60f4: $d8

	db $fc                                           ; $60f5: $fc
	xor b                                            ; $60f6: $a8
	ret nz                                           ; $60f7: $c0

	ld a, l                                          ; $60f8: $7d
	rst $38                                          ; $60f9: $ff
	rst AddAOntoHL                                          ; $60fa: $ef
	ldh [$e0], a                                     ; $60fb: $e0 $e0
	ld a, d                                          ; $60fd: $7a
	add d                                            ; $60fe: $82
	sub h                                            ; $60ff: $94
	add d                                            ; $6100: $82
	nop                                              ; $6101: $00
	db $10                                           ; $6102: $10
	inc bc                                           ; $6103: $03
	inc bc                                           ; $6104: $03
	ld bc, $2a05                                     ; $6105: $01 $05 $2a
	ld d, h                                          ; $6108: $54
	ret nz                                           ; $6109: $c0

	pop af                                           ; $610a: $f1
	db $fd                                           ; $610b: $fd
	sbc [hl]                                         ; $610c: $9e
	inc d                                            ; $610d: $14
	ld a, b                                          ; $610e: $78
	cp d                                             ; $610f: $ba
	sbc h                                            ; $6110: $9c
	db $fc                                           ; $6111: $fc
	sbc $de                                          ; $6112: $de $de
	ld a, d                                          ; $6114: $7a
	add c                                            ; $6115: $81
	adc l                                            ; $6116: $8d
	ld a, a                                          ; $6117: $7f
	ld [hl], a                                       ; $6118: $77
	jr jr_04c_6133                                   ; $6119: $18 $18

	ld [$0c0c], sp                                   ; $611b: $08 $0c $0c
	ld b, $06                                        ; $611e: $06 $06
	rlca                                             ; $6120: $07
	add c                                            ; $6121: $81
	ld [bc], a                                       ; $6122: $02
	and c                                            ; $6123: $a1
	ld b, c                                          ; $6124: $41
	inc hl                                           ; $6125: $23
	ld [hl], e                                       ; $6126: $73
	or e                                             ; $6127: $b3
	or e                                             ; $6128: $b3
	ld sp, hl                                        ; $6129: $f9
	add b                                            ; $612a: $80
	ld a, [de]                                       ; $612b: $1a
	inc e                                            ; $612c: $1c
	ld a, [bc]                                       ; $612d: $0a
	dec c                                            ; $612e: $0d
	inc l                                            ; $612f: $2c
	ld [$0830], sp                                   ; $6130: $08 $30 $08

jr_04c_6133:
	rrca                                             ; $6133: $0f
	rrca                                             ; $6134: $0f
	rra                                              ; $6135: $1f
	ld e, $1f                                        ; $6136: $1e $1f
	ccf                                              ; $6138: $3f
	rra                                              ; $6139: $1f
	ccf                                              ; $613a: $3f
	ld bc, $0302                                     ; $613b: $01 $02 $03
	dec b                                            ; $613e: $05
	rlca                                             ; $613f: $07
	ld a, [bc]                                       ; $6140: $0a
	ld bc, $7500                                     ; $6141: $01 $00 $75
	ei                                               ; $6144: $fb
	cp $f2                                           ; $6145: $fe $f2
	db $eb                                           ; $6147: $eb
	rst SubAFromHL                                          ; $6148: $d7
	add hl, hl                                       ; $6149: $29
	sbc [hl]                                         ; $614a: $9e
	rst SubAFromHL                                          ; $614b: $d7
	reti                                             ; $614c: $d9


	rst $38                                          ; $614d: $ff
	adc a                                            ; $614e: $8f
	sbc a                                            ; $614f: $9f
	rrca                                             ; $6150: $0f
	rrca                                             ; $6151: $0f
	ld c, $2e                                        ; $6152: $0e $2e
	cpl                                              ; $6154: $2f
	inc b                                            ; $6155: $04
	ret nc                                           ; $6156: $d0

	ld e, b                                          ; $6157: $58
	xor b                                            ; $6158: $a8
	ld hl, sp-$04                                    ; $6159: $f8 $fc
	ld l, b                                          ; $615b: $68
	cp c                                             ; $615c: $b9
	ld h, b                                          ; $615d: $60
	xor a                                            ; $615e: $af
	sbc $f0                                          ; $615f: $de $f0
	adc b                                            ; $6161: $88
	di                                               ; $6162: $f3
	ldh a, [$50]                                     ; $6163: $f0 $50
	add hl, sp                                       ; $6165: $39
	ld d, b                                          ; $6166: $50
	ldh [$c0], a                                     ; $6167: $e0 $c0
	ldh [rLCDC], a                                   ; $6169: $e0 $40
	add sp, -$30                                     ; $616b: $e8 $d0
	ldh a, [$3f]                                     ; $616d: $f0 $3f
	ccf                                              ; $616f: $3f
	ld a, a                                          ; $6170: $7f
	ccf                                              ; $6171: $3f
	rst $38                                          ; $6172: $ff
	ld a, a                                          ; $6173: $7f
	rst $38                                          ; $6174: $ff
	sbc a                                            ; $6175: $9f
	sbc a                                            ; $6176: $9f
	ld a, [bc]                                       ; $6177: $0a
	inc [hl]                                         ; $6178: $34
	ld a, d                                          ; $6179: $7a
	cp [hl]                                          ; $617a: $be
	ld a, a                                          ; $617b: $7f
	cp $7d                                           ; $617c: $fe $7d
	ld d, h                                          ; $617e: $54
	sbc [hl]                                         ; $617f: $9e
	db $eb                                           ; $6180: $eb
	db $db                                           ; $6181: $db
	rst $38                                          ; $6182: $ff
	sbc b                                            ; $6183: $98
	inc bc                                           ; $6184: $03
	inc hl                                           ; $6185: $23
	rla                                              ; $6186: $17
	dec hl                                           ; $6187: $2b
	inc d                                            ; $6188: $14
	jr nz, @+$1a                                     ; $6189: $20 $18

	ld [hl], l                                       ; $618b: $75
	add d                                            ; $618c: $82
	add c                                            ; $618d: $81
	db $fc                                           ; $618e: $fc
	ld sp, hl                                        ; $618f: $f9
	ld hl, sp-$10                                    ; $6190: $f8 $f0
	ldh a, [$9c]                                     ; $6192: $f0 $9c
	cp h                                             ; $6194: $bc
	cp h                                             ; $6195: $bc
	ld l, h                                          ; $6196: $6c
	db $fc                                           ; $6197: $fc
	ld h, b                                          ; $6198: $60
	ld b, $1b                                        ; $6199: $06 $1b
	rra                                              ; $619b: $1f
	sbc a                                            ; $619c: $9f
	rrca                                             ; $619d: $0f
	rlca                                             ; $619e: $07
	inc hl                                           ; $619f: $23
	rlca                                             ; $61a0: $07
	add hl, bc                                       ; $61a1: $09
	ld bc, $dbf4                                     ; $61a2: $01 $f4 $db
	push af                                          ; $61a5: $f5
	jp c, $de79                                      ; $61a6: $da $79 $de

	dec a                                            ; $61a9: $3d
	and d                                            ; $61aa: $a2
	ei                                               ; $61ab: $fb
	ld a, e                                          ; $61ac: $7b
	rla                                              ; $61ad: $17
	ld a, e                                          ; $61ae: $7b
	ld e, $91                                        ; $61af: $1e $91
	ld e, l                                          ; $61b1: $5d
	ld bc, $0107                                     ; $61b2: $01 $07 $01
	dec bc                                           ; $61b5: $0b
	jr c, @+$72                                      ; $61b6: $38 $70

	ld a, b                                          ; $61b8: $78
	ld e, a                                          ; $61b9: $5f
	db $eb                                           ; $61ba: $eb
	pop de                                           ; $61bb: $d1
	ld [$f0fe], a                                    ; $61bc: $ea $fe $f0
	ld a, c                                          ; $61bf: $79
	ei                                               ; $61c0: $fb
	ld a, [hl]                                       ; $61c1: $7e
	sub d                                            ; $61c2: $92
	sbc c                                            ; $61c3: $99
	rst SubAFromHL                                          ; $61c4: $d7
	halt                                             ; $61c5: $76
	rst AddAOntoHL                                          ; $61c6: $ef
	db $f4                                           ; $61c7: $f4
	rst SubAFromBC                                          ; $61c8: $e7
	rrca                                             ; $61c9: $0f
	ld a, e                                          ; $61ca: $7b
	sbc b                                            ; $61cb: $98
	adc a                                            ; $61cc: $8f
	ld hl, sp+$1c                                    ; $61cd: $f8 $1c
	ld c, $1e                                        ; $61cf: $0e $1e
	cp $4f                                           ; $61d1: $fe $4f
	xor l                                            ; $61d3: $ad
	ld e, l                                          ; $61d4: $5d
	cp a                                             ; $61d5: $bf
	ld a, a                                          ; $61d6: $7f
	cp a                                             ; $61d7: $bf
	rst $38                                          ; $61d8: $ff
	rst FarCall                                          ; $61d9: $f7
	inc c                                            ; $61da: $0c
	inc c                                            ; $61db: $0c
	ld [$706c], sp                                   ; $61dc: $08 $6c $70
	sbc b                                            ; $61df: $98
	ld a, [hl]                                       ; $61e0: $7e
	rst AddAOntoHL                                          ; $61e1: $ef
	rst $38                                          ; $61e2: $ff
	cp $df                                           ; $61e3: $fe $df
	db $ed                                           ; $61e5: $ed
	ei                                               ; $61e6: $fb
	ld [hl], e                                       ; $61e7: $73
	ld b, b                                          ; $61e8: $40
	rst SubAFromDE                                          ; $61e9: $df
	ld a, $9e                                        ; $61ea: $3e $9e
	inc a                                            ; $61ec: $3c
	ld [hl], c                                       ; $61ed: $71
	inc e                                            ; $61ee: $1c
	halt                                             ; $61ef: $76
	add $68                                          ; $61f0: $c6 $68
	ld [hl], d                                       ; $61f2: $72
	ld a, a                                          ; $61f3: $7f
	add a                                            ; $61f4: $87
	sbc [hl]                                         ; $61f5: $9e
	call Call_04c_4a76                               ; $61f6: $cd $76 $4a
	ld a, a                                          ; $61f9: $7f
	db $ec                                           ; $61fa: $ec
	ld a, c                                          ; $61fb: $79
	call Call_04c_5e7f                               ; $61fc: $cd $7f $5e
	rst SubAFromDE                                          ; $61ff: $df
	inc bc                                           ; $6200: $03
	add b                                            ; $6201: $80
	call nc, $56ae                                   ; $6202: $d4 $ae $56
	cp a                                             ; $6205: $bf
	ld d, a                                          ; $6206: $57
	xor $55                                          ; $6207: $ee $55
	rst AddAOntoHL                                          ; $6209: $ef
	jr z, jr_04c_6268                                ; $620a: $28 $5c

	xor h                                            ; $620c: $ac
	ld b, [hl]                                       ; $620d: $46
	xor [hl]                                         ; $620e: $ae
	rla                                              ; $620f: $17
	xor a                                            ; $6210: $af
	rla                                              ; $6211: $17
	rst SubAFromHL                                          ; $6212: $d7
	ld l, a                                          ; $6213: $6f
	rst SubAFromHL                                          ; $6214: $d7
	rst AddAOntoHL                                          ; $6215: $ef
	dec d                                            ; $6216: $15
	and e                                            ; $6217: $a3
	ld d, c                                          ; $6218: $51
	or d                                             ; $6219: $b2
	jr z, jr_04c_622c                                ; $621a: $28 $10

	jr z, jr_04c_622e                                ; $621c: $28 $10

	ldh [c], a                                       ; $621e: $e2
	call nc, $96a6                                   ; $621f: $d4 $a6 $96
	ld b, h                                          ; $6222: $44
	ld sp, hl                                        ; $6223: $f9
	rst FarCall                                          ; $6224: $f7
	and $e8                                          ; $6225: $e6 $e8
	ld hl, sp-$0e                                    ; $6227: $f8 $f2
	jp $fef3                                         ; $6229: $c3 $f3 $fe


jr_04c_622c:
	sbc $04                                          ; $622c: $de $04

jr_04c_622e:
	add l                                            ; $622e: $85
	inc h                                            ; $622f: $24
	inc b                                            ; $6230: $04
	or a                                             ; $6231: $b7
	cp e                                             ; $6232: $bb
	ei                                               ; $6233: $fb
	db $dd                                           ; $6234: $dd
	rst SubAFromDE                                          ; $6235: $df
	cp $fe                                           ; $6236: $fe $fe
	db $db                                           ; $6238: $db
	inc bc                                           ; $6239: $03
	inc de                                           ; $623a: $13
	ld de, $0909                                     ; $623b: $11 $09 $09
	ld [$0008], sp                                   ; $623e: $08 $08 $00
	rst FarCall                                          ; $6241: $f7
	or a                                             ; $6242: $b7
	or a                                             ; $6243: $b7
	rst FarCall                                          ; $6244: $f7
	rst FarCall                                          ; $6245: $f7
	or $ff                                           ; $6246: $f6 $ff
	or $78                                           ; $6248: $f6 $78
	inc [hl]                                         ; $624a: $34
	ld a, b                                          ; $624b: $78
	ld [hl-], a                                      ; $624c: $32
	add b                                            ; $624d: $80
	ret nz                                           ; $624e: $c0

	ld b, b                                          ; $624f: $40
	ld [hl-], a                                      ; $6250: $32
	inc b                                            ; $6251: $04
	ld b, d                                          ; $6252: $42
	ld d, h                                          ; $6253: $54
	ld l, d                                          ; $6254: $6a
	inc b                                            ; $6255: $04
	xor b                                            ; $6256: $a8
	sub h                                            ; $6257: $94
	dec e                                            ; $6258: $1d
	dec sp                                           ; $6259: $3b
	dec a                                            ; $625a: $3d
	dec sp                                           ; $625b: $3b
	dec [hl]                                         ; $625c: $35
	ld a, e                                          ; $625d: $7b
	ld [hl], a                                       ; $625e: $77
	ld l, e                                          ; $625f: $6b
	ld d, l                                          ; $6260: $55
	ld a, [hl+]                                      ; $6261: $2a
	ld d, l                                          ; $6262: $55
	and d                                            ; $6263: $a2
	dec b                                            ; $6264: $05
	ld a, [bc]                                       ; $6265: $0a
	cpl                                              ; $6266: $2f
	rst GetHLinHL                                          ; $6267: $cf

jr_04c_6268:
	xor e                                            ; $6268: $ab
	push de                                          ; $6269: $d5
	xor e                                            ; $626a: $ab
	ld e, l                                          ; $626b: $5d
	ei                                               ; $626c: $fb
	add b                                            ; $626d: $80
	push af                                          ; $626e: $f5
	ret nc                                           ; $626f: $d0

	ld bc, $bafe                                     ; $6270: $01 $fe $ba
	db $db                                           ; $6273: $db
	db $db                                           ; $6274: $db
	rst SubAFromDE                                          ; $6275: $df
	db $db                                           ; $6276: $db
	ret c                                            ; $6277: $d8

	cp h                                             ; $6278: $bc
	ld c, h                                          ; $6279: $4c
	ld c, [hl]                                       ; $627a: $4e
	ld l, $28                                        ; $627b: $2e $28
	ld [hl+], a                                      ; $627d: $22
	inc hl                                           ; $627e: $23
	jr z, jr_04c_6299                                ; $627f: $28 $18

	ld l, a                                          ; $6281: $6f
	ld [hl], d                                       ; $6282: $72
	xor $e6                                          ; $6283: $ee $e6
	rst AddAOntoHL                                          ; $6285: $ef
	rst AddAOntoHL                                          ; $6286: $ef
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	ld a, [hl-]                                      ; $6289: $3a
	ld a, b                                          ; $628a: $78
	jr nc, jr_04c_628d                               ; $628b: $30 $00

jr_04c_628d:
	sub e                                            ; $628d: $93
	halt                                             ; $628e: $76
	ld c, l                                          ; $628f: $4d
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	and b                                            ; $6292: $a0
	xor d                                            ; $6293: $aa
	ld d, l                                          ; $6294: $55
	add b                                            ; $6295: $80
	nop                                              ; $6296: $00
	db $fd                                           ; $6297: $fd
	rst $38                                          ; $6298: $ff

jr_04c_6299:
	ld [$5d78], sp                                   ; $6299: $08 $78 $5d
	ld a, e                                          ; $629c: $7b
	xor l                                            ; $629d: $ad
	cp $7f                                           ; $629e: $fe $7f
	ldh a, [rIE]                                     ; $62a0: $f0 $ff
	sbc h                                            ; $62a2: $9c
	ldh a, [c]                                       ; $62a3: $f2
	rst $38                                          ; $62a4: $ff
	ld h, c                                          ; $62a5: $61
	ld [hl], a                                       ; $62a6: $77
	ldh a, [$fd]                                     ; $62a7: $f0 $fd
	adc d                                            ; $62a9: $8a
	or e                                             ; $62aa: $b3
	dec d                                            ; $62ab: $15
	inc e                                            ; $62ac: $1c
	inc e                                            ; $62ad: $1c
	inc [hl]                                         ; $62ae: $34
	ld a, b                                          ; $62af: $78
	cpl                                              ; $62b0: $2f
	ld a, l                                          ; $62b1: $7d
	ldh a, [rHDMA2]                                  ; $62b2: $f0 $52
	or b                                             ; $62b4: $b0
	nop                                              ; $62b5: $00
	ld [$7c3c], sp                                   ; $62b6: $08 $3c $7c
	inc a                                            ; $62b9: $3c
	cp $9e                                           ; $62ba: $fe $9e
	ld c, $0f                                        ; $62bc: $0e $0f
	rrca                                             ; $62be: $0f
	ld a, d                                          ; $62bf: $7a
	sub l                                            ; $62c0: $95
	adc l                                            ; $62c1: $8d
	ei                                               ; $62c2: $fb
	dec bc                                           ; $62c3: $0b
	dec bc                                           ; $62c4: $0b
	ld b, $06                                        ; $62c5: $06 $06
	inc c                                            ; $62c7: $0c
	ld hl, sp+$70                                    ; $62c8: $f8 $70
	ld d, l                                          ; $62ca: $55
	xor b                                            ; $62cb: $a8
	ld d, l                                          ; $62cc: $55
	adc b                                            ; $62cd: $88
	ret nz                                           ; $62ce: $c0

	ccf                                              ; $62cf: $3f
	cp $e6                                           ; $62d0: $fe $e6
	xor d                                            ; $62d2: $aa
	ld d, a                                          ; $62d3: $57
	ld [hl], e                                       ; $62d4: $73
	ret nc                                           ; $62d5: $d0

	sub l                                            ; $62d6: $95
	ld bc, $d8cf                                     ; $62d7: $01 $cf $d8
	ret c                                            ; $62da: $d8

	add sp, -$58                                     ; $62db: $e8 $a8
	ret c                                            ; $62dd: $d8

	rst FarCall                                          ; $62de: $f7
	jr c, @-$06                                      ; $62df: $38 $f8

	ld a, b                                          ; $62e1: $78
	ld l, d                                          ; $62e2: $6a
	ld a, h                                          ; $62e3: $7c
	db $fd                                           ; $62e4: $fd
	ld a, [hl]                                       ; $62e5: $7e
	adc a                                            ; $62e6: $8f
	sub a                                            ; $62e7: $97
	ld a, [bc]                                       ; $62e8: $0a
	ei                                               ; $62e9: $fb
	ld sp, hl                                        ; $62ea: $f9
	ld sp, hl                                        ; $62eb: $f9
	sbc e                                            ; $62ec: $9b
	dec bc                                           ; $62ed: $0b
	ccf                                              ; $62ee: $3f
	rst AddAOntoHL                                          ; $62ef: $ef
	db $db                                           ; $62f0: $db
	rst $38                                          ; $62f1: $ff
	add b                                            ; $62f2: $80
	rst GetHLinHL                                          ; $62f3: $cf
	rra                                              ; $62f4: $1f
	cp $ec                                           ; $62f5: $fe $ec
	rst AddAOntoHL                                          ; $62f7: $ef
	ei                                               ; $62f8: $fb
	rst SubAFromDE                                          ; $62f9: $df
	rst SubAFromDE                                          ; $62fa: $df
	ei                                               ; $62fb: $fb
	ei                                               ; $62fc: $fb
	ld h, c                                          ; $62fd: $61
	ld h, e                                          ; $62fe: $63
	ld [hl+], a                                      ; $62ff: $22
	ld b, c                                          ; $6300: $41
	pop bc                                           ; $6301: $c1
	jp Jump_04c_4343                                 ; $6302: $c3 $43 $43


	xor a                                            ; $6305: $af
	ld a, e                                          ; $6306: $7b
	ld [hl], a                                       ; $6307: $77
	rst AddAOntoHL                                          ; $6308: $ef
	rst FarCall                                          ; $6309: $f7
	ld l, c                                          ; $630a: $69
	or l                                             ; $630b: $b5
	sub l                                            ; $630c: $95
	ld a, h                                          ; $630d: $7c
	db $fc                                           ; $630e: $fc
	ld hl, sp-$0c                                    ; $630f: $f8 $f4
	db $ec                                           ; $6311: $ec
	sbc h                                            ; $6312: $9c
	db $f4                                           ; $6313: $f4
	ld l, b                                          ; $6314: $68
	db $ec                                           ; $6315: $ec
	db $db                                           ; $6316: $db
	rst $38                                          ; $6317: $ff
	sbc [hl]                                         ; $6318: $9e
	di                                               ; $6319: $f3
	ld l, b                                          ; $631a: $68
	ld b, b                                          ; $631b: $40
	rst SubAFromDE                                          ; $631c: $df
	inc c                                            ; $631d: $0c
	reti                                             ; $631e: $d9


	rst $38                                          ; $631f: $ff
	ld [hl], c                                       ; $6320: $71
	ld h, d                                          ; $6321: $62
	sbc $07                                          ; $6322: $de $07
	add l                                            ; $6324: $85
	sub a                                            ; $6325: $97
	jp c, $aa7f                                      ; $6326: $da $7f $aa

	ld d, c                                          ; $6329: $51
	ld a, [hl+]                                      ; $632a: $2a
	ret z                                            ; $632b: $c8

	ld h, d                                          ; $632c: $62
	adc a                                            ; $632d: $8f
	add a                                            ; $632e: $87
	rst JumpTable                                          ; $632f: $c7
	rst FarCall                                          ; $6330: $f7
	rst $38                                          ; $6331: $ff
	rst $38                                          ; $6332: $ff
	scf                                              ; $6333: $37
	sbc a                                            ; $6334: $9f
	pop de                                           ; $6335: $d1
	and e                                            ; $6336: $a3
	ld [bc], a                                       ; $6337: $02
	nop                                              ; $6338: $00
	add d                                            ; $6339: $82
	ld [bc], a                                       ; $633a: $02
	nop                                              ; $633b: $00
	add b                                            ; $633c: $80
	ld h, $44                                        ; $633d: $26 $44
	call c, $9c04                                    ; $633f: $dc $04 $9c
	ld [hl], a                                       ; $6342: $77
	di                                               ; $6343: $f3
	ld d, e                                          ; $6344: $53
	ld l, h                                          ; $6345: $6c
	ld e, a                                          ; $6346: $5f
	sbc l                                            ; $6347: $9d
	inc b                                            ; $6348: $04

Call_04c_6349:
	and h                                            ; $6349: $a4
	call c, Call_04c_7b04                            ; $634a: $dc $04 $7b
	call c, $da9c                                    ; $634d: $dc $9c $da
	add hl, de                                       ; $6350: $19
	sbc $7a                                          ; $6351: $de $7a
	ld [bc], a                                       ; $6353: $02
	ld a, [hl]                                       ; $6354: $7e
	add $dc                                          ; $6355: $c6 $dc
	db $10                                           ; $6357: $10
	sbc e                                            ; $6358: $9b
	ret nc                                           ; $6359: $d0

	push af                                          ; $635a: $f5
	ld a, [$783f]                                    ; $635b: $fa $3f $78
	ld a, c                                          ; $635e: $79
	rst SubAFromDE                                          ; $635f: $df
	rst $38                                          ; $6360: $ff
	sbc $20                                          ; $6361: $de $20
	add l                                            ; $6363: $85
	inc sp                                           ; $6364: $33
	ld a, $3d                                        ; $6365: $3e $3d
	dec de                                           ; $6367: $1b
	ld [hl], d                                       ; $6368: $72
	ld hl, sp-$1a                                    ; $6369: $f8 $e6
	ld hl, sp-$10                                    ; $636b: $f8 $f0
	ccf                                              ; $636d: $3f
	add b                                            ; $636e: $80
	ld a, a                                          ; $636f: $7f
	nop                                              ; $6370: $00
	rst $38                                          ; $6371: $ff
	ld sp, hl                                        ; $6372: $f9
	rst $38                                          ; $6373: $ff
	rst $38                                          ; $6374: $ff
	ret nz                                           ; $6375: $c0

	rst $38                                          ; $6376: $ff
	add b                                            ; $6377: $80
	rst $38                                          ; $6378: $ff
	inc bc                                           ; $6379: $03
	dec b                                            ; $637a: $05
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	di                                               ; $637d: $f3
	ld a, d                                          ; $637e: $7a
	ld b, a                                          ; $637f: $47
	sbc [hl]                                         ; $6380: $9e
	rst $38                                          ; $6381: $ff
	ld a, e                                          ; $6382: $7b
	call z, $837f                                    ; $6383: $cc $7f $83
	ld a, a                                          ; $6386: $7f
	ld sp, hl                                        ; $6387: $f9
	sbc l                                            ; $6388: $9d
	cp a                                             ; $6389: $bf
	sbc h                                            ; $638a: $9c
	halt                                             ; $638b: $76
	add hl, sp                                       ; $638c: $39
	ld a, e                                          ; $638d: $7b
	cp $de                                           ; $638e: $fe $de
	rst $38                                          ; $6390: $ff
	ld [hl], e                                       ; $6391: $73
	rst FarCall                                          ; $6392: $f7
	cp $9e                                           ; $6393: $fe $9e
	sub a                                            ; $6395: $97
	ld l, e                                          ; $6396: $6b
	ldh a, [$9e]                                     ; $6397: $f0 $9e
	ld l, b                                          ; $6399: $68
	ld l, e                                          ; $639a: $6b
	ldh a, [$7b]                                     ; $639b: $f0 $7b
	ld sp, hl                                        ; $639d: $f9
	ld a, h                                          ; $639e: $7c
	cp $6f                                           ; $639f: $fe $6f
	ldh [$7c], a                                     ; $63a1: $e0 $7c
	cp $73                                           ; $63a3: $fe $73
	ldh a, [$9e]                                     ; $63a5: $f0 $9e
	cp $63                                           ; $63a7: $fe $63
	ret nc                                           ; $63a9: $d0

	sbc e                                            ; $63aa: $9b
	inc a                                            ; $63ab: $3c
	jr @+$03                                         ; $63ac: $18 $01

	ld bc, $037a                                     ; $63ae: $01 $7a $03
	ld a, a                                          ; $63b1: $7f
	db $fc                                           ; $63b2: $fc
	sbc [hl]                                         ; $63b3: $9e
	rst SubAFromBC                                          ; $63b4: $e7
	ld [hl], l                                       ; $63b5: $75
	add sp, $7f                                      ; $63b6: $e8 $7f
	cp $95                                           ; $63b8: $fe $95
	ld a, a                                          ; $63ba: $7f
	ld h, $40                                        ; $63bb: $26 $40
	db $ed                                           ; $63bd: $ed
	ldh [rLCDC], a                                   ; $63be: $e0 $40
	ldh a, [c]                                       ; $63c0: $f2
	ld l, d                                          ; $63c1: $6a
	jr nz, jr_04c_6404                               ; $63c2: $20 $40

	ld a, b                                          ; $63c4: $78
	rst GetHLinHL                                          ; $63c5: $cf
	sbc e                                            ; $63c6: $9b
	ldh [$cc], a                                     ; $63c7: $e0 $cc
	rst $38                                          ; $63c9: $ff
	inc bc                                           ; $63ca: $03
	ld a, c                                          ; $63cb: $79
	add sp, $7f                                      ; $63cc: $e8 $7f
	jp nc, $b69d                                     ; $63ce: $d2 $9d $b6

	add b                                            ; $63d1: $80
	ld l, l                                          ; $63d2: $6d
	ret z                                            ; $63d3: $c8

jr_04c_63d4:
	ld a, a                                          ; $63d4: $7f
	ret nc                                           ; $63d5: $d0

	adc h                                            ; $63d6: $8c
	ld h, b                                          ; $63d7: $60
	inc c                                            ; $63d8: $0c
	jp $a3e9                                         ; $63d9: $c3 $e9 $a3


	pop bc                                           ; $63dc: $c1
	and c                                            ; $63dd: $a1
	pop bc                                           ; $63de: $c1
	jr nc, jr_04c_63d4                               ; $63df: $30 $f3

	scf                                              ; $63e1: $37
	rla                                              ; $63e2: $17
	ld de, $1333                                     ; $63e3: $11 $33 $13
	inc sp                                           ; $63e6: $33
	ld h, $9a                                        ; $63e7: $26 $9a
	ldh a, [$de]                                     ; $63e9: $f0 $de
	rst $38                                          ; $63eb: $ff
	sub c                                            ; $63ec: $91
	db $eb                                           ; $63ed: $eb
	rst AddAOntoHL                                          ; $63ee: $ef
	rst SubAFromDE                                          ; $63ef: $df
	db $fd                                           ; $63f0: $fd
	rst $38                                          ; $63f1: $ff
	ldh a, [$fc]                                     ; $63f2: $f0 $fc
	db $f4                                           ; $63f4: $f4
	pop af                                           ; $63f5: $f1
	ldh a, [rIE]                                     ; $63f6: $f0 $ff
	rst SubAFromDE                                          ; $63f8: $df
	db $eb                                           ; $63f9: $eb
	rst SubAFromHL                                          ; $63fa: $d7
	ld [hl], l                                       ; $63fb: $75
	inc sp                                           ; $63fc: $33
	sbc $43                                          ; $63fd: $de $43

Call_04c_63ff:
	rst SubAFromDE                                          ; $63ff: $df
	ld b, d                                          ; $6400: $42
	add h                                            ; $6401: $84

jr_04c_6402:
	ld h, d                                          ; $6402: $62
	inc bc                                           ; $6403: $03

jr_04c_6404:
	add e                                            ; $6404: $83
	ldh a, [$ee]                                     ; $6405: $f0 $ee
	nop                                              ; $6407: $00
	inc b                                            ; $6408: $04
	ld [$ab04], sp                                   ; $6409: $08 $04 $ab
	pop af                                           ; $640c: $f1
	db $ec                                           ; $640d: $ec
	db $e4                                           ; $640e: $e4
	inc c                                            ; $640f: $0c
	inc c                                            ; $6410: $0c
	inc b                                            ; $6411: $04
	inc c                                            ; $6412: $0c
	inc b                                            ; $6413: $04
	rst $38                                          ; $6414: $ff
	rst AddAOntoHL                                          ; $6415: $ef
	rst $38                                          ; $6416: $ff
	db $ed                                           ; $6417: $ed
	cp $ef                                           ; $6418: $fe $ef
	db $fd                                           ; $641a: $fd
	rst AddAOntoHL                                          ; $641b: $ef
	rst $38                                          ; $641c: $ff
	sbc $08                                          ; $641d: $de $08
	db $dd                                           ; $641f: $dd
	inc c                                            ; $6420: $0c
	sub e                                            ; $6421: $93
	rst AddAOntoHL                                          ; $6422: $ef
	ld hl, sp-$0f                                    ; $6423: $f8 $f1
	ld b, $00                                        ; $6425: $06 $00
	ld [bc], a                                       ; $6427: $02
	inc b                                            ; $6428: $04
	and b                                            ; $6429: $a0
	ld e, e                                          ; $642a: $5b
	inc bc                                           ; $642b: $03
	ld [bc], a                                       ; $642c: $02
	nop                                              ; $642d: $00
	ld a, e                                          ; $642e: $7b
	cp $9b                                           ; $642f: $fe $9b
	ld d, [hl]                                       ; $6431: $56
	ldh a, [c]                                       ; $6432: $f2
	xor l                                            ; $6433: $ad
	ld d, a                                          ; $6434: $57
	ld [hl], e                                       ; $6435: $73
	ld e, [hl]                                       ; $6436: $5e
	sbc l                                            ; $6437: $9d
	ld d, l                                          ; $6438: $55
	rst SubAFromDE                                          ; $6439: $df
	ld l, [hl]                                       ; $643a: $6e
	sbc [hl]                                         ; $643b: $9e
	sbc h                                            ; $643c: $9c
	rst $38                                          ; $643d: $ff
	ld d, c                                          ; $643e: $51
	and d                                            ; $643f: $a2
	ld [hl], a                                       ; $6440: $77
	cp $9b                                           ; $6441: $fe $9b
	ld de, $a6a2                                     ; $6443: $11 $a2 $a6
	ld d, l                                          ; $6446: $55
	ld [hl], a                                       ; $6447: $77
	cp $80                                           ; $6448: $fe $80
	and $f4                                          ; $644a: $e6 $f4
	ld [de], a                                       ; $644c: $12
	and b                                            ; $644d: $a0
	ld e, b                                          ; $644e: $58
	sub e                                            ; $644f: $93
	ld h, e                                          ; $6450: $63
	or b                                             ; $6451: $b0
	ld [hl], c                                       ; $6452: $71
	cp $e5                                           ; $6453: $fe $e5
	ld d, a                                          ; $6455: $57
	and h                                            ; $6456: $a4
	ld h, h                                          ; $6457: $64
	add h                                            ; $6458: $84
	rlca                                             ; $6459: $07
	ld c, $01                                        ; $645a: $0e $01
	adc l                                            ; $645c: $8d
	ld h, e                                          ; $645d: $63
	db $fd                                           ; $645e: $fd
	ldh a, [c]                                       ; $645f: $f2
	add sp, -$1e                                     ; $6460: $e8 $e2
	dec c                                            ; $6462: $0d
	cp b                                             ; $6463: $b8
	ld [de], a                                       ; $6464: $12
	inc e                                            ; $6465: $1c
	ld [bc], a                                       ; $6466: $02
	dec c                                            ; $6467: $0d
	jr nc, jr_04c_6402                               ; $6468: $30 $98

	ld b, c                                          ; $646a: $41
	add e                                            ; $646b: $83
	ld b, h                                          ; $646c: $44
	or d                                             ; $646d: $b2
	ld c, c                                          ; $646e: $49
	ldh a, [$b8]                                     ; $646f: $f0 $b8
	ld a, d                                          ; $6471: $7a
	ret nc                                           ; $6472: $d0

	sbc c                                            ; $6473: $99
	ld a, a                                          ; $6474: $7f
	call $ffbc                                       ; $6475: $cd $bc $ff
	rst JumpTable                                          ; $6478: $c7
	add b                                            ; $6479: $80
	ld [hl], l                                       ; $647a: $75
	ld a, [de]                                       ; $647b: $1a
	ld a, a                                          ; $647c: $7f
	ld b, e                                          ; $647d: $43
	ld l, [hl]                                       ; $647e: $6e
	ldh a, [c]                                       ; $647f: $f2
	ld a, e                                          ; $6480: $7b
	db $fc                                           ; $6481: $fc
	halt                                             ; $6482: $76
	ldh a, [c]                                       ; $6483: $f2
	sbc e                                            ; $6484: $9b
	inc bc                                           ; $6485: $03
	ld a, a                                          ; $6486: $7f
	nop                                              ; $6487: $00
	ld c, a                                          ; $6488: $4f
	ld [hl], a                                       ; $6489: $77
	db $f4                                           ; $648a: $f4
	sbc e                                            ; $648b: $9b
	db $fc                                           ; $648c: $fc
	nop                                              ; $648d: $00
	rst $38                                          ; $648e: $ff
	or b                                             ; $648f: $b0
	ld [hl], a                                       ; $6490: $77
	ldh a, [$9e]                                     ; $6491: $f0 $9e
	ld h, e                                          ; $6493: $63
	ld a, d                                          ; $6494: $7a
	push af                                          ; $6495: $f5
	sbc d                                            ; $6496: $9a
	ret z                                            ; $6497: $c8

	nop                                              ; $6498: $00
	ldh [$e0], a                                     ; $6499: $e0 $e0
	sbc h                                            ; $649b: $9c
	ld [hl], a                                       ; $649c: $77
	di                                               ; $649d: $f3
	ld a, e                                          ; $649e: $7b
	db $fd                                           ; $649f: $fd
	ld a, a                                          ; $64a0: $7f
	pop hl                                           ; $64a1: $e1
	ld [hl], a                                       ; $64a2: $77
	ld a, [$1d9c]                                    ; $64a3: $fa $9c $1d
	nop                                              ; $64a6: $00
	add b                                            ; $64a7: $80
	ld l, e                                          ; $64a8: $6b
	ldh a, [$7e]                                     ; $64a9: $f0 $7e
	sbc a                                            ; $64ab: $9f
	ld [hl], a                                       ; $64ac: $77
	ld a, [$d49e]                                    ; $64ad: $fa $9e $d4
	ld l, h                                          ; $64b0: $6c
	db $d3                                           ; $64b1: $d3
	ld [hl], a                                       ; $64b2: $77
	db $fd                                           ; $64b3: $fd
	sbc e                                            ; $64b4: $9b
	ret nc                                           ; $64b5: $d0

	nop                                              ; $64b6: $00
	ld l, b                                          ; $64b7: $68
	nop                                              ; $64b8: $00
	ld a, e                                          ; $64b9: $7b
	ldh [c], a                                       ; $64ba: $e2
	ld h, e                                          ; $64bb: $63
	ldh a, [$7e]                                     ; $64bc: $f0 $7e
	ldh [$9d], a                                     ; $64be: $e0 $9d
	xor $0b                                          ; $64c0: $ee $0b
	halt                                             ; $64c2: $76
	cpl                                              ; $64c3: $2f
	ld a, d                                          ; $64c4: $7a
	db $e3                                           ; $64c5: $e3
	ld [hl], a                                       ; $64c6: $77
	ldh a, [$9b]                                     ; $64c7: $f0 $9b
	db $fc                                           ; $64c9: $fc
	ldh [$e0], a                                     ; $64ca: $e0 $e0
	rra                                              ; $64cc: $1f
	ld a, e                                          ; $64cd: $7b
	adc l                                            ; $64ce: $8d
	ld a, a                                          ; $64cf: $7f
	push af                                          ; $64d0: $f5
	ld a, [hl]                                       ; $64d1: $7e
	or $6f                                           ; $64d2: $f6 $6f
	ldh [$73], a                                     ; $64d4: $e0 $73
	add a                                            ; $64d6: $87
	sbc l                                            ; $64d7: $9d
	db $d3                                           ; $64d8: $d3
	ld b, $67                                        ; $64d9: $06 $67
	ret nc                                           ; $64db: $d0

	add d                                            ; $64dc: $82
	sub l                                            ; $64dd: $95
	scf                                              ; $64de: $37
	ldh a, [c]                                       ; $64df: $f2
	ld d, h                                          ; $64e0: $54
	cp b                                             ; $64e1: $b8
	jp hl                                            ; $64e2: $e9


	and a                                            ; $64e3: $a7
	rrca                                             ; $64e4: $0f
	inc sp                                           ; $64e5: $33
	ld de, $1919                                     ; $64e6: $11 $19 $19
	ld de, $0f1f                                     ; $64e9: $11 $1f $0f
	rlca                                             ; $64ec: $07
	db $fd                                           ; $64ed: $fd
	ld [hl+], a                                      ; $64ee: $22
	ld e, a                                          ; $64ef: $5f
	push de                                          ; $64f0: $d5
	ld c, d                                          ; $64f1: $4a
	ccf                                              ; $64f2: $3f
	ld [hl+], a                                      ; $64f3: $22
	dec [hl]                                         ; $64f4: $35
	ldh [$e0], a                                     ; $64f5: $e0 $e0
	and b                                            ; $64f7: $a0
	jr nz, @-$5e                                     ; $64f8: $20 $a0

	sbc $e0                                          ; $64fa: $de $e0
	ld a, l                                          ; $64fc: $7d
	ld a, $9d                                        ; $64fd: $3e $9d
	di                                               ; $64ff: $f3
	rlca                                             ; $6500: $07
	ld [hl], a                                       ; $6501: $77
	or l                                             ; $6502: $b5
	rst SubAFromDE                                          ; $6503: $df
	inc bc                                           ; $6504: $03
	sbc [hl]                                         ; $6505: $9e
	inc c                                            ; $6506: $0c
	db $fc                                           ; $6507: $fc
	add b                                            ; $6508: $80
	ld l, e                                          ; $6509: $6b
	ld [hl-], a                                      ; $650a: $32
	rst AddAOntoHL                                          ; $650b: $ef
	di                                               ; $650c: $f3
	add sp, -$4b                                     ; $650d: $e8 $b5
	dec sp                                           ; $650f: $3b
	rrca                                             ; $6510: $0f
	db $f4                                           ; $6511: $f4
	rst SubAFromDE                                          ; $6512: $df
	rlca                                             ; $6513: $07
	rrca                                             ; $6514: $0f
	dec b                                            ; $6515: $05
	ld c, [hl]                                       ; $6516: $4e
	inc b                                            ; $6517: $04
	nop                                              ; $6518: $00
	and d                                            ; $6519: $a2
	ld d, l                                          ; $651a: $55
	ldh [c], a                                       ; $651b: $e2
	pop af                                           ; $651c: $f1
	db $ec                                           ; $651d: $ec
	ccf                                              ; $651e: $3f
	xor a                                            ; $651f: $af
	rst AddAOntoHL                                          ; $6520: $ef
	ld c, l                                          ; $6521: $4d
	xor [hl]                                         ; $6522: $ae
	call $f7ee                                       ; $6523: $cd $ee $f7
	rst SubAFromBC                                          ; $6526: $e7
	rla                                              ; $6527: $17
	add b                                            ; $6528: $80
	rlca                                             ; $6529: $07
	xor b                                            ; $652a: $a8
	ld e, d                                          ; $652b: $5a
	xor c                                            ; $652c: $a9
	ld e, d                                          ; $652d: $5a
	xor c                                            ; $652e: $a9
	jp z, $f2e8                                      ; $652f: $ca $e8 $f2

	ld d, e                                          ; $6532: $53
	and e                                            ; $6533: $a3
	ld d, d                                          ; $6534: $52
	and e                                            ; $6535: $a3
	ld d, d                                          ; $6536: $52
	or e                                             ; $6537: $b3
	di                                               ; $6538: $f3
	ei                                               ; $6539: $fb
	xor d                                            ; $653a: $aa
	push de                                          ; $653b: $d5
	ld a, [hl+]                                      ; $653c: $2a
	sub b                                            ; $653d: $90
	ld [$40af], sp                                   ; $653e: $08 $af $40
	xor d                                            ; $6541: $aa
	ld d, l                                          ; $6542: $55
	ld a, [hl+]                                      ; $6543: $2a
	sub l                                            ; $6544: $95
	ld c, a                                          ; $6545: $4f
	rst SubAFromBC                                          ; $6546: $e7
	ld d, b                                          ; $6547: $50
	sub c                                            ; $6548: $91
	cp a                                             ; $6549: $bf
	ld d, l                                          ; $654a: $55
	ld b, e                                          ; $654b: $43
	and e                                            ; $654c: $a3
	ld d, h                                          ; $654d: $54
	ld a, [hl]                                       ; $654e: $7e
	rst $38                                          ; $654f: $ff
	db $fd                                           ; $6550: $fd
	db $fc                                           ; $6551: $fc
	ld sp, hl                                        ; $6552: $f9
	db $f4                                           ; $6553: $f4
	call nz, $008f                                   ; $6554: $c4 $8f $00
	ld a, d                                          ; $6557: $7a
	sbc [hl]                                         ; $6558: $9e
	sub d                                            ; $6559: $92
	nop                                              ; $655a: $00
	ei                                               ; $655b: $fb
	xor b                                            ; $655c: $a8
	ldh a, [$c1]                                     ; $655d: $f0 $c1
	db $fd                                           ; $655f: $fd
	ld bc, $a21f                                     ; $6560: $01 $1f $a2
	ld b, $54                                        ; $6563: $06 $54
	ld bc, $de00                                     ; $6565: $01 $00 $de
	ld [bc], a                                       ; $6568: $02
	sbc e                                            ; $6569: $9b
	ld a, h                                          ; $656a: $7c
	nop                                              ; $656b: $00
	ld b, b                                          ; $656c: $40
	ld a, a                                          ; $656d: $7f
	ld l, [hl]                                       ; $656e: $6e
	push hl                                          ; $656f: $e5
	ld a, d                                          ; $6570: $7a
	call nc, $4e5f                                   ; $6571: $d4 $5f $4e
	sbc [hl]                                         ; $6574: $9e
	rst SubAFromDE                                          ; $6575: $df
	ld [hl], a                                       ; $6576: $77
	ld a, [$f05b]                                    ; $6577: $fa $5b $f0
	ld a, d                                          ; $657a: $7a
	dec b                                            ; $657b: $05
	ld l, a                                          ; $657c: $6f
	di                                               ; $657d: $f3
	ld a, a                                          ; $657e: $7f
	dec h                                            ; $657f: $25
	sbc e                                            ; $6580: $9b
	rra                                              ; $6581: $1f
	ld hl, sp-$20                                    ; $6582: $f8 $e0
	nop                                              ; $6584: $00
	ld a, c                                          ; $6585: $79
	halt                                             ; $6586: $76
	sbc l                                            ; $6587: $9d
	rst $38                                          ; $6588: $ff
	ldh [$73], a                                     ; $6589: $e0 $73
	ldh a, [$9d]                                     ; $658b: $f0 $9d
	nop                                              ; $658d: $00
	ccf                                              ; $658e: $3f
	ld a, e                                          ; $658f: $7b
	ei                                               ; $6590: $fb
	sbc l                                            ; $6591: $9d
	ld b, c                                          ; $6592: $41
	sub b                                            ; $6593: $90
	ld a, e                                          ; $6594: $7b
	xor $fe                                          ; $6595: $ee $fe
	sbc [hl]                                         ; $6597: $9e
	cp [hl]                                          ; $6598: $be
	ld [hl], a                                       ; $6599: $77
	ld [$d86f], sp                                   ; $659a: $08 $6f $d8
	sbc [hl]                                         ; $659d: $9e
	ld a, b                                          ; $659e: $78
	ld sp, hl                                        ; $659f: $f9
	ld l, e                                          ; $65a0: $6b
	ldh a, [$f8]                                     ; $65a1: $f0 $f8
	ld l, e                                          ; $65a3: $6b
	ldh a, [$9e]                                     ; $65a4: $f0 $9e
	dec de                                           ; $65a6: $1b
	ld d, e                                          ; $65a7: $53
	ldh a, [$9c]                                     ; $65a8: $f0 $9c
	dec c                                            ; $65aa: $0d
	nop                                              ; $65ab: $00
	jr nc, jr_04c_6601                               ; $65ac: $30 $53

	ldh a, [$7b]                                     ; $65ae: $f0 $7b
	and h                                            ; $65b0: $a4

jr_04c_65b1:
	ld d, e                                          ; $65b1: $53
	ldh a, [$7a]                                     ; $65b2: $f0 $7a
	jp nz, $dff9                                     ; $65b4: $c2 $f9 $df

	rst FarCall                                          ; $65b7: $f7
	rst SubAFromDE                                          ; $65b8: $df
	rlca                                             ; $65b9: $07
	add l                                            ; $65ba: $85
	ei                                               ; $65bb: $fb
	db $fd                                           ; $65bc: $fd
	nop                                              ; $65bd: $00
	cpl                                              ; $65be: $2f
	rrca                                             ; $65bf: $0f
	rrca                                             ; $65c0: $0f
	rlca                                             ; $65c1: $07
	inc bc                                           ; $65c2: $03
	rlca                                             ; $65c3: $07
	inc bc                                           ; $65c4: $03
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	ld a, [$e0f7]                                    ; $65c7: $fa $f7 $e0
	rst $38                                          ; $65ca: $ff
	rst $38                                          ; $65cb: $ff
	rst FarCall                                          ; $65cc: $f7
	nop                                              ; $65cd: $00
	adc b                                            ; $65ce: $88
	jr nz, jr_04c_65b1                               ; $65cf: $20 $e0

	ld b, b                                          ; $65d1: $40
	ld a, [hl]                                       ; $65d2: $7e
	rst $38                                          ; $65d3: $ff
	ld hl, sp+$6e                                    ; $65d4: $f8 $6e
	ld l, c                                          ; $65d6: $69
	sbc [hl]                                         ; $65d7: $9e
	ld e, a                                          ; $65d8: $5f
	ld [hl], a                                       ; $65d9: $77
	ld [hl], e                                       ; $65da: $73
	cp $76                                           ; $65db: $fe $76
	ld e, d                                          ; $65dd: $5a
	sbc [hl]                                         ; $65de: $9e
	dec sp                                           ; $65df: $3b
	ld a, d                                          ; $65e0: $7a
	ld e, a                                          ; $65e1: $5f
	ld a, l                                          ; $65e2: $7d
	dec sp                                           ; $65e3: $3b
	rst $38                                          ; $65e4: $ff
	ld a, [hl]                                       ; $65e5: $7e
	add $fb                                          ; $65e6: $c6 $fb
	sub d                                            ; $65e8: $92
	jp hl                                            ; $65e9: $e9


	push hl                                          ; $65ea: $e5
	ld hl, sp+$77                                    ; $65eb: $f8 $77
	cpl                                              ; $65ed: $2f
	rrca                                             ; $65ee: $0f
	rlca                                             ; $65ef: $07
	ld bc, $0807                                     ; $65f0: $01 $07 $08
	rlca                                             ; $65f3: $07
	ld [$fe10], sp                                   ; $65f4: $08 $10 $fe
	adc e                                            ; $65f7: $8b
	pop af                                           ; $65f8: $f1
	ei                                               ; $65f9: $fb
	or c                                             ; $65fa: $b1
	ei                                               ; $65fb: $fb
	db $fd                                           ; $65fc: $fd
	rst FarCall                                          ; $65fd: $f7
	push af                                          ; $65fe: $f5
	push af                                          ; $65ff: $f5
	ei                                               ; $6600: $fb

jr_04c_6601:
	ei                                               ; $6601: $fb
	ld a, e                                          ; $6602: $7b
	dec de                                           ; $6603: $1b
	inc bc                                           ; $6604: $03
	inc bc                                           ; $6605: $03
	ld [bc], a                                       ; $6606: $02
	ld [bc], a                                       ; $6607: $02
	ld [$fad5], sp                                   ; $6608: $08 $d5 $fa
	db $fd                                           ; $660b: $fd
	sbc $ff                                          ; $660c: $de $ff
	ld a, a                                          ; $660e: $7f
	add hl, hl                                       ; $660f: $29
	db $db                                           ; $6610: $db
	rst $38                                          ; $6611: $ff
	sbc [hl]                                         ; $6612: $9e
	ld a, a                                          ; $6613: $7f
	ld b, h                                          ; $6614: $44
	nop                                              ; $6615: $00
	sbc [hl]                                         ; $6616: $9e
	ld b, h                                          ; $6617: $44
	jp c, $9d33                                      ; $6618: $da $33 $9d

	inc [hl]                                         ; $661b: $34
	ld b, h                                          ; $661c: $44
	ld e, a                                          ; $661d: $5f
	or $d5                                           ; $661e: $f6 $d5
	inc sp                                           ; $6620: $33
	ld a, e                                          ; $6621: $7b
	add sp, $6b                                      ; $6622: $e8 $6b
	and $67                                          ; $6624: $e6 $67
	or $7f                                           ; $6626: $f6 $7f
	db $fc                                           ; $6628: $fc
	sbc l                                            ; $6629: $9d
	ld b, h                                          ; $662a: $44
	ld b, l                                          ; $662b: $45
	sbc $44                                          ; $662c: $de $44
	sbc [hl]                                         ; $662e: $9e
	ld b, e                                          ; $662f: $43
	ld a, e                                          ; $6630: $7b
	cp $97                                           ; $6631: $fe $97
	inc sp                                           ; $6633: $33
	ld b, l                                          ; $6634: $45
	ld d, h                                          ; $6635: $54
	ld b, h                                          ; $6636: $44
	ld h, [hl]                                       ; $6637: $66
	ld b, h                                          ; $6638: $44
	ld [hl], e                                       ; $6639: $73
	ld b, e                                          ; $663a: $43
	ld a, e                                          ; $663b: $7b
	call Call_04c_449b                               ; $663c: $cd $9b $44
	ld d, l                                          ; $663f: $55
	ld b, h                                          ; $6640: $44
	ld d, a                                          ; $6641: $57
	ld l, a                                          ; $6642: $6f
	or $de                                           ; $6643: $f6 $de
	ld [hl], a                                       ; $6645: $77
	rst SubAFromDE                                          ; $6646: $df
	ld [hl], h                                       ; $6647: $74
	ld a, a                                          ; $6648: $7f
	or $df                                           ; $6649: $f6 $df
	ld b, h                                          ; $664b: $44
	sbc [hl]                                         ; $664c: $9e
	ld b, a                                          ; $664d: $47
	call c, $9e77                                    ; $664e: $dc $77 $9e
	ld [hl], h                                       ; $6651: $74
	sbc $44                                          ; $6652: $de $44
	db $db                                           ; $6654: $db
	ld [hl], a                                       ; $6655: $77
	sbc $44                                          ; $6656: $de $44
	ld a, h                                          ; $6658: $7c
	adc c                                            ; $6659: $89
	sub a                                            ; $665a: $97
	xor d                                            ; $665b: $aa
	ld d, l                                          ; $665c: $55
	xor d                                            ; $665d: $aa
	ld d, l                                          ; $665e: $55
	and b                                            ; $665f: $a0
	ld b, b                                          ; $6660: $40
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	ld a, e                                          ; $6663: $7b
	ld sp, hl                                        ; $6664: $f9
	add c                                            ; $6665: $81
	xor d                                            ; $6666: $aa
	ld e, a                                          ; $6667: $5f
	cp a                                             ; $6668: $bf
	rst $38                                          ; $6669: $ff
	rst $38                                          ; $666a: $ff
	cp a                                             ; $666b: $bf
	ld a, a                                          ; $666c: $7f
	cp a                                             ; $666d: $bf
	ld d, a                                          ; $666e: $57
	xor e                                            ; $666f: $ab
	dec d                                            ; $6670: $15
	dec bc                                           ; $6671: $0b
	dec b                                            ; $6672: $05
	ld b, b                                          ; $6673: $40
	add b                                            ; $6674: $80
	ld b, b                                          ; $6675: $40
	xor b                                            ; $6676: $a8
	ld d, h                                          ; $6677: $54
	ld [$faf4], a                                    ; $6678: $ea $f4 $fa
	add h                                            ; $667b: $84
	ld b, b                                          ; $667c: $40
	add b                                            ; $667d: $80
	ret nz                                           ; $667e: $c0

	add b                                            ; $667f: $80
	ret nz                                           ; $6680: $c0

	and b                                            ; $6681: $a0
	ret nz                                           ; $6682: $c0

	inc bc                                           ; $6683: $03
	ld a, [$ff9d]                                    ; $6684: $fa $9d $ff
	add hl, de                                       ; $6687: $19
	db $fc                                           ; $6688: $fc
	sbc h                                            ; $6689: $9c
	ld bc, $07ff                                     ; $668a: $01 $ff $07
	ei                                               ; $668d: $fb
	ld a, a                                          ; $668e: $7f
	sbc $94                                          ; $668f: $de $94
	adc l                                            ; $6691: $8d
	ld [bc], a                                       ; $6692: $02
	inc sp                                           ; $6693: $33
	inc d                                            ; $6694: $14
	and a                                            ; $6695: $a7
	sub a                                            ; $6696: $97
	rst $38                                          ; $6697: $ff
	rst $38                                          ; $6698: $ff
	ld a, a                                          ; $6699: $7f
	rlca                                             ; $669a: $07
	ld bc, $87fe                                     ; $669b: $01 $fe $87
	dec bc                                           ; $669e: $0b
	ld bc, $1000                                     ; $669f: $01 $00 $10
	adc b                                            ; $66a2: $88
	ld b, h                                          ; $66a3: $44
	ld h, d                                          ; $66a4: $62
	ld de, $7fff                                     ; $66a5: $11 $ff $7f
	cp a                                             ; $66a8: $bf
	rst AddAOntoHL                                          ; $66a9: $ef
	rst FarCall                                          ; $66aa: $f7
	ei                                               ; $66ab: $fb
	dec a                                            ; $66ac: $3d
	ld e, $c7                                        ; $66ad: $1e $c7
	di                                               ; $66af: $f3
	ld sp, hl                                        ; $66b0: $f9
	ld a, h                                          ; $66b1: $7c
	ld a, $1f                                        ; $66b2: $3e $1f
	rrca                                             ; $66b4: $0f
	rlca                                             ; $66b5: $07
	reti                                             ; $66b6: $d9


	rst $38                                          ; $66b7: $ff
	add l                                            ; $66b8: $85
	ldh [c], a                                       ; $66b9: $e2
	ld sp, $e1c0                                     ; $66ba: $31 $c0 $e1
	or b                                             ; $66bd: $b0
	call c, $366c                                    ; $66be: $dc $6c $36
	db $fd                                           ; $66c1: $fd
	cp $ff                                           ; $66c2: $fe $ff
	ld a, [hl]                                       ; $66c4: $7e
	ld a, a                                          ; $66c5: $7f
	ccf                                              ; $66c6: $3f
	sbc a                                            ; $66c7: $9f
	rst GetHLinHL                                          ; $66c8: $cf
	ret nz                                           ; $66c9: $c0

	ldh a, [$f8]                                     ; $66ca: $f0 $f8
	db $fc                                           ; $66cc: $fc
	cp $fe                                           ; $66cd: $fe $fe
	rst $38                                          ; $66cf: $ff
	rst $38                                          ; $66d0: $ff
	nop                                              ; $66d1: $00
	add b                                            ; $66d2: $80
	ld a, e                                          ; $66d3: $7b
	adc [hl]                                         ; $66d4: $8e
	adc c                                            ; $66d5: $89
	and b                                            ; $66d6: $a0
	ld d, b                                          ; $66d7: $50
	xor b                                            ; $66d8: $a8
	ld a, a                                          ; $66d9: $7f
	rst $38                                          ; $66da: $ff
	ccf                                              ; $66db: $3f
	ld a, a                                          ; $66dc: $7f
	ccf                                              ; $66dd: $3f
	cp a                                             ; $66de: $bf
	rra                                              ; $66df: $1f
	rst SubAFromDE                                          ; $66e0: $df
	inc d                                            ; $66e1: $14
	ld a, [bc]                                       ; $66e2: $0a
	inc b                                            ; $66e3: $04
	ld a, [bc]                                       ; $66e4: $0a
	dec b                                            ; $66e5: $05
	ld a, [bc]                                       ; $66e6: $0a
	dec b                                            ; $66e7: $05
	ld [bc], a                                       ; $66e8: $02
	dec b                                            ; $66e9: $05
	ld [bc], a                                       ; $66ea: $02
	add c                                            ; $66eb: $81
	sbc $80                                          ; $66ec: $de $80
	sbc d                                            ; $66ee: $9a
	pop bc                                           ; $66ef: $c1
	add b                                            ; $66f0: $80
	ld a, [$7efd]                                    ; $66f1: $fa $fd $7e
	sbc $7f                                          ; $66f4: $de $7f
	ld a, a                                          ; $66f6: $7f
	db $e4                                           ; $66f7: $e4
	add b                                            ; $66f8: $80
	rst SubAFromBC                                          ; $66f9: $e7
	pop af                                           ; $66fa: $f1
	ei                                               ; $66fb: $fb
	db $fc                                           ; $66fc: $fc
	ld a, [$bfef]                                    ; $66fd: $fa $ef $bf
	rst SubAFromDE                                          ; $6700: $df
	ld b, b                                          ; $6701: $40
	ld b, b                                          ; $6702: $40

Jump_04c_6703:
	ret nz                                           ; $6703: $c0

	adc b                                            ; $6704: $88
	ret nc                                           ; $6705: $d0

	add b                                            ; $6706: $80
	db $10                                           ; $6707: $10
	ld [$dab7], sp                                   ; $6708: $08 $b7 $da
	sub a                                            ; $670b: $97
	ei                                               ; $670c: $fb
	ld a, c                                          ; $670d: $79
	ccf                                              ; $670e: $3f
	ld a, d                                          ; $670f: $7a
	cp a                                             ; $6710: $bf
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	ld [bc], a                                       ; $6713: $02
	nop                                              ; $6714: $00
	ld b, c                                          ; $6715: $41
	jr nz, jr_04c_6718                               ; $6716: $20 $00

jr_04c_6718:
	sbc l                                            ; $6718: $9d
	jr nz, jr_04c_675a                               ; $6719: $20 $3f

	jp c, $80ff                                      ; $671b: $da $ff $80

	ld bc, $0703                                     ; $671e: $01 $03 $07
	rrca                                             ; $6721: $0f
	rra                                              ; $6722: $1f
	ccf                                              ; $6723: $3f
	ld a, a                                          ; $6724: $7f
	rst SubAFromDE                                          ; $6725: $df
	dec bc                                           ; $6726: $0b
	inc de                                           ; $6727: $13
	add hl, hl                                       ; $6728: $29
	ld d, h                                          ; $6729: $54
	ld a, [hl+]                                      ; $672a: $2a
	inc b                                            ; $672b: $04
	nop                                              ; $672c: $00
	ld bc, $ecf4                                     ; $672d: $01 $f4 $ec
	sub $ab                                          ; $6730: $d6 $ab
	push de                                          ; $6732: $d5
	ei                                               ; $6733: $fb
	rst $38                                          ; $6734: $ff
	rst $38                                          ; $6735: $ff
	ld [hl], $b3                                     ; $6736: $36 $b3
	call c, $0f7f                                    ; $6738: $dc $7f $0f
	inc bc                                           ; $673b: $03
	nop                                              ; $673c: $00
	sbc c                                            ; $673d: $99
	add b                                            ; $673e: $80
	ret                                              ; $673f: $c9


	ld c, h                                          ; $6740: $4c
	inc hl                                           ; $6741: $23
	add b                                            ; $6742: $80
	ldh a, [$de]                                     ; $6743: $f0 $de
	rst $38                                          ; $6745: $ff
	sub d                                            ; $6746: $92
	dec sp                                           ; $6747: $3b
	rst SubAFromBC                                          ; $6748: $e7
	inc e                                            ; $6749: $1c
	rst $38                                          ; $674a: $ff
	pop af                                           ; $674b: $f1
	rst $38                                          ; $674c: $ff
	rlca                                             ; $674d: $07
	ld a, a                                          ; $674e: $7f
	call nz, $e318                                   ; $674f: $c4 $18 $e3
	nop                                              ; $6752: $00
	rrca                                             ; $6753: $0f
	sbc $ff                                          ; $6754: $de $ff
	sbc e                                            ; $6756: $9b
	or b                                             ; $6757: $b0
	or h                                             ; $6758: $b4
	push hl                                          ; $6759: $e5

jr_04c_675a:
	sbc a                                            ; $675a: $9f
	sbc $ff                                          ; $675b: $de $ff
	sbc d                                            ; $675d: $9a
	adc a                                            ; $675e: $8f
	ld c, a                                          ; $675f: $4f
	rst GetHLinHL                                          ; $6760: $cf
	rra                                              ; $6761: $1f
	ld a, a                                          ; $6762: $7f
	sbc $ff                                          ; $6763: $de $ff
	sbc l                                            ; $6765: $9d
	rra                                              ; $6766: $1f
	rlca                                             ; $6767: $07
	ld [hl], a                                       ; $6768: $77
	ld a, [$ffd3]                                    ; $6769: $fa $d3 $ff
	sbc l                                            ; $676c: $9d
	cp $fd                                           ; $676d: $fe $fd
	db $db                                           ; $676f: $db
	rst $38                                          ; $6770: $ff
	sbc d                                            ; $6771: $9a
	db $fd                                           ; $6772: $fd
	ld a, [$fcfc]                                    ; $6773: $fa $fc $fc
	ld hl, sp-$06                                    ; $6776: $f8 $fa
	sbc [hl]                                         ; $6778: $9e
	ld h, b                                          ; $6779: $60
	jp c, $9dff                                      ; $677a: $da $ff $9d

	sbc a                                            ; $677d: $9f
	ld [bc], a                                       ; $677e: $02
	ld a, e                                          ; $677f: $7b
	ld c, e                                          ; $6780: $4b
	sub b                                            ; $6781: $90
	ld a, [bc]                                       ; $6782: $0a
	dec d                                            ; $6783: $15
	dec hl                                           ; $6784: $2b
	ld d, a                                          ; $6785: $57
	db $fd                                           ; $6786: $fd
	ld a, [$faf5]                                    ; $6787: $fa $f5 $fa
	push af                                          ; $678a: $f5
	ld [$a8d4], a                                    ; $678b: $ea $d4 $a8
	and b                                            ; $678e: $a0
	ret nz                                           ; $678f: $c0

	ldh [$7b], a                                     ; $6790: $e0 $7b
	cp $76                                           ; $6792: $fe $76
	sbc [hl]                                         ; $6794: $9e
	db $eb                                           ; $6795: $eb
	sub a                                            ; $6796: $97
	and a                                            ; $6797: $a7
	rla                                              ; $6798: $17
	scf                                              ; $6799: $37
	ld d, a                                          ; $679a: $57
	scf                                              ; $679b: $37
	ld d, e                                          ; $679c: $53
	inc sp                                           ; $679d: $33
	ld [hl], a                                       ; $679e: $77
	ld sp, hl                                        ; $679f: $f9
	rst SubAFromDE                                          ; $67a0: $df
	db $f4                                           ; $67a1: $f4
	ld a, d                                          ; $67a2: $7a
	di                                               ; $67a3: $f3
	sbc $ff                                          ; $67a4: $de $ff
	ld a, a                                          ; $67a6: $7f
	ld e, h                                          ; $67a7: $5c
	halt                                             ; $67a8: $76
	or d                                             ; $67a9: $b2
	rst $38                                          ; $67aa: $ff
	sub a                                            ; $67ab: $97
	add e                                            ; $67ac: $83
	ld b, c                                          ; $67ad: $41
	ld a, [hl+]                                      ; $67ae: $2a
	sub c                                            ; $67af: $91
	ret nc                                           ; $67b0: $d0

	ldh a, [$b8]                                     ; $67b1: $f0 $b8
	ld d, l                                          ; $67b3: $55
	ld a, d                                          ; $67b4: $7a
	call nc, Call_04c_4f9a                           ; $67b5: $d4 $9a $4f
	daa                                              ; $67b8: $27
	dec bc                                           ; $67b9: $0b
	ld b, l                                          ; $67ba: $45
	xor d                                            ; $67bb: $aa
	ld a, e                                          ; $67bc: $7b
	dec a                                            ; $67bd: $3d
	sub l                                            ; $67be: $95
	cp $f3                                           ; $67bf: $fe $f3
	di                                               ; $67c1: $f3
	pop hl                                           ; $67c2: $e1
	ldh a, [$e7]                                     ; $67c3: $f0 $e7
	di                                               ; $67c5: $f3
	ld sp, hl                                        ; $67c6: $f9
	ld a, l                                          ; $67c7: $7d
	cp [hl]                                          ; $67c8: $be
	ld a, d                                          ; $67c9: $7a
	rst AddAOntoHL                                          ; $67ca: $ef
	adc [hl]                                         ; $67cb: $8e
	rrca                                             ; $67cc: $0f
	add a                                            ; $67cd: $87
	adc e                                            ; $67ce: $8b
	rst JumpTable                                          ; $67cf: $c7
	jp $e347                                         ; $67d0: $c3 $47 $e3


	daa                                              ; $67d3: $27
	ldh a, [$f8]                                     ; $67d4: $f0 $f8
	db $f4                                           ; $67d6: $f4
	ld hl, sp-$04                                    ; $67d7: $f8 $fc
	ld hl, sp+$7c                                    ; $67d9: $f8 $7c
	ld hl, sp+$5f                                    ; $67db: $f8 $5f
	sbc $9f                                          ; $67dd: $de $9f
	ld a, d                                          ; $67df: $7a
	add hl, sp                                       ; $67e0: $39
	sbc [hl]                                         ; $67e1: $9e
	rst $38                                          ; $67e2: $ff
	ld a, d                                          ; $67e3: $7a
	add $7a                                          ; $67e4: $c6 $7a
	cp [hl]                                          ; $67e6: $be
	sub d                                            ; $67e7: $92
	inc b                                            ; $67e8: $04

jr_04c_67e9:
	ld [$f9fd], sp                                   ; $67e9: $08 $fd $f9
	rst $38                                          ; $67ec: $ff
	rst FarCall                                          ; $67ed: $f7
	rst FarCall                                          ; $67ee: $f7
	db $fc                                           ; $67ef: $fc
	ld hl, sp-$18                                    ; $67f0: $f8 $e8
	ccf                                              ; $67f2: $3f
	ld a, a                                          ; $67f3: $7f
	ld a, $de                                        ; $67f4: $3e $de
	ld a, a                                          ; $67f6: $7f
	rst SubAFromDE                                          ; $67f7: $df
	rst $38                                          ; $67f8: $ff
	sub e                                            ; $67f9: $93
	ld [$fbf7], a                                    ; $67fa: $ea $f7 $fb
	ei                                               ; $67fd: $fb
	rst $38                                          ; $67fe: $ff
	dec b                                            ; $67ff: $05
	jr nc, jr_04c_67e9                               ; $6800: $30 $e7

	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	ld [hl], b                                       ; $6804: $70
	ld hl, sp-$23                                    ; $6805: $f8 $dd
	rst $38                                          ; $6807: $ff
	sub e                                            ; $6808: $93
	rst JumpTable                                          ; $6809: $c7
	rst AddAOntoHL                                          ; $680a: $ef
	rst $38                                          ; $680b: $ff
	rst $38                                          ; $680c: $ff
	ld a, [$3f07]                                    ; $680d: $fa $07 $3f
	ld a, a                                          ; $6810: $7f
	ld bc, $4683                                     ; $6811: $01 $83 $46
	cp $77                                           ; $6814: $fe $77
	ret z                                            ; $6816: $c8

	ld a, [hl]                                       ; $6817: $7e
	nop                                              ; $6818: $00
	ld a, a                                          ; $6819: $7f
	db $db                                           ; $681a: $db
	sbc l                                            ; $681b: $9d
	cp [hl]                                          ; $681c: $be
	cp $73                                           ; $681d: $fe $73
	dec e                                            ; $681f: $1d
	halt                                             ; $6820: $76
	or l                                             ; $6821: $b5
	sbc e                                            ; $6822: $9b
	cp $02                                           ; $6823: $fe $02
	dec bc                                           ; $6825: $0b
	nop                                              ; $6826: $00
	ld a, d                                          ; $6827: $7a
	or l                                             ; $6828: $b5
	ld a, [hl]                                       ; $6829: $7e
	ld h, c                                          ; $682a: $61
	rst SubAFromDE                                          ; $682b: $df
	db $fc                                           ; $682c: $fc
	ld a, a                                          ; $682d: $7f
	db $f4                                           ; $682e: $f4
	ld [hl], a                                       ; $682f: $77
	ld [de], a                                       ; $6830: $12
	sub a                                            ; $6831: $97
	daa                                              ; $6832: $27
	cp a                                             ; $6833: $bf
	ccf                                              ; $6834: $3f
	add b                                            ; $6835: $80
	rst $38                                          ; $6836: $ff
	rst FarCall                                          ; $6837: $f7
	rst $38                                          ; $6838: $ff
	nop                                              ; $6839: $00
	ld a, e                                          ; $683a: $7b
	reti                                             ; $683b: $d9


	sub a                                            ; $683c: $97
	ld a, a                                          ; $683d: $7f
	nop                                              ; $683e: $00
	ld [rRAMG], sp                                   ; $683f: $08 $00 $00
	cp $fe                                           ; $6842: $fe $fe
	db $fc                                           ; $6844: $fc
	ld a, d                                          ; $6845: $7a
	ret                                              ; $6846: $c9


	sbc l                                            ; $6847: $9d
	ret nz                                           ; $6848: $c0

	nop                                              ; $6849: $00
	sbc $ff                                          ; $684a: $de $ff
	sbc [hl]                                         ; $684c: $9e
	ldh a, [$fd]                                     ; $684d: $f0 $fd
	sbc h                                            ; $684f: $9c
	db $eb                                           ; $6850: $eb
	ld a, b                                          ; $6851: $78
	rst FarCall                                          ; $6852: $f7
	ld a, e                                          ; $6853: $7b
	jp z, $9dff                                      ; $6854: $ca $ff $9d

	rra                                              ; $6857: $1f
	sbc a                                            ; $6858: $9f
	ld a, e                                          ; $6859: $7b
	db $e3                                           ; $685a: $e3
	ld [hl], l                                       ; $685b: $75
	ret nc                                           ; $685c: $d0

	sbc $ff                                          ; $685d: $de $ff
	halt                                             ; $685f: $76
	db $db                                           ; $6860: $db
	sbc h                                            ; $6861: $9c
	rst $38                                          ; $6862: $ff
	db $f4                                           ; $6863: $f4
	add b                                            ; $6864: $80
	ld h, a                                          ; $6865: $67
	ldh a, [$9e]                                     ; $6866: $f0 $9e
	ldh [$fd], a                                     ; $6868: $e0 $fd
	sbc [hl]                                         ; $686a: $9e
	ret nc                                           ; $686b: $d0

	ld a, [$309e]                                    ; $686c: $fa $9e $30
	ei                                               ; $686f: $fb
	sbc l                                            ; $6870: $9d
	ld b, b                                          ; $6871: $40
	rst GetHLinHL                                          ; $6872: $cf
	db $db                                           ; $6873: $db
	rst $38                                          ; $6874: $ff
	sub c                                            ; $6875: $91
	cp a                                             ; $6876: $bf
	cpl                                              ; $6877: $2f
	ld d, a                                          ; $6878: $57
	cpl                                              ; $6879: $2f
	ld e, a                                          ; $687a: $5f
	cpl                                              ; $687b: $2f
	ld e, a                                          ; $687c: $5f
	xor a                                            ; $687d: $af
	ld d, a                                          ; $687e: $57
	ret nc                                           ; $687f: $d0

	xor b                                            ; $6880: $a8
	ret nc                                           ; $6881: $d0

	and b                                            ; $6882: $a0
	ret nc                                           ; $6883: $d0

	ld a, c                                          ; $6884: $79
	ldh a, [$71]                                     ; $6885: $f0 $71
	jp hl                                            ; $6887: $e9


	ld a, l                                          ; $6888: $7d
	db $db                                           ; $6889: $db
	sbc [hl]                                         ; $688a: $9e
	push af                                          ; $688b: $f5
	or $7e                                           ; $688c: $f6 $7e
	rst SubAFromBC                                          ; $688e: $e7
	sbc h                                            ; $688f: $9c
	ld bc, $570a                                     ; $6890: $01 $0a $57
	ld sp, hl                                        ; $6893: $f9
	sbc b                                            ; $6894: $98
	or a                                             ; $6895: $b7
	ld [hl], a                                       ; $6896: $77
	or a                                             ; $6897: $b7
	ld [hl], a                                       ; $6898: $77
	rst $38                                          ; $6899: $ff
	ld a, a                                          ; $689a: $7f
	or a                                             ; $689b: $b7
	ld h, d                                          ; $689c: $62
	ret nz                                           ; $689d: $c0

	ld a, [hl]                                       ; $689e: $7e
	jp nz, Jump_04c_447f                             ; $689f: $c2 $7f $44

	ld a, a                                          ; $68a2: $7f
	cp $7d                                           ; $68a3: $fe $7d
	jp nc, $db7b                                     ; $68a5: $d2 $7b $db

	sbc l                                            ; $68a8: $9d
	ld [bc], a                                       ; $68a9: $02
	ld bc, $c279                                     ; $68aa: $01 $79 $c2
	ld [hl], l                                       ; $68ad: $75
	jr nz, jr_04c_6927                               ; $68ae: $20 $77

	cp $6b                                           ; $68b0: $fe $6b
	ld sp, hl                                        ; $68b2: $f9
	adc [hl]                                         ; $68b3: $8e
	xor d                                            ; $68b4: $aa
	cp a                                             ; $68b5: $bf
	ld e, a                                          ; $68b6: $5f
	cp a                                             ; $68b7: $bf
	ld e, a                                          ; $68b8: $5f
	xor e                                            ; $68b9: $ab
	ld d, l                                          ; $68ba: $55
	xor d                                            ; $68bb: $aa
	ld d, h                                          ; $68bc: $54
	ld e, a                                          ; $68bd: $5f
	and a                                            ; $68be: $a7
	ld c, e                                          ; $68bf: $4b
	and l                                            ; $68c0: $a5
	ld d, [hl]                                       ; $68c1: $56
	xor e                                            ; $68c2: $ab
	ld d, l                                          ; $68c3: $55
	xor e                                            ; $68c4: $ab
	db $dd                                           ; $68c5: $dd
	ld a, a                                          ; $68c6: $7f
	ld a, a                                          ; $68c7: $7f
	call $b78d                                       ; $68c8: $cd $8d $b7
	ld a, [$b8fc]                                    ; $68cb: $fa $fc $b8
	db $f4                                           ; $68ce: $f4
	cp b                                             ; $68cf: $b8
	ldh a, [rAUD4GO]                                 ; $68d0: $f0 $23
	rst SubAFromDE                                          ; $68d2: $df
	rst $38                                          ; $68d3: $ff
	ld a, [$a8d4]                                    ; $68d4: $fa $d4 $a8
	ret nc                                           ; $68d7: $d0

	or b                                             ; $68d8: $b0
	ld e, b                                          ; $68d9: $58
	db $fc                                           ; $68da: $fc
	ld [hl], h                                       ; $68db: $74
	ld a, d                                          ; $68dc: $7a
	dec a                                            ; $68dd: $3d
	sbc d                                            ; $68de: $9a
	cpl                                              ; $68df: $2f
	ld a, a                                          ; $68e0: $7f
	rst SubAFromBC                                          ; $68e1: $e7
	rst SubAFromBC                                          ; $68e2: $e7
	adc e                                            ; $68e3: $8b
	call c, $93ff                                    ; $68e4: $dc $ff $93
	rst GetHLinHL                                          ; $68e7: $cf

jr_04c_68e8:
	rst SubAFromDE                                          ; $68e8: $df
	rst $38                                          ; $68e9: $ff
	ldh [$c0], a                                     ; $68ea: $e0 $c0
	call nz, $fffe                                   ; $68ec: $c4 $fe $ff
	sbc a                                            ; $68ef: $9f
	adc a                                            ; $68f0: $8f
	ldh a, [$03]                                     ; $68f1: $f0 $03
	halt                                             ; $68f3: $76
	push hl                                          ; $68f4: $e5
	sbc l                                            ; $68f5: $9d
	cp a                                             ; $68f6: $bf
	ld e, $75                                        ; $68f7: $1e $75
	sbc a                                            ; $68f9: $9f
	sbc b                                            ; $68fa: $98
	rrca                                             ; $68fb: $0f
	db $fd                                           ; $68fc: $fd
	ld a, a                                          ; $68fd: $7f
	ld a, $3f                                        ; $68fe: $3e $3f
	rst SubAFromHL                                          ; $6900: $d7
	and $75                                          ; $6901: $e6 $75
	ld b, d                                          ; $6903: $42
	sbc l                                            ; $6904: $9d
	ld a, [hl]                                       ; $6905: $7e
	cp $7a                                           ; $6906: $fe $7a
	cp c                                             ; $6908: $b9
	call c, $99ff                                    ; $6909: $dc $ff $99
	jp nc, $deae                                     ; $690c: $d2 $ae $de

	ld a, $de                                        ; $690f: $3e $de
	cp $de                                           ; $6911: $fe $de
	db $fc                                           ; $6913: $fc
	sbc e                                            ; $6914: $9b
	ldh a, [$e0]                                     ; $6915: $f0 $e0
	ret nz                                           ; $6917: $c0

jr_04c_6918:
	jr nz, jr_04c_6918                               ; $6918: $20 $fe

	sbc d                                            ; $691a: $9a
	push af                                          ; $691b: $f5
	cp $ff                                           ; $691c: $fe $ff
	cp a                                             ; $691e: $bf
	cp $78                                           ; $691f: $fe $78
	xor e                                            ; $6921: $ab
	ld sp, hl                                        ; $6922: $f9
	ld [hl], h                                       ; $6923: $74
	sbc h                                            ; $6924: $9c
	rst SubAFromDE                                          ; $6925: $df
	rst $38                                          ; $6926: $ff

jr_04c_6927:
	sbc l                                            ; $6927: $9d
	cp [hl]                                          ; $6928: $be
	db $fd                                           ; $6929: $fd
	ld l, e                                          ; $692a: $6b
	dec [hl]                                         ; $692b: $35
	sbc [hl]                                         ; $692c: $9e
	ld [bc], a                                       ; $692d: $02
	ld a, b                                          ; $692e: $78
	ld hl, sp-$22                                    ; $692f: $f8 $de
	rst $38                                          ; $6931: $ff
	sbc l                                            ; $6932: $9d
	xor d                                            ; $6933: $aa
	push de                                          ; $6934: $d5
	ei                                               ; $6935: $fb
	sbc c                                            ; $6936: $99
	ld d, l                                          ; $6937: $55
	ld a, [hl+]                                      ; $6938: $2a
	ld d, b                                          ; $6939: $50
	xor b                                            ; $693a: $a8
	ld d, l                                          ; $693b: $55
	ld a, [$8376]                                    ; $693c: $fa $76 $83
	or $9a                                           ; $693f: $f6 $9a
	and b                                            ; $6941: $a0
	ld d, l                                          ; $6942: $55
	cp d                                             ; $6943: $ba
	ld d, l                                          ; $6944: $55
	xor $f5                                          ; $6945: $ee $f5
	ld a, e                                          ; $6947: $7b
	jr c, jr_04c_68e8                                ; $6948: $38 $9e

	db $eb                                           ; $694a: $eb
	ld sp, hl                                        ; $694b: $f9
	sub l                                            ; $694c: $95
	cp d                                             ; $694d: $ba
	dec d                                            ; $694e: $15
	ld [$006a], sp                                   ; $694f: $08 $6a $00
	ld b, l                                          ; $6952: $45
	xor d                                            ; $6953: $aa
	ld d, l                                          ; $6954: $55
	ld b, l                                          ; $6955: $45
	ld [$887a], a                                    ; $6956: $ea $7a $88
	sbc $ff                                          ; $6959: $de $ff
	add h                                            ; $695b: $84
	xor e                                            ; $695c: $ab
	ld b, a                                          ; $695d: $47
	inc bc                                           ; $695e: $03
	rla                                              ; $695f: $17
	ld [bc], a                                       ; $6960: $02
	ld b, l                                          ; $6961: $45
	and d                                            ; $6962: $a2
	ld d, l                                          ; $6963: $55
	ld d, h                                          ; $6964: $54
	cp b                                             ; $6965: $b8
	db $fc                                           ; $6966: $fc
	add sp, -$03                                     ; $6967: $e8 $fd
	cp d                                             ; $6969: $ba
	db $fd                                           ; $696a: $fd
	cp $fa                                           ; $696b: $fe $fa
	db $fd                                           ; $696d: $fd
	ld a, [$feff]                                    ; $696e: $fa $ff $fe
	pop hl                                           ; $6971: $e1
	add sp, $51                                      ; $6972: $e8 $51
	nop                                              ; $6974: $00
	ld [bc], a                                       ; $6975: $02
	dec b                                            ; $6976: $05
	cp $8c                                           ; $6977: $fe $8c
	rla                                              ; $6979: $17
	xor a                                            ; $697a: $af
	cp d                                             ; $697b: $ba
	rst $38                                          ; $697c: $ff
	ld a, [bc]                                       ; $697d: $0a
	ld d, a                                          ; $697e: $57
	db $10                                           ; $697f: $10
	ld e, l                                          ; $6980: $5d
	sub e                                            ; $6981: $93
	ld sp, hl                                        ; $6982: $f9
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	rst FarCall                                          ; $6985: $f7
	xor b                                            ; $6986: $a8
	nop                                              ; $6987: $00
	and d                                            ; $6988: $a2
	ld l, h                                          ; $6989: $6c
	cp $b7                                           ; $698a: $fe $b7
	db $dd                                           ; $698c: $dd
	rst FarCall                                          ; $698d: $f7
	ld e, e                                          ; $698e: $5b
	sub b                                            ; $698f: $90
	ld a, e                                          ; $6990: $7b
	ret nc                                           ; $6991: $d0

	ld a, c                                          ; $6992: $79
	ld b, l                                          ; $6993: $45
	sbc l                                            ; $6994: $9d
	ld [$74d5], a                                    ; $6995: $ea $d5 $74
	add [hl]                                         ; $6998: $86
	ld a, c                                          ; $6999: $79
	scf                                              ; $699a: $37
	sbc [hl]                                         ; $699b: $9e
	ld a, [hl+]                                      ; $699c: $2a
	ld [hl], d                                       ; $699d: $72
	jp z, $be9c                                      ; $699e: $ca $9c $be

	ld e, a                                          ; $69a1: $5f
	cp a                                             ; $69a2: $bf
	ld [hl], d                                       ; $69a3: $72
	jp Jump_04c_4e9c                                 ; $69a4: $c3 $9c $4e


	sbc a                                            ; $69a7: $9f
	ld e, a                                          ; $69a8: $5f
	ld l, [hl]                                       ; $69a9: $6e
	cp c                                             ; $69aa: $b9
	sbc l                                            ; $69ab: $9d
	ld a, [hl+]                                      ; $69ac: $2a
	sub l                                            ; $69ad: $95
	ld l, [hl]                                       ; $69ae: $6e
	or d                                             ; $69af: $b2
	sbc d                                            ; $69b0: $9a
	push de                                          ; $69b1: $d5
	ld [$eaff], a                                    ; $69b2: $ea $ff $ea
	push de                                          ; $69b5: $d5
	ld [hl], e                                       ; $69b6: $73
	cp $9d                                           ; $69b7: $fe $9d
	ld sp, hl                                        ; $69b9: $f9
	ld b, b                                          ; $69ba: $40
	sbc $c0                                          ; $69bb: $de $c0
	sbc $40                                          ; $69bd: $de $40
	sub a                                            ; $69bf: $97
	ld [hl], e                                       ; $69c0: $73
	xor d                                            ; $69c1: $aa
	scf                                              ; $69c2: $37
	xor b                                            ; $69c3: $a8
	ld d, b                                          ; $69c4: $50
	and b                                            ; $69c5: $a0
	ld b, b                                          ; $69c6: $40
	and b                                            ; $69c7: $a0
	ld sp, hl                                        ; $69c8: $f9
	add b                                            ; $69c9: $80
	rst $38                                          ; $69ca: $ff
	push de                                          ; $69cb: $d5
	xor d                                            ; $69cc: $aa
	rra                                              ; $69cd: $1f
	rst SubAFromDE                                          ; $69ce: $df
	add hl, bc                                       ; $69cf: $09
	add c                                            ; $69d0: $81
	ld hl, sp+$00                                    ; $69d1: $f8 $00
	ld a, [hl+]                                      ; $69d3: $2a
	ld d, l                                          ; $69d4: $55
	rst AddAOntoHL                                          ; $69d5: $ef
	ccf                                              ; $69d6: $3f
	pop af                                           ; $69d7: $f1
	ld [hl], c                                       ; $69d8: $71
	inc bc                                           ; $69d9: $03
	rst $38                                          ; $69da: $ff
	ld e, a                                          ; $69db: $5f
	xor a                                            ; $69dc: $af
	rst SubAFromHL                                          ; $69dd: $d7
	xor a                                            ; $69de: $af
	rst FarCall                                          ; $69df: $f7
	rst $38                                          ; $69e0: $ff
	ld [hl], a                                       ; $69e1: $77
	nop                                              ; $69e2: $00
	and b                                            ; $69e3: $a0
	ld d, b                                          ; $69e4: $50
	add sp, -$50                                     ; $69e5: $e8 $b0
	ld hl, sp-$10                                    ; $69e7: $f8 $f0
	sbc c                                            ; $69e9: $99
	ld l, b                                          ; $69ea: $68
	rst $38                                          ; $69eb: $ff
	xor a                                            ; $69ec: $af
	ld d, [hl]                                       ; $69ed: $56
	xor a                                            ; $69ee: $af
	ld e, [hl]                                       ; $69ef: $5e
	ld a, e                                          ; $69f0: $7b
	cp $9c                                           ; $69f1: $fe $9c
	ld e, $02                                        ; $69f3: $1e $02
	ld [bc], a                                       ; $69f5: $02
	call c, $8f06                                    ; $69f6: $dc $06 $8f
	cp $7e                                           ; $69f9: $fe $7e
	halt                                             ; $69fb: $76
	ld a, d                                          ; $69fc: $7a
	ld a, [hl]                                       ; $69fd: $7e
	ld a, [$abf7]                                    ; $69fe: $fa $f7 $ab
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	ld [$0004], sp                                   ; $6a03: $08 $04 $00
	inc b                                            ; $6a06: $04
	ld [$6854], sp                                   ; $6a07: $08 $54 $68
	add c                                            ; $6a0a: $81
	ld h, [hl]                                       ; $6a0b: $66
	nop                                              ; $6a0c: $00
	sbc [hl]                                         ; $6a0d: $9e
	ld a, [bc]                                       ; $6a0e: $0a
	halt                                             ; $6a0f: $76
	inc h                                            ; $6a10: $24
	ld a, [hl]                                       ; $6a11: $7e
	call $857f                                       ; $6a12: $cd $7f $85
	halt                                             ; $6a15: $76
	inc h                                            ; $6a16: $24
	ld a, [hl]                                       ; $6a17: $7e
	inc e                                            ; $6a18: $1c
	ld a, a                                          ; $6a19: $7f
	ld a, [hl]                                       ; $6a1a: $7e
	sbc l                                            ; $6a1b: $9d
	add b                                            ; $6a1c: $80
	ld bc, $7773                                     ; $6a1d: $01 $73 $77
	sbc h                                            ; $6a20: $9c
	ld b, b                                          ; $6a21: $40
	ld a, a                                          ; $6a22: $7f
	cp $73                                           ; $6a23: $fe $73
	ld l, [hl]                                       ; $6a25: $6e
	rst SubAFromDE                                          ; $6a26: $df
	cp a                                             ; $6a27: $bf
	ld a, [hl]                                       ; $6a28: $7e
	sub l                                            ; $6a29: $95
	sbc d                                            ; $6a2a: $9a
	ld d, a                                          ; $6a2b: $57
	xor d                                            ; $6a2c: $aa
	ld d, l                                          ; $6a2d: $55
	nop                                              ; $6a2e: $00
	ld b, h                                          ; $6a2f: $44
	ld a, c                                          ; $6a30: $79
	ret                                              ; $6a31: $c9


	ld a, [hl]                                       ; $6a32: $7e
	or [hl]                                          ; $6a33: $b6
	sbc h                                            ; $6a34: $9c
	xor d                                            ; $6a35: $aa
	rst $38                                          ; $6a36: $ff
	cp e                                             ; $6a37: $bb
	sbc $ff                                          ; $6a38: $de $ff
	sbc e                                            ; $6a3a: $9b
	ld a, a                                          ; $6a3b: $7f
	xor e                                            ; $6a3c: $ab
	ld d, l                                          ; $6a3d: $55
	nop                                              ; $6a3e: $00
	ld [hl], h                                       ; $6a3f: $74
	add b                                            ; $6a40: $80
	sub e                                            ; $6a41: $93
	add b                                            ; $6a42: $80
	ld d, h                                          ; $6a43: $54
	xor d                                            ; $6a44: $aa
	rst $38                                          ; $6a45: $ff
	cp a                                             ; $6a46: $bf
	ld e, [hl]                                       ; $6a47: $5e
	db $fd                                           ; $6a48: $fd
	ld [$faf5], a                                    ; $6a49: $ea $f5 $fa
	ld d, l                                          ; $6a4c: $55
	and b                                            ; $6a4d: $a0
	ld a, d                                          ; $6a4e: $7a
	add [hl]                                         ; $6a4f: $86
	sbc d                                            ; $6a50: $9a
	dec d                                            ; $6a51: $15
	ld a, [bc]                                       ; $6a52: $0a
	dec b                                            ; $6a53: $05
	xor d                                            ; $6a54: $aa
	ld e, a                                          ; $6a55: $5f
	ld a, e                                          ; $6a56: $7b
	or [hl]                                          ; $6a57: $b6
	sbc d                                            ; $6a58: $9a
	ld [$ab55], a                                    ; $6a59: $ea $55 $ab
	ld d, a                                          ; $6a5c: $57
	xor a                                            ; $6a5d: $af
	ret c                                            ; $6a5e: $d8

	rst $38                                          ; $6a5f: $ff
	ld a, l                                          ; $6a60: $7d
	and $7f                                          ; $6a61: $e6 $7f
	dec hl                                           ; $6a63: $2b
	sbc e                                            ; $6a64: $9b
	xor d                                            ; $6a65: $aa
	push af                                          ; $6a66: $f5
	ld [$d9f5], a                                    ; $6a67: $ea $f5 $d9
	rst $38                                          ; $6a6a: $ff
	add [hl]                                         ; $6a6b: $86
	xor a                                            ; $6a6c: $af
	ld d, l                                          ; $6a6d: $55
	dec hl                                           ; $6a6e: $2b
	ld d, $82                                        ; $6a6f: $16 $82
	ld b, [hl]                                       ; $6a71: $46
	add d                                            ; $6a72: $82
	ld b, [hl]                                       ; $6a73: $46
	ld d, e                                          ; $6a74: $53
	xor d                                            ; $6a75: $aa
	push de                                          ; $6a76: $d5
	db $eb                                           ; $6a77: $eb
	rst $38                                          ; $6a78: $ff
	ei                                               ; $6a79: $fb
	rst $38                                          ; $6a7a: $ff
	ei                                               ; $6a7b: $fb
	rst AddAOntoHL                                          ; $6a7c: $ef
	rst FarCall                                          ; $6a7d: $f7
	ld sp, hl                                        ; $6a7e: $f9
	ccf                                              ; $6a7f: $3f
	ccf                                              ; $6a80: $3f
	ld a, a                                          ; $6a81: $7f
	ld a, a                                          ; $6a82: $7f
	rra                                              ; $6a83: $1f
	xor $7b                                          ; $6a84: $ee $7b
	ld hl, sp+$7f                                    ; $6a86: $f8 $7f
	sub h                                            ; $6a88: $94
	sub [hl]                                         ; $6a89: $96
	ld a, [hl]                                       ; $6a8a: $7e
	jr @+$01                                         ; $6a8b: $18 $ff

	rst $38                                          ; $6a8d: $ff
	ld e, a                                          ; $6a8e: $5f
	ld l, a                                          ; $6a8f: $6f
	ld e, [hl]                                       ; $6a90: $5e
	xor l                                            ; $6a91: $ad
	ld a, [bc]                                       ; $6a92: $0a
	ld a, d                                          ; $6a93: $7a
	and e                                            ; $6a94: $a3
	sbc c                                            ; $6a95: $99
	and b                                            ; $6a96: $a0
	sub b                                            ; $6a97: $90
	and c                                            ; $6a98: $a1
	ld d, d                                          ; $6a99: $52
	push af                                          ; $6a9a: $f5
	ld a, [$9045]                                    ; $6a9b: $fa $45 $90
	add b                                            ; $6a9e: $80
	ld b, e                                          ; $6a9f: $43
	and c                                            ; $6aa0: $a1
	ld e, e                                          ; $6aa1: $5b
	and b                                            ; $6aa2: $a0
	ld d, b                                          ; $6aa3: $50
	or d                                             ; $6aa4: $b2
	ld b, d                                          ; $6aa5: $42
	and d                                            ; $6aa6: $a2
	and e                                            ; $6aa7: $a3
	ld d, l                                          ; $6aa8: $55
	and e                                            ; $6aa9: $a3
	ld d, b                                          ; $6aaa: $50
	and b                                            ; $6aab: $a0
	ld b, d                                          ; $6aac: $42
	and d                                            ; $6aad: $a2
	ld c, e                                          ; $6aae: $4b
	xor e                                            ; $6aaf: $ab
	sub a                                            ; $6ab0: $97
	ccf                                              ; $6ab1: $3f
	ld e, [hl]                                       ; $6ab2: $5e
	or c                                             ; $6ab3: $b1
	add h                                            ; $6ab4: $84
	and c                                            ; $6ab5: $a1
	db $fc                                           ; $6ab6: $fc
	call nc, $c0e8                                   ; $6ab7: $d4 $e8 $c0
	and c                                            ; $6aba: $a1
	ret nz                                           ; $6abb: $c0

	jp $96de                                         ; $6abc: $c3 $de $96


	db $e3                                           ; $6abf: $e3
	push de                                          ; $6ac0: $d5
	ld [$eaf5], a                                    ; $6ac1: $ea $f5 $ea
	rst SubAFromDE                                          ; $6ac4: $df
	rrca                                             ; $6ac5: $0f
	ccf                                              ; $6ac6: $3f
	rst AddAOntoHL                                          ; $6ac7: $ef
	sbc $40                                          ; $6ac8: $de $40
	sub e                                            ; $6aca: $93
	ret nz                                           ; $6acb: $c0

	ld [$0f0f], sp                                   ; $6acc: $08 $0f $0f
	ld b, $40                                        ; $6acf: $06 $40
	and b                                            ; $6ad1: $a0
	ld b, b                                          ; $6ad2: $40
	and e                                            ; $6ad3: $a3
	ei                                               ; $6ad4: $fb
	rst $38                                          ; $6ad5: $ff
	ld a, [$c076]                                    ; $6ad6: $fa $76 $c0
	sbc [hl]                                         ; $6ad9: $9e
	inc bc                                           ; $6ada: $03
	ld [hl], e                                       ; $6adb: $73
	ld hl, sp-$6c                                    ; $6adc: $f8 $94
	inc b                                            ; $6ade: $04
	ld c, $9b                                        ; $6adf: $0e $9b
	di                                               ; $6ae1: $f3
	ldh [c], a                                       ; $6ae2: $e2
	ldh [$60], a                                     ; $6ae3: $e0 $60
	inc b                                            ; $6ae5: $04
	rlca                                             ; $6ae6: $07
	dec bc                                           ; $6ae7: $0b
	rrca                                             ; $6ae8: $0f
	db $dd                                           ; $6ae9: $dd
	ccf                                              ; $6aea: $3f
	sub d                                            ; $6aeb: $92
	db $eb                                           ; $6aec: $eb
	ld [hl], l                                       ; $6aed: $75
	sbc d                                            ; $6aee: $9a
	cp l                                             ; $6aef: $bd
	ld c, a                                          ; $6af0: $4f
	dec de                                           ; $6af1: $1b
	inc de                                           ; $6af2: $13
	inc de                                           ; $6af3: $13
	ret nz                                           ; $6af4: $c0

	ldh [$e0], a                                     ; $6af5: $e0 $e0
	ld hl, sp-$04                                    ; $6af7: $f8 $fc
	ld a, c                                          ; $6af9: $79
	inc de                                           ; $6afa: $13
	halt                                             ; $6afb: $76
	call nz, Call_04c_7e75                           ; $6afc: $c4 $75 $7e
	sbc $06                                          ; $6aff: $de $06
	adc c                                            ; $6b01: $89
	ld [bc], a                                       ; $6b02: $02
	ld a, h                                          ; $6b03: $7c
	ld a, h                                          ; $6b04: $7c
	dec a                                            ; $6b05: $3d
	ld e, l                                          ; $6b06: $5d
	ld b, e                                          ; $6b07: $43
	add e                                            ; $6b08: $83
	rla                                              ; $6b09: $17
	xor e                                            ; $6b0a: $ab
	ld d, [hl]                                       ; $6b0b: $56
	rrca                                             ; $6b0c: $0f
	ld [de], a                                       ; $6b0d: $12
	rst SubAFromBC                                          ; $6b0e: $e7
	cp h                                             ; $6b0f: $bc
	ld a, h                                          ; $6b10: $7c
	db $fc                                           ; $6b11: $fc
	ld a, h                                          ; $6b12: $7c
	db $fd                                           ; $6b13: $fd
	db $fc                                           ; $6b14: $fc
	db $ed                                           ; $6b15: $ed
	ld hl, sp-$16                                    ; $6b16: $f8 $ea
	ld a, d                                          ; $6b18: $7a
	ld [hl], e                                       ; $6b19: $73
	ld a, [hl]                                       ; $6b1a: $7e
	or l                                             ; $6b1b: $b5
	sbc e                                            ; $6b1c: $9b
	ld d, l                                          ; $6b1d: $55
	pop hl                                           ; $6b1e: $e1
	dec d                                            ; $6b1f: $15
	xor a                                            ; $6b20: $af
	ld [hl], c                                       ; $6b21: $71
	add [hl]                                         ; $6b22: $86
	sbc e                                            ; $6b23: $9b
	nop                                              ; $6b24: $00
	xor d                                            ; $6b25: $aa
	dec b                                            ; $6b26: $05
	ld [bc], a                                       ; $6b27: $02
	ld [hl], l                                       ; $6b28: $75
	cp [hl]                                          ; $6b29: $be
	sbc [hl]                                         ; $6b2a: $9e
	rst $38                                          ; $6b2b: $ff
	ld l, l                                          ; $6b2c: $6d
	sbc d                                            ; $6b2d: $9a
	ld a, d                                          ; $6b2e: $7a
	add hl, bc                                       ; $6b2f: $09
	sub l                                            ; $6b30: $95
	ld a, b                                          ; $6b31: $78
	dec h                                            ; $6b32: $25
	ld a, [bc]                                       ; $6b33: $0a
	dec b                                            ; $6b34: $05
	ld a, [bc]                                       ; $6b35: $0a
	ld d, b                                          ; $6b36: $50
	ld b, c                                          ; $6b37: $41
	rst $38                                          ; $6b38: $ff
	add a                                            ; $6b39: $87
	rst SubAFromDE                                          ; $6b3a: $df
	ld [hl], b                                       ; $6b3b: $70

jr_04c_6b3c:
	add b                                            ; $6b3c: $80
	sub l                                            ; $6b3d: $95
	xor d                                            ; $6b3e: $aa
	pop bc                                           ; $6b3f: $c1
	ld de, $55aa                                     ; $6b40: $11 $aa $55
	add b                                            ; $6b43: $80
	ld bc, $5555                                     ; $6b44: $01 $55 $55
	ld l, $db                                        ; $6b47: $2e $db
	rst $38                                          ; $6b49: $ff
	sub a                                            ; $6b4a: $97
	nop                                              ; $6b4b: $00
	db $10                                           ; $6b4c: $10
	ld a, h                                          ; $6b4d: $7c
	ld c, [hl]                                       ; $6b4e: $4e
	db $fc                                           ; $6b4f: $fc
	db $fc                                           ; $6b50: $fc
	ld hl, sp-$20                                    ; $6b51: $f8 $e0
	ld [hl], h                                       ; $6b53: $74
	ld a, [$ffde]                                    ; $6b54: $fa $de $ff
	sbc e                                            ; $6b57: $9b
	pop hl                                           ; $6b58: $e1
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	jr nz, jr_04c_6bd4                               ; $6b5b: $20 $77

	add hl, hl                                       ; $6b5d: $29
	ld [hl], b                                       ; $6b5e: $70
	jr z, jr_04c_6b3c                                ; $6b5f: $28 $db

	rst $38                                          ; $6b61: $ff
	sbc c                                            ; $6b62: $99
	call nc, $aa3e                                   ; $6b63: $d4 $3e $aa
	db $fd                                           ; $6b66: $fd
	rst AddAOntoHL                                          ; $6b67: $ef
	ld d, l                                          ; $6b68: $55
	ld a, e                                          ; $6b69: $7b
	push bc                                          ; $6b6a: $c5
	sbc [hl]                                         ; $6b6b: $9e
	pop bc                                           ; $6b6c: $c1
	db $dd                                           ; $6b6d: $dd
	rst $38                                          ; $6b6e: $ff
	ld a, a                                          ; $6b6f: $7f
	ld sp, $4a9a                                     ; $6b70: $31 $9a $4a
	and l                                            ; $6b73: $a5
	and d                                            ; $6b74: $a2
	push de                                          ; $6b75: $d5
	ld [$f077], a                                    ; $6b76: $ea $77 $f0
	ld a, [hl]                                       ; $6b79: $7e
	and e                                            ; $6b7a: $a3
	rst SubAFromDE                                          ; $6b7b: $df
	rst $38                                          ; $6b7c: $ff
	sub a                                            ; $6b7d: $97
	cp $a1                                           ; $6b7e: $fe $a1
	ld d, e                                          ; $6b80: $53
	or l                                             ; $6b81: $b5
	ld a, [bc]                                       ; $6b82: $0a
	sub [hl]                                         ; $6b83: $96
	ld c, $16                                        ; $6b84: $0e $16
	ld [hl], a                                       ; $6b86: $77
	or d                                             ; $6b87: $b2
	sbc [hl]                                         ; $6b88: $9e
	db $fd                                           ; $6b89: $fd
	db $dd                                           ; $6b8a: $dd
	ld sp, hl                                        ; $6b8b: $f9
	add b                                            ; $6b8c: $80
	ld a, a                                          ; $6b8d: $7f
	sub a                                            ; $6b8e: $97
	call $f1e3                                       ; $6b8f: $cd $e3 $f1
	xor h                                            ; $6b92: $ac
	push de                                          ; $6b93: $d5
	xor $00                                          ; $6b94: $ee $00
	add b                                            ; $6b96: $80
	ret nc                                           ; $6b97: $d0

	call c, $aaf6                                    ; $6b98: $dc $f6 $aa
	call nc, $08ee                                   ; $6b9b: $d4 $ee $08
	dec c                                            ; $6b9e: $0d
	ld a, [bc]                                       ; $6b9f: $0a
	ld e, l                                          ; $6ba0: $5d
	cpl                                              ; $6ba1: $2f
	ld d, e                                          ; $6ba2: $53
	ld [$f7a9], a                                    ; $6ba3: $ea $a9 $f7
	ldh a, [c]                                       ; $6ba6: $f2
	push af                                          ; $6ba7: $f5
	and d                                            ; $6ba8: $a2
	ret nc                                           ; $6ba9: $d0

	and b                                            ; $6baa: $a0
	rla                                              ; $6bab: $17
	add b                                            ; $6bac: $80
	cp $57                                           ; $6bad: $fe $57
	and a                                            ; $6baf: $a7
	ld d, a                                          ; $6bb0: $57
	and e                                            ; $6bb1: $a3
	ld d, e                                          ; $6bb2: $53
	res 0, h                                         ; $6bb3: $cb $84
	ld [bc], a                                       ; $6bb5: $02
	xor b                                            ; $6bb6: $a8
	ld d, a                                          ; $6bb7: $57
	xor a                                            ; $6bb8: $af
	ld d, e                                          ; $6bb9: $53
	and e                                            ; $6bba: $a3
	rlca                                             ; $6bbb: $07
	ld c, e                                          ; $6bbc: $4b
	pop bc                                           ; $6bbd: $c1
	ld b, d                                          ; $6bbe: $42
	add d                                            ; $6bbf: $82
	ldh [c], a                                       ; $6bc0: $e2
	and e                                            ; $6bc1: $a3
	add d                                            ; $6bc2: $82
	ld [bc], a                                       ; $6bc3: $02
	ld a, [hl]                                       ; $6bc4: $7e
	ld a, $a2                                        ; $6bc5: $3e $a2
	ld b, d                                          ; $6bc7: $42
	sbc d                                            ; $6bc8: $9a
	sbc e                                            ; $6bc9: $9b
	jp c, $9a1a                                      ; $6bca: $da $1a $9a

	adc [hl]                                         ; $6bcd: $8e
	adc $8a                                          ; $6bce: $ce $8a
	sub l                                            ; $6bd0: $95
	db $eb                                           ; $6bd1: $eb
	ld [hl], e                                       ; $6bd2: $73
	ld d, a                                          ; $6bd3: $57

jr_04c_6bd4:
	sbc $80                                          ; $6bd4: $de $80
	sbc c                                            ; $6bd6: $99
	add c                                            ; $6bd7: $81
	add e                                            ; $6bd8: $83
	adc a                                            ; $6bd9: $8f
	sbc a                                            ; $6bda: $9f
	cp a                                             ; $6bdb: $bf
	rst $38                                          ; $6bdc: $ff
	ld l, c                                          ; $6bdd: $69
	rst SubAFromDE                                          ; $6bde: $df
	sub [hl]                                         ; $6bdf: $96
	dec c                                            ; $6be0: $0d
	ld a, $7d                                        ; $6be1: $3e $7d
	ld [$e8f5], a                                    ; $6be3: $ea $f5 $e8
	ldh a, [$e8]                                     ; $6be6: $f0 $e8
	ld hl, sp+$73                                    ; $6be8: $f8 $73
	add hl, hl                                       ; $6bea: $29
	ld a, [hl]                                       ; $6beb: $7e
	ld e, b                                          ; $6bec: $58
	ld a, [hl]                                       ; $6bed: $7e
	cp b                                             ; $6bee: $b8
	ld a, [hl]                                       ; $6bef: $7e
	add hl, hl                                       ; $6bf0: $29
	ld a, l                                          ; $6bf1: $7d
	db $db                                           ; $6bf2: $db
	ld a, l                                          ; $6bf3: $7d
	sbc $dc                                          ; $6bf4: $de $dc
	ldh a, [$9e]                                     ; $6bf6: $f0 $9e
	ld sp, hl                                        ; $6bf8: $f9
	ld a, c                                          ; $6bf9: $79
	ei                                               ; $6bfa: $fb
	db $db                                           ; $6bfb: $db
	rst $38                                          ; $6bfc: $ff
	sub a                                            ; $6bfd: $97
	ld a, a                                          ; $6bfe: $7f
	add hl, sp                                       ; $6bff: $39
	add hl, sp                                       ; $6c00: $39
	dec a                                            ; $6c01: $3d
	dec e                                            ; $6c02: $1d
	add hl, de                                       ; $6c03: $19
	ld sp, hl                                        ; $6c04: $f9
	pop af                                           ; $6c05: $f1
	db $dd                                           ; $6c06: $dd
	rst $38                                          ; $6c07: $ff
	halt                                             ; $6c08: $76
	ret                                              ; $6c09: $c9


	sbc [hl]                                         ; $6c0a: $9e
	rra                                              ; $6c0b: $1f
	reti                                             ; $6c0c: $d9


	rst $38                                          ; $6c0d: $ff
	sub a                                            ; $6c0e: $97
	cp l                                             ; $6c0f: $bd
	ld a, l                                          ; $6c10: $7d
	cp l                                             ; $6c11: $bd
	push de                                          ; $6c12: $d5
	xor e                                            ; $6c13: $ab
	ld d, l                                          ; $6c14: $55
	add d                                            ; $6c15: $82
	ld bc, $fcdc                                     ; $6c16: $01 $dc $fc
	ld a, c                                          ; $6c19: $79
	sbc [hl]                                         ; $6c1a: $9e
	sub d                                            ; $6c1b: $92
	db $fc                                           ; $6c1c: $fc
	db $ec                                           ; $6c1d: $ec
	sbc h                                            ; $6c1e: $9c
	sbc b                                            ; $6c1f: $98
	db $fc                                           ; $6c20: $fc
	ld [hl], b                                       ; $6c21: $70
	cp b                                             ; $6c22: $b8
	ld a, a                                          ; $6c23: $7f
	nop                                              ; $6c24: $00
	ld bc, $152a                                     ; $6c25: $01 $2a $15
	xor e                                            ; $6c28: $ab
	ld a, e                                          ; $6c29: $7b
	ld [hl], $65                                     ; $6c2a: $36 $65
	ld sp, $009c                                     ; $6c2c: $31 $9c $00
	ld a, a                                          ; $6c2f: $7f
	xor d                                            ; $6c30: $aa
	ld a, e                                          ; $6c31: $7b
	inc h                                            ; $6c32: $24
	ld e, e                                          ; $6c33: $5b
	ldh a, [$da]                                     ; $6c34: $f0 $da
	rst $38                                          ; $6c36: $ff
	sbc [hl]                                         ; $6c37: $9e
	ldh a, [$fb]                                     ; $6c38: $f0 $fb
	sub l                                            ; $6c3a: $95
	add b                                            ; $6c3b: $80
	inc bc                                           ; $6c3c: $03
	db $fd                                           ; $6c3d: $fd
	rst $38                                          ; $6c3e: $ff
	cp $ff                                           ; $6c3f: $fe $ff
	ld hl, sp-$08                                    ; $6c41: $f8 $f8
	db $fc                                           ; $6c43: $fc
	ld bc, $03dd                                     ; $6c44: $01 $dd $03
	sub a                                            ; $6c47: $97
	rlca                                             ; $6c48: $07
	inc b                                            ; $6c49: $04
	nop                                              ; $6c4a: $00
	ld bc, $0600                                     ; $6c4b: $01 $00 $06
	dec b                                            ; $6c4e: $05
	dec b                                            ; $6c4f: $05
	sbc $01                                          ; $6c50: $de $01
	sub h                                            ; $6c52: $94
	ld b, b                                          ; $6c53: $40
	jr nz, jr_04c_6c9c                               ; $6c54: $20 $46

	inc h                                            ; $6c56: $24
	inc b                                            ; $6c57: $04
	ld hl, sp-$04                                    ; $6c58: $f8 $fc
	db $fc                                           ; $6c5a: $fc
	rst $38                                          ; $6c5b: $ff
	rrca                                             ; $6c5c: $0f
	ret nz                                           ; $6c5d: $c0

	call c, $7cff                                    ; $6c5e: $dc $ff $7c
	add e                                            ; $6c61: $83
	ei                                               ; $6c62: $fb
	ld a, a                                          ; $6c63: $7f
	or d                                             ; $6c64: $b2
	ld a, [hl]                                       ; $6c65: $7e
	dec e                                            ; $6c66: $1d
	sbc e                                            ; $6c67: $9b
	jr z, @-$73                                      ; $6c68: $28 $8b

	ld e, b                                          ; $6c6a: $58
	add b                                            ; $6c6b: $80
	db $dd                                           ; $6c6c: $dd
	rst $38                                          ; $6c6d: $ff
	add b                                            ; $6c6e: $80
	rst SubAFromHL                                          ; $6c6f: $d7
	ld a, [hl]                                       ; $6c70: $7e
	ldh [rP1], a                                     ; $6c71: $e0 $00
	and c                                            ; $6c73: $a1
	inc b                                            ; $6c74: $04
	rrca                                             ; $6c75: $0f
	xor e                                            ; $6c76: $ab
	ld d, [hl]                                       ; $6c77: $56
	add b                                            ; $6c78: $80
	ld b, $67                                        ; $6c79: $06 $67
	rst $38                                          ; $6c7b: $ff
	rst $38                                          ; $6c7c: $ff
	db $f4                                           ; $6c7d: $f4
	ld e, a                                          ; $6c7e: $5f
	ld a, [$0100]                                    ; $6c7f: $fa $00 $01
	rra                                              ; $6c82: $1f
	ld d, a                                          ; $6c83: $57
	ld e, a                                          ; $6c84: $5f
	daa                                              ; $6c85: $27
	ld e, a                                          ; $6c86: $5f
	dec l                                            ; $6c87: $2d
	ld e, c                                          ; $6c88: $59
	xor e                                            ; $6c89: $ab
	sub $f9                                          ; $6c8a: $d6 $f9
	or c                                             ; $6c8c: $b1
	ld sp, hl                                        ; $6c8d: $f9
	adc a                                            ; $6c8e: $8f
	or c                                             ; $6c8f: $b1
	inc de                                           ; $6c90: $13
	scf                                              ; $6c91: $37
	rst $38                                          ; $6c92: $ff
	rst $38                                          ; $6c93: $ff
	rst FarCall                                          ; $6c94: $f7
	xor e                                            ; $6c95: $ab
	rst SubAFromHL                                          ; $6c96: $d7
	xor e                                            ; $6c97: $ab
	rst SubAFromHL                                          ; $6c98: $d7
	xor $7d                                          ; $6c99: $ee $7d
	xor e                                            ; $6c9b: $ab

jr_04c_6c9c:
	or $aa                                           ; $6c9c: $f6 $aa
	sub $7b                                          ; $6c9e: $d6 $7b
	ld hl, sp-$74                                    ; $6ca0: $f8 $8c
	ld a, h                                          ; $6ca2: $7c
	ld a, [hl+]                                      ; $6ca3: $2a
	jr c, jr_04c_6ca9                                ; $6ca4: $38 $03

	ld [hl], d                                       ; $6ca6: $72
	dec e                                            ; $6ca7: $1d
	xor [hl]                                         ; $6ca8: $ae

jr_04c_6ca9:
	ld e, l                                          ; $6ca9: $5d
	xor d                                            ; $6caa: $aa
	ld e, l                                          ; $6cab: $5d
	ret nz                                           ; $6cac: $c0

	nop                                              ; $6cad: $00
	dec b                                            ; $6cae: $05
	ldh [c], a                                       ; $6caf: $e2
	ld d, c                                          ; $6cb0: $51
	and d                                            ; $6cb1: $a2
	ld d, l                                          ; $6cb2: $55
	and d                                            ; $6cb3: $a2
	and a                                            ; $6cb4: $a7
	jp c, $9eff                                      ; $6cb5: $da $ff $9e

	ld b, $7b                                        ; $6cb8: $06 $7b
	add [hl]                                         ; $6cba: $86
	db $dd                                           ; $6cbb: $dd
	ld bc, $3c9d                                     ; $6cbc: $01 $9d $3c
	dec e                                            ; $6cbf: $1d
	sbc $fd                                          ; $6cc0: $de $fd
	sub h                                            ; $6cc2: $94
	rst $38                                          ; $6cc3: $ff
	dec de                                           ; $6cc4: $1b
	ld de, $fddc                                     ; $6cc5: $11 $dc $fd
	dec e                                            ; $6cc8: $1d
	adc l                                            ; $6cc9: $8d
	ld e, l                                          ; $6cca: $5d
	rst $38                                          ; $6ccb: $ff
	dec de                                           ; $6ccc: $1b
	inc d                                            ; $6ccd: $14
	call nc, $9cff                                   ; $6cce: $d4 $ff $9c
	cp [hl]                                          ; $6cd1: $be
	ld e, l                                          ; $6cd2: $5d
	ld [$f876], a                                    ; $6cd3: $ea $76 $f8
	ld a, l                                          ; $6cd6: $7d
	ld c, d                                          ; $6cd7: $4a
	ld a, l                                          ; $6cd8: $7d
	ld a, h                                          ; $6cd9: $7c
	sbc h                                            ; $6cda: $9c
	db $f4                                           ; $6cdb: $f4
	ldh [$d0], a                                     ; $6cdc: $e0 $d0
	ld a, b                                          ; $6cde: $78
	ld c, d                                          ; $6cdf: $4a
	ld a, l                                          ; $6ce0: $7d
	push de                                          ; $6ce1: $d5
	sbc [hl]                                         ; $6ce2: $9e
	push af                                          ; $6ce3: $f5
	ld l, c                                          ; $6ce4: $69
	ld c, b                                          ; $6ce5: $48

jr_04c_6ce6:
	ld sp, hl                                        ; $6ce6: $f9
	ld a, h                                          ; $6ce7: $7c
	or c                                             ; $6ce8: $b1
	ld l, a                                          ; $6ce9: $6f
	cp $9a                                           ; $6cea: $fe $9a
	inc sp                                           ; $6cec: $33
	jr nc, jr_04c_6d04                               ; $6ced: $30 $15

	rla                                              ; $6cef: $17
	rla                                              ; $6cf0: $17
	sbc $13                                          ; $6cf1: $de $13
	sbc h                                            ; $6cf3: $9c
	di                                               ; $6cf4: $f3
	pop af                                           ; $6cf5: $f1
	pop af                                           ; $6cf6: $f1
	ld [hl], h                                       ; $6cf7: $74
	ld a, l                                          ; $6cf8: $7d
	sbc d                                            ; $6cf9: $9a
	ld a, [$1632]                                    ; $6cfa: $fa $32 $16
	ld a, $98                                        ; $6cfd: $3e $98
	db $dd                                           ; $6cff: $dd
	adc b                                            ; $6d00: $88
	sub a                                            ; $6d01: $97
	rst $38                                          ; $6d02: $ff
	rst AddAOntoHL                                          ; $6d03: $ef

jr_04c_6d04:
	ld d, a                                          ; $6d04: $57
	xor e                                            ; $6d05: $ab
	ld d, a                                          ; $6d06: $57
	xor e                                            ; $6d07: $ab
	ld d, l                                          ; $6d08: $55
	ld [bc], a                                       ; $6d09: $02
	ld a, b                                          ; $6d0a: $78
	ld [hl], e                                       ; $6d0b: $73
	ld [hl], a                                       ; $6d0c: $77
	cp $66                                           ; $6d0d: $fe $66
	pop af                                           ; $6d0f: $f1
	sbc l                                            ; $6d10: $9d
	xor e                                            ; $6d11: $ab
	xor a                                            ; $6d12: $af
	ld a, e                                          ; $6d13: $7b
	db $eb                                           ; $6d14: $eb
	sbc h                                            ; $6d15: $9c
	xor d                                            ; $6d16: $aa
	ld b, l                                          ; $6d17: $45
	ld [bc], a                                       ; $6d18: $02
	ld e, c                                          ; $6d19: $59
	ret c                                            ; $6d1a: $d8

	ld [hl], b                                       ; $6d1b: $70
	ld e, a                                          ; $6d1c: $5f
	sbc [hl]                                         ; $6d1d: $9e
	dec b                                            ; $6d1e: $05
	rst SubAFromHL                                          ; $6d1f: $d7
	rst $38                                          ; $6d20: $ff
	ld l, a                                          ; $6d21: $6f
	sub a                                            ; $6d22: $97
	rst SubAFromHL                                          ; $6d23: $d7
	rst $38                                          ; $6d24: $ff
	ld a, e                                          ; $6d25: $7b
	sbc e                                            ; $6d26: $9b
	ld a, e                                          ; $6d27: $7b
	ldh a, [$7e]                                     ; $6d28: $f0 $7e
	rst SubAFromDE                                          ; $6d2a: $df
	ld l, [hl]                                       ; $6d2b: $6e
	ld h, l                                          ; $6d2c: $65
	ld [hl], l                                       ; $6d2d: $75
	adc a                                            ; $6d2e: $8f
	sub c                                            ; $6d2f: $91
	ld a, [$a8d4]                                    ; $6d30: $fa $d4 $a8
	ld d, h                                          ; $6d33: $54
	add b                                            ; $6d34: $80
	inc h                                            ; $6d35: $24
	nop                                              ; $6d36: $00
	daa                                              ; $6d37: $27
	daa                                              ; $6d38: $27
	ld b, a                                          ; $6d39: $47
	ld b, a                                          ; $6d3a: $47
	adc e                                            ; $6d3b: $8b
	rlca                                             ; $6d3c: $07
	rst AddAOntoHL                                          ; $6d3d: $ef
	db $dd                                           ; $6d3e: $dd
	ld l, a                                          ; $6d3f: $6f
	sbc [hl]                                         ; $6d40: $9e
	rst AddAOntoHL                                          ; $6d41: $ef
	ret c                                            ; $6d42: $d8

	rst $38                                          ; $6d43: $ff
	cp $9e                                           ; $6d44: $fe $9e
	ld hl, sp+$73                                    ; $6d46: $f8 $73
	jr jr_04c_6ce6                                   ; $6d48: $18 $9c

jr_04c_6d4a:
	ld [$2f57], a                                    ; $6d4a: $ea $57 $2f
	halt                                             ; $6d4d: $76
	inc h                                            ; $6d4e: $24
	ld a, [hl]                                       ; $6d4f: $7e
	sub $9c                                          ; $6d50: $d6 $9c
	db $fc                                           ; $6d52: $fc
	ldh a, [$c0]                                     ; $6d53: $f0 $c0
	halt                                             ; $6d55: $76
	ld l, a                                          ; $6d56: $6f
	jp c, $9dff                                      ; $6d57: $da $ff $9d

	ld hl, sp-$80                                    ; $6d5a: $f8 $80
	ei                                               ; $6d5c: $fb
	sbc d                                            ; $6d5d: $9a
	cp $9d                                           ; $6d5e: $fe $9d
	adc l                                            ; $6d60: $8d
	adc c                                            ; $6d61: $89
	ld sp, hl                                        ; $6d62: $f9
	sbc $fb                                          ; $6d63: $de $fb
	sbc d                                            ; $6d65: $9a
	ld h, d                                          ; $6d66: $62
	sbc h                                            ; $6d67: $9c
	xor h                                            ; $6d68: $ac
	adc b                                            ; $6d69: $88
	jr c, jr_04c_6d4a                                ; $6d6a: $38 $de

	ld [$1f87], sp                                   ; $6d6c: $08 $87 $1f
	db $db                                           ; $6d6f: $db
	inc bc                                           ; $6d70: $03
	dec bc                                           ; $6d71: $0b
	dec h                                            ; $6d72: $25
	ld de, $1901                                     ; $6d73: $11 $01 $19
	jp c, Jump_04c_7e1e                              ; $6d76: $da $1e $7e

	ld a, $1a                                        ; $6d79: $3e $1a
	ld a, [bc]                                       ; $6d7b: $0a
	ld a, [de]                                       ; $6d7c: $1a
	ld [de], a                                       ; $6d7d: $12
	push af                                          ; $6d7e: $f5
	or d                                             ; $6d7f: $b2
	ld d, l                                          ; $6d80: $55
	xor d                                            ; $6d81: $aa
	push de                                          ; $6d82: $d5
	and e                                            ; $6d83: $a3
	rst SubAFromHL                                          ; $6d84: $d7
	and e                                            ; $6d85: $a3
	ld a, [$019e]                                    ; $6d86: $fa $9e $01
	ld l, e                                          ; $6d89: $6b
	ld d, h                                          ; $6d8a: $54
	ld a, a                                          ; $6d8b: $7f
	or b                                             ; $6d8c: $b0
	ld a, [hl]                                       ; $6d8d: $7e
	ccf                                              ; $6d8e: $3f
	sub l                                            ; $6d8f: $95
	dec b                                            ; $6d90: $05
	dec bc                                           ; $6d91: $0b
	ld d, l                                          ; $6d92: $55
	xor b                                            ; $6d93: $a8
	ld d, a                                          ; $6d94: $57
	ld sp, $1331                                     ; $6d95: $31 $31 $13
	rra                                              ; $6d98: $1f
	ld [hl], a                                       ; $6d99: $77
	sbc $ff                                          ; $6d9a: $de $ff
	sub a                                            ; $6d9c: $97
	inc [hl]                                         ; $6d9d: $34
	inc h                                            ; $6d9e: $24
	inc de                                           ; $6d9f: $13
	rrca                                             ; $6da0: $0f
	ld h, a                                          ; $6da1: $67
	cp a                                             ; $6da2: $bf
	ld a, [$73f5]                                    ; $6da3: $fa $f5 $73
	db $e3                                           ; $6da6: $e3
	ld a, d                                          ; $6da7: $7a
	cp $95                                           ; $6da8: $fe $95
	db $f4                                           ; $6daa: $f4
	ret z                                            ; $6dab: $c8

	or b                                             ; $6dac: $b0
	ret z                                            ; $6dad: $c8

	db $ec                                           ; $6dae: $ec
	ldh a, [$e8]                                     ; $6daf: $f0 $e8
	jr nz, @-$29                                     ; $6db1: $20 $d5

	and d                                            ; $6db3: $a2
	ld a, b                                          ; $6db4: $78
	sbc a                                            ; $6db5: $9f
	ld l, e                                          ; $6db6: $6b
	sub h                                            ; $6db7: $94
	db $fd                                           ; $6db8: $fd
	sbc [hl]                                         ; $6db9: $9e
	ld d, b                                          ; $6dba: $50
	ei                                               ; $6dbb: $fb
	sbc [hl]                                         ; $6dbc: $9e
	ld [$def9], sp                                   ; $6dbd: $08 $f9 $de
	ccf                                              ; $6dc0: $3f
	call c, $dc1f                                    ; $6dc1: $dc $1f $dc
	inc de                                           ; $6dc4: $13
	rst SubAFromDE                                          ; $6dc5: $df
	add hl, de                                       ; $6dc6: $19
	sbc l                                            ; $6dc7: $9d
	inc de                                           ; $6dc8: $13
	db $fc                                           ; $6dc9: $fc
	jp c, $dcf8                                      ; $6dca: $da $f8 $dc

	adc b                                            ; $6dcd: $88
	sbc $c8                                          ; $6dce: $de $c8
	ld a, d                                          ; $6dd0: $7a
	call Call_04c_5ef4                               ; $6dd1: $cd $f4 $5e
	add [hl]                                         ; $6dd4: $86
	ld l, d                                          ; $6dd5: $6a
	add b                                            ; $6dd6: $80
	sbc h                                            ; $6dd7: $9c
	xor a                                            ; $6dd8: $af
	ld d, l                                          ; $6dd9: $55
	ld [hl+], a                                      ; $6dda: $22
	ld [hl], b                                       ; $6ddb: $70
	ld c, l                                          ; $6ddc: $4d
	ld h, l                                          ; $6ddd: $65
	adc a                                            ; $6dde: $8f
	ld a, d                                          ; $6ddf: $7a
	and h                                            ; $6de0: $a4
	ld a, a                                          ; $6de1: $7f
	call c, $159d                                    ; $6de2: $dc $9d $15
	ld a, [bc]                                       ; $6de5: $0a
	ld h, a                                          ; $6de6: $67
	reti                                             ; $6de7: $d9


	db $dd                                           ; $6de8: $dd
	rst $38                                          ; $6de9: $ff
	halt                                             ; $6dea: $76
	or a                                             ; $6deb: $b7
	ld h, a                                          ; $6dec: $67
	ldh a, [$79]                                     ; $6ded: $f0 $79
	sbc [hl]                                         ; $6def: $9e
	sbc d                                            ; $6df0: $9a
	rst $38                                          ; $6df1: $ff
	ld e, a                                          ; $6df2: $5f
	xor a                                            ; $6df3: $af
	ld d, l                                          ; $6df4: $55
	xor d                                            ; $6df5: $aa
	ld [hl], l                                       ; $6df6: $75
	add d                                            ; $6df7: $82
	sbc [hl]                                         ; $6df8: $9e
	rlca                                             ; $6df9: $07
	ld a, e                                          ; $6dfa: $7b
	and e                                            ; $6dfb: $a3
	sbc $cf                                          ; $6dfc: $de $cf
	ld [hl], l                                       ; $6dfe: $75
	and [hl]                                         ; $6dff: $a6
	sbc b                                            ; $6e00: $98
	xor e                                            ; $6e01: $ab
	ld a, l                                          ; $6e02: $7d
	ld [hl-], a                                      ; $6e03: $32
	dec [hl]                                         ; $6e04: $35
	rst $38                                          ; $6e05: $ff
	rst $38                                          ; $6e06: $ff
	add l                                            ; $6e07: $85
	ld e, [hl]                                       ; $6e08: $5e
	ldh [$7f], a                                     ; $6e09: $e0 $7f
	db $db                                           ; $6e0b: $db
	ld a, a                                          ; $6e0c: $7f
	add hl, bc                                       ; $6e0d: $09
	ld a, e                                          ; $6e0e: $7b
	ret                                              ; $6e0f: $c9


	sbc [hl]                                         ; $6e10: $9e
	dec d                                            ; $6e11: $15
	ld e, d                                          ; $6e12: $5a
	or b                                             ; $6e13: $b0
	ld h, e                                          ; $6e14: $63
	or b                                             ; $6e15: $b0
	ld d, a                                          ; $6e16: $57
	ldh a, [$dd]                                     ; $6e17: $f0 $dd
	ld a, [$ee74]                                    ; $6e19: $fa $74 $ee
	db $dd                                           ; $6e1c: $dd
	ld [$04de], sp                                   ; $6e1d: $08 $de $04
	adc l                                            ; $6e20: $8d
	inc c                                            ; $6e21: $0c
	inc sp                                           ; $6e22: $33
	inc bc                                           ; $6e23: $03
	inc bc                                           ; $6e24: $03
	inc de                                           ; $6e25: $13
	inc de                                           ; $6e26: $13
	inc bc                                           ; $6e27: $03
	add e                                            ; $6e28: $83
	add e                                            ; $6e29: $83
	ld [de], a                                       ; $6e2a: $12
	ld [hl], $36                                     ; $6e2b: $36 $36
	ld h, $27                                        ; $6e2d: $26 $27
	scf                                              ; $6e2f: $37
	inc de                                           ; $6e30: $13
	ld [de], a                                       ; $6e31: $12
	ld d, a                                          ; $6e32: $57
	ld l, d                                          ; $6e33: $6a
	ld l, l                                          ; $6e34: $6d
	rst SubAFromDE                                          ; $6e35: $df
	rlca                                             ; $6e36: $07
	ld h, b                                          ; $6e37: $60
	or l                                             ; $6e38: $b5
	db $db                                           ; $6e39: $db
	rst $38                                          ; $6e3a: $ff
	ld a, [hl]                                       ; $6e3b: $7e
	db $dd                                           ; $6e3c: $dd
	ld a, c                                          ; $6e3d: $79
	xor c                                            ; $6e3e: $a9
	ld l, [hl]                                       ; $6e3f: $6e
	ret nc                                           ; $6e40: $d0

	ld a, c                                          ; $6e41: $79
	ret nc                                           ; $6e42: $d0

	ld a, e                                          ; $6e43: $7b
	ld e, e                                          ; $6e44: $5b
	halt                                             ; $6e45: $76
	db $db                                           ; $6e46: $db
	sbc e                                            ; $6e47: $9b
	add b                                            ; $6e48: $80
	ld b, b                                          ; $6e49: $40
	push af                                          ; $6e4a: $f5
	ld [$0972], a                                    ; $6e4b: $ea $72 $09
	sbc l                                            ; $6e4e: $9d
	cp a                                             ; $6e4f: $bf
	ld b, b                                          ; $6e50: $40
	ld a, [$159e]                                    ; $6e51: $fa $9e $15
	ld [hl], c                                       ; $6e54: $71
	ld sp, hl                                        ; $6e55: $f9
	ld a, h                                          ; $6e56: $7c
	sbc a                                            ; $6e57: $9f
	ld e, a                                          ; $6e58: $5f
	nop                                              ; $6e59: $00
	ld [hl], e                                       ; $6e5a: $73
	cp $9e                                           ; $6e5b: $fe $9e
	ld [$9df9], a                                    ; $6e5d: $ea $f9 $9d
	ld e, a                                          ; $6e60: $5f
	cp a                                             ; $6e61: $bf
	ld [hl], a                                       ; $6e62: $77
	cp $9d                                           ; $6e63: $fe $9d
	ld e, [hl]                                       ; $6e65: $5e
	cp a                                             ; $6e66: $bf
	db $dd                                           ; $6e67: $dd
	inc de                                           ; $6e68: $13
	rst SubAFromDE                                          ; $6e69: $df
	ld de, $1e99                                     ; $6e6a: $11 $99 $1e
	ccf                                              ; $6e6d: $3f
	db $fc                                           ; $6e6e: $fc
	ld a, b                                          ; $6e6f: $78
	db $fd                                           ; $6e70: $fd
	ld a, d                                          ; $6e71: $7a
	ld a, e                                          ; $6e72: $7b
	cp $9c                                           ; $6e73: $fe $9c
	ld a, a                                          ; $6e75: $7f
	ld c, b                                          ; $6e76: $48
	ld c, b                                          ; $6e77: $48
	sbc $68                                          ; $6e78: $de $68
	sbc d                                            ; $6e7a: $9a
	ld c, b                                          ; $6e7b: $48
	ld a, b                                          ; $6e7c: $78
	ld a, d                                          ; $6e7d: $7a
	ld b, l                                          ; $6e7e: $45
	and d                                            ; $6e7f: $a2
	ld d, e                                          ; $6e80: $53
	ret nc                                           ; $6e81: $d0

	ld a, a                                          ; $6e82: $7f
	sbc e                                            ; $6e83: $9b
	ld a, a                                          ; $6e84: $7f
	sbc l                                            ; $6e85: $9d
	ld a, a                                          ; $6e86: $7f
	cp $59                                           ; $6e87: $fe $59
	ld b, b                                          ; $6e89: $40
	db $fc                                           ; $6e8a: $fc
	sbc [hl]                                         ; $6e8b: $9e
	add d                                            ; $6e8c: $82
	ld e, a                                          ; $6e8d: $5f
	ldh a, [$7e]                                     ; $6e8e: $f0 $7e
	or h                                             ; $6e90: $b4
	ld a, c                                          ; $6e91: $79
	ld e, c                                          ; $6e92: $59
	sbc [hl]                                         ; $6e93: $9e
	ld a, [bc]                                       ; $6e94: $0a
	ld e, a                                          ; $6e95: $5f
	ldh a, [$7b]                                     ; $6e96: $f0 $7b
	call nz, $2a9e                                   ; $6e98: $c4 $9e $2a
	ld d, l                                          ; $6e9b: $55
	db $10                                           ; $6e9c: $10
	sbc d                                            ; $6e9d: $9a
	ld d, h                                          ; $6e9e: $54
	xor b                                            ; $6e9f: $a8
	ld d, h                                          ; $6ea0: $54
	xor d                                            ; $6ea1: $aa
	ld d, h                                          ; $6ea2: $54
	ld e, e                                          ; $6ea3: $5b
	ldh a, [$97]                                     ; $6ea4: $f0 $97
	rla                                              ; $6ea6: $17
	dec bc                                           ; $6ea7: $0b
	rlca                                             ; $6ea8: $07
	dec bc                                           ; $6ea9: $0b
	ld d, a                                          ; $6eaa: $57
	dec hl                                           ; $6eab: $2b
	ld d, a                                          ; $6eac: $57
	xor e                                            ; $6ead: $ab
	ld b, [hl]                                       ; $6eae: $46
	ldh [$9b], a                                     ; $6eaf: $e0 $9b
	dec bc                                           ; $6eb1: $0b
	dec b                                            ; $6eb2: $05
	inc bc                                           ; $6eb3: $03
	ld bc, $4476                                     ; $6eb4: $01 $76 $44
	ld [hl], c                                       ; $6eb7: $71
	jp nc, $f39d                                     ; $6eb8: $d2 $9d $f3

	cp a                                             ; $6ebb: $bf
	ld [hl], e                                       ; $6ebc: $73
	ld b, b                                          ; $6ebd: $40
	sbc [hl]                                         ; $6ebe: $9e
	inc bc                                           ; $6ebf: $03
	halt                                             ; $6ec0: $76
	db $fd                                           ; $6ec1: $fd
	sbc h                                            ; $6ec2: $9c
	cp $fb                                           ; $6ec3: $fe $fb
	rst SubAFromDE                                          ; $6ec5: $df
	ld [hl], l                                       ; $6ec6: $75
	ld b, b                                          ; $6ec7: $40
	ld a, a                                          ; $6ec8: $7f
	sbc e                                            ; $6ec9: $9b
	sbc [hl]                                         ; $6eca: $9e
	rrca                                             ; $6ecb: $0f
	ld [hl], l                                       ; $6ecc: $75
	ld l, c                                          ; $6ecd: $69
	sub l                                            ; $6ece: $95
	rst $38                                          ; $6ecf: $ff
	adc $6e                                          ; $6ed0: $ce $6e
	sbc $fe                                          ; $6ed2: $de $fe
	and $86                                          ; $6ed4: $e6 $86
	ld [bc], a                                       ; $6ed6: $02
	ld [bc], a                                       ; $6ed7: $02
	inc a                                            ; $6ed8: $3c
	jp c, $9efc                                      ; $6ed9: $da $fc $9e

	ld [de], a                                       ; $6edc: $12
	call c, $df92                                    ; $6edd: $dc $92 $df
	sub [hl]                                         ; $6ee0: $96
	reti                                             ; $6ee1: $d9


	inc bc                                           ; $6ee2: $03
	jp nc, Jump_04c_7aff                             ; $6ee3: $d2 $ff $7a

	rst SubAFromHL                                          ; $6ee6: $d7
	db $db                                           ; $6ee7: $db
	rst $38                                          ; $6ee8: $ff
	sbc l                                            ; $6ee9: $9d
	ld [$7bf5], a                                    ; $6eea: $ea $f5 $7b
	cp $7a                                           ; $6eed: $fe $7a
	ld e, [hl]                                       ; $6eef: $5e
	reti                                             ; $6ef0: $d9


	rst $38                                          ; $6ef1: $ff
	ld a, a                                          ; $6ef2: $7f
	dec hl                                           ; $6ef3: $2b
	sbc [hl]                                         ; $6ef4: $9e
	xor b                                            ; $6ef5: $a8
	ld d, b                                          ; $6ef6: $50
	ret nc                                           ; $6ef7: $d0

	cp $7b                                           ; $6ef8: $fe $7b
	rla                                              ; $6efa: $17
	ld a, a                                          ; $6efb: $7f
	ld de, $4026                                     ; $6efc: $11 $26 $40
	sbc l                                            ; $6eff: $9d
	ld a, [hl+]                                      ; $6f00: $2a
	dec d                                            ; $6f01: $15
	ld l, l                                          ; $6f02: $6d
	set 2, [hl]                                      ; $6f03: $cb $d6
	rst $38                                          ; $6f05: $ff
	ld d, e                                          ; $6f06: $53
	ldh a, [$9c]                                     ; $6f07: $f0 $9c
	db $fd                                           ; $6f09: $fd
	cp $f8                                           ; $6f0a: $fe $f8
	db $fc                                           ; $6f0c: $fc
	ld a, e                                          ; $6f0d: $7b
	sbc e                                            ; $6f0e: $9b
	sbc [hl]                                         ; $6f0f: $9e
	xor $dd                                          ; $6f10: $ee $dd
	rst $38                                          ; $6f12: $ff
	ld h, l                                          ; $6f13: $65
	inc a                                            ; $6f14: $3c
	ld [hl], a                                       ; $6f15: $77
	sbc e                                            ; $6f16: $9b
	ld d, a                                          ; $6f17: $57
	or b                                             ; $6f18: $b0
	ld [hl], a                                       ; $6f19: $77
	ldh a, [$9e]                                     ; $6f1a: $f0 $9e
	rst SubAFromHL                                          ; $6f1c: $d7
	ld c, e                                          ; $6f1d: $4b
	ldh a, [$9d]                                     ; $6f1e: $f0 $9d
	ld d, a                                          ; $6f20: $57
	cp a                                             ; $6f21: $bf
	ld d, e                                          ; $6f22: $53
	ldh a, [$9e]                                     ; $6f23: $f0 $9e
	xor a                                            ; $6f25: $af
	ld d, e                                          ; $6f26: $53
	ldh [$9e], a                                     ; $6f27: $e0 $9e
	xor e                                            ; $6f29: $ab
	ld l, l                                          ; $6f2a: $6d
	xor $62                                          ; $6f2b: $ee $62
	ld b, b                                          ; $6f2d: $40
	ld h, e                                          ; $6f2e: $63
	add e                                            ; $6f2f: $83
	sbc [hl]                                         ; $6f30: $9e
	and b                                            ; $6f31: $a0
	add hl, sp                                       ; $6f32: $39
	and b                                            ; $6f33: $a0
	ld a, [hl]                                       ; $6f34: $7e
	cp [hl]                                          ; $6f35: $be
	db $db                                           ; $6f36: $db
	rst $38                                          ; $6f37: $ff
	ld a, h                                          ; $6f38: $7c
	ld [$ffd9], a                                    ; $6f39: $ea $d9 $ff
	ld a, l                                          ; $6f3c: $7d
	ld b, c                                          ; $6f3d: $41
	sbc e                                            ; $6f3e: $9b
	ei                                               ; $6f3f: $fb
	pop hl                                           ; $6f40: $e1
	jp Jump_04c_6703                                 ; $6f41: $c3 $03 $67


	add sp, -$21                                     ; $6f44: $e8 $df
	rst $38                                          ; $6f46: $ff
	sbc d                                            ; $6f47: $9a
	ld [bc], a                                       ; $6f48: $02
	db $e3                                           ; $6f49: $e3
	rst $38                                          ; $6f4a: $ff
	db $fc                                           ; $6f4b: $fc
	cp $7b                                           ; $6f4c: $fe $7b
	pop de                                           ; $6f4e: $d1
	sbc $fe                                          ; $6f4f: $de $fe
	sbc l                                            ; $6f51: $9d
	ldh a, [$c0]                                     ; $6f52: $f0 $c0
	sbc $ff                                          ; $6f54: $de $ff
	sbc e                                            ; $6f56: $9b
	ld d, $fc                                        ; $6f57: $16 $fc
	db $fc                                           ; $6f59: $fc
	jr jr_04c_6fd3                                   ; $6f5a: $18 $77

	pop bc                                           ; $6f5c: $c1
	sbc h                                            ; $6f5d: $9c
	inc bc                                           ; $6f5e: $03
	rrca                                             ; $6f5f: $0f
	scf                                              ; $6f60: $37
	ld [hl], c                                       ; $6f61: $71
	adc [hl]                                         ; $6f62: $8e
	sub l                                            ; $6f63: $95
	dec b                                            ; $6f64: $05
	ld a, [bc]                                       ; $6f65: $0a
	ld bc, $8000                                     ; $6f66: $01 $00 $80
	ret nz                                           ; $6f69: $c0

	ldh a, [rLCDC]                                   ; $6f6a: $f0 $40
	ld a, [$7bf5]                                    ; $6f6c: $fa $f5 $7b
	jp c, $ffdc                                      ; $6f6f: $da $dc $ff

	sbc l                                            ; $6f72: $9d
	ld a, a                                          ; $6f73: $7f
	ccf                                              ; $6f74: $3f
	halt                                             ; $6f75: $76
	ld l, b                                          ; $6f76: $68
	ld a, e                                          ; $6f77: $7b
	ld e, c                                          ; $6f78: $59
	sbc [hl]                                         ; $6f79: $9e
	push de                                          ; $6f7a: $d5
	ld h, a                                          ; $6f7b: $67
	xor $9c                                          ; $6f7c: $ee $9c
	rst $38                                          ; $6f7e: $ff

Call_04c_6f7f:
	ccf                                              ; $6f7f: $3f
	rlca                                             ; $6f80: $07
	ld [hl], a                                       ; $6f81: $77
	ldh a, [$7b]                                     ; $6f82: $f0 $7b
	xor $9e                                          ; $6f84: $ee $9e
	ld a, [$ffd8]                                    ; $6f86: $fa $d8 $ff
	sbc l                                            ; $6f89: $9d
	add b                                            ; $6f8a: $80
	db $10                                           ; $6f8b: $10
	ld l, l                                          ; $6f8c: $6d
	sub a                                            ; $6f8d: $97
	ld e, a                                          ; $6f8e: $5f
	ld [hl], b                                       ; $6f8f: $70
	sbc [hl]                                         ; $6f90: $9e
	and b                                            ; $6f91: $a0
	ld b, [hl]                                       ; $6f92: $46
	and b                                            ; $6f93: $a0
	sbc [hl]                                         ; $6f94: $9e
	nop                                              ; $6f95: $00
	ld [hl], l                                       ; $6f96: $75
	and l                                            ; $6f97: $a5
	sub a                                            ; $6f98: $97
	xor $dd                                          ; $6f99: $ee $dd
	ld a, [$ead5]                                    ; $6f9b: $fa $d5 $ea
	push af                                          ; $6f9e: $f5
	ld a, [$fbfd]                                    ; $6f9f: $fa $fd $fb
	sbc d                                            ; $6fa2: $9a
	and b                                            ; $6fa3: $a0
	ld d, b                                          ; $6fa4: $50
	xor a                                            ; $6fa5: $af
	ld d, a                                          ; $6fa6: $57
	xor e                                            ; $6fa7: $ab
	ld a, e                                          ; $6fa8: $7b
	dec e                                            ; $6fa9: $1d
	sbc l                                            ; $6faa: $9d
	xor a                                            ; $6fab: $af
	ld e, a                                          ; $6fac: $5f
	ld h, l                                          ; $6fad: $65
	or c                                             ; $6fae: $b1
	ld c, a                                          ; $6faf: $4f
	jr nc, @-$60                                     ; $6fb0: $30 $9e

	add b                                            ; $6fb2: $80
	ld d, e                                          ; $6fb3: $53
	ret nz                                           ; $6fb4: $c0

	ccf                                              ; $6fb5: $3f
	ldh a, [$9d]                                     ; $6fb6: $f0 $9d
	nop                                              ; $6fb8: $00
	ld d, b                                          ; $6fb9: $50
	ld c, e                                          ; $6fba: $4b
	ldh a, [$9e]                                     ; $6fbb: $f0 $9e
	ld a, [hl+]                                      ; $6fbd: $2a
	ld d, e                                          ; $6fbe: $53
	ldh a, [$79]                                     ; $6fbf: $f0 $79
	ld l, b                                          ; $6fc1: $68
	ld d, a                                          ; $6fc2: $57
	ldh a, [rPCM34]                                  ; $6fc3: $f0 $77
	ld e, l                                          ; $6fc5: $5d
	ld e, e                                          ; $6fc6: $5b
	ldh a, [$9e]                                     ; $6fc7: $f0 $9e
	ld [bc], a                                       ; $6fc9: $02
	ld h, [hl]                                       ; $6fca: $66
	ld h, h                                          ; $6fcb: $64
	db $dd                                           ; $6fcc: $dd
	rst $38                                          ; $6fcd: $ff
	sbc [hl]                                         ; $6fce: $9e
	ld bc, $f273                                     ; $6fcf: $01 $73 $f2
	ld a, a                                          ; $6fd2: $7f

jr_04c_6fd3:
	cp $54                                           ; $6fd3: $fe $54
	nop                                              ; $6fd5: $00
	sbc $44                                          ; $6fd6: $de $44
	sbc b                                            ; $6fd8: $98
	ld b, [hl]                                       ; $6fd9: $46
	ld d, l                                          ; $6fda: $55
	ld h, e                                          ; $6fdb: $63
	inc sp                                           ; $6fdc: $33
	ld h, [hl]                                       ; $6fdd: $66
	ld h, [hl]                                       ; $6fde: $66
	ld h, l                                          ; $6fdf: $65
	sbc $44                                          ; $6fe0: $de $44
	sbc e                                            ; $6fe2: $9b
	ld b, e                                          ; $6fe3: $43
	ld h, l                                          ; $6fe4: $65
	inc sp                                           ; $6fe5: $33
	inc [hl]                                         ; $6fe6: $34
	sbc $66                                          ; $6fe7: $de $66
	db $dd                                           ; $6fe9: $dd
	ld b, h                                          ; $6fea: $44
	sbc l                                            ; $6feb: $9d
	ld [hl], $33                                     ; $6fec: $36 $33
	jp c, $9b44                                      ; $6fee: $da $44 $9b

	ld d, h                                          ; $6ff1: $54
	inc sp                                           ; $6ff2: $33
	ld d, l                                          ; $6ff3: $55
	inc [hl]                                         ; $6ff4: $34
	db $dd                                           ; $6ff5: $dd
	ld b, h                                          ; $6ff6: $44
	sbc d                                            ; $6ff7: $9a
	ld b, l                                          ; $6ff8: $45
	ld b, h                                          ; $6ff9: $44
	ld d, h                                          ; $6ffa: $54
	scf                                              ; $6ffb: $37
	ld [hl], a                                       ; $6ffc: $77
	ld l, a                                          ; $6ffd: $6f
	or $94                                           ; $6ffe: $f6 $94
	ld b, l                                          ; $7000: $45
	ld d, e                                          ; $7001: $53
	inc sp                                           ; $7002: $33
	ld [hl], a                                       ; $7003: $77
	inc sp                                           ; $7004: $33
	inc sp                                           ; $7005: $33
	ld d, l                                          ; $7006: $55
	ld d, [hl]                                       ; $7007: $56
	ld b, h                                          ; $7008: $44
	ld b, l                                          ; $7009: $45
	ld h, l                                          ; $700a: $65
	ld [hl], e                                       ; $700b: $73
	or $9a                                           ; $700c: $f6 $9a
	ld [hl], $43                                     ; $700e: $36 $43
	ld h, e                                          ; $7010: $63
	ld d, [hl]                                       ; $7011: $56
	dec [hl]                                         ; $7012: $35
	ld [hl], e                                       ; $7013: $73
	or $9b                                           ; $7014: $f6 $9b
	scf                                              ; $7016: $37
	ld [hl], e                                       ; $7017: $73
	inc sp                                           ; $7018: $33
	ld d, [hl]                                       ; $7019: $56
	sbc $33                                          ; $701a: $de $33
	ld a, e                                          ; $701c: $7b
	or $df                                           ; $701d: $f6 $df
	inc sp                                           ; $701f: $33
	rst SubAFromDE                                          ; $7020: $df
	ld h, [hl]                                       ; $7021: $66
	ld e, a                                          ; $7022: $5f
	or $7f                                           ; $7023: $f6 $7f
	sbc a                                            ; $7025: $9f
	db $db                                           ; $7026: $db
	inc sp                                           ; $7027: $33
	cp c                                             ; $7028: $b9
	rlca                                             ; $7029: $07
	sbc l                                            ; $702a: $9d
	nop                                              ; $702b: $00
	rst $38                                          ; $702c: $ff
	inc bc                                           ; $702d: $03
	cp $03                                           ; $702e: $fe $03
	cp $03                                           ; $7030: $fe $03
	cp $03                                           ; $7032: $fe $03
	cp $03                                           ; $7034: $fe $03
	cp $03                                           ; $7036: $fe $03
	cp $6f                                           ; $7038: $fe $6f
	cp $9d                                           ; $703a: $fe $9d
	ld [bc], a                                       ; $703c: $02
	db $fd                                           ; $703d: $fd
	ld d, a                                          ; $703e: $57
	ldh a, [c]                                       ; $703f: $f2
	sbc e                                            ; $7040: $9b
	dec d                                            ; $7041: $15
	ld [$55aa], a                                    ; $7042: $ea $aa $55
	ld e, a                                          ; $7045: $5f
	ldh a, [c]                                       ; $7046: $f2
	sbc e                                            ; $7047: $9b
	ld a, [hl+]                                      ; $7048: $2a
	push de                                          ; $7049: $d5
	ld d, l                                          ; $704a: $55
	xor d                                            ; $704b: $aa
	ld e, a                                          ; $704c: $5f
	ldh a, [rPCM34]                                  ; $704d: $f0 $77
	db $f4                                           ; $704f: $f4
	ld a, a                                          ; $7050: $7f
	db $fc                                           ; $7051: $fc
	sub d                                            ; $7052: $92
	xor h                                            ; $7053: $ac
	ld d, b                                          ; $7054: $50
	nop                                              ; $7055: $00
	rst $38                                          ; $7056: $ff
	ld bc, $04fe                                     ; $7057: $01 $fe $04
	ld hl, sp+$08                                    ; $705a: $f8 $08
	ldh a, [rAUD4LEN]                                ; $705c: $f0 $20
	ret nz                                           ; $705e: $c0

	add b                                            ; $705f: $80
	ei                                               ; $7060: $fb
	ld [hl], e                                       ; $7061: $73
	ld sp, hl                                        ; $7062: $f9
	sub d                                            ; $7063: $92
	inc bc                                           ; $7064: $03
	ld [bc], a                                       ; $7065: $02
	rlca                                             ; $7066: $07
	ld [$101f], sp                                   ; $7067: $08 $1f $10
	ld a, a                                          ; $706a: $7f
	ld b, b                                          ; $706b: $40
	rst $38                                          ; $706c: $ff
	nop                                              ; $706d: $00
	rra                                              ; $706e: $1f
	db $10                                           ; $706f: $10
	ccf                                              ; $7070: $3f
	ld h, a                                          ; $7071: $67
	call $0383                                       ; $7072: $cd $83 $03
	rst $38                                          ; $7075: $ff
	rlca                                             ; $7076: $07
	rst $38                                          ; $7077: $ff
	rra                                              ; $7078: $1f
	rst $38                                          ; $7079: $ff
	ld bc, $07fb                                     ; $707a: $01 $fb $07
	xor $1f                                          ; $707d: $ee $1f
	sbc $3f                                          ; $707f: $de $3f
	ld a, b                                          ; $7081: $78
	db $fd                                           ; $7082: $fd
	nop                                              ; $7083: $00
	ld hl, sp-$02                                    ; $7084: $f8 $fe
	rst $38                                          ; $7086: $ff
	ld hl, sp-$01                                    ; $7087: $f8 $ff
	inc de                                           ; $7089: $13
	ldh [rAUD4LEN], a                                ; $708a: $e0 $20
	ret nz                                           ; $708c: $c0

	ld b, b                                          ; $708d: $40
	add b                                            ; $708e: $80
	add b                                            ; $708f: $80
	ld a, e                                          ; $7090: $7b
	ret                                              ; $7091: $c9


	ld l, e                                          ; $7092: $6b
	ret nz                                           ; $7093: $c0

	ld a, a                                          ; $7094: $7f
	rst SubAFromHL                                          ; $7095: $d7
	sub e                                            ; $7096: $93
	ccf                                              ; $7097: $3f
	db $10                                           ; $7098: $10
	rrca                                             ; $7099: $0f
	nop                                              ; $709a: $00
	rrca                                             ; $709b: $0f
	ld [$0007], sp                                   ; $709c: $08 $07 $00
	rrca                                             ; $709f: $0f
	ld c, $01                                        ; $70a0: $0e $01
	jr c, jr_04c_711b                                ; $70a2: $38 $77

	ldh a, [$5b]                                     ; $70a4: $f0 $5b
	cp $9d                                           ; $70a6: $fe $9d
	add d                                            ; $70a8: $82
	ld a, l                                          ; $70a9: $7d
	inc bc                                           ; $70aa: $03
	inc a                                            ; $70ab: $3c
	ld d, e                                          ; $70ac: $53
	cp $9d                                           ; $70ad: $fe $9d
	ld a, [bc]                                       ; $70af: $0a
	push af                                          ; $70b0: $f5
	ld d, a                                          ; $70b1: $57
	ldh a, [c]                                       ; $70b2: $f2
	sbc l                                            ; $70b3: $9d
	dec b                                            ; $70b4: $05
	ld a, [$3057]                                    ; $70b5: $fa $57 $30
	ld a, a                                          ; $70b8: $7f
	inc d                                            ; $70b9: $14
	ld d, a                                          ; $70ba: $57
	jr nc, jr_04c_7134                               ; $70bb: $30 $77

	db $e4                                           ; $70bd: $e4
	ld a, a                                          ; $70be: $7f
	ldh a, [$9d]                                     ; $70bf: $f0 $9d
	xor e                                            ; $70c1: $ab
	ld d, h                                          ; $70c2: $54
	ld l, a                                          ; $70c3: $6f
	ldh a, [c]                                       ; $70c4: $f2
	ld [hl], a                                       ; $70c5: $77
	db $f4                                           ; $70c6: $f4
	ld a, a                                          ; $70c7: $7f
	db $fc                                           ; $70c8: $fc
	sbc h                                            ; $70c9: $9c
	ld d, a                                          ; $70ca: $57
	xor b                                            ; $70cb: $a8
	rst $38                                          ; $70cc: $ff
	ld [hl], e                                       ; $70cd: $73
	add b                                            ; $70ce: $80
	halt                                             ; $70cf: $76
	ld hl, sp+$7f                                    ; $70d0: $f8 $7f
	ldh a, [$9d]                                     ; $70d2: $f0 $9d
	xor a                                            ; $70d4: $af
	ld d, b                                          ; $70d5: $50
	ld [hl], a                                       ; $70d6: $77
	push hl                                          ; $70d7: $e5
	ld h, [hl]                                       ; $70d8: $66
	ld hl, sp+$77                                    ; $70d9: $f8 $77
	db $e4                                           ; $70db: $e4
	ld [hl], a                                       ; $70dc: $77
	cp $6e                                           ; $70dd: $fe $6e
	ld hl, sp+$5f                                    ; $70df: $f8 $5f
	sbc e                                            ; $70e1: $9b
	ld h, a                                          ; $70e2: $67
	ret c                                            ; $70e3: $d8

	ld l, a                                          ; $70e4: $6f
	cp $9b                                           ; $70e5: $fe $9b
	cp $01                                           ; $70e7: $fe $01
	ld e, a                                          ; $70e9: $5f
	and b                                            ; $70ea: $a0
	ld [hl], a                                       ; $70eb: $77
	ld a, [$fd99]                                    ; $70ec: $fa $99 $fd
	ld [bc], a                                       ; $70ef: $02
	ldh a, [$0c]                                     ; $70f0: $f0 $0c
	ret z                                            ; $70f2: $c8

	jr nc, jr_04c_716b                               ; $70f3: $30 $76

	call c, $309e                                    ; $70f5: $dc $9e $30
	ld [hl], e                                       ; $70f8: $73
	ld [de], a                                       ; $70f9: $12
	cp $df                                           ; $70fa: $fe $df
	ld bc, $dc7a                                     ; $70fc: $01 $7a $dc
	sub a                                            ; $70ff: $97
	rrca                                             ; $7100: $0f
	db $10                                           ; $7101: $10
	inc bc                                           ; $7102: $03
	ld [bc], a                                       ; $7103: $02
	rrca                                             ; $7104: $0f
	ld [$201f], sp                                   ; $7105: $08 $1f $20
	halt                                             ; $7108: $76
	sub $7b                                          ; $7109: $d6 $7b
	cp $9c                                           ; $710b: $fe $9c
	ld bc, $03fc                                     ; $710d: $01 $fc $03
	ld l, [hl]                                       ; $7110: $6e
	sub $89                                          ; $7111: $d6 $89
	cp $0f                                           ; $7113: $fe $0f
	ldh a, [$3f]                                     ; $7115: $f0 $3f
	ret nc                                           ; $7117: $d0

	and $18                                          ; $7118: $e6 $18
	ld l, a                                          ; $711a: $6f

jr_04c_711b:
	ld e, $e7                                        ; $711b: $1e $e7
	ldh a, [$3f]                                     ; $711d: $f0 $3f
	ldh [$fb], a                                     ; $711f: $e0 $fb
	add d                                            ; $7121: $82
	rst SubAFromHL                                          ; $7122: $d7
	inc bc                                           ; $7123: $03
	xor b                                            ; $7124: $a8
	inc bc                                           ; $7125: $03
	ld d, b                                          ; $7126: $50
	inc bc                                           ; $7127: $03
	ld hl, $03de                                     ; $7128: $21 $de $03
	sbc h                                            ; $712b: $9c
	di                                               ; $712c: $f3
	nop                                              ; $712d: $00
	ldh [$fc], a                                     ; $712e: $e0 $fc
	sub [hl]                                         ; $7130: $96
	adc a                                            ; $7131: $8f
	ret nz                                           ; $7132: $c0

	ld h, l                                          ; $7133: $65

jr_04c_7134:
	ldh a, [$b3]                                     ; $7134: $f0 $b3
	rst $38                                          ; $7136: $ff
	call z, $f4ff                                    ; $7137: $cc $ff $f4
	pop af                                           ; $713a: $f1
	ld a, [hl]                                       ; $713b: $7e
	adc $9e                                          ; $713c: $ce $9e
	ld bc, $fe7b                                     ; $713e: $01 $7b $fe
	db $fd                                           ; $7141: $fd
	ld a, d                                          ; $7142: $7a
	cp a                                             ; $7143: $bf
	ld a, [hl]                                       ; $7144: $7e
	or l                                             ; $7145: $b5
	sub e                                            ; $7146: $93
	nop                                              ; $7147: $00
	inc b                                            ; $7148: $04
	ld a, b                                          ; $7149: $78
	call nz, $e538                                   ; $714a: $c4 $38 $e5
	jr jr_04c_717c                                   ; $714d: $18 $2d

	db $10                                           ; $714f: $10
	sub d                                            ; $7150: $92
	ld bc, $7b9f                                     ; $7151: $01 $9f $7b
	and [hl]                                         ; $7154: $a6
	sub c                                            ; $7155: $91
	cp a                                             ; $7156: $bf
	nop                                              ; $7157: $00
	add b                                            ; $7158: $80
	ld a, a                                          ; $7159: $7f
	add b                                            ; $715a: $80
	ld a, a                                          ; $715b: $7f
	ld b, b                                          ; $715c: $40
	cp a                                             ; $715d: $bf
	xor d                                            ; $715e: $aa
	dec d                                            ; $715f: $15
	ld d, l                                          ; $7160: $55
	xor d                                            ; $7161: $aa
	dec hl                                           ; $7162: $2b
	call nc, $9477                                   ; $7163: $d4 $77 $94
	ld a, [hl]                                       ; $7166: $7e
	ld b, d                                          ; $7167: $42
	ld l, a                                          ; $7168: $6f
	jr nc, jr_04c_71ea                               ; $7169: $30 $7f

jr_04c_716b:
	ld e, b                                          ; $716b: $58
	sbc h                                            ; $716c: $9c
	ei                                               ; $716d: $fb
	nop                                              ; $716e: $00
	pop bc                                           ; $716f: $c1
	ld a, d                                          ; $7170: $7a
	ld a, h                                          ; $7171: $7c
	ld l, a                                          ; $7172: $6f
	db $f4                                           ; $7173: $f4
	daa                                              ; $7174: $27
	jr nc, jr_04c_71ee                               ; $7175: $30 $77

	ldh a, [$36]                                     ; $7177: $f0 $36
	sub a                                            ; $7179: $97
	sbc [hl]                                         ; $717a: $9e
	pop af                                           ; $717b: $f1

jr_04c_717c:
	ld a, e                                          ; $717c: $7b
	ld l, c                                          ; $717d: $69
	ld a, a                                          ; $717e: $7f
	cp $9e                                           ; $717f: $fe $9e
	ldh a, [$7b]                                     ; $7181: $f0 $7b
	db $fc                                           ; $7183: $fc
	ld h, a                                          ; $7184: $67
	xor $9e                                          ; $7185: $ee $9e
	rst SubAFromBC                                          ; $7187: $e7
	db $fc                                           ; $7188: $fc
	sbc [hl]                                         ; $7189: $9e
	ld [hl-], a                                      ; $718a: $32
	ld d, e                                          ; $718b: $53
	jp c, $7f9e                                      ; $718c: $da $9e $7f

	ld a, e                                          ; $718f: $7b
	cp $06                                           ; $7190: $fe $06
	ld c, l                                          ; $7192: $4d
	ld a, [hl]                                       ; $7193: $7e
	sub $9d                                          ; $7194: $d6 $9d
	cp $02                                           ; $7196: $fe $02
	ld a, e                                          ; $7198: $7b
	db $fc                                           ; $7199: $fc
	sbc [hl]                                         ; $719a: $9e
	ld bc, $f067                                     ; $719b: $01 $67 $f0
	ld a, d                                          ; $719e: $7a
	rst SubAFromHL                                          ; $719f: $d7
	ld a, l                                          ; $71a0: $7d
	or d                                             ; $71a1: $b2
	sbc b                                            ; $71a2: $98
	ld bc, $070b                                     ; $71a3: $01 $0b $07
	rra                                              ; $71a6: $1f
	adc a                                            ; $71a7: $8f
	rst $38                                          ; $71a8: $ff
	ld sp, $f077                                     ; $71a9: $31 $77 $f0
	sbc e                                            ; $71ac: $9b
	ccf                                              ; $71ad: $3f
	jr nz, @+$01                                     ; $71ae: $20 $ff

	add b                                            ; $71b0: $80
	ld [hl], a                                       ; $71b1: $77
	ld hl, sp-$7e                                    ; $71b2: $f8 $82
	db $fc                                           ; $71b4: $fc
	ld [bc], a                                       ; $71b5: $02
	ldh a, [$8b]                                     ; $71b6: $f0 $8b
	ld b, c                                          ; $71b8: $41
	rst $38                                          ; $71b9: $ff
	rlca                                             ; $71ba: $07
	rst AddAOntoHL                                          ; $71bb: $ef
	ld hl, sp+$0d                                    ; $71bc: $f8 $0d
	ldh a, [c]                                       ; $71be: $f2
	rla                                              ; $71bf: $17
	add $1f                                          ; $71c0: $c6 $1f
	sbc a                                            ; $71c2: $9f
	cp a                                             ; $71c3: $bf
	ld a, $fe                                        ; $71c4: $3e $fe
	db $fc                                           ; $71c6: $fc
	db $fc                                           ; $71c7: $fc
	ldh a, [$fa]                                     ; $71c8: $f0 $fa
	add $ee                                          ; $71ca: $c6 $ee
	jr @+$4a                                         ; $71cc: $18 $48

	jr jr_04c_71d8                                   ; $71ce: $18 $08

	db $10                                           ; $71d0: $10
	ld a, e                                          ; $71d1: $7b
	cp $7f                                           ; $71d2: $fe $7f
	ld a, [$189d]                                    ; $71d4: $fa $9d $18
	rlca                                             ; $71d7: $07

jr_04c_71d8:
	ld [hl], a                                       ; $71d8: $77
	ld hl, sp-$2a                                    ; $71d9: $f8 $d6
	inc bc                                           ; $71db: $03
	sbc [hl]                                         ; $71dc: $9e
	di                                               ; $71dd: $f3
	db $dd                                           ; $71de: $dd
	inc bc                                           ; $71df: $03
	ld a, [hl]                                       ; $71e0: $7e
	adc $91                                          ; $71e1: $ce $91
	ei                                               ; $71e3: $fb
	ldh a, [rIE]                                     ; $71e4: $f0 $ff
	rst FarCall                                          ; $71e6: $f7
	ei                                               ; $71e7: $fb
	ldh a, [$7b]                                     ; $71e8: $f0 $7b

jr_04c_71ea:
	ldh a, [$eb]                                     ; $71ea: $f0 $eb
	ldh a, [$7f]                                     ; $71ec: $f0 $7f

jr_04c_71ee:
	ld [hl], h                                       ; $71ee: $74
	ld a, e                                          ; $71ef: $7b
	ldh a, [$fb]                                     ; $71f0: $f0 $fb
	ld a, e                                          ; $71f2: $7b
	sbc h                                            ; $71f3: $9c
	ld a, e                                          ; $71f4: $7b
	cp $9a                                           ; $71f5: $fe $9a
	scf                                              ; $71f7: $37
	nop                                              ; $71f8: $00
	rra                                              ; $71f9: $1f
	nop                                              ; $71fa: $00
	ld c, $7b                                        ; $71fb: $0e $7b
	db $fc                                           ; $71fd: $fc
	ld l, a                                          ; $71fe: $6f
	add [hl]                                         ; $71ff: $86
	ld a, [hl]                                       ; $7200: $7e
	ret nc                                           ; $7201: $d0

	ld a, [hl]                                       ; $7202: $7e
	cp [hl]                                          ; $7203: $be
	sbc [hl]                                         ; $7204: $9e
	jp $be7a                                         ; $7205: $c3 $7a $be


	ld e, a                                          ; $7208: $5f
	ld h, h                                          ; $7209: $64
	ld a, [hl]                                       ; $720a: $7e
	jp nz, $1c9e                                     ; $720b: $c2 $9e $1c

	ld h, e                                          ; $720e: $63
	ld [de], a                                       ; $720f: $12
	sbc [hl]                                         ; $7210: $9e
	ret nz                                           ; $7211: $c0

	ld a, e                                          ; $7212: $7b
	cp $76                                           ; $7213: $fe $76
	jr c, jr_04c_7284                                ; $7215: $38 $6d

	ld c, b                                          ; $7217: $48
	ld a, a                                          ; $7218: $7f
	call nz, $9efd                                   ; $7219: $c4 $fd $9e
	ld e, h                                          ; $721c: $5c
	ld a, e                                          ; $721d: $7b
	jp nz, $1a77                                     ; $721e: $c2 $77 $1a

	ld a, a                                          ; $7221: $7f
	ret c                                            ; $7222: $d8

	ld a, a                                          ; $7223: $7f
	db $fc                                           ; $7224: $fc
	sbc h                                            ; $7225: $9c
	or c                                             ; $7226: $b1
	nop                                              ; $7227: $00
	add hl, de                                       ; $7228: $19
	ld a, d                                          ; $7229: $7a
	add b                                            ; $722a: $80
	ld a, a                                          ; $722b: $7f
	cp $69                                           ; $722c: $fe $69
	ld hl, sp+$7f                                    ; $722e: $f8 $7f
	ld d, b                                          ; $7230: $50
	ld l, e                                          ; $7231: $6b
	cp $77                                           ; $7232: $fe $77
	ldh a, [c]                                       ; $7234: $f2
	ld a, a                                          ; $7235: $7f
	sbc [hl]                                         ; $7236: $9e
	ld a, a                                          ; $7237: $7f
	add sp, -$03                                     ; $7238: $e8 $fd
	sbc [hl]                                         ; $723a: $9e
	ld b, $7b                                        ; $723b: $06 $7b
	cp $6d                                           ; $723d: $fe $6d
	ld b, $9e                                        ; $723f: $06 $9e
	add c                                            ; $7241: $81
	ld a, e                                          ; $7242: $7b
	sub h                                            ; $7243: $94
	ld a, a                                          ; $7244: $7f
	cp $fd                                           ; $7245: $fe $fd
	halt                                             ; $7247: $76
	sbc $9c                                          ; $7248: $de $9c
	rst SubAFromDE                                          ; $724a: $df
	nop                                              ; $724b: $00
	db $fd                                           ; $724c: $fd
	ld [hl], d                                       ; $724d: $72
	or d                                             ; $724e: $b2
	sbc h                                            ; $724f: $9c
	dec e                                            ; $7250: $1d
	nop                                              ; $7251: $00
	ld a, e                                          ; $7252: $7b
	ld h, d                                          ; $7253: $62
	or d                                             ; $7254: $b2
	halt                                             ; $7255: $76
	inc [hl]                                         ; $7256: $34
	sbc [hl]                                         ; $7257: $9e
	ld hl, sp+$7b                                    ; $7258: $f8 $7b
	adc h                                            ; $725a: $8c
	ld h, a                                          ; $725b: $67
	ld [hl], h                                       ; $725c: $74
	ld a, a                                          ; $725d: $7f
	or [hl]                                          ; $725e: $b6
	ld a, a                                          ; $725f: $7f
	db $f4                                           ; $7260: $f4
	ld l, h                                          ; $7261: $6c
	pop de                                           ; $7262: $d1
	ld l, a                                          ; $7263: $6f
	cp $6b                                           ; $7264: $fe $6b
	scf                                              ; $7266: $37
	ld [hl], e                                       ; $7267: $73
	db $f4                                           ; $7268: $f4
	ld a, a                                          ; $7269: $7f
	ret c                                            ; $726a: $d8

	ld sp, hl                                        ; $726b: $f9
	rst SubAFromDE                                          ; $726c: $df
	rlca                                             ; $726d: $07
	ld a, a                                          ; $726e: $7f
	ret c                                            ; $726f: $d8

	ld l, h                                          ; $7270: $6c
	xor b                                            ; $7271: $a8
	rst SubAFromDE                                          ; $7272: $df
	inc bc                                           ; $7273: $03
	rst SubAFromDE                                          ; $7274: $df
	rrca                                             ; $7275: $0f
	rst SubAFromDE                                          ; $7276: $df
	ld e, a                                          ; $7277: $5f
	rst SubAFromDE                                          ; $7278: $df
	rst $38                                          ; $7279: $ff
	rst SubAFromDE                                          ; $727a: $df
	inc bc                                           ; $727b: $03
	ld l, b                                          ; $727c: $68
	ld e, c                                          ; $727d: $59
	adc b                                            ; $727e: $88

Call_04c_727f:
	add b                                            ; $727f: $80
	ret nz                                           ; $7280: $c0

	ret nz                                           ; $7281: $c0

	push af                                          ; $7282: $f5
	push af                                          ; $7283: $f5

jr_04c_7284:
	rst $38                                          ; $7284: $ff
	rst $38                                          ; $7285: $ff
	adc $de                                          ; $7286: $ce $de
	ld a, [hl]                                       ; $7288: $7e
	cp $3e                                           ; $7289: $fe $3e
	ld a, [hl]                                       ; $728b: $7e
	ld a, [bc]                                       ; $728c: $0a
	ld e, $02                                        ; $728d: $1e $02
	ld [bc], a                                       ; $728f: $02
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	ret nz                                           ; $7292: $c0

	ret nz                                           ; $7293: $c0

	db $fc                                           ; $7294: $fc
	db $fc                                           ; $7295: $fc
	halt                                             ; $7296: $76
	call z, $fe7f                                    ; $7297: $cc $7f $fe
	sbc [hl]                                         ; $729a: $9e
	rra                                              ; $729b: $1f
	ld [hl], d                                       ; $729c: $72
	call nz, $c05e                                   ; $729d: $c4 $5e $c0
	sbc [hl]                                         ; $72a0: $9e
	jp $c472                                         ; $72a1: $c3 $72 $c4


	db $dd                                           ; $72a4: $dd
	inc bc                                           ; $72a5: $03
	adc [hl]                                         ; $72a6: $8e
	rst SubAFromDE                                          ; $72a7: $df
	or $3e                                           ; $72a8: $f6 $3e
	rst FarCall                                          ; $72aa: $f7
	ld l, [hl]                                       ; $72ab: $6e
	rst FarCall                                          ; $72ac: $f7

jr_04c_72ad:
	adc [hl]                                         ; $72ad: $8e
	rst FarCall                                          ; $72ae: $f7
	rrca                                             ; $72af: $0f
	db $f4                                           ; $72b0: $f4
	adc a                                            ; $72b1: $8f
	push de                                          ; $72b2: $d5
	rrca                                             ; $72b3: $0f
	push de                                          ; $72b4: $d5
	rra                                              ; $72b5: $1f
	push bc                                          ; $72b6: $c5
	inc e                                            ; $72b7: $1c
	ld a, e                                          ; $72b8: $7b
	ld h, [hl]                                       ; $72b9: $66
	sbc h                                            ; $72ba: $9c
	ld [hl], $00                                     ; $72bb: $36 $00
	jr nc, jr_04c_72ad                               ; $72bd: $30 $ee

	sbc c                                            ; $72bf: $99
	jr z, jr_04c_72d2                                ; $72c0: $28 $10

	ld d, b                                          ; $72c2: $50
	inc a                                            ; $72c3: $3c
	ld [hl+], a                                      ; $72c4: $22
	ld a, [hl]                                       ; $72c5: $7e
	ld sp, hl                                        ; $72c6: $f9
	add a                                            ; $72c7: $87
	ld [bc], a                                       ; $72c8: $02
	inc bc                                           ; $72c9: $03
	inc b                                            ; $72ca: $04
	ld b, $08                                        ; $72cb: $06 $08
	inc c                                            ; $72cd: $0c
	dec d                                            ; $72ce: $15
	dec e                                            ; $72cf: $1d
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00

jr_04c_72d2:
	inc b                                            ; $72d2: $04
	inc b                                            ; $72d3: $04
	inc de                                           ; $72d4: $13
	inc de                                           ; $72d5: $13
	set 1, a                                         ; $72d6: $cb $cf
	inc h                                            ; $72d8: $24
	dec a                                            ; $72d9: $3d
	ld b, b                                          ; $72da: $40
	ld a, c                                          ; $72db: $79
	add b                                            ; $72dc: $80
	pop af                                           ; $72dd: $f1
	nop                                              ; $72de: $00
	pop hl                                           ; $72df: $e1
	ld l, a                                          ; $72e0: $6f
	ld [hl], h                                       ; $72e1: $74
	rst SubAFromDE                                          ; $72e2: $df
	ldh [hDisp1_WY], a                                     ; $72e3: $e0 $95
	sbc b                                            ; $72e5: $98
	and b                                            ; $72e6: $a0
	ld b, h                                          ; $72e7: $44
	ret c                                            ; $72e8: $d8

	ld b, d                                          ; $72e9: $42
	call z, $e621                                    ; $72ea: $cc $21 $e6
	nop                                              ; $72ed: $00
	ld e, a                                          ; $72ee: $5f
	ldh a, [c]                                       ; $72ef: $f2
	sbc [hl]                                         ; $72f0: $9e
	inc a                                            ; $72f1: $3c
	push af                                          ; $72f2: $f5
	rst SubAFromDE                                          ; $72f3: $df
	ld bc, $9efe                                     ; $72f4: $01 $fe $9e
	inc c                                            ; $72f7: $0c
	ld a, d                                          ; $72f8: $7a
	rst SubAFromBC                                          ; $72f9: $e7
	sbc [hl]                                         ; $72fa: $9e
	dec bc                                           ; $72fb: $0b
	ld a, d                                          ; $72fc: $7a
	adc l                                            ; $72fd: $8d
	sbc $07                                          ; $72fe: $de $07
	rst SubAFromDE                                          ; $7300: $df
	rst $38                                          ; $7301: $ff
	ld a, a                                          ; $7302: $7f
	and a                                            ; $7303: $a7
	sbc l                                            ; $7304: $9d
	nop                                              ; $7305: $00
	jr jr_04c_7383                                   ; $7306: $18 $7b

	rrca                                             ; $7308: $0f
	sub h                                            ; $7309: $94
	ldh [rSB], a                                     ; $730a: $e0 $01
	add c                                            ; $730c: $81
	rra                                              ; $730d: $1f
	rra                                              ; $730e: $1f
	cp a                                             ; $730f: $bf
	cp a                                             ; $7310: $bf
	ld [$00ff], a                                    ; $7311: $ea $ff $00
	ld h, d                                          ; $7314: $62
	db $fd                                           ; $7315: $fd
	rst SubAFromDE                                          ; $7316: $df
	ld a, $df                                        ; $7317: $3e $df
	rst $38                                          ; $7319: $ff
	ld a, l                                          ; $731a: $7d
	ld d, a                                          ; $731b: $57
	sbc e                                            ; $731c: $9b
	ld d, l                                          ; $731d: $55
	rst $38                                          ; $731e: $ff
	add d                                            ; $731f: $82
	rst SubAFromHL                                          ; $7320: $d7
	ld a, e                                          ; $7321: $7b
	add [hl]                                         ; $7322: $86
	ld a, h                                          ; $7323: $7c
	sbc [hl]                                         ; $7324: $9e
	sbc [hl]                                         ; $7325: $9e
	rrca                                             ; $7326: $0f
	ld [hl], a                                       ; $7327: $77
	and $99                                          ; $7328: $e6 $99
	and c                                            ; $732a: $a1
	push af                                          ; $732b: $f5
	nop                                              ; $732c: $00
	ld [$5500], a                                    ; $732d: $ea $00 $55
	ld [hl], a                                       ; $7330: $77
	sub d                                            ; $7331: $92
	rst SubAFromDE                                          ; $7332: $df
	ei                                               ; $7333: $fb
	rst SubAFromDE                                          ; $7334: $df
	rst $38                                          ; $7335: $ff
	sbc [hl]                                         ; $7336: $9e
	cp a                                             ; $7337: $bf
	ld a, e                                          ; $7338: $7b
	ldh [c], a                                       ; $7339: $e2
	sbc l                                            ; $733a: $9d
	ld a, [hl+]                                      ; $733b: $2a
	cp a                                             ; $733c: $bf
	ld [hl], a                                       ; $733d: $77
	ldh a, [$df]                                     ; $733e: $f0 $df
	dec bc                                           ; $7340: $0b
	rst SubAFromDE                                          ; $7341: $df
	sbc a                                            ; $7342: $9f
	ld l, a                                          ; $7343: $6f
	jp nc, $a19b                                     ; $7344: $d2 $9b $a1

	rst $38                                          ; $7347: $ff
	inc c                                            ; $7348: $0c
	rst $38                                          ; $7349: $ff
	ld [hl], a                                       ; $734a: $77
	call nc, $ffdf                                   ; $734b: $d4 $df $ff
	sbc h                                            ; $734e: $9c
	rst SubAFromHL                                          ; $734f: $d7
	rst $38                                          ; $7350: $ff
	rst AddAOntoHL                                          ; $7351: $ef
	ld a, e                                          ; $7352: $7b
	ldh a, [$75]                                     ; $7353: $f0 $75
	dec d                                            ; $7355: $15
	reti                                             ; $7356: $d9


	rst $38                                          ; $7357: $ff
	ld [hl], a                                       ; $7358: $77
	ldh [$9b], a                                     ; $7359: $e0 $9b
	xor b                                            ; $735b: $a8
	rst $38                                          ; $735c: $ff
	nop                                              ; $735d: $00
	ld sp, hl                                        ; $735e: $f9
	db $db                                           ; $735f: $db
	rst $38                                          ; $7360: $ff
	sub l                                            ; $7361: $95
	db $fd                                           ; $7362: $fd
	rst $38                                          ; $7363: $ff
	cp [hl]                                          ; $7364: $be
	rst $38                                          ; $7365: $ff
	ld d, l                                          ; $7366: $55
	db $fd                                           ; $7367: $fd
	adc d                                            ; $7368: $8a
	ld a, [$8800]                                    ; $7369: $fa $00 $88
	db $db                                           ; $736c: $db
	cp $df                                           ; $736d: $fe $df
	ld a, [hl]                                       ; $736f: $7e
	sub a                                            ; $7370: $97
	xor d                                            ; $7371: $aa
	cp $52                                           ; $7372: $fe $52
	ld a, [$b6a2]                                    ; $7374: $fa $a2 $b6
	ld [bc], a                                       ; $7377: $02
	ld b, $76                                        ; $7378: $06 $76
	call z, $1a9d                                    ; $737a: $cc $9d $1a
	rrca                                             ; $737d: $0f
	ld a, c                                          ; $737e: $79
	add d                                            ; $737f: $82
	ld d, [hl]                                       ; $7380: $56
	ret nz                                           ; $7381: $c0

	sbc l                                            ; $7382: $9d

jr_04c_7383:
	di                                               ; $7383: $f3
	ld bc, $a175                                     ; $7384: $01 $75 $a1
	db $fc                                           ; $7387: $fc
	sub e                                            ; $7388: $93
	adc e                                            ; $7389: $8b
	push af                                          ; $738a: $f5
	dec bc                                           ; $738b: $0b
	push af                                          ; $738c: $f5
	rra                                              ; $738d: $1f
	push af                                          ; $738e: $f5
	adc d                                            ; $738f: $8a
	rst FarCall                                          ; $7390: $f7
	inc c                                            ; $7391: $0c
	cp $07                                           ; $7392: $fe $07
	rrca                                             ; $7394: $0f
	ld a, e                                          ; $7395: $7b
	db $ed                                           ; $7396: $ed
	ld l, h                                          ; $7397: $6c
	ld d, l                                          ; $7398: $55
	ld l, [hl]                                       ; $7399: $6e
	ld c, b                                          ; $739a: $48
	ld a, l                                          ; $739b: $7d
	inc c                                            ; $739c: $0c
	ld a, h                                          ; $739d: $7c
	ld [hl], e                                       ; $739e: $73
	adc d                                            ; $739f: $8a
	ld [bc], a                                       ; $73a0: $02
	halt                                             ; $73a1: $76
	ld a, [hl]                                       ; $73a2: $7e
	ld a, b                                          ; $73a3: $78
	halt                                             ; $73a4: $76
	ld e, h                                          ; $73a5: $5c
	ld a, h                                          ; $73a6: $7c
	ld a, b                                          ; $73a7: $78
	ld h, h                                          ; $73a8: $64
	ldh [$df], a                                     ; $73a9: $e0 $df
	cp l                                             ; $73ab: $bd
	adc $1b                                          ; $73ac: $ce $1b
	ld l, h                                          ; $73ae: $6c
	ld h, a                                          ; $73af: $67
	jr jr_04c_73dc                                   ; $73b0: $18 $2a

jr_04c_73b2:
	dec sp                                           ; $73b2: $3b
	inc d                                            ; $73b3: $14
	rla                                              ; $73b4: $17
	halt                                             ; $73b5: $76
	ld c, h                                          ; $73b6: $4c
	ld [hl], d                                       ; $73b7: $72
	ld a, [de]                                       ; $73b8: $1a
	ld a, l                                          ; $73b9: $7d
	ld b, $7e                                        ; $73ba: $06 $7e
	inc sp                                           ; $73bc: $33
	ld a, [hl]                                       ; $73bd: $7e
	adc $7c                                          ; $73be: $ce $7c
	ld e, c                                          ; $73c0: $59
	adc h                                            ; $73c1: $8c
	pop bc                                           ; $73c2: $c1
	pop hl                                           ; $73c3: $e1
	pop hl                                           ; $73c4: $e1
	cp $03                                           ; $73c5: $fe $03
	cp $03                                           ; $73c7: $fe $03
	db $fc                                           ; $73c9: $fc
	ld bc, $01fc                                     ; $73ca: $01 $fc $01
	jr nz, jr_04c_73b2                               ; $73cd: $20 $e3

	ld [de], a                                       ; $73cf: $12
	di                                               ; $73d0: $f3
	db $10                                           ; $73d1: $10
	pop af                                           ; $73d2: $f1
	rla                                              ; $73d3: $17
	rst FarCall                                          ; $73d4: $f7
	ld a, e                                          ; $73d5: $7b
	ld d, [hl]                                       ; $73d6: $56
	ld [hl], e                                       ; $73d7: $73
	call c, $8097                                    ; $73d8: $dc $97 $80
	add d                                            ; $73db: $82

jr_04c_73dc:
	add b                                            ; $73dc: $80
	dec d                                            ; $73dd: $15
	add b                                            ; $73de: $80
	ld l, d                                          ; $73df: $6a
	nop                                              ; $73e0: $00
	push de                                          ; $73e1: $d5
	ld h, l                                          ; $73e2: $65
	add sp, -$66                                     ; $73e3: $e8 $9a
	inc bc                                           ; $73e5: $03
	xor e                                            ; $73e6: $ab
	ccf                                              ; $73e7: $3f
	ccf                                              ; $73e8: $3f
	ldh [$7b], a                                     ; $73e9: $e0 $7b
	ld [$da65], sp                                   ; $73eb: $08 $65 $da
	ld a, e                                          ; $73ee: $7b
	rst SubAFromBC                                          ; $73ef: $e7
	ld a, c                                          ; $73f0: $79
	rst AddAOntoHL                                          ; $73f1: $ef
	ld a, l                                          ; $73f2: $7d
	ld [hl], b                                       ; $73f3: $70
	ld [hl], a                                       ; $73f4: $77
	ldh a, [c]                                       ; $73f5: $f2
	ld a, l                                          ; $73f6: $7d
	sbc h                                            ; $73f7: $9c
	cp $9e                                           ; $73f8: $fe $9e
	xor d                                            ; $73fa: $aa
	halt                                             ; $73fb: $76
	db $fc                                           ; $73fc: $fc
	ld a, a                                          ; $73fd: $7f
	add sp, $6c                                      ; $73fe: $e8 $6c
	sub h                                            ; $7400: $94
	rst $38                                          ; $7401: $ff
	sbc h                                            ; $7402: $9c
	xor e                                            ; $7403: $ab
	nop                                              ; $7404: $00
	ld d, h                                          ; $7405: $54
	ld l, [hl]                                       ; $7406: $6e
	ld d, b                                          ; $7407: $50
	ld a, a                                          ; $7408: $7f
	reti                                             ; $7409: $d9


	ld [hl], l                                       ; $740a: $75
	db $ed                                           ; $740b: $ed
	ld a, a                                          ; $740c: $7f
	rra                                              ; $740d: $1f
	sub e                                            ; $740e: $93
	ld [hl], $0c                                     ; $740f: $36 $0c
	ld h, a                                          ; $7411: $67
	ld c, h                                          ; $7412: $4c
	rst JumpTable                                          ; $7413: $c7
	ld sp, $00ce                                     ; $7414: $31 $ce $00
	ld [$1000], sp                                   ; $7417: $08 $00 $10
	db $10                                           ; $741a: $10
	ld a, e                                          ; $741b: $7b
	ret z                                            ; $741c: $c8

	ld a, a                                          ; $741d: $7f
	pop de                                           ; $741e: $d1
	ld [hl], c                                       ; $741f: $71
	ld c, $7b                                        ; $7420: $0e $7b
	db $fd                                           ; $7422: $fd
	sbc [hl]                                         ; $7423: $9e
	ld b, b                                          ; $7424: $40
	ld a, e                                          ; $7425: $7b
	db $fd                                           ; $7426: $fd
	sub a                                            ; $7427: $97
	jr nz, jr_04c_746a                               ; $7428: $20 $40

	ld a, $1e                                        ; $742a: $3e $1e
	ccf                                              ; $742c: $3f
	rra                                              ; $742d: $1f
	dec a                                            ; $742e: $3d
	dec d                                            ; $742f: $15
	ld a, e                                          ; $7430: $7b
	db $e3                                           ; $7431: $e3
	ld a, e                                          ; $7432: $7b
	cp $9d                                           ; $7433: $fe $9d
	ld h, $18                                        ; $7435: $26 $18
	ld h, a                                          ; $7437: $67
	ld a, [de]                                       ; $7438: $1a
	db $fd                                           ; $7439: $fd
	sbc e                                            ; $743a: $9b
	ld [$0001], sp                                   ; $743b: $08 $01 $00
	ld bc, $fc7b                                     ; $743e: $01 $7b $fc
	ei                                               ; $7441: $fb
	ld a, l                                          ; $7442: $7d
	rla                                              ; $7443: $17
	sbc b                                            ; $7444: $98
	add [hl]                                         ; $7445: $86
	add h                                            ; $7446: $84
	jp nz, Jump_04c_458a                             ; $7447: $c2 $8a $45

	ld de, $f2c8                                     ; $744a: $11 $c8 $f2
	adc [hl]                                         ; $744d: $8e
	add b                                            ; $744e: $80
	ld c, $0c                                        ; $744f: $0e $0c
	ld e, $18                                        ; $7451: $1e $18
	ld e, $10                                        ; $7453: $1e $10
	ld a, $30                                        ; $7455: $3e $30
	ld a, $20                                        ; $7457: $3e $20
	ld a, [hl]                                       ; $7459: $7e
	ld b, b                                          ; $745a: $40
	ld a, [hl]                                       ; $745b: $7e
	ld b, b                                          ; $745c: $40
	cp $80                                           ; $745d: $fe $80
	ld a, b                                          ; $745f: $78
	ld b, [hl]                                       ; $7460: $46
	sbc h                                            ; $7461: $9c
	rrca                                             ; $7462: $0f
	rra                                              ; $7463: $1f
	inc b                                            ; $7464: $04
	ld h, [hl]                                       ; $7465: $66
	jp nz, $fe7f                                     ; $7466: $c2 $7f $fe

	halt                                             ; $7469: $76

jr_04c_746a:
	push hl                                          ; $746a: $e5
	ld a, e                                          ; $746b: $7b
	dec h                                            ; $746c: $25
	or $9e                                           ; $746d: $f6 $9e
	cp $53                                           ; $746f: $fe $53
	ldh a, [$78]                                     ; $7471: $f0 $78
	xor h                                            ; $7473: $ac
	sbc [hl]                                         ; $7474: $9e
	inc b                                            ; $7475: $04
	ld [hl], a                                       ; $7476: $77
	cp $9e                                           ; $7477: $fe $9e
	db $f4                                           ; $7479: $f4
	sbc $05                                          ; $747a: $de $05
	rst SubAFromDE                                          ; $747c: $df
	inc b                                            ; $747d: $04
	ld a, a                                          ; $747e: $7f
	add b                                            ; $747f: $80
	adc a                                            ; $7480: $8f
	or $09                                           ; $7481: $f6 $09
	ld [hl], $c9                                     ; $7483: $36 $c9
	ld b, b                                          ; $7485: $40
	cp a                                             ; $7486: $bf
	ld a, [hl]                                       ; $7487: $7e
	add c                                            ; $7488: $81
	db $eb                                           ; $7489: $eb
	sub h                                            ; $748a: $94
	sbc l                                            ; $748b: $9d
	ldh a, [c]                                       ; $748c: $f2
	db $fc                                           ; $748d: $fc
	ld [de], a                                       ; $748e: $12
	ldh [$7e], a                                     ; $748f: $e0 $7e
	ld c, h                                          ; $7491: $4c
	ldh a, [$7f]                                     ; $7492: $f0 $7f
	add hl, hl                                       ; $7494: $29
	sbc [hl]                                         ; $7495: $9e
	ld sp, hl                                        ; $7496: $f9
	ld a, e                                          ; $7497: $7b
	cp $7f                                           ; $7498: $fe $7f
	jp c, $049d                                      ; $749a: $da $9d $04

	dec b                                            ; $749d: $05
	ld [hl], a                                       ; $749e: $77
	cp $7d                                           ; $749f: $fe $7d
	ld l, h                                          ; $74a1: $6c
	ld a, a                                          ; $74a2: $7f
	cp $7b                                           ; $74a3: $fe $7b
	or l                                             ; $74a5: $b5
	ld [hl], e                                       ; $74a6: $73
	ld sp, $fe73                                     ; $74a7: $31 $73 $fe
	sbc h                                            ; $74aa: $9c
	ld b, b                                          ; $74ab: $40
	add b                                            ; $74ac: $80
	ld b, b                                          ; $74ad: $40
	ld e, e                                          ; $74ae: $5b
	call nc, $bce0                                   ; $74af: $d4 $e0 $bc
	sbc l                                            ; $74b2: $9d
	ld [$757f], sp                                   ; $74b3: $08 $7f $75
	ld c, c                                          ; $74b6: $49
	ld l, e                                          ; $74b7: $6b
	inc de                                           ; $74b8: $13
	db $fd                                           ; $74b9: $fd
	sbc d                                            ; $74ba: $9a
	ld h, b                                          ; $74bb: $60
	sbc b                                            ; $74bc: $98
	ld h, b                                          ; $74bd: $60
	ld [hl], b                                       ; $74be: $70
	add b                                            ; $74bf: $80
	ld [hl], a                                       ; $74c0: $77
	or $7e                                           ; $74c1: $f6 $7e
	ret nc                                           ; $74c3: $d0

	rst $38                                          ; $74c4: $ff
	sbc [hl]                                         ; $74c5: $9e
	jr nz, @+$61                                     ; $74c6: $20 $5f

	add sp, $6b                                      ; $74c8: $e8 $6b
	reti                                             ; $74ca: $d9


	sbc h                                            ; $74cb: $9c
	db $10                                           ; $74cc: $10
	ld bc, $7b01                                     ; $74cd: $01 $01 $7b
	ld h, b                                          ; $74d0: $60
	ld a, a                                          ; $74d1: $7f
	db $fc                                           ; $74d2: $fc
	sbc [hl]                                         ; $74d3: $9e
	jr nc, @+$7d                                     ; $74d4: $30 $7b

	db $fc                                           ; $74d6: $fc
	sbc [hl]                                         ; $74d7: $9e
	ld hl, $ed7b                                     ; $74d8: $21 $7b $ed
	adc l                                            ; $74db: $8d
	sub l                                            ; $74dc: $95
	ld c, d                                          ; $74dd: $4a
	ld d, d                                          ; $74de: $52
	dec l                                            ; $74df: $2d
	inc d                                            ; $74e0: $14
	db $eb                                           ; $74e1: $eb
	jp z, $8035                                      ; $74e2: $ca $35 $80

	ld a, a                                          ; $74e5: $7f
	rrca                                             ; $74e6: $0f
	rst $38                                          ; $74e7: $ff
	ld e, a                                          ; $74e8: $5f
	xor a                                            ; $74e9: $af
	inc b                                            ; $74ea: $04
	rst $38                                          ; $74eb: $ff
	add b                                            ; $74ec: $80
	add b                                            ; $74ed: $80
	db $dd                                           ; $74ee: $dd
	ld bc, $477f                                     ; $74ef: $01 $7f $47
	ld a, a                                          ; $74f2: $7f
	ld b, [hl]                                       ; $74f3: $46
	sub b                                            ; $74f4: $90

jr_04c_74f5:
	ld b, $05                                        ; $74f5: $06 $05
	inc b                                            ; $74f7: $04
	rlca                                             ; $74f8: $07
	inc c                                            ; $74f9: $0c
	rrca                                             ; $74fa: $0f
	cp $82                                           ; $74fb: $fe $82
	ldh [rAUD3HIGH], a                               ; $74fd: $e0 $1e
	jp nz, $003e                                     ; $74ff: $c2 $3e $00

	cp $02                                           ; $7502: $fe $02
	ld a, e                                          ; $7504: $7b
	cp $97                                           ; $7505: $fe $97
	ld b, $fc                                        ; $7507: $06 $fc
	ld e, $e0                                        ; $7509: $1e $e0
	db $10                                           ; $750b: $10
	rrca                                             ; $750c: $0f
	rra                                              ; $750d: $1f
	rlca                                             ; $750e: $07
	ld l, d                                          ; $750f: $6a
	jp nz, $6c72                                     ; $7510: $c2 $72 $6c

	ld b, [hl]                                       ; $7513: $46
	jp nz, $f043                                     ; $7514: $c2 $43 $f0

	ld l, a                                          ; $7517: $6f
	add a                                            ; $7518: $87
	ld h, e                                          ; $7519: $63
	cp $8e                                           ; $751a: $fe $8e
	push hl                                          ; $751c: $e5
	dec de                                           ; $751d: $1b
	and [hl]                                         ; $751e: $a6
	ld a, l                                          ; $751f: $7d
	ld a, [hl]                                       ; $7520: $7e
	rst $38                                          ; $7521: $ff
	ld e, d                                          ; $7522: $5a
	db $fd                                           ; $7523: $fd
	ld h, d                                          ; $7524: $62
	db $fd                                           ; $7525: $fd
	and $ff                                          ; $7526: $e6 $ff
	rst SubAFromBC                                          ; $7528: $e7
	ld a, [hl]                                       ; $7529: $7e
	ld d, e                                          ; $752a: $53
	cp h                                             ; $752b: $bc
	inc bc                                           ; $752c: $03
	ld a, b                                          ; $752d: $78
	adc l                                            ; $752e: $8d
	ld h, c                                          ; $752f: $61
	ld e, e                                          ; $7530: $5b
	cp $92                                           ; $7531: $fe $92
	sbc b                                            ; $7533: $98
	inc bc                                           ; $7534: $03
	db $fc                                           ; $7535: $fc
	add e                                            ; $7536: $83
	db $fd                                           ; $7537: $fd
	ei                                               ; $7538: $fb
	db $fd                                           ; $7539: $fd
	inc bc                                           ; $753a: $03
	inc b                                            ; $753b: $04
	inc bc                                           ; $753c: $03
	inc b                                            ; $753d: $04
	ld [bc], a                                       ; $753e: $02
	inc b                                            ; $753f: $04
	db $fd                                           ; $7540: $fd
	sub a                                            ; $7541: $97
	ret nz                                           ; $7542: $c0

	nop                                              ; $7543: $00
	ret nz                                           ; $7544: $c0

	add b                                            ; $7545: $80
	rst $38                                          ; $7546: $ff
	ld c, a                                          ; $7547: $4f
	and b                                            ; $7548: $a0
	and b                                            ; $7549: $a0
	ld [hl], a                                       ; $754a: $77
	ld sp, $2a62                                     ; $754b: $31 $62 $2a
	rst FarCall                                          ; $754e: $f7
	ld a, c                                          ; $754f: $79
	jp c, $009d                                      ; $7550: $da $9d $00

	dec b                                            ; $7553: $05
	ld a, e                                          ; $7554: $7b
	jr jr_04c_74f5                                   ; $7555: $18 $9e

	dec d                                            ; $7557: $15
	ld [hl], c                                       ; $7558: $71
	sub a                                            ; $7559: $97
	ld a, a                                          ; $755a: $7f
	db $fc                                           ; $755b: $fc
	ld l, a                                          ; $755c: $6f
	db $ec                                           ; $755d: $ec
	sbc [hl]                                         ; $755e: $9e
	ld a, [hl+]                                      ; $755f: $2a
	ld a, e                                          ; $7560: $7b
	db $f4                                           ; $7561: $f4
	sbc h                                            ; $7562: $9c
	xor b                                            ; $7563: $a8
	nop                                              ; $7564: $00
	ld b, c                                          ; $7565: $41
	ld a, e                                          ; $7566: $7b
	ld hl, sp-$01                                    ; $7567: $f8 $ff
	ld a, a                                          ; $7569: $7f
	ld hl, sp+$7f                                    ; $756a: $f8 $7f
	ldh [$9e], a                                     ; $756c: $e0 $9e

jr_04c_756e:
	and d                                            ; $756e: $a2
	ld a, e                                          ; $756f: $7b
	db $fc                                           ; $7570: $fc
	ld a, a                                          ; $7571: $7f
	db $f4                                           ; $7572: $f4
	ld a, a                                          ; $7573: $7f
	add sp, $75                                      ; $7574: $e8 $75
	adc [hl]                                         ; $7576: $8e
	rst $38                                          ; $7577: $ff
	ld a, l                                          ; $7578: $7d
	cp c                                             ; $7579: $b9
	ld d, a                                          ; $757a: $57
	ret nz                                           ; $757b: $c0

	ld [hl], e                                       ; $757c: $73
	sbc d                                            ; $757d: $9a
	ld b, e                                          ; $757e: $43
	ld c, a                                          ; $757f: $4f
	ld sp, hl                                        ; $7580: $f9
	ld a, l                                          ; $7581: $7d
	ld d, d                                          ; $7582: $52
	ld [hl], a                                       ; $7583: $77
	sub e                                            ; $7584: $93
	sbc [hl]                                         ; $7585: $9e
	jp z, $c07b                                      ; $7586: $ca $7b $c0

	ld l, a                                          ; $7589: $6f
	and h                                            ; $758a: $a4
	ld a, a                                          ; $758b: $7f
	push hl                                          ; $758c: $e5
	ld h, a                                          ; $758d: $67
	dec [hl]                                         ; $758e: $35
	ld l, a                                          ; $758f: $6f
	ld sp, hl                                        ; $7590: $f9
	ld a, a                                          ; $7591: $7f
	ld h, [hl]                                       ; $7592: $66
	ld a, a                                          ; $7593: $7f
	cp $80                                           ; $7594: $fe $80
	ld c, e                                          ; $7596: $4b
	and h                                            ; $7597: $a4
	ld b, e                                          ; $7598: $43
	xor h                                            ; $7599: $ac
	jr nz, @-$2f                                     ; $759a: $20 $cf

	ld [hl+], a                                      ; $759c: $22
	call $fd92                                       ; $759d: $cd $92 $fd
	ld a, [bc]                                       ; $75a0: $0a
	ld l, l                                          ; $75a1: $6d
	inc c                                            ; $75a2: $0c
	inc bc                                           ; $75a3: $03
	add hl, bc                                       ; $75a4: $09
	ld c, $1c                                        ; $75a5: $0e $1c
	inc e                                            ; $75a7: $1c
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	ccf                                              ; $75aa: $3f
	inc a                                            ; $75ab: $3c
	ccf                                              ; $75ac: $3f
	jr nz, jr_04c_756e                               ; $75ad: $20 $bf

	and a                                            ; $75af: $a7
	db $fc                                           ; $75b0: $fc
	db $e4                                           ; $75b1: $e4
	ldh [$7e], a                                     ; $75b2: $e0 $7e
	ret nz                                           ; $75b4: $c0

	ld a, l                                          ; $75b5: $7d
	dec hl                                           ; $75b6: $2b
	ld [hl], a                                       ; $75b7: $77
	ld c, l                                          ; $75b8: $4d
	halt                                             ; $75b9: $76
	add sp, $7a                                      ; $75ba: $e8 $7a
	and $7d                                          ; $75bc: $e6 $7d
	add d                                            ; $75be: $82
	ld l, d                                          ; $75bf: $6a
	ret z                                            ; $75c0: $c8

	ld a, h                                          ; $75c1: $7c
	rst SubAFromHL                                          ; $75c2: $d7
	ld l, h                                          ; $75c3: $6c
	db $ed                                           ; $75c4: $ed
	ld h, [hl]                                       ; $75c5: $66
	jp nc, $be7c                                     ; $75c6: $d2 $7c $be

	ld c, e                                          ; $75c9: $4b
	ldh a, [$9e]                                     ; $75ca: $f0 $9e
	ei                                               ; $75cc: $fb
	ld l, a                                          ; $75cd: $6f
	ldh a, [$99]                                     ; $75ce: $f0 $99
	ld bc, $01a2                                     ; $75d0: $01 $a2 $01
	ld b, b                                          ; $75d3: $40
	ld bc, $738a                                     ; $75d4: $01 $8a $73
	inc h                                            ; $75d7: $24
	ld a, e                                          ; $75d8: $7b
	db $fc                                           ; $75d9: $fc
	ld a, h                                          ; $75da: $7c
	ld a, $90                                        ; $75db: $3e $90
	rst $38                                          ; $75dd: $ff
	sub $39                                          ; $75de: $d6 $39
	db $fc                                           ; $75e0: $fc
	ld de, $11fe                                     ; $75e1: $11 $fe $11
	halt                                             ; $75e4: $76
	sbc c                                            ; $75e5: $99
	halt                                             ; $75e6: $76
	sbc c                                            ; $75e7: $99
	ld h, d                                          ; $75e8: $62
	sub l                                            ; $75e9: $95
	ld c, e                                          ; $75ea: $4b
	or h                                             ; $75eb: $b4
	ei                                               ; $75ec: $fb
	ld a, a                                          ; $75ed: $7f
	inc e                                            ; $75ee: $1c
	ld a, a                                          ; $75ef: $7f
	ld e, b                                          ; $75f0: $58
	ld a, a                                          ; $75f1: $7f
	db $fc                                           ; $75f2: $fc
	sbc h                                            ; $75f3: $9c
	ld d, b                                          ; $75f4: $50
	nop                                              ; $75f5: $00
	ld [hl+], a                                      ; $75f6: $22
	ld e, d                                          ; $75f7: $5a
	and $7d                                          ; $75f8: $e6 $7d
	dec h                                            ; $75fa: $25
	ld l, [hl]                                       ; $75fb: $6e
	ldh a, [$9e]                                     ; $75fc: $f0 $9e
	ld a, [bc]                                       ; $75fe: $0a
	ld [hl], e                                       ; $75ff: $73
	ld [$149e], sp                                   ; $7600: $08 $9e $14
	ld a, d                                          ; $7603: $7a
	db $fc                                           ; $7604: $fc
	ld a, [hl]                                       ; $7605: $7e
	call c, $e876                                    ; $7606: $dc $76 $e8
	ld [hl], a                                       ; $7609: $77
	db $fc                                           ; $760a: $fc
	ld [hl], a                                       ; $760b: $77
	or h                                             ; $760c: $b4
	ld a, a                                          ; $760d: $7f
	ret nc                                           ; $760e: $d0

	ld [hl], a                                       ; $760f: $77
	ld hl, sp-$62                                    ; $7610: $f8 $9e
	ld d, c                                          ; $7612: $51
	ld a, e                                          ; $7613: $7b
	add sp, $76                                      ; $7614: $e8 $76
	and l                                            ; $7616: $a5
	ld a, a                                          ; $7617: $7f
	db $e4                                           ; $7618: $e4
	ld a, a                                          ; $7619: $7f
	ldh a, [$7f]                                     ; $761a: $f0 $7f
	db $f4                                           ; $761c: $f4
	sbc [hl]                                         ; $761d: $9e
	adc b                                            ; $761e: $88
	ld a, e                                          ; $761f: $7b
	cp h                                             ; $7620: $bc
	halt                                             ; $7621: $76
	call c, $d27f                                    ; $7622: $dc $7f $d2
	ld l, h                                          ; $7625: $6c
	ld e, h                                          ; $7626: $5c
	ld [hl], a                                       ; $7627: $77
	nop                                              ; $7628: $00
	ld a, a                                          ; $7629: $7f
	ldh [$fd], a                                     ; $762a: $e0 $fd
	ld a, a                                          ; $762c: $7f
	cp d                                             ; $762d: $ba
	db $fd                                           ; $762e: $fd
	ld [hl], $d4                                     ; $762f: $36 $d4
	jp hl                                            ; $7631: $e9


	ld [hl], a                                       ; $7632: $77
	ld [hl], l                                       ; $7633: $75
	ld d, [hl]                                       ; $7634: $56
	ld h, $fb                                        ; $7635: $26 $fb
	ld a, a                                          ; $7637: $7f
	sbc h                                            ; $7638: $9c
	ld a, a                                          ; $7639: $7f
	ld l, b                                          ; $763a: $68
	ld a, a                                          ; $763b: $7f
	ld [$a67f], a                                    ; $763c: $ea $7f $a6
	sbc [hl]                                         ; $763f: $9e
	ld b, l                                          ; $7640: $45
	ld a, e                                          ; $7641: $7b
	xor [hl]                                         ; $7642: $ae
	ld [hl], d                                       ; $7643: $72
	dec l                                            ; $7644: $2d
	sbc [hl]                                         ; $7645: $9e
	daa                                              ; $7646: $27
	ld l, d                                          ; $7647: $6a
	ld l, e                                          ; $7648: $6b
	halt                                             ; $7649: $76
	or d                                             ; $764a: $b2
	ld a, c                                          ; $764b: $79
	ld l, h                                          ; $764c: $6c
	add l                                            ; $764d: $85
	ld a, a                                          ; $764e: $7f
	ld b, b                                          ; $764f: $40
	rst $38                                          ; $7650: $ff
	add b                                            ; $7651: $80
	rst $38                                          ; $7652: $ff
	add b                                            ; $7653: $80
	db $fd                                           ; $7654: $fd
	add d                                            ; $7655: $82
	ei                                               ; $7656: $fb
	inc b                                            ; $7657: $04
	ld a, [$f005]                                    ; $7658: $fa $05 $f0
	rrca                                             ; $765b: $0f

jr_04c_765c:
	ld h, c                                          ; $765c: $61
	sbc [hl]                                         ; $765d: $9e
	xor $11                                          ; $765e: $ee $11
	adc $27                                          ; $7660: $ce $27
	ret nz                                           ; $7662: $c0

	rrca                                             ; $7663: $0f
	add b                                            ; $7664: $80
	ld b, c                                          ; $7665: $41
	add b                                            ; $7666: $80
	pop bc                                           ; $7667: $c1
	ld [hl], b                                       ; $7668: $70
	cp c                                             ; $7669: $b9
	adc h                                            ; $766a: $8c
	nop                                              ; $766b: $00
	ld a, a                                          ; $766c: $7f
	ld b, c                                          ; $766d: $41
	ld a, a                                          ; $766e: $7f
	ld b, b                                          ; $766f: $40
	inc a                                            ; $7670: $3c

jr_04c_7671:
	ld a, a                                          ; $7671: $7f
	jr c, jr_04c_76d8                                ; $7672: $38 $64

	sbc b                                            ; $7674: $98
	db $e4                                           ; $7675: $e4
	jr jr_04c_765c                                   ; $7676: $18 $e4

	jr c, @+$66                                      ; $7678: $38 $64

	jr jr_04c_76a0                                   ; $767a: $18 $24

	rst $38                                          ; $767c: $ff
	ld hl, sp+$7a                                    ; $767d: $f8 $7a
	db $db                                           ; $767f: $db
	ld [hl], d                                       ; $7680: $72
	ret c                                            ; $7681: $d8

	ld a, e                                          ; $7682: $7b
	cp b                                             ; $7683: $b8
	ld a, [hl]                                       ; $7684: $7e
	ld e, e                                          ; $7685: $5b
	sbc [hl]                                         ; $7686: $9e
	dec de                                           ; $7687: $1b
	ld [hl], d                                       ; $7688: $72
	res 0, b                                         ; $7689: $cb $80
	rst $38                                          ; $768b: $ff
	ccf                                              ; $768c: $3f
	sbc a                                            ; $768d: $9f
	db $10                                           ; $768e: $10
	ld l, a                                          ; $768f: $6f
	jr nz, jr_04c_7671                               ; $7690: $20 $df

	ld b, b                                          ; $7692: $40
	add a                                            ; $7693: $87
	add b                                            ; $7694: $80
	rlca                                             ; $7695: $07
	ld d, h                                          ; $7696: $54
	inc bc                                           ; $7697: $03
	xor l                                            ; $7698: $ad
	ld [bc], a                                       ; $7699: $02
	ld d, e                                          ; $769a: $53
	inc b                                            ; $769b: $04
	xor d                                            ; $769c: $aa
	dec b                                            ; $769d: $05
	ld d, d                                          ; $769e: $52
	dec b                                            ; $769f: $05

jr_04c_76a0:
	and h                                            ; $76a0: $a4
	ld a, [bc]                                       ; $76a1: $0a
	ld d, e                                          ; $76a2: $53
	inc c                                            ; $76a3: $0c
	xor d                                            ; $76a4: $aa
	inc d                                            ; $76a5: $14
	ld de, $09e6                                     ; $76a6: $11 $e6 $09
	and $8e                                          ; $76a9: $e6 $8e
	ld [de], a                                       ; $76ab: $12
	push bc                                          ; $76ac: $c5
	ld h, $89                                        ; $76ad: $26 $89
	ld d, [hl]                                       ; $76af: $56
	add hl, bc                                       ; $76b0: $09
	and [hl]                                         ; $76b1: $a6
	add hl, bc                                       ; $76b2: $09
	ld e, d                                          ; $76b3: $5a
	dec b                                            ; $76b4: $05
	xor d                                            ; $76b5: $aa
	dec b                                            ; $76b6: $05
	ld de, $2880                                     ; $76b7: $11 $80 $28
	add b                                            ; $76ba: $80
	ld d, h                                          ; $76bb: $54
	ld l, c                                          ; $76bc: $69
	call nz, $fc77                                   ; $76bd: $c4 $77 $fc
	sbc [hl]                                         ; $76c0: $9e
	ld de, $687b                                     ; $76c1: $11 $7b $68
	ld h, l                                          ; $76c4: $65
	or h                                             ; $76c5: $b4
	cpl                                              ; $76c6: $2f
	db $fc                                           ; $76c7: $fc
	ld [hl], l                                       ; $76c8: $75
	xor b                                            ; $76c9: $a8
	ld a, a                                          ; $76ca: $7f
	ld hl, sp+$7f                                    ; $76cb: $f8 $7f
	db $fc                                           ; $76cd: $fc
	ld a, [hl]                                       ; $76ce: $7e
	ld l, h                                          ; $76cf: $6c
	ld a, [hl]                                       ; $76d0: $7e
	call nc, Call_04c_6f7f                           ; $76d1: $d4 $7f $6f
	ld l, l                                          ; $76d4: $6d
	xor b                                            ; $76d5: $a8
	ld a, a                                          ; $76d6: $7f
	inc l                                            ; $76d7: $2c

jr_04c_76d8:
	ld a, a                                          ; $76d8: $7f
	ldh a, [$7f]                                     ; $76d9: $f0 $7f
	db $fc                                           ; $76db: $fc
	ld [hl], l                                       ; $76dc: $75
	call c, $ee67                                    ; $76dd: $dc $67 $ee
	ld a, a                                          ; $76e0: $7f
	ldh [c], a                                       ; $76e1: $e2
	ld a, a                                          ; $76e2: $7f
	xor d                                            ; $76e3: $aa
	sbc [hl]                                         ; $76e4: $9e
	and b                                            ; $76e5: $a0
	ld a, e                                          ; $76e6: $7b
	ld hl, sp+$77                                    ; $76e7: $f8 $77
	db $fc                                           ; $76e9: $fc
	ldh [$d1], a                                     ; $76ea: $e0 $d1
	sbc [hl]                                         ; $76ec: $9e
	jr z, @-$02                                      ; $76ed: $28 $fc

	ld l, l                                          ; $76ef: $6d
	rrca                                             ; $76f0: $0f
	ld [hl], l                                       ; $76f1: $75
	ld a, $76                                        ; $76f2: $3e $76
	or [hl]                                          ; $76f4: $b6
	ld a, a                                          ; $76f5: $7f
	and d                                            ; $76f6: $a2
	ld d, h                                          ; $76f7: $54
	rst $38                                          ; $76f8: $ff
	ld e, l                                          ; $76f9: $5d
	ld d, a                                          ; $76fa: $57
	ld a, h                                          ; $76fb: $7c
	ld d, [hl]                                       ; $76fc: $56
	sbc h                                            ; $76fd: $9c
	ld b, $07                                        ; $76fe: $06 $07
	inc b                                            ; $7700: $04
	ld a, e                                          ; $7701: $7b
	cp $7c                                           ; $7702: $fe $7c
	ld d, [hl]                                       ; $7704: $56
	ld a, a                                          ; $7705: $7f
	cp $99                                           ; $7706: $fe $99
	call z, $f4cb                                    ; $7708: $cc $cb $f4
	ld d, e                                          ; $770b: $53
	nop                                              ; $770c: $00
	cp $78                                           ; $770d: $fe $78
	ld d, h                                          ; $770f: $54
	sub h                                            ; $7710: $94
	db $fc                                           ; $7711: $fc
	nop                                              ; $7712: $00
	db $fc                                           ; $7713: $fc
	inc b                                            ; $7714: $04
	ld hl, sp+$00                                    ; $7715: $f8 $00
	ld hl, sp+$08                                    ; $7717: $f8 $08
	ldh a, [rAUD2LOW]                                ; $7719: $f0 $18
	add sp, -$0f                                     ; $771b: $e8 $f1
	sbc l                                            ; $771d: $9d
	jr jr_04c_7724                                   ; $771e: $18 $04

	ld [hl], e                                       ; $7720: $73
	cp $8c                                           ; $7721: $fe $8c
	rlca                                             ; $7723: $07

jr_04c_7724:
	db $10                                           ; $7724: $10
	inc c                                            ; $7725: $0c
	db $10                                           ; $7726: $10
	dec bc                                           ; $7727: $0b
	ld de, $160e                                     ; $7728: $11 $0e $16
	ld [$2403], sp                                   ; $772b: $08 $03 $24
	inc b                                            ; $772e: $04
	ld e, d                                          ; $772f: $5a
	ld [$30b0], sp                                   ; $7730: $08 $b0 $30
	ld b, b                                          ; $7733: $40
	ld b, b                                          ; $7734: $40
	and b                                            ; $7735: $a0
	ld l, l                                          ; $7736: $6d
	push bc                                          ; $7737: $c5
	rst SubAFromHL                                          ; $7738: $d7
	rlca                                             ; $7739: $07
	db $dd                                           ; $773a: $dd
	rrca                                             ; $773b: $0f
	rst SubAFromDE                                          ; $773c: $df
	rra                                              ; $773d: $1f
	sub [hl]                                         ; $773e: $96
	ld c, c                                          ; $773f: $49
	inc d                                            ; $7740: $14
	add c                                            ; $7741: $81
	ccf                                              ; $7742: $3f
	ld a, [hl+]                                      ; $7743: $2a
	ld [hl], a                                       ; $7744: $77
	sub c                                            ; $7745: $91
	ld l, $5d                                        ; $7746: $2e $5d
	ld l, e                                          ; $7748: $6b
	nop                                              ; $7749: $00
	sub h                                            ; $774a: $94
	ldh a, [c]                                       ; $774b: $f2
	dec b                                            ; $774c: $05
	ld e, d                                          ; $774d: $5a
	push hl                                          ; $774e: $e5
	xor e                                            ; $774f: $ab
	db $fc                                           ; $7750: $fc
	ld d, l                                          ; $7751: $55
	cp $4a                                           ; $7752: $fe $4a
	dec d                                            ; $7754: $15
	xor e                                            ; $7755: $ab
	ld e, [hl]                                       ; $7756: $5e
	db $ec                                           ; $7757: $ec
	sbc c                                            ; $7758: $99
	add b                                            ; $7759: $80
	xor d                                            ; $775a: $aa
	ld b, b                                          ; $775b: $40
	dec d                                            ; $775c: $15
	ret nz                                           ; $775d: $c0

	ld [$d032], a                                    ; $775e: $ea $32 $d0
	ld d, [hl]                                       ; $7761: $56
	and h                                            ; $7762: $a4
	ld [hl], a                                       ; $7763: $77
	db $fc                                           ; $7764: $fc
	ld [hl], l                                       ; $7765: $75
	ld a, h                                          ; $7766: $7c
	ld [hl], l                                       ; $7767: $75
	xor h                                            ; $7768: $ac
	ld a, [hl]                                       ; $7769: $7e
	call nz, $f06f                                   ; $776a: $c4 $6f $f0
	ld a, [hl]                                       ; $776d: $7e
	ldh [c], a                                       ; $776e: $e2
	ld a, a                                          ; $776f: $7f
	adc b                                            ; $7770: $88
	ld l, l                                          ; $7771: $6d
	ld h, b                                          ; $7772: $60
	ld a, [hl]                                       ; $7773: $7e
	sub $7d                                          ; $7774: $d6 $7d
	db $e4                                           ; $7776: $e4
	halt                                             ; $7777: $76
	ret nz                                           ; $7778: $c0

	ld a, a                                          ; $7779: $7f
	ldh a, [c]                                       ; $777a: $f2
	ld a, a                                          ; $777b: $7f
	ld d, $77                                        ; $777c: $16 $77
	ld [hl], h                                       ; $777e: $74

jr_04c_777f:
	ld a, l                                          ; $777f: $7d
	ld [hl], h                                       ; $7780: $74
	ld a, a                                          ; $7781: $7f
	or $9e                                           ; $7782: $f6 $9e
	add d                                            ; $7784: $82
	ld c, d                                          ; $7785: $4a
	xor $65                                          ; $7786: $ee $65
	ld hl, $a27e                                     ; $7788: $21 $7e $a2
	ld l, l                                          ; $778b: $6d
	ld [hl], d                                       ; $778c: $72
	halt                                             ; $778d: $76
	and d                                            ; $778e: $a2
	ld [hl], l                                       ; $778f: $75
	ld h, [hl]                                       ; $7790: $66
	sbc [hl]                                         ; $7791: $9e
	jr nz, jr_04c_7805                               ; $7792: $20 $71

	ld d, d                                          ; $7794: $52
	ld a, a                                          ; $7795: $7f
	ldh a, [$7f]                                     ; $7796: $f0 $7f
	ld hl, sp+$5f                                    ; $7798: $f8 $5f
	call c, $e877                                    ; $779a: $dc $77 $e8
	ld a, a                                          ; $779d: $7f
	db $f4                                           ; $779e: $f4
	ld h, [hl]                                       ; $779f: $66
	jp z, $e17d                                      ; $77a0: $ca $7d $e1

	ld l, [hl]                                       ; $77a3: $6e
	cp [hl]                                          ; $77a4: $be
	ld [hl], l                                       ; $77a5: $75
	reti                                             ; $77a6: $d9


	ld [hl], h                                       ; $77a7: $74
	inc l                                            ; $77a8: $2c
	ld l, l                                          ; $77a9: $6d
	ld e, $ff                                        ; $77aa: $1e $ff
	add l                                            ; $77ac: $85
	db $fd                                           ; $77ad: $fd
	cp d                                             ; $77ae: $ba
	ld [hl], a                                       ; $77af: $77
	ld d, b                                          ; $77b0: $50
	ccf                                              ; $77b1: $3f
	jr c, jr_04c_77cb                                ; $77b2: $38 $17

	db $10                                           ; $77b4: $10
	rrca                                             ; $77b5: $0f
	ld [$0007], sp                                   ; $77b6: $08 $07 $00
	dec bc                                           ; $77b9: $0b
	add hl, bc                                       ; $77ba: $09
	dec b                                            ; $77bb: $05
	dec b                                            ; $77bc: $05
	jr nc, jr_04c_777f                               ; $77bd: $30 $c0

	ldh a, [rAUD1SWEEP]                              ; $77bf: $f0 $10
	ldh [rP1], a                                     ; $77c1: $e0 $00
	ldh [rAUD4LEN], a                                ; $77c3: $e0 $20
	rst $38                                          ; $77c5: $ff
	ld a, a                                          ; $77c6: $7f
	db $db                                           ; $77c7: $db
	rst $38                                          ; $77c8: $ff
	ld sp, hl                                        ; $77c9: $f9
	reti                                             ; $77ca: $d9


jr_04c_77cb:
	rst $38                                          ; $77cb: $ff
	sbc l                                            ; $77cc: $9d
	inc e                                            ; $77cd: $1c
	inc b                                            ; $77ce: $04
	ld l, a                                          ; $77cf: $6f
	cp $9d                                           ; $77d0: $fe $9d
	rra                                              ; $77d2: $1f
	rlca                                             ; $77d3: $07
	ld l, a                                          ; $77d4: $6f
	cp $fb                                           ; $77d5: $fe $fb
	rst SubAFromDE                                          ; $77d7: $df
	rra                                              ; $77d8: $1f
	reti                                             ; $77d9: $d9


	rst $38                                          ; $77da: $ff
	rst SubAFromDE                                          ; $77db: $df
	ccf                                              ; $77dc: $3f
	db $dd                                           ; $77dd: $dd
	ld a, a                                          ; $77de: $7f
	rst SubAFromHL                                          ; $77df: $d7
	rst $38                                          ; $77e0: $ff
	ld c, l                                          ; $77e1: $4d
	nop                                              ; $77e2: $00
	reti                                             ; $77e3: $d9


	inc sp                                           ; $77e4: $33
	sbc l                                            ; $77e5: $9d
	ld [hl], $66                                     ; $77e6: $36 $66
	ld h, e                                          ; $77e8: $63
	rst FarCall                                          ; $77e9: $f7
	ccf                                              ; $77ea: $3f
	or $99                                           ; $77eb: $f6 $99
	ld d, l                                          ; $77ed: $55
	ld [hl], $66                                     ; $77ee: $36 $66
	inc [hl]                                         ; $77f0: $34
	ld [hl], a                                       ; $77f1: $77
	ld [hl], e                                       ; $77f2: $73
	call c, $9455                                    ; $77f3: $dc $55 $94
	ld d, [hl]                                       ; $77f6: $56
	ld h, [hl]                                       ; $77f7: $66
	ld [hl], h                                       ; $77f8: $74
	ld [hl], a                                       ; $77f9: $77
	halt                                             ; $77fa: $76
	ld h, [hl]                                       ; $77fb: $66
	ld h, e                                          ; $77fc: $63
	ld h, h                                          ; $77fd: $64
	inc [hl]                                         ; $77fe: $34

Jump_04c_77ff:
	ld b, e                                          ; $77ff: $43
	halt                                             ; $7800: $76
	ld a, e                                          ; $7801: $7b
	or $8d                                           ; $7802: $f6 $8d
	ld h, [hl]                                       ; $7804: $66

jr_04c_7805:
	ld h, h                                          ; $7805: $64
	ld b, h                                          ; $7806: $44
	ld d, h                                          ; $7807: $54
	ld b, h                                          ; $7808: $44
	ld b, a                                          ; $7809: $47
	halt                                             ; $780a: $76
	ld h, [hl]                                       ; $780b: $66
	ld b, a                                          ; $780c: $47
	ld b, h                                          ; $780d: $44
	ld b, h                                          ; $780e: $44
	ld d, l                                          ; $780f: $55
	ld d, h                                          ; $7810: $54
	ld b, h                                          ; $7811: $44
	ld b, h                                          ; $7812: $44
	ld b, a                                          ; $7813: $47
	ld h, [hl]                                       ; $7814: $66
	ld h, [hl]                                       ; $7815: $66
	ld a, e                                          ; $7816: $7b
	rst FarCall                                          ; $7817: $f7
	ld a, a                                          ; $7818: $7f
	or $9c                                           ; $7819: $f6 $9c
	ld b, l                                          ; $781b: $45
	ld d, l                                          ; $781c: $55
	ld h, a                                          ; $781d: $67
	ld a, e                                          ; $781e: $7b
	or $7f                                           ; $781f: $f6 $7f
	ld a, [$f677]                                    ; $7821: $fa $77 $f6
	sbc h                                            ; $7824: $9c
	ld [hl], a                                       ; $7825: $77
	ld b, [hl]                                       ; $7826: $46
	ld h, a                                          ; $7827: $67
	ld [hl], a                                       ; $7828: $77
	or $de                                           ; $7829: $f6 $de
	ld d, l                                          ; $782b: $55
	sbc $77                                          ; $782c: $de $77
	ld l, e                                          ; $782e: $6b
	ld b, $db                                        ; $782f: $06 $db
	rst $38                                          ; $7831: $ff
	sbc b                                            ; $7832: $98
	ld a, a                                          ; $7833: $7f
	rst $38                                          ; $7834: $ff
	xor a                                            ; $7835: $af
	rst $38                                          ; $7836: $ff
	ld d, l                                          ; $7837: $55
	rst $38                                          ; $7838: $ff
	xor d                                            ; $7839: $aa
	ld a, e                                          ; $783a: $7b
	db $fc                                           ; $783b: $fc
	rst SubAFromHL                                          ; $783c: $d7
	rst $38                                          ; $783d: $ff
	sbc [hl]                                         ; $783e: $9e
	ld e, a                                          ; $783f: $5f
	ld h, e                                          ; $7840: $63
	ldh a, [hDisp1_LCDC]                                     ; $7841: $f0 $8f
	cp $ff                                           ; $7843: $fe $ff
	db $fd                                           ; $7845: $fd
	cp $fa                                           ; $7846: $fe $fa
	rst $38                                          ; $7848: $ff

jr_04c_7849:
	reti                                             ; $7849: $d9


	and $c0                                          ; $784a: $e6 $c0
	add b                                            ; $784c: $80
	add b                                            ; $784d: $80
	nop                                              ; $784e: $00
	pop af                                           ; $784f: $f1
	ldh [rLCDC], a                                   ; $7850: $e0 $40
	add b                                            ; $7852: $80
	push af                                          ; $7853: $f5
	sbc e                                            ; $7854: $9b
	inc a                                            ; $7855: $3c
	ld hl, sp+$24                                    ; $7856: $f8 $24
	jr jr_04c_7849                                   ; $7858: $18 $ef

	sbc b                                            ; $785a: $98
	dec b                                            ; $785b: $05
	nop                                              ; $785c: $00
	rrca                                             ; $785d: $0f
	nop                                              ; $785e: $00
	inc bc                                           ; $785f: $03
	nop                                              ; $7860: $00
	ld bc, $8ffe                                     ; $7861: $01 $fe $8f
	dec de                                           ; $7864: $1b
	rlca                                             ; $7865: $07
	add hl, hl                                       ; $7866: $29
	rlca                                             ; $7867: $07
	dec e                                            ; $7868: $1d
	inc bc                                           ; $7869: $03
	dec [hl]                                         ; $786a: $35
	inc bc                                           ; $786b: $03
	rst FarCall                                          ; $786c: $f7
	nop                                              ; $786d: $00
	db $eb                                           ; $786e: $eb
	nop                                              ; $786f: $00
	push de                                          ; $7870: $d5
	nop                                              ; $7871: $00
	ld a, [hl+]                                      ; $7872: $2a
	nop                                              ; $7873: $00
	db $db                                           ; $7874: $db
	rst $38                                          ; $7875: $ff
	sub [hl]                                         ; $7876: $96
	rra                                              ; $7877: $1f
	rst $38                                          ; $7878: $ff
	cpl                                              ; $7879: $2f
	rra                                              ; $787a: $1f
	sbc $21                                          ; $787b: $de $21
	or l                                             ; $787d: $b5
	ld b, b                                          ; $787e: $40
	add d                                            ; $787f: $82
	ld l, e                                          ; $7880: $6b
	ldh a, [$da]                                     ; $7881: $f0 $da
	rst $38                                          ; $7883: $ff
	sbc h                                            ; $7884: $9c
	ld a, a                                          ; $7885: $7f
	ld e, a                                          ; $7886: $5f
	ccf                                              ; $7887: $3f
	jp Jump_04c_7fff                                 ; $7888: $c3 $ff $7f


	halt                                             ; $788b: $76
	db $d3                                           ; $788c: $d3
	rst $38                                          ; $788d: $ff
	ld a, a                                          ; $788e: $7f
	ld e, [hl]                                       ; $788f: $5e
	push de                                          ; $7890: $d5
	rst $38                                          ; $7891: $ff
	sbc [hl]                                         ; $7892: $9e
	db $fd                                           ; $7893: $fd
	ld c, e                                          ; $7894: $4b
	ldh a, [rPCM34]                                  ; $7895: $f0 $77
	ld l, $d7                                        ; $7897: $2e $d7
	rst $38                                          ; $7899: $ff
	ld a, a                                          ; $789a: $7f
	ld a, $4f                                        ; $789b: $3e $4f
	ldh a, [rPCM34]                                  ; $789d: $f0 $77
	ld [hl+], a                                      ; $789f: $22
	rra                                              ; $78a0: $1f
	ldh a, [$9e]                                     ; $78a1: $f0 $9e
	push de                                          ; $78a3: $d5
	ld e, e                                          ; $78a4: $5b
	ldh a, [$9e]                                     ; $78a5: $f0 $9e
	push af                                          ; $78a7: $f5
	ld l, e                                          ; $78a8: $6b
	db $f4                                           ; $78a9: $f4
	ld [hl], a                                       ; $78aa: $77
	db $fc                                           ; $78ab: $fc
	ld d, a                                          ; $78ac: $57
	db $f4                                           ; $78ad: $f4
	ld [hl], a                                       ; $78ae: $77
	db $fc                                           ; $78af: $fc
	ld l, a                                          ; $78b0: $6f
	ld a, [$159c]                                    ; $78b1: $fa $9c $15
	rst $38                                          ; $78b4: $ff
	nop                                              ; $78b5: $00
	ld l, e                                          ; $78b6: $6b
	cp $77                                           ; $78b7: $fe $77
	ldh a, [hDisp1_SCX]                                     ; $78b9: $f0 $91
	xor e                                            ; $78bb: $ab
	cp $54                                           ; $78bc: $fe $54
	cp $ab                                           ; $78be: $fe $ab
	cp $01                                           ; $78c0: $fe $01
	cp $03                                           ; $78c2: $fe $03
	cp $7d                                           ; $78c4: $fe $7d
	add d                                            ; $78c6: $82
	add b                                            ; $78c7: $80
	nop                                              ; $78c8: $00
	ld d, [hl]                                       ; $78c9: $56
	pop de                                           ; $78ca: $d1
	ld d, d                                          ; $78cb: $52
	push bc                                          ; $78cc: $c5
	db $f4                                           ; $78cd: $f4
	ld a, [hl]                                       ; $78ce: $7e
	call nc, $fe7f                                   ; $78cf: $d4 $7f $fe
	sbc h                                            ; $78d2: $9c
	jr nz, jr_04c_78d6                               ; $78d3: $20 $01

	ld a, a                                          ; $78d5: $7f

jr_04c_78d6:
	ld l, e                                          ; $78d6: $6b
	db $f4                                           ; $78d7: $f4
	ld a, a                                          ; $78d8: $7f
	ret c                                            ; $78d9: $d8

	add [hl]                                         ; $78da: $86
	pop bc                                           ; $78db: $c1
	nop                                              ; $78dc: $00
	xor d                                            ; $78dd: $aa
	nop                                              ; $78de: $00
	rst SubAFromHL                                          ; $78df: $d7
	nop                                              ; $78e0: $00
	ld a, [hl+]                                      ; $78e1: $2a
	add c                                            ; $78e2: $81
	ld d, l                                          ; $78e3: $55
	nop                                              ; $78e4: $00
	cp a                                             ; $78e5: $bf
	nop                                              ; $78e6: $00
	ld a, a                                          ; $78e7: $7f
	nop                                              ; $78e8: $00
	xor [hl]                                         ; $78e9: $ae
	db $10                                           ; $78ea: $10
	db $dd                                           ; $78eb: $dd
	jr nz, @-$54                                     ; $78ec: $20 $aa

	ld d, b                                          ; $78ee: $50
	ld e, l                                          ; $78ef: $5d
	and b                                            ; $78f0: $a0
	xor a                                            ; $78f1: $af
	ld d, b                                          ; $78f2: $50
	ld b, b                                          ; $78f3: $40
	ld a, e                                          ; $78f4: $7b
	db $e4                                           ; $78f5: $e4
	ld a, a                                          ; $78f6: $7f
	ldh [$7e], a                                     ; $78f7: $e0 $7e
	ret z                                            ; $78f9: $c8

	ld a, [hl]                                       ; $78fa: $7e
	sbc [hl]                                         ; $78fb: $9e
	adc c                                            ; $78fc: $89
	ld a, [bc]                                       ; $78fd: $0a
	nop                                              ; $78fe: $00
	dec d                                            ; $78ff: $15
	nop                                              ; $7900: $00
	cp [hl]                                          ; $7901: $be
	ld bc, $1f35                                     ; $7902: $01 $35 $1f
	ld a, [hl+]                                      ; $7905: $2a
	rra                                              ; $7906: $1f
	dec d                                            ; $7907: $15
	ccf                                              ; $7908: $3f
	ld l, d                                          ; $7909: $6a
	ccf                                              ; $790a: $3f
	push de                                          ; $790b: $d5
	ld a, a                                          ; $790c: $7f
	xor d                                            ; $790d: $aa
	rst $38                                          ; $790e: $ff
	ld d, a                                          ; $790f: $57
	cp h                                             ; $7910: $bc
	adc b                                            ; $7911: $88
	ld [hl], b                                       ; $7912: $70
	ld d, a                                          ; $7913: $57
	ld h, h                                          ; $7914: $64
	ld a, a                                          ; $7915: $7f
	db $ec                                           ; $7916: $ec
	sbc l                                            ; $7917: $9d
	ret nz                                           ; $7918: $c0

	ccf                                              ; $7919: $3f
	ld d, a                                          ; $791a: $57
	ldh a, [$9e]                                     ; $791b: $f0 $9e
	ld d, h                                          ; $791d: $54
	ld a, e                                          ; $791e: $7b
	ld h, b                                          ; $791f: $60
	ld d, a                                          ; $7920: $57
	ldh a, [$7f]                                     ; $7921: $f0 $7f
	ldh a, [c]                                       ; $7923: $f2
	sbc l                                            ; $7924: $9d
	db $10                                           ; $7925: $10
	rst AddAOntoHL                                          ; $7926: $ef
	ld e, a                                          ; $7927: $5f
	ldh a, [$9e]                                     ; $7928: $f0 $9e
	and b                                            ; $792a: $a0
	ld [hl], e                                       ; $792b: $73
	ld b, b                                          ; $792c: $40
	ld e, a                                          ; $792d: $5f
	ldh a, [$6f]                                     ; $792e: $f0 $6f
	jr nc, jr_04c_7991                               ; $7930: $30 $5f

	call nc, $f017                                   ; $7932: $d4 $17 $f0
	sbc [hl]                                         ; $7935: $9e
	add b                                            ; $7936: $80
	ld d, e                                          ; $7937: $53
	ldh a, [rPCM34]                                  ; $7938: $f0 $77
	sbc b                                            ; $793a: $98
	ld e, a                                          ; $793b: $5f
	ldh a, [$9e]                                     ; $793c: $f0 $9e
	xor b                                            ; $793e: $a8
	ld e, e                                          ; $793f: $5b
	ldh a, [c]                                       ; $7940: $f2
	sbc h                                            ; $7941: $9c
	dec b                                            ; $7942: $05
	ld a, [$5b50]                                    ; $7943: $fa $50 $5b
	ldh a, [c]                                       ; $7946: $f2
	adc c                                            ; $7947: $89
	ld a, [bc]                                       ; $7948: $0a
	push af                                          ; $7949: $f5
	ld d, l                                          ; $794a: $55
	xor d                                            ; $794b: $aa
	inc bc                                           ; $794c: $03
	db $fc                                           ; $794d: $fc
	inc b                                            ; $794e: $04
	ld hl, sp-$40                                    ; $794f: $f8 $c0
	jr c, @+$6e                                      ; $7951: $38 $6c

	db $10                                           ; $7953: $10
	jr c, jr_04c_7956                                ; $7954: $38 $00

jr_04c_7956:
	or b                                             ; $7956: $b0
	ld b, b                                          ; $7957: $40
	ld h, b                                          ; $7958: $60
	add b                                            ; $7959: $80
	and b                                            ; $795a: $a0
	ld b, b                                          ; $795b: $40
	ld [bc], a                                       ; $795c: $02
	ld bc, $ca75                                     ; $795d: $01 $75 $ca
	rst FarCall                                          ; $7960: $f7
	sbc [hl]                                         ; $7961: $9e
	ret nz                                           ; $7962: $c0

	ld d, d                                          ; $7963: $52
	call z, $e47f                                    ; $7964: $cc $7f $e4
	sbc [hl]                                         ; $7967: $9e
	rlca                                             ; $7968: $07
	ld a, c                                          ; $7969: $79
	and [hl]                                         ; $796a: $a6
	sbc h                                            ; $796b: $9c

jr_04c_796c:
	ld e, a                                          ; $796c: $5f
	nop                                              ; $796d: $00
	jr nz, jr_04c_796c                               ; $796e: $20 $fc

	add b                                            ; $7970: $80
	and b                                            ; $7971: $a0
	nop                                              ; $7972: $00
	ld a, b                                          ; $7973: $78
	nop                                              ; $7974: $00
	ld [$d515], a                                    ; $7975: $ea $15 $d5
	ld a, [hl+]                                      ; $7978: $2a
	ld [$7615], a                                    ; $7979: $ea $15 $76
	add hl, bc                                       ; $797c: $09
	inc d                                            ; $797d: $14
	inc bc                                           ; $797e: $03
	rrca                                             ; $797f: $0f
	nop                                              ; $7980: $00
	jr jr_04c_798a                                   ; $7981: $18 $07

	ld l, d                                          ; $7983: $6a
	dec d                                            ; $7984: $15
	push de                                          ; $7985: $d5
	ld [bc], a                                       ; $7986: $02
	ld a, d                                          ; $7987: $7a
	add l                                            ; $7988: $85
	rla                                              ; $7989: $17

jr_04c_798a:
	add sp, $60                                      ; $798a: $e8 $60
	sbc a                                            ; $798c: $9f
	sub l                                            ; $798d: $95
	ld l, d                                          ; $798e: $6a
	dec hl                                           ; $798f: $2b
	add [hl]                                         ; $7990: $86

jr_04c_7991:
	call nc, $aa55                                   ; $7991: $d4 $55 $aa
	xor d                                            ; $7994: $aa
	ld d, l                                          ; $7995: $55
	ld [hl], l                                       ; $7996: $75
	add b                                            ; $7997: $80
	ld [$5701], a                                    ; $7998: $ea $01 $57
	add b                                            ; $799b: $80
	xor $01                                          ; $799c: $ee $01
	ld a, l                                          ; $799e: $7d
	add d                                            ; $799f: $82
	xor d                                            ; $79a0: $aa
	ld d, l                                          ; $79a1: $55
	push de                                          ; $79a2: $d5
	ld a, [hl+]                                      ; $79a3: $2a
	xor d                                            ; $79a4: $aa
	ld d, l                                          ; $79a5: $55
	db $fd                                           ; $79a6: $fd
	ld [bc], a                                       ; $79a7: $02
	xor d                                            ; $79a8: $aa
	ld d, l                                          ; $79a9: $55
	ld [hl], a                                       ; $79aa: $77
	add sp, -$63                                     ; $79ab: $e8 $9d
	ld d, b                                          ; $79ad: $50
	xor a                                            ; $79ae: $af
	ld [hl], a                                       ; $79af: $77
	add d                                            ; $79b0: $82
	ld a, a                                          ; $79b1: $7f
	ld hl, sp-$6b                                    ; $79b2: $f8 $95
	ld de, $aae0                                     ; $79b4: $11 $e0 $aa
	ld b, l                                          ; $79b7: $45
	ld d, l                                          ; $79b8: $55
	xor d                                            ; $79b9: $aa
	add b                                            ; $79ba: $80
	ld a, a                                          ; $79bb: $7f
	dec b                                            ; $79bc: $05
	ld a, [$e86f]                                    ; $79bd: $fa $6f $e8
	sub a                                            ; $79c0: $97
	ldh a, [rIF]                                     ; $79c1: $f0 $0f
	xor e                                            ; $79c3: $ab
	ld d, h                                          ; $79c4: $54
	rla                                              ; $79c5: $17
	add sp, -$56                                     ; $79c6: $e8 $aa
	ld d, l                                          ; $79c8: $55
	ld a, d                                          ; $79c9: $7a
	ld [hl], $73                                     ; $79ca: $36 $73
	ldh a, [$97]                                     ; $79cc: $f0 $97
	add hl, hl                                       ; $79ce: $29
	sub $34                                          ; $79cf: $d6 $34
	dec bc                                           ; $79d1: $0b
	ld b, b                                          ; $79d2: $40
	ccf                                              ; $79d3: $3f
	add b                                            ; $79d4: $80
	ld a, a                                          ; $79d5: $7f
	ld h, a                                          ; $79d6: $67
	ldh a, [$9d]                                     ; $79d7: $f0 $9d
	ld b, b                                          ; $79d9: $40
	cp a                                             ; $79da: $bf
	ld l, a                                          ; $79db: $6f
	ld b, h                                          ; $79dc: $44
	sbc l                                            ; $79dd: $9d
	dec d                                            ; $79de: $15
	ld [$f06f], a                                    ; $79df: $ea $6f $f0
	ld e, a                                          ; $79e2: $5f
	ld [hl], $77                                     ; $79e3: $36 $77
	ldh a, [$7f]                                     ; $79e5: $f0 $7f
	call nz, $f277                                   ; $79e7: $c4 $77 $f2
	ld a, [hl]                                       ; $79ea: $7e
	ld b, $7f                                        ; $79eb: $06 $7f
	db $f4                                           ; $79ed: $f4
	sbc h                                            ; $79ee: $9c
	ld h, e                                          ; $79ef: $63
	add b                                            ; $79f0: $80
	ret nz                                           ; $79f1: $c0

	ei                                               ; $79f2: $fb
	halt                                             ; $79f3: $76
	db $fc                                           ; $79f4: $fc
	ld [hl], e                                       ; $79f5: $73
	db $e4                                           ; $79f6: $e4
	ld a, a                                          ; $79f7: $7f
	ld e, d                                          ; $79f8: $5a
	sbc e                                            ; $79f9: $9b
	dec [hl]                                         ; $79fa: $35
	ld a, [bc]                                       ; $79fb: $0a
	ld a, [bc]                                       ; $79fc: $0a
	dec b                                            ; $79fd: $05
	ld e, a                                          ; $79fe: $5f
	ldh a, [rPCM34]                                  ; $79ff: $f0 $77
	db $fc                                           ; $7a01: $fc
	ld a, a                                          ; $7a02: $7f
	di                                               ; $7a03: $f3
	ld a, a                                          ; $7a04: $7f
	nop                                              ; $7a05: $00
	sbc e                                            ; $7a06: $9b
	inc l                                            ; $7a07: $2c
	ret nc                                           ; $7a08: $d0

	ld e, b                                          ; $7a09: $58
	and b                                            ; $7a0a: $a0
	ld [hl], a                                       ; $7a0b: $77
	inc b                                            ; $7a0c: $04
	sbc h                                            ; $7a0d: $9c
	xor d                                            ; $7a0e: $aa
	ld b, b                                          ; $7a0f: $40
	ld d, a                                          ; $7a10: $57
	ld a, d                                          ; $7a11: $7a
	push de                                          ; $7a12: $d5
	sub e                                            ; $7a13: $93
	add d                                            ; $7a14: $82
	ld a, l                                          ; $7a15: $7d
	push de                                          ; $7a16: $d5
	ld a, [hl+]                                      ; $7a17: $2a
	ld a, d                                          ; $7a18: $7a
	dec b                                            ; $7a19: $05
	ld e, l                                          ; $7a1a: $5d
	ld [bc], a                                       ; $7a1b: $02
	ld e, d                                          ; $7a1c: $5a
	dec b                                            ; $7a1d: $05
	sub l                                            ; $7a1e: $95
	ld a, [hl+]                                      ; $7a1f: $2a
	ld [hl], a                                       ; $7a20: $77
	and l                                            ; $7a21: $a5
	ld h, a                                          ; $7a22: $67
	sub $7f                                          ; $7a23: $d6 $7f
	db $fc                                           ; $7a25: $fc
	sbc [hl]                                         ; $7a26: $9e
	ld a, a                                          ; $7a27: $7f
	ld [hl], d                                       ; $7a28: $72
	sbc e                                            ; $7a29: $9b
	ld e, a                                          ; $7a2a: $5f
	add $6f                                          ; $7a2b: $c6 $6f
	cp $7d                                           ; $7a2d: $fe $7d
	ldh a, [$7e]                                     ; $7a2f: $f0 $7e
	db $f4                                           ; $7a31: $f4
	sbc [hl]                                         ; $7a32: $9e
	ld d, b                                          ; $7a33: $50
	ld a, e                                          ; $7a34: $7b
	db $fc                                           ; $7a35: $fc
	ld a, a                                          ; $7a36: $7f
	ld [hl], a                                       ; $7a37: $77
	ld a, l                                          ; $7a38: $7d
	ret nc                                           ; $7a39: $d0

	sbc e                                            ; $7a3a: $9b
	ld d, l                                          ; $7a3b: $55
	ld a, [bc]                                       ; $7a3c: $0a
	xor d                                            ; $7a3d: $aa
	inc d                                            ; $7a3e: $14
	ld sp, hl                                        ; $7a3f: $f9
	adc [hl]                                         ; $7a40: $8e
	ld b, c                                          ; $7a41: $41
	nop                                              ; $7a42: $00
	ld l, $41                                        ; $7a43: $2e $41
	ld e, a                                          ; $7a45: $5f
	add b                                            ; $7a46: $80
	xor d                                            ; $7a47: $aa
	nop                                              ; $7a48: $00
	ld [bc], a                                       ; $7a49: $02
	nop                                              ; $7a4a: $00
	dec [hl]                                         ; $7a4b: $35
	nop                                              ; $7a4c: $00
	ld a, $00                                        ; $7a4d: $3e $00
	dec hl                                           ; $7a4f: $2b
	inc d                                            ; $7a50: $14
	ld d, l                                          ; $7a51: $55
	ld a, e                                          ; $7a52: $7b
	inc b                                            ; $7a53: $04
	ld a, [hl]                                       ; $7a54: $7e
	ret z                                            ; $7a55: $c8

	ld a, a                                          ; $7a56: $7f
	ldh a, [$80]                                     ; $7a57: $f0 $80
	db $f4                                           ; $7a59: $f4
	nop                                              ; $7a5a: $00
	ld l, e                                          ; $7a5b: $6b

Call_04c_7a5c:
	inc d                                            ; $7a5c: $14
	or b                                             ; $7a5d: $b0
	rrca                                             ; $7a5e: $0f
	rst SubAFromBC                                          ; $7a5f: $e7
	jr jr_04c_7ac0                                   ; $7a60: $18 $5e

	and b                                            ; $7a62: $a0
	db $eb                                           ; $7a63: $eb
	inc d                                            ; $7a64: $14
	push af                                          ; $7a65: $f5
	ld a, [bc]                                       ; $7a66: $0a
	xor e                                            ; $7a67: $ab
	nop                                              ; $7a68: $00
	sub l                                            ; $7a69: $95
	ld l, d                                          ; $7a6a: $6a
	ld b, [hl]                                       ; $7a6b: $46
	add c                                            ; $7a6c: $81
	adc l                                            ; $7a6d: $8d
	ld [bc], a                                       ; $7a6e: $02

Call_04c_7a6f:
	ld a, [bc]                                       ; $7a6f: $0a
	dec b                                            ; $7a70: $05
	dec [hl]                                         ; $7a71: $35
	ld a, [bc]                                       ; $7a72: $0a
	xor e                                            ; $7a73: $ab
	ld d, h                                          ; $7a74: $54

jr_04c_7a75:
	ld e, a                                          ; $7a75: $5f
	and b                                            ; $7a76: $a0
	ei                                               ; $7a77: $fb
	ld a, a                                          ; $7a78: $7f
	cp h                                             ; $7a79: $bc
	ld a, e                                          ; $7a7a: $7b
	inc a                                            ; $7a7b: $3c

jr_04c_7a7c:
	ld h, e                                          ; $7a7c: $63
	ld h, b                                          ; $7a7d: $60
	sbc l                                            ; $7a7e: $9d
	and d                                            ; $7a7f: $a2
	db $eb                                           ; $7a80: $eb
	ld a, e                                          ; $7a81: $7b
	ldh a, [$7f]                                     ; $7a82: $f0 $7f
	sbc h                                            ; $7a84: $9c
	ld a, a                                          ; $7a85: $7f
	add [hl]                                         ; $7a86: $86
	sbc l                                            ; $7a87: $9d
	cp [hl]                                          ; $7a88: $be
	ld b, c                                          ; $7a89: $41
	ld [hl], a                                       ; $7a8a: $77
	add sp, $7f                                      ; $7a8b: $e8 $7f
	ld hl, sp-$63                                    ; $7a8d: $f8 $9d
	ld [$7700], a                                    ; $7a8f: $ea $00 $77
	ld e, h                                          ; $7a92: $5c
	ld a, [hl]                                       ; $7a93: $7e
	cp h                                             ; $7a94: $bc
	ld a, a                                          ; $7a95: $7f
	db $f4                                           ; $7a96: $f4
	ld a, a                                          ; $7a97: $7f
	ld e, d                                          ; $7a98: $5a
	ld a, e                                          ; $7a99: $7b
	db $fc                                           ; $7a9a: $fc
	sbc [hl]                                         ; $7a9b: $9e
	jr z, jr_04c_7b19                                ; $7a9c: $28 $7b

	adc h                                            ; $7a9e: $8c
	sbc h                                            ; $7a9f: $9c
	xor d                                            ; $7aa0: $aa
	cp a                                             ; $7aa1: $bf
	ld b, b                                          ; $7aa2: $40
	ld [hl], a                                       ; $7aa3: $77
	ld h, [hl]                                       ; $7aa4: $66
	ld [hl], e                                       ; $7aa5: $73
	add b                                            ; $7aa6: $80
	ld [hl], a                                       ; $7aa7: $77
	db $fc                                           ; $7aa8: $fc
	sbc l                                            ; $7aa9: $9d
	xor d                                            ; $7aaa: $aa
	xor a                                            ; $7aab: $af
	ld a, e                                          ; $7aac: $7b
	ld l, h                                          ; $7aad: $6c
	ld a, [hl]                                       ; $7aae: $7e
	ld h, [hl]                                       ; $7aaf: $66
	rst $38                                          ; $7ab0: $ff
	ld a, a                                          ; $7ab1: $7f
	add [hl]                                         ; $7ab2: $86
	ld [hl], a                                       ; $7ab3: $77
	ldh a, [$7f]                                     ; $7ab4: $f0 $7f
	ret nc                                           ; $7ab6: $d0

	ld a, a                                          ; $7ab7: $7f
	ldh [$9c], a                                     ; $7ab8: $e0 $9c
	rst SubAFromDE                                          ; $7aba: $df
	jr nz, jr_04c_7b39                               ; $7abb: $20 $7c

	ld a, e                                          ; $7abd: $7b
	db $ec                                           ; $7abe: $ec
	halt                                             ; $7abf: $76

jr_04c_7ac0:
	jr c, jr_04c_7b41                                ; $7ac0: $38 $7f

	ldh a, [$7f]                                     ; $7ac2: $f0 $7f
	call nc, $fd9a                                   ; $7ac4: $d4 $9a $fd
	nop                                              ; $7ac7: $00
	ld a, [$0400]                                    ; $7ac8: $fa $00 $04
	ld a, [$f07f]                                    ; $7acb: $fa $7f $f0
	sbc [hl]                                         ; $7ace: $9e
	cp $6a                                           ; $7acf: $fe $6a
	jr nz, jr_04c_7b51                               ; $7ad1: $20 $7e

	ld h, $7d                                        ; $7ad3: $26 $7d
	jr nc, jr_04c_7a75                               ; $7ad5: $30 $9e

	rra                                              ; $7ad7: $1f
	ld a, e                                          ; $7ad8: $7b
	ldh a, [$fb]                                     ; $7ad9: $f0 $fb
	ld [hl], a                                       ; $7adb: $77
	jr nc, jr_04c_7a7c                               ; $7adc: $30 $9e

	cp [hl]                                          ; $7ade: $be
	ld [hl], e                                       ; $7adf: $73
	jr nz, @+$80                                     ; $7ae0: $20 $7e

	ld a, [hl+]                                      ; $7ae2: $2a
	sbc [hl]                                         ; $7ae3: $9e
	ld c, $7b                                        ; $7ae4: $0e $7b
	jr nz, jr_04c_7b67                               ; $7ae6: $20 $7f

	or b                                             ; $7ae8: $b0
	ld [hl], a                                       ; $7ae9: $77
	ret nz                                           ; $7aea: $c0

	ld [hl], l                                       ; $7aeb: $75
	db $f4                                           ; $7aec: $f4
	ld a, a                                          ; $7aed: $7f
	xor $7d                                          ; $7aee: $ee $7d
	cp $9e                                           ; $7af0: $fe $9e
	inc bc                                           ; $7af2: $03

Call_04c_7af3:
	db $fc                                           ; $7af3: $fc
	sbc c                                            ; $7af4: $99
	ld b, $00                                        ; $7af5: $06 $00
	jr jr_04c_7af9                                   ; $7af7: $18 $00

jr_04c_7af9:
	ld [hl], b                                       ; $7af9: $70
	ld [$fa6e], sp                                   ; $7afa: $08 $6e $fa
	ld a, [hl]                                       ; $7afd: $7e
	ld l, e                                          ; $7afe: $6b

Call_04c_7aff:
Jump_04c_7aff:
	ld l, a                                          ; $7aff: $6f
	add b                                            ; $7b00: $80
	sbc [hl]                                         ; $7b01: $9e
	ld a, [hl+]                                      ; $7b02: $2a
	ld h, c                                          ; $7b03: $61

Call_04c_7b04:
	and e                                            ; $7b04: $a3
	ld h, a                                          ; $7b05: $67
	ld [hl], b                                       ; $7b06: $70
	ld l, a                                          ; $7b07: $6f
	ldh a, [c]                                       ; $7b08: $f2
	ld a, a                                          ; $7b09: $7f
	ld c, b                                          ; $7b0a: $48
	ld d, a                                          ; $7b0b: $57
	ldh a, [$9e]                                     ; $7b0c: $f0 $9e
	push af                                          ; $7b0e: $f5
	ld h, a                                          ; $7b0f: $67
	ld d, h                                          ; $7b10: $54
	ld a, e                                          ; $7b11: $7b
	or b                                             ; $7b12: $b0
	ld a, a                                          ; $7b13: $7f
	db $fc                                           ; $7b14: $fc
	ld a, a                                          ; $7b15: $7f
	adc b                                            ; $7b16: $88
	push af                                          ; $7b17: $f5
	ld [hl], a                                       ; $7b18: $77

jr_04c_7b19:
	add sp, $03                                      ; $7b19: $e8 $03
	ldh a, [$f6]                                     ; $7b1b: $f0 $f6
	sbc l                                            ; $7b1d: $9d
	dec d                                            ; $7b1e: $15
	ld h, b                                          ; $7b1f: $60
	inc bc                                           ; $7b20: $03
	ret nc                                           ; $7b21: $d0

	or $7d                                           ; $7b22: $f6 $7d
	ld [hl+], a                                      ; $7b24: $22
	ld a, a                                          ; $7b25: $7f
	ldh a, [rPCM12]                                  ; $7b26: $f0 $76
	db $e4                                           ; $7b28: $e4
	ld sp, hl                                        ; $7b29: $f9
	ld d, l                                          ; $7b2a: $55
	inc h                                            ; $7b2b: $24
	rst $38                                          ; $7b2c: $ff
	sbc e                                            ; $7b2d: $9b
	inc bc                                           ; $7b2e: $03
	ld [bc], a                                       ; $7b2f: $02
	rrca                                             ; $7b30: $0f
	dec b                                            ; $7b31: $05
	push af                                          ; $7b32: $f5
	sbc d                                            ; $7b33: $9a
	cp $a8                                           ; $7b34: $fe $a8
	rst $38                                          ; $7b36: $ff
	ld a, [hl]                                       ; $7b37: $7e
	dec d                                            ; $7b38: $15

jr_04c_7b39:
	db $f4                                           ; $7b39: $f4
	sbc l                                            ; $7b3a: $9d
	ld b, l                                          ; $7b3b: $45
	add d                                            ; $7b3c: $82
	ld c, a                                          ; $7b3d: $4f
	or b                                             ; $7b3e: $b0

Call_04c_7b3f:
	sbc l                                            ; $7b3f: $9d
	inc h                                            ; $7b40: $24

jr_04c_7b41:
	jr jr_04c_7b46                                   ; $7b41: $18 $03

	ld d, b                                          ; $7b43: $50
	sbc l                                            ; $7b44: $9d
	nop                                              ; $7b45: $00

jr_04c_7b46:
	xor b                                            ; $7b46: $a8
	ld c, e                                          ; $7b47: $4b
	ldh a, [$f3]                                     ; $7b48: $f0 $f3
	ld b, a                                          ; $7b4a: $47
	ldh a, [$7d]                                     ; $7b4b: $f0 $7d
	ccf                                              ; $7b4d: $3f
	ldh [$d8], a                                     ; $7b4e: $e0 $d8
	ld a, [hl]                                       ; $7b50: $7e

jr_04c_7b51:
	ld e, e                                          ; $7b51: $5b
	sbc h                                            ; $7b52: $9c
	ld h, b                                          ; $7b53: $60
	ld b, b                                          ; $7b54: $40
	ldh [rPCM34], a                                  ; $7b55: $e0 $77
	cp [hl]                                          ; $7b57: $be
	ld a, d                                          ; $7b58: $7a
	sub d                                            ; $7b59: $92
	ld l, c                                          ; $7b5a: $69
	adc $df                                          ; $7b5b: $ce $df
	rst $38                                          ; $7b5d: $ff
	ld l, a                                          ; $7b5e: $6f
	ldh a, [$7e]                                     ; $7b5f: $f0 $7e
	ld a, [de]                                       ; $7b61: $1a
	ld l, a                                          ; $7b62: $6f
	ldh a, [$9e]                                     ; $7b63: $f0 $9e
	ld hl, sp+$6b                                    ; $7b65: $f8 $6b

jr_04c_7b67:
	ldh a, [$72]                                     ; $7b67: $f0 $72
	ld l, [hl]                                       ; $7b69: $6e
	ld a, e                                          ; $7b6a: $7b
	ldh a, [$7c]                                     ; $7b6b: $f0 $7c
	sbc d                                            ; $7b6d: $9a
	ld c, a                                          ; $7b6e: $4f
	ldh a, [$7f]                                     ; $7b6f: $f0 $7f
	db $fc                                           ; $7b71: $fc
	ld e, a                                          ; $7b72: $5f
	ldh a, [$7d]                                     ; $7b73: $f0 $7d
	add d                                            ; $7b75: $82
	ld [hl], l                                       ; $7b76: $75
	add [hl]                                         ; $7b77: $86
	ld h, a                                          ; $7b78: $67
	ldh a, [$9e]                                     ; $7b79: $f0 $9e
	rst SubAFromBC                                          ; $7b7b: $e7
	ld l, e                                          ; $7b7c: $6b
	ld [$147e], a                                    ; $7b7d: $ea $7e $14
	ld [hl], a                                       ; $7b80: $77
	ld l, $7d                                        ; $7b81: $2e $7d
	call z, $2866                                    ; $7b83: $cc $66 $28
	halt                                             ; $7b86: $76
	ld c, [hl]                                       ; $7b87: $4e
	halt                                             ; $7b88: $76
	ld b, [hl]                                       ; $7b89: $46
	ld a, [hl]                                       ; $7b8a: $7e
	ld l, $67                                        ; $7b8b: $2e $67
	cp d                                             ; $7b8d: $ba
	sbc d                                            ; $7b8e: $9a
	ld [$be50], sp                                   ; $7b8f: $08 $50 $be
	nop                                              ; $7b92: $00
	ld e, a                                          ; $7b93: $5f
	ld a, e                                          ; $7b94: $7b
	jp nz, $2b89                                     ; $7b95: $c2 $89 $2b

	call nc, $fa05                                   ; $7b98: $d4 $05 $fa
	pop bc                                           ; $7b9b: $c1
	ld a, $7e                                        ; $7b9c: $3e $7e
	add b                                            ; $7b9e: $80
	dec b                                            ; $7b9f: $05
	nop                                              ; $7ba0: $00
	ld c, [hl]                                       ; $7ba1: $4e
	nop                                              ; $7ba2: $00
	inc e                                            ; $7ba3: $1c
	ld bc, $0a35                                     ; $7ba4: $01 $35 $0a
	ldh [$1f], a                                     ; $7ba7: $e0 $1f
	ret nc                                           ; $7ba9: $d0

	cpl                                              ; $7baa: $2f
	rst SubAFromBC                                          ; $7bab: $e7
	jr jr_04c_7c1c                                   ; $7bac: $18 $6e

	xor $7f                                          ; $7bae: $ee $7f
	ldh [$67], a                                     ; $7bb0: $e0 $67
	ret nz                                           ; $7bb2: $c0

	ld l, a                                          ; $7bb3: $6f
	ldh a, [$67]                                     ; $7bb4: $f0 $67
	ldh a, [c]                                       ; $7bb6: $f2
	cpl                                              ; $7bb7: $2f
	ldh a, [$7d]                                     ; $7bb8: $f0 $7d
	ld a, $4f                                        ; $7bba: $3e $4f
	ldh a, [$67]                                     ; $7bbc: $f0 $67
	db $f4                                           ; $7bbe: $f4
	ld a, h                                          ; $7bbf: $7c
	ld a, $7f                                        ; $7bc0: $3e $7f
	sub d                                            ; $7bc2: $92
	ld h, a                                          ; $7bc3: $67
	ldh a, [c]                                       ; $7bc4: $f2
	sbc l                                            ; $7bc5: $9d
	cp $01                                           ; $7bc6: $fe $01
	ld l, h                                          ; $7bc8: $6c
	ld [hl], h                                       ; $7bc9: $74
	ld a, a                                          ; $7bca: $7f
	ldh a, [$7c]                                     ; $7bcb: $f0 $7c
	cp d                                             ; $7bcd: $ba
	ld l, a                                          ; $7bce: $6f
	inc [hl]                                         ; $7bcf: $34
	ld [hl], h                                       ; $7bd0: $74
	ld [$959c], a                                    ; $7bd1: $ea $9c $95
	ld [$7b55], a                                    ; $7bd4: $ea $55 $7b
	halt                                             ; $7bd7: $76
	ld a, a                                          ; $7bd8: $7f
	ldh a, [$7d]                                     ; $7bd9: $f0 $7d
	ld a, [bc]                                       ; $7bdb: $0a
	ld h, h                                          ; $7bdc: $64
	ld e, b                                          ; $7bdd: $58
	sub d                                            ; $7bde: $92
	ld d, h                                          ; $7bdf: $54
	ld bc, $03fd                                     ; $7be0: $01 $fd $03
	ei                                               ; $7be3: $fb
	rlca                                             ; $7be4: $07
	cp b                                             ; $7be5: $b8
	rlca                                             ; $7be6: $07
	ld [hl], h                                       ; $7be7: $74
	nop                                              ; $7be8: $00
	xor e                                            ; $7be9: $ab
	nop                                              ; $7bea: $00
	ldh a, [c]                                       ; $7beb: $f2
	ld a, e                                          ; $7bec: $7b
	ret z                                            ; $7bed: $c8

	sub h                                            ; $7bee: $94
	dec d                                            ; $7bef: $15
	ldh [$1f], a                                     ; $7bf0: $e0 $1f
	ldh [$df], a                                     ; $7bf2: $e0 $df
	ldh [$bf], a                                     ; $7bf4: $e0 $bf
	ret nz                                           ; $7bf6: $c0

	cp a                                             ; $7bf7: $bf
	nop                                              ; $7bf8: $00
	ld a, a                                          ; $7bf9: $7f
	ld a, c                                          ; $7bfa: $79
	ld c, d                                          ; $7bfb: $4a
	ld a, e                                          ; $7bfc: $7b
	or [hl]                                          ; $7bfd: $b6
	add a                                            ; $7bfe: $87
	rst $38                                          ; $7bff: $ff
	ld [hl], a                                       ; $7c00: $77
	adc a                                            ; $7c01: $8f
	adc e                                            ; $7c02: $8b
	rlca                                             ; $7c03: $07
	ld [hl], a                                       ; $7c04: $77
	adc a                                            ; $7c05: $8f
	ld c, b                                          ; $7c06: $48
	rst $38                                          ; $7c07: $ff
	adc a                                            ; $7c08: $8f
	rst $38                                          ; $7c09: $ff
	rst SubAFromDE                                          ; $7c0a: $df
	rst $38                                          ; $7c0b: $ff
	db $d3                                           ; $7c0c: $d3
	rst $38                                          ; $7c0d: $ff
	ldh [rIE], a                                     ; $7c0e: $e0 $ff
	push bc                                          ; $7c10: $c5
	ld a, [$ffc0]                                    ; $7c11: $fa $c0 $ff
	and e                                            ; $7c14: $a3
	rst $38                                          ; $7c15: $ff
	ccf                                              ; $7c16: $3f
	sbc $ff                                          ; $7c17: $de $ff
	sbc c                                            ; $7c19: $99
	rst FarCall                                          ; $7c1a: $f7
	rst $38                                          ; $7c1b: $ff

jr_04c_7c1c:
	xor a                                            ; $7c1c: $af
	rst $38                                          ; $7c1d: $ff
	ld [hl+], a                                      ; $7c1e: $22
	db $dd                                           ; $7c1f: $dd
	ld a, d                                          ; $7c20: $7a
	db $ec                                           ; $7c21: $ec
	ld a, l                                          ; $7c22: $7d
	ld sp, hl                                        ; $7c23: $f9
	ld [hl], e                                       ; $7c24: $73
	ldh a, [c]                                       ; $7c25: $f2
	sbc e                                            ; $7c26: $9b
	db $ed                                           ; $7c27: $ed
	rst $38                                          ; $7c28: $ff
	ld a, [$77ff]                                    ; $7c29: $fa $ff $77
	xor h                                            ; $7c2c: $ac
	sub c                                            ; $7c2d: $91
	ld a, [bc]                                       ; $7c2e: $0a
	push af                                          ; $7c2f: $f5
	nop                                              ; $7c30: $00
	rst $38                                          ; $7c31: $ff
	ld b, b                                          ; $7c32: $40
	rst $38                                          ; $7c33: $ff
	and b                                            ; $7c34: $a0
	rst $38                                          ; $7c35: $ff
	ld d, h                                          ; $7c36: $54
	rst $38                                          ; $7c37: $ff
	xor d                                            ; $7c38: $aa
	rst $38                                          ; $7c39: $ff
	xor a                                            ; $7c3a: $af
	ld d, b                                          ; $7c3b: $50
	ld [hl], a                                       ; $7c3c: $77
	sbc b                                            ; $7c3d: $98
	sbc e                                            ; $7c3e: $9b
	dec d                                            ; $7c3f: $15
	ld [$7d82], a                                    ; $7c40: $ea $82 $7d
	ld l, a                                          ; $7c43: $6f
	ld h, a                                          ; $7c44: $67
	ld e, [hl]                                       ; $7c45: $5e
	add h                                            ; $7c46: $84
	sbc l                                            ; $7c47: $9d
	ld bc, $77fe                                     ; $7c48: $01 $fe $77
	add sp, $77                                      ; $7c4b: $e8 $77
	db $eb                                           ; $7c4d: $eb
	ld h, a                                          ; $7c4e: $67
	ld [hl], h                                       ; $7c4f: $74
	ld [hl], a                                       ; $7c50: $77
	db $fc                                           ; $7c51: $fc
	ld a, a                                          ; $7c52: $7f
	ld c, b                                          ; $7c53: $48
	ld a, h                                          ; $7c54: $7c
	ld b, [hl]                                       ; $7c55: $46
	ld l, a                                          ; $7c56: $6f
	call z, $fc77                                    ; $7c57: $cc $77 $fc
	sbc h                                            ; $7c5a: $9c
	ld d, h                                          ; $7c5b: $54
	xor e                                            ; $7c5c: $ab
	ccf                                              ; $7c5d: $3f
	ld [hl], e                                       ; $7c5e: $73
	ld b, h                                          ; $7c5f: $44
	ld e, a                                          ; $7c60: $5f
	ld d, b                                          ; $7c61: $50
	sbc h                                            ; $7c62: $9c
	sbc b                                            ; $7c63: $98
	nop                                              ; $7c64: $00
	rst GetHLinHL                                          ; $7c65: $cf
	ld a, e                                          ; $7c66: $7b
	ret nc                                           ; $7c67: $d0

	ld a, a                                          ; $7c68: $7f
	inc [hl]                                         ; $7c69: $34
	ld h, a                                          ; $7c6a: $67
	ldh a, [$78]                                     ; $7c6b: $f0 $78
	jp nc, $0a9e                                     ; $7c6d: $d2 $9e $0a

	ld d, a                                          ; $7c70: $57
	ret nz                                           ; $7c71: $c0

	ld e, [hl]                                       ; $7c72: $5e
	inc d                                            ; $7c73: $14
	ld l, a                                          ; $7c74: $6f
	db $fc                                           ; $7c75: $fc
	sbc l                                            ; $7c76: $9d
	ld a, [$5705]                                    ; $7c77: $fa $05 $57
	ldh a, [$9d]                                     ; $7c7a: $f0 $9d
	ld d, b                                          ; $7c7c: $50
	xor a                                            ; $7c7d: $af
	ld d, a                                          ; $7c7e: $57
	db $e4                                           ; $7c7f: $e4
	sbc h                                            ; $7c80: $9c
	xor b                                            ; $7c81: $a8
	ld d, a                                          ; $7c82: $57
	nop                                              ; $7c83: $00
	ld [hl], e                                       ; $7c84: $73
	ld d, b                                          ; $7c85: $50
	ld h, a                                          ; $7c86: $67
	db $fc                                           ; $7c87: $fc
	ld [hl], a                                       ; $7c88: $77
	ld h, b                                          ; $7c89: $60
	sub [hl]                                         ; $7c8a: $96
	xor e                                            ; $7c8b: $ab
	ld d, l                                          ; $7c8c: $55
	ld d, a                                          ; $7c8d: $57
	xor e                                            ; $7c8e: $ab
	xor e                                            ; $7c8f: $ab
	ld d, a                                          ; $7c90: $57
	ld d, l                                          ; $7c91: $55
	xor e                                            ; $7c92: $ab
	xor e                                            ; $7c93: $ab
	ld a, e                                          ; $7c94: $7b
	call nc, $028b                                   ; $7c95: $d4 $8b $02
	cp $05                                           ; $7c98: $fe $05
	db $fd                                           ; $7c9a: $fd
	ld [$f5f5], a                                    ; $7c9b: $ea $f5 $f5
	ld a, [$f5fa]                                    ; $7c9e: $fa $fa $f5
	ld d, l                                          ; $7ca1: $55
	ld e, d                                          ; $7ca2: $5a
	jr nc, jr_04c_7cc4                               ; $7ca3: $30 $1f

	ret c                                            ; $7ca5: $d8

	rst GetHLinHL                                          ; $7ca6: $cf
	inc d                                            ; $7ca7: $14
	rla                                              ; $7ca8: $17
	ld [hl+], a                                      ; $7ca9: $22
	inc hl                                           ; $7caa: $23
	ld [hl], a                                       ; $7cab: $77
	ld c, h                                          ; $7cac: $4c
	sbc l                                            ; $7cad: $9d
	add b                                            ; $7cae: $80
	ld a, a                                          ; $7caf: $7f
	ld l, a                                          ; $7cb0: $6f
	call nc, $fe77                                   ; $7cb1: $d4 $77 $fe
	ld [hl], a                                       ; $7cb4: $77
	ld e, h                                          ; $7cb5: $5c
	ld e, [hl]                                       ; $7cb6: $5e
	ld [hl], c                                       ; $7cb7: $71
	ld a, [hl]                                       ; $7cb8: $7e
	sub l                                            ; $7cb9: $95
	ld [hl], l                                       ; $7cba: $75
	cp h                                             ; $7cbb: $bc
	sbc l                                            ; $7cbc: $9d
	ld [bc], a                                       ; $7cbd: $02
	db $fd                                           ; $7cbe: $fd
	ld l, a                                          ; $7cbf: $6f
	ldh [$9e], a                                     ; $7cc0: $e0 $9e
	dec d                                            ; $7cc2: $15
	ld a, e                                          ; $7cc3: $7b

jr_04c_7cc4:
	nop                                              ; $7cc4: $00
	sbc [hl]                                         ; $7cc5: $9e
	db $eb                                           ; $7cc6: $eb
	sbc $ff                                          ; $7cc7: $de $ff
	sbc h                                            ; $7cc9: $9c
	cp $ff                                           ; $7cca: $fe $ff
	db $fd                                           ; $7ccc: $fd
	ld a, e                                          ; $7ccd: $7b
	db $fc                                           ; $7cce: $fc
	db $db                                           ; $7ccf: $db
	rst $38                                          ; $7cd0: $ff
	ld a, a                                          ; $7cd1: $7f
	rrca                                             ; $7cd2: $0f
	ld a, l                                          ; $7cd3: $7d
	ld a, e                                          ; $7cd4: $7b
	ld a, a                                          ; $7cd5: $7f
	ld [$fc7f], a                                    ; $7cd6: $ea $7f $fc
	sbc [hl]                                         ; $7cd9: $9e
	cp a                                             ; $7cda: $bf
	jp c, Jump_04c_77ff                              ; $7cdb: $da $ff $77

	db $f4                                           ; $7cde: $f4
	ld [hl], a                                       ; $7cdf: $77
	db $fc                                           ; $7ce0: $fc
	sbc [hl]                                         ; $7ce1: $9e
	xor e                                            ; $7ce2: $ab
	ld a, d                                          ; $7ce3: $7a
	and d                                            ; $7ce4: $a2
	ld e, a                                          ; $7ce5: $5f
	ldh a, [$d9]                                     ; $7ce6: $f0 $d9
	rst $38                                          ; $7ce8: $ff
	ld a, a                                          ; $7ce9: $7f
	jp z, $ba7f                                      ; $7cea: $ca $7f $ba

	sub [hl]                                         ; $7ced: $96
	add hl, de                                       ; $7cee: $19
	rst $38                                          ; $7cef: $ff
	ld a, e                                          ; $7cf0: $7b
	rst $38                                          ; $7cf1: $ff
	db $e3                                           ; $7cf2: $e3
	rst $38                                          ; $7cf3: $ff
	ld h, b                                          ; $7cf4: $60
	rst $38                                          ; $7cf5: $ff
	rst AddAOntoHL                                          ; $7cf6: $ef
	call c, Call_04c_7fff                            ; $7cf7: $dc $ff $7f
	ldh a, [$98]                                     ; $7cfa: $f0 $98
	ret c                                            ; $7cfc: $d8

	rst $38                                          ; $7cfd: $ff
	ldh a, [rIE]                                     ; $7cfe: $f0 $ff
	jr nz, @+$01                                     ; $7d00: $20 $ff

	jp z, $ffda                                      ; $7d02: $ca $da $ff

	ld l, a                                          ; $7d05: $6f
	adc b                                            ; $7d06: $88
	sbc [hl]                                         ; $7d07: $9e
	ld [bc], a                                       ; $7d08: $02
	ld h, e                                          ; $7d09: $63
	call z, Call_04c_7a6f                            ; $7d0a: $cc $6f $7a
	ld a, c                                          ; $7d0d: $79
	rla                                              ; $7d0e: $17
	ld h, e                                          ; $7d0f: $63
	ldh a, [$7e]                                     ; $7d10: $f0 $7e
	sbc b                                            ; $7d12: $98
	sub a                                            ; $7d13: $97
	inc bc                                           ; $7d14: $03
	db $fc                                           ; $7d15: $fc
	call $c332                                       ; $7d16: $cd $32 $c3
	inc a                                            ; $7d19: $3c
	add e                                            ; $7d1a: $83
	db $fc                                           ; $7d1b: $fc
	ld [hl], a                                       ; $7d1c: $77
	ld [$647f], a                                    ; $7d1d: $ea $7f $64
	sub h                                            ; $7d20: $94
	pop hl                                           ; $7d21: $e1
	ld e, $af                                        ; $7d22: $1e $af
	db $10                                           ; $7d24: $10
	ld a, e                                          ; $7d25: $7b
	add b                                            ; $7d26: $80
	xor [hl]                                         ; $7d27: $ae
	ld b, c                                          ; $7d28: $41
	db $10                                           ; $7d29: $10
	rst AddAOntoHL                                          ; $7d2a: $ef
	ld d, l                                          ; $7d2b: $55
	ld a, e                                          ; $7d2c: $7b
	ld [hl], d                                       ; $7d2d: $72
	ld [hl], a                                       ; $7d2e: $77
	call nz, $f87f                                   ; $7d2f: $c4 $7f $f8
	ld a, a                                          ; $7d32: $7f
	adc $9e                                          ; $7d33: $ce $9e
	ld d, a                                          ; $7d35: $57
	ld a, e                                          ; $7d36: $7b
	ld l, [hl]                                       ; $7d37: $6e
	sbc [hl]                                         ; $7d38: $9e
	ld a, a                                          ; $7d39: $7f
	ld [hl], e                                       ; $7d3a: $73
	ret nc                                           ; $7d3b: $d0

	ld e, a                                          ; $7d3c: $5f
	ld a, [hl]                                       ; $7d3d: $7e
	sbc e                                            ; $7d3e: $9b
	db $fd                                           ; $7d3f: $fd
	cp $fd                                           ; $7d40: $fe $fd
	cp $6f                                           ; $7d42: $fe $6f
	ldh a, [$7b]                                     ; $7d44: $f0 $7b
	ld d, d                                          ; $7d46: $52
	sbc b                                            ; $7d47: $98
	ccf                                              ; $7d48: $3f
	ld d, a                                          ; $7d49: $57
	adc a                                            ; $7d4a: $8f
	ld h, a                                          ; $7d4b: $67
	inc bc                                           ; $7d4c: $03
	add c                                            ; $7d4d: $81
	inc bc                                           ; $7d4e: $03
	ld l, a                                          ; $7d4f: $6f

jr_04c_7d50:
	ldh a, [$db]                                     ; $7d50: $f0 $db
	rst $38                                          ; $7d52: $ff
	add b                                            ; $7d53: $80

jr_04c_7d54:
	ei                                               ; $7d54: $fb
	rst $38                                          ; $7d55: $ff
	pop hl                                           ; $7d56: $e1
	db $fc                                           ; $7d57: $fc
	nop                                              ; $7d58: $00
	rst $38                                          ; $7d59: $ff
	ld [$04cf], sp                                   ; $7d5a: $08 $cf $04
	add a                                            ; $7d5d: $87
	inc c                                            ; $7d5e: $0c
	add a                                            ; $7d5f: $87
	ld a, b                                          ; $7d60: $78
	ei                                               ; $7d61: $fb
	ld sp, $4ff3                                     ; $7d62: $31 $f3 $4f
	adc $81                                          ; $7d65: $ce $81
	add c                                            ; $7d67: $81
	ld bc, $09f9                                     ; $7d68: $01 $f9 $09
	ld sp, hl                                        ; $7d6b: $f9
	ld [de], a                                       ; $7d6c: $12
	di                                               ; $7d6d: $f3
	daa                                              ; $7d6e: $27
	push hl                                          ; $7d6f: $e5
	ld c, [hl]                                       ; $7d70: $4e
	jp z, $8bfd                                      ; $7d71: $ca $fd $8b

	inc d                                            ; $7d74: $14
	ld a, [hl-]                                      ; $7d75: $3a
	add hl, bc                                       ; $7d76: $09
	jr nc, jr_04c_7d50                               ; $7d77: $30 $d7

	ld b, d                                          ; $7d79: $42
	ld b, e                                          ; $7d7a: $43
	jp z, $92cb                                      ; $7d7b: $ca $cb $92

	sub e                                            ; $7d7e: $93
	ld [hl+], a                                      ; $7d7f: $22
	inc hl                                           ; $7d80: $23
	ld b, h                                          ; $7d81: $44
	ld b, a                                          ; $7d82: $47
	sbc [hl]                                         ; $7d83: $9e
	sbc h                                            ; $7d84: $9c
	push de                                          ; $7d85: $d5
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	ld d, a                                          ; $7d88: $57
	ld [hl+], a                                      ; $7d89: $22
	ld a, a                                          ; $7d8a: $7f
	sub c                                            ; $7d8b: $91
	sbc l                                            ; $7d8c: $9d
	ccf                                              ; $7d8d: $3f
	ld a, a                                          ; $7d8e: $7f
	ld [hl], e                                       ; $7d8f: $73
	ldh a, [$9e]                                     ; $7d90: $f0 $9e
	push af                                          ; $7d92: $f5
	sub $ff                                          ; $7d93: $d6 $ff
	ld l, [hl]                                       ; $7d95: $6e
	ldh a, [c]                                       ; $7d96: $f2
	ret                                              ; $7d97: $c9


	rst $38                                          ; $7d98: $ff
	ld e, [hl]                                       ; $7d99: $5e
	and $db                                          ; $7d9a: $e6 $db
	rst $38                                          ; $7d9c: $ff
	ld a, [hl]                                       ; $7d9d: $7e
	jp z, $ff03                                      ; $7d9e: $ca $03 $ff

	inc bc                                           ; $7da1: $03
	rst $38                                          ; $7da2: $ff
	inc bc                                           ; $7da3: $03
	rst $38                                          ; $7da4: $ff
	inc bc                                           ; $7da5: $03
	rst $38                                          ; $7da6: $ff
	rst JumpTable                                          ; $7da7: $c7
	rst $38                                          ; $7da8: $ff
	ld a, [hl]                                       ; $7da9: $7e
	and b                                            ; $7daa: $a0
	sbc e                                            ; $7dab: $9b
	or d                                             ; $7dac: $b2
	ld bc, $1fff                                     ; $7dad: $01 $ff $1f
	ld d, a                                          ; $7db0: $57
	ld b, b                                          ; $7db1: $40
	ld a, [hl]                                       ; $7db2: $7e
	xor [hl]                                         ; $7db3: $ae
	ld c, a                                          ; $7db4: $4f
	jr nc, jr_04c_7d54                               ; $7db5: $30 $9d

	db $fc                                           ; $7db7: $fc
	inc bc                                           ; $7db8: $03
	rla                                              ; $7db9: $17
	jr nz, jr_04c_7dcb                               ; $7dba: $20 $0f

	ldh a, [$9e]                                     ; $7dbc: $f0 $9e
	push de                                          ; $7dbe: $d5
	ld c, e                                          ; $7dbf: $4b
	ldh a, [rHDMA5]                                  ; $7dc0: $f0 $55
	add $6d                                          ; $7dc2: $c6 $6d
	or [hl]                                          ; $7dc4: $b6
	ld l, [hl]                                       ; $7dc5: $6e
	sub b                                            ; $7dc6: $90
	ld e, l                                          ; $7dc7: $5d
	ld d, h                                          ; $7dc8: $54
	ld a, l                                          ; $7dc9: $7d
	ld l, b                                          ; $7dca: $68

jr_04c_7dcb:
	scf                                              ; $7dcb: $37
	ldh a, [$7f]                                     ; $7dcc: $f0 $7f
	ld e, l                                          ; $7dce: $5d
	ld h, a                                          ; $7dcf: $67
	xor $78                                          ; $7dd0: $ee $78
	ret nz                                           ; $7dd2: $c0

	ld l, e                                          ; $7dd3: $6b
	ret z                                            ; $7dd4: $c8

	scf                                              ; $7dd5: $37
	ldh a, [$9d]                                     ; $7dd6: $f0 $9d
	and b                                            ; $7dd8: $a0
	ld e, a                                          ; $7dd9: $5f
	ld l, a                                          ; $7dda: $6f
	ldh a, [$5d]                                     ; $7ddb: $f0 $5d
	db $10                                           ; $7ddd: $10
	ld a, a                                          ; $7dde: $7f
	ldh a, [rPCM34]                                  ; $7ddf: $f0 $77
	ld a, h                                          ; $7de1: $7c
	ld h, a                                          ; $7de2: $67
	ldh a, [c]                                       ; $7de3: $f2
	ld [hl], l                                       ; $7de4: $75
	ld [$167d], sp                                   ; $7de5: $08 $7d $16
	inc bc                                           ; $7de8: $03
	sub b                                            ; $7de9: $90
	ld h, e                                          ; $7dea: $63
	call nz, $f03f                                   ; $7deb: $c4 $3f $f0
	sbc l                                            ; $7dee: $9d
	ld d, a                                          ; $7def: $57
	xor b                                            ; $7df0: $a8
	ld c, a                                          ; $7df1: $4f
	ldh a, [$78]                                     ; $7df2: $f0 $78
	ld [hl-], a                                      ; $7df4: $32
	ld e, e                                          ; $7df5: $5b
	sub h                                            ; $7df6: $94
	ld l, a                                          ; $7df7: $6f
	ret nc                                           ; $7df8: $d0

	cpl                                              ; $7df9: $2f
	ldh a, [rPCM34]                                  ; $7dfa: $f0 $77
	db $f4                                           ; $7dfc: $f4
	sbc l                                            ; $7dfd: $9d
	xor e                                            ; $7dfe: $ab
	ld d, h                                          ; $7dff: $54
	ld e, a                                          ; $7e00: $5f
	ret nc                                           ; $7e01: $d0

	ld [hl], a                                       ; $7e02: $77
	ldh a, [rPCM34]                                  ; $7e03: $f0 $77
	rst FarCall                                          ; $7e05: $f7
	sbc [hl]                                         ; $7e06: $9e
	ld b, b                                          ; $7e07: $40
	ld e, e                                          ; $7e08: $5b
	ldh a, [$9c]                                     ; $7e09: $f0 $9c
	ld [$ff15], a                                    ; $7e0b: $ea $15 $ff
	ld a, c                                          ; $7e0e: $79
	ld a, [hl]                                       ; $7e0f: $7e
	ld [hl], b                                       ; $7e10: $70
	ld h, [hl]                                       ; $7e11: $66
	sbc [hl]                                         ; $7e12: $9e
	ld [$9477], a                                    ; $7e13: $ea $77 $94
	sbc [hl]                                         ; $7e16: $9e
	cp a                                             ; $7e17: $bf
	ld a, e                                          ; $7e18: $7b
	db $e3                                           ; $7e19: $e3

Jump_04c_7e1a:
	ld [hl], a                                       ; $7e1a: $77
	ldh a, [c]                                       ; $7e1b: $f2
	sbc c                                            ; $7e1c: $99
	ld a, [hl+]                                      ; $7e1d: $2a

Jump_04c_7e1e:
	push de                                          ; $7e1e: $d5
	ld d, l                                          ; $7e1f: $55
	xor d                                            ; $7e20: $aa
	xor a                                            ; $7e21: $af
	ld d, b                                          ; $7e22: $50
	ld [hl], a                                       ; $7e23: $77
	rst SubAFromBC                                          ; $7e24: $e7
	sbc [hl]                                         ; $7e25: $9e
	push af                                          ; $7e26: $f5
	ld a, e                                          ; $7e27: $7b
	ldh a, [rPCM34]                                  ; $7e28: $f0 $77
	db $e4                                           ; $7e2a: $e4
	ld l, a                                          ; $7e2b: $6f
	call nz, $c27b                                   ; $7e2c: $c4 $7b $c2
	sbc [hl]                                         ; $7e2f: $9e
	nop                                              ; $7e30: $00
	ld e, a                                          ; $7e31: $5f
	db $f4                                           ; $7e32: $f4
	ld a, h                                          ; $7e33: $7c
	dec l                                            ; $7e34: $2d
	sbc [hl]                                         ; $7e35: $9e
	ld d, l                                          ; $7e36: $55
	ld a, e                                          ; $7e37: $7b
	db $fc                                           ; $7e38: $fc
	ld e, a                                          ; $7e39: $5f
	ldh a, [$9e]                                     ; $7e3a: $f0 $9e
	xor e                                            ; $7e3c: $ab
	ld c, e                                          ; $7e3d: $4b
	ldh a, [$7b]                                     ; $7e3e: $f0 $7b
	add h                                            ; $7e40: $84
	ld b, e                                          ; $7e41: $43
	ldh a, [$9e]                                     ; $7e42: $f0 $9e
	add b                                            ; $7e44: $80
	ld d, e                                          ; $7e45: $53
	ldh a, [$9e]                                     ; $7e46: $f0 $9e
	ld e, a                                          ; $7e48: $5f
	ld e, e                                          ; $7e49: $5b
	ldh [$7f], a                                     ; $7e4a: $e0 $7f
	sub [hl]                                         ; $7e4c: $96
	sbc h                                            ; $7e4d: $9c
	add sp, $00                                      ; $7e4e: $e8 $00
	db $fd                                           ; $7e50: $fd
	ld [hl], e                                       ; $7e51: $73
	ldh a, [$9d]                                     ; $7e52: $f0 $9d
	ld e, a                                          ; $7e54: $5f
	and b                                            ; $7e55: $a0
	ld l, a                                          ; $7e56: $6f
	call nc, $9cff                                   ; $7e57: $d4 $ff $9c
	ld d, b                                          ; $7e5a: $50
	nop                                              ; $7e5b: $00
	and b                                            ; $7e5c: $a0
	ld a, e                                          ; $7e5d: $7b
	ldh a, [$67]                                     ; $7e5e: $f0 $67
	call nz, $67fb                                   ; $7e60: $c4 $fb $67
	ldh a, [$9c]                                     ; $7e63: $f0 $9c
	ld d, a                                          ; $7e65: $57
	nop                                              ; $7e66: $00
	ld c, d                                          ; $7e67: $4a
	db $fc                                           ; $7e68: $fc
	ld e, [hl]                                       ; $7e69: $5e
	add e                                            ; $7e6a: $83
	ld a, a                                          ; $7e6b: $7f
	call nz, $019e                                   ; $7e6c: $c4 $9e $01
	ld e, e                                          ; $7e6f: $5b
	ldh a, [$7c]                                     ; $7e70: $f0 $7c
	ld d, a                                          ; $7e72: $57
	sbc h                                            ; $7e73: $9c
	and l                                            ; $7e74: $a5

Call_04c_7e75:
	nop                                              ; $7e75: $00
	ld a, [bc]                                       ; $7e76: $0a
	ld h, e                                          ; $7e77: $63
	ldh a, [$7f]                                     ; $7e78: $f0 $7f
	and d                                            ; $7e7a: $a2
	ld l, a                                          ; $7e7b: $6f
	ld d, d                                          ; $7e7c: $52
	ld e, a                                          ; $7e7d: $5f
	ldh [rVBK], a                                    ; $7e7e: $e0 $4f
	ldh a, [rPCM34]                                  ; $7e80: $f0 $77
	db $f4                                           ; $7e82: $f4
	ccf                                              ; $7e83: $3f
	ldh a, [$67]                                     ; $7e84: $f0 $67
	and b                                            ; $7e86: $a0
	sbc h                                            ; $7e87: $9c
	rst AddAOntoHL                                          ; $7e88: $ef
	nop                                              ; $7e89: $00
	ld d, h                                          ; $7e8a: $54
	ld hl, sp+$6f                                    ; $7e8b: $f8 $6f
	or h                                             ; $7e8d: $b4
	rst FarCall                                          ; $7e8e: $f7
	sbc [hl]                                         ; $7e8f: $9e
	ld a, [$5a7b]                                    ; $7e90: $fa $7b $5a
	ld a, a                                          ; $7e93: $7f
	ld a, [hl+]                                      ; $7e94: $2a
	rst FarCall                                          ; $7e95: $f7
	ld d, a                                          ; $7e96: $57
	db $f4                                           ; $7e97: $f4
	db $ed                                           ; $7e98: $ed
	ld h, $00                                        ; $7e99: $26 $00
	pop bc                                           ; $7e9b: $c1
	inc sp                                           ; $7e9c: $33
	push de                                          ; $7e9d: $d5
	inc sp                                           ; $7e9e: $33
	sbc [hl]                                         ; $7e9f: $9e
	ld h, [hl]                                       ; $7ea0: $66
	db $dd                                           ; $7ea1: $dd
	inc sp                                           ; $7ea2: $33
	sbc [hl]                                         ; $7ea3: $9e
	ld [hl], $dd                                     ; $7ea4: $36 $dd
	ld d, l                                          ; $7ea6: $55
	sbc [hl]                                         ; $7ea7: $9e
	inc sp                                           ; $7ea8: $33
	db $dd                                           ; $7ea9: $dd
	ld d, l                                          ; $7eaa: $55
	sub l                                            ; $7eab: $95
	ld h, [hl]                                       ; $7eac: $66
	ld d, l                                          ; $7ead: $55
	ld d, l                                          ; $7eae: $55
	ld b, h                                          ; $7eaf: $44
	ld b, h                                          ; $7eb0: $44
	ld b, l                                          ; $7eb1: $45
	ld b, h                                          ; $7eb2: $44
	ld b, h                                          ; $7eb3: $44
	ld b, a                                          ; $7eb4: $47
	ld [hl], l                                       ; $7eb5: $75
	reti                                             ; $7eb6: $d9


	ld b, h                                          ; $7eb7: $44
	sbc l                                            ; $7eb8: $9d
	ld [hl], a                                       ; $7eb9: $77
	ld [hl], h                                       ; $7eba: $74
	call z, $d744                                    ; $7ebb: $cc $44 $d7
	ld d, l                                          ; $7ebe: $55

Call_04c_7ebf:
	jr jr_04c_7ecb                                   ; $7ebf: $18 $0a

	adc h                                            ; $7ec1: $8c
	add a                                            ; $7ec2: $87
	ld a, a                                          ; $7ec3: $7f
	ld a, a                                          ; $7ec4: $7f
	rst $38                                          ; $7ec5: $ff
	ccf                                              ; $7ec6: $3f
	rst $38                                          ; $7ec7: $ff
	ld a, a                                          ; $7ec8: $7f
	rst $38                                          ; $7ec9: $ff
	cpl                                              ; $7eca: $2f

jr_04c_7ecb:
	rst $38                                          ; $7ecb: $ff
	ld d, l                                          ; $7ecc: $55
	rst $38                                          ; $7ecd: $ff
	adc d                                            ; $7ece: $8a
	ld a, a                                          ; $7ecf: $7f
	and b                                            ; $7ed0: $a0
	ld a, a                                          ; $7ed1: $7f
	ld d, l                                          ; $7ed2: $55
	rst $38                                          ; $7ed3: $ff
	db $eb                                           ; $7ed4: $eb
	jp c, Jump_04c_7fff                              ; $7ed5: $da $ff $7f

	db $ec                                           ; $7ed8: $ec
	sbc b                                            ; $7ed9: $98
	xor a                                            ; $7eda: $af
	rst $38                                          ; $7edb: $ff
	ld a, [bc]                                       ; $7edc: $0a
	rst $38                                          ; $7edd: $ff
	inc d                                            ; $7ede: $14
	rst $38                                          ; $7edf: $ff
	xor d                                            ; $7ee0: $aa
	sub $ff                                          ; $7ee1: $d6 $ff
	ld a, a                                          ; $7ee3: $7f
	xor $9c                                          ; $7ee4: $ee $9c
	rrca                                             ; $7ee6: $0f
	ldh a, [$aa]                                     ; $7ee7: $f0 $aa
	ld a, e                                          ; $7ee9: $7b
	sub $9e                                          ; $7eea: $d6 $9e
	cp $de                                           ; $7eec: $fe $de
	rst $38                                          ; $7eee: $ff
	ld [hl], a                                       ; $7eef: $77
	db $fc                                           ; $7ef0: $fc
	rst SubAFromDE                                          ; $7ef1: $df
	rst $38                                          ; $7ef2: $ff
	sbc b                                            ; $7ef3: $98
	ccf                                              ; $7ef4: $3f
	ret nz                                           ; $7ef5: $c0

	rlca                                             ; $7ef6: $07
	ld hl, sp-$60                                    ; $7ef7: $f8 $a0
	rst $38                                          ; $7ef9: $ff
	push af                                          ; $7efa: $f5
	ret c                                            ; $7efb: $d8

	rst $38                                          ; $7efc: $ff
	sbc h                                            ; $7efd: $9c
	inc c                                            ; $7efe: $0c
	di                                               ; $7eff: $f3
	nop                                              ; $7f00: $00
	ld a, e                                          ; $7f01: $7b
	adc $7f                                          ; $7f02: $ce $7f
	sbc $9c                                          ; $7f04: $de $9c
	ld [$fdff], a                                    ; $7f06: $ea $ff $fd
	ld a, e                                          ; $7f09: $7b
	ld hl, sp-$62                                    ; $7f0a: $f8 $9e
	ld d, b                                          ; $7f0c: $50
	ld a, e                                          ; $7f0d: $7b
	cp [hl]                                          ; $7f0e: $be
	sbc [hl]                                         ; $7f0f: $9e
	ld d, a                                          ; $7f10: $57
	ld [hl], e                                       ; $7f11: $73
	or h                                             ; $7f12: $b4
	ld [hl], a                                       ; $7f13: $77
	db $ec                                           ; $7f14: $ec
	ld a, a                                          ; $7f15: $7f
	and $96                                          ; $7f16: $e6 $96
	ld b, b                                          ; $7f18: $40
	rst $38                                          ; $7f19: $ff
	and b                                            ; $7f1a: $a0
	rst $38                                          ; $7f1b: $ff
	call nc, $faff                                   ; $7f1c: $d4 $ff $fa
	rst $38                                          ; $7f1f: $ff
	push de                                          ; $7f20: $d5
	ld a, e                                          ; $7f21: $7b
	ld hl, sp+$7f                                    ; $7f22: $f8 $7f
	db $f4                                           ; $7f24: $f4
	ld a, a                                          ; $7f25: $7f
	ldh a, [hDisp0_OBP0]                                     ; $7f26: $f0 $86
	ld a, [bc]                                       ; $7f28: $0a
	push af                                          ; $7f29: $f5
	xor d                                            ; $7f2a: $aa
	ld d, l                                          ; $7f2b: $55
	ld d, l                                          ; $7f2c: $55
	xor d                                            ; $7f2d: $aa
	xor d                                            ; $7f2e: $aa
	ld d, l                                          ; $7f2f: $55
	nop                                              ; $7f30: $00
	rst $38                                          ; $7f31: $ff
	pop bc                                           ; $7f32: $c1
	rst $38                                          ; $7f33: $ff
	add d                                            ; $7f34: $82
	rst $38                                          ; $7f35: $ff
	dec c                                            ; $7f36: $0d
	rst $38                                          ; $7f37: $ff
	xor d                                            ; $7f38: $aa
	ld d, l                                          ; $7f39: $55
	and e                                            ; $7f3a: $a3
	ld e, a                                          ; $7f3b: $5f
	ld c, a                                          ; $7f3c: $4f
	cp a                                             ; $7f3d: $bf
	rrca                                             ; $7f3e: $0f
	rst $38                                          ; $7f3f: $ff
	rrca                                             ; $7f40: $0f
	sbc $ff                                          ; $7f41: $de $ff
	ld a, a                                          ; $7f43: $7f
	adc $7f                                          ; $7f44: $ce $7f
	ld [$fe7f], a                                    ; $7f46: $ea $7f $fe
	db $db                                           ; $7f49: $db
	rst $38                                          ; $7f4a: $ff
	sbc [hl]                                         ; $7f4b: $9e
	xor e                                            ; $7f4c: $ab
	ld a, e                                          ; $7f4d: $7b
	jp nz, $809e                                     ; $7f4e: $c2 $9e $80

	ld l, e                                          ; $7f51: $6b
	ldh a, [$7f]                                     ; $7f52: $f0 $7f
	xor b                                            ; $7f54: $a8
	ld a, a                                          ; $7f55: $7f
	ret nz                                           ; $7f56: $c0

	sbc h                                            ; $7f57: $9c
	ld d, h                                          ; $7f58: $54
	rst $38                                          ; $7f59: $ff
	xor b                                            ; $7f5a: $a8
	ld [hl], e                                       ; $7f5b: $73
	ldh a, [c]                                       ; $7f5c: $f2
	ld a, a                                          ; $7f5d: $7f
	cp $9e                                           ; $7f5e: $fe $9e
	ldh a, [c]                                       ; $7f60: $f2
	ld [hl], e                                       ; $7f61: $73
	ldh a, [$7f]                                     ; $7f62: $f0 $7f
	add b                                            ; $7f64: $80
	ld a, a                                          ; $7f65: $7f
	sub b                                            ; $7f66: $90
	ld a, a                                          ; $7f67: $7f
	sbc $9a                                          ; $7f68: $de $9a
	ld a, [hl+]                                      ; $7f6a: $2a
	rst SubAFromDE                                          ; $7f6b: $df
	ld d, c                                          ; $7f6c: $51
	xor a                                            ; $7f6d: $af
	xor b                                            ; $7f6e: $a8
	ld a, e                                          ; $7f6f: $7b
	ld hl, sp+$7f                                    ; $7f70: $f8 $7f
	add $95                                          ; $7f72: $c6 $95
	ld bc, $60fe                                     ; $7f74: $01 $fe $60
	sbc a                                            ; $7f77: $9f
	ld sp, $82ce                                     ; $7f78: $31 $ce $82
	db $fd                                           ; $7f7b: $fd

Call_04c_7f7c:
	ld b, c                                          ; $7f7c: $41
	cp $6f                                           ; $7f7d: $fe $6f
	jp c, $9c7f                                      ; $7f7f: $da $7f $9c

	sbc h                                            ; $7f82: $9c
	cp $01                                           ; $7f83: $fe $01
	ld a, a                                          ; $7f85: $7f
	ld a, e                                          ; $7f86: $7b
	cp a                                             ; $7f87: $bf
	ld a, a                                          ; $7f88: $7f
	ld hl, sp+$6f                                    ; $7f89: $f8 $6f
	ldh a, [$7f]                                     ; $7f8b: $f0 $7f
	cp $97                                           ; $7f8d: $fe $97
	and b                                            ; $7f8f: $a0
	ld e, a                                          ; $7f90: $5f
	ret nc                                           ; $7f91: $d0

	cpl                                              ; $7f92: $2f
	and b                                            ; $7f93: $a0
	ld e, a                                          ; $7f94: $5f
	ld b, c                                          ; $7f95: $41
	cp a                                             ; $7f96: $bf
	ld h, a                                          ; $7f97: $67
	ldh a, [$7f]                                     ; $7f98: $f0 $7f
	cp $7f                                           ; $7f9a: $fe $7f

Call_04c_7f9c:
	call z, $269b                                    ; $7f9c: $cc $9b $26
	reti                                             ; $7f9f: $d9


	ei                                               ; $7fa0: $fb
	db $fc                                           ; $7fa1: $fc
	ld h, a                                          ; $7fa2: $67
	db $f4                                           ; $7fa3: $f4
	sub a                                            ; $7fa4: $97
	jr z, @-$27                                      ; $7fa5: $28 $d7

	ld d, l                                          ; $7fa7: $55
	xor d                                            ; $7fa8: $aa
	ld a, [$fb05]                                    ; $7fa9: $fa $05 $fb
	inc b                                            ; $7fac: $04
	ld a, e                                          ; $7fad: $7b
	push af                                          ; $7fae: $f5
	ld a, e                                          ; $7faf: $7b
	cp $84                                           ; $7fb0: $fe $84
	xor b                                            ; $7fb2: $a8
	rlca                                             ; $7fb3: $07
	ld h, b                                          ; $7fb4: $60
	rra                                              ; $7fb5: $1f
	ld sp, $bfff                                     ; $7fb6: $31 $ff $bf
	ld a, a                                          ; $7fb9: $7f
	ret nc                                           ; $7fba: $d0

	ld a, $ec                                        ; $7fbb: $3e $ec
	rst $38                                          ; $7fbd: $ff
	ld a, [hl]                                       ; $7fbe: $7e
	rst $38                                          ; $7fbf: $ff
	sbc [hl]                                         ; $7fc0: $9e
	ld a, a                                          ; $7fc1: $7f
	ld a, a                                          ; $7fc2: $7f
	cp a                                             ; $7fc3: $bf
	ccf                                              ; $7fc4: $3f
	rst $38                                          ; $7fc5: $ff
	ld a, [$a7fc]                                    ; $7fc6: $fa $fc $a7
	ret nz                                           ; $7fc9: $c0

	scf                                              ; $7fca: $37
	inc c                                            ; $7fcb: $0c
	db $10                                           ; $7fcc: $10
	ld a, e                                          ; $7fcd: $7b
	ld e, $9a                                        ; $7fce: $1e $9a
	dec d                                            ; $7fd0: $15
	rst $38                                          ; $7fd1: $ff
	dec sp                                           ; $7fd2: $3b
	rst $38                                          ; $7fd3: $ff
	ld e, a                                          ; $7fd4: $5f
	ld a, d                                          ; $7fd5: $7a
	cp d                                             ; $7fd6: $ba
	sbc h                                            ; $7fd7: $9c
	dec b                                            ; $7fd8: $05
	rst $38                                          ; $7fd9: $ff
	ld [bc], a                                       ; $7fda: $02
	ld [hl], e                                       ; $7fdb: $73
	db $fc                                           ; $7fdc: $fc
	ld a, a                                          ; $7fdd: $7f
	bit 7, a                                         ; $7fde: $cb $7f
	sub l                                            ; $7fe0: $95
	ld [hl], a                                       ; $7fe1: $77
	cp $9e                                           ; $7fe2: $fe $9e
	ldh [$7a], a                                     ; $7fe4: $e0 $7a
	call c, Call_04c_727f                            ; $7fe6: $dc $7f $72
	ld a, a                                          ; $7fe9: $7f
	inc e                                            ; $7fea: $1c
	sbc c                                            ; $7feb: $99
	dec d                                            ; $7fec: $15
	ld [$f50a], a                                    ; $7fed: $ea $0a $f5
	dec b                                            ; $7ff0: $05
	ld a, [$a66f]                                    ; $7ff1: $fa $6f $a6
	sbc [hl]                                         ; $7ff4: $9e
	jp z, $1c7b                                      ; $7ff5: $ca $7b $1c

	sub a                                            ; $7ff8: $97
	ld d, h                                          ; $7ff9: $54
	xor e                                            ; $7ffa: $ab
	xor d                                            ; $7ffb: $aa
	ld d, l                                          ; $7ffc: $55
	ld d, a                                          ; $7ffd: $57
	xor b                                            ; $7ffe: $a8

Call_04c_7fff:
Jump_04c_7fff:
	xor e                                            ; $7fff: $ab
