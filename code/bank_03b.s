; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

	ld d, b                                          ; $4000: $50
	ld a, a                                          ; $4001: $7f
	ld b, [hl]                                       ; $4002: $46
	sbc l                                            ; $4003: $9d
	ld bc, $de03                                     ; $4004: $01 $03 $de
	ld [bc], a                                       ; $4007: $02
	sbc [hl]                                         ; $4008: $9e
	inc bc                                           ; $4009: $03
	reti                                             ; $400a: $d9


	rst $38                                          ; $400b: $ff
	add b                                            ; $400c: $80
	add d                                            ; $400d: $82
	ldh [c], a                                       ; $400e: $e2
	ld d, [hl]                                       ; $400f: $56
	ret c                                            ; $4010: $d8

	or l                                             ; $4011: $b5
	add sp, $61                                      ; $4012: $e8 $61
	ld d, b                                          ; $4014: $50
	ldh [$80], a                                     ; $4015: $e0 $80
	add b                                            ; $4017: $80
	ld b, $0a                                        ; $4018: $06 $0a
	inc de                                           ; $401a: $13
	or e                                             ; $401b: $b3
	ldh a, [c]                                       ; $401c: $f2
	dec l                                            ; $401d: $2d
	ld h, [hl]                                       ; $401e: $66
	ld [hl], e                                       ; $401f: $73
	jp $c769                                         ; $4020: $c3 $69 $c7


	cp d                                             ; $4023: $ba
	rrca                                             ; $4024: $0f
	inc bc                                           ; $4025: $03
	ld hl, $7020                                     ; $4026: $21 $20 $70
	ret nc                                           ; $4029: $d0

	ld e, b                                          ; $402a: $58
	ld a, l                                          ; $402b: $7d
	sbc e                                            ; $402c: $9b
	cp a                                             ; $402d: $bf
	ld [$0888], sp                                   ; $402e: $08 $88 $08
	db $dd                                           ; $4031: $dd
	ld c, e                                          ; $4032: $4b
	sbc l                                            ; $4033: $9d
	set 5, b                                         ; $4034: $cb $e8
	sbc $e0                                          ; $4036: $de $e0
	db $dd                                           ; $4038: $dd
	pop hl                                           ; $4039: $e1
	ld a, [hl]                                       ; $403a: $7e
	jp c, $b97f                                      ; $403b: $da $7f $b9

	sbc h                                            ; $403e: $9c

jr_03b_403f:
	rst $38                                          ; $403f: $ff
	adc a                                            ; $4040: $8f
	rst $38                                          ; $4041: $ff
	ld a, d                                          ; $4042: $7a
	push de                                          ; $4043: $d5
	adc e                                            ; $4044: $8b
	inc bc                                           ; $4045: $03
	ccf                                              ; $4046: $3f
	db $fc                                           ; $4047: $fc
	rst $38                                          ; $4048: $ff
	ld e, $7c                                        ; $4049: $1e $7c
	ld a, [hl]                                       ; $404b: $7e
	ld a, a                                          ; $404c: $7f
	cp c                                             ; $404d: $b9
	call z, $cf77                                    ; $404e: $cc $77 $cf
	rst $38                                          ; $4051: $ff
	ld a, l                                          ; $4052: $7d
	inc a                                            ; $4053: $3c
	ld a, [hl]                                       ; $4054: $7e
	rst JumpTable                                          ; $4055: $c7
	inc bc                                           ; $4056: $03
	adc a                                            ; $4057: $8f
	rst $38                                          ; $4058: $ff
	ld a, d                                          ; $4059: $7a
	push bc                                          ; $405a: $c5
	jp c, $9df8                                      ; $405b: $da $f8 $9d

	nop                                              ; $405e: $00
	jr c, jr_03b_403f                                ; $405f: $38 $de

	ret nz                                           ; $4061: $c0

	sbc $e0                                          ; $4062: $de $e0
	sbc h                                            ; $4064: $9c
	db $fc                                           ; $4065: $fc
	ld a, [$d4fd]                                    ; $4066: $fa $fd $d4
	rst $38                                          ; $4069: $ff
	ld a, a                                          ; $406a: $7f
	ret                                              ; $406b: $c9


	sbc [hl]                                         ; $406c: $9e
	ld d, l                                          ; $406d: $55
	halt                                             ; $406e: $76
	add hl, sp                                       ; $406f: $39
	ret c                                            ; $4070: $d8

	rst $38                                          ; $4071: $ff
	sub a                                            ; $4072: $97
	ei                                               ; $4073: $fb
	sub $a9                                          ; $4074: $d6 $a9
	ld d, [hl]                                       ; $4076: $56
	xor d                                            ; $4077: $aa
	ld d, l                                          ; $4078: $55
	xor e                                            ; $4079: $ab
	call nc, $a05a                                   ; $407a: $d4 $5a $a0
	ld a, e                                          ; $407d: $7b
	ld d, d                                          ; $407e: $52
	sbc [hl]                                         ; $407f: $9e
	ld b, h                                          ; $4080: $44
	ld [hl], a                                       ; $4081: $77
	ld d, b                                          ; $4082: $50
	call c, $97ff                                    ; $4083: $dc $ff $97
	ld d, b                                          ; $4086: $50
	xor b                                            ; $4087: $a8
	ld d, b                                          ; $4088: $50
	ld hl, $0512                                     ; $4089: $21 $12 $05
	dec bc                                           ; $408c: $0b
	dec b                                            ; $408d: $05
	ld a, c                                          ; $408e: $79
	xor d                                            ; $408f: $aa
	sbc l                                            ; $4090: $9d
	rst SubAFromDE                                          ; $4091: $df
	rst AddAOntoHL                                          ; $4092: $ef
	sbc $ff                                          ; $4093: $de $ff
	ld a, [hl]                                       ; $4095: $7e
	and l                                            ; $4096: $a5
	sbc h                                            ; $4097: $9c
	ld a, [hl+]                                      ; $4098: $2a
	ld d, a                                          ; $4099: $57
	xor a                                            ; $409a: $af
	ld [hl], d                                       ; $409b: $72
	sub $db                                          ; $409c: $d6 $db
	rst $38                                          ; $409e: $ff
	sbc l                                            ; $409f: $9d
	sub l                                            ; $40a0: $95
	ld l, d                                          ; $40a1: $6a
	db $d3                                           ; $40a2: $d3
	rst $38                                          ; $40a3: $ff
	ld a, a                                          ; $40a4: $7f
	or l                                             ; $40a5: $b5
	sbc [hl]                                         ; $40a6: $9e
	ld e, a                                          ; $40a7: $5f
	ld [bc], a                                       ; $40a8: $02
	call z, $ffd5                                    ; $40a9: $cc $d5 $ff
	sub l                                            ; $40ac: $95
	and l                                            ; $40ad: $a5
	or c                                             ; $40ae: $b1
	add c                                            ; $40af: $81
	ld sp, hl                                        ; $40b0: $f9
	jp hl                                            ; $40b1: $e9


	ld sp, hl                                        ; $40b2: $f9
	pop de                                           ; $40b3: $d1
	db $ed                                           ; $40b4: $ed
	call z, $decc                                    ; $40b5: $cc $cc $de
	db $fc                                           ; $40b8: $fc
	sbc h                                            ; $40b9: $9c
	db $e4                                           ; $40ba: $e4
	db $ec                                           ; $40bb: $ec
	ret nc                                           ; $40bc: $d0

	sbc $bf                                          ; $40bd: $de $bf
	sbc l                                            ; $40bf: $9d
	add b                                            ; $40c0: $80

Jump_03b_40c1:
	sbc [hl]                                         ; $40c1: $9e
	sbc $a1                                          ; $40c2: $de $a1
	sbc $c0                                          ; $40c4: $de $c0
	call c, Call_03b_7fff                            ; $40c6: $dc $ff $7f
	ld [hl], h                                       ; $40c9: $74
	ld a, a                                          ; $40ca: $7f
	ld a, [hl]                                       ; $40cb: $7e
	sbc d                                            ; $40cc: $9a
	ret nc                                           ; $40cd: $d0

	xor b                                            ; $40ce: $a8

jr_03b_40cf:
	call nc, $bffe                                   ; $40cf: $d4 $fe $bf
	ld a, c                                          ; $40d2: $79
	inc l                                            ; $40d3: $2c
	sbc h                                            ; $40d4: $9c
	cpl                                              ; $40d5: $2f
	ld d, a                                          ; $40d6: $57
	dec hl                                           ; $40d7: $2b
	sbc $01                                          ; $40d8: $de $01
	ld c, l                                          ; $40da: $4d
	add b                                            ; $40db: $80
	adc d                                            ; $40dc: $8a
	ld d, a                                          ; $40dd: $57
	rst SubAFromBC                                          ; $40de: $e7
	and e                                            ; $40df: $a3
	xor a                                            ; $40e0: $af
	xor b                                            ; $40e1: $a8
	and $cd                                          ; $40e2: $e6 $cd
	rst JumpTable                                          ; $40e4: $c7
	ld hl, sp-$28                                    ; $40e5: $f8 $d8
	call nz, $cccc                                   ; $40e7: $c4 $cc $cc
	ret                                              ; $40ea: $c9


	db $e3                                           ; $40eb: $e3
	ldh [$d7], a                                     ; $40ec: $e0 $d7
	jp z, $be8e                                      ; $40ee: $ca $8e $be

	xor l                                            ; $40f1: $ad
	sbc $fd                                          ; $40f2: $de $fd
	adc d                                            ; $40f4: $8a
	xor a                                            ; $40f5: $af
	scf                                              ; $40f6: $37
	inc de                                           ; $40f7: $13
	inc sp                                           ; $40f8: $33
	ld [hl-], a                                      ; $40f9: $32
	ld [bc], a                                       ; $40fa: $02
	inc bc                                           ; $40fb: $03
	inc bc                                           ; $40fc: $03
	ld l, e                                          ; $40fd: $6b
	dec bc                                           ; $40fe: $0b
	set 1, e                                         ; $40ff: $cb $cb
	adc e                                            ; $4101: $8b
	dec hl                                           ; $4102: $2b
	xor e                                            ; $4103: $ab
	db $eb                                           ; $4104: $eb
	pop hl                                           ; $4105: $e1
	pop hl                                           ; $4106: $e1
	ld hl, $6121                                     ; $4107: $21 $21 $61
	sbc $c1                                          ; $410a: $de $c1
	rst SubAFromDE                                          ; $410c: $df
	db $fc                                           ; $410d: $fc
	sbc l                                            ; $410e: $9d
	db $fd                                           ; $410f: $fd
	ld hl, sp-$22                                    ; $4110: $f8 $de
	ldh a, [hDisp0_LCDC]                                     ; $4112: $f0 $82
	ld hl, sp+$1c                                    ; $4114: $f8 $1c
	rra                                              ; $4116: $1f
	inc e                                            ; $4117: $1c
	dec e                                            ; $4118: $1d
	jr jr_03b_4134                                   ; $4119: $18 $19

	add hl, de                                       ; $411b: $19
	inc e                                            ; $411c: $1c
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	rst JumpTable                                          ; $411f: $c7
	rst JumpTable                                          ; $4120: $c7
	jp $00c3                                         ; $4121: $c3 $c3 $00


	nop                                              ; $4124: $00
	ld h, a                                          ; $4125: $67

jr_03b_4126:
	adc a                                            ; $4126: $8f
	ld [$3838], sp                                   ; $4127: $08 $38 $38
	sbc [hl]                                         ; $412a: $9e
	reti                                             ; $412b: $d9


	jr c, jr_03b_4126                                ; $412c: $38 $f8

	ld a, b                                          ; $412e: $78
	ld hl, sp+$78                                    ; $412f: $f8 $78
	db $dd                                           ; $4131: $dd
	jr jr_03b_40cf                                   ; $4132: $18 $9b

jr_03b_4134:
	ld h, b                                          ; $4134: $60
	ldh [$60], a                                     ; $4135: $e0 $60
	and b                                            ; $4137: $a0
	sbc $e0                                          ; $4138: $de $e0
	sbc [hl]                                         ; $413a: $9e
	ld h, b                                          ; $413b: $60
	rla                                              ; $413c: $17
	nop                                              ; $413d: $00
	db $dd                                           ; $413e: $dd
	ld d, l                                          ; $413f: $55
	sbc c                                            ; $4140: $99
	ld h, [hl]                                       ; $4141: $66
	ld d, l                                          ; $4142: $55
	ld d, l                                          ; $4143: $55
	ld d, h                                          ; $4144: $54
	ld b, a                                          ; $4145: $47
	ld [hl], a                                       ; $4146: $77
	ld l, e                                          ; $4147: $6b
	or $9c                                           ; $4148: $f6 $9c
	ld b, h                                          ; $414a: $44
	ld [hl], a                                       ; $414b: $77
	ld d, [hl]                                       ; $414c: $56
	ld l, e                                          ; $414d: $6b
	or $9c                                           ; $414e: $f6 $9c
	inc sp                                           ; $4150: $33
	halt                                             ; $4151: $76
	ld h, [hl]                                       ; $4152: $66
	ld b, h                                          ; $4153: $44
	add l                                            ; $4154: $85
	pop bc                                           ; $4155: $c1
	rst $38                                          ; $4156: $ff
	sbc d                                            ; $4157: $9a
	ld [$eaf5], a                                    ; $4158: $ea $f5 $ea
	rst $38                                          ; $415b: $ff
	ei                                               ; $415c: $fb
	sub $ff                                          ; $415d: $d6 $ff
	sbc d                                            ; $415f: $9a
	ld c, d                                          ; $4160: $4a
	dec d                                            ; $4161: $15
	xor e                                            ; $4162: $ab
	ld a, l                                          ; $4163: $7d
	rst AddAOntoHL                                          ; $4164: $ef
	sub $ff                                          ; $4165: $d6 $ff
	sbc l                                            ; $4167: $9d
	dec hl                                           ; $4168: $2b
	ld d, a                                          ; $4169: $57
	pop bc                                           ; $416a: $c1
	rst $38                                          ; $416b: $ff
	inc bc                                           ; $416c: $03
	rst $38                                          ; $416d: $ff
	call nz, $dfff                                   ; $416e: $c4 $ff $df
	pop bc                                           ; $4171: $c1
	sbc l                                            ; $4172: $9d
	pop de                                           ; $4173: $d1
	pop hl                                           ; $4174: $e1
	db $dd                                           ; $4175: $dd
	ld sp, hl                                        ; $4176: $f9
	reti                                             ; $4177: $d9


	db $fc                                           ; $4178: $fc
	reti                                             ; $4179: $d9


	and c                                            ; $417a: $a1
	reti                                             ; $417b: $d9


	rst $38                                          ; $417c: $ff
	sbc $80                                          ; $417d: $de $80
	sbc c                                            ; $417f: $99
	sub l                                            ; $4180: $95
	add c                                            ; $4181: $81
	adc c                                            ; $4182: $89
	sbc l                                            ; $4183: $9d
	ret                                              ; $4184: $c9


	ld a, a                                          ; $4185: $7f
	db $fd                                           ; $4186: $fd
	sub h                                            ; $4187: $94
	inc d                                            ; $4188: $14
	nop                                              ; $4189: $00
	ld d, h                                          ; $418a: $54
	add b                                            ; $418b: $80
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	inc b                                            ; $418e: $04
	ld sp, $1035                                     ; $418f: $31 $35 $10
	dec [hl]                                         ; $4192: $35
	ld a, e                                          ; $4193: $7b
	ldh a, [$9e]                                     ; $4194: $f0 $9e
	ld hl, $fd77                                     ; $4196: $21 $77 $fd
	add b                                            ; $4199: $80
	ldh [c], a                                       ; $419a: $e2
	ld [hl+], a                                      ; $419b: $22
	ld sp, $3830                                     ; $419c: $31 $30 $38
	ld a, $3c                                        ; $419f: $3e $3c
	jr c, jr_03b_41c7                                ; $41a1: $38 $24

	dec [hl]                                         ; $41a3: $35
	inc de                                           ; $41a4: $13
	ld [$0104], sp                              ; $41a5: $08 $04 $01
	ld [bc], a                                       ; $41a8: $02
	inc b                                            ; $41a9: $04
	dec e                                            ; $41aa: $1d
	ld e, a                                          ; $41ab: $5f
	ld a, [$ccf4]                                    ; $41ac: $fa $f4 $cc
	inc a                                            ; $41af: $3c
	ld a, [$63f8]                                    ; $41b0: $fa $f8 $63
	pop hl                                           ; $41b3: $e1
	add l                                            ; $41b4: $85
	ld a, [bc]                                       ; $41b5: $0a
	ld [hl-], a                                      ; $41b6: $32
	jp nz, $9684                                     ; $41b7: $c2 $84 $96

	add h                                            ; $41ba: $84
	ld l, e                                          ; $41bb: $6b
	ld l, e                                          ; $41bc: $6b
	db $eb                                           ; $41bd: $eb
	ld l, e                                          ; $41be: $6b
	dec sp                                           ; $41bf: $3b
	rst $38                                          ; $41c0: $ff
	rra                                              ; $41c1: $1f
	add a                                            ; $41c2: $87
	sbc $81                                          ; $41c3: $de $81
	adc [hl]                                         ; $41c5: $8e
	pop bc                                           ; $41c6: $c1

jr_03b_41c7:
	ld b, c                                          ; $41c7: $41
	ld sp, $010f                                     ; $41c8: $31 $0f $01
	ld hl, sp-$08                                    ; $41cb: $f8 $f8
	db $fc                                           ; $41cd: $fc
	db $fc                                           ; $41ce: $fc
	cp $ff                                           ; $41cf: $fe $ff
	db $fd                                           ; $41d1: $fd
	db $fc                                           ; $41d2: $fc
	inc c                                            ; $41d3: $0c
	inc c                                            ; $41d4: $0c
	ld b, $02                                        ; $41d5: $06 $02
	sbc $07                                          ; $41d7: $de $07
	add b                                            ; $41d9: $80
	inc c                                            ; $41da: $0c
	jr nc, jr_03b_41dd                               ; $41db: $30 $00

jr_03b_41dd:
	ld a, h                                          ; $41dd: $7c
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	ld bc, $2181                                     ; $41e0: $01 $81 $21
	ld c, h                                          ; $41e3: $4c
	ld b, h                                          ; $41e4: $44
	jr c, jr_03b_4263                                ; $41e5: $38 $7c

	ld bc, $7e82                                     ; $41e7: $01 $82 $7e
	sbc $38                                          ; $41ea: $de $38
	jr c, jr_03b_4266                                ; $41ec: $38 $78

	ld a, b                                          ; $41ee: $78
	ld hl, sp-$08                                    ; $41ef: $f8 $f8
	jr c, @+$08                                      ; $41f1: $38 $06

	ld h, b                                          ; $41f3: $60
	ld h, b                                          ; $41f4: $60
	ld b, b                                          ; $41f5: $40
	ret nz                                           ; $41f6: $c0

	ld b, b                                          ; $41f7: $40
	jr nz, @-$61                                     ; $41f8: $20 $9d

	jr jr_03b_4222                                   ; $41fa: $18 $26

	jp c, $9eff                                      ; $41fc: $da $ff $9e

	sub e                                            ; $41ff: $93
	inc bc                                           ; $4200: $03
	scf                                              ; $4201: $37
	rst SubAFromHL                                          ; $4202: $d7
	rst $38                                          ; $4203: $ff
	ld a, e                                          ; $4204: $7b
	and c                                            ; $4205: $a1
	ld l, e                                          ; $4206: $6b
	rst FarCall                                          ; $4207: $f7
	add b                                            ; $4208: $80
	cp $fc                                           ; $4209: $fe $fc
	db $fc                                           ; $420b: $fc
	rst SubAFromBC                                          ; $420c: $e7
	cp a                                             ; $420d: $bf
	ld h, e                                          ; $420e: $63
	adc h                                            ; $420f: $8c
	sub h                                            ; $4210: $94
	ld [hl], $47                                     ; $4211: $36 $47
	add d                                            ; $4213: $82
	rst $38                                          ; $4214: $ff
	ret nz                                           ; $4215: $c0

	add b                                            ; $4216: $80
	nop                                              ; $4217: $00
	ld [$3808], sp                                   ; $4218: $08 $08 $38
	ld a, l                                          ; $421b: $7d
	rst $38                                          ; $421c: $ff
	rrca                                             ; $421d: $0f
	rst SubAFromBC                                          ; $421e: $e7
	di                                               ; $421f: $f3
	dec sp                                           ; $4220: $3b
	add hl, de                                       ; $4221: $19

jr_03b_4222:
	adc l                                            ; $4222: $8d
	call rIE                                       ; $4223: $cd $ff $ff
	rra                                              ; $4226: $1f
	rrca                                             ; $4227: $0f
	rst SubAFromDE                                          ; $4228: $df
	rlca                                             ; $4229: $07
	rst SubAFromDE                                          ; $422a: $df
	inc bc                                           ; $422b: $03
	inc bc                                           ; $422c: $03
	or d                                             ; $422d: $b2
	jp nz, $d9ff                                     ; $422e: $c2 $ff $d9

	ld sp, hl                                        ; $4231: $f9
	reti                                             ; $4232: $d9


	db $fc                                           ; $4233: $fc
	ld a, d                                          ; $4234: $7a
	xor [hl]                                         ; $4235: $ae
	rst SubAFromDE                                          ; $4236: $df
	ret nz                                           ; $4237: $c0

	add b                                            ; $4238: $80
	ldh [$f0], a                                     ; $4239: $e0 $f0
	ld hl, sp-$5f                                    ; $423b: $f8 $a1
	cp [hl]                                          ; $423d: $be
	rst AddAOntoHL                                          ; $423e: $ef
	rst FarCall                                          ; $423f: $f7
	db $e3                                           ; $4240: $e3
	or c                                             ; $4241: $b1
	sbc h                                            ; $4242: $9c
	adc [hl]                                         ; $4243: $8e
	or l                                             ; $4244: $b5
	sub l                                            ; $4245: $95
	sub l                                            ; $4246: $95
	sbc l                                            ; $4247: $9d
	dec c                                            ; $4248: $0d
	inc c                                            ; $4249: $0c
	rlca                                             ; $424a: $07
	inc b                                            ; $424b: $04
	and b                                            ; $424c: $a0
	and b                                            ; $424d: $a0
	ret nc                                           ; $424e: $d0

	ret nc                                           ; $424f: $d0

	sbc b                                            ; $4250: $98
	sbc b                                            ; $4251: $98
	jr jr_03b_426c                                   ; $4252: $18 $18

	ld a, [hl+]                                      ; $4254: $2a
	ld a, [hl+]                                      ; $4255: $2a
	ld a, [bc]                                       ; $4256: $0a
	ld c, e                                          ; $4257: $4b
	add b                                            ; $4258: $80
	ld c, b                                          ; $4259: $48
	inc b                                            ; $425a: $04
	ld [hl], d                                       ; $425b: $72
	ld a, [$4040]                                    ; $425c: $fa $40 $40
	ld b, c                                          ; $425f: $41
	ld bc, $0203                                     ; $4260: $01 $03 $02

jr_03b_4263:
	adc h                                            ; $4263: $8c
	inc b                                            ; $4264: $04
	ld c, e                                          ; $4265: $4b

jr_03b_4266:
	ld [$da54], a                                    ; $4266: $ea $54 $da
	or c                                             ; $4269: $b1
	inc hl                                           ; $426a: $23
	nop                                              ; $426b: $00

jr_03b_426c:
	nop                                              ; $426c: $00
	ld [hl], c                                       ; $426d: $71
	pop bc                                           ; $426e: $c1
	add c                                            ; $426f: $81
	dec b                                            ; $4270: $05
	ld c, $1e                                        ; $4271: $0e $1e
	ld b, $03                                        ; $4273: $06 $03
	pop hl                                           ; $4275: $e1
	db $e3                                           ; $4276: $e3
	jp nz, Jump_03b_4991                             ; $4277: $c2 $91 $49

	inc h                                            ; $427a: $24
	inc d                                            ; $427b: $14
	ld b, d                                          ; $427c: $42
	cp d                                             ; $427d: $ba
	db $10                                           ; $427e: $10
	db $10                                           ; $427f: $10
	ld hl, $caa2                                     ; $4280: $21 $a2 $ca
	jp z, $1c9c                                      ; $4283: $ca $9c $1c

	add a                                            ; $4286: $87
	cp $99                                           ; $4287: $fe $99
	ld c, $08                                        ; $4289: $0e $08
	jr @+$16                                         ; $428b: $18 $14

	ld bc, $fd01                                     ; $428d: $01 $01 $fd
	add b                                            ; $4290: $80
	inc b                                            ; $4291: $04
	ld [$a6fe], sp                                   ; $4292: $08 $fe $a6
	ld b, [hl]                                       ; $4295: $46
	ld b, $06                                        ; $4296: $06 $06
	ld h, a                                          ; $4298: $67
	rla                                              ; $4299: $17
	inc [hl]                                         ; $429a: $34
	ldh a, [$c0]                                     ; $429b: $f0 $c0
	add b                                            ; $429d: $80
	ld b, b                                          ; $429e: $40
	ld h, b                                          ; $429f: $60
	jr nz, jr_03b_42d2                               ; $42a0: $20 $30

	inc de                                           ; $42a2: $13
	ld a, [hl]                                       ; $42a3: $7e
	ld b, [hl]                                       ; $42a4: $46
	ld b, h                                          ; $42a5: $44
	inc c                                            ; $42a6: $0c
	adc h                                            ; $42a7: $8c
	cp b                                             ; $42a8: $b8
	ld a, [de]                                       ; $42a9: $1a
	push bc                                          ; $42aa: $c5
	add c                                            ; $42ab: $81
	add c                                            ; $42ac: $81
	add d                                            ; $42ad: $82
	ld b, d                                          ; $42ae: $42
	ld b, b                                          ; $42af: $40
	sub e                                            ; $42b0: $93
	ld b, l                                          ; $42b1: $45
	pop hl                                           ; $42b2: $e1
	dec sp                                           ; $42b3: $3b
	ld [bc], a                                       ; $42b4: $02
	nop                                              ; $42b5: $00
	nop                                              ; $42b6: $00
	ld b, b                                          ; $42b7: $40
	ldh [$e0], a                                     ; $42b8: $e0 $e0
	ld b, b                                          ; $42ba: $40
	jr nz, jr_03b_42de                               ; $42bb: $20 $21

	call c, $9820                                    ; $42bd: $dc $20 $98
	and b                                            ; $42c0: $a0
	ret nz                                           ; $42c1: $c0

	sub e                                            ; $42c2: $93
	sub e                                            ; $42c3: $93
	add e                                            ; $42c4: $83
	nop                                              ; $42c5: $00
	nop                                              ; $42c6: $00
	sbc $ff                                          ; $42c7: $de $ff
	ld a, l                                          ; $42c9: $7d
	xor h                                            ; $42ca: $ac
	sbc l                                            ; $42cb: $9d
	ld a, h                                          ; $42cc: $7c
	rst $38                                          ; $42cd: $ff
	cp $dd                                           ; $42ce: $fe $dd
	rst $38                                          ; $42d0: $ff
	ld l, a                                          ; $42d1: $6f

jr_03b_42d2:
	ld a, [$f97f]                                    ; $42d2: $fa $7f $f9
	ld e, a                                          ; $42d5: $5f
	ldh a, [$9e]                                     ; $42d6: $f0 $9e
	ld hl, sp+$6b                                    ; $42d8: $f8 $6b
	ldh a, [$80]                                     ; $42da: $f0 $80
	rlca                                             ; $42dc: $07
	nop                                              ; $42dd: $00

jr_03b_42de:
	rst $38                                          ; $42de: $ff
	add e                                            ; $42df: $83
	add e                                            ; $42e0: $83
	cp a                                             ; $42e1: $bf
	cp $1e                                           ; $42e2: $fe $1e
	ldh a, [c]                                       ; $42e4: $f2
	ld de, $bcf1                                     ; $42e5: $11 $f1 $bc
	cp l                                             ; $42e8: $bd
	ld b, e                                          ; $42e9: $43
	rra                                              ; $42ea: $1f
	rst AddAOntoHL                                          ; $42eb: $ef
	rrca                                             ; $42ec: $0f
	rst AddAOntoHL                                          ; $42ed: $ef
	rst AddAOntoHL                                          ; $42ee: $ef
	ret nz                                           ; $42ef: $c0

	xor c                                            ; $42f0: $a9
	add sp, -$78                                     ; $42f1: $e8 $88
	add h                                            ; $42f3: $84
	inc d                                            ; $42f4: $14
	dec d                                            ; $42f5: $15
	cp d                                             ; $42f6: $ba
	rst $38                                          ; $42f7: $ff
	sub $04                                          ; $42f8: $d6 $04
	rlca                                             ; $42fa: $07
	adc e                                            ; $42fb: $8b
	ld a, [de]                                       ; $42fc: $1a
	cp d                                             ; $42fd: $ba
	ld [$1101], a                                    ; $42fe: $ea $01 $11
	add c                                            ; $4301: $81
	ld de, $13a3                                     ; $4302: $11 $a3 $13
	ld e, a                                          ; $4305: $5f
	xor a                                            ; $4306: $af
	ld d, a                                          ; $4307: $57
	rst AddAOntoHL                                          ; $4308: $ef
	rst $38                                          ; $4309: $ff
	rst AddAOntoHL                                          ; $430a: $ef
	ccf                                              ; $430b: $3f
	ccf                                              ; $430c: $3f
	rra                                              ; $430d: $1f
	ld e, a                                          ; $430e: $5f
	rst SubAFromBC                                          ; $430f: $e7
	ld a, e                                          ; $4310: $7b
	jp z, $fc9d                                      ; $4311: $ca $9d $fc

	ld hl, sp-$22                                    ; $4314: $f8 $de
	ld bc, $b57b                                     ; $4316: $01 $7b $b5
	sbc [hl]                                         ; $4319: $9e
	inc bc                                           ; $431a: $03
	sbc $fe                                          ; $431b: $de $fe

jr_03b_431d:
	ld e, e                                          ; $431d: $5b
	and b                                            ; $431e: $a0
	ld [hl], a                                       ; $431f: $77
	rst FarCall                                          ; $4320: $f7
	ld d, a                                          ; $4321: $57
	sub b                                            ; $4322: $90
	cpl                                              ; $4323: $2f
	ldh a, [$de]                                     ; $4324: $f0 $de
	ld sp, hl                                        ; $4326: $f9
	rst SubAFromDE                                          ; $4327: $df
	ld bc, $ffde                                     ; $4328: $01 $de $ff
	db $dd                                           ; $432b: $dd
	db $fc                                           ; $432c: $fc
	ld [hl], a                                       ; $432d: $77
	ldh a, [$9b]                                     ; $432e: $f0 $9b
	ld hl, sp-$7e                                    ; $4330: $f8 $82
	add c                                            ; $4332: $81
	add b                                            ; $4333: $80
	db $dd                                           ; $4334: $dd
	rst $38                                          ; $4335: $ff
	sbc l                                            ; $4336: $9d
	add h                                            ; $4337: $84
	add d                                            ; $4338: $82

jr_03b_4339:
	ld [hl], e                                       ; $4339: $73
	rrca                                             ; $433a: $0f
	add b                                            ; $433b: $80
	rst $38                                          ; $433c: $ff
	add hl, bc                                       ; $433d: $09
	add hl, bc                                       ; $433e: $09
	nop                                              ; $433f: $00
	add h                                            ; $4340: $84
	ld b, d                                          ; $4341: $42
	ld b, c                                          ; $4342: $41
	and c                                            ; $4343: $a1
	ldh [rAUD1SWEEP], a                              ; $4344: $e0 $10
	jr nc, @-$42                                     ; $4346: $30 $bc

	jp nz, $22c1                                     ; $4348: $c2 $c1 $22

	ld b, b                                          ; $434b: $40
	ret nc                                           ; $434c: $d0

	ld hl, sp-$03                                    ; $434d: $f8 $fd
	ld bc, $0509                                     ; $434f: $01 $09 $05
	sub c                                            ; $4352: $91
	jp nz, $0443                                     ; $4353: $c2 $43 $04

	inc b                                            ; $4356: $04
	inc c                                            ; $4357: $0c
	ld [$1618], sp                                   ; $4358: $08 $18 $16
	sub l                                            ; $435b: $95
	or c                                             ; $435c: $b1
	ldh [rP1], a                                     ; $435d: $e0 $00
	jr nz, jr_03b_4381                               ; $435f: $20 $20

	sub b                                            ; $4361: $90
	ld e, b                                          ; $4362: $58
	ld c, l                                          ; $4363: $4d
	ld b, l                                          ; $4364: $45
	ld b, c                                          ; $4365: $41
	db $dd                                           ; $4366: $dd
	ld bc, $c67f                                     ; $4367: $01 $7f $c6
	rst SubAFromDE                                          ; $436a: $df
	add b                                            ; $436b: $80
	sub [hl]                                         ; $436c: $96
	ld c, b                                          ; $436d: $48
	nop                                              ; $436e: $00
	add b                                            ; $436f: $80
	nop                                              ; $4370: $00
	ld c, a                                          ; $4371: $4f
	ret z                                            ; $4372: $c8

	rst JumpTable                                          ; $4373: $c7
	ret c                                            ; $4374: $d8

	inc h                                            ; $4375: $24
	ld a, c                                          ; $4376: $79
	ret nz                                           ; $4377: $c0

	ld a, d                                          ; $4378: $7a
	ld c, $80                                        ; $4379: $0e $80
	rrca                                             ; $437b: $0f
	jr nc, jr_03b_43aa                               ; $437c: $30 $2c

	inc l                                            ; $437e: $2c
	ld c, b                                          ; $437f: $48
	ld c, h                                          ; $4380: $4c

jr_03b_4381:
	adc h                                            ; $4381: $8c
	inc b                                            ; $4382: $04
	dec h                                            ; $4383: $25
	ld [$1010], sp                                   ; $4384: $08 $10 $10
	jr nc, jr_03b_4339                               ; $4387: $30 $b0

	ld [hl], b                                       ; $4389: $70
	ld sp, hl                                        ; $438a: $f9
	ld a, [$180a]                                    ; $438b: $fa $0a $18
	ld [bc], a                                       ; $438e: $02
	add hl, bc                                       ; $438f: $09
	dec d                                            ; $4390: $15
	jr nz, jr_03b_431d                               ; $4391: $20 $8a

	or h                                             ; $4393: $b4
	jr jr_03b_439e                                   ; $4394: $18 $08

	inc c                                            ; $4396: $0c
	ld d, $22                                        ; $4397: $16 $22
	ld b, d                                          ; $4399: $42
	sbc b                                            ; $439a: $98
	ld b, $0c                                        ; $439b: $06 $0c
	dec h                                            ; $439d: $25

jr_03b_439e:
	ld sp, hl                                        ; $439e: $f9
	ld sp, hl                                        ; $439f: $f9
	dec sp                                           ; $43a0: $3b
	dec sp                                           ; $43a1: $3b
	sbc $2b                                          ; $43a2: $de $2b
	adc [hl]                                         ; $43a4: $8e
	ld e, e                                          ; $43a5: $5b
	ld b, $06                                        ; $43a6: $06 $06
	inc b                                            ; $43a8: $04
	inc b                                            ; $43a9: $04

jr_03b_43aa:
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	db $10                                           ; $43ac: $10
	ld h, d                                          ; $43ad: $62
	call nz, $90c8                                   ; $43ae: $c4 $c8 $90
	ld h, b                                          ; $43b1: $60
	rst $38                                          ; $43b2: $ff
	ld b, $06                                        ; $43b3: $06 $06
	ret nz                                           ; $43b5: $c0

	db $fc                                           ; $43b6: $fc
	ld l, [hl]                                       ; $43b7: $6e
	adc d                                            ; $43b8: $8a
	ld a, [hl]                                       ; $43b9: $7e
	add sp, -$62                                     ; $43ba: $e8 $9e
	inc bc                                           ; $43bc: $03
	ld l, a                                          ; $43bd: $6f
	ld c, l                                          ; $43be: $4d
	sbc l                                            ; $43bf: $9d
	jr jr_03b_43c6                                   ; $43c0: $18 $04

	ld l, a                                          ; $43c2: $6f
	ldh a, [$7e]                                     ; $43c3: $f0 $7e
	ld a, [de]                                       ; $43c5: $1a

jr_03b_43c6:
	ld l, a                                          ; $43c6: $6f
	ldh a, [$7b]                                     ; $43c7: $f0 $7b
	jp hl                                            ; $43c9: $e9


	ei                                               ; $43ca: $fb
	ld a, a                                          ; $43cb: $7f
	jp nc, $ffdb                                     ; $43cc: $d2 $db $ff

	sbc l                                            ; $43cf: $9d
	ccf                                              ; $43d0: $3f
	rst $38                                          ; $43d1: $ff
	db $dd                                           ; $43d2: $dd
	ld de, $169b                                     ; $43d3: $11 $9b $16
	jr jr_03b_43d8                                   ; $43d6: $18 $00

jr_03b_43d8:
	ld b, b                                          ; $43d8: $40
	sbc $ef                                          ; $43d9: $de $ef
	add b                                            ; $43db: $80
	xor $ed                                          ; $43dc: $ee $ed
	db $ed                                           ; $43de: $ed
	pop af                                           ; $43df: $f1
	pop hl                                           ; $43e0: $e1
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	add b                                            ; $43e3: $80
	add b                                            ; $43e4: $80
	ld b, b                                          ; $43e5: $40
	jr nz, jr_03b_43e9                               ; $43e6: $20 $01

	inc bc                                           ; $43e8: $03

jr_03b_43e9:
	add h                                            ; $43e9: $84
	add b                                            ; $43ea: $80
	ld e, $40                                        ; $43eb: $1e $40
	and b                                            ; $43ed: $a0
	ld d, e                                          ; $43ee: $53
	ld e, [hl]                                       ; $43ef: $5e
	ld b, b                                          ; $43f0: $40
	inc b                                            ; $43f1: $04
	stop                                             ; $43f2: $10 $00
	ld d, b                                          ; $43f4: $50
	ld hl, sp-$02                                    ; $43f5: $f8 $fe
	ld l, a                                          ; $43f7: $6f
	inc hl                                           ; $43f8: $23
	daa                                              ; $43f9: $27
	cpl                                              ; $43fa: $2f
	rst SubAFromDE                                          ; $43fb: $df
	ccf                                              ; $43fc: $3f
	sbc h                                            ; $43fd: $9c
	ld a, a                                          ; $43fe: $7f
	adc a                                            ; $43ff: $8f
	inc bc                                           ; $4400: $03
	reti                                             ; $4401: $d9


	ld bc, $009e                                     ; $4402: $01 $9e $00
	jp c, $f9fe                                      ; $4405: $da $fe $f9

	sbc [hl]                                         ; $4408: $9e
	ld b, b                                          ; $4409: $40
	jp c, $9eff                                      ; $440a: $da $ff $9e

	daa                                              ; $440d: $27
	ld sp, hl                                        ; $440e: $f9
	reti                                             ; $440f: $d9


	rst $38                                          ; $4410: $ff
	inc bc                                           ; $4411: $03
	ldh a, [rWX]                                     ; $4412: $f0 $4b
	ldh a, [$7f]                                     ; $4414: $f0 $7f
	sub c                                            ; $4416: $91
	rst SubAFromDE                                          ; $4417: $df
	ld [$04df], sp                                   ; $4418: $08 $df $04
	rst SubAFromDE                                          ; $441b: $df
	ld [bc], a                                       ; $441c: $02
	sub h                                            ; $441d: $94
	ldh [$f8], a                                     ; $441e: $e0 $f8
	ldh a, [$f4]                                     ; $4420: $f0 $f4
	ld hl, sp-$06                                    ; $4422: $f8 $fa
	db $fc                                           ; $4424: $fc
	db $fd                                           ; $4425: $fd
	ld c, b                                          ; $4426: $48
	inc h                                            ; $4427: $24
	ld [de], a                                       ; $4428: $12
	ld [hl], e                                       ; $4429: $73
	inc a                                            ; $442a: $3c
	sub l                                            ; $442b: $95
	jp hl                                            ; $442c: $e9


	ld a, a                                          ; $442d: $7f
	ld a, a                                          ; $442e: $7f
	dec sp                                           ; $442f: $3b
	ld de, $0001                                     ; $4430: $11 $01 $00
	ld bc, $4040                                     ; $4433: $01 $40 $40
	ld a, e                                          ; $4436: $7b
	ld e, [hl]                                       ; $4437: $5e
	sbc d                                            ; $4438: $9a
	ld [hl+], a                                      ; $4439: $22
	jp $80a1                                         ; $443a: $c3 $a1 $80


	add b                                            ; $443d: $80
	db $dd                                           ; $443e: $dd
	ret nz                                           ; $443f: $c0

	rst SubAFromDE                                          ; $4440: $df
	ldh [$df], a                                     ; $4441: $e0 $df
	ret nc                                           ; $4443: $d0

	rst SubAFromDE                                          ; $4444: $df
	ret nz                                           ; $4445: $c0

	ld a, l                                          ; $4446: $7d
	jp $e19d                                         ; $4447: $c3 $9d $e1


	ldh [$73], a                                     ; $444a: $e0 $73
	ld a, [hl+]                                      ; $444c: $2a
	ld a, d                                          ; $444d: $7a
	ei                                               ; $444e: $fb
	add h                                            ; $444f: $84
	ld h, e                                          ; $4450: $63
	ld a, e                                          ; $4451: $7b
	ld l, d                                          ; $4452: $6a
	ld l, b                                          ; $4453: $68
	reti                                             ; $4454: $d9


	sub l                                            ; $4455: $95
	push de                                          ; $4456: $d5
	dec d                                            ; $4457: $15
	inc e                                            ; $4458: $1c
	inc e                                            ; $4459: $1c
	dec e                                            ; $445a: $1d
	rra                                              ; $445b: $1f
	ld l, $6e                                        ; $445c: $2e $6e
	ld c, $0a                                        ; $445e: $0e $0a
	ret c                                            ; $4460: $d8

	cp b                                             ; $4461: $b8
	ld l, e                                          ; $4462: $6b
	add sp, -$18                                     ; $4463: $e8 $e8
	ld l, b                                          ; $4465: $68
	ld l, b                                          ; $4466: $68
	ld [hl], b                                       ; $4467: $70
	jr c, jr_03b_44ba                                ; $4468: $38 $50

	sub b                                            ; $446a: $90
	db $dd                                           ; $446b: $dd
	db $10                                           ; $446c: $10
	sub [hl]                                         ; $446d: $96
	ld [$6b2b], sp                                   ; $446e: $08 $2b $6b
	xor e                                            ; $4471: $ab
	dec hl                                           ; $4472: $2b
	cpl                                              ; $4473: $2f
	dec l                                            ; $4474: $2d
	jr z, jr_03b_44a0                                ; $4475: $28 $29

	db $fc                                           ; $4477: $fc
	sbc d                                            ; $4478: $9a
	ld [bc], a                                       ; $4479: $02
	inc bc                                           ; $447a: $03
	nop                                              ; $447b: $00
	ld b, $da                                        ; $447c: $06 $da
	db $dd                                           ; $447e: $dd
	ld c, $9b                                        ; $447f: $0e $9b
	rrca                                             ; $4481: $0f
	ld c, [hl]                                       ; $4482: $4e

jr_03b_4483:
	ld bc, $7305                                     ; $4483: $01 $05 $73
	add hl, hl                                       ; $4486: $29
	ld a, [hl]                                       ; $4487: $7e

Call_03b_4488:
	ld a, l                                          ; $4488: $7d
	sub c                                            ; $4489: $91
	rrca                                             ; $448a: $0f
	rra                                              ; $448b: $1f
	ret nc                                           ; $448c: $d0

	ldh a, [$e0]                                     ; $448d: $f0 $e0
	ldh a, [rP1]                                     ; $448f: $f0 $00
	nop                                              ; $4491: $00
	rrca                                             ; $4492: $0f
	sbc $cf                                          ; $4493: $de $cf
	rst GetHLinHL                                          ; $4495: $cf
	rst SubAFromHL                                          ; $4496: $d7
	rst GetHLinHL                                          ; $4497: $cf
	halt                                             ; $4498: $76
	rst JumpTable                                          ; $4499: $c7
	ld l, e                                          ; $449a: $6b
	ld e, a                                          ; $449b: $5f
	halt                                             ; $449c: $76
	ld a, [bc]                                       ; $449d: $0a

Call_03b_449e:
	rst SubAFromDE                                          ; $449e: $df
	rst $38                                          ; $449f: $ff

jr_03b_44a0:
	sbc e                                            ; $44a0: $9b
	jr nz, jr_03b_4483                               ; $44a1: $20 $e0

	ld hl, sp+$78                                    ; $44a3: $f8 $78
	db $dd                                           ; $44a5: $dd
	ld h, b                                          ; $44a6: $60
	sbc e                                            ; $44a7: $9b
	rla                                              ; $44a8: $17
	rst SubAFromDE                                          ; $44a9: $df
	ccf                                              ; $44aa: $3f
	cp a                                             ; $44ab: $bf
	sbc $1f                                          ; $44ac: $de $1f
	add b                                            ; $44ae: $80
	sbc a                                            ; $44af: $9f
	add b                                            ; $44b0: $80
	ld b, b                                          ; $44b1: $40
	add d                                            ; $44b2: $82
	add a                                            ; $44b3: $87
	cp l                                             ; $44b4: $bd
	db $e4                                           ; $44b5: $e4
	jp $c103                                         ; $44b6: $c3 $03 $c1


	add c                                            ; $44b9: $81

jr_03b_44ba:
	ld bc, $0200                                     ; $44ba: $01 $00 $02
	ld b, d                                          ; $44bd: $42
	ret nz                                           ; $44be: $c0

	sbc h                                            ; $44bf: $9c
	ld [bc], a                                       ; $44c0: $02
	inc h                                            ; $44c1: $24
	dec a                                            ; $44c2: $3d
	ld e, $ec                                        ; $44c3: $1e $ec
	ld a, l                                          ; $44c5: $7d
	ld a, [de]                                       ; $44c6: $1a
	ld a, [bc]                                       ; $44c7: $0a
	ld d, c                                          ; $44c8: $51
	ld d, c                                          ; $44c9: $51
	ret nz                                           ; $44ca: $c0

	pop hl                                           ; $44cb: $e1
	ld de, $df02                                     ; $44cc: $11 $02 $df
	inc b                                            ; $44cf: $04
	adc d                                            ; $44d0: $8a
	rlca                                             ; $44d1: $07
	ld de, $1b5f                                     ; $44d2: $11 $5f $1b
	sub h                                            ; $44d5: $94
	db $10                                           ; $44d6: $10
	inc l                                            ; $44d7: $2c
	ld h, $21                                        ; $44d8: $26 $21
	ld hl, $e4a0                                     ; $44da: $21 $a0 $e4
	ld [$1308], sp                                   ; $44dd: $08 $08 $13
	rra                                              ; $44e0: $1f
	rst $38                                          ; $44e1: $ff
	rst $38                                          ; $44e2: $ff
	ldh [rLCDC], a                                   ; $44e3: $e0 $40
	ld c, [hl]                                       ; $44e5: $4e
	sbc $20                                          ; $44e6: $de $20
	add b                                            ; $44e8: $80
	ld d, b                                          ; $44e9: $50
	rst $38                                          ; $44ea: $ff
	rst $38                                          ; $44eb: $ff
	ld [hl], c                                       ; $44ec: $71
	ld [hl], c                                       ; $44ed: $71
	ccf                                              ; $44ee: $3f
	ccf                                              ; $44ef: $3f
	ei                                               ; $44f0: $fb
	ld hl, sp-$07                                    ; $44f1: $f8 $f9
	nop                                              ; $44f3: $00
	ld bc, $0d05                                     ; $44f4: $01 $05 $0d
	add hl, bc                                       ; $44f7: $09
	nop                                              ; $44f8: $00
	ld h, a                                          ; $44f9: $67
	cp $ff                                           ; $44fa: $fe $ff
	cp $fe                                           ; $44fc: $fe $fe
	or $f6                                           ; $44fe: $f6 $f6
	rst $38                                          ; $4500: $ff
	nop                                              ; $4501: $00
	ldh [$fc], a                                     ; $4502: $e0 $fc
	cp a                                             ; $4504: $bf
	add a                                            ; $4505: $87
	add b                                            ; $4506: $80
	jr nc, @+$81                                     ; $4507: $30 $7f

	sub c                                            ; $4509: $91
	sbc h                                            ; $450a: $9c
	rst SubAFromDE                                          ; $450b: $df
	di                                               ; $450c: $f3
	rrca                                             ; $450d: $0f
	ld [hl], l                                       ; $450e: $75
	ld e, e                                          ; $450f: $5b
	ld [hl], d                                       ; $4510: $72
	and $9c                                          ; $4511: $e6 $9c
	ld a, a                                          ; $4513: $7f
	inc e                                            ; $4514: $1c
	ld e, $dc                                        ; $4515: $1e $dc
	rst $38                                          ; $4517: $ff
	sbc l                                            ; $4518: $9d
	rrca                                             ; $4519: $0f
	inc bc                                           ; $451a: $03
	ld a, d                                          ; $451b: $7a
	ld h, b                                          ; $451c: $60
	db $dd                                           ; $451d: $dd
	rst $38                                          ; $451e: $ff
	ld a, c                                          ; $451f: $79
	rlca                                             ; $4520: $07
	jp c, $9cff                                      ; $4521: $da $ff $9c

	ld [$ef17], sp                                   ; $4524: $08 $17 $ef
	db $dd                                           ; $4527: $dd
	cp $9a                                           ; $4528: $fe $9a
	ld a, [hl]                                       ; $452a: $7e
	ldh a, [$e0]                                     ; $452b: $f0 $e0
	rst SubAFromBC                                          ; $452d: $e7
	rst AddAOntoHL                                          ; $452e: $ef

jr_03b_452f:
	db $dd                                           ; $452f: $dd
	db $eb                                           ; $4530: $eb
	ld a, e                                          ; $4531: $7b
	ld e, d                                          ; $4532: $5a
	sbc h                                            ; $4533: $9c
	nop                                              ; $4534: $00
	ld c, b                                          ; $4535: $48
	jr nc, jr_03b_45a6                               ; $4536: $30 $6e

	xor [hl]                                         ; $4538: $ae
	add b                                            ; $4539: $80
	add a                                            ; $453a: $87
	rst GetHLinHL                                          ; $453b: $cf
	rst $38                                          ; $453c: $ff
	rst $38                                          ; $453d: $ff
	ld bc, $4884                                     ; $453e: $01 $84 $48
	jr c, jr_03b_45a2                                ; $4541: $38 $5f

	ld e, a                                          ; $4543: $5f
	ld a, a                                          ; $4544: $7f
	ld a, a                                          ; $4545: $7f
	ld bc, $8703                                     ; $4546: $01 $03 $87
	rst GetHLinHL                                          ; $4549: $cf
	cp a                                             ; $454a: $bf
	xor b                                            ; $454b: $a8
	sub b                                            ; $454c: $90
	and b                                            ; $454d: $a0
	and b                                            ; $454e: $a0
	ld h, b                                          ; $454f: $60
	jr nz, jr_03b_4576                               ; $4550: $20 $24

	jp $fcf1                                         ; $4552: $c3 $f1 $fc


	rst $38                                          ; $4555: $ff
	ldh [$e0], a                                     ; $4556: $e0 $e0
	ret nz                                           ; $4558: $c0

	ld a, l                                          ; $4559: $7d
	sub b                                            ; $455a: $90
	sub l                                            ; $455b: $95
	ldh [rAUD2LOW], a                                ; $455c: $e0 $18
	ld b, $a0                                        ; $455e: $06 $a0
	and b                                            ; $4560: $a0
	add b                                            ; $4561: $80
	ret nz                                           ; $4562: $c0

	rst $38                                          ; $4563: $ff
	rst $38                                          ; $4564: $ff
	ret nz                                           ; $4565: $c0

	ld [hl], d                                       ; $4566: $72
	ret nz                                           ; $4567: $c0

	db $fd                                           ; $4568: $fd
	sub a                                            ; $4569: $97
	ld a, [de]                                       ; $456a: $1a
	add hl, bc                                       ; $456b: $09
	add hl, bc                                       ; $456c: $09
	dec de                                           ; $456d: $1b
	ld sp, hl                                        ; $456e: $f9
	add hl, sp                                       ; $456f: $39
	pop af                                           ; $4570: $f1
	pop bc                                           ; $4571: $c1
	sbc $07                                          ; $4572: $de $07
	sbc $05                                          ; $4574: $de $05

jr_03b_4576:
	sub l                                            ; $4576: $95
	dec c                                            ; $4577: $0d
	add hl, sp                                       ; $4578: $39
	ld [hl], b                                       ; $4579: $70
	ld [hl], b                                       ; $457a: $70
	or h                                             ; $457b: $b4
	cp b                                             ; $457c: $b8
	cp d                                             ; $457d: $ba
	cp a                                             ; $457e: $bf
	sbc a                                            ; $457f: $9f
	dec de                                           ; $4580: $1b
	sbc $08                                          ; $4581: $de $08
	db $dd                                           ; $4583: $dd
	inc b                                            ; $4584: $04
	sbc [hl]                                         ; $4585: $9e
	add h                                            ; $4586: $84
	jp c, $9d28                                      ; $4587: $da $28 $9d

	xor b                                            ; $458a: $a8
	db $10                                           ; $458b: $10
	ld a, [$b69b]                                    ; $458c: $fa $9b $b6
	ld [hl-], a                                      ; $458f: $32
	ld [bc], a                                       ; $4590: $02
	ld [bc], a                                       ; $4591: $02
	sbc $03                                          ; $4592: $de $03
	sbc l                                            ; $4594: $9d
	ld bc, $6648                                     ; $4595: $01 $48 $66
	jr c, jr_03b_452f                                ; $4598: $38 $95

	xor d                                            ; $459a: $aa
	ld [hl], l                                       ; $459b: $75
	ccf                                              ; $459c: $3f
	cp a                                             ; $459d: $bf
	rst SubAFromDE                                          ; $459e: $df
	rst GetHLinHL                                          ; $459f: $cf
	ld h, b                                          ; $45a0: $60
	nop                                              ; $45a1: $00

jr_03b_45a2:
	ld d, l                                          ; $45a2: $55
	adc d                                            ; $45a3: $8a
	ld a, d                                          ; $45a4: $7a
	ld h, c                                          ; $45a5: $61

jr_03b_45a6:
	sbc e                                            ; $45a6: $9b
	ldh a, [rIE]                                     ; $45a7: $f0 $ff
	rst $38                                          ; $45a9: $ff

Jump_03b_45aa:
	cp a                                             ; $45aa: $bf
	ld l, d                                          ; $45ab: $6a
	add hl, de                                       ; $45ac: $19
	ld a, d                                          ; $45ad: $7a
	ld c, b                                          ; $45ae: $48
	ld [hl], $09                                     ; $45af: $36 $09
	sbc [hl]                                         ; $45b1: $9e
	add e                                            ; $45b2: $83
	db $dd                                           ; $45b3: $dd
	add b                                            ; $45b4: $80
	sbc e                                            ; $45b5: $9b
	ld b, b                                          ; $45b6: $40
	ld h, b                                          ; $45b7: $60
	rst GetHLinHL                                          ; $45b8: $cf
	and h                                            ; $45b9: $a4
	ld a, e                                          ; $45ba: $7b
	ld [hl], c                                       ; $45bb: $71
	ld a, a                                          ; $45bc: $7f
	ret nc                                           ; $45bd: $d0

	ld a, a                                          ; $45be: $7f
	ld [hl], a                                       ; $45bf: $77
	sbc e                                            ; $45c0: $9b
	add b                                            ; $45c1: $80
	ld [hl], b                                       ; $45c2: $70
	dec c                                            ; $45c3: $0d
	ld [bc], a                                       ; $45c4: $02
	cp $93                                           ; $45c5: $fe $93
	ldh [rLY], a                                     ; $45c7: $e0 $44
	adc h                                            ; $45c9: $8c
	ld [de], a                                       ; $45ca: $12
	ld bc, $0806                                     ; $45cb: $01 $06 $08
	ldh a, [rAUD1LEN]                                ; $45ce: $f0 $11
	jr @+$22                                         ; $45d0: $18 $20

	add b                                            ; $45d2: $80
	ld [hl], l                                       ; $45d3: $75
	cpl                                              ; $45d4: $2f
	sbc l                                            ; $45d5: $9d
	ei                                               ; $45d6: $fb
	ld h, h                                          ; $45d7: $64
	ld [hl], a                                       ; $45d8: $77
	ret nz                                           ; $45d9: $c0

	add b                                            ; $45da: $80
	rrca                                             ; $45db: $0f
	ld a, b                                          ; $45dc: $78
	add [hl]                                         ; $45dd: $86
	jr jr_03b_45fe                                   ; $45de: $18 $1e

	rra                                              ; $45e0: $1f
	dec de                                           ; $45e1: $1b
	rrca                                             ; $45e2: $0f
	db $eb                                           ; $45e3: $eb
	ld l, l                                          ; $45e4: $6d
	add sp, $1f                                      ; $45e5: $e8 $1f

jr_03b_45e7:
	rra                                              ; $45e7: $1f
	rla                                              ; $45e8: $17
	rla                                              ; $45e9: $17
	pop af                                           ; $45ea: $f1
	jr jr_03b_45e7                                   ; $45eb: $18 $fa

	dec sp                                           ; $45ed: $3b
	ld a, [hl+]                                      ; $45ee: $2a
	dec b                                            ; $45ef: $05
	jp nz, $fcf0                                     ; $45f0: $c2 $f0 $fc

	rst $38                                          ; $45f3: $ff
	ld e, a                                          ; $45f4: $5f
	adc a                                            ; $45f5: $8f
	push de                                          ; $45f6: $d5
	ld a, [hl-]                                      ; $45f7: $3a
	adc l                                            ; $45f8: $8d
	db $e3                                           ; $45f9: $e3
	adc l                                            ; $45fa: $8d
	ld hl, sp+$7e                                    ; $45fb: $f8 $7e
	ccf                                              ; $45fd: $3f

jr_03b_45fe:
	rlca                                             ; $45fe: $07
	xor d                                            ; $45ff: $aa
	ld d, a                                          ; $4600: $57
	cp a                                             ; $4601: $bf
	ld e, a                                          ; $4602: $5f
	cpl                                              ; $4603: $2f
	ld d, a                                          ; $4604: $57
	rst SubAFromDE                                          ; $4605: $df
	ldh [c], a                                       ; $4606: $e2
	ld d, l                                          ; $4607: $55
	xor b                                            ; $4608: $a8
	ld b, b                                          ; $4609: $40
	and b                                            ; $460a: $a0
	ret nc                                           ; $460b: $d0

	jr z, jr_03b_467e                                ; $460c: $28 $70

	ld h, l                                          ; $460e: $65
	dec a                                            ; $460f: $3d
	sbc c                                            ; $4610: $99
	sbc h                                            ; $4611: $9c
	db $e4                                           ; $4612: $e4
	sub c                                            ; $4613: $91
	inc bc                                           ; $4614: $03
	db $fc                                           ; $4615: $fc
	sub a                                            ; $4616: $97
	jr @+$62                                         ; $4617: $18 $60

	rst SubAFromBC                                          ; $4619: $e7
	cp $ff                                           ; $461a: $fe $ff
	rst $38                                          ; $461c: $ff
	cp $d4                                           ; $461d: $fe $d4
	ld a, e                                          ; $461f: $7b
	jp hl                                            ; $4620: $e9


	sbc [hl]                                         ; $4621: $9e
	rrca                                             ; $4622: $0f
	ld a, b                                          ; $4623: $78
	jp $2b9e                                         ; $4624: $c3 $9e $2b


	ld [hl], d                                       ; $4627: $72
	sub b                                            ; $4628: $90
	sbc l                                            ; $4629: $9d
	push de                                          ; $462a: $d5
	xor d                                            ; $462b: $aa
	ld l, a                                          ; $462c: $6f

jr_03b_462d:
	reti                                             ; $462d: $d9


	sbc b                                            ; $462e: $98
	ld a, [hl+]                                      ; $462f: $2a
	ld d, l                                          ; $4630: $55
	rst $38                                          ; $4631: $ff
	nop                                              ; $4632: $00
	ld bc, $3fff                                     ; $4633: $01 $ff $3f
	sbc $7f                                          ; $4636: $de $7f
	ld a, e                                          ; $4638: $7b
	db $dd                                           ; $4639: $dd
	sub [hl]                                         ; $463a: $96
	db $fc                                           ; $463b: $fc
	ldh [$c1], a                                     ; $463c: $e0 $c1
	jp nz, $8282                                     ; $463e: $c2 $82 $82

	add a                                            ; $4641: $87
	rlca                                             ; $4642: $07
	rlca                                             ; $4643: $07
	db $db                                           ; $4644: $db
	rst $38                                          ; $4645: $ff
	ld a, a                                          ; $4646: $7f
	rra                                              ; $4647: $1f
	add b                                            ; $4648: $80
	ld bc, $0080                                     ; $4649: $01 $80 $00
	jr nc, @+$7e                                     ; $464c: $30 $7c

	ld a, [hl]                                       ; $464e: $7e
	ld a, a                                          ; $464f: $7f
	ld a, a                                          ; $4650: $7f
	ld hl, sp-$0d                                    ; $4651: $f8 $f3
	rst $38                                          ; $4653: $ff
	di                                               ; $4654: $f3
	ld sp, hl                                        ; $4655: $f9
	db $fc                                           ; $4656: $fc
	rst $38                                          ; $4657: $ff
	rst $38                                          ; $4658: $ff
	add b                                            ; $4659: $80
	ret nz                                           ; $465a: $c0

	ld h, b                                          ; $465b: $60
	dec e                                            ; $465c: $1d
	rrca                                             ; $465d: $0f
	rlca                                             ; $465e: $07
	add c                                            ; $465f: $81
	ret nz                                           ; $4660: $c0

	db $ec                                           ; $4661: $ec
	jr c, jr_03b_46cd                                ; $4662: $38 $69

	call $0604                                       ; $4664: $cd $04 $06
	jp nz, $e294                                     ; $4667: $c2 $94 $e2

	ld bc, $3001                                     ; $466a: $01 $01 $30
	ldh a, [$f8]                                     ; $466d: $f0 $f8
	ld hl, sp-$04                                    ; $466f: $f8 $fc
	ld a, h                                          ; $4671: $7c
	dec e                                            ; $4672: $1d
	sbc l                                            ; $4673: $9d
	sbc $dd                                          ; $4674: $de $dd
	sbc h                                            ; $4676: $9c
	call c, $ad8c                                    ; $4677: $dc $8c $ad
	call c, $9382                                    ; $467a: $dc $82 $93
	add e                                            ; $467d: $83

jr_03b_467e:
	jp $a8c3                                         ; $467e: $c3 $c3 $a8


	add sp, $68                                      ; $4681: $e8 $68
	jr z, jr_03b_462d                                ; $4683: $28 $a8

	jp hl                                            ; $4685: $e9


	jp hl                                            ; $4686: $e9


	ei                                               ; $4687: $fb
	nop                                              ; $4688: $00
	ld l, [hl]                                       ; $4689: $6e
	cp a                                             ; $468a: $bf
	ld a, h                                          ; $468b: $7c
	ld e, a                                          ; $468c: $5f
	sbc b                                            ; $468d: $98
	add hl, de                                       ; $468e: $19
	jr c, @+$72                                      ; $468f: $38 $70

	ldh [$c0], a                                     ; $4691: $e0 $c0
	adc c                                            ; $4693: $89
	dec sp                                           ; $4694: $3b
	ld h, a                                          ; $4695: $67
	ld h, b                                          ; $4696: $60
	add hl, sp                                       ; $4697: $39
	nop                                              ; $4698: $00
	sbc $55                                          ; $4699: $de $55
	sub c                                            ; $469b: $91
	ld d, [hl]                                       ; $469c: $56
	ld h, [hl]                                       ; $469d: $66
	ld d, l                                          ; $469e: $55
	ld d, l                                          ; $469f: $55
	ld h, e                                          ; $46a0: $63
	halt                                             ; $46a1: $76
	ld h, [hl]                                       ; $46a2: $66
	ld h, [hl]                                       ; $46a3: $66
	ld h, h                                          ; $46a4: $64
	ld b, h                                          ; $46a5: $44
	ld h, [hl]                                       ; $46a6: $66
	ld h, [hl]                                       ; $46a7: $66
	ld d, [hl]                                       ; $46a8: $56
	ld h, l                                          ; $46a9: $65
	sbc $33                                          ; $46aa: $de $33
	ld a, a                                          ; $46ac: $7f
	xor $9d                                          ; $46ad: $ee $9d
	inc sp                                           ; $46af: $33
	ld b, l                                          ; $46b0: $45
	ld a, e                                          ; $46b1: $7b
	db $ed                                           ; $46b2: $ed
	sbc $33                                          ; $46b3: $de $33
	ld a, e                                          ; $46b5: $7b
	db $eb                                           ; $46b6: $eb
	sbc [hl]                                         ; $46b7: $9e
	ld b, [hl]                                       ; $46b8: $46
	sbc $66                                          ; $46b9: $de $66
	ld [hl], a                                       ; $46bb: $77
	or $7f                                           ; $46bc: $f6 $7f
	pop af                                           ; $46be: $f1
	sbc $66                                          ; $46bf: $de $66
	sbc c                                            ; $46c1: $99
	ld h, a                                          ; $46c2: $67
	ld [hl], e                                       ; $46c3: $73
	inc sp                                           ; $46c4: $33
	inc sp                                           ; $46c5: $33
	ld b, h                                          ; $46c6: $44
	ld b, [hl]                                       ; $46c7: $46
	ld a, e                                          ; $46c8: $7b
	sub $9a                                          ; $46c9: $d6 $9a
	ld b, h                                          ; $46cb: $44
	ld b, a                                          ; $46cc: $47

jr_03b_46cd:
	ld [hl], a                                       ; $46cd: $77
	ld [hl], e                                       ; $46ce: $73
	inc sp                                           ; $46cf: $33
	rst SubAFromBC                                          ; $46d0: $e7
	add c                                            ; $46d1: $81
	ld sp, hl                                        ; $46d2: $f9
	reti                                             ; $46d3: $d9


	rst $38                                          ; $46d4: $ff
	rlca                                             ; $46d5: $07
	ldh a, [$9d]                                     ; $46d6: $f0 $9d
	ld b, b                                          ; $46d8: $40
	ld a, $fc                                        ; $46d9: $3e $fc
	sbc l                                            ; $46db: $9d
	ld b, b                                          ; $46dc: $40
	ccf                                              ; $46dd: $3f
	db $db                                           ; $46de: $db
	ld bc, $3f9e                                     ; $46df: $01 $9e $3f
	reti                                             ; $46e2: $d9


	ld e, a                                          ; $46e3: $5f
	reti                                             ; $46e4: $d9


	add b                                            ; $46e5: $80
	reti                                             ; $46e6: $d9


	db $eb                                           ; $46e7: $eb
	reti                                             ; $46e8: $d9


	ld de, $749a                                     ; $46e9: $11 $9a $74
	ld l, b                                          ; $46ec: $68
	ld [hl], b                                       ; $46ed: $70
	ld h, b                                          ; $46ee: $60
	ld b, b                                          ; $46ef: $40
	cp $97                                           ; $46f0: $fe $97
	adc e                                            ; $46f2: $8b
	sub a                                            ; $46f3: $97
	adc a                                            ; $46f4: $8f
	sbc a                                            ; $46f5: $9f
	cp a                                             ; $46f6: $bf
	ei                                               ; $46f7: $fb
	rst FarCall                                          ; $46f8: $f7
	rst SubAFromBC                                          ; $46f9: $e7
	ld b, a                                          ; $46fa: $47
	or b                                             ; $46fb: $b0
	sbc l                                            ; $46fc: $9d
	dec b                                            ; $46fd: $05
	ld [bc], a                                       ; $46fe: $02
	ld [hl], a                                       ; $46ff: $77
	cp $9b                                           ; $4700: $fe $9b
	ld bc, $fa00                                     ; $4702: $01 $00 $fa
	db $fd                                           ; $4705: $fd
	ld [hl], a                                       ; $4706: $77
	cp $9b                                           ; $4707: $fe $9b
	cp $ff                                           ; $4709: $fe $ff
	ld d, l                                          ; $470b: $55
	xor d                                            ; $470c: $aa
	ld l, a                                          ; $470d: $6f
	cp $6b                                           ; $470e: $fe $6b
	ld sp, hl                                        ; $4710: $f9
	rst SubAFromDE                                          ; $4711: $df
	ld d, l                                          ; $4712: $55
	sub b                                            ; $4713: $90
	xor d                                            ; $4714: $aa
	ld d, b                                          ; $4715: $50
	xor b                                            ; $4716: $a8
	ld d, b                                          ; $4717: $50
	and b                                            ; $4718: $a0
	ld b, b                                          ; $4719: $40
	and b                                            ; $471a: $a0
	xor d                                            ; $471b: $aa
	ld d, l                                          ; $471c: $55
	xor a                                            ; $471d: $af
	ld d, a                                          ; $471e: $57
	xor a                                            ; $471f: $af
	ld e, a                                          ; $4720: $5f
	cp a                                             ; $4721: $bf
	ld e, a                                          ; $4722: $5f
	ld sp, hl                                        ; $4723: $f9
	sbc b                                            ; $4724: $98
	ld hl, sp-$10                                    ; $4725: $f8 $f0
	ldh a, [$e0]                                     ; $4727: $f0 $e0
	ret nz                                           ; $4729: $c0

	add b                                            ; $472a: $80
	add b                                            ; $472b: $80
	ld hl, sp-$69                                    ; $472c: $f8 $97
	inc bc                                           ; $472e: $03
	rlca                                             ; $472f: $07
	rrca                                             ; $4730: $0f
	ld c, $1c                                        ; $4731: $0e $1c
	inc a                                            ; $4733: $3c
	jr c, jr_03b_47a6                                ; $4734: $38 $70

	ld a, e                                          ; $4736: $7b
	xor $9a                                          ; $4737: $ee $9a
	ld bc, $0102                                     ; $4739: $01 $02 $01
	ld bc, $fb05                                     ; $473c: $01 $05 $fb
	rst SubAFromDE                                          ; $473f: $df
	ld [bc], a                                       ; $4740: $02
	sub a                                            ; $4741: $97
	dec hl                                           ; $4742: $2b
	ld [hl], e                                       ; $4743: $73
	di                                               ; $4744: $f3
	db $eb                                           ; $4745: $eb
	db $eb                                           ; $4746: $eb
	di                                               ; $4747: $f3
	di                                               ; $4748: $f3
	db $eb                                           ; $4749: $eb
	reti                                             ; $474a: $d9


	ld [bc], a                                       ; $474b: $02
	inc bc                                           ; $474c: $03
	db $10                                           ; $474d: $10
	ld a, e                                          ; $474e: $7b
	res 3, e                                         ; $474f: $cb $9b
	dec b                                            ; $4751: $05
	ld a, [bc]                                       ; $4752: $0a
	dec d                                            ; $4753: $15
	ld a, [hl+]                                      ; $4754: $2a
	sbc $ff                                          ; $4755: $de $ff
	ld a, a                                          ; $4757: $7f
	ld [hl], b                                       ; $4758: $70
	sub b                                            ; $4759: $90
	push af                                          ; $475a: $f5
	ld [$f5d5], a                                    ; $475b: $ea $d5 $f5
	ldh a, [c]                                       ; $475e: $f2
	push af                                          ; $475f: $f5
	or $f3                                           ; $4760: $f6 $f3
	rst FarCall                                          ; $4762: $f7
	di                                               ; $4763: $f3
	push af                                          ; $4764: $f5
	ld [hl+], a                                      ; $4765: $22
	dec h                                            ; $4766: $25
	ld [hl+], a                                      ; $4767: $22
	ld hl, $20dd                                     ; $4768: $21 $dd $20
	adc a                                            ; $476b: $8f
	nop                                              ; $476c: $00
	add b                                            ; $476d: $80
	ld b, b                                          ; $476e: $40
	and b                                            ; $476f: $a0
	ld d, b                                          ; $4770: $50
	and b                                            ; $4771: $a0
	ret nc                                           ; $4772: $d0

	xor b                                            ; $4773: $a8
	rst $38                                          ; $4774: $ff
	ld a, a                                          ; $4775: $7f
	cp a                                             ; $4776: $bf
	ld e, a                                          ; $4777: $5f
	xor a                                            ; $4778: $af
	ld e, a                                          ; $4779: $5f
	cpl                                              ; $477a: $2f
	ld d, a                                          ; $477b: $57
	inc bc                                           ; $477c: $03
	or b                                             ; $477d: $b0
	ld c, e                                          ; $477e: $4b

Jump_03b_477f:
	ldh a, [rOCPS]                                   ; $477f: $f0 $6a
	pop bc                                           ; $4781: $c1
	sbc [hl]                                         ; $4782: $9e
	ld a, $6a                                        ; $4783: $3e $6a
	pop bc                                           ; $4785: $c1
	sbc [hl]                                         ; $4786: $9e
	ld bc, $5fdc                                     ; $4787: $01 $dc $5f
	sbc h                                            ; $478a: $9c

jr_03b_478b:
	ld e, [hl]                                       ; $478b: $5e
	ld e, h                                          ; $478c: $5c
	ld e, b                                          ; $478d: $58
	reti                                             ; $478e: $d9


	add b                                            ; $478f: $80
	rst SubAFromDE                                          ; $4790: $df
	res 3, c                                         ; $4791: $cb $99
	adc e                                            ; $4793: $8b
	ld a, [bc]                                       ; $4794: $0a
	jr z, jr_03b_47ff                                ; $4795: $28 $68

	ld l, c                                          ; $4797: $69
	db $e3                                           ; $4798: $e3
	sbc $11                                          ; $4799: $de $11
	sbc $10                                          ; $479b: $de $10
	rst SubAFromDE                                          ; $479d: $df
	ld de, $9af9                                     ; $479e: $11 $f9 $9a
	rst GetHLinHL                                          ; $47a1: $cf
	sbc a                                            ; $47a2: $9f
	ccf                                              ; $47a3: $3f
	ccf                                              ; $47a4: $3f
	ld a, a                                          ; $47a5: $7f

jr_03b_47a6:
	ccf                                              ; $47a6: $3f
	or b                                             ; $47a7: $b0
	sbc [hl]                                         ; $47a8: $9e
	cp $63                                           ; $47a9: $fe $63
	ldh a, [$7e]                                     ; $47ab: $f0 $7e
	and h                                            ; $47ad: $a4
	sbc [hl]                                         ; $47ae: $9e
	rst AddAOntoHL                                          ; $47af: $ef
	ld [hl], a                                       ; $47b0: $77
	call c, $e04f                                    ; $47b1: $dc $4f $e0
	sbc l                                            ; $47b4: $9d
	cp $fc                                           ; $47b5: $fe $fc
	ld sp, hl                                        ; $47b7: $f9
	sub a                                            ; $47b8: $97
	cp $ee                                           ; $47b9: $fe $ee
	call c, $b898                                    ; $47bb: $dc $98 $b8
	ld [hl], b                                       ; $47be: $70
	ld h, b                                          ; $47bf: $60
	ret nz                                           ; $47c0: $c0

	rst FarCall                                          ; $47c1: $f7
	sbc l                                            ; $47c2: $9d
	ld bc, $7603                                     ; $47c3: $01 $03 $76
	call z, Call_03b_6af9                            ; $47c6: $cc $f9 $6a
	or d                                             ; $47c9: $b2
	sub [hl]                                         ; $47ca: $96
	ld bc, $1509                                     ; $47cb: $01 $09 $15
	add hl, hl                                       ; $47ce: $29
	dec d                                            ; $47cf: $15
	add hl, hl                                       ; $47d0: $29
	ld d, l                                          ; $47d1: $55
	xor c                                            ; $47d2: $a9
	ld d, l                                          ; $47d3: $55
	reti                                             ; $47d4: $d9


	ld [bc], a                                       ; $47d5: $02
	halt                                             ; $47d6: $76
	call nz, $fb9e                                   ; $47d7: $c4 $9e $fb
	ld [bc], a                                       ; $47da: $02
	ret nz                                           ; $47db: $c0

	ld e, a                                          ; $47dc: $5f
	ldh a, [$7e]                                     ; $47dd: $f0 $7e
	add $9d                                          ; $47df: $c6 $9d
	ld d, l                                          ; $47e1: $55
	ld a, [hl+]                                      ; $47e2: $2a
	ld a, d                                          ; $47e3: $7a
	ld c, c                                          ; $47e4: $49
	sbc d                                            ; $47e5: $9a
	ld a, [hl+]                                      ; $47e6: $2a
	ld [$aad5], a                                    ; $47e7: $ea $d5 $aa
	push de                                          ; $47ea: $d5
	ld a, d                                          ; $47eb: $7a
	ld b, b                                          ; $47ec: $40
	sbc l                                            ; $47ed: $9d
	push de                                          ; $47ee: $d5
	di                                               ; $47ef: $f3
	ld a, d                                          ; $47f0: $7a
	cp a                                             ; $47f1: $bf
	ld [hl], a                                       ; $47f2: $77
	cp $d9                                           ; $47f3: $fe $d9
	jr nz, jr_03b_478b                               ; $47f5: $20 $94

	call nc, $f4ea                                   ; $47f7: $d4 $ea $f4
	ld a, d                                          ; $47fa: $7a
	cp l                                             ; $47fb: $bd
	ld a, [hl]                                       ; $47fc: $7e
	cp a                                             ; $47fd: $bf
	ld e, a                                          ; $47fe: $5f

Call_03b_47ff:
jr_03b_47ff:
	dec hl                                           ; $47ff: $2b
	dec d                                            ; $4800: $15
	dec bc                                           ; $4801: $0b
	halt                                             ; $4802: $76
	add hl, bc                                       ; $4803: $09
	ld l, e                                          ; $4804: $6b
	ld [hl], l                                       ; $4805: $75
	ld a, [hl]                                       ; $4806: $7e
	adc a                                            ; $4807: $8f
	ld l, a                                          ; $4808: $6f
	ld d, c                                          ; $4809: $51
	ld a, [hl]                                       ; $480a: $7e
	adc a                                            ; $480b: $8f
	cp $9e                                           ; $480c: $fe $9e
	dec d                                            ; $480e: $15
	halt                                             ; $480f: $76
	ld [$ffde], sp                                   ; $4810: $08 $de $ff
	sbc [hl]                                         ; $4813: $9e
	ld [$ff75], a                                    ; $4814: $ea $75 $ff
	db $fd                                           ; $4817: $fd
	ld a, [hl]                                       ; $4818: $7e
	adc a                                            ; $4819: $8f
	sbc l                                            ; $481a: $9d
	xor b                                            ; $481b: $a8
	ld d, h                                          ; $481c: $54
	db $dd                                           ; $481d: $dd
	rst $38                                          ; $481e: $ff
	ld a, [hl]                                       ; $481f: $7e
	adc a                                            ; $4820: $8f
	sbc l                                            ; $4821: $9d
	ld d, a                                          ; $4822: $57
	xor e                                            ; $4823: $ab
	ld l, d                                          ; $4824: $6a
	pop bc                                           ; $4825: $c1
	ld a, a                                          ; $4826: $7f
	call $c16e                                       ; $4827: $cd $6e $c1
	sub [hl]                                         ; $482a: $96
	ld bc, $5151                                     ; $482b: $01 $51 $51
	ld b, e                                          ; $482e: $43
	ld b, a                                          ; $482f: $47
	ld c, a                                          ; $4830: $4f
	ld e, [hl]                                       ; $4831: $5e
	ld e, [hl]                                       ; $4832: $5e
	ld e, h                                          ; $4833: $5c
	reti                                             ; $4834: $d9


	add b                                            ; $4835: $80
	sub a                                            ; $4836: $97
	db $e3                                           ; $4837: $e3
	jp $8bcb                                         ; $4838: $c3 $cb $8b


	dec bc                                           ; $483b: $0b
	dec hl                                           ; $483c: $2b
	ld l, e                                          ; $483d: $6b
	db $eb                                           ; $483e: $eb
	sbc $01                                          ; $483f: $de $01
	call c, $2711                                    ; $4841: $dc $11 $27
	ld d, b                                          ; $4844: $50
	sub a                                            ; $4845: $97
	db $fc                                           ; $4846: $fc
	ld hl, sp-$07                                    ; $4847: $f8 $f9
	di                                               ; $4849: $f3
	rst SubAFromBC                                          ; $484a: $e7
	rst JumpTable                                          ; $484b: $c7
	adc a                                            ; $484c: $8f
	rra                                              ; $484d: $1f
	ld sp, hl                                        ; $484e: $f9
	ld a, d                                          ; $484f: $7a
	and h                                            ; $4850: $a4
	rst SubAFromDE                                          ; $4851: $df
	cp $df                                           ; $4852: $fe $df
	rst $38                                          ; $4854: $ff
	sbc [hl]                                         ; $4855: $9e
	rst FarCall                                          ; $4856: $f7
	ld sp, hl                                        ; $4857: $f9
	sbc e                                            ; $4858: $9b
	db $fd                                           ; $4859: $fd
	ei                                               ; $485a: $fb
	ld [hl], e                                       ; $485b: $73
	ld l, a                                          ; $485c: $6f
	ld a, d                                          ; $485d: $7a
	call $389e                                       ; $485e: $cd $9e $38
	ld sp, hl                                        ; $4861: $f9
	ld a, [hl]                                       ; $4862: $7e
	ldh [c], a                                       ; $4863: $e2
	ld [hl], a                                       ; $4864: $77
	ld e, b                                          ; $4865: $58
	ld a, [hl]                                       ; $4866: $7e
	call z, $8df9                                    ; $4867: $cc $f9 $8d
	inc e                                            ; $486a: $1c
	jr c, jr_03b_48a5                                ; $486b: $38 $38

	ld [hl], b                                       ; $486d: $70
	ldh [$c0], a                                     ; $486e: $e0 $c0
	ret nz                                           ; $4870: $c0

	add b                                            ; $4871: $80
	ld [bc], a                                       ; $4872: $02
	inc b                                            ; $4873: $04
	ld [bc], a                                       ; $4874: $02
	inc b                                            ; $4875: $04
	ld a, [bc]                                       ; $4876: $0a
	inc d                                            ; $4877: $14
	ld a, [hl+]                                      ; $4878: $2a
	ld d, h                                          ; $4879: $54
	nop                                              ; $487a: $00
	ld bc, $fe6f                                     ; $487b: $01 $6f $fe
	ld a, [hl]                                       ; $487e: $7e
	add $6f                                          ; $487f: $c6 $6f
	cp $56                                           ; $4881: $fe $56
	ret nz                                           ; $4883: $c0

	ld d, l                                          ; $4884: $55
	add b                                            ; $4885: $80
	adc a                                            ; $4886: $8f
	ld b, b                                          ; $4887: $40
	jr nz, @+$52                                     ; $4888: $20 $50

	jr z, jr_03b_48e0                                ; $488a: $28 $54

	xor d                                            ; $488c: $aa
	ld d, h                                          ; $488d: $54
	xor d                                            ; $488e: $aa
	cp a                                             ; $488f: $bf
	rst SubAFromDE                                          ; $4890: $df
	xor a                                            ; $4891: $af
	rst SubAFromHL                                          ; $4892: $d7
	xor e                                            ; $4893: $ab
	ld d, l                                          ; $4894: $55
	xor e                                            ; $4895: $ab
	ld d, l                                          ; $4896: $55
	ld b, a                                          ; $4897: $47
	ld h, b                                          ; $4898: $60
	ld a, a                                          ; $4899: $7f
	db $ed                                           ; $489a: $ed
	ld a, a                                          ; $489b: $7f
	inc e                                            ; $489c: $1c
	ld a, e                                          ; $489d: $7b
	cp $9b                                           ; $489e: $fe $9b
	xor a                                            ; $48a0: $af
	xor d                                            ; $48a1: $aa
	ld d, h                                          ; $48a2: $54
	xor b                                            ; $48a3: $a8
	ld [hl], a                                       ; $48a4: $77

jr_03b_48a5:
	cp $9e                                           ; $48a5: $fe $9e
	ld d, b                                          ; $48a7: $50
	ld a, d                                          ; $48a8: $7a
	call nz, $f19a                                   ; $48a9: $c4 $9a $f1
	ldh a, [c]                                       ; $48ac: $f2
	pop af                                           ; $48ad: $f1
	ldh a, [$f0]                                     ; $48ae: $f0 $f0
	reti                                             ; $48b0: $d9


	jr nz, jr_03b_492d                               ; $48b1: $20 $7a

	db $fd                                           ; $48b3: $fd
	ld [hl], b                                       ; $48b4: $70
	add sp, -$07                                     ; $48b5: $e8 $f9
	dec c                                            ; $48b7: $0d
	nop                                              ; $48b8: $00
	sbc l                                            ; $48b9: $9d
	ld [hl], a                                       ; $48ba: $77
	ld [hl], e                                       ; $48bb: $73
	call c, $9c44                                    ; $48bc: $dc $44 $9c
	ld b, a                                          ; $48bf: $47
	ld [hl], a                                       ; $48c0: $77
	ld b, h                                          ; $48c1: $44
	scf                                              ; $48c2: $37
	or $53                                           ; $48c3: $f6 $53
	inc bc                                           ; $48c5: $03
	sbc c                                            ; $48c6: $99
	ld a, [hl+]                                      ; $48c7: $2a
	push de                                          ; $48c8: $d5
	ld d, l                                          ; $48c9: $55
	xor d                                            ; $48ca: $aa
	xor d                                            ; $48cb: $aa
	ld d, l                                          ; $48cc: $55
	rra                                              ; $48cd: $1f
	db $fc                                           ; $48ce: $fc
	sbc c                                            ; $48cf: $99
	xor b                                            ; $48d0: $a8
	ld d, a                                          ; $48d1: $57
	ld d, h                                          ; $48d2: $54
	xor e                                            ; $48d3: $ab
	xor d                                            ; $48d4: $aa
	ld d, l                                          ; $48d5: $55
	ld e, a                                          ; $48d6: $5f
	db $fc                                           ; $48d7: $fc
	cp l                                             ; $48d8: $bd
	ld bc, $0101                                     ; $48d9: $01 $01 $01
	ld bc, $409c                                     ; $48dc: $01 $9c $40
	ccf                                              ; $48df: $3f

jr_03b_48e0:
	ld a, $73                                        ; $48e0: $3e $73
	ld hl, sp-$6a                                    ; $48e2: $f8 $96
	ld e, b                                          ; $48e4: $58
	add b                                            ; $48e5: $80
	ld d, c                                          ; $48e6: $51
	add b                                            ; $48e7: $80
	ld d, e                                          ; $48e8: $53
	add b                                            ; $48e9: $80
	ld b, a                                          ; $48ea: $47
	add b                                            ; $48eb: $80
	ld c, a                                          ; $48ec: $4f
	ld a, e                                          ; $48ed: $7b
	cp $9e                                           ; $48ee: $fe $9e
	ld e, a                                          ; $48f0: $5f
	ld a, e                                          ; $48f1: $7b
	cp $9d                                           ; $48f2: $fe $9d
	db $eb                                           ; $48f4: $eb
	ld de, $fe4f                                     ; $48f5: $11 $4f $fe
	or c                                             ; $48f8: $b1
	cp $fc                                           ; $48f9: $fe $fc
	ld hl, sp-$08                                    ; $48fb: $f8 $f8
	pop af                                           ; $48fd: $f1
	db $e3                                           ; $48fe: $e3
	rst JumpTable                                          ; $48ff: $c7
	add a                                            ; $4900: $87
	ccf                                              ; $4901: $3f
	ld a, a                                          ; $4902: $7f
	ld a, a                                          ; $4903: $7f
	rst $38                                          ; $4904: $ff
	rst $38                                          ; $4905: $ff
	cp $fc                                           ; $4906: $fe $fc
	ld sp, hl                                        ; $4908: $f9
	or c                                             ; $4909: $b1
	and $ce                                          ; $490a: $e6 $ce
	call c, $f3f9                                    ; $490c: $dc $f9 $f3
	di                                               ; $490f: $f3
	rst SubAFromBC                                          ; $4910: $e7
	adc $70                                          ; $4911: $ce $70
	ld h, b                                          ; $4913: $60
	ldh [$c0], a                                     ; $4914: $e0 $c0
	add b                                            ; $4916: $80
	add b                                            ; $4917: $80
	nop                                              ; $4918: $00
	nop                                              ; $4919: $00
	or a                                             ; $491a: $b7
	rlca                                             ; $491b: $07
	ld c, $0e                                        ; $491c: $0e $0e
	inc e                                            ; $491e: $1c
	jr jr_03b_4959                                   ; $491f: $18 $38

	ld [hl], b                                       ; $4921: $70
	ldh [rP1], a                                     ; $4922: $e0 $00
	nop                                              ; $4924: $00
	ld [hl], a                                       ; $4925: $77
	add a                                            ; $4926: $87
	sbc [hl]                                         ; $4927: $9e
	ld [bc], a                                       ; $4928: $02
	cp h                                             ; $4929: $bc
	dec b                                            ; $492a: $05
	ld a, [bc]                                       ; $492b: $0a
	dec c                                            ; $492c: $0d

jr_03b_492d:
	ld l, d                                          ; $492d: $6a
	call nc, $019b                                   ; $492e: $d4 $9b $01
	xor d                                            ; $4931: $aa
	nop                                              ; $4932: $00
	ld d, h                                          ; $4933: $54
	ld h, e                                          ; $4934: $63
	db $fc                                           ; $4935: $fc
	sbc e                                            ; $4936: $9b
	xor c                                            ; $4937: $a9
	ld [bc], a                                       ; $4938: $02
	ld d, l                                          ; $4939: $55
	ld [bc], a                                       ; $493a: $02
	ld d, a                                          ; $493b: $57
	db $fc                                           ; $493c: $fc
	sbc h                                            ; $493d: $9c
	db $eb                                           ; $493e: $eb
	ld [bc], a                                       ; $493f: $02
	db $d3                                           ; $4940: $d3
	ld a, e                                          ; $4941: $7b
	cp $7f                                           ; $4942: $fe $7f
	ld a, [$f867]                                    ; $4944: $fa $67 $f8
	sub e                                            ; $4947: $93
	push de                                          ; $4948: $d5
	ld a, [hl+]                                      ; $4949: $2a
	ld a, [$f505]                                    ; $494a: $fa $05 $f5
	ld a, [bc]                                       ; $494d: $0a
	ld a, [$fd05]                                    ; $494e: $fa $05 $fd
	ld [bc], a                                       ; $4951: $02
	cp $01                                           ; $4952: $fe $01
	ld [hl], a                                       ; $4954: $77
	ld a, e                                          ; $4955: $7b
	ld a, a                                          ; $4956: $7f
	db $fd                                           ; $4957: $fd
	sub a                                            ; $4958: $97

jr_03b_4959:
	add b                                            ; $4959: $80
	ld a, a                                          ; $495a: $7f
	ld b, c                                          ; $495b: $41
	cp [hl]                                          ; $495c: $be
	and b                                            ; $495d: $a0
	ld e, a                                          ; $495e: $5f
	ld d, c                                          ; $495f: $51
	xor [hl]                                         ; $4960: $ae
	ld [hl], a                                       ; $4961: $77
	db $fc                                           ; $4962: $fc
	ld a, a                                          ; $4963: $7f
	ld e, $9b                                        ; $4964: $1e $9b
	ld d, a                                          ; $4966: $57
	xor b                                            ; $4967: $a8
	xor a                                            ; $4968: $af
	ld d, b                                          ; $4969: $50
	ld [hl], a                                       ; $496a: $77
	db $fc                                           ; $496b: $fc
	sbc e                                            ; $496c: $9b
	ld e, a                                          ; $496d: $5f
	and b                                            ; $496e: $a0
	cp a                                             ; $496f: $bf
	ld b, b                                          ; $4970: $40
	ld [hl], a                                       ; $4971: $77
	db $fc                                           ; $4972: $fc
	sbc l                                            ; $4973: $9d
	ldh a, [rAUD4LEN]                                ; $4974: $f0 $20
	ld c, a                                          ; $4976: $4f
	cp $9e                                           ; $4977: $fe $9e
	ld a, [hl+]                                      ; $4979: $2a
	cp c                                             ; $497a: $b9
	ld d, l                                          ; $497b: $55

jr_03b_497c:
	ld a, [hl+]                                      ; $497c: $2a
	dec d                                            ; $497d: $15
	ld a, [bc]                                       ; $497e: $0a
	dec b                                            ; $497f: $05
	ld [bc], a                                       ; $4980: $02
	ld bc, $7aaa                                     ; $4981: $01 $aa $7a
	call c, $ab9d                                    ; $4984: $dc $9d $ab
	ld d, h                                          ; $4987: $54
	ld l, a                                          ; $4988: $6f
	adc $7f                                          ; $4989: $ce $7f
	db $fc                                           ; $498b: $fc
	sbc l                                            ; $498c: $9d
	ld a, a                                          ; $498d: $7f
	add b                                            ; $498e: $80
	ld [hl], a                                       ; $498f: $77
	db $fc                                           ; $4990: $fc

Jump_03b_4991:
	ld [hl], a                                       ; $4991: $77
	xor b                                            ; $4992: $a8
	ld h, a                                          ; $4993: $67
	cp $7f                                           ; $4994: $fe $7f
	ldh [$9b], a                                     ; $4996: $e0 $9b
	db $f4                                           ; $4998: $f4
	dec bc                                           ; $4999: $0b
	cp $01                                           ; $499a: $fe $01
	ld e, a                                          ; $499c: $5f
	cp $4e                                           ; $499d: $fe $4e
	jp nz, $fe7f                                     ; $499f: $c2 $7f $fe

	sbc d                                            ; $49a2: $9a
	ld a, l                                          ; $49a3: $7d

jr_03b_49a4:
	add b                                            ; $49a4: $80
	ld l, d                                          ; $49a5: $6a
	add b                                            ; $49a6: $80
	ld [hl], l                                       ; $49a7: $75
	ld a, e                                          ; $49a8: $7b
	db $fc                                           ; $49a9: $fc
	sub e                                            ; $49aa: $93
	ld d, l                                          ; $49ab: $55
	add b                                            ; $49ac: $80
	ld b, d                                          ; $49ad: $42
	add b                                            ; $49ae: $80
	ld b, c                                          ; $49af: $41
	add b                                            ; $49b0: $80
	ld b, b                                          ; $49b1: $40
	add b                                            ; $49b2: $80
	ld c, e                                          ; $49b3: $4b
	ld de, $01ab                                     ; $49b4: $11 $ab $01
	ld d, a                                          ; $49b7: $57
	db $fc                                           ; $49b8: $fc
	adc a                                            ; $49b9: $8f
	adc a                                            ; $49ba: $8f
	nop                                              ; $49bb: $00
	sbc a                                            ; $49bc: $9f
	jr jr_03b_497c                                   ; $49bd: $18 $bd

	add hl, de                                       ; $49bf: $19
	ei                                               ; $49c0: $fb
	add hl, bc                                       ; $49c1: $09
	ei                                               ; $49c2: $fb

jr_03b_49c3:
	inc bc                                           ; $49c3: $03
	rst $38                                          ; $49c4: $ff
	inc sp                                           ; $49c5: $33
	rst $38                                          ; $49c6: $ff
	scf                                              ; $49c7: $37
	rst $38                                          ; $49c8: $ff
	ld b, $bb                                        ; $49c9: $06 $bb
	ei                                               ; $49cb: $fb
	rst $38                                          ; $49cc: $ff
	rst AddAOntoHL                                          ; $49cd: $ef
	adc $9c                                          ; $49ce: $ce $9c
	cp h                                             ; $49d0: $bc
	sbc e                                            ; $49d1: $9b
	ret nz                                           ; $49d2: $c0

	ld a, c                                          ; $49d3: $79
	ret nz                                           ; $49d4: $c0

	di                                               ; $49d5: $f3
	or c                                             ; $49d6: $b1
	sbc h                                            ; $49d7: $9c
	sbc b                                            ; $49d8: $98
	jr c, jr_03b_4a4b                                ; $49d9: $38 $70

	ldh [$c0], a                                     ; $49db: $e0 $c0
	ret nz                                           ; $49dd: $c0

	add b                                            ; $49de: $80
	ld bc, $0303                                     ; $49df: $01 $03 $03
	rlca                                             ; $49e2: $07
	rlca                                             ; $49e3: $07
	ld c, $1c                                        ; $49e4: $0e $1c
	jr c, jr_03b_49a4                                ; $49e6: $38 $bc

	ret nz                                           ; $49e8: $c0

	add b                                            ; $49e9: $80
	add b                                            ; $49ea: $80
	nop                                              ; $49eb: $00
	nop                                              ; $49ec: $00
	ld [hl], a                                       ; $49ed: $77
	sub c                                            ; $49ee: $91
	ld a, a                                          ; $49ef: $7f
	rst SubAFromBC                                          ; $49f0: $e7
	sbc [hl]                                         ; $49f1: $9e
	ld a, [de]                                       ; $49f2: $1a
	cp b                                             ; $49f3: $b8
	dec [hl]                                         ; $49f4: $35
	ld a, [hl+]                                      ; $49f5: $2a
	ld d, l                                          ; $49f6: $55
	xor d                                            ; $49f7: $aa
	ld d, l                                          ; $49f8: $55
	xor d                                            ; $49f9: $aa
	ld d, l                                          ; $49fa: $55
	xor d                                            ; $49fb: $aa

jr_03b_49fc:
	ld d, h                                          ; $49fc: $54
	ld a, [bc]                                       ; $49fd: $0a
	ret nz                                           ; $49fe: $c0

	sbc d                                            ; $49ff: $9a
	db $e3                                           ; $4a00: $e3
	ld [bc], a                                       ; $4a01: $02
	di                                               ; $4a02: $f3
	ld [bc], a                                       ; $4a03: $02
	ei                                               ; $4a04: $fb
	ld a, e                                          ; $4a05: $7b
	cp $6e                                           ; $4a06: $fe $6e
	ret nz                                           ; $4a08: $c0

	ld d, a                                          ; $4a09: $57
	inc h                                            ; $4a0a: $24
	ld [hl], a                                       ; $4a0b: $77
	cp $7e                                           ; $4a0c: $fe $7e
	or b                                             ; $4a0e: $b0
	ld a, a                                          ; $4a0f: $7f

jr_03b_4a10:
	ld e, $7f                                        ; $4a10: $1e $7f
	db $fc                                           ; $4a12: $fc
	sbc l                                            ; $4a13: $9d
	ld [$7615], a                                    ; $4a14: $ea $15 $76
	xor h                                            ; $4a17: $ac
	ld [hl], a                                       ; $4a18: $77
	db $fc                                           ; $4a19: $fc
	ld h, [hl]                                       ; $4a1a: $66
	ret z                                            ; $4a1b: $c8

	ld a, [hl]                                       ; $4a1c: $7e
	ld a, [$fc77]                                    ; $4a1d: $fa $77 $fc
	ld a, a                                          ; $4a20: $7f
	ldh [$7e], a                                     ; $4a21: $e0 $7e
	adc $9e                                          ; $4a23: $ce $9e
	ldh [rHDMA3], a                                  ; $4a25: $e0 $53
	cp $f1                                           ; $4a27: $fe $f1
	ld b, a                                          ; $4a29: $47
	or b                                             ; $4a2a: $b0
	ld b, a                                          ; $4a2b: $47
	cp $56                                           ; $4a2c: $fe $56
	call nz, $fe77                                   ; $4a2e: $c4 $77 $fe
	sbc [hl]                                         ; $4a31: $9e
	add b                                            ; $4a32: $80
	ld [hl], a                                       ; $4a33: $77
	cp $8d                                           ; $4a34: $fe $8d
	ld a, a                                          ; $4a36: $7f
	ld a, [hl]                                       ; $4a37: $7e
	add c                                            ; $4a38: $81
	jr nz, jr_03b_49fc                               ; $4a39: $20 $c1

	ld d, b                                          ; $4a3b: $50
	and c                                            ; $4a3c: $a1
	jr z, jr_03b_4a10                                ; $4a3d: $28 $d1

	ld d, h                                          ; $4a3f: $54
	xor c                                            ; $4a40: $a9
	jr jr_03b_49c3                                   ; $4a41: $18 $80

	ld e, $80                                        ; $4a43: $1e $80
	ld b, $80                                        ; $4a45: $06 $80
	ld [bc], a                                       ; $4a47: $02
	ld [hl], e                                       ; $4a48: $73
	cp $7f                                           ; $4a49: $fe $7f

jr_03b_4a4b:
	sub b                                            ; $4a4b: $90
	sbc e                                            ; $4a4c: $9b
	call $0b00                                       ; $4a4d: $cd $00 $0b
	ld bc, $fe6f                                     ; $4a50: $01 $6f $fe
	sbc [hl]                                         ; $4a53: $9e
	dec hl                                           ; $4a54: $2b
	ld [hl], c                                       ; $4a55: $71
	add d                                            ; $4a56: $82
	adc c                                            ; $4a57: $89
	db $e3                                           ; $4a58: $e3
	ld de, $01ff                                     ; $4a59: $11 $ff $01
	db $fd                                           ; $4a5c: $fd
	inc bc                                           ; $4a5d: $03
	rst $38                                          ; $4a5e: $ff
	inc bc                                           ; $4a5f: $03
	ld hl, sp+$07                                    ; $4a60: $f8 $07
	ldh [rIF], a                                     ; $4a62: $e0 $0f
	pop bc                                           ; $4a64: $c1
	ld e, $70                                        ; $4a65: $1e $70
	inc c                                            ; $4a67: $0c
	jr nc, jr_03b_4a72                               ; $4a68: $30 $08

	ret nz                                           ; $4a6a: $c0

	rst FarCall                                          ; $4a6b: $f7
	add b                                            ; $4a6c: $80
	and $b1                                          ; $4a6d: $e6 $b1
	call z, $d8f8                                    ; $4a6f: $cc $f8 $d8

jr_03b_4a72:
	ld [hl], b                                       ; $4a72: $70
	or b                                             ; $4a73: $b0
	ld h, b                                          ; $4a74: $60
	nop                                              ; $4a75: $00
	nop                                              ; $4a76: $00
	nop                                              ; $4a77: $00
	ld bc, $0301                                     ; $4a78: $01 $01 $03
	rlca                                             ; $4a7b: $07
	rrca                                             ; $4a7c: $0f
	ld a, b                                          ; $4a7d: $78
	ld [hl], b                                       ; $4a7e: $70
	cp e                                             ; $4a7f: $bb
	ldh a, [$e0]                                     ; $4a80: $f0 $e0
	ret nz                                           ; $4a82: $c0

	ret nz                                           ; $4a83: $c0

	add b                                            ; $4a84: $80
	nop                                              ; $4a85: $00
	ld a, [hl]                                       ; $4a86: $7e
	adc a                                            ; $4a87: $8f
	ld a, l                                          ; $4a88: $7d
	sbc h                                            ; $4a89: $9c
	ld a, [hl]                                       ; $4a8a: $7e
	inc d                                            ; $4a8b: $14
	ld a, [hl]                                       ; $4a8c: $7e
	db $10                                           ; $4a8d: $10
	ld a, [hl]                                       ; $4a8e: $7e
	call z, $c87e                                    ; $4a8f: $cc $7e $c8
	ld a, l                                          ; $4a92: $7d
	sub h                                            ; $4a93: $94
	sbc [hl]                                         ; $4a94: $9e
	push de                                          ; $4a95: $d5
	cp a                                             ; $4a96: $bf
	xor d                                            ; $4a97: $aa
	ld h, b                                          ; $4a98: $60
	sbc b                                            ; $4a99: $98
	rra                                              ; $4a9a: $1f
	add b                                            ; $4a9b: $80
	ccf                                              ; $4a9c: $3f
	ld b, b                                          ; $4a9d: $40
	dec hl                                           ; $4a9e: $2b
	add b                                            ; $4a9f: $80
	scf                                              ; $4aa0: $37
	ld l, a                                          ; $4aa1: $6f
	db $fc                                           ; $4aa2: $fc
	ld a, a                                          ; $4aa3: $7f
	ldh a, [$98]                                     ; $4aa4: $f0 $98
	dec h                                            ; $4aa6: $25
	ret nc                                           ; $4aa7: $d0

	ld [bc], a                                       ; $4aa8: $02
	add sp, $09                                      ; $4aa9: $e8 $09
	db $f4                                           ; $4aab: $f4
	ld b, $7b                                        ; $4aac: $06 $7b
	db $fc                                           ; $4aae: $fc
	sbc e                                            ; $4aaf: $9b
	rlca                                             ; $4ab0: $07
	add sp, $0a                                      ; $4ab1: $e8 $0a
	db $f4                                           ; $4ab3: $f4
	ld d, [hl]                                       ; $4ab4: $56
	call nz, $379e                                   ; $4ab5: $c4 $9e $37
	cp a                                             ; $4ab8: $bf
	inc sp                                           ; $4ab9: $33
	db $e3                                           ; $4aba: $e3
	ld [hl], d                                       ; $4abb: $72
	ret z                                            ; $4abc: $c8

	sub h                                            ; $4abd: $94
	db $e3                                           ; $4abe: $e3
	inc bc                                           ; $4abf: $03
	rst SubAFromBC                                          ; $4ac0: $e7
	inc bc                                           ; $4ac1: $03
	rst JumpTable                                          ; $4ac2: $c7
	dec b                                            ; $4ac3: $05
	rst GetHLinHL                                          ; $4ac4: $cf
	dec b                                            ; $4ac5: $05
	db $dd                                           ; $4ac6: $dd
	add hl, bc                                       ; $4ac7: $09
	ld a, a                                          ; $4ac8: $7f
	ld a, e                                          ; $4ac9: $7b
	ld e, d                                          ; $4aca: $5a
	ld d, a                                          ; $4acb: $57
	cp $7d                                           ; $4acc: $fe $7d
	ld a, b                                          ; $4ace: $78
	rrca                                             ; $4acf: $0f
	nop                                              ; $4ad0: $00
	ld l, d                                          ; $4ad1: $6a
	ret z                                            ; $4ad2: $c8

	sbc [hl]                                         ; $4ad3: $9e
	ld h, b                                          ; $4ad4: $60
	ld a, e                                          ; $4ad5: $7b
	cp $9a                                           ; $4ad6: $fe $9a
	ld [hl], b                                       ; $4ad8: $70
	ldh a, [rBCPS]                                   ; $4ad9: $f0 $68
	add sp, $7c                                      ; $4adb: $e8 $7c
	ld [bc], a                                       ; $4add: $02
	ret nz                                           ; $4ade: $c0

	ld [hl+], a                                      ; $4adf: $22
	ret nz                                           ; $4ae0: $c0

	ld l, e                                          ; $4ae1: $6b
	ldh a, [$9c]                                     ; $4ae2: $f0 $9c
	add c                                            ; $4ae4: $81
	add b                                            ; $4ae5: $80
	add c                                            ; $4ae6: $81
	db $dd                                           ; $4ae7: $dd
	rst $38                                          ; $4ae8: $ff
	ld a, a                                          ; $4ae9: $7f
	push af                                          ; $4aea: $f5
	ld l, a                                          ; $4aeb: $6f
	ldh a, [hDisp0_WY]                                     ; $4aec: $f0 $88
	cp b                                             ; $4aee: $b8
	inc c                                            ; $4aef: $0c
	cp h                                             ; $4af0: $bc
	inc c                                            ; $4af1: $0c
	cp h                                             ; $4af2: $bc
	ld c, $bf                                        ; $4af3: $0e $bf
	ld c, $8e                                        ; $4af5: $0e $8e
	rra                                              ; $4af7: $1f
	sbc a                                            ; $4af8: $9f
	ccf                                              ; $4af9: $3f
	rst $38                                          ; $4afa: $ff
	ccf                                              ; $4afb: $3f
	rst $38                                          ; $4afc: $ff
	adc a                                            ; $4afd: $8f
	add h                                            ; $4afe: $84
	ld a, b                                          ; $4aff: $78
	add b                                            ; $4b00: $80
	ld a, a                                          ; $4b01: $7f
	rst $38                                          ; $4b02: $ff
	ld a, a                                          ; $4b03: $7f
	cp a                                             ; $4b04: $bf
	ld a, e                                          ; $4b05: $7b
	ld h, l                                          ; $4b06: $65
	ld a, a                                          ; $4b07: $7f
	db $e4                                           ; $4b08: $e4
	sbc e                                            ; $4b09: $9b
	rra                                              ; $4b0a: $1f
	ldh [rTAC], a                                    ; $4b0b: $e0 $07
	ld hl, sp+$74                                    ; $4b0d: $f8 $74
	sbc $57                                          ; $4b0f: $de $57
	ret nc                                           ; $4b11: $d0

jr_03b_4b12:
	ld a, [hl]                                       ; $4b12: $7e
	reti                                             ; $4b13: $d9


	inc bc                                           ; $4b14: $03
	ldh a, [rHDMA3]                                  ; $4b15: $f0 $53
	ldh a, [rBGP]                                    ; $4b17: $f0 $47
	ret nz                                           ; $4b19: $c0

	sub [hl]                                         ; $4b1a: $96
	and b                                            ; $4b1b: $a0
	dec [hl]                                         ; $4b1c: $35
	ldh a, [$ef]                                     ; $4b1d: $f0 $ef
	rst SubAFromBC                                          ; $4b1f: $e7
	ret nz                                           ; $4b20: $c0

	ret nz                                           ; $4b21: $c0

	add b                                            ; $4b22: $80
	db $e3                                           ; $4b23: $e3
	db $dd                                           ; $4b24: $dd
	add b                                            ; $4b25: $80
	ld a, h                                          ; $4b26: $7c
	add h                                            ; $4b27: $84
	add b                                            ; $4b28: $80
	add c                                            ; $4b29: $81
	ld [hl+], a                                      ; $4b2a: $22
	ldh [$7e], a                                     ; $4b2b: $e0 $7e
	cp h                                             ; $4b2d: $bc
	cp $1c                                           ; $4b2e: $fe $1c
	ld a, $0c                                        ; $4b30: $3e $0c
	cp $0c                                           ; $4b32: $fe $0c
	ccf                                              ; $4b34: $3f
	ld [$083f], sp                                   ; $4b35: $08 $3f $08
	ld l, $0c                                        ; $4b38: $2e $0c
	ld d, d                                          ; $4b3a: $52
	jr nz, jr_03b_4b90                               ; $4b3b: $20 $53

	jr nz, @+$59                                     ; $4b3d: $20 $57

	ld hl, $215a                                     ; $4b3f: $21 $5a $21
	sub $21                                          ; $4b42: $d6 $21
	rst SubAFromHL                                          ; $4b44: $d7
	jr z, jr_03b_4ba7                                ; $4b45: $28 $60

	ld e, $94                                        ; $4b47: $1e $94
	ld [hl], b                                       ; $4b49: $70
	rrca                                             ; $4b4a: $0f
	dec [hl]                                         ; $4b4b: $35
	add hl, bc                                       ; $4b4c: $09
	ld [hl], l                                       ; $4b4d: $75
	add hl, de                                       ; $4b4e: $19
	push hl                                          ; $4b4f: $e5
	ld sp, hl                                        ; $4b50: $f9
	ld b, a                                          ; $4b51: $47
	ld sp, hl                                        ; $4b52: $f9
	ld sp, hl                                        ; $4b53: $f9
	ld l, e                                          ; $4b54: $6b
	cp h                                             ; $4b55: $bc
	ld c, [hl]                                       ; $4b56: $4e
	jp nz, $0207                                     ; $4b57: $c2 $07 $02

	ld a, a                                          ; $4b5a: $7f
	cp $95                                           ; $4b5b: $fe $95
	adc e                                            ; $4b5d: $8b
	ld [hl], h                                       ; $4b5e: $74
	sub l                                            ; $4b5f: $95
	ld l, d                                          ; $4b60: $6a
	adc d                                            ; $4b61: $8a
	ld [hl], l                                       ; $4b62: $75
	ret nz                                           ; $4b63: $c0

	ccf                                              ; $4b64: $3f
	rst $38                                          ; $4b65: $ff
	ld b, b                                          ; $4b66: $40
	ld a, e                                          ; $4b67: $7b
	ld [hl+], a                                      ; $4b68: $22
	cp [hl]                                          ; $4b69: $be
	rst $38                                          ; $4b6a: $ff
	nop                                              ; $4b6b: $00
	nop                                              ; $4b6c: $00
	sbc $ff                                          ; $4b6d: $de $ff
	ld a, a                                          ; $4b6f: $7f
	inc hl                                           ; $4b70: $23
	ld a, e                                          ; $4b71: $7b
	jr nz, jr_03b_4b12                               ; $4b72: $20 $9e

	ret nz                                           ; $4b74: $c0

	inc bc                                           ; $4b75: $03
	jp nz, Jump_03b_7001                             ; $4b76: $c2 $01 $70

	ld a, d                                          ; $4b79: $7a
	xor d                                            ; $4b7a: $aa
	adc c                                            ; $4b7b: $89
	dec de                                           ; $4b7c: $1b
	rst SubAFromDE                                          ; $4b7d: $df
	add hl, bc                                       ; $4b7e: $09
	rst SubAFromDE                                          ; $4b7f: $df
	inc e                                            ; $4b80: $1c
	sub c                                            ; $4b81: $91
	nop                                              ; $4b82: $00
	sub e                                            ; $4b83: $93
	db $10                                           ; $4b84: $10
	sub l                                            ; $4b85: $95
	nop                                              ; $4b86: $00
	sbc a                                            ; $4b87: $9f
	db $10                                           ; $4b88: $10
	sbc a                                            ; $4b89: $9f
	add hl, bc                                       ; $4b8a: $09
	cp e                                             ; $4b8b: $bb
	db $fc                                           ; $4b8c: $fc
	cp l                                             ; $4b8d: $bd
	cp $bd                                           ; $4b8e: $fe $bd

jr_03b_4b90:
	cp $3d                                           ; $4b90: $fe $3d
	ld [hl], e                                       ; $4b92: $73
	cp $77                                           ; $4b93: $fe $77
	or $03                                           ; $4b95: $f6 $03
	xor [hl]                                         ; $4b97: $ae
	inc bc                                           ; $4b98: $03
	cp $4f                                           ; $4b99: $fe $4f
	cp $9e                                           ; $4b9b: $fe $9e
	ld hl, sp+$7a                                    ; $4b9d: $f8 $7a
	ld b, b                                          ; $4b9f: $40
	sbc [hl]                                         ; $4ba0: $9e
	ldh a, [$7b]                                     ; $4ba1: $f0 $7b
	db $fc                                           ; $4ba3: $fc
	sbc [hl]                                         ; $4ba4: $9e
	ldh [rOCPD], a                                   ; $4ba5: $e0 $6b

jr_03b_4ba7:
	db $fc                                           ; $4ba7: $fc
	sbc h                                            ; $4ba8: $9c
	ld c, $08                                        ; $4ba9: $0e $08
	inc c                                            ; $4bab: $0c
	ld [hl], e                                       ; $4bac: $73
	cp $7f                                           ; $4bad: $fe $7f
	ld hl, sp+$6f                                    ; $4baf: $f8 $6f
	cp $9c                                           ; $4bb1: $fe $9c
	ld a, a                                          ; $4bb3: $7f
	inc bc                                           ; $4bb4: $03
	rlca                                             ; $4bb5: $07
	ld a, e                                          ; $4bb6: $7b
	cp $9e                                           ; $4bb7: $fe $9e
	rrca                                             ; $4bb9: $0f
	ld a, c                                          ; $4bba: $79
	inc c                                            ; $4bbb: $0c
	sbc [hl]                                         ; $4bbc: $9e
	rst SubAFromBC                                          ; $4bbd: $e7
	call c, $7807                                    ; $4bbe: $dc $07 $78
	ld a, b                                          ; $4bc1: $78
	sbc [hl]                                         ; $4bc2: $9e
	ret nz                                           ; $4bc3: $c0

	ld d, a                                          ; $4bc4: $57
	cp $03                                           ; $4bc5: $fe $03
	sbc [hl]                                         ; $4bc7: $9e
	inc bc                                           ; $4bc8: $03
	cp $03                                           ; $4bc9: $fe $03
	cp $02                                           ; $4bcb: $fe $02
	ret nz                                           ; $4bcd: $c0

	ld d, a                                          ; $4bce: $57
	cp $8f                                           ; $4bcf: $fe $8f
	sbc [hl]                                         ; $4bd1: $9e
	ld de, $099e                                     ; $4bd2: $11 $9e $09
	db $dd                                           ; $4bd5: $dd
	inc de                                           ; $4bd6: $13
	reti                                             ; $4bd7: $d9


	rrca                                             ; $4bd8: $0f
	db $d3                                           ; $4bd9: $d3
	dec e                                            ; $4bda: $1d
	rst JumpTable                                          ; $4bdb: $c7
	add hl, sp                                       ; $4bdc: $39
	adc a                                            ; $4bdd: $8f
	ld d, c                                          ; $4bde: $51
	rra                                              ; $4bdf: $1f
	pop bc                                           ; $4be0: $c1
	halt                                             ; $4be1: $76
	call z, $fe57                                    ; $4be2: $cc $57 $fe
	inc bc                                           ; $4be5: $03
	xor [hl]                                         ; $4be6: $ae
	inc bc                                           ; $4be7: $03
	cp $4f                                           ; $4be8: $fe $4f
	cp $79                                           ; $4bea: $fe $79
	adc h                                            ; $4bec: $8c
	rst SubAFromDE                                          ; $4bed: $df
	add b                                            ; $4bee: $80
	sbc d                                            ; $4bef: $9a
	ldh [$80], a                                     ; $4bf0: $e0 $80
	db $eb                                           ; $4bf2: $eb
	add b                                            ; $4bf3: $80
	rst FarCall                                          ; $4bf4: $f7
	ld a, e                                          ; $4bf5: $7b
	db $fc                                           ; $4bf6: $fc
	sbc h                                            ; $4bf7: $9c
	sub a                                            ; $4bf8: $97
	add b                                            ; $4bf9: $80
	add b                                            ; $4bfa: $80
	ld [hl], d                                       ; $4bfb: $72
	ret nz                                           ; $4bfc: $c0

	sbc h                                            ; $4bfd: $9c
	jr c, jr_03b_4c0c                                ; $4bfe: $38 $0c

	ld hl, sp+$73                                    ; $4c00: $f8 $73
	cp $96                                           ; $4c02: $fe $96
	ret z                                            ; $4c04: $c8

	inc c                                            ; $4c05: $0c
	ld [$0b9f], sp                                   ; $4c06: $08 $9f $0b
	rst $38                                          ; $4c09: $ff
	inc bc                                           ; $4c0a: $03
	rra                                              ; $4c0b: $1f

jr_03b_4c0c:
	dec bc                                           ; $4c0c: $0b
	ld e, a                                          ; $4c0d: $5f
	cp $4e                                           ; $4c0e: $fe $4e
	jp nz, $c002                                     ; $4c10: $c2 $02 $c0

	inc bc                                           ; $4c13: $03
	cp $47                                           ; $4c14: $fe $47
	cp $26                                           ; $4c16: $fe $26
	nop                                              ; $4c18: $00
	sbc l                                            ; $4c19: $9d
	ld [hl], a                                       ; $4c1a: $77
	ld [hl], e                                       ; $4c1b: $73
	call c, $9c44                                    ; $4c1c: $dc $44 $9c
	ld b, a                                          ; $4c1f: $47
	ld [hl], a                                       ; $4c20: $77
	ld b, h                                          ; $4c21: $44
	ld c, e                                          ; $4c22: $4b
	or $9d                                           ; $4c23: $f6 $9d
	ld b, [hl]                                       ; $4c25: $46
	ld h, h                                          ; $4c26: $64
	ld [hl], e                                       ; $4c27: $73
	or $90                                           ; $4c28: $f6 $90
	ld b, e                                          ; $4c2a: $43
	inc sp                                           ; $4c2b: $33
	inc sp                                           ; $4c2c: $33
	ld [hl], $63                                     ; $4c2d: $36 $63
	scf                                              ; $4c2f: $37
	ld [hl], a                                       ; $4c30: $77
	inc sp                                           ; $4c31: $33
	ld [hl], a                                       ; $4c32: $77
	ld [hl], a                                       ; $4c33: $77
	ld d, h                                          ; $4c34: $54
	ld [hl], a                                       ; $4c35: $77
	ld [hl], a                                       ; $4c36: $77
	ld [hl], l                                       ; $4c37: $75
	ld d, l                                          ; $4c38: $55
	call c, Call_03b_6777                            ; $4c39: $dc $77 $67
	or $e9                                           ; $4c3c: $f6 $e9
	add d                                            ; $4c3e: $82
	adc a                                            ; $4c3f: $8f
	rst SubAFromHL                                          ; $4c40: $d7
	sub a                                            ; $4c41: $97
	rst AddAOntoHL                                          ; $4c42: $ef
	sbc $dd                                          ; $4c43: $de $dd
	rst AddAOntoHL                                          ; $4c45: $ef
	rst SubAFromBC                                          ; $4c46: $e7
	rst AddAOntoHL                                          ; $4c47: $ef
	ld a, [$f2fa]                                    ; $4c48: $fa $fa $f2
	db $e3                                           ; $4c4b: $e3
	db $e3                                           ; $4c4c: $e3
	ld [hl], c                                       ; $4c4d: $71
	ld a, b                                          ; $4c4e: $78
	db $fc                                           ; $4c4f: $fc
	jp c, $9e80                                      ; $4c50: $da $80 $9e

	add c                                            ; $4c53: $81
	reti                                             ; $4c54: $d9


	ld a, a                                          ; $4c55: $7f
	ld a, [$809e]                                    ; $4c56: $fa $9e $80
	reti                                             ; $4c59: $d9


	rst $38                                          ; $4c5a: $ff
	rst $38                                          ; $4c5b: $ff
	rst SubAFromDE                                          ; $4c5c: $df
	ld [bc], a                                       ; $4c5d: $02
	ld a, a                                          ; $4c5e: $7f
	db $fd                                           ; $4c5f: $fd
	sbc l                                            ; $4c60: $9d
	inc bc                                           ; $4c61: $03
	rlca                                             ; $4c62: $07
	reti                                             ; $4c63: $d9


	rst $38                                          ; $4c64: $ff
	sbc [hl]                                         ; $4c65: $9e
	ld bc, $9bfe                                     ; $4c66: $01 $fe $9b
	ld [bc], a                                       ; $4c69: $02
	inc de                                           ; $4c6a: $13
	di                                               ; $4c6b: $f3
	di                                               ; $4c6c: $f3
	jp c, $9aff                                      ; $4c6d: $da $ff $9a

	cp $40                                           ; $4c70: $fe $40
	add b                                            ; $4c72: $80
	add b                                            ; $4c73: $80
	adc d                                            ; $4c74: $8a
	sbc $82                                          ; $4c75: $de $82
	add [hl]                                         ; $4c77: $86
	adc [hl]                                         ; $4c78: $8e
	cp a                                             ; $4c79: $bf
	ld a, a                                          ; $4c7a: $7f
	ld a, a                                          ; $4c7b: $7f
	ld [hl], c                                       ; $4c7c: $71
	ld [hl], c                                       ; $4c7d: $71
	ld a, l                                          ; $4c7e: $7d
	ld a, l                                          ; $4c7f: $7d
	ld [hl], c                                       ; $4c80: $71
	ld d, l                                          ; $4c81: $55
	xor d                                            ; $4c82: $aa
	ld d, l                                          ; $4c83: $55
	ld a, [hl+]                                      ; $4c84: $2a
	ld d, l                                          ; $4c85: $55
	dec hl                                           ; $4c86: $2b
	rst SubAFromDE                                          ; $4c87: $df
	ld a, a                                          ; $4c88: $7f
	xor d                                            ; $4c89: $aa
	ld d, l                                          ; $4c8a: $55
	xor d                                            ; $4c8b: $aa
	push de                                          ; $4c8c: $d5
	xor d                                            ; $4c8d: $aa
	call nc, $8020                                   ; $4c8e: $d4 $20 $80
	ld a, e                                          ; $4c91: $7b
	ldh a, [$9a]                                     ; $4c92: $f0 $9a
	xor d                                            ; $4c94: $aa
	db $dd                                           ; $4c95: $dd
	cp $7f                                           ; $4c96: $fe $7f
	rst $38                                          ; $4c98: $ff
	ld a, e                                          ; $4c99: $7b
	ld sp, hl                                        ; $4c9a: $f9
	sbc d                                            ; $4c9b: $9a
	ld d, l                                          ; $4c9c: $55
	ld [hl+], a                                      ; $4c9d: $22
	ld bc, $0080                                     ; $4c9e: $01 $80 $00
	ld [hl], a                                       ; $4ca1: $77
	ldh a, [rPCM34]                                  ; $4ca2: $f0 $77
	cp $6b                                           ; $4ca4: $fe $6b
	ld sp, hl                                        ; $4ca6: $f9
	rst SubAFromDE                                          ; $4ca7: $df
	ld d, l                                          ; $4ca8: $55
	ld a, e                                          ; $4ca9: $7b
	ei                                               ; $4caa: $fb
	sbc e                                            ; $4cab: $9b
	push af                                          ; $4cac: $f5
	ld e, d                                          ; $4cad: $5a
	or a                                             ; $4cae: $b7
	ld e, c                                          ; $4caf: $59
	ld [hl], a                                       ; $4cb0: $77
	db $f4                                           ; $4cb1: $f4
	adc b                                            ; $4cb2: $88
	ld a, [bc]                                       ; $4cb3: $0a
	and l                                            ; $4cb4: $a5
	ld c, b                                          ; $4cb5: $48
	and [hl]                                         ; $4cb6: $a6
	ld d, h                                          ; $4cb7: $54
	and d                                            ; $4cb8: $a2
	ret nc                                           ; $4cb9: $d0

	add sp, $54                                      ; $4cba: $e8 $54
	xor d                                            ; $4cbc: $aa
	ld h, l                                          ; $4cbd: $65
	ld a, [bc]                                       ; $4cbe: $0a
	xor e                                            ; $4cbf: $ab
	ld e, l                                          ; $4cc0: $5d
	cpl                                              ; $4cc1: $2f
	rla                                              ; $4cc2: $17
	xor e                                            ; $4cc3: $ab
	ld d, l                                          ; $4cc4: $55
	sbc d                                            ; $4cc5: $9a
	push bc                                          ; $4cc6: $c5

jr_03b_4cc7:
	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	jr jr_03b_4cc7                                   ; $4cc9: $18 $fc

	rst SubAFromDE                                          ; $4ccb: $df
	rst $38                                          ; $4ccc: $ff
	sbc [hl]                                         ; $4ccd: $9e
	rst SubAFromBC                                          ; $4cce: $e7
	ld l, e                                          ; $4ccf: $6b
	ld [hl], b                                       ; $4cd0: $70
	ei                                               ; $4cd1: $fb
	ld h, e                                          ; $4cd2: $63
	ld [hl], b                                       ; $4cd3: $70
	sbc c                                            ; $4cd4: $99
	add h                                            ; $4cd5: $84
	ld hl, $810a                                     ; $4cd6: $21 $0a $81
	nop                                              ; $4cd9: $00
	ld hl, $f063                                     ; $4cda: $21 $63 $f0
	sub a                                            ; $4cdd: $97
	ld d, a                                          ; $4cde: $57
	ld l, $57                                        ; $4cdf: $2e $57
	xor e                                            ; $4ce1: $ab
	rra                                              ; $4ce2: $1f
	ld a, [hl+]                                      ; $4ce3: $2a
	rla                                              ; $4ce4: $17
	xor e                                            ; $4ce5: $ab
	reti                                             ; $4ce6: $d9


	rst $38                                          ; $4ce7: $ff
	sbc [hl]                                         ; $4ce8: $9e
	cp $de                                           ; $4ce9: $fe $de
	rst $38                                          ; $4ceb: $ff
	sbc e                                            ; $4cec: $9b
	cp a                                             ; $4ced: $bf
	rst AddAOntoHL                                          ; $4cee: $ef
	rst $38                                          ; $4cef: $ff
	cp a                                             ; $4cf0: $bf
	reti                                             ; $4cf1: $d9


	rst $38                                          ; $4cf2: $ff
	sub a                                            ; $4cf3: $97
	xor a                                            ; $4cf4: $af
	ld e, a                                          ; $4cf5: $5f
	cp l                                             ; $4cf6: $bd
	ld d, e                                          ; $4cf7: $53
	rst JumpTable                                          ; $4cf8: $c7
	ld h, a                                          ; $4cf9: $67
	rst $38                                          ; $4cfa: $ff
	push af                                          ; $4cfb: $f5
	reti                                             ; $4cfc: $d9


	rst $38                                          ; $4cfd: $ff
	rst SubAFromDE                                          ; $4cfe: $df
	adc a                                            ; $4cff: $8f
	sbc c                                            ; $4d00: $99
	jp hl                                            ; $4d01: $e9


	ld sp, hl                                        ; $4d02: $f9
	rst $38                                          ; $4d03: $ff
	db $fd                                           ; $4d04: $fd
	db $ed                                           ; $4d05: $ed
	ld [$ffd9], a                                    ; $4d06: $ea $d9 $ff
	sub [hl]                                         ; $4d09: $96
	ld c, h                                          ; $4d0a: $4c
	add sp, -$1f                                     ; $4d0b: $e8 $e1
	cp $80                                           ; $4d0d: $fe $80
	ret nz                                           ; $4d0f: $c0

	ret nz                                           ; $4d10: $c0

	add b                                            ; $4d11: $80
	ld hl, sp+$77                                    ; $4d12: $f8 $77
	rst JumpTable                                          ; $4d14: $c7
	ld l, a                                          ; $4d15: $6f
	sub b                                            ; $4d16: $90
	sbc e                                            ; $4d17: $9b
	add b                                            ; $4d18: $80
	stop                                             ; $4d19: $10 $00
	inc b                                            ; $4d1b: $04
	db $fd                                           ; $4d1c: $fd
	add d                                            ; $4d1d: $82
	ret nz                                           ; $4d1e: $c0

	ldh [$f0], a                                     ; $4d1f: $e0 $f0
	ld hl, sp-$04                                    ; $4d21: $f8 $fc
	ld a, e                                          ; $4d23: $7b
	ld [hl], e                                       ; $4d24: $73
	ld [hl], c                                       ; $4d25: $71
	db $10                                           ; $4d26: $10
	cp c                                             ; $4d27: $b9
	ld [$7e15], sp                                   ; $4d28: $08 $15 $7e
	db $fc                                           ; $4d2b: $fc
	db $fc                                           ; $4d2c: $fc
	cp $ff                                           ; $4d2d: $fe $ff
	ld a, [hl]                                       ; $4d2f: $7e
	rst $38                                          ; $4d30: $ff
	xor $87                                          ; $4d31: $ee $87
	pop hl                                           ; $4d33: $e1
	ldh [$e0], a                                     ; $4d34: $e0 $e0
	or b                                             ; $4d36: $b0
	jr nc, @+$61                                     ; $4d37: $30 $5f

	sbc $65                                          ; $4d39: $de $65
	jp c, $963f                                      ; $4d3b: $da $3f $96

	sbc [hl]                                         ; $4d3e: $9e
	ret nz                                           ; $4d3f: $c0

	ld h, b                                          ; $4d40: $60
	dec l                                            ; $4d41: $2d
	rlca                                             ; $4d42: $07
	ldh a, [rIE]                                     ; $4d43: $f0 $ff
	adc c                                            ; $4d45: $89
	ld a, $73                                        ; $4d46: $3e $73
	and h                                            ; $4d48: $a4
	add b                                            ; $4d49: $80
	add b                                            ; $4d4a: $80
	ld a, [hl]                                       ; $4d4b: $7e
	rst $38                                          ; $4d4c: $ff
	ld e, $f2                                        ; $4d4d: $1e $f2
	add sp, -$68                                     ; $4d4f: $e8 $98
	ld l, [hl]                                       ; $4d51: $6e
	rst SubAFromDE                                          ; $4d52: $df
	ld l, a                                          ; $4d53: $6f
	sbc $ff                                          ; $4d54: $de $ff
	rst $38                                          ; $4d56: $ff
	rst FarCall                                          ; $4d57: $f7
	rst SubAFromBC                                          ; $4d58: $e7
	sbc a                                            ; $4d59: $9f
	ccf                                              ; $4d5a: $3f
	rst $38                                          ; $4d5b: $ff
	rst $38                                          ; $4d5c: $ff
	di                                               ; $4d5d: $f3
	ldh a, [c]                                       ; $4d5e: $f2
	di                                               ; $4d5f: $f3
	add a                                            ; $4d60: $87
	or a                                             ; $4d61: $b7
	push bc                                          ; $4d62: $c5
	push de                                          ; $4d63: $d5
	adc a                                            ; $4d64: $8f
	cp $ff                                           ; $4d65: $fe $ff
	cp $fe                                           ; $4d67: $fe $fe
	sbc c                                            ; $4d69: $99
	adc $8e                                          ; $4d6a: $ce $8e
	adc [hl]                                         ; $4d6c: $8e
	db $fc                                           ; $4d6d: $fc
	db $eb                                           ; $4d6e: $eb
	rla                                              ; $4d6f: $17
	ld a, e                                          ; $4d70: $7b
	ld a, l                                          ; $4d71: $7d
	sub h                                            ; $4d72: $94
	rrca                                             ; $4d73: $0f
	rlca                                             ; $4d74: $07
	rlca                                             ; $4d75: $07
	ld d, $ec                                        ; $4d76: $16 $ec
	ld c, h                                          ; $4d78: $4c
	ld b, h                                          ; $4d79: $44
	ld b, h                                          ; $4d7a: $44
	inc b                                            ; $4d7b: $04
	inc c                                            ; $4d7c: $0c
	inc c                                            ; $4d7d: $0c
	ld h, a                                          ; $4d7e: $67
	ld c, e                                          ; $4d7f: $4b
	db $fc                                           ; $4d80: $fc
	ld a, d                                          ; $4d81: $7a
	sub e                                            ; $4d82: $93
	adc a                                            ; $4d83: $8f
	ld d, l                                          ; $4d84: $55
	rst AddAOntoHL                                          ; $4d85: $ef
	cp $ab                                           ; $4d86: $fe $ab
	rst FarCall                                          ; $4d88: $f7
	cp d                                             ; $4d89: $ba
	rst AddAOntoHL                                          ; $4d8a: $ef
	xor a                                            ; $4d8b: $af
	xor d                                            ; $4d8c: $aa
	db $10                                           ; $4d8d: $10
	ld bc, $0854                                     ; $4d8e: $01 $54 $08
	ld b, l                                          ; $4d91: $45
	db $10                                           ; $4d92: $10
	ld d, b                                          ; $4d93: $50
	ld a, d                                          ; $4d94: $7a
	xor d                                            ; $4d95: $aa
	ld a, e                                          ; $4d96: $7b
	cp $9d                                           ; $4d97: $fe $9d
	xor e                                            ; $4d99: $ab
	push de                                          ; $4d9a: $d5
	ld a, d                                          ; $4d9b: $7a
	sbc d                                            ; $4d9c: $9a
	ld a, e                                          ; $4d9d: $7b
	cp $88                                           ; $4d9e: $fe $88
	ld d, h                                          ; $4da0: $54
	ld a, [hl+]                                      ; $4da1: $2a
	cp d                                             ; $4da2: $ba
	ld l, b                                          ; $4da3: $68
	or h                                             ; $4da4: $b4
	ld [hl], b                                       ; $4da5: $70
	cp h                                             ; $4da6: $bc
	ld l, h                                          ; $4da7: $6c
	ret c                                            ; $4da8: $d8

	ld a, b                                          ; $4da9: $78
	ld b, h                                          ; $4daa: $44
	sub h                                            ; $4dab: $94
	ld c, b                                          ; $4dac: $48
	adc h                                            ; $4dad: $8c
	ld b, e                                          ; $4dae: $43
	sub e                                            ; $4daf: $93
	ld h, $84                                        ; $4db0: $26 $84
	db $10                                           ; $4db2: $10
	jr nz, jr_03b_4e15                               ; $4db3: $20 $60

	ret nz                                           ; $4db5: $c0

	add b                                            ; $4db6: $80
	ld a, e                                          ; $4db7: $7b
	ld c, h                                          ; $4db8: $4c
	sbc b                                            ; $4db9: $98
	rrca                                             ; $4dba: $0f
	rra                                              ; $4dbb: $1f
	rra                                              ; $4dbc: $1f
	ccf                                              ; $4dbd: $3f
	ld a, a                                          ; $4dbe: $7f
	rst $38                                          ; $4dbf: $ff
	rst $38                                          ; $4dc0: $ff
	ld h, [hl]                                       ; $4dc1: $66
	jr nc, jr_03b_4e26                               ; $4dc2: $30 $62

	ldh [$7a], a                                     ; $4dc4: $e0 $7a
	or b                                             ; $4dc6: $b0
	rst SubAFromDE                                          ; $4dc7: $df
	inc h                                            ; $4dc8: $24
	sbc l                                            ; $4dc9: $9d
	jr nz, jr_03b_4e04                               ; $4dca: $20 $38

	halt                                             ; $4dcc: $76
	or b                                             ; $4dcd: $b0
	rst SubAFromDE                                          ; $4dce: $df
	jp $c7df                                         ; $4dcf: $c3 $df $c7


	sbc [hl]                                         ; $4dd2: $9e
	rst $38                                          ; $4dd3: $ff
	ld a, e                                          ; $4dd4: $7b
	call nc, $159a                                   ; $4dd5: $d4 $9a $15
	ld [bc], a                                       ; $4dd8: $02
	ld bc, $0402                                     ; $4dd9: $01 $02 $04
	reti                                             ; $4ddc: $d9


	rst $38                                          ; $4ddd: $ff
	sub a                                            ; $4dde: $97
	dec d                                            ; $4ddf: $15
	ld c, e                                          ; $4de0: $4b
	rla                                              ; $4de1: $17
	ld c, e                                          ; $4de2: $4b
	push af                                          ; $4de3: $f5
	ld a, [hl]                                       ; $4de4: $7e
	cp a                                             ; $4de5: $bf
	ld l, e                                          ; $4de6: $6b
	ret c                                            ; $4de7: $d8

	rst $38                                          ; $4de8: $ff
	sbc [hl]                                         ; $4de9: $9e
	rst SubAFromDE                                          ; $4dea: $df
	call c, Call_03b_7bff                            ; $4deb: $dc $ff $7b
	ld b, [hl]                                       ; $4dee: $46
	db $db                                           ; $4def: $db
	rst $38                                          ; $4df0: $ff
	sbc b                                            ; $4df1: $98
	ld sp, hl                                        ; $4df2: $f9
	db $fd                                           ; $4df3: $fd
	rst $38                                          ; $4df4: $ff
	rst $38                                          ; $4df5: $ff
	sbc a                                            ; $4df6: $9f
	rrca                                             ; $4df7: $0f
	ld h, a                                          ; $4df8: $67
	ld h, l                                          ; $4df9: $65
	ldh a, [$9e]                                     ; $4dfa: $f0 $9e
	sbc a                                            ; $4dfc: $9f
	ld [hl], d                                       ; $4dfd: $72
	sbc a                                            ; $4dfe: $9f
	sbc $fe                                          ; $4dff: $de $fe
	reti                                             ; $4e01: $d9


	rst $38                                          ; $4e02: $ff
	ld a, [hl]                                       ; $4e03: $7e

jr_03b_4e04:
	call nz, $e49b                                   ; $4e04: $c4 $9b $e4
	ld a, a                                          ; $4e07: $7f
	cp b                                             ; $4e08: $b8
	jr c, jr_03b_4e6e                                ; $4e09: $38 $63

	pop af                                           ; $4e0b: $f1
	sub [hl]                                         ; $4e0c: $96
	rst $38                                          ; $4e0d: $ff
	ld [bc], a                                       ; $4e0e: $02
	inc b                                            ; $4e0f: $04
	ld [bc], a                                       ; $4e10: $02
	ld bc, $e0c0                                     ; $4e11: $01 $c0 $e0
	ld b, b                                          ; $4e14: $40

jr_03b_4e15:
	add sp, -$22                                     ; $4e15: $e8 $de
	db $fc                                           ; $4e17: $fc
	ld [hl], e                                       ; $4e18: $73
	db $eb                                           ; $4e19: $eb
	sub [hl]                                         ; $4e1a: $96
	sbc e                                            ; $4e1b: $9b
	dec de                                           ; $4e1c: $1b
	dec de                                           ; $4e1d: $1b
	add hl, de                                       ; $4e1e: $19
	jr nz, @+$22                                     ; $4e1f: $20 $20

	cpl                                              ; $4e21: $2f
	rrca                                             ; $4e22: $0f
	ld h, a                                          ; $4e23: $67
	sbc $e7                                          ; $4e24: $de $e7

jr_03b_4e26:
	sbc $df                                          ; $4e26: $de $df
	add [hl]                                         ; $4e28: $86

jr_03b_4e29:
	rst $38                                          ; $4e29: $ff
	ld l, a                                          ; $4e2a: $6f
	rst $38                                          ; $4e2b: $ff
	ccf                                              ; $4e2c: $3f
	sbc a                                            ; $4e2d: $9f
	dec de                                           ; $4e2e: $1b
	ld [$e28f], sp                                   ; $4e2f: $08 $8f $e2
	sbc b                                            ; $4e32: $98
	ld bc, $efcf                                     ; $4e33: $01 $cf $ef
	rst SubAFromBC                                          ; $4e36: $e7
	rst FarCall                                          ; $4e37: $f7
	ldh a, [$fd]                                     ; $4e38: $f0 $fd
	ld [hl], l                                       ; $4e3a: $75
	ld a, d                                          ; $4e3b: $7a
	call nc, $fce8                                   ; $4e3c: $d4 $e8 $fc
	inc h                                            ; $4e3f: $24
	jp nz, $db7e                                     ; $4e40: $c2 $7e $db

	rst $38                                          ; $4e43: $ff
	sub l                                            ; $4e44: $95
	ccf                                              ; $4e45: $3f
	add c                                            ; $4e46: $81
	ld c, b                                          ; $4e47: $48
	adc c                                            ; $4e48: $89
	inc bc                                           ; $4e49: $03
	rlca                                             ; $4e4a: $07
	rlca                                             ; $4e4b: $07
	rrca                                             ; $4e4c: $0f
	dec b                                            ; $4e4d: $05
	jr c, jr_03b_4e29                                ; $4e4e: $38 $d9

	rst $38                                          ; $4e50: $ff
	sub l                                            ; $4e51: $95
	rst GetHLinHL                                          ; $4e52: $cf
	adc e                                            ; $4e53: $8b
	adc h                                            ; $4e54: $8c
	inc c                                            ; $4e55: $0c
	ld e, $1e                                        ; $4e56: $1e $1e
	rra                                              ; $4e58: $1f
	rra                                              ; $4e59: $1f
	db $fc                                           ; $4e5a: $fc
	db $fc                                           ; $4e5b: $fc
	sbc $f8                                          ; $4e5c: $de $f8
	ld a, [hl]                                       ; $4e5e: $7e
	ld [hl], b                                       ; $4e5f: $70
	adc [hl]                                         ; $4e60: $8e
	rst $38                                          ; $4e61: $ff
	rla                                              ; $4e62: $17
	or a                                             ; $4e63: $b7
	sub a                                            ; $4e64: $97
	adc a                                            ; $4e65: $8f
	xor a                                            ; $4e66: $af
	cpl                                              ; $4e67: $2f
	rst AddAOntoHL                                          ; $4e68: $ef
	rst SubAFromHL                                          ; $4e69: $d7
	ld [$6808], sp                                   ; $4e6a: $08 $08 $68
	ld a, b                                          ; $4e6d: $78

jr_03b_4e6e:
	ld e, b                                          ; $4e6e: $58
	ret nc                                           ; $4e6f: $d0

jr_03b_4e70:
	db $10                                           ; $4e70: $10
	cp b                                             ; $4e71: $b8
	ld e, a                                          ; $4e72: $5f
	jr jr_03b_4e70                                   ; $4e73: $18 $fb

	ld a, e                                          ; $4e75: $7b
	ld d, c                                          ; $4e76: $51
	add b                                            ; $4e77: $80
	or $fd                                           ; $4e78: $f6 $fd
	ld a, [$fffd]                                    ; $4e7a: $fa $fd $ff
	ld [bc], a                                       ; $4e7d: $02
	nop                                              ; $4e7e: $00
	nop                                              ; $4e7f: $00
	add hl, bc                                       ; $4e80: $09
	ld [bc], a                                       ; $4e81: $02
	dec b                                            ; $4e82: $05
	ld [bc], a                                       ; $4e83: $02
	nop                                              ; $4e84: $00
	xor e                                            ; $4e85: $ab
	ld d, a                                          ; $4e86: $57
	xor a                                            ; $4e87: $af
	rst SubAFromHL                                          ; $4e88: $d7
	xor a                                            ; $4e89: $af
	push de                                          ; $4e8a: $d5
	xor d                                            ; $4e8b: $aa
	ld d, l                                          ; $4e8c: $55
	ld d, h                                          ; $4e8d: $54
	xor b                                            ; $4e8e: $a8
	ld d, b                                          ; $4e8f: $50
	jr z, jr_03b_4ee2                                ; $4e90: $28 $50

	ld a, [hl+]                                      ; $4e92: $2a
	ld d, l                                          ; $4e93: $55
	xor d                                            ; $4e94: $aa
	db $f4                                           ; $4e95: $f4
	rst SubAFromHL                                          ; $4e96: $d7
	sbc h                                            ; $4e97: $9c
	ld [$ab55], a                                    ; $4e98: $ea $55 $ab
	ld a, c                                          ; $4e9b: $79
	add h                                            ; $4e9c: $84
	sbc d                                            ; $4e9d: $9a
	ld [$1528], sp                                   ; $4e9e: $08 $28 $15
	xor d                                            ; $4ea1: $aa
	ld d, h                                          ; $4ea2: $54
	ld a, c                                          ; $4ea3: $79
	ld a, e                                          ; $4ea4: $7b
	add b                                            ; $4ea5: $80
	and c                                            ; $4ea6: $a1
	ld b, b                                          ; $4ea7: $40
	adc d                                            ; $4ea8: $8a
	ld d, h                                          ; $4ea9: $54
	xor b                                            ; $4eaa: $a8
	ld d, c                                          ; $4eab: $51
	xor d                                            ; $4eac: $aa
	ld d, l                                          ; $4ead: $55
	ld e, [hl]                                       ; $4eae: $5e
	cp a                                             ; $4eaf: $bf

jr_03b_4eb0:
	ld [hl], l                                       ; $4eb0: $75
	xor e                                            ; $4eb1: $ab
	ld d, a                                          ; $4eb2: $57
	xor [hl]                                         ; $4eb3: $ae
	ld d, l                                          ; $4eb4: $55
	xor d                                            ; $4eb5: $aa
	nop                                              ; $4eb6: $00
	inc e                                            ; $4eb7: $1c
	ld d, $26                                        ; $4eb8: $16 $26
	inc h                                            ; $4eba: $24
	inc b                                            ; $4ebb: $04
	ld [hl+], a                                      ; $4ebc: $22
	inc sp                                           ; $4ebd: $33
	rst $38                                          ; $4ebe: $ff
	db $e3                                           ; $4ebf: $e3
	pop hl                                           ; $4ec0: $e1
	pop bc                                           ; $4ec1: $c1
	jp $c1e3                                         ; $4ec2: $c3 $e3 $c1


	sbc [hl]                                         ; $4ec5: $9e
	pop bc                                           ; $4ec6: $c1
	db $fc                                           ; $4ec7: $fc
	sbc h                                            ; $4ec8: $9c
	jr nz, jr_03b_4ecb                               ; $4ec9: $20 $00

jr_03b_4ecb:
	ret z                                            ; $4ecb: $c8

	ld h, a                                          ; $4ecc: $67
	nop                                              ; $4ecd: $00
	sbc l                                            ; $4ece: $9d
	ld bc, $7404                                     ; $4ecf: $01 $04 $74
	rst SubAFromDE                                          ; $4ed2: $df
	sbc l                                            ; $4ed3: $9d
	nop                                              ; $4ed4: $00
	jr z, jr_03b_4eb0                                ; $4ed5: $28 $d9

	rst $38                                          ; $4ed7: $ff
	sub a                                            ; $4ed8: $97
	db $fd                                           ; $4ed9: $fd
	cp e                                             ; $4eda: $bb
	rst $38                                          ; $4edb: $ff
	ld a, $2c                                        ; $4edc: $3e $2c
	db $10                                           ; $4ede: $10
	db $10                                           ; $4edf: $10
	jr jr_03b_4f54                                   ; $4ee0: $18 $72

jr_03b_4ee2:
	add hl, sp                                       ; $4ee2: $39
	rst SubAFromDE                                          ; $4ee3: $df
	ld hl, sp+$7b                                    ; $4ee4: $f8 $7b
	dec bc                                           ; $4ee6: $0b
	sbc d                                            ; $4ee7: $9a
	ld a, a                                          ; $4ee8: $7f
	rlca                                             ; $4ee9: $07
	ld bc, $0f01                                     ; $4eea: $01 $01 $0f
	ld a, e                                          ; $4eed: $7b
	ld l, b                                          ; $4eee: $68
	ld a, [hl]                                       ; $4eef: $7e
	jp z, $03df                                      ; $4ef0: $ca $df $03

	sub h                                            ; $4ef3: $94
	rlca                                             ; $4ef4: $07
	ld a, e                                          ; $4ef5: $7b
	rlca                                             ; $4ef6: $07
	inc bc                                           ; $4ef7: $03
	ld bc, $07b1                                     ; $4ef8: $01 $b1 $07
	add c                                            ; $4efb: $81
	db $e3                                           ; $4efc: $e3
	ld bc, $7b1f                                     ; $4efd: $01 $1f $7b
	dec [hl]                                         ; $4f00: $35
	sbc e                                            ; $4f01: $9b
	adc c                                            ; $4f02: $89
	pop bc                                           ; $4f03: $c1
	pop bc                                           ; $4f04: $c1
	ret nz                                           ; $4f05: $c0

	ld [hl], d                                       ; $4f06: $72
	pop bc                                           ; $4f07: $c1
	sbc l                                            ; $4f08: $9d
	db $fc                                           ; $4f09: $fc
	ld sp, hl                                        ; $4f0a: $f9
	ld l, [hl]                                       ; $4f0b: $6e
	add hl, bc                                       ; $4f0c: $09
	sbc [hl]                                         ; $4f0d: $9e
	db $fc                                           ; $4f0e: $fc
	ld a, e                                          ; $4f0f: $7b
	ld d, d                                          ; $4f10: $52
	ld a, d                                          ; $4f11: $7a
	ld c, h                                          ; $4f12: $4c
	sbc e                                            ; $4f13: $9b
	cp a                                             ; $4f14: $bf
	cp e                                             ; $4f15: $bb
	ld [hl], a                                       ; $4f16: $77
	ei                                               ; $4f17: $fb
	ld [hl], e                                       ; $4f18: $73
	rst FarCall                                          ; $4f19: $f7
	ld a, d                                          ; $4f1a: $7a
	ccf                                              ; $4f1b: $3f
	ld a, d                                          ; $4f1c: $7a
	ret                                              ; $4f1d: $c9


	ld a, a                                          ; $4f1e: $7f
	cp $9c                                           ; $4f1f: $fe $9c
	cp $fb                                           ; $4f21: $fe $fb
	db $db                                           ; $4f23: $db
	reti                                             ; $4f24: $d9


	rst $38                                          ; $4f25: $ff
	dec e                                            ; $4f26: $1d
	nop                                              ; $4f27: $00
	rst SubAFromDE                                          ; $4f28: $df
	ld b, h                                          ; $4f29: $44
	sbc [hl]                                         ; $4f2a: $9e
	ld b, l                                          ; $4f2b: $45
	db $dd                                           ; $4f2c: $dd
	ld h, [hl]                                       ; $4f2d: $66
	sub l                                            ; $4f2e: $95
	ld h, e                                          ; $4f2f: $63
	ld h, [hl]                                       ; $4f30: $66
	ld h, [hl]                                       ; $4f31: $66
	ld b, h                                          ; $4f32: $44
	ld b, h                                          ; $4f33: $44
	ld b, [hl]                                       ; $4f34: $46
	ld h, [hl]                                       ; $4f35: $66
	ld h, [hl]                                       ; $4f36: $66
	ld [hl], $36                                     ; $4f37: $36 $36
	sbc $66                                          ; $4f39: $de $66
	ld [hl], e                                       ; $4f3b: $73
	or $7f                                           ; $4f3c: $f6 $7f
	xor $9c                                          ; $4f3e: $ee $9c
	inc sp                                           ; $4f40: $33
	ld [hl], $66                                     ; $4f41: $36 $66
	ld de, $8005                                     ; $4f43: $11 $05 $80
	add a                                            ; $4f46: $87
	ld a, a                                          ; $4f47: $7f
	ld h, a                                          ; $4f48: $67
	sbc a                                            ; $4f49: $9f
	ld h, a                                          ; $4f4a: $67
	sbc a                                            ; $4f4b: $9f
	rrca                                             ; $4f4c: $0f
	rst $38                                          ; $4f4d: $ff
	adc e                                            ; $4f4e: $8b
	ld a, a                                          ; $4f4f: $7f
	ld [$de1f], a                                    ; $4f50: $ea $1f $de
	ccf                                              ; $4f53: $3f

jr_03b_4f54:
	reti                                             ; $4f54: $d9


	ld a, $c6                                        ; $4f55: $3e $c6
	ld sp, hl                                        ; $4f57: $f9
	jp nz, $e1fd                                     ; $4f58: $c2 $fd $e1

	rst $38                                          ; $4f5b: $ff
	di                                               ; $4f5c: $f3
	rst $38                                          ; $4f5d: $ff
	ld a, e                                          ; $4f5e: $7b
	rst $38                                          ; $4f5f: $ff
	ld e, d                                          ; $4f60: $5a
	rst $38                                          ; $4f61: $ff

jr_03b_4f62:
	cp d                                             ; $4f62: $ba
	rst $38                                          ; $4f63: $ff
	ld e, b                                          ; $4f64: $58
	add b                                            ; $4f65: $80
	rst $38                                          ; $4f66: $ff
	rrca                                             ; $4f67: $0f
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4f68: $f0 $81
	cp $ff                                           ; $4f6a: $fe $ff
	rst $38                                          ; $4f6c: $ff
	ld a, a                                          ; $4f6d: $7f
	rst $38                                          ; $4f6e: $ff
	ld a, l                                          ; $4f6f: $7d
	rst $38                                          ; $4f70: $ff
	cp [hl]                                          ; $4f71: $be
	rst $38                                          ; $4f72: $ff
	dec e                                            ; $4f73: $1d
	rst $38                                          ; $4f74: $ff
	cp e                                             ; $4f75: $bb
	ld a, a                                          ; $4f76: $7f
	add l                                            ; $4f77: $85
	ld a, a                                          ; $4f78: $7f
	add sp, $1f                                      ; $4f79: $e8 $1f
	ld de, $aaff                                     ; $4f7b: $11 $ff $aa
	rst $38                                          ; $4f7e: $ff
	pop de                                           ; $4f7f: $d1
	cp $e0                                           ; $4f80: $fe $e0
	cp $d4                                           ; $4f82: $fe $d4
	cp $9d                                           ; $4f84: $fe $9d
	and c                                            ; $4f86: $a1
	cp $7b                                           ; $4f87: $fe $7b
	push de                                          ; $4f89: $d5
	add b                                            ; $4f8a: $80
	ldh a, [$ef]                                     ; $4f8b: $f0 $ef
	ldh a, [$be]                                     ; $4f8d: $f0 $be
	pop hl                                           ; $4f8f: $e1
	or h                                             ; $4f90: $b4
	ld l, e                                          ; $4f91: $6b
	push de                                          ; $4f92: $d5
	ld l, d                                          ; $4f93: $6a
	pop af                                           ; $4f94: $f1
	ld c, [hl]                                       ; $4f95: $4e
	pop af                                           ; $4f96: $f1
	adc $f7                                          ; $4f97: $ce $f7
	ld hl, sp+$6f                                    ; $4f99: $f8 $6f
	ldh a, [$1f]                                     ; $4f9b: $f0 $1f
	ldh [rIE], a                                     ; $4f9d: $e0 $ff
	jr nz, @+$01                                     ; $4f9f: $20 $ff

	jr nz, jr_03b_4f62                               ; $4fa1: $20 $bf

	ld b, b                                          ; $4fa3: $40
	rst $38                                          ; $4fa4: $ff

jr_03b_4fa5:
	ld b, b                                          ; $4fa5: $40
	rst SubAFromDE                                          ; $4fa6: $df
	ld h, b                                          ; $4fa7: $60
	rst $38                                          ; $4fa8: $ff
	nop                                              ; $4fa9: $00
	ld e, a                                          ; $4faa: $5f
	cp $9b                                           ; $4fab: $fe $9b
	ldh [$1f], a                                     ; $4fad: $e0 $1f
	db $e4                                           ; $4faf: $e4
	inc de                                           ; $4fb0: $13
	ld e, a                                          ; $4fb1: $5f
	ldh a, [c]                                       ; $4fb2: $f2
	ld a, a                                          ; $4fb3: $7f
	and [hl]                                         ; $4fb4: $a6
	sbc c                                            ; $4fb5: $99
	ld c, a                                          ; $4fb6: $4f
	or b                                             ; $4fb7: $b0
	rlca                                             ; $4fb8: $07
	jr jr_03b_4fa5                                   ; $4fb9: $18 $ea

	dec d                                            ; $4fbb: $15
	ld l, a                                          ; $4fbc: $6f

jr_03b_4fbd:
	ldh a, [c]                                       ; $4fbd: $f2
	sub e                                            ; $4fbe: $93
	ld a, [hl]                                       ; $4fbf: $7e
	add c                                            ; $4fc0: $81
	rst $38                                          ; $4fc1: $ff
	nop                                              ; $4fc2: $00
	push af                                          ; $4fc3: $f5
	ld a, [bc]                                       ; $4fc4: $0a
	rst $38                                          ; $4fc5: $ff
	nop                                              ; $4fc6: $00
	xor d                                            ; $4fc7: $aa
	ld d, l                                          ; $4fc8: $55
	ld d, l                                          ; $4fc9: $55
	xor d                                            ; $4fca: $aa
	ld l, a                                          ; $4fcb: $6f
	db $fc                                           ; $4fcc: $fc
	sub e                                            ; $4fcd: $93
	ld d, a                                          ; $4fce: $57
	xor b                                            ; $4fcf: $a8
	xor d                                            ; $4fd0: $aa
	ld d, l                                          ; $4fd1: $55
	ld d, c                                          ; $4fd2: $51
	xor [hl]                                         ; $4fd3: $ae
	xor b                                            ; $4fd4: $a8
	ld d, a                                          ; $4fd5: $57
	ld d, b                                          ; $4fd6: $50
	xor a                                            ; $4fd7: $af
	and h                                            ; $4fd8: $a4
	ld e, e                                          ; $4fd9: $5b
	ld [hl], a                                       ; $4fda: $77
	db $fc                                           ; $4fdb: $fc
	add b                                            ; $4fdc: $80
	ld c, b                                          ; $4fdd: $48
	or a                                             ; $4fde: $b7
	inc b                                            ; $4fdf: $04
	ei                                               ; $4fe0: $fb
	jr z, @-$27                                      ; $4fe1: $28 $d7

	add e                                            ; $4fe3: $83
	ld bc, $0081                                     ; $4fe4: $01 $81 $00
	pop bc                                           ; $4fe7: $c1
	nop                                              ; $4fe8: $00
	ld b, b                                          ; $4fe9: $40
	add c                                            ; $4fea: $81
	rst JumpTable                                          ; $4feb: $c7
	add c                                            ; $4fec: $81
	ld l, b                                          ; $4fed: $68
	add a                                            ; $4fee: $87
	inc [hl]                                         ; $4fef: $34
	rst GetHLinHL                                          ; $4ff0: $cf
	jr @+$01                                         ; $4ff1: $18 $ff

	sbc b                                            ; $4ff3: $98
	adc a                                            ; $4ff4: $8f
	adc b                                            ; $4ff5: $88
	rra                                              ; $4ff6: $1f
	db $10                                           ; $4ff7: $10
	ld a, a                                          ; $4ff8: $7f
	ld b, b                                          ; $4ff9: $40
	rst $38                                          ; $4ffa: $ff
	ld bc, $bb7b                                     ; $4ffb: $01 $7b $bb

jr_03b_4ffe:
	ld [hl], a                                       ; $4ffe: $77
	db $fc                                           ; $4fff: $fc
	ld a, a                                          ; $5000: $7f
	adc a                                            ; $5001: $8f
	sbc d                                            ; $5002: $9a
	add h                                            ; $5003: $84
	rst $38                                          ; $5004: $ff
	ld a, [bc]                                       ; $5005: $0a
	rst $38                                          ; $5006: $ff
	sub l                                            ; $5007: $95
	ld a, e                                          ; $5008: $7b
	ld e, [hl]                                       ; $5009: $5e
	rst SubAFromDE                                          ; $500a: $df
	rst $38                                          ; $500b: $ff
	ld a, a                                          ; $500c: $7f
	ld c, h                                          ; $500d: $4c
	ld a, a                                          ; $500e: $7f
	cp $7f                                           ; $500f: $fe $7f
	ld h, $96                                        ; $5011: $26 $96
	scf                                              ; $5013: $37
	rst $38                                          ; $5014: $ff
	rst SubAFromDE                                          ; $5015: $df
	rst $38                                          ; $5016: $ff
	ld l, e                                          ; $5017: $6b
	rst $38                                          ; $5018: $ff
	cp a                                             ; $5019: $bf
	rst $38                                          ; $501a: $ff
	ld c, a                                          ; $501b: $4f
	sbc $ff                                          ; $501c: $de $ff
	ld a, a                                          ; $501e: $7f
	jr c, jr_03b_4fbd                                ; $501f: $38 $9c

	ld hl, sp-$10                                    ; $5021: $f8 $f0
	ldh [$7b], a                                     ; $5023: $e0 $7b
	jr nc, jr_03b_4ffe                               ; $5025: $30 $d7

	rst $38                                          ; $5027: $ff
	db $fc                                           ; $5028: $fc
	sbc b                                            ; $5029: $98
	add b                                            ; $502a: $80
	ret nz                                           ; $502b: $c0

	ret nz                                           ; $502c: $c0

	ldh [$c0], a                                     ; $502d: $e0 $c0
	ldh [c], a                                       ; $502f: $e2
	db $fd                                           ; $5030: $fd
	db $dd                                           ; $5031: $dd
	rst $38                                          ; $5032: $ff
	sub d                                            ; $5033: $92
	ld e, a                                          ; $5034: $5f
	rrca                                             ; $5035: $0f
	rra                                              ; $5036: $1f
	rrca                                             ; $5037: $0f
	rra                                              ; $5038: $1f
	rra                                              ; $5039: $1f
	dec e                                            ; $503a: $1d
	inc bc                                           ; $503b: $03
	dec b                                            ; $503c: $05
	inc bc                                           ; $503d: $03
	rst GetHLinHL                                          ; $503e: $cf
	add a                                            ; $503f: $87
	sbc a                                            ; $5040: $9f
	sbc $ff                                          ; $5041: $de $ff
	sub l                                            ; $5043: $95
	scf                                              ; $5044: $37
	cp a                                             ; $5045: $bf
	ld h, a                                          ; $5046: $67
	or e                                             ; $5047: $b3
	rst GetHLinHL                                          ; $5048: $cf
	rst SubAFromBC                                          ; $5049: $e7
	rst GetHLinHL                                          ; $504a: $cf
	rst $38                                          ; $504b: $ff
	cp $fd                                           ; $504c: $fe $fd
	ld [hl], e                                       ; $504e: $73
	pop hl                                           ; $504f: $e1
	jp c, Jump_03b_7fff                              ; $5050: $da $ff $7f

	db $ed                                           ; $5053: $ed
	sbc d                                            ; $5054: $9a
	add e                                            ; $5055: $83
	rst GetHLinHL                                          ; $5056: $cf
	ld l, a                                          ; $5057: $6f
	sbc a                                            ; $5058: $9f
	cp a                                             ; $5059: $bf
	sbc $ff                                          ; $505a: $de $ff
	add h                                            ; $505c: $84
	db $dd                                           ; $505d: $dd
	ld a, $91                                        ; $505e: $3e $91
	ld a, [hl]                                       ; $5060: $7e
	dec de                                           ; $5061: $1b
	db $fc                                           ; $5062: $fc
	call nc, $d43f                                   ; $5063: $d4 $3f $d4
	dec sp                                           ; $5066: $3b
	pop af                                           ; $5067: $f1
	ccf                                              ; $5068: $3f
	ld e, d                                          ; $5069: $5a
	cp a                                             ; $506a: $bf
	ld bc, $38ff                                     ; $506b: $01 $ff $38
	rst $38                                          ; $506e: $ff
	sbc d                                            ; $506f: $9a
	ld a, l                                          ; $5070: $7d
	xor h                                            ; $5071: $ac
	ld a, e                                          ; $5072: $7b
	sbc $79                                          ; $5073: $de $79
	inc h                                            ; $5075: $24
	ei                                               ; $5076: $fb
	ld d, b                                          ; $5077: $50
	ld a, e                                          ; $5078: $7b
	ld a, h                                          ; $5079: $7c
	sbc d                                            ; $507a: $9a
	ld d, h                                          ; $507b: $54
	rst $38                                          ; $507c: $ff
	ld d, l                                          ; $507d: $55
	rst $38                                          ; $507e: $ff
	ld a, [hl+]                                      ; $507f: $2a
	ld a, e                                          ; $5080: $7b
	adc c                                            ; $5081: $89
	add b                                            ; $5082: $80
	jr c, jr_03b_5104                                ; $5083: $38 $7f

	dec d                                            ; $5085: $15
	rst $38                                          ; $5086: $ff
	ld l, d                                          ; $5087: $6a
	cp a                                             ; $5088: $bf
	dec b                                            ; $5089: $05
	rst $38                                          ; $508a: $ff
	adc a                                            ; $508b: $8f
	rra                                              ; $508c: $1f
	ldh a, [c]                                       ; $508d: $f2
	rst $38                                          ; $508e: $ff
	xor c                                            ; $508f: $a9
	rst $38                                          ; $5090: $ff
	push de                                          ; $5091: $d5
	rst $38                                          ; $5092: $ff
	db $eb                                           ; $5093: $eb
	rst $38                                          ; $5094: $ff
	ld [bc], a                                       ; $5095: $02
	rst $38                                          ; $5096: $ff
	xor c                                            ; $5097: $a9
	cp $53                                           ; $5098: $fe $53
	cp $af                                           ; $509a: $fe $af
	cp $a3                                           ; $509c: $fe $a3
	call c, $bcc3                                    ; $509e: $dc $c3 $bc
	add $8e                                          ; $50a1: $c6 $8e
	cp c                                             ; $50a3: $b9
	ld b, [hl]                                       ; $50a4: $46
	cp c                                             ; $50a5: $b9
	add l                                            ; $50a6: $85
	ld a, e                                          ; $50a7: $7b
	adc l                                            ; $50a8: $8d
	ld [hl], e                                       ; $50a9: $73
	rst SubAFromBC                                          ; $50aa: $e7
	ld a, [de]                                       ; $50ab: $1a
	ei                                               ; $50ac: $fb
	ld b, $5f                                        ; $50ad: $06 $5f
	ldh [$df], a                                     ; $50af: $e0 $df
	and b                                            ; $50b1: $a0
	cp a                                             ; $50b2: $bf
	ret nz                                           ; $50b3: $c0

	ld e, [hl]                                       ; $50b4: $5e
	jp c, $e292                                      ; $50b5: $da $92 $e2

	ld bc, $01e0                                     ; $50b8: $01 $e0 $01
	jp nz, $c021                                     ; $50bb: $c2 $21 $c0

	ccf                                              ; $50be: $3f
	ld a, [$fd05]                                    ; $50bf: $fa $05 $fd
	ld [bc], a                                       ; $50c2: $02
	cp $7b                                           ; $50c3: $fe $7b
	rra                                              ; $50c5: $1f
	adc c                                            ; $50c6: $89
	rla                                              ; $50c7: $17
	ld [$9827], sp                                   ; $50c8: $08 $27 $98
	rlca                                             ; $50cb: $07
	ld hl, sp-$5e                                    ; $50cc: $f8 $a2
	ld e, l                                          ; $50ce: $5d

jr_03b_50cf:
	rst AddAOntoHL                                          ; $50cf: $ef
	db $10                                           ; $50d0: $10
	ld a, l                                          ; $50d1: $7d
	add d                                            ; $50d2: $82
	call nc, $bb2b                                   ; $50d3: $d4 $2b $bb
	ld b, h                                          ; $50d6: $44
	jr z, @-$27                                      ; $50d7: $28 $d7

	inc b                                            ; $50d9: $04
	ei                                               ; $50da: $fb
	ld c, b                                          ; $50db: $48
	or a                                             ; $50dc: $b7
	ld l, [hl]                                       ; $50dd: $6e
	sbc $7f                                          ; $50de: $de $7f
	db $fc                                           ; $50e0: $fc
	ld a, [hl]                                       ; $50e1: $7e
	jp nc, $a093                                     ; $50e2: $d2 $93 $a0

	ld e, a                                          ; $50e5: $5f
	ld c, d                                          ; $50e6: $4a
	or l                                             ; $50e7: $b5
	add b                                            ; $50e8: $80
	ld a, a                                          ; $50e9: $7f
	ld b, b                                          ; $50ea: $40
	cp a                                             ; $50eb: $bf
	nop                                              ; $50ec: $00
	rst $38                                          ; $50ed: $ff
	jr nz, jr_03b_50cf                               ; $50ee: $20 $df

	ld [hl], a                                       ; $50f0: $77
	cp a                                             ; $50f1: $bf
	sbc e                                            ; $50f2: $9b
	db $10                                           ; $50f3: $10
	rst AddAOntoHL                                          ; $50f4: $ef
	ld [$5af7], sp                                   ; $50f5: $08 $f7 $5a
	ld a, l                                          ; $50f8: $7d
	dec de                                           ; $50f9: $1b
	cp $9e                                           ; $50fa: $fe $9e
	inc bc                                           ; $50fc: $03
	ld a, e                                          ; $50fd: $7b

jr_03b_50fe:
	cp $7f                                           ; $50fe: $fe $7f
	ld l, d                                          ; $5100: $6a
	sbc [hl]                                         ; $5101: $9e
	ccf                                              ; $5102: $3f
	ld a, d                                          ; $5103: $7a

jr_03b_5104:
	adc $97                                          ; $5104: $ce $97
	ld l, l                                          ; $5106: $6d
	cp $ff                                           ; $5107: $fe $ff
	db $fc                                           ; $5109: $fc
	adc d                                            ; $510a: $8a
	db $fc                                           ; $510b: $fc
	ld [hl], h                                       ; $510c: $74
	add b                                            ; $510d: $80
	db $fd                                           ; $510e: $fd
	rst SubAFromDE                                          ; $510f: $df
	rst $38                                          ; $5110: $ff
	ld a, a                                          ; $5111: $7f
	ld a, [de]                                       ; $5112: $1a
	sbc c                                            ; $5113: $99
	cp $3f                                           ; $5114: $fe $3f

jr_03b_5116:
	ld a, l                                          ; $5116: $7d
	ld a, $1e                                        ; $5117: $3e $1e
	jr nc, jr_03b_5116                               ; $5119: $30 $fb

	db $dd                                           ; $511b: $dd
	rst $38                                          ; $511c: $ff
	ld a, [hl]                                       ; $511d: $7e
	cp d                                             ; $511e: $ba
	ld a, a                                          ; $511f: $7f
	db $fd                                           ; $5120: $fd
	sub a                                            ; $5121: $97
	ccf                                              ; $5122: $3f
	ld a, a                                          ; $5123: $7f
	rrca                                             ; $5124: $0f
	rra                                              ; $5125: $1f
	jr z, jr_03b_5144                                ; $5126: $28 $1c

	ld d, b                                          ; $5128: $50
	jr nc, jr_03b_50fe                               ; $5129: $30 $d3

	rst $38                                          ; $512b: $ff
	ld a, e                                          ; $512c: $7b
	and $da                                          ; $512d: $e6 $da
	rst $38                                          ; $512f: $ff
	sbc b                                            ; $5130: $98
	sbc e                                            ; $5131: $9b
	di                                               ; $5132: $f3
	add b                                            ; $5133: $80
	add e                                            ; $5134: $83
	call nz, $ee8f                                   ; $5135: $c4 $8f $ee
	ret c                                            ; $5138: $d8

	rst $38                                          ; $5139: $ff
	sbc [hl]                                         ; $513a: $9e
	ld [hl], a                                       ; $513b: $77
	ld [hl], a                                       ; $513c: $77
	db $e4                                           ; $513d: $e4
	sbc h                                            ; $513e: $9c
	ccf                                              ; $513f: $3f
	inc sp                                           ; $5140: $33
	rrca                                             ; $5141: $0f
	db $dd                                           ; $5142: $dd
	rst $38                                          ; $5143: $ff

jr_03b_5144:
	ld a, a                                          ; $5144: $7f
	and c                                            ; $5145: $a1
	db $dd                                           ; $5146: $dd
	cp $80                                           ; $5147: $fe $80
	ld sp, hl                                        ; $5149: $f9
	rst $38                                          ; $514a: $ff
	pop af                                           ; $514b: $f1
	ld sp, hl                                        ; $514c: $f9
	reti                                             ; $514d: $d9


	ld hl, sp-$0a                                    ; $514e: $f8 $f6
	add hl, sp                                       ; $5150: $39
	jp nz, $b43d                                     ; $5151: $c2 $3d $b4

	dec de                                           ; $5154: $1b
	sbc l                                            ; $5155: $9d
	dec de                                           ; $5156: $1b
	ld a, [$e10f]                                    ; $5157: $fa $0f $e1
	rst GetHLinHL                                          ; $515a: $cf
	db $fc                                           ; $515b: $fc
	rlca                                             ; $515c: $07
	reti                                             ; $515d: $d9


	daa                                              ; $515e: $27
	xor e                                            ; $515f: $ab
	cp $54                                           ; $5160: $fe $54
	cp $a8                                           ; $5162: $fe $a8
	cp $50                                           ; $5164: $fe $50
	db $ec                                           ; $5166: $ec
	xor h                                            ; $5167: $ac
	sbc e                                            ; $5168: $9b
	call nz, $ee54                                   ; $5169: $c4 $54 $ee
	and a                                            ; $516c: $a7
	ld a, d                                          ; $516d: $7a
	jp nz, $0b9d                                     ; $516e: $c2 $9d $0b

	rla                                              ; $5171: $17
	db $dd                                           ; $5172: $dd
	rrca                                             ; $5173: $0f
	ld a, [hl]                                       ; $5174: $7e
	ld l, h                                          ; $5175: $6c
	adc [hl]                                         ; $5176: $8e
	dec hl                                           ; $5177: $2b
	dec e                                            ; $5178: $1d
	dec d                                            ; $5179: $15
	add hl, sp                                       ; $517a: $39
	cp c                                             ; $517b: $b9
	ld [hl], e                                       ; $517c: $73
	ei                                               ; $517d: $fb
	rst $38                                          ; $517e: $ff
	ld c, a                                          ; $517f: $4f
	db $fc                                           ; $5180: $fc
	dec sp                                           ; $5181: $3b
	db $fc                                           ; $5182: $fc
	ld e, a                                          ; $5183: $5f
	ld hl, sp+$37                                    ; $5184: $f8 $37
	ld hl, sp-$41                                    ; $5186: $f8 $bf
	ld a, c                                          ; $5188: $79
	adc d                                            ; $5189: $8a
	sub d                                            ; $518a: $92
	rst $38                                          ; $518b: $ff
	ldh [$df], a                                     ; $518c: $e0 $df
	ldh [$c7], a                                     ; $518e: $e0 $c7
	inc b                                            ; $5190: $04
	push bc                                          ; $5191: $c5
	ld [bc], a                                       ; $5192: $02
	adc e                                            ; $5193: $8b
	inc b                                            ; $5194: $04
	adc c                                            ; $5195: $89
	nop                                              ; $5196: $00
	db $d3                                           ; $5197: $d3
	ld a, e                                          ; $5198: $7b
	add hl, de                                       ; $5199: $19
	ld a, [hl]                                       ; $519a: $7e
	db $ec                                           ; $519b: $ec
	sbc l                                            ; $519c: $9d
	rst SubAFromDE                                          ; $519d: $df
	jr nz, jr_03b_51d3                               ; $519e: $20 $33

	dec h                                            ; $51a0: $25
	ld a, [hl]                                       ; $51a1: $7e
	ret z                                            ; $51a2: $c8

	sbc [hl]                                         ; $51a3: $9e
	ld bc, $c47a                                     ; $51a4: $01 $7a $c4
	sbc l                                            ; $51a7: $9d
	inc bc                                           ; $51a8: $03
	cp $7b                                           ; $51a9: $fe $7b
	ld a, [$ed92]                                    ; $51ab: $fa $92 $ed
	ld [de], a                                       ; $51ae: $12
	ld [bc], a                                       ; $51af: $02
	db $fd                                           ; $51b0: $fd
	add c                                            ; $51b1: $81
	ld c, $00                                        ; $51b2: $0e $00
	rlca                                             ; $51b4: $07
	ld bc, $0686                                     ; $51b5: $01 $86 $06
	adc a                                            ; $51b8: $8f
	call z, Call_03b_527a                            ; $51b9: $cc $7a $52
	sbc c                                            ; $51bc: $99
	ld b, d                                          ; $51bd: $42
	cp l                                             ; $51be: $bd
	or h                                             ; $51bf: $b4
	ld c, e                                          ; $51c0: $4b
	ld b, b                                          ; $51c1: $40
	cp a                                             ; $51c2: $bf
	halt                                             ; $51c3: $76
	call c, $cc76                                    ; $51c4: $dc $76 $cc
	sbc e                                            ; $51c7: $9b
	sub b                                            ; $51c8: $90
	ld h, a                                          ; $51c9: $67
	db $10                                           ; $51ca: $10
	rst AddAOntoHL                                          ; $51cb: $ef
	ld d, $dc                                        ; $51cc: $16 $dc
	ld [hl], l                                       ; $51ce: $75
	sbc [hl]                                         ; $51cf: $9e
	ld e, a                                          ; $51d0: $5f
	cp $7e                                           ; $51d1: $fe $7e

jr_03b_51d3:
	ld e, c                                          ; $51d3: $59
	ld a, l                                          ; $51d4: $7d
	rla                                              ; $51d5: $17
	sub h                                            ; $51d6: $94
	rlca                                             ; $51d7: $07
	cp $04                                           ; $51d8: $fe $04
	cp $0c                                           ; $51da: $fe $0c
	db $fc                                           ; $51dc: $fc
	rla                                              ; $51dd: $17
	db $fc                                           ; $51de: $fc
	rra                                              ; $51df: $1f
	rst $38                                          ; $51e0: $ff
	rra                                              ; $51e1: $1f
	ld a, d                                          ; $51e2: $7a
	call nz, $1c7f                                   ; $51e3: $c4 $7f $1c
	ei                                               ; $51e6: $fb
	sbc l                                            ; $51e7: $9d
	ld h, b                                          ; $51e8: $60
	nop                                              ; $51e9: $00
	ld a, c                                          ; $51ea: $79
	xor a                                            ; $51eb: $af
	sbc $c0                                          ; $51ec: $de $c0
	sbc l                                            ; $51ee: $9d
	and c                                            ; $51ef: $a1
	ret c                                            ; $51f0: $d8

	db $fd                                           ; $51f1: $fd
	sbc c                                            ; $51f2: $99
	ld bc, $2e00                                     ; $51f3: $01 $00 $2e
	ld sp, $3f39                                     ; $51f6: $31 $39 $3f
	ld a, d                                          ; $51f9: $7a
	call $ffde                                       ; $51fa: $cd $de $ff
	sbc e                                            ; $51fd: $9b
	ld h, c                                          ; $51fe: $61
	ld hl, $6fe7                                     ; $51ff: $21 $e7 $6f
	push de                                          ; $5202: $d5
	rst $38                                          ; $5203: $ff
	sbc e                                            ; $5204: $9b
	adc a                                            ; $5205: $8f
	rst SubAFromDE                                          ; $5206: $df
	adc a                                            ; $5207: $8f
	rst SubAFromDE                                          ; $5208: $df
	reti                                             ; $5209: $d9


	rst $38                                          ; $520a: $ff
	sub a                                            ; $520b: $97
	rst JumpTable                                          ; $520c: $c7
	rst AddAOntoHL                                          ; $520d: $ef
	set 4, c                                         ; $520e: $cb $e1
	db $fc                                           ; $5210: $fc
	cp $f0                                           ; $5211: $fe $f0
	ld hl, sp+$79                                    ; $5213: $f8 $79
	ld e, h                                          ; $5215: $5c
	rst SubAFromDE                                          ; $5216: $df
	ldh a, [$df]                                     ; $5217: $f0 $df
	ldh [$df], a                                     ; $5219: $e0 $df
	ldh a, [$df]                                     ; $521b: $f0 $df
	ld hl, sp-$67                                    ; $521d: $f8 $99
	db $fc                                           ; $521f: $fc
	add hl, bc                                       ; $5220: $09
	rlca                                             ; $5221: $07
	rrca                                             ; $5222: $0f
	ld b, $01                                        ; $5223: $06 $01
	or $9e                                           ; $5225: $f6 $9e
	add hl, sp                                       ; $5227: $39
	ld a, e                                          ; $5228: $7b
	sbc d                                            ; $5229: $9a
	adc d                                            ; $522a: $8a
	ld [hl], d                                       ; $522b: $72
	rst $38                                          ; $522c: $ff
	ldh [c], a                                       ; $522d: $e2
	ld a, a                                          ; $522e: $7f
	and [hl]                                         ; $522f: $a6
	ld a, a                                          ; $5230: $7f
	ld a, a                                          ; $5231: $7f
	ccf                                              ; $5232: $3f
	jr nz, jr_03b_5254                               ; $5233: $20 $1f

	rra                                              ; $5235: $1f
	nop                                              ; $5236: $00
	inc c                                            ; $5237: $0c
	di                                               ; $5238: $f3
	dec b                                            ; $5239: $05
	ei                                               ; $523a: $fb
	ld a, d                                          ; $523b: $7a
	db $fd                                           ; $523c: $fd
	inc a                                            ; $523d: $3c
	rst $38                                          ; $523e: $ff
	ld h, a                                          ; $523f: $67
	ld a, c                                          ; $5240: $79
	xor d                                            ; $5241: $aa
	sbc h                                            ; $5242: $9c
	jp z, $d4ff                                      ; $5243: $ca $ff $d4

	ld a, c                                          ; $5246: $79
	adc h                                            ; $5247: $8c
	ld a, [hl]                                       ; $5248: $7e
	call z, $fc77                                    ; $5249: $cc $77 $fc
	ld a, l                                          ; $524c: $7d
	adc d                                            ; $524d: $8a
	ld a, a                                          ; $524e: $7f
	ldh a, [$7f]                                     ; $524f: $f0 $7f
	ld hl, sp+$7f                                    ; $5251: $f8 $7f
	ld e, h                                          ; $5253: $5c

jr_03b_5254:
	add b                                            ; $5254: $80
	and [hl]                                         ; $5255: $a6
	rst $38                                          ; $5256: $ff
	ld d, c                                          ; $5257: $51
	rst $38                                          ; $5258: $ff
	xor e                                            ; $5259: $ab
	rst $38                                          ; $525a: $ff
	ld d, a                                          ; $525b: $57
	rst $38                                          ; $525c: $ff
	xor a                                            ; $525d: $af
	cp $5f                                           ; $525e: $fe $5f
	db $fc                                           ; $5260: $fc
	cp b                                             ; $5261: $b8
	db $fc                                           ; $5262: $fc
	scf                                              ; $5263: $37
	ld hl, sp-$10                                    ; $5264: $f8 $f0
	rst JumpTable                                          ; $5266: $c7
	or b                                             ; $5267: $b0
	rst GetHLinHL                                          ; $5268: $cf
	add c                                            ; $5269: $81
	cp $c3                                           ; $526a: $fe $c3
	ld a, h                                          ; $526c: $7c
	and e                                            ; $526d: $a3
	ld a, l                                          ; $526e: $7d
	sub $3b                                          ; $526f: $d6 $3b
	adc a                                            ; $5271: $8f
	ld e, $1d                                        ; $5272: $1e $1d
	sbc d                                            ; $5274: $9a
	ld c, $df                                        ; $5275: $0e $df
	ld h, b                                          ; $5277: $60
	rst SubAFromDE                                          ; $5278: $df
	ld h, b                                          ; $5279: $60

Call_03b_527a:
	ld a, c                                          ; $527a: $79
	sub b                                            ; $527b: $90
	sbc [hl]                                         ; $527c: $9e
	add b                                            ; $527d: $80
	ld d, a                                          ; $527e: $57
	daa                                              ; $527f: $27
	add a                                            ; $5280: $87
	rst FarCall                                          ; $5281: $f7
	ld [$04fb], sp                                   ; $5282: $08 $fb $04
	sbc a                                            ; $5285: $9f
	ld h, b                                          ; $5286: $60
	adc a                                            ; $5287: $8f
	ld [hl], b                                       ; $5288: $70
	rrca                                             ; $5289: $0f
	sub b                                            ; $528a: $90
	rlca                                             ; $528b: $07
	sbc b                                            ; $528c: $98
	push de                                          ; $528d: $d5
	ld a, [hl+]                                      ; $528e: $2a
	ld [$f515], a                                    ; $528f: $ea $15 $f5
	ld a, [bc]                                       ; $5292: $0a
	db $eb                                           ; $5293: $eb
	inc d                                            ; $5294: $14
	push af                                          ; $5295: $f5
	ld a, [bc]                                       ; $5296: $0a
	xor e                                            ; $5297: $ab
	ld d, h                                          ; $5298: $54
	ld [hl], h                                       ; $5299: $74
	ld l, d                                          ; $529a: $6a
	ld b, c                                          ; $529b: $41
	sub b                                            ; $529c: $90
	sbc d                                            ; $529d: $9a
	ld b, a                                          ; $529e: $47
	ld [$a0c7], sp                                   ; $529f: $08 $c7 $a0
	ld e, a                                          ; $52a2: $5f
	ld l, l                                          ; $52a3: $6d
	sub d                                            ; $52a4: $92
	halt                                             ; $52a5: $76
	cp [hl]                                          ; $52a6: $be
	ld b, a                                          ; $52a7: $47
	cp $7d                                           ; $52a8: $fe $7d
	xor [hl]                                         ; $52aa: $ae
	sbc [hl]                                         ; $52ab: $9e
	ld [hl-], a                                      ; $52ac: $32
	ld a, e                                          ; $52ad: $7b
	cp $7f                                           ; $52ae: $fe $7f
	ld a, [$7d7a]                                    ; $52b0: $fa $7a $7d
	ld [hl], e                                       ; $52b3: $73
	ldh a, [$98]                                     ; $52b4: $f0 $98
	ldh a, [$3f]                                     ; $52b6: $f0 $3f
	jr nc, jr_03b_52f9                               ; $52b8: $30 $3f

	ld [hl], b                                       ; $52ba: $70
	ccf                                              ; $52bb: $3f
	ldh [$7a], a                                     ; $52bc: $e0 $7a
	push af                                          ; $52be: $f5
	sbc d                                            ; $52bf: $9a
	and l                                            ; $52c0: $a5
	cp $5c                                           ; $52c1: $fe $5c
	ldh [rLCDC], a                                   ; $52c3: $e0 $40
	ld a, e                                          ; $52c5: $7b
	rst FarCall                                          ; $52c6: $f7
	ld a, a                                          ; $52c7: $7f
	cp $7c                                           ; $52c8: $fe $7c
	ld e, d                                          ; $52ca: $5a
	halt                                             ; $52cb: $76
	and $98                                          ; $52cc: $e6 $98
	ldh [c], a                                       ; $52ce: $e2
	pop af                                           ; $52cf: $f1
	inc sp                                           ; $52d0: $33
	ld h, c                                          ; $52d1: $61
	inc sp                                           ; $52d2: $33
	ccf                                              ; $52d3: $3f
	ld a, [$9954]                                    ; $52d4: $fa $54 $99
	push bc                                          ; $52d7: $c5
	rst $38                                          ; $52d8: $ff
	rst SubAFromDE                                          ; $52d9: $df
	di                                               ; $52da: $f3
	sub e                                            ; $52db: $93
	db $e3                                           ; $52dc: $e3
	jp $c3e1                                         ; $52dd: $c3 $e1 $c3


	pop bc                                           ; $52e0: $c1
	ei                                               ; $52e1: $fb
	pop af                                           ; $52e2: $f1
	rst $38                                          ; $52e3: $ff
	ei                                               ; $52e4: $fb
	cp $fb                                           ; $52e5: $fe $fb
	db $fd                                           ; $52e7: $fd
	ld a, c                                          ; $52e8: $79
	xor h                                            ; $52e9: $ac
	db $db                                           ; $52ea: $db
	rst $38                                          ; $52eb: $ff
	sbc [hl]                                         ; $52ec: $9e
	xor [hl]                                         ; $52ed: $ae
	ld [hl], e                                       ; $52ee: $73
	ld [$fc76], sp                                   ; $52ef: $08 $76 $fc
	add b                                            ; $52f2: $80
	db $dd                                           ; $52f3: $dd
	rst $38                                          ; $52f4: $ff
	jp c, $c5ff                                      ; $52f5: $da $ff $c5

	rst $38                                          ; $52f8: $ff

jr_03b_52f9:
	ret nz                                           ; $52f9: $c0

	nop                                              ; $52fa: $00
	and b                                            ; $52fb: $a0
	ret nz                                           ; $52fc: $c0

	sub b                                            ; $52fd: $90
	ldh [rBCPD], a                                   ; $52fe: $e0 $69
	ldh a, [$ae]                                     ; $5300: $f0 $ae
	ldh a, [rWX]                                     ; $5302: $f0 $4b
	ldh a, [$af]                                     ; $5304: $f0 $af
	ldh a, [rVBK]                                    ; $5306: $f0 $4f
	ldh a, [rTMA]                                    ; $5308: $f0 $06
	ld bc, $0103                                     ; $530a: $01 $03 $01
	inc bc                                           ; $530d: $03
	nop                                              ; $530e: $00
	jr nz, jr_03b_5311                               ; $530f: $20 $00

jr_03b_5311:
	ret c                                            ; $5311: $d8

	sbc e                                            ; $5312: $9b
	nop                                              ; $5313: $00
	ld [hl], l                                       ; $5314: $75
	nop                                              ; $5315: $00
	cp $77                                           ; $5316: $fe $77
	ld l, a                                          ; $5318: $6f
	add b                                            ; $5319: $80
	rst $38                                          ; $531a: $ff
	ld sp, hl                                        ; $531b: $f9
	cp $f4                                           ; $531c: $fe $f4
	ld hl, sp-$17                                    ; $531e: $f8 $e9
	ldh a, [$d3]                                     ; $5320: $f0 $d3
	pop hl                                           ; $5322: $e1
	and h                                            ; $5323: $a4
	jp $87c0                                         ; $5324: $c3 $c0 $87


	inc bc                                           ; $5327: $03
	add h                                            ; $5328: $84
	sbc l                                            ; $5329: $9d
	ld a, a                                          ; $532a: $7f
	jr c, jr_03b_539c                                ; $532b: $38 $6f

	cp c                                             ; $532d: $b9
	ld l, a                                          ; $532e: $6f
	and e                                            ; $532f: $a3
	rst $38                                          ; $5330: $ff
	adc [hl]                                         ; $5331: $8e
	rst $38                                          ; $5332: $ff

jr_03b_5333:
	dec e                                            ; $5333: $1d
	cp $7b                                           ; $5334: $fe $7b
	db $fc                                           ; $5336: $fc
	rst FarCall                                          ; $5337: $f7
	ld hl, sp-$65                                    ; $5338: $f8 $9b
	xor $f0                                          ; $533a: $ee $f0
	sbc $e0                                          ; $533c: $de $e0
	ld [hl], d                                       ; $533e: $72
	ldh [$8d], a                                     ; $533f: $e0 $8d
	ld b, b                                          ; $5341: $40
	rst $38                                          ; $5342: $ff
	jr nz, jr_03b_5333                               ; $5343: $20 $ee

	ld sp, $13fd                                     ; $5345: $31 $fd $13
	dec sp                                           ; $5348: $3b
	inc c                                            ; $5349: $0c
	ld h, a                                          ; $534a: $67
	jr jr_03b_53bc                                   ; $534b: $18 $6f

	sub b                                            ; $534d: $90
	rst SubAFromDE                                          ; $534e: $df
	jr nz, @-$3f                                     ; $534f: $20 $bf

	ld b, b                                          ; $5351: $40
	ld a, a                                          ; $5352: $7f
	ld c, d                                          ; $5353: $4a
	jp z, $fe6f                                      ; $5354: $ca $6f $fe

	ld a, [hl]                                       ; $5357: $7e
	call z, $1f85                                    ; $5358: $cc $85 $1f
	ret nz                                           ; $535b: $c0

	sbc a                                            ; $535c: $9f
	ld h, b                                          ; $535d: $60
	sbc $21                                          ; $535e: $de $21
	push hl                                          ; $5360: $e5
	ld a, [de]                                       ; $5361: $1a
	ld [$d115], a                                    ; $5362: $ea $15 $d1
	jr z, @-$5e                                      ; $5365: $28 $a0

	ld e, c                                          ; $5367: $59
	cp $01                                           ; $5368: $fe $01
	ei                                               ; $536a: $fb
	inc b                                            ; $536b: $04
	call nc, $aa2b                                   ; $536c: $d4 $2b $aa
	ld d, l                                          ; $536f: $55
	ld d, h                                          ; $5370: $54
	xor e                                            ; $5371: $ab
	xor d                                            ; $5372: $aa
	ld d, l                                          ; $5373: $55
	ld [hl], $c0                                     ; $5374: $36 $c0
	nop                                              ; $5376: $00
	ld l, b                                          ; $5377: $68
	ld c, d                                          ; $5378: $4a
	or d                                             ; $5379: $b2
	sbc c                                            ; $537a: $99
	ld [hl], b                                       ; $537b: $70
	ldh [rIF], a                                     ; $537c: $e0 $0f
	ldh a, [rAUD2HIGH]                               ; $537e: $f0 $19
	cp $75                                           ; $5380: $fe $75
	sub h                                            ; $5382: $94
	sbc d                                            ; $5383: $9a
	daa                                              ; $5384: $27
	rst $38                                          ; $5385: $ff
	ld e, a                                          ; $5386: $5f
	rst $38                                          ; $5387: $ff
	rst AddAOntoHL                                          ; $5388: $ef
	ld a, b                                          ; $5389: $78
	ld [hl], a                                       ; $538a: $77
	sbc l                                            ; $538b: $9d
	cp a                                             ; $538c: $bf
	ld a, a                                          ; $538d: $7f
	ld e, h                                          ; $538e: $5c
	adc d                                            ; $538f: $8a
	rst JumpTable                                          ; $5390: $c7
	rst $38                                          ; $5391: $ff
	sbc d                                            ; $5392: $9a
	ld hl, sp-$01                                    ; $5393: $f8 $ff
	ld a, [$fcfd]                                    ; $5395: $fa $fd $fc
	sbc $ff                                          ; $5398: $de $ff
	sbc e                                            ; $539a: $9b
	add e                                            ; $539b: $83

jr_03b_539c:
	pop bc                                           ; $539c: $c1
	call $dcc3                                       ; $539d: $cd $c3 $dc
	rst $38                                          ; $53a0: $ff
	ld h, [hl]                                       ; $53a1: $66
	rst GetHLinHL                                          ; $53a2: $cf
	ld [hl], h                                       ; $53a3: $74
	ld c, d                                          ; $53a4: $4a
	sbc d                                            ; $53a5: $9a
	cp a                                             ; $53a6: $bf
	ld a, $3f                                        ; $53a7: $3e $3f

jr_03b_53a9:
	ld a, $7f                                        ; $53a9: $3e $7f
	ld a, b                                          ; $53ab: $78
	ld l, d                                          ; $53ac: $6a
	ld a, e                                          ; $53ad: $7b
	cp $98                                           ; $53ae: $fe $98
	ld a, c                                          ; $53b0: $79
	add a                                            ; $53b1: $87
	ld a, h                                          ; $53b2: $7c
	add e                                            ; $53b3: $83
	ld a, [hl]                                       ; $53b4: $7e

jr_03b_53b5:
	add c                                            ; $53b5: $81
	ld a, a                                          ; $53b6: $7f
	ld e, a                                          ; $53b7: $5f
	ld h, $7e                                        ; $53b8: $26 $7e
	ld e, [hl]                                       ; $53ba: $5e
	dec sp                                           ; $53bb: $3b

jr_03b_53bc:
	ld a, [de]                                       ; $53bc: $1a
	ld e, a                                          ; $53bd: $5f
	cp $80                                           ; $53be: $fe $80
	add h                                            ; $53c0: $84
	nop                                              ; $53c1: $00
	ld [bc], a                                       ; $53c2: $02
	ld bc, $0305                                     ; $53c3: $01 $05 $03
	rlca                                             ; $53c6: $07
	ld c, $0e                                        ; $53c7: $0e $0e
	inc e                                            ; $53c9: $1c
	ld [hl], h                                       ; $53ca: $74
	jr c, jr_03b_53b5                                ; $53cb: $38 $e8

	ldh a, [$a1]                                     ; $53cd: $f0 $a1
	ret nz                                           ; $53cf: $c0

	jp hl                                            ; $53d0: $e9


	ld [hl], b                                       ; $53d1: $70
	db $fd                                           ; $53d2: $fd
	ret nz                                           ; $53d3: $c0

	rst FarCall                                          ; $53d4: $f7
	adc b                                            ; $53d5: $88
	ret nz                                           ; $53d6: $c0

	ccf                                              ; $53d7: $3f
	ld b, c                                          ; $53d8: $41
	ld a, $63                                        ; $53d9: $3e $63
	inc e                                            ; $53db: $1c
	ld a, a                                          ; $53dc: $7f
	ld hl, $94bf                                     ; $53dd: $21 $bf $94
	ld [hl], e                                       ; $53e0: $73
	cp a                                             ; $53e1: $bf
	ld e, [hl]                                       ; $53e2: $5e
	cp a                                             ; $53e3: $bf
	ld c, h                                          ; $53e4: $4c
	ld l, a                                          ; $53e5: $6f

jr_03b_53e6:
	sbc b                                            ; $53e6: $98
	rst SubAFromDE                                          ; $53e7: $df
	jr nc, jr_03b_53a9                               ; $53e8: $30 $bf

	ld h, b                                          ; $53ea: $60
	ld a, b                                          ; $53eb: $78
	pop de                                           ; $53ec: $d1
	dec sp                                           ; $53ed: $3b
	or [hl]                                          ; $53ee: $b6
	ld e, [hl]                                       ; $53ef: $5e
	ldh [hDisp1_OBP0], a                                     ; $53f0: $e0 $93
	xor c                                            ; $53f2: $a9
	ld d, [hl]                                       ; $53f3: $56
	ld d, [hl]                                       ; $53f4: $56
	xor c                                            ; $53f5: $a9
	xor d                                            ; $53f6: $aa
	ld d, l                                          ; $53f7: $55
	ld c, b                                          ; $53f8: $48
	or a                                             ; $53f9: $b7
	push de                                          ; $53fa: $d5
	ld a, [hl+]                                      ; $53fb: $2a
	and e                                            ; $53fc: $a3
	ld e, h                                          ; $53fd: $5c
	halt                                             ; $53fe: $76
	sub $6f                                          ; $53ff: $d6 $6f
	db $fc                                           ; $5401: $fc
	ld a, [hl]                                       ; $5402: $7e
	sbc $6e                                          ; $5403: $de $6e
	sub $95                                          ; $5405: $d6 $95
	add b                                            ; $5407: $80
	ld a, a                                          ; $5408: $7f
	ld [$04f7], sp                                   ; $5409: $08 $f7 $04
	ei                                               ; $540c: $fb
	jr z, jr_03b_53e6                                ; $540d: $28 $d7

	add $39                                          ; $540f: $c6 $39
	ld a, $ec                                        ; $5411: $3e $ec
	scf                                              ; $5413: $37
	ld h, a                                          ; $5414: $67
	sbc b                                            ; $5415: $98
	dec bc                                           ; $5416: $0b
	rst $38                                          ; $5417: $ff
	inc b                                            ; $5418: $04
	rst $38                                          ; $5419: $ff
	dec de                                           ; $541a: $1b
	rst $38                                          ; $541b: $ff
	dec c                                            ; $541c: $0d
	ld a, c                                          ; $541d: $79
	adc d                                            ; $541e: $8a
	sbc d                                            ; $541f: $9a
	inc de                                           ; $5420: $13
	rst $38                                          ; $5421: $ff
	ld [hl], l                                       ; $5422: $75
	rst $38                                          ; $5423: $ff
	ld c, e                                          ; $5424: $4b
	ld a, c                                          ; $5425: $79
	ld [$fa7c], a                                    ; $5426: $ea $7c $fa
	ld [hl], h                                       ; $5429: $74
	sub a                                            ; $542a: $97
	ld [hl], h                                       ; $542b: $74
	ld e, h                                          ; $542c: $5c
	push bc                                          ; $542d: $c5
	rst $38                                          ; $542e: $ff
	sbc e                                            ; $542f: $9b
	rst GetHLinHL                                          ; $5430: $cf
	sbc a                                            ; $5431: $9f
	rst $38                                          ; $5432: $ff
	sbc a                                            ; $5433: $9f
	set 7, a                                         ; $5434: $cb $ff
	sbc [hl]                                         ; $5436: $9e
	cp e                                             ; $5437: $bb
	ld a, c                                          ; $5438: $79
	ld e, b                                          ; $5439: $58
	ld a, a                                          ; $543a: $7f
	cp h                                             ; $543b: $bc
	rst SubAFromDE                                          ; $543c: $df
	rst $38                                          ; $543d: $ff
	sub a                                            ; $543e: $97
	db $fd                                           ; $543f: $fd
	cp $ff                                           ; $5440: $fe $ff
	db $fc                                           ; $5442: $fc
	db $e3                                           ; $5443: $e3
	db $fc                                           ; $5444: $fc
	rst SubAFromDE                                          ; $5445: $df
	ldh [$6f], a                                     ; $5446: $e0 $6f
	cp $7f                                           ; $5448: $fe $7f
	di                                               ; $544a: $f3
	sbc e                                            ; $544b: $9b
	sbc l                                            ; $544c: $9d
	ld a, [hl]                                       ; $544d: $7e
	db $e3                                           ; $544e: $e3
	inc e                                            ; $544f: $1c
	ld [bc], a                                       ; $5450: $02
	ld b, a                                          ; $5451: $47
	inc hl                                           ; $5452: $23
	cp $21                                           ; $5453: $fe $21
	nop                                              ; $5455: $00
	rst SubAFromDE                                          ; $5456: $df
	ld b, h                                          ; $5457: $44
	sbc e                                            ; $5458: $9b
	ld d, [hl]                                       ; $5459: $56
	ld h, [hl]                                       ; $545a: $66
	ld h, [hl]                                       ; $545b: $66
	ld h, e                                          ; $545c: $63
	db $dd                                           ; $545d: $dd
	inc sp                                           ; $545e: $33
	ld [hl], e                                       ; $545f: $73
	or $9e                                           ; $5460: $f6 $9e
	ld h, [hl]                                       ; $5462: $66
	ld l, a                                          ; $5463: $6f
	or $dd                                           ; $5464: $f6 $dd
	ld h, [hl]                                       ; $5466: $66
	ld [hl], e                                       ; $5467: $73
	or $9e                                           ; $5468: $f6 $9e
	ld b, [hl]                                       ; $546a: $46
	ld d, a                                          ; $546b: $57
	or $db                                           ; $546c: $f6 $db
	inc sp                                           ; $546e: $33
	sbc [hl]                                         ; $546f: $9e
	ld b, l                                          ; $5470: $45
	ld l, e                                          ; $5471: $6b
	xor $df                                          ; $5472: $ee $df
	inc sp                                           ; $5474: $33
	xor h                                            ; $5475: $ac
	ld [bc], a                                       ; $5476: $02
	sbc d                                            ; $5477: $9a
	jr c, @+$01                                      ; $5478: $38 $ff

	jr c, @+$01                                      ; $547a: $38 $ff

	jr nc, jr_03b_54f9                               ; $547c: $30 $7b

	cp $9a                                           ; $547e: $fe $9a

jr_03b_5480:
	ld [hl], b                                       ; $5480: $70
	rst $38                                          ; $5481: $ff
	ldh [rIE], a                                     ; $5482: $e0 $ff
	ld h, b                                          ; $5484: $60
	ld a, e                                          ; $5485: $7b
	cp $9b                                           ; $5486: $fe $9b
	ld a, $c1                                        ; $5488: $3e $c1
	ld a, a                                          ; $548a: $7f
	add b                                            ; $548b: $80
	ld [hl], a                                       ; $548c: $77
	db $fc                                           ; $548d: $fc
	sbc l                                            ; $548e: $9d
	cp a                                             ; $548f: $bf
	ld b, b                                          ; $5490: $40
	ld l, a                                          ; $5491: $6f
	db $fc                                           ; $5492: $fc
	sbc e                                            ; $5493: $9b
	xor e                                            ; $5494: $ab
	ld d, h                                          ; $5495: $54
	ld d, l                                          ; $5496: $55
	xor d                                            ; $5497: $aa
	ld l, a                                          ; $5498: $6f
	db $fc                                           ; $5499: $fc
	sub [hl]                                         ; $549a: $96
	push de                                          ; $549b: $d5
	ld a, [hl+]                                      ; $549c: $2a
	db $eb                                           ; $549d: $eb
	inc d                                            ; $549e: $14
	push de                                          ; $549f: $d5
	ld a, [hl+]                                      ; $54a0: $2a
	db $10                                           ; $54a1: $10
	dec sp                                           ; $54a2: $3b
	ld [de], a                                       ; $54a3: $12
	ld d, e                                          ; $54a4: $53
	cp $9a                                           ; $54a5: $fe $9a
	ld b, e                                          ; $54a7: $43
	cp l                                             ; $54a8: $bd
	sub a                                            ; $54a9: $97
	cp l                                             ; $54aa: $bd
	sub [hl]                                         ; $54ab: $96
	ld l, e                                          ; $54ac: $6b
	cp $96                                           ; $54ad: $fe $96
	call c, $95bf                                    ; $54af: $dc $bf $95
	rst $38                                          ; $54b2: $ff
	and e                                            ; $54b3: $a3
	rst FarCall                                          ; $54b4: $f7
	db $e3                                           ; $54b5: $e3
	rst FarCall                                          ; $54b6: $f7
	and e                                            ; $54b7: $a3
	ld [hl], e                                       ; $54b8: $73
	cp $7f                                           ; $54b9: $fe $7f
	ld hl, sp+$7f                                    ; $54bb: $f8 $7f
	cp $9b                                           ; $54bd: $fe $9b
	db $10                                           ; $54bf: $10
	rst $38                                          ; $54c0: $ff
	jr jr_03b_5480                                   ; $54c1: $18 $bd

	ld d, a                                          ; $54c3: $57
	cp $9b                                           ; $54c4: $fe $9b
	and l                                            ; $54c6: $a5
	cp l                                             ; $54c7: $bd
	call nz, $57ee                                   ; $54c8: $c4 $ee $57
	cp $98                                           ; $54cb: $fe $98
	ld a, [hl+]                                      ; $54cd: $2a
	xor $e2                                          ; $54ce: $ee $e2
	ld [hl], a                                       ; $54d0: $77
	and d                                            ; $54d1: $a2
	ld [hl], a                                       ; $54d2: $77
	and e                                            ; $54d3: $a3
	ld e, e                                          ; $54d4: $5b
	cp $80                                           ; $54d5: $fe $80
	db $10                                           ; $54d7: $10
	cp l                                             ; $54d8: $bd
	add hl, bc                                       ; $54d9: $09
	db $ed                                           ; $54da: $ed
	ld c, c                                          ; $54db: $49
	rst $38                                          ; $54dc: $ff
	ld b, b                                          ; $54dd: $40
	and $00                                          ; $54de: $e6 $00
	db $e4                                           ; $54e0: $e4
	ld bc, $01e5                                     ; $54e1: $01 $e5 $01
	and l                                            ; $54e4: $a5
	add hl, de                                       ; $54e5: $19
	cp l                                             ; $54e6: $bd
	adc b                                            ; $54e7: $88
	sbc $48                                          ; $54e8: $de $48
	ld e, [hl]                                       ; $54ea: $5e
	ld b, h                                          ; $54eb: $44
	sub $40                                          ; $54ec: $d6 $40
	ld d, d                                          ; $54ee: $52
	ld b, b                                          ; $54ef: $40
	jp nc, $d644                                     ; $54f0: $d2 $44 $d6

	ld b, h                                          ; $54f3: $44
	ld e, [hl]                                       ; $54f4: $5e
	call z, $de99                                    ; $54f5: $cc $99 $de
	ld d, c                                          ; $54f8: $51

jr_03b_54f9:
	sbc d                                            ; $54f9: $9a
	ld [hl], c                                       ; $54fa: $71
	sbc d                                            ; $54fb: $9a
	ld de, $fe7b                                     ; $54fc: $11 $7b $fe
	sub e                                            ; $54ff: $93
	ld h, c                                          ; $5500: $61
	ld a, [$7a91]                                    ; $5501: $fa $91 $7a
	ld bc, $011a                                     ; $5504: $01 $1a $01
	ld e, d                                          ; $5507: $5a
	and h                                            ; $5508: $a4
	ld e, b                                          ; $5509: $58
	ld d, h                                          ; $550a: $54
	xor b                                            ; $550b: $a8
	ld d, a                                          ; $550c: $57
	db $fc                                           ; $550d: $fc
	sbc $3f                                          ; $550e: $de $3f
	sbc h                                            ; $5510: $9c
	jr nc, jr_03b_554d                               ; $5511: $30 $3a

	dec [hl]                                         ; $5513: $35
	ld [hl], a                                       ; $5514: $77
	db $fc                                           ; $5515: $fc
	ld l, a                                          ; $5516: $6f
	cp $de                                           ; $5517: $fe $de
	rst $38                                          ; $5519: $ff
	sub [hl]                                         ; $551a: $96
	ld bc, $53ad                                     ; $551b: $01 $ad $53
	db $ed                                           ; $551e: $ed
	inc de                                           ; $551f: $13
	xor l                                            ; $5520: $ad
	ld d, e                                          ; $5521: $53
	xor l                                            ; $5522: $ad
	ld b, c                                          ; $5523: $41
	ld a, e                                          ; $5524: $7b
	cp $9b                                           ; $5525: $fe $9b
	ld d, e                                          ; $5527: $53
	rst $38                                          ; $5528: $ff
	rst $38                                          ; $5529: $ff
	xor h                                            ; $552a: $ac
	ld a, e                                          ; $552b: $7b
	cp $df                                           ; $552c: $fe $df
	rst $38                                          ; $552e: $ff
	sbc b                                            ; $552f: $98
	xor [hl]                                         ; $5530: $ae
	db $fd                                           ; $5531: $fd
	xor [hl]                                         ; $5532: $ae
	db $fd                                           ; $5533: $fd
	xor a                                            ; $5534: $af
	rst $38                                          ; $5535: $ff
	xor a                                            ; $5536: $af
	sbc $ff                                          ; $5537: $de $ff
	sub h                                            ; $5539: $94
	sub d                                            ; $553a: $92
	ld l, l                                          ; $553b: $6d
	sub d                                            ; $553c: $92
	ld l, l                                          ; $553d: $6d
	rst $38                                          ; $553e: $ff
	ld l, l                                          ; $553f: $6d
	db $db                                           ; $5540: $db
	inc h                                            ; $5541: $24
	db $db                                           ; $5542: $db
	inc h                                            ; $5543: $24
	rst $38                                          ; $5544: $ff
	ld a, e                                          ; $5545: $7b
	ld hl, sp-$21                                    ; $5546: $f8 $df
	rst $38                                          ; $5548: $ff
	sbc c                                            ; $5549: $99
	ld c, c                                          ; $554a: $49
	or [hl]                                          ; $554b: $b6
	ld c, c                                          ; $554c: $49

jr_03b_554d:
	or [hl]                                          ; $554d: $b6
	rst $38                                          ; $554e: $ff
	or [hl]                                          ; $554f: $b6
	ld a, e                                          ; $5550: $7b
	db $eb                                           ; $5551: $eb
	sbc l                                            ; $5552: $9d
	sub d                                            ; $5553: $92
	rst $38                                          ; $5554: $ff
	ld a, e                                          ; $5555: $7b
	ld hl, sp-$21                                    ; $5556: $f8 $df
	rst SubAFromBC                                          ; $5558: $e7
	sub h                                            ; $5559: $94
	daa                                              ; $555a: $27
	and $27                                          ; $555b: $e6 $27
	and $e7                                          ; $555d: $e6 $e7
	and $a7                                          ; $555f: $e6 $a7
	ld h, [hl]                                       ; $5561: $66
	and a                                            ; $5562: $a7
	ld h, [hl]                                       ; $5563: $66
	rst SubAFromBC                                          ; $5564: $e7
	ld a, e                                          ; $5565: $7b
	ld hl, sp-$66                                    ; $5566: $f8 $9a
	nop                                              ; $5568: $00
	rst $38                                          ; $5569: $ff
	rst $38                                          ; $556a: $ff
	ld l, d                                          ; $556b: $6a
	sub l                                            ; $556c: $95
	ld a, e                                          ; $556d: $7b
	cp $7e                                           ; $556e: $fe $7e
	or $77                                           ; $5570: $f6 $77
	ld a, [$fe7f]                                    ; $5572: $fa $7f $fe
	sbc l                                            ; $5575: $9d
	and b                                            ; $5576: $a0
	ld a, a                                          ; $5577: $7f
	ld [hl], a                                       ; $5578: $77
	cp $76                                           ; $5579: $fe $76
	add $9e                                          ; $557b: $c6 $9e
	ret nz                                           ; $557d: $c0

	ld a, d                                          ; $557e: $7a
	cp [hl]                                          ; $557f: $be
	ld a, a                                          ; $5580: $7f
	cp $66                                           ; $5581: $fe $66
	ret z                                            ; $5583: $c8

	ld h, a                                          ; $5584: $67
	db $fc                                           ; $5585: $fc
	ld a, [hl]                                       ; $5586: $7e
	call z, $f59b                                    ; $5587: $cc $9b $f5
	ld a, [bc]                                       ; $558a: $0a
	ei                                               ; $558b: $fb
	inc b                                            ; $558c: $04
	ld [hl], a                                       ; $558d: $77
	db $fc                                           ; $558e: $fc
	adc [hl]                                         ; $558f: $8e
	db $fd                                           ; $5590: $fd
	ld [bc], a                                       ; $5591: $02
	rst $38                                          ; $5592: $ff
	nop                                              ; $5593: $00
	rst $38                                          ; $5594: $ff
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00

jr_03b_5597:
	jr nz, jr_03b_5599                               ; $5597: $20 $00

jr_03b_5599:
	jr nz, @+$1d                                     ; $5599: $20 $1b

	dec sp                                           ; $559b: $3b
	dec de                                           ; $559c: $1b
	dec sp                                           ; $559d: $3b
	inc de                                           ; $559e: $13
	dec sp                                           ; $559f: $3b
	ld de, $fe73                                     ; $55a0: $11 $73 $fe
	adc [hl]                                         ; $55a3: $8e
	ld b, l                                          ; $55a4: $45
	nop                                              ; $55a5: $00
	add b                                            ; $55a6: $80
	nop                                              ; $55a7: $00
	jr nz, @-$41                                     ; $55a8: $20 $bd

	sub l                                            ; $55aa: $95
	cp l                                             ; $55ab: $bd
	ld [$0bbd], sp                                   ; $55ac: $08 $bd $0b
	cp a                                             ; $55af: $bf
	dec c                                            ; $55b0: $0d
	cp [hl]                                          ; $55b1: $be
	rla                                              ; $55b2: $17
	cp b                                             ; $55b3: $b8
	inc d                                            ; $55b4: $14
	cp $92                                           ; $55b5: $fe $92
	ldh [$f7], a                                     ; $55b7: $e0 $f7
	ld d, $f7                                        ; $55b9: $16 $f7
	ldh [c], a                                       ; $55bb: $e2
	rst FarCall                                          ; $55bc: $f7
	ldh a, [c]                                       ; $55bd: $f2
	rst FarCall                                          ; $55be: $f7
	jp z, $e63f                                      ; $55bf: $ca $3f $e6

	rra                                              ; $55c2: $1f
	and l                                            ; $55c3: $a5
	cp $7e                                           ; $55c4: $fe $7e
	ret z                                            ; $55c6: $c8

	sbc [hl]                                         ; $55c7: $9e
	sbc h                                            ; $55c8: $9c
	ld h, d                                          ; $55c9: $62
	cp [hl]                                          ; $55ca: $be
	sbc [hl]                                         ; $55cb: $9e
	ld a, [hl+]                                      ; $55cc: $2a
	db $fd                                           ; $55cd: $fd
	sbc e                                            ; $55ce: $9b
	rst AddAOntoHL                                          ; $55cf: $ef
	xor $ef                                          ; $55d0: $ee $ef
	call nz, $fe6b                                   ; $55d2: $c4 $6b $fe
	sbc b                                            ; $55d5: $98
	call nc, $0023                                   ; $55d6: $d4 $23 $00
	nop                                              ; $55d9: $00
	inc bc                                           ; $55da: $03
	ld [hl], a                                       ; $55db: $77
	inc hl                                           ; $55dc: $23
	ld h, e                                          ; $55dd: $63
	cp $9e                                           ; $55de: $fe $9e
	sbc c                                            ; $55e0: $99
	db $fd                                           ; $55e1: $fd
	sub a                                            ; $55e2: $97
	cp a                                             ; $55e3: $bf
	add hl, sp                                       ; $55e4: $39
	db $fd                                           ; $55e5: $fd
	and c                                            ; $55e6: $a1
	xor l                                            ; $55e7: $ad
	jr nz, jr_03b_5597                               ; $55e8: $20 $ad

	jr z, @+$7d                                      ; $55ea: $28 $7b

	cp $8b                                           ; $55ec: $fe $8b
	call c, $0002                                    ; $55ee: $dc $02 $00
	nop                                              ; $55f1: $00
	ld [bc], a                                       ; $55f2: $02
	call c, $dc0e                                    ; $55f3: $dc $0e $dc
	add [hl]                                         ; $55f6: $86
	call nc, $d082                                   ; $55f7: $d4 $82 $d0
	ld [bc], a                                       ; $55fa: $02
	call nc, $7422                                   ; $55fb: $d4 $22 $74
	or c                                             ; $55fe: $b1
	cp d                                             ; $55ff: $ba
	sub c                                            ; $5600: $91
	sbc d                                            ; $5601: $9a
	ld a, e                                          ; $5602: $7b
	db $fc                                           ; $5603: $fc
	sub [hl]                                         ; $5604: $96
	ld a, [$da81]                                    ; $5605: $fa $81 $da
	ld bc, $711a                                     ; $5608: $01 $1a $71
	ld a, d                                          ; $560b: $7a
	pop de                                           ; $560c: $d1
	jp c, $c046                                      ; $560d: $da $46 $c0

	halt                                             ; $5610: $76
	call z, $3798                                    ; $5611: $cc $98 $37
	dec a                                            ; $5614: $3d
	ld a, $31                                        ; $5615: $3e $31
	ccf                                              ; $5617: $3f
	jr nc, jr_03b_563a                               ; $5618: $30 $20

	sbc $30                                          ; $561a: $de $30
	rst SubAFromDE                                          ; $561c: $df
	ccf                                              ; $561d: $3f
	ld a, d                                          ; $561e: $7a
	ret z                                            ; $561f: $c8

	ld a, [hl]                                       ; $5620: $7e
	call z, $499e                                    ; $5621: $cc $9e $49
	ld a, e                                          ; $5624: $7b
	db $fc                                           ; $5625: $fc
	sbc [hl]                                         ; $5626: $9e
	ld bc, $76fd                                     ; $5627: $01 $fd $76
	ret z                                            ; $562a: $c8

	sbc l                                            ; $562b: $9d
	xor h                                            ; $562c: $ac
	db $fd                                           ; $562d: $fd
	ld [hl], a                                       ; $562e: $77
	ld a, [$fe9e]                                    ; $562f: $fa $9e $fe
	ld a, e                                          ; $5632: $7b
	dec [hl]                                         ; $5633: $35
	ld [hl], a                                       ; $5634: $77
	ldh a, [$7e]                                     ; $5635: $f0 $7e
	jp z, $929e                                      ; $5637: $ca $9e $92

jr_03b_563a:
	ld a, d                                          ; $563a: $7a
	ret z                                            ; $563b: $c8

	ld a, e                                          ; $563c: $7b
	ld a, [$6d9e]                                    ; $563d: $fa $9e $6d
	ld l, a                                          ; $5640: $6f
	ldh a, [$7e]                                     ; $5641: $f0 $7e
	jp z, $499e                                      ; $5643: $ca $9e $49

	ld a, d                                          ; $5646: $7a
	ret z                                            ; $5647: $c8

	ld a, e                                          ; $5648: $7b
	ld a, [$b69e]                                    ; $5649: $fa $9e $b6
	ld l, a                                          ; $564c: $6f
	ldh a, [$7a]                                     ; $564d: $f0 $7a
	jp nz, $c87a                                     ; $564f: $c2 $7a $c8

	ld a, [hl]                                       ; $5652: $7e
	call nz, $2697                                   ; $5653: $c4 $97 $26
	rst SubAFromBC                                          ; $5656: $e7
	ld b, $04                                        ; $5657: $06 $04
	ld b, $04                                        ; $5659: $06 $04
	rst SubAFromBC                                          ; $565b: $e7
	rst SubAFromBC                                          ; $565c: $e7
	ld h, [hl]                                       ; $565d: $66

jr_03b_565e:
	ret z                                            ; $565e: $c8

	sbc [hl]                                         ; $565f: $9e

jr_03b_5660:
	ld l, d                                          ; $5660: $6a
	ei                                               ; $5661: $fb
	sbc d                                            ; $5662: $9a
	rst $38                                          ; $5663: $ff
	ldh a, [$7f]                                     ; $5664: $f0 $7f
	ldh a, [$3f]                                     ; $5666: $f0 $3f
	ld a, e                                          ; $5668: $7b
	cp $9e                                           ; $5669: $fe $9e
	rra                                              ; $566b: $1f
	ld l, a                                          ; $566c: $6f
	cp $9d                                           ; $566d: $fe $9d
	db $fc                                           ; $566f: $fc
	ccf                                              ; $5670: $3f
	ld b, [hl]                                       ; $5671: $46
	ret nz                                           ; $5672: $c0

	halt                                             ; $5673: $76
	call z, $fe57                                    ; $5674: $cc $57 $fe
	halt                                             ; $5677: $76
	call z, Call_03b_7c7d                            ; $5678: $cc $7d $7c
	sbc [hl]                                         ; $567b: $9e
	nop                                              ; $567c: $00
	ld h, e                                          ; $567d: $63
	cp $9a                                           ; $567e: $fe $9a
	sub d                                            ; $5680: $92
	cp b                                             ; $5681: $b8

jr_03b_5682:
	sbc l                                            ; $5682: $9d
	or b                                             ; $5683: $b0
	sbc c                                            ; $5684: $99
	ld [hl], e                                       ; $5685: $73
	cp $7f                                           ; $5686: $fe $7f
	ld hl, sp-$6e                                    ; $5688: $f8 $92
	sbc a                                            ; $568a: $9f
	or b                                             ; $568b: $b0
	sub l                                            ; $568c: $95
	or d                                             ; $568d: $b2
	jp nz, $823f                                     ; $568e: $c2 $3f $82

	ld a, a                                          ; $5691: $7f
	jp nz, $e23f                                     ; $5692: $c2 $3f $e2

	rra                                              ; $5695: $1f
	call nz, $c47a                                   ; $5696: $c4 $7a $c4
	ld a, a                                          ; $5699: $7f
	ld hl, sp-$65                                    ; $569a: $f8 $9b
	and d                                            ; $569c: $a2
	ld e, a                                          ; $569d: $5f
	nop                                              ; $569e: $00
	cp l                                             ; $569f: $bd
	ld h, e                                          ; $56a0: $63
	cp $9a                                           ; $56a1: $fe $9a
	or l                                             ; $56a3: $b5
	ld d, [hl]                                       ; $56a4: $56
	pop hl                                           ; $56a5: $e1
	ld d, d                                          ; $56a6: $52
	pop hl                                           ; $56a7: $e1
	halt                                             ; $56a8: $76
	call z, Call_03b_449e                            ; $56a9: $cc $9e $44
	ld [hl], e                                       ; $56ac: $73
	cp $6f                                           ; $56ad: $fe $6f
	or $5e                                           ; $56af: $f6 $5e
	add $6f                                          ; $56b1: $c6 $6f
	cp $7e                                           ; $56b3: $fe $7e
	adc $9a                                          ; $56b5: $ce $9a
	jr nz, jr_03b_565e                               ; $56b7: $20 $a5

	jr nz, jr_03b_5660                               ; $56b9: $20 $a5

	add hl, hl                                       ; $56bb: $29
	ld a, d                                          ; $56bc: $7a
	add $7f                                          ; $56bd: $c6 $7f
	ld a, [$3880]                                    ; $56bf: $fa $80 $38
	cp l                                             ; $56c2: $bd
	jr c, jr_03b_5682                                ; $56c3: $38 $bd

	ld [bc], a                                       ; $56c5: $02
	ld d, b                                          ; $56c6: $50
	add d                                            ; $56c7: $82
	ret nc                                           ; $56c8: $d0

	add h                                            ; $56c9: $84
	sub $4c                                          ; $56ca: $d6 $4c
	sbc $0a                                          ; $56cc: $de $0a
	ld e, b                                          ; $56ce: $58
	nop                                              ; $56cf: $00
	ld d, [hl]                                       ; $56d0: $56
	ld [bc], a                                       ; $56d1: $02
	ld d, b                                          ; $56d2: $50
	ld a, [bc]                                       ; $56d3: $0a
	ld e, b                                          ; $56d4: $58
	sub c                                            ; $56d5: $91
	sbc d                                            ; $56d6: $9a
	pop de                                           ; $56d7: $d1
	jp c, $fac9                                      ; $56d8: $da $c9 $fa

	pop af                                           ; $56db: $f1
	ld a, [$fab1]                                    ; $56dc: $fa $b1 $fa
	ld de, $ba9e                                     ; $56df: $11 $9e $ba
	ld [hl], a                                       ; $56e2: $77
	cp $01                                           ; $56e3: $fe $01
	add b                                            ; $56e5: $80
	rst SubAFromDE                                          ; $56e6: $df
	rst $38                                          ; $56e7: $ff
	sbc h                                            ; $56e8: $9c
	ld b, $af                                        ; $56e9: $06 $af
	ld d, [hl]                                       ; $56eb: $56
	ld [hl], a                                       ; $56ec: $77
	db $fc                                           ; $56ed: $fc
	ld l, a                                          ; $56ee: $6f
	cp $de                                           ; $56ef: $fe $de
	rst $38                                          ; $56f1: $ff
	sbc h                                            ; $56f2: $9c
	nop                                              ; $56f3: $00
	ld l, d                                          ; $56f4: $6a
	sub l                                            ; $56f5: $95
	ld [hl], a                                       ; $56f6: $77
	db $fc                                           ; $56f7: $fc
	ld l, a                                          ; $56f8: $6f
	cp $77                                           ; $56f9: $fe $77
	ldh a, [$9d]                                     ; $56fb: $f0 $9d
	cp d                                             ; $56fd: $ba
	ld b, l                                          ; $56fe: $45
	ld [hl], a                                       ; $56ff: $77
	db $fc                                           ; $5700: $fc
	ld l, a                                          ; $5701: $6f
	cp $de                                           ; $5702: $fe $de
	rst $38                                          ; $5704: $ff
	sbc h                                            ; $5705: $9c
	rra                                              ; $5706: $1f
	cp a                                             ; $5707: $bf
	ld d, l                                          ; $5708: $55
	ld [hl], a                                       ; $5709: $77
	db $fc                                           ; $570a: $fc
	ld l, a                                          ; $570b: $6f
	cp $dc                                           ; $570c: $fe $dc
	rst SubAFromBC                                          ; $570e: $e7
	sbc [hl]                                         ; $570f: $9e
	ld h, h                                          ; $5710: $64
	ld e, a                                          ; $5711: $5f
	cp $dd                                           ; $5712: $fe $dd
	rst $38                                          ; $5714: $ff
	ld a, [hl]                                       ; $5715: $7e
	ld [$7d9d], a                                    ; $5716: $ea $9d $7d
	add d                                            ; $5719: $82
	ld [hl], a                                       ; $571a: $77
	cp $9b                                           ; $571b: $fe $9b
	ld a, e                                          ; $571d: $7b
	add h                                            ; $571e: $84
	ld a, e                                          ; $571f: $7b
	add h                                            ; $5720: $84
	dec de                                           ; $5721: $1b
	nop                                              ; $5722: $00
	sbc l                                            ; $5723: $9d
	ld d, l                                          ; $5724: $55
	ld d, e                                          ; $5725: $53
	db $dd                                           ; $5726: $dd
	inc sp                                           ; $5727: $33
	sbc b                                            ; $5728: $98
	ld d, a                                          ; $5729: $57
	halt                                             ; $572a: $76
	ld h, [hl]                                       ; $572b: $66
	ld h, e                                          ; $572c: $63
	ld d, l                                          ; $572d: $55
	ld d, e                                          ; $572e: $53
	ld b, h                                          ; $572f: $44
	ld h, a                                          ; $5730: $67
	or $9c                                           ; $5731: $f6 $9c
	ld d, h                                          ; $5733: $54
	ld b, h                                          ; $5734: $44
	ld b, e                                          ; $5735: $43
	ld a, e                                          ; $5736: $7b
	or $df                                           ; $5737: $f6 $df
	ld [hl], a                                       ; $5739: $77
	sbc [hl]                                         ; $573a: $9e
	ld h, a                                          ; $573b: $67
	sbc [hl]                                         ; $573c: $9e
	add l                                            ; $573d: $85
	jp c, $f9ff                                      ; $573e: $da $ff $f9

	rst SubAFromDE                                          ; $5741: $df
	rst $38                                          ; $5742: $ff
	sub b                                            ; $5743: $90
	ccf                                              ; $5744: $3f
	ld a, a                                          ; $5745: $7f
	ld a, a                                          ; $5746: $7f
	rst $38                                          ; $5747: $ff
	rst $38                                          ; $5748: $ff
	rst AddAOntoHL                                          ; $5749: $ef
	rst SubAFromDE                                          ; $574a: $df
	nop                                              ; $574b: $00
	db $10                                           ; $574c: $10
	jr nz, jr_03b_578f                               ; $574d: $20 $40

	sub b                                            ; $574f: $90
	and h                                            ; $5750: $a4
	call z, $d994                                    ; $5751: $cc $94 $d9
	rst $38                                          ; $5754: $ff
	ld sp, hl                                        ; $5755: $f9
	db $dd                                           ; $5756: $dd
	ccf                                              ; $5757: $3f
	call c, $9e3b                                    ; $5758: $dc $3b $9e
	dec hl                                           ; $575b: $2b
	sbc $23                                          ; $575c: $de $23
	add h                                            ; $575e: $84
	ld [bc], a                                       ; $575f: $02
	jr nz, jr_03b_5762                               ; $5760: $20 $00

jr_03b_5762:
	sub b                                            ; $5762: $90
	sub b                                            ; $5763: $90
	sbc b                                            ; $5764: $98
	sbc c                                            ; $5765: $99
	adc a                                            ; $5766: $8f
	adc a                                            ; $5767: $8f
	xor a                                            ; $5768: $af
	xor a                                            ; $5769: $af
	or h                                             ; $576a: $b4
	or d                                             ; $576b: $b2
	cp c                                             ; $576c: $b9
	cp e                                             ; $576d: $bb
	cp a                                             ; $576e: $bf
	pop hl                                           ; $576f: $e1
	ret nz                                           ; $5770: $c0

	ldh [rSC], a                                     ; $5771: $e0 $02
	ld b, $07                                        ; $5773: $06 $07
	rra                                              ; $5775: $1f
	ld a, c                                          ; $5776: $79
	ld a, [$f3fa]                                    ; $5777: $fa $fa $f3
	ld [hl], a                                       ; $577a: $77
	cp c                                             ; $577b: $b9
	adc d                                            ; $577c: $8a
	rst FarCall                                          ; $577d: $f7
	pop hl                                           ; $577e: $e1
	ld bc, $6001                                     ; $577f: $01 $01 $60
	ld [hl], b                                       ; $5782: $70
	ld l, [hl]                                       ; $5783: $6e
	ldh [c], a                                       ; $5784: $e2
	db $ec                                           ; $5785: $ec
	xor l                                            ; $5786: $ad
	ld c, e                                          ; $5787: $4b
	db $ec                                           ; $5788: $ec
	pop hl                                           ; $5789: $e1
	pop af                                           ; $578a: $f1
	di                                               ; $578b: $f3
	rst $38                                          ; $578c: $ff
	di                                               ; $578d: $f3
	di                                               ; $578e: $f3

jr_03b_578f:
	or c                                             ; $578f: $b1
	ld de, $de44                                     ; $5790: $11 $44 $de
	call nz, $fc7b                                   ; $5793: $c4 $7b $fc
	sbc [hl]                                         ; $5796: $9e
	add b                                            ; $5797: $80
	reti                                             ; $5798: $d9


	rst AddAOntoHL                                          ; $5799: $ef
	reti                                             ; $579a: $d9


	inc hl                                           ; $579b: $23
	reti                                             ; $579c: $d9


	ld [hl], a                                       ; $579d: $77
	sbc d                                            ; $579e: $9a
	inc a                                            ; $579f: $3c
	inc l                                            ; $57a0: $2c
	inc a                                            ; $57a1: $3c
	inc l                                            ; $57a2: $2c
	dec l                                            ; $57a3: $2d
	sbc $2c                                          ; $57a4: $de $2c
	sbc [hl]                                         ; $57a6: $9e
	xor l                                            ; $57a7: $ad
	sbc $bd                                          ; $57a8: $de $bd
	rst SubAFromDE                                          ; $57aa: $df
	xor l                                            ; $57ab: $ad
	sbc b                                            ; $57ac: $98
	adc l                                            ; $57ad: $8d
	cp l                                             ; $57ae: $bd
	ld [bc], a                                       ; $57af: $02
	nop                                              ; $57b0: $00
	ld b, $0a                                        ; $57b1: $06 $0a
	ld c, d                                          ; $57b3: $4a
	sbc $8c                                          ; $57b4: $de $8c
	adc a                                            ; $57b6: $8f
	ld d, b                                          ; $57b7: $50
	ld d, [hl]                                       ; $57b8: $56
	ld d, b                                          ; $57b9: $50
	ld e, b                                          ; $57ba: $58
	ret c                                            ; $57bb: $d8

	jp c, $deda                                      ; $57bc: $da $da $de

	sub c                                            ; $57bf: $91
	pop af                                           ; $57c0: $f1
	ld sp, $1111                                     ; $57c1: $31 $11 $11
	ld sp, $9161                                     ; $57c4: $31 $61 $91
	sbc $fa                                          ; $57c7: $de $fa
	rst SubAFromDE                                          ; $57c9: $df
	cp d                                             ; $57ca: $ba
	rst SubAFromDE                                          ; $57cb: $df

jr_03b_57cc:
	ld a, [$9a9c]                                    ; $57cc: $fa $9c $9a
	and h                                            ; $57cf: $a4
	ld d, h                                          ; $57d0: $54
	ld l, a                                          ; $57d1: $6f
	cp $9d                                           ; $57d2: $fe $9d
	ld e, b                                          ; $57d4: $58
	xor b                                            ; $57d5: $a8
	ld l, a                                          ; $57d6: $6f
	cp $df                                           ; $57d7: $fe $df
	dec b                                            ; $57d9: $05
	sbc l                                            ; $57da: $9d
	nop                                              ; $57db: $00
	dec b                                            ; $57dc: $05
	db $fd                                           ; $57dd: $fd
	rst SubAFromDE                                          ; $57de: $df
	ld a, [hl-]                                      ; $57df: $3a
	sub h                                            ; $57e0: $94
	ccf                                              ; $57e1: $3f
	ld a, [hl-]                                      ; $57e2: $3a
	ccf                                              ; $57e3: $3f
	jr nz, jr_03b_5816                               ; $57e4: $20 $30

	ccf                                              ; $57e6: $3f
	xor a                                            ; $57e7: $af
	xor a                                            ; $57e8: $af
	rst $38                                          ; $57e9: $ff
	xor a                                            ; $57ea: $af
	or $7b                                           ; $57eb: $f6 $7b
	jr z, jr_03b_57cc                                ; $57ed: $28 $dd

	ld d, [hl]                                       ; $57ef: $56
	sbc [hl]                                         ; $57f0: $9e
	rrca                                             ; $57f1: $0f
	ld a, e                                          ; $57f2: $7b
	ld hl, sp-$21                                    ; $57f3: $f8 $df
	ld l, d                                          ; $57f5: $6a
	ld a, a                                          ; $57f6: $7f
	db $fd                                           ; $57f7: $fd
	ld a, e                                          ; $57f8: $7b
	inc sp                                           ; $57f9: $33
	sbc [hl]                                         ; $57fa: $9e
	rst $38                                          ; $57fb: $ff
	db $dd                                           ; $57fc: $dd
	sub l                                            ; $57fd: $95
	ld [hl], a                                       ; $57fe: $77
	db $10                                           ; $57ff: $10
	rst SubAFromDE                                          ; $5800: $df
	cp d                                             ; $5801: $ba
	ld a, a                                          ; $5802: $7f
	db $fd                                           ; $5803: $fd
	ld [hl], a                                       ; $5804: $77
	ldh a, [$dd]                                     ; $5805: $f0 $dd
	ld b, l                                          ; $5807: $45
	ld [hl], a                                       ; $5808: $77
	ldh a, [$df]                                     ; $5809: $f0 $df
	cp a                                             ; $580b: $bf
	ld a, a                                          ; $580c: $7f
	db $fd                                           ; $580d: $fd
	ld [hl], a                                       ; $580e: $77
	ldh a, [$df]                                     ; $580f: $f0 $df
	ld d, l                                          ; $5811: $55
	sbc l                                            ; $5812: $9d
	ld e, a                                          ; $5813: $5f
	ld d, h                                          ; $5814: $54
	ld [hl], a                                       ; $5815: $77

jr_03b_5816:
	ldh a, [$dc]                                     ; $5816: $f0 $dc
	rst SubAFromBC                                          ; $5818: $e7
	adc a                                            ; $5819: $8f
	inc h                                            ; $581a: $24
	rlca                                             ; $581b: $07
	rst SubAFromBC                                          ; $581c: $e7
	ld h, h                                          ; $581d: $64
	ld h, h                                          ; $581e: $64
	db $e4                                           ; $581f: $e4
	ld h, [hl]                                       ; $5820: $66
	ld h, $04                                        ; $5821: $26 $04
	inc b                                            ; $5823: $04
	rst SubAFromBC                                          ; $5824: $e7
	cp $fe                                           ; $5825: $fe $fe
	rst $38                                          ; $5827: $ff
	rst $38                                          ; $5828: $ff
	add $7b                                          ; $5829: $c6 $7b
	add sp, -$66                                     ; $582b: $e8 $9a
	ld bc, $0405                                     ; $582d: $01 $05 $04
	add $39                                          ; $5830: $c6 $39
	ld a, d                                          ; $5832: $7a
	pop de                                           ; $5833: $d1
	ld a, a                                          ; $5834: $7f
	call nc, $e06a                                   ; $5835: $d4 $6a $e0
	halt                                             ; $5838: $76
	db $dd                                           ; $5839: $dd
	rst SubAFromDE                                          ; $583a: $df
	rst $38                                          ; $583b: $ff
	sbc e                                            ; $583c: $9b
	pop bc                                           ; $583d: $c1
	cp a                                             ; $583e: $bf
	ld a, a                                          ; $583f: $7f
	rst $38                                          ; $5840: $ff
	halt                                             ; $5841: $76
	cp a                                             ; $5842: $bf
	sub [hl]                                         ; $5843: $96
	rst $38                                          ; $5844: $ff
	inc h                                            ; $5845: $24
	ld c, h                                          ; $5846: $4c
	call c, $e4f4                                    ; $5847: $dc $f4 $e4
	call z, $f0d8                                    ; $584a: $cc $d8 $f0
	ld b, [hl]                                       ; $584d: $46
	ret nz                                           ; $584e: $c0

	call c, Call_03b_7e3b                            ; $584f: $dc $3b $7e
	cp [hl]                                          ; $5852: $be
	adc c                                            ; $5853: $89
	dec de                                           ; $5854: $1b
	inc hl                                           ; $5855: $23
	ld bc, $0521                                     ; $5856: $01 $21 $05
	ld hl, $3e3a                                     ; $5859: $21 $3a $3e
	ld h, $17                                        ; $585c: $26 $17
	sbc c                                            ; $585e: $99
	ld c, $5b                                        ; $585f: $0e $5b
	ld e, h                                          ; $5861: $5c
	ld e, a                                          ; $5862: $5f
	rst SubAFromDE                                          ; $5863: $df
	rst SubAFromDE                                          ; $5864: $df
	ldh [rSVBK], a                                   ; $5865: $e0 $70
	ld a, h                                          ; $5867: $7c
	daa                                              ; $5868: $27
	inc hl                                           ; $5869: $23
	sbc $20                                          ; $586a: $de $20
	sub d                                            ; $586c: $92
	xor $9d                                          ; $586d: $ee $9d
	ld a, c                                          ; $586f: $79
	push hl                                          ; $5870: $e5
	dec c                                            ; $5871: $0d
	db $fd                                           ; $5872: $fd
	db $fd                                           ; $5873: $fd
	db $fc                                           ; $5874: $fc
	inc bc                                           ; $5875: $03
	rrca                                             ; $5876: $0f
	rra                                              ; $5877: $1f
	ei                                               ; $5878: $fb
	di                                               ; $5879: $f3
	sbc $03                                          ; $587a: $de $03
	adc a                                            ; $587c: $8f

Jump_03b_587d:
	and $76                                          ; $587d: $e6 $76
	ld [hl], d                                       ; $587f: $72
	cp b                                             ; $5880: $b8
	call c, $edde                                    ; $5881: $dc $de $ed
	ld c, $19                                        ; $5884: $0e $19
	adc c                                            ; $5886: $89
	adc l                                            ; $5887: $8d
	rst JumpTable                                          ; $5888: $c7
	db $e3                                           ; $5889: $e3
	ld h, c                                          ; $588a: $61
	inc sp                                           ; $588b: $33
	rst $38                                          ; $588c: $ff
	call c, $9c80                                    ; $588d: $dc $80 $9c
	xor $00                                          ; $5890: $ee $00
	nop                                              ; $5892: $00
	call c, Call_03b_7eef                            ; $5893: $dc $ef $7e
	ld e, b                                          ; $5896: $58
	sbc [hl]                                         ; $5897: $9e
	nop                                              ; $5898: $00
	call c, $9c20                                    ; $5899: $dc $20 $9c
	ld a, a                                          ; $589c: $7f
	nop                                              ; $589d: $00
	nop                                              ; $589e: $00
	call c, $9a77                                    ; $589f: $dc $77 $9a
	rst FarCall                                          ; $58a2: $f7
	ld [hl], a                                       ; $58a3: $77
	nop                                              ; $58a4: $00
	inc a                                            ; $58a5: $3c
	inc h                                            ; $58a6: $24
	sbc $3c                                          ; $58a7: $de $3c
	sbc h                                            ; $58a9: $9c
	ei                                               ; $58aa: $fb
	jr c, jr_03b_58ad                                ; $58ab: $38 $00

jr_03b_58ad:
	jp c, $9ebd                                      ; $58ad: $da $bd $9e

	nop                                              ; $58b0: $00
	sbc $8c                                          ; $58b1: $de $8c
	rst SubAFromDE                                          ; $58b3: $df
	adc b                                            ; $58b4: $88
	sbc h                                            ; $58b5: $9c
	db $fc                                           ; $58b6: $fc
	adc [hl]                                         ; $58b7: $8e
	nop                                              ; $58b8: $00
	db $db                                           ; $58b9: $db
	sbc $8d                                          ; $58ba: $de $8d
	call c, $9100                                    ; $58bc: $dc $00 $91
	add c                                            ; $58bf: $81
	ld de, $0111                                     ; $58c0: $11 $11 $01
	pop af                                           ; $58c3: $f1
	ld bc, $9a01                                     ; $58c4: $01 $01 $9a
	xor d                                            ; $58c7: $aa
	ld a, [$8a9a]                                    ; $58c8: $fa $9a $8a
	ld e, d                                          ; $58cb: $5a
	ld a, [$4602]                                    ; $58cc: $fa $02 $46
	ret nz                                           ; $58cf: $c0

	sbc d                                            ; $58d0: $9a
	nop                                              ; $58d1: $00
	dec c                                            ; $58d2: $0d
	dec c                                            ; $58d3: $0d
	inc c                                            ; $58d4: $0c
	inc c                                            ; $58d5: $0c
	sbc $0d                                          ; $58d6: $de $0d
	sbc [hl]                                         ; $58d8: $9e
	ccf                                              ; $58d9: $3f
	jp c, $9232                                      ; $58da: $da $32 $92

	rst $38                                          ; $58dd: $ff
	inc a                                            ; $58de: $3c
	ld a, $ba                                        ; $58df: $3e $ba
	cp d                                             ; $58e1: $ba
	dec a                                            ; $58e2: $3d
	dec a                                            ; $58e3: $3d
	dec [hl]                                         ; $58e4: $35
	rst $38                                          ; $58e5: $ff
	rst $38                                          ; $58e6: $ff
	db $fd                                           ; $58e7: $fd
	ld a, l                                          ; $58e8: $7d
	ld a, l                                          ; $58e9: $7d
	sbc $7b                                          ; $58ea: $de $7b
	sbc d                                            ; $58ec: $9a
	rst $38                                          ; $58ed: $ff
	add h                                            ; $58ee: $84
	sub $56                                          ; $58ef: $d6 $56
	sub $de                                          ; $58f1: $d6 $de
	or [hl]                                          ; $58f3: $b6
	rst SubAFromDE                                          ; $58f4: $df
	rst $38                                          ; $58f5: $ff
	rst SubAFromDE                                          ; $58f6: $df
	xor l                                            ; $58f7: $ad
	sbc [hl]                                         ; $58f8: $9e
	dec l                                            ; $58f9: $2d
	sbc $6d                                          ; $58fa: $de $6d
	sbc l                                            ; $58fc: $9d
	rst $38                                          ; $58fd: $ff
	adc a                                            ; $58fe: $8f
	db $dd                                           ; $58ff: $dd
	rst GetHLinHL                                          ; $5900: $cf
	add l                                            ; $5901: $85
	jp z, $ffcf                                      ; $5902: $ca $cf $ff

	rst $38                                          ; $5905: $ff
	sbc a                                            ; $5906: $9f
	sbc [hl]                                         ; $5907: $9e
	sbc l                                            ; $5908: $9d
	sbc e                                            ; $5909: $9b
	sbc a                                            ; $590a: $9f
	sbc [hl]                                         ; $590b: $9e
	ld a, e                                          ; $590c: $7b
	cp l                                             ; $590d: $bd
	sbc $a7                                          ; $590e: $de $a7
	ld b, a                                          ; $5910: $47
	and e                                            ; $5911: $a3
	ld b, e                                          ; $5912: $43
	rst FarCall                                          ; $5913: $f7
	rst $38                                          ; $5914: $ff
	sbc $2f                                          ; $5915: $de $2f
	ld e, a                                          ; $5917: $5f
	cp a                                             ; $5918: $bf
	rst SubAFromDE                                          ; $5919: $df
	rst $38                                          ; $591a: $ff
	ld a, a                                          ; $591b: $7f
	ret c                                            ; $591c: $d8

	rst SubAFromBC                                          ; $591d: $e7
	sbc h                                            ; $591e: $9c
	rlca                                             ; $591f: $07
	inc b                                            ; $5920: $04
	ld b, $dd                                        ; $5921: $06 $dd
	add [hl]                                         ; $5923: $86
	ld a, d                                          ; $5924: $7a
	add d                                            ; $5925: $82
	jp c, $dbff                                      ; $5926: $da $ff $db

	sub l                                            ; $5929: $95
	sbc l                                            ; $592a: $9d
	ret nz                                           ; $592b: $c0

	add c                                            ; $592c: $81
	ld a, e                                          ; $592d: $7b
	ld d, $9e                                        ; $592e: $16 $9e
	ccf                                              ; $5930: $3f
	ld a, c                                          ; $5931: $79
	adc c                                            ; $5932: $89
	sbc b                                            ; $5933: $98
	ld a, $7d                                        ; $5934: $3e $7d
	di                                               ; $5936: $f3
	xor $d8                                          ; $5937: $ee $d8
	jr nc, jr_03b_599c                               ; $5939: $30 $61

	db $dd                                           ; $593b: $dd
	cp $9e                                           ; $593c: $fe $9e
	rst $38                                          ; $593e: $ff
	ld a, d                                          ; $593f: $7a
	sbc h                                            ; $5940: $9c
	add [hl]                                         ; $5941: $86
	ld h, c                                          ; $5942: $61
	jp $0f87                                         ; $5943: $c3 $87 $0f


	ld e, $3f                                        ; $5946: $1e $3f
	ld l, [hl]                                       ; $5948: $6e
	sub $ff                                          ; $5949: $d6 $ff
	rst $38                                          ; $594b: $ff
	ld a, a                                          ; $594c: $7f
	cp a                                             ; $594d: $bf
	ld a, a                                          ; $594e: $7f
	cp a                                             ; $594f: $bf
	ld e, a                                          ; $5950: $5f
	ccf                                              ; $5951: $3f
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	add b                                            ; $5954: $80
	ld b, b                                          ; $5955: $40
	add b                                            ; $5956: $80
	ld b, b                                          ; $5957: $40
	and b                                            ; $5958: $a0
	ret nz                                           ; $5959: $c0

	ld bc, $ffda                                     ; $595a: $01 $da $ff
	adc h                                            ; $595d: $8c
	ld c, $7e                                        ; $595e: $0e $7e
	ld c, $03                                        ; $5960: $0e $03
	inc bc                                           ; $5962: $03
	ld bc, $0000                                     ; $5963: $01 $00 $00
	rst GetHLinHL                                          ; $5966: $cf
	rst AddAOntoHL                                          ; $5967: $ef
	xor a                                            ; $5968: $af
	ldh a, [rSVBK]                                   ; $5969: $f0 $70
	rst $38                                          ; $596b: $ff
	jp c, $30ba                                      ; $596c: $da $ba $30

	jr nc, jr_03b_59e1                               ; $596f: $30 $70

	sbc $ff                                          ; $5971: $de $ff
	sub c                                            ; $5973: $91
	scf                                              ; $5974: $37
	ld h, a                                          ; $5975: $67
	ld sp, hl                                        ; $5976: $f9
	ld sp, hl                                        ; $5977: $f9
	di                                               ; $5978: $f3
	inc bc                                           ; $5979: $03
	rlca                                             ; $597a: $07
	db $fd                                           ; $597b: $fd
	ld c, c                                          ; $597c: $49
	add sp, $07                                      ; $597d: $e8 $07
	rlca                                             ; $597f: $07
	rrca                                             ; $5980: $0f
	rst $38                                          ; $5981: $ff
	sbc $fe                                          ; $5982: $de $fe
	sbc h                                            ; $5984: $9c
	ld e, a                                          ; $5985: $5f
	nop                                              ; $5986: $00
	ld a, a                                          ; $5987: $7f
	ld a, d                                          ; $5988: $7a
	db $e3                                           ; $5989: $e3
	ld [hl], c                                       ; $598a: $71
	daa                                              ; $598b: $27
	ld e, d                                          ; $598c: $5a
	ld e, b                                          ; $598d: $58
	inc bc                                           ; $598e: $03
	ldh a, [$1f]                                     ; $598f: $f0 $1f
	ldh a, [$9c]                                     ; $5991: $f0 $9c
	ld [bc], a                                       ; $5993: $02
	cp $fe                                           ; $5994: $fe $fe
	ld d, e                                          ; $5996: $53
	ldh a, [rPCM12]                                  ; $5997: $f0 $76
	call nz, $249b                                   ; $5999: $c4 $9b $24

jr_03b_599c:
	inc d                                            ; $599c: $14
	inc b                                            ; $599d: $04
	inc b                                            ; $599e: $04
	halt                                             ; $599f: $76
	call nz, $d88f                                   ; $59a0: $c4 $8f $d8
	add sp, -$08                                     ; $59a3: $e8 $f8
	ld hl, sp+$0e                                    ; $59a5: $f8 $0e
	ld c, $0d                                        ; $59a7: $0e $0d
	dec c                                            ; $59a9: $0d
	ld c, $00                                        ; $59aa: $0e $00
	rrca                                             ; $59ac: $0f
	ld bc, $3030                                     ; $59ad: $01 $30 $30
	ld [hl-], a                                      ; $59b0: $32
	ld [hl-], a                                      ; $59b1: $32
	sbc $30                                          ; $59b2: $de $30
	sbc c                                            ; $59b4: $99
	ccf                                              ; $59b5: $3f
	or h                                             ; $59b6: $b4
	cp e                                             ; $59b7: $bb
	cp e                                             ; $59b8: $bb
	xor c                                            ; $59b9: $a9
	dec sp                                           ; $59ba: $3b
	ld a, e                                          ; $59bb: $7b
	pop de                                           ; $59bc: $d1
	sbc [hl]                                         ; $59bd: $9e
	ld a, e                                          ; $59be: $7b
	sbc $76                                          ; $59bf: $de $76
	sbc [hl]                                         ; $59c1: $9e
	db $e4                                           ; $59c2: $e4
	ld a, e                                          ; $59c3: $7b
	jp z, $b69d                                      ; $59c4: $ca $9d $b6

	halt                                             ; $59c7: $76
	sbc $56                                          ; $59c8: $de $56
	ld a, e                                          ; $59ca: $7b
	ldh a, [$9e]                                     ; $59cb: $f0 $9e
	ld l, l                                          ; $59cd: $6d
	db $dd                                           ; $59ce: $dd
	db $ed                                           ; $59cf: $ed
	ld a, e                                          ; $59d0: $7b
	ldh a, [$9a]                                     ; $59d1: $f0 $9a
	set 1, a                                         ; $59d3: $cb $cf
	jp z, $cece                                      ; $59d5: $ca $ce $ce

	ld a, e                                          ; $59d8: $7b
	ld hl, sp-$23                                    ; $59d9: $f8 $dd
	sbc a                                            ; $59db: $9f
	sbc l                                            ; $59dc: $9d
	sbc e                                            ; $59dd: $9b
	ld bc, $227b                                     ; $59de: $01 $7b $22

jr_03b_59e1:
	adc b                                            ; $59e1: $88
	rra                                              ; $59e2: $1f
	ld c, e                                          ; $59e3: $4b
	ld [hl], $4e                                     ; $59e4: $36 $4e
	add hl, de                                       ; $59e6: $19
	di                                               ; $59e7: $f3
	halt                                             ; $59e8: $76
	ld a, $7b                                        ; $59e9: $3e $7b
	ld sp, $8301                                     ; $59eb: $31 $01 $83
	rst SubAFromBC                                          ; $59ee: $e7
	rst GetHLinHL                                          ; $59ef: $cf
	rst $38                                          ; $59f0: $ff
	pop hl                                           ; $59f1: $e1
	pop hl                                           ; $59f2: $e1
	ld h, c                                          ; $59f3: $61
	and c                                            ; $59f4: $a1
	pop hl                                           ; $59f5: $e1
	ldh a, [$9b]                                     ; $59f6: $f0 $9b
	rrca                                             ; $59f8: $0f
	sbc $86                                          ; $59f9: $de $86
	sbc e                                            ; $59fb: $9b
	add $e6                                          ; $59fc: $c6 $e6
	db $f4                                           ; $59fe: $f4
	db $fc                                           ; $59ff: $fc
	ld h, l                                          ; $5a00: $65
	or e                                             ; $5a01: $b3
	sbc c                                            ; $5a02: $99
	rst $38                                          ; $5a03: $ff
	push af                                          ; $5a04: $f5
	push de                                          ; $5a05: $d5
	sub l                                            ; $5a06: $95
	sbc a                                            ; $5a07: $9f
	sub a                                            ; $5a08: $97
	ld [hl], a                                       ; $5a09: $77
	ld a, d                                          ; $5a0a: $7a
	ld a, h                                          ; $5a0b: $7c
	sub a                                            ; $5a0c: $97
	db $dd                                           ; $5a0d: $dd
	rst $38                                          ; $5a0e: $ff
	sub [hl]                                         ; $5a0f: $96
	rst AddAOntoHL                                          ; $5a10: $ef
	jp $0ec7                                         ; $5a11: $c3 $c7 $0e


	inc a                                            ; $5a14: $3c
	ld [hl], b                                       ; $5a15: $70
	ldh [$c0], a                                     ; $5a16: $e0 $c0
	sub b                                            ; $5a18: $90
	reti                                             ; $5a19: $d9


	rst $38                                          ; $5a1a: $ff
	sbc d                                            ; $5a1b: $9a
	xor [hl]                                         ; $5a1c: $ae
	ld d, [hl]                                       ; $5a1d: $56
	xor [hl]                                         ; $5a1e: $ae
	ld d, $0e                                        ; $5a1f: $16 $0e
	ld a, e                                          ; $5a21: $7b
	cp $7e                                           ; $5a22: $fe $7e
	add $91                                          ; $5a24: $c6 $91
	rra                                              ; $5a26: $1f
	cpl                                              ; $5a27: $2f
	rla                                              ; $5a28: $17
	rrca                                             ; $5a29: $0f
	rla                                              ; $5a2a: $17
	dec bc                                           ; $5a2b: $0b
	and b                                            ; $5a2c: $a0
	ret nz                                           ; $5a2d: $c0

	ldh [$d0], a                                     ; $5a2e: $e0 $d0
	add sp, -$10                                     ; $5a30: $e8 $f0
	add sp, -$0c                                     ; $5a32: $e8 $f4
	ld b, l                                          ; $5a34: $45
	ld [hl], b                                       ; $5a35: $70
	adc d                                            ; $5a36: $8a
	cp [hl]                                          ; $5a37: $be
	cp l                                             ; $5a38: $bd
	cp l                                             ; $5a39: $bd
	ld a, l                                          ; $5a3a: $7d
	ld a, l                                          ; $5a3b: $7d
	ld [hl], l                                       ; $5a3c: $75
	ld [hl], l                                       ; $5a3d: $75
	push af                                          ; $5a3e: $f5
	ld h, e                                          ; $5a3f: $63
	ld h, d                                          ; $5a40: $62
	ld b, d                                          ; $5a41: $42
	jp nz, $cac2                                     ; $5a42: $c2 $c2 $ca

	adc d                                            ; $5a45: $8a
	adc d                                            ; $5a46: $8a
	call c, $d7dc                                    ; $5a47: $dc $dc $d7
	call nc, $ded4                                   ; $5a4a: $d4 $d4 $de
	jp c, Jump_03b_6bdf                              ; $5a4d: $da $df $6b

	sbc h                                            ; $5a50: $9c
	ld a, [hl+]                                      ; $5a51: $2a
	dec hl                                           ; $5a52: $2b
	dec hl                                           ; $5a53: $2b
	sbc $25                                          ; $5a54: $de $25
	ld a, d                                          ; $5a56: $7a
	adc h                                            ; $5a57: $8c
	sbc d                                            ; $5a58: $9a
	ret nc                                           ; $5a59: $d0

	and b                                            ; $5a5a: $a0
	ret nc                                           ; $5a5b: $d0

	add sp, -$0c                                     ; $5a5c: $e8 $f4
	ld a, d                                          ; $5a5e: $7a
	ld a, h                                          ; $5a5f: $7c
	ld a, [hl]                                       ; $5a60: $7e
	cpl                                              ; $5a61: $2f
	ld a, a                                          ; $5a62: $7f
	or [hl]                                          ; $5a63: $b6
	sbc [hl]                                         ; $5a64: $9e
	adc e                                            ; $5a65: $8b
	ld sp, hl                                        ; $5a66: $f9
	ld b, a                                          ; $5a67: $47
	cp b                                             ; $5a68: $b8
	ld e, e                                          ; $5a69: $5b
	ldh a, [$9d]                                     ; $5a6a: $f0 $9d
	ld bc, $de07                                     ; $5a6c: $01 $07 $de
	rra                                              ; $5a6f: $1f
	sbc $ff                                          ; $5a70: $de $ff
	sbc b                                            ; $5a72: $98
	cp $f8                                           ; $5a73: $fe $f8
	ldh [$ef], a                                     ; $5a75: $e0 $ef
	rst AddAOntoHL                                          ; $5a77: $ef
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	ld [hl], e                                       ; $5a7a: $73
	ld h, b                                          ; $5a7b: $60
	sbc $ff                                          ; $5a7c: $de $ff
	ld [hl], h                                       ; $5a7e: $74
	xor c                                            ; $5a7f: $a9
	ld a, [hl]                                       ; $5a80: $7e
	daa                                              ; $5a81: $27
	rst $38                                          ; $5a82: $ff
	sbc $f8                                          ; $5a83: $de $f8
	sbc l                                            ; $5a85: $9d
	add sp, -$28                                     ; $5a86: $e8 $d8
	sbc $ff                                          ; $5a88: $de $ff
	sbc [hl]                                         ; $5a8a: $9e
	sbc a                                            ; $5a8b: $9f
	ld a, c                                          ; $5a8c: $79
	rst SubAFromDE                                          ; $5a8d: $df
	sbc l                                            ; $5a8e: $9d
	ld a, a                                          ; $5a8f: $7f
	ld c, b                                          ; $5a90: $48
	db $db                                           ; $5a91: $db
	inc b                                            ; $5a92: $04
	sbc l                                            ; $5a93: $9d
	nop                                              ; $5a94: $00
	db $fd                                           ; $5a95: $fd
	db $db                                           ; $5a96: $db
	ld hl, sp+$7e                                    ; $5a97: $f8 $7e
	and h                                            ; $5a99: $a4
	rst SubAFromDE                                          ; $5a9a: $df
	ccf                                              ; $5a9b: $3f
	rst SubAFromDE                                          ; $5a9c: $df
	ld a, [hl+]                                      ; $5a9d: $2a
	ld a, a                                          ; $5a9e: $7f
	db $fd                                           ; $5a9f: $fd
	rst $38                                          ; $5aa0: $ff
	ld a, h                                          ; $5aa1: $7c
	ld b, h                                          ; $5aa2: $44
	rst SubAFromDE                                          ; $5aa3: $df
	dec [hl]                                         ; $5aa4: $35
	ld a, a                                          ; $5aa5: $7f
	db $fd                                           ; $5aa6: $fd
	sub a                                            ; $5aa7: $97
	cp a                                             ; $5aa8: $bf
	ld d, l                                          ; $5aa9: $55
	rst $38                                          ; $5aaa: $ff
	rst $38                                          ; $5aab: $ff
	xor d                                            ; $5aac: $aa
	xor d                                            ; $5aad: $aa
	rst $38                                          ; $5aae: $ff
	xor d                                            ; $5aaf: $aa
	ld a, e                                          ; $5ab0: $7b
	and b                                            ; $5ab1: $a0
	sbc c                                            ; $5ab2: $99
	nop                                              ; $5ab3: $00
	ld d, l                                          ; $5ab4: $55
	ld d, l                                          ; $5ab5: $55
	nop                                              ; $5ab6: $00
	ld d, l                                          ; $5ab7: $55
	rst $38                                          ; $5ab8: $ff
	ld a, e                                          ; $5ab9: $7b
	ldh a, [$de]                                     ; $5aba: $f0 $de
	rst $38                                          ; $5abc: $ff
	sbc e                                            ; $5abd: $9b
	db $fc                                           ; $5abe: $fc
	inc b                                            ; $5abf: $04
	inc b                                            ; $5ac0: $04
	rst $38                                          ; $5ac1: $ff
	sbc $60                                          ; $5ac2: $de $60
	sub c                                            ; $5ac4: $91
	ld h, e                                          ; $5ac5: $63
	ld h, l                                          ; $5ac6: $65
	db $fd                                           ; $5ac7: $fd
	ld d, h                                          ; $5ac8: $54
	ld bc, $5501                                     ; $5ac9: $01 $01 $55
	ld d, [hl]                                       ; $5acc: $56
	ld d, [hl]                                       ; $5acd: $56
	sub [hl]                                         ; $5ace: $96
	db $d3                                           ; $5acf: $d3
	ld h, h                                          ; $5ad0: $64
	rst $38                                          ; $5ad1: $ff
	rst $38                                          ; $5ad2: $ff
	sbc $ab                                          ; $5ad3: $de $ab
	sub h                                            ; $5ad5: $94
	ld l, e                                          ; $5ad6: $6b
	cpl                                              ; $5ad7: $2f
	sbc a                                            ; $5ad8: $9f
	inc a                                            ; $5ad9: $3c
	jr c, @+$32                                      ; $5ada: $38 $30

	jr nc, @-$6e                                     ; $5adc: $30 $90

	pop de                                           ; $5ade: $d1
	xor e                                            ; $5adf: $ab
	rst SubAFromHL                                          ; $5ae0: $d7
	reti                                             ; $5ae1: $d9


	rst $38                                          ; $5ae2: $ff
	sub a                                            ; $5ae3: $97
	ld b, $0e                                        ; $5ae4: $06 $0e
	ccf                                              ; $5ae6: $3f
	ld h, a                                          ; $5ae7: $67
	res 2, a                                         ; $5ae8: $cb $97
	xor e                                            ; $5aea: $ab
	ld d, a                                          ; $5aeb: $57
	ret c                                            ; $5aec: $d8

	rst $38                                          ; $5aed: $ff
	sbc h                                            ; $5aee: $9c
	nop                                              ; $5aef: $00
	ld [$de00], a                                    ; $5af0: $ea $00 $de
	ld l, d                                          ; $5af3: $6a
	sbc d                                            ; $5af4: $9a
	ld [rIE], a                                    ; $5af5: $ea $ff $ff
	dec d                                            ; $5af8: $15
	dec d                                            ; $5af9: $15
	db $dd                                           ; $5afa: $dd
	sub l                                            ; $5afb: $95
	sbc h                                            ; $5afc: $9c
	rst SubAFromDE                                          ; $5afd: $df
	xor a                                            ; $5afe: $af
	rst SubAFromHL                                          ; $5aff: $d7
	ld [hl], a                                       ; $5b00: $77
	cp $9b                                           ; $5b01: $fe $9b
	xor e                                            ; $5b03: $ab
	and b                                            ; $5b04: $a0
	ret nc                                           ; $5b05: $d0

	xor b                                            ; $5b06: $a8
	ld [hl], a                                       ; $5b07: $77
	cp $9e                                           ; $5b08: $fe $9e
	call nc, $ffd9                                   ; $5b0a: $d4 $d9 $ff
	halt                                             ; $5b0d: $76
	call nz, $fe7b                                   ; $5b0e: $c4 $7b $fe
	sub d                                            ; $5b11: $92
	ld e, $05                                        ; $5b12: $1e $05
	inc bc                                           ; $5b14: $03
	dec b                                            ; $5b15: $05
	ld [bc], a                                       ; $5b16: $02
	ld bc, $0100                                     ; $5b17: $01 $00 $01
	nop                                              ; $5b1a: $00
	ld a, [$fafc]                                    ; $5b1b: $fa $fc $fa
	db $fd                                           ; $5b1e: $fd
	ld [hl], c                                       ; $5b1f: $71
	ld h, a                                          ; $5b20: $67
	sbc $ff                                          ; $5b21: $de $ff
	ld a, a                                          ; $5b23: $7f
	ld l, $7e                                        ; $5b24: $2e $7e
	ldh a, [c]                                       ; $5b26: $f2
	db $fd                                           ; $5b27: $fd
	sbc [hl]                                         ; $5b28: $9e
	add b                                            ; $5b29: $80
	ld a, c                                          ; $5b2a: $79
	ld l, h                                          ; $5b2b: $6c
	db $dd                                           ; $5b2c: $dd
	push af                                          ; $5b2d: $f5
	sbc c                                            ; $5b2e: $99
	rst FarCall                                          ; $5b2f: $f7
	rst SubAFromDE                                          ; $5b30: $df
	rst SubAFromDE                                          ; $5b31: $df
	db $db                                           ; $5b32: $db
	adc d                                            ; $5b33: $8a
	adc d                                            ; $5b34: $8a
	sbc $0a                                          ; $5b35: $de $0a
	rst SubAFromDE                                          ; $5b37: $df
	xor d                                            ; $5b38: $aa
	adc d                                            ; $5b39: $8a
	xor $da                                          ; $5b3a: $ee $da
	ld a, [$fbfb]                                    ; $5b3c: $fa $fb $fb
	ld sp, hl                                        ; $5b3f: $f9
	ld sp, hl                                        ; $5b40: $f9
	cp b                                             ; $5b41: $b8
	or a                                             ; $5b42: $b7
	dec h                                            ; $5b43: $25
	dec h                                            ; $5b44: $25
	inc h                                            ; $5b45: $24
	inc h                                            ; $5b46: $24
	ld h, $26                                        ; $5b47: $26 $26
	ld h, a                                          ; $5b49: $67
	ld l, a                                          ; $5b4a: $6f
	ld [$f8f4], a                                    ; $5b4b: $ea $f4 $f8
	db $f4                                           ; $5b4e: $f4
	db $dd                                           ; $5b4f: $dd
	ld hl, sp-$65                                    ; $5b50: $f8 $9b
	sub l                                            ; $5b52: $95
	adc e                                            ; $5b53: $8b
	add [hl]                                         ; $5b54: $86
	adc b                                            ; $5b55: $88
	db $dd                                           ; $5b56: $dd
	add l                                            ; $5b57: $85
	ld a, e                                          ; $5b58: $7b
	scf                                              ; $5b59: $37
	ld a, c                                          ; $5b5a: $79
	ld [de], a                                       ; $5b5b: $12
	sbc l                                            ; $5b5c: $9d
	rst $38                                          ; $5b5d: $ff
	ldh a, [$db]                                     ; $5b5e: $f0 $db
	rst $38                                          ; $5b60: $ff
	sbc d                                            ; $5b61: $9a
	ldh [$c1], a                                     ; $5b62: $e0 $c1
	nop                                              ; $5b64: $00
	ld hl, sp+$0c                                    ; $5b65: $f8 $0c
	call c, $defe                                    ; $5b67: $dc $fe $de
	rst $38                                          ; $5b6a: $ff
	ld a, h                                          ; $5b6b: $7c
	call z, $a87b                                    ; $5b6c: $cc $7b $a8
	sub h                                            ; $5b6f: $94
	rrca                                             ; $5b70: $0f
	rlca                                             ; $5b71: $07
	rlca                                             ; $5b72: $07
	rra                                              ; $5b73: $1f
	rrca                                             ; $5b74: $0f
	rrca                                             ; $5b75: $0f
	rla                                              ; $5b76: $17
	rrca                                             ; $5b77: $0f
	rst $38                                          ; $5b78: $ff
	ld hl, sp-$18                                    ; $5b79: $f8 $e8
	sbc $ef                                          ; $5b7b: $de $ef
	rst SubAFromDE                                          ; $5b7d: $df
	ldh [$6e], a                                     ; $5b7e: $e0 $6e
	and a                                            ; $5b80: $a7
	rst SubAFromDE                                          ; $5b81: $df
	ldh a, [rPCM12]                                  ; $5b82: $f0 $76

jr_03b_5b84:
	inc c                                            ; $5b84: $0c
	halt                                             ; $5b85: $76
	and d                                            ; $5b86: $a2
	sub a                                            ; $5b87: $97
	ld a, [$faf5]                                    ; $5b88: $fa $f5 $fa
	db $f4                                           ; $5b8b: $f4
	add sp, -$30                                     ; $5b8c: $e8 $d0
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	ld [hl], h                                       ; $5b90: $74
	res 3, d                                         ; $5b91: $cb $9a
	db $fc                                           ; $5b93: $fc
	ldh a, [rDIV]                                    ; $5b94: $f0 $04
	ld [bc], a                                       ; $5b96: $02
	add b                                            ; $5b97: $80
	ld a, [$fe8f]                                    ; $5b98: $fa $8f $fe
	db $fd                                           ; $5b9b: $fd
	cp $fd                                           ; $5b9c: $fe $fd
	ld a, $05                                        ; $5b9e: $3e $05
	ld [bc], a                                       ; $5ba0: $02
	dec c                                            ; $5ba1: $0d
	cp d                                             ; $5ba2: $ba
	ld a, a                                          ; $5ba3: $7f
	cp [hl]                                          ; $5ba4: $be
	ld a, l                                          ; $5ba5: $7d
	cp [hl]                                          ; $5ba6: $be
	push af                                          ; $5ba7: $f5
	cp d                                             ; $5ba8: $ba
	ld [hl], l                                       ; $5ba9: $75
	ld sp, hl                                        ; $5baa: $f9
	sbc l                                            ; $5bab: $9d
	xor d                                            ; $5bac: $aa
	ld d, l                                          ; $5bad: $55
	ld l, a                                          ; $5bae: $6f
	cp $f9                                           ; $5baf: $fe $f9
	sbc d                                            ; $5bb1: $9a
	xor b                                            ; $5bb2: $a8
	ld d, b                                          ; $5bb3: $50
	xor c                                            ; $5bb4: $a9
	ld d, d                                          ; $5bb5: $52
	xor b                                            ; $5bb6: $a8
	ld a, e                                          ; $5bb7: $7b
	ldh a, [$df]                                     ; $5bb8: $f0 $df
	inc b                                            ; $5bba: $04
	sbc $07                                          ; $5bbb: $de $07
	ld a, b                                          ; $5bbd: $78
	cp a                                             ; $5bbe: $bf
	add a                                            ; $5bbf: $87
	add hl, de                                       ; $5bc0: $19
	ld h, h                                          ; $5bc1: $64
	sbc d                                            ; $5bc2: $9a
	ld [hl], c                                       ; $5bc3: $71
	call $3113                                       ; $5bc4: $cd $13 $31
	ld e, $7f                                        ; $5bc7: $1e $7f
	rst $38                                          ; $5bc9: $ff
	rst SubAFromBC                                          ; $5bca: $e7
	adc a                                            ; $5bcb: $8f
	inc sp                                           ; $5bcc: $33
	pop hl                                           ; $5bcd: $e1
	ret nz                                           ; $5bce: $c0

	ldh [rOCPD], a                                   ; $5bcf: $e0 $6b
	rst SubAFromHL                                          ; $5bd1: $d7
	xor [hl]                                         ; $5bd2: $ae
	sbc [hl]                                         ; $5bd3: $9e
	sbc h                                            ; $5bd4: $9c
	ld a, b                                          ; $5bd5: $78
	ld c, $05                                        ; $5bd6: $0e $05
	ld [hl], a                                       ; $5bd8: $77
	add hl, de                                       ; $5bd9: $19
	ld [hl], a                                       ; $5bda: $77

Jump_03b_5bdb:
	ld d, a                                          ; $5bdb: $57
	sub a                                            ; $5bdc: $97
	adc e                                            ; $5bdd: $8b
	rla                                              ; $5bde: $17
	cpl                                              ; $5bdf: $2f
	ld d, [hl]                                       ; $5be0: $56
	cpl                                              ; $5be1: $2f
	ld e, a                                          ; $5be2: $5f
	ccf                                              ; $5be3: $3f
	ld e, l                                          ; $5be4: $5d
	reti                                             ; $5be5: $d9


	rst $38                                          ; $5be6: $ff
	adc d                                            ; $5be7: $8a
	ld [hl], a                                       ; $5be8: $77
	or l                                             ; $5be9: $b5
	rst SubAFromDE                                          ; $5bea: $df
	ld [hl], b                                       ; $5beb: $70
	scf                                              ; $5bec: $37
	ld sp, $3535                                     ; $5bed: $31 $35 $35
	db $dd                                           ; $5bf0: $dd
	ld a, a                                          ; $5bf1: $7f
	jr nc, jr_03b_5b84                               ; $5bf2: $30 $90

	ret c                                            ; $5bf4: $d8

	rst SubAFromDE                                          ; $5bf5: $df
	db $db                                           ; $5bf6: $db
	db $db                                           ; $5bf7: $db
	rst SubAFromHL                                          ; $5bf8: $d7

Jump_03b_5bf9:
	xor e                                            ; $5bf9: $ab
	rst SubAFromHL                                          ; $5bfa: $d7
	xor e                                            ; $5bfb: $ab
	push de                                          ; $5bfc: $d5
	ld a, e                                          ; $5bfd: $7b
	cp $7e                                           ; $5bfe: $fe $7e
	add $7f                                          ; $5c00: $c6 $7f
	cp $9e                                           ; $5c02: $fe $9e
	xor d                                            ; $5c04: $aa
	ld a, e                                          ; $5c05: $7b
	cp $62                                           ; $5c06: $fe $62
	ret nz                                           ; $5c08: $c0

	sbc [hl]                                         ; $5c09: $9e
	ld e, $73                                        ; $5c0a: $1e $73
	cp $9e                                           ; $5c0c: $fe $9e
	ld d, $45                                        ; $5c0e: $16 $45
	ldh [$7f], a                                     ; $5c10: $e0 $7f
	xor e                                            ; $5c12: $ab
	ld a, l                                          ; $5c13: $7d
	cp d                                             ; $5c14: $ba
	ld a, c                                          ; $5c15: $79
	ld l, [hl]                                       ; $5c16: $6e
	sbc d                                            ; $5c17: $9a
	cpl                                              ; $5c18: $2f
	add b                                            ; $5c19: $80
	ret nz                                           ; $5c1a: $c0

	and b                                            ; $5c1b: $a0
	ret nc                                           ; $5c1c: $d0

	ld a, c                                          ; $5c1d: $79
	ld l, [hl]                                       ; $5c1e: $6e
	sub [hl]                                         ; $5c1f: $96
	ret nc                                           ; $5c20: $d0

	ld c, d                                          ; $5c21: $4a
	ld [$e0df], a                                    ; $5c22: $ea $df $e0
	and $ef                                          ; $5c25: $e6 $ef
	rst AddAOntoHL                                          ; $5c27: $ef
	db $eb                                           ; $5c28: $eb
	ld a, e                                          ; $5c29: $7b
	rst SubAFromBC                                          ; $5c2a: $e7
	sbc l                                            ; $5c2b: $9d
	rra                                              ; $5c2c: $1f
	add hl, de                                       ; $5c2d: $19
	sbc $10                                          ; $5c2e: $de $10
	sub a                                            ; $5c30: $97
	dec h                                            ; $5c31: $25
	daa                                              ; $5c32: $27
	rst $38                                          ; $5c33: $ff
	jp Jump_03b_5bdb                                 ; $5c34: $c3 $db $5b


	ld a, e                                          ; $5c37: $7b
	ld a, e                                          ; $5c38: $7b
	ld a, d                                          ; $5c39: $7a
	dec de                                           ; $5c3a: $1b
	sbc b                                            ; $5c3b: $98
	db $fc                                           ; $5c3c: $fc
	db $e4                                           ; $5c3d: $e4
	and h                                            ; $5c3e: $a4
	add h                                            ; $5c3f: $84
	add h                                            ; $5c40: $84
	ld sp, hl                                        ; $5c41: $f9
	ld hl, sp+$6e                                    ; $5c42: $f8 $6e
	adc h                                            ; $5c44: $8c
	sbc e                                            ; $5c45: $9b
	add h                                            ; $5c46: $84
	rlca                                             ; $5c47: $07
	dec b                                            ; $5c48: $05
	ld b, $7b                                        ; $5c49: $06 $7b
	ld d, c                                          ; $5c4b: $51
	add [hl]                                         ; $5c4c: $86
	nop                                              ; $5c4d: $00
	sbc a                                            ; $5c4e: $9f
	db $10                                           ; $5c4f: $10
	adc a                                            ; $5c50: $8f
	rst SubAFromDE                                          ; $5c51: $df
	dec de                                           ; $5c52: $1b
	sub c                                            ; $5c53: $91
	di                                               ; $5c54: $f3
	db $10                                           ; $5c55: $10
	ret nz                                           ; $5c56: $c0

	rst GetHLinHL                                          ; $5c57: $cf
	ld l, a                                          ; $5c58: $6f
	add hl, sp                                       ; $5c59: $39
	pop af                                           ; $5c5a: $f1
	di                                               ; $5c5b: $f3
	push af                                          ; $5c5c: $f5
	ld b, $be                                        ; $5c5d: $06 $be
	xor [hl]                                         ; $5c5f: $ae
	ld l, a                                          ; $5c60: $6f
	xor $cd                                          ; $5c61: $ee $cd
	sbc [hl]                                         ; $5c63: $9e
	db $fd                                           ; $5c64: $fd
	xor d                                            ; $5c65: $aa
	ld a, c                                          ; $5c66: $79
	sub c                                            ; $5c67: $91
	sub a                                            ; $5c68: $97
	cp $fc                                           ; $5c69: $fe $fc
	ld hl, sp-$10                                    ; $5c6b: $f8 $f0
	nop                                              ; $5c6d: $00
	ld b, b                                          ; $5c6e: $40
	ret nz                                           ; $5c6f: $c0

	ld b, b                                          ; $5c70: $40
	ld a, d                                          ; $5c71: $7a
	ld l, c                                          ; $5c72: $69
	ld a, e                                          ; $5c73: $7b
	ret c                                            ; $5c74: $d8

	ld a, a                                          ; $5c75: $7f
	or c                                             ; $5c76: $b1
	ld a, a                                          ; $5c77: $7f
	sub [hl]                                         ; $5c78: $96
	ld a, h                                          ; $5c79: $7c
	db $e4                                           ; $5c7a: $e4
	ld [hl], d                                       ; $5c7b: $72
	ld e, b                                          ; $5c7c: $58
	db $fd                                           ; $5c7d: $fd
	sbc h                                            ; $5c7e: $9c
	ld hl, sp-$04                                    ; $5c7f: $f8 $fc
	db $fc                                           ; $5c81: $fc
	ld [hl], d                                       ; $5c82: $72
	sbc e                                            ; $5c83: $9b
	ld h, e                                          ; $5c84: $63
	ld [hl], b                                       ; $5c85: $70
	ld a, a                                          ; $5c86: $7f
	rst AddAOntoHL                                          ; $5c87: $ef
	sbc l                                            ; $5c88: $9d
	ld a, [hl]                                       ; $5c89: $7e
	ccf                                              ; $5c8a: $3f
	ld h, h                                          ; $5c8b: $64
	inc hl                                           ; $5c8c: $23
	cp $8f                                           ; $5c8d: $fe $8f
	ld a, $fd                                        ; $5c8f: $3e $fd
	ld a, d                                          ; $5c91: $7a
	dec a                                            ; $5c92: $3d
	ld a, [de]                                       ; $5c93: $1a
	dec c                                            ; $5c94: $0d
	cp $fd                                           ; $5c95: $fe $fd
	xor d                                            ; $5c97: $aa
	ld [hl], l                                       ; $5c98: $75
	xor d                                            ; $5c99: $aa
	push af                                          ; $5c9a: $f5
	cp d                                             ; $5c9b: $ba
	push af                                          ; $5c9c: $f5
	cp d                                             ; $5c9d: $ba
	db $fd                                           ; $5c9e: $fd
	ld h, $c0                                        ; $5c9f: $26 $c0
	ld b, a                                          ; $5ca1: $47
	ldh a, [$9c]                                     ; $5ca2: $f0 $9c
	xor [hl]                                         ; $5ca4: $ae
	ld b, e                                          ; $5ca5: $43
	and e                                            ; $5ca6: $a3
	ld a, c                                          ; $5ca7: $79
	and h                                            ; $5ca8: $a4
	ld a, h                                          ; $5ca9: $7c
	db $e3                                           ; $5caa: $e3
	sbc e                                            ; $5cab: $9b
	ld [hl], c                                       ; $5cac: $71
	ccf                                              ; $5cad: $3f
	rra                                              ; $5cae: $1f
	ld [$97fd], sp                                   ; $5caf: $08 $fd $97
	and d                                            ; $5cb2: $a2
	ld d, l                                          ; $5cb3: $55
	ld [$fff7], a                                    ; $5cb4: $ea $f7 $ff
	rst GetHLinHL                                          ; $5cb7: $cf
	rst SubAFromBC                                          ; $5cb8: $e7
	di                                               ; $5cb9: $f3
	db $dd                                           ; $5cba: $dd
	rst $38                                          ; $5cbb: $ff
	sbc [hl]                                         ; $5cbc: $9e
	ccf                                              ; $5cbd: $3f
	ld a, d                                          ; $5cbe: $7a
	sbc a                                            ; $5cbf: $9f
	sub a                                            ; $5cc0: $97
	cp [hl]                                          ; $5cc1: $be
	ld [hl], l                                       ; $5cc2: $75
	cp $fd                                           ; $5cc3: $fe $fd
	ld [$2ad5], a                                    ; $5cc5: $ea $d5 $2a
	push de                                          ; $5cc8: $d5
	reti                                             ; $5cc9: $d9


	rst $38                                          ; $5cca: $ff
	sub l                                            ; $5ccb: $95
	or l                                             ; $5ccc: $b5
	or c                                             ; $5ccd: $b1
	sub c                                            ; $5cce: $91
	sub l                                            ; $5ccf: $95
	pop de                                           ; $5cd0: $d1
	push af                                          ; $5cd1: $f5
	push bc                                          ; $5cd2: $c5
	push de                                          ; $5cd3: $d5
	db $db                                           ; $5cd4: $db
	db $db                                           ; $5cd5: $db
	call c, $9efb                                    ; $5cd6: $dc $fb $9e
	db $eb                                           ; $5cd9: $eb
	ld [hl-], a                                      ; $5cda: $32
	nop                                              ; $5cdb: $00
	sbc l                                            ; $5cdc: $9d
	ld b, l                                          ; $5cdd: $45
	ld d, l                                          ; $5cde: $55
	db $dd                                           ; $5cdf: $dd
	inc sp                                           ; $5ce0: $33
	sbc d                                            ; $5ce1: $9a
	ld d, h                                          ; $5ce2: $54
	ld [hl], a                                       ; $5ce3: $77
	ld [hl], a                                       ; $5ce4: $77
	ld h, a                                          ; $5ce5: $67
	ld d, l                                          ; $5ce6: $55
	ld l, a                                          ; $5ce7: $6f
	or $99                                           ; $5ce8: $f6 $99
	ld h, [hl]                                       ; $5cea: $66
	ld h, h                                          ; $5ceb: $64
	ld h, [hl]                                       ; $5cec: $66
	ld d, [hl]                                       ; $5ced: $56
	ld d, l                                          ; $5cee: $55
	inc sp                                           ; $5cef: $33
	sbc $55                                          ; $5cf0: $de $55
	ld a, e                                          ; $5cf2: $7b
	or $9e                                           ; $5cf3: $f6 $9e
	ld b, [hl]                                       ; $5cf5: $46
	ld l, a                                          ; $5cf6: $6f
	or $9b                                           ; $5cf7: $f6 $9b
	ld d, a                                          ; $5cf9: $57
	ld [hl], a                                       ; $5cfa: $77
	ld b, h                                          ; $5cfb: $44
	ld b, e                                          ; $5cfc: $43
	ld [hl], e                                       ; $5cfd: $73
	or $9c                                           ; $5cfe: $f6 $9c
	ld d, [hl]                                       ; $5d00: $56
	ld h, h                                          ; $5d01: $64
	ld b, h                                          ; $5d02: $44
	ld [hl], a                                       ; $5d03: $77
	or $9b                                           ; $5d04: $f6 $9b
	ld b, h                                          ; $5d06: $44
	ld d, l                                          ; $5d07: $55
	ld d, [hl]                                       ; $5d08: $56
	ld h, [hl]                                       ; $5d09: $66
	ld [hl], a                                       ; $5d0a: $77
	or $91                                           ; $5d0b: $f6 $91
	add d                                            ; $5d0d: $82
	ld sp, hl                                        ; $5d0e: $f9
	reti                                             ; $5d0f: $d9


	ld bc, $1fdf                                     ; $5d10: $01 $df $1f
	sbc l                                            ; $5d13: $9d
	rlca                                             ; $5d14: $07
	ld bc, $80fc                                     ; $5d15: $01 $fc $80
	add b                                            ; $5d18: $80
	ld b, b                                          ; $5d19: $40
	add b                                            ; $5d1a: $80
	ld d, b                                          ; $5d1b: $50
	ld l, d                                          ; $5d1c: $6a
	ld d, l                                          ; $5d1d: $55
	ld a, [$2713]                                    ; $5d1e: $fa $13 $27
	ld c, a                                          ; $5d21: $4f
	sbc a                                            ; $5d22: $9f
	inc hl                                           ; $5d23: $23
	ld b, a                                          ; $5d24: $47
	adc a                                            ; $5d25: $8f
	ld e, $0e                                        ; $5d26: $1e $0e
	dec de                                           ; $5d28: $1b
	scf                                              ; $5d29: $37
	ld a, a                                          ; $5d2a: $7f
	rst FarCall                                          ; $5d2b: $f7
	add $8e                                          ; $5d2c: $c6 $8e
	sbc a                                            ; $5d2e: $9f
	pop bc                                           ; $5d2f: $c1
	jp $8383                                         ; $5d30: $c3 $83 $83


	ld b, $0e                                        ; $5d33: $06 $0e
	jr jr_03b_5d6f                                   ; $5d35: $18 $38

	rst SubAFromDE                                          ; $5d37: $df
	cp a                                             ; $5d38: $bf
	adc c                                            ; $5d39: $89
	ld a, a                                          ; $5d3a: $7f
	ld a, [hl]                                       ; $5d3b: $7e
	cp $fd                                           ; $5d3c: $fe $fd
	cp $f5                                           ; $5d3e: $fe $f5
	ccf                                              ; $5d40: $3f
	nop                                              ; $5d41: $00
	ld bc, $7ec7                                     ; $5d42: $01 $c7 $7e
	ld [rRAMG], sp                                   ; $5d45: $08 $00 $00
	ret nz                                           ; $5d48: $c0

	rst $38                                          ; $5d49: $ff
	rst $38                                          ; $5d4a: $ff
	cp $f9                                           ; $5d4b: $fe $f9
	and d                                            ; $5d4d: $a2
	ld d, l                                          ; $5d4e: $55
	xor d                                            ; $5d4f: $aa
	ld sp, hl                                        ; $5d50: $f9
	reti                                             ; $5d51: $d9


	add b                                            ; $5d52: $80
	sbc l                                            ; $5d53: $9d
	ld c, a                                          ; $5d54: $4f
	ld c, l                                          ; $5d55: $4d
	sbc $5d                                          ; $5d56: $de $5d
	sbc e                                            ; $5d58: $9b
	ld a, h                                          ; $5d59: $7c
	ld e, [hl]                                       ; $5d5a: $5e
	ld e, a                                          ; $5d5b: $5f

jr_03b_5d5c:
	ei                                               ; $5d5c: $fb
	sbc $f7                                          ; $5d5d: $de $f7
	add b                                            ; $5d5f: $80
	rst SubAFromBC                                          ; $5d60: $e7
	rst AddAOntoHL                                          ; $5d61: $ef
	cp $e3                                           ; $5d62: $fe $e3
	ld sp, $9e3f                                     ; $5d64: $31 $3f $9e
	add b                                            ; $5d67: $80
	pop hl                                           ; $5d68: $e1
	rst $38                                          ; $5d69: $ff
	ld a, h                                          ; $5d6a: $7c
	nop                                              ; $5d6b: $00
	rst $38                                          ; $5d6c: $ff
	ld a, a                                          ; $5d6d: $7f
	rst $38                                          ; $5d6e: $ff

jr_03b_5d6f:
	sbc a                                            ; $5d6f: $9f
	pop hl                                           ; $5d70: $e1
	rst $38                                          ; $5d71: $ff
	rst $38                                          ; $5d72: $ff
	inc a                                            ; $5d73: $3c
	pop hl                                           ; $5d74: $e1
	add d                                            ; $5d75: $82
	ld [bc], a                                       ; $5d76: $02
	nop                                              ; $5d77: $00
	add b                                            ; $5d78: $80
	nop                                              ; $5d79: $00
	jr nc, jr_03b_5d5c                               ; $5d7a: $30 $e0

	ei                                               ; $5d7c: $fb
	db $e3                                           ; $5d7d: $e3
	rst SubAFromBC                                          ; $5d7e: $e7
	adc d                                            ; $5d7f: $8a
	ld b, [hl]                                       ; $5d80: $46
	adc $9d                                          ; $5d81: $ce $9d
	ld a, c                                          ; $5d83: $79
	ei                                               ; $5d84: $fb
	dec sp                                           ; $5d85: $3b
	dec sp                                           ; $5d86: $3b
	ld [hl], a                                       ; $5d87: $77
	ld [hl], a                                       ; $5d88: $77
	rst AddAOntoHL                                          ; $5d89: $ef
	rst AddAOntoHL                                          ; $5d8a: $ef
	rst SubAFromDE                                          ; $5d8b: $df
	sbc a                                            ; $5d8c: $9f
	cp a                                             ; $5d8d: $bf
	ld a, [hl]                                       ; $5d8e: $7e
	ld a, [hl]                                       ; $5d8f: $7e
	db $f4                                           ; $5d90: $f4
	db $fc                                           ; $5d91: $fc
	add sp, -$10                                     ; $5d92: $e8 $f0
	ret nc                                           ; $5d94: $d0

	ld sp, hl                                        ; $5d95: $f9
	reti                                             ; $5d96: $d9


	add c                                            ; $5d97: $81
	reti                                             ; $5d98: $d9


	inc b                                            ; $5d99: $04
	reti                                             ; $5d9a: $d9


	ld sp, hl                                        ; $5d9b: $f9
	reti                                             ; $5d9c: $d9


	ld b, b                                          ; $5d9d: $40
	jp hl                                            ; $5d9e: $e9


	jp c, $9ea4                                      ; $5d9f: $da $a4 $9e

	and l                                            ; $5da2: $a5
	reti                                             ; $5da3: $d9


	jr nc, jr_03b_5e25                               ; $5da4: $30 $7f

	ld d, c                                          ; $5da6: $51
	sbc c                                            ; $5da7: $99
	jp nz, $2a15                                     ; $5da8: $c2 $15 $2a

	dec d                                            ; $5dab: $15
	ld b, d                                          ; $5dac: $42
	dec b                                            ; $5dad: $05
	ld sp, hl                                        ; $5dae: $f9
	sbc e                                            ; $5daf: $9b
	push af                                          ; $5db0: $f5
	ld [hl], l                                       ; $5db1: $75
	or l                                             ; $5db2: $b5
	push af                                          ; $5db3: $f5
	ld a, e                                          ; $5db4: $7b
	db $fc                                           ; $5db5: $fc
	sbc [hl]                                         ; $5db6: $9e
	ld d, l                                          ; $5db7: $55
	reti                                             ; $5db8: $d9


	dec bc                                           ; $5db9: $0b
	reti                                             ; $5dba: $d9


	ld [hl], e                                       ; $5dbb: $73
	reti                                             ; $5dbc: $d9


	inc c                                            ; $5dbd: $0c
	reti                                             ; $5dbe: $d9


	rst $38                                          ; $5dbf: $ff
	ld sp, hl                                        ; $5dc0: $f9
	reti                                             ; $5dc1: $d9


	or $d9                                           ; $5dc2: $f6 $d9
	dec bc                                           ; $5dc4: $0b
	ld b, [hl]                                       ; $5dc5: $46
	ret nz                                           ; $5dc6: $c0

	sbc h                                            ; $5dc7: $9c
	ld a, [hl]                                       ; $5dc8: $7e
	ld a, a                                          ; $5dc9: $7f
	ld a, [hl]                                       ; $5dca: $7e
	ld hl, sp-$80                                    ; $5dcb: $f8 $80
	ld [bc], a                                       ; $5dcd: $02
	ld b, l                                          ; $5dce: $45
	xor d                                            ; $5dcf: $aa
	sbc a                                            ; $5dd0: $9f
	cp [hl]                                          ; $5dd1: $be
	sbc $6f                                          ; $5dd2: $de $6f
	rlca                                             ; $5dd4: $07
	ld b, $0e                                        ; $5dd5: $06 $0e
	rra                                              ; $5dd7: $1f
	ld a, $1f                                        ; $5dd8: $3e $1f
	rra                                              ; $5dda: $1f
	rrca                                             ; $5ddb: $0f
	rlca                                             ; $5ddc: $07
	ld b, $4f                                        ; $5ddd: $06 $4f
	sbc a                                            ; $5ddf: $9f
	ld a, a                                          ; $5de0: $7f
	ld [hl], b                                       ; $5de1: $70
	ld sp, $1f1f                                     ; $5de2: $31 $1f $1f
	sbc a                                            ; $5de5: $9f
	sbc a                                            ; $5de6: $9f
	rra                                              ; $5de7: $1f
	rra                                              ; $5de8: $1f
	ld a, [$f6fd]                                    ; $5de9: $fa $fd $f6
	adc e                                            ; $5dec: $8b
	db $fc                                           ; $5ded: $fc
	ld hl, sp-$07                                    ; $5dee: $f8 $f9
	ld a, [$7efc]                                    ; $5df0: $fa $fc $7e
	db $eb                                           ; $5df3: $eb
	db $fd                                           ; $5df4: $fd
	ld a, [bc]                                       ; $5df5: $0a
	ld [hl], h                                       ; $5df6: $74
	ld a, [$2782]                                    ; $5df7: $fa $82 $27
	nop                                              ; $5dfa: $00
	cp $13                                           ; $5dfb: $fe $13
	db $fd                                           ; $5dfd: $fd
	adc a                                            ; $5dfe: $8f
	rlca                                             ; $5dff: $07
	ld a, a                                          ; $5e00: $7f
	ld a, e                                          ; $5e01: $7b
	sbc b                                            ; $5e02: $98
	rst SubAFromDE                                          ; $5e03: $df
	add b                                            ; $5e04: $80
	db $dd                                           ; $5e05: $dd
	ret nz                                           ; $5e06: $c0

	db $dd                                           ; $5e07: $dd
	add b                                            ; $5e08: $80
	db $dd                                           ; $5e09: $dd
	ret nz                                           ; $5e0a: $c0

	adc [hl]                                         ; $5e0b: $8e
	ld [hl], e                                       ; $5e0c: $73
	ld h, c                                          ; $5e0d: $61
	ld h, c                                          ; $5e0e: $61
	ld [hl], e                                       ; $5e0f: $73
	ld a, a                                          ; $5e10: $7f
	ld a, l                                          ; $5e11: $7d
	ld [hl], b                                       ; $5e12: $70
	ld a, b                                          ; $5e13: $78
	call c, $b2b2                                    ; $5e14: $dc $b2 $b2
	cp [hl]                                          ; $5e17: $be
	call c, $cfc2                                    ; $5e18: $dc $c2 $cf
	add l                                            ; $5e1b: $85
	jp $987a                                         ; $5e1c: $c3 $7a $98


	add b                                            ; $5e1f: $80
	ld hl, sp-$20                                    ; $5e20: $f8 $e0
	ld bc, $c303                                     ; $5e22: $01 $03 $c3

jr_03b_5e25:
	cp a                                             ; $5e25: $bf
	ld d, l                                          ; $5e26: $55
	xor e                                            ; $5e27: $ab
	ld d, [hl]                                       ; $5e28: $56
	cp c                                             ; $5e29: $b9
	db $e3                                           ; $5e2a: $e3
	adc [hl]                                         ; $5e2b: $8e
	ldh [$c0], a                                     ; $5e2c: $e0 $c0

jr_03b_5e2e:
	adc b                                            ; $5e2e: $88
	jr jr_03b_5e69                                   ; $5e2f: $18 $38

	ld [hl], c                                       ; $5e31: $71
	db $e3                                           ; $5e32: $e3
	rst JumpTable                                          ; $5e33: $c7
	rst FarCall                                          ; $5e34: $f7
	rst SubAFromBC                                          ; $5e35: $e7
	sbc $bc                                          ; $5e36: $de $bc
	ld a, l                                          ; $5e38: $7d
	ei                                               ; $5e39: $fb
	ld [hl], a                                       ; $5e3a: $77
	rst AddAOntoHL                                          ; $5e3b: $ef
	ccf                                              ; $5e3c: $3f
	ccf                                              ; $5e3d: $3f
	ld a, a                                          ; $5e3e: $7f
	ld a, a                                          ; $5e3f: $7f
	cp e                                             ; $5e40: $bb
	sbc $ff                                          ; $5e41: $de $ff
	sbc l                                            ; $5e43: $9d
	or b                                             ; $5e44: $b0
	ld h, b                                          ; $5e45: $60
	sbc $e0                                          ; $5e46: $de $e0
	ld a, a                                          ; $5e48: $7f
	cp d                                             ; $5e49: $ba
	sbc [hl]                                         ; $5e4a: $9e
	sbc b                                            ; $5e4b: $98
	ld l, $c0                                        ; $5e4c: $2e $c0
	rst SubAFromDE                                          ; $5e4e: $df
	dec b                                            ; $5e4f: $05
	db $db                                           ; $5e50: $db
	ld sp, hl                                        ; $5e51: $f9
	rst SubAFromDE                                          ; $5e52: $df
	ld hl, sp+$7a                                    ; $5e53: $f8 $7a
	add $9d                                          ; $5e55: $c6 $9d
	ld a, a                                          ; $5e57: $7f
	rrca                                             ; $5e58: $0f
	ld l, a                                          ; $5e59: $6f
	ld [hl+], a                                      ; $5e5a: $22
	sbc l                                            ; $5e5b: $9d
	add b                                            ; $5e5c: $80
	ldh a, [$6f]                                     ; $5e5d: $f0 $6f
	ld [hl], $de                                     ; $5e5f: $36 $de
	rst $38                                          ; $5e61: $ff
	rst SubAFromDE                                          ; $5e62: $df
	ld bc, $2e67                                     ; $5e63: $01 $67 $2e
	add b                                            ; $5e66: $80
	ld a, a                                          ; $5e67: $7f
	sbc a                                            ; $5e68: $9f

jr_03b_5e69:
	ret nz                                           ; $5e69: $c0

	add b                                            ; $5e6a: $80
	ld [hl], l                                       ; $5e6b: $75
	rst FarCall                                          ; $5e6c: $f7
	cp $f9                                           ; $5e6d: $fe $f9
	ld a, a                                          ; $5e6f: $7f
	ldh [$3f], a                                     ; $5e70: $e0 $3f
	ld a, a                                          ; $5e72: $7f
	xor d                                            ; $5e73: $aa
	add hl, hl                                       ; $5e74: $29
	ld a, a                                          ; $5e75: $7f
	ld a, [hl]                                       ; $5e76: $7e
	add b                                            ; $5e77: $80
	ld b, b                                          ; $5e78: $40
	jr nz, jr_03b_5e8b                               ; $5e79: $20 $10

	ldh a, [$f0]                                     ; $5e7b: $f0 $f0
	ld a, a                                          ; $5e7d: $7f
	ldh a, [$80]                                     ; $5e7e: $f0 $80
	ret nz                                           ; $5e80: $c0

	ldh [$f0], a                                     ; $5e81: $e0 $f0
	or b                                             ; $5e83: $b0
	ldh a, [$f0]                                     ; $5e84: $f0 $f0
	sub [hl]                                         ; $5e86: $96
	jr nz, jr_03b_5e2e                               ; $5e87: $20 $a5

	ld d, l                                          ; $5e89: $55
	dec h                                            ; $5e8a: $25

jr_03b_5e8b:
	dec b                                            ; $5e8b: $05
	dec d                                            ; $5e8c: $15
	push bc                                          ; $5e8d: $c5
	add hl, bc                                       ; $5e8e: $09
	rst $38                                          ; $5e8f: $ff
	call c, $9c0b                                    ; $5e90: $dc $0b $9c
	dec sp                                           ; $5e93: $3b
	rst FarCall                                          ; $5e94: $f7
	nop                                              ; $5e95: $00
	db $dd                                           ; $5e96: $dd
	ld [hl], e                                       ; $5e97: $73
	rst SubAFromDE                                          ; $5e98: $df
	di                                               ; $5e99: $f3
	ld a, a                                          ; $5e9a: $7f
	xor h                                            ; $5e9b: $ac
	db $db                                           ; $5e9c: $db
	inc c                                            ; $5e9d: $0c
	sbc l                                            ; $5e9e: $9d
	rrca                                             ; $5e9f: $0f
	nop                                              ; $5ea0: $00
	ld l, d                                          ; $5ea1: $6a
	jp nz, $c06a                                     ; $5ea2: $c2 $6a $c0

	ld a, a                                          ; $5ea5: $7f
	ld sp, hl                                        ; $5ea6: $f9
	db $db                                           ; $5ea7: $db
	or $9d                                           ; $5ea8: $f6 $9d
	ld c, $fe                                        ; $5eaa: $0e $fe
	db $db                                           ; $5eac: $db
	dec bc                                           ; $5ead: $0b
	sbc l                                            ; $5eae: $9d
	ei                                               ; $5eaf: $fb
	inc bc                                           ; $5eb0: $03
	ld l, d                                          ; $5eb1: $6a
	jp nz, $926b                                     ; $5eb2: $c2 $6b $92

	ld a, [$cf77]                                    ; $5eb5: $fa $77 $cf
	ld l, d                                          ; $5eb8: $6a
	adc d                                            ; $5eb9: $8a
	sbc [hl]                                         ; $5eba: $9e
	inc b                                            ; $5ebb: $04
	ld [hl], a                                       ; $5ebc: $77
	sbc $5b                                          ; $5ebd: $de $5b
	ldh a, [$9b]                                     ; $5ebf: $f0 $9b
	cpl                                              ; $5ec1: $2f
	rst JumpTable                                          ; $5ec2: $c7
	rlca                                             ; $5ec3: $07
	inc bc                                           ; $5ec4: $03
	ld a, e                                          ; $5ec5: $7b
	ld e, [hl]                                       ; $5ec6: $5e
	sbc [hl]                                         ; $5ec7: $9e
	nop                                              ; $5ec8: $00
	sbc $fc                                          ; $5ec9: $de $fc
	sbc [hl]                                         ; $5ecb: $9e
	cp $77                                           ; $5ecc: $fe $77
	ldh a, [hDisp1_LCDC]                                     ; $5ece: $f0 $8f
	ld a, a                                          ; $5ed0: $7f
	db $ed                                           ; $5ed1: $ed
	push hl                                          ; $5ed2: $e5
	ldh [$e0], a                                     ; $5ed3: $e0 $e0
	add b                                            ; $5ed5: $80
	pop hl                                           ; $5ed6: $e1
	scf                                              ; $5ed7: $37
	rst $38                                          ; $5ed8: $ff
	rst $38                                          ; $5ed9: $ff
	db $dd                                           ; $5eda: $dd
	sub c                                            ; $5edb: $91
	and c                                            ; $5edc: $a1
	jp $1f77                                         ; $5edd: $c3 $77 $1f


	halt                                             ; $5ee0: $76
	add $9b                                          ; $5ee1: $c6 $9b
	ldh [$d8], a                                     ; $5ee3: $e0 $d8
	sub $99                                          ; $5ee5: $d6 $99
	db $dd                                           ; $5ee7: $dd
	ret nz                                           ; $5ee8: $c0

	sbc d                                            ; $5ee9: $9a
	ldh a, [$fe]                                     ; $5eea: $f0 $fe
	rst $38                                          ; $5eec: $ff
	rst FarCall                                          ; $5eed: $f7
	ld a, [hl]                                       ; $5eee: $7e
	jp c, $9d7f                                      ; $5eef: $da $7f $9d

	adc c                                            ; $5ef2: $89
	add h                                            ; $5ef3: $84
	sbc $80                                          ; $5ef4: $de $80
	sbc e                                            ; $5ef6: $9b
	add c                                            ; $5ef7: $81
	add b                                            ; $5ef8: $80
	add b                                            ; $5ef9: $80
	rra                                              ; $5efa: $1f
	ld a, d                                          ; $5efb: $7a
	pop bc                                           ; $5efc: $c1
	sub b                                            ; $5efd: $90
	pop af                                           ; $5efe: $f1
	or a                                             ; $5eff: $b7
	rst $38                                          ; $5f00: $ff
	rst $38                                          ; $5f01: $ff
	push af                                          ; $5f02: $f5
	dec bc                                           ; $5f03: $0b
	rla                                              ; $5f04: $17
	cpl                                              ; $5f05: $2f
	ld e, $7d                                        ; $5f06: $1e $7d
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	adc a                                            ; $5f0a: $8f
	rra                                              ; $5f0b: $1f
	ccf                                              ; $5f0c: $3f
	ld [hl], d                                       ; $5f0d: $72
	ret nc                                           ; $5f0e: $d0

	add a                                            ; $5f0f: $87
	rst SubAFromDE                                          ; $5f10: $df
	or a                                             ; $5f11: $b7
	ld l, a                                          ; $5f12: $6f
	push de                                          ; $5f13: $d5
	xor d                                            ; $5f14: $aa
	ld d, l                                          ; $5f15: $55
	ld bc, $8700                                     ; $5f16: $01 $00 $87
	add e                                            ; $5f19: $83
	cp a                                             ; $5f1a: $bf
	cp a                                             ; $5f1b: $bf
	add e                                            ; $5f1c: $83
	rst $38                                          ; $5f1d: $ff
	rst $38                                          ; $5f1e: $ff
	db $e3                                           ; $5f1f: $e3
	sbc $8e                                          ; $5f20: $de $8e
	add $7e                                          ; $5f22: $c6 $7e
	ld a, [hl]                                       ; $5f24: $7e
	nop                                              ; $5f25: $00
	ld a, $1c                                        ; $5f26: $3e $1c
	ld c, d                                          ; $5f28: $4a
	ret nz                                           ; $5f29: $c0

	sbc h                                            ; $5f2a: $9c
	rst $38                                          ; $5f2b: $ff
	dec b                                            ; $5f2c: $05
	dec b                                            ; $5f2d: $05
	db $db                                           ; $5f2e: $db
	inc b                                            ; $5f2f: $04
	rst SubAFromDE                                          ; $5f30: $df
	ld hl, sp-$25                                    ; $5f31: $f8 $db
	ld sp, hl                                        ; $5f33: $f9
	cp $9d                                           ; $5f34: $fe $9d
	db $fd                                           ; $5f36: $fd
	nop                                              ; $5f37: $00
	sbc $79                                          ; $5f38: $de $79
	sbc d                                            ; $5f3a: $9a
	nop                                              ; $5f3b: $00
	ld b, $ff                                        ; $5f3c: $06 $ff
	ei                                               ; $5f3e: $fb
	rst $38                                          ; $5f3f: $ff
	sbc $86                                          ; $5f40: $de $86
	ld a, e                                          ; $5f42: $7b
	inc a                                            ; $5f43: $3c
	ld [hl], a                                       ; $5f44: $77
	ld d, e                                          ; $5f45: $53
	sbc l                                            ; $5f46: $9d
	db $fd                                           ; $5f47: $fd
	ld bc, $b976                                     ; $5f48: $01 $76 $b9
	rst $38                                          ; $5f4b: $ff
	add c                                            ; $5f4c: $81
	inc bc                                           ; $5f4d: $03
	cp $e4                                           ; $5f4e: $fe $e4
	pop bc                                           ; $5f50: $c1
	ret nz                                           ; $5f51: $c0

	db $e3                                           ; $5f52: $e3
	ld [hl], b                                       ; $5f53: $70
	ld a, a                                          ; $5f54: $7f
	db $db                                           ; $5f55: $db
	db $fd                                           ; $5f56: $fd
	push af                                          ; $5f57: $f5
	jp nz, $10e1                                     ; $5f58: $c2 $e1 $10

	ld l, c                                          ; $5f5b: $69
	ld e, l                                          ; $5f5c: $5d
	adc a                                            ; $5f5d: $8f
	ldh [$a0], a                                     ; $5f5e: $e0 $a0
	jr nz, jr_03b_5fe1                               ; $5f60: $20 $7f

	rst $38                                          ; $5f62: $ff
	ret nz                                           ; $5f63: $c0

	jr nz, jr_03b_5f96                               ; $5f64: $20 $30

	ldh [$80], a                                     ; $5f66: $e0 $80
	ldh [rIE], a                                     ; $5f68: $e0 $ff
	add b                                            ; $5f6a: $80
	ld a, e                                          ; $5f6b: $7b
	di                                               ; $5f6c: $f3
	ld [hl], e                                       ; $5f6d: $73
	ld [hl+], a                                      ; $5f6e: $22
	sbc $03                                          ; $5f6f: $de $03
	ld [hl], a                                       ; $5f71: $77
	ld hl, sp+$72                                    ; $5f72: $f8 $72
	cp $9b                                           ; $5f74: $fe $9b
	cp $01                                           ; $5f76: $fe $01
	db $fd                                           ; $5f78: $fd
	pop hl                                           ; $5f79: $e1
	sbc $ed                                          ; $5f7a: $de $ed
	rst SubAFromDE                                          ; $5f7c: $df
	inc bc                                           ; $5f7d: $03
	rst SubAFromDE                                          ; $5f7e: $df

jr_03b_5f7f:
	rst $38                                          ; $5f7f: $ff
	sbc [hl]                                         ; $5f80: $9e
	rra                                              ; $5f81: $1f
	sbc $13                                          ; $5f82: $de $13
	ld [hl], e                                       ; $5f84: $73
	dec b                                            ; $5f85: $05
	ld a, [hl]                                       ; $5f86: $7e
	sub h                                            ; $5f87: $94
	sbc [hl]                                         ; $5f88: $9e
	ret nz                                           ; $5f89: $c0

	ld [hl], a                                       ; $5f8a: $77
	reti                                             ; $5f8b: $d9


	sbc l                                            ; $5f8c: $9d
	rst $38                                          ; $5f8d: $ff
	ccf                                              ; $5f8e: $3f
	ld a, e                                          ; $5f8f: $7b
	and e                                            ; $5f90: $a3
	ld [hl], a                                       ; $5f91: $77
	ldh a, [$7e]                                     ; $5f92: $f0 $7e
	db $fd                                           ; $5f94: $fd
	sbc [hl]                                         ; $5f95: $9e

jr_03b_5f96:
	adc a                                            ; $5f96: $8f
	ld [hl], e                                       ; $5f97: $73
	ldh a, [$df]                                     ; $5f98: $f0 $df
	rst $38                                          ; $5f9a: $ff

Jump_03b_5f9b:
	sbc [hl]                                         ; $5f9b: $9e
	ld [hl], b                                       ; $5f9c: $70
	inc e                                            ; $5f9d: $1c
	nop                                              ; $5f9e: $00
	sbc c                                            ; $5f9f: $99
	ld [hl], a                                       ; $5fa0: $77
	ld h, [hl]                                       ; $5fa1: $66
	ld h, a                                          ; $5fa2: $67
	ld d, l                                          ; $5fa3: $55
	ld d, l                                          ; $5fa4: $55
	ld [hl], h                                       ; $5fa5: $74
	db $dd                                           ; $5fa6: $dd
	ld b, h                                          ; $5fa7: $44
	sbc h                                            ; $5fa8: $9c
	ld [hl], e                                       ; $5fa9: $73
	inc sp                                           ; $5faa: $33
	ld b, a                                          ; $5fab: $47
	ld [hl], a                                       ; $5fac: $77
	or $9b                                           ; $5fad: $f6 $9b
	ld h, [hl]                                       ; $5faf: $66
	ld b, h                                          ; $5fb0: $44
	ld b, h                                          ; $5fb1: $44
	halt                                             ; $5fb2: $76
	ld l, a                                          ; $5fb3: $6f
	db $ec                                           ; $5fb4: $ec
	sbc h                                            ; $5fb5: $9c
	ld h, l                                          ; $5fb6: $65
	ld d, h                                          ; $5fb7: $54
	ld b, h                                          ; $5fb8: $44
	inc d                                            ; $5fb9: $14
	add [hl]                                         ; $5fba: $86
	cp $9b                                           ; $5fbb: $fe $9b
	rst $38                                          ; $5fbd: $ff
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	ld d, l                                          ; $5fc0: $55
	ld a, e                                          ; $5fc1: $7b
	db $fc                                           ; $5fc2: $fc
	ld a, e                                          ; $5fc3: $7b
	rst FarCall                                          ; $5fc4: $f7
	sbc l                                            ; $5fc5: $9d
	rst $38                                          ; $5fc6: $ff
	xor d                                            ; $5fc7: $aa
	ld [hl], e                                       ; $5fc8: $73
	ld sp, hl                                        ; $5fc9: $f9
	rst $38                                          ; $5fca: $ff
	sbc [hl]                                         ; $5fcb: $9e
	ld d, b                                          ; $5fcc: $50
	ld l, a                                          ; $5fcd: $6f
	rst FarCall                                          ; $5fce: $f7
	sbc h                                            ; $5fcf: $9c
	rst $38                                          ; $5fd0: $ff
	xor a                                            ; $5fd1: $af
	ld d, l                                          ; $5fd2: $55
	ld l, a                                          ; $5fd3: $6f
	ldh a, [$9e]                                     ; $5fd4: $f0 $9e
	nop                                              ; $5fd6: $00
	ld l, e                                          ; $5fd7: $6b
	ldh a, [hDisp0_BGP]                                     ; $5fd8: $f0 $85
	rst $38                                          ; $5fda: $ff
	ld d, l                                          ; $5fdb: $55
	inc c                                            ; $5fdc: $0c
	ld d, $25                                        ; $5fdd: $16 $25
	ld hl, sp+$0a                                    ; $5fdf: $f8 $0a

jr_03b_5fe1:
	add hl, bc                                       ; $5fe1: $09
	inc b                                            ; $5fe2: $04
	inc bc                                           ; $5fe3: $03
	inc c                                            ; $5fe4: $0c
	ld e, $3f                                        ; $5fe5: $1e $3f
	dec a                                            ; $5fe7: $3d
	db $fc                                           ; $5fe8: $fc
	cp $ff                                           ; $5fe9: $fe $ff
	rst $38                                          ; $5feb: $ff
	rrca                                             ; $5fec: $0f
	ld a, [bc]                                       ; $5fed: $0a
	ld a, [bc]                                       ; $5fee: $0a
	adc d                                            ; $5fef: $8a
	ld e, l                                          ; $5ff0: $5d
	dec [hl]                                         ; $5ff1: $35
	push af                                          ; $5ff2: $f5
	ld a, d                                          ; $5ff3: $7a
	sbc $0f                                          ; $5ff4: $de $0f
	sbc b                                            ; $5ff6: $98
	adc a                                            ; $5ff7: $8f
	jp c, $3a7a                                      ; $5ff8: $da $7a $3a

	xor a                                            ; $5ffb: $af
	jr nz, jr_03b_5f7f                               ; $5ffc: $20 $81

	cp $97                                           ; $5ffe: $fe $97
	pop bc                                           ; $6000: $c1
	add c                                            ; $6001: $81
	add l                                            ; $6002: $85
	sub c                                            ; $6003: $91
	jr nz, @+$22                                     ; $6004: $20 $20

	ld b, b                                          ; $6006: $40
	ld b, b                                          ; $6007: $40
	cp $df                                           ; $6008: $fe $df
	add b                                            ; $600a: $80
	sub c                                            ; $600b: $91
	ld b, b                                          ; $600c: $40
	and b                                            ; $600d: $a0
	rst $38                                          ; $600e: $ff
	ret nc                                           ; $600f: $d0

	add sp, -$18                                     ; $6010: $e8 $e8
	add b                                            ; $6012: $80
	ret nz                                           ; $6013: $c0

	ldh [$60], a                                     ; $6014: $e0 $60
	jr nc, jr_03b_6057                               ; $6016: $30 $3f

	rra                                              ; $6018: $1f
	rra                                              ; $6019: $1f
	ld l, e                                          ; $601a: $6b
	sbc a                                            ; $601b: $9f
	ei                                               ; $601c: $fb
	sbc $ff                                          ; $601d: $de $ff
	ld b, e                                          ; $601f: $43
	ldh a, [$de]                                     ; $6020: $f0 $de
	ld [bc], a                                       ; $6022: $02
	sbc c                                            ; $6023: $99
	ld a, [$0e02]                                    ; $6024: $fa $02 $0e
	ld b, $07                                        ; $6027: $06 $07
	ld b, $de                                        ; $6029: $06 $de
	rlca                                             ; $602b: $07
	sbc h                                            ; $602c: $9c
	rst $38                                          ; $602d: $ff
	di                                               ; $602e: $f3
	ei                                               ; $602f: $fb
	ld a, e                                          ; $6030: $7b
	db $eb                                           ; $6031: $eb
	ld a, a                                          ; $6032: $7f
	ld sp, hl                                        ; $6033: $f9
	rst SubAFromDE                                          ; $6034: $df
	rst $38                                          ; $6035: $ff
	sbc [hl]                                         ; $6036: $9e
	inc bc                                           ; $6037: $03
	ld a, e                                          ; $6038: $7b
	call c, $f89e                                    ; $6039: $dc $9e $f8
	cp $96                                           ; $603c: $fe $96
	db $fc                                           ; $603e: $fc
	add l                                            ; $603f: $85
	dec b                                            ; $6040: $05
	add a                                            ; $6041: $87
	ld b, l                                          ; $6042: $45
	add a                                            ; $6043: $87
	add a                                            ; $6044: $87
	add l                                            ; $6045: $85
	ld b, h                                          ; $6046: $44
	sbc $78                                          ; $6047: $de $78
	sbc [hl]                                         ; $6049: $9e
	ld a, [$7ade]                                    ; $604a: $fa $de $7a
	sbc [hl]                                         ; $604d: $9e
	ld hl, sp-$22                                    ; $604e: $f8 $de
	ld a, c                                          ; $6050: $79
	adc b                                            ; $6051: $88
	inc b                                            ; $6052: $04
	ld a, h                                          ; $6053: $7c
	ld a, [$040a]                                    ; $6054: $fa $0a $04

jr_03b_6057:
	add d                                            ; $6057: $82
	add b                                            ; $6058: $80
	add h                                            ; $6059: $84
	inc b                                            ; $605a: $04
	add [hl]                                         ; $605b: $86
	rst $38                                          ; $605c: $ff
	cp $0e                                           ; $605d: $fe $0e
	rst $38                                          ; $605f: $ff
	db $fc                                           ; $6060: $fc
	ld hl, sp-$50                                    ; $6061: $f8 $b0
	ld [hl], h                                       ; $6063: $74
	or d                                             ; $6064: $b2
	ld [hl], e                                       ; $6065: $73
	or e                                             ; $6066: $b3
	ld b, $08                                        ; $6067: $06 $08
	sbc $10                                          ; $6069: $de $10
	sbc $20                                          ; $606b: $de $20
	sub l                                            ; $606d: $95
	ld c, c                                          ; $606e: $49
	ld c, a                                          ; $606f: $4f
	sbc a                                            ; $6070: $9f
	sbc a                                            ; $6071: $9f
	sbc [hl]                                         ; $6072: $9e
	inc l                                            ; $6073: $2c
	ld b, b                                          ; $6074: $40
	adc b                                            ; $6075: $88
	sbc a                                            ; $6076: $9f
	sbc a                                            ; $6077: $9f
	sbc $0f                                          ; $6078: $de $0f
	adc h                                            ; $607a: $8c
	cp $ec                                           ; $607b: $fe $ec
	call z, $96bc                                    ; $607d: $cc $bc $96
	sub d                                            ; $6080: $92
	sub c                                            ; $6081: $91
	ld bc, $2717                                     ; $6082: $01 $17 $27
	ld c, b                                          ; $6085: $48
	inc l                                            ; $6086: $2c
	ld [bc], a                                       ; $6087: $02
	nop                                              ; $6088: $00
	pop bc                                           ; $6089: $c1
	pop hl                                           ; $608a: $e1
	ld [hl], c                                       ; $608b: $71
	ld a, a                                          ; $608c: $7f
	ld hl, sp-$26                                    ; $608d: $f8 $da
	inc bc                                           ; $608f: $03
	sbc [hl]                                         ; $6090: $9e
	add e                                            ; $6091: $83
	jp c, $9901                                      ; $6092: $da $01 $99

	add c                                            ; $6095: $81
	db $ec                                           ; $6096: $ec
	db $ec                                           ; $6097: $ec
	jp hl                                            ; $6098: $e9


	push hl                                          ; $6099: $e5
	push hl                                          ; $609a: $e5
	sbc $e9                                          ; $609b: $de $e9
	rst SubAFromDE                                          ; $609d: $df
	inc de                                           ; $609e: $13
	sbc h                                            ; $609f: $9c
	rla                                              ; $60a0: $17
	rra                                              ; $60a1: $1f
	rra                                              ; $60a2: $1f
	sbc $13                                          ; $60a3: $de $13
	adc [hl]                                         ; $60a5: $8e
	ldh [c], a                                       ; $60a6: $e2
	ld l, h                                          ; $60a7: $6c
	db $e4                                           ; $60a8: $e4
	db $fc                                           ; $60a9: $fc
	db $fc                                           ; $60aa: $fc
	inc l                                            ; $60ab: $2c
	ld c, h                                          ; $60ac: $4c
	call z, $121c                                    ; $60ad: $cc $1c $12
	ld a, [de]                                       ; $60b0: $1a
	ld a, [$c2fa]                                    ; $60b1: $fa $fa $c2
	ld [bc], a                                       ; $60b4: $02
	ld [bc], a                                       ; $60b5: $02
	nop                                              ; $60b6: $00
	jp c, $9e03                                      ; $60b7: $da $03 $9e

	ld h, e                                          ; $60ba: $63
	jp c, $fe64                                      ; $60bb: $da $64 $fe

	sbc d                                            ; $60be: $9a
	ldh a, [rIE]                                     ; $60bf: $f0 $ff
	rrca                                             ; $60c1: $0f
	rst AddAOntoHL                                          ; $60c2: $ef
	rst AddAOntoHL                                          ; $60c3: $ef
	ld a, e                                          ; $60c4: $7b
	ld e, b                                          ; $60c5: $58
	sbc d                                            ; $60c6: $9a
	rrca                                             ; $60c7: $0f
	nop                                              ; $60c8: $00
	ldh a, [rAUD1SWEEP]                              ; $60c9: $f0 $10
	db $10                                           ; $60cb: $10
	ld [hl], e                                       ; $60cc: $73
	add hl, sp                                       ; $60cd: $39
	rst SubAFromDE                                          ; $60ce: $df
	add b                                            ; $60cf: $80
	sbc [hl]                                         ; $60d0: $9e
	ld a, a                                          ; $60d1: $7f
	ld [hl], a                                       ; $60d2: $77
	inc sp                                           ; $60d3: $33
	sbc e                                            ; $60d4: $9b
	nop                                              ; $60d5: $00
	ld a, a                                          ; $60d6: $7f
	nop                                              ; $60d7: $00
	add b                                            ; $60d8: $80
	halt                                             ; $60d9: $76
	rst JumpTable                                          ; $60da: $c7
	sbc e                                            ; $60db: $9b
	rst $38                                          ; $60dc: $ff
	inc h                                            ; $60dd: $24
	inc hl                                           ; $60de: $23
	rst SubAFromBC                                          ; $60df: $e7
	ld [hl], e                                       ; $60e0: $73
	ldh a, [hDisp1_BGP]                                     ; $60e1: $f0 $92
	db $db                                           ; $60e3: $db
	jr @+$1a                                         ; $60e4: $18 $18

	xor b                                            ; $60e6: $a8
	ld bc, $0102                                     ; $60e7: $01 $02 $01
	db $fd                                           ; $60ea: $fd
	nop                                              ; $60eb: $00
	ld bc, $03fe                                     ; $60ec: $01 $fe $03
	inc bc                                           ; $60ef: $03
	ld l, a                                          ; $60f0: $6f
	dec hl                                           ; $60f1: $2b
	add b                                            ; $60f2: $80
	ld [$ab42], a                                    ; $60f3: $ea $42 $ab
	ld c, e                                          ; $60f6: $4b
	add e                                            ; $60f7: $83
	jp nz, $3b66                                     ; $60f8: $c2 $66 $3b

	rst AddAOntoHL                                          ; $60fb: $ef
	rst AddAOntoHL                                          ; $60fc: $ef
	add $86                                          ; $60fd: $c6 $86
	add $e6                                          ; $60ff: $c6 $e6
	cp $fe                                           ; $6101: $fe $fe
	add h                                            ; $6103: $84

jr_03b_6104:
	adc e                                            ; $6104: $8b
	add l                                            ; $6105: $85
	inc c                                            ; $6106: $0c
	inc c                                            ; $6107: $0c
	ld [$1410], sp                                   ; $6108: $08 $10 $14
	add hl, bc                                       ; $610b: $09
	inc c                                            ; $610c: $0c
	rrca                                             ; $610d: $0f
	inc bc                                           ; $610e: $03
	ld [bc], a                                       ; $610f: $02
	inc b                                            ; $6110: $04
	ld [$088d], sp                                   ; $6111: $08 $8d $08
	ld c, $c3                                        ; $6114: $0e $c3
	ld b, [hl]                                       ; $6116: $46
	inc c                                            ; $6117: $0c
	rlca                                             ; $6118: $07
	jr @+$26                                         ; $6119: $18 $24

	ld e, e                                          ; $611b: $5b
	inc b                                            ; $611c: $04
	ld b, $83                                        ; $611d: $06 $83
	rlca                                             ; $611f: $07
	inc c                                            ; $6120: $0c
	rrca                                             ; $6121: $0f
	jr jr_03b_6158                                   ; $6122: $18 $34

	xor d                                            ; $6124: $aa
	ld a, d                                          ; $6125: $7a
	ld l, [hl]                                       ; $6126: $6e
	ld a, a                                          ; $6127: $7f
	ret                                              ; $6128: $c9


	sbc l                                            ; $6129: $9d
	ld b, b                                          ; $612a: $40
	cp a                                             ; $612b: $bf
	ld [hl], e                                       ; $612c: $73
	or b                                             ; $612d: $b0
	ld a, e                                          ; $612e: $7b
	rst FarCall                                          ; $612f: $f7

Call_03b_6130:
	ld a, a                                          ; $6130: $7f
	ldh a, [$7f]                                     ; $6131: $f0 $7f
	xor a                                            ; $6133: $af
	sbc l                                            ; $6134: $9d
	cp $04                                           ; $6135: $fe $04
	ld a, e                                          ; $6137: $7b
	xor l                                            ; $6138: $ad
	sbc h                                            ; $6139: $9c
	nop                                              ; $613a: $00
	cp $fc                                           ; $613b: $fe $fc
	halt                                             ; $613d: $76
	sbc $9d                                          ; $613e: $de $9d
	xor b                                            ; $6140: $a8
	ld d, b                                          ; $6141: $50
	ld a, e                                          ; $6142: $7b
	xor e                                            ; $6143: $ab
	sbc e                                            ; $6144: $9b
	add d                                            ; $6145: $82
	nop                                              ; $6146: $00
	rst $38                                          ; $6147: $ff
	ld bc, $9efd                                     ; $6148: $01 $fd $9e
	ld a, h                                          ; $614b: $7c
	halt                                             ; $614c: $76
	ld [hl], e                                       ; $614d: $73
	ld a, a                                          ; $614e: $7f
	db $f4                                           ; $614f: $f4
	sbc e                                            ; $6150: $9b
	ldh [rSVBK], a                                   ; $6151: $e0 $70
	nop                                              ; $6153: $00
	rrca                                             ; $6154: $0f
	ld a, e                                          ; $6155: $7b
	db $d3                                           ; $6156: $d3
	sbc d                                            ; $6157: $9a

jr_03b_6158:
	ld a, a                                          ; $6158: $7f
	ccf                                              ; $6159: $3f
	rra                                              ; $615a: $1f
	jr nc, @-$6e                                     ; $615b: $30 $90

	sbc $24                                          ; $615d: $de $24
	sub a                                            ; $615f: $97
	db $e4                                           ; $6160: $e4
	inc b                                            ; $6161: $04
	inc b                                            ; $6162: $04
	ld b, h                                          ; $6163: $44

jr_03b_6164:
	call nz, $18d8                                   ; $6164: $c4 $d8 $18
	ret c                                            ; $6167: $d8

	sbc $f8                                          ; $6168: $de $f8
	rst SubAFromDE                                          ; $616a: $df
	jr c, jr_03b_6104                                ; $616b: $38 $97

	ld a, [hl+]                                      ; $616d: $2a
	ld a, [de]                                       ; $616e: $1a
	ld a, [hl+]                                      ; $616f: $2a
	ld e, d                                          ; $6170: $5a
	xor e                                            ; $6171: $ab
	ld e, e                                          ; $6172: $5b
	cp e                                             ; $6173: $bb
	ld a, e                                          ; $6174: $7b
	reti                                             ; $6175: $d9


	inc b                                            ; $6176: $04
	sub d                                            ; $6177: $92
	ld [hl], e                                       ; $6178: $73
	or a                                             ; $6179: $b7
	halt                                             ; $617a: $76
	or h                                             ; $617b: $b4
	ld a, b                                          ; $617c: $78
	sbc b                                            ; $617d: $98
	ld e, h                                          ; $617e: $5c
	cp l                                             ; $617f: $bd
	ld hl, $2402                                     ; $6180: $21 $02 $24
	nop                                              ; $6183: $00
	jr nz, jr_03b_6164                               ; $6184: $20 $de

	db $10                                           ; $6186: $10
	add e                                            ; $6187: $83
	adc b                                            ; $6188: $88
	dec c                                            ; $6189: $0d
	rrca                                             ; $618a: $0f
	ld c, $1f                                        ; $618b: $0e $1f
	scf                                              ; $618d: $37
	ld [hl], a                                       ; $618e: $77
	rst SubAFromBC                                          ; $618f: $e7
	dec c                                            ; $6190: $0d
	dec bc                                           ; $6191: $0b
	rrca                                             ; $6192: $0f
	ld b, $0f                                        ; $6193: $06 $0f
	rra                                              ; $6195: $1f
	daa                                              ; $6196: $27
	add $fc                                          ; $6197: $c6 $fc
	db $e4                                           ; $6199: $e4
	ld h, d                                          ; $619a: $62
	sub l                                            ; $619b: $95
	or l                                             ; $619c: $b5
	or h                                             ; $619d: $b4
	cp l                                             ; $619e: $bd
	cp e                                             ; $619f: $bb
	call c, Call_03b_7eb4                            ; $61a0: $dc $b4 $7e
	db $eb                                           ; $61a3: $eb

jr_03b_61a4:
	sbc $cb                                          ; $61a4: $de $cb
	sbc [hl]                                         ; $61a6: $9e
	rst GetHLinHL                                          ; $61a7: $cf
	sbc $43                                          ; $61a8: $de $43
	sbc d                                            ; $61aa: $9a
	jp $0383                                         ; $61ab: $c3 $83 $03


	add e                                            ; $61ae: $83
	inc bc                                           ; $61af: $03
	sbc $41                                          ; $61b0: $de $41
	rst SubAFromDE                                          ; $61b2: $df
	pop bc                                           ; $61b3: $c1
	sbc h                                            ; $61b4: $9c
	add c                                            ; $61b5: $81
	add e                                            ; $61b6: $83
	inc bc                                           ; $61b7: $03
	reti                                             ; $61b8: $d9


	jp hl                                            ; $61b9: $e9


	reti                                             ; $61ba: $d9


	inc de                                           ; $61bb: $13
	rst SubAFromDE                                          ; $61bc: $df
	call z, $8499                                    ; $61bd: $cc $99 $84
	sub d                                            ; $61c0: $92
	ld [hl], c                                       ; $61c1: $71
	ld c, c                                          ; $61c2: $49
	dec [hl]                                         ; $61c3: $35

jr_03b_61c4:
	jr c, jr_03b_61a4                                ; $61c4: $38 $de

	ld [de], a                                       ; $61c6: $12
	adc d                                            ; $61c7: $8a
	ld bc, $3408                                     ; $61c8: $01 $08 $34
	jr c, jr_03b_61fe                                ; $61cb: $38 $31

	adc e                                            ; $61cd: $8b
	adc e                                            ; $61ce: $8b
	rrc d                                            ; $61cf: $cb $0a
	ld a, [de]                                       ; $61d1: $1a
	ld [hl-], a                                      ; $61d2: $32
	add b                                            ; $61d3: $80
	nop                                              ; $61d4: $00
	ld h, h                                          ; $61d5: $64
	ld h, h                                          ; $61d6: $64
	inc b                                            ; $61d7: $04
	inc d                                            ; $61d8: $14
	ld h, h                                          ; $61d9: $64
	inc b                                            ; $61da: $04
	inc c                                            ; $61db: $0c
	sbc a                                            ; $61dc: $9f
	reti                                             ; $61dd: $d9


	rst AddAOntoHL                                          ; $61de: $ef
	reti                                             ; $61df: $d9


	db $10                                           ; $61e0: $10
	reti                                             ; $61e1: $d9


	ld a, a                                          ; $61e2: $7f
	reti                                             ; $61e3: $d9


	add b                                            ; $61e4: $80
	reti                                             ; $61e5: $d9


	rst SubAFromBC                                          ; $61e6: $e7
	reti                                             ; $61e7: $d9


	jr jr_03b_61c4                                   ; $61e8: $18 $da

	rst $38                                          ; $61ea: $ff
	sbc [hl]                                         ; $61eb: $9e
	cp $fa                                           ; $61ec: $fe $fa
	sbc [hl]                                         ; $61ee: $9e
	ld bc, $3bdb                                     ; $61ef: $01 $db $3b
	sbc l                                            ; $61f2: $9d
	inc bc                                           ; $61f3: $03
	dec sp                                           ; $61f4: $3b
	reti                                             ; $61f5: $d9


	add $93                                          ; $61f6: $c6 $93
	db $10                                           ; $61f8: $10
	ld e, $33                                        ; $61f9: $1e $33
	ld sp, $6120                                     ; $61fb: $31 $20 $61

jr_03b_61fe:
	ld b, b                                          ; $61fe: $40
	ld b, b                                          ; $61ff: $40
	inc c                                            ; $6200: $0c
	inc b                                            ; $6201: $04
	ld b, $03                                        ; $6202: $06 $03
	halt                                             ; $6204: $76
	db $fc                                           ; $6205: $fc
	adc l                                            ; $6206: $8d
	xor e                                            ; $6207: $ab
	cp e                                             ; $6208: $bb
	ld a, e                                          ; $6209: $7b
	cp e                                             ; $620a: $bb
	ld a, e                                          ; $620b: $7b
	ei                                               ; $620c: $fb
	db $e3                                           ; $620d: $e3
	rst $38                                          ; $620e: $ff
	ld [hl], h                                       ; $620f: $74
	ld h, h                                          ; $6210: $64
	db $e4                                           ; $6211: $e4
	db $e4                                           ; $6212: $e4
	and h                                            ; $6213: $a4
	inc h                                            ; $6214: $24
	jr nz, jr_03b_6237                               ; $6215: $20 $20

	cp [hl]                                          ; $6217: $be
	cp [hl]                                          ; $6218: $be
	db $dd                                           ; $6219: $dd
	cp a                                             ; $621a: $bf
	sbc e                                            ; $621b: $9b
	add c                                            ; $621c: $81
	rst $38                                          ; $621d: $ff
	ld b, c                                          ; $621e: $41
	ld b, c                                          ; $621f: $41
	call c, $8c40                                    ; $6220: $dc $40 $8c
	nop                                              ; $6223: $00
	ld b, c                                          ; $6224: $41
	pop bc                                           ; $6225: $c1
	add b                                            ; $6226: $80
	nop                                              ; $6227: $00
	dec b                                            ; $6228: $05
	rlca                                             ; $6229: $07
	nop                                              ; $622a: $00
	ld [bc], a                                       ; $622b: $02
	ld b, b                                          ; $622c: $40
	ret nz                                           ; $622d: $c0

	pop bc                                           ; $622e: $c1
	inc bc                                           ; $622f: $03
	rlca                                             ; $6230: $07
	ld [bc], a                                       ; $6231: $02
	rlca                                             ; $6232: $07
	ld bc, $fbf9                                     ; $6233: $01 $f9 $fb
	ld a, c                                          ; $6236: $79

jr_03b_6237:
	dec hl                                           ; $6237: $2b
	add b                                            ; $6238: $80
	db $fc                                           ; $6239: $fc
	inc bc                                           ; $623a: $03
	rst $38                                          ; $623b: $ff
	dec b                                            ; $623c: $05
	rlca                                             ; $623d: $07
	inc bc                                           ; $623e: $03
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	inc bc                                           ; $6241: $03
	add b                                            ; $6242: $80
	nop                                              ; $6243: $00
	adc a                                            ; $6244: $8f
	adc a                                            ; $6245: $8f
	rst GetHLinHL                                          ; $6246: $cf
	or [hl]                                          ; $6247: $b6
	sbc d                                            ; $6248: $9a
	inc c                                            ; $6249: $0c
	and $f2                                          ; $624a: $e6 $f2
	ld d, b                                          ; $624c: $50
	ld d, b                                          ; $624d: $50
	jr nc, jr_03b_62c9                               ; $624e: $30 $79

	ld a, h                                          ; $6250: $7c
	cp $1e                                           ; $6251: $fe $1e
	ld c, $c4                                        ; $6253: $0e $c4
	call nz, $0004                                   ; $6255: $c4 $04 $00
	sbc c                                            ; $6258: $99
	ld a, a                                          ; $6259: $7f
	ret nz                                           ; $625a: $c0

	add h                                            ; $625b: $84
	add h                                            ; $625c: $84
	jr c, jr_03b_6297                                ; $625d: $38 $38

	ld a, d                                          ; $625f: $7a
	sub e                                            ; $6260: $93
	sub d                                            ; $6261: $92
	ccf                                              ; $6262: $3f
	ld a, b                                          ; $6263: $78
	ld a, b                                          ; $6264: $78
	cp e                                             ; $6265: $bb
	ld a, e                                          ; $6266: $7b
	ld sp, hl                                        ; $6267: $f9
	ld a, c                                          ; $6268: $79

Jump_03b_6269:
	sbc c                                            ; $6269: $99
	ld c, c                                          ; $626a: $49
	ld hl, $0411                                     ; $626b: $21 $11 $04
	inc b                                            ; $626e: $04
	sbc $06                                          ; $626f: $de $06
	ld a, [hl]                                       ; $6271: $7e
	ld a, $8c                                        ; $6272: $3e $8c
	ldh [c], a                                       ; $6274: $e2
	ld hl, sp+$2e                                    ; $6275: $f8 $2e
	add h                                            ; $6277: $84
	call z, $cfc5                                    ; $6278: $cc $c5 $cf
	rst $38                                          ; $627b: $ff
	rst $38                                          ; $627c: $ff
	rra                                              ; $627d: $1f
	rrca                                             ; $627e: $0f
	rlca                                             ; $627f: $07
	rlca                                             ; $6280: $07
	ld b, $44                                        ; $6281: $06 $44
	ld b, h                                          ; $6283: $44
	ld d, h                                          ; $6284: $54
	rst SubAFromBC                                          ; $6285: $e7
	rst FarCall                                          ; $6286: $f7
	ld [hl], l                                       ; $6287: $75
	add a                                            ; $6288: $87
	rst SubAFromDE                                          ; $6289: $df
	rrca                                             ; $628a: $0f
	sbc h                                            ; $628b: $9c
	add a                                            ; $628c: $87
	rlca                                             ; $628d: $07
	inc b                                            ; $628e: $04
	call c, $9a07                                    ; $628f: $dc $07 $9a
	push hl                                          ; $6292: $e5
	add $e7                                          ; $6293: $c6 $e7
	rst JumpTable                                          ; $6295: $c7
	and a                                            ; $6296: $a7

jr_03b_6297:
	ld a, e                                          ; $6297: $7b
	cp $9d                                           ; $6298: $fe $9d
	add l                                            ; $629a: $85
	add a                                            ; $629b: $87
	db $db                                           ; $629c: $db
	add h                                            ; $629d: $84
	call c, $9b03                                    ; $629e: $dc $03 $9b
	dec de                                           ; $62a1: $1b
	dec bc                                           ; $62a2: $0b
	dec de                                           ; $62a3: $1b
	inc bc                                           ; $62a4: $03
	call c, $9d02                                    ; $62a5: $dc $02 $9d
	ld [de], a                                       ; $62a8: $12
	nop                                              ; $62a9: $00
	jp c, Jump_03b_6269                              ; $62aa: $da $69 $62

	ret nz                                           ; $62ad: $c0

	sbc l                                            ; $62ae: $9d
	or e                                             ; $62af: $b3
	rst JumpTable                                          ; $62b0: $c7
	db $db                                           ; $62b1: $db
	rst $38                                          ; $62b2: $ff
	ld sp, hl                                        ; $62b3: $f9
	sbc [hl]                                         ; $62b4: $9e
	jr @-$24                                         ; $62b5: $18 $da

	rra                                              ; $62b7: $1f
	sbc [hl]                                         ; $62b8: $9e
	add a                                            ; $62b9: $87
	jp c, Jump_03b_6b83                              ; $62ba: $da $83 $6b

	db $e4                                           ; $62bd: $e4
	sub [hl]                                         ; $62be: $96
	ld h, b                                          ; $62bf: $60
	db $10                                           ; $62c0: $10
	db $10                                           ; $62c1: $10
	ld [hl], b                                       ; $62c2: $70
	db $10                                           ; $62c3: $10
	rst $38                                          ; $62c4: $ff
	rst $38                                          ; $62c5: $ff
	ld a, a                                          ; $62c6: $7f
	sbc a                                            ; $62c7: $9f
	ld [hl], e                                       ; $62c8: $73

jr_03b_62c9:
	ldh a, [hDisp1_OBP1]                                     ; $62c9: $f0 $94
	ld b, $0b                                        ; $62cb: $06 $0b
	inc bc                                           ; $62cd: $03
	add b                                            ; $62ce: $80
	and b                                            ; $62cf: $a0
	ldh [$80], a                                     ; $62d0: $e0 $80
	rst $38                                          ; $62d2: $ff
	rst $38                                          ; $62d3: $ff
	di                                               ; $62d4: $f3
	di                                               ; $62d5: $f3
	ld h, a                                          ; $62d6: $67
	call nz, $c45a                                   ; $62d7: $c4 $5a $c4

jr_03b_62da:
	ld [hl], e                                       ; $62da: $73
	ldh a, [$7b]                                     ; $62db: $f0 $7b
	sub b                                            ; $62dd: $90
	ld [hl], b                                       ; $62de: $70
	sub b                                            ; $62df: $90

jr_03b_62e0:
	db $dd                                           ; $62e0: $dd
	ei                                               ; $62e1: $fb
	sbc e                                            ; $62e2: $9b
	nop                                              ; $62e3: $00
	inc c                                            ; $62e4: $0c
	ld d, $26                                        ; $62e5: $16 $26
	db $dd                                           ; $62e7: $dd
	add [hl]                                         ; $62e8: $86
	ld a, a                                          ; $62e9: $7f
	ldh a, [$df]                                     ; $62ea: $f0 $df
	rst SubAFromBC                                          ; $62ec: $e7
	push af                                          ; $62ed: $f5
	ld d, a                                          ; $62ee: $57
	ret nc                                           ; $62ef: $d0

	db $dd                                           ; $62f0: $dd
	jr nz, @-$60                                     ; $62f1: $20 $9e

	ret nz                                           ; $62f3: $c0

	ld e, e                                          ; $62f4: $5b
	ldh a, [$57]                                     ; $62f5: $f0 $57
	rst SubAFromDE                                          ; $62f7: $df
	rst SubAFromDE                                          ; $62f8: $df
	rrca                                             ; $62f9: $0f
	sbc l                                            ; $62fa: $9d
	rra                                              ; $62fb: $1f
	jr c, jr_03b_62da                                ; $62fc: $38 $dc

	ld a, [bc]                                       ; $62fe: $0a
	sbc h                                            ; $62ff: $9c
	ld a, [$e0f7]                                    ; $6300: $fa $f7 $e0
	sbc $ff                                          ; $6303: $de $ff
	sbc d                                            ; $6305: $9a
	cp a                                             ; $6306: $bf
	add b                                            ; $6307: $80
	add b                                            ; $6308: $80
	ret nz                                           ; $6309: $c0

	xor a                                            ; $630a: $af
	call c, Call_03b_7f80                            ; $630b: $dc $80 $7f
	ld [hl], b                                       ; $630e: $70
	sbc d                                            ; $630f: $9a
	cpl                                              ; $6310: $2f
	rst $38                                          ; $6311: $ff
	ld a, [$fbfa]                                    ; $6312: $fa $fa $fb
	sbc $03                                          ; $6315: $de $03
	ld a, d                                          ; $6317: $7a
	di                                               ; $6318: $f3
	sbc c                                            ; $6319: $99
	dec b                                            ; $631a: $05
	ld b, $07                                        ; $631b: $06 $07
	rst $38                                          ; $631d: $ff
	db $fc                                           ; $631e: $fc
	ld sp, hl                                        ; $631f: $f9
	db $dd                                           ; $6320: $dd
	ld a, a                                          ; $6321: $7f
	db $fd                                           ; $6322: $fd
	rst SubAFromDE                                          ; $6323: $df
	cp b                                             ; $6324: $b8
	sbc l                                            ; $6325: $9d
	jr c, jr_03b_62e0                                ; $6326: $38 $b8

	ld a, e                                          ; $6328: $7b
	or b                                             ; $6329: $b0
	adc a                                            ; $632a: $8f
	db $fc                                           ; $632b: $fc
	rst SubAFromHL                                          ; $632c: $d7
	rst AddAOntoHL                                          ; $632d: $ef
	rst FarCall                                          ; $632e: $f7
	rst $38                                          ; $632f: $ff
	rlca                                             ; $6330: $07
	inc c                                            ; $6331: $0c
	inc c                                            ; $6332: $0c
	inc b                                            ; $6333: $04
	sub c                                            ; $6334: $91
	adc b                                            ; $6335: $88
	add h                                            ; $6336: $84
	add [hl]                                         ; $6337: $86
	rlca                                             ; $6338: $07
	rst $38                                          ; $6339: $ff
	ei                                               ; $633a: $fb
	ld a, b                                          ; $633b: $78
	ld [$ffdf], a                                    ; $633c: $ea $df $ff
	rst SubAFromDE                                          ; $633f: $df
	ld hl, sp-$6b                                    ; $6340: $f8 $95
	ld [hl], b                                       ; $6342: $70
	jr nc, jr_03b_6391                               ; $6343: $30 $4c

	xor h                                            ; $6345: $ac
	ld l, h                                          ; $6346: $6c
	ld a, [hl+]                                      ; $6347: $2a
	ld [$cf8f], sp                                   ; $6348: $08 $8f $cf
	rst AddAOntoHL                                          ; $634b: $ef
	db $dd                                           ; $634c: $dd
	rrca                                             ; $634d: $0f
	ld [hl], a                                       ; $634e: $77
	ld d, c                                          ; $634f: $51
	sbc [hl]                                         ; $6350: $9e
	inc b                                            ; $6351: $04
	ld a, d                                          ; $6352: $7a
	ld e, e                                          ; $6353: $5b
	sbc $ff                                          ; $6354: $de $ff
	add b                                            ; $6356: $80
	db $fd                                           ; $6357: $fd
	add h                                            ; $6358: $84
	add e                                            ; $6359: $83
	add h                                            ; $635a: $84
	adc e                                            ; $635b: $8b
	rlca                                             ; $635c: $07
	inc b                                            ; $635d: $04
	inc b                                            ; $635e: $04
	add h                                            ; $635f: $84
	add l                                            ; $6360: $85
	add h                                            ; $6361: $84
	adc b                                            ; $6362: $88
	add b                                            ; $6363: $80
	ldh a, [$f3]                                     ; $6364: $f0 $f3
	di                                               ; $6366: $f3
	ld [hl], e                                       ; $6367: $73
	ld b, $f6                                        ; $6368: $06 $f6
	ld [bc], a                                       ; $636a: $02
	ld hl, sp+$0d                                    ; $636b: $f8 $0d
	rst SubAFromBC                                          ; $636d: $e7
	rlca                                             ; $636e: $07
	dec c                                            ; $636f: $0d
	ei                                               ; $6370: $fb
	ld a, [bc]                                       ; $6371: $0a
	ld b, $03                                        ; $6372: $06 $03
	ldh a, [c]                                       ; $6374: $f2
	jr @-$61                                         ; $6375: $18 $9d

	ld hl, sp-$0e                                    ; $6377: $f8 $f2
	ld a, d                                          ; $6379: $7a
	ld l, e                                          ; $637a: $6b
	sbc l                                            ; $637b: $9d
	di                                               ; $637c: $f3
	jp $83de                                         ; $637d: $c3 $de $83


	ld a, [hl]                                       ; $6380: $7e

jr_03b_6381:
	ld e, e                                          ; $6381: $5b
	sub [hl]                                         ; $6382: $96
	rst $38                                          ; $6383: $ff
	ld c, b                                          ; $6384: $48
	cp b                                             ; $6385: $b8
	ld hl, sp+$78                                    ; $6386: $f8 $78
	ld a, b                                          ; $6388: $78
	rst $38                                          ; $6389: $ff
	inc bc                                           ; $638a: $03
	db $fd                                           ; $638b: $fd
	ld a, b                                          ; $638c: $78
	sub h                                            ; $638d: $94
	ld a, a                                          ; $638e: $7f
	add b                                            ; $638f: $80
	sub a                                            ; $6390: $97

jr_03b_6391:
	nop                                              ; $6391: $00
	db $fc                                           ; $6392: $fc
	cp $07                                           ; $6393: $fe $07
	cp $ff                                           ; $6395: $fe $ff
	cp $fc                                           ; $6397: $fe $fc
	sbc $1f                                          ; $6399: $de $1f
	sbc d                                            ; $639b: $9a
	ld d, b                                          ; $639c: $50
	jr jr_03b_6381                                   ; $639d: $18 $e2

	ld de, $de0c                                     ; $639f: $11 $0c $de
	add e                                            ; $63a2: $83
	ld a, [hl]                                       ; $63a3: $7e
	ld l, h                                          ; $63a4: $6c
	sbc h                                            ; $63a5: $9c
	ld bc, $9938                                     ; $63a6: $01 $38 $99
	db $dd                                           ; $63a9: $dd
	ldh [$7f], a                                     ; $63aa: $e0 $7f
	ld [$f8df], a                                    ; $63ac: $ea $df $f8
	sbc [hl]                                         ; $63af: $9e
	ld e, a                                          ; $63b0: $5f
	sbc $df                                          ; $63b1: $de $df
	sbc d                                            ; $63b3: $9a
	pop bc                                           ; $63b4: $c1
	add e                                            ; $63b5: $83
	rlca                                             ; $63b6: $07
	rlca                                             ; $63b7: $07
	ld [bc], a                                       ; $63b8: $02
	jp c, $9e06                                      ; $63b9: $da $06 $9e

	db $fd                                           ; $63bc: $fd
	jp c, Jump_03b_5bf9                              ; $63bd: $da $f9 $5b

	dec d                                            ; $63c0: $15
	sbc h                                            ; $63c1: $9c
	push af                                          ; $63c2: $f5
	xor d                                            ; $63c3: $aa
	ld d, l                                          ; $63c4: $55
	ld [hl], h                                       ; $63c5: $74
	add d                                            ; $63c6: $82
	ld h, a                                          ; $63c7: $67
	ldh a, [rPCM34]                                  ; $63c8: $f0 $77
	ldh a, [c]                                       ; $63ca: $f2
	ld a, a                                          ; $63cb: $7f
	cp $9e                                           ; $63cc: $fe $9e
	ld e, $dc                                        ; $63ce: $1e $dc
	inc c                                            ; $63d0: $0c
	rst SubAFromDE                                          ; $63d1: $df
	inc b                                            ; $63d2: $04
	sub a                                            ; $63d3: $97
	rst $38                                          ; $63d4: $ff
	rst AddAOntoHL                                          ; $63d5: $ef
	xor [hl]                                         ; $63d6: $ae
	ld e, a                                          ; $63d7: $5f
	xor [hl]                                         ; $63d8: $ae
	ld e, a                                          ; $63d9: $5f
	xor a                                            ; $63da: $af
	ld e, a                                          ; $63db: $5f
	ld h, e                                          ; $63dc: $63
	ldh [rPCM34], a                                  ; $63dd: $e0 $77
	ldh [c], a                                       ; $63df: $e2
	sbc h                                            ; $63e0: $9c
	ld d, b                                          ; $63e1: $50
	nop                                              ; $63e2: $00
	pop hl                                           ; $63e3: $e1
	cp $9a                                           ; $63e4: $fe $9a
	rrca                                             ; $63e6: $0f
	ld e, $3d                                        ; $63e7: $1e $3d
	ld a, e                                          ; $63e9: $7b
	ld a, [$f07b]                                    ; $63ea: $fa $7b $f0
	sbc d                                            ; $63ed: $9a
	ld d, b                                          ; $63ee: $50
	and c                                            ; $63ef: $a1
	ld b, e                                          ; $63f0: $43
	add a                                            ; $63f1: $87
	rlca                                             ; $63f2: $07
	ld h, e                                          ; $63f3: $63
	ldh [$80], a                                     ; $63f4: $e0 $80
	ld a, a                                          ; $63f6: $7f
	xor e                                            ; $63f7: $ab
	ld d, l                                          ; $63f8: $55
	xor d                                            ; $63f9: $aa
	dec d                                            ; $63fa: $15
	ld [bc], a                                       ; $63fb: $02
	nop                                              ; $63fc: $00
	ld h, d                                          ; $63fd: $62
	ld l, d                                          ; $63fe: $6a
	ld a, e                                          ; $63ff: $7b
	xor d                                            ; $6400: $aa
	ld b, a                                          ; $6401: $47
	cp a                                             ; $6402: $bf
	ld e, a                                          ; $6403: $5f
	cp l                                             ; $6404: $bd
	jp nz, $dbca                                     ; $6405: $c2 $ca $db

	ld c, d                                          ; $6408: $4a
	and e                                            ; $6409: $a3
	ld b, d                                          ; $640a: $42
	cp l                                             ; $640b: $bd
	ld d, d                                          ; $640c: $52
	jr nc, jr_03b_641f                               ; $640d: $30 $10

	ld d, $16                                        ; $640f: $16 $16
	ld h, $e0                                        ; $6411: $26 $e0
	rst AddAOntoHL                                          ; $6413: $ef
	rst GetHLinHL                                          ; $6414: $cf
	sub [hl]                                         ; $6415: $96
	xor c                                            ; $6416: $a9
	sub [hl]                                         ; $6417: $96
	ret nc                                           ; $6418: $d0

	ret nc                                           ; $6419: $d0

	or b                                             ; $641a: $b0
	push af                                          ; $641b: $f5
	ld [hl], b                                       ; $641c: $70
	ld [hl], b                                       ; $641d: $70
	add h                                            ; $641e: $84

jr_03b_641f:
	db $db                                           ; $641f: $db
	add l                                            ; $6420: $85
	sbc l                                            ; $6421: $9d
	inc b                                            ; $6422: $04
	ld a, b                                          ; $6423: $78
	call c, $9d79                                    ; $6424: $dc $79 $9d
	ld a, b                                          ; $6427: $78
	ld hl, sp-$22                                    ; $6428: $f8 $de
	rlca                                             ; $642a: $07
	rst SubAFromDE                                          ; $642b: $df
	inc bc                                           ; $642c: $03
	ld a, c                                          ; $642d: $79
	daa                                              ; $642e: $27
	sbc h                                            ; $642f: $9c
	ld a, h                                          ; $6430: $7c
	ld a, [hl]                                       ; $6431: $7e
	ld a, [hl]                                       ; $6432: $7e
	call c, $df7f                                    ; $6433: $dc $7f $df
	db $fc                                           ; $6436: $fc
	rst SubAFromDE                                          ; $6437: $df
	cp $76                                           ; $6438: $fe $76
	ld l, l                                          ; $643a: $6d
	add b                                            ; $643b: $80
	dec bc                                           ; $643c: $0b
	add hl, bc                                       ; $643d: $09
	rrca                                             ; $643e: $0f
	ld bc, $7f00                                     ; $643f: $01 $00 $7f
	ld a, a                                          ; $6442: $7f
	rst $38                                          ; $6443: $ff
	jr c, jr_03b_64be                                ; $6444: $38 $78

	jr nc, jr_03b_648a                               ; $6446: $30 $42

	ld d, h                                          ; $6448: $54
	pop de                                           ; $6449: $d1
	ret nc                                           ; $644a: $d0

	inc d                                            ; $644b: $14
	rst FarCall                                          ; $644c: $f7
	add l                                            ; $644d: $85
	add c                                            ; $644e: $81
	add b                                            ; $644f: $80
	sub d                                            ; $6450: $92
	ld d, $17                                        ; $6451: $16 $17
	sub e                                            ; $6453: $93
	inc bc                                           ; $6454: $03
	ld b, $0c                                        ; $6455: $06 $0c
	jr @+$32                                         ; $6457: $18 $30

	ldh [$e0], a                                     ; $6459: $e0 $e0
	ld a, e                                          ; $645b: $7b
	ld d, b                                          ; $645c: $50
	add [hl]                                         ; $645d: $86
	ei                                               ; $645e: $fb
	rst FarCall                                          ; $645f: $f7
	rst AddAOntoHL                                          ; $6460: $ef
	rst SubAFromDE                                          ; $6461: $df
	rra                                              ; $6462: $1f
	rst $38                                          ; $6463: $ff
	call nz, Call_03b_6cc4                           ; $6464: $c4 $c4 $6c
	inc a                                            ; $6467: $3c
	inc a                                            ; $6468: $3c
	nop                                              ; $6469: $00
	inc b                                            ; $646a: $04
	ld d, $b3                                        ; $646b: $16 $b3
	ld [hl], e                                       ; $646d: $73
	or e                                             ; $646e: $b3
	db $e3                                           ; $646f: $e3
	rst GetHLinHL                                          ; $6470: $cf
	add e                                            ; $6471: $83
	ld [hl], c                                       ; $6472: $71
	ld l, c                                          ; $6473: $69
	ld c, c                                          ; $6474: $49
	ret                                              ; $6475: $c9


	add hl, bc                                       ; $6476: $09
	sbc $29                                          ; $6477: $de $29
	rst SubAFromDE                                          ; $6479: $df
	add hl, bc                                       ; $647a: $09
	sbc h                                            ; $647b: $9c
	or e                                             ; $647c: $b3
	inc sp                                           ; $647d: $33
	inc bc                                           ; $647e: $03
	sbc $43                                          ; $647f: $de $43
	sbc b                                            ; $6481: $98
	inc bc                                           ; $6482: $03
	di                                               ; $6483: $f3
	add a                                            ; $6484: $87
	rlca                                             ; $6485: $07
	daa                                              ; $6486: $27
	ccf                                              ; $6487: $3f
	ld a, $79                                        ; $6488: $3e $79

jr_03b_648a:
	ld b, e                                          ; $648a: $43
	sub d                                            ; $648b: $92
	ld a, e                                          ; $648c: $7b
	ld a, c                                          ; $648d: $79
	ld h, c                                          ; $648e: $61
	ld h, [hl]                                       ; $648f: $66
	ld [hl], b                                       ; $6490: $70
	ld a, h                                          ; $6491: $7c
	ld a, a                                          ; $6492: $7f
	ld a, a                                          ; $6493: $7f
	rlca                                             ; $6494: $07
	rlca                                             ; $6495: $07
	add a                                            ; $6496: $87
	rst JumpTable                                          ; $6497: $c7
	rst SubAFromBC                                          ; $6498: $e7
	sbc $f7                                          ; $6499: $de $f7
	rst SubAFromDE                                          ; $649b: $df
	cp $8e                                           ; $649c: $fe $8e
	ld a, [hl]                                       ; $649e: $7e
	ld a, $1e                                        ; $649f: $3e $1e
	ld c, $fc                                        ; $64a1: $0e $fc
	ld hl, sp-$20                                    ; $64a3: $f8 $e0
	rst JumpTable                                          ; $64a5: $c7
	rst GetHLinHL                                          ; $64a6: $cf
	rst $38                                          ; $64a7: $ff
	add e                                            ; $64a8: $83
	adc l                                            ; $64a9: $8d
	jp $1ff3                                         ; $64aa: $c3 $f3 $1f


	jr c, jr_03b_64df                                ; $64ad: $38 $30

	ld a, e                                          ; $64af: $7b
	ld a, h                                          ; $64b0: $7c
	add b                                            ; $64b1: $80
	inc a                                            ; $64b2: $3c
	inc c                                            ; $64b3: $0c
	ldh a, [$f0]                                     ; $64b4: $f0 $f0
	ld hl, sp-$01                                    ; $64b6: $f8 $ff
	rst $38                                          ; $64b8: $ff
	ldh a, [$c0]                                     ; $64b9: $f0 $c0
	nop                                              ; $64bb: $00
	rrca                                             ; $64bc: $0f
	rrca                                             ; $64bd: $0f

jr_03b_64be:
	rlca                                             ; $64be: $07
	ld bc, $6f0f                                     ; $64bf: $01 $0f $6f
	ccf                                              ; $64c2: $3f
	rst $38                                          ; $64c3: $ff
	rrca                                             ; $64c4: $0f
	rra                                              ; $64c5: $1f
	ld a, a                                          ; $64c6: $7f
	ld a, a                                          ; $64c7: $7f
	ld b, d                                          ; $64c8: $42
	ld b, e                                          ; $64c9: $43
	ld a, a                                          ; $64ca: $7f
	nop                                              ; $64cb: $00
	or $e6                                           ; $64cc: $f6 $e6
	add b                                            ; $64ce: $80
	nop                                              ; $64cf: $00
	ld a, [hl]                                       ; $64d0: $7e
	ld a, a                                          ; $64d1: $7f
	ld [hl], c                                       ; $64d2: $71
	adc [hl]                                         ; $64d3: $8e
	rst $38                                          ; $64d4: $ff
	ldh [$c0], a                                     ; $64d5: $e0 $c0
	sub b                                            ; $64d7: $90
	jr nz, @+$42                                     ; $64d8: $20 $40

	add b                                            ; $64da: $80
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	ld a, [de]                                       ; $64dd: $1a
	dec d                                            ; $64de: $15

jr_03b_64df:
	ld a, $7f                                        ; $64df: $3e $7f
	cp $fd                                           ; $64e1: $fe $fd
	ld a, [$f9f5]                                    ; $64e3: $fa $f5 $f9
	ld a, d                                          ; $64e6: $7a
	ldh [c], a                                       ; $64e7: $e2
	sub a                                            ; $64e8: $97
	ld d, h                                          ; $64e9: $54
	and b                                            ; $64ea: $a0
	ld b, c                                          ; $64eb: $41
	add b                                            ; $64ec: $80
	nop                                              ; $64ed: $00
	inc d                                            ; $64ee: $14
	inc [hl]                                         ; $64ef: $34
	ld a, h                                          ; $64f0: $7c
	call c, Call_03b_7f81                            ; $64f1: $dc $81 $7f
	ld c, $9c                                        ; $64f4: $0e $9c
	add c                                            ; $64f6: $81
	ld bc, $de7d                                     ; $64f7: $01 $7d $de
	ld a, a                                          ; $64fa: $7f
	adc [hl]                                         ; $64fb: $8e
	ld hl, $e161                                     ; $64fc: $21 $61 $e1
	pop bc                                           ; $64ff: $c1
	add c                                            ; $6500: $81
	add c                                            ; $6501: $81
	and c                                            ; $6502: $a1
	cp $e0                                           ; $6503: $fe $e0
	ldh a, [$f0]                                     ; $6505: $f0 $f0
	ldh [$c0], a                                     ; $6507: $e0 $c0
	add b                                            ; $6509: $80
	ldh [rIE], a                                     ; $650a: $e0 $ff
	and $de                                          ; $650c: $e6 $de
	ld b, $99                                        ; $650e: $06 $99
	ld h, h                                          ; $6510: $64
	ld h, b                                          ; $6511: $60
	add b                                            ; $6512: $80
	jr nz, jr_03b_6524                               ; $6513: $20 $0f

	rlca                                             ; $6515: $07
	db $dd                                           ; $6516: $dd
	rst FarCall                                          ; $6517: $f7
	sbc l                                            ; $6518: $9d
	add $fc                                          ; $6519: $c6 $fc
	rst FarCall                                          ; $651b: $f7
	ld a, e                                          ; $651c: $7b
	pop hl                                           ; $651d: $e1
	cp $de                                           ; $651e: $fe $de
	ld [de], a                                       ; $6520: $12
	sbc c                                            ; $6521: $99
	ld d, $32                                        ; $6522: $16 $32

jr_03b_6524:
	ld a, $32                                        ; $6524: $3e $32
	cpl                                              ; $6526: $2f
	ld sp, $11de                                     ; $6527: $31 $de $11
	add b                                            ; $652a: $80
	inc sp                                           ; $652b: $33
	ld h, d                                          ; $652c: $62
	ld a, a                                          ; $652d: $7f
	ld a, a                                          ; $652e: $7f
	sub $e8                                          ; $652f: $d6 $e8
	push de                                          ; $6531: $d5
	jp z, Jump_03b_7f40                              ; $6532: $ca $40 $7f

	db $fc                                           ; $6535: $fc
	ldh a, [rBCPD]                                   ; $6536: $f0 $69
	ld d, a                                          ; $6538: $57
	ld l, d                                          ; $6539: $6a

jr_03b_653a:
	ld [hl], l                                       ; $653a: $75
	rst $38                                          ; $653b: $ff
	nop                                              ; $653c: $00
	inc bc                                           ; $653d: $03
	rrca                                             ; $653e: $0f
	add hl, bc                                       ; $653f: $09
	ld de, $2111                                     ; $6540: $11 $11 $21
	nop                                              ; $6543: $00
	ret nz                                           ; $6544: $c0

	rrca                                             ; $6545: $0f
	jr nz, jr_03b_653a                               ; $6546: $20 $f2

jr_03b_6548:
	jp hl                                            ; $6548: $e9


	db $e3                                           ; $6549: $e3
	sbc b                                            ; $654a: $98
	add $e5                                          ; $654b: $c6 $e5
	ld c, $d0                                        ; $654d: $0e $d0
	rst SubAFromDE                                          ; $654f: $df
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	ld a, c                                          ; $6552: $79
	ld h, d                                          ; $6553: $62
	sub h                                            ; $6554: $94
	ld b, b                                          ; $6555: $40
	jr nz, @+$1e                                     ; $6556: $20 $1c

	ld a, a                                          ; $6558: $7f
	cp a                                             ; $6559: $bf
	cp a                                             ; $655a: $bf
	rst SubAFromDE                                          ; $655b: $df
	ld c, a                                          ; $655c: $4f
	xor a                                            ; $655d: $af
	ld c, a                                          ; $655e: $4f
	db $e3                                           ; $655f: $e3
	db $fc                                           ; $6560: $fc
	rst SubAFromDE                                          ; $6561: $df
	ld bc, $e07a                                     ; $6562: $01 $7a $e0
	call c, $99fe                                    ; $6565: $dc $fe $99
	rst $38                                          ; $6568: $ff
	inc [hl]                                         ; $6569: $34
	inc b                                            ; $656a: $04
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	jr nc, jr_03b_65e8                               ; $656d: $30 $79

	ld a, d                                          ; $656f: $7a
	sbc b                                            ; $6570: $98
	or e                                             ; $6571: $b3
	ld a, e                                          ; $6572: $7b
	ld bc, $7901                                     ; $6573: $01 $01 $79
	ld sp, $6d03                                     ; $6576: $31 $03 $6d
	inc d                                            ; $6579: $14
	sbc h                                            ; $657a: $9c
	ldh a, [$fc]                                     ; $657b: $f0 $fc
	rrca                                             ; $657d: $0f
	ld l, l                                          ; $657e: $6d
	rla                                              ; $657f: $17
	add b                                            ; $6580: $80
	inc bc                                           ; $6581: $03
	ldh a, [rAUD2LEN]                                ; $6582: $f0 $16
	ld [hl], $2e                                     ; $6584: $36 $2e
	ld [de], a                                       ; $6586: $12
	ld a, $17                                        ; $6587: $3e $17
	ccf                                              ; $6589: $3f
	rra                                              ; $658a: $1f
	ld h, c                                          ; $658b: $61
	ld b, c                                          ; $658c: $41
	ld a, c                                          ; $658d: $79
	ld l, c                                          ; $658e: $69
	ld de, $dc82                                     ; $658f: $11 $82 $dc
	ldh [$39], a                                     ; $6592: $e0 $39
	ld [$1710], sp                                   ; $6594: $08 $10 $17
	inc de                                           ; $6597: $13
	ret c                                            ; $6598: $d8

	rst $38                                          ; $6599: $ff
	rrca                                             ; $659a: $0f
	jp $e3f1                                         ; $659b: $c3 $f1 $e3


	rst SubAFromBC                                          ; $659e: $e7
	db $e3                                           ; $659f: $e3
	adc b                                            ; $65a0: $88
	jr z, jr_03b_65aa                                ; $65a1: $28 $07

	ldh a, [$80]                                     ; $65a3: $f0 $80
	ld b, b                                          ; $65a5: $40
	jr nz, jr_03b_6548                               ; $65a6: $20 $a0

	and b                                            ; $65a8: $a0
	ld a, [hl]                                       ; $65a9: $7e

jr_03b_65aa:
	rst SubAFromBC                                          ; $65aa: $e7
	add b                                            ; $65ab: $80
	ld a, a                                          ; $65ac: $7f
	cp a                                             ; $65ad: $bf
	rst SubAFromDE                                          ; $65ae: $df
	ld e, a                                          ; $65af: $5f
	ld e, a                                          ; $65b0: $5f
	ld b, c                                          ; $65b1: $41
	sbc b                                            ; $65b2: $98
	ld a, a                                          ; $65b3: $7f
	inc b                                            ; $65b4: $04
	inc b                                            ; $65b5: $04
	inc c                                            ; $65b6: $0c
	ld a, $7a                                        ; $65b7: $3e $7a
	ld sp, hl                                        ; $65b9: $f9
	sbc e                                            ; $65ba: $9b
	dec sp                                           ; $65bb: $3b
	ld hl, sp-$08                                    ; $65bc: $f8 $f8
	ldh a, [rPCM34]                                  ; $65be: $f0 $77
	ld d, b                                          ; $65c0: $50
	sbc d                                            ; $65c1: $9a
	call nz, $fc0c                                   ; $65c2: $c4 $0c $fc
	ld a, h                                          ; $65c5: $7c
	ld bc, $1b75                                     ; $65c6: $01 $75 $1b
	ld [hl], e                                       ; $65c9: $73
	adc c                                            ; $65ca: $89
	ld a, e                                          ; $65cb: $7b
	ld a, [$0035]                                    ; $65cc: $fa $35 $00
	rst SubAFromDE                                          ; $65cf: $df
	ld [hl], a                                       ; $65d0: $77
	sub a                                            ; $65d1: $97
	ld [hl], h                                       ; $65d2: $74
	ld [hl], a                                       ; $65d3: $77
	ld [hl], a                                       ; $65d4: $77
	ld b, h                                          ; $65d5: $44
	ld b, h                                          ; $65d6: $44
	ld b, [hl]                                       ; $65d7: $46
	ld d, h                                          ; $65d8: $54
	ld b, l                                          ; $65d9: $45
	jp c, $9d44                                      ; $65da: $da $44 $9d

	ld h, a                                          ; $65dd: $67
	ld d, h                                          ; $65de: $54
	call c, Call_03b_7b44                            ; $65df: $dc $44 $7b
	ld a, [$6499]                                    ; $65e2: $fa $99 $64
	ld d, h                                          ; $65e5: $54
	ld b, h                                          ; $65e6: $44
	inc sp                                           ; $65e7: $33

jr_03b_65e8:
	inc sp                                           ; $65e8: $33
	ld [hl], $dd                                     ; $65e9: $36 $dd
	inc sp                                           ; $65eb: $33
	rst SubAFromDE                                          ; $65ec: $df
	ld h, [hl]                                       ; $65ed: $66
	sbc l                                            ; $65ee: $9d
	inc [hl]                                         ; $65ef: $34
	ld h, [hl]                                       ; $65f0: $66
	sbc $33                                          ; $65f1: $de $33
	sbc b                                            ; $65f3: $98
	ld [hl], $63                                     ; $65f4: $36 $63
	ld b, [hl]                                       ; $65f6: $46
	ld h, [hl]                                       ; $65f7: $66
	ld h, e                                          ; $65f8: $63
	scf                                              ; $65f9: $37
	ld h, e                                          ; $65fa: $63
	ld [hl], a                                       ; $65fb: $77
	or $9d                                           ; $65fc: $f6 $9d
	ld h, [hl]                                       ; $65fe: $66
	ld h, h                                          ; $65ff: $64
	sbc $66                                          ; $6600: $de $66
	ld d, c                                          ; $6602: $51
	add d                                            ; $6603: $82
	sub a                                            ; $6604: $97
	ld a, [hl+]                                      ; $6605: $2a
	inc [hl]                                         ; $6606: $34
	jr z, jr_03b_663d                                ; $6607: $28 $34

	jr z, @+$32                                      ; $6609: $28 $30

	jr z, jr_03b_663d                                ; $660b: $28 $30

	db $db                                           ; $660d: $db
	rst $38                                          ; $660e: $ff
	sbc l                                            ; $660f: $9d
	cp $fd                                           ; $6610: $fe $fd
	ld a, [$609e]                                    ; $6612: $fa $9e $60
	db $db                                           ; $6615: $db
	rst $38                                          ; $6616: $ff
	sbc l                                            ; $6617: $9d
	ccf                                              ; $6618: $3f
	rst $38                                          ; $6619: $ff
	ld sp, hl                                        ; $661a: $f9
	ld a, a                                          ; $661b: $7f
	push hl                                          ; $661c: $e5
	sbc c                                            ; $661d: $99
	rst $38                                          ; $661e: $ff
	ld a, [$faf5]                                    ; $661f: $fa $f5 $fa
	push de                                          ; $6622: $d5
	xor d                                            ; $6623: $aa
	ld sp, hl                                        ; $6624: $f9
	ld a, a                                          ; $6625: $7f
	or $9e                                           ; $6626: $f6 $9e
	ld d, l                                          ; $6628: $55
	ld a, e                                          ; $6629: $7b
	cp $9d                                           ; $662a: $fe $9d
	ld d, c                                          ; $662c: $51
	xor a                                            ; $662d: $af
	ld sp, hl                                        ; $662e: $f9
	ld [hl], a                                       ; $662f: $77
	ldh a, [c]                                       ; $6630: $f2
	sbc e                                            ; $6631: $9b
	ld d, h                                          ; $6632: $54
	xor b                                            ; $6633: $a8
	ld d, h                                          ; $6634: $54
	xor b                                            ; $6635: $a8
	ld sp, hl                                        ; $6636: $f9
	sbc l                                            ; $6637: $9d
	ld d, b                                          ; $6638: $50
	add b                                            ; $6639: $80

Call_03b_663a:
	add sp, -$66                                     ; $663a: $e8 $9a
	ccf                                              ; $663c: $3f

jr_03b_663d:
	ret nz                                           ; $663d: $c0

	rst SubAFromDE                                          ; $663e: $df
	ret nc                                           ; $663f: $d0

	rst SubAFromDE                                          ; $6640: $df
	ld [hl], e                                       ; $6641: $73
	rst FarCall                                          ; $6642: $f7
	rst SubAFromDE                                          ; $6643: $df
	ccf                                              ; $6644: $3f
	sbc [hl]                                         ; $6645: $9e
	jr nc, jr_03b_66bf                               ; $6646: $30 $77

	and l                                            ; $6648: $a5
	ld [hl], e                                       ; $6649: $73
	cp $77                                           ; $664a: $fe $77
	rst FarCall                                          ; $664c: $f7
	rst SubAFromDE                                          ; $664d: $df
	rst $38                                          ; $664e: $ff
	ld [hl], e                                       ; $664f: $73
	ld sp, hl                                        ; $6650: $f9
	inc bc                                           ; $6651: $03
	ldh a, [$9c]                                     ; $6652: $f0 $9c
	cp $02                                           ; $6654: $fe $02
	cp $6b                                           ; $6656: $fe $6b
	ldh a, [$9e]                                     ; $6658: $f0 $9e
	inc bc                                           ; $665a: $03
	cp $dc                                           ; $665b: $fe $dc
	add b                                            ; $665d: $80
	db $ec                                           ; $665e: $ec
	sbc [hl]                                         ; $665f: $9e
	ld bc, $446b                                     ; $6660: $01 $6b $44
	sbc h                                            ; $6663: $9c
	ldh [rIE], a                                     ; $6664: $e0 $ff
	ldh a, [$6f]                                     ; $6666: $f0 $6f
	rst FarCall                                          ; $6668: $f7
	sbc [hl]                                         ; $6669: $9e
	rst $38                                          ; $666a: $ff
	ld [hl], e                                       ; $666b: $73
	ret c                                            ; $666c: $d8

	ld [hl], a                                       ; $666d: $77
	or c                                             ; $666e: $b1
	sbc e                                            ; $666f: $9b
	xor d                                            ; $6670: $aa
	dec d                                            ; $6671: $15
	ld [bc], a                                       ; $6672: $02
	dec b                                            ; $6673: $05
	ld a, e                                          ; $6674: $7b
	ldh a, [$9e]                                     ; $6675: $f0 $9e
	ccf                                              ; $6677: $3f

jr_03b_6678:
	db $fd                                           ; $6678: $fd
	sbc e                                            ; $6679: $9b
	ldh [rP1], a                                     ; $667a: $e0 $00
	ldh [rAUD4LEN], a                                ; $667c: $e0 $20
	ld [hl], a                                       ; $667e: $77
	ld sp, $0a9b                                     ; $667f: $31 $9b $0a
	push af                                          ; $6682: $f5
	ld a, [$f9f5]                                    ; $6683: $fa $f5 $f9
	sub h                                            ; $6686: $94
	cp a                                             ; $6687: $bf
	ld e, a                                          ; $6688: $5f
	xor a                                            ; $6689: $af
	ld e, a                                          ; $668a: $5f
	xor a                                            ; $668b: $af
	ld d, a                                          ; $668c: $57
	xor e                                            ; $668d: $ab
	ld d, a                                          ; $668e: $57
	rla                                              ; $668f: $17
	dec bc                                           ; $6690: $0b
	rlca                                             ; $6691: $07
	ld [hl], a                                       ; $6692: $77
	cp $9e                                           ; $6693: $fe $9e
	inc bc                                           ; $6695: $03
	reti                                             ; $6696: $d9


	rst $38                                          ; $6697: $ff
	jp c, $9ee7                                      ; $6698: $da $e7 $9e

	ldh [$db], a                                     ; $669b: $e0 $db
	rst SubAFromDE                                          ; $669d: $df
	rst SubAFromDE                                          ; $669e: $df
	ret c                                            ; $669f: $d8

	ld a, [hl]                                       ; $66a0: $7e
	add $9e                                          ; $66a1: $c6 $9e
	jr nz, jr_03b_671c                               ; $66a3: $20 $77

	cp $9e                                           ; $66a5: $fe $9e
	add b                                            ; $66a7: $80
	jp c, $9cff                                      ; $66a8: $da $ff $9c

	nop                                              ; $66ab: $00
	jr nc, jr_03b_66be                               ; $66ac: $30 $10

	call c, $9e18                                    ; $66ae: $dc $18 $9e
	rrca                                             ; $66b1: $0f
	ld h, a                                          ; $66b2: $67
	ldh a, [$66]                                     ; $66b3: $f0 $66
	pop bc                                           ; $66b5: $c1
	ld a, [hl]                                       ; $66b6: $7e
	ret nc                                           ; $66b7: $d0

	ld [hl], d                                       ; $66b8: $72
	adc $63                                          ; $66b9: $ce $63
	ld l, l                                          ; $66bb: $6d
	sbc h                                            ; $66bc: $9c
	ld e, a                                          ; $66bd: $5f

jr_03b_66be:
	cp a                                             ; $66be: $bf

jr_03b_66bf:
	ccf                                              ; $66bf: $3f
	ld [hl], a                                       ; $66c0: $77
	cp $77                                           ; $66c1: $fe $77
	ld b, e                                          ; $66c3: $43
	db $dd                                           ; $66c4: $dd
	ret nz                                           ; $66c5: $c0

	sub [hl]                                         ; $66c6: $96
	sbc a                                            ; $66c7: $9f
	ld d, b                                          ; $66c8: $50
	and b                                            ; $66c9: $a0
	ret nc                                           ; $66ca: $d0

	ldh [$d0], a                                     ; $66cb: $e0 $d0
	ldh [rIE], a                                     ; $66cd: $e0 $ff
	ld h, b                                          ; $66cf: $60
	ei                                               ; $66d0: $fb
	sbc l                                            ; $66d1: $9d
	add b                                            ; $66d2: $80
	ld b, b                                          ; $66d3: $40
	ld a, [$2843]                                    ; $66d4: $fa $43 $28
	sbc [hl]                                         ; $66d7: $9e
	ret nc                                           ; $66d8: $d0

	sbc $db                                          ; $66d9: $de $db
	sbc [hl]                                         ; $66db: $9e
	jp c, $dbde                                      ; $66dc: $da $de $db

	reti                                             ; $66df: $d9


	jr nc, jr_03b_6678                               ; $66e0: $30 $96

	rra                                              ; $66e2: $1f
	ldh a, [$3f]                                     ; $66e3: $f0 $3f
	ccf                                              ; $66e5: $3f
	sbc h                                            ; $66e6: $9c
	add hl, de                                       ; $66e7: $19
	ld a, a                                          ; $66e8: $7f
	rst $38                                          ; $66e9: $ff
	nop                                              ; $66ea: $00
	ld a, e                                          ; $66eb: $7b
	adc [hl]                                         ; $66ec: $8e
	ld a, a                                          ; $66ed: $7f
	ld a, [$fd7f]                                    ; $66ee: $fa $7f $fd
	sub d                                            ; $66f1: $92
	cp $0b                                           ; $66f2: $fe $0b
	push bc                                          ; $66f4: $c5
	ldh a, [c]                                       ; $66f5: $f2
	push hl                                          ; $66f6: $e5
	db $ec                                           ; $66f7: $ec
	db $fc                                           ; $66f8: $fc
	adc $00                                          ; $66f9: $ce $00
	db $f4                                           ; $66fb: $f4
	ld a, [$fefd]                                    ; $66fc: $fa $fd $fe
	ld [hl], a                                       ; $66ff: $77
	jr nz, @-$66                                     ; $6700: $20 $98

	xor d                                            ; $6702: $aa
	db $fd                                           ; $6703: $fd
	cp d                                             ; $6704: $ba
	ld e, l                                          ; $6705: $5d
	xor [hl]                                         ; $6706: $ae
	ld d, a                                          ; $6707: $57
	ld l, $fe                                        ; $6708: $2e $fe
	sub a                                            ; $670a: $97
	ld b, b                                          ; $670b: $40
	and b                                            ; $670c: $a0
	ld d, b                                          ; $670d: $50
	xor b                                            ; $670e: $a8
	ret nc                                           ; $670f: $d0

	ld b, $a6                                        ; $6710: $06 $a6
	ld d, [hl]                                       ; $6712: $56
	ld [hl], e                                       ; $6713: $73
	cp $d9                                           ; $6714: $fe $d9
	inc bc                                           ; $6716: $03
	db $db                                           ; $6717: $db
	add b                                            ; $6718: $80
	sbc l                                            ; $6719: $9d
	nop                                              ; $671a: $00
	ld a, b                                          ; $671b: $78

jr_03b_671c:
	ld sp, hl                                        ; $671c: $f9
	reti                                             ; $671d: $d9


	ld [bc], a                                       ; $671e: $02
	reti                                             ; $671f: $d9


	ld bc, $c098                                     ; $6720: $01 $98 $c0
	jp $8884                                         ; $6723: $c3 $84 $88


	adc b                                            ; $6726: $88
	sbc b                                            ; $6727: $98
	sub b                                            ; $6728: $90
	sbc $80                                          ; $6729: $de $80
	sbc [hl]                                         ; $672b: $9e
	add e                                            ; $672c: $83
	sbc $87                                          ; $672d: $de $87
	sub b                                            ; $672f: $90
	adc a                                            ; $6730: $8f
	sbc a                                            ; $6731: $9f
	ld bc, $7afc                                     ; $6732: $01 $fc $7a
	ld d, h                                          ; $6735: $54
	and b                                            ; $6736: $a0
	inc b                                            ; $6737: $04
	ld a, [bc]                                       ; $6738: $0a
	ld d, l                                          ; $6739: $55
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	add l                                            ; $673c: $85
	xor e                                            ; $673d: $ab
	ld e, a                                          ; $673e: $5f
	sbc $ff                                          ; $673f: $de $ff
	adc a                                            ; $6741: $8f
	add sp, -$58                                     ; $6742: $e8 $a8
	xor b                                            ; $6744: $a8
	jr z, @+$2a                                      ; $6745: $28 $28

	add hl, hl                                       ; $6747: $29
	dec hl                                           ; $6748: $2b
	ld a, [hl+]                                      ; $6749: $2a
	ld [hl-], a                                      ; $674a: $32
	dec [hl]                                         ; $674b: $35
	ld [hl], d                                       ; $674c: $72
	ld [hl], l                                       ; $674d: $75
	ld [hl], d                                       ; $674e: $72
	rst FarCall                                          ; $674f: $f7
	di                                               ; $6750: $f3
	rst FarCall                                          ; $6751: $f7
	db $fd                                           ; $6752: $fd
	sbc [hl]                                         ; $6753: $9e
	ret nz                                           ; $6754: $c0

	cp $8f                                           ; $6755: $fe $8f
	xor e                                            ; $6757: $ab
	ld d, l                                          ; $6758: $55
	xor e                                            ; $6759: $ab
	ld d, l                                          ; $675a: $55
	ld [$f2e5], a                                    ; $675b: $ea $e5 $f2
	push af                                          ; $675e: $f5
	rlca                                             ; $675f: $07
	inc bc                                           ; $6760: $03
	rlca                                             ; $6761: $07
	inc bc                                           ; $6762: $03
	rrca                                             ; $6763: $0f
	inc hl                                           ; $6764: $23
	ld hl, $dd41                                     ; $6765: $21 $41 $dd
	rst $38                                          ; $6768: $ff
	sbc c                                            ; $6769: $99
	di                                               ; $676a: $f3
	db $dd                                           ; $676b: $dd
	rst $38                                          ; $676c: $ff
	rst $38                                          ; $676d: $ff
	ldh [$e0], a                                     ; $676e: $e0 $e0
	db $db                                           ; $6770: $db
	rst SubAFromBC                                          ; $6771: $e7
	sbc [hl]                                         ; $6772: $9e
	ret c                                            ; $6773: $d8

	ld l, d                                          ; $6774: $6a
	cp a                                             ; $6775: $bf
	sbc l                                            ; $6776: $9d

Call_03b_6777:
	rst $38                                          ; $6777: $ff
	and a                                            ; $6778: $a7
	halt                                             ; $6779: $76
	rst $38                                          ; $677a: $ff
	sbc l                                            ; $677b: $9d
	add b                                            ; $677c: $80
	ld a, [$97f9]                                    ; $677d: $fa $f9 $97
	rst SubAFromDE                                          ; $6780: $df
	rst SubAFromHL                                          ; $6781: $d7
	dec hl                                           ; $6782: $2b
	ld l, $55                                        ; $6783: $2e $55
	ld l, $55                                        ; $6785: $2e $55
	sbc [hl]                                         ; $6787: $9e
	ld h, d                                          ; $6788: $62
	rst JumpTable                                          ; $6789: $c7
	sbc b                                            ; $678a: $98
	rst $38                                          ; $678b: $ff
	ld a, [hl]                                       ; $678c: $7e
	add b                                            ; $678d: $80
	nop                                              ; $678e: $00
	jp $c203                                         ; $678f: $c3 $03 $c2


	ld h, e                                          ; $6792: $63
	ldh a, [rPCM12]                                  ; $6793: $f0 $76
	push hl                                          ; $6795: $e5
	ld a, a                                          ; $6796: $7f
	xor $62                                          ; $6797: $ee $62
	add sp, $7d                                      ; $6799: $e8 $7d
	cp $df                                           ; $679b: $fe $df
	inc bc                                           ; $679d: $03
	rst SubAFromDE                                          ; $679e: $df
	ld bc, $299e                                     ; $679f: $01 $9e $29
	ld a, e                                          ; $67a2: $7b
	ld [hl], b                                       ; $67a3: $70
	ld l, d                                          ; $67a4: $6a
	rst GetHLinHL                                          ; $67a5: $cf
	ld a, a                                          ; $67a6: $7f
	or h                                             ; $67a7: $b4
	ld a, e                                          ; $67a8: $7b
	db $e4                                           ; $67a9: $e4
	ld l, [hl]                                       ; $67aa: $6e
	xor e                                            ; $67ab: $ab
	db $dd                                           ; $67ac: $dd
	ret nz                                           ; $67ad: $c0

	pop af                                           ; $67ae: $f1
	ld a, [hl]                                       ; $67af: $7e
	jp $dadb                                         ; $67b0: $c3 $db $da


	sbc [hl]                                         ; $67b3: $9e
	jr nc, @-$24                                     ; $67b4: $30 $da

	ld sp, $ffdf                                     ; $67b6: $31 $df $ff
	rst SubAFromDE                                          ; $67b9: $df
	db $fc                                           ; $67ba: $fc
	add b                                            ; $67bb: $80
	rst $38                                          ; $67bc: $ff
	xor $fe                                          ; $67bd: $ee $fe
	db $fc                                           ; $67bf: $fc
	ld a, [hl]                                       ; $67c0: $7e
	inc a                                            ; $67c1: $3c
	db $dd                                           ; $67c2: $dd
	db $fd                                           ; $67c3: $fd
	add $8a                                          ; $67c4: $c6 $8a
	add c                                            ; $67c6: $81
	ldh [c], a                                       ; $67c7: $e2
	rst $38                                          ; $67c8: $ff
	rst $38                                          ; $67c9: $ff
	rst SubAFromDE                                          ; $67ca: $df
	sbc a                                            ; $67cb: $9f
	sbc a                                            ; $67cc: $9f
	cp a                                             ; $67cd: $bf
	rst $38                                          ; $67ce: $ff
	rra                                              ; $67cf: $1f
	ld h, e                                          ; $67d0: $63
	ld e, a                                          ; $67d1: $5f
	rst AddAOntoHL                                          ; $67d2: $ef
	cp $e0                                           ; $67d3: $fe $e0
	ld b, b                                          ; $67d5: $40
	ld bc, $1786                                     ; $67d6: $01 $86 $17
	xor e                                            ; $67d9: $ab
	push bc                                          ; $67da: $c5
	sub d                                            ; $67db: $92
	sbc e                                            ; $67dc: $9b
	dec d                                            ; $67dd: $15
	ld l, e                                          ; $67de: $6b
	sub l                                            ; $67df: $95
	xor a                                            ; $67e0: $af
	add sp, -$0c                                     ; $67e1: $e8 $f4
	ld a, [$eaf4]                                    ; $67e3: $fa $f4 $ea
	sub h                                            ; $67e6: $94
	ld l, d                                          ; $67e7: $6a
	ld d, b                                          ; $67e8: $50
	ld a, d                                          ; $67e9: $7a
	call nz, $a79a                                   ; $67ea: $c4 $9a $a7
	rst SubAFromHL                                          ; $67ed: $d7
	and a                                            ; $67ee: $a7
	sub $e6                                          ; $67ef: $d6 $e6
	reti                                             ; $67f1: $d9


	inc bc                                           ; $67f2: $03
	adc a                                            ; $67f3: $8f
	ld hl, sp-$04                                    ; $67f4: $f8 $fc
	db $fc                                           ; $67f6: $fc
	xor [hl]                                         ; $67f7: $ae
	or [hl]                                          ; $67f8: $b6
	ld b, $ac                                        ; $67f9: $06 $ac
	ld a, l                                          ; $67fb: $7d
	db $fc                                           ; $67fc: $fc
	cp $fe                                           ; $67fd: $fe $fe
	ld e, $4e                                        ; $67ff: $1e $4e
	adc [hl]                                         ; $6801: $8e
	sbc h                                            ; $6802: $9c
	ld a, [hl]                                       ; $6803: $7e
	ld h, c                                          ; $6804: $61
	add l                                            ; $6805: $85
	jp c, $9c01                                      ; $6806: $da $01 $9c

	add b                                            ; $6809: $80
	add l                                            ; $680a: $85
	add d                                            ; $680b: $82
	call c, Call_03b_7b80                            ; $680c: $dc $80 $7b
	xor h                                            ; $680f: $ac
	ld a, l                                          ; $6810: $7d
	call nz, $9fdf                                   ; $6811: $c4 $df $9f
	sbc [hl]                                         ; $6814: $9e
	rst SubAFromDE                                          ; $6815: $df
	ld a, c                                          ; $6816: $79
	ei                                               ; $6817: $fb
	sbc d                                            ; $6818: $9a
	inc b                                            ; $6819: $04
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	inc bc                                           ; $681c: $03
	ccf                                              ; $681d: $3f
	db $db                                           ; $681e: $db
	rst $38                                          ; $681f: $ff
	sbc d                                            ; $6820: $9a
	db $fc                                           ; $6821: $fc
	ret nz                                           ; $6822: $c0

	ld l, $2a                                        ; $6823: $2e $2a
	xor d                                            ; $6825: $aa
	sbc $2e                                          ; $6826: $de $2e
	sbc h                                            ; $6828: $9c
	xor $ff                                          ; $6829: $ee $ff
	di                                               ; $682b: $f3
	call c, $9ef7                                    ; $682c: $dc $f7 $9e
	scf                                              ; $682f: $37
	ld hl, sp+$7e                                    ; $6830: $f8 $7e
	add $98                                          ; $6832: $c6 $98
	ldh a, [c]                                       ; $6834: $f2
	ld sp, hl                                        ; $6835: $f9
	ld a, [$faf9]                                    ; $6836: $fa $f9 $fa
	nop                                              ; $6839: $00
	ld b, c                                          ; $683a: $41
	sbc $40                                          ; $683b: $de $40
	sbc $60                                          ; $683d: $de $60
	ld l, e                                          ; $683f: $6b
	ret nc                                           ; $6840: $d0

	ld a, [hl]                                       ; $6841: $7e
	add hl, de                                       ; $6842: $19
	sbc $e0                                          ; $6843: $de $e0
	sbc [hl]                                         ; $6845: $9e
	db $e3                                           ; $6846: $e3
	sbc $67                                          ; $6847: $de $67
	sbc d                                            ; $6849: $9a
	rrca                                             ; $684a: $0f
	ret c                                            ; $684b: $d8

	ret c                                            ; $684c: $d8

jr_03b_684d:
	rst SubAFromDE                                          ; $684d: $df
	call c, $dfde                                    ; $684e: $dc $de $df
	sbc [hl]                                         ; $6851: $9e
	rlca                                             ; $6852: $07
	ld a, [de]                                       ; $6853: $1a
	nop                                              ; $6854: $00
	ret c                                            ; $6855: $d8

	ld d, l                                          ; $6856: $55
	sbc [hl]                                         ; $6857: $9e
	ld d, h                                          ; $6858: $54
	sbc $55                                          ; $6859: $de $55
	adc [hl]                                         ; $685b: $8e
	ld d, e                                          ; $685c: $53
	inc sp                                           ; $685d: $33
	inc sp                                           ; $685e: $33
	ld d, l                                          ; $685f: $55
	inc sp                                           ; $6860: $33
	ld d, l                                          ; $6861: $55
	ld d, h                                          ; $6862: $54
	inc sp                                           ; $6863: $33
	inc sp                                           ; $6864: $33
	dec [hl]                                         ; $6865: $35
	ld d, e                                          ; $6866: $53
	ld h, [hl]                                       ; $6867: $66
	inc sp                                           ; $6868: $33
	ld d, l                                          ; $6869: $55
	ld d, e                                          ; $686a: $53
	dec [hl]                                         ; $686b: $35
	ld d, h                                          ; $686c: $54
	jp $9785                                         ; $686d: $c3 $85 $97


	push bc                                          ; $6870: $c5
	ld [$d5f5], a                                    ; $6871: $ea $f5 $d5
	jp hl                                            ; $6874: $e9


	ld [$eaf5], a                                    ; $6875: $ea $f5 $ea
	ld sp, hl                                        ; $6878: $f9
	sub a                                            ; $6879: $97
	dec c                                            ; $687a: $0d
	xor d                                            ; $687b: $aa
	ld d, d                                          ; $687c: $52
	ld l, d                                          ; $687d: $6a
	ld d, l                                          ; $687e: $55
	or l                                             ; $687f: $b5
	ld c, d                                          ; $6880: $4a
	or l                                             ; $6881: $b5
	ld sp, hl                                        ; $6882: $f9
	sub a                                            ; $6883: $97
	ld d, l                                          ; $6884: $55
	ld [$bd57], a                                    ; $6885: $ea $57 $bd
	ld e, e                                          ; $6888: $5b
	ld [hl], l                                       ; $6889: $75
	xor d                                            ; $688a: $aa
	ld [hl], l                                       ; $688b: $75
	ld sp, hl                                        ; $688c: $f9
	sub a                                            ; $688d: $97
	push de                                          ; $688e: $d5
	xor d                                            ; $688f: $aa
	push de                                          ; $6890: $d5
	ld d, l                                          ; $6891: $55
	xor c                                            ; $6892: $a9
	ld e, d                                          ; $6893: $5a
	xor [hl]                                         ; $6894: $ae
	ld b, b                                          ; $6895: $40
	ld sp, hl                                        ; $6896: $f9
	sub a                                            ; $6897: $97
	xor e                                            ; $6898: $ab
	xor a                                            ; $6899: $af
	ld d, e                                          ; $689a: $53
	xor $53                                          ; $689b: $ee $53
	xor a                                            ; $689d: $af
	sub a                                            ; $689e: $97
	rrca                                             ; $689f: $0f
	cp $9e                                           ; $68a0: $fe $9e
	ld bc, $ddfd                                     ; $68a2: $01 $fd $dd
	add b                                            ; $68a5: $80
	ld [hl], a                                       ; $68a6: $77
	ei                                               ; $68a7: $fb
	reti                                             ; $68a8: $d9


	ret nz                                           ; $68a9: $c0

	pop af                                           ; $68aa: $f1
	sbc $da                                          ; $68ab: $de $da
	sbc $d8                                          ; $68ad: $de $d8
	rst SubAFromDE                                          ; $68af: $df
	db $db                                           ; $68b0: $db
	sbc $31                                          ; $68b1: $de $31
	sbc $33                                          ; $68b3: $de $33
	rst SubAFromDE                                          ; $68b5: $df
	jr nc, jr_03b_684d                               ; $68b6: $30 $95

	dec a                                            ; $68b8: $3d
	inc a                                            ; $68b9: $3c
	dec a                                            ; $68ba: $3d
	dec a                                            ; $68bb: $3d
	dec l                                            ; $68bc: $2d
	add hl, hl                                       ; $68bd: $29
	rst $38                                          ; $68be: $ff
	rst $38                                          ; $68bf: $ff
	xor $ff                                          ; $68c0: $ee $ff
	db $dd                                           ; $68c2: $dd
	cp $7b                                           ; $68c3: $fe $7b
	ret nz                                           ; $68c5: $c0

	add e                                            ; $68c6: $83
	ld bc, $0080                                     ; $68c7: $01 $80 $00
	nop                                              ; $68ca: $00
	add c                                            ; $68cb: $81
	rst $38                                          ; $68cc: $ff
	rst $38                                          ; $68cd: $ff
	rra                                              ; $68ce: $1f
	cp $7f                                           ; $68cf: $fe $7f
	nop                                              ; $68d1: $00
	ld a, h                                          ; $68d2: $7c
	ld a, [hl]                                       ; $68d3: $7e
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	ld [$caf5], a                                    ; $68d6: $ea $f5 $ca
	dec d                                            ; $68d9: $15
	dec bc                                           ; $68da: $0b
	push af                                          ; $68db: $f5
	db $eb                                           ; $68dc: $eb
	rst FarCall                                          ; $68dd: $f7
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	jr nz, jr_03b_68e2                               ; $68e0: $20 $00

jr_03b_68e2:
	ldh [$fe], a                                     ; $68e2: $e0 $fe
	sub a                                            ; $68e4: $97
	or $66                                           ; $68e5: $f6 $66
	or $c6                                           ; $68e7: $f6 $c6
	or [hl]                                          ; $68e9: $b6
	add $b6                                          ; $68ea: $c6 $b6
	ld b, [hl]                                       ; $68ec: $46
	sbc $03                                          ; $68ed: $de $03
	adc l                                            ; $68ef: $8d
	inc hl                                           ; $68f0: $23
	ld b, e                                          ; $68f1: $43
	inc hl                                           ; $68f2: $23
	ld b, e                                          ; $68f3: $43
	and e                                            ; $68f4: $a3
	ld a, a                                          ; $68f5: $7f
	ld h, l                                          ; $68f6: $65
	ld e, e                                          ; $68f7: $5b
	rla                                              ; $68f8: $17
	rrca                                             ; $68f9: $0f
	ld a, $30                                        ; $68fa: $3e $30
	jr nc, jr_03b_693d                               ; $68fc: $30 $3f

	ld a, e                                          ; $68fe: $7b
	daa                                              ; $68ff: $27
	ld l, [hl]                                       ; $6900: $6e
	ld a, a                                          ; $6901: $7f
	sbc $61                                          ; $6902: $de $61
	ld a, a                                          ; $6904: $7f
	cp a                                             ; $6905: $bf
	adc h                                            ; $6906: $8c
	ld b, b                                          ; $6907: $40
	add b                                            ; $6908: $80
	ldh a, [$f0]                                     ; $6909: $f0 $f0
	ld hl, sp+$58                                    ; $690b: $f8 $58
	ld bc, $c181                                     ; $690d: $01 $81 $c1
	ld h, b                                          ; $6910: $60
	jr nz, @-$6e                                     ; $6911: $20 $90

	sub b                                            ; $6913: $90
	or b                                             ; $6914: $b0
	add b                                            ; $6915: $80
	rst $38                                          ; $6916: $ff
	rst $38                                          ; $6917: $ff
	nop                                              ; $6918: $00
	rst $38                                          ; $6919: $ff
	cp $dd                                           ; $691a: $fe $dd
	rst $38                                          ; $691c: $ff
	db $fd                                           ; $691d: $fd
	sbc d                                            ; $691e: $9a
	ld [bc], a                                       ; $691f: $02
	cp $fa                                           ; $6920: $fe $fa
	ld [bc], a                                       ; $6922: $02
	ld hl, sp-$22                                    ; $6923: $f8 $de
	ld [$fd9e], sp                                   ; $6925: $08 $9e $fd
	sbc $ff                                          ; $6928: $de $ff
	db $dd                                           ; $692a: $dd
	rlca                                             ; $692b: $07
	ld a, e                                          ; $692c: $7b
	ld c, c                                          ; $692d: $49
	sbc d                                            ; $692e: $9a
	ld b, $09                                        ; $692f: $06 $09
	inc de                                           ; $6931: $13
	ld b, $2d                                        ; $6932: $06 $2d
	ld [hl], a                                       ; $6934: $77
	ld b, b                                          ; $6935: $40
	adc [hl]                                         ; $6936: $8e
	rlca                                             ; $6937: $07
	rrca                                             ; $6938: $0f
	rra                                              ; $6939: $1f
	rra                                              ; $693a: $1f
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00

jr_03b_693d:
	sub l                                            ; $693d: $95
	jr nz, jr_03b_699e                               ; $693e: $20 $5e

	or c                                             ; $6940: $b1
	ld hl, sp+$50                                    ; $6941: $f8 $50
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	ld [$bf9f], sp                                   ; $6945: $08 $9f $bf
	ld [hl], a                                       ; $6948: $77
	call z, $0e98                                    ; $6949: $cc $98 $0e
	ld h, $d0                                        ; $694c: $26 $d0
	adc b                                            ; $694e: $88
	ld h, e                                          ; $694f: $63
	sub b                                            ; $6950: $90
	dec hl                                           ; $6951: $2b
	cp $91                                           ; $6952: $fe $91
	jr nz, jr_03b_69c9                               ; $6954: $20 $73

	rst $38                                          ; $6956: $ff
	ei                                               ; $6957: $fb
	ldh a, [rP1]                                     ; $6958: $f0 $00
	nop                                              ; $695a: $00
	ld l, a                                          ; $695b: $6f
	ld l, a                                          ; $695c: $6f
	jp $e020                                         ; $695d: $c3 $20 $e0


	rst SubAFromBC                                          ; $6960: $e7
	rrca                                             ; $6961: $0f
	ld a, e                                          ; $6962: $7b
	ld c, $94                                        ; $6963: $0e $94
	rrca                                             ; $6965: $0f
	adc a                                            ; $6966: $8f
	rrca                                             ; $6967: $0f
	ld a, a                                          ; $6968: $7f
	push af                                          ; $6969: $f5
	ld hl, sp-$1b                                    ; $696a: $f8 $e5
	ld a, [$f8f9]                                    ; $696c: $fa $f9 $f8
	ldh [$7b], a                                     ; $696f: $e0 $7b
	ld h, l                                          ; $6971: $65
	sbc [hl]                                         ; $6972: $9e
	ld [bc], a                                       ; $6973: $02
	ld [hl], e                                       ; $6974: $73
	nop                                              ; $6975: $00
	sub a                                            ; $6976: $97
	ld c, d                                          ; $6977: $4a
	dec [hl]                                         ; $6978: $35
	ld b, $42                                        ; $6979: $06 $42
	ret nz                                           ; $697b: $c0

	or h                                             ; $697c: $b4
	ld a, h                                          ; $697d: $7c
	dec [hl]                                         ; $697e: $35
	cp $92                                           ; $697f: $fe $92
	add h                                            ; $6981: $84
	ld h, [hl]                                       ; $6982: $66
	ld h, [hl]                                       ; $6983: $66
	scf                                              ; $6984: $37
	rra                                              ; $6985: $1f
	xor d                                            ; $6986: $aa
	ld h, l                                          ; $6987: $65
	ld a, [hl-]                                      ; $6988: $3a
	ld d, l                                          ; $6989: $55
	sbc d                                            ; $698a: $9a
	ld b, l                                          ; $698b: $45
	ld a, [$77ef]                                    ; $698c: $fa $ef $77
	ret nz                                           ; $698f: $c0

	sub l                                            ; $6990: $95
	ld h, b                                          ; $6991: $60
	ldh [$e0], a                                     ; $6992: $e0 $e0
	ldh a, [$a1]                                     ; $6994: $f0 $a1
	add b                                            ; $6996: $80
	and c                                            ; $6997: $a1
	ld c, e                                          ; $6998: $4b
	ld d, l                                          ; $6999: $55
	xor e                                            ; $699a: $ab
	ld e, [hl]                                       ; $699b: $5e
	and b                                            ; $699c: $a0
	rst SubAFromDE                                          ; $699d: $df

jr_03b_699e:
	push de                                          ; $699e: $d5
	sbc c                                            ; $699f: $99
	ld c, l                                          ; $69a0: $4d
	or l                                             ; $69a1: $b5
	ld c, l                                          ; $69a2: $4d
	push af                                          ; $69a3: $f5
	or l                                             ; $69a4: $b5
	xor l                                            ; $69a5: $ad
	ld sp, hl                                        ; $69a6: $f9
	call c, Call_03b_7b80                            ; $69a7: $dc $80 $7b
	ld a, [$c0d9]                                    ; $69aa: $fa $d9 $c0
	add b                                            ; $69ad: $80
	dec c                                            ; $69ae: $0d
	ccf                                              ; $69af: $3f
	ld a, [de]                                       ; $69b0: $1a
	ld a, [de]                                       ; $69b1: $1a
	ld [hl], h                                       ; $69b2: $74
	rlca                                             ; $69b3: $07
	ld b, $10                                        ; $69b4: $06 $10
	ld b, $06                                        ; $69b6: $06 $06
	rra                                              ; $69b8: $1f
	ld de, $0238                                     ; $69b9: $11 $38 $02
	ld bc, $4c0f                                     ; $69bc: $01 $0f $4c
	ld e, a                                          ; $69bf: $5f
	cp b                                             ; $69c0: $b8
	dec a                                            ; $69c1: $3d
	ld h, $84                                        ; $69c2: $26 $84
	dec bc                                           ; $69c4: $0b
	inc b                                            ; $69c5: $04
	jr nz, @+$22                                     ; $69c6: $20 $20

	ld [hl], a                                       ; $69c8: $77

jr_03b_69c9:
	or d                                             ; $69c9: $b2
	sbc c                                            ; $69ca: $99
	ld a, c                                          ; $69cb: $79
	call nz, $839e                                   ; $69cc: $c4 $9e $83
	ld [hl], e                                       ; $69cf: $73
	add hl, hl                                       ; $69d0: $29
	sbc l                                            ; $69d1: $9d
	jr nz, jr_03b_69e4                               ; $69d2: $20 $10

	ld a, d                                          ; $69d4: $7a
	sbc b                                            ; $69d5: $98
	ld a, e                                          ; $69d6: $7b
	rst FarCall                                          ; $69d7: $f7
	sbc h                                            ; $69d8: $9c
	ldh a, [$30]                                     ; $69d9: $f0 $30
	db $10                                           ; $69db: $10
	ld l, e                                          ; $69dc: $6b
	add hl, de                                       ; $69dd: $19
	ld [hl], e                                       ; $69de: $73
	ld c, $fd                                        ; $69df: $0e $fd
	sbc [hl]                                         ; $69e1: $9e
	cp $4b                                           ; $69e2: $fe $4b

jr_03b_69e4:
	ldh a, [$9e]                                     ; $69e4: $f0 $9e
	jp nz, $9b7a                                     ; $69e6: $c2 $7a $9b

	sub a                                            ; $69e9: $97
	ld bc, $0703                                     ; $69ea: $01 $03 $07
	ld b, $03                                        ; $69ed: $06 $03
	inc bc                                           ; $69ef: $03
	rst $38                                          ; $69f0: $ff
	rst $38                                          ; $69f1: $ff
	ld a, e                                          ; $69f2: $7b
	ld hl, sp-$7f                                    ; $69f3: $f8 $81
	dec b                                            ; $69f5: $05
	ld sp, $7622                                     ; $69f6: $31 $22 $76
	cp a                                             ; $69f9: $bf
	ld e, c                                          ; $69fa: $59
	cp c                                             ; $69fb: $b9
	ld hl, sp+$7f                                    ; $69fc: $f8 $7f
	ld h, e                                          ; $69fe: $63
	ld [hl], a                                       ; $69ff: $77
	ld a, a                                          ; $6a00: $7f
	rst SubAFromDE                                          ; $6a01: $df
	cp a                                             ; $6a02: $bf
	ld [hl], b                                       ; $6a03: $70
	rst $38                                          ; $6a04: $ff
	rst $38                                          ; $6a05: $ff
	ret c                                            ; $6a06: $d8

	xor b                                            ; $6a07: $a8
	ret z                                            ; $6a08: $c8

	ld c, b                                          ; $6a09: $48
	add sp, -$10                                     ; $6a0a: $e8 $f0
	ld b, b                                          ; $6a0c: $40
	ld b, b                                          ; $6a0d: $40
	jr nz, jr_03b_6a70                               ; $6a0e: $20 $60

	ld h, b                                          ; $6a10: $60
	ldh [$c0], a                                     ; $6a11: $e0 $c0
	ld a, e                                          ; $6a13: $7b
	ld a, d                                          ; $6a14: $7a
	pop af                                           ; $6a15: $f1
	rst SubAFromDE                                          ; $6a16: $df
	ld [$0a9e], sp                                   ; $6a17: $08 $9e $0a
	ld a, e                                          ; $6a1a: $7b
	db $fd                                           ; $6a1b: $fd
	rst SubAFromDE                                          ; $6a1c: $df
	ld a, [bc]                                       ; $6a1d: $0a
	reti                                             ; $6a1e: $d9


	rlca                                             ; $6a1f: $07
	add a                                            ; $6a20: $87
	ld a, [bc]                                       ; $6a21: $0a
	ld e, b                                          ; $6a22: $58
	ld d, d                                          ; $6a23: $52
	ld b, c                                          ; $6a24: $41
	ld d, c                                          ; $6a25: $51
	rla                                              ; $6a26: $17
	dec b                                            ; $6a27: $05
	rlca                                             ; $6a28: $07
	ccf                                              ; $6a29: $3f
	ccf                                              ; $6a2a: $3f
	dec a                                            ; $6a2b: $3d
	ld a, $3e                                        ; $6a2c: $3e $3e
	ld a, b                                          ; $6a2e: $78
	ld a, d                                          ; $6a2f: $7a
	ld a, b                                          ; $6a30: $78
	nop                                              ; $6a31: $00
	ld bc, $1901                                     ; $6a32: $01 $01 $19
	add hl, de                                       ; $6a35: $19
	sbc b                                            ; $6a36: $98
	ret c                                            ; $6a37: $d8

	ldh a, [$7a]                                     ; $6a38: $f0 $7a
	ld sp, $e6df                                     ; $6a3a: $31 $df $e6
	adc h                                            ; $6a3d: $8c
	ld h, a                                          ; $6a3e: $67
	daa                                              ; $6a3f: $27
	rrca                                             ; $6a40: $0f
	dec c                                            ; $6a41: $0d
	ld a, [bc]                                       ; $6a42: $0a
	ld [bc], a                                       ; $6a43: $02
	sub a                                            ; $6a44: $97
	rst FarCall                                          ; $6a45: $f7
	rst $38                                          ; $6a46: $ff
	cp $ff                                           ; $6a47: $fe $ff
	di                                               ; $6a49: $f3
	rst FarCall                                          ; $6a4a: $f7
	rst $38                                          ; $6a4b: $ff
	ld l, a                                          ; $6a4c: $6f
	rrca                                             ; $6a4d: $0f
	rlca                                             ; $6a4e: $07
	rlca                                             ; $6a4f: $07
	inc bc                                           ; $6a50: $03
	ld a, d                                          ; $6a51: $7a
	ld [hl+], a                                      ; $6a52: $22
	sub l                                            ; $6a53: $95
	and b                                            ; $6a54: $a0
	ld b, b                                          ; $6a55: $40
	ld d, b                                          ; $6a56: $50
	ret nc                                           ; $6a57: $d0

	ld sp, hl                                        ; $6a58: $f9
	rst GetHLinHL                                          ; $6a59: $cf
	call z, $f4e0                                    ; $6a5a: $cc $e0 $f4
	or $de                                           ; $6a5d: $f6 $de
	rst $38                                          ; $6a5f: $ff
	ld a, a                                          ; $6a60: $7f
	add sp, -$6a                                     ; $6a61: $e8 $96
	db $e4                                           ; $6a63: $e4
	ldh a, [$fc]                                     ; $6a64: $f0 $fc
	rst FarCall                                          ; $6a66: $f7
	call $0cf3                                       ; $6a67: $cd $f3 $0c
	rrca                                             ; $6a6a: $0f
	inc bc                                           ; $6a6b: $03
	cp $94                                           ; $6a6c: $fe $94
	inc bc                                           ; $6a6e: $03
	inc c                                            ; $6a6f: $0c

jr_03b_6a70:
	rst $38                                          ; $6a70: $ff
	rst GetHLinHL                                          ; $6a71: $cf
	rst $38                                          ; $6a72: $ff
	ld a, a                                          ; $6a73: $7f
	cp a                                             ; $6a74: $bf
	cp a                                             ; $6a75: $bf
	rst $38                                          ; $6a76: $ff
	sbc a                                            ; $6a77: $9f
	rra                                              ; $6a78: $1f
	sbc $ff                                          ; $6a79: $de $ff
	rst SubAFromDE                                          ; $6a7b: $df
	ld a, a                                          ; $6a7c: $7f
	ld a, a                                          ; $6a7d: $7f
	db $fd                                           ; $6a7e: $fd
	sub [hl]                                         ; $6a7f: $96
	ldh a, [c]                                       ; $6a80: $f2
	pop bc                                           ; $6a81: $c1
	adc $e0                                          ; $6a82: $ce $e0
	db $fd                                           ; $6a84: $fd
	rst $38                                          ; $6a85: $ff
	adc $20                                          ; $6a86: $ce $20
	db $fc                                           ; $6a88: $fc
	ld a, e                                          ; $6a89: $7b
	scf                                              ; $6a8a: $37
	ld a, a                                          ; $6a8b: $7f
	db $fd                                           ; $6a8c: $fd
	sub l                                            ; $6a8d: $95
	pop af                                           ; $6a8e: $f1
	ret nz                                           ; $6a8f: $c0

	ld [bc], a                                       ; $6a90: $02
	ld d, c                                          ; $6a91: $51

jr_03b_6a92:
	ld a, [hl+]                                      ; $6a92: $2a
	ld d, c                                          ; $6a93: $51
	inc l                                            ; $6a94: $2c
	cp d                                             ; $6a95: $ba
	call nc, Call_03b_663a                           ; $6a96: $d4 $3a $66
	jp nc, $ed97                                     ; $6a99: $d2 $97 $ed

	ld d, l                                          ; $6a9c: $55
	db $ed                                           ; $6a9d: $ed
	ld d, l                                          ; $6a9e: $55
	add l                                            ; $6a9f: $85
	dec l                                            ; $6aa0: $2d
	dec d                                            ; $6aa1: $15
	sub l                                            ; $6aa2: $95
	ld d, d                                          ; $6aa3: $52
	ret nz                                           ; $6aa4: $c0

	ld e, c                                          ; $6aa5: $59
	add b                                            ; $6aa6: $80
	sub h                                            ; $6aa7: $94
	ld a, [hl]                                       ; $6aa8: $7e
	ld a, d                                          ; $6aa9: $7a
	ld l, h                                          ; $6aaa: $6c
	dec de                                           ; $6aab: $1b
	ld hl, $0723                                     ; $6aac: $21 $23 $07
	rrca                                             ; $6aaf: $0f
	rlca                                             ; $6ab0: $07
	dec [hl]                                         ; $6ab1: $35
	ld h, e                                          ; $6ab2: $63
	sbc $07                                          ; $6ab3: $de $07
	add d                                            ; $6ab5: $82
	rrca                                             ; $6ab6: $0f
	inc e                                            ; $6ab7: $1c
	ld e, h                                          ; $6ab8: $5c
	cp [hl]                                          ; $6ab9: $be
	or [hl]                                          ; $6aba: $b6
	ld a, [hl]                                       ; $6abb: $7e
	dec e                                            ; $6abc: $1d
	ld e, e                                          ; $6abd: $5b
	ld [$838f], sp                                   ; $6abe: $08 $8f $83
	add $e6                                          ; $6ac1: $c6 $e6
	or e                                             ; $6ac3: $b3
	or e                                             ; $6ac4: $b3
	sbc a                                            ; $6ac5: $9f
	rst $38                                          ; $6ac6: $ff
	ld a, a                                          ; $6ac7: $7f
	jr nc, jr_03b_6a92                               ; $6ac8: $30 $c8

	or h                                             ; $6aca: $b4
	inc b                                            ; $6acb: $04
	add b                                            ; $6acc: $80
	ld b, b                                          ; $6acd: $40
	and b                                            ; $6ace: $a0
	ldh a, [$c0]                                     ; $6acf: $f0 $c0
	jr nc, jr_03b_6adb                               ; $6ad1: $30 $08

	ld a, e                                          ; $6ad3: $7b
	jp $103f                                         ; $6ad4: $c3 $3f $10


	pop af                                           ; $6ad7: $f1
	sbc [hl]                                         ; $6ad8: $9e
	ld b, $fa                                        ; $6ad9: $06 $fa

jr_03b_6adb:
	ld a, c                                          ; $6adb: $79
	rst JumpTable                                          ; $6adc: $c7
	db $fc                                           ; $6add: $fc
	adc l                                            ; $6ade: $8d
	ldh a, [$38]                                     ; $6adf: $f0 $38
	inc l                                            ; $6ae1: $2c
	add hl, de                                       ; $6ae2: $19
	ld e, c                                          ; $6ae3: $59
	dec sp                                           ; $6ae4: $3b
	inc sp                                           ; $6ae5: $33
	ld [hl], a                                       ; $6ae6: $77
	ccf                                              ; $6ae7: $3f
	scf                                              ; $6ae8: $37
	inc sp                                           ; $6ae9: $33
	daa                                              ; $6aea: $27
	daa                                              ; $6aeb: $27
	ld b, a                                          ; $6aec: $47
	ld c, a                                          ; $6aed: $4f
	ld c, $c0                                        ; $6aee: $0e $c0
	ret nz                                           ; $6af0: $c0

	ld h, a                                          ; $6af1: $67
	add c                                            ; $6af2: $81
	ld l, a                                          ; $6af3: $6f
	ld hl, sp+$42                                    ; $6af4: $f8 $42
	ret nz                                           ; $6af6: $c0

	ei                                               ; $6af7: $fb
	sbc [hl]                                         ; $6af8: $9e

Call_03b_6af9:
	inc b                                            ; $6af9: $04
	jp c, $8007                                      ; $6afa: $da $07 $80

	inc bc                                           ; $6afd: $03
	adc a                                            ; $6afe: $8f
	add a                                            ; $6aff: $87
	rst JumpTable                                          ; $6b00: $c7
	ld b, b                                          ; $6b01: $40
	add b                                            ; $6b02: $80
	add d                                            ; $6b03: $82
	add a                                            ; $6b04: $87
	and e                                            ; $6b05: $a3
	ld [hl], b                                       ; $6b06: $70
	ld a, b                                          ; $6b07: $78
	jr c, @+$41                                      ; $6b08: $38 $3f

	ccf                                              ; $6b0a: $3f
	inc a                                            ; $6b0b: $3c
	jr c, jr_03b_6b2a                                ; $6b0c: $38 $1c

	ld hl, sp-$04                                    ; $6b0e: $f8 $fc
	ld hl, sp-$1d                                    ; $6b10: $f8 $e3
	and $63                                          ; $6b12: $e6 $63
	ld hl, $0725                                     ; $6b14: $21 $25 $07
	inc bc                                           ; $6b17: $03
	rlca                                             ; $6b18: $07
	inc b                                            ; $6b19: $04
	nop                                              ; $6b1a: $00
	inc b                                            ; $6b1b: $04
	sub h                                            ; $6b1c: $94
	ld c, $9e                                        ; $6b1d: $0e $9e
	rst SubAFromDE                                          ; $6b1f: $df
	rst JumpTable                                          ; $6b20: $c7
	adc $5e                                          ; $6b21: $ce $5e
	call z, $14f0                                    ; $6b23: $cc $f0 $14
	add hl, hl                                       ; $6b26: $29
	ld h, e                                          ; $6b27: $63
	ld a, d                                          ; $6b28: $7a
	di                                               ; $6b29: $f3

jr_03b_6b2a:
	add b                                            ; $6b2a: $80
	ccf                                              ; $6b2b: $3f
	rrca                                             ; $6b2c: $0f
	set 4, d                                         ; $6b2d: $cb $e2
	ld sp, hl                                        ; $6b2f: $f9
	db $fd                                           ; $6b30: $fd
	adc l                                            ; $6b31: $8d
	rst GetHLinHL                                          ; $6b32: $cf
	rst JumpTable                                          ; $6b33: $c7
	ld c, e                                          ; $6b34: $4b
	dec l                                            ; $6b35: $2d
	ld b, b                                          ; $6b36: $40
	cp a                                             ; $6b37: $bf
	cpl                                              ; $6b38: $2f
	and a                                            ; $6b39: $a7
	add a                                            ; $6b3a: $87
	adc a                                            ; $6b3b: $8f

Jump_03b_6b3c:
	add a                                            ; $6b3c: $87
	jp $f6e0                                         ; $6b3d: $c3 $e0 $f6


	ret                                              ; $6b40: $c9


	pop af                                           ; $6b41: $f1
	db $f4                                           ; $6b42: $f4
	call z, $f5ce                                    ; $6b43: $cc $ce $f5
	rst FarCall                                          ; $6b46: $f7
	ld bc, $0603                                     ; $6b47: $01 $03 $06
	ld a, d                                          ; $6b4a: $7a
	add l                                            ; $6b4b: $85
	rst SubAFromDE                                          ; $6b4c: $df
	inc bc                                           ; $6b4d: $03
	sbc b                                            ; $6b4e: $98
	ld l, a                                          ; $6b4f: $6f
	cp a                                             ; $6b50: $bf
	rst $38                                          ; $6b51: $ff
	ld a, [hl]                                       ; $6b52: $7e
	pop af                                           ; $6b53: $f1
	ldh [$f0], a                                     ; $6b54: $e0 $f0
	halt                                             ; $6b56: $76
	jp nz, $d07a                                     ; $6b57: $c2 $7a $d0

	rst SubAFromDE                                          ; $6b5a: $df
	rst $38                                          ; $6b5b: $ff
	sub d                                            ; $6b5c: $92
	call z, $fbfc                                    ; $6b5d: $cc $fc $fb
	rst $38                                          ; $6b60: $ff
	ld a, h                                          ; $6b61: $7c
	ld a, a                                          ; $6b62: $7f
	cp $ff                                           ; $6b63: $fe $ff
	ldh a, [$f0]                                     ; $6b65: $f0 $f0
	db $fc                                           ; $6b67: $fc
	db $fc                                           ; $6b68: $fc
	cp $7b                                           ; $6b69: $fe $7b
	rst AddAOntoHL                                          ; $6b6b: $ef
	sub a                                            ; $6b6c: $97
	call nc, $b004                                   ; $6b6d: $d4 $04 $b0
	push de                                          ; $6b70: $d5
	adc e                                            ; $6b71: $8b
	ld d, [hl]                                       ; $6b72: $56
	or a                                             ; $6b73: $b7
	ld c, d                                          ; $6b74: $4a
	ld h, [hl]                                       ; $6b75: $66
	pop de                                           ; $6b76: $d1
	sub a                                            ; $6b77: $97
	dec h                                            ; $6b78: $25
	xor l                                            ; $6b79: $ad

jr_03b_6b7a:
	cp l                                             ; $6b7a: $bd
	ld l, l                                          ; $6b7b: $6d
	cp l                                             ; $6b7c: $bd
	ld a, l                                          ; $6b7d: $7d
	and l                                            ; $6b7e: $a5
	ld h, l                                          ; $6b7f: $65
	ld hl, sp-$22                                    ; $6b80: $f8 $de
	add b                                            ; $6b82: $80

Jump_03b_6b83:
	sbc e                                            ; $6b83: $9b
	or e                                             ; $6b84: $b3
	xor a                                            ; $6b85: $af
	sbc a                                            ; $6b86: $9f
	and a                                            ; $6b87: $a7
	sbc $c0                                          ; $6b88: $de $c0
	add b                                            ; $6b8a: $80
	rst $38                                          ; $6b8b: $ff
	db $fc                                           ; $6b8c: $fc
	ldh a, [$e0]                                     ; $6b8d: $f0 $e0
	ldh a, [$2c]                                     ; $6b8f: $f0 $2c
	xor e                                            ; $6b91: $ab
	inc c                                            ; $6b92: $0c
	ld h, [hl]                                       ; $6b93: $66
	di                                               ; $6b94: $f3
	ld sp, hl                                        ; $6b95: $f9
	db $fc                                           ; $6b96: $fc
	ld sp, hl                                        ; $6b97: $f9
	jr @+$1e                                         ; $6b98: $18 $1c

	rst $38                                          ; $6b9a: $ff
	adc a                                            ; $6b9b: $8f
	rlca                                             ; $6b9c: $07
	inc bc                                           ; $6b9d: $03
	ld bc, $3f00                                     ; $6b9e: $01 $00 $3f
	db $fc                                           ; $6ba1: $fc
	ld hl, sp-$18                                    ; $6ba2: $f8 $e8
	inc bc                                           ; $6ba4: $03
	cp $fe                                           ; $6ba5: $fe $fe
	ld a, b                                          ; $6ba7: $78
	nop                                              ; $6ba8: $00
	inc bc                                           ; $6ba9: $03
	adc h                                            ; $6baa: $8c
	rlca                                             ; $6bab: $07
	rla                                              ; $6bac: $17
	rst $38                                          ; $6bad: $ff
	rst $38                                          ; $6bae: $ff
	db $fc                                           ; $6baf: $fc
	nop                                              ; $6bb0: $00
	ld d, b                                          ; $6bb1: $50
	ret nz                                           ; $6bb2: $c0

	ret nz                                           ; $6bb3: $c0

	sbc b                                            ; $6bb4: $98
	ld a, $3f                                        ; $6bb5: $3e $3f
	rst $38                                          ; $6bb7: $ff
	rst $38                                          ; $6bb8: $ff
	ldh [$e0], a                                     ; $6bb9: $e0 $e0
	ld hl, sp-$39                                    ; $6bbb: $f8 $c7
	add c                                            ; $6bbd: $81
	ld a, [$3f7e]                                    ; $6bbe: $fa $7e $3f
	rst SubAFromDE                                          ; $6bc1: $df
	rst SubAFromDE                                          ; $6bc2: $df
	ld [hl], c                                       ; $6bc3: $71
	adc a                                            ; $6bc4: $8f
	sbc h                                            ; $6bc5: $9c
	ld a, a                                          ; $6bc6: $7f
	ccf                                              ; $6bc7: $3f
	ccf                                              ; $6bc8: $3f
	ld l, l                                          ; $6bc9: $6d
	add [hl]                                         ; $6bca: $86
	ld [hl], c                                       ; $6bcb: $71
	add h                                            ; $6bcc: $84
	call c, Call_03b_47ff                            ; $6bcd: $dc $ff $47
	ldh a, [$9b]                                     ; $6bd0: $f0 $9b
	xor $2f                                          ; $6bd2: $ee $2f
	sbc b                                            ; $6bd4: $98
	ret nc                                           ; $6bd5: $d0

	db $dd                                           ; $6bd6: $dd
	sbc a                                            ; $6bd7: $9f
	sbc e                                            ; $6bd8: $9b
	rra                                              ; $6bd9: $1f
	rst SubAFromDE                                          ; $6bda: $df
	db $fd                                           ; $6bdb: $fd
	cp a                                             ; $6bdc: $bf
	db $dd                                           ; $6bdd: $dd
	ld a, a                                          ; $6bde: $7f

Jump_03b_6bdf:
	adc a                                            ; $6bdf: $8f
	ldh [$60], a                                     ; $6be0: $e0 $60
	cp b                                             ; $6be2: $b8
	sub h                                            ; $6be3: $94
	rst SubAFromDE                                          ; $6be4: $df
	rst AddAOntoHL                                          ; $6be5: $ef
	db $fd                                           ; $6be6: $fd
	db $fd                                           ; $6be7: $fd
	jr nz, jr_03b_6b7a                               ; $6be8: $20 $90

jr_03b_6bea:
	ret z                                            ; $6bea: $c8

	rst AddAOntoHL                                          ; $6beb: $ef
	rst SubAFromBC                                          ; $6bec: $e7
	di                                               ; $6bed: $f3
	di                                               ; $6bee: $f3
	ei                                               ; $6bef: $fb
	ld b, a                                          ; $6bf0: $47
	ret nc                                           ; $6bf1: $d0

	rst SubAFromDE                                          ; $6bf2: $df
	inc b                                            ; $6bf3: $04
	sbc h                                            ; $6bf4: $9c
	dec b                                            ; $6bf5: $05
	ld bc, $defd                                     ; $6bf6: $01 $fd $de
	db $fc                                           ; $6bf9: $fc
	sbc $03                                          ; $6bfa: $de $03
	call c, $80ff                                    ; $6bfc: $dc $ff $80
	add e                                            ; $6bff: $83
	and e                                            ; $6c00: $a3
	add c                                            ; $6c01: $81
	sub b                                            ; $6c02: $90
	sub b                                            ; $6c03: $90
	sub c                                            ; $6c04: $91
	sub b                                            ; $6c05: $90
	sub b                                            ; $6c06: $90
	inc a                                            ; $6c07: $3c
	inc e                                            ; $6c08: $1c
	ld e, $0f                                        ; $6c09: $1e $0f
	rrca                                             ; $6c0b: $0f
	ld c, $0f                                        ; $6c0c: $0e $0f
	rrca                                             ; $6c0e: $0f
	ld d, a                                          ; $6c0f: $57
	ld e, [hl]                                       ; $6c10: $5e
	rst SubAFromBC                                          ; $6c11: $e7
	or c                                             ; $6c12: $b1
	ret nc                                           ; $6c13: $d0

	adc c                                            ; $6c14: $89
	dec de                                           ; $6c15: $1b
	ccf                                              ; $6c16: $3f
	xor b                                            ; $6c17: $a8
	or b                                             ; $6c18: $b0
	jr jr_03b_6c26                                   ; $6c19: $18 $0b

	add hl, bc                                       ; $6c1b: $09
	halt                                             ; $6c1c: $76
	push hl                                          ; $6c1d: $e5
	sub c                                            ; $6c1e: $91
	rst FarCall                                          ; $6c1f: $f7
	ld c, c                                          ; $6c20: $49
	db $db                                           ; $6c21: $db
	or h                                             ; $6c22: $b4
	ld d, b                                          ; $6c23: $50
	jr z, jr_03b_6c3f                                ; $6c24: $28 $19

jr_03b_6c26:
	jp $32cd                                         ; $6c26: $c3 $cd $32


	ld sp, $3809                                     ; $6c29: $31 $09 $38
	inc e                                            ; $6c2c: $1c
	ld a, d                                          ; $6c2d: $7a
	push bc                                          ; $6c2e: $c5
	sub h                                            ; $6c2f: $94
	db $d3                                           ; $6c30: $d3
	sbc a                                            ; $6c31: $9f
	ld d, e                                          ; $6c32: $53
	ret c                                            ; $6c33: $d8

	ld a, a                                          ; $6c34: $7f
	rst $38                                          ; $6c35: $ff
	ldh a, [$c0]                                     ; $6c36: $f0 $c0
	ldh [rSVBK], a                                   ; $6c38: $e0 $70
	cp h                                             ; $6c3a: $bc
	ld a, e                                          ; $6c3b: $7b
	ld c, d                                          ; $6c3c: $4a
	rst SubAFromDE                                          ; $6c3d: $df
	rst $38                                          ; $6c3e: $ff

jr_03b_6c3f:
	sub a                                            ; $6c3f: $97
	set 7, e                                         ; $6c40: $cb $fb
	db $e3                                           ; $6c42: $e3
	db $db                                           ; $6c43: $db
	db $dd                                           ; $6c44: $dd
	db $dd                                           ; $6c45: $dd
	cp $ec                                           ; $6c46: $fe $ec
	ld [hl], d                                       ; $6c48: $72
	ld [hl], e                                       ; $6c49: $73
	ld a, e                                          ; $6c4a: $7b
	jr nz, jr_03b_6bea                               ; $6c4b: $20 $9d

	ld a, a                                          ; $6c4d: $7f
	add a                                            ; $6c4e: $87
	call c, Call_03b_7fff                            ; $6c4f: $dc $ff $7f
	db $dd                                           ; $6c52: $dd
	rst SubAFromHL                                          ; $6c53: $d7
	rst $38                                          ; $6c54: $ff
	ld a, [hl]                                       ; $6c55: $7e
	jp z, $c67e                                      ; $6c56: $ca $7e $c6

	halt                                             ; $6c59: $76
	xor a                                            ; $6c5a: $af
	ld a, c                                          ; $6c5b: $79
	dec l                                            ; $6c5c: $2d
	rst SubAFromDE                                          ; $6c5d: $df
	db $fc                                           ; $6c5e: $fc
	sub a                                            ; $6c5f: $97
	ld d, l                                          ; $6c60: $55
	ld c, d                                          ; $6c61: $4a
	ld [hl], l                                       ; $6c62: $75
	ldh a, [$7a]                                     ; $6c63: $f0 $7a
	ld [hl], a                                       ; $6c65: $77
	ld sp, hl                                        ; $6c66: $f9
	sub a                                            ; $6c67: $97
	ld [hl], h                                       ; $6c68: $74
	ld e, d                                          ; $6c69: $5a
	db $fd                                           ; $6c6a: $fd
	sub a                                            ; $6c6b: $97
	db $fd                                           ; $6c6c: $fd
	ld b, l                                          ; $6c6d: $45
	push bc                                          ; $6c6e: $c5
	dec l                                            ; $6c6f: $2d
	cp l                                             ; $6c70: $bd
	ld d, c                                          ; $6c71: $51
	and l                                            ; $6c72: $a5
	xor e                                            ; $6c73: $ab
	ld sp, hl                                        ; $6c74: $f9
	sbc e                                            ; $6c75: $9b
	sub e                                            ; $6c76: $93
	xor h                                            ; $6c77: $ac
	xor c                                            ; $6c78: $a9
	xor d                                            ; $6c79: $aa
	sbc $a2                                          ; $6c7a: $de $a2
	sbc e                                            ; $6c7c: $9b
	add d                                            ; $6c7d: $82
	ldh [$d0], a                                     ; $6c7e: $e0 $d0
	jp nc, $d7dc                                     ; $6c80: $d2 $dc $d7

	sbc e                                            ; $6c83: $9b
	db $fc                                           ; $6c84: $fc
	ld a, h                                          ; $6c85: $7c
	nop                                              ; $6c86: $00
	call c, $d5dd                                    ; $6c87: $dc $dd $d5
	ld l, h                                          ; $6c8a: $6c
	call nz, $08df                                   ; $6c8b: $c4 $df $08
	ld a, h                                          ; $6c8e: $7c
	rst SubAFromHL                                          ; $6c8f: $d7

jr_03b_6c90:
	ld a, a                                          ; $6c90: $7f
	dec [hl]                                         ; $6c91: $35
	sbc [hl]                                         ; $6c92: $9e
	ret                                              ; $6c93: $c9


	sbc $cd                                          ; $6c94: $de $cd
	ld sp, hl                                        ; $6c96: $f9
	sbc e                                            ; $6c97: $9b
	cp $f1                                           ; $6c98: $fe $f1
	nop                                              ; $6c9a: $00
	ret                                              ; $6c9b: $c9


	sbc $24                                          ; $6c9c: $de $24
	sbc [hl]                                         ; $6c9e: $9e
	and l                                            ; $6c9f: $a5
	ld a, c                                          ; $6ca0: $79
	inc b                                            ; $6ca1: $04

jr_03b_6ca2:
	sbc [hl]                                         ; $6ca2: $9e
	ld [hl-], a                                      ; $6ca3: $32
	db $dd                                           ; $6ca4: $dd
	ld [de], a                                       ; $6ca5: $12
	sub [hl]                                         ; $6ca6: $96
	ld a, [hl-]                                      ; $6ca7: $3a
	ld [hl], l                                       ; $6ca8: $75
	halt                                             ; $6ca9: $76
	ld a, c                                          ; $6caa: $79
	cp $f1                                           ; $6cab: $fe $f1
	cp $f0                                           ; $6cad: $fe $f0
	ld e, a                                          ; $6caf: $5f
	halt                                             ; $6cb0: $76
	db $ec                                           ; $6cb1: $ec
	sbc $1f                                          ; $6cb2: $de $1f
	sub a                                            ; $6cb4: $97
	scf                                              ; $6cb5: $37
	rst GetHLinHL                                          ; $6cb6: $cf
	jr c, jr_03b_6c90                                ; $6cb7: $38 $d7

	jr c, jr_03b_6ca2                                ; $6cb9: $38 $e7

	ld a, b                                          ; $6cbb: $78
	ld b, b                                          ; $6cbc: $40
	ld h, e                                          ; $6cbd: $63
	ld [hl], e                                       ; $6cbe: $73
	sbc b                                            ; $6cbf: $98
	cpl                                              ; $6cc0: $2f
	pop af                                           ; $6cc1: $f1
	ld l, a                                          ; $6cc2: $6f
	ld b, e                                          ; $6cc3: $43

Call_03b_6cc4:
	ld b, h                                          ; $6cc4: $44
	ld b, a                                          ; $6cc5: $47
	add c                                            ; $6cc6: $81
	ld l, a                                          ; $6cc7: $6f
	ld h, a                                          ; $6cc8: $67
	rst SubAFromDE                                          ; $6cc9: $df
	rst $38                                          ; $6cca: $ff
	sub a                                            ; $6ccb: $97
	push af                                          ; $6ccc: $f5
	cp $f5                                           ; $6ccd: $fe $f5
	xor $e3                                          ; $6ccf: $ee $e3
	ld a, [hl]                                       ; $6cd1: $7e
	ld h, d                                          ; $6cd2: $62
	ld bc, $ffdd                                     ; $6cd3: $01 $dd $ff
	sbc [hl]                                         ; $6cd6: $9e
	ccf                                              ; $6cd7: $3f
	ld a, b                                          ; $6cd8: $78
	res 2, d                                         ; $6cd9: $cb $92
	rst GetHLinHL                                          ; $6cdb: $cf
	ccf                                              ; $6cdc: $3f
	rst JumpTable                                          ; $6cdd: $c7
	ld a, $cd                                        ; $6cde: $3e $cd
	rrca                                             ; $6ce0: $0f
	inc bc                                           ; $6ce1: $03
	ld [bc], a                                       ; $6ce2: $02
	rst $38                                          ; $6ce3: $ff
	rst $38                                          ; $6ce4: $ff
	db $fd                                           ; $6ce5: $fd
	db $fc                                           ; $6ce6: $fc
	ld sp, hl                                        ; $6ce7: $f9
	sbc $ff                                          ; $6ce8: $de $ff
	sub a                                            ; $6cea: $97
	cp b                                             ; $6ceb: $b8
	rst SubAFromHL                                          ; $6cec: $d7
	cp b                                             ; $6ced: $b8
	rst GetHLinHL                                          ; $6cee: $cf
	cp b                                             ; $6cef: $b8
	inc c                                            ; $6cf0: $0c
	inc e                                            ; $6cf1: $1c
	ld b, $d9                                        ; $6cf2: $06 $d9
	rst $38                                          ; $6cf4: $ff
	sub a                                            ; $6cf5: $97
	db $e4                                           ; $6cf6: $e4
	call c, $14f5                                    ; $6cf7: $dc $f5 $14
	push de                                          ; $6cfa: $d5
	rrca                                             ; $6cfb: $0f
	rrca                                             ; $6cfc: $0f
	dec b                                            ; $6cfd: $05
	ld h, a                                          ; $6cfe: $67
	ret nz                                           ; $6cff: $c0

	adc a                                            ; $6d00: $8f
	sub d                                            ; $6d01: $92
	halt                                             ; $6d02: $76
	add b                                            ; $6d03: $80
	add b                                            ; $6d04: $80
	call nz, $c006                                   ; $6d05: $c4 $06 $c0
	ld c, c                                          ; $6d08: $49
	rrca                                             ; $6d09: $0f
	adc a                                            ; $6d0a: $8f
	rst $38                                          ; $6d0b: $ff
	ld b, b                                          ; $6d0c: $40
	jr c, @+$01                                      ; $6d0d: $38 $ff

	rst $38                                          ; $6d0f: $ff

jr_03b_6d10:
	cp a                                             ; $6d10: $bf
	ld a, b                                          ; $6d11: $78
	adc l                                            ; $6d12: $8d
	ld a, h                                          ; $6d13: $7c
	call nc, $0d9c                                   ; $6d14: $d4 $9c $0d
	inc [hl]                                         ; $6d17: $34
	or d                                             ; $6d18: $b2
	db $dd                                           ; $6d19: $dd
	rst $38                                          ; $6d1a: $ff
	adc e                                            ; $6d1b: $8b
	rrca                                             ; $6d1c: $0f
	ld e, $fb                                        ; $6d1d: $1e $fb
	rst $38                                          ; $6d1f: $ff
	rst $38                                          ; $6d20: $ff
	ei                                               ; $6d21: $fb
	push af                                          ; $6d22: $f5
	push af                                          ; $6d23: $f5
	inc l                                            ; $6d24: $2c
	ld l, $2c                                        ; $6d25: $2e $2c
	ld l, h                                          ; $6d27: $6c
	rst SubAFromBC                                          ; $6d28: $e7
	rst AddAOntoHL                                          ; $6d29: $ef
	sbc e                                            ; $6d2a: $9b
	sbc e                                            ; $6d2b: $9b
	di                                               ; $6d2c: $f3
	pop af                                           ; $6d2d: $f1
	di                                               ; $6d2e: $f3
	di                                               ; $6d2f: $f3
	ld [hl], b                                       ; $6d30: $70
	db $db                                           ; $6d31: $db
	rst SubAFromDE                                          ; $6d32: $df
	ld h, b                                          ; $6d33: $60
	sbc [hl]                                         ; $6d34: $9e
	jr nc, jr_03b_6d10                               ; $6d35: $30 $d9

	rst $38                                          ; $6d37: $ff
	sbc $ee                                          ; $6d38: $de $ee
	sbc d                                            ; $6d3a: $9a
	db $e3                                           ; $6d3b: $e3
	ldh [$d0], a                                     ; $6d3c: $e0 $d0
	ld hl, sp-$19                                    ; $6d3e: $f8 $e7
	ld sp, hl                                        ; $6d40: $f9
	sub e                                            ; $6d41: $93
	rst $38                                          ; $6d42: $ff
	ld e, a                                          ; $6d43: $5f
	ldh [$80], a                                     ; $6d44: $e0 $80
	ld a, a                                          ; $6d46: $7f
	nop                                              ; $6d47: $00
	rlca                                             ; $6d48: $07
	ld [$3f7f], sp                                   ; $6d49: $08 $7f $3f
	rra                                              ; $6d4c: $1f
	ld a, a                                          ; $6d4d: $7f
	db $fd                                           ; $6d4e: $fd
	sub e                                            ; $6d4f: $93
	db $fc                                           ; $6d50: $fc
	db $e3                                           ; $6d51: $e3
	dec e                                            ; $6d52: $1d
	inc c                                            ; $6d53: $0c
	ldh a, [$03]                                     ; $6d54: $f0 $03
	dec d                                            ; $6d56: $15
	dec a                                            ; $6d57: $3d
	ldh a, [$fc]                                     ; $6d58: $f0 $fc
	rst $38                                          ; $6d5a: $ff
	ldh a, [$fd]                                     ; $6d5b: $f0 $fd
	sub a                                            ; $6d5d: $97
	add hl, de                                       ; $6d5e: $19
	cp [hl]                                          ; $6d5f: $be
	ld l, c                                          ; $6d60: $69
	ld l, $b8                                        ; $6d61: $2e $b8
	ld d, b                                          ; $6d63: $50
	xor d                                            ; $6d64: $aa
	ld e, l                                          ; $6d65: $5d
	ld a, e                                          ; $6d66: $7b
	cp b                                             ; $6d67: $b8
	db $fc                                           ; $6d68: $fc
	sbc b                                            ; $6d69: $98
	ld d, l                                          ; $6d6a: $55
	and a                                            ; $6d6b: $a7
	ld e, c                                          ; $6d6c: $59
	and a                                            ; $6d6d: $a7
	add hl, bc                                       ; $6d6e: $09
	dec l                                            ; $6d6f: $2d
	dec c                                            ; $6d70: $0d
	ld a, e                                          ; $6d71: $7b
	ldh a, [$fb]                                     ; $6d72: $f0 $fb
	rst SubAFromDE                                          ; $6d74: $df
	and d                                            ; $6d75: $a2
	rst SubAFromDE                                          ; $6d76: $df
	xor d                                            ; $6d77: $aa
	rst SubAFromDE                                          ; $6d78: $df
	xor e                                            ; $6d79: $ab
	sbc l                                            ; $6d7a: $9d
	sbc b                                            ; $6d7b: $98
	xor e                                            ; $6d7c: $ab
	db $dd                                           ; $6d7d: $dd
	rst SubAFromHL                                          ; $6d7e: $d7
	rst SubAFromDE                                          ; $6d7f: $df
	sub $9d                                          ; $6d80: $d6 $9d
	call z, $ddff                                    ; $6d82: $cc $ff $dd
	push de                                          ; $6d85: $d5
	rst SubAFromDE                                          ; $6d86: $df
	ld d, l                                          ; $6d87: $55
	sbc l                                            ; $6d88: $9d
	dec c                                            ; $6d89: $0d
	adc l                                            ; $6d8a: $8d
	db $db                                           ; $6d8b: $db
	ld [$cb7f], sp                                   ; $6d8c: $08 $7f $cb
	sbc [hl]                                         ; $6d8f: $9e
	call $ccde                                       ; $6d90: $cd $de $cc
	db $dd                                           ; $6d93: $dd
	db $ec                                           ; $6d94: $ec
	ld sp, hl                                        ; $6d95: $f9
	sub a                                            ; $6d96: $97
	and h                                            ; $6d97: $a4
	and l                                            ; $6d98: $a5
	and l                                            ; $6d99: $a5
	rst SubAFromBC                                          ; $6d9a: $e7
	ld h, a                                          ; $6d9b: $67
	ld [hl], a                                       ; $6d9c: $77
	dec [hl]                                         ; $6d9d: $35
	rst FarCall                                          ; $6d9e: $f7
	sbc $12                                          ; $6d9f: $de $12
	rst SubAFromDE                                          ; $6da1: $df
	db $10                                           ; $6da2: $10
	ld a, b                                          ; $6da3: $78
	ld l, c                                          ; $6da4: $69
	ld a, a                                          ; $6da5: $7f
	sbc d                                            ; $6da6: $9a
	sbc c                                            ; $6da7: $99
	db $ec                                           ; $6da8: $ec
	call $baca                                       ; $6da9: $cd $ca $ba
	rst $38                                          ; $6dac: $ff
	inc h                                            ; $6dad: $24
	sbc $1f                                          ; $6dae: $de $1f
	rst SubAFromDE                                          ; $6db0: $df
	ccf                                              ; $6db1: $3f
	ld a, d                                          ; $6db2: $7a
	ld a, [hl-]                                      ; $6db3: $3a
	ld a, h                                          ; $6db4: $7c
	ld a, c                                          ; $6db5: $79
	sbc [hl]                                         ; $6db6: $9e
	add c                                            ; $6db7: $81
	sbc $01                                          ; $6db8: $de $01
	rst SubAFromDE                                          ; $6dba: $df
	ld [bc], a                                       ; $6dbb: $02
	ret c                                            ; $6dbc: $d8

	rst $38                                          ; $6dbd: $ff
	ld a, a                                          ; $6dbe: $7f
	pop af                                           ; $6dbf: $f1
	ld a, b                                          ; $6dc0: $78
	ret c                                            ; $6dc1: $d8

	rst SubAFromDE                                          ; $6dc2: $df
	ld bc, $ffdc                                     ; $6dc3: $01 $dc $ff
	ld a, a                                          ; $6dc6: $7f
	ld hl, $fb9e                                     ; $6dc7: $21 $9e $fb
	db $dd                                           ; $6dca: $dd
	ld bc, $4873                                     ; $6dcb: $01 $73 $48
	ld a, e                                          ; $6dce: $7b
	db $f4                                           ; $6dcf: $f4
	ld a, a                                          ; $6dd0: $7f
	cp $9c                                           ; $6dd1: $fe $9c
	rst FarCall                                          ; $6dd3: $f7
	ei                                               ; $6dd4: $fb
	rst $38                                          ; $6dd5: $ff
	ld a, e                                          ; $6dd6: $7b
	pop af                                           ; $6dd7: $f1
	db $dd                                           ; $6dd8: $dd
	add b                                            ; $6dd9: $80
	sbc $ff                                          ; $6dda: $de $ff
	sbc d                                            ; $6ddc: $9a
	rst AddAOntoHL                                          ; $6ddd: $ef
	rst $38                                          ; $6dde: $ff
	rst AddAOntoHL                                          ; $6ddf: $ef
	rst FarCall                                          ; $6de0: $f7
	rst $38                                          ; $6de1: $ff
	ld a, c                                          ; $6de2: $79
	db $ed                                           ; $6de3: $ed
	ld a, d                                          ; $6de4: $7a
	ld d, $df                                        ; $6de5: $16 $df
	ld b, b                                          ; $6de7: $40
	reti                                             ; $6de8: $d9


	rst $38                                          ; $6de9: $ff
	sub a                                            ; $6dea: $97
	db $fd                                           ; $6deb: $fd
	inc b                                            ; $6dec: $04
	add h                                            ; $6ded: $84
	add h                                            ; $6dee: $84
	ld b, [hl]                                       ; $6def: $46
	ld b, [hl]                                       ; $6df0: $46
	inc hl                                           ; $6df1: $23
	inc hl                                           ; $6df2: $23
	ld l, d                                          ; $6df3: $6a
	ld [hl], d                                       ; $6df4: $72
	sub e                                            ; $6df5: $93
	cp $ce                                           ; $6df6: $fe $ce
	ret nz                                           ; $6df8: $c0

	pop de                                           ; $6df9: $d1
	ret                                              ; $6dfa: $c9


	db $d3                                           ; $6dfb: $d3
	reti                                             ; $6dfc: $d9


	ld d, b                                          ; $6dfd: $50
	ld b, b                                          ; $6dfe: $40
	rra                                              ; $6dff: $1f
	rra                                              ; $6e00: $1f
	add hl, bc                                       ; $6e01: $09
	sbc $01                                          ; $6e02: $de $01
	rst SubAFromDE                                          ; $6e04: $df
	add b                                            ; $6e05: $80
	add b                                            ; $6e06: $80
	ccf                                              ; $6e07: $3f
	ld d, a                                          ; $6e08: $57
	cp e                                             ; $6e09: $bb
	push af                                          ; $6e0a: $f5
	set 5, a                                         ; $6e0b: $cb $ef
	or $73                                           ; $6e0d: $f6 $73
	rst $38                                          ; $6e0f: $ff
	cp a                                             ; $6e10: $bf
	rst SubAFromBC                                          ; $6e11: $e7
	ld h, e                                          ; $6e12: $63
	ld [hl], c                                       ; $6e13: $71
	ld [hl], e                                       ; $6e14: $73
	ld a, e                                          ; $6e15: $7b
	ccf                                              ; $6e16: $3f
	ld a, b                                          ; $6e17: $78
	cp b                                             ; $6e18: $b8
	jp nc, $c1d2                                     ; $6e19: $d2 $d2 $c1

	ld h, c                                          ; $6e1c: $61
	inc hl                                           ; $6e1d: $23
	inc bc                                           ; $6e1e: $03
	rst SubAFromBC                                          ; $6e1f: $e7
	rst SubAFromBC                                          ; $6e20: $e7
	xor a                                            ; $6e21: $af
	xor a                                            ; $6e22: $af
	cp a                                             ; $6e23: $bf
	sbc a                                            ; $6e24: $9f
	rst SubAFromDE                                          ; $6e25: $df
	sbc b                                            ; $6e26: $98
	rst $38                                          ; $6e27: $ff
	jr nc, jr_03b_6e5a                               ; $6e28: $30 $30

	jr c, @+$3a                                      ; $6e2a: $38 $38

	add hl, sp                                       ; $6e2c: $39
	dec a                                            ; $6e2d: $3d
	rst SubAFromHL                                          ; $6e2e: $d7
	rst $38                                          ; $6e2f: $ff
	inc sp                                           ; $6e30: $33
	nop                                              ; $6e31: $00
	rst SubAFromDE                                          ; $6e32: $df
	inc sp                                           ; $6e33: $33
	sbc c                                            ; $6e34: $99
	dec [hl]                                         ; $6e35: $35
	ld d, e                                          ; $6e36: $53
	dec [hl]                                         ; $6e37: $35
	inc sp                                           ; $6e38: $33
	ld [hl], a                                       ; $6e39: $77
	ld d, l                                          ; $6e3a: $55
	db $dd                                           ; $6e3b: $dd
	inc sp                                           ; $6e3c: $33
	sbc e                                            ; $6e3d: $9b
	dec [hl]                                         ; $6e3e: $35
	ld d, [hl]                                       ; $6e3f: $56
	ld d, l                                          ; $6e40: $55
	ld d, l                                          ; $6e41: $55
	ld a, e                                          ; $6e42: $7b
	or $7f                                           ; $6e43: $f6 $7f
	pop af                                           ; $6e45: $f1
	ld a, a                                          ; $6e46: $7f
	db $fd                                           ; $6e47: $fd
	sbc e                                            ; $6e48: $9b
	ld d, a                                          ; $6e49: $57
	ld d, l                                          ; $6e4a: $55
	ld d, l                                          ; $6e4b: $55
	ld [hl], l                                       ; $6e4c: $75
	ld l, a                                          ; $6e4d: $6f
	or $9e                                           ; $6e4e: $f6 $9e
	scf                                              ; $6e50: $37
	ld [hl], a                                       ; $6e51: $77
	db $ec                                           ; $6e52: $ec
	sbc l                                            ; $6e53: $9d
	ld [hl], $77                                     ; $6e54: $36 $77
	ld [hl], e                                       ; $6e56: $73
	ldh [$df], a                                     ; $6e57: $e0 $df
	ld d, l                                          ; $6e59: $55

jr_03b_6e5a:
	sbc l                                            ; $6e5a: $9d
	ld b, l                                          ; $6e5b: $45
	ld d, l                                          ; $6e5c: $55
	ld h, a                                          ; $6e5d: $67
	or $9c                                           ; $6e5e: $f6 $9c
	ld d, l                                          ; $6e60: $55
	scf                                              ; $6e61: $37
	ld [hl], a                                       ; $6e62: $77
	ld [$9801], a                                    ; $6e63: $ea $01 $98
	ld d, l                                          ; $6e66: $55
	rst $38                                          ; $6e67: $ff
	or c                                             ; $6e68: $b1
	rst $38                                          ; $6e69: $ff
	ld d, l                                          ; $6e6a: $55
	rst $38                                          ; $6e6b: $ff
	or b                                             ; $6e6c: $b0
	ld h, e                                          ; $6e6d: $63
	db $fc                                           ; $6e6e: $fc
	sbc e                                            ; $6e6f: $9b
	xor d                                            ; $6e70: $aa
	add b                                            ; $6e71: $80
	push de                                          ; $6e72: $d5
	add b                                            ; $6e73: $80
	ld d, a                                          ; $6e74: $57
	db $fc                                           ; $6e75: $fc
	adc e                                            ; $6e76: $8b
	adc e                                            ; $6e77: $8b
	call nc, $ca95                                   ; $6e78: $d4 $95 $ca
	adc l                                            ; $6e7b: $8d
	jp nc, $c291                                     ; $6e7c: $d2 $91 $c2

	add d                                            ; $6e7f: $82
	pop de                                           ; $6e80: $d1
	sub d                                            ; $6e81: $92
	pop bc                                           ; $6e82: $c1
	adc b                                            ; $6e83: $88
	db $d3                                           ; $6e84: $d3
	sub d                                            ; $6e85: $92
	ret                                              ; $6e86: $c9


	ld l, d                                          ; $6e87: $6a
	jr nz, jr_03b_6eff                               ; $6e88: $20 $75

	jr nz, jr_03b_6ee3                               ; $6e8a: $20 $57

	db $fc                                           ; $6e8c: $fc
	sbc e                                            ; $6e8d: $9b
	xor d                                            ; $6e8e: $aa
	ld [bc], a                                       ; $6e8f: $02
	ld d, [hl]                                       ; $6e90: $56
	ld [bc], a                                       ; $6e91: $02
	ld d, a                                          ; $6e92: $57
	db $fc                                           ; $6e93: $fc
	adc l                                            ; $6e94: $8d
	ld e, a                                          ; $6e95: $5f
	ld h, b                                          ; $6e96: $60
	ld e, e                                          ; $6e97: $5b
	ld h, h                                          ; $6e98: $64
	ld l, a                                          ; $6e99: $6f
	ld h, b                                          ; $6e9a: $60
	ld b, a                                          ; $6e9b: $47
	ld h, b                                          ; $6e9c: $60
	ld c, e                                          ; $6e9d: $4b
	ld h, h                                          ; $6e9e: $64
	ld a, e                                          ; $6e9f: $7b
	ld h, h                                          ; $6ea0: $64
	ld l, e                                          ; $6ea1: $6b
	ld h, h                                          ; $6ea2: $64
	ld d, e                                          ; $6ea3: $53
	ld h, b                                          ; $6ea4: $60
	ld h, b                                          ; $6ea5: $60
	ld b, b                                          ; $6ea6: $40
	ld c, a                                          ; $6ea7: $4f
	cp $9d                                           ; $6ea8: $fe $9d
	add hl, bc                                       ; $6eaa: $09
	inc bc                                           ; $6eab: $03
	ld c, a                                          ; $6eac: $4f
	cp $93                                           ; $6ead: $fe $93
	xor d                                            ; $6eaf: $aa
	ld d, l                                          ; $6eb0: $55
	ld d, l                                          ; $6eb1: $55
	xor d                                            ; $6eb2: $aa
	xor d                                            ; $6eb3: $aa
	ld d, l                                          ; $6eb4: $55
	ld d, b                                          ; $6eb5: $50
	xor a                                            ; $6eb6: $af
	add b                                            ; $6eb7: $80
	ld a, a                                          ; $6eb8: $7f
	ld b, b                                          ; $6eb9: $40
	cp a                                             ; $6eba: $bf
	ld [hl], a                                       ; $6ebb: $77
	db $f4                                           ; $6ebc: $f4
	sbc l                                            ; $6ebd: $9d
	xor b                                            ; $6ebe: $a8
	ld d, a                                          ; $6ebf: $57
	ld [hl], a                                       ; $6ec0: $77
	db $f4                                           ; $6ec1: $f4
	sbc l                                            ; $6ec2: $9d
	nop                                              ; $6ec3: $00
	rst $38                                          ; $6ec4: $ff
	ld [hl], a                                       ; $6ec5: $77
	cp $89                                           ; $6ec6: $fe $89
	xor e                                            ; $6ec8: $ab
	ld d, l                                          ; $6ec9: $55
	ld d, [hl]                                       ; $6eca: $56
	xor e                                            ; $6ecb: $ab
	ld d, b                                          ; $6ecc: $50
	xor a                                            ; $6ecd: $af
	xor d                                            ; $6ece: $aa
	ld d, l                                          ; $6ecf: $55
	dec d                                            ; $6ed0: $15
	ld [$f50a], a                                    ; $6ed1: $ea $0a $f5
	dec d                                            ; $6ed4: $15
	ld [$fdf2], a                                    ; $6ed5: $ea $f2 $fd
	dec l                                            ; $6ed8: $2d
	jp c, $2df6                                      ; $6ed9: $da $f6 $2d

	dec d                                            ; $6edc: $15
	ld [$ce6f], a                                    ; $6edd: $ea $6f $ce
	ld h, a                                          ; $6ee0: $67
	db $fc                                           ; $6ee1: $fc
	sbc l                                            ; $6ee2: $9d

jr_03b_6ee3:
	ld d, h                                          ; $6ee3: $54
	xor e                                            ; $6ee4: $ab
	ld c, a                                          ; $6ee5: $4f
	ldh a, [$9b]                                     ; $6ee6: $f0 $9b
	db $10                                           ; $6ee8: $10
	rst AddAOntoHL                                          ; $6ee9: $ef
	and d                                            ; $6eea: $a2
	ld e, l                                          ; $6eeb: $5d
	ld d, a                                          ; $6eec: $57
	ldh a, [$6f]                                     ; $6eed: $f0 $6f
	or [hl]                                          ; $6eef: $b6
	rra                                              ; $6ef0: $1f
	cp $9d                                           ; $6ef1: $fe $9d
	ld l, h                                          ; $6ef3: $6c
	rst JumpTable                                          ; $6ef4: $c7
	ld c, a                                          ; $6ef5: $4f
	cp $07                                           ; $6ef6: $fe $07
	ret nc                                           ; $6ef8: $d0

	ld b, a                                          ; $6ef9: $47
	cp $7e                                           ; $6efa: $fe $7e
	call z, $309e                                    ; $6efc: $cc $9e $30

jr_03b_6eff:
	ld [hl], e                                       ; $6eff: $73
	db $fc                                           ; $6f00: $fc
	sbc [hl]                                         ; $6f01: $9e
	dec d                                            ; $6f02: $15
	ld l, e                                          ; $6f03: $6b
	db $fc                                           ; $6f04: $fc
	ld d, [hl]                                       ; $6f05: $56
	call nz, $2a9e                                   ; $6f06: $c4 $9e $2a
	ld a, e                                          ; $6f09: $7b
	db $fc                                           ; $6f0a: $fc
	adc a                                            ; $6f0b: $8f
	adc a                                            ; $6f0c: $8f
	ret nc                                           ; $6f0d: $d0

	sub a                                            ; $6f0e: $97
	ret z                                            ; $6f0f: $c8

	adc e                                            ; $6f10: $8b
	call nc, $de81                                   ; $6f11: $d4 $81 $de
	add b                                            ; $6f14: $80
	ret nz                                           ; $6f15: $c0

	cp b                                             ; $6f16: $b8

jr_03b_6f17:
	ret nz                                           ; $6f17: $c0

	ldh a, [rIE]                                     ; $6f18: $f0 $ff
	rst $38                                          ; $6f1a: $ff
	rra                                              ; $6f1b: $1f
	ld d, [hl]                                       ; $6f1c: $56
	call nz, $ea9b                                   ; $6f1d: $c4 $9b $ea
	jr nz, jr_03b_6f17                               ; $6f20: $20 $f5

	ldh [rRP], a                                     ; $6f22: $e0 $56
	call nz, $ab8b                                   ; $6f24: $c4 $8b $ab
	inc bc                                           ; $6f27: $03
	ld d, h                                          ; $6f28: $54
	ld bc, $4067                                     ; $6f29: $01 $67 $40
	ld c, e                                          ; $6f2c: $4b
	ld h, h                                          ; $6f2d: $64
	ld l, e                                          ; $6f2e: $6b
	ld b, h                                          ; $6f2f: $44
	ld h, e                                          ; $6f30: $63
	ld e, h                                          ; $6f31: $5c
	rrca                                             ; $6f32: $0f
	ld [hl], b                                       ; $6f33: $70
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	rst $38                                          ; $6f36: $ff
	add b                                            ; $6f37: $80
	ld e, $e1                                        ; $6f38: $1e $e1
	ld c, [hl]                                       ; $6f3a: $4e
	jp nz, $e09d                                     ; $6f3b: $c2 $9d $e0

	ret nz                                           ; $6f3e: $c0

	ld e, [hl]                                       ; $6f3f: $5e
	add $99                                          ; $6f40: $c6 $99
	ret                                              ; $6f42: $c9


	jp $3339                                         ; $6f43: $c3 $39 $33


	dec c                                            ; $6f46: $0d
	rrca                                             ; $6f47: $0f
	halt                                             ; $6f48: $76
	call nc, $fc7f                                   ; $6f49: $d4 $7f $fc
	sub d                                            ; $6f4c: $92
	rra                                              ; $6f4d: $1f
	ldh [hDisp1_SCY], a                                     ; $6f4e: $e0 $90
	ld l, a                                          ; $6f50: $6f
	rra                                              ; $6f51: $1f
	ldh [rAUD1SWEEP], a                              ; $6f52: $e0 $10
	rst AddAOntoHL                                          ; $6f54: $ef
	ccf                                              ; $6f55: $3f
	ret nz                                           ; $6f56: $c0

	ld [bc], a                                       ; $6f57: $02
	rst $38                                          ; $6f58: $ff
	inc bc                                           ; $6f59: $03
	ld a, e                                          ; $6f5a: $7b
	cp $85                                           ; $6f5b: $fe $85
	db $fd                                           ; $6f5d: $fd
	ld [bc], a                                       ; $6f5e: $02
	ld [bc], a                                       ; $6f5f: $02
	cp $ff                                           ; $6f60: $fe $ff
	ld [bc], a                                       ; $6f62: $02
	ld bc, $f0ff                                     ; $6f63: $01 $ff $f0
	rrca                                             ; $6f66: $0f
	db $f4                                           ; $6f67: $f4
	rst $38                                          ; $6f68: $ff
	db $fc                                           ; $6f69: $fc
	sbc a                                            ; $6f6a: $9f
	db $fc                                           ; $6f6b: $fc
	rrca                                             ; $6f6c: $0f
	or b                                             ; $6f6d: $b0
	rrca                                             ; $6f6e: $0f
	sbc h                                            ; $6f6f: $9c
	rlca                                             ; $6f70: $07
	sub h                                            ; $6f71: $94
	rrca                                             ; $6f72: $0f
	ld l, b                                          ; $6f73: $68
	sbc a                                            ; $6f74: $9f
	sub b                                            ; $6f75: $90
	ld a, a                                          ; $6f76: $7f
	ld l, [hl]                                       ; $6f77: $6e
	add sp, -$6b                                     ; $6f78: $e8 $95
	ld a, [$0705]                                    ; $6f7a: $fa $05 $07
	ld hl, sp-$08                                    ; $6f7d: $f8 $f8
	rlca                                             ; $6f7f: $07
	rrca                                             ; $6f80: $0f
	ldh a, [$f0]                                     ; $6f81: $f0 $f0
	rrca                                             ; $6f83: $0f
	ld h, [hl]                                       ; $6f84: $66
	ret c                                            ; $6f85: $d8

	ld a, a                                          ; $6f86: $7f
	dec [hl]                                         ; $6f87: $35
	ld a, a                                          ; $6f88: $7f
	cp b                                             ; $6f89: $b8
	ld a, a                                          ; $6f8a: $7f
	db $fc                                           ; $6f8b: $fc
	sub a                                            ; $6f8c: $97
	ld [$54f7], sp                                   ; $6f8d: $08 $f7 $54
	xor e                                            ; $6f90: $ab
	xor b                                            ; $6f91: $a8
	ld d, a                                          ; $6f92: $57
	ld b, b                                          ; $6f93: $40
	cp a                                             ; $6f94: $bf
	ld [hl], a                                       ; $6f95: $77
	db $f4                                           ; $6f96: $f4
	ld l, a                                          ; $6f97: $6f
	db $fc                                           ; $6f98: $fc
	ld h, a                                          ; $6f99: $67
	cp $97                                           ; $6f9a: $fe $97
	ldh [$1f], a                                     ; $6f9c: $e0 $1f
	ccf                                              ; $6f9e: $3f
	ret nz                                           ; $6f9f: $c0

	ret nz                                           ; $6fa0: $c0

	ccf                                              ; $6fa1: $3f
	ld a, a                                          ; $6fa2: $7f
	add b                                            ; $6fa3: $80
	ld e, a                                          ; $6fa4: $5f
	xor $7f                                          ; $6fa5: $ee $7f
	ret nz                                           ; $6fa7: $c0

	ld a, a                                          ; $6fa8: $7f
	jp nc, $fc7f                                     ; $6fa9: $d2 $7f $fc

	ld [bc], a                                       ; $6fac: $02
	ret nz                                           ; $6fad: $c0

	dec bc                                           ; $6fae: $0b
	cp $7e                                           ; $6faf: $fe $7e
	call z, $8c7d                                    ; $6fb1: $cc $7d $8c
	sbc d                                            ; $6fb4: $9a
	inc d                                            ; $6fb5: $14
	rst $38                                          ; $6fb6: $ff
	sub b                                            ; $6fb7: $90
	rst $38                                          ; $6fb8: $ff
	ld d, b                                          ; $6fb9: $50
	ld a, e                                          ; $6fba: $7b
	db $fc                                           ; $6fbb: $fc
	sbc e                                            ; $6fbc: $9b
	ret nc                                           ; $6fbd: $d0

	rst $38                                          ; $6fbe: $ff
	cp $ff                                           ; $6fbf: $fe $ff
	halt                                             ; $6fc1: $76
	call z, $fc7f                                    ; $6fc2: $cc $7f $fc
	sbc [hl]                                         ; $6fc5: $9e
	ld d, l                                          ; $6fc6: $55
	ld [hl], d                                       ; $6fc7: $72
	call nz, $b872                                   ; $6fc8: $c4 $72 $b8
	sbc h                                            ; $6fcb: $9c
	nop                                              ; $6fcc: $00
	ld d, l                                          ; $6fcd: $55
	nop                                              ; $6fce: $00

jr_03b_6fcf:
	inc bc                                           ; $6fcf: $03
	db $fc                                           ; $6fd0: $fc
	ld e, e                                          ; $6fd1: $5b
	db $fc                                           ; $6fd2: $fc
	adc h                                            ; $6fd3: $8c
	ld a, a                                          ; $6fd4: $7f
	pop bc                                           ; $6fd5: $c1
	ld a, a                                          ; $6fd6: $7f
	nop                                              ; $6fd7: $00
	adc a                                            ; $6fd8: $8f
	ld b, b                                          ; $6fd9: $40
	rlca                                             ; $6fda: $07
	nop                                              ; $6fdb: $00
	rlca                                             ; $6fdc: $07
	add b                                            ; $6fdd: $80
	rlca                                             ; $6fde: $07
	nop                                              ; $6fdf: $00
	ld c, $81                                        ; $6fe0: $0e $81
	jr jr_03b_6feb                                   ; $6fe2: $18 $07

	ldh [$c0], a                                     ; $6fe4: $e0 $c0
	ldh [$fe], a                                     ; $6fe6: $e0 $fe
	ld a, a                                          ; $6fe8: $7f
	ld c, c                                          ; $6fe9: $49
	ld a, a                                          ; $6fea: $7f

jr_03b_6feb:
	cp $9d                                           ; $6feb: $fe $9d
	ret nz                                           ; $6fed: $c0

	nop                                              ; $6fee: $00
	ld a, e                                          ; $6fef: $7b
	db $fd                                           ; $6ff0: $fd
	sbc l                                            ; $6ff1: $9d
	ret nz                                           ; $6ff2: $c0

	dec bc                                           ; $6ff3: $0b
	ld c, c                                          ; $6ff4: $49
	add b                                            ; $6ff5: $80
	ld a, a                                          ; $6ff6: $7f
	ld a, [hl]                                       ; $6ff7: $7e
	add l                                            ; $6ff8: $85
	ld b, b                                          ; $6ff9: $40
	ccf                                              ; $6ffa: $3f
	ldh [rIF], a                                     ; $6ffb: $e0 $0f
	ret c                                            ; $6ffd: $d8

	rla                                              ; $6ffe: $17
	ldh a, [c]                                       ; $6fff: $f2
	and e                                            ; $7000: $a3

Jump_03b_7001:
	ld hl, $10e0                                     ; $7001: $21 $e0 $10
	ldh [$0c], a                                     ; $7004: $e0 $0c
	ldh a, [$e6]                                     ; $7006: $f0 $e6
	ld e, $ba                                        ; $7008: $1e $ba
	ld c, b                                          ; $700a: $48
	ldh a, [c]                                       ; $700b: $f2
	db $10                                           ; $700c: $10
	or e                                             ; $700d: $b3
	ld h, b                                          ; $700e: $60
	ld h, b                                          ; $700f: $60
	ret nz                                           ; $7010: $c0

	add b                                            ; $7011: $80
	ld b, b                                          ; $7012: $40
	db $fd                                           ; $7013: $fd
	adc a                                            ; $7014: $8f
	and $17                                          ; $7015: $e6 $17
	ld h, e                                          ; $7017: $63
	sub l                                            ; $7018: $95
	ld b, c                                          ; $7019: $41
	and h                                            ; $701a: $a4
	nop                                              ; $701b: $00
	db $fc                                           ; $701c: $fc
	nop                                              ; $701d: $00
	ld [hl], b                                       ; $701e: $70
	jr nz, @+$42                                     ; $701f: $20 $40

	ld [bc], a                                       ; $7021: $02
	ld b, b                                          ; $7022: $40
	ld hl, $7740                                     ; $7023: $21 $40 $77
	ld c, h                                          ; $7026: $4c
	sub l                                            ; $7027: $95
	add b                                            ; $7028: $80
	rst $38                                          ; $7029: $ff
	ret nz                                           ; $702a: $c0

	ld a, a                                          ; $702b: $7f
	ld e, h                                          ; $702c: $5c
	inc hl                                           ; $702d: $23
	ld l, $11                                        ; $702e: $2e $11
	inc e                                            ; $7030: $1c
	ld bc, $6bfe                                     ; $7031: $01 $fe $6b
	jr c, jr_03b_6fcf                                ; $7034: $38 $99

	ld l, b                                          ; $7036: $68
	sub c                                            ; $7037: $91
	cp $01                                           ; $7038: $fe $01
	ld hl, sp+$07                                    ; $703a: $f8 $07
	ld d, [hl]                                       ; $703c: $56
	add $2f                                          ; $703d: $c6 $2f

Jump_03b_703f:
	db $fc                                           ; $703f: $fc
	halt                                             ; $7040: $76
	call z, $189d                                    ; $7041: $cc $9d $18
	rst SubAFromBC                                          ; $7044: $e7
	ld l, [hl]                                       ; $7045: $6e
	call nz, $c002                                   ; $7046: $c4 $02 $c0
	inc bc                                           ; $7049: $03
	cp $7f                                           ; $704a: $fe $7f
	cp $15                                           ; $704c: $fe $15
	nop                                              ; $704e: $00
	sbc e                                            ; $704f: $9b
	ld b, h                                          ; $7050: $44
	inc [hl]                                         ; $7051: $34
	ld b, e                                          ; $7052: $43

jr_03b_7053:
	ld b, h                                          ; $7053: $44
	db $db                                           ; $7054: $db
	inc sp                                           ; $7055: $33
	ld [hl], e                                       ; $7056: $73
	or $9e                                           ; $7057: $f6 $9e
	ld h, e                                          ; $7059: $63
	ld [hl], e                                       ; $705a: $73
	or $de                                           ; $705b: $f6 $de
	ld b, h                                          ; $705d: $44
	sbc $63                                          ; $705e: $de $63
	sbc $33                                          ; $7060: $de $33
	ld h, e                                          ; $7062: $63
	add l                                            ; $7063: $85
	sbc e                                            ; $7064: $9b
	cp $05                                           ; $7065: $fe $05
	jp nc, $77e1                                     ; $7067: $d2 $e1 $77

	cp $9b                                           ; $706a: $fe $9b
	ld bc, $fdfa                                     ; $706c: $01 $fa $fd
	cp $77                                           ; $706f: $fe $77
	cp $9c                                           ; $7071: $fe $9c
	inc b                                            ; $7073: $04
	ld d, a                                          ; $7074: $57
	daa                                              ; $7075: $27
	ld a, e                                          ; $7076: $7b
	cp $9a                                           ; $7077: $fe $9a
	cpl                                              ; $7079: $2f
	ld h, h                                          ; $707a: $64
	jp $dfaf                                         ; $707b: $c3 $af $df


	ld [hl], a                                       ; $707e: $77
	cp $94                                           ; $707f: $fe $94
	cp e                                             ; $7081: $bb
	ld h, b                                          ; $7082: $60
	ldh [$d2], a                                     ; $7083: $e0 $d2
	jp hl                                            ; $7085: $e9


	jp nc, $f3e9                                     ; $7086: $d2 $e9 $f3

	push de                                          ; $7089: $d5
	add b                                            ; $708a: $80
	rst $38                                          ; $708b: $ff
	ld [hl], a                                       ; $708c: $77
	ldh [c], a                                       ; $708d: $e2
	add b                                            ; $708e: $80
	db $fc                                           ; $708f: $fc
	ld a, [hl-]                                      ; $7090: $3a
	ld h, b                                          ; $7091: $60
	nop                                              ; $7092: $00
	rra                                              ; $7093: $1f
	pop bc                                           ; $7094: $c1
	and b                                            ; $7095: $a0
	ret nz                                           ; $7096: $c0

	ldh [$c0], a                                     ; $7097: $e0 $c0
	nop                                              ; $7099: $00
	rst $38                                          ; $709a: $ff
	rst $38                                          ; $709b: $ff
	ccf                                              ; $709c: $3f
	ld e, a                                          ; $709d: $5f
	ccf                                              ; $709e: $3f
	rra                                              ; $709f: $1f
	ccf                                              ; $70a0: $3f
	ld c, $00                                        ; $70a1: $0e $00
	cp $fd                                           ; $70a3: $fe $fd
	ei                                               ; $70a5: $fb
	push af                                          ; $70a6: $f5
	db $ed                                           ; $70a7: $ed
	db $db                                           ; $70a8: $db
	ld bc, $fcfe                                     ; $70a9: $01 $fe $fc
	ld hl, sp-$10                                    ; $70ac: $f8 $f0
	sbc b                                            ; $70ae: $98
	ldh [c], a                                       ; $70af: $e2
	jp nz, $2086                                     ; $70b0: $c2 $86 $20

	ld c, a                                          ; $70b3: $4f
	rst $38                                          ; $70b4: $ff
	and h                                            ; $70b5: $a4
	db $dd                                           ; $70b6: $dd
	jr nz, jr_03b_7053                               ; $70b7: $20 $9a

	rra                                              ; $70b9: $1f
	jr nc, jr_03b_70bc                               ; $70ba: $30 $00

jr_03b_70bc:
	ld a, e                                          ; $70bc: $7b
	or $de                                           ; $70bd: $f6 $de
	ldh a, [$f9]                                     ; $70bf: $f0 $f9
	sbc h                                            ; $70c1: $9c
	ret nz                                           ; $70c2: $c0

	add b                                            ; $70c3: $80
	add b                                            ; $70c4: $80
	db $fc                                           ; $70c5: $fc
	sbc d                                            ; $70c6: $9a
	ld [$090a], sp                                   ; $70c7: $08 $0a $09
	add hl, bc                                       ; $70ca: $09
	ld c, $fe                                        ; $70cb: $0e $fe
	sbc d                                            ; $70cd: $9a
	inc bc                                           ; $70ce: $03
	ld bc, $0702                                     ; $70cf: $01 $02 $07
	ld bc, $84fe                                     ; $70d2: $01 $fe $84
	ld b, $ab                                        ; $70d5: $06 $ab
	ld d, l                                          ; $70d7: $55
	nop                                              ; $70d8: $00
	rst $38                                          ; $70d9: $ff
	inc a                                            ; $70da: $3c
	nop                                              ; $70db: $00

jr_03b_70dc:
	nop                                              ; $70dc: $00
	db $fc                                           ; $70dd: $fc
	ld d, [hl]                                       ; $70de: $56
	xor e                                            ; $70df: $ab
	rst $38                                          ; $70e0: $ff
	rst $38                                          ; $70e1: $ff
	inc bc                                           ; $70e2: $03
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	db $10                                           ; $70e5: $10
	jr nz, @-$2e                                     ; $70e6: $20 $d0

	ld [$08f8], sp                                   ; $70e8: $08 $f8 $08
	ld [$1000], sp                                   ; $70eb: $08 $00 $10
	jr nc, @-$1e                                     ; $70ee: $30 $e0

	sbc $f8                                          ; $70f0: $de $f8
	sub l                                            ; $70f2: $95
	ld [$0104], sp                              ; $70f3: $08 $04 $01
	ld hl, $2200                                     ; $70f6: $21 $00 $22
	ld [bc], a                                       ; $70f9: $02
	daa                                              ; $70fa: $27
	rlca                                             ; $70fb: $07
	jr nz, jr_03b_70dc                               ; $70fc: $20 $de

	ld b, c                                          ; $70fe: $41
	sbc $43                                          ; $70ff: $de $43
	sub a                                            ; $7101: $97
	ld b, d                                          ; $7102: $42
	ld b, [hl]                                       ; $7103: $46
	add e                                            ; $7104: $83
	call z, $fe7d                                    ; $7105: $cc $7d $fe
	nop                                              ; $7108: $00
	rst $38                                          ; $7109: $ff
	ld a, e                                          ; $710a: $7b
	or h                                             ; $710b: $b4
	sbc [hl]                                         ; $710c: $9e
	add e                                            ; $710d: $83
	ld a, e                                          ; $710e: $7b
	ld sp, hl                                        ; $710f: $f9
	sub d                                            ; $7110: $92
	rst $38                                          ; $7111: $ff
	ld a, a                                          ; $7112: $7f
	nop                                              ; $7113: $00
	push de                                          ; $7114: $d5
	ld a, a                                          ; $7115: $7f
	dec d                                            ; $7116: $15
	nop                                              ; $7117: $00
	push af                                          ; $7118: $f5
	rst $38                                          ; $7119: $ff
	rst $38                                          ; $711a: $ff
	rrca                                             ; $711b: $0f
	ld a, [hl+]                                      ; $711c: $2a
	rst $38                                          ; $711d: $ff
	cp $97                                           ; $711e: $fe $97
	cp $01                                           ; $7120: $fe $01
	nop                                              ; $7122: $00
	ld d, l                                          ; $7123: $55
	ld a, [$005f]                                    ; $7124: $fa $5f $00
	ld d, h                                          ; $7127: $54
	sbc $ff                                          ; $7128: $de $ff
	sbc h                                            ; $712a: $9c
	xor d                                            ; $712b: $aa
	push af                                          ; $712c: $f5
	rrca                                             ; $712d: $0f
	cp $7f                                           ; $712e: $fe $7f
	db $eb                                           ; $7130: $eb
	ld a, e                                          ; $7131: $7b
	and d                                            ; $7132: $a2
	sbc b                                            ; $7133: $98
	xor a                                            ; $7134: $af
	nop                                              ; $7135: $00
	ld [$9ffc], a                                    ; $7136: $ea $fc $9f
	xor d                                            ; $7139: $aa
	rst $38                                          ; $713a: $ff
	ld [hl], a                                       ; $713b: $77
	rst SubAFromDE                                          ; $713c: $df
	ld a, a                                          ; $713d: $7f
	rst GetHLinHL                                          ; $713e: $cf
	sub a                                            ; $713f: $97
	ld d, h                                          ; $7140: $54
	nop                                              ; $7141: $00
	ret nz                                           ; $7142: $c0

	rst $38                                          ; $7143: $ff
	nop                                              ; $7144: $00
	xor d                                            ; $7145: $aa
	nop                                              ; $7146: $00
	rst $38                                          ; $7147: $ff
	ld a, e                                          ; $7148: $7b
	sub d                                            ; $7149: $92
	sbc [hl]                                         ; $714a: $9e
	rra                                              ; $714b: $1f
	ld a, e                                          ; $714c: $7b
	ldh a, [$9e]                                     ; $714d: $f0 $9e
	rst $38                                          ; $714f: $ff
	sbc $6c                                          ; $7150: $de $6c
	sbc d                                            ; $7152: $9a
	rst AddAOntoHL                                          ; $7153: $ef
	ld d, l                                          ; $7154: $55
	xor d                                            ; $7155: $aa
	rrca                                             ; $7156: $0f
	rst $38                                          ; $7157: $ff
	db $dd                                           ; $7158: $dd
	rst JumpTable                                          ; $7159: $c7
	rst $38                                          ; $715a: $ff
	sbc [hl]                                         ; $715b: $9e
	ldh a, [$6f]                                     ; $715c: $f0 $6f
	db $db                                           ; $715e: $db
	sbc h                                            ; $715f: $9c
	add b                                            ; $7160: $80
	ld d, l                                          ; $7161: $55
	inc bc                                           ; $7162: $03
	db $dd                                           ; $7163: $dd
	rst $38                                          ; $7164: $ff
	cp $9e                                           ; $7165: $fe $9e
	db $fc                                           ; $7167: $fc
	ld [hl], e                                       ; $7168: $73
	cp e                                             ; $7169: $bb
	sbc h                                            ; $716a: $9c
	xor e                                            ; $716b: $ab
	nop                                              ; $716c: $00
	ld [$ffdc], a                                    ; $716d: $ea $dc $ff
	ei                                               ; $7170: $fb
	ld a, a                                          ; $7171: $7f
	ld sp, hl                                        ; $7172: $f9
	sbc l                                            ; $7173: $9d
	rst $38                                          ; $7174: $ff
	dec b                                            ; $7175: $05
	ld a, e                                          ; $7176: $7b
	or c                                             ; $7177: $b1
	ld l, a                                          ; $7178: $6f
	ldh a, [$97]                                     ; $7179: $f0 $97
	ld bc, $ac52                                     ; $717b: $01 $52 $ac
	ld sp, hl                                        ; $717e: $f9
	ld [hl], d                                       ; $717f: $72
	ld [hl], h                                       ; $7180: $74
	ld h, h                                          ; $7181: $64
	and $de                                          ; $7182: $e6 $de
	rst $38                                          ; $7184: $ff
	ld a, d                                          ; $7185: $7a
	cp $91                                           ; $7186: $fe $91
	ld hl, sp+$78                                    ; $7188: $f8 $78
	sbc h                                            ; $718a: $9c
	ld l, [hl]                                       ; $718b: $6e
	db $dd                                           ; $718c: $dd
	ei                                               ; $718d: $fb
	jp Jump_03b_587d                                 ; $718e: $c3 $7d $58


	add b                                            ; $7191: $80
	db $e3                                           ; $7192: $e3
	sbc a                                            ; $7193: $9f
	ld a, $3c                                        ; $7194: $3e $3c
	ld a, e                                          ; $7196: $7b
	add hl, hl                                       ; $7197: $29
	sub [hl]                                         ; $7198: $96
	nop                                              ; $7199: $00
	inc e                                            ; $719a: $1c
	sub [hl]                                         ; $719b: $96
	sub e                                            ; $719c: $93
	sub c                                            ; $719d: $91
	ld sp, $f030                                     ; $719e: $31 $30 $f0
	ldh [$da], a                                     ; $71a1: $e0 $da
	rrca                                             ; $71a3: $0f
	add b                                            ; $71a4: $80
	rra                                              ; $71a5: $1f
	adc e                                            ; $71a6: $8b
	ld d, c                                          ; $71a7: $51
	ld [hl+], a                                      ; $71a8: $22
	call nz, $f8df                                   ; $71a9: $c4 $df $f8
	ldh a, [c]                                       ; $71ac: $f2
	call nc, $a070                                   ; $71ad: $d4 $70 $a0
	pop bc                                           ; $71b0: $c1
	add e                                            ; $71b1: $83
	add b                                            ; $71b2: $80
	add e                                            ; $71b3: $83
	add c                                            ; $71b4: $81
	add d                                            ; $71b5: $82
	ld c, [hl]                                       ; $71b6: $4e
	ld e, $1e                                        ; $71b7: $1e $1e
	ld c, $27                                        ; $71b9: $0e $27
	rrca                                             ; $71bb: $0f
	rlca                                             ; $71bc: $07
	ld b, $90                                        ; $71bd: $06 $90
	ldh [$a0], a                                     ; $71bf: $e0 $a0
	sub b                                            ; $71c1: $90
	ld [$9500], sp                                   ; $71c2: $08 $00 $95
	ld [bc], a                                       ; $71c5: $02
	inc bc                                           ; $71c6: $03
	ld h, b                                          ; $71c7: $60
	jr nz, jr_03b_71ea                               ; $71c8: $20 $20

	ld d, b                                          ; $71ca: $50
	and b                                            ; $71cb: $a0
	ld b, b                                          ; $71cc: $40
	and b                                            ; $71cd: $a0
	ld d, b                                          ; $71ce: $50
	sbc $f0                                          ; $71cf: $de $f0
	sbc l                                            ; $71d1: $9d
	ldh [rLCDC], a                                   ; $71d2: $e0 $40
	ld l, [hl]                                       ; $71d4: $6e
	call $d4e0                                       ; $71d5: $cd $e0 $d4
	sbc [hl]                                         ; $71d8: $9e
	rlca                                             ; $71d9: $07
	db $dd                                           ; $71da: $dd
	rrca                                             ; $71db: $0f
	sbc d                                            ; $71dc: $9a
	ld c, $0d                                        ; $71dd: $0e $0d
	ld a, [bc]                                       ; $71df: $0a
	inc bc                                           ; $71e0: $03
	rlca                                             ; $71e1: $07
	ld [hl], e                                       ; $71e2: $73
	or $9c                                           ; $71e3: $f6 $9c
	rrca                                             ; $71e5: $0f
	cp $be                                           ; $71e6: $fe $be
	sbc $ff                                          ; $71e8: $de $ff

jr_03b_71ea:
	sbc c                                            ; $71ea: $99
	rst FarCall                                          ; $71eb: $f7
	ld l, e                                          ; $71ec: $6b
	push de                                          ; $71ed: $d5
	cp h                                             ; $71ee: $bc
	ld e, $1e                                        ; $71ef: $1e $1e
	ld e, e                                          ; $71f1: $5b
	dec a                                            ; $71f2: $3d
	ldh [$d7], a                                     ; $71f3: $e0 $d7
	ld a, d                                          ; $71f5: $7a
	db $db                                           ; $71f6: $db
	db $f4                                           ; $71f7: $f4
	sbc [hl]                                         ; $71f8: $9e
	ldh [rBGP], a                                    ; $71f9: $e0 $47
	add sp, -$62                                     ; $71fb: $e8 $9e
	ld hl, sp+$6a                                    ; $71fd: $f8 $6a
	db $eb                                           ; $71ff: $eb
	sbc [hl]                                         ; $7200: $9e
	rlca                                             ; $7201: $07
	ld h, [hl]                                       ; $7202: $66
	db $e3                                           ; $7203: $e3
	ld l, e                                          ; $7204: $6b
	ld hl, sp+$66                                    ; $7205: $f8 $66
	db $d3                                           ; $7207: $d3
	ld l, e                                          ; $7208: $6b
	rst SubAFromBC                                          ; $7209: $e7
	ld h, a                                          ; $720a: $67
	add sp, $7d                                      ; $720b: $e8 $7d
	ret c                                            ; $720d: $d8

	halt                                             ; $720e: $76
	ld a, [de]                                       ; $720f: $1a
	ld a, d                                          ; $7210: $7a
	ld d, l                                          ; $7211: $55
	ld l, e                                          ; $7212: $6b
	rst AddAOntoHL                                          ; $7213: $ef
	rst SubAFromDE                                          ; $7214: $df
	ld b, [hl]                                       ; $7215: $46
	rst SubAFromDE                                          ; $7216: $df
	rst JumpTable                                          ; $7217: $c7
	rst SubAFromDE                                          ; $7218: $df
	push bc                                          ; $7219: $c5
	sbc h                                            ; $721a: $9c
	ld b, c                                          ; $721b: $41
	nop                                              ; $721c: $00
	ld hl, sp-$22                                    ; $721d: $f8 $de
	ld a, b                                          ; $721f: $78
	rst SubAFromDE                                          ; $7220: $df
	ld a, d                                          ; $7221: $7a
	sub l                                            ; $7222: $95
	ld a, [hl]                                       ; $7223: $7e
	ccf                                              ; $7224: $3f
	ld bc, $afa7                                     ; $7225: $01 $a7 $af
	db $fc                                           ; $7228: $fc
	ld hl, sp+$58                                    ; $7229: $f8 $58
	ld d, b                                          ; $722b: $50
	ld b, b                                          ; $722c: $40
	ld [hl], l                                       ; $722d: $75
	db $dd                                           ; $722e: $dd
	adc [hl]                                         ; $722f: $8e
	rlca                                             ; $7230: $07
	and a                                            ; $7231: $a7
	xor a                                            ; $7232: $af
	cp a                                             ; $7233: $bf
	pop bc                                           ; $7234: $c1
	pop bc                                           ; $7235: $c1
	add e                                            ; $7236: $83
	add l                                            ; $7237: $85
	dec c                                            ; $7238: $0d
	ld bc, $1111                                     ; $7239: $01 $11 $11
	ccf                                              ; $723c: $3f
	ccf                                              ; $723d: $3f
	ld a, a                                          ; $723e: $7f
	ld a, a                                          ; $723f: $7f
	ld a, [$f4de]                                    ; $7240: $fa $de $f4
	adc l                                            ; $7243: $8d
	db $fc                                           ; $7244: $fc
	sbc h                                            ; $7245: $9c
	ld a, $fb                                        ; $7246: $3e $fb
	pop af                                           ; $7248: $f1
	ld [hl], c                                       ; $7249: $71
	db $eb                                           ; $724a: $eb
	sbc d                                            ; $724b: $9a
	add d                                            ; $724c: $82
	ld [bc], a                                       ; $724d: $02
	ld bc, $7020                                     ; $724e: $01 $20 $70
	ldh [$d0], a                                     ; $7251: $e0 $d0
	pop bc                                           ; $7253: $c1
	ld b, $0e                                        ; $7254: $06 $0e
	sbc $08                                          ; $7256: $de $08
	adc h                                            ; $7258: $8c
	jr jr_03b_7297                                   ; $7259: $18 $3c

	cp $03                                           ; $725b: $fe $03
	inc bc                                           ; $725d: $03
	rlca                                             ; $725e: $07
	nop                                              ; $725f: $00
	add b                                            ; $7260: $80
	call nz, Call_03b_7ede                           ; $7261: $c4 $de $7e
	xor d                                            ; $7264: $aa
	ld d, l                                          ; $7265: $55
	xor d                                            ; $7266: $aa
	ld d, l                                          ; $7267: $55
	ld [bc], a                                       ; $7268: $02
	add b                                            ; $7269: $80
	ld [hl], b                                       ; $726a: $70
	adc $f8                                          ; $726b: $ce $f8
	sbc [hl]                                         ; $726d: $9e
	ld b, b                                          ; $726e: $40
	ld a, e                                          ; $726f: $7b
	xor $9c                                          ; $7270: $ee $9c
	dec d                                            ; $7272: $15
	rrca                                             ; $7273: $0f
	dec b                                            ; $7274: $05
	ei                                               ; $7275: $fb
	rst SubAFromDE                                          ; $7276: $df
	rrca                                             ; $7277: $0f
	cp $9a                                           ; $7278: $fe $9a
	ld d, b                                          ; $727a: $50
	xor d                                            ; $727b: $aa
	ld d, l                                          ; $727c: $55
	ld a, [$6b8f]                                    ; $727d: $fa $8f $6b
	ld b, e                                          ; $7280: $43
	ld [hl], e                                       ; $7281: $73
	ld a, d                                          ; $7282: $7a
	ld a, e                                          ; $7283: $7b
	sbc $63                                          ; $7284: $de $63
	ld c, c                                          ; $7286: $49
	ld a, [hl]                                       ; $7287: $7e
	add $7f                                          ; $7288: $c6 $7f
	cp $9b                                           ; $728a: $fe $9b
	adc l                                            ; $728c: $8d
	ld e, d                                          ; $728d: $5a
	xor l                                            ; $728e: $ad
	jp c, $0fda                                      ; $728f: $da $da $0f

	sbc h                                            ; $7292: $9c
	adc a                                            ; $7293: $8f
	ld l, e                                          ; $7294: $6b
	push de                                          ; $7295: $d5
	ld a, e                                          ; $7296: $7b

jr_03b_7297:
	cp $9d                                           ; $7297: $fe $9d
	push af                                          ; $7299: $f5
	ld l, e                                          ; $729a: $6b
	ld a, c                                          ; $729b: $79
	sbc l                                            ; $729c: $9d
	db $db                                           ; $729d: $db
	rst $38                                          ; $729e: $ff
	ei                                               ; $729f: $fb
	sbc l                                            ; $72a0: $9d
	xor b                                            ; $72a1: $a8
	ld d, l                                          ; $72a2: $55
	ldh a, [c]                                       ; $72a3: $f2
	ld b, a                                          ; $72a4: $47
	ldh a, [$f2]                                     ; $72a5: $f0 $f2
	sbc l                                            ; $72a7: $9d
	ld [bc], a                                       ; $72a8: $02
	ld b, $fb                                        ; $72a9: $06 $fb
	ld a, e                                          ; $72ab: $7b
	ld e, e                                          ; $72ac: $5b
	db $fc                                           ; $72ad: $fc
	sbc l                                            ; $72ae: $9d
	inc c                                            ; $72af: $0c
	jr nz, @+$6d                                     ; $72b0: $20 $6b

	ldh a, [$9e]                                     ; $72b2: $f0 $9e
	jr jr_03b_7329                                   ; $72b4: $18 $73

	ld l, d                                          ; $72b6: $6a
	sbc h                                            ; $72b7: $9c
	ldh a, [rAUD4LEN]                                ; $72b8: $f0 $20
	inc c                                            ; $72ba: $0c

jr_03b_72bb:
	ld l, a                                          ; $72bb: $6f
	ld h, c                                          ; $72bc: $61
	sbc [hl]                                         ; $72bd: $9e
	ret nz                                           ; $72be: $c0

	ld a, d                                          ; $72bf: $7a
	db $e4                                           ; $72c0: $e4
	sbc c                                            ; $72c1: $99
	inc bc                                           ; $72c2: $03
	ld a, a                                          ; $72c3: $7f
	call nz, $e3c3                                   ; $72c4: $c4 $c3 $e3
	ld [hl], b                                       ; $72c7: $70
	db $fd                                           ; $72c8: $fd
	adc e                                            ; $72c9: $8b
	jr c, jr_03b_72cc                                ; $72ca: $38 $00

jr_03b_72cc:
	inc e                                            ; $72cc: $1c
	add b                                            ; $72cd: $80
	rlca                                             ; $72ce: $07
	nop                                              ; $72cf: $00
	ld hl, sp+$21                                    ; $72d0: $f8 $21
	ld [bc], a                                       ; $72d2: $02
	add hl, de                                       ; $72d3: $19
	ret nz                                           ; $72d4: $c0

	rrca                                             ; $72d5: $0f
	nop                                              ; $72d6: $00
	inc bc                                           ; $72d7: $03
	inc bc                                           ; $72d8: $03
	jp $e303                                         ; $72d9: $c3 $03 $e3


	inc bc                                           ; $72dc: $03
	rrca                                             ; $72dd: $0f
	sbc $80                                          ; $72de: $de $80
	call c, Call_03b_77c0                            ; $72e0: $dc $c0 $77
	ld h, $de                                        ; $72e3: $26 $de
	ld b, b                                          ; $72e5: $40
	sub l                                            ; $72e6: $95
	ret nz                                           ; $72e7: $c0

	and b                                            ; $72e8: $a0
	and b                                            ; $72e9: $a0
	or b                                             ; $72ea: $b0
	or b                                             ; $72eb: $b0
	jr c, @+$40                                      ; $72ec: $38 $3e

	ccf                                              ; $72ee: $3f
	cp a                                             ; $72ef: $bf
	ccf                                              ; $72f0: $3f
	jp c, $fb1f                                      ; $72f1: $da $1f $fb

	ld a, l                                          ; $72f4: $7d
	xor c                                            ; $72f5: $a9
	reti                                             ; $72f6: $d9


	rst $38                                          ; $72f7: $ff
	sub h                                            ; $72f8: $94
	dec d                                            ; $72f9: $15
	add hl, de                                       ; $72fa: $19
	ld hl, $4322                                     ; $72fb: $21 $22 $43
	push bc                                          ; $72fe: $c5
	add e                                            ; $72ff: $83
	rra                                              ; $7300: $1f
	ld hl, sp-$20                                    ; $7301: $f8 $e0
	ldh [$7a], a                                     ; $7303: $e0 $7a
	or l                                             ; $7305: $b5
	rst SubAFromDE                                          ; $7306: $df
	rrca                                             ; $7307: $0f
	add [hl]                                         ; $7308: $86
	xor $dc                                          ; $7309: $ee $dc
	ldh a, [$ec]                                     ; $730b: $f0 $ec
	ld sp, hl                                        ; $730d: $f9
	rst FarCall                                          ; $730e: $f7
	rst $38                                          ; $730f: $ff
	ldh [hDisp1_SCY], a                                     ; $7310: $e0 $90
	and b                                            ; $7312: $a0
	adc b                                            ; $7313: $88
	sbc b                                            ; $7314: $98
	ldh a, [$f8]                                     ; $7315: $f0 $f8
	ldh [$f0], a                                     ; $7317: $e0 $f0
	rst AddAOntoHL                                          ; $7319: $ef
	sub $ee                                          ; $731a: $d6 $ee
	sub $af                                          ; $731c: $d6 $af
	rst SubAFromHL                                          ; $731e: $d7
	xor a                                            ; $731f: $af
	ld d, a                                          ; $7320: $57
	cp $da                                           ; $7321: $fe $da
	rst $38                                          ; $7323: $ff
	sub a                                            ; $7324: $97
	jr z, jr_03b_72bb                                ; $7325: $28 $94

	nop                                              ; $7327: $00
	nop                                              ; $7328: $00

jr_03b_7329:
	add b                                            ; $7329: $80
	add b                                            ; $732a: $80
	call nc, $63a8                                   ; $732b: $d4 $a8 $63
	ld b, [hl]                                       ; $732e: $46
	sbc e                                            ; $732f: $9b
	inc b                                            ; $7330: $04
	ld [$0100], sp                                   ; $7331: $08 $00 $01
	ld a, e                                          ; $7334: $7b
	ei                                               ; $7335: $fb
	ld l, c                                          ; $7336: $69
	ld b, c                                          ; $7337: $41
	sub [hl]                                         ; $7338: $96
	rra                                              ; $7339: $1f
	db $10                                           ; $733a: $10
	ld hl, $8442                                     ; $733b: $21 $42 $84
	nop                                              ; $733e: $00
	inc bc                                           ; $733f: $03
	ld b, $48                                        ; $7340: $06 $48
	call c, $94ff                                    ; $7342: $dc $ff $94
	db $fc                                           ; $7345: $fc
	ld sp, hl                                        ; $7346: $f9
	rst FarCall                                          ; $7347: $f7
	add h                                            ; $7348: $84
	ld [$0010], sp                                   ; $7349: $08 $10 $00
	adc l                                            ; $734c: $8d
	dec sp                                           ; $734d: $3b
	ld [hl], a                                       ; $734e: $77
	rst AddAOntoHL                                          ; $734f: $ef
	db $dd                                           ; $7350: $dd
	rst $38                                          ; $7351: $ff
	sub h                                            ; $7352: $94
	ld [hl], d                                       ; $7353: $72
	call nz, $1088                                   ; $7354: $c4 $88 $10
	dec a                                            ; $7357: $3d
	ld c, d                                          ; $7358: $4a
	adc l                                            ; $7359: $8d
	ld a, [bc]                                       ; $735a: $0a
	db $ed                                           ; $735b: $ed
	jp c, Jump_03b_73bd                              ; $735c: $da $bd $73

	or c                                             ; $735f: $b1
	sbc e                                            ; $7360: $9b
	rra                                              ; $7361: $1f
	cpl                                              ; $7362: $2f
	ld c, a                                          ; $7363: $4f
	rrca                                             ; $7364: $0f
	halt                                             ; $7365: $76
	call nz, $fb9b                                   ; $7366: $c4 $9b $fb
	push af                                          ; $7369: $f5
	ei                                               ; $736a: $fb
	rst FarCall                                          ; $736b: $f7
	db $db                                           ; $736c: $db
	rst $38                                          ; $736d: $ff
	rst SubAFromDE                                          ; $736e: $df
	sbc a                                            ; $736f: $9f
	ld a, h                                          ; $7370: $7c
	ld l, b                                          ; $7371: $68
	sbc c                                            ; $7372: $99
	rlca                                             ; $7373: $07
	inc b                                            ; $7374: $04
	ld [$8410], sp                                   ; $7375: $08 $10 $84
	jr jr_03b_73f4                                   ; $7378: $18 $7a

	add l                                            ; $737a: $85
	sbc $ff                                          ; $737b: $de $ff
	sub l                                            ; $737d: $95
	ld a, e                                          ; $737e: $7b
	rst SubAFromBC                                          ; $737f: $e7
	xor d                                            ; $7380: $aa
	ld d, l                                          ; $7381: $55
	ld hl, sp+$22                                    ; $7382: $f8 $22
	ld b, h                                          ; $7384: $44
	adc b                                            ; $7385: $88
	ld h, $cd                                        ; $7386: $26 $cd
	ld [hl], l                                       ; $7388: $75
	xor $df                                          ; $7389: $ee $df
	rst $38                                          ; $738b: $ff
	sbc l                                            ; $738c: $9d
	reti                                             ; $738d: $d9


	inc sp                                           ; $738e: $33
	halt                                             ; $738f: $76
	ld [hl], h                                       ; $7390: $74
	ld a, e                                          ; $7391: $7b
	sbc l                                            ; $7392: $9d
	sbc [hl]                                         ; $7393: $9e
	adc b                                            ; $7394: $88
	ld [hl], c                                       ; $7395: $71
	push bc                                          ; $7396: $c5
	rst SubAFromDE                                          ; $7397: $df
	rst $38                                          ; $7398: $ff
	sub d                                            ; $7399: $92
	ld a, a                                          ; $739a: $7f
	ld b, $57                                        ; $739b: $06 $57
	xor e                                            ; $739d: $ab
	ld d, a                                          ; $739e: $57
	rst $38                                          ; $739f: $ff
	inc de                                           ; $73a0: $13
	daa                                              ; $73a1: $27
	ld b, a                                          ; $73a2: $47
	rlca                                             ; $73a3: $07
	ld b, $02                                        ; $73a4: $06 $02
	ld [bc], a                                       ; $73a6: $02
	db $dd                                           ; $73a7: $dd
	rst $38                                          ; $73a8: $ff
	sbc h                                            ; $73a9: $9c
	rrca                                             ; $73aa: $0f
	ld bc, $7a3f                                     ; $73ab: $01 $3f $7a
	pop bc                                           ; $73ae: $c1
	sbc e                                            ; $73af: $9b
	jr nc, @+$08                                     ; $73b0: $30 $06

	nop                                              ; $73b2: $00
	ld e, $76                                        ; $73b3: $1e $76
	pop bc                                           ; $73b5: $c1
	sbc h                                            ; $73b6: $9c
	ld bc, $9c38                                     ; $73b7: $01 $38 $9c
	ld a, c                                          ; $73ba: $79
	dec c                                            ; $73bb: $0d
	sbc d                                            ; $73bc: $9a

Jump_03b_73bd:
	inc a                                            ; $73bd: $3c
	or [hl]                                          ; $73be: $b6
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	ld h, b                                          ; $73c1: $60
	ld [hl], d                                       ; $73c2: $72
	inc d                                            ; $73c3: $14
	ld a, b                                          ; $73c4: $78
	rst GetHLinHL                                          ; $73c5: $cf
	add d                                            ; $73c6: $82
	inc bc                                           ; $73c7: $03
	ld a, $fd                                        ; $73c8: $3e $fd
	ld a, [$0215]                                    ; $73ca: $fa $15 $02
	jr z, jr_03b_73cf                                ; $73cd: $28 $00

jr_03b_73cf:
	ld bc, $1e03                                     ; $73cf: $01 $03 $1e
	call $181a                                       ; $73d2: $cd $1a $18
	jr nc, jr_03b_744b                               ; $73d5: $30 $74

	adc [hl]                                         ; $73d7: $8e
	or h                                             ; $73d8: $b4
	ld b, b                                          ; $73d9: $40
	or l                                             ; $73da: $b5
	xor a                                            ; $73db: $af
	push de                                          ; $73dc: $d5
	ld d, h                                          ; $73dd: $54
	ld a, a                                          ; $73de: $7f
	rst $38                                          ; $73df: $ff
	ld a, a                                          ; $73e0: $7f
	cp a                                             ; $73e1: $bf
	ld c, d                                          ; $73e2: $4a
	ld d, b                                          ; $73e3: $50
	ld a, e                                          ; $73e4: $7b
	ret c                                            ; $73e5: $d8

	adc b                                            ; $73e6: $88
	ret c                                            ; $73e7: $d8

	ld h, h                                          ; $73e8: $64
	jp nc, $85aa                                     ; $73e9: $d2 $aa $85

	dec b                                            ; $73ec: $05
	ld [bc], a                                       ; $73ed: $02
	ldh [$38], a                                     ; $73ee: $e0 $38
	sbc h                                            ; $73f0: $9c
	ld c, $06                                        ; $73f1: $0e $06
	inc bc                                           ; $73f3: $03

jr_03b_73f4:
	inc bc                                           ; $73f4: $03
	ld bc, $bebf                                     ; $73f5: $01 $bf $be
	ld sp, $1927                                     ; $73f8: $31 $27 $19
	ccf                                              ; $73fb: $3f
	cp e                                             ; $73fc: $bb
	push af                                          ; $73fd: $f5
	db $dd                                           ; $73fe: $dd
	rra                                              ; $73ff: $1f
	sbc $3f                                          ; $7400: $de $3f
	sub h                                            ; $7402: $94
	ld a, a                                          ; $7403: $7f
	cp $fd                                           ; $7404: $fe $fd
	rst $38                                          ; $7406: $ff
	ld d, l                                          ; $7407: $55
	xor e                                            ; $7408: $ab
	rst $38                                          ; $7409: $ff
	cp $51                                           ; $740a: $fe $51
	ld hl, sp-$80                                    ; $740c: $f8 $80
	call c, $94ff                                    ; $740e: $dc $ff $94
	cp $3a                                           ; $7411: $fe $3a
	dec d                                            ; $7413: $15
	ei                                               ; $7414: $fb
	ld a, a                                          ; $7415: $7f
	rst FarCall                                          ; $7416: $f7
	jp z, $aa57                                      ; $7417: $ca $57 $aa

	rrca                                             ; $741a: $0f
	rra                                              ; $741b: $1f
	ld [hl], h                                       ; $741c: $74
	cp b                                             ; $741d: $b8
	sub c                                            ; $741e: $91
	xor a                                            ; $741f: $af
	ld e, a                                          ; $7420: $5f
	ldh [$e0], a                                     ; $7421: $e0 $e0
	ret nz                                           ; $7423: $c0

	ldh [$57], a                                     ; $7424: $e0 $57
	xor e                                            ; $7426: $ab
	ld d, l                                          ; $7427: $55
	cp [hl]                                          ; $7428: $be
	ldh [$c0], a                                     ; $7429: $e0 $c0
	ret nz                                           ; $742b: $c0

	ldh [$dd], a                                     ; $742c: $e0 $dd
	rst $38                                          ; $742e: $ff
	sbc b                                            ; $742f: $98
	cpl                                              ; $7430: $2f
	ld d, a                                          ; $7431: $57
	ld l, e                                          ; $7432: $6b
	ld d, a                                          ; $7433: $57
	cp e                                             ; $7434: $bb
	db $dd                                           ; $7435: $dd
	ld l, a                                          ; $7436: $6f
	ld [hl], e                                       ; $7437: $73
	jr nz, @+$81                                     ; $7438: $20 $7f

	sbc h                                            ; $743a: $9c
	rst SubAFromDE                                          ; $743b: $df
	rst $38                                          ; $743c: $ff
	ld a, [hl]                                       ; $743d: $7e
	db $e3                                           ; $743e: $e3
	rst $38                                          ; $743f: $ff
	sbc e                                            ; $7440: $9b
	jr z, jr_03b_7497                                ; $7441: $28 $54

	jr z, jr_03b_7495                                ; $7443: $28 $50

	ld a, d                                          ; $7445: $7a
	cp e                                             ; $7446: $bb
	call c, $9b80                                    ; $7447: $dc $80 $9b
	db $10                                           ; $744a: $10

jr_03b_744b:
	ld bc, $1c02                                     ; $744b: $01 $02 $1c
	ld a, e                                          ; $744e: $7b
	and [hl]                                         ; $744f: $a6
	sbc [hl]                                         ; $7450: $9e
	dec d                                            ; $7451: $15
	db $db                                           ; $7452: $db
	rra                                              ; $7453: $1f
	rst SubAFromDE                                          ; $7454: $df
	ccf                                              ; $7455: $3f
	sbc d                                            ; $7456: $9a
	sub l                                            ; $7457: $95
	dec bc                                           ; $7458: $0b
	rla                                              ; $7459: $17
	cpl                                              ; $745a: $2f
	jp $ffde                                         ; $745b: $c3 $de $ff


	sbc e                                            ; $745e: $9b
	xor $fc                                          ; $745f: $ee $fc
	ld hl, sp-$0f                                    ; $7461: $f8 $f1
	ld [hl], a                                       ; $7463: $77
	ld c, $87                                        ; $7464: $0e $87
	rst SubAFromDE                                          ; $7466: $df
	cp a                                             ; $7467: $bf
	ld a, a                                          ; $7468: $7f
	rst FarCall                                          ; $7469: $f7
	rst AddAOntoHL                                          ; $746a: $ef
	add e                                            ; $746b: $83
	ld sp, hl                                        ; $746c: $f9
	rst $38                                          ; $746d: $ff
	jr nz, jr_03b_74b0                               ; $746e: $20 $40

	add b                                            ; $7470: $80
	ld [$fc10], sp                                   ; $7471: $08 $10 $fc
	cp $ff                                           ; $7474: $fe $ff
	db $fd                                           ; $7476: $fd
	cp $ed                                           ; $7477: $fe $ed
	jp c, $fafd                                      ; $7479: $da $fd $fa

	db $fd                                           ; $747c: $fd
	rst $38                                          ; $747d: $ff
	ld a, d                                          ; $747e: $7a
	sub h                                            ; $747f: $94
	sbc [hl]                                         ; $7480: $9e
	cpl                                              ; $7481: $2f
	sbc $0f                                          ; $7482: $de $0f
	add b                                            ; $7484: $80
	rst $38                                          ; $7485: $ff
	db $db                                           ; $7486: $db
	rst FarCall                                          ; $7487: $f7
	cp e                                             ; $7488: $bb
	push af                                          ; $7489: $f5
	ei                                               ; $748a: $fb
	pop de                                           ; $748b: $d1
	sbc e                                            ; $748c: $9b
	rst $38                                          ; $748d: $ff
	cp a                                             ; $748e: $bf
	sbc a                                            ; $748f: $9f
	rst SubAFromDE                                          ; $7490: $df
	sbc a                                            ; $7491: $9f
	sbc a                                            ; $7492: $9f
	cp a                                             ; $7493: $bf
	rst $38                                          ; $7494: $ff

jr_03b_7495:
	rst $38                                          ; $7495: $ff
	inc sp                                           ; $7496: $33

jr_03b_7497:
	ld h, a                                          ; $7497: $67
	adc $9c                                          ; $7498: $ce $9c
	ld a, c                                          ; $749a: $79
	di                                               ; $749b: $f3
	rst AddAOntoHL                                          ; $749c: $ef
	sbc $cc                                          ; $749d: $de $cc
	sbc b                                            ; $749f: $98
	ld sp, $8663                                     ; $74a0: $31 $63 $86
	inc c                                            ; $74a3: $0c
	ld a, [hl]                                       ; $74a4: $7e
	ld [hl], d                                       ; $74a5: $72
	sub a                                            ; $74a6: $97
	sbc e                                            ; $74a7: $9b
	inc sp                                           ; $74a8: $33
	ld h, [hl]                                       ; $74a9: $66
	call z, $b399                                    ; $74aa: $cc $99 $b3
	ld [hl], a                                       ; $74ad: $77
	xor $7b                                          ; $74ae: $ee $7b

jr_03b_74b0:
	ld a, [$e57f]                                    ; $74b0: $fa $7f $e5
	add h                                            ; $74b3: $84
	ld c, [hl]                                       ; $74b4: $4e
	adc h                                            ; $74b5: $8c
	add hl, de                                       ; $74b6: $19
	sub b                                            ; $74b7: $90
	ld hl, $e462                                     ; $74b8: $21 $62 $e4
	ret z                                            ; $74bb: $c8

	sbc b                                            ; $74bc: $98
	ld sp, $7f62                                     ; $74bd: $31 $62 $7f
	rst $38                                          ; $74c0: $ff
	rst SubAFromDE                                          ; $74c1: $df
	sbc a                                            ; $74c2: $9f
	ccf                                              ; $74c3: $3f
	ld [hl], a                                       ; $74c4: $77
	rst AddAOntoHL                                          ; $74c5: $ef
	rst SubAFromDE                                          ; $74c6: $df
	add l                                            ; $74c7: $85
	add hl, bc                                       ; $74c8: $09
	ld de, $4321                                     ; $74c9: $11 $21 $43
	add a                                            ; $74cc: $87
	add hl, bc                                       ; $74cd: $09
	db $10                                           ; $74ce: $10
	ld e, l                                          ; $74cf: $5d
	ld b, b                                          ; $74d0: $40
	sbc e                                            ; $74d1: $9b
	add b                                            ; $74d2: $80
	add a                                            ; $74d3: $87
	jr nc, jr_03b_74f9                               ; $74d4: $30 $23

	halt                                             ; $74d6: $76
	jp $80df                                         ; $74d7: $c3 $df $80


	sub [hl]                                         ; $74da: $96
	add c                                            ; $74db: $81
	sbc h                                            ; $74dc: $9c
	add b                                            ; $74dd: $80
	add b                                            ; $74de: $80
	nop                                              ; $74df: $00
	inc bc                                           ; $74e0: $03
	inc a                                            ; $74e1: $3c
	jp Jump_03b_703f                                 ; $74e2: $c3 $3f $70


	dec hl                                           ; $74e5: $2b
	ld a, l                                          ; $74e6: $7d
	add l                                            ; $74e7: $85
	ld [hl], l                                       ; $74e8: $75
	xor e                                            ; $74e9: $ab
	adc d                                            ; $74ea: $8a
	db $ec                                           ; $74eb: $ec
	add $c7                                          ; $74ec: $c6 $c7
	jp Jump_03b_40c1                                 ; $74ee: $c3 $c1 $40


	ld b, b                                          ; $74f1: $40
	jr nz, jr_03b_7524                               ; $74f2: $20 $30

	ld hl, sp+$78                                    ; $74f4: $f8 $78
	ld a, h                                          ; $74f6: $7c
	ld a, [hl]                                       ; $74f7: $7e
	ld a, a                                          ; $74f8: $7f

jr_03b_74f9:
	ld a, a                                          ; $74f9: $7f
	ccf                                              ; $74fa: $3f
	nop                                              ; $74fb: $00
	ld bc, $f6e1                                     ; $74fc: $01 $e1 $f6
	sbc h                                            ; $74ff: $9c
	ld a, d                                          ; $7500: $7a
	xor c                                            ; $7501: $a9
	ld [hl], h                                       ; $7502: $74
	ld b, l                                          ; $7503: $45
	sbc [hl]                                         ; $7504: $9e
	ld h, e                                          ; $7505: $63
	ld a, e                                          ; $7506: $7b
	rra                                              ; $7507: $1f
	sbc e                                            ; $7508: $9b
	ld l, $7d                                        ; $7509: $2e $7d
	pop de                                           ; $750b: $d1
	sub b                                            ; $750c: $90
	ld [hl], e                                       ; $750d: $73
	di                                               ; $750e: $f3
	sbc h                                            ; $750f: $9c
	ld [bc], a                                       ; $7510: $02
	ld l, $6f                                        ; $7511: $2e $6f
	ld [hl], d                                       ; $7513: $72
	rst SubAFromDE                                          ; $7514: $df
	ld l, [hl]                                       ; $7515: $6e

jr_03b_7516:
	reti                                             ; $7516: $d9


	ret c                                            ; $7517: $d8

	rst $38                                          ; $7518: $ff
	ld a, a                                          ; $7519: $7f
	ld e, l                                          ; $751a: $5d
	ld a, a                                          ; $751b: $7f
	cpl                                              ; $751c: $2f
	ld a, d                                          ; $751d: $7a
	rst FarCall                                          ; $751e: $f7
	halt                                             ; $751f: $76
	push af                                          ; $7520: $f5
	call c, $97ff                                    ; $7521: $dc $ff $97

jr_03b_7524:
	ld d, a                                          ; $7524: $57
	ei                                               ; $7525: $fb
	rst FarCall                                          ; $7526: $f7
	ei                                               ; $7527: $fb
	rst $38                                          ; $7528: $ff
	db $fd                                           ; $7529: $fd
	ei                                               ; $752a: $fb
	or $6f                                           ; $752b: $f6 $6f
	reti                                             ; $752d: $d9


	ld a, l                                          ; $752e: $7d
	rst GetHLinHL                                          ; $752f: $cf
	ld a, d                                          ; $7530: $7a
	cp e                                             ; $7531: $bb
	sbc e                                            ; $7532: $9b
	rst GetHLinHL                                          ; $7533: $cf
	rra                                              ; $7534: $1f
	or a                                             ; $7535: $b7
	ld l, a                                          ; $7536: $6f
	ld [hl], c                                       ; $7537: $71
	ret nc                                           ; $7538: $d0

	ld e, a                                          ; $7539: $5f
	jp c, $c063                                      ; $753a: $da $63 $c0

	sbc [hl]                                         ; $753d: $9e
	cp $7a                                           ; $753e: $fe $7a
	dec sp                                           ; $7540: $3b
	sbc d                                            ; $7541: $9a

jr_03b_7542:
	jr c, @+$5e                                      ; $7542: $38 $5c

	jr z, jr_03b_7516                                ; $7544: $28 $d0

	jr nz, @-$23                                     ; $7546: $20 $db

	add b                                            ; $7548: $80
	rst $38                                          ; $7549: $ff
	sub a                                            ; $754a: $97
	ld a, [hl+]                                      ; $754b: $2a
	dec d                                            ; $754c: $15
	ld a, [hl+]                                      ; $754d: $2a
	dec d                                            ; $754e: $15
	nop                                              ; $754f: $00
	ld d, h                                          ; $7550: $54
	ld l, d                                          ; $7551: $6a
	ld [hl], l                                       ; $7552: $75
	call c, $df3f                                    ; $7553: $dc $3f $df
	ld a, a                                          ; $7556: $7f
	sbc h                                            ; $7557: $9c
	ld c, a                                          ; $7558: $4f
	cp a                                             ; $7559: $bf
	ld d, l                                          ; $755a: $55
	ld a, c                                          ; $755b: $79
	sbc $9c                                          ; $755c: $de $9c
	dec b                                            ; $755e: $05
	and b                                            ; $755f: $a0
	ld d, l                                          ; $7560: $55
	ret c                                            ; $7561: $d8

	rst $38                                          ; $7562: $ff
	rst SubAFromDE                                          ; $7563: $df
	ret nz                                           ; $7564: $c0

	ld [hl], e                                       ; $7565: $73
	rst SubAFromHL                                          ; $7566: $d7
	ld a, e                                          ; $7567: $7b
	ld a, [$c0dd]                                    ; $7568: $fa $dd $c0
	sbc [hl]                                         ; $756b: $9e
	rst JumpTable                                          ; $756c: $c7
	ld l, a                                          ; $756d: $6f
	ld d, l                                          ; $756e: $55
	sbc [hl]                                         ; $756f: $9e
	xor d                                            ; $7570: $aa
	ld sp, hl                                        ; $7571: $f9
	ld l, b                                          ; $7572: $68
	ld d, b                                          ; $7573: $50
	inc bc                                           ; $7574: $03
	ldh a, [$63]                                     ; $7575: $f0 $63
	ldh a, [$de]                                     ; $7577: $f0 $de
	inc c                                            ; $7579: $0c
	sbc $0f                                          ; $757a: $de $0f
	sbc l                                            ; $757c: $9d
	inc c                                            ; $757d: $0c
	adc a                                            ; $757e: $8f
	db $db                                           ; $757f: $db
	rlca                                             ; $7580: $07
	sbc l                                            ; $7581: $9d
	inc b                                            ; $7582: $04
	rlca                                             ; $7583: $07
	ld a, c                                          ; $7584: $79
	ld [hl], h                                       ; $7585: $74
	sbc [hl]                                         ; $7586: $9e
	adc c                                            ; $7587: $89
	ld e, a                                          ; $7588: $5f
	ld d, a                                          ; $7589: $57

jr_03b_758a:
	ld a, a                                          ; $758a: $7f
	ld hl, sp+$74                                    ; $758b: $f8 $74
	ld c, h                                          ; $758d: $4c
	sbc [hl]                                         ; $758e: $9e
	sub e                                            ; $758f: $93
	ld a, d                                          ; $7590: $7a
	ret z                                            ; $7591: $c8

	sbc $80                                          ; $7592: $de $80
	sbc l                                            ; $7594: $9d
	pop bc                                           ; $7595: $c1
	call z, $c0de                                    ; $7596: $cc $de $c0
	sbc b                                            ; $7599: $98
	ld bc, $801f                                     ; $759a: $01 $1f $80
	inc c                                            ; $759d: $0c
	ret nz                                           ; $759e: $c0

	ld bc, $7807                                     ; $759f: $01 $07 $78
	jr z, jr_03b_7542                                ; $75a2: $28 $9e

	ld h, c                                          ; $75a4: $61
	ld a, e                                          ; $75a5: $7b
	add l                                            ; $75a6: $85
	adc a                                            ; $75a7: $8f
	add hl, bc                                       ; $75a8: $09
	ld a, a                                          ; $75a9: $7f
	ldh a, [$f0]                                     ; $75aa: $f0 $f0
	ret c                                            ; $75ac: $d8

	ld c, $0f                                        ; $75ad: $0e $0f
	cp $ff                                           ; $75af: $fe $ff
	cp $1f                                           ; $75b1: $fe $1f
	ld a, a                                          ; $75b3: $7f
	rrca                                             ; $75b4: $0f
	rlca                                             ; $75b5: $07
	inc bc                                           ; $75b6: $03
	rlca                                             ; $75b7: $07
	halt                                             ; $75b8: $76
	sub b                                            ; $75b9: $90
	db $fc                                           ; $75ba: $fc
	ld l, l                                          ; $75bb: $6d
	or d                                             ; $75bc: $b2
	ld [hl], d                                       ; $75bd: $72
	add b                                            ; $75be: $80
	halt                                             ; $75bf: $76
	jp $c27e                                         ; $75c0: $c3 $7e $c2


	reti                                             ; $75c3: $d9


	rst $38                                          ; $75c4: $ff
	jr nz, jr_03b_75c7                               ; $75c5: $20 $00

jr_03b_75c7:
	sbc c                                            ; $75c7: $99
	ld [hl], $63                                     ; $75c8: $36 $63
	ld b, h                                          ; $75ca: $44
	ld b, h                                          ; $75cb: $44
	ld b, [hl]                                       ; $75cc: $46
	ld h, [hl]                                       ; $75cd: $66
	db $dd                                           ; $75ce: $dd
	inc sp                                           ; $75cf: $33
	bit 0, h                                         ; $75d0: $cb $44
	ld [hl], e                                       ; $75d2: $73
	jp hl                                            ; $75d3: $e9


	ld a, a                                          ; $75d4: $7f
	rst SubAFromDE                                          ; $75d5: $df
	sbc [hl]                                         ; $75d6: $9e
	ld d, l                                          ; $75d7: $55
	ld l, e                                          ; $75d8: $6b
	rst SubAFromDE                                          ; $75d9: $df
	sbc l                                            ; $75da: $9d
	ld b, [hl]                                       ; $75db: $46
	dec [hl]                                         ; $75dc: $35
	ld [hl], e                                       ; $75dd: $73
	or $df                                           ; $75de: $f6 $df
	ld h, [hl]                                       ; $75e0: $66
	sbc [hl]                                         ; $75e1: $9e
	ld h, l                                          ; $75e2: $65
	ld a, e                                          ; $75e3: $7b
	or $5a                                           ; $75e4: $f6 $5a
	add e                                            ; $75e6: $83
	sub e                                            ; $75e7: $93
	ld d, l                                          ; $75e8: $55
	cpl                                              ; $75e9: $2f
	ld e, d                                          ; $75ea: $5a
	or l                                             ; $75eb: $b5
	ld hl, sp+$1f                                    ; $75ec: $f8 $1f
	nop                                              ; $75ee: $00
	xor d                                            ; $75ef: $aa
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	dec b                                            ; $75f2: $05
	ld a, [bc]                                       ; $75f3: $0a
	sbc $ff                                          ; $75f4: $de $ff
	adc [hl]                                         ; $75f6: $8e
	ld d, l                                          ; $75f7: $55
	add sp, $78                                      ; $75f8: $e8 $78
	xor b                                            ; $75fa: $a8
	ld e, b                                          ; $75fb: $58
	xor b                                            ; $75fc: $a8
	cp $0f                                           ; $75fd: $fe $0f
	xor l                                            ; $75ff: $ad

jr_03b_7600:
	jr jr_03b_758a                                   ; $7600: $18 $88

	ld e, b                                          ; $7602: $58
	xor b                                            ; $7603: $a8
	ld e, h                                          ; $7604: $5c
	rst $38                                          ; $7605: $ff
	rst $38                                          ; $7606: $ff
	ld e, d                                          ; $7607: $5a
	ei                                               ; $7608: $fb
	sbc l                                            ; $7609: $9d
	ldh a, [rVBK]                                    ; $760a: $f0 $4f
	db $fc                                           ; $760c: $fc
	add h                                            ; $760d: $84
	add b                                            ; $760e: $80
	rst $38                                          ; $760f: $ff
	cp a                                             ; $7610: $bf
	dec a                                            ; $7611: $3d
	ld [hl], $3f                                     ; $7612: $36 $3f
	dec [hl]                                         ; $7614: $35
	ld e, d                                          ; $7615: $5a
	or l                                             ; $7616: $b5
	ld [de], a                                       ; $7617: $12
	rst $38                                          ; $7618: $ff
	db $10                                           ; $7619: $10
	jr jr_03b_762c                                   ; $761a: $18 $10

	ld a, [de]                                       ; $761c: $1a
	dec [hl]                                         ; $761d: $35
	ld e, d                                          ; $761e: $5a
	db $fd                                           ; $761f: $fd
	rst $38                                          ; $7620: $ff
	ld b, b                                          ; $7621: $40
	and b                                            ; $7622: $a0
	ret nz                                           ; $7623: $c0

	and b                                            ; $7624: $a0
	ret nc                                           ; $7625: $d0

	ldh a, [$30]                                     ; $7626: $f0 $30
	ld b, $fb                                        ; $7628: $06 $fb
	sbc l                                            ; $762a: $9d
	ret nz                                           ; $762b: $c0

jr_03b_762c:
	ld hl, sp-$22                                    ; $762c: $f8 $de
	ld b, b                                          ; $762e: $40
	sbc d                                            ; $762f: $9a
	ld b, l                                          ; $7630: $45
	ld c, d                                          ; $7631: $4a
	ld d, l                                          ; $7632: $55
	ld l, [hl]                                       ; $7633: $6e
	ld a, l                                          ; $7634: $7d
	reti                                             ; $7635: $d9


	ld b, b                                          ; $7636: $40
	ei                                               ; $7637: $fb
	sbc [hl]                                         ; $7638: $9e
	add b                                            ; $7639: $80
	ld hl, sp-$69                                    ; $763a: $f8 $97
	and h                                            ; $763c: $a4
	call nc, $d2aa                                   ; $763d: $d4 $aa $d2
	xor c                                            ; $7640: $a9
	call nc, $d5aa                                   ; $7641: $d4 $aa $d5
	call c, $8480                                    ; $7644: $dc $80 $84
	add c                                            ; $7647: $81
	add b                                            ; $7648: $80
	add b                                            ; $7649: $80
	ld [bc], a                                       ; $764a: $02
	ld b, d                                          ; $764b: $42
	xor d                                            ; $764c: $aa
	sub $8a                                          ; $764d: $d6 $8a
	ld d, [hl]                                       ; $764f: $56
	xor d                                            ; $7650: $aa
	ld d, e                                          ; $7651: $53
	and d                                            ; $7652: $a2
	ld [bc], a                                       ; $7653: $02
	ld b, d                                          ; $7654: $42
	ld [bc], a                                       ; $7655: $02
	ld [hl+], a                                      ; $7656: $22
	ld [bc], a                                       ; $7657: $02
	ld [de], a                                       ; $7658: $12
	ld [bc], a                                       ; $7659: $02
	ld [bc], a                                       ; $765a: $02
	dec b                                            ; $765b: $05
	ld [bc], a                                       ; $765c: $02
	ld b, $0d                                        ; $765d: $06 $0d
	dec e                                            ; $765f: $1d
	xor d                                            ; $7660: $aa
	ld e, c                                          ; $7661: $59
	ld sp, hl                                        ; $7662: $f9
	rst SubAFromDE                                          ; $7663: $df
	ld c, e                                          ; $7664: $4b
	add b                                            ; $7665: $80
	xor a                                            ; $7666: $af
	ld c, l                                          ; $7667: $4d
	xor d                                            ; $7668: $aa
	ld c, h                                          ; $7669: $4c
	xor b                                            ; $766a: $a8
	ld e, b                                          ; $766b: $58
	ld [$080c], sp                                   ; $766c: $08 $0c $08
	ld a, [bc]                                       ; $766f: $0a
	dec c                                            ; $7670: $0d
	dec bc                                           ; $7671: $0b
	rrca                                             ; $7672: $0f
	rrca                                             ; $7673: $0f
	or [hl]                                          ; $7674: $b6
	rst FarCall                                          ; $7675: $f7
	jp c, $bd7b                                      ; $7676: $da $7b $bd

	ld a, l                                          ; $7679: $7d
	ld a, $5e                                        ; $767a: $3e $5e
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	jr nz, jr_03b_7600                               ; $767e: $20 $80

	ld b, b                                          ; $7680: $40
	add b                                            ; $7681: $80
	ret nz                                           ; $7682: $c0

	and b                                            ; $7683: $a0
	ld [hl], a                                       ; $7684: $77
	sbc b                                            ; $7685: $98
	xor [hl]                                         ; $7686: $ae
	ld d, l                                          ; $7687: $55
	xor d                                            ; $7688: $aa
	ld h, l                                          ; $7689: $65
	ld [$6265], a                                    ; $768a: $ea $65 $62
	reti                                             ; $768d: $d9


	jr nz, @-$67                                     ; $768e: $20 $97

	db $db                                           ; $7690: $db
	adc l                                            ; $7691: $8d
	ld l, d                                          ; $7692: $6a
	sub [hl]                                         ; $7693: $96
	and l                                            ; $7694: $a5
	ld [hl], h                                       ; $7695: $74
	ld e, b                                          ; $7696: $58
	ld l, b                                          ; $7697: $68
	ei                                               ; $7698: $fb
	sub l                                            ; $7699: $95
	ld bc, $5f02                                     ; $769a: $01 $02 $5f
	ccf                                              ; $769d: $3f
	ld c, $8f                                        ; $769e: $0e $8f
	ld l, $bf                                        ; $76a0: $2e $bf
	sbc $7d                                          ; $76a2: $de $7d
	reti                                             ; $76a4: $d9


	db $10                                           ; $76a5: $10
	sbc h                                            ; $76a6: $9c
	add b                                            ; $76a7: $80
	ld b, c                                          ; $76a8: $41
	add c                                            ; $76a9: $81
	ld a, e                                          ; $76aa: $7b
	ld [hl], d                                       ; $76ab: $72
	sub e                                            ; $76ac: $93
	add c                                            ; $76ad: $81
	ld bc, $0b11                                     ; $76ae: $01 $11 $0b
	dec d                                            ; $76b1: $15
	dec hl                                           ; $76b2: $2b
	dec d                                            ; $76b3: $15
	dec hl                                           ; $76b4: $2b
	ld d, l                                          ; $76b5: $55
	dec hl                                           ; $76b6: $2b
	reti                                             ; $76b7: $d9


	call c, $fcde                                    ; $76b8: $dc $de $fc
	rst SubAFromDE                                          ; $76bb: $df
	rst $38                                          ; $76bc: $ff
	sbc [hl]                                         ; $76bd: $9e
	db $fd                                           ; $76be: $fd
	reti                                             ; $76bf: $d9


	add b                                            ; $76c0: $80
	add d                                            ; $76c1: $82
	dec hl                                           ; $76c2: $2b
	ld d, e                                          ; $76c3: $53
	xor e                                            ; $76c4: $ab
	ld e, e                                          ; $76c5: $5b
	adc e                                            ; $76c6: $8b
	inc de                                           ; $76c7: $13
	add e                                            ; $76c8: $83
	inc bc                                           ; $76c9: $03
	ld b, d                                          ; $76ca: $42
	and d                                            ; $76cb: $a2
	ld d, d                                          ; $76cc: $52
	and d                                            ; $76cd: $a2
	ld [hl], d                                       ; $76ce: $72
	ld [$fe7e], a                                    ; $76cf: $ea $7e $fe
	ld a, [hl+]                                      ; $76d2: $2a
	ld [hl], l                                       ; $76d3: $75
	ld l, b                                          ; $76d4: $68
	ld d, b                                          ; $76d5: $50
	ld h, b                                          ; $76d6: $60
	ld d, b                                          ; $76d7: $50
	ld h, b                                          ; $76d8: $60
	rra                                              ; $76d9: $1f
	dec d                                            ; $76da: $15
	ld a, [bc]                                       ; $76db: $0a
	rla                                              ; $76dc: $17
	cpl                                              ; $76dd: $2f
	rra                                              ; $76de: $1f
	ld a, e                                          ; $76df: $7b
	cp $92                                           ; $76e0: $fe $92
	or [hl]                                          ; $76e2: $b6
	sub $a6                                          ; $76e3: $d6 $a6
	ld d, [hl]                                       ; $76e5: $56
	ld h, $04                                        ; $76e6: $26 $04
	ld a, a                                          ; $76e8: $7f
	rst $38                                          ; $76e9: $ff
	inc b                                            ; $76ea: $04
	inc h                                            ; $76eb: $24
	ld d, h                                          ; $76ec: $54
	and h                                            ; $76ed: $a4
	call c, $ffde                                    ; $76ee: $dc $de $ff
	add b                                            ; $76f1: $80
	ld d, h                                          ; $76f2: $54
	xor b                                            ; $76f3: $a8
	ld d, b                                          ; $76f4: $50
	xor b                                            ; $76f5: $a8
	ld d, c                                          ; $76f6: $51
	or b                                             ; $76f7: $b0
	ld d, b                                          ; $76f8: $50
	or b                                             ; $76f9: $b0
	xor e                                            ; $76fa: $ab
	ld d, a                                          ; $76fb: $57
	xor a                                            ; $76fc: $af
	ld d, a                                          ; $76fd: $57
	xor [hl]                                         ; $76fe: $ae
	ld c, a                                          ; $76ff: $4f
	xor a                                            ; $7700: $af
	ld c, a                                          ; $7701: $4f
	ld e, l                                          ; $7702: $5d
	ld a, [hl+]                                      ; $7703: $2a
	dec a                                            ; $7704: $3d
	ld a, [hl+]                                      ; $7705: $2a
	dec l                                            ; $7706: $2d
	ld c, $49                                        ; $7707: $0e $49
	ld a, [bc]                                       ; $7709: $0a
	adc b                                            ; $770a: $88
	ret c                                            ; $770b: $d8

	ret z                                            ; $770c: $c8

	ret c                                            ; $770d: $d8

	jp c, $9ed9                                      ; $770e: $da $d9 $9e

	sub l                                            ; $7711: $95
	db $dd                                           ; $7712: $dd
	sub $00                                          ; $7713: $d6 $00
	inc bc                                           ; $7715: $03
	dec b                                            ; $7716: $05
	ld b, d                                          ; $7717: $42
	add c                                            ; $7718: $81
	ld [bc], a                                       ; $7719: $02
	add e                                            ; $771a: $83
	ld bc, $7277                                     ; $771b: $01 $77 $72
	ld a, e                                          ; $771e: $7b
	cp $9b                                           ; $771f: $fe $9b
	sub b                                            ; $7721: $90
	ld a, l                                          ; $7722: $7d
	cp d                                             ; $7723: $ba
	ld d, l                                          ; $7724: $55
	ld [hl], a                                       ; $7725: $77
	cp $9d                                           ; $7726: $fe $9d
	ld a, a                                          ; $7728: $7f
	ld [de], a                                       ; $7729: $12
	ld [hl], e                                       ; $772a: $73
	ld sp, hl                                        ; $772b: $f9
	sbc h                                            ; $772c: $9c
	cp d                                             ; $772d: $ba
	rst $38                                          ; $772e: $ff
	ld d, b                                          ; $772f: $50
	ld a, e                                          ; $7730: $7b
	jp Jump_03b_5f9b                                 ; $7731: $c3 $9b $5f


	cp a                                             ; $7734: $bf
	ld d, l                                          ; $7735: $55
	rst $38                                          ; $7736: $ff
	ld a, e                                          ; $7737: $7b
	ld sp, hl                                        ; $7738: $f9
	ld a, e                                          ; $7739: $7b
	rst FarCall                                          ; $773a: $f7
	sub e                                            ; $773b: $93
	cp d                                             ; $773c: $ba
	db $fd                                           ; $773d: $fd
	ld a, a                                          ; $773e: $7f
	ld b, b                                          ; $773f: $40
	ld a, l                                          ; $7740: $7d
	ld a, [hl]                                       ; $7741: $7e
	ld a, l                                          ; $7742: $7d
	cp $7d                                           ; $7743: $fe $7d
	ld a, [rIE]                                    ; $7745: $fa $ff $ff
	call c, $9cc0                                    ; $7748: $dc $c0 $9c
	ld b, b                                          ; $774b: $40
	ld a, [$6e7f]                                    ; $774c: $fa $7f $6e
	cp [hl]                                          ; $774f: $be
	sbc l                                            ; $7750: $9d
	push af                                          ; $7751: $f5
	rst $38                                          ; $7752: $ff
	db $fc                                           ; $7753: $fc
	sbc h                                            ; $7754: $9c
	cp $d5                                           ; $7755: $fe $d5
	rst $38                                          ; $7757: $ff
	ld a, d                                          ; $7758: $7a
	jp nz, $ab89                                     ; $7759: $c2 $89 $ab

	sbc $80                                          ; $775c: $de $80
	xor d                                            ; $775e: $aa
	rst $38                                          ; $775f: $ff
	xor e                                            ; $7760: $ab
	add b                                            ; $7761: $80
	add b                                            ; $7762: $80
	add h                                            ; $7763: $84
	and c                                            ; $7764: $a1
	sub d                                            ; $7765: $92
	ld d, a                                          ; $7766: $57
	rst $38                                          ; $7767: $ff
	ld [bc], a                                       ; $7768: $02
	xor d                                            ; $7769: $aa
	ld d, [hl]                                       ; $776a: $56
	ld l, d                                          ; $776b: $6a
	sub $02                                          ; $776c: $d6 $02
	xor d                                            ; $776e: $aa
	rst $38                                          ; $776f: $ff
	rst $38                                          ; $7770: $ff
	call c, $9302                                    ; $7771: $dc $02 $93
	rst FarCall                                          ; $7774: $f7
	rst $38                                          ; $7775: $ff
	inc bc                                           ; $7776: $03
	ld b, $0d                                        ; $7777: $06 $0d
	ld a, [bc]                                       ; $7779: $0a
	dec e                                            ; $777a: $1d
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	rst $38                                          ; $777d: $ff
	rst $38                                          ; $777e: $ff
	ld bc, $b37a                                     ; $777f: $01 $7a $b3
	sub [hl]                                         ; $7782: $96
	xor b                                            ; $7783: $a8
	db $fd                                           ; $7784: $fd
	rst $38                                          ; $7785: $ff
	rst $38                                          ; $7786: $ff
	ld a, [$b878]                                    ; $7787: $fa $78 $b8
	ld a, h                                          ; $778a: $7c
	rrca                                             ; $778b: $0f
	ld a, d                                          ; $778c: $7a
	ld [hl+], a                                      ; $778d: $22
	adc a                                            ; $778e: $8f
	dec c                                            ; $778f: $0d
	adc h                                            ; $7790: $8c
	ld c, l                                          ; $7791: $4d
	adc d                                            ; $7792: $8a
	cpl                                              ; $7793: $2f
	ld e, [hl]                                       ; $7794: $5e
	ret nz                                           ; $7795: $c0

	rst $38                                          ; $7796: $ff
	xor a                                            ; $7797: $af
	ld d, h                                          ; $7798: $54
	inc h                                            ; $7799: $24
	add hl, bc                                       ; $779a: $09
	ret nc                                           ; $779b: $d0

	and b                                            ; $779c: $a0
	rst $38                                          ; $779d: $ff
	rst $38                                          ; $779e: $ff
	ld a, e                                          ; $779f: $7b
	and [hl]                                         ; $77a0: $a6
	sbc e                                            ; $77a1: $9b
	add b                                            ; $77a2: $80
	pop hl                                           ; $77a3: $e1
	ldh [rAUD4ENV], a                                ; $77a4: $e0 $21
	ld a, e                                          ; $77a6: $7b
	rst JumpTable                                          ; $77a7: $c7
	rst SubAFromDE                                          ; $77a8: $df
	add h                                            ; $77a9: $84
	rst SubAFromDE                                          ; $77aa: $df
	jr nz, jr_03b_7827                               ; $77ab: $20 $7a

	ld a, [$20de]                                    ; $77ad: $fa $de $20
	adc d                                            ; $77b0: $8a
	or b                                             ; $77b1: $b0
	or c                                             ; $77b2: $b1
	jr nz, @+$01                                     ; $77b3: $20 $ff

	rst $38                                          ; $77b5: $ff
	ld b, b                                          ; $77b6: $40
	add b                                            ; $77b7: $80
	add b                                            ; $77b8: $80
	nop                                              ; $77b9: $00
	ld [bc], a                                       ; $77ba: $02
	inc bc                                           ; $77bb: $03
	rst $38                                          ; $77bc: $ff
	rst $38                                          ; $77bd: $ff
	ld a, [hl+]                                      ; $77be: $2a
	ld d, l                                          ; $77bf: $55

Call_03b_77c0:
	ld l, d                                          ; $77c0: $6a
	cp d                                             ; $77c1: $ba
	ld e, h                                          ; $77c2: $5c
	or b                                             ; $77c3: $b0
	rst $38                                          ; $77c4: $ff
	rst $38                                          ; $77c5: $ff
	call c, $9910                                    ; $77c6: $dc $10 $99
	ld d, b                                          ; $77c9: $50
	rst $38                                          ; $77ca: $ff
	rst $38                                          ; $77cb: $ff
	cp b                                             ; $77cc: $b8
	ld d, l                                          ; $77cd: $55
	cp d                                             ; $77ce: $ba
	sbc $01                                          ; $77cf: $de $01
	ld a, e                                          ; $77d1: $7b
	and a                                            ; $77d2: $a7
	rst SubAFromDE                                          ; $77d3: $df
	ld bc, $559a                                     ; $77d4: $01 $9a $55
	xor e                                            ; $77d7: $ab
	ld d, l                                          ; $77d8: $55
	rst $38                                          ; $77d9: $ff
	rst $38                                          ; $77da: $ff
	ld a, d                                          ; $77db: $7a
	ret nz                                           ; $77dc: $c0

	sub e                                            ; $77dd: $93
	xor d                                            ; $77de: $aa
	call nc, $ffcf                                   ; $77df: $d4 $cf $ff
	rst SubAFromHL                                          ; $77e2: $d7
	xor d                                            ; $77e3: $aa
	add l                                            ; $77e4: $85
	add d                                            ; $77e5: $82
	add b                                            ; $77e6: $80
	add c                                            ; $77e7: $81
	cp a                                             ; $77e8: $bf
	rst $38                                          ; $77e9: $ff
	db $dd                                           ; $77ea: $dd
	add b                                            ; $77eb: $80
	add d                                            ; $77ec: $82
	add e                                            ; $77ed: $83
	rst $38                                          ; $77ee: $ff
	rst $38                                          ; $77ef: $ff
	sbc a                                            ; $77f0: $9f
	rst $38                                          ; $77f1: $ff
	rst $38                                          ; $77f2: $ff
	rst AddAOntoHL                                          ; $77f3: $ef
	rst SubAFromHL                                          ; $77f4: $d7
	ld a, a                                          ; $77f5: $7f
	rst $38                                          ; $77f6: $ff
	rst $38                                          ; $77f7: $ff
	ldh [c], a                                       ; $77f8: $e2
	ld [bc], a                                       ; $77f9: $02
	ld [bc], a                                       ; $77fa: $02
	ld [de], a                                       ; $77fb: $12
	ld a, [hl+]                                      ; $77fc: $2a
	rst $38                                          ; $77fd: $ff
	db $fd                                           ; $77fe: $fd
	ld a, [hl+]                                      ; $77ff: $2a
	ld d, l                                          ; $7800: $55
	xor b                                            ; $7801: $a8
	ld d, b                                          ; $7802: $50
	ld h, b                                          ; $7803: $60
	db $10                                           ; $7804: $10
	rst $38                                          ; $7805: $ff
	cp $d5                                           ; $7806: $fe $d5
	xor d                                            ; $7808: $aa
	ld d, a                                          ; $7809: $57
	ld a, d                                          ; $780a: $7a
	ret nz                                           ; $780b: $c0

	adc e                                            ; $780c: $8b
	db $f4                                           ; $780d: $f4
	ld e, a                                          ; $780e: $5f
	xor a                                            ; $780f: $af
	rra                                              ; $7810: $1f
	cpl                                              ; $7811: $2f
	ld e, a                                          ; $7812: $5f
	cpl                                              ; $7813: $2f
	ld e, a                                          ; $7814: $5f
	rst $38                                          ; $7815: $ff
	and h                                            ; $7816: $a4
	ld d, h                                          ; $7817: $54
	db $e4                                           ; $7818: $e4
	call nc, $d4a4                                   ; $7819: $d4 $a4 $d4
	and h                                            ; $781c: $a4
	ret nc                                           ; $781d: $d0

	db $10                                           ; $781e: $10
	xor d                                            ; $781f: $aa
	ld d, l                                          ; $7820: $55
	ld a, e                                          ; $7821: $7b
	ld d, l                                          ; $7822: $55
	sbc c                                            ; $7823: $99
	rst $38                                          ; $7824: $ff
	cpl                                              ; $7825: $2f
	ld l, a                                          ; $7826: $6f

jr_03b_7827:
	ld d, l                                          ; $7827: $55
	xor d                                            ; $7828: $aa
	ld bc, $f77b                                     ; $7829: $01 $7b $f7
	sbc d                                            ; $782c: $9a
	ld d, l                                          ; $782d: $55
	ld a, [de]                                       ; $782e: $1a
	sub a                                            ; $782f: $97
	ld a, d                                          ; $7830: $7a
	jr nz, jr_03b_78ae                               ; $7831: $20 $7b

	adc l                                            ; $7833: $8d
	sbc d                                            ; $7834: $9a
	adc d                                            ; $7835: $8a
	call nz, $8448                                   ; $7836: $c4 $48 $84
	rst SubAFromDE                                          ; $7839: $df
	ld a, e                                          ; $783a: $7b
	ldh a, [$97]                                     ; $783b: $f0 $97
	ld b, $87                                        ; $783d: $06 $87
	ld c, $05                                        ; $783f: $0e $05
	ld a, [bc]                                       ; $7841: $0a
	dec c                                            ; $7842: $0d
	db $eb                                           ; $7843: $eb
	rst AddAOntoHL                                          ; $7844: $ef
	ld a, d                                          ; $7845: $7a
	call nz, $0a8d                                   ; $7846: $c4 $8d $0a
	push af                                          ; $7849: $f5
	ld [de], a                                       ; $784a: $12
	call nc, $bbd0                                   ; $784b: $d4 $d0 $bb
	ld d, l                                          ; $784e: $55
	cp [hl]                                          ; $784f: $be
	ld d, h                                          ; $7850: $54
	cp d                                             ; $7851: $ba
	db $f4                                           ; $7852: $f4
	cp b                                             ; $7853: $b8
	sbc h                                            ; $7854: $9c
	ld d, h                                          ; $7855: $54
	cp b                                             ; $7856: $b8
	ld d, b                                          ; $7857: $50
	cp b                                             ; $7858: $b8
	ld d, b                                          ; $7859: $50
	sbc $10                                          ; $785a: $de $10
	sbc e                                            ; $785c: $9b
	ld a, [$1a35]                                    ; $785d: $fa $35 $1a
	dec d                                            ; $7860: $15
	ld [hl], a                                       ; $7861: $77
	cp $73                                           ; $7862: $fe $73
	ei                                               ; $7864: $fb
	ld a, e                                          ; $7865: $7b
	cp $7e                                           ; $7866: $fe $7e
	call nz, Call_03b_7a99                           ; $7868: $c4 $99 $7a
	ld e, h                                          ; $786b: $5c
	ld a, d                                          ; $786c: $7a
	ld a, [hl]                                       ; $786d: $7e
	ld c, [hl]                                       ; $786e: $4e
	ld b, c                                          ; $786f: $41
	call c, $dfc0                                    ; $7870: $dc $c0 $df
	pop bc                                           ; $7873: $c1
	sbc [hl]                                         ; $7874: $9e
	jp nz, $367b                                     ; $7875: $c2 $7b $36

	db $fd                                           ; $7878: $fd
	ld l, c                                          ; $7879: $69
	ld a, b                                          ; $787a: $78
	add c                                            ; $787b: $81
	ld b, c                                          ; $787c: $41
	and c                                            ; $787d: $a1
	xor d                                            ; $787e: $aa
	push de                                          ; $787f: $d5
	xor c                                            ; $7880: $a9
	db $d3                                           ; $7881: $d3
	xor d                                            ; $7882: $aa
	push de                                          ; $7883: $d5
	and [hl]                                         ; $7884: $a6
	call $aad5                                       ; $7885: $cd $d5 $aa
	sub $ac                                          ; $7888: $d6 $ac
	push de                                          ; $788a: $d5
	xor d                                            ; $788b: $aa
	reti                                             ; $788c: $d9


	or b                                             ; $788d: $b0
	xor d                                            ; $788e: $aa
	ld d, [hl]                                       ; $788f: $56
	xor [hl]                                         ; $7890: $ae
	halt                                             ; $7891: $76
	xor h                                            ; $7892: $ac
	ld d, h                                          ; $7893: $54
	and h                                            ; $7894: $a4
	ld d, h                                          ; $7895: $54
	ld b, d                                          ; $7896: $42
	and d                                            ; $7897: $a2
	ld b, d                                          ; $7898: $42
	add d                                            ; $7899: $82
	halt                                             ; $789a: $76
	inc c                                            ; $789b: $0c
	sbc d                                            ; $789c: $9a
	ld l, $15                                        ; $789d: $2e $15
	ld a, [hl+]                                      ; $789f: $2a
	ld d, l                                          ; $78a0: $55
	ld [$c879], sp                                   ; $78a1: $08 $79 $c8
	ld a, a                                          ; $78a4: $7f
	cp $76                                           ; $78a5: $fe $76
	ld c, a                                          ; $78a7: $4f
	rst SubAFromDE                                          ; $78a8: $df
	inc bc                                           ; $78a9: $03
	add d                                            ; $78aa: $82
	cp d                                             ; $78ab: $ba
	ld a, l                                          ; $78ac: $7d
	cp d                                             ; $78ad: $ba

jr_03b_78ae:
	ld a, l                                          ; $78ae: $7d
	ld a, [hl-]                                      ; $78af: $3a
	dec e                                            ; $78b0: $1d
	ld a, [bc]                                       ; $78b1: $0a
	dec c                                            ; $78b2: $0d
	ld c, h                                          ; $78b3: $4c
	adc d                                            ; $78b4: $8a
	ld c, l                                          ; $78b5: $4d
	ld a, [bc]                                       ; $78b6: $0a
	dec c                                            ; $78b7: $0d
	ld l, d                                          ; $78b8: $6a
	cp l                                             ; $78b9: $bd
	ld a, d                                          ; $78ba: $7a
	adc d                                            ; $78bb: $8a
	ld d, l                                          ; $78bc: $55
	ld [de], a                                       ; $78bd: $12
	ld b, l                                          ; $78be: $45
	jp z, $9894                                      ; $78bf: $ca $94 $98

	xor l                                            ; $78c2: $ad
	ld b, b                                          ; $78c3: $40
	nop                                              ; $78c4: $00
	ld b, b                                          ; $78c5: $40
	and b                                            ; $78c6: $a0
	jr nz, @+$7b                                     ; $78c7: $20 $79

	ld hl, $098f                                     ; $78c9: $21 $8f $09
	adc c                                            ; $78cc: $89
	ld d, d                                          ; $78cd: $52
	sub d                                            ; $78ce: $92
	add l                                            ; $78cf: $85
	ld c, h                                          ; $78d0: $4c
	ld c, c                                          ; $78d1: $49
	adc c                                            ; $78d2: $89
	jr nz, jr_03b_78f5                               ; $78d3: $20 $20

	ld hl, $2221                                     ; $78d5: $21 $21 $22
	ld [hl+], a                                      ; $78d8: $22
	inc h                                            ; $78d9: $24
	jr nz, jr_03b_7957                               ; $78da: $20 $7b

	sub l                                            ; $78dc: $95
	sub [hl]                                         ; $78dd: $96
	and b                                            ; $78de: $a0
	ld b, c                                          ; $78df: $41
	xor e                                            ; $78e0: $ab
	ld d, a                                          ; $78e1: $57
	xor e                                            ; $78e2: $ab
	push de                                          ; $78e3: $d5
	adc d                                            ; $78e4: $8a
	inc d                                            ; $78e5: $14
	ld [$92fd], sp                                   ; $78e6: $08 $fd $92
	stop                                             ; $78e9: $10 $00
	db $10                                           ; $78eb: $10
	ldh a, [$e0]                                     ; $78ec: $f0 $e0
	ldh a, [$e4]                                     ; $78ee: $f0 $e4
	or $54                                           ; $78f0: $f6 $54
	ld a, [de]                                       ; $78f2: $1a
	inc d                                            ; $78f3: $14
	ld a, [de]                                       ; $78f4: $1a

jr_03b_78f5:
	inc d                                            ; $78f5: $14
	sbc $18                                          ; $78f6: $de $18
	jp c, $9e01                                      ; $78f8: $da $01 $9e

	dec d                                            ; $78fb: $15
	ld a, d                                          ; $78fc: $7a
	ret nz                                           ; $78fd: $c0

	ld a, c                                          ; $78fe: $79
	add b                                            ; $78ff: $80
	sub d                                            ; $7900: $92
	dec d                                            ; $7901: $15
	add hl, hl                                       ; $7902: $29
	nop                                              ; $7903: $00
	ld a, h                                          ; $7904: $7c
	ld [bc], a                                       ; $7905: $02
	ld [bc], a                                       ; $7906: $02
	ld a, d                                          ; $7907: $7a
	ld a, d                                          ; $7908: $7a
	ld a, e                                          ; $7909: $7b
	ld a, d                                          ; $790a: $7a
	add b                                            ; $790b: $80
	add b                                            ; $790c: $80
	db $fc                                           ; $790d: $fc
	call c, Call_03b_7e86                            ; $790e: $dc $86 $7e
	add $8f                                          ; $7911: $c6 $8f
	ld l, a                                          ; $7913: $6f
	ld d, a                                          ; $7914: $57
	ld [hl], a                                       ; $7915: $77
	scf                                              ; $7916: $37
	add a                                            ; $7917: $87
	inc bc                                           ; $7918: $03
	ld [de], a                                       ; $7919: $12
	ld a, [hl+]                                      ; $791a: $2a

jr_03b_791b:
	ld [de], a                                       ; $791b: $12
	ld [hl+], a                                      ; $791c: $22
	ld [bc], a                                       ; $791d: $02
	ld [bc], a                                       ; $791e: $02
	ld b, d                                          ; $791f: $42
	add d                                            ; $7920: $82
	jr nz, @+$12                                     ; $7921: $20 $10

	ld a, c                                          ; $7923: $79
	add d                                            ; $7924: $82
	sbc h                                            ; $7925: $9c
	ld d, c                                          ; $7926: $51
	ld a, [hl+]                                      ; $7927: $2a
	ld [hl], c                                       ; $7928: $71
	ld [hl], l                                       ; $7929: $75
	add h                                            ; $792a: $84
	sub b                                            ; $792b: $90
	rra                                              ; $792c: $1f
	ld l, $15                                        ; $792d: $2e $15
	ld c, $2e                                        ; $792f: $0e $2e
	ld d, [hl]                                       ; $7931: $56
	ld [hl], $56                                     ; $7932: $36 $56
	ld h, $56                                        ; $7934: $26 $56
	and [hl]                                         ; $7936: $a6
	ld d, [hl]                                       ; $7937: $56
	call nc, $c4a4                                   ; $7938: $d4 $a4 $c4
	ld a, d                                          ; $793b: $7a
	jp nz, Jump_03b_477f                             ; $793c: $c2 $7f $47

	inc c                                            ; $793f: $0c
	nop                                              ; $7940: $00
	call $9d33                                       ; $7941: $cd $33 $9d
	ld d, l                                          ; $7944: $55
	ld d, e                                          ; $7945: $53
	db $db                                           ; $7946: $db
	inc sp                                           ; $7947: $33
	sbc l                                            ; $7948: $9d
	ld [hl], e                                       ; $7949: $73
	inc sp                                           ; $794a: $33
	rrca                                             ; $794b: $0f
	dec b                                            ; $794c: $05
	rst SubAFromDE                                          ; $794d: $df
	rst $38                                          ; $794e: $ff
	sbc [hl]                                         ; $794f: $9e
	nop                                              ; $7950: $00
	ld a, e                                          ; $7951: $7b
	db $fd                                           ; $7952: $fd
	sbc d                                            ; $7953: $9a
	cp $ff                                           ; $7954: $fe $ff
	ld d, l                                          ; $7956: $55

jr_03b_7957:
	rst $38                                          ; $7957: $ff
	xor d                                            ; $7958: $aa
	ld [hl], e                                       ; $7959: $73
	db $fc                                           ; $795a: $fc
	rst SubAFromDE                                          ; $795b: $df
	rst $38                                          ; $795c: $ff
	add b                                            ; $795d: $80
	ld b, $ff                                        ; $795e: $06 $ff
	cp $07                                           ; $7960: $fe $07
	cp a                                             ; $7962: $bf
	cp $3e                                           ; $7963: $fe $3e
	db $fd                                           ; $7965: $fd
	dec a                                            ; $7966: $3d
	ld a, [$f43b]                                    ; $7967: $fa $3b $f4
	scf                                              ; $796a: $37
	add sp, -$40                                     ; $796b: $e8 $c0
	ret nz                                           ; $796d: $c0

	nop                                              ; $796e: $00
	add b                                            ; $796f: $80
	nop                                              ; $7970: $00
	add b                                            ; $7971: $80
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	ld c, a                                          ; $7974: $4f
	or b                                             ; $7975: $b0
	rst $38                                          ; $7976: $ff
	rst $38                                          ; $7977: $ff
	ld d, l                                          ; $7978: $55
	xor d                                            ; $7979: $aa
	ld a, [hl+]                                      ; $797a: $2a
	push de                                          ; $797b: $d5
	jr nc, jr_03b_791b                               ; $797c: $30 $9d

	db $10                                           ; $797e: $10
	jr nc, @-$20                                     ; $797f: $30 $de

	db $10                                           ; $7981: $10
	rst SubAFromDE                                          ; $7982: $df
	rst $38                                          ; $7983: $ff
	sbc l                                            ; $7984: $9d
	xor $11                                          ; $7985: $ee $11
	ld [hl], a                                       ; $7987: $77
	ldh a, [hDisp0_SCX]                                     ; $7988: $f0 $84
	xor d                                            ; $798a: $aa
	ld d, l                                          ; $798b: $55
	ld a, [de]                                       ; $798c: $1a
	dec d                                            ; $798d: $15
	dec e                                            ; $798e: $1d
	ld a, [de]                                       ; $798f: $1a
	ld a, [de]                                       ; $7990: $1a
	dec e                                            ; $7991: $1d
	db $fd                                           ; $7992: $fd
	ld a, [$f51a]                                    ; $7993: $fa $1a $f5
	push af                                          ; $7996: $f5
	ld a, [$b55a]                                    ; $7997: $fa $5a $b5
	sub l                                            ; $799a: $95
	ld a, d                                          ; $799b: $7a
	ld b, b                                          ; $799c: $40
	db $e3                                           ; $799d: $e3
	ld b, b                                          ; $799e: $40
	ldh a, [c]                                       ; $799f: $f2
	ld b, b                                          ; $79a0: $40
	rst $38                                          ; $79a1: $ff
	ld b, b                                          ; $79a2: $40
	rst $38                                          ; $79a3: $ff
	ld a, a                                          ; $79a4: $7f
	ld a, e                                          ; $79a5: $7b
	db $fc                                           ; $79a6: $fc
	sbc [hl]                                         ; $79a7: $9e
	ld b, c                                          ; $79a8: $41
	ld a, e                                          ; $79a9: $7b
	cp $89                                           ; $79aa: $fe $89
	nop                                              ; $79ac: $00
	ldh [rLCDC], a                                   ; $79ad: $e0 $40
	pop af                                           ; $79af: $f1
	ldh [rIE], a                                     ; $79b0: $e0 $ff
	ldh [$1f], a                                     ; $79b2: $e0 $1f
	rst $38                                          ; $79b4: $ff
	cp a                                             ; $79b5: $bf
	ldh [rIE], a                                     ; $79b6: $e0 $ff
	ldh a, [$5f]                                     ; $79b8: $f0 $5f
	ldh a, [rIE]                                     ; $79ba: $f0 $ff
	add b                                            ; $79bc: $80
	ld hl, sp-$80                                    ; $79bd: $f8 $80
	ld sp, hl                                        ; $79bf: $f9
	add b                                            ; $79c0: $80
	rst $38                                          ; $79c1: $ff
	ld a, e                                          ; $79c2: $7b
	xor a                                            ; $79c3: $af
	ld a, a                                          ; $79c4: $7f
	db $fc                                           ; $79c5: $fc
	sub e                                            ; $79c6: $93
	cp $80                                           ; $79c7: $fe $80
	push de                                          ; $79c9: $d5
	add b                                            ; $79ca: $80
	xor d                                            ; $79cb: $aa
	inc b                                            ; $79cc: $04
	ld [bc], a                                       ; $79cd: $02
	db $fc                                           ; $79ce: $fc
	ld [bc], a                                       ; $79cf: $02
	nop                                              ; $79d0: $00
	rst $38                                          ; $79d1: $ff
	nop                                              ; $79d2: $00
	ld [hl], a                                       ; $79d3: $77
	ld a, e                                          ; $79d4: $7b
	add b                                            ; $79d5: $80
	rst $38                                          ; $79d6: $ff
	ld [bc], a                                       ; $79d7: $02
	xor c                                            ; $79d8: $a9
	inc bc                                           ; $79d9: $03
	ld d, a                                          ; $79da: $57
	rlca                                             ; $79db: $07
	inc bc                                           ; $79dc: $03
	ld b, $06                                        ; $79dd: $06 $06
	rrca                                             ; $79df: $0f
	rst $38                                          ; $79e0: $ff
	rrca                                             ; $79e1: $0f
	inc l                                            ; $79e2: $2c
	db $db                                           ; $79e3: $db
	db $fd                                           ; $79e4: $fd
	ld a, [hl-]                                      ; $79e5: $3a
	cp $34                                           ; $79e6: $fe $34
	call c, Call_03b_6130                            ; $79e8: $dc $30 $61
	ld bc, $01fc                                     ; $79eb: $01 $fc $01
	db $ec                                           ; $79ee: $ec
	add c                                            ; $79ef: $81
	add b                                            ; $79f0: $80
	add c                                            ; $79f1: $81
	cp $c0                                           ; $79f2: $fe $c0
	ld b, b                                          ; $79f4: $40
	rst SubAFromDE                                          ; $79f5: $df
	ccf                                              ; $79f6: $3f
	sub [hl]                                         ; $79f7: $96
	daa                                              ; $79f8: $27
	and b                                            ; $79f9: $a0
	and b                                            ; $79fa: $a0
	or h                                             ; $79fb: $b4
	dec l                                            ; $79fc: $2d
	add b                                            ; $79fd: $80
	ld [hl], $00                                     ; $79fe: $36 $00
	ld d, $7b                                        ; $7a00: $16 $7b
	pop de                                           ; $7a02: $d1
	ld [hl], a                                       ; $7a03: $77
	adc $80                                          ; $7a04: $ce $80
	ld [$0015], a                                    ; $7a06: $ea $15 $00
	nop                                              ; $7a09: $00
	ld d, [hl]                                       ; $7a0a: $56
	ld h, $96                                        ; $7a0b: $26 $96
	ld h, $96                                        ; $7a0d: $26 $96
	ld hl, $f901                                     ; $7a0f: $21 $01 $f9
	ld [$e018], sp                                   ; $7a12: $08 $18 $e0
	ldh a, [rAUD3LEN]                                ; $7a15: $f0 $1b
	pop af                                           ; $7a17: $f1
	rrca                                             ; $7a18: $0f
	rrca                                             ; $7a19: $0f
	inc [hl]                                         ; $7a1a: $34
	jr nc, jr_03b_7a55                               ; $7a1b: $30 $38

	jr nc, jr_03b_7a2f                               ; $7a1d: $30 $10

	jr z, jr_03b_7a49                                ; $7a1f: $28 $28

	rst GetHLinHL                                          ; $7a21: $cf
	call nz, $c2e7                                   ; $7a22: $c4 $e7 $c2
	sbc b                                            ; $7a25: $98

jr_03b_7a26:
	jp nz, $87cf                                     ; $7a26: $c2 $cf $87

	ld a, b                                          ; $7a29: $78
	rst SubAFromDE                                          ; $7a2a: $df
	db $10                                           ; $7a2b: $10
	db $10                                           ; $7a2c: $10
	sbc $1c                                          ; $7a2d: $de $1c

jr_03b_7a2f:
	add b                                            ; $7a2f: $80
	rra                                              ; $7a30: $1f
	jr z, jr_03b_7a26                                ; $7a31: $28 $f3

	inc c                                            ; $7a33: $0c
	di                                               ; $7a34: $f3
	ld de, $e139                                     ; $7a35: $11 $39 $e1
	pop af                                           ; $7a38: $f1
	inc de                                           ; $7a39: $13
	di                                               ; $7a3a: $f3
	ld d, h                                          ; $7a3b: $54
	ld bc, $c1e8                                     ; $7a3c: $01 $e8 $c1
	call nc, $a8c1                                   ; $7a3f: $d4 $c1 $a8
	ld bc, $bfe0                                     ; $7a42: $01 $e0 $bf
	ccf                                              ; $7a45: $3f
	rra                                              ; $7a46: $1f
	db $10                                           ; $7a47: $10
	rra                                              ; $7a48: $1f

jr_03b_7a49:
	cpl                                              ; $7a49: $2f
	ccf                                              ; $7a4a: $3f
	ld a, e                                          ; $7a4b: $7b
	add [hl]                                         ; $7a4c: $86
	ld a, d                                          ; $7a4d: $7a
	add [hl]                                         ; $7a4e: $86
	ld [hl], a                                       ; $7a4f: $77
	db $fc                                           ; $7a50: $fc
	ld a, e                                          ; $7a51: $7b
	cp $89                                           ; $7a52: $fe $89
	add a                                            ; $7a54: $87

jr_03b_7a55:
	dec sp                                           ; $7a55: $3b
	rst JumpTable                                          ; $7a56: $c7
	ld a, [hl-]                                      ; $7a57: $3a
	rst JumpTable                                          ; $7a58: $c7
	ld b, b                                          ; $7a59: $40
	ld [bc], a                                       ; $7a5a: $02
	add b                                            ; $7a5b: $80
	ld [bc], a                                       ; $7a5c: $02
	rra                                              ; $7a5d: $1f
	nop                                              ; $7a5e: $00
	db $10                                           ; $7a5f: $10
	rrca                                             ; $7a60: $0f
	rra                                              ; $7a61: $1f
	rrca                                             ; $7a62: $0f
	db $10                                           ; $7a63: $10
	rst AddAOntoHL                                          ; $7a64: $ef
	ldh [c], a                                       ; $7a65: $e2
	db $fd                                           ; $7a66: $fd
	rst $38                                          ; $7a67: $ff
	rra                                              ; $7a68: $1f
	ccf                                              ; $7a69: $3f
	cp $77                                           ; $7a6a: $fe $77
	sub e                                            ; $7a6c: $93
	ld a, a                                          ; $7a6d: $7f
	ld b, [hl]                                       ; $7a6e: $46
	sbc b                                            ; $7a6f: $98
	rlca                                             ; $7a70: $07
	rst $38                                          ; $7a71: $ff
	sub b                                            ; $7a72: $90
	rrca                                             ; $7a73: $0f
	ldh a, [$ef]                                     ; $7a74: $f0 $ef
	db $f4                                           ; $7a76: $f4
	ld l, e                                          ; $7a77: $6b
	ldh a, [$7b]                                     ; $7a78: $f0 $7b
	add c                                            ; $7a7a: $81
	ld a, e                                          ; $7a7b: $7b
	db $fc                                           ; $7a7c: $fc
	ld a, a                                          ; $7a7d: $7f
	cp $6a                                           ; $7a7e: $fe $6a
	ret z                                            ; $7a80: $c8

	add b                                            ; $7a81: $80
	db $fc                                           ; $7a82: $fc
	reti                                             ; $7a83: $d9


	jr nc, @-$70                                     ; $7a84: $30 $8e

	add hl, de                                       ; $7a86: $19
	add sp, $1f                                      ; $7a87: $e8 $1f
	ldh a, [c]                                       ; $7a89: $f2
	rst $38                                          ; $7a8a: $ff
	ld h, a                                          ; $7a8b: $67
	ret c                                            ; $7a8c: $d8

	and e                                            ; $7a8d: $a3
	db $fc                                           ; $7a8e: $fc
	ld [hl], e                                       ; $7a8f: $73
	db $fc                                           ; $7a90: $fc
	or e                                             ; $7a91: $b3
	ld a, h                                          ; $7a92: $7c
	di                                               ; $7a93: $f3
	inc a                                            ; $7a94: $3c
	inc sp                                           ; $7a95: $33
	db $fc                                           ; $7a96: $fc
	nop                                              ; $7a97: $00
	rst $38                                          ; $7a98: $ff

Call_03b_7a99:
	or c                                             ; $7a99: $b1
	cp $11                                           ; $7a9a: $fe $11
	xor $0a                                          ; $7a9c: $ee $0a
	push af                                          ; $7a9e: $f5
	ld bc, $77fe                                     ; $7a9f: $01 $fe $77
	sub $7f                                          ; $7aa2: $d6 $7f
	cp $9b                                           ; $7aa4: $fe $9b
	xor e                                            ; $7aa6: $ab
	ld d, h                                          ; $7aa7: $54
	rrca                                             ; $7aa8: $0f
	ldh a, [rPCM12]                                  ; $7aa9: $f0 $76
	call z, $fc7f                                    ; $7aab: $cc $7f $fc
	ld a, a                                          ; $7aae: $7f
	db $ec                                           ; $7aaf: $ec
	ld a, a                                          ; $7ab0: $7f
	ldh a, [c]                                       ; $7ab1: $f2
	sbc l                                            ; $7ab2: $9d
	cp a                                             ; $7ab3: $bf

jr_03b_7ab4:
	ld b, b                                          ; $7ab4: $40
	ld [hl], a                                       ; $7ab5: $77
	db $eb                                           ; $7ab6: $eb
	halt                                             ; $7ab7: $76
	call z, $fc7f                                    ; $7ab8: $cc $7f $fc
	ld a, d                                          ; $7abb: $7a
	xor a                                            ; $7abc: $af
	ld a, a                                          ; $7abd: $7f
	db $fd                                           ; $7abe: $fd
	ld [hl], e                                       ; $7abf: $73
	db $db                                           ; $7ac0: $db
	ld a, [hl]                                       ; $7ac1: $7e
	adc $76                                          ; $7ac2: $ce $76
	ret z                                            ; $7ac4: $c8

	sbc e                                            ; $7ac5: $9b
	ld h, c                                          ; $7ac6: $61
	rst $38                                          ; $7ac7: $ff
	rst $38                                          ; $7ac8: $ff
	ld bc, $fe6f                                     ; $7ac9: $01 $6f $fe
	sbc d                                            ; $7acc: $9a
	ldh a, [$bf]                                     ; $7acd: $f0 $bf
	and b                                            ; $7acf: $a0
	sbc a                                            ; $7ad0: $9f
	db $10                                           ; $7ad1: $10
	ld a, e                                          ; $7ad2: $7b
	ld d, [hl]                                       ; $7ad3: $56
	sbc h                                            ; $7ad4: $9c
	rra                                              ; $7ad5: $1f
	ld d, b                                          ; $7ad6: $50
	ld e, a                                          ; $7ad7: $5f
	ld [hl], a                                       ; $7ad8: $77
	cp $9e                                           ; $7ad9: $fe $9e
	ldh a, [rPCM12]                                  ; $7adb: $f0 $76
	call z, $809c                                    ; $7add: $cc $9c $80
	push af                                          ; $7ae0: $f5
	add b                                            ; $7ae1: $80
	halt                                             ; $7ae2: $76
	xor [hl]                                         ; $7ae3: $ae
	ld [hl], e                                       ; $7ae4: $73
	ret nc                                           ; $7ae5: $d0

	add b                                            ; $7ae6: $80
	inc bc                                           ; $7ae7: $03
	xor a                                            ; $7ae8: $af
	inc bc                                           ; $7ae9: $03
	ld d, a                                          ; $7aea: $57
	dec b                                            ; $7aeb: $05
	xor a                                            ; $7aec: $af
	rlca                                             ; $7aed: $07
	ld d, a                                          ; $7aee: $57
	rrca                                             ; $7aef: $0f
	rst $38                                          ; $7af0: $ff
	db $fd                                           ; $7af1: $fd
	ld c, $fe                                        ; $7af2: $0e $fe
	rrca                                             ; $7af4: $0f
	db $fd                                           ; $7af5: $fd
	rrca                                             ; $7af6: $0f
	dec e                                            ; $7af7: $1d
	or e                                             ; $7af8: $b3
	ld c, $5f                                        ; $7af9: $0e $5f
	add e                                            ; $7afb: $83
	xor e                                            ; $7afc: $ab
	jp nz, $c2d7                                     ; $7afd: $c2 $d7 $c2

	ld [$ffc2], a                                    ; $7b00: $ea $c2 $ff
	cp $43                                           ; $7b03: $fe $43
	ld a, a                                          ; $7b05: $7f
	adc d                                            ; $7b06: $8a
	pop bc                                           ; $7b07: $c1
	jr nz, jr_03b_7ab4                               ; $7b08: $20 $aa

	jr nz, jr_03b_7b41                               ; $7b0a: $20 $35

	ld b, b                                          ; $7b0c: $40
	ld l, d                                          ; $7b0d: $6a
	jr nz, jr_03b_7b4d                               ; $7b0e: $20 $3d

	jr nz, jr_03b_7b51                               ; $7b10: $20 $3f

	jr nz, jr_03b_7b53                               ; $7b12: $20 $3f

	ld a, a                                          ; $7b14: $7f
	ld b, b                                          ; $7b15: $40
	ccf                                              ; $7b16: $3f
	ldh [rP1], a                                     ; $7b17: $e0 $00
	xor d                                            ; $7b19: $aa
	nop                                              ; $7b1a: $00
	ld d, l                                          ; $7b1b: $55
	ld [hl], e                                       ; $7b1c: $73
	db $fc                                           ; $7b1d: $fc
	add b                                            ; $7b1e: $80
	db $eb                                           ; $7b1f: $eb
	nop                                              ; $7b20: $00
	cp $80                                           ; $7b21: $fe $80
	ld a, a                                          ; $7b23: $7f
	rst $38                                          ; $7b24: $ff
	nop                                              ; $7b25: $00
	rrca                                             ; $7b26: $0f
	inc c                                            ; $7b27: $0c
	add hl, bc                                       ; $7b28: $09
	ld a, b                                          ; $7b29: $78
	ld a, [bc]                                       ; $7b2a: $0a
	xor b                                            ; $7b2b: $a8
	ld a, [bc]                                       ; $7b2c: $0a
	ld e, d                                          ; $7b2d: $5a
	ld a, [bc]                                       ; $7b2e: $0a
	xor d                                            ; $7b2f: $aa
	rrca                                             ; $7b30: $0f
	ld [hl], l                                       ; $7b31: $75
	rlca                                             ; $7b32: $07
	rst $38                                          ; $7b33: $ff
	rst SubAFromBC                                          ; $7b34: $e7
	ld a, [de]                                       ; $7b35: $1a
	db $fc                                           ; $7b36: $fc
	rst JumpTable                                          ; $7b37: $c7
	call nz, $d4c7                                   ; $7b38: $c4 $c7 $d4
	rst JumpTable                                          ; $7b3b: $c7
	call nc, Call_03b_7fd7                           ; $7b3c: $d4 $d7 $7f
	cp $93                                           ; $7b3f: $fe $93

jr_03b_7b41:
	ld a, h                                          ; $7b41: $7c
	rst AddAOntoHL                                          ; $7b42: $ef
	inc a                                            ; $7b43: $3c

Call_03b_7b44:
	rst $38                                          ; $7b44: $ff
	cp a                                             ; $7b45: $bf
	ld b, a                                          ; $7b46: $47
	dec e                                            ; $7b47: $1d
	db $fd                                           ; $7b48: $fd
	ld de, $11fd                                     ; $7b49: $11 $fd $11
	di                                               ; $7b4c: $f3

jr_03b_7b4d:
	ld a, e                                          ; $7b4d: $7b
	cp $99                                           ; $7b4e: $fe $99
	ei                                               ; $7b50: $fb

jr_03b_7b51:
	dec bc                                           ; $7b51: $0b
	ei                                               ; $7b52: $fb

jr_03b_7b53:
	dec de                                           ; $7b53: $1b
	rst $38                                          ; $7b54: $ff
	rst FarCall                                          ; $7b55: $f7
	ld a, e                                          ; $7b56: $7b
	ld h, [hl]                                       ; $7b57: $66
	sbc c                                            ; $7b58: $99
	pop hl                                           ; $7b59: $e1
	rst $38                                          ; $7b5a: $ff
	ld d, b                                          ; $7b5b: $50
	rst SubAFromDE                                          ; $7b5c: $df
	db $10                                           ; $7b5d: $10
	sbc a                                            ; $7b5e: $9f
	ld [hl], a                                       ; $7b5f: $77
	or b                                             ; $7b60: $b0
	sub a                                            ; $7b61: $97
	and b                                            ; $7b62: $a0
	rst $38                                          ; $7b63: $ff
	ld h, b                                          ; $7b64: $60
	rst $38                                          ; $7b65: $ff
	ld a, d                                          ; $7b66: $7a
	add a                                            ; $7b67: $87
	ld a, e                                          ; $7b68: $7b
	add a                                            ; $7b69: $87
	ld a, e                                          ; $7b6a: $7b
	db $fc                                           ; $7b6b: $fc
	ld a, d                                          ; $7b6c: $7a
	cp h                                             ; $7b6d: $bc
	ld l, a                                          ; $7b6e: $6f
	cp $9c                                           ; $7b6f: $fe $9c
	rra                                              ; $7b71: $1f
	ldh [$e0], a                                     ; $7b72: $e0 $e0
	ld [hl], c                                       ; $7b74: $71
	xor [hl]                                         ; $7b75: $ae
	ld h, a                                          ; $7b76: $67
	cp $9c                                           ; $7b77: $fe $9c
	ldh a, [rIF]                                     ; $7b79: $f0 $0f
	ldh a, [$7a]                                     ; $7b7b: $f0 $7a
	or [hl]                                          ; $7b7d: $b6
	ld a, a                                          ; $7b7e: $7f
	db $fc                                           ; $7b7f: $fc

Call_03b_7b80:
	sbc [hl]                                         ; $7b80: $9e
	rst FarCall                                          ; $7b81: $f7
	ld [hl], e                                       ; $7b82: $73
	cp $9d                                           ; $7b83: $fe $9d
	push af                                          ; $7b85: $f5
	rrca                                             ; $7b86: $0f
	ld h, a                                          ; $7b87: $67
	rst SubAFromBC                                          ; $7b88: $e7
	ld a, [hl]                                       ; $7b89: $7e
	or b                                             ; $7b8a: $b0
	db $dd                                           ; $7b8b: $dd
	rst $38                                          ; $7b8c: $ff
	ld a, a                                          ; $7b8d: $7f
	ld a, a                                          ; $7b8e: $7f
	ld h, a                                          ; $7b8f: $67
	push de                                          ; $7b90: $d5
	halt                                             ; $7b91: $76
	call c, $fc77                                    ; $7b92: $dc $77 $fc
	sub a                                            ; $7b95: $97
	pop hl                                           ; $7b96: $e1
	cp $02                                           ; $7b97: $fe $02
	db $fd                                           ; $7b99: $fd
	dec d                                            ; $7b9a: $15
	ld [$d52a], a                                    ; $7b9b: $ea $2a $d5
	ld l, [hl]                                       ; $7b9e: $6e
	ret c                                            ; $7b9f: $d8

	ld a, a                                          ; $7ba0: $7f
	db $fc                                           ; $7ba1: $fc
	sbc c                                            ; $7ba2: $99
	ld d, a                                          ; $7ba3: $57
	xor b                                            ; $7ba4: $a8
	cp a                                             ; $7ba5: $bf
	ld b, b                                          ; $7ba6: $40
	ld a, a                                          ; $7ba7: $7f
	add b                                            ; $7ba8: $80
	ld h, a                                          ; $7ba9: $67
	db $fc                                           ; $7baa: $fc
	ld e, a                                          ; $7bab: $5f
	xor b                                            ; $7bac: $a8
	ld [hl], a                                       ; $7bad: $77
	cp $9c                                           ; $7bae: $fe $9c
	ld a, [$d500]                                    ; $7bb0: $fa $00 $d5
	ld e, e                                          ; $7bb3: $5b
	ldh a, [c]                                       ; $7bb4: $f2
	sbc [hl]                                         ; $7bb5: $9e
	db $fd                                           ; $7bb6: $fd
	ld a, e                                          ; $7bb7: $7b
	add hl, hl                                       ; $7bb8: $29
	sbc e                                            ; $7bb9: $9b
	ld e, a                                          ; $7bba: $5f
	nop                                              ; $7bbb: $00
	cp $01                                           ; $7bbc: $fe $01
	ld a, e                                          ; $7bbe: $7b
	db $f4                                           ; $7bbf: $f4
	sub a                                            ; $7bc0: $97
	inc bc                                           ; $7bc1: $03
	rst $38                                          ; $7bc2: $ff
	rrca                                             ; $7bc3: $0f
	rst $38                                          ; $7bc4: $ff
	rlca                                             ; $7bc5: $07
	ld d, l                                          ; $7bc6: $55
	nop                                              ; $7bc7: $00
	cp a                                             ; $7bc8: $bf
	ld a, e                                          ; $7bc9: $7b
	ld [$857f], a                                    ; $7bca: $ea $7f $85
	sub [hl]                                         ; $7bcd: $96
	xor a                                            ; $7bce: $af
	ldh a, [$2f]                                     ; $7bcf: $f0 $2f
	jr nz, @+$01                                     ; $7bd1: $20 $ff

	ldh a, [$fe]                                     ; $7bd3: $f0 $fe
	nop                                              ; $7bd5: $00
	ld bc, $c453                                     ; $7bd6: $01 $53 $c4
	ld a, l                                          ; $7bd9: $7d
	dec hl                                           ; $7bda: $2b
	ld l, a                                          ; $7bdb: $6f
	ld hl, sp+$7e                                    ; $7bdc: $f8 $7e
	call z, $fe9d                                    ; $7bde: $cc $9d $fe
	ld b, $7a                                        ; $7be1: $06 $7a
	dec h                                            ; $7be3: $25
	ld a, [hl]                                       ; $7be4: $7e
	dec c                                            ; $7be5: $0d
	ld a, a                                          ; $7be6: $7f
	add e                                            ; $7be7: $83
	ld [hl], a                                       ; $7be8: $77
	add $7f                                          ; $7be9: $c6 $7f
	cp $8e                                           ; $7beb: $fe $8e
	pop bc                                           ; $7bed: $c1
	ld a, h                                          ; $7bee: $7c
	ld b, c                                          ; $7bef: $41
	ld a, l                                          ; $7bf0: $7d
	ld [hl], d                                       ; $7bf1: $72
	db $ed                                           ; $7bf2: $ed
	db $e3                                           ; $7bf3: $e3
	inc bc                                           ; $7bf4: $03
	rlca                                             ; $7bf5: $07
	rrca                                             ; $7bf6: $0f
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	ldh a, [$f0]                                     ; $7bf9: $f0 $f0
	rrca                                             ; $7bfb: $0f
	cp a                                             ; $7bfc: $bf
	and b                                            ; $7bfd: $a0
	ld a, e                                          ; $7bfe: $7b

Call_03b_7bff:
	cp $97                                           ; $7bff: $fe $97
	ldh [$7f], a                                     ; $7c01: $e0 $7f
	ret nz                                           ; $7c03: $c0

	rst $38                                          ; $7c04: $ff
	ret nz                                           ; $7c05: $c0

	rst $38                                          ; $7c06: $ff
	nop                                              ; $7c07: $00
	rra                                              ; $7c08: $1f
	ld [hl], a                                       ; $7c09: $77
	sbc d                                            ; $7c0a: $9a
	sbc [hl]                                         ; $7c0b: $9e
	ld [bc], a                                       ; $7c0c: $02
	ld c, a                                          ; $7c0d: $4f
	ld a, h                                          ; $7c0e: $7c
	add a                                            ; $7c0f: $87
	ld b, e                                          ; $7c10: $43
	cp d                                             ; $7c11: $ba
	sbc a                                            ; $7c12: $9f
	ld a, a                                          ; $7c13: $7f
	cp h                                             ; $7c14: $bc
	ld a, a                                          ; $7c15: $7f
	jp nz, $d53d                                     ; $7c16: $c2 $3d $d5

	ld a, [hl+]                                      ; $7c19: $2a
	ld [$f515], a                                    ; $7c1a: $ea $15 $f5
	ld a, [bc]                                       ; $7c1d: $0a
	cp $01                                           ; $7c1e: $fe $01
	ccf                                              ; $7c20: $3f
	rst SubAFromHL                                          ; $7c21: $d7
	ld a, a                                          ; $7c22: $7f
	cp e                                             ; $7c23: $bb
	di                                               ; $7c24: $f3
	rst $38                                          ; $7c25: $ff
	ld [bc], a                                       ; $7c26: $02
	db $fd                                           ; $7c27: $fd
	ld h, a                                          ; $7c28: $67
	ld b, b                                          ; $7c29: $40
	sbc l                                            ; $7c2a: $9d
	ei                                               ; $7c2b: $fb
	di                                               ; $7c2c: $f3
	ld l, a                                          ; $7c2d: $6f
	rla                                              ; $7c2e: $17
	sub d                                            ; $7c2f: $92
	ld e, a                                          ; $7c30: $5f
	cp a                                             ; $7c31: $bf
	xor a                                            ; $7c32: $af
	ld d, a                                          ; $7c33: $57
	ld d, h                                          ; $7c34: $54
	xor e                                            ; $7c35: $ab
	xor d                                            ; $7c36: $aa
	ld d, l                                          ; $7c37: $55
	rst $38                                          ; $7c38: $ff
	and b                                            ; $7c39: $a0
	rst SubAFromDE                                          ; $7c3a: $df
	cp h                                             ; $7c3b: $bc
	rra                                              ; $7c3c: $1f
	rst SubAFromHL                                          ; $7c3d: $d7
	rst $38                                          ; $7c3e: $ff
	sbc h                                            ; $7c3f: $9c
	ccf                                              ; $7c40: $3f
	db $fd                                           ; $7c41: $fd
	add [hl]                                         ; $7c42: $86
	ld [hl], e                                       ; $7c43: $73
	cp $9c                                           ; $7c44: $fe $9c
	and $ff                                          ; $7c46: $e6 $ff
	cp $da                                           ; $7c48: $fe $da
	rst $38                                          ; $7c4a: $ff
	ld e, a                                          ; $7c4b: $5f
	and h                                            ; $7c4c: $a4
	ld a, a                                          ; $7c4d: $7f
	adc [hl]                                         ; $7c4e: $8e
	sbc e                                            ; $7c4f: $9b
	ld hl, sp-$01                                    ; $7c50: $f8 $ff
	rst $38                                          ; $7c52: $ff
	or $7a                                           ; $7c53: $f6 $7a
	call z, $fc77                                    ; $7c55: $cc $77 $fc
	ld a, d                                          ; $7c58: $7a
	jp nz, $0d84                                     ; $7c59: $c2 $84 $0d

	rst FarCall                                          ; $7c5c: $f7
	rrca                                             ; $7c5d: $0f
	db $f4                                           ; $7c5e: $f4
	rrca                                             ; $7c5f: $0f
	cp a                                             ; $7c60: $bf
	rst $38                                          ; $7c61: $ff
	ld e, a                                          ; $7c62: $5f
	rst $38                                          ; $7c63: $ff
	xor a                                            ; $7c64: $af
	rst $38                                          ; $7c65: $ff
	ld d, a                                          ; $7c66: $57
	rst $38                                          ; $7c67: $ff
	xor e                                            ; $7c68: $ab
	rst $38                                          ; $7c69: $ff
	push af                                          ; $7c6a: $f5
	rst $38                                          ; $7c6b: $ff
	cp a                                             ; $7c6c: $bf
	ld a, a                                          ; $7c6d: $7f
	db $dd                                           ; $7c6e: $dd
	rst $38                                          ; $7c6f: $ff
	dec b                                            ; $7c70: $05
	ld a, [$008a]                                    ; $7c71: $fa $8a $00
	ld d, l                                          ; $7c74: $55
	ld a, [hl+]                                      ; $7c75: $2a
	ld l, [hl]                                       ; $7c76: $6e
	call z, $fc7f                                    ; $7c77: $cc $7f $fc
	ld a, c                                          ; $7c7a: $79
	ld [hl], b                                       ; $7c7b: $70
	sbc h                                            ; $7c7c: $9c

Call_03b_7c7d:
	and b                                            ; $7c7d: $a0
	xor d                                            ; $7c7e: $aa
	dec d                                            ; $7c7f: $15
	ld h, a                                          ; $7c80: $67
	add h                                            ; $7c81: $84
	ld [hl], h                                       ; $7c82: $74
	ld d, b                                          ; $7c83: $50
	sbc [hl]                                         ; $7c84: $9e
	ld l, d                                          ; $7c85: $6a
	ld a, e                                          ; $7c86: $7b
	or [hl]                                          ; $7c87: $b6
	sub d                                            ; $7c88: $92
	rla                                              ; $7c89: $17
	add sp, -$31                                     ; $7c8a: $e8 $cf
	jr nc, jr_03b_7ce5                               ; $7c8c: $30 $57

	xor b                                            ; $7c8e: $a8
	cp e                                             ; $7c8f: $bb
	ld b, h                                          ; $7c90: $44
	ld e, h                                          ; $7c91: $5c
	and e                                            ; $7c92: $a3
	xor e                                            ; $7c93: $ab
	ld d, h                                          ; $7c94: $54
	xor a                                            ; $7c95: $af
	ld e, e                                          ; $7c96: $5b
	ld b, h                                          ; $7c97: $44
	sbc e                                            ; $7c98: $9b
	ei                                               ; $7c99: $fb
	inc b                                            ; $7c9a: $04
	rst GetHLinHL                                          ; $7c9b: $cf
	jr nc, jr_03b_7ced                               ; $7c9c: $30 $4f

	ld [hl-], a                                      ; $7c9e: $32
	inc bc                                           ; $7c9f: $03
	cp $03                                           ; $7ca0: $fe $03
	cp $7c                                           ; $7ca2: $fe $7c
	ld [hl-], a                                      ; $7ca4: $32
	ld b, a                                          ; $7ca5: $47
	xor $9e                                          ; $7ca6: $ee $9e
	ld a, a                                          ; $7ca8: $7f
	ld a, e                                          ; $7ca9: $7b
	cp $76                                           ; $7caa: $fe $76
	halt                                             ; $7cac: $76
	ld a, a                                          ; $7cad: $7f
	cp $9e                                           ; $7cae: $fe $9e
	rst SubAFromDE                                          ; $7cb0: $df
	dec sp                                           ; $7cb1: $3b
	ret nc                                           ; $7cb2: $d0

	ld a, [hl]                                       ; $7cb3: $7e
	call z, $7877                                    ; $7cb4: $cc $77 $78
	ld a, [hl]                                       ; $7cb7: $7e
	ret z                                            ; $7cb8: $c8

	sub a                                            ; $7cb9: $97
	db $eb                                           ; $7cba: $eb
	inc d                                            ; $7cbb: $14
	or $09                                           ; $7cbc: $f6 $09
	db $fd                                           ; $7cbe: $fd
	ld [bc], a                                       ; $7cbf: $02
	ld a, [$5f05]                                    ; $7cc0: $fa $05 $5f
	ld b, h                                          ; $7cc3: $44
	cpl                                              ; $7cc4: $2f
	db $fc                                           ; $7cc5: $fc
	ld a, [hl]                                       ; $7cc6: $7e
	ld d, l                                          ; $7cc7: $55
	sbc c                                            ; $7cc8: $99
	add c                                            ; $7cc9: $81
	ld a, a                                          ; $7cca: $7f
	ld b, b                                          ; $7ccb: $40
	cp a                                             ; $7ccc: $bf
	and b                                            ; $7ccd: $a0
	ld e, a                                          ; $7cce: $5f
	ld [hl], a                                       ; $7ccf: $77
	db $fc                                           ; $7cd0: $fc
	sbc e                                            ; $7cd1: $9b
	ld d, b                                          ; $7cd2: $50
	xor a                                            ; $7cd3: $af
	and b                                            ; $7cd4: $a0
	ld e, a                                          ; $7cd5: $5f
	ld l, l                                          ; $7cd6: $6d
	cp d                                             ; $7cd7: $ba
	ld a, [hl]                                       ; $7cd8: $7e
	ld de, $0d7e                                     ; $7cd9: $11 $7e $0d
	ld l, a                                          ; $7cdc: $6f
	xor a                                            ; $7cdd: $af
	reti                                             ; $7cde: $d9


	rst $38                                          ; $7cdf: $ff
	add b                                            ; $7ce0: $80
	db $fc                                           ; $7ce1: $fc
	rst $38                                          ; $7ce2: $ff
	db $e3                                           ; $7ce3: $e3
	rst $38                                          ; $7ce4: $ff

jr_03b_7ce5:
	ld sp, hl                                        ; $7ce5: $f9
	rst $38                                          ; $7ce6: $ff
	sbc $ff                                          ; $7ce7: $de $ff
	ei                                               ; $7ce9: $fb
	rst AddAOntoHL                                          ; $7cea: $ef
	ei                                               ; $7ceb: $fb
	db $ed                                           ; $7cec: $ed

jr_03b_7ced:
	ei                                               ; $7ced: $fb
	db $ec                                           ; $7cee: $ec
	ld hl, sp-$11                                    ; $7cef: $f8 $ef
	ei                                               ; $7cf1: $fb
	rrca                                             ; $7cf2: $0f
	ei                                               ; $7cf3: $fb
	rst $38                                          ; $7cf4: $ff
	add hl, bc                                       ; $7cf5: $09
	cp $c6                                           ; $7cf6: $fe $c6
	ld a, l                                          ; $7cf8: $7d
	ld e, $ff                                        ; $7cf9: $1e $ff
	ld e, $ff                                        ; $7cfb: $1e $ff
	sbc [hl]                                         ; $7cfd: $9e
	ld a, a                                          ; $7cfe: $7f
	sbc $9d                                          ; $7cff: $de $9d
	ccf                                              ; $7d01: $3f
	sbc $7b                                          ; $7d02: $de $7b
	ld hl, sp-$65                                    ; $7d04: $f8 $9b
	inc e                                            ; $7d06: $1c
	rst $38                                          ; $7d07: $ff
	rst SubAFromHL                                          ; $7d08: $d7
	cp b                                             ; $7d09: $b8
	ld h, a                                          ; $7d0a: $67
	ld [hl], a                                       ; $7d0b: $77
	ld h, a                                          ; $7d0c: $67
	ld [hl], b                                       ; $7d0d: $70
	ld a, [hl]                                       ; $7d0e: $7e
	or b                                             ; $7d0f: $b0
	ld l, d                                          ; $7d10: $6a
	add e                                            ; $7d11: $83
	sbc [hl]                                         ; $7d12: $9e
	ccf                                              ; $7d13: $3f
	ld l, l                                          ; $7d14: $6d
	ldh a, [rPCM34]                                  ; $7d15: $f0 $77
	adc h                                            ; $7d17: $8c
	ld a, a                                          ; $7d18: $7f
	db $ec                                           ; $7d19: $ec
	ld a, [hl]                                       ; $7d1a: $7e
	and b                                            ; $7d1b: $a0
	ld l, a                                          ; $7d1c: $6f
	db $ec                                           ; $7d1d: $ec
	ld a, l                                          ; $7d1e: $7d
	ldh a, [$7d]                                     ; $7d1f: $f0 $7d
	ld a, h                                          ; $7d21: $7c
	ld a, [hl]                                       ; $7d22: $7e
	cp b                                             ; $7d23: $b8
	sbc e                                            ; $7d24: $9b
	ld e, a                                          ; $7d25: $5f
	and b                                            ; $7d26: $a0
	xor e                                            ; $7d27: $ab
	ld d, h                                          ; $7d28: $54
	halt                                             ; $7d29: $76
	and h                                            ; $7d2a: $a4
	ld a, [hl]                                       ; $7d2b: $7e
	sub b                                            ; $7d2c: $90
	ld a, h                                          ; $7d2d: $7c
	jr c, jr_03b_7da5                                ; $7d2e: $38 $75

	ld l, h                                          ; $7d30: $6c

jr_03b_7d31:
	sbc l                                            ; $7d31: $9d
	ld e, e                                          ; $7d32: $5b
	and h                                            ; $7d33: $a4
	ld [hl], a                                       ; $7d34: $77
	db $fc                                           ; $7d35: $fc
	sbc l                                            ; $7d36: $9d
	xor a                                            ; $7d37: $af
	ld d, b                                          ; $7d38: $50
	ld [hl], a                                       ; $7d39: $77
	call nc, $b867                                   ; $7d3a: $d4 $67 $b8
	sub a                                            ; $7d3d: $97
	ld e, [hl]                                       ; $7d3e: $5e
	and c                                            ; $7d3f: $a1
	rst AddAOntoHL                                          ; $7d40: $ef
	db $10                                           ; $7d41: $10
	ld a, l                                          ; $7d42: $7d
	add d                                            ; $7d43: $82
	xor a                                            ; $7d44: $af
	ld d, b                                          ; $7d45: $50
	ld e, a                                          ; $7d46: $5f
	ld d, $9b                                        ; $7d47: $16 $9b
	db $ed                                           ; $7d49: $ed
	ld [de], a                                       ; $7d4a: $12
	ld a, a                                          ; $7d4b: $7f
	add b                                            ; $7d4c: $80
	ld d, a                                          ; $7d4d: $57
	ldh a, [rPCM34]                                  ; $7d4e: $f0 $77
	ld [$f246], sp                                   ; $7d50: $08 $46 $f2
	sbc l                                            ; $7d53: $9d
	ld a, [hl]                                       ; $7d54: $7e
	add c                                            ; $7d55: $81
	ld c, a                                          ; $7d56: $4f
	ldh a, [$7d]                                     ; $7d57: $f0 $7d
	inc c                                            ; $7d59: $0c
	sbc h                                            ; $7d5a: $9c
	rst AddAOntoHL                                          ; $7d5b: $ef
	nop                                              ; $7d5c: $00
	rst FarCall                                          ; $7d5d: $f7

jr_03b_7d5e:
	ld a, e                                          ; $7d5e: $7b
	cp $9e                                           ; $7d5f: $fe $9e
	ei                                               ; $7d61: $fb
	ld a, e                                          ; $7d62: $7b
	cp $75                                           ; $7d63: $fe $75
	ld e, $9d                                        ; $7d65: $1e $9d
	ld [hl], a                                       ; $7d67: $77
	adc b                                            ; $7d68: $88
	ld h, a                                          ; $7d69: $67
	and $7e                                          ; $7d6a: $e6 $7e
	jp nc, $df8d                                     ; $7d6c: $d2 $8d $df

	jr nz, jr_03b_7d5e                               ; $7d6f: $20 $ed

	ld [de], a                                       ; $7d71: $12
	ld a, [$dd05]                                    ; $7d72: $fa $05 $dd
	ld [hl+], a                                      ; $7d75: $22
	ld [$7515], a                                    ; $7d76: $ea $15 $75
	adc d                                            ; $7d79: $8a
	ld [$d515], a                                    ; $7d7a: $ea $15 $d5
	ld a, [hl+]                                      ; $7d7d: $2a
	xor d                                            ; $7d7e: $aa
	ld d, l                                          ; $7d7f: $55
	ld [hl], a                                       ; $7d80: $77
	db $fc                                           ; $7d81: $fc
	ld b, $c0                                        ; $7d82: $06 $c0
	halt                                             ; $7d84: $76
	call z, $fc7f                                    ; $7d85: $cc $7f $fc
	sbc l                                            ; $7d88: $9d
	xor b                                            ; $7d89: $a8
	ld d, a                                          ; $7d8a: $57
	ld h, [hl]                                       ; $7d8b: $66
	cp h                                             ; $7d8c: $bc
	ld d, a                                          ; $7d8d: $57
	sub c                                            ; $7d8e: $91
	ld a, h                                          ; $7d8f: $7c
	db $fd                                           ; $7d90: $fd
	ld a, a                                          ; $7d91: $7f
	jr jr_03b_7d31                                   ; $7d92: $18 $9d

	ld d, e                                          ; $7d94: $53
	xor a                                            ; $7d95: $af
	ld [hl], h                                       ; $7d96: $74
	add h                                            ; $7d97: $84
	ld a, a                                          ; $7d98: $7f
	db $fc                                           ; $7d99: $fc
	ld a, l                                          ; $7d9a: $7d
	ret nc                                           ; $7d9b: $d0

	add b                                            ; $7d9c: $80
	xor a                                            ; $7d9d: $af
	ld d, c                                          ; $7d9e: $51
	ld e, a                                          ; $7d9f: $5f
	and c                                            ; $7da0: $a1
	cp a                                             ; $7da1: $bf
	ld b, e                                          ; $7da2: $43
	di                                               ; $7da3: $f3
	sbc a                                            ; $7da4: $9f

jr_03b_7da5:
	db $fc                                           ; $7da5: $fc
	rst JumpTable                                          ; $7da6: $c7
	xor a                                            ; $7da7: $af
	ld sp, $7c57                                     ; $7da8: $31 $57 $7c
	xor c                                            ; $7dab: $a9
	rst $38                                          ; $7dac: $ff
	ld d, h                                          ; $7dad: $54
	rst $38                                          ; $7dae: $ff
	xor d                                            ; $7daf: $aa
	rst $38                                          ; $7db0: $ff
	ld d, l                                          ; $7db1: $55
	rst $38                                          ; $7db2: $ff
	rst SubAFromBC                                          ; $7db3: $e7
	ld a, $e1                                        ; $7db4: $3e $e1
	ld a, a                                          ; $7db6: $7f
	ld h, $f9                                        ; $7db7: $26 $f9
	rst GetHLinHL                                          ; $7db9: $cf
	ld a, [hl]                                       ; $7dba: $7e
	pop hl                                           ; $7dbb: $e1
	sub l                                            ; $7dbc: $95
	ccf                                              ; $7dbd: $3f
	ld a, b                                          ; $7dbe: $78
	adc a                                            ; $7dbf: $8f
	ld a, $e3                                        ; $7dc0: $3e $e3
	ld c, a                                          ; $7dc2: $4f
	ld hl, sp-$01                                    ; $7dc3: $f8 $ff
	nop                                              ; $7dc5: $00
	rrca                                             ; $7dc6: $0f
	ld a, b                                          ; $7dc7: $78
	and [hl]                                         ; $7dc8: $a6
	sbc c                                            ; $7dc9: $99
	nop                                              ; $7dca: $00
	ret nz                                           ; $7dcb: $c0

	ret nz                                           ; $7dcc: $c0

	ld sp, $0ff0                                     ; $7dcd: $31 $f0 $0f
	ld d, [hl]                                       ; $7dd0: $56
	inc c                                            ; $7dd1: $0c
	sbc [hl]                                         ; $7dd2: $9e
	ccf                                              ; $7dd3: $3f
	ld a, b                                          ; $7dd4: $78
	ret nc                                           ; $7dd5: $d0

	ld [hl], c                                       ; $7dd6: $71
	ldh a, [$9e]                                     ; $7dd7: $f0 $9e
	inc bc                                           ; $7dd9: $03
	ld l, b                                          ; $7dda: $68
	xor b                                            ; $7ddb: $a8
	ld h, d                                          ; $7ddc: $62
	and b                                            ; $7ddd: $a0
	sbc e                                            ; $7dde: $9b
	add d                                            ; $7ddf: $82
	ld a, l                                          ; $7de0: $7d
	ld b, c                                          ; $7de1: $41
	cp [hl]                                          ; $7de2: $be
	ld l, a                                          ; $7de3: $6f
	ld a, h                                          ; $7de4: $7c
	ld [hl], h                                       ; $7de5: $74
	ldh a, [rHDMA5]                                  ; $7de6: $f0 $55
	ld d, h                                          ; $7de8: $54
	ld a, a                                          ; $7de9: $7f
	db $fc                                           ; $7dea: $fc
	ld a, [hl]                                       ; $7deb: $7e
	or b                                             ; $7dec: $b0
	ld b, a                                          ; $7ded: $47
	ld d, b                                          ; $7dee: $50
	halt                                             ; $7def: $76
	cp h                                             ; $7df0: $bc
	ld d, a                                          ; $7df1: $57
	ldh a, [$7f]                                     ; $7df2: $f0 $7f
	inc c                                            ; $7df4: $0c
	ld l, [hl]                                       ; $7df5: $6e
	ld l, h                                          ; $7df6: $6c
	ld h, a                                          ; $7df7: $67
	db $fc                                           ; $7df8: $fc
	sbc e                                            ; $7df9: $9b
	rst FarCall                                          ; $7dfa: $f7
	ld [$01fe], sp                                   ; $7dfb: $08 $fe $01
	ld d, a                                          ; $7dfe: $57
	ldh a, [$7e]                                     ; $7dff: $f0 $7e
	xor h                                            ; $7e01: $ac
	ld a, [hl]                                       ; $7e02: $7e
	add sp, $7f                                      ; $7e03: $e8 $7f
	call z, $f05f                                    ; $7e05: $cc $5f $f0
	sbc [hl]                                         ; $7e08: $9e
	call c, $e07a                                    ; $7e09: $dc $7a $e0
	ld d, a                                          ; $7e0c: $57
	ldh [$7e], a                                     ; $7e0d: $e0 $7e
	call c, $2a9e                                    ; $7e0f: $dc $9e $2a
	halt                                             ; $7e12: $76
	ret c                                            ; $7e13: $d8

	ld a, d                                          ; $7e14: $7a
	call z, $8a99                                    ; $7e15: $cc $99 $8a
	ld d, l                                          ; $7e18: $55
	dec [hl]                                         ; $7e19: $35
	jp z, Jump_03b_45aa                              ; $7e1a: $ca $aa $45

	ld b, $d0                                        ; $7e1d: $06 $d0
	ld [hl], a                                       ; $7e1f: $77
	db $fc                                           ; $7e20: $fc
	sbc e                                            ; $7e21: $9b
	ld d, [hl]                                       ; $7e22: $56
	xor c                                            ; $7e23: $a9
	xor b                                            ; $7e24: $a8
	ld d, a                                          ; $7e25: $57
	ld l, [hl]                                       ; $7e26: $6e
	call nz, $a49d                                   ; $7e27: $c4 $9d $a4
	ld e, e                                          ; $7e2a: $5b
	ld [hl], a                                       ; $7e2b: $77
	dec sp                                           ; $7e2c: $3b
	sbc l                                            ; $7e2d: $9d
	add b                                            ; $7e2e: $80
	ld a, a                                          ; $7e2f: $7f
	ld e, a                                          ; $7e30: $5f
	ld a, [$307f]                                    ; $7e31: $fa $7f $30
	add [hl]                                         ; $7e34: $86
	inc bc                                           ; $7e35: $03
	db $fc                                           ; $7e36: $fc
	dec d                                            ; $7e37: $15
	ld [$f40b], a                                    ; $7e38: $ea $0b $f4

Call_03b_7e3b:
	rla                                              ; $7e3b: $17
	add sp, $2f                                      ; $7e3c: $e8 $2f
	ret nc                                           ; $7e3e: $d0

	rra                                              ; $7e3f: $1f
	pop hl                                           ; $7e40: $e1
	rrca                                             ; $7e41: $0f
	pop af                                           ; $7e42: $f1
	xor d                                            ; $7e43: $aa
	rlca                                             ; $7e44: $07
	ld d, l                                          ; $7e45: $55
	rrca                                             ; $7e46: $0f
	xor d                                            ; $7e47: $aa
	rra                                              ; $7e48: $1f
	ld d, l                                          ; $7e49: $55
	ccf                                              ; $7e4a: $3f
	xor d                                            ; $7e4b: $aa
	ld a, a                                          ; $7e4c: $7f
	ld d, l                                          ; $7e4d: $55
	ld [hl], d                                       ; $7e4e: $72
	ret nc                                           ; $7e4f: $d0

	ld b, a                                          ; $7e50: $47
	db $fc                                           ; $7e51: $fc
	sbc d                                            ; $7e52: $9a
	and a                                            ; $7e53: $a7
	db $fc                                           ; $7e54: $fc
	ld d, e                                          ; $7e55: $53
	rst $38                                          ; $7e56: $ff
	xor b                                            ; $7e57: $a8
	ld e, e                                          ; $7e58: $5b
	ldh a, [$29]                                     ; $7e59: $f0 $29
	nop                                              ; $7e5b: $00
	sub a                                            ; $7e5c: $97
	ld [hl], a                                       ; $7e5d: $77
	inc sp                                           ; $7e5e: $33
	inc sp                                           ; $7e5f: $33
	ld d, e                                          ; $7e60: $53
	dec [hl]                                         ; $7e61: $35
	ld d, e                                          ; $7e62: $53
	ld d, l                                          ; $7e63: $55
	ld d, l                                          ; $7e64: $55
	sbc $77                                          ; $7e65: $de $77
	jp c, $df55                                      ; $7e67: $da $55 $df

	ld [hl], a                                       ; $7e6a: $77
	rst SubAFromDE                                          ; $7e6b: $df
	ld b, h                                          ; $7e6c: $44
	sbc b                                            ; $7e6d: $98
	ld b, l                                          ; $7e6e: $45
	ld d, h                                          ; $7e6f: $54
	ld d, l                                          ; $7e70: $55
	ld d, h                                          ; $7e71: $54
	ld b, h                                          ; $7e72: $44
	ld b, [hl]                                       ; $7e73: $46
	ld h, [hl]                                       ; $7e74: $66
	ld a, e                                          ; $7e75: $7b
	or $da                                           ; $7e76: $f6 $da
	ld b, h                                          ; $7e78: $44
	sbc [hl]                                         ; $7e79: $9e
	ld h, a                                          ; $7e7a: $67
	ret c                                            ; $7e7b: $d8

	ld b, h                                          ; $7e7c: $44
	sbc [hl]                                         ; $7e7d: $9e
	ld h, [hl]                                       ; $7e7e: $66
	reti                                             ; $7e7f: $d9


	ld b, h                                          ; $7e80: $44
	ld a, a                                          ; $7e81: $7f
	pop hl                                           ; $7e82: $e1
	ld d, d                                          ; $7e83: $52
	add e                                            ; $7e84: $83
	sbc l                                            ; $7e85: $9d

Call_03b_7e86:
	ld b, b                                          ; $7e86: $40
	ld h, b                                          ; $7e87: $60
	db $db                                           ; $7e88: $db
	jr nz, @-$7e                                     ; $7e89: $20 $80

	and h                                            ; $7e8b: $a4
	add a                                            ; $7e8c: $87
	ld b, a                                          ; $7e8d: $47
	ld d, b                                          ; $7e8e: $50
	ld d, l                                          ; $7e8f: $55
	ld [de], a                                       ; $7e90: $12
	dec d                                            ; $7e91: $15
	sub d                                            ; $7e92: $92
	rlca                                             ; $7e93: $07
	ld [hl], a                                       ; $7e94: $77
	scf                                              ; $7e95: $37
	daa                                              ; $7e96: $27
	ld h, h                                          ; $7e97: $64
	ld a, h                                          ; $7e98: $7c
	ld [hl], a                                       ; $7e99: $77
	ld [hl], a                                       ; $7e9a: $77
	ld [de], a                                       ; $7e9b: $12
	rrca                                             ; $7e9c: $0f
	ld c, a                                          ; $7e9d: $4f
	ld d, b                                          ; $7e9e: $50
	ld [de], a                                       ; $7e9f: $12
	sbc a                                            ; $7ea0: $9f
	inc a                                            ; $7ea1: $3c
	cp h                                             ; $7ea2: $bc
	ld d, b                                          ; $7ea3: $50
	ld a, d                                          ; $7ea4: $7a
	ld a, c                                          ; $7ea5: $79
	ld a, d                                          ; $7ea6: $7a
	ld de, $7b28                                     ; $7ea7: $11 $28 $7b
	sub [hl]                                         ; $7eaa: $96
	ld a, e                                          ; $7eab: $7b
	call nc, $3a79                                   ; $7eac: $d4 $79 $3a
	ld de, $51aa                                     ; $7eaf: $11 $aa $51
	db $fd                                           ; $7eb2: $fd
	cp l                                             ; $7eb3: $bd

Call_03b_7eb4:
	ei                                               ; $7eb4: $fb
	rst SubAFromDE                                          ; $7eb5: $df
	ret nz                                           ; $7eb6: $c0

	sbc [hl]                                         ; $7eb7: $9e
	ld b, d                                          ; $7eb8: $42
	db $dd                                           ; $7eb9: $dd
	cp l                                             ; $7eba: $bd
	sbc l                                            ; $7ebb: $9d
	jp nz, Jump_03b_6b3c                             ; $7ebc: $c2 $3c $6b

	ldh a, [rIE]                                     ; $7ebf: $f0 $ff
	add l                                            ; $7ec1: $85
	db $10                                           ; $7ec2: $10
	ret nz                                           ; $7ec3: $c0

	call c, Call_03b_4488                            ; $7ec4: $dc $88 $44
	adc d                                            ; $7ec7: $8a
	nop                                              ; $7ec8: $00
	xor d                                            ; $7ec9: $aa
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	inc de                                           ; $7ecc: $13
	dec sp                                           ; $7ecd: $3b
	ld a, e                                          ; $7ece: $7b
	inc sp                                           ; $7ecf: $33
	nop                                              ; $7ed0: $00
	rra                                              ; $7ed1: $1f
	add e                                            ; $7ed2: $83
	ld [$446c], sp                                   ; $7ed3: $08 $6c $44
	inc b                                            ; $7ed6: $04
	ld e, d                                          ; $7ed7: $5a
	inc bc                                           ; $7ed8: $03
	ld h, e                                          ; $7ed9: $63
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	sbc $be                                          ; $7edc: $de $be

Call_03b_7ede:
	add h                                            ; $7ede: $84
	cp $00                                           ; $7edf: $fe $00
	cp $be                                           ; $7ee1: $fe $be
	ld de, $4d18                                     ; $7ee3: $11 $18 $4d
	ld b, c                                          ; $7ee6: $41
	ld bc, $819e                                     ; $7ee7: $01 $9e $81
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	ld c, b                                          ; $7eec: $48
	ret nz                                           ; $7eed: $c0

	ret nz                                           ; $7eee: $c0

Call_03b_7eef:
	ldh [rAUD1SWEEP], a                              ; $7eef: $e0 $10
	ldh [$f0], a                                     ; $7ef1: $e0 $f0
	nop                                              ; $7ef3: $00
	and l                                            ; $7ef4: $a5
	ld [hl+], a                                      ; $7ef5: $22
	dec h                                            ; $7ef6: $25
	ld [de], a                                       ; $7ef7: $12
	push hl                                          ; $7ef8: $e5
	ld [de], a                                       ; $7ef9: $12
	rst FarCall                                          ; $7efa: $f7
	sbc d                                            ; $7efb: $9a
	ld a, [hl+]                                      ; $7efc: $2a
	ld d, h                                          ; $7efd: $54
	ld a, [hl+]                                      ; $7efe: $2a
	ld d, h                                          ; $7eff: $54
	ld a, [bc]                                       ; $7f00: $0a
	or $7f                                           ; $7f01: $f6 $7f
	sub d                                            ; $7f03: $92
	ld a, e                                          ; $7f04: $7b
	cp $97                                           ; $7f05: $fe $97
	nop                                              ; $7f07: $00
	inc bc                                           ; $7f08: $03
	inc bc                                           ; $7f09: $03
	rlca                                             ; $7f0a: $07
	dec bc                                           ; $7f0b: $0b
	rla                                              ; $7f0c: $17
	rra                                              ; $7f0d: $1f
	ccf                                              ; $7f0e: $3f
	cp $89                                           ; $7f0f: $fe $89
	sub b                                            ; $7f11: $90
	ld b, b                                          ; $7f12: $40

jr_03b_7f13:
	add b                                            ; $7f13: $80
	ld h, b                                          ; $7f14: $60
	add b                                            ; $7f15: $80
	cp $7c                                           ; $7f16: $fe $7c
	ld a, [de]                                       ; $7f18: $1a
	ld a, a                                          ; $7f19: $7f
	ld a, [hl]                                       ; $7f1a: $7e
	ld a, a                                          ; $7f1b: $7f
	ld a, [hl]                                       ; $7f1c: $7e
	nop                                              ; $7f1d: $00
	ld c, $00                                        ; $7f1e: $0e $00
	ld h, b                                          ; $7f20: $60
	jp c, $fabb                                      ; $7f21: $da $bb $fa

	pop af                                           ; $7f24: $f1
	ld a, a                                          ; $7f25: $7f
	ld [hl], d                                       ; $7f26: $72
	ld a, [$809a]                                    ; $7f27: $fa $9a $80
	sbc e                                            ; $7f2a: $9b
	ld b, b                                          ; $7f2b: $40
	adc d                                            ; $7f2c: $8a
	pop af                                           ; $7f2d: $f1
	ld [hl], a                                       ; $7f2e: $77
	adc $f9                                          ; $7f2f: $ce $f9
	sub a                                            ; $7f31: $97
	sbc $00                                          ; $7f32: $de $00
	add d                                            ; $7f34: $82
	ld d, h                                          ; $7f35: $54
	adc d                                            ; $7f36: $8a
	ld d, h                                          ; $7f37: $54
	adc d                                            ; $7f38: $8a
	ld d, b                                          ; $7f39: $50
	ld sp, hl                                        ; $7f3a: $f9
	sub l                                            ; $7f3b: $95
	ret nz                                           ; $7f3c: $c0

	ld bc, $5528                                     ; $7f3d: $01 $28 $55

Jump_03b_7f40:
	xor d                                            ; $7f40: $aa
	dec b                                            ; $7f41: $05
	xor b                                            ; $7f42: $a8
	ld d, l                                          ; $7f43: $55
	nop                                              ; $7f44: $00
	ld bc, $03de                                     ; $7f45: $01 $de $03
	add b                                            ; $7f48: $80
	ld [bc], a                                       ; $7f49: $02
	nop                                              ; $7f4a: $00
	ld c, a                                          ; $7f4b: $4f
	nop                                              ; $7f4c: $00
	sub $ac                                          ; $7f4d: $d6 $ac
	ld d, h                                          ; $7f4f: $54
	ldh [$fd], a                                     ; $7f50: $e0 $fd
	scf                                              ; $7f52: $37
	or b                                             ; $7f53: $b0
	rrca                                             ; $7f54: $0f
	ld e, a                                          ; $7f55: $5f
	rst SubAFromDE                                          ; $7f56: $df
	rst SubAFromDE                                          ; $7f57: $df
	sbc $00                                          ; $7f58: $de $00
	rst SubAFromDE                                          ; $7f5a: $df
	rst SubAFromDE                                          ; $7f5b: $df
	ldh a, [c]                                       ; $7f5c: $f2
	rst AddAOntoHL                                          ; $7f5d: $ef
	rlca                                             ; $7f5e: $07
	nop                                              ; $7f5f: $00
	ld bc, $6fdf                                     ; $7f60: $01 $df $6f
	rst AddAOntoHL                                          ; $7f63: $ef
	ld [hl], d                                       ; $7f64: $72
	ld [hl], b                                       ; $7f65: $70
	ld [hl], d                                       ; $7f66: $72
	ld [hl], b                                       ; $7f67: $70
	sub e                                            ; $7f68: $93
	ld [bc], a                                       ; $7f69: $02
	ld c, $77                                        ; $7f6a: $0e $77

jr_03b_7f6c:
	halt                                             ; $7f6c: $76
	adc l                                            ; $7f6d: $8d
	rlca                                             ; $7f6e: $07
	inc b                                            ; $7f6f: $04
	inc b                                            ; $7f70: $04
	dec e                                            ; $7f71: $1d
	db $f4                                           ; $7f72: $f4
	ld hl, sp-$0f                                    ; $7f73: $f8 $f1
	ld l, e                                          ; $7f75: $6b
	ld [hl+], a                                      ; $7f76: $22
	sub [hl]                                         ; $7f77: $96
	add b                                            ; $7f78: $80
	ld d, l                                          ; $7f79: $55
	xor d                                            ; $7f7a: $aa
	ld d, c                                          ; $7f7b: $51
	or a                                             ; $7f7c: $b7
	db $e4                                           ; $7f7d: $e4
	cp e                                             ; $7f7e: $bb
	dec b                                            ; $7f7f: $05

Call_03b_7f80:
	add hl, de                                       ; $7f80: $19

Call_03b_7f81:
	jp c, $9502                                      ; $7f81: $da $02 $95

	inc b                                            ; $7f84: $04
	ld d, c                                          ; $7f85: $51
	add hl, hl                                       ; $7f86: $29
	ldh a, [rP1]                                     ; $7f87: $f0 $00
	ld hl, sp-$10                                    ; $7f89: $f8 $f0
	ld hl, sp-$20                                    ; $7f8b: $f8 $e0
	jr nc, jr_03b_7f6c                               ; $7f8d: $30 $dd

	db $10                                           ; $7f8f: $10
	rst SubAFromDE                                          ; $7f90: $df
	jr jr_03b_7f13                                   ; $7f91: $18 $80

	ld [$aa81], sp                                   ; $7f93: $08 $81 $aa
	xor c                                            ; $7f96: $a9

jr_03b_7f97:
	adc d                                            ; $7f97: $8a
	add hl, bc                                       ; $7f98: $09
	ld [hl+], a                                      ; $7f99: $22
	ld h, b                                          ; $7f9a: $60
	sub h                                            ; $7f9b: $94
	inc bc                                           ; $7f9c: $03
	ld [hl], h                                       ; $7f9d: $74
	ld [hl], a                                       ; $7f9e: $77
	ld [hl], b                                       ; $7f9f: $70
	rst $38                                          ; $7fa0: $ff
	ld a, a                                          ; $7fa1: $7f
	or a                                             ; $7fa2: $b7
	nop                                              ; $7fa3: $00
	ld [hl], h                                       ; $7fa4: $74
	adc e                                            ; $7fa5: $8b
	adc [hl]                                         ; $7fa6: $8e
	rst AddAOntoHL                                          ; $7fa7: $ef
	ld h, a                                          ; $7fa8: $67
	rst FarCall                                          ; $7fa9: $f7
	ei                                               ; $7faa: $fb
	rlca                                             ; $7fab: $07
	ld a, e                                          ; $7fac: $7b
	add hl, sp                                       ; $7fad: $39
	dec sp                                           ; $7fae: $3b
	nop                                              ; $7faf: $00
	or b                                             ; $7fb0: $b0
	cp a                                             ; $7fb1: $bf
	add l                                            ; $7fb2: $85
	cp a                                             ; $7fb3: $bf
	rst $38                                          ; $7fb4: $ff
	cp l                                             ; $7fb5: $bd
	ld d, e                                          ; $7fb6: $53
	rst $38                                          ; $7fb7: $ff
	rst SubAFromBC                                          ; $7fb8: $e7
	ldh a, [$fe]                                     ; $7fb9: $f0 $fe
	db $fd                                           ; $7fbb: $fd
	cp a                                             ; $7fbc: $bf
	ret nz                                           ; $7fbd: $c0

	add b                                            ; $7fbe: $80
	add b                                            ; $7fbf: $80
	nop                                              ; $7fc0: $00
	jr nz, jr_03b_7f97                               ; $7fc1: $20 $d4

	add sp, -$2c                                     ; $7fc3: $e8 $d4
	cp l                                             ; $7fc5: $bd
	db $fd                                           ; $7fc6: $fd
	cp h                                             ; $7fc7: $bc
	nop                                              ; $7fc8: $00
	ld e, h                                          ; $7fc9: $5c
	jr z, jr_03b_7fe0                                ; $7fca: $28 $14

	ld a, [hl+]                                      ; $7fcc: $2a
	db $fc                                           ; $7fcd: $fc
	add b                                            ; $7fce: $80
	ld d, b                                          ; $7fcf: $50
	jr nz, @+$57                                     ; $7fd0: $20 $55

	ld d, h                                          ; $7fd2: $54
	xor d                                            ; $7fd3: $aa
	ld d, l                                          ; $7fd4: $55
	nop                                              ; $7fd5: $00
	xor b                                            ; $7fd6: $a8

Call_03b_7fd7:
	inc h                                            ; $7fd7: $24
	ld d, c                                          ; $7fd8: $51
	ld [hl+], a                                      ; $7fd9: $22
	dec de                                           ; $7fda: $1b
	ccf                                              ; $7fdb: $3f
	ld a, a                                          ; $7fdc: $7f
	nop                                              ; $7fdd: $00
	ld a, e                                          ; $7fde: $7b
	ld a, e                                          ; $7fdf: $7b

jr_03b_7fe0:
	ld e, e                                          ; $7fe0: $5b
	xor e                                            ; $7fe1: $ab
	ld a, a                                          ; $7fe2: $7f
	ld e, e                                          ; $7fe3: $5b
	ld [bc], a                                       ; $7fe4: $02
	inc b                                            ; $7fe5: $04
	nop                                              ; $7fe6: $00
	dec b                                            ; $7fe7: $05
	and a                                            ; $7fe8: $a7
	ld d, a                                          ; $7fe9: $57
	cp $de                                           ; $7fea: $fe $de
	cp $00                                           ; $7fec: $fe $00
	add b                                            ; $7fee: $80
	sbc d                                            ; $7fef: $9a
	rst SubAFromDE                                          ; $7ff0: $df
	rst $38                                          ; $7ff1: $ff
	rst SubAFromDE                                          ; $7ff2: $df
	add hl, bc                                       ; $7ff3: $09
	ccf                                              ; $7ff4: $3f
	rra                                              ; $7ff5: $1f
	ld e, [hl]                                       ; $7ff6: $5e
	ld b, h                                          ; $7ff7: $44
	sbc b                                            ; $7ff8: $98
	sbc $fe                                          ; $7ff9: $de $fe
	db $f4                                           ; $7ffb: $f4
	or $f6                                           ; $7ffc: $f6 $f6
	ld [hl], h                                       ; $7ffe: $74

Call_03b_7fff:
Jump_03b_7fff:
	ld b, b                                          ; $7fff: $40
