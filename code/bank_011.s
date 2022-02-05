; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

	ld a, [hl+]                                      ; $4000: $2a
	nop                                              ; $4001: $00
	sbc [hl]                                         ; $4002: $9e
	inc b                                            ; $4003: $04
	rst AddAOntoHL                                          ; $4004: $ef
	sbc [hl]                                         ; $4005: $9e
	inc bc                                           ; $4006: $03
	push af                                          ; $4007: $f5
	sbc [hl]                                         ; $4008: $9e
	ld [bc], a                                       ; $4009: $02
	rst AddAOntoHL                                          ; $400a: $ef
	sbc [hl]                                         ; $400b: $9e
	ld bc, $3bf5                                     ; $400c: $01 $f5 $3b
	ret nz                                           ; $400f: $c0

	ld d, e                                          ; $4010: $53
	ldh [$03], a                                     ; $4011: $e0 $03
	ret nz                                           ; $4013: $c0

	inc bc                                           ; $4014: $03
	ret nz                                           ; $4015: $c0

	inc bc                                           ; $4016: $03
	ret nz                                           ; $4017: $c0

	inc bc                                           ; $4018: $03
	ret nz                                           ; $4019: $c0

	inc bc                                           ; $401a: $03
	ret nz                                           ; $401b: $c0

	inc bc                                           ; $401c: $03
	ret nz                                           ; $401d: $c0

	inc bc                                           ; $401e: $03
	ret nz                                           ; $401f: $c0

	inc bc                                           ; $4020: $03
	ret nz                                           ; $4021: $c0

	daa                                              ; $4022: $27
	ldh [$e0], a                                     ; $4023: $e0 $e0
	nop                                              ; $4025: $00
	ldh [rP1], a                                     ; $4026: $e0 $00
	ldh [hDisp0_SCY], a                                     ; $4028: $e0 $83
	inc hl                                           ; $402a: $23
	nop                                              ; $402b: $00
	call $f503                                       ; $402c: $cd $03 $f5
	inc bc                                           ; $402f: $03
	ldh [$de], a                                     ; $4030: $e0 $de
	ld [bc], a                                       ; $4032: $02
	inc bc                                           ; $4033: $03
	ldh [$03], a                                     ; $4034: $e0 $03
	ldh [$03], a                                     ; $4036: $e0 $03
	add b                                            ; $4038: $80
	inc bc                                           ; $4039: $03
	ldh [$03], a                                     ; $403a: $e0 $03
	ldh [$03], a                                     ; $403c: $e0 $03
	add b                                            ; $403e: $80
	inc bc                                           ; $403f: $03
	ldh [$03], a                                     ; $4040: $e0 $03
	ldh [$03], a                                     ; $4042: $e0 $03
	add b                                            ; $4044: $80
	dec sp                                           ; $4045: $3b
	ldh [$e0], a                                     ; $4046: $e0 $e0
	nop                                              ; $4048: $00
	ldh [rP1], a                                     ; $4049: $e0 $00
	ldh [hDisp0_SCY], a                                     ; $404b: $e0 $83
	inc hl                                           ; $404d: $23
	nop                                              ; $404e: $00
	pop af                                           ; $404f: $f1
	sbc l                                            ; $4050: $9d
	ld bc, $4f2b                                     ; $4051: $01 $2b $4f
	cp $97                                           ; $4054: $fe $97
	inc c                                            ; $4056: $0c
	cp $f8                                           ; $4057: $fe $f8
	db $fc                                           ; $4059: $fc
	add b                                            ; $405a: $80
	ld hl, sp-$80                                    ; $405b: $f8 $80
	ret nz                                           ; $405d: $c0

	ld h, a                                          ; $405e: $67
	cp $9b                                           ; $405f: $fe $9b
	rlca                                             ; $4061: $07
	ccf                                              ; $4062: $3f
	ld bc, $572f                                     ; $4063: $01 $2f $57
	ldh [$5f], a                                     ; $4066: $e0 $5f
	and $7f                                          ; $4068: $e6 $7f
	jp c, $d67f                                      ; $406a: $da $7f $d6

	sbc l                                            ; $406d: $9d
	inc c                                            ; $406e: $0c
	ld e, $7e                                        ; $406f: $1e $7e
	add c                                            ; $4071: $81
	sbc d                                            ; $4072: $9a
	nop                                              ; $4073: $00
	inc a                                            ; $4074: $3c
	ld h, [hl]                                       ; $4075: $66
	ld h, [hl]                                       ; $4076: $66
	ld a, [hl]                                       ; $4077: $7e
	sbc $66                                          ; $4078: $de $66
	ld h, e                                          ; $407a: $63
	ld hl, sp-$64                                    ; $407b: $f8 $9c
	ld a, h                                          ; $407d: $7c
	ld h, [hl]                                       ; $407e: $66
	ld h, [hl]                                       ; $407f: $66
	ld [hl], a                                       ; $4080: $77
	db $fd                                           ; $4081: $fd
	ld h, e                                          ; $4082: $63
	ld hl, sp+$7b                                    ; $4083: $f8 $7b
	add sp, -$65                                     ; $4085: $e8 $9b
	ld h, b                                          ; $4087: $60
	ld h, [hl]                                       ; $4088: $66
	ld h, [hl]                                       ; $4089: $66
	inc a                                            ; $408a: $3c
	ld h, e                                          ; $408b: $63
	ld hl, sp+$7b                                    ; $408c: $f8 $7b
	db $eb                                           ; $408e: $eb
	sbc $66                                          ; $408f: $de $66
	ld [hl], e                                       ; $4091: $73
	ldh [$73], a                                     ; $4092: $e0 $73
	ld hl, sp-$68                                    ; $4094: $f8 $98
	ld a, [hl]                                       ; $4096: $7e
	ld h, b                                          ; $4097: $60
	ld h, b                                          ; $4098: $60
	ld a, h                                          ; $4099: $7c
	ld h, b                                          ; $409a: $60
	ld h, b                                          ; $409b: $60
	ld a, [hl]                                       ; $409c: $7e
	ld c, e                                          ; $409d: $4b
	ld hl, sp-$62                                    ; $409e: $f8 $9e
	ld h, b                                          ; $40a0: $60
	ld h, e                                          ; $40a1: $63
	ld hl, sp+$7f                                    ; $40a2: $f8 $7f
	ret z                                            ; $40a4: $c8

	sbc l                                            ; $40a5: $9d
	ld h, b                                          ; $40a6: $60
	ld l, [hl]                                       ; $40a7: $6e
	ld l, a                                          ; $40a8: $6f
	ret nz                                           ; $40a9: $c0

	ld l, a                                          ; $40aa: $6f
	ld hl, sp-$62                                    ; $40ab: $f8 $9e
	ld e, $de                                        ; $40ad: $1e $de
	inc c                                            ; $40af: $0c
	rst SubAFromDE                                          ; $40b0: $df
	ld l, h                                          ; $40b1: $6c
	sbc [hl]                                         ; $40b2: $9e
	jr c, @+$65                                      ; $40b3: $38 $63

	ld hl, sp-$25                                    ; $40b5: $f8 $db
	ld h, b                                          ; $40b7: $60
	ld a, a                                          ; $40b8: $7f
	ret z                                            ; $40b9: $c8

	ld h, a                                          ; $40ba: $67
	ld hl, sp-$21                                    ; $40bb: $f8 $df
	jp $e79a                                         ; $40bd: $c3 $9a $e7


	rst $38                                          ; $40c0: $ff
	rst $38                                          ; $40c1: $ff
	db $db                                           ; $40c2: $db
	jp $f863                                         ; $40c3: $c3 $63 $f8


	sbc b                                            ; $40c6: $98
	ld h, [hl]                                       ; $40c7: $66
	halt                                             ; $40c8: $76
	halt                                             ; $40c9: $76
	ld a, [hl]                                       ; $40ca: $7e
	ld l, [hl]                                       ; $40cb: $6e
	ld l, [hl]                                       ; $40cc: $6e
	ld h, [hl]                                       ; $40cd: $66
	ld h, e                                          ; $40ce: $63
	ld hl, sp+$7b                                    ; $40cf: $f8 $7b
	ld a, b                                          ; $40d1: $78
	sbc $66                                          ; $40d2: $de $66
	ld [hl], e                                       ; $40d4: $73
	ld [hl], b                                       ; $40d5: $70
	ld [hl], e                                       ; $40d6: $73
	ld hl, sp+$77                                    ; $40d7: $f8 $77
	ld e, e                                          ; $40d9: $5b
	ld [hl], a                                       ; $40da: $77
	sbc b                                            ; $40db: $98
	ld d, a                                          ; $40dc: $57
	ld hl, sp+$5f                                    ; $40dd: $f8 $5f
	jr c, @+$79                                      ; $40df: $38 $77

	ret nc                                           ; $40e1: $d0

	sbc h                                            ; $40e2: $9c
	ld [hl], b                                       ; $40e3: $70
	inc a                                            ; $40e4: $3c
	ld c, $73                                        ; $40e5: $0e $73
	ret nc                                           ; $40e7: $d0

	ld l, a                                          ; $40e8: $6f
	ld hl, sp-$62                                    ; $40e9: $f8 $9e
	ld a, [hl]                                       ; $40eb: $7e
	db $db                                           ; $40ec: $db
	jr jr_011_4152                                   ; $40ed: $18 $63

	ld hl, sp-$25                                    ; $40ef: $f8 $db
	ld h, [hl]                                       ; $40f1: $66
	ld a, a                                          ; $40f2: $7f
	add sp, $53                                      ; $40f3: $e8 $53
	ld hl, sp-$62                                    ; $40f5: $f8 $9e
	inc a                                            ; $40f7: $3c
	ld l, e                                          ; $40f8: $6b
	add sp, $6f                                      ; $40f9: $e8 $6f
	ld hl, sp+$7f                                    ; $40fb: $f8 $7f
	ld a, [$d86f]                                    ; $40fd: $fa $6f $d8
	ld [hl], e                                       ; $4100: $73
	ld hl, sp-$63                                    ; $4101: $f8 $9d
	inc c                                            ; $4103: $0c
	inc e                                            ; $4104: $1c
	db $dd                                           ; $4105: $dd
	inc c                                            ; $4106: $0c
	sbc [hl]                                         ; $4107: $9e
	ld e, $63                                        ; $4108: $1e $63
	ld hl, sp-$68                                    ; $410a: $f8 $98
	ld a, $63                                        ; $410c: $3e $63
	rlca                                             ; $410e: $07
	ld e, $3c                                        ; $410f: $1e $3c
	ld [hl], b                                       ; $4111: $70
	ld a, a                                          ; $4112: $7f
	ld h, e                                          ; $4113: $63
	ld hl, sp-$68                                    ; $4114: $f8 $98
	ccf                                              ; $4116: $3f
	ld b, $0c                                        ; $4117: $06 $0c
	ld e, $03                                        ; $4119: $1e $03
	ld h, e                                          ; $411b: $63
	ld a, $63                                        ; $411c: $3e $63
	ld hl, sp-$67                                    ; $411e: $f8 $99
	ld a, h                                          ; $4120: $7c
	add $e6                                          ; $4121: $c6 $e6
	sub $ce                                          ; $4123: $d6 $ce
	add $7a                                          ; $4125: $c6 $7a
	ret nc                                           ; $4127: $d0

	ld l, e                                          ; $4128: $6b
	ld hl, sp-$63                                    ; $4129: $f8 $9d
	jr jr_011_4165                                   ; $412b: $18 $38

	db $dd                                           ; $412d: $dd
	jr jr_011_41af                                   ; $412e: $18 $7f

	sbc b                                            ; $4130: $98
	ld h, a                                          ; $4131: $67
	ld hl, sp+$7f                                    ; $4132: $f8 $7f
	add sp, -$66                                     ; $4134: $e8 $9a
	ld c, $3c                                        ; $4136: $0e $3c
	ld a, b                                          ; $4138: $78
	ldh [$fe], a                                     ; $4139: $e0 $fe
	ld h, e                                          ; $413b: $63
	ld hl, sp-$66                                    ; $413c: $f8 $9a
	ld a, [hl]                                       ; $413e: $7e
	inc c                                            ; $413f: $0c
	jr jr_011_417e                                   ; $4140: $18 $3c

	ld b, $7b                                        ; $4142: $06 $7b
	ret c                                            ; $4144: $d8

	ld h, a                                          ; $4145: $67

jr_011_4146:
	ld hl, sp-$68                                    ; $4146: $f8 $98
	inc e                                            ; $4148: $1c
	inc l                                            ; $4149: $2c
	ld c, h                                          ; $414a: $4c
	adc h                                            ; $414b: $8c
	cp $0c                                           ; $414c: $fe $0c
	inc c                                            ; $414e: $0c
	ld h, e                                          ; $414f: $63
	ld hl, sp-$65                                    ; $4150: $f8 $9b

jr_011_4152:
	db $fc                                           ; $4152: $fc
	ret nz                                           ; $4153: $c0

	db $fc                                           ; $4154: $fc
	ld b, $77                                        ; $4155: $06 $77
	add sp, $67                                      ; $4157: $e8 $67
	ld hl, sp-$66                                    ; $4159: $f8 $9a
	inc a                                            ; $415b: $3c
	ld h, b                                          ; $415c: $60
	ret nz                                           ; $415d: $c0

	db $fc                                           ; $415e: $fc
	add $5b                                          ; $415f: $c6 $5b
	ld hl, sp-$65                                    ; $4161: $f8 $9b
	cp $c6                                           ; $4163: $fe $c6

jr_011_4165:
	inc c                                            ; $4165: $0c
	jr jr_011_4146                                   ; $4166: $18 $de

	jr nc, jr_011_41cd                               ; $4168: $30 $63

	ld hl, sp-$68                                    ; $416a: $f8 $98
	ld a, b                                          ; $416c: $78
	call nz, Call_011_7ce4                           ; $416d: $c4 $e4 $7c
	sbc [hl]                                         ; $4170: $9e
	add [hl]                                         ; $4171: $86
	ld a, h                                          ; $4172: $7c
	ld h, e                                          ; $4173: $63
	ld hl, sp+$7f                                    ; $4174: $f8 $7f
	sbc b                                            ; $4176: $98
	sbc d                                            ; $4177: $9a
	add $7e                                          ; $4178: $c6 $7e
	ld b, $0c                                        ; $417a: $06 $0c

jr_011_417c:
	ld a, b                                          ; $417c: $78
	ld h, e                                          ; $417d: $63

jr_011_417e:
	ld hl, sp-$07                                    ; $417e: $f8 $f9
	ld h, a                                          ; $4180: $67
	jr nc, jr_011_417c                               ; $4181: $30 $f9

	ld h, a                                          ; $4183: $67
	jr nc, @-$05                                     ; $4184: $30 $f9

	ld h, a                                          ; $4186: $67
	jr nc, @-$05                                     ; $4187: $30 $f9

	ld h, a                                          ; $4189: $67
	jr nc, @-$05                                     ; $418a: $30 $f9

jr_011_418c:
	ld h, a                                          ; $418c: $67
	jr nc, @+$61                                     ; $418d: $30 $5f

jr_011_418f:
	ldh [$6f], a                                     ; $418f: $e0 $6f
	jr nc, jr_011_418c                               ; $4191: $30 $f9

	ld h, a                                          ; $4193: $67
	jr nc, jr_011_418f                               ; $4194: $30 $f9

	ld h, a                                          ; $4196: $67
	jr nc, @-$05                                     ; $4197: $30 $f9

	ld h, a                                          ; $4199: $67
	jr nc, @-$05                                     ; $419a: $30 $f9

	ld h, a                                          ; $419c: $67
	jr nc, @-$05                                     ; $419d: $30 $f9

	ld h, a                                          ; $419f: $67
	jr nc, @-$05                                     ; $41a0: $30 $f9

	ld h, a                                          ; $41a2: $67
	jr nc, jr_011_4204                               ; $41a3: $30 $5f

	sub b                                            ; $41a5: $90
	ld l, a                                          ; $41a6: $6f
	jr nc, @-$66                                     ; $41a7: $30 $98

	ld sp, $3373                                     ; $41a9: $31 $73 $33
	ld sp, $3330                                     ; $41ac: $31 $30 $33

jr_011_41af:
	ld a, c                                          ; $41af: $79
	ld h, e                                          ; $41b0: $63
	ld hl, sp-$68                                    ; $41b1: $f8 $98
	rst JumpTable                                          ; $41b3: $c7
	ld l, l                                          ; $41b4: $6d
	ld l, l                                          ; $41b5: $6d
	rst SubAFromBC                                          ; $41b6: $e7
	ld h, c                                          ; $41b7: $61
	ld l, l                                          ; $41b8: $6d
	rst JumpTable                                          ; $41b9: $c7
	ld h, e                                          ; $41ba: $63
	ld hl, sp-$68                                    ; $41bb: $f8 $98
	ld a, $b6                                        ; $41bd: $3e $b6
	add [hl]                                         ; $41bf: $86
	adc h                                            ; $41c0: $8c
	sbc b                                            ; $41c1: $98
	sbc b                                            ; $41c2: $98
	jr jr_011_4228                                   ; $41c3: $18 $63

	ld hl, sp-$68                                    ; $41c5: $f8 $98
	inc e                                            ; $41c7: $1c
	or [hl]                                          ; $41c8: $b6
	or [hl]                                          ; $41c9: $b6
	sbc h                                            ; $41ca: $9c
	or [hl]                                          ; $41cb: $b6
	or [hl]                                          ; $41cc: $b6

jr_011_41cd:
	inc e                                            ; $41cd: $1c
	ld d, a                                          ; $41ce: $57
	ld hl, sp+$7f                                    ; $41cf: $f8 $7f
	xor c                                            ; $41d1: $a9
	ld e, e                                          ; $41d2: $5b
	ld hl, sp-$68                                    ; $41d3: $f8 $98
	ld [hl], c                                       ; $41d5: $71
	db $db                                           ; $41d6: $db
	db $db                                           ; $41d7: $db
	dec de                                           ; $41d8: $1b
	inc sp                                           ; $41d9: $33
	ld h, e                                          ; $41da: $63
	ld sp, hl                                        ; $41db: $f9
	ld h, e                                          ; $41dc: $63
	ld hl, sp+$7b                                    ; $41dd: $f8 $7b
	cp b                                             ; $41df: $b8
	sbc $6d                                          ; $41e0: $de $6d
	ld [hl], e                                       ; $41e2: $73
	or b                                             ; $41e3: $b0
	ld [hl], e                                       ; $41e4: $73
	ld hl, sp+$7b                                    ; $41e5: $f8 $7b
	ret c                                            ; $41e7: $d8

	sbc $b6                                          ; $41e8: $de $b6
	ld [hl], e                                       ; $41ea: $73
	ret nc                                           ; $41eb: $d0

	ld [hl], a                                       ; $41ec: $77
	ld hl, sp+$1e                                    ; $41ed: $f8 $1e
	ld bc, $95ff                                     ; $41ef: $01 $ff $95
	rra                                              ; $41f2: $1f
	ld e, $11                                        ; $41f3: $1e $11
	ld de, $1010                                     ; $41f5: $11 $10 $10
	ld de, $1f11                                     ; $41f8: $11 $11 $1f
	ld e, $dd                                        ; $41fb: $1e $dd
	add hl, de                                       ; $41fd: $19
	rst $38                                          ; $41fe: $ff
	sub l                                            ; $41ff: $95
	ret nz                                           ; $4200: $c0

	nop                                              ; $4201: $00
	ldh a, [$80]                                     ; $4202: $f0 $80

jr_011_4204:
	ld a, h                                          ; $4204: $7c
	ld h, b                                          ; $4205: $60
	ldh a, [$80]                                     ; $4206: $f0 $80
	ret nz                                           ; $4208: $c0

	nop                                              ; $4209: $00
	db $dd                                           ; $420a: $dd
	add b                                            ; $420b: $80
	rst $38                                          ; $420c: $ff
	add b                                            ; $420d: $80
	rlca                                             ; $420e: $07
	ld b, $1a                                        ; $420f: $06 $1a
	dec e                                            ; $4211: $1d
	dec a                                            ; $4212: $3d
	ld a, $3f                                        ; $4213: $3e $3f
	inc sp                                           ; $4215: $33
	ccf                                              ; $4216: $3f
	inc sp                                           ; $4217: $33
	rra                                              ; $4218: $1f
	inc de                                           ; $4219: $13
	rlca                                             ; $421a: $07
	rlca                                             ; $421b: $07
	nop                                              ; $421c: $00
	nop                                              ; $421d: $00
	ldh [$60], a                                     ; $421e: $e0 $60
	ld e, b                                          ; $4220: $58
	cp b                                             ; $4221: $b8
	cp h                                             ; $4222: $bc
	ld a, h                                          ; $4223: $7c
	call z, $ccfc                                    ; $4224: $cc $fc $cc
	db $fc                                           ; $4227: $fc

jr_011_4228:
	ret z                                            ; $4228: $c8

	ld hl, sp-$20                                    ; $4229: $f8 $e0
	ldh [rP1], a                                     ; $422b: $e0 $00
	add d                                            ; $422d: $82
	nop                                              ; $422e: $00
	dec b                                            ; $422f: $05
	inc bc                                           ; $4230: $03
	rra                                              ; $4231: $1f
	rlca                                             ; $4232: $07
	dec hl                                           ; $4233: $2b
	rla                                              ; $4234: $17
	ccf                                              ; $4235: $3f
	inc c                                            ; $4236: $0c
	inc a                                            ; $4237: $3c
	rrca                                             ; $4238: $0f
	rrca                                             ; $4239: $0f
	inc e                                            ; $423a: $1c
	inc bc                                           ; $423b: $03
	inc b                                            ; $423c: $04
	nop                                              ; $423d: $00
	nop                                              ; $423e: $00
	and b                                            ; $423f: $a0
	ret nz                                           ; $4240: $c0

	ld hl, sp-$20                                    ; $4241: $f8 $e0

jr_011_4243:
	ret nc                                           ; $4243: $d0

	db $ec                                           ; $4244: $ec

jr_011_4245:
	ldh a, [$3c]                                     ; $4245: $f0 $3c
	jr nc, jr_011_4245                               ; $4247: $30 $fc

	jr nc, jr_011_4243                               ; $4249: $30 $f8

	cp [hl]                                          ; $424b: $be
	ldh [rP1], a                                     ; $424c: $e0 $00
	ld e, $99                                        ; $424e: $1e $99
	db $10                                           ; $4250: $10
	cpl                                              ; $4251: $2f
	db $10                                           ; $4252: $10
	cpl                                              ; $4253: $2f
	ld [$b137], sp                                   ; $4254: $08 $37 $b1
	rra                                              ; $4257: $1f
	rlca                                             ; $4258: $07
	ld bc, $7800                                     ; $4259: $01 $00 $78
	db $fc                                           ; $425c: $fc
	db $fc                                           ; $425d: $fc
	db $fc                                           ; $425e: $fc
	ld hl, sp-$20                                    ; $425f: $f8 $e0
	add b                                            ; $4261: $80
	nop                                              ; $4262: $00
	inc c                                            ; $4263: $0c
	inc de                                           ; $4264: $13
	db $10                                           ; $4265: $10
	db $10                                           ; $4266: $10
	cp d                                             ; $4267: $ba
	ld [$0304], sp                                   ; $4268: $08 $04 $03
	nop                                              ; $426b: $00
	ret nz                                           ; $426c: $c0

	jr nz, jr_011_428f                               ; $426d: $20 $20

	adc c                                            ; $426f: $89
	ret c                                            ; $4270: $d8

	ld d, b                                          ; $4271: $50
	ld hl, sp-$08                                    ; $4272: $f8 $f8
	ldh a, [rSVBK]                                   ; $4274: $f0 $70
	jr nz, @+$22                                     ; $4276: $20 $20

	nop                                              ; $4278: $00
	nop                                              ; $4279: $00
	ld b, $09                                        ; $427a: $06 $09
	inc c                                            ; $427c: $0c

jr_011_427d:
	inc de                                           ; $427d: $13

Call_011_427e:
	add hl, bc                                       ; $427e: $09
	ld d, $01                                        ; $427f: $16 $01
	ld e, $0c                                        ; $4281: $1e $0c
	inc de                                           ; $4283: $13
	ld b, $19                                        ; $4284: $06 $19
	cp a                                             ; $4286: $bf
	rrca                                             ; $4287: $0f
	nop                                              ; $4288: $00
	sub e                                            ; $4289: $93
	ret nz                                           ; $428a: $c0

	jr nc, jr_011_42ad                               ; $428b: $30 $20

	ret c                                            ; $428d: $d8

	or b                                             ; $428e: $b0

jr_011_428f:
	ld c, b                                          ; $428f: $48
	or b                                             ; $4290: $b0
	ld c, b                                          ; $4291: $48
	nop                                              ; $4292: $00
	ld hl, sp-$20                                    ; $4293: $f8 $e0
	jr @-$40                                         ; $4295: $18 $be

	ldh a, [rP1]                                     ; $4297: $f0 $00
	nop                                              ; $4299: $00
	sub l                                            ; $429a: $95
	inc b                                            ; $429b: $04
	jr @+$03                                         ; $429c: $18 $01

	ld b, $00                                        ; $429e: $06 $00
	ld bc, $0601                                     ; $42a0: $01 $01 $06
	inc b                                            ; $42a3: $04
	jr @-$03                                         ; $42a4: $18 $fb

	sbc e                                            ; $42a6: $9b

jr_011_42a7:
	jr nz, jr_011_42c1                               ; $42a7: $20 $18

	add b                                            ; $42a9: $80
	ld h, b                                          ; $42aa: $60
	ld a, e                                          ; $42ab: $7b
	ld b, e                                          ; $42ac: $43

Call_011_42ad:
jr_011_42ad:
	sbc l                                            ; $42ad: $9d
	ld h, b                                          ; $42ae: $60
	jr nz, jr_011_4320                               ; $42af: $20 $6f

	ldh a, [hDisp1_OBP1]                                     ; $42b1: $f0 $94
	ccf                                              ; $42b3: $3f
	rra                                              ; $42b4: $1f
	jr nz, @+$12                                     ; $42b5: $20 $10

	cpl                                              ; $42b7: $2f
	rra                                              ; $42b8: $1f
	jr nz, jr_011_42cd                               ; $42b9: $20 $12

	dec l                                            ; $42bb: $2d
	rra                                              ; $42bc: $1f
	jr nz, jr_011_427d                               ; $42bd: $20 $be

	ccf                                              ; $42bf: $3f
	nop                                              ; $42c0: $00

jr_011_42c1:
	db $fc                                           ; $42c1: $fc
	sub a                                            ; $42c2: $97
	ld hl, sp+$04                                    ; $42c3: $f8 $04
	ld [$f8f4], sp                                   ; $42c5: $08 $f4 $f8
	inc b                                            ; $42c8: $04
	jr nz, jr_011_42a7                               ; $42c9: $20 $dc

	ld l, e                                          ; $42cb: $6b
	ret nz                                           ; $42cc: $c0

jr_011_42cd:
	dec bc                                           ; $42cd: $0b
	ldh [$7f], a                                     ; $42ce: $e0 $7f
	ld c, c                                          ; $42d0: $49
	sbc e                                            ; $42d1: $9b
	rra                                              ; $42d2: $1f
	dec l                                            ; $42d3: $2d
	rra                                              ; $42d4: $1f
	dec l                                            ; $42d5: $2d
	ld a, e                                          ; $42d6: $7b
	sbc $99                                          ; $42d7: $de $99
	inc l                                            ; $42d9: $2c
	ld [de], a                                       ; $42da: $12
	ccf                                              ; $42db: $3f
	inc c                                            ; $42dc: $0c
	inc c                                            ; $42dd: $0c
	nop                                              ; $42de: $00
	cp a                                             ; $42df: $bf
	ld hl, sp-$08                                    ; $42e0: $f8 $f8
	sbc h                                            ; $42e2: $9c
	or h                                             ; $42e3: $b4
	ld hl, sp-$4c                                    ; $42e4: $f8 $b4
	ld a, e                                          ; $42e6: $7b
	sbc $9a                                          ; $42e7: $de $9a
	inc [hl]                                         ; $42e9: $34
	ld c, b                                          ; $42ea: $48
	db $fc                                           ; $42eb: $fc
	jr nc, jr_011_431e                               ; $42ec: $30 $30

	ld a, e                                          ; $42ee: $7b
	nop                                              ; $42ef: $00
	sub l                                            ; $42f0: $95
	ld b, $7d                                        ; $42f1: $06 $7d
	ld a, a                                          ; $42f3: $7f
	ld d, l                                          ; $42f4: $55
	ld l, [hl]                                       ; $42f5: $6e
	ld d, c                                          ; $42f6: $51
	ld a, a                                          ; $42f7: $7f
	ld d, c                                          ; $42f8: $51
	ld l, [hl]                                       ; $42f9: $6e
	ld d, e                                          ; $42fa: $53
	sbc $7f                                          ; $42fb: $de $7f
	ld a, e                                          ; $42fd: $7b
	nop                                              ; $42fe: $00
	sub l                                            ; $42ff: $95
	ld h, b                                          ; $4300: $60
	cp [hl]                                          ; $4301: $be
	cp $aa                                           ; $4302: $fe $aa
	halt                                             ; $4304: $76
	adc d                                            ; $4305: $8a
	cp $8a                                           ; $4306: $fe $8a
	halt                                             ; $4308: $76
	jp z, $fede                                      ; $4309: $ca $de $fe

	dec d                                            ; $430c: $15
	ld bc, $95ff                                     ; $430d: $01 $ff $95
	ld bc, $0106                                     ; $4310: $01 $06 $01
	ld [$0800], sp                                   ; $4313: $08 $00 $08
	nop                                              ; $4316: $00
	rla                                              ; $4317: $17
	nop                                              ; $4318: $00
	db $10                                           ; $4319: $10
	ld a, e                                          ; $431a: $7b
	cp $99                                           ; $431b: $fe $99
	rrca                                             ; $431d: $0f

jr_011_431e:
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00

jr_011_4320:
	add b                                            ; $4320: $80
	ld h, b                                          ; $4321: $60
	add b                                            ; $4322: $80
	ld [hl], a                                       ; $4323: $77
	or $9e                                           ; $4324: $f6 $9e
	add sp, $7b                                      ; $4326: $e8 $7b
	db $ec                                           ; $4328: $ec
	ld a, a                                          ; $4329: $7f
	cp $99                                           ; $432a: $fe $99
	ldh a, [rP1]                                     ; $432c: $f0 $00
	nop                                              ; $432e: $00
	inc bc                                           ; $432f: $03
	rlca                                             ; $4330: $07
	nop                                              ; $4331: $00
	sbc $3f                                          ; $4332: $de $3f
	sub d                                            ; $4334: $92
	dec hl                                           ; $4335: $2b
	scf                                              ; $4336: $37
	dec a                                            ; $4337: $3d
	ld a, $3d                                        ; $4338: $3e $3d
	ld a, $1f                                        ; $433a: $3e $1f
	ccf                                              ; $433c: $3f
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	ret nz                                           ; $433f: $c0

	ldh [rP1], a                                     ; $4340: $e0 $00
	sbc $fc                                          ; $4342: $de $fc
	sub a                                            ; $4344: $97
	call nc, $bcec                                   ; $4345: $d4 $ec $bc
	ld a, h                                          ; $4348: $7c
	cp h                                             ; $4349: $bc
	ld a, h                                          ; $434a: $7c
	ld hl, sp-$04                                    ; $434b: $f8 $fc
	ld a, e                                          ; $434d: $7b
	ret nz                                           ; $434e: $c0

	sub d                                            ; $434f: $92
	nop                                              ; $4350: $00
	rlca                                             ; $4351: $07
	rlca                                             ; $4352: $07
	rra                                              ; $4353: $1f
	dec de                                           ; $4354: $1b
	rlca                                             ; $4355: $07
	rlca                                             ; $4356: $07
	rrca                                             ; $4357: $0f
	dec c                                            ; $4358: $0d
	ccf                                              ; $4359: $3f
	ccf                                              ; $435a: $3f
	nop                                              ; $435b: $00
	inc bc                                           ; $435c: $03
	ld a, e                                          ; $435d: $7b
	ret nz                                           ; $435e: $c0

	sub d                                            ; $435f: $92
	nop                                              ; $4360: $00
	ldh [$e0], a                                     ; $4361: $e0 $e0
	ld hl, sp-$28                                    ; $4363: $f8 $d8
	ldh [$60], a                                     ; $4365: $e0 $60
	ldh a, [$f0]                                     ; $4367: $f0 $f0
	db $fc                                           ; $4369: $fc
	db $fc                                           ; $436a: $fc
	nop                                              ; $436b: $00
	ret nz                                           ; $436c: $c0

	ldh [c], a                                       ; $436d: $e2
	sbc [hl]                                         ; $436e: $9e
	ld a, b                                          ; $436f: $78
	ld a, e                                          ; $4370: $7b
	cp $f2                                           ; $4371: $fe $f2
	db $dd                                           ; $4373: $dd
	inc a                                            ; $4374: $3c
	db $dd                                           ; $4375: $dd
	db $fc                                           ; $4376: $fc
	pop de                                           ; $4377: $d1
	inc a                                            ; $4378: $3c
	db $dd                                           ; $4379: $dd
	rst $38                                          ; $437a: $ff
	ei                                               ; $437b: $fb
	rst SubAFromHL                                          ; $437c: $d7
	ld bc, $ddfd                                     ; $437d: $01 $fd $dd
	rst $38                                          ; $4380: $ff
	reti                                             ; $4381: $d9


	rst SubAFromBC                                          ; $4382: $e7
	rst SubAFromDE                                          ; $4383: $df
	rrca                                             ; $4384: $0f
	ld sp, hl                                        ; $4385: $f9
	ld h, a                                          ; $4386: $67
	ldh [$df], a                                     ; $4387: $e0 $df
	ld e, $df                                        ; $4389: $1e $df
	inc a                                            ; $438b: $3c
	rst SubAFromDE                                          ; $438c: $df
	ld a, b                                          ; $438d: $78
	rst SubAFromDE                                          ; $438e: $df
	ldh a, [$db]                                     ; $438f: $f0 $db
	rst $38                                          ; $4391: $ff
	ld c, a                                          ; $4392: $4f
	ret nz                                           ; $4393: $c0

	ei                                               ; $4394: $fb
	ld e, a                                          ; $4395: $5f
	ret nz                                           ; $4396: $c0

	rst SubAFromDE                                          ; $4397: $df
	rlca                                             ; $4398: $07
	ld a, e                                          ; $4399: $7b
	ld a, $7e                                        ; $439a: $3e $7e
	db $fd                                           ; $439c: $fd
	sbc [hl]                                         ; $439d: $9e
	rrca                                             ; $439e: $0f
	db $dd                                           ; $439f: $dd
	rra                                              ; $43a0: $1f
	db $dd                                           ; $43a1: $dd
	ccf                                              ; $43a2: $3f
	db $dd                                           ; $43a3: $dd
	ld l, a                                          ; $43a4: $6f
	ld h, a                                          ; $43a5: $67
	ret nc                                           ; $43a6: $d0

	ld sp, hl                                        ; $43a7: $f9
	db $dd                                           ; $43a8: $dd
	rst GetHLinHL                                          ; $43a9: $cf
	db $dd                                           ; $43aa: $dd
	rst $38                                          ; $43ab: $ff
	db $db                                           ; $43ac: $db
	rrca                                             ; $43ad: $0f
	ld c, a                                          ; $43ae: $4f
	ld [hl], d                                       ; $43af: $72
	ld h, a                                          ; $43b0: $67
	xor d                                            ; $43b1: $aa
	ccf                                              ; $43b2: $3f
	and b                                            ; $43b3: $a0
	reti                                             ; $43b4: $d9


	ldh [$dd], a                                     ; $43b5: $e0 $dd
	rst $38                                          ; $43b7: $ff
	rst SubAFromDE                                          ; $43b8: $df
	rlca                                             ; $43b9: $07
	db $db                                           ; $43ba: $db
	rst SubAFromBC                                          ; $43bb: $e7
	ld h, a                                          ; $43bc: $67
	ld [hl], b                                       ; $43bd: $70
	db $dd                                           ; $43be: $dd
	add b                                            ; $43bf: $80
	rst FarCall                                          ; $43c0: $f7
	push de                                          ; $43c1: $d5
	add b                                            ; $43c2: $80
	ld l, a                                          ; $43c3: $6f
	jp nz, $e7d9                                     ; $43c4: $c2 $d9 $e7

	ld h, a                                          ; $43c7: $67
	ret nc                                           ; $43c8: $d0

	ld e, a                                          ; $43c9: $5f
	ld d, b                                          ; $43ca: $50
	db $dd                                           ; $43cb: $dd
	rrca                                             ; $43cc: $0f
	db $dd                                           ; $43cd: $dd
	ld e, $d7                                        ; $43ce: $1e $d7
	inc a                                            ; $43d0: $3c
	ld h, a                                          ; $43d1: $67
	ld [hl], b                                       ; $43d2: $70
	db $dd                                           ; $43d3: $dd
	inc bc                                           ; $43d4: $03
	pop de                                           ; $43d5: $d1
	ld bc, $03dd                                     ; $43d6: $01 $dd $03
	ld l, a                                          ; $43d9: $6f
	ld a, $df                                        ; $43da: $3e $df
	rst SubAFromDE                                          ; $43dc: $df
	call $dfdd                                       ; $43dd: $cd $dd $df
	rst $38                                          ; $43e0: $ff
	rst SubAFromDE                                          ; $43e1: $df
	rst AddAOntoHL                                          ; $43e2: $ef
	ld l, a                                          ; $43e3: $6f
	ld a, [hl]                                       ; $43e4: $7e
	push de                                          ; $43e5: $d5
	ret nz                                           ; $43e6: $c0

	rst $38                                          ; $43e7: $ff
	db $dd                                           ; $43e8: $dd
	rst SubAFromBC                                          ; $43e9: $e7
	db $dd                                           ; $43ea: $dd
	rst AddAOntoHL                                          ; $43eb: $ef
	pop de                                           ; $43ec: $d1
	rst SubAFromBC                                          ; $43ed: $e7
	ld h, a                                          ; $43ee: $67
	ld [hl], b                                       ; $43ef: $70
	ld d, a                                          ; $43f0: $57
	or b                                             ; $43f1: $b0
	db $dd                                           ; $43f2: $dd
	jp $c7dd                                         ; $43f3: $c3 $dd $c7


	rst SubAFromDE                                          ; $43f6: $df
	rst GetHLinHL                                          ; $43f7: $cf
	rst SubAFromDE                                          ; $43f8: $df
	adc $6f                                          ; $43f9: $ce $6f
	ldh [$5f], a                                     ; $43fb: $e0 $5f
	ld [hl+], a                                      ; $43fd: $22
	ld l, a                                          ; $43fe: $6f
	or d                                             ; $43ff: $b2
	rst SubAFromDE                                          ; $4400: $df
	inc bc                                           ; $4401: $03
	add c                                            ; $4402: $81
	rlca                                             ; $4403: $07
	inc b                                            ; $4404: $04
	ld a, $3f                                        ; $4405: $3e $3f
	ld e, a                                          ; $4407: $5f
	ld h, b                                          ; $4408: $60
	dec a                                            ; $4409: $3d
	ld a, $0b                                        ; $440a: $3e $0b
	inc c                                            ; $440c: $0c
	dec c                                            ; $440d: $0d
	ld c, $07                                        ; $440e: $0e $07
	rlca                                             ; $4410: $07
	add b                                            ; $4411: $80
	add b                                            ; $4412: $80
	ld b, b                                          ; $4413: $40
	ret nz                                           ; $4414: $c0

	xor h                                            ; $4415: $ac
	ld l, h                                          ; $4416: $6c
	jp c, $da36                                      ; $4417: $da $36 $da

	ld [hl], $d2                                     ; $441a: $36 $d2
	ld a, $ac                                        ; $441c: $3e $ac
	ld l, h                                          ; $441e: $6c
	ret nz                                           ; $441f: $c0

	ret nz                                           ; $4420: $c0

	inc b                                            ; $4421: $04
	ld bc, $10df                                     ; $4422: $01 $df $10
	sbc $08                                          ; $4425: $de $08
	sub d                                            ; $4427: $92
	nop                                              ; $4428: $00
	ld [$1e00], sp                                   ; $4429: $08 $00 $1e
	dec e                                            ; $442c: $1d
	jr nz, @+$21                                     ; $442d: $20 $1f

	ld h, [hl]                                       ; $442f: $66
	ld h, [hl]                                       ; $4430: $66
	ld h, $26                                        ; $4431: $26 $26
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	ld a, e                                          ; $4435: $7b
	rst AddAOntoHL                                          ; $4436: $ef
	ld a, a                                          ; $4437: $7f
	ldh a, [hDisp1_WY]                                     ; $4438: $f0 $95
	ld [$1d1e], sp                                   ; $443a: $08 $1e $1d
	inc hl                                           ; $443d: $23
	inc h                                            ; $443e: $24
	ld h, $27                                        ; $443f: $26 $27
	ld h, [hl]                                       ; $4441: $66
	ld h, $10                                        ; $4442: $26 $10
	ld a, e                                          ; $4444: $7b
	db $e4                                           ; $4445: $e4
	ld [hl], a                                       ; $4446: $77
	db $fd                                           ; $4447: $fd
	sbc e                                            ; $4448: $9b
	ld hl, $2223                                     ; $4449: $21 $23 $22
	ld hl, $e17b                                     ; $444c: $21 $7b $e1
	ld a, a                                          ; $444f: $7f
	ldh a, [$7f]                                     ; $4450: $f0 $7f
	rst AddAOntoHL                                          ; $4452: $ef
	ld a, e                                          ; $4453: $7b
	pop af                                           ; $4454: $f1
	ld [hl], a                                       ; $4455: $77
	ret nc                                           ; $4456: $d0

	ld a, a                                          ; $4457: $7f
	cp $7b                                           ; $4458: $fe $7b
	ret nc                                           ; $445a: $d0

	sbc [hl]                                         ; $445b: $9e
	daa                                              ; $445c: $27
	ld a, e                                          ; $445d: $7b
	ldh a, [$73]                                     ; $445e: $f0 $73
	ret nc                                           ; $4460: $d0

	rst SubAFromDE                                          ; $4461: $df
	ld hl, $2597                                     ; $4462: $21 $97 $25
	ld h, $e6                                        ; $4465: $26 $e6
	ld h, [hl]                                       ; $4467: $66
	ld h, $a6                                        ; $4468: $26 $a6
	ld [$6f00], sp                                   ; $446a: $08 $00 $6f
	sbc $97                                          ; $446d: $de $97
	ld h, $25                                        ; $446f: $26 $25
	ld e, $1d                                        ; $4471: $1e $1d
	ld h, $26                                        ; $4473: $26 $26
	ld h, [hl]                                       ; $4475: $66
	ld h, [hl]                                       ; $4476: $66
	ld e, a                                          ; $4477: $5f
	or b                                             ; $4478: $b0
	sbc l                                            ; $4479: $9d
	jr z, jr_011_44a5                                ; $447a: $28 $29

	ld [hl], a                                       ; $447c: $77
	or b                                             ; $447d: $b0
	ld a, a                                          ; $447e: $7f
	push af                                          ; $447f: $f5
	ld a, e                                          ; $4480: $7b
	adc [hl]                                         ; $4481: $8e
	ld a, e                                          ; $4482: $7b
	ldh [$9d], a                                     ; $4483: $e0 $9d
	jr z, @+$29                                      ; $4485: $28 $27

	ld h, e                                          ; $4487: $63
	ldh [$73], a                                     ; $4488: $e0 $73
	ldh a, [$7f]                                     ; $448a: $f0 $7f
	ldh a, [c]                                       ; $448c: $f2
	sbc c                                            ; $448d: $99
	cpl                                              ; $448e: $2f
	ld l, $26                                        ; $448f: $2e $26
	daa                                              ; $4491: $27
	ld h, $26                                        ; $4492: $26 $26
	ld a, e                                          ; $4494: $7b
	db $d3                                           ; $4495: $d3
	ld [hl], e                                       ; $4496: $73

Call_011_4497:
	and b                                            ; $4497: $a0
	sbc e                                            ; $4498: $9b
	dec l                                            ; $4499: $2d
	inc l                                            ; $449a: $2c
	dec hl                                           ; $449b: $2b
	ld a, [hl+]                                      ; $449c: $2a
	db $dd                                           ; $449d: $dd

Jump_011_449e:
	ld h, $43                                        ; $449e: $26 $43
	sub b                                            ; $44a0: $90
	ld l, a                                          ; $44a1: $6f
	xor a                                            ; $44a2: $af
	sbc [hl]                                         ; $44a3: $9e
	nop                                              ; $44a4: $00

jr_011_44a5:
	sbc $2f                                          ; $44a5: $de $2f
	ld a, a                                          ; $44a7: $7f
	adc a                                            ; $44a8: $8f
	sbc e                                            ; $44a9: $9b
	ld h, [hl]                                       ; $44aa: $66
	and $66                                          ; $44ab: $e6 $66
	ld [$b07b], sp                                   ; $44ad: $08 $7b $b0
	ld [hl], a                                       ; $44b0: $77
	ld a, [hl]                                       ; $44b1: $7e
	sbc d                                            ; $44b2: $9a
	dec l                                            ; $44b3: $2d
	jr nc, jr_011_44d4                               ; $44b4: $30 $1e

	dec e                                            ; $44b6: $1d
	and $6f                                          ; $44b7: $e6 $6f
	or b                                             ; $44b9: $b0
	ld [hl], a                                       ; $44ba: $77
	ld d, c                                          ; $44bb: $51
	ld a, e                                          ; $44bc: $7b
	ret nc                                           ; $44bd: $d0

	rst SubAFromDE                                          ; $44be: $df
	ld hl, $d27f                                     ; $44bf: $21 $7f $d2
	sbc l                                            ; $44c2: $9d
	and $a6                                          ; $44c3: $e6 $a6
	ld [hl], a                                       ; $44c5: $77
	ldh [rPCM34], a                                  ; $44c6: $e0 $77
	ret nz                                           ; $44c8: $c0

	sbc l                                            ; $44c9: $9d
	ld [hl-], a                                      ; $44ca: $32
	ld sp, $9047                                     ; $44cb: $31 $47 $90
	ld [hl], e                                       ; $44ce: $73
	ldh [$7b], a                                     ; $44cf: $e0 $7b
	ldh a, [rPCM34]                                  ; $44d1: $f0 $77
	nop                                              ; $44d3: $00

jr_011_44d4:
	ld a, a                                          ; $44d4: $7f
	ei                                               ; $44d5: $fb
	rst SubAFromDE                                          ; $44d6: $df
	ld hl, $30df                                     ; $44d7: $21 $df $30
	sbc h                                            ; $44da: $9c
	and [hl]                                         ; $44db: $a6
	ld h, $a6                                        ; $44dc: $26 $a6
	ld b, e                                          ; $44de: $43
	sub b                                            ; $44df: $90
	ld a, e                                          ; $44e0: $7b
	ldh a, [c]                                       ; $44e1: $f2
	ld [hl], a                                       ; $44e2: $77
	ret nc                                           ; $44e3: $d0

	sbc b                                            ; $44e4: $98
	ld [$2f25], sp                                   ; $44e5: $08 $25 $2f
	dec l                                            ; $44e8: $2d
	cpl                                              ; $44e9: $2f
	ld h, $e6                                        ; $44ea: $26 $e6
	ld a, e                                          ; $44ec: $7b
	ld [hl], b                                       ; $44ed: $70
	ld [hl], a                                       ; $44ee: $77
	sub b                                            ; $44ef: $90
	ld a, e                                          ; $44f0: $7b
	ldh [$9e], a                                     ; $44f1: $e0 $9e
	cpl                                              ; $44f3: $2f
	ld a, e                                          ; $44f4: $7b
	sub b                                            ; $44f5: $90
	rst SubAFromDE                                          ; $44f6: $df
	and [hl]                                         ; $44f7: $a6
	ld d, a                                          ; $44f8: $57
	or b                                             ; $44f9: $b0
	rst SubAFromDE                                          ; $44fa: $df
	scf                                              ; $44fb: $37
	ld a, a                                          ; $44fc: $7f
	jp nc, $c07f                                     ; $44fd: $d2 $7f $c0

	ld h, a                                          ; $4500: $67
	ld b, b                                          ; $4501: $40
	sbc e                                            ; $4502: $9b
	ld [hl], $35                                     ; $4503: $36 $35
	inc [hl]                                         ; $4505: $34
	inc sp                                           ; $4506: $33
	inc sp                                           ; $4507: $33
	ld b, b                                          ; $4508: $40
	ld l, d                                          ; $4509: $6a
	sub b                                            ; $450a: $90
	sbc e                                            ; $450b: $9b
	inc [hl]                                         ; $450c: $34
	ld a, [hl+]                                      ; $450d: $2a
	add hl, sp                                       ; $450e: $39
	jr c, @+$6c                                      ; $450f: $38 $6a

	sub b                                            ; $4511: $90
	ld [hl], e                                       ; $4512: $73
	ret nz                                           ; $4513: $c0

	ld a, a                                          ; $4514: $7f
	jp nc, Jump_011_6057                             ; $4515: $d2 $57 $60

	ld a, a                                          ; $4518: $7f
	rst AddAOntoHL                                          ; $4519: $ef
	ld a, e                                          ; $451a: $7b
	or b                                             ; $451b: $b0
	sbc [hl]                                         ; $451c: $9e
	inc a                                            ; $451d: $3c
	ld d, [hl]                                       ; $451e: $56
	ldh a, [$9d]                                     ; $451f: $f0 $9d
	dec sp                                           ; $4521: $3b
	ld a, [hl-]                                      ; $4522: $3a
	cpl                                              ; $4523: $2f
	or b                                             ; $4524: $b0
	rst $38                                          ; $4525: $ff
	jp $81c3                                         ; $4526: $c3 $c3 $81


	rst $38                                          ; $4529: $ff
	jp $81c3                                         ; $452a: $c3 $c3 $81


	add c                                            ; $452d: $81
	nop                                              ; $452e: $00
	add c                                            ; $452f: $81
	nop                                              ; $4530: $00
	nop                                              ; $4531: $00
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	ld bc, $ab00                                     ; $4535: $01 $00 $ab
	nop                                              ; $4538: $00
	db $eb                                           ; $4539: $eb
	add c                                            ; $453a: $81
	ei                                               ; $453b: $fb
	pop bc                                           ; $453c: $c1
	ei                                               ; $453d: $fb
	pop af                                           ; $453e: $f1
	ei                                               ; $453f: $fb
	pop af                                           ; $4540: $f1
	rst $38                                          ; $4541: $ff
	ei                                               ; $4542: $fb
	rst $38                                          ; $4543: $ff
	rst $38                                          ; $4544: $ff
	rst $38                                          ; $4545: $ff
	rst $38                                          ; $4546: $ff
	rst $38                                          ; $4547: $ff
	jp $81c3                                         ; $4548: $c3 $c3 $81


	rst $38                                          ; $454b: $ff
	jp $81c3                                         ; $454c: $c3 $c3 $81


	add c                                            ; $454f: $81
	nop                                              ; $4550: $00
	add c                                            ; $4551: $81
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	ld bc, $ab00                                     ; $4557: $01 $00 $ab
	nop                                              ; $455a: $00
	db $eb                                           ; $455b: $eb
	add c                                            ; $455c: $81
	ei                                               ; $455d: $fb
	pop bc                                           ; $455e: $c1
	ei                                               ; $455f: $fb
	pop af                                           ; $4560: $f1
	ei                                               ; $4561: $fb
	pop af                                           ; $4562: $f1
	rst $38                                          ; $4563: $ff
	ei                                               ; $4564: $fb
	rst $38                                          ; $4565: $ff
	rst $38                                          ; $4566: $ff
	rst $38                                          ; $4567: $ff
	rst $38                                          ; $4568: $ff
	rst $38                                          ; $4569: $ff
	jp $81c3                                         ; $456a: $c3 $c3 $81


	rst $38                                          ; $456d: $ff
	jp $81c3                                         ; $456e: $c3 $c3 $81


	add c                                            ; $4571: $81
	nop                                              ; $4572: $00
	add c                                            ; $4573: $81
	nop                                              ; $4574: $00
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	ld bc, $ab00                                     ; $4579: $01 $00 $ab
	nop                                              ; $457c: $00
	db $eb                                           ; $457d: $eb
	add c                                            ; $457e: $81
	ei                                               ; $457f: $fb
	pop bc                                           ; $4580: $c1
	ei                                               ; $4581: $fb
	pop af                                           ; $4582: $f1
	ei                                               ; $4583: $fb
	pop af                                           ; $4584: $f1
	rst $38                                          ; $4585: $ff
	db $fc                                           ; $4586: $fc
	db $fc                                           ; $4587: $fc
	ld hl, sp-$02                                    ; $4588: $f8 $fe
	ret nz                                           ; $458a: $c0

	ret nz                                           ; $458b: $c0

	add b                                            ; $458c: $80
	db $fc                                           ; $458d: $fc
	ret nz                                           ; $458e: $c0

	ld hl, sp-$10                                    ; $458f: $f8 $f0
	db $fc                                           ; $4591: $fc
	ldh a, [rIE]                                     ; $4592: $f0 $ff
	ld hl, sp-$01                                    ; $4594: $f8 $ff
	ld a, a                                          ; $4596: $7f
	ld a, a                                          ; $4597: $7f
	ccf                                              ; $4598: $3f
	ccf                                              ; $4599: $3f
	inc de                                           ; $459a: $13
	inc de                                           ; $459b: $13
	ld bc, $0113                                     ; $459c: $01 $13 $01
	inc de                                           ; $459f: $13
	ld bc, $133f                                     ; $45a0: $01 $3f $13
	rst $38                                          ; $45a3: $ff
	ccf                                              ; $45a4: $3f
	inc hl                                           ; $45a5: $23
	nop                                              ; $45a6: $00
	rst SubAFromDE                                          ; $45a7: $df
	inc bc                                           ; $45a8: $03
	add c                                            ; $45a9: $81
	rlca                                             ; $45aa: $07
	inc b                                            ; $45ab: $04
	ld a, $3f                                        ; $45ac: $3e $3f
	ld e, a                                          ; $45ae: $5f
	ld h, b                                          ; $45af: $60
	dec a                                            ; $45b0: $3d
	ld a, $0b                                        ; $45b1: $3e $0b
	inc c                                            ; $45b3: $0c
	dec c                                            ; $45b4: $0d
	ld c, $07                                        ; $45b5: $0e $07
	rlca                                             ; $45b7: $07
	add b                                            ; $45b8: $80
	add b                                            ; $45b9: $80
	ld b, b                                          ; $45ba: $40
	ret nz                                           ; $45bb: $c0

	xor h                                            ; $45bc: $ac
	ld l, h                                          ; $45bd: $6c
	jp c, $da36                                      ; $45be: $da $36 $da

jr_011_45c1:
	ld [hl], $d2                                     ; $45c1: $36 $d2
	ld a, $ac                                        ; $45c3: $3e $ac
	ld l, h                                          ; $45c5: $6c
	ret nz                                           ; $45c6: $c0

	ret nz                                           ; $45c7: $c0

	xor $00                                          ; $45c8: $ee $00
	db $fd                                           ; $45ca: $fd
	rst SubAFromDE                                          ; $45cb: $df
	rlca                                             ; $45cc: $07
	sub l                                            ; $45cd: $95
	jr @+$1e                                         ; $45ce: $18 $1c

	jr nc, @+$32                                     ; $45d0: $30 $30

	ld [hl-], a                                      ; $45d2: $32
	ld [hl-], a                                      ; $45d3: $32
	ld d, d                                          ; $45d4: $52
	ld [hl], d                                       ; $45d5: $72
	ld c, h                                          ; $45d6: $4c
	ld c, h                                          ; $45d7: $4c
	db $fd                                           ; $45d8: $fd
	rst SubAFromDE                                          ; $45d9: $df
	ldh [hDisp1_WY], a                                     ; $45da: $e0 $95
	jr @+$3a                                         ; $45dc: $18 $38

	inc c                                            ; $45de: $0c
	inc c                                            ; $45df: $0c
	ld c, h                                          ; $45e0: $4c
	ld c, h                                          ; $45e1: $4c
	ld c, d                                          ; $45e2: $4a
	ld c, [hl]                                       ; $45e3: $4e
	ld [hl-], a                                      ; $45e4: $32
	ld [hl-], a                                      ; $45e5: $32
	ld e, a                                          ; $45e6: $5f
	ldh [$df], a                                     ; $45e7: $e0 $df
	inc l                                            ; $45e9: $2c
	ld a, a                                          ; $45ea: $7f
	ldh [$df], a                                     ; $45eb: $e0 $df
	ld b, b                                          ; $45ed: $40
	ld e, a                                          ; $45ee: $5f
	ldh [$df], a                                     ; $45ef: $e0 $df
	inc [hl]                                         ; $45f1: $34
	ld a, a                                          ; $45f2: $7f
	ldh [$df], a                                     ; $45f3: $e0 $df
	ld [bc], a                                       ; $45f5: $02
	inc bc                                           ; $45f6: $03
	ldh [$73], a                                     ; $45f7: $e0 $73
	rst SubAFromDE                                          ; $45f9: $df
	sub [hl]                                         ; $45fa: $96
	inc b                                            ; $45fb: $04
	jr jr_011_45fe                                   ; $45fc: $18 $00

jr_011_45fe:
	jr nc, jr_011_4600                               ; $45fe: $30 $00

jr_011_4600:
	inc l                                            ; $4600: $2c
	jr nz, jr_011_464f                               ; $4601: $20 $4c

	nop                                              ; $4603: $00
	ld [hl], e                                       ; $4604: $73
	and b                                            ; $4605: $a0
	ld a, a                                          ; $4606: $7f
	rst SubAFromDE                                          ; $4607: $df
	sub [hl]                                         ; $4608: $96
	jr nz, jr_011_4623                               ; $4609: $20 $18

	nop                                              ; $460b: $00
	inc c                                            ; $460c: $0c
	nop                                              ; $460d: $00
	inc [hl]                                         ; $460e: $34
	inc b                                            ; $460f: $04
	ld [hl-], a                                      ; $4610: $32
	nop                                              ; $4611: $00
	ld [hl], e                                       ; $4612: $73
	and b                                            ; $4613: $a0
	ld l, e                                          ; $4614: $6b
	ldh [$9c], a                                     ; $4615: $e0 $9c
	ld h, $20                                        ; $4617: $26 $20
	ld e, h                                          ; $4619: $5c
	ld d, e                                          ; $461a: $53
	ldh [$9c], a                                     ; $461b: $e0 $9c
	ld h, h                                          ; $461d: $64
	inc b                                            ; $461e: $04
	ld a, [hl-]                                      ; $461f: $3a
	ld d, e                                          ; $4620: $53
	ldh [$df], a                                     ; $4621: $e0 $df

jr_011_4623:
	jr nz, jr_011_45c1                               ; $4623: $20 $9c

	ld e, [hl]                                       ; $4625: $5e
	nop                                              ; $4626: $00
	ld b, [hl]                                       ; $4627: $46
	ld e, e                                          ; $4628: $5b
	ldh [$df], a                                     ; $4629: $e0 $df
	inc b                                            ; $462b: $04
	sbc h                                            ; $462c: $9c
	ld a, d                                          ; $462d: $7a
	nop                                              ; $462e: $00
	ld a, [de]                                       ; $462f: $1a
	ld e, a                                          ; $4630: $5f
	add b                                            ; $4631: $80
	rst SubAFromDE                                          ; $4632: $df
	jr c, @-$62                                      ; $4633: $38 $9c

	ld b, [hl]                                       ; $4635: $46
	ld l, [hl]                                       ; $4636: $6e
	ld b, h                                          ; $4637: $44
	ld e, e                                          ; $4638: $5b
	ld b, b                                          ; $4639: $40
	rst SubAFromDE                                          ; $463a: $df
	inc e                                            ; $463b: $1c
	adc a                                            ; $463c: $8f
	ld h, d                                          ; $463d: $62
	halt                                             ; $463e: $76
	ld [hl+], a                                      ; $463f: $22
	ld [hl-], a                                      ; $4640: $32
	ld e, h                                          ; $4641: $5c
	ld b, b                                          ; $4642: $40
	ld b, a                                          ; $4643: $47
	ld h, a                                          ; $4644: $67
	inc h                                            ; $4645: $24
	inc h                                            ; $4646: $24
	ld [hl-], a                                      ; $4647: $32
	ld [hl-], a                                      ; $4648: $32
	add hl, de                                       ; $4649: $19
	dec e                                            ; $464a: $1d
	rlca                                             ; $464b: $07
	rlca                                             ; $464c: $07
	db $fd                                           ; $464d: $fd
	sub e                                            ; $464e: $93

jr_011_464f:
	ld a, [hl-]                                      ; $464f: $3a
	ld [bc], a                                       ; $4650: $02
	ldh [c], a                                       ; $4651: $e2
	and $24                                          ; $4652: $e6 $24
	inc h                                            ; $4654: $24
	ld c, h                                          ; $4655: $4c
	ld c, h                                          ; $4656: $4c
	sbc b                                            ; $4657: $98
	cp b                                             ; $4658: $b8
	ldh [$e0], a                                     ; $4659: $e0 $e0
	db $fd                                           ; $465b: $fd
	rst SubAFromDE                                          ; $465c: $df
	ld b, b                                          ; $465d: $40
	ld c, a                                          ; $465e: $4f
	ldh [$df], a                                     ; $465f: $e0 $df
	ld [bc], a                                       ; $4661: $02
	ld b, a                                          ; $4662: $47
	ldh [$97], a                                     ; $4663: $e0 $97
	ld b, h                                          ; $4665: $44
	ld h, h                                          ; $4666: $64
	inc hl                                           ; $4667: $23
	inc hl                                           ; $4668: $23
	jr nc, jr_011_469b                               ; $4669: $30 $30

	jr jr_011_4689                                   ; $466b: $18 $1c

	ld h, a                                          ; $466d: $67
	ldh [$97], a                                     ; $466e: $e0 $97
	ld [hl+], a                                      ; $4670: $22
	ld h, $c4                                        ; $4671: $26 $c4
	call nz, $0c0c                                   ; $4673: $c4 $0c $0c
	jr jr_011_46b0                                   ; $4676: $18 $38

	ld l, a                                          ; $4678: $6f
	ldh [$7f], a                                     ; $4679: $e0 $7f
	rst SubAFromDE                                          ; $467b: $df
	sbc c                                            ; $467c: $99
	jr nz, jr_011_46c2                               ; $467d: $20 $43

Call_011_467f:
	nop                                              ; $467f: $00
	jr nz, jr_011_4682                               ; $4680: $20 $00

jr_011_4682:
	jr nc, @+$7d                                     ; $4682: $30 $7b

	ld e, [hl]                                       ; $4684: $5e
	ld [hl], e                                       ; $4685: $73
	ldh [$7f], a                                     ; $4686: $e0 $7f
	rst SubAFromDE                                          ; $4688: $df

jr_011_4689:
	sbc c                                            ; $4689: $99
	inc b                                            ; $468a: $04
	jp nz, $0400                                     ; $468b: $c2 $00 $04

	nop                                              ; $468e: $00
	inc c                                            ; $468f: $0c
	ld a, e                                          ; $4690: $7b
	ld e, [hl]                                       ; $4691: $5e
	ld h, a                                          ; $4692: $67
	ldh [$9a], a                                     ; $4693: $e0 $9a
	ld b, c                                          ; $4695: $41
	nop                                              ; $4696: $00
	ld [hl+], a                                      ; $4697: $22
	nop                                              ; $4698: $00
	ld [hl-], a                                      ; $4699: $32
	ld e, e                                          ; $469a: $5b

jr_011_469b:
	ldh [$9a], a                                     ; $469b: $e0 $9a
	add d                                            ; $469d: $82
	nop                                              ; $469e: $00
	ld b, h                                          ; $469f: $44
	nop                                              ; $46a0: $00
	ld c, h                                          ; $46a1: $4c
	inc bc                                           ; $46a2: $03
	ldh [rOCPD], a                                   ; $46a3: $e0 $6b
	ldh [$df], a                                     ; $46a5: $e0 $df
	ld b, b                                          ; $46a7: $40
	sbc e                                            ; $46a8: $9b
	ld b, c                                          ; $46a9: $41
	ld h, c                                          ; $46aa: $61
	ld [hl+], a                                      ; $46ab: $22
	ld [hl+], a                                      ; $46ac: $22
	ld d, a                                          ; $46ad: $57
	add b                                            ; $46ae: $80
	sbc e                                            ; $46af: $9b

jr_011_46b0:
	add d                                            ; $46b0: $82
	add [hl]                                         ; $46b1: $86
	ld b, h                                          ; $46b2: $44
	ld b, h                                          ; $46b3: $44
	ld e, a                                          ; $46b4: $5f
	add b                                            ; $46b5: $80
	rst SubAFromBC                                          ; $46b6: $e7
	nop                                              ; $46b7: $00
	db $dd                                           ; $46b8: $dd
	rst $38                                          ; $46b9: $ff
	adc b                                            ; $46ba: $88
	ld hl, sp-$01                                    ; $46bb: $f8 $ff
	ldh [$fc], a                                     ; $46bd: $e0 $fc
	ret nz                                           ; $46bf: $c0

	ldh a, [$c0]                                     ; $46c0: $f0 $c0

jr_011_46c2:
	ldh a, [c]                                       ; $46c2: $f2
	add b                                            ; $46c3: $80
	ldh a, [c]                                       ; $46c4: $f2
	add b                                            ; $46c5: $80
	call z, $c09c                                    ; $46c6: $cc $9c $c0
	add b                                            ; $46c9: $80
	rst SubAFromBC                                          ; $46ca: $e7
	ret nz                                           ; $46cb: $c0

	db $e4                                           ; $46cc: $e4
	ret nz                                           ; $46cd: $c0

	ldh a, [c]                                       ; $46ce: $f2
	ldh [$fd], a                                     ; $46cf: $e0 $fd
	ld hl, sp-$28                                    ; $46d1: $f8 $d8
	rst $38                                          ; $46d3: $ff
	adc b                                            ; $46d4: $88
	rra                                              ; $46d5: $1f
	rst $38                                          ; $46d6: $ff
	rlca                                             ; $46d7: $07
	ccf                                              ; $46d8: $3f
	inc bc                                           ; $46d9: $03
	rrca                                             ; $46da: $0f
	inc bc                                           ; $46db: $03
	ld c, a                                          ; $46dc: $4f
	ld bc, $014f                                     ; $46dd: $01 $4f $01
	inc sp                                           ; $46e0: $33
	add hl, sp                                       ; $46e1: $39
	inc bc                                           ; $46e2: $03
	ld bc, $03e7                                     ; $46e3: $01 $e7 $03
	daa                                              ; $46e6: $27
	inc bc                                           ; $46e7: $03
	ld c, a                                          ; $46e8: $4f
	rlca                                             ; $46e9: $07
	cp a                                             ; $46ea: $bf
	rra                                              ; $46eb: $1f
	ret c                                            ; $46ec: $d8

	rst $38                                          ; $46ed: $ff
	ld l, e                                          ; $46ee: $6b
	ret nz                                           ; $46ef: $c0

	sbc [hl]                                         ; $46f0: $9e
	db $ec                                           ; $46f1: $ec
	ld a, e                                          ; $46f2: $7b
	ret nz                                           ; $46f3: $c0

	ld a, a                                          ; $46f4: $7f
	jp nz, $c01f                                     ; $46f5: $c2 $1f $c0

	sbc [hl]                                         ; $46f8: $9e
	scf                                              ; $46f9: $37
	ld a, e                                          ; $46fa: $7b
	ret nz                                           ; $46fb: $c0

	ld a, a                                          ; $46fc: $7f
	jp nz, $c003                                     ; $46fd: $c2 $03 $c0

	sub a                                            ; $4700: $97
	add b                                            ; $4701: $80
	db $e4                                           ; $4702: $e4
	ret nz                                           ; $4703: $c0

	db $e3                                           ; $4704: $e3
	ret nz                                           ; $4705: $c0

	ldh a, [$e0]                                     ; $4706: $f0 $e0
	db $fc                                           ; $4708: $fc
	inc hl                                           ; $4709: $23
	ret nz                                           ; $470a: $c0

	ld a, a                                          ; $470b: $7f
	jp nz, $c79a                                     ; $470c: $c2 $9a $c7

	inc bc                                           ; $470f: $03
	rrca                                             ; $4710: $0f
	rlca                                             ; $4711: $07
	ccf                                              ; $4712: $3f
	ld d, a                                          ; $4713: $57
	ret nz                                           ; $4714: $c0

	sbc l                                            ; $4715: $9d
	db $e4                                           ; $4716: $e4
	ld hl, sp+$77                                    ; $4717: $f8 $77
	ret nz                                           ; $4719: $c0

	sub c                                            ; $471a: $91
	and b                                            ; $471b: $a0
	call z, wMemCopies+3*(NUM_WRAM_MEM_COPIES-$20)                                    ; $471c: $cc $80 $cc
	add b                                            ; $471f: $80
	ret nz                                           ; $4720: $c0

	and b                                            ; $4721: $a0
	jp $e0c0                                         ; $4722: $c3 $c0 $e0


	ret nz                                           ; $4725: $c0

	ldh a, [$e4]                                     ; $4726: $f0 $e4
	ld hl, sp+$57                                    ; $4728: $f8 $57
	ret nz                                           ; $472a: $c0

	sbc l                                            ; $472b: $9d
	daa                                              ; $472c: $27
	rra                                              ; $472d: $1f
	ld [hl], a                                       ; $472e: $77
	ret nz                                           ; $472f: $c0

	sub c                                            ; $4730: $91
	dec b                                            ; $4731: $05
	inc sp                                           ; $4732: $33
	ld bc, $0133                                     ; $4733: $01 $33 $01
	inc bc                                           ; $4736: $03
	dec b                                            ; $4737: $05
	jp $0703                                         ; $4738: $c3 $03 $07


	inc bc                                           ; $473b: $03
	rrca                                             ; $473c: $0f
	daa                                              ; $473d: $27
	rra                                              ; $473e: $1f
	ld b, e                                          ; $473f: $43
	add b                                            ; $4740: $80
	sbc h                                            ; $4741: $9c
	and $80                                          ; $4742: $e6 $80
	db $fc                                           ; $4744: $fc
	ld [hl], a                                       ; $4745: $77
	ret nz                                           ; $4746: $c0

	sbc e                                            ; $4747: $9b
	add b                                            ; $4748: $80
	pop hl                                           ; $4749: $e1
	ret nz                                           ; $474a: $c0

	ldh [c], a                                       ; $474b: $e2
	ld a, e                                          ; $474c: $7b
	ld b, b                                          ; $474d: $40
	ccf                                              ; $474e: $3f
	add b                                            ; $474f: $80
	sbc h                                            ; $4750: $9c
	ld h, a                                          ; $4751: $67
	ld bc, $773f                                     ; $4752: $01 $3f $77
	ret nz                                           ; $4755: $c0

	sbc e                                            ; $4756: $9b
	ld bc, $0387                                     ; $4757: $01 $87 $03
	ld b, a                                          ; $475a: $47
	ld a, e                                          ; $475b: $7b
	ld b, b                                          ; $475c: $40
	ld d, e                                          ; $475d: $53
	add b                                            ; $475e: $80
	ld [hl], e                                       ; $475f: $73
	ret nz                                           ; $4760: $c0

	sbc d                                            ; $4761: $9a
	ldh [$80], a                                     ; $4762: $e0 $80
	cp $80                                           ; $4764: $fe $80
	add $1b                                          ; $4766: $c6 $1b
	ret nz                                           ; $4768: $c0

	sbc d                                            ; $4769: $9a
	rlca                                             ; $476a: $07
	ld bc, $017f                                     ; $476b: $01 $7f $01
	dec de                                           ; $476e: $1b
	scf                                              ; $476f: $37
	ret nz                                           ; $4770: $c0

	ld a, a                                          ; $4771: $7f
	cp a                                             ; $4772: $bf
	sbc b                                            ; $4773: $98
	db $fc                                           ; $4774: $fc
	ldh [$f0], a                                     ; $4775: $e0 $f0
	ret nz                                           ; $4777: $c0

	ld hl, sp-$40                                    ; $4778: $f8 $c0
	xor $6f                                          ; $477a: $ee $6f
	add c                                            ; $477c: $81
	sbc l                                            ; $477d: $9d
	add b                                            ; $477e: $80
	ldh [c], a                                       ; $477f: $e2
	ld a, e                                          ; $4780: $7b
	or e                                             ; $4781: $b3
	ld a, a                                          ; $4782: $7f
	xor $7b                                          ; $4783: $ee $7b
	xor c                                            ; $4785: $a9
	ld h, e                                          ; $4786: $63
	cp a                                             ; $4787: $bf
	sbc b                                            ; $4788: $98
	ccf                                              ; $4789: $3f
	rlca                                             ; $478a: $07
	rrca                                             ; $478b: $0f
	inc bc                                           ; $478c: $03
	rra                                              ; $478d: $1f
	inc bc                                           ; $478e: $03
	ld [hl], a                                       ; $478f: $77
	ld l, a                                          ; $4790: $6f
	add c                                            ; $4791: $81
	sbc l                                            ; $4792: $9d
	ld bc, $7b47                                     ; $4793: $01 $47 $7b
	or e                                             ; $4796: $b3
	ld a, a                                          ; $4797: $7f
	xor $7b                                          ; $4798: $ee $7b
	xor c                                            ; $479a: $a9
	sbc $ff                                          ; $479b: $de $ff
	ld c, [hl]                                       ; $479d: $4e
	nop                                              ; $479e: $00
	ei                                               ; $479f: $fb
	sub l                                            ; $47a0: $95
	ld bc, $0700                                     ; $47a1: $01 $00 $07
	rlca                                             ; $47a4: $07
	dec e                                            ; $47a5: $1d
	ld [$1019], sp                                   ; $47a6: $08 $19 $10
	inc sp                                           ; $47a9: $33
	ld hl, $dffd                                     ; $47aa: $21 $fd $df
	ldh a, [$98]                                     ; $47ad: $f0 $98
	adc b                                            ; $47af: $88
	ld [$fce8], sp                                   ; $47b0: $08 $e8 $fc
	ld hl, sp-$08                                    ; $47b3: $f8 $f8
	add sp, -$22                                     ; $47b5: $e8 $de
	db $fc                                           ; $47b7: $fc
	sbc l                                            ; $47b8: $9d
	ccf                                              ; $47b9: $3f
	inc sp                                           ; $47ba: $33
	db $dd                                           ; $47bb: $dd
	ccf                                              ; $47bc: $3f
	sbc $1f                                          ; $47bd: $de $1f
	sbc h                                            ; $47bf: $9c
	rrca                                             ; $47c0: $0f
	rlca                                             ; $47c1: $07
	rlca                                             ; $47c2: $07
	db $fd                                           ; $47c3: $fd
	db $db                                           ; $47c4: $db
	db $fc                                           ; $47c5: $fc
	sbc $f8                                          ; $47c6: $de $f8
	sbc h                                            ; $47c8: $9c
	ldh a, [$e0]                                     ; $47c9: $f0 $e0
	ldh [$f7], a                                     ; $47cb: $e0 $f7
	ld b, e                                          ; $47cd: $43
	ret nz                                           ; $47ce: $c0

	sbc [hl]                                         ; $47cf: $9e
	ld a, [hl+]                                      ; $47d0: $2a
	ld l, a                                          ; $47d1: $6f
	ret nz                                           ; $47d2: $c0

	sbc l                                            ; $47d3: $9d
	call c, $03fe                                    ; $47d4: $dc $fe $03
	ret nz                                           ; $47d7: $c0

	dec sp                                           ; $47d8: $3b
	ret nz                                           ; $47d9: $c0

	sbc l                                            ; $47da: $9d
	or b                                             ; $47db: $b0
	pop af                                           ; $47dc: $f1
	ld a, e                                          ; $47dd: $7b
	ret nz                                           ; $47de: $c0

	sbc e                                            ; $47df: $9b
	add sp, -$08                                     ; $47e0: $e8 $f8
	ld hl, sp-$04                                    ; $47e2: $f8 $fc
	dec sp                                           ; $47e4: $3b
	ret nz                                           ; $47e5: $c0

	sbc l                                            ; $47e6: $9d
	cp h                                             ; $47e7: $bc
	db $fd                                           ; $47e8: $fd
	ld c, a                                          ; $47e9: $4f
	ret nz                                           ; $47ea: $c0

	ld c, $00                                        ; $47eb: $0e $00
	db $dd                                           ; $47ed: $dd
	add b                                            ; $47ee: $80
	rst SubAFromDE                                          ; $47ef: $df
	ldh [$df], a                                     ; $47f0: $e0 $df
	db $10                                           ; $47f2: $10
	rst SubAFromDE                                          ; $47f3: $df
	ldh a, [$df]                                     ; $47f4: $f0 $df
	ldh [$dd], a                                     ; $47f6: $e0 $dd
	add b                                            ; $47f8: $80
	inc b                                            ; $47f9: $04
	nop                                              ; $47fa: $00
	pop de                                           ; $47fb: $d1
	add b                                            ; $47fc: $80
	inc b                                            ; $47fd: $04
	nop                                              ; $47fe: $00
	pop de                                           ; $47ff: $d1
	dec d                                            ; $4800: $15
	stop                                             ; $4801: $10 $00
	db $fc                                           ; $4803: $fc
	sbc d                                            ; $4804: $9a
	inc bc                                           ; $4805: $03

jr_011_4806:
	nop                                              ; $4806: $00
	rlca                                             ; $4807: $07
	nop                                              ; $4808: $00
	ld b, $4b                                        ; $4809: $06 $4b
	cp $7f                                           ; $480b: $fe $7f
	xor $7f                                          ; $480d: $ee $7f
	ld [$10fe], a                                    ; $480f: $ea $fe $10
	nop                                              ; $4812: $00
	db $fc                                           ; $4813: $fc
	sbc d                                            ; $4814: $9a
	ret nz                                           ; $4815: $c0

	nop                                              ; $4816: $00
	ldh [rP1], a                                     ; $4817: $e0 $00
	ld h, b                                          ; $4819: $60
	ld c, e                                          ; $481a: $4b
	cp $7f                                           ; $481b: $fe $7f
	xor $7f                                          ; $481d: $ee $7f
	ld [$a7fe], a                                    ; $481f: $ea $fe $a7
	nop                                              ; $4822: $00
	db $fd                                           ; $4823: $fd
	rst SubAFromDE                                          ; $4824: $df
	jr jr_011_4806                                   ; $4825: $18 $df

	rlca                                             ; $4827: $07
	rst SubAFromDE                                          ; $4828: $df
	dec a                                            ; $4829: $3d
	rst SubAFromDE                                          ; $482a: $df
	ld bc, $1bdf                                     ; $482b: $01 $df $1b
	rst SubAFromDE                                          ; $482e: $df
	ld b, $fd                                        ; $482f: $06 $fd
	rst SubAFromDE                                          ; $4831: $df
	ld l, c                                          ; $4832: $69
	rst SubAFromDE                                          ; $4833: $df
	ret                                              ; $4834: $c9


	rst SubAFromDE                                          ; $4835: $df
	ld c, c                                          ; $4836: $49
	rst SubAFromDE                                          ; $4837: $df
	ld c, a                                          ; $4838: $4f
	ld [hl], a                                       ; $4839: $77
	ld hl, sp-$03                                    ; $483a: $f8 $fd
	rst SubAFromDE                                          ; $483c: $df
	rrca                                             ; $483d: $0f
	db $dd                                           ; $483e: $dd
	ld [$e8df], sp                                   ; $483f: $08 $df $e8
	db $dd                                           ; $4842: $dd
	ld [$dffd], sp                                   ; $4843: $08 $fd $df
	ret nz                                           ; $4846: $c0

	rst SubAFromDE                                          ; $4847: $df
	ld b, b                                          ; $4848: $40
	db $dd                                           ; $4849: $dd
	ld c, h                                          ; $484a: $4c
	db $dd                                           ; $484b: $dd
	ld b, b                                          ; $484c: $40
	rst SubAFromDE                                          ; $484d: $df
	ld a, [de]                                       ; $484e: $1a
	rst SubAFromDE                                          ; $484f: $df
	rlca                                             ; $4850: $07
	rst SubAFromDE                                          ; $4851: $df
	ld a, $df                                        ; $4852: $3e $df
	daa                                              ; $4854: $27
	rst SubAFromDE                                          ; $4855: $df
	dec h                                            ; $4856: $25
	rst SubAFromDE                                          ; $4857: $df
	inc a                                            ; $4858: $3c
	db $fd                                           ; $4859: $fd
	rst SubAFromDE                                          ; $485a: $df
	pop de                                           ; $485b: $d1
	rst SubAFromDE                                          ; $485c: $df
	rst JumpTable                                          ; $485d: $c7
	rst SubAFromDE                                          ; $485e: $df
	pop bc                                           ; $485f: $c1
	rst SubAFromDE                                          ; $4860: $df
	ld hl, $c1df                                     ; $4861: $21 $df $c1
	rst SubAFromDE                                          ; $4864: $df
	ld l, a                                          ; $4865: $6f
	ld l, a                                          ; $4866: $6f
	call nz, $c8df                                   ; $4867: $c4 $df $c8
	db $dd                                           ; $486a: $dd
	ld [$0fdf], sp                                   ; $486b: $08 $df $0f
	rst SubAFromDE                                          ; $486e: $df
	add sp, $57                                      ; $486f: $e8 $57
	call nz, $f877                                   ; $4871: $c4 $77 $f8
	ld sp, hl                                        ; $4874: $f9
	rst SubAFromDE                                          ; $4875: $df
	inc b                                            ; $4876: $04
	rst SubAFromDE                                          ; $4877: $df
	ld [$3fdf], sp                                   ; $4878: $08 $df $3f
	db $db                                           ; $487b: $db
	ld a, [hl+]                                      ; $487c: $2a
	db $fd                                           ; $487d: $fd
	rst SubAFromDE                                          ; $487e: $df

jr_011_487f:
	ld [hl+], a                                      ; $487f: $22
	rst SubAFromDE                                          ; $4880: $df
	ld de, $8fdf                                     ; $4881: $11 $df $8f
	rst SubAFromDE                                          ; $4884: $df
	and c                                            ; $4885: $a1
	rst SubAFromDE                                          ; $4886: $df
	sub l                                            ; $4887: $95
	rst SubAFromDE                                          ; $4888: $df
	add l                                            ; $4889: $85
	db $fd                                           ; $488a: $fd
	rst SubAFromDE                                          ; $488b: $df
	rra                                              ; $488c: $1f
	rst SubAFromDE                                          ; $488d: $df
	ld a, [bc]                                       ; $488e: $0a
	rst SubAFromDE                                          ; $488f: $df
	ld [$1fdf], a                                    ; $4890: $ea $df $1f
	rst SubAFromDE                                          ; $4893: $df
	ld [$e06f], a                                    ; $4894: $ea $6f $e0
	rst SubAFromDE                                          ; $4897: $df
	jr nz, @-$1f                                     ; $4898: $20 $df

	and b                                            ; $489a: $a0
	db $dd                                           ; $489b: $dd
	xor h                                            ; $489c: $ac
	rst SubAFromDE                                          ; $489d: $df
	jr nz, jr_011_487f                               ; $489e: $20 $df

	ld h, b                                          ; $48a0: $60
	rst SubAFromHL                                          ; $48a1: $d7
	ld a, [hl+]                                      ; $48a2: $2a
	rst SubAFromDE                                          ; $48a3: $df
	ld a, a                                          ; $48a4: $7f
	db $fd                                           ; $48a5: $fd
	rst SubAFromDE                                          ; $48a6: $df
	adc [hl]                                         ; $48a7: $8e
	rst SubAFromDE                                          ; $48a8: $df
	sbc [hl]                                         ; $48a9: $9e
	rst SubAFromDE                                          ; $48aa: $df
	sub l                                            ; $48ab: $95
	rst SubAFromDE                                          ; $48ac: $df
	sub h                                            ; $48ad: $94
	rst SubAFromDE                                          ; $48ae: $df
	and l                                            ; $48af: $a5
	rst SubAFromDE                                          ; $48b0: $df
	and $fd                                          ; $48b1: $e6 $fd
	rst SubAFromDE                                          ; $48b3: $df
	or e                                             ; $48b4: $b3
	rst SubAFromDE                                          ; $48b5: $df
	ld h, c                                          ; $48b6: $61
	rst SubAFromDE                                          ; $48b7: $df
	ld b, a                                          ; $48b8: $47
	rst SubAFromDE                                          ; $48b9: $df
	add c                                            ; $48ba: $81
	ld h, a                                          ; $48bb: $67
	ld [hl], b                                       ; $48bc: $70
	rst SubAFromDE                                          ; $48bd: $df
	jr nz, @+$01                                     ; $48be: $20 $ff

	rst SubAFromDE                                          ; $48c0: $df
	call z, $0cdf                                    ; $48c1: $cc $df $0c
	rst $38                                          ; $48c4: $ff
	rst SubAFromDE                                          ; $48c5: $df
	ldh [$fd], a                                     ; $48c6: $e0 $fd
	inc sp                                           ; $48c8: $33
	nop                                              ; $48c9: $00
	ei                                               ; $48ca: $fb
	rst SubAFromDE                                          ; $48cb: $df
	inc a                                            ; $48cc: $3c
	db $db                                           ; $48cd: $db
	ld [hl+], a                                      ; $48ce: $22
	rst SubAFromDE                                          ; $48cf: $df
	inc a                                            ; $48d0: $3c
	ei                                               ; $48d1: $fb
	db $db                                           ; $48d2: $db
	db $10                                           ; $48d3: $10
	db $dd                                           ; $48d4: $dd
	ld [de], a                                       ; $48d5: $12
	ei                                               ; $48d6: $fb
	reti                                             ; $48d7: $d9


	ld b, h                                          ; $48d8: $44
	rst SubAFromDE                                          ; $48d9: $df
	ld b, a                                          ; $48da: $47
	ei                                               ; $48db: $fb
	rst SubAFromDE                                          ; $48dc: $df
	ld b, b                                          ; $48dd: $40
	db $dd                                           ; $48de: $dd
	ld c, h                                          ; $48df: $4c
	rst SubAFromDE                                          ; $48e0: $df
	ld b, b                                          ; $48e1: $40
	rst SubAFromDE                                          ; $48e2: $df
	ret nz                                           ; $48e3: $c0

	reti                                             ; $48e4: $d9


	ld [hl+], a                                      ; $48e5: $22
	ld h, a                                          ; $48e6: $67
	add $df                                          ; $48e7: $c6 $df
	rla                                              ; $48e9: $17
	rst SubAFromDE                                          ; $48ea: $df
	dec d                                            ; $48eb: $15
	rst SubAFromDE                                          ; $48ec: $df
	dec c                                            ; $48ed: $0d
	db $dd                                           ; $48ee: $dd
	ret z                                            ; $48ef: $c8

	ld e, a                                          ; $48f0: $5f
	add $df                                          ; $48f1: $c6 $df
	add h                                            ; $48f3: $84
	db $dd                                           ; $48f4: $dd
	or h                                             ; $48f5: $b4
	ld h, a                                          ; $48f6: $67
	add $67                                          ; $48f7: $c6 $67
	call nz, $3afb                                   ; $48f9: $c4 $fb $3a
	nop                                              ; $48fc: $00
	ei                                               ; $48fd: $fb
	rst SubAFromDE                                          ; $48fe: $df
	db $10                                           ; $48ff: $10
	rst SubAFromDE                                          ; $4900: $df
	rra                                              ; $4901: $1f

jr_011_4902:
	db $dd                                           ; $4902: $dd
	db $10                                           ; $4903: $10
	rst SubAFromDE                                          ; $4904: $df
	jr nz, jr_011_4902                               ; $4905: $20 $fb

	rst SubAFromDE                                          ; $4907: $df
	rra                                              ; $4908: $1f
	rst SubAFromDE                                          ; $4909: $df
	add b                                            ; $490a: $80
	rst SubAFromDE                                          ; $490b: $df
	cp a                                             ; $490c: $bf
	db $dd                                           ; $490d: $dd
	add b                                            ; $490e: $80
	db $fd                                           ; $490f: $fd
	db $dd                                           ; $4910: $dd
	ld bc, $5fff                                     ; $4911: $01 $ff $5f
	ldh a, [$dd]                                     ; $4914: $f0 $dd
	ld b, b                                          ; $4916: $40
	rst SubAFromDE                                          ; $4917: $df
	inc c                                            ; $4918: $0c
	rst SubAFromDE                                          ; $4919: $df
	adc h                                            ; $491a: $8c
	ld d, a                                          ; $491b: $57
	ldh [$df], a                                     ; $491c: $e0 $df
	ld c, $fb                                        ; $491e: $0e $fb
	db $dd                                           ; $4920: $dd
	add b                                            ; $4921: $80
	rst SubAFromDE                                          ; $4922: $df
	ld bc, $02df                                     ; $4923: $01 $df $02
	rst SubAFromDE                                          ; $4926: $df
	inc e                                            ; $4927: $1c
	ei                                               ; $4928: $fb

jr_011_4929:
	db $dd                                           ; $4929: $dd
	add c                                            ; $492a: $81
	rst SubAFromDE                                          ; $492b: $df
	ld [bc], a                                       ; $492c: $02
	rst SubAFromDE                                          ; $492d: $df
	inc b                                            ; $492e: $04
	rst SubAFromDE                                          ; $492f: $df
	jr jr_011_4929                                   ; $4930: $18 $f7

	db $dd                                           ; $4932: $dd
	inc c                                            ; $4933: $0c
	ld sp, hl                                        ; $4934: $f9
	ld [hl+], a                                      ; $4935: $22
	nop                                              ; $4936: $00
	ld a, [$1e96]                                    ; $4937: $fa $96 $1e
	nop                                              ; $493a: $00
	ccf                                              ; $493b: $3f
	nop                                              ; $493c: $00
	inc sp                                           ; $493d: $33
	nop                                              ; $493e: $00
	ld sp, $0100                                     ; $493f: $31 $00 $01
	ld a, [$7896]                                    ; $4942: $fa $96 $78
	nop                                              ; $4945: $00
	db $fc                                           ; $4946: $fc
	nop                                              ; $4947: $00
	call z, $8c00                                    ; $4948: $cc $00 $8c
	nop                                              ; $494b: $00
	add b                                            ; $494c: $80
	ld a, e                                          ; $494d: $7b
	xor $5f                                          ; $494e: $ee $5f
	cp $fd                                           ; $4950: $fe $fd
	ld a, a                                          ; $4952: $7f
	xor $5f                                          ; $4953: $ee $5f
	cp $fe                                           ; $4955: $fe $fe
	inc h                                            ; $4957: $24
	nop                                              ; $4958: $00
	or c                                             ; $4959: $b1
	nop                                              ; $495a: $00
	nop                                              ; $495b: $00
	jr jr_011_497a                                   ; $495c: $18 $1c

	rrca                                             ; $495e: $0f
	rlca                                             ; $495f: $07
	rrca                                             ; $4960: $0f
	inc e                                            ; $4961: $1c
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00

jr_011_4964:
	jr jr_011_499e                                   ; $4964: $18 $38

	ldh a, [$e0]                                     ; $4966: $f0 $e0
	ldh a, [$38]                                     ; $4968: $f0 $38
	or c                                             ; $496a: $b1
	jr jr_011_4985                                   ; $496b: $18 $18

	jr @+$1e                                         ; $496d: $18 $1c

	rrca                                             ; $496f: $0f
	rlca                                             ; $4970: $07
	nop                                              ; $4971: $00
	nop                                              ; $4972: $00
	jr jr_011_498d                                   ; $4973: $18 $18

	jr jr_011_49af                                   ; $4975: $18 $38

	ldh a, [$e0]                                     ; $4977: $f0 $e0
	nop                                              ; $4979: $00

jr_011_497a:
	nop                                              ; $497a: $00
	inc h                                            ; $497b: $24
	nop                                              ; $497c: $00
	or c                                             ; $497d: $b1
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	ccf                                              ; $4980: $3f
	ccf                                              ; $4981: $3f
	inc c                                            ; $4982: $0c
	ld b, $06                                        ; $4983: $06 $06

jr_011_4985:
	ld b, $00                                        ; $4985: $06 $00
	nop                                              ; $4987: $00
	db $fc                                           ; $4988: $fc
	db $fc                                           ; $4989: $fc
	jr nc, jr_011_49ec                               ; $498a: $30 $60

	ld h, b                                          ; $498c: $60

jr_011_498d:
	ld h, b                                          ; $498d: $60
	or c                                             ; $498e: $b1
	ld b, $06                                        ; $498f: $06 $06
	ld b, $0c                                        ; $4991: $06 $0c
	ccf                                              ; $4993: $3f
	ccf                                              ; $4994: $3f
	nop                                              ; $4995: $00
	nop                                              ; $4996: $00
	ld h, b                                          ; $4997: $60

jr_011_4998:
	ld h, b                                          ; $4998: $60
	ld h, b                                          ; $4999: $60
	jr nc, jr_011_4998                               ; $499a: $30 $fc

	db $fc                                           ; $499c: $fc
	nop                                              ; $499d: $00

jr_011_499e:
	nop                                              ; $499e: $00
	inc h                                            ; $499f: $24
	nop                                              ; $49a0: $00
	or c                                             ; $49a1: $b1
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	rlca                                             ; $49a4: $07
	rra                                              ; $49a5: $1f
	inc e                                            ; $49a6: $1c
	ld a, $36                                        ; $49a7: $3e $36
	ld a, $00                                        ; $49a9: $3e $00
	nop                                              ; $49ab: $00
	ldh [$f8], a                                     ; $49ac: $e0 $f8
	inc a                                            ; $49ae: $3c

jr_011_49af:
	inc c                                            ; $49af: $0c
	nop                                              ; $49b0: $00
	jr c, jr_011_4964                                ; $49b1: $38 $b1

	inc e                                            ; $49b3: $1c
	nop                                              ; $49b4: $00
	jr nc, jr_011_49f3                               ; $49b5: $30 $3c

	rra                                              ; $49b7: $1f

jr_011_49b8:
	rlca                                             ; $49b8: $07
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	ld a, h                                          ; $49bb: $7c
	ld l, h                                          ; $49bc: $6c

Call_011_49bd:
	ld a, h                                          ; $49bd: $7c
	jr c, jr_011_49b8                                ; $49be: $38 $f8

	ldh [rP1], a                                     ; $49c0: $e0 $00
	nop                                              ; $49c2: $00
	inc h                                            ; $49c3: $24
	nop                                              ; $49c4: $00
	ld a, [$0796]                                    ; $49c5: $fa $96 $07
	nop                                              ; $49c8: $00
	rrca                                             ; $49c9: $0f
	nop                                              ; $49ca: $00
	inc c                                            ; $49cb: $0c
	nop                                              ; $49cc: $00
	inc e                                            ; $49cd: $1c
	nop                                              ; $49ce: $00
	ld a, $fa                                        ; $49cf: $3e $fa
	sbc h                                            ; $49d1: $9c
	add b                                            ; $49d2: $80
	nop                                              ; $49d3: $00
	ret nz                                           ; $49d4: $c0

	ld l, e                                          ; $49d5: $6b
	cp $9e                                           ; $49d6: $fe $9e
	ld [hl], $7b                                     ; $49d8: $36 $7b
	db $ec                                           ; $49da: $ec
	ld a, a                                          ; $49db: $7f
	add sp, -$09                                     ; $49dc: $e8 $f7
	ld [hl], a                                       ; $49de: $77
	db $ec                                           ; $49df: $ec
	sbc d                                            ; $49e0: $9a
	call z, $fc00                                    ; $49e1: $cc $00 $fc
	nop                                              ; $49e4: $00
	ld a, b                                          ; $49e5: $78
	ei                                               ; $49e6: $fb
	inc h                                            ; $49e7: $24
	nop                                              ; $49e8: $00
	or c                                             ; $49e9: $b1
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00

jr_011_49ec:
	ld [hl], a                                       ; $49ec: $77
	ld a, a                                          ; $49ed: $7f
	ccf                                              ; $49ee: $3f
	ld [hl], $36                                     ; $49ef: $36 $36
	ld [hl], $00                                     ; $49f1: $36 $00

jr_011_49f3:
	nop                                              ; $49f3: $00
	cp b                                             ; $49f4: $b8
	db $fc                                           ; $49f5: $fc
	db $ec                                           ; $49f6: $ec
	db $ec                                           ; $49f7: $ec
	ld l, h                                          ; $49f8: $6c
	ld a, h                                          ; $49f9: $7c
	or c                                             ; $49fa: $b1
	ld [hl], $36                                     ; $49fb: $36 $36
	ld [hl], $36                                     ; $49fd: $36 $36
	ld [hl], $36                                     ; $49ff: $36 $36
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	jr c, jr_011_4a81                                ; $4a03: $38 $7c

	ld a, h                                          ; $4a05: $7c
	xor $c6                                          ; $4a06: $ee $c6
	add $00                                          ; $4a08: $c6 $00
	nop                                              ; $4a0a: $00
	inc h                                            ; $4a0b: $24
	nop                                              ; $4a0c: $00
	or c                                             ; $4a0d: $b1
	nop                                              ; $4a0e: $00
	nop                                              ; $4a0f: $00
	inc bc                                           ; $4a10: $03
	rlca                                             ; $4a11: $07
	ld c, $0c                                        ; $4a12: $0e $0c
	inc c                                            ; $4a14: $0c
	inc c                                            ; $4a15: $0c
	nop                                              ; $4a16: $00
	nop                                              ; $4a17: $00
	ret nz                                           ; $4a18: $c0

	ldh [rSVBK], a                                   ; $4a19: $e0 $70
	jr nc, @+$32                                     ; $4a1b: $30 $30

	jr nc, @-$4d                                     ; $4a1d: $30 $b1

	inc c                                            ; $4a1f: $0c
	inc a                                            ; $4a20: $3c
	inc a                                            ; $4a21: $3c
	nop                                              ; $4a22: $00
	ccf                                              ; $4a23: $3f
	ccf                                              ; $4a24: $3f
	nop                                              ; $4a25: $00
	nop                                              ; $4a26: $00
	jr nc, @+$3e                                     ; $4a27: $30 $3c

	inc a                                            ; $4a29: $3c
	nop                                              ; $4a2a: $00
	db $fc                                           ; $4a2b: $fc
	db $fc                                           ; $4a2c: $fc
	nop                                              ; $4a2d: $00
	nop                                              ; $4a2e: $00
	inc h                                            ; $4a2f: $24
	nop                                              ; $4a30: $00
	or c                                             ; $4a31: $b1
	nop                                              ; $4a32: $00
	nop                                              ; $4a33: $00
	ld [hl], e                                       ; $4a34: $73
	ld a, a                                          ; $4a35: $7f
	ccf                                              ; $4a36: $3f
	ld [hl], $36                                     ; $4a37: $36 $36
	ld [hl], $00                                     ; $4a39: $36 $00
	nop                                              ; $4a3b: $00
	add b                                            ; $4a3c: $80
	ret nz                                           ; $4a3d: $c0

	ret nz                                           ; $4a3e: $c0

	ret nz                                           ; $4a3f: $c0

	ret nz                                           ; $4a40: $c0

	ret nz                                           ; $4a41: $c0

	or c                                             ; $4a42: $b1
	ld [hl], $36                                     ; $4a43: $36 $36
	ld [hl], $36                                     ; $4a45: $36 $36
	nop                                              ; $4a47: $00
	nop                                              ; $4a48: $00
	nop                                              ; $4a49: $00
	nop                                              ; $4a4a: $00
	call z, $ccde                                    ; $4a4b: $cc $de $cc
	call z, Call_011_78fc                            ; $4a4e: $cc $fc $78
	nop                                              ; $4a51: $00
	nop                                              ; $4a52: $00
	inc h                                            ; $4a53: $24
	nop                                              ; $4a54: $00
	or c                                             ; $4a55: $b1
	nop                                              ; $4a56: $00
	nop                                              ; $4a57: $00
	nop                                              ; $4a58: $00
	nop                                              ; $4a59: $00
	nop                                              ; $4a5a: $00
	nop                                              ; $4a5b: $00
	ld [$001d], sp                                   ; $4a5c: $08 $1d $00
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	ld a, b                                          ; $4a61: $78
	jr c, jr_011_4adc                                ; $4a62: $38 $78

	add sp, -$40                                     ; $4a64: $e8 $c0
	or c                                             ; $4a66: $b1
	rrca                                             ; $4a67: $0f
	rlca                                             ; $4a68: $07
	rrca                                             ; $4a69: $0f
	dec e                                            ; $4a6a: $1d
	jr jr_011_4a6d                                   ; $4a6b: $18 $00

jr_011_4a6d:
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	add b                                            ; $4a6f: $80
	nop                                              ; $4a70: $00
	add b                                            ; $4a71: $80
	ret nz                                           ; $4a72: $c0

	add b                                            ; $4a73: $80
	nop                                              ; $4a74: $00
	nop                                              ; $4a75: $00
	nop                                              ; $4a76: $00
	inc h                                            ; $4a77: $24
	nop                                              ; $4a78: $00
	or c                                             ; $4a79: $b1
	nop                                              ; $4a7a: $00
	nop                                              ; $4a7b: $00
	dec sp                                           ; $4a7c: $3b
	dec sp                                           ; $4a7d: $3b
	dec de                                           ; $4a7e: $1b
	dec de                                           ; $4a7f: $1b
	dec de                                           ; $4a80: $1b

jr_011_4a81:
	dec de                                           ; $4a81: $1b
	nop                                              ; $4a82: $00
	nop                                              ; $4a83: $00
	call c, $fcf4                                    ; $4a84: $dc $f4 $fc
	ld [hl], b                                       ; $4a87: $70
	jr c, jr_011_4ac2                                ; $4a88: $38 $38

	or c                                             ; $4a8a: $b1
	rra                                              ; $4a8b: $1f
	rra                                              ; $4a8c: $1f
	ld c, $0e                                        ; $4a8d: $0e $0e
	ld c, $0e                                        ; $4a8f: $0e $0e
	nop                                              ; $4a91: $00
	nop                                              ; $4a92: $00
	inc e                                            ; $4a93: $1c
	inc e                                            ; $4a94: $1c
	jr jr_011_4acf                                   ; $4a95: $18 $38

	ldh a, [$e0]                                     ; $4a97: $f0 $e0
	nop                                              ; $4a99: $00
	nop                                              ; $4a9a: $00
	dec de                                           ; $4a9b: $1b
	nop                                              ; $4a9c: $00
	ld a, [$0896]                                    ; $4a9d: $fa $96 $08
	nop                                              ; $4aa0: $00
	dec e                                            ; $4aa1: $1d
	nop                                              ; $4aa2: $00
	ccf                                              ; $4aa3: $3f
	nop                                              ; $4aa4: $00
	scf                                              ; $4aa5: $37
	nop                                              ; $4aa6: $00
	ld [hl+], a                                      ; $4aa7: $22
	ld a, [$8c96]                                    ; $4aa8: $fa $96 $8c
	nop                                              ; $4aab: $00
	call c, $f800                                    ; $4aac: $dc $00 $f8
	nop                                              ; $4aaf: $00
	ld [hl], b                                       ; $4ab0: $70
	nop                                              ; $4ab1: $00
	jr nz, jr_011_4acf                               ; $4ab2: $20 $1b

	and $fc                                          ; $4ab4: $e6 $fc
	inc h                                            ; $4ab6: $24
	nop                                              ; $4ab7: $00
	or c                                             ; $4ab8: $b1
	nop                                              ; $4ab9: $00
	nop                                              ; $4aba: $00
	jr jr_011_4ad9                                   ; $4abb: $18 $1c

	inc c                                            ; $4abd: $0c
	ld b, $06                                        ; $4abe: $06 $06
	rra                                              ; $4ac0: $1f
	nop                                              ; $4ac1: $00

jr_011_4ac2:
	nop                                              ; $4ac2: $00
	jr jr_011_4afd                                   ; $4ac3: $18 $38

	jr nc, jr_011_4b27                               ; $4ac5: $30 $60

	ld h, b                                          ; $4ac7: $60
	ld hl, sp-$4f                                    ; $4ac8: $f8 $b1
	rra                                              ; $4aca: $1f
	ld b, $06                                        ; $4acb: $06 $06
	inc c                                            ; $4acd: $0c
	inc e                                            ; $4ace: $1c

jr_011_4acf:
	jr jr_011_4ad1                                   ; $4acf: $18 $00

jr_011_4ad1:
	nop                                              ; $4ad1: $00
	ld hl, sp+$60                                    ; $4ad2: $f8 $60
	ld h, b                                          ; $4ad4: $60
	jr nc, @+$3a                                     ; $4ad5: $30 $38

	jr jr_011_4ad9                                   ; $4ad7: $18 $00

jr_011_4ad9:
	nop                                              ; $4ad9: $00
	ld [hl-], a                                      ; $4ada: $32
	ld [bc], a                                       ; $4adb: $02

jr_011_4adc:
	add b                                            ; $4adc: $80
	rrca                                             ; $4add: $0f
	nop                                              ; $4ade: $00
	rra                                              ; $4adf: $1f
	ld bc, $231e                                     ; $4ae0: $01 $1e $23
	dec a                                            ; $4ae3: $3d
	ld b, [hl]                                       ; $4ae4: $46
	cp e                                             ; $4ae5: $bb
	ld c, h                                          ; $4ae6: $4c
	or $59                                           ; $4ae7: $f6 $59

jr_011_4ae9:
	ld l, a                                          ; $4ae9: $6f
	or b                                             ; $4aea: $b0
	db $dd                                           ; $4aeb: $dd
	ldh [c], a                                       ; $4aec: $e2
	rst SubAFromDE                                          ; $4aed: $df
	ldh [$7d], a                                     ; $4aee: $e0 $7d
	add d                                            ; $4af0: $82
	rst $38                                          ; $4af1: $ff
	nop                                              ; $4af2: $00
	xor a                                            ; $4af3: $af
	ld d, b                                          ; $4af4: $50
	ld a, e                                          ; $4af5: $7b
	add h                                            ; $4af6: $84
	rst SubAFromDE                                          ; $4af7: $df
	jr nz, jr_011_4ae9                               ; $4af8: $20 $ef

	nop                                              ; $4afa: $00
	sub e                                            ; $4afb: $93
	add b                                            ; $4afc: $80

jr_011_4afd:
	ld c, b                                          ; $4afd: $48
	db $ed                                           ; $4afe: $ed
	ld [bc], a                                       ; $4aff: $02
	call nc, $d623                                   ; $4b00: $d4 $23 $d6
	ld hl, $11ea                                     ; $4b03: $21 $ea $11
	xor e                                            ; $4b06: $ab
	db $10                                           ; $4b07: $10
	inc hl                                           ; $4b08: $23
	sbc b                                            ; $4b09: $98
	ld bc, $4598                                     ; $4b0a: $01 $98 $45
	sbc b                                            ; $4b0d: $98
	jp c, $ed24                                      ; $4b0e: $da $24 $ed

	ld [de], a                                       ; $4b11: $12
	and [hl]                                         ; $4b12: $a6
	add hl, de                                       ; $4b13: $19
	or [hl]                                          ; $4b14: $b6
	add hl, bc                                       ; $4b15: $09
	ld d, e                                          ; $4b16: $53
	adc h                                            ; $4b17: $8c
	ld l, e                                          ; $4b18: $6b
	add h                                            ; $4b19: $84
	add hl, hl                                       ; $4b1a: $29
	add $80                                          ; $4b1b: $c6 $80
	ld e, e                                          ; $4b1d: $5b
	and $29                                          ; $4b1e: $e6 $29
	ld b, $54                                        ; $4b20: $06 $54
	inc hl                                           ; $4b22: $23
	xor [hl]                                         ; $4b23: $ae
	ld de, $9962                                     ; $4b24: $11 $62 $99

jr_011_4b27:
	scf                                              ; $4b27: $37
	ret z                                            ; $4b28: $c8

	inc sp                                           ; $4b29: $33
	call z, $ee11                                    ; $4b2a: $cc $11 $ee
	dec d                                            ; $4b2d: $15
	xor $9b                                          ; $4b2e: $ee $9b
	ld h, a                                          ; $4b30: $67
	call $6733                                       ; $4b31: $cd $33 $67
	sbc c                                            ; $4b34: $99
	ld [hl+], a                                      ; $4b35: $22
	db $dd                                           ; $4b36: $dd
	inc [hl]                                         ; $4b37: $34
	rst GetHLinHL                                          ; $4b38: $cf
	db $10                                           ; $4b39: $10
	rst AddAOntoHL                                          ; $4b3a: $ef
	ld a, [de]                                       ; $4b3b: $1a
	add b                                            ; $4b3c: $80
	rst SubAFromBC                                          ; $4b3d: $e7
	dec bc                                           ; $4b3e: $0b

Call_011_4b3f:
	rst FarCall                                          ; $4b3f: $f7
	xor a                                            ; $4b40: $af
	ret nz                                           ; $4b41: $c0

	sbc c                                            ; $4b42: $99
	call nz, $803d                                   ; $4b43: $c4 $3d $80
	ld hl, $2188                                     ; $4b46: $21 $88 $21
	ld [$0810], sp                                   ; $4b49: $08 $10 $08
	stop                                             ; $4b4c: $10 $00
	nop                                              ; $4b4e: $00
	db $10                                           ; $4b4f: $10
	sub e                                            ; $4b50: $93
	ld c, b                                          ; $4b51: $48
	inc sp                                           ; $4b52: $33
	adc b                                            ; $4b53: $88
	ld sp, $3088                                     ; $4b54: $31 $88 $30
	ld [$1820], sp                                   ; $4b57: $08 $20 $18
	ld [hl+], a                                      ; $4b5a: $22
	add hl, de                                       ; $4b5b: $19
	ld [hl], a                                       ; $4b5c: $77
	cp $95                                           ; $4b5d: $fe $95
	ld c, c                                          ; $4b5f: $49
	sbc h                                            ; $4b60: $9c
	xor b                                            ; $4b61: $a8
	db $dd                                           ; $4b62: $dd
	and h                                            ; $4b63: $a4
	db $dd                                           ; $4b64: $dd
	ld b, $fd                                        ; $4b65: $06 $fd
	ld b, h                                          ; $4b67: $44
	rst $38                                          ; $4b68: $ff
	ld [hl], a                                       ; $4b69: $77
	cp $8a                                           ; $4b6a: $fe $8a
	db $e4                                           ; $4b6c: $e4
	rst $38                                          ; $4b6d: $ff
	ld e, e                                          ; $4b6e: $5b
	and $48                                          ; $4b6f: $e6 $48
	rst FarCall                                          ; $4b71: $f7
	ld l, c                                          ; $4b72: $69
	rst FarCall                                          ; $4b73: $f7
	ld h, c                                          ; $4b74: $61
	rst $38                                          ; $4b75: $ff
	ld h, c                                          ; $4b76: $61
	rst $38                                          ; $4b77: $ff
	ld [hl], c                                       ; $4b78: $71
	rst $38                                          ; $4b79: $ff
	ld [hl], d                                       ; $4b7a: $72
	rst $38                                          ; $4b7b: $ff
	ld d, e                                          ; $4b7c: $53
	cp $04                                           ; $4b7d: $fe $04
	rst $38                                          ; $4b7f: $ff
	ld h, $7b                                        ; $4b80: $26 $7b
	cp $90                                           ; $4b82: $fe $90
	dec [hl]                                         ; $4b84: $35
	rst $38                                          ; $4b85: $ff
	scf                                              ; $4b86: $37
	db $fd                                           ; $4b87: $fd
	cp [hl]                                          ; $4b88: $be
	db $fd                                           ; $4b89: $fd
	xor [hl]                                         ; $4b8a: $ae
	db $fd                                           ; $4b8b: $fd
	cp a                                             ; $4b8c: $bf
	db $ec                                           ; $4b8d: $ec
	dec bc                                           ; $4b8e: $0b
	rst FarCall                                          ; $4b8f: $f7
	inc bc                                           ; $4b90: $03
	rst $38                                          ; $4b91: $ff
	inc de                                           ; $4b92: $13
	ld [hl], e                                       ; $4b93: $73
	cp $9c                                           ; $4b94: $fe $9c
	sub e                                            ; $4b96: $93
	rst $38                                          ; $4b97: $ff
	sub a                                            ; $4b98: $97
	ld a, e                                          ; $4b99: $7b

Call_011_4b9a:
	cp $80                                           ; $4b9a: $fe $80
	jp nz, $e611                                     ; $4b9c: $c2 $11 $e6

	ld de, $31c6                                     ; $4b9f: $11 $c6 $31
	call z, $cc33                                    ; $4ba2: $cc $33 $cc
	inc sp                                           ; $4ba5: $33
	adc b                                            ; $4ba6: $88
	ld [hl], a                                       ; $4ba7: $77
	adc d                                            ; $4ba8: $8a
	ld [hl], a                                       ; $4ba9: $77
	ld [bc], a                                       ; $4baa: $02
	rst $38                                          ; $4bab: $ff
	ld l, h                                          ; $4bac: $6c
	dec de                                           ; $4bad: $1b
	ld c, h                                          ; $4bae: $4c
	dec sp                                           ; $4baf: $3b
	ld c, h                                          ; $4bb0: $4c
	dec sp                                           ; $4bb1: $3b
	ld c, b                                          ; $4bb2: $48
	ccf                                              ; $4bb3: $3f
	ret c                                            ; $4bb4: $d8

	ccf                                              ; $4bb5: $3f
	sbc c                                            ; $4bb6: $99
	ld a, a                                          ; $4bb7: $7f
	sbc c                                            ; $4bb8: $99
	ld a, a                                          ; $4bb9: $7f
	dec hl                                           ; $4bba: $2b
	sbc l                                            ; $4bbb: $9d
	rst $38                                          ; $4bbc: $ff
	and $7b                                          ; $4bbd: $e6 $7b
	cp $80                                           ; $4bbf: $fe $80
	xor [hl]                                         ; $4bc1: $ae
	rst $38                                          ; $4bc2: $ff
	ld [$febf], a                                    ; $4bc3: $ea $bf $fe
	sbc e                                            ; $4bc6: $9b
	rra                                              ; $4bc7: $1f
	ei                                               ; $4bc8: $fb
	rst FarCall                                          ; $4bc9: $f7
	ei                                               ; $4bca: $fb
	cp $13                                           ; $4bcb: $fe $13
	ld l, d                                          ; $4bcd: $6a
	rst SubAFromDE                                          ; $4bce: $df
	ld a, e                                          ; $4bcf: $7b
	rst GetHLinHL                                          ; $4bd0: $cf
	cp a                                             ; $4bd1: $bf
	call z, $88ff                                    ; $4bd2: $cc $ff $88
	rst $38                                          ; $4bd5: $ff
	adc b                                            ; $4bd6: $88
	ld a, a                                          ; $4bd7: $7f
	add c                                            ; $4bd8: $81
	rst $38                                          ; $4bd9: $ff
	inc bc                                           ; $4bda: $03
	rst $38                                          ; $4bdb: $ff
	ld bc, $fc4f                                     ; $4bdc: $01 $4f $fc
	rst $38                                          ; $4bdf: $ff
	add b                                            ; $4be0: $80
	ld hl, sp-$01                                    ; $4be1: $f8 $ff
	ld c, b                                          ; $4be3: $48
	cp a                                             ; $4be4: $bf
	ld [hl], b                                       ; $4be5: $70
	ei                                               ; $4be6: $fb
	db $fc                                           ; $4be7: $fc
	sub a                                            ; $4be8: $97
	sub a                                            ; $4be9: $97
	dec sp                                           ; $4bea: $3b
	ld a, [hl-]                                      ; $4beb: $3a
	ld a, e                                          ; $4bec: $7b
	ld a, b                                          ; $4bed: $78
	or a                                             ; $4bee: $b7
	rst $38                                          ; $4bef: $ff
	cp l                                             ; $4bf0: $bd
	rst $38                                          ; $4bf1: $ff
	db $fd                                           ; $4bf2: $fd
	rst $38                                          ; $4bf3: $ff
	ld [hl], h                                       ; $4bf4: $74
	rst $38                                          ; $4bf5: $ff
	ld [hl], c                                       ; $4bf6: $71
	cp $51                                           ; $4bf7: $fe $51
	cp $c8                                           ; $4bf9: $fe $c8
	ld a, a                                          ; $4bfb: $7f
	ret z                                            ; $4bfc: $c8

	ld a, a                                          ; $4bfd: $7f
	ld [de], a                                       ; $4bfe: $12
	rst $38                                          ; $4bff: $ff
	sbc h                                            ; $4c00: $9c
	sub d                                            ; $4c01: $92
	rst $38                                          ; $4c02: $ff
	call nc, $f07b                                   ; $4c03: $d4 $7b $f0
	add b                                            ; $4c06: $80
	ld e, l                                          ; $4c07: $5d
	rst $38                                          ; $4c08: $ff
	ld e, d                                          ; $4c09: $5a
	rst $38                                          ; $4c0a: $ff
	ld e, a                                          ; $4c0b: $5f
	cp $45                                           ; $4c0c: $fe $45
	rst $38                                          ; $4c0e: $ff
	ld a, [hl-]                                      ; $4c0f: $3a
	rst AddAOntoHL                                          ; $4c10: $ef
	ld e, a                                          ; $4c11: $5f
	rst AddAOntoHL                                          ; $4c12: $ef
	ld a, [hl]                                       ; $4c13: $7e
	adc $ac                                          ; $4c14: $ce $ac
	call c, $9c7c                                    ; $4c16: $dc $7c $9c
	sbc h                                            ; $4c19: $9c
	dec a                                            ; $4c1a: $3d
	ld a, [hl+]                                      ; $4c1b: $2a
	ld a, e                                          ; $4c1c: $7b
	ld bc, $ff01                                     ; $4c1d: $01 $01 $ff
	ld [bc], a                                       ; $4c20: $02
	rst $38                                          ; $4c21: $ff
	ldh [$cf], a                                     ; $4c22: $e0 $cf
	ret nc                                           ; $4c24: $d0

	ld e, [hl]                                       ; $4c25: $5e
	sub e                                            ; $4c26: $93
	ld [hl], b                                       ; $4c27: $70
	db $ec                                           ; $4c28: $ec
	ldh [$e8], a                                     ; $4c29: $e0 $e8
	ldh [rAUD4LEN], a                                ; $4c2b: $e0 $20
	ldh [rP1], a                                     ; $4c2d: $e0 $00
	and b                                            ; $4c2f: $a0
	cp $01                                           ; $4c30: $fe $01
	adc h                                            ; $4c32: $8c
	db $fc                                           ; $4c33: $fc
	adc h                                            ; $4c34: $8c
	inc b                                            ; $4c35: $04
	nop                                              ; $4c36: $00
	ld b, $00                                        ; $4c37: $06 $00
	rlca                                             ; $4c39: $07
	ld [bc], a                                       ; $4c3a: $02
	dec c                                            ; $4c3b: $0d

Jump_011_4c3c:
	inc bc                                           ; $4c3c: $03
	cp e                                             ; $4c3d: $bb
	ld hl, sp-$75                                    ; $4c3e: $f8 $8b
	ld hl, sp+$43                                    ; $4c40: $f8 $43
	ld l, h                                          ; $4c42: $6c
	add a                                            ; $4c43: $87
	ld [hl], b                                       ; $4c44: $70
	inc bc                                           ; $4c45: $03
	nop                                              ; $4c46: $00
	rlca                                             ; $4c47: $07
	ld a, e                                          ; $4c48: $7b
	cp $9a                                           ; $4c49: $fe $9a
	add [hl]                                         ; $4c4b: $86
	ld bc, $7fc8                                     ; $4c4c: $01 $c8 $7f
	call nz, $fe7b                                   ; $4c4f: $c4 $7b $fe
	sbc b                                            ; $4c52: $98
	ld h, h                                          ; $4c53: $64
	rst $38                                          ; $4c54: $ff
	ld h, d                                          ; $4c55: $62
	rst $38                                          ; $4c56: $ff
	ldh [c], a                                       ; $4c57: $e2
	rst $38                                          ; $4c58: $ff
	jp nc, $a47b                                     ; $4c59: $d2 $7b $a4

	ld a, a                                          ; $4c5c: $7f
	xor [hl]                                         ; $4c5d: $ae
	add b                                            ; $4c5e: $80
	ld c, e                                          ; $4c5f: $4b
	rst FarCall                                          ; $4c60: $f7
	ld l, b                                          ; $4c61: $68
	rst FarCall                                          ; $4c62: $f7
	xor c                                            ; $4c63: $a9
	or $a5                                           ; $4c64: $f6 $a5
	ld a, [$ebb4]                                    ; $4c66: $fa $b4 $eb
	or h                                             ; $4c69: $b4
	db $eb                                           ; $4c6a: $eb
	or d                                             ; $4c6b: $b2
	db $ed                                           ; $4c6c: $ed
	nop                                              ; $4c6d: $00
	add c                                            ; $4c6e: $81
	add [hl]                                         ; $4c6f: $86
	add b                                            ; $4c70: $80
	ret nz                                           ; $4c71: $c0

	ret nz                                           ; $4c72: $c0

	ld h, b                                          ; $4c73: $60
	ldh [rSVBK], a                                   ; $4c74: $e0 $70
	ldh a, [$a8]                                     ; $4c76: $f0 $a8
	ld a, b                                          ; $4c78: $78
	and [hl]                                         ; $4c79: $a6
	ld a, h                                          ; $4c7a: $7c
	and [hl]                                         ; $4c7b: $a6
	ld a, a                                          ; $4c7c: $7f
	ld hl, sp-$62                                    ; $4c7d: $f8 $9e
	ret nz                                           ; $4c7f: $c0

	push af                                          ; $4c80: $f5
	sbc [hl]                                         ; $4c81: $9e
	add b                                            ; $4c82: $80
	ld a, e                                          ; $4c83: $7b
	xor h                                            ; $4c84: $ac
	db $fd                                           ; $4c85: $fd
	sbc d                                            ; $4c86: $9a
	add hl, de                                       ; $4c87: $19
	inc c                                            ; $4c88: $0c
	ld bc, $0300                                     ; $4c89: $01 $00 $03
	db $fc                                           ; $4c8c: $fc
	adc l                                            ; $4c8d: $8d
	ld b, $01                                        ; $4c8e: $06 $01
	ld c, $01                                        ; $4c90: $0e $01
	ld c, l                                          ; $4c92: $4d
	add e                                            ; $4c93: $83
	dec c                                            ; $4c94: $0d
	inc bc                                           ; $4c95: $03
	adc e                                            ; $4c96: $8b
	rlca                                             ; $4c97: $07
	ld e, $07                                        ; $4c98: $1e $07
	ld d, $0f                                        ; $4c9a: $16 $0f
	ld a, $0f                                        ; $4c9c: $3e $0f
	sub c                                            ; $4c9e: $91
	rst $38                                          ; $4c9f: $ff
	ld [hl], a                                       ; $4ca0: $77
	cp $80                                           ; $4ca1: $fe $80
	adc c                                            ; $4ca3: $89
	rst $38                                          ; $4ca4: $ff
	adc e                                            ; $4ca5: $8b
	db $fd                                           ; $4ca6: $fd
	adc e                                            ; $4ca7: $8b
	db $fd                                           ; $4ca8: $fd
	sub e                                            ; $4ca9: $93
	db $ed                                           ; $4caa: $ed
	db $d3                                           ; $4cab: $d3
	db $ed                                           ; $4cac: $ed
	ld e, d                                          ; $4cad: $5a
	push af                                          ; $4cae: $f5
	ld e, e                                          ; $4caf: $5b
	db $f4                                           ; $4cb0: $f4
	ld e, c                                          ; $4cb1: $59
	or $59                                           ; $4cb2: $f6 $59
	or $6c                                           ; $4cb4: $f6 $6c
	ld a, [$fa2c]                                    ; $4cb6: $fa $2c $fa
	cpl                                              ; $4cb9: $2f
	ld hl, sp+$2d                                    ; $4cba: $f8 $2d
	ld hl, sp+$53                                    ; $4cbc: $f8 $53
	cp a                                             ; $4cbe: $bf
	ld d, e                                          ; $4cbf: $53
	cp a                                             ; $4cc0: $bf
	ld l, e                                          ; $4cc1: $6b
	add h                                            ; $4cc2: $84
	sbc a                                            ; $4cc3: $9f
	add hl, hl                                       ; $4cc4: $29
	rst SubAFromDE                                          ; $4cc5: $df
	sub c                                            ; $4cc6: $91
	ld c, a                                          ; $4cc7: $4f
	sub l                                            ; $4cc8: $95
	ld c, a                                          ; $4cc9: $4f
	inc c                                            ; $4cca: $0c
	rlca                                             ; $4ccb: $07
	ld c, $07                                        ; $4ccc: $0e $07
	ldh [$c0], a                                     ; $4cce: $e0 $c0
	db $f4                                           ; $4cd0: $f4
	ld hl, sp+$7f                                    ; $4cd1: $f8 $7f
	rst $38                                          ; $4cd3: $ff
	ld h, b                                          ; $4cd4: $60
	rst $38                                          ; $4cd5: $ff
	ld h, a                                          ; $4cd6: $67
	ld hl, sp+$6f                                    ; $4cd7: $f8 $6f
	ldh a, [$7f]                                     ; $4cd9: $f0 $7f
	ldh [$6f], a                                     ; $4cdb: $e0 $6f
	ldh a, [$fd]                                     ; $4cdd: $f0 $fd
	adc h                                            ; $4cdf: $8c
	ld b, b                                          ; $4ce0: $40
	add b                                            ; $4ce1: $80
	ld a, a                                          ; $4ce2: $7f
	rst $38                                          ; $4ce3: $ff
	add b                                            ; $4ce4: $80
	ld a, a                                          ; $4ce5: $7f
	ldh a, [rIF]                                     ; $4ce6: $f0 $0f
	add h                                            ; $4ce8: $84
	inc bc                                           ; $4ce9: $03
	ld bc, $3c00                                     ; $4cea: $01 $00 $3c
	rra                                              ; $4ced: $1f
	ld [hl], h                                       ; $4cee: $74
	ccf                                              ; $4cef: $3f
	db $e4                                           ; $4cf0: $e4
	ld a, a                                          ; $4cf1: $7f
	inc h                                            ; $4cf2: $24
	ld a, d                                          ; $4cf3: $7a
	ld a, h                                          ; $4cf4: $7c
	sbc h                                            ; $4cf5: $9c
	ld l, $ff                                        ; $4cf6: $2e $ff
	ccf                                              ; $4cf8: $3f
	ld a, e                                          ; $4cf9: $7b
	cp $8f                                           ; $4cfa: $fe $8f
	jp z, $cae5                                      ; $4cfc: $ca $e5 $ca

	push hl                                          ; $4cff: $e5
	sbc $e1                                          ; $4d00: $de $e1
	or [hl]                                          ; $4d02: $b6
	pop hl                                           ; $4d03: $e1
	and [hl]                                         ; $4d04: $a6
	ldh a, [$a4]                                     ; $4d05: $f0 $a4
	ldh a, [$a8]                                     ; $4d07: $f0 $a8
	ldh a, [$80]                                     ; $4d09: $f0 $80
	ldh a, [$3c]                                     ; $4d0b: $f0 $3c
	ld [bc], a                                       ; $4d0d: $02
	sbc [hl]                                         ; $4d0e: $9e
	dec c                                            ; $4d0f: $0d
	cp a                                             ; $4d10: $bf
	dec de                                           ; $4d11: $1b
	rla                                              ; $4d12: $17
	add b                                            ; $4d13: $80
	jr nz, jr_011_4d44                               ; $4d14: $20 $2e

	ld b, c                                          ; $4d16: $41
	adc l                                            ; $4d17: $8d
	add e                                            ; $4d18: $83
	ld e, d                                          ; $4d19: $5a
	ld b, $94                                        ; $4d1a: $06 $94
	inc c                                            ; $4d1c: $0c
	jr z, jr_011_4d38                                ; $4d1d: $28 $19

	di                                               ; $4d1f: $f3
	nop                                              ; $4d20: $00
	and $01                                          ; $4d21: $e6 $01
	adc l                                            ; $4d23: $8d
	ld b, e                                          ; $4d24: $43
	sbc e                                            ; $4d25: $9b
	add [hl]                                         ; $4d26: $86
	ld b, $0c                                        ; $4d27: $06 $0c
	dec c                                            ; $4d29: $0d
	jr jr_011_4d3f                                   ; $4d2a: $18 $13

	add hl, sp                                       ; $4d2c: $39
	add hl, de                                       ; $4d2d: $19
	ld [hl], e                                       ; $4d2e: $73
	cp e                                             ; $4d2f: $bb
	ld b, h                                          ; $4d30: $44
	rst SubAFromBC                                          ; $4d31: $e7
	sbc b                                            ; $4d32: $98
	add b                                            ; $4d33: $80
	sbc a                                            ; $4d34: $9f
	jr nc, jr_011_4d64                               ; $4d35: $30 $2d

	ld [hl], d                                       ; $4d37: $72

jr_011_4d38:
	ld d, h                                          ; $4d38: $54
	jp nz, $84b2                                     ; $4d39: $c2 $b2 $84

	ld [hl-], a                                      ; $4d3c: $32
	add h                                            ; $4d3d: $84
	ld l, b                                          ; $4d3e: $68

jr_011_4d3f:
	inc b                                            ; $4d3f: $04
	cp $01                                           ; $4d40: $fe $01
	db $dd                                           ; $4d42: $dd
	inc bc                                           ; $4d43: $03

jr_011_4d44:
	sbc d                                            ; $4d44: $9a
	ld b, a                                          ; $4d45: $47
	sbc d                                            ; $4d46: $9a
	ld b, h                                          ; $4d47: $44
	sbc h                                            ; $4d48: $9c
	ld b, b                                          ; $4d49: $40
	sub l                                            ; $4d4a: $95
	ld c, d                                          ; $4d4b: $4a
	dec c                                            ; $4d4c: $0d
	reti                                             ; $4d4d: $d9


	ld c, b                                          ; $4d4e: $48
	call $c03f                                       ; $4d4f: $cd $3f $c0
	db $dd                                           ; $4d52: $dd
	add b                                            ; $4d53: $80
	ldh [c], a                                       ; $4d54: $e2
	ld l, $f1                                        ; $4d55: $2e $f1
	ld d, a                                          ; $4d57: $57
	jr c, jr_011_4d71                                ; $4d58: $38 $17

	jr c, jr_011_4d87                                ; $4d5a: $38 $2b

	inc e                                            ; $4d5c: $1c
	adc e                                            ; $4d5d: $8b
	inc e                                            ; $4d5e: $1c
	push de                                          ; $4d5f: $d5
	adc [hl]                                         ; $4d60: $8e
	ld [hl], l                                       ; $4d61: $75
	adc [hl]                                         ; $4d62: $8e
	cp d                                             ; $4d63: $ba

jr_011_4d64:
	ld b, a                                          ; $4d64: $47
	call Call_011_6533                               ; $4d65: $cd $33 $65
	sbc e                                            ; $4d68: $9b
	ld d, [hl]                                       ; $4d69: $56
	db $ed                                           ; $4d6a: $ed
	and d                                            ; $4d6b: $a2
	ld a, a                                          ; $4d6c: $7f

jr_011_4d6d:
	sub c                                            ; $4d6d: $91
	ld a, a                                          ; $4d6e: $7f
	adc c                                            ; $4d6f: $89
	ld a, a                                          ; $4d70: $7f

jr_011_4d71:
	db $10                                           ; $4d71: $10
	ld [hl], e                                       ; $4d72: $73
	add b                                            ; $4d73: $80
	jr nz, jr_011_4d6d                               ; $4d74: $20 $f7

	ld h, b                                          ; $4d76: $60
	rst $38                                          ; $4d77: $ff
	ld b, b                                          ; $4d78: $40
	rst $38                                          ; $4d79: $ff
	ld b, c                                          ; $4d7a: $41
	rst $38                                          ; $4d7b: $ff
	add c                                            ; $4d7c: $81
	rst $38                                          ; $4d7d: $ff
	add e                                            ; $4d7e: $83
	cp $83                                           ; $4d7f: $fe $83
	cp $22                                           ; $4d81: $fe $22
	rst FarCall                                          ; $4d83: $f7
	ld h, d                                          ; $4d84: $62
	rst FarCall                                          ; $4d85: $f7
	ld b, h                                          ; $4d86: $44

jr_011_4d87:
	xor $c4                                          ; $4d87: $ee $c4
	cp $c4                                           ; $4d89: $fe $c4
	cp $cc                                           ; $4d8b: $fe $cc
	ld a, a                                          ; $4d8d: $7f
	call c, $dd7f                                    ; $4d8e: $dc $7f $dd
	ld [hl], a                                       ; $4d91: $77
	nop                                              ; $4d92: $00
	add b                                            ; $4d93: $80
	inc l                                            ; $4d94: $2c
	jr nz, jr_011_4db8                               ; $4d95: $20 $21

	ld h, b                                          ; $4d97: $60
	db $ed                                           ; $4d98: $ed
	ld h, h                                          ; $4d99: $64
	db $ed                                           ; $4d9a: $ed
	db $e4                                           ; $4d9b: $e4
	db $fd                                           ; $4d9c: $fd
	db $e4                                           ; $4d9d: $e4
	cp l                                             ; $4d9e: $bd
	db $e4                                           ; $4d9f: $e4
	cp a                                             ; $4da0: $bf
	db $e4                                           ; $4da1: $e4
	ccf                                              ; $4da2: $3f
	ld c, b                                          ; $4da3: $48
	call $ce44                                       ; $4da4: $cd $44 $ce
	ld b, h                                          ; $4da7: $44
	xor $66                                          ; $4da8: $ee $66
	xor a                                            ; $4daa: $af
	ld h, d                                          ; $4dab: $62
	cp a                                             ; $4dac: $bf
	ld [hl], e                                       ; $4dad: $73
	sbc a                                            ; $4dae: $9f
	ld [hl], e                                       ; $4daf: $73
	sbc a                                            ; $4db0: $9f
	ld a, c                                          ; $4db1: $79
	adc a                                            ; $4db2: $8f
	add b                                            ; $4db3: $80
	and h                                            ; $4db4: $a4
	rst GetHLinHL                                          ; $4db5: $cf
	ld c, d                                          ; $4db6: $4a
	rst SubAFromBC                                          ; $4db7: $e7

jr_011_4db8:
	ld d, d                                          ; $4db8: $52
	rst SubAFromBC                                          ; $4db9: $e7
	ld hl, $2577                                     ; $4dba: $21 $77 $25
	ld a, e                                          ; $4dbd: $7b
	db $10                                           ; $4dbe: $10
	cp a                                             ; $4dbf: $bf
	adc b                                            ; $4dc0: $88
	rst $38                                          ; $4dc1: $ff
	call nz, $04ff                                   ; $4dc2: $c4 $ff $04
	rst $38                                          ; $4dc5: $ff
	ld [bc], a                                       ; $4dc6: $02
	rst $38                                          ; $4dc7: $ff
	ld [hl+], a                                      ; $4dc8: $22
	rst $38                                          ; $4dc9: $ff
	ld de, $09ff                                     ; $4dca: $11 $ff $09
	rst $38                                          ; $4dcd: $ff
	add h                                            ; $4dce: $84
	rst $38                                          ; $4dcf: $ff
	ld b, d                                          ; $4dd0: $42
	rst $38                                          ; $4dd1: $ff
	ld hl, $ff9c                                     ; $4dd2: $21 $9c $ff
	add a                                            ; $4dd5: $87
	db $fc                                           ; $4dd6: $fc
	ld [hl], a                                       ; $4dd7: $77

jr_011_4dd8:
	cp $80                                           ; $4dd8: $fe $80
	rst GetHLinHL                                          ; $4dda: $cf
	ld hl, sp-$31                                    ; $4ddb: $f8 $cf
	ld hl, sp-$12                                    ; $4ddd: $f8 $ee
	ld sp, hl                                        ; $4ddf: $f9
	rst AddAOntoHL                                          ; $4de0: $ef
	ld sp, hl                                        ; $4de1: $f9
	db $fc                                           ; $4de2: $fc
	ei                                               ; $4de3: $fb
	db $fd                                           ; $4de4: $fd
	ld [hl], a                                       ; $4de5: $77
	db $fd                                           ; $4de6: $fd
	ld h, a                                          ; $4de7: $67
	db $fd                                           ; $4de8: $fd
	ld h, a                                          ; $4de9: $67
	push hl                                          ; $4dea: $e5
	ld a, a                                          ; $4deb: $7f
	ld a, a                                          ; $4dec: $7f
	rst $38                                          ; $4ded: $ff
	rst $38                                          ; $4dee: $ff
	jp Jump_011_7f81                                 ; $4def: $c3 $81 $7f


	ccf                                              ; $4df2: $3f
	ccf                                              ; $4df3: $3f
	xor $3f                                          ; $4df4: $ee $3f
	xor $1f                                          ; $4df6: $ee $1f
	rst AddAOntoHL                                          ; $4df8: $ef
	add b                                            ; $4df9: $80
	dec e                                            ; $4dfa: $1d
	rst FarCall                                          ; $4dfb: $f7
	inc e                                            ; $4dfc: $1c
	rst FarCall                                          ; $4dfd: $f7
	inc e                                            ; $4dfe: $1c
	rst $38                                          ; $4dff: $ff
	inc c                                            ; $4e00: $0c
	rst $38                                          ; $4e01: $ff
	add h                                            ; $4e02: $84
	sbc a                                            ; $4e03: $9f
	db $e4                                           ; $4e04: $e4
	ld a, c                                          ; $4e05: $79
	rst GetHLinHL                                          ; $4e06: $cf
	ld a, l                                          ; $4e07: $7d
	rst JumpTable                                          ; $4e08: $c7
	ld [hl], d                                       ; $4e09: $72
	rst GetHLinHL                                          ; $4e0a: $cf
	rst AddAOntoHL                                          ; $4e0b: $ef
	rst SubAFromDE                                          ; $4e0c: $df
	rst $38                                          ; $4e0d: $ff
	ld [hl], b                                       ; $4e0e: $70
	ldh [$61], a                                     ; $4e0f: $e0 $61
	rst SubAFromDE                                          ; $4e11: $df
	ld h, b                                          ; $4e12: $60
	ccf                                              ; $4e13: $3f
	ld b, e                                          ; $4e14: $43
	and $7f                                          ; $4e15: $e6 $7f
	di                                               ; $4e17: $f3
	ccf                                              ; $4e18: $3f
	adc d                                            ; $4e19: $8a
	ld sp, hl                                        ; $4e1a: $f9
	sbc a                                            ; $4e1b: $9f
	ld a, h                                          ; $4e1c: $7c
	rst GetHLinHL                                          ; $4e1d: $cf
	cp $c7                                           ; $4e1e: $fe $c7
	rra                                              ; $4e20: $1f
	pop hl                                           ; $4e21: $e1
	rst AddAOntoHL                                          ; $4e22: $ef
	jr jr_011_4dd8                                   ; $4e23: $18 $b3

	call z, $ff19                                    ; $4e25: $cc $19 $ff
	adc h                                            ; $4e28: $8c
	rst $38                                          ; $4e29: $ff
	rst SubAFromBC                                          ; $4e2a: $e7
	rst $38                                          ; $4e2b: $ff
	sbc h                                            ; $4e2c: $9c
	rst $38                                          ; $4e2d: $ff
	ld b, h                                          ; $4e2e: $44
	ld a, e                                          ; $4e2f: $7b
	sub h                                            ; $4e30: $94
	sub [hl]                                         ; $4e31: $96
	call nz, $cc7f                                   ; $4e32: $c4 $7f $cc
	ld a, a                                          ; $4e35: $7f
	ld sp, hl                                        ; $4e36: $f9
	cp $fd                                           ; $4e37: $fe $fd
	db $f4                                           ; $4e39: $f4
	rst FarCall                                          ; $4e3a: $f7
	ld a, e                                          ; $4e3b: $7b
	cp $80                                           ; $4e3c: $fe $80
	push af                                          ; $4e3e: $f5

jr_011_4e3f:
	or $f3                                           ; $4e3f: $f6 $f3
	or $fb                                           ; $4e41: $f6 $fb
	ldh a, [c]                                       ; $4e43: $f2
	db $fc                                           ; $4e44: $fc
	ld a, [$40ff]                                    ; $4e45: $fa $ff $40
	rst FarCall                                          ; $4e48: $f7
	rrca                                             ; $4e49: $0f
	reti                                             ; $4e4a: $d9


	ccf                                              ; $4e4b: $3f
	jp hl                                            ; $4e4c: $e9


	ld a, c                                          ; $4e4d: $79
	xor $1f                                          ; $4e4e: $ee $1f
	ld [$c90f], a                                    ; $4e50: $ea $0f $c9
	dec c                                            ; $4e53: $0d
	rlca                                             ; $4e54: $07
	ld b, $cf                                        ; $4e55: $06 $cf
	jr nc, jr_011_4e3f                               ; $4e57: $30 $e6

	rra                                              ; $4e59: $1f
	add sp, -$61                                     ; $4e5a: $e8 $9f
	rst SubAFromBC                                          ; $4e5c: $e7
	sbc c                                            ; $4e5d: $99
	sbc b                                            ; $4e5e: $98
	add sp, -$70                                     ; $4e5f: $e8 $90
	ret nc                                           ; $4e61: $d0

	add b                                            ; $4e62: $80
	ret nc                                           ; $4e63: $d0

	cp a                                             ; $4e64: $bf
	call c, $807f                                    ; $4e65: $dc $7f $80
	rlca                                             ; $4e68: $07
	ld a, b                                          ; $4e69: $78
	adc [hl]                                         ; $4e6a: $8e
	ld [hl], d                                       ; $4e6b: $72
	adc d                                            ; $4e6c: $8a
	ld a, [$0a83]                                    ; $4e6d: $fa $83 $0a
	inc bc                                           ; $4e70: $03
	inc b                                            ; $4e71: $04
	ld bc, $0103                                     ; $4e72: $01 $03 $01
	ld b, b                                          ; $4e75: $40
	nop                                              ; $4e76: $00
	ei                                               ; $4e77: $fb
	db $e4                                           ; $4e78: $e4
	dec sp                                           ; $4e79: $3b
	ccf                                              ; $4e7a: $3f
	ld hl, sp-$0d                                    ; $4e7b: $f8 $f3
	cp e                                             ; $4e7d: $bb
	ldh [$3b], a                                     ; $4e7e: $e0 $3b
	ldh [$3b], a                                     ; $4e80: $e0 $3b
	add b                                            ; $4e82: $80
	ei                                               ; $4e83: $fb

jr_011_4e84:
	ret nz                                           ; $4e84: $c0

	rst SubAFromBC                                          ; $4e85: $e7
	nop                                              ; $4e86: $00
	adc [hl]                                         ; $4e87: $8e
	db $eb                                           ; $4e88: $eb
	ld [hl], a                                       ; $4e89: $77
	db $ed                                           ; $4e8a: $ed
	ei                                               ; $4e8b: $fb
	dec a                                            ; $4e8c: $3d
	di                                               ; $4e8d: $f3
	db $fd                                           ; $4e8e: $fd
	dec hl                                           ; $4e8f: $2b
	or l                                             ; $4e90: $b5
	ld a, e                                          ; $4e91: $7b
	and e                                            ; $4e92: $a3
	ld [hl], a                                       ; $4e93: $77
	cpl                                              ; $4e94: $2f
	rst SubAFromBC                                          ; $4e95: $e7
	rst AddAOntoHL                                          ; $4e96: $ef
	rra                                              ; $4e97: $1f
	cp $dc                                           ; $4e98: $fe $dc
	rst $38                                          ; $4e9a: $ff
	sbc h                                            ; $4e9b: $9c
	ld hl, sp-$01                                    ; $4e9c: $f8 $ff
	db $e3                                           ; $4e9e: $e3
	ld a, e                                          ; $4e9f: $7b
	adc b                                            ; $4ea0: $88
	ld a, a                                          ; $4ea1: $7f
	jp $839c                                         ; $4ea2: $c3 $9c $83


jr_011_4ea5:
	rst $38                                          ; $4ea5: $ff
	ld c, $be                                        ; $4ea6: $0e $be
	add b                                            ; $4ea8: $80
	rst SubAFromBC                                          ; $4ea9: $e7
	ret nz                                           ; $4eaa: $c0

	adc a                                            ; $4eab: $8f
	add b                                            ; $4eac: $80
	ret nz                                           ; $4ead: $c0

	add b                                            ; $4eae: $80
	ld h, b                                          ; $4eaf: $60
	ret nz                                           ; $4eb0: $c0

	ldh a, [$e0]                                     ; $4eb1: $f0 $e0
	jr c, jr_011_4ea5                                ; $4eb3: $38 $f0

	ld h, [hl]                                       ; $4eb5: $66
	ld [$0cd3], sp                                   ; $4eb6: $08 $d3 $0c
	ld a, [bc]                                       ; $4eb9: $0a
	inc c                                            ; $4eba: $0c
	nop                                              ; $4ebb: $00
	cp a                                             ; $4ebc: $bf
	ld bc, $9919                                     ; $4ebd: $01 $19 $99
	rrca                                             ; $4ec0: $0f
	nop                                              ; $4ec1: $00
	nop                                              ; $4ec2: $00
	inc b                                            ; $4ec3: $04
	inc bc                                           ; $4ec4: $03
	jr nc, jr_011_4e84                               ; $4ec5: $30 $bd

	rlca                                             ; $4ec7: $07
	nop                                              ; $4ec8: $00
	nop                                              ; $4ec9: $00
	ld b, b                                          ; $4eca: $40
	rst SubAFromDE                                          ; $4ecb: $df
	add b                                            ; $4ecc: $80
	cp [hl]                                          ; $4ecd: $be
	nop                                              ; $4ece: $00
	add b                                            ; $4ecf: $80
	dec bc                                           ; $4ed0: $0b
	sbc e                                            ; $4ed1: $9b
	inc b                                            ; $4ed2: $04
	add a                                            ; $4ed3: $87
	ld a, b                                          ; $4ed4: $78
	rra                                              ; $4ed5: $1f
	cp a                                             ; $4ed6: $bf
	ccf                                              ; $4ed7: $3f
	ld a, a                                          ; $4ed8: $7f
	sub b                                            ; $4ed9: $90
	ld bc, $077b                                     ; $4eda: $01 $7b $07
	rst FarCall                                          ; $4edd: $f7
	rrca                                             ; $4ede: $0f
	rst SubAFromDE                                          ; $4edf: $df
	ccf                                              ; $4ee0: $3f
	ld sp, hl                                        ; $4ee1: $f9
	rra                                              ; $4ee2: $1f
	add sp, $3f                                      ; $4ee3: $e8 $3f
	ret z                                            ; $4ee5: $c8

	ld a, a                                          ; $4ee6: $7f
	adc b                                            ; $4ee7: $88
	rst $38                                          ; $4ee8: $ff
	ld l, a                                          ; $4ee9: $6f
	cp $80                                           ; $4eea: $fe $80
	add b                                            ; $4eec: $80
	rst $38                                          ; $4eed: $ff
	or h                                             ; $4eee: $b4
	rrca                                             ; $4eef: $0f
	ld l, e                                          ; $4ef0: $6b
	inc e                                            ; $4ef1: $1c
	ld d, $39                                        ; $4ef2: $16 $39
	xor d                                            ; $4ef4: $aa
	ld [hl], c                                       ; $4ef5: $71
	ld [hl], d                                       ; $4ef6: $72
	pop hl                                           ; $4ef7: $e1
	call nz, $a4e2                                   ; $4ef8: $c4 $e2 $a4
	jp nz, $c180                                     ; $4efb: $c2 $80 $c1

	inc e                                            ; $4efe: $1c
	ld hl, sp+$16                                    ; $4eff: $f8 $16
	db $fc                                           ; $4f01: $fc
	inc hl                                           ; $4f02: $23
	rst $38                                          ; $4f03: $ff
	inc hl                                           ; $4f04: $23
	ld a, a                                          ; $4f05: $7f
	dec b                                            ; $4f06: $05
	ld a, a                                          ; $4f07: $7f
	ld b, c                                          ; $4f08: $41
	rst $38                                          ; $4f09: $ff
	ret                                              ; $4f0a: $c9


	sbc h                                            ; $4f0b: $9c
	rst $38                                          ; $4f0c: $ff
	sub c                                            ; $4f0d: $91
	rst $38                                          ; $4f0e: $ff
	db $fd                                           ; $4f0f: $fd
	ld a, a                                          ; $4f10: $7f
	cp d                                             ; $4f11: $ba
	add d                                            ; $4f12: $82
	ldh [$c0], a                                     ; $4f13: $e0 $c0
	ld sp, hl                                        ; $4f15: $f9

jr_011_4f16:
	ldh a, [rIE]                                     ; $4f16: $f0 $ff
	rst $38                                          ; $4f18: $ff
	di                                               ; $4f19: $f3
	db $fc                                           ; $4f1a: $fc
	rst FarCall                                          ; $4f1b: $f7
	ld hl, sp+$01                                    ; $4f1c: $f8 $01
	nop                                              ; $4f1e: $00
	ld bc, $0a03                                     ; $4f1f: $01 $03 $0a
	rlca                                             ; $4f22: $07
	inc l                                            ; $4f23: $2c
	rra                                              ; $4f24: $1f
	ldh a, [$7f]                                     ; $4f25: $f0 $7f
	add c                                            ; $4f27: $81
	rst $38                                          ; $4f28: $ff
	pop bc                                           ; $4f29: $c1
	ccf                                              ; $4f2a: $3f
	pop af                                           ; $4f2b: $f1
	rrca                                             ; $4f2c: $0f
	db $ed                                           ; $4f2d: $ed
	ld a, a                                          ; $4f2e: $7f
	ret                                              ; $4f2f: $c9


	ld a, e                                          ; $4f30: $7b
	ret c                                            ; $4f31: $d8

	sbc h                                            ; $4f32: $9c
	jp c, $92ff                                      ; $4f33: $da $ff $92

	ld [hl], a                                       ; $4f36: $77
	cp $91                                           ; $4f37: $fe $91
	cp $36                                           ; $4f39: $fe $36
	cp $20                                           ; $4f3b: $fe $20
	sbc a                                            ; $4f3d: $9f
	inc h                                            ; $4f3e: $24
	sbc e                                            ; $4f3f: $9b
	and d                                            ; $4f40: $a2
	add hl, de                                       ; $4f41: $19
	xor d                                            ; $4f42: $aa
	ld de, $100a                                     ; $4f43: $11 $0a $10
	db $10                                           ; $4f46: $10
	db $fc                                           ; $4f47: $fc
	inc sp                                           ; $4f48: $33
	ld [bc], a                                       ; $4f49: $02
	add b                                            ; $4f4a: $80
	inc b                                            ; $4f4b: $04
	ld [$100a], sp                                   ; $4f4c: $08 $0a $10
	inc d                                            ; $4f4f: $14
	jr nz, jr_011_4f87                               ; $4f50: $20 $35

	ld b, b                                          ; $4f52: $40
	jr z, jr_011_4f16                                ; $4f53: $28 $c1

	ld c, d                                          ; $4f55: $4a
	add c                                            ; $4f56: $81
	ld d, h                                          ; $4f57: $54
	add e                                            ; $4f58: $83
	ld d, l                                          ; $4f59: $55
	add d                                            ; $4f5a: $82
	ld a, [bc]                                       ; $4f5b: $0a
	ld sp, $2354                                     ; $4f5c: $31 $54 $23
	and b                                            ; $4f5f: $a0
	ld b, [hl]                                       ; $4f60: $46
	add hl, bc                                       ; $4f61: $09
	call nz, $8954                                   ; $4f62: $c4 $54 $89
	ld a, [hl-]                                      ; $4f65: $3a
	add c                                            ; $4f66: $81
	xor d                                            ; $4f67: $aa
	ld de, $9e65                                     ; $4f68: $11 $65 $9e
	ld [de], a                                       ; $4f6b: $12
	cp l                                             ; $4f6c: $bd
	or b                                             ; $4f6d: $b0
	ld h, b                                          ; $4f6e: $60
	jp $8087                                         ; $4f6f: $c3 $87 $80


	add b                                            ; $4f72: $80
	ld c, $00                                        ; $4f73: $0e $00
	inc e                                            ; $4f75: $1c
	jr nz, jr_011_4f95                               ; $4f76: $20 $1d

	ld b, b                                          ; $4f78: $40
	dec sp                                           ; $4f79: $3b
	ld [$083f], sp                                   ; $4f7a: $08 $3f $08
	rst $38                                          ; $4f7d: $ff
	inc d                                            ; $4f7e: $14
	cp $0f                                           ; $4f7f: $fe $0f
	adc a                                            ; $4f81: $8f
	inc b                                            ; $4f82: $04
	ld [hl], a                                       ; $4f83: $77
	nop                                              ; $4f84: $00
	adc $1b                                          ; $4f85: $ce $1b

jr_011_4f87:
	cp a                                             ; $4f87: $bf
	ccf                                              ; $4f88: $3f
	ld l, l                                          ; $4f89: $6d
	ld b, e                                          ; $4f8a: $43
	add b                                            ; $4f8b: $80
	ld bc, $2400                                     ; $4f8c: $01 $00 $24
	jr jr_011_4fa3                                   ; $4f8f: $18 $12

	add b                                            ; $4f91: $80
	db $e4                                           ; $4f92: $e4
	ret nz                                           ; $4f93: $c0

	ldh a, [c]                                       ; $4f94: $f2

jr_011_4f95:
	ld a, [bc]                                       ; $4f95: $0a
	ld d, c                                          ; $4f96: $51
	db $10                                           ; $4f97: $10
	adc c                                            ; $4f98: $89
	add b                                            ; $4f99: $80
	ret                                              ; $4f9a: $c9


	ld [de], a                                       ; $4f9b: $12
	inc c                                            ; $4f9c: $0c
	adc c                                            ; $4f9d: $89
	ld b, $c4                                        ; $4f9e: $06 $c4
	inc bc                                           ; $4fa0: $03
	ld h, h                                          ; $4fa1: $64
	inc bc                                           ; $4fa2: $03

jr_011_4fa3:
	db $10                                           ; $4fa3: $10
	cpl                                              ; $4fa4: $2f
	inc l                                            ; $4fa5: $2c
	rla                                              ; $4fa6: $17
	ld b, h                                          ; $4fa7: $44
	dec hl                                           ; $4fa8: $2b
	add [hl]                                         ; $4fa9: $86
	ld a, e                                          ; $4faa: $7b
	ld a, l                                          ; $4fab: $7d
	add d                                            ; $4fac: $82
	ld l, c                                          ; $4fad: $69
	sub [hl]                                         ; $4fae: $96
	ld c, c                                          ; $4faf: $49
	or [hl]                                          ; $4fb0: $b6
	adc a                                            ; $4fb1: $8f
	ld c, l                                          ; $4fb2: $4d
	or [hl]                                          ; $4fb3: $b6
	ld b, l                                          ; $4fb4: $45
	cp [hl]                                          ; $4fb5: $be
	ld h, l                                          ; $4fb6: $65
	cp [hl]                                          ; $4fb7: $be
	dec h                                            ; $4fb8: $25
	cp $25                                           ; $4fb9: $fe $25
	cp $c9                                           ; $4fbb: $fe $c9
	ld [hl], $c9                                     ; $4fbd: $36 $c9
	ld [hl], $8b                                     ; $4fbf: $36 $8b
	ld [hl], h                                       ; $4fc1: $74
	ld [hl], a                                       ; $4fc2: $77
	cp $99                                           ; $4fc3: $fe $99
	rrca                                             ; $4fc5: $0f
	db $f4                                           ; $4fc6: $f4
	dec c                                            ; $4fc7: $0d
	or $2d                                           ; $4fc8: $f6 $2d
	or $be                                           ; $4fca: $f6 $be
	ld [hl-], a                                      ; $4fcc: $32
	ld [hl], l                                       ; $4fcd: $75
	ld l, a                                          ; $4fce: $6f
	adc [hl]                                         ; $4fcf: $8e
	ld hl, $25ef                                     ; $4fd0: $21 $ef $25
	rst AddAOntoHL                                          ; $4fd3: $ef
	ld b, l                                          ; $4fd4: $45
	rst $38                                          ; $4fd5: $ff
	ld b, a                                          ; $4fd6: $47
	cp $47                                           ; $4fd7: $fe $47
	cp $7f                                           ; $4fd9: $fe $7f
	ret nz                                           ; $4fdb: $c0

	rst $38                                          ; $4fdc: $ff
	add b                                            ; $4fdd: $80
	ldh a, [$80]                                     ; $4fde: $f0 $80
	ldh [$be], a                                     ; $4fe0: $e0 $be
	pop bc                                           ; $4fe2: $c1
	pop bc                                           ; $4fe3: $c1
	add c                                            ; $4fe4: $81
	add b                                            ; $4fe5: $80
	ld bc, $0181                                     ; $4fe6: $01 $81 $01
	and d                                            ; $4fe9: $a2
	ret                                              ; $4fea: $c9


	add e                                            ; $4feb: $83
	jp hl                                            ; $4fec: $e9


	sub a                                            ; $4fed: $97
	jp hl                                            ; $4fee: $e9


	cp a                                             ; $4fef: $bf
	jp hl                                            ; $4ff0: $e9


	xor e                                            ; $4ff1: $ab
	db $fd                                           ; $4ff2: $fd
	xor e                                            ; $4ff3: $ab
	db $fd                                           ; $4ff4: $fd
	ld l, c                                          ; $4ff5: $69
	rst $38                                          ; $4ff6: $ff
	ld l, c                                          ; $4ff7: $69
	rst $38                                          ; $4ff8: $ff
	ld [bc], a                                       ; $4ff9: $02
	rst $38                                          ; $4ffa: $ff
	nop                                              ; $4ffb: $00
	rst $38                                          ; $4ffc: $ff
	add hl, bc                                       ; $4ffd: $09
	rst $38                                          ; $4ffe: $ff
	add c                                            ; $4fff: $81
	rst $38                                          ; $5000: $ff
	add h                                            ; $5001: $84
	rst $38                                          ; $5002: $ff
	ld b, h                                          ; $5003: $44
	rst $38                                          ; $5004: $ff
	sub d                                            ; $5005: $92
	ret nz                                           ; $5006: $c0

	ld a, a                                          ; $5007: $7f
	ld [hl+], a                                      ; $5008: $22
	rst $38                                          ; $5009: $ff
	inc d                                            ; $500a: $14
	rst $38                                          ; $500b: $ff
	sub h                                            ; $500c: $94
	rst $38                                          ; $500d: $ff
	sub d                                            ; $500e: $92
	rst $38                                          ; $500f: $ff
	jp nc, $c9ff                                     ; $5010: $d2 $ff $c9

	ld a, e                                          ; $5013: $7b
	cp $9a                                           ; $5014: $fe $9a
	jp hl                                            ; $5016: $e9


	rst $38                                          ; $5017: $ff
	db $ed                                           ; $5018: $ed
	rst $38                                          ; $5019: $ff
	inc h                                            ; $501a: $24
	ld [hl], e                                       ; $501b: $73
	cp $7f                                           ; $501c: $fe $7f
	ld [$fe7f], a                                    ; $501e: $ea $7f $fe
	sub a                                            ; $5021: $97
	ld [de], a                                       ; $5022: $12
	rst $38                                          ; $5023: $ff
	ld a, [bc]                                       ; $5024: $0a
	rst $38                                          ; $5025: $ff
	adc d                                            ; $5026: $8a
	rst $38                                          ; $5027: $ff
	ld c, a                                          ; $5028: $4f
	ld a, [$fe77]                                    ; $5029: $fa $77 $fe
	add b                                            ; $502c: $80
	ld l, a                                          ; $502d: $6f
	ld a, [$f96f]                                    ; $502e: $fa $6f $f9
	ld l, a                                          ; $5031: $6f
	ld hl, sp+$7f                                    ; $5032: $f8 $7f
	ret c                                            ; $5034: $d8

	ld a, a                                          ; $5035: $7f
	ret c                                            ; $5036: $d8

	inc bc                                           ; $5037: $03
	ld bc, $0103                                     ; $5038: $01 $03 $01
	rlca                                             ; $503b: $07
	ld [bc], a                                       ; $503c: $02
	nop                                              ; $503d: $00
	rlca                                             ; $503e: $07
	rlca                                             ; $503f: $07
	rra                                              ; $5040: $1f

jr_011_5041:
	rra                                              ; $5041: $1f
	ld hl, sp-$01                                    ; $5042: $f8 $ff
	ld h, b                                          ; $5044: $60
	rst $38                                          ; $5045: $ff
	nop                                              ; $5046: $00
	db $ec                                           ; $5047: $ec
	cp a                                             ; $5048: $bf
	db $fc                                           ; $5049: $fc
	scf                                              ; $504a: $37
	cp $80                                           ; $504b: $fe $80
	daa                                              ; $504d: $27
	ld a, [hl]                                       ; $504e: $7e
	rst JumpTable                                          ; $504f: $c7
	sbc a                                            ; $5050: $9f
	rst SubAFromBC                                          ; $5051: $e7
	db $fd                                           ; $5052: $fd
	scf                                              ; $5053: $37
	db $fc                                           ; $5054: $fc
	rlca                                             ; $5055: $07
	db $fc                                           ; $5056: $fc
	rlca                                             ; $5057: $07
	ldh [c], a                                       ; $5058: $e2
	cp a                                             ; $5059: $bf
	or d                                             ; $505a: $b2
	rst SubAFromDE                                          ; $505b: $df
	xor d                                            ; $505c: $aa
	rst GetHLinHL                                          ; $505d: $cf
	sub $e7                                          ; $505e: $d6 $e7
	ld l, d                                          ; $5060: $6a
	di                                               ; $5061: $f3
	ld d, e                                          ; $5062: $53
	db $fd                                           ; $5063: $fd
	xor d                                            ; $5064: $aa
	rst $38                                          ; $5065: $ff
	db $db                                           ; $5066: $db
	rst $38                                          ; $5067: $ff
	push af                                          ; $5068: $f5
	rst $38                                          ; $5069: $ff
	di                                               ; $506a: $f3
	rst $38                                          ; $506b: $ff
	add b                                            ; $506c: $80
	cp e                                             ; $506d: $bb
	rst FarCall                                          ; $506e: $f7
	dec de                                           ; $506f: $1b
	or a                                             ; $5070: $b7
	inc de                                           ; $5071: $13
	ld [hl], a                                       ; $5072: $77
	ld [hl], c                                       ; $5073: $71

jr_011_5074:
	rst SubAFromHL                                          ; $5074: $d7
	sub c                                            ; $5075: $91
	rst SubAFromHL                                          ; $5076: $d7
	ld d, c                                          ; $5077: $51
	sub a                                            ; $5078: $97
	adc d                                            ; $5079: $8a
	rst $38                                          ; $507a: $ff
	rst JumpTable                                          ; $507b: $c7
	ld a, a                                          ; $507c: $7f
	rst SubAFromBC                                          ; $507d: $e7
	ccf                                              ; $507e: $3f
	di                                               ; $507f: $f3
	sbc [hl]                                         ; $5080: $9e
	db $db                                           ; $5081: $db
	ld c, [hl]                                       ; $5082: $4e
	xor l                                            ; $5083: $ad
	rlca                                             ; $5084: $07
	add a                                            ; $5085: $87
	inc bc                                           ; $5086: $03
	add c                                            ; $5087: $81
	nop                                              ; $5088: $00
	ld a, a                                          ; $5089: $7f
	ret z                                            ; $508a: $c8

	ccf                                              ; $508b: $3f
	adc d                                            ; $508c: $8a
	add sp, $3f                                      ; $508d: $e8 $3f
	db $e4                                           ; $508f: $e4
	cp l                                             ; $5090: $bd
	ldh [$dc], a                                     ; $5091: $e0 $dc
	ld [hl], b                                       ; $5093: $70
	cp $30                                           ; $5094: $fe $30
	cp $88                                           ; $5096: $fe $88
	db $fc                                           ; $5098: $fc
	ret nz                                           ; $5099: $c0

	rst $38                                          ; $509a: $ff
	rra                                              ; $509b: $1f
	ld hl, sp+$3c                                    ; $509c: $f8 $3c
	bit 5, a                                         ; $509e: $cb $6f
	add h                                            ; $50a0: $84
	ld c, $7b                                        ; $50a1: $0e $7b
	sbc a                                            ; $50a3: $9f
	cp [hl]                                          ; $50a4: $be
	nop                                              ; $50a5: $00
	inc bc                                           ; $50a6: $03
	call c, $e78b                                    ; $50a7: $dc $8b $e7
	db $fc                                           ; $50aa: $fc
	rst $38                                          ; $50ab: $ff
	ld e, h                                          ; $50ac: $5c
	rst FarCall                                          ; $50ad: $f7
	sbc h                                            ; $50ae: $9c
	add a                                            ; $50af: $87
	jr c, jr_011_5041                                ; $50b0: $38 $8f

	ld hl, sp+$0f                                    ; $50b2: $f8 $0f
	ld hl, sp+$0b                                    ; $50b4: $f8 $0b
	ldh a, [$0b]                                     ; $50b6: $f0 $0b
	xor d                                            ; $50b8: $aa
	rst $38                                          ; $50b9: $ff
	cp d                                             ; $50ba: $ba
	rst $38                                          ; $50bb: $ff
	xor d                                            ; $50bc: $aa
	ld h, e                                          ; $50bd: $63
	cp $80                                           ; $50be: $fe $80
	or l                                             ; $50c0: $b5
	rst $38                                          ; $50c1: $ff
	ld de, $14bf                                     ; $50c2: $11 $bf $14
	cp a                                             ; $50c5: $bf
	ld a, [de]                                       ; $50c6: $1a
	cp e                                             ; $50c7: $bb
	ld [de], a                                       ; $50c8: $12
	ld [hl], e                                       ; $50c9: $73
	ld [hl], $63                                     ; $50ca: $36 $63
	ld l, h                                          ; $50cc: $6c
	ld b, a                                          ; $50cd: $47
	ld l, h                                          ; $50ce: $6c
	ld c, a                                          ; $50cf: $4f
	ld l, h                                          ; $50d0: $6c
	ld b, a                                          ; $50d1: $47
	add b                                            ; $50d2: $80
	nop                                              ; $50d3: $00
	pop bc                                           ; $50d4: $c1
	add b                                            ; $50d5: $80
	ret nz                                           ; $50d6: $c0

	add b                                            ; $50d7: $80
	ldh [$c0], a                                     ; $50d8: $e0 $c0
	ldh [$c0], a                                     ; $50da: $e0 $c0
	or b                                             ; $50dc: $b0
	ldh [$b0], a                                     ; $50dd: $e0 $b0
	sub l                                            ; $50df: $95
	ldh [$98], a                                     ; $50e0: $e0 $98
	ldh a, [$78]                                     ; $50e2: $f0 $78
	jr nz, jr_011_5074                               ; $50e4: $20 $8e

	inc b                                            ; $50e6: $04

jr_011_50e7:
	db $fc                                           ; $50e7: $fc
	ld e, b                                          ; $50e8: $58
	db $10                                           ; $50e9: $10
	or [hl]                                          ; $50ea: $b6
	ld [hl], b                                       ; $50eb: $70
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	nop                                              ; $50ee: $00
	inc bc                                           ; $50ef: $03
	rlca                                             ; $50f0: $07
	rlca                                             ; $50f1: $07
	rrca                                             ; $50f2: $0f
	rrca                                             ; $50f3: $0f
	rra                                              ; $50f4: $1f
	ld a, $80                                        ; $50f5: $3e $80
	ld bc, $077a                                     ; $50f7: $01 $7a $07
	ldh a, [rAUD3LEN]                                ; $50fa: $f0 $1b
	pop af                                           ; $50fc: $f1
	dec de                                           ; $50fd: $1b
	pop hl                                           ; $50fe: $e1
	rla                                              ; $50ff: $17
	pop hl                                           ; $5100: $e1
	scf                                              ; $5101: $37
	pop hl                                           ; $5102: $e1
	scf                                              ; $5103: $37
	ldh [c], a                                       ; $5104: $e2
	ld [hl], a                                       ; $5105: $77
	ldh [c], a                                       ; $5106: $e2
	rst SubAFromBC                                          ; $5107: $e7
	jp nz, $b5ee                                     ; $5108: $c2 $ee $b5

	rst $38                                          ; $510b: $ff
	dec [hl]                                         ; $510c: $35
	rst $38                                          ; $510d: $ff
	dec l                                            ; $510e: $2d
	rst $38                                          ; $510f: $ff

jr_011_5110:
	ld a, [hl+]                                      ; $5110: $2a
	ld a, a                                          ; $5111: $7f
	dec hl                                           ; $5112: $2b
	ld a, [hl]                                       ; $5113: $7e
	ld e, e                                          ; $5114: $5b
	cp $80                                           ; $5115: $fe $80
	ld d, h                                          ; $5117: $54
	db $fd                                           ; $5118: $fd
	ld d, a                                          ; $5119: $57
	db $fd                                           ; $511a: $fd
	ld l, h                                          ; $511b: $6c
	ld b, a                                          ; $511c: $47
	ld l, [hl]                                       ; $511d: $6e
	inc hl                                           ; $511e: $23
	ld a, a                                          ; $511f: $7f
	inc hl                                           ; $5120: $23
	ld a, a                                          ; $5121: $7f
	inc l                                            ; $5122: $2c
	ld a, b                                          ; $5123: $78
	jr nc, jr_011_50e7                               ; $5124: $30 $c1

	ret nz                                           ; $5126: $c0

	adc a                                            ; $5127: $8f
	rlca                                             ; $5128: $07
	sbc a                                            ; $5129: $9f
	add hl, bc                                       ; $512a: $09
	sbc h                                            ; $512b: $9c
	ld hl, sp-$6a                                    ; $512c: $f8 $96
	db $fc                                           ; $512e: $fc
	rst $38                                          ; $512f: $ff
	cp $87                                           ; $5130: $fe $87
	inc bc                                           ; $5132: $03
	rra                                              ; $5133: $1f
	inc bc                                           ; $5134: $03
	rst $38                                          ; $5135: $ff
	sbc d                                            ; $5136: $9a
	cp $0c                                           ; $5137: $fe $0c
	db $fc                                           ; $5139: $fc
	add hl, de                                       ; $513a: $19
	ldh a, [rPCM34]                                  ; $513b: $f0 $77
	xor [hl]                                         ; $513d: $ae
	sub c                                            ; $513e: $91
	dec de                                           ; $513f: $1b
	rlca                                             ; $5140: $07
	ld hl, sp-$01                                    ; $5141: $f8 $ff
	ldh [$3f], a                                     ; $5143: $e0 $3f
	ld a, [hl]                                       ; $5145: $7e
	ld hl, $60fb                                     ; $5146: $21 $fb $60
	ldh [$e0], a                                     ; $5149: $e0 $e0
	ret c                                            ; $514b: $d8

	ccf                                              ; $514c: $3f
	ld a, d                                          ; $514d: $7a
	db $eb                                           ; $514e: $eb
	ld a, e                                          ; $514f: $7b
	cp $9e                                           ; $5150: $fe $9e
	ld bc, $fe7b                                     ; $5152: $01 $7b $fe
	add b                                            ; $5155: $80
	jp $ff3f                                         ; $5156: $c3 $3f $ff


	inc bc                                           ; $5159: $03
	call nz, $84ee                                   ; $515a: $c4 $ee $84
	rst AddAOntoHL                                          ; $515d: $ef
	add h                                            ; $515e: $84
	db $dd                                           ; $515f: $dd
	adc c                                            ; $5160: $89
	db $dd                                           ; $5161: $dd
	add hl, bc                                       ; $5162: $09
	db $db                                           ; $5163: $db
	inc bc                                           ; $5164: $03
	cp e                                             ; $5165: $bb
	inc bc                                           ; $5166: $03
	cp a                                             ; $5167: $bf
	rlca                                             ; $5168: $07

jr_011_5169:
	rst $38                                          ; $5169: $ff
	sub [hl]                                         ; $516a: $96

jr_011_516b:
	db $fd                                           ; $516b: $fd
	sbc e                                            ; $516c: $9b
	ei                                               ; $516d: $fb
	sbc e                                            ; $516e: $9b
	ei                                               ; $516f: $fb
	ld d, $fb                                        ; $5170: $16 $fb
	ld [hl], $fa                                     ; $5172: $36 $fa
	jr z, jr_011_5110                                ; $5174: $28 $9a

	db $f4                                           ; $5176: $f4
	jr z, jr_011_5169                                ; $5177: $28 $f0

	jr nz, jr_011_516b                               ; $5179: $20 $f0

	dec hl                                           ; $517b: $2b
	ld [bc], a                                       ; $517c: $02
	rst SubAFromDE                                          ; $517d: $df
	ld a, [bc]                                       ; $517e: $0a
	add b                                            ; $517f: $80
	rla                                              ; $5180: $17
	inc e                                            ; $5181: $1c
	jr c, jr_011_51c1                                ; $5182: $38 $3d

	ld l, a                                          ; $5184: $6f
	ld a, a                                          ; $5185: $7f
	jp c, $b7e7                                      ; $5186: $da $e7 $b7

	adc $af                                          ; $5189: $ce $af
	call c, $bd57                                    ; $518b: $dc $57 $bd
	add $01                                          ; $518e: $c6 $01
	add b                                            ; $5190: $80
	ld a, a                                          ; $5191: $7f
	rst $38                                          ; $5192: $ff
	rst $38                                          ; $5193: $ff
	inc [hl]                                         ; $5194: $34
	rst $38                                          ; $5195: $ff
	ld c, c                                          ; $5196: $49
	rst $38                                          ; $5197: $ff
	or c                                             ; $5198: $b1
	rst SubAFromDE                                          ; $5199: $df
	ld d, d                                          ; $519a: $52
	cp a                                             ; $519b: $bf
	and e                                            ; $519c: $a3
	ld a, $0d                                        ; $519d: $3e $0d
	sbc e                                            ; $519f: $9b
	rst $38                                          ; $51a0: $ff
	rlca                                             ; $51a1: $07
	rst $38                                          ; $51a2: $ff
	ld hl, sp-$22                                    ; $51a3: $f8 $de
	rst $38                                          ; $51a5: $ff
	add b                                            ; $51a6: $80
	or l                                             ; $51a7: $b5
	rst GetHLinHL                                          ; $51a8: $cf
	add hl, hl                                       ; $51a9: $29
	sbc a                                            ; $51aa: $9f
	ld d, d                                          ; $51ab: $52
	ccf                                              ; $51ac: $3f
	or d                                             ; $51ad: $b2
	ld a, [hl]                                       ; $51ae: $7e
	ld [hl], a                                       ; $51af: $77
	rst $38                                          ; $51b0: $ff
	db $fc                                           ; $51b1: $fc
	rst $38                                          ; $51b2: $ff
	jp hl                                            ; $51b3: $e9


	rst $38                                          ; $51b4: $ff
	call nz, $e2ff                                   ; $51b5: $c4 $ff $e2
	rst FarCall                                          ; $51b8: $f7
	ld [hl], c                                       ; $51b9: $71
	di                                               ; $51ba: $f3
	ld [hl], c                                       ; $51bb: $71
	ld e, e                                          ; $51bc: $5b
	ld e, b                                          ; $51bd: $58
	adc l                                            ; $51be: $8d
	ld l, d                                          ; $51bf: $6a
	sbc l                                            ; $51c0: $9d

jr_011_51c1:
	push de                                          ; $51c1: $d5
	xor $2a                                          ; $51c2: $ee $2a
	rst FarCall                                          ; $51c4: $f7
	push de                                          ; $51c5: $d5
	add b                                            ; $51c6: $80
	cp e                                             ; $51c7: $bb
	ld [$755d], a                                    ; $51c8: $ea $5d $75
	xor [hl]                                         ; $51cb: $ae
	cp d                                             ; $51cc: $ba
	rst SubAFromHL                                          ; $51cd: $d7
	jp hl                                            ; $51ce: $e9


	res 1, c                                         ; $51cf: $cb $89
	rst $38                                          ; $51d1: $ff
	ld b, h                                          ; $51d2: $44
	rst $38                                          ; $51d3: $ff
	and d                                            ; $51d4: $a2
	ld a, a                                          ; $51d5: $7f
	ld d, l                                          ; $51d6: $55
	cp e                                             ; $51d7: $bb
	xor d                                            ; $51d8: $aa
	db $dd                                           ; $51d9: $dd
	ld a, d                                          ; $51da: $7a
	call Call_011_6e95                               ; $51db: $cd $95 $6e
	ld l, a                                          ; $51de: $6f
	ld [hl], $2d                                     ; $51df: $36 $2d
	ei                                               ; $51e1: $fb
	ld c, e                                          ; $51e2: $4b
	ld a, [$d236]                                    ; $51e3: $fa $36 $d2
	add b                                            ; $51e6: $80
	call nc, Call_011_7fb6                           ; $51e7: $d4 $b6 $7f
	and h                                            ; $51ea: $a4
	xor l                                            ; $51eb: $ad
	ld h, h                                          ; $51ec: $64
	jp hl                                            ; $51ed: $e9


	ld c, h                                          ; $51ee: $4c
	ld l, h                                          ; $51ef: $6c
	ret z                                            ; $51f0: $c8

	inc h                                            ; $51f1: $24
	ld a, a                                          ; $51f2: $7f
	ld b, h                                          ; $51f3: $44
	ld l, a                                          ; $51f4: $6f
	ld c, c                                          ; $51f5: $49
	rst AddAOntoHL                                          ; $51f6: $ef
	ld c, e                                          ; $51f7: $4b
	rst SubAFromDE                                          ; $51f8: $df
	adc e                                            ; $51f9: $8b
	sbc $8f                                          ; $51fa: $de $8f
	call c, $dc0f                                    ; $51fc: $dc $0f $dc
	rrca                                             ; $51ff: $0f
	sbc b                                            ; $5200: $98
	ld h, h                                          ; $5201: $64
	cp $e4                                           ; $5202: $fe $e4
	cp a                                             ; $5204: $bf
	db $ed                                           ; $5205: $ed
	adc e                                            ; $5206: $8b
	dec hl                                           ; $5207: $2b
	db $ed                                           ; $5208: $ed
	dec hl                                           ; $5209: $2b
	rst AddAOntoHL                                          ; $520a: $ef
	dec sp                                           ; $520b: $3b
	db $eb                                           ; $520c: $eb

jr_011_520d:
	ld a, [hl-]                                      ; $520d: $3a
	ei                                               ; $520e: $fb
	ld [hl-], a                                      ; $520f: $32
	ei                                               ; $5210: $fb
	ld [hl-], a                                      ; $5211: $32
	call z, $8487                                    ; $5212: $cc $87 $84
	add a                                            ; $5215: $87
	add [hl]                                         ; $5216: $86
	inc bc                                           ; $5217: $03
	add d                                            ; $5218: $82
	inc bc                                           ; $5219: $03
	add e                                            ; $521a: $83
	db $dd                                           ; $521b: $dd
	ld bc, $01bf                                     ; $521c: $01 $bf $01
	ret nz                                           ; $521f: $c0

	add b                                            ; $5220: $80
	db $ed                                           ; $5221: $ed
	and h                                            ; $5222: $a4
	or $f2                                           ; $5223: $f6 $f2
	cp [hl]                                          ; $5225: $be
	add sp, -$45                                     ; $5226: $e8 $bb
	ld hl, sp-$58                                    ; $5228: $f8 $a8
	cp h                                             ; $522a: $bc
	add [hl]                                         ; $522b: $86
	xor h                                            ; $522c: $ac
	add [hl]                                         ; $522d: $86
	adc [hl]                                         ; $522e: $8e
	add e                                            ; $522f: $83
	ld a, [de]                                       ; $5230: $1a
	or a                                             ; $5231: $b7
	sub a                                            ; $5232: $97
	db $db                                           ; $5233: $db
	db $ed                                           ; $5234: $ed
	ld e, e                                          ; $5235: $5b
	ld e, e                                          ; $5236: $5b
	ld l, l                                          ; $5237: $6d
	ld h, [hl]                                       ; $5238: $66
	dec l                                            ; $5239: $2d
	dec [hl]                                         ; $523a: $35
	ld h, $81                                        ; $523b: $26 $81
	or [hl]                                          ; $523d: $b6
	sbc d                                            ; $523e: $9a
	db $d3                                           ; $523f: $d3
	add e                                            ; $5240: $83
	ld c, h                                          ; $5241: $4c
	ret z                                            ; $5242: $c8

	jr jr_011_520d                                   ; $5243: $18 $c8

	sbc b                                            ; $5245: $98
	ret z                                            ; $5246: $c8

	adc c                                            ; $5247: $89
	ret c                                            ; $5248: $d8

	add c                                            ; $5249: $81
	ret c                                            ; $524a: $d8

	sub b                                            ; $524b: $90
	reti                                             ; $524c: $d9


	sub b                                            ; $524d: $90
	reti                                             ; $524e: $d9


	sub d                                            ; $524f: $92
	reti                                             ; $5250: $d9


	rrca                                             ; $5251: $0f
	jr jr_011_5263                                   ; $5252: $18 $0f

	jr c, jr_011_5262                                ; $5254: $38 $0c

	dec sp                                           ; $5256: $3b
	rra                                              ; $5257: $1f
	cp a                                             ; $5258: $bf
	rla                                              ; $5259: $17
	cp b                                             ; $525a: $b8
	rra                                              ; $525b: $1f
	or b                                             ; $525c: $b0
	ld [hl], a                                       ; $525d: $77
	cp $8f                                           ; $525e: $fe $8f
	ldh a, [c]                                       ; $5260: $f2
	db $10                                           ; $5261: $10

jr_011_5262:
	ld [de], a                                       ; $5262: $12

jr_011_5263:
	ldh a, [rAUD1SWEEP]                              ; $5263: $f0 $10
	ld hl, sp-$10                                    ; $5265: $f8 $f0
	db $fc                                           ; $5267: $fc
	cp $1c                                           ; $5268: $fe $1c
	rst $38                                          ; $526a: $ff
	ld [$00ff], sp                                   ; $526b: $08 $ff $00
	ld a, a                                          ; $526e: $7f
	ldh a, [$be]                                     ; $526f: $f0 $be
	nop                                              ; $5271: $00
	ld bc, $9c03                                     ; $5272: $01 $03 $9c
	rlca                                             ; $5275: $07
	inc bc                                           ; $5276: $03
	rrca                                             ; $5277: $0f
	cp l                                             ; $5278: $bd
	rrca                                             ; $5279: $0f
	rrca                                             ; $527a: $0f
	rrca                                             ; $527b: $0f
	adc [hl]                                         ; $527c: $8e
	ld a, a                                          ; $527d: $7f
	db $f4                                           ; $527e: $f4
	sbc c                                            ; $527f: $99
	ld sp, hl                                        ; $5280: $f9
	ld a, a                                          ; $5281: $7f
	db $fd                                           ; $5282: $fd
	rst $38                                          ; $5283: $ff
	add c                                            ; $5284: $81
	rst $38                                          ; $5285: $ff
	cp a                                             ; $5286: $bf
	rst $38                                          ; $5287: $ff
	cp a                                             ; $5288: $bf
	sbc c                                            ; $5289: $99
	ld a, b                                          ; $528a: $78
	db $fd                                           ; $528b: $fd
	cp $72                                           ; $528c: $fe $72
	db $db                                           ; $528e: $db
	ld l, h                                          ; $528f: $6c
	ld a, e                                          ; $5290: $7b
	and d                                            ; $5291: $a2
	sub d                                            ; $5292: $92
	daa                                              ; $5293: $27
	ld l, l                                          ; $5294: $6d
	xor [hl]                                         ; $5295: $ae
	and l                                            ; $5296: $a5
	xor l                                            ; $5297: $ad
	or [hl]                                          ; $5298: $b6
	sbc c                                            ; $5299: $99
	or $d3                                           ; $529a: $f6 $d3
	ld a, [hl]                                       ; $529c: $7e
	sub d                                            ; $529d: $92
	reti                                             ; $529e: $d9


jr_011_529f:
	or d                                             ; $529f: $b2
	ld [hl], e                                       ; $52a0: $73
	cp $80                                           ; $52a1: $fe $80
	ld [hl], $d9                                     ; $52a3: $36 $d9
	halt                                             ; $52a5: $76
	reti                                             ; $52a6: $d9


	or $59                                           ; $52a7: $f6 $59
	or $59                                           ; $52a9: $f6 $59
	rra                                              ; $52ab: $1f
	or c                                             ; $52ac: $b1
	rra                                              ; $52ad: $1f
	or e                                             ; $52ae: $b3
	sbc [hl]                                         ; $52af: $9e
	or a                                             ; $52b0: $b7
	cp [hl]                                          ; $52b1: $be
	or d                                             ; $52b2: $b2
	cp [hl]                                          ; $52b3: $be
	ldh a, [$bf]                                     ; $52b4: $f0 $bf
	ldh a, [$bf]                                     ; $52b6: $f0 $bf
	ld hl, sp-$44                                    ; $52b8: $f8 $bc
	ld hl, sp-$01                                    ; $52ba: $f8 $ff
	ld hl, sp-$72                                    ; $52bc: $f8 $8e
	adc h                                            ; $52be: $8c
	sbc [hl]                                         ; $52bf: $9e
	cp h                                             ; $52c0: $bc
	db $fc                                           ; $52c1: $fc
	sub l                                            ; $52c2: $95
	db $fc                                           ; $52c3: $fc
	adc b                                            ; $52c4: $88
	db $fc                                           ; $52c5: $fc
	ret c                                            ; $52c6: $d8

	ret c                                            ; $52c7: $d8

	db $fc                                           ; $52c8: $fc
	ld [hl], b                                       ; $52c9: $70
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	rlca                                             ; $52cc: $07
	ld [hl], a                                       ; $52cd: $77
	ld c, c                                          ; $52ce: $49
	cp h                                             ; $52cf: $bc
	nop                                              ; $52d0: $00
	db $10                                           ; $52d1: $10
	jr c, jr_011_5310                                ; $52d2: $38 $3c

	ld e, $91                                        ; $52d4: $1e $91
	jr nz, jr_011_529f                               ; $52d6: $20 $c7

	rst GetHLinHL                                          ; $52d8: $cf
	ld e, l                                          ; $52d9: $5d
	rst $38                                          ; $52da: $ff
	ld [hl], l                                       ; $52db: $75
	ld a, l                                          ; $52dc: $7d
	ld b, l                                          ; $52dd: $45
	ld a, h                                          ; $52de: $7c
	dec hl                                           ; $52df: $2b
	jr z, @+$01                                      ; $52e0: $28 $ff

	jr nc, jr_011_531b                               ; $52e2: $30 $37

	cp a                                             ; $52e4: $bf
	inc bc                                           ; $52e5: $03
	jp nc, Jump_011_7f95                             ; $52e6: $d2 $95 $7f

	jp z, $eaff                                      ; $52e9: $ca $ff $ea

	ld a, a                                          ; $52ec: $7f
	add sp, $3f                                      ; $52ed: $e8 $3f
	push hl                                          ; $52ef: $e5
	ccf                                              ; $52f0: $3f
	push de                                          ; $52f1: $d5
	ld a, e                                          ; $52f2: $7b
	cp $80                                           ; $52f3: $fe $80
	or h                                             ; $52f5: $b4
	ld a, a                                          ; $52f6: $7f
	and $59                                          ; $52f7: $e6 $59
	sbc [hl]                                         ; $52f9: $9e
	ld l, c                                          ; $52fa: $69
	ld a, d                                          ; $52fb: $7a
	xor l                                            ; $52fc: $ad
	ld a, [$fbad]                                    ; $52fd: $fa $ad $fb

jr_011_5300:
	xor h                                            ; $5300: $ac
	xor a                                            ; $5301: $af
	db $f4                                           ; $5302: $f4
	rst SubAFromDE                                          ; $5303: $df
	db $f4                                           ; $5304: $f4
	db $fd                                           ; $5305: $fd
	sub $be                                          ; $5306: $d6 $be
	db $fc                                           ; $5308: $fc
	cp [hl]                                          ; $5309: $be
	db $fc                                           ; $530a: $fc
	cp a                                             ; $530b: $bf
	cp $bf                                           ; $530c: $fe $bf
	cp $bd                                           ; $530e: $fe $bd

jr_011_5310:
	rst $38                                          ; $5310: $ff
	sbc c                                            ; $5311: $99
	rst $38                                          ; $5312: $ff
	ld e, e                                          ; $5313: $5b
	ld a, e                                          ; $5314: $7b
	cp $f9                                           ; $5315: $fe $f9
	add [hl]                                         ; $5317: $86
	add b                                            ; $5318: $80
	nop                                              ; $5319: $00
	ret nz                                           ; $531a: $c0

jr_011_531b:
	add b                                            ; $531b: $80
	ld h, b                                          ; $531c: $60
	ret nz                                           ; $531d: $c0

	jr nc, jr_011_5300                               ; $531e: $30 $e0

	ld a, $20                                        ; $5320: $3e $20
	ld c, h                                          ; $5322: $4c
	ld [hl], b                                       ; $5323: $70
	jr c, jr_011_5346                                ; $5324: $38 $20

	inc bc                                           ; $5326: $03
	nop                                              ; $5327: $00
	db $ec                                           ; $5328: $ec
	ld b, [hl]                                       ; $5329: $46
	inc b                                            ; $532a: $04
	jr z, jr_011_532d                                ; $532b: $28 $00

jr_011_532d:
	nop                                              ; $532d: $00
	jr z, jr_011_5340                                ; $532e: $28 $10

	rlca                                             ; $5330: $07
	cp [hl]                                          ; $5331: $be
	rlca                                             ; $5332: $07
	rrca                                             ; $5333: $0f
	ld c, $8f                                        ; $5334: $0e $8f
	ld bc, $031d                                     ; $5336: $01 $1d $03
	dec de                                           ; $5339: $1b
	rlca                                             ; $533a: $07
	scf                                              ; $533b: $37
	rrca                                             ; $533c: $0f
	ld l, a                                          ; $533d: $6f
	rra                                              ; $533e: $1f
	ldh a, [c]                                       ; $533f: $f2

jr_011_5340:
	ld a, a                                          ; $5340: $7f
	ld a, d                                          ; $5341: $7a
	rst $38                                          ; $5342: $ff
	ld a, [$baff]                                    ; $5343: $fa $ff $ba

jr_011_5346:
	ld l, e                                          ; $5346: $6b
	cp $7f                                           ; $5347: $fe $7f
	or $8b                                           ; $5349: $f6 $8b
	ld sp, hl                                        ; $534b: $f9
	sub $d7                                          ; $534c: $d6 $d7
	ld a, [$fbee]                                    ; $534e: $fa $ee $fb
	cp $eb                                           ; $5351: $fe $eb
	ei                                               ; $5353: $fb
	db $ed                                           ; $5354: $ed
	rst SubAFromBC                                          ; $5355: $e7
	db $fd                                           ; $5356: $fd
	rst $38                                          ; $5357: $ff
	push af                                          ; $5358: $f5
	db $fd                                           ; $5359: $fd
	rst FarCall                                          ; $535a: $f7
	ld e, d                                          ; $535b: $5a

jr_011_535c:
	rst $38                                          ; $535c: $ff
	sbc $7f                                          ; $535d: $de $7f
	ld [hl], a                                       ; $535f: $77
	cp $91                                           ; $5360: $fe $91
	rst SubAFromDE                                          ; $5362: $df
	ld a, a                                          ; $5363: $7f
	sbc a                                            ; $5364: $9f
	ld a, a                                          ; $5365: $7f
	cpl                                              ; $5366: $2f
	rst $38                                          ; $5367: $ff
	cpl                                              ; $5368: $2f
	rst $38                                          ; $5369: $ff
	jr c, jr_011_535c                                ; $536a: $38 $f0

	ld a, [hl]                                       ; $536c: $7e
	db $fc                                           ; $536d: $fc
	ld a, a                                          ; $536e: $7f
	rst $38                                          ; $536f: $ff
	ld [hl], a                                       ; $5370: $77
	cp $9a                                           ; $5371: $fe $9a
	ld a, l                                          ; $5373: $7d
	rst $38                                          ; $5374: $ff
	or c                                             ; $5375: $b1
	rst $38                                          ; $5376: $ff
	db $e3                                           ; $5377: $e3
	ld a, e                                          ; $5378: $7b
	sub b                                            ; $5379: $90
	ld a, a                                          ; $537a: $7f
	ld b, c                                          ; $537b: $41
	ld a, [hl]                                       ; $537c: $7e
	add h                                            ; $537d: $84
	sbc b                                            ; $537e: $98
	cp [hl]                                          ; $537f: $be

Jump_011_5380:
	rst JumpTable                                          ; $5380: $c7
	ld hl, sp+$3f                                    ; $5381: $f8 $3f
	sbc b                                            ; $5383: $98
	rlca                                             ; $5384: $07
	adc a                                            ; $5385: $8f
	cp a                                             ; $5386: $bf
	add e                                            ; $5387: $83
	rst SubAFromBC                                          ; $5388: $e7
	sbc e                                            ; $5389: $9b
	ccf                                              ; $538a: $3f
	ld b, a                                          ; $538b: $47
	rst $38                                          ; $538c: $ff
	add a                                            ; $538d: $87
	ld a, c                                          ; $538e: $79
	db $fc                                           ; $538f: $fc
	ld a, a                                          ; $5390: $7f
	cp $99                                           ; $5391: $fe $99
	rrca                                             ; $5393: $0f
	rst FarCall                                          ; $5394: $f7
	rra                                              ; $5395: $1f
	db $e3                                           ; $5396: $e3
	rst $38                                          ; $5397: $ff
	inc bc                                           ; $5398: $03
	ld [hl], a                                       ; $5399: $77
	and d                                            ; $539a: $a2
	ld [hl], a                                       ; $539b: $77

jr_011_539c:
	cp $df                                           ; $539c: $fe $df
	cp $99                                           ; $539e: $fe $99

jr_011_53a0:
	ld a, h                                          ; $53a0: $7c
	db $fc                                           ; $53a1: $fc
	jr jr_011_539c                                   ; $53a2: $18 $f8

	add b                                            ; $53a4: $80
	ldh a, [rAUD4GO]                                 ; $53a5: $f0 $23
	ld [bc], a                                       ; $53a7: $02
	add b                                            ; $53a8: $80

jr_011_53a9:
	ld [$1207], sp                                   ; $53a9: $08 $07 $12
	inc c                                            ; $53ac: $0c
	dec h                                            ; $53ad: $25
	jr jr_011_53fa                                   ; $53ae: $18 $4a

	ld sp, $6394                                     ; $53b0: $31 $94 $63
	ld hl, $48c6                                     ; $53b3: $21 $c6 $48
	add [hl]                                         ; $53b6: $86
	sub d                                            ; $53b7: $92
	inc c                                            ; $53b8: $0c
	xor c                                            ; $53b9: $a9
	db $10                                           ; $53ba: $10
	and a                                            ; $53bb: $a7
	ld b, b                                          ; $53bc: $40
	ld c, a                                          ; $53bd: $4f
	add b                                            ; $53be: $80
	sbc c                                            ; $53bf: $99
	nop                                              ; $53c0: $00
	ld [hl+], a                                      ; $53c1: $22
	ld bc, $0304                                     ; $53c2: $01 $04 $03
	add hl, bc                                       ; $53c5: $09
	ld b, $12                                        ; $53c6: $06 $12
	add e                                            ; $53c8: $83
	inc c                                            ; $53c9: $0c
	cp $01                                           ; $53ca: $fe $01
	rst $38                                          ; $53cc: $ff
	nop                                              ; $53cd: $00
	rst SubAFromDE                                          ; $53ce: $df
	jr nz, jr_011_53de                               ; $53cf: $20 $0d

	ret nc                                           ; $53d1: $d0

	dec l                                            ; $53d2: $2d
	sub b                                            ; $53d3: $90
	inc b                                            ; $53d4: $04
	jr nc, jr_011_5427                               ; $53d5: $30 $50

	inc h                                            ; $53d7: $24
	ld [$ff64], sp                                   ; $53d8: $08 $64 $ff
	nop                                              ; $53db: $00
	ld a, l                                          ; $53dc: $7d
	add d                                            ; $53dd: $82

jr_011_53de:
	ld l, $91                                        ; $53de: $2e $91

jr_011_53e0:
	or a                                             ; $53e0: $b7
	ld [$04bb], sp                                   ; $53e1: $08 $bb $04
	sbc e                                            ; $53e4: $9b
	ld a, e                                          ; $53e5: $7b
	cp $80                                           ; $53e6: $fe $80
	inc d                                            ; $53e8: $14
	ld [bc], a                                       ; $53e9: $02
	ret c                                            ; $53ea: $d8

	jr nz, jr_011_5453                               ; $53eb: $20 $66

	jr jr_011_53a0                                   ; $53ed: $18 $b1

	ld c, $58                                        ; $53ef: $0e $58
	add a                                            ; $53f1: $87
	inc l                                            ; $53f2: $2c
	ld b, e                                          ; $53f3: $43
	add [hl]                                         ; $53f4: $86
	ld hl, $2093                                     ; $53f5: $21 $93 $20
	pop bc                                           ; $53f8: $c1
	db $10                                           ; $53f9: $10

jr_011_53fa:
	ld h, d                                          ; $53fa: $62
	rra                                              ; $53fb: $1f
	ld sp, $180f                                     ; $53fc: $31 $0f $18
	rlca                                             ; $53ff: $07
	adc b                                            ; $5400: $88
	rlca                                             ; $5401: $07
	ld b, h                                          ; $5402: $44
	add e                                            ; $5403: $83
	inc h                                            ; $5404: $24
	jp $8014                                         ; $5405: $c3 $14 $80


	db $e3                                           ; $5408: $e3
	adc h                                            ; $5409: $8c
	ld [hl], e                                       ; $540a: $73
	inc [hl]                                         ; $540b: $34
	ld [$1860], sp                                   ; $540c: $08 $60 $18
	ld c, b                                          ; $540f: $48
	jr nc, jr_011_5453                               ; $5410: $30 $41

	jr nc, @-$6c                                     ; $5412: $30 $92

	ld h, c                                          ; $5414: $61
	add h                                            ; $5415: $84
	ld h, e                                          ; $5416: $63
	jr z, jr_011_53e0                                ; $5417: $28 $c7

	ld d, c                                          ; $5419: $51
	adc a                                            ; $541a: $8f
	inc h                                            ; $541b: $24
	jr @+$42                                         ; $541c: $18 $40

	jr c, jr_011_53a9                                ; $541e: $38 $89

	ld [hl], b                                       ; $5420: $70
	ld [bc], a                                       ; $5421: $02
	pop af                                           ; $5422: $f1
	inc [hl]                                         ; $5423: $34
	db $e3                                           ; $5424: $e3
	ld b, c                                          ; $5425: $41
	rst SubAFromBC                                          ; $5426: $e7

jr_011_5427:
	add b                                            ; $5427: $80
	set 4, a                                         ; $5428: $cb $e7
	sub a                                            ; $542a: $97
	rst GetHLinHL                                          ; $542b: $cf
	xor b                                            ; $542c: $a8
	ld b, h                                          ; $542d: $44
	inc c                                            ; $542e: $0c
	ret nz                                           ; $542f: $c0

	ld de, $d0c8                                     ; $5430: $11 $c8 $d0
	adc c                                            ; $5433: $89
	cp e                                             ; $5434: $bb
	sub c                                            ; $5435: $91
	ld a, c                                          ; $5436: $79
	sub e                                            ; $5437: $93
	ld b, a                                          ; $5438: $47
	or e                                             ; $5439: $b3
	ld h, e                                          ; $543a: $63

jr_011_543b:
	or a                                             ; $543b: $b7
	sub h                                            ; $543c: $94
	ld [bc], a                                       ; $543d: $02
	sub h                                            ; $543e: $94
	ld [bc], a                                       ; $543f: $02
	sub b                                            ; $5440: $90
	ld [bc], a                                       ; $5441: $02
	and e                                            ; $5442: $a3
	ld [de], a                                       ; $5443: $12
	cp d                                             ; $5444: $ba
	inc de                                           ; $5445: $13
	sbc d                                            ; $5446: $9a
	sub l                                            ; $5447: $95
	inc sp                                           ; $5448: $33
	or $3b                                           ; $5449: $f6 $3b
	or [hl]                                          ; $544b: $b6
	ld a, e                                          ; $544c: $7b
	adc b                                            ; $544d: $88
	ld d, b                                          ; $544e: $50
	db $10                                           ; $544f: $10
	ld c, b                                          ; $5450: $48
	inc h                                            ; $5451: $24
	ld a, e                                          ; $5452: $7b

jr_011_5453:
	cp $8a                                           ; $5453: $fe $8a
	ld [bc], a                                       ; $5455: $02
	ld l, h                                          ; $5456: $6c
	ld bc, $956e                                     ; $5457: $01 $6e $95
	ld l, [hl]                                       ; $545a: $6e

jr_011_545b:
	or [hl]                                          ; $545b: $b6
	ld l, a                                          ; $545c: $6f
	call nc, $c83b                                   ; $545d: $d4 $3b $c8
	ccf                                              ; $5460: $3f
	ld h, h                                          ; $5461: $64
	rra                                              ; $5462: $1f
	inc h                                            ; $5463: $24
	rra                                              ; $5464: $1f
	ld [hl-], a                                      ; $5465: $32
	rrca                                             ; $5466: $0f
	ld [de], a                                       ; $5467: $12
	rrca                                             ; $5468: $0f
	inc de                                           ; $5469: $13
	ld a, e                                          ; $546a: $7b
	cp $94                                           ; $546b: $fe $94
	ld [bc], a                                       ; $546d: $02
	rst $38                                          ; $546e: $ff

Call_011_546f:
	inc b                                            ; $546f: $04
	rst $38                                          ; $5470: $ff
	adc c                                            ; $5471: $89
	rst $38                                          ; $5472: $ff
	ld [de], a                                       ; $5473: $12
	rst $38                                          ; $5474: $ff
	inc h                                            ; $5475: $24
	rst FarCall                                          ; $5476: $f7
	ld c, c                                          ; $5477: $49
	sbc $ff                                          ; $5478: $de $ff
	add b                                            ; $547a: $80
	jp hl                                            ; $547b: $e9


	sbc a                                            ; $547c: $9f
	adc [hl]                                         ; $547d: $8e
	ei                                               ; $547e: $fb
	ld e, $f3                                        ; $547f: $1e $f3
	inc a                                            ; $5481: $3c
	rst AddAOntoHL                                          ; $5482: $ef
	ld a, l                                          ; $5483: $7d
	rst JumpTable                                          ; $5484: $c7
	ei                                               ; $5485: $fb
	adc [hl]                                         ; $5486: $8e
	rst $38                                          ; $5487: $ff
	inc c                                            ; $5488: $0c
	rst $38                                          ; $5489: $ff
	inc de                                           ; $548a: $13
	cp $07                                           ; $548b: $fe $07
	daa                                              ; $548d: $27
	db $fd                                           ; $548e: $fd
	ld c, [hl]                                       ; $548f: $4e
	cp c                                             ; $5490: $b9
	sbc $f3                                          ; $5491: $de $f3
	db $fc                                           ; $5493: $fc
	ld h, e                                          ; $5494: $63
	db $fd                                           ; $5495: $fd
	ld b, a                                          ; $5496: $47
	ei                                               ; $5497: $fb
	add [hl]                                         ; $5498: $86
	rst $38                                          ; $5499: $ff
	add b                                            ; $549a: $80
	call z, $e07f                                    ; $549b: $cc $7f $e0
	ld [hl], a                                       ; $549e: $77
	db $dd                                           ; $549f: $dd
	ld [hl], a                                       ; $54a0: $77
	db $dd                                           ; $54a1: $dd
	rst $38                                          ; $54a2: $ff
	sbc c                                            ; $54a3: $99
	rst $38                                          ; $54a4: $ff
	sbc e                                            ; $54a5: $9b
	rst $38                                          ; $54a6: $ff
	ld de, $31ff                                     ; $54a7: $11 $ff $31
	rst $38                                          ; $54aa: $ff
	ld hl, $43ff                                     ; $54ab: $21 $ff $43
	ld l, $fb                                        ; $54ae: $2e $fb
	cpl                                              ; $54b0: $2f
	ld sp, hl                                        ; $54b1: $f9
	ld l, a                                          ; $54b2: $6f
	ld sp, hl                                        ; $54b3: $f9
	ld a, a                                          ; $54b4: $7f
	ld sp, hl                                        ; $54b5: $f9
	rst $38                                          ; $54b6: $ff
	or [hl]                                          ; $54b7: $b6
	rst $38                                          ; $54b8: $ff
	jr nz, jr_011_543b                               ; $54b9: $20 $80

	rst $38                                          ; $54bb: $ff
	ldh [$3f], a                                     ; $54bc: $e0 $3f
	ldh a, [hDisp1_OBP0]                                     ; $54be: $f0 $93
	rrca                                             ; $54c0: $0f
	sub e                                            ; $54c1: $93
	rrca                                             ; $54c2: $0f
	inc de                                           ; $54c3: $13
	adc a                                            ; $54c4: $8f
	db $d3                                           ; $54c5: $d3
	adc a                                            ; $54c6: $8f
	sub e                                            ; $54c7: $93
	rst GetHLinHL                                          ; $54c8: $cf
	or e                                             ; $54c9: $b3
	rst GetHLinHL                                          ; $54ca: $cf
	db $d3                                           ; $54cb: $d3
	rst AddAOntoHL                                          ; $54cc: $ef
	rst SubAFromHL                                          ; $54cd: $d7
	rst AddAOntoHL                                          ; $54ce: $ef
	ld a, c                                          ; $54cf: $79
	ccf                                              ; $54d0: $3f
	ld l, b                                          ; $54d1: $68
	rra                                              ; $54d2: $1f
	cp b                                             ; $54d3: $b8
	dec l                                            ; $54d4: $2d
	ld hl, sp-$53                                    ; $54d5: $f8 $ad
	ld a, b                                          ; $54d7: $78
	db $dd                                           ; $54d8: $dd
	jr c, jr_011_545b                                ; $54d9: $38 $80

jr_011_54db:
	db $ed                                           ; $54db: $ed
	jr jr_011_54db                                   ; $54dc: $18 $fd

	ld [$dcfd], sp                                   ; $54de: $08 $fd $dc
	inc c                                            ; $54e1: $0c
	ld hl, sp+$7d                                    ; $54e2: $f8 $7d
	adc a                                            ; $54e4: $8f
	sbc a                                            ; $54e5: $9f
	adc a                                            ; $54e6: $8f
	adc a                                            ; $54e7: $8f
	add h                                            ; $54e8: $84
	adc a                                            ; $54e9: $8f
	ld b, h                                          ; $54ea: $44
	add h                                            ; $54eb: $84
	ld c, a                                          ; $54ec: $4f
	inc bc                                           ; $54ed: $03
	ld b, b                                          ; $54ee: $40
	ld b, b                                          ; $54ef: $40
	ld e, a                                          ; $54f0: $5f
	ldh a, [$ce]                                     ; $54f1: $f0 $ce
	ldh [$5c], a                                     ; $54f3: $e0 $5c
	ret nz                                           ; $54f5: $c0

	ld e, b                                          ; $54f6: $58
	ret nz                                           ; $54f7: $c0

	ld b, b                                          ; $54f8: $40
	ret nz                                           ; $54f9: $c0

	rst SubAFromDE                                          ; $54fa: $df
	add b                                            ; $54fb: $80
	sub [hl]                                         ; $54fc: $96
	ldh [$80], a                                     ; $54fd: $e0 $80
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
	cp $03                                           ; $5501: $fe $03

jr_011_5503:
	ld a, [hl]                                       ; $5503: $7e
	inc bc                                           ; $5504: $03
	rra                                              ; $5505: $1f
	sbc $03                                          ; $5506: $de $03
	add d                                            ; $5508: $82
	ld [bc], a                                       ; $5509: $02
	inc bc                                           ; $550a: $03
	jr nz, jr_011_550e                               ; $550b: $20 $01

	inc sp                                           ; $550d: $33

jr_011_550e:
	ld bc, $1038                                     ; $550e: $01 $38 $10
	ccf                                              ; $5511: $3f
	jr c, jr_011_5503                                ; $5512: $38 $ef

	db $fd                                           ; $5514: $fd
	rst AddAOntoHL                                          ; $5515: $ef
	pop hl                                           ; $5516: $e1
	xor a                                            ; $5517: $af
	pop hl                                           ; $5518: $e1
	ld a, $a3                                        ; $5519: $3e $a3
	ld e, [hl]                                       ; $551b: $5e
	ld h, e                                          ; $551c: $63
	cp $c3                                           ; $551d: $fe $c3
	dec a                                            ; $551f: $3d
	rlca                                             ; $5520: $07
	ld b, a                                          ; $5521: $47
	rst $38                                          ; $5522: $ff
	rst SubAFromBC                                          ; $5523: $e7
	ld a, a                                          ; $5524: $7f
	rst AddAOntoHL                                          ; $5525: $ef
	ld a, e                                          ; $5526: $7b
	cp $d9                                           ; $5527: $fe $d9
	rst $38                                          ; $5529: $ff
	adc a                                            ; $552a: $8f
	xor c                                            ; $552b: $a9
	call c, $dca9                                    ; $552c: $dc $a9 $dc
	ld d, c                                          ; $552f: $51
	db $ec                                           ; $5530: $ec
	ld d, a                                          ; $5531: $57
	ld l, h                                          ; $5532: $6c
	ld [hl], $6d                                     ; $5533: $36 $6d
	add b                                            ; $5535: $80
	ccf                                              ; $5536: $3f
	ld d, d                                          ; $5537: $52
	sbc a                                            ; $5538: $9f
	xor d                                            ; $5539: $aa
	rst SubAFromDE                                          ; $553a: $df
	db $dd                                           ; $553b: $dd
	ld b, b                                          ; $553c: $40
	sbc [hl]                                         ; $553d: $9e
	ld h, b                                          ; $553e: $60
	ld a, e                                          ; $553f: $7b
	cp $97                                           ; $5540: $fe $97
	ld [hl], b                                       ; $5542: $70
	ldh [$78], a                                     ; $5543: $e0 $78
	ldh a, [$9c]                                     ; $5545: $f0 $9c
	ld hl, sp-$61                                    ; $5547: $f8 $9f
	or $fd                                           ; $5549: $f6 $fd
	sbc e                                            ; $554b: $9b
	ld bc, $0002                                     ; $554c: $01 $02 $00
	ld bc, $9df9                                     ; $554f: $01 $f9 $9d
	jr c, jr_011_55b4                                ; $5552: $38 $60

	db $fd                                           ; $5554: $fd
	sbc b                                            ; $5555: $98
	sub b                                            ; $5556: $90
	ldh a, [rAUD4ENV]                                ; $5557: $f0 $21
	nop                                              ; $5559: $00
	ld h, c                                          ; $555a: $61
	nop                                              ; $555b: $00
	inc bc                                           ; $555c: $03
	ld a, e                                          ; $555d: $7b
	cp $90                                           ; $555e: $fe $90
	ld a, l                                          ; $5560: $7d
	rlca                                             ; $5561: $07
	ld a, c                                          ; $5562: $79
	rrca                                             ; $5563: $0f
	ld hl, sp+$0f                                    ; $5564: $f8 $0f
	ldh a, [$1f]                                     ; $5566: $f0 $1f
	ldh a, [$1f]                                     ; $5568: $f0 $1f

jr_011_556a:
	add sp, $3f                                      ; $556a: $e8 $3f
	ret z                                            ; $556c: $c8

	ld a, a                                          ; $556d: $7f
	sbc b                                            ; $556e: $98
	ret nc                                           ; $556f: $d0

	rst $38                                          ; $5570: $ff
	sub [hl]                                         ; $5571: $96
	sub $ef                                          ; $5572: $d6 $ef
	db $eb                                           ; $5574: $eb
	rst FarCall                                          ; $5575: $f7
	push af                                          ; $5576: $f5
	ei                                               ; $5577: $fb
	ei                                               ; $5578: $fb
	db $fd                                           ; $5579: $fd
	db $fd                                           ; $557a: $fd
	call c, $98ff                                    ; $557b: $dc $ff $98
	cp $ff                                           ; $557e: $fe $ff
	sbc a                                            ; $5580: $9f
	pop af                                           ; $5581: $f1
	ld e, a                                          ; $5582: $5f
	ldh a, [$3f]                                     ; $5583: $f0 $3f
	ld a, e                                          ; $5585: $7b
	pop de                                           ; $5586: $d1
	add b                                            ; $5587: $80
	sbc a                                            ; $5588: $9f
	ldh a, [$fa]                                     ; $5589: $f0 $fa
	ldh a, [$aa]                                     ; $558b: $f0 $aa
	ldh a, [$aa]                                     ; $558d: $f0 $aa
	ld hl, sp-$40                                    ; $558f: $f8 $c0
	add b                                            ; $5591: $80
	jr z, @-$0e                                      ; $5592: $28 $f0

	add l                                            ; $5594: $85
	ld a, [hl]                                       ; $5595: $7e
	jr nz, @+$21                                     ; $5596: $20 $1f

	db $10                                           ; $5598: $10
	rrca                                             ; $5599: $0f
	ld [$0407], sp                                   ; $559a: $08 $07 $04
	inc bc                                           ; $559d: $03
	ld bc, $0100                                     ; $559e: $01 $00 $01
	rlca                                             ; $55a1: $07
	rlca                                             ; $55a2: $07
	rrca                                             ; $55a3: $0f
	rra                                              ; $55a4: $1f
	ccf                                              ; $55a5: $3f
	rst $38                                          ; $55a6: $ff
	sub c                                            ; $55a7: $91
	rst $38                                          ; $55a8: $ff
	rrca                                             ; $55a9: $0f
	db $fc                                           ; $55aa: $fc
	rrca                                             ; $55ab: $0f
	cp $07                                           ; $55ac: $fe $07
	cp $07                                           ; $55ae: $fe $07
	rst $38                                          ; $55b0: $ff
	inc e                                            ; $55b1: $1c
	rst $38                                          ; $55b2: $ff
	dec a                                            ; $55b3: $3d

jr_011_55b4:
	rst $38                                          ; $55b4: $ff
	ld a, l                                          ; $55b5: $7d
	sbc $ff                                          ; $55b6: $de $ff
	sbc h                                            ; $55b8: $9c
	rrca                                             ; $55b9: $0f
	rst $38                                          ; $55ba: $ff
	nop                                              ; $55bb: $00
	ld [hl], e                                       ; $55bc: $73
	cp $d9                                           ; $55bd: $fe $d9
	rst $38                                          ; $55bf: $ff
	rst SubAFromDE                                          ; $55c0: $df
	cp $99                                           ; $55c1: $fe $99
	inc c                                            ; $55c3: $0c
	db $fc                                           ; $55c4: $fc
	nop                                              ; $55c5: $00
	ld hl, sp+$00                                    ; $55c6: $f8 $00
	ldh a, [$3c]                                     ; $55c8: $f0 $3c
	ld [bc], a                                       ; $55ca: $02
	add b                                            ; $55cb: $80
	add hl, bc                                       ; $55cc: $09
	ld b, $13                                        ; $55cd: $06 $13
	inc c                                            ; $55cf: $0c
	ld h, $18                                        ; $55d0: $26 $18
	ld c, $71                                        ; $55d2: $0e $71
	sbc h                                            ; $55d4: $9c
	db $e3                                           ; $55d5: $e3
	pop af                                           ; $55d6: $f1
	rst GetHLinHL                                          ; $55d7: $cf
	add a                                            ; $55d8: $87
	rst $38                                          ; $55d9: $ff
	ld sp, hl                                        ; $55da: $f9
	rst $38                                          ; $55db: $ff
	add l                                            ; $55dc: $85
	jr c, jr_011_560a                                ; $55dd: $38 $2b

	ld [hl], b                                       ; $55df: $70
	ld d, d                                          ; $55e0: $52
	pop hl                                           ; $55e1: $e1
	and [hl]                                         ; $55e2: $a6
	pop bc                                           ; $55e3: $c1
	add l                                            ; $55e4: $85
	jp nz, $8040                                     ; $55e5: $c2 $40 $80

	jr jr_011_556a                                   ; $55e8: $18 $80

	sbc h                                            ; $55ea: $9c
	add b                                            ; $55eb: $80
	nop                                              ; $55ec: $00
	rra                                              ; $55ed: $1f
	ldh [$27], a                                     ; $55ee: $e0 $27
	ret nz                                           ; $55f0: $c0

	ld c, d                                          ; $55f1: $4a
	add h                                            ; $55f2: $84
	sub l                                            ; $55f3: $95
	ld [$1920], sp                                   ; $55f4: $08 $20 $19
	add hl, bc                                       ; $55f7: $09
	jr nc, jr_011_563a                               ; $55f8: $30 $40

	jr nc, @-$6a                                     ; $55fa: $30 $94

	ld h, b                                          ; $55fc: $60
	and a                                            ; $55fd: $a7
	ld a, b                                          ; $55fe: $78

Call_011_55ff:
	jr jr_011_5680                                   ; $55ff: $18 $7f

	jp Jump_011_4c3c                                 ; $5601: $c3 $3c $4c


	or e                                             ; $5604: $b3
	rst AddAOntoHL                                          ; $5605: $ef
	jr nc, jr_011_5684                               ; $5606: $30 $7c

	ld [hl+], a                                      ; $5608: $22
	dec c                                            ; $5609: $0d

jr_011_560a:
	ld h, d                                          ; $560a: $62
	sbc b                                            ; $560b: $98
	ld [$fc41], a                                    ; $560c: $ea $41 $fc
	inc bc                                           ; $560f: $03
	ld a, [hl]                                       ; $5610: $7e
	add c                                            ; $5611: $81
	rst FarCall                                          ; $5612: $f7
	cp a                                             ; $5613: $bf
	db $db                                           ; $5614: $db
	ld l, l                                          ; $5615: $6d
	add b                                            ; $5616: $80
	add b                                            ; $5617: $80
	or d                                             ; $5618: $b2
	ld b, h                                          ; $5619: $44
	sub b                                            ; $561a: $90
	ld h, d                                          ; $561b: $62
	ld c, e                                          ; $561c: $4b
	jr nc, jr_011_5697                               ; $561d: $30 $78

	add a                                            ; $561f: $87
	ld a, $c3                                        ; $5620: $3e $c3
	sbc c                                            ; $5622: $99
	rst SubAFromBC                                          ; $5623: $e7
	ld b, b                                          ; $5624: $40
	rst $38                                          ; $5625: $ff
	and b                                            ; $5626: $a0
	ld a, a                                          ; $5627: $7f
	or b                                             ; $5628: $b0
	ld a, a                                          ; $5629: $7f
	sbc b                                            ; $562a: $98
	ld a, a                                          ; $562b: $7f
	ld d, h                                          ; $562c: $54
	ccf                                              ; $562d: $3f
	ld e, $e3                                        ; $562e: $1e $e3
	ld [hl], d                                       ; $5630: $72
	add e                                            ; $5631: $83
	inc bc                                           ; $5632: $03
	cp $de                                           ; $5633: $fe $de
	ldh [c], a                                       ; $5635: $e2
	add b                                            ; $5636: $80
	adc d                                            ; $5637: $8a
	ld b, $75                                        ; $5638: $06 $75

jr_011_563a:
	adc [hl]                                         ; $563a: $8e
	push bc                                          ; $563b: $c5
	cp $39                                           ; $563c: $fe $39
	cp $35                                           ; $563e: $fe $35
	ld [$106b], sp                                   ; $5640: $08 $6b $10
	ld l, d                                          ; $5643: $6a
	ld de, $31c6                                     ; $5644: $11 $c6 $31
	or l                                             ; $5647: $b5
	ld h, e                                          ; $5648: $63
	cp l                                             ; $5649: $bd
	ld h, e                                          ; $564a: $63
	ld e, d                                          ; $564b: $5a
	rst SubAFromBC                                          ; $564c: $e7
	ld d, d                                          ; $564d: $52
	rst AddAOntoHL                                          ; $564e: $ef
	ld c, d                                          ; $564f: $4a
	db $e4                                           ; $5650: $e4
	ld b, c                                          ; $5651: $41
	db $ec                                           ; $5652: $ec
	or h                                             ; $5653: $b4
	ret                                              ; $5654: $c9


	xor d                                            ; $5655: $aa
	add b                                            ; $5656: $80
	reti                                             ; $5657: $d9


	ld c, c                                          ; $5658: $49
	cp e                                             ; $5659: $bb
	dec d                                            ; $565a: $15
	ei                                               ; $565b: $fb
	ld a, [de]                                       ; $565c: $1a
	rst FarCall                                          ; $565d: $f7
	ld a, [hl+]                                      ; $565e: $2a
	rst FarCall                                          ; $565f: $f7
	ld c, d                                          ; $5660: $4a
	pop bc                                           ; $5661: $c1
	ld c, b                                          ; $5662: $48
	pop bc                                           ; $5663: $c1
	sub b                                            ; $5664: $90
	ret                                              ; $5665: $c9


	sub h                                            ; $5666: $94
	ret                                              ; $5667: $c9


	cp b                                             ; $5668: $b8
	call $ddaa                                       ; $5669: $cd $aa $dd
	xor [hl]                                         ; $566c: $ae
	db $dd                                           ; $566d: $dd
	ld c, h                                          ; $566e: $4c
	rst $38                                          ; $566f: $ff
	ld h, h                                          ; $5670: $64
	add hl, de                                       ; $5671: $19
	and l                                            ; $5672: $a5
	jr jr_011_5697                                   ; $5673: $18 $22

	sbc h                                            ; $5675: $9c
	add b                                            ; $5676: $80
	jr nc, @-$70                                     ; $5677: $30 $8e

	ld d, l                                          ; $5679: $55
	adc [hl]                                         ; $567a: $8e
	sub h                                            ; $567b: $94
	rst GetHLinHL                                          ; $567c: $cf
	and d                                            ; $567d: $a2
	rst GetHLinHL                                          ; $567e: $cf
	ld b, d                                          ; $567f: $42

jr_011_5680:
	rst AddAOntoHL                                          ; $5680: $ef
	ld d, d                                          ; $5681: $52
	ccf                                              ; $5682: $3f
	pop de                                           ; $5683: $d1

jr_011_5684:
	ccf                                              ; $5684: $3f
	ld c, b                                          ; $5685: $48
	cp a                                             ; $5686: $bf
	adc b                                            ; $5687: $88
	ld a, a                                          ; $5688: $7f
	ld [$487f], sp                                   ; $5689: $08 $7f $48
	ccf                                              ; $568c: $3f
	call z, Call_011_4b3f                            ; $568d: $cc $3f $4b
	cp a                                             ; $5690: $bf
	adc b                                            ; $5691: $88
	rst $38                                          ; $5692: $ff
	ret z                                            ; $5693: $c8

	rst $38                                          ; $5694: $ff
	or c                                             ; $5695: $b1
	add b                                            ; $5696: $80

jr_011_5697:
	rst $38                                          ; $5697: $ff
	db $d3                                           ; $5698: $d3
	rst $38                                          ; $5699: $ff
	push hl                                          ; $569a: $e5
	rst $38                                          ; $569b: $ff
	set 7, a                                         ; $569c: $cb $ff
	sbc a                                            ; $569e: $9f
	rst $38                                          ; $569f: $ff
	ld [hl], a                                       ; $56a0: $77
	di                                               ; $56a1: $f3
	ld b, h                                          ; $56a2: $44
	rst $38                                          ; $56a3: $ff
	adc h                                            ; $56a4: $8c
	rst $38                                          ; $56a5: $ff
	sbc c                                            ; $56a6: $99
	rst $38                                          ; $56a7: $ff
	dec sp                                           ; $56a8: $3b
	rst AddAOntoHL                                          ; $56a9: $ef
	ld [hl], h                                       ; $56aa: $74
	rst $38                                          ; $56ab: $ff
	cp e                                             ; $56ac: $bb
	db $fd                                           ; $56ad: $fd
	ld a, [$f767]                                    ; $56ae: $fa $67 $f7
	adc a                                            ; $56b1: $8f
	ld h, l                                          ; $56b2: $65
	cp $a7                                           ; $56b3: $fe $a7
	db $fc                                           ; $56b5: $fc
	add b                                            ; $56b6: $80
	ld c, e                                          ; $56b7: $4b
	db $fc                                           ; $56b8: $fc
	sub $f8                                          ; $56b9: $d6 $f8
	cp h                                             ; $56bb: $bc
	ld hl, sp+$5c                                    ; $56bc: $f8 $5c
	ldh [$b0], a                                     ; $56be: $e0 $b0
	ret nz                                           ; $56c0: $c0

	ret c                                            ; $56c1: $d8

	ldh [$ca], a                                     ; $56c2: $e0 $ca
	ld a, a                                          ; $56c4: $7f
	xor d                                            ; $56c5: $aa
	ld a, a                                          ; $56c6: $7f
	ld h, a                                          ; $56c7: $67
	dec a                                            ; $56c8: $3d
	scf                                              ; $56c9: $37
	dec e                                            ; $56ca: $1d
	dec c                                            ; $56cb: $0d
	ld e, $1d                                        ; $56cc: $1e $1d
	rrca                                             ; $56ce: $0f
	inc c                                            ; $56cf: $0c
	rlca                                             ; $56d0: $07
	jr @+$09                                         ; $56d1: $18 $07

	ld b, e                                          ; $56d3: $43
	rst FarCall                                          ; $56d4: $f7
	ld h, c                                          ; $56d5: $61
	adc c                                            ; $56d6: $89
	rst FarCall                                          ; $56d7: $f7
	ld hl, $30ff                                     ; $56d8: $21 $ff $30
	rst $38                                          ; $56db: $ff
	xor b                                            ; $56dc: $a8
	rst $38                                          ; $56dd: $ff
	db $fc                                           ; $56de: $fc
	rst $38                                          ; $56df: $ff
	ld [hl], $ff                                     ; $56e0: $36 $ff
	pop de                                           ; $56e2: $d1
	ccf                                              ; $56e3: $3f
	inc h                                            ; $56e4: $24
	rst SubAFromDE                                          ; $56e5: $df
	inc h                                            ; $56e6: $24
	rst SubAFromDE                                          ; $56e7: $df
	add h                                            ; $56e8: $84
	rst $38                                          ; $56e9: $ff
	add a                                            ; $56ea: $87
	rst $38                                          ; $56eb: $ff
	ld b, d                                          ; $56ec: $42
	ld a, e                                          ; $56ed: $7b
	cp $80                                           ; $56ee: $fe $80
	and d                                            ; $56f0: $a2
	rst $38                                          ; $56f1: $ff
	ld d, e                                          ; $56f2: $53
	rst $38                                          ; $56f3: $ff
	db $fd                                           ; $56f4: $fd
	rst SubAFromBC                                          ; $56f5: $e7
	db $fd                                           ; $56f6: $fd
	pop hl                                           ; $56f7: $e1
	push af                                          ; $56f8: $f5
	pop hl                                           ; $56f9: $e1
	di                                               ; $56fa: $f3
	rst FarCall                                          ; $56fb: $f7
	xor l                                            ; $56fc: $ad
	ld sp, hl                                        ; $56fd: $f9
	ld c, [hl]                                       ; $56fe: $4e
	db $fc                                           ; $56ff: $fc
	sub a                                            ; $5700: $97
	rst SubAFromDE                                          ; $5701: $df
	inc h                                            ; $5702: $24
	rst AddAOntoHL                                          ; $5703: $ef
	rst SubAFromDE                                          ; $5704: $df
	inc a                                            ; $5705: $3c
	ld hl, sp+$68                                    ; $5706: $f8 $68
	ld a, a                                          ; $5708: $7f
	cpl                                              ; $5709: $2f
	adc e                                            ; $570a: $8b
	cpl                                              ; $570b: $2f
	jr z, @-$6f                                      ; $570c: $28 $8f

	add h                                            ; $570e: $84
	add b                                            ; $570f: $80
	ld b, $cb                                        ; $5710: $06 $cb
	add a                                            ; $5712: $87
	add b                                            ; $5713: $80

jr_011_5714:
	ret nz                                           ; $5714: $c0

	ld hl, sp+$60                                    ; $5715: $f8 $60
	ld hl, sp-$20                                    ; $5717: $f8 $e0
	ldh a, [$e0]                                     ; $5719: $f0 $e0
	ld h, b                                          ; $571b: $60
	ldh [rLCDC], a                                   ; $571c: $e0 $40
	ret nz                                           ; $571e: $c0

	pop bc                                           ; $571f: $c1
	add b                                            ; $5720: $80
	ld h, e                                          ; $5721: $63
	add b                                            ; $5722: $80
	inc bc                                           ; $5723: $03
	ld [bc], a                                       ; $5724: $02
	rra                                              ; $5725: $1f
	inc bc                                           ; $5726: $03
	dec [hl]                                         ; $5727: $35
	rrca                                             ; $5728: $0f
	dec sp                                           ; $5729: $3b
	ld b, $1f                                        ; $572a: $06 $1f
	inc bc                                           ; $572c: $03
	ld a, [bc]                                       ; $572d: $0a
	inc bc                                           ; $572e: $03
	add b                                            ; $572f: $80
	add d                                            ; $5730: $82
	inc bc                                           ; $5731: $03
	pop bc                                           ; $5732: $c1
	ld bc, $01e0                                     ; $5733: $01 $e0 $01
	sbc $e1                                          ; $5736: $de $e1
	rst $38                                          ; $5738: $ff
	jr nc, jr_011_5756                               ; $5739: $30 $1b

	inc e                                            ; $573b: $1c
	rst $38                                          ; $573c: $ff
	cp $d7                                           ; $573d: $fe $d7
	db $fc                                           ; $573f: $fc
	rra                                              ; $5740: $1f
	ldh a, [$b7]                                     ; $5741: $f0 $b7
	jr nz, jr_011_5714                               ; $5743: $20 $cf

	ldh a, [$a9]                                     ; $5745: $f0 $a9
	rst $38                                          ; $5747: $ff
	db $fc                                           ; $5748: $fc
	ld a, a                                          ; $5749: $7f
	db $e3                                           ; $574a: $e3
	ccf                                              ; $574b: $3f
	rst $38                                          ; $574c: $ff
	ccf                                              ; $574d: $3f
	or l                                             ; $574e: $b5
	add e                                            ; $574f: $83
	ld l, a                                          ; $5750: $6f
	call nc, Call_011_546f                           ; $5751: $d4 $6f $54
	rst AddAOntoHL                                          ; $5754: $ef
	db $fc                                           ; $5755: $fc

jr_011_5756:
	rst AddAOntoHL                                          ; $5756: $ef
	xor d                                            ; $5757: $aa
	ld e, a                                          ; $5758: $5f
	ld e, l                                          ; $5759: $5d
	cp e                                             ; $575a: $bb
	xor h                                            ; $575b: $ac
	ld a, c                                          ; $575c: $79
	ld e, a                                          ; $575d: $5f
	add sp, -$56                                     ; $575e: $e8 $aa
	call $3f95                                       ; $5760: $cd $95 $3f
	cpl                                              ; $5763: $2f
	ld a, a                                          ; $5764: $7f
	ld e, a                                          ; $5765: $5f
	db $db                                           ; $5766: $db
	ld b, b                                          ; $5767: $40
	ret nz                                           ; $5768: $c0

	ld h, b                                          ; $5769: $60
	ret nz                                           ; $576a: $c0

	ret nz                                           ; $576b: $c0

	ld a, e                                          ; $576c: $7b
	xor [hl]                                         ; $576d: $ae
	sbc $f0                                          ; $576e: $de $f0
	rst SubAFromDE                                          ; $5770: $df
	ld hl, sp-$21                                    ; $5771: $f8 $df
	db $fc                                           ; $5773: $fc
	sub l                                            ; $5774: $95
	cp $07                                           ; $5775: $fe $07
	ld b, $03                                        ; $5777: $06 $03
	ld [bc], a                                       ; $5779: $02
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	inc b                                            ; $577c: $04
	inc b                                            ; $577d: $04
	rlca                                             ; $577e: $07
	ld [hl], a                                       ; $577f: $77
	ld sp, hl                                        ; $5780: $f9
	rst SubAFromDE                                          ; $5781: $df
	inc bc                                           ; $5782: $03
	cp l                                             ; $5783: $bd
	ldh [$c0], a                                     ; $5784: $e0 $c0
	nop                                              ; $5786: $00
	add b                                            ; $5787: $80
	rst SubAFromDE                                          ; $5788: $df
	add b                                            ; $5789: $80
	cp l                                             ; $578a: $bd
	ld bc, $0383                                     ; $578b: $01 $83 $03
	cp $80                                           ; $578e: $fe $80
	ld bc, $011f                                     ; $5790: $01 $1f $01
	dec a                                            ; $5793: $3d
	inc bc                                           ; $5794: $03
	ld a, a                                          ; $5795: $7f
	inc bc                                           ; $5796: $03
	rst $38                                          ; $5797: $ff
	rlca                                             ; $5798: $07
	rst FarCall                                          ; $5799: $f7
	rrca                                             ; $579a: $0f
	rst AddAOntoHL                                          ; $579b: $ef
	rra                                              ; $579c: $1f
	rst SubAFromDE                                          ; $579d: $df
	ccf                                              ; $579e: $3f
	ld [$d1df], a                                    ; $579f: $ea $df $d1
	cp a                                             ; $57a2: $bf
	ldh a, [rIE]                                     ; $57a3: $f0 $ff
	adc b                                            ; $57a5: $88
	rst $38                                          ; $57a6: $ff
	inc e                                            ; $57a7: $1c
	rst $38                                          ; $57a8: $ff
	ld [hl-], a                                      ; $57a9: $32
	rst $38                                          ; $57aa: $ff
	ld e, c                                          ; $57ab: $59
	rst $38                                          ; $57ac: $ff
	ld d, h                                          ; $57ad: $54
	rst $38                                          ; $57ae: $ff
	sub b                                            ; $57af: $90
	or e                                             ; $57b0: $b3
	db $fd                                           ; $57b1: $fd
	ld e, c                                          ; $57b2: $59
	push af                                          ; $57b3: $f5
	cp e                                             ; $57b4: $bb

jr_011_57b5:
	push de                                          ; $57b5: $d5
	ld de, $5bbf                                     ; $57b6: $11 $bf $5b
	ccf                                              ; $57b9: $3f
	rra                                              ; $57ba: $1f
	ld a, a                                          ; $57bb: $7f
	and e                                            ; $57bc: $a3
	ld [hl], a                                       ; $57bd: $77
	ld b, e                                          ; $57be: $43
	rst SubAFromHL                                          ; $57bf: $d7
	rst $38                                          ; $57c0: $ff
	add b                                            ; $57c1: $80
	db $fd                                           ; $57c2: $fd
	rst $38                                          ; $57c3: $ff
	pop af                                           ; $57c4: $f1
	rst $38                                          ; $57c5: $ff
	pop bc                                           ; $57c6: $c1
	rst $38                                          ; $57c7: $ff
	ld bc, $0080                                     ; $57c8: $01 $80 $00

jr_011_57cb:
	ldh [$80], a                                     ; $57cb: $e0 $80
	ld a, b                                          ; $57cd: $78
	ldh [$cf], a                                     ; $57ce: $e0 $cf
	jr c, jr_011_57b5                                ; $57d0: $38 $e3

	rra                                              ; $57d2: $1f
	jr nz, jr_011_57f4                               ; $57d3: $20 $1f

	db $10                                           ; $57d5: $10
	rrca                                             ; $57d6: $0f
	ld [$0707], sp                                   ; $57d7: $08 $07 $07
	nop                                              ; $57da: $00
	dec c                                            ; $57db: $0d
	inc bc                                           ; $57dc: $03
	scf                                              ; $57dd: $37
	rrca                                             ; $57de: $0f
	pop hl                                           ; $57df: $e1
	ld a, a                                          ; $57e0: $7f
	sbc l                                            ; $57e1: $9d
	ld bc, $6fff                                     ; $57e2: $01 $ff $6f
	cp $9e                                           ; $57e5: $fe $9e
	ld a, a                                          ; $57e7: $7f
	call c, $9eff                                    ; $57e8: $dc $ff $9e
	cp $7a                                           ; $57eb: $fe $7a
	ldh [c], a                                       ; $57ed: $e2
	ld a, a                                          ; $57ee: $7f
	rst GetHLinHL                                          ; $57ef: $cf
	adc e                                            ; $57f0: $8b
	ei                                               ; $57f1: $fb
	rst $38                                          ; $57f2: $ff
	db $db                                           ; $57f3: $db

jr_011_57f4:
	ccf                                              ; $57f4: $3f
	ld d, l                                          ; $57f5: $55
	ld a, [$fdba]                                    ; $57f6: $fa $ba $fd
	call $93fe                                       ; $57f9: $cd $fe $93
	rst $38                                          ; $57fc: $ff
	xor b                                            ; $57fd: $a8
	or $d4                                           ; $57fe: $f6 $d4
	add sp, -$58                                     ; $5800: $e8 $a8
	ret nc                                           ; $5802: $d0

	ret nc                                           ; $5803: $d0

	and b                                            ; $5804: $a0
	rst AddAOntoHL                                          ; $5805: $ef
	ld bc, $0a9e                                     ; $5806: $01 $9e $0a
	cp l                                             ; $5809: $bd
	inc b                                            ; $580a: $04
	inc c                                            ; $580b: $0c
	ld c, h                                          ; $580c: $4c
	sbc c                                            ; $580d: $99
	sbc l                                            ; $580e: $9d
	add b                                            ; $580f: $80
	add hl, de                                       ; $5810: $19
	cp a                                             ; $5811: $bf
	add hl, sp                                       ; $5812: $39
	inc sp                                           ; $5813: $33
	add b                                            ; $5814: $80
	ld [$0003], sp                                   ; $5815: $08 $03 $00
	ld b, [hl]                                       ; $5818: $46
	ld bc, $0344                                     ; $5819: $01 $44 $03
	adc l                                            ; $581c: $8d
	ld b, d                                          ; $581d: $42
	sbc c                                            ; $581e: $99
	ld b, [hl]                                       ; $581f: $46
	push de                                          ; $5820: $d5
	ld c, $45                                        ; $5821: $0e $45
	sbc [hl]                                         ; $5823: $9e
	dec l                                            ; $5824: $2d
	sbc [hl]                                         ; $5825: $9e
	ld b, c                                          ; $5826: $41
	add b                                            ; $5827: $80
	adc c                                            ; $5828: $89
	nop                                              ; $5829: $00
	adc e                                            ; $582a: $8b
	db $10                                           ; $582b: $10
	ld a, [hl+]                                      ; $582c: $2a
	db $10                                           ; $582d: $10
	ld [bc], a                                       ; $582e: $02
	jr nc, @+$52                                     ; $582f: $30 $50

	ld [hl+], a                                      ; $5831: $22
	or h                                             ; $5832: $b4
	ld h, d                                          ; $5833: $62
	sbc d                                            ; $5834: $9a
	ld c, c                                          ; $5835: $49
	and $c6                                          ; $5836: $e6 $c6
	ld bc, $bf43                                     ; $5838: $01 $43 $bf
	ld d, e                                          ; $583b: $53
	ld b, c                                          ; $583c: $41
	add b                                            ; $583d: $80
	db $10                                           ; $583e: $10
	adc c                                            ; $583f: $89
	ld d, b                                          ; $5840: $50
	add c                                            ; $5841: $81
	ret c                                            ; $5842: $d8

	add l                                            ; $5843: $85
	ret c                                            ; $5844: $d8

	adc b                                            ; $5845: $88
	db $dd                                           ; $5846: $dd
	sub b                                            ; $5847: $90
	nop                                              ; $5848: $00
	jr jr_011_57cb                                   ; $5849: $18 $80

	db $10                                           ; $584b: $10
	adc b                                            ; $584c: $88
	ld d, h                                          ; $584d: $54
	adc b                                            ; $584e: $88
	ld b, h                                          ; $584f: $44
	adc b                                            ; $5850: $88
	ld c, d                                          ; $5851: $4a
	add h                                            ; $5852: $84
	adc d                                            ; $5853: $8a
	call nz, $c6e9                                   ; $5854: $c4 $e9 $c6
	rlca                                             ; $5857: $07
	jr @+$15                                         ; $5858: $18 $13

	inc c                                            ; $585a: $0c
	sub a                                            ; $585b: $97
	inc c                                            ; $585c: $0c
	add e                                            ; $585d: $83
	adc c                                            ; $585e: $89
	ld b, $cb                                        ; $585f: $06 $cb
	ld b, $ca                                        ; $5861: $06 $ca
	rlca                                             ; $5863: $07
	jr nz, jr_011_58ad                               ; $5864: $20 $47

	dec h                                            ; $5866: $25
	ld b, e                                          ; $5867: $43
	inc sp                                           ; $5868: $33
	ld [$0976], sp                                   ; $5869: $08 $76 $09
	or $09                                           ; $586c: $f6 $09
	and $19                                          ; $586e: $e6 $19
	ld h, [hl]                                       ; $5870: $66
	sbc c                                            ; $5871: $99
	ld h, h                                          ; $5872: $64
	sbc e                                            ; $5873: $9b
	xor l                                            ; $5874: $ad
	db $db                                           ; $5875: $db
	xor c                                            ; $5876: $a9
	rst SubAFromDE                                          ; $5877: $df
	inc e                                            ; $5878: $1c
	or a                                             ; $5879: $b7
	ld a, e                                          ; $587a: $7b
	cp $9d                                           ; $587b: $fe $9d
	rst SubAFromBC                                          ; $587d: $e7
	dec a                                            ; $587e: $3d
	ld [hl], a                                       ; $587f: $77
	cp $80                                           ; $5880: $fe $80
	rst JumpTable                                          ; $5882: $c7
	ld h, a                                          ; $5883: $67
	sbc $47                                          ; $5884: $de $47
	cp $44                                           ; $5886: $fe $44
	rst $38                                          ; $5888: $ff
	call z, $ccff                                    ; $5889: $cc $ff $cc
	ld a, e                                          ; $588c: $7b
	db $dd                                           ; $588d: $dd
	ld [hl], e                                       ; $588e: $73
	db $dd                                           ; $588f: $dd
	ld [hl], e                                       ; $5890: $73
	cp l                                             ; $5891: $bd
	inc hl                                           ; $5892: $23
	cp a                                             ; $5893: $bf
	inc hl                                           ; $5894: $23
	dec sp                                           ; $5895: $3b
	inc bc                                           ; $5896: $03
	adc b                                            ; $5897: $88
	rst SubAFromDE                                          ; $5898: $df
	adc h                                            ; $5899: $8c
	rst FarCall                                          ; $589a: $f7
	call z, $ce77                                    ; $589b: $cc $77 $ce
	ld [hl], e                                       ; $589e: $73
	adc $73                                          ; $589f: $ce $73
	add b                                            ; $58a1: $80
	ld l, [hl]                                       ; $58a2: $6e
	ld sp, $316e                                     ; $58a3: $31 $6e $31
	or l                                             ; $58a6: $b5
	dec de                                           ; $58a7: $1b
	jp nz, $e2a7                                     ; $58a8: $c2 $a7 $e2

	or a                                             ; $58ab: $b7
	pop hl                                           ; $58ac: $e1

jr_011_58ad:
	or a                                             ; $58ad: $b7
	pop af                                           ; $58ae: $f1
	sbc e                                            ; $58af: $9b
	ldh a, [$9b]                                     ; $58b0: $f0 $9b
	sbc b                                            ; $58b2: $98
	rst AddAOntoHL                                          ; $58b3: $ef
	add h                                            ; $58b4: $84
	rst $38                                          ; $58b5: $ff
	db $fc                                           ; $58b6: $fc
	rst $38                                          ; $58b7: $ff
	ld d, l                                          ; $58b8: $55
	inc hl                                           ; $58b9: $23
	push de                                          ; $58ba: $d5
	inc hl                                           ; $58bb: $23
	ld l, l                                          ; $58bc: $6d
	sub e                                            ; $58bd: $93
	ld l, l                                          ; $58be: $6d
	sub e                                            ; $58bf: $93
	or l                                             ; $58c0: $b5
	sub l                                            ; $58c1: $95
	set 2, c                                         ; $58c2: $cb $d1
	rst AddAOntoHL                                          ; $58c4: $ef
	xor l                                            ; $58c5: $ad
	rst FarCall                                          ; $58c6: $f7
	dec d                                            ; $58c7: $15
	rst $38                                          ; $58c8: $ff
	adc c                                            ; $58c9: $89
	rst $38                                          ; $58ca: $ff
	ld b, h                                          ; $58cb: $44
	ld a, e                                          ; $58cc: $7b
	cp $80                                           ; $58cd: $fe $80
	ld h, h                                          ; $58cf: $64
	rst $38                                          ; $58d0: $ff
	or d                                             ; $58d1: $b2
	rst $38                                          ; $58d2: $ff
	cp d                                             ; $58d3: $ba
	rst $38                                          ; $58d4: $ff
	rst SubAFromDE                                          ; $58d5: $df
	db $fd                                           ; $58d6: $fd
	db $fd                                           ; $58d7: $fd
	db $fc                                           ; $58d8: $fc
	ld a, [hl]                                       ; $58d9: $7e
	rst $38                                          ; $58da: $ff
	rst $38                                          ; $58db: $ff
	push bc                                          ; $58dc: $c5
	rst $38                                          ; $58dd: $ff
	call nz, $40ff                                   ; $58de: $c4 $ff $40
	rst $38                                          ; $58e1: $ff
	ld b, a                                          ; $58e2: $47
	cp $0f                                           ; $58e3: $fe $0f
	or [hl]                                          ; $58e5: $b6
	inc a                                            ; $58e6: $3c
	rst SubAFromHL                                          ; $58e7: $d7
	sub a                                            ; $58e8: $97
	cp e                                             ; $58e9: $bb
	ld bc, $8131                                     ; $58ea: $01 $31 $81
	pop de                                           ; $58ed: $d1
	add b                                            ; $58ee: $80
	ld b, b                                          ; $58ef: $40
	ld hl, sp+$00                                    ; $58f0: $f8 $00
	ld hl, sp-$80                                    ; $58f2: $f8 $80
	ld a, h                                          ; $58f4: $7c
	ldh [$3c], a                                     ; $58f5: $e0 $3c
	ld [hl], b                                       ; $58f7: $70
	ld hl, sp-$20                                    ; $58f8: $f8 $e0
	or e                                             ; $58fa: $b3
	rrca                                             ; $58fb: $0f
	sbc a                                            ; $58fc: $9f
	inc c                                            ; $58fd: $0c
	rst GetHLinHL                                          ; $58fe: $cf
	add b                                            ; $58ff: $80
	rst SubAFromDE                                          ; $5900: $df
	nop                                              ; $5901: $00
	ld a, a                                          ; $5902: $7f
	ld bc, $033e                                     ; $5903: $01 $3e $03
	inc e                                            ; $5906: $1c
	ld b, $0c                                        ; $5907: $06 $0c
	nop                                              ; $5909: $00
	cp $c3                                           ; $590a: $fe $c3
	rst $38                                          ; $590c: $ff
	ld b, c                                          ; $590d: $41
	add d                                            ; $590e: $82
	rst $38                                          ; $590f: $ff
	nop                                              ; $5910: $00
	rst $38                                          ; $5911: $ff
	ld a, b                                          ; $5912: $78
	rst $38                                          ; $5913: $ff
	adc $8f                                          ; $5914: $ce $8f
	adc a                                            ; $5916: $8f
	cp a                                             ; $5917: $bf
	cp [hl]                                          ; $5918: $be
	or a                                             ; $5919: $b7
	db $fc                                           ; $591a: $fc
	ld c, a                                          ; $591b: $4f
	rst $38                                          ; $591c: $ff
	ld bc, $a1ff                                     ; $591d: $01 $ff $a1
	rst AddAOntoHL                                          ; $5920: $ef
	ldh [c], a                                       ; $5921: $e2
	ld l, [hl]                                       ; $5922: $6e
	db $e3                                           ; $5923: $e3
	inc l                                            ; $5924: $2c
	push hl                                          ; $5925: $e5
	inc c                                            ; $5926: $0c
	rst FarCall                                          ; $5927: $f7
	jr @+$01                                         ; $5928: $18 $ff

	jr @-$01                                         ; $592a: $18 $fd

	db $dd                                           ; $592c: $dd
	cp $d6                                           ; $592d: $fe $d6
	rst $38                                          ; $592f: $ff
	add b                                            ; $5930: $80
	push bc                                          ; $5931: $c5
	add a                                            ; $5932: $87
	call nz, $c247                                   ; $5933: $c4 $47 $c2
	ld b, d                                          ; $5936: $42
	ld h, a                                          ; $5937: $67
	ld bc, $a0e0                                     ; $5938: $01 $e0 $a0
	ldh a, [$e0]                                     ; $593b: $f0 $e0
	ldh a, [$f0]                                     ; $593d: $f0 $f0
	ld hl, sp-$10                                    ; $593f: $f8 $f0
	or b                                             ; $5941: $b0
	ldh [rAUD4LEN], a                                ; $5942: $e0 $20
	ldh [$63], a                                     ; $5944: $e0 $63
	ld b, b                                          ; $5946: $40
	di                                               ; $5947: $f3
	add b                                            ; $5948: $80
	rlca                                             ; $5949: $07
	ld [bc], a                                       ; $594a: $02
	rlca                                             ; $594b: $07
	ld b, $03                                        ; $594c: $06 $03
	ld [bc], a                                       ; $594e: $02
	nop                                              ; $594f: $00
	cp c                                             ; $5950: $b9
	inc b                                            ; $5951: $04
	nop                                              ; $5952: $00
	ld bc, $c080                                     ; $5953: $01 $80 $c0
	ret nz                                           ; $5956: $c0

	add b                                            ; $5957: $80
	jr c, @-$67                                      ; $5958: $38 $97

	db $10                                           ; $595a: $10
	add a                                            ; $595b: $87
	db $f4                                           ; $595c: $f4
	ld c, a                                          ; $595d: $4f
	add sp, -$01                                     ; $595e: $e8 $ff
	jr nc, jr_011_5963                               ; $5960: $30 $01

	cp h                                             ; $5962: $bc

jr_011_5963:
	rlca                                             ; $5963: $07
	rrca                                             ; $5964: $0f
	rrca                                             ; $5965: $0f
	rra                                              ; $5966: $1f
	cp $91                                           ; $5967: $fe $91
	ld [de], a                                       ; $5969: $12
	rst $38                                          ; $596a: $ff
	inc d                                            ; $596b: $14
	ei                                               ; $596c: $fb
	ld bc, $07fe                                     ; $596d: $01 $fe $07
	db $fc                                           ; $5970: $fc
	rra                                              ; $5971: $1f
	ld hl, sp+$3f                                    ; $5972: $f8 $3f
	add sp, $7f                                      ; $5974: $e8 $7f
	ret z                                            ; $5976: $c8

	ret nc                                           ; $5977: $d0

	rst $38                                          ; $5978: $ff
	sbc $f8                                          ; $5979: $de $f8
	sbc e                                            ; $597b: $9b
	db $fc                                           ; $597c: $fc
	cp $fc                                           ; $597d: $fe $fc
	rst $38                                          ; $597f: $ff
	ld h, e                                          ; $5980: $63
	adc l                                            ; $5981: $8d
	rst $38                                          ; $5982: $ff
	ld a, a                                          ; $5983: $7f
	xor c                                            ; $5984: $a9
	ld l, a                                          ; $5985: $6f
	xor [hl]                                         ; $5986: $ae
	sub [hl]                                         ; $5987: $96
	add b                                            ; $5988: $80
	ret nz                                           ; $5989: $c0

	ret nc                                           ; $598a: $d0

	ldh [$f4], a                                     ; $598b: $e0 $f4
	ld hl, sp-$50                                    ; $598d: $f8 $b0
	ld h, b                                          ; $598f: $60
	and b                                            ; $5990: $a0
	cp h                                             ; $5991: $bc
	nop                                              ; $5992: $00
	ldh [$c0], a                                     ; $5993: $e0 $c0
	ld bc, $8903                                     ; $5995: $01 $03 $89
	ld bc, $060d                                     ; $5998: $01 $0d $06
	rra                                              ; $599b: $1f
	ld bc, $033f                                     ; $599c: $01 $3f $03
	dec a                                            ; $599f: $3d
	rlca                                             ; $59a0: $07
	ld l, c                                          ; $59a1: $69
	rra                                              ; $59a2: $1f
	pop af                                           ; $59a3: $f1
	ccf                                              ; $59a4: $3f
	pop bc                                           ; $59a5: $c1
	ld a, a                                          ; $59a6: $7f
	ld bc, $87ff                                     ; $59a7: $01 $ff $87
	ld a, c                                          ; $59aa: $79
	ret                                              ; $59ab: $c9


	rst $38                                          ; $59ac: $ff
	ld c, c                                          ; $59ad: $49
	ld [hl], e                                       ; $59ae: $73
	cp $9b                                           ; $59af: $fe $9b
	ld e, l                                          ; $59b1: $5d
	rst $38                                          ; $59b2: $ff
	ld a, l                                          ; $59b3: $7d
	rst $38                                          ; $59b4: $ff
	ld a, d                                          ; $59b5: $7a
	db $f4                                           ; $59b6: $f4
	call nz, Call_011_7fff                           ; $59b7: $c4 $ff $7f
	sbc e                                            ; $59ba: $9b
	ld a, a                                          ; $59bb: $7f
	sub a                                            ; $59bc: $97
	ld [hl], a                                       ; $59bd: $77
	sub [hl]                                         ; $59be: $96
	adc [hl]                                         ; $59bf: $8e
	di                                               ; $59c0: $f3
	cp $c2                                           ; $59c1: $fe $c2
	cp $82                                           ; $59c3: $fe $82
	cp $02                                           ; $59c5: $fe $02
	cp $06                                           ; $59c7: $fe $06
	db $fc                                           ; $59c9: $fc
	ld c, $f8                                        ; $59ca: $0e $f8
	rst FarCall                                          ; $59cc: $f7
	jr c, @-$3f                                      ; $59cd: $38 $bf

	ret nz                                           ; $59cf: $c0

	rst $38                                          ; $59d0: $ff
	cp e                                             ; $59d1: $bb
	rrca                                             ; $59d2: $0f
	rlca                                             ; $59d3: $07
	rlca                                             ; $59d4: $07
	rrca                                             ; $59d5: $0f
	rrca                                             ; $59d6: $0f
	rst $38                                          ; $59d7: $ff
	ld a, a                                          ; $59d8: $7f
	xor e                                            ; $59d9: $ab
	cp [hl]                                          ; $59da: $be
	rst $38                                          ; $59db: $ff
	rst $38                                          ; $59dc: $ff
	rst $38                                          ; $59dd: $ff
	adc [hl]                                         ; $59de: $8e
	inc bc                                           ; $59df: $03
	db $fc                                           ; $59e0: $fc
	rrca                                             ; $59e1: $0f
	ldh a, [$3f]                                     ; $59e2: $f0 $3f
	ret nz                                           ; $59e4: $c0

	rst $38                                          ; $59e5: $ff
	ld a, a                                          ; $59e6: $7f
	rst $38                                          ; $59e7: $ff
	ccf                                              ; $59e8: $3f
	rst $38                                          ; $59e9: $ff
	sbc a                                            ; $59ea: $9f
	rst $38                                          ; $59eb: $ff
	adc a                                            ; $59ec: $8f
	rst $38                                          ; $59ed: $ff
	ld b, $fe                                        ; $59ee: $06 $fe
	cp [hl]                                          ; $59f0: $be
	db $fc                                           ; $59f1: $fc
	ld hl, sp-$10                                    ; $59f2: $f8 $f0
	ld sp, $8002                                     ; $59f4: $31 $02 $80
	add hl, bc                                       ; $59f7: $09
	nop                                              ; $59f8: $00
	ld [de], a                                       ; $59f9: $12
	ld bc, $0225                                     ; $59fa: $01 $25 $02
	ld a, [bc]                                       ; $59fd: $0a
	ld b, h                                          ; $59fe: $44
	ld d, h                                          ; $59ff: $54
	adc b                                            ; $5a00: $88
	ld l, c                                          ; $5a01: $69
	sub b                                            ; $5a02: $90
	db $10                                           ; $5a03: $10
	and c                                            ; $5a04: $a1
	ld d, d                                          ; $5a05: $52
	and c                                            ; $5a06: $a1
	rrca                                             ; $5a07: $0f
	ld sp, hl                                        ; $5a08: $f9
	ld e, $f3                                        ; $5a09: $1e $f3
	inc [hl]                                         ; $5a0b: $34
	ld h, d                                          ; $5a0c: $62
	xor l                                            ; $5a0d: $ad
	ld b, h                                          ; $5a0e: $44
	ld h, [hl]                                       ; $5a0f: $66
	ret                                              ; $5a10: $c9


	ld e, d                                          ; $5a11: $5a
	adc c                                            ; $5a12: $89
	ld c, c                                          ; $5a13: $49
	sbc e                                            ; $5a14: $9b
	ret                                              ; $5a15: $c9


	sub e                                            ; $5a16: $93
	sbc e                                            ; $5a17: $9b
	inc c                                            ; $5a18: $0c
	rst $38                                          ; $5a19: $ff
	db $10                                           ; $5a1a: $10
	ld a, h                                          ; $5a1b: $7c
	ld h, $ff                                        ; $5a1c: $26 $ff
	ld a, a                                          ; $5a1e: $7f
	sbc c                                            ; $5a1f: $99
	pop hl                                           ; $5a20: $e1
	add c                                            ; $5a21: $81
	ret nz                                           ; $5a22: $c0

	cp [hl]                                          ; $5a23: $be
	ret nz                                           ; $5a24: $c0

	ret nz                                           ; $5a25: $c0

	add b                                            ; $5a26: $80
	add b                                            ; $5a27: $80
	sbc $48                                          ; $5a28: $de $48
	xor $44                                          ; $5a2a: $ee $44
	ld l, a                                          ; $5a2c: $6f
	ld [hl+], a                                      ; $5a2d: $22
	or a                                             ; $5a2e: $b7
	ld [hl-], a                                      ; $5a2f: $32
	or a                                             ; $5a30: $b7
	or c                                             ; $5a31: $b1
	xor e                                            ; $5a32: $ab
	cp c                                             ; $5a33: $b9
	db $eb                                           ; $5a34: $eb
	cp b                                             ; $5a35: $b8
	db $ed                                           ; $5a36: $ed
	xor h                                            ; $5a37: $ac
	jp $c364                                         ; $5a38: $c3 $64 $c3


	ld d, h                                          ; $5a3b: $54
	ld h, e                                          ; $5a3c: $63
	ld h, $71                                        ; $5a3d: $26 $71
	xor d                                            ; $5a3f: $aa
	ld sp, $b912                                     ; $5a40: $31 $12 $b9
	ld [hl], l                                       ; $5a43: $75
	sbc b                                            ; $5a44: $98
	adc e                                            ; $5a45: $8b
	call c, $3b80                                    ; $5a46: $dc $80 $3b
	call nz, $e619                                   ; $5a49: $c4 $19 $e6
	dec e                                            ; $5a4c: $1d
	ldh [c], a                                       ; $5a4d: $e2
	inc l                                            ; $5a4e: $2c
	di                                               ; $5a4f: $f3
	inc c                                            ; $5a50: $0c
	di                                               ; $5a51: $f3
	inc b                                            ; $5a52: $04
	ei                                               ; $5a53: $fb
	inc d                                            ; $5a54: $14
	ei                                               ; $5a55: $fb
	nop                                              ; $5a56: $00
	rst $38                                          ; $5a57: $ff
	and d                                            ; $5a58: $a2
	pop bc                                           ; $5a59: $c1
	and [hl]                                         ; $5a5a: $a6
	pop bc                                           ; $5a5b: $c1
	and h                                            ; $5a5c: $a4
	jp $c3f4                                         ; $5a5d: $c3 $f4 $c3


	call nc, $dde3                                   ; $5a60: $d4 $e3 $dd
	db $e3                                           ; $5a63: $e3
	db $ed                                           ; $5a64: $ed
	di                                               ; $5a65: $f3
	db $ed                                           ; $5a66: $ed
	adc [hl]                                         ; $5a67: $8e
	di                                               ; $5a68: $f3
	adc c                                            ; $5a69: $89
	cp [hl]                                          ; $5a6a: $be
	sbc c                                            ; $5a6b: $99
	or [hl]                                          ; $5a6c: $b6
	sbc l                                            ; $5a6d: $9d
	or a                                             ; $5a6e: $b7
	sbc h                                            ; $5a6f: $9c
	ld [hl], a                                       ; $5a70: $77
	sbc [hl]                                         ; $5a71: $9e
	ld h, e                                          ; $5a72: $63
	reti                                             ; $5a73: $d9


	ld h, c                                          ; $5a74: $61
	ret c                                            ; $5a75: $d8

	ld h, b                                          ; $5a76: $60
	ldh [$3e], a                                     ; $5a77: $e0 $3e
	ld l, a                                          ; $5a79: $6f
	xor d                                            ; $5a7a: $aa
	add b                                            ; $5a7b: $80
	ldh [rP1], a                                     ; $5a7c: $e0 $00

jr_011_5a7e:
	pop hl                                           ; $5a7e: $e1
	add b                                            ; $5a7f: $80
	ld [hl], e                                       ; $5a80: $73
	add c                                            ; $5a81: $81
	ret nc                                           ; $5a82: $d0

	ld b, c                                          ; $5a83: $41
	ld l, c                                          ; $5a84: $69
	ld hl, $e5bc                                     ; $5a85: $21 $bc $e5
	cp h                                             ; $5a88: $bc
	rst SubAFromBC                                          ; $5a89: $e7
	or $c3                                           ; $5a8a: $f6 $c3
	pop af                                           ; $5a8c: $f1
	rst GetHLinHL                                          ; $5a8d: $cf
	rst AddAOntoHL                                          ; $5a8e: $ef
	sbc a                                            ; $5a8f: $9f
	sbc a                                            ; $5a90: $9f
	ld [hl], b                                       ; $5a91: $70
	ld a, a                                          ; $5a92: $7f
	rst SubAFromBC                                          ; $5a93: $e7
	rst $38                                          ; $5a94: $ff
	sbc b                                            ; $5a95: $98
	add h                                            ; $5a96: $84
	rst AddAOntoHL                                          ; $5a97: $ef
	ld b, d                                          ; $5a98: $42
	rst $38                                          ; $5a99: $ff
	ld h, c                                          ; $5a9a: $61
	sub c                                            ; $5a9b: $91
	rst $38                                          ; $5a9c: $ff
	jr nc, jr_011_5a7e                               ; $5a9d: $30 $df

	cp b                                             ; $5a9f: $b8
	rst SubAFromBC                                          ; $5aa0: $e7
	sbc $63                                          ; $5aa1: $de $63
	rst $38                                          ; $5aa3: $ff
	or b                                             ; $5aa4: $b0
	rst $38                                          ; $5aa5: $ff
	ld [$ff00], sp                                   ; $5aa6: $08 $00 $ff
	ld [$fe7b], sp                                   ; $5aa9: $08 $7b $fe
	sub c                                            ; $5aac: $91
	add h                                            ; $5aad: $84
	rst $38                                          ; $5aae: $ff
	ld b, h                                          ; $5aaf: $44
	rst $38                                          ; $5ab0: $ff
	ld [hl+], a                                      ; $5ab1: $22
	rst $38                                          ; $5ab2: $ff
	sub d                                            ; $5ab3: $92
	rst $38                                          ; $5ab4: $ff
	xor $3f                                          ; $5ab5: $ee $3f
	db $ed                                           ; $5ab7: $ed
	di                                               ; $5ab8: $f3
	push af                                          ; $5ab9: $f5
	ei                                               ; $5aba: $fb
	ld h, a                                          ; $5abb: $67
	cp $8a                                           ; $5abc: $fe $8a
	ld l, d                                          ; $5abe: $6a
	rst FarCall                                          ; $5abf: $f7
	or d                                             ; $5ac0: $b2
	rst GetHLinHL                                          ; $5ac1: $cf
	ccf                                              ; $5ac2: $3f
	rst $38                                          ; $5ac3: $ff
	rst $38                                          ; $5ac4: $ff
	ldh [rIE], a                                     ; $5ac5: $e0 $ff
	inc l                                            ; $5ac7: $2c
	rst $38                                          ; $5ac8: $ff
	inc sp                                           ; $5ac9: $33
	db $fc                                           ; $5aca: $fc
	ld c, $f5                                        ; $5acb: $0e $f5
	dec e                                            ; $5acd: $1d
	ld h, a                                          ; $5ace: $67
	rst FarCall                                          ; $5acf: $f7
	ld [hl], d                                       ; $5ad0: $72
	sub a                                            ; $5ad1: $97
	nop                                              ; $5ad2: $00
	cp [hl]                                          ; $5ad3: $be
	add b                                            ; $5ad4: $80
	ret nz                                           ; $5ad5: $c0

	ret nz                                           ; $5ad6: $c0

	adc d                                            ; $5ad7: $8a
	add b                                            ; $5ad8: $80
	db $e4                                           ; $5ad9: $e4
	ret nz                                           ; $5ada: $c0

	and $c0                                          ; $5adb: $e6 $c0
	ld c, [hl]                                       ; $5add: $4e
	ret nz                                           ; $5ade: $c0

	ld c, a                                          ; $5adf: $4f
	nop                                              ; $5ae0: $00
	rst $38                                          ; $5ae1: $ff
	inc bc                                           ; $5ae2: $03
	ld a, [hl]                                       ; $5ae3: $7e
	ld c, $33                                        ; $5ae4: $0e $33
	rra                                              ; $5ae6: $1f
	ld [de], a                                       ; $5ae7: $12
	inc bc                                           ; $5ae8: $03
	inc bc                                           ; $5ae9: $03
	ld bc, $0307                                     ; $5aea: $01 $07 $03
	db $fd                                           ; $5aed: $fd
	ld a, a                                          ; $5aee: $7f
	jp nc, Jump_011_7f94                             ; $5aef: $d2 $94 $7f

	ld a, [hl]                                       ; $5af2: $7e
	rst SubAFromDE                                          ; $5af3: $df
	db $fc                                           ; $5af4: $fc
	or a                                             ; $5af5: $b7
	ret nc                                           ; $5af6: $d0

	cpl                                              ; $5af7: $2f
	or b                                             ; $5af8: $b0
	rst $38                                          ; $5af9: $ff
	ret nz                                           ; $5afa: $c0

	rra                                              ; $5afb: $1f
	cp a                                             ; $5afc: $bf
	rrca                                             ; $5afd: $0f
	rst $38                                          ; $5afe: $ff
	add b                                            ; $5aff: $80
	ccf                                              ; $5b00: $3f
	ld [$e83f], a                                    ; $5b01: $ea $3f $e8
	ccf                                              ; $5b04: $3f
	ret                                              ; $5b05: $c9


	ccf                                              ; $5b06: $3f
	ret c                                            ; $5b07: $d8

	ld a, a                                          ; $5b08: $7f
	db $fc                                           ; $5b09: $fc
	ld [hl], a                                       ; $5b0a: $77
	or $53                                           ; $5b0b: $f6 $53
	or $83                                           ; $5b0d: $f6 $83
	push bc                                          ; $5b0f: $c5
	cp $f8                                           ; $5b10: $fe $f8
	cp $fa                                           ; $5b12: $fe $fa
	db $fc                                           ; $5b14: $fc
	ldh a, [c]                                       ; $5b15: $f2
	db $fc                                           ; $5b16: $fc
	ld a, [$e2f4]                                    ; $5b17: $fa $f4 $e2
	db $f4                                           ; $5b1a: $f4
	ldh a, [c]                                       ; $5b1b: $f2
	db $e4                                           ; $5b1c: $e4
	jp z, $86e4                                      ; $5b1d: $ca $e4 $86

	daa                                              ; $5b20: $27
	pop bc                                           ; $5b21: $c1
	inc sp                                           ; $5b22: $33
	ldh [rAUD1SWEEP], a                              ; $5b23: $e0 $10
	ld h, b                                          ; $5b25: $60
	jr jr_011_5b98                                   ; $5b26: $18 $70

	ld [$0c70], sp                                   ; $5b28: $08 $70 $0c
	ld a, b                                          ; $5b2b: $78
	inc b                                            ; $5b2c: $04
	ld a, b                                          ; $5b2d: $78
	ld b, $7c                                        ; $5b2e: $06 $7c
	rst GetHLinHL                                          ; $5b30: $cf
	add b                                            ; $5b31: $80
	rla                                              ; $5b32: $17
	ld [$0c1b], sp                                   ; $5b33: $08 $1b $0c
	ld c, $04                                        ; $5b36: $0e $04
	nop                                              ; $5b38: $00
	cp a                                             ; $5b39: $bf
	dec b                                            ; $5b3a: $05
	rrca                                             ; $5b3b: $0f
	sbc e                                            ; $5b3c: $9b
	rlca                                             ; $5b3d: $07
	ld bc, $8002                                     ; $5b3e: $01 $02 $80
	cp h                                             ; $5b41: $bc
	add b                                            ; $5b42: $80
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	nop                                              ; $5b45: $00
	ret nz                                           ; $5b46: $c0

	ld [hl], e                                       ; $5b47: $73
	push af                                          ; $5b48: $f5
	ld a, a                                          ; $5b49: $7f
	xor h                                            ; $5b4a: $ac
	sbc [hl]                                         ; $5b4b: $9e
	ccf                                              ; $5b4c: $3f
	cp a                                             ; $5b4d: $bf
	ccf                                              ; $5b4e: $3f
	ld a, $80                                        ; $5b4f: $3e $80
	ld bc, $017e                                     ; $5b51: $01 $7e $01
	ld a, l                                          ; $5b54: $7d
	inc bc                                           ; $5b55: $03
	cp $03                                           ; $5b56: $fe $03
	db $fc                                           ; $5b58: $fc
	rlca                                             ; $5b59: $07
	xor $07                                          ; $5b5a: $ee $07
	call c, $fe0f                                    ; $5b5c: $dc $0f $fe
	ld d, e                                          ; $5b5f: $53
	ldh [c], a                                       ; $5b60: $e2
	pop hl                                           ; $5b61: $e1
	db $e3                                           ; $5b62: $e3
	pop bc                                           ; $5b63: $c1
	db $e3                                           ; $5b64: $e3
	pop bc                                           ; $5b65: $c1
	or a                                             ; $5b66: $b7
	db $e3                                           ; $5b67: $e3
	sbc a                                            ; $5b68: $9f
	rst $38                                          ; $5b69: $ff
	xor d                                            ; $5b6a: $aa
	call nz, $8c52                                   ; $5b6b: $c4 $52 $8c
	xor b                                            ; $5b6e: $a8
	inc d                                            ; $5b6f: $14
	add h                                            ; $5b70: $84
	jr @+$26                                         ; $5b71: $18 $24

	ld hl, $9d0c                                     ; $5b73: $21 $0c $9d
	ld [$19b0], sp                                   ; $5b76: $08 $b0 $19
	jr jr_011_5bac                                   ; $5b79: $18 $31

	inc bc                                           ; $5b7b: $03
	ld a, [hl]                                       ; $5b7c: $7e
	inc bc                                           ; $5b7d: $03
	rst $38                                          ; $5b7e: $ff
	ld [bc], a                                       ; $5b7f: $02
	rst $38                                          ; $5b80: $ff
	ld [bc], a                                       ; $5b81: $02
	rst FarCall                                          ; $5b82: $f7
	ld [bc], a                                       ; $5b83: $02
	rst FarCall                                          ; $5b84: $f7
	inc b                                            ; $5b85: $04
	rst SubAFromBC                                          ; $5b86: $e7
	inc b                                            ; $5b87: $04
	rst AddAOntoHL                                          ; $5b88: $ef
	dec b                                            ; $5b89: $05
	rst GetHLinHL                                          ; $5b8a: $cf
	nop                                              ; $5b8b: $00
	cp a                                             ; $5b8c: $bf
	add e                                            ; $5b8d: $83
	ret nz                                           ; $5b8e: $c0

	sub e                                            ; $5b8f: $93
	add b                                            ; $5b90: $80
	ldh [$c0], a                                     ; $5b91: $e0 $c0
	or b                                             ; $5b93: $b0
	ldh [$9c], a                                     ; $5b94: $e0 $9c
	ld hl, sp-$75                                    ; $5b96: $f8 $8b

jr_011_5b98:
	sbc $0b                                          ; $5b98: $de $0b
	rst SubAFromDE                                          ; $5b9a: $df
	ld bc, $03be                                     ; $5b9b: $01 $be $03
	rlca                                             ; $5b9e: $07
	ld c, $8b                                        ; $5b9f: $0e $8b
	ld bc, $071b                                     ; $5ba1: $01 $1b $07
	cpl                                              ; $5ba4: $2f
	inc e                                            ; $5ba5: $1c
	cp h                                             ; $5ba6: $bc
	ld [hl], b                                       ; $5ba7: $70
	ldh a, [$e0]                                     ; $5ba8: $f0 $e0
	add sp, $1f                                      ; $5baa: $e8 $1f

jr_011_5bac:
	ret nc                                           ; $5bac: $d0

	ccf                                              ; $5bad: $3f
	and b                                            ; $5bae: $a0
	ld a, a                                          ; $5baf: $7f
	add c                                            ; $5bb0: $81
	cp $83                                           ; $5bb1: $fe $83
	ld a, h                                          ; $5bb3: $7c
	rst $38                                          ; $5bb4: $ff
	cp [hl]                                          ; $5bb5: $be
	ld a, a                                          ; $5bb6: $7f
	ccf                                              ; $5bb7: $3f
	sub e                                            ; $5bb8: $93
	sbc b                                            ; $5bb9: $98
	ld a, a                                          ; $5bba: $7f
	db $d3                                           ; $5bbb: $d3
	ld a, a                                          ; $5bbc: $7f
	jp nc, $f27f                                     ; $5bbd: $d2 $7f $f2

	ccf                                              ; $5bc0: $3f
	ld [hl], e                                       ; $5bc1: $73
	cp $80                                           ; $5bc2: $fe $80
	rra                                              ; $5bc4: $1f
	db $e4                                           ; $5bc5: $e4
	ld e, $68                                        ; $5bc6: $1e $68

jr_011_5bc8:
	ld sp, $71a2                                     ; $5bc8: $31 $a2 $71
	ld [hl], b                                       ; $5bcb: $70
	db $e3                                           ; $5bcc: $e3
	pop af                                           ; $5bcd: $f1
	ldh [c], a                                       ; $5bce: $e2
	push af                                          ; $5bcf: $f5
	ldh [c], a                                       ; $5bd0: $e2
	rst FarCall                                          ; $5bd1: $f7
	ldh [$f2], a                                     ; $5bd2: $e0 $f2
	push hl                                          ; $5bd4: $e5

jr_011_5bd5:
	pop hl                                           ; $5bd5: $e1
	rst FarCall                                          ; $5bd6: $f7
	ld c, e                                          ; $5bd7: $4b
	sbc l                                            ; $5bd8: $9d
	dec l                                            ; $5bd9: $2d
	sbc e                                            ; $5bda: $9b
	or [hl]                                          ; $5bdb: $b6
	dec de                                           ; $5bdc: $1b
	jp c, $b437                                      ; $5bdd: $da $37 $b4

	ld l, a                                          ; $5be0: $6f
	ld l, l                                          ; $5be1: $6d
	sbc $89                                          ; $5be2: $de $89
	sub l                                            ; $5be4: $95
	cp $24                                           ; $5be5: $fe $24
	cp $0a                                           ; $5be7: $fe $0a
	cp a                                             ; $5be9: $bf
	sub a                                            ; $5bea: $97
	ld a, [hl-]                                      ; $5beb: $3a
	sub l                                            ; $5bec: $95
	ld a, [hl-]                                      ; $5bed: $3a
	ld d, l                                          ; $5bee: $55
	jr nc, jr_011_5c15                               ; $5bef: $30 $24

	ld [hl], c                                       ; $5bf1: $71
	and [hl]                                         ; $5bf2: $a6
	ld h, c                                          ; $5bf3: $61
	ld b, d                                          ; $5bf4: $42
	pop hl                                           ; $5bf5: $e1
	ld d, b                                          ; $5bf6: $50
	db $e3                                           ; $5bf7: $e3
	ldh a, [$e0]                                     ; $5bf8: $f0 $e0
	ld a, e                                          ; $5bfa: $7b
	cp $9d                                           ; $5bfb: $fe $9d
	ldh a, [$b0]                                     ; $5bfd: $f0 $b0
	ld [hl], e                                       ; $5bff: $73
	cp $9a                                           ; $5c00: $fe $9a
	or a                                             ; $5c02: $b7
	pop af                                           ; $5c03: $f1
	cp a                                             ; $5c04: $bf
	rst $38                                          ; $5c05: $ff
	rra                                              ; $5c06: $1f
	cp [hl]                                          ; $5c07: $be
	rra                                              ; $5c08: $1f
	rra                                              ; $5c09: $1f
	ccf                                              ; $5c0a: $3f
	sbc d                                            ; $5c0b: $9a
	inc bc                                           ; $5c0c: $03
	jr c, jr_011_5c1e                                ; $5c0d: $38 $0f

	ld h, b                                          ; $5c0f: $60
	ccf                                              ; $5c10: $3f
	cp a                                             ; $5c11: $bf
	ldh [rIE], a                                     ; $5c12: $e0 $ff
	adc a                                            ; $5c14: $8f

jr_011_5c15:
	db $f4                                           ; $5c15: $f4
	ld e, $fc                                        ; $5c16: $1e $fc
	dec a                                            ; $5c18: $3d
	ld hl, sp-$03                                    ; $5c19: $f8 $fd
	ldh a, [rIE]                                     ; $5c1b: $f0 $ff
	ld h, b                                          ; $5c1d: $60

jr_011_5c1e:
	ld a, [$f480]                                    ; $5c1e: $fa $80 $f4
	ld b, b                                          ; $5c21: $40
	ld a, b                                          ; $5c22: $78
	jr nc, jr_011_5bd5                               ; $5c23: $30 $b0

	inc [hl]                                         ; $5c25: $34
	ld [bc], a                                       ; $5c26: $02
	add b                                            ; $5c27: $80
	add hl, bc                                       ; $5c28: $09
	rrca                                             ; $5c29: $0f
	ld [de], a                                       ; $5c2a: $12
	rra                                              ; $5c2b: $1f
	dec h                                            ; $5c2c: $25
	ld a, $49                                        ; $5c2d: $3e $49
	ld a, [hl]                                       ; $5c2f: $7e
	sub [hl]                                         ; $5c30: $96
	ld sp, hl                                        ; $5c31: $f9
	cpl                                              ; $5c32: $2f
	pop af                                           ; $5c33: $f1
	ld c, [hl]                                       ; $5c34: $4e
	di                                               ; $5c35: $f3
	adc h                                            ; $5c36: $8c
	rst $38                                          ; $5c37: $ff
	ld h, b                                          ; $5c38: $60
	sbc e                                            ; $5c39: $9b
	ret z                                            ; $5c3a: $c8

	scf                                              ; $5c3b: $37
	pop de                                           ; $5c3c: $d1
	cpl                                              ; $5c3d: $2f
	and d                                            ; $5c3e: $a2
	ld e, a                                          ; $5c3f: $5f
	add h                                            ; $5c40: $84
	rst $38                                          ; $5c41: $ff
	ld [$10ff], sp                                   ; $5c42: $08 $ff $10
	rst $38                                          ; $5c45: $ff
	jr nz, jr_011_5bc8                               ; $5c46: $20 $80

	rst $38                                          ; $5c48: $ff
	ld d, b                                          ; $5c49: $50

jr_011_5c4a:
	adc [hl]                                         ; $5c4a: $8e
	ld hl, $669c                                     ; $5c4b: $21 $9c $66
	dec e                                            ; $5c4e: $1d
	ret z                                            ; $5c4f: $c8

	dec sp                                           ; $5c50: $3b
	jr jr_011_5c4a                                   ; $5c51: $18 $f7

	ld hl, $43ff                                     ; $5c53: $21 $ff $43
	rst $38                                          ; $5c56: $ff
	add [hl]                                         ; $5c57: $86
	rst $38                                          ; $5c58: $ff
	add e                                            ; $5c59: $83
	ld a, h                                          ; $5c5a: $7c
	sbc a                                            ; $5c5b: $9f
	ld [hl], b                                       ; $5c5c: $70
	ld l, $f1                                        ; $5c5d: $2e $f1
	ld d, [hl]                                       ; $5c5f: $56
	jp hl                                            ; $5c60: $e9


	and l                                            ; $5c61: $a5
	jp nc, $b64d                                     ; $5c62: $d2 $4d $b6

	or h                                             ; $5c65: $b4
	ld l, l                                          ; $5c66: $6d
	adc c                                            ; $5c67: $89
	cp l                                             ; $5c68: $bd
	ld l, l                                          ; $5c69: $6d
	pop bc                                           ; $5c6a: $c1
	ld b, $a0                                        ; $5c6b: $06 $a0
	ld b, [hl]                                       ; $5c6d: $46
	and b                                            ; $5c6e: $a0
	ld b, [hl]                                       ; $5c6f: $46
	ret nc                                           ; $5c70: $d0

	ld h, $53                                        ; $5c71: $26 $53
	ld h, $4b                                        ; $5c73: $26 $4b
	ld [hl], $4b                                     ; $5c75: $36 $4b
	ld [hl], $62                                     ; $5c77: $36 $62
	ccf                                              ; $5c79: $3f
	ret                                              ; $5c7a: $c9


	ld h, $4d                                        ; $5c7b: $26 $4d
	ld [hl+], a                                      ; $5c7d: $22
	ld [hl], a                                       ; $5c7e: $77
	cp $86                                           ; $5c7f: $fe $86
	jp c, $ba27                                      ; $5c81: $da $27 $ba

	ld h, a                                          ; $5c84: $67
	cp d                                             ; $5c85: $ba
	ld h, a                                          ; $5c86: $67
	and c                                            ; $5c87: $a1
	ld a, a                                          ; $5c88: $7f
	jr nc, @+$01                                     ; $5c89: $30 $ff

	pop bc                                           ; $5c8b: $c1
	rst $38                                          ; $5c8c: $ff
	ld e, $ff                                        ; $5c8d: $1e $ff
	db $e4                                           ; $5c8f: $e4
	rst $38                                          ; $5c90: $ff
	ld c, c                                          ; $5c91: $49
	cp a                                             ; $5c92: $bf
	ld a, [hl]                                       ; $5c93: $7e
	cp a                                             ; $5c94: $bf
	dec hl                                           ; $5c95: $2b
	db $fd                                           ; $5c96: $fd
	ld d, l                                          ; $5c97: $55
	db $eb                                           ; $5c98: $eb
	ld b, c                                          ; $5c99: $41
	ld a, e                                          ; $5c9a: $7b
	cp h                                             ; $5c9b: $bc
	add b                                            ; $5c9c: $80
	ld e, $fb                                        ; $5c9d: $1e $fb
	ld a, h                                          ; $5c9f: $7c
	rst SubAFromBC                                          ; $5ca0: $e7
	ei                                               ; $5ca1: $fb
	adc a                                            ; $5ca2: $8f
	db $f4                                           ; $5ca3: $f4
	sbc a                                            ; $5ca4: $9f
	rst AddAOntoHL                                          ; $5ca5: $ef
	ccf                                              ; $5ca6: $3f
	rst $38                                          ; $5ca7: $ff
	ld a, b                                          ; $5ca8: $78
	ld a, [bc]                                       ; $5ca9: $0a
	rst $38                                          ; $5caa: $ff
	ld d, $fb                                        ; $5cab: $16 $fb
	inc l                                            ; $5cad: $2c
	rst FarCall                                          ; $5cae: $f7
	call c, $3de7                                    ; $5caf: $dc $e7 $3d
	rst JumpTable                                          ; $5cb2: $c7
	ld a, l                                          ; $5cb3: $7d
	add a                                            ; $5cb4: $87
	dec e                                            ; $5cb5: $1d
	rst SubAFromBC                                          ; $5cb6: $e7
	xor $f3                                          ; $5cb7: $ee $f3
	ld c, l                                          ; $5cb9: $4d
	db $fd                                           ; $5cba: $fd
	ld c, l                                          ; $5cbb: $4d
	sub b                                            ; $5cbc: $90
	rst $38                                          ; $5cbd: $ff
	push de                                          ; $5cbe: $d5
	rst $38                                          ; $5cbf: $ff
	db $dd                                           ; $5cc0: $dd
	rst FarCall                                          ; $5cc1: $f7
	ld e, a                                          ; $5cc2: $5f

jr_011_5cc3:
	rst FarCall                                          ; $5cc3: $f7
	sbc $77                                          ; $5cc4: $de $77
	xor $77                                          ; $5cc6: $ee $77
	cp $67                                           ; $5cc8: $fe $67
	ld [hl+], a                                      ; $5cca: $22
	rst $38                                          ; $5ccb: $ff
	ld [hl], a                                       ; $5ccc: $77
	cp $7f                                           ; $5ccd: $fe $7f
	add h                                            ; $5ccf: $84
	sbc e                                            ; $5cd0: $9b
	ld h, c                                          ; $5cd1: $61
	rst $38                                          ; $5cd2: $ff
	pop af                                           ; $5cd3: $f1
	rst SubAFromDE                                          ; $5cd4: $df
	ld [hl], a                                       ; $5cd5: $77
	cp $7f                                           ; $5cd6: $fe $7f
	or $6f                                           ; $5cd8: $f6 $6f
	cp $9e                                           ; $5cda: $fe $9e
	ld de, $fe6b                                     ; $5cdc: $11 $6b $fe
	add b                                            ; $5cdf: $80
	db $eb                                           ; $5ce0: $eb
	sub a                                            ; $5ce1: $97
	db $d3                                           ; $5ce2: $d3
	ccf                                              ; $5ce3: $3f
	or l                                             ; $5ce4: $b5
	ld l, a                                          ; $5ce5: $6f
	add hl, hl                                       ; $5ce6: $29
	rst SubAFromDE                                          ; $5ce7: $df
	ld d, c                                          ; $5ce8: $51
	sbc a                                            ; $5ce9: $9f
	add hl, sp                                       ; $5cea: $39
	sub a                                            ; $5ceb: $97
	ld h, c                                          ; $5cec: $61
	ccf                                              ; $5ced: $3f
	scf                                              ; $5cee: $37
	ld l, e                                          ; $5cef: $6b
	rst FarCall                                          ; $5cf0: $f7
	nop                                              ; $5cf1: $00
	rst SubAFromBC                                          ; $5cf2: $e7
	inc bc                                           ; $5cf3: $03
	ld c, [hl]                                       ; $5cf4: $4e
	adc a                                            ; $5cf5: $8f
	inc a                                            ; $5cf6: $3c
	cp [hl]                                          ; $5cf7: $be
	sub a                                            ; $5cf8: $97
	sbc a                                            ; $5cf9: $9f
	sub l                                            ; $5cfa: $95
	add a                                            ; $5cfb: $87
	add l                                            ; $5cfc: $85
	add e                                            ; $5cfd: $83
	adc a                                            ; $5cfe: $8f
	adc b                                            ; $5cff: $88
	add [hl]                                         ; $5d00: $86
	cp $1b                                           ; $5d01: $fe $1b
	cp $83                                           ; $5d03: $fe $83
	ld a, [hl]                                       ; $5d05: $7e
	ld b, e                                          ; $5d06: $43
	ld a, h                                          ; $5d07: $7c
	ld h, e                                          ; $5d08: $63
	sbc $c1                                          ; $5d09: $de $c1
	rst $38                                          ; $5d0b: $ff
	ldh [$f0], a                                     ; $5d0c: $e0 $f0
	ldh [rLCDC], a                                   ; $5d0e: $e0 $40
	ret nz                                           ; $5d10: $c0

	rst $38                                          ; $5d11: $ff
	ld h, d                                          ; $5d12: $62
	ld a, [$ff67]                                    ; $5d13: $fa $67 $ff
	cpl                                              ; $5d16: $2f
	ld a, e                                          ; $5d17: $7b
	daa                                              ; $5d18: $27
	add l                                            ; $5d19: $85
	nop                                              ; $5d1a: $00
	rst $38                                          ; $5d1b: $ff
	ld bc, $07ff                                     ; $5d1c: $01 $ff $07
	ld a, a                                          ; $5d1f: $7f
	ld bc, $cff8                                     ; $5d20: $01 $f8 $cf
	ld c, b                                          ; $5d23: $48
	rst $38                                          ; $5d24: $ff
	ld hl, sp-$01                                    ; $5d25: $f8 $ff
	db $fc                                           ; $5d27: $fc
	rrca                                             ; $5d28: $0f
	db $fc                                           ; $5d29: $fc
	rlca                                             ; $5d2a: $07
	cp $e3                                           ; $5d2b: $fe $e3
	cp a                                             ; $5d2d: $bf
	pop af                                           ; $5d2e: $f1
	adc a                                            ; $5d2f: $8f
	jr jr_011_5cc3                                   ; $5d30: $18 $91

	rst $38                                          ; $5d32: $ff
	adc c                                            ; $5d33: $89
	ld a, e                                          ; $5d34: $7b
	cp $9e                                           ; $5d35: $fe $9e
	ld c, c                                          ; $5d37: $49
	ld a, e                                          ; $5d38: $7b
	cp $82                                           ; $5d39: $fe $82
	dec h                                            ; $5d3b: $25
	rst $38                                          ; $5d3c: $ff
	dec b                                            ; $5d3d: $05
	rst $38                                          ; $5d3e: $ff
	sub l                                            ; $5d3f: $95
	rst $38                                          ; $5d40: $ff
	db $d3                                           ; $5d41: $d3
	ld l, a                                          ; $5d42: $6f
	ld l, l                                          ; $5d43: $6d
	rst SubAFromHL                                          ; $5d44: $d7
	and l                                            ; $5d45: $a5
	rst SubAFromDE                                          ; $5d46: $df
	ret nz                                           ; $5d47: $c0

	cp a                                             ; $5d48: $bf
	reti                                             ; $5d49: $d9


	xor [hl]                                         ; $5d4a: $ae
	db $dd                                           ; $5d4b: $dd
	xor d                                            ; $5d4c: $aa
	push de                                          ; $5d4d: $d5
	xor d                                            ; $5d4e: $aa
	ret nc                                           ; $5d4f: $d0

	xor d                                            ; $5d50: $aa
	push bc                                          ; $5d51: $c5
	add e                                            ; $5d52: $83
	ret nz                                           ; $5d53: $c0

	add b                                            ; $5d54: $80
	ret nz                                           ; $5d55: $c0

	add b                                            ; $5d56: $80
	add b                                            ; $5d57: $80
	sbc $c0                                          ; $5d58: $de $c0
	adc [hl]                                         ; $5d5a: $8e
	ld h, b                                          ; $5d5b: $60
	ret nz                                           ; $5d5c: $c0

	ld b, b                                          ; $5d5d: $40
	ldh [rSVBK], a                                   ; $5d5e: $e0 $70
	ldh [$e0], a                                     ; $5d60: $e0 $e0
	add b                                            ; $5d62: $80
	inc bc                                           ; $5d63: $03
	nop                                              ; $5d64: $00
	inc bc                                           ; $5d65: $03
	inc b                                            ; $5d66: $04
	rlca                                             ; $5d67: $07
	inc c                                            ; $5d68: $0c
	dec b                                            ; $5d69: $05
	ld c, $06                                        ; $5d6a: $0e $06
	cp a                                             ; $5d6c: $bf
	nop                                              ; $5d6d: $00
	add hl, de                                       ; $5d6e: $19
	sub l                                            ; $5d6f: $95
	jr c, @+$1e                                      ; $5d70: $38 $1c

	nop                                              ; $5d72: $00
	dec b                                            ; $5d73: $05
	ld bc, $0181                                     ; $5d74: $01 $81 $01
	jp nz, $8001                                     ; $5d77: $c2 $01 $80

	cp l                                             ; $5d7a: $bd
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	add b                                            ; $5d7d: $80
	rst $38                                          ; $5d7e: $ff
	add e                                            ; $5d7f: $83
	db $fc                                           ; $5d80: $fc
	halt                                             ; $5d81: $76
	rst $38                                          ; $5d82: $ff
	sub a                                            ; $5d83: $97
	ld [hl], h                                       ; $5d84: $74
	rst $38                                          ; $5d85: $ff
	ldh [$cf], a                                     ; $5d86: $e0 $cf
	jr nc, jr_011_5dc9                               ; $5d88: $30 $3f

	nop                                              ; $5d8a: $00
	ld a, a                                          ; $5d8b: $7f
	ld bc, $03fd                                     ; $5d8c: $01 $fd $03
	ld c, d                                          ; $5d8f: $4a
	rst $38                                          ; $5d90: $ff
	or e                                             ; $5d91: $b3
	ld a, a                                          ; $5d92: $7f
	cp a                                             ; $5d93: $bf
	ld a, a                                          ; $5d94: $7f
	rst AddAOntoHL                                          ; $5d95: $ef
	ld a, a                                          ; $5d96: $7f
	ld h, e                                          ; $5d97: $63
	rst $38                                          ; $5d98: $ff
	and e                                            ; $5d99: $a3
	rst $38                                          ; $5d9a: $ff
	inc hl                                           ; $5d9b: $23
	ld a, e                                          ; $5d9c: $7b
	ld h, $7f                                        ; $5d9d: $26 $7f
	xor [hl]                                         ; $5d9f: $ae
	sbc d                                            ; $5da0: $9a
	ret c                                            ; $5da1: $d8

	xor d                                            ; $5da2: $aa
	adc b                                            ; $5da3: $88
	ld a, [$7ba8]                                    ; $5da4: $fa $a8 $7b
	cp $8c                                           ; $5da7: $fe $8c
	add sp, -$06                                     ; $5da9: $e8 $fa
	jp hl                                            ; $5dab: $e9


	ld a, [$fbe8]                                    ; $5dac: $fa $e8 $fb
	ld h, b                                          ; $5daf: $60
	ldh a, [$78]                                     ; $5db0: $f0 $78
	ldh a, [$50]                                     ; $5db2: $f0 $50
	ld hl, sp+$48                                    ; $5db4: $f8 $48
	db $fc                                           ; $5db6: $fc
	ld b, h                                          ; $5db7: $44
	cp $46                                           ; $5db8: $fe $46
	rst $38                                          ; $5dba: $ff
	ld h, l                                          ; $5dbb: $65
	ld a, e                                          ; $5dbc: $7b
	cp $8a                                           ; $5dbd: $fe $8a
	cpl                                              ; $5dbf: $2f
	rra                                              ; $5dc0: $1f
	rlca                                             ; $5dc1: $07
	rrca                                             ; $5dc2: $0f
	ld a, [bc]                                       ; $5dc3: $0a
	ld bc, $0000                                     ; $5dc4: $01 $00 $00
	ld a, [bc]                                       ; $5dc7: $0a
	inc b                                            ; $5dc8: $04

jr_011_5dc9:
	nop                                              ; $5dc9: $00
	nop                                              ; $5dca: $00
	ld b, b                                          ; $5dcb: $40
	add b                                            ; $5dcc: $80
	rst JumpTable                                          ; $5dcd: $c7
	ldh [$e1], a                                     ; $5dce: $e0 $e1
	ret nz                                           ; $5dd0: $c0

	jp $0780                                         ; $5dd1: $c3 $80 $07


	cp [hl]                                          ; $5dd4: $be
	rrca                                             ; $5dd5: $0f
	rra                                              ; $5dd6: $1f
	dec a                                            ; $5dd7: $3d
	adc d                                            ; $5dd8: $8a
	inc bc                                           ; $5dd9: $03
	xor $1f                                          ; $5dda: $ee $1f
	ld [hl], b                                       ; $5ddc: $70
	rst $38                                          ; $5ddd: $ff
	ei                                               ; $5dde: $fb
	ld b, $f5                                        ; $5ddf: $06 $f5
	ld c, $ef                                        ; $5de1: $0e $ef
	add hl, de                                       ; $5de3: $19
	rst SubAFromDE                                          ; $5de4: $df
	ccf                                              ; $5de5: $3f
	ld [hl], d                                       ; $5de6: $72
	rst $38                                          ; $5de7: $ff
	or d                                             ; $5de8: $b2
	rst $38                                          ; $5de9: $ff
	ld a, [hl+]                                      ; $5dea: $2a
	rst $38                                          ; $5deb: $ff
	ld l, d                                          ; $5dec: $6a
	cp a                                             ; $5ded: $bf
	halt                                             ; $5dee: $76
	jp nc, Jump_011_449e                             ; $5def: $d2 $9e $44

	ld a, e                                          ; $5df2: $7b
	cp $96                                           ; $5df3: $fe $96
	ld b, l                                          ; $5df5: $45
	cp $66                                           ; $5df6: $fe $66
	db $dd                                           ; $5df8: $dd
	adc d                                            ; $5df9: $8a
	db $dd                                           ; $5dfa: $dd
	adc c                                            ; $5dfb: $89
	rst SubAFromDE                                          ; $5dfc: $df
	ld hl, sp+$7b                                    ; $5dfd: $f8 $7b
	ld [hl+], a                                      ; $5dff: $22
	add b                                            ; $5e00: $80
	ld sp, hl                                        ; $5e01: $f9
	rst $38                                          ; $5e02: $ff
	sbc c                                            ; $5e03: $99
	rrca                                             ; $5e04: $0f
	add hl, de                                       ; $5e05: $19
	ld c, $39                                        ; $5e06: $0e $39
	ld c, $3d                                        ; $5e08: $0e $3d
	ld b, $7d                                        ; $5e0a: $06 $7d
	rlca                                             ; $5e0c: $07
	dec l                                            ; $5e0d: $2d
	rst $38                                          ; $5e0e: $ff
	ccf                                              ; $5e0f: $3f
	cp $3f                                           ; $5e10: $fe $3f
	ldh a, [$3f]                                     ; $5e12: $f0 $3f
	ldh [$bf], a                                     ; $5e14: $e0 $bf
	ldh [$9f], a                                     ; $5e16: $e0 $9f
	pop hl                                           ; $5e18: $e1
	sbc a                                            ; $5e19: $9f
	ld [hl], d                                       ; $5e1a: $72
	rst SubAFromDE                                          ; $5e1b: $df
	ld [hl], a                                       ; $5e1c: $77
	rst $38                                          ; $5e1d: $ff
	rst $38                                          ; $5e1e: $ff
	inc hl                                           ; $5e1f: $23
	sbc l                                            ; $5e20: $9d
	ldh [rAUD4LEN], a                                ; $5e21: $e0 $20
	ld [hl], e                                       ; $5e23: $73
	cp $92                                           ; $5e24: $fe $92
	ld h, b                                          ; $5e26: $60
	ldh [$e0], a                                     ; $5e27: $e0 $e0
	and b                                            ; $5e29: $a0
	ldh [rAUD4LEN], a                                ; $5e2a: $e0 $20
	add b                                            ; $5e2c: $80
	rst $38                                          ; $5e2d: $ff
	add b                                            ; $5e2e: $80
	ld a, a                                          ; $5e2f: $7f
	ld b, c                                          ; $5e30: $41
	ld a, $0f                                        ; $5e31: $3e $0f
	cp h                                             ; $5e33: $bc
	rrca                                             ; $5e34: $0f
	rrca                                             ; $5e35: $0f
	rra                                              ; $5e36: $1f
	rra                                              ; $5e37: $1f
	ld d, h                                          ; $5e38: $54
	sub a                                            ; $5e39: $97
	cp a                                             ; $5e3a: $bf
	push de                                          ; $5e3b: $d5
	ccf                                              ; $5e3c: $3f
	push af                                          ; $5e3d: $f5
	ccf                                              ; $5e3e: $3f
	jp hl                                            ; $5e3f: $e9


	ccf                                              ; $5e40: $3f
	ld [$fe7b], a                                    ; $5e41: $ea $7b $fe
	sbc [hl]                                         ; $5e44: $9e
	db $f4                                           ; $5e45: $f4
	ld a, e                                          ; $5e46: $7b
	cp $8f                                           ; $5e47: $fe $8f
	xor l                                            ; $5e49: $ad
	sbc e                                            ; $5e4a: $9b
	or [hl]                                          ; $5e4b: $b6
	dec de                                           ; $5e4c: $1b
	ld a, [de]                                       ; $5e4d: $1a
	scf                                              ; $5e4e: $37
	ld d, h                                          ; $5e4f: $54
	ccf                                              ; $5e50: $3f

jr_011_5e51:
	and h                                            ; $5e51: $a4
	ld a, [hl]                                       ; $5e52: $7e
	jr z, jr_011_5e51                                ; $5e53: $28 $fc

	ld d, b                                          ; $5e55: $50
	ld hl, sp+$40                                    ; $5e56: $f8 $40
	ldh a, [$33]                                     ; $5e58: $f0 $33
	ld [bc], a                                       ; $5e5a: $02
	add b                                            ; $5e5b: $80
	ld a, [bc]                                       ; $5e5c: $0a
	nop                                              ; $5e5d: $00
	inc e                                            ; $5e5e: $1c
	ld [bc], a                                       ; $5e5f: $02
	ld a, [hl-]                                      ; $5e60: $3a
	inc b                                            ; $5e61: $04
	ld [hl], l                                       ; $5e62: $75
	ld [$11ea], sp                                   ; $5e63: $08 $ea $11
	push de                                          ; $5e66: $d5
	ld [hl+], a                                      ; $5e67: $22
	cp d                                             ; $5e68: $ba
	ld b, h                                          ; $5e69: $44
	ld [hl], e                                       ; $5e6a: $73
	adc h                                            ; $5e6b: $8c
	dec hl                                           ; $5e6c: $2b
	db $10                                           ; $5e6d: $10
	ld d, [hl]                                       ; $5e6e: $56
	ld hl, $42ad                                     ; $5e6f: $21 $ad $42
	ld e, e                                          ; $5e72: $5b
	add h                                            ; $5e73: $84
	or [hl]                                          ; $5e74: $b6
	add hl, bc                                       ; $5e75: $09
	ld l, l                                          ; $5e76: $6d
	inc de                                           ; $5e77: $13
	db $db                                           ; $5e78: $db
	daa                                              ; $5e79: $27
	and a                                            ; $5e7a: $a7
	add b                                            ; $5e7b: $80
	ld e, [hl]                                       ; $5e7c: $5e
	ld d, c                                          ; $5e7d: $51
	xor b                                            ; $5e7e: $a8
	xor c                                            ; $5e7f: $a9
	ld d, b                                          ; $5e80: $50
	and c                                            ; $5e81: $a1
	ld d, b                                          ; $5e82: $50
	ld d, c                                          ; $5e83: $51
	and b                                            ; $5e84: $a0
	ret nz                                           ; $5e85: $c0

	and b                                            ; $5e86: $a0
	and b                                            ; $5e87: $a0
	ld b, b                                          ; $5e88: $40
	add a                                            ; $5e89: $87
	ld b, b                                          ; $5e8a: $40
	ld c, d                                          ; $5e8b: $4a
	add a                                            ; $5e8c: $87

jr_011_5e8d:
	xor c                                            ; $5e8d: $a9
	ld b, h                                          ; $5e8e: $44
	adc c                                            ; $5e8f: $89
	ld b, h                                          ; $5e90: $44
	ld c, b                                          ; $5e91: $48
	add h                                            ; $5e92: $84
	ld [$1884], sp                                   ; $5e93: $08 $84 $18
	inc b                                            ; $5e96: $04
	inc d                                            ; $5e97: $14
	ld [$0815], sp                                   ; $5e98: $08 $15 $08
	sub h                                            ; $5e9b: $94

jr_011_5e9c:
	ld sp, $5408                                     ; $5e9c: $31 $08 $54
	ld hl, $3045                                     ; $5e9f: $21 $45 $30
	ld b, l                                          ; $5ea2: $45
	jr nc, @+$66                                     ; $5ea3: $30 $64

	db $10                                           ; $5ea5: $10
	ld h, b                                          ; $5ea6: $60
	ld [hl], e                                       ; $5ea7: $73
	cp $80                                           ; $5ea8: $fe $80
	ld b, d                                          ; $5eaa: $42
	jr nc, jr_011_5f0a                               ; $5eab: $30 $5d

	inc hl                                           ; $5ead: $23
	ld h, l                                          ; $5eae: $65
	inc de                                           ; $5eaf: $13
	xor d                                            ; $5eb0: $aa
	ld de, $09b2                                     ; $5eb1: $11 $b2 $09
	sub a                                            ; $5eb4: $97
	ld [$0c91], sp                                   ; $5eb5: $08 $91 $0c
	sub c                                            ; $5eb8: $91
	inc c                                            ; $5eb9: $0c
	ld de, $e78c                                     ; $5eba: $11 $8c $e7
	jr jr_011_5e8d                                   ; $5ebd: $18 $ce

	ld sp, $2fd1                                     ; $5ebf: $31 $d1 $2f
	adc h                                            ; $5ec2: $8c
	ld a, a                                          ; $5ec3: $7f
	ld [hl], a                                       ; $5ec4: $77
	db $fc                                           ; $5ec5: $fc
	xor e                                            ; $5ec6: $ab
	ld [hl], a                                       ; $5ec7: $77
	ld [hl], l                                       ; $5ec8: $75
	add b                                            ; $5ec9: $80
	xor $9c                                          ; $5eca: $ee $9c

jr_011_5ecc:
	cp $5b                                           ; $5ecc: $fe $5b
	cp $ee                                           ; $5ece: $fe $ee
	pop af                                           ; $5ed0: $f1
	adc $85                                          ; $5ed1: $ce $85
	sub h                                            ; $5ed3: $94
	dec bc                                           ; $5ed4: $0b

jr_011_5ed5:
	db $ed                                           ; $5ed5: $ed
	ld a, [de]                                       ; $5ed6: $1a
	dec c                                            ; $5ed7: $0d
	ldh a, [c]                                       ; $5ed8: $f2
	dec sp                                           ; $5ed9: $3b
	db $f4                                           ; $5eda: $f4
	swap h                                           ; $5edb: $cb $34
	add hl, de                                       ; $5edd: $19
	add [hl]                                         ; $5ede: $86
	or l                                             ; $5edf: $b5
	ld c, $66                                        ; $5ee0: $0e $66
	inc e                                            ; $5ee2: $1c
	ld [$c91c], a                                    ; $5ee3: $ea $1c $c9
	inc a                                            ; $5ee6: $3c
	db $d3                                           ; $5ee7: $d3
	inc a                                            ; $5ee8: $3c
	add b                                            ; $5ee9: $80
	sub a                                            ; $5eea: $97
	ld a, b                                          ; $5eeb: $78
	and [hl]                                         ; $5eec: $a6
	ld a, c                                          ; $5eed: $79
	add hl, hl                                       ; $5eee: $29
	db $10                                           ; $5eef: $10
	ld l, e                                          ; $5ef0: $6b
	db $10                                           ; $5ef1: $10
	ld e, e                                          ; $5ef2: $5b
	jr nc, jr_011_5ecc                               ; $5ef3: $30 $d7

	jr nc, @-$57                                     ; $5ef5: $30 $a7

	ld [hl], b                                       ; $5ef7: $70
	cpl                                              ; $5ef8: $2f
	ldh a, [rVBK]                                    ; $5ef9: $f0 $4f
	ldh a, [$5e]                                     ; $5efb: $f0 $5e
	pop hl                                           ; $5efd: $e1
	jp nz, $c230                                     ; $5efe: $c2 $30 $c2

	jr nc, jr_011_5ed5                               ; $5f01: $30 $d2

	jr nz, jr_011_5e9c                               ; $5f03: $20 $97

	ld h, b                                          ; $5f05: $60
	sub [hl]                                         ; $5f06: $96
	ld h, c                                          ; $5f07: $61
	ld b, $95                                        ; $5f08: $06 $95

jr_011_5f0a:
	pop hl                                           ; $5f0a: $e1
	xor h                                            ; $5f0b: $ac
	jp $c3ad                                         ; $5f0c: $c3 $ad $c3


	ld de, $178c                                     ; $5f0f: $11 $8c $17
	adc h                                            ; $5f12: $8c
	scf                                              ; $5f13: $37
	ld a, e                                          ; $5f14: $7b
	cp $9e                                           ; $5f15: $fe $9e
	rst FarCall                                          ; $5f17: $f7
	ld a, e                                          ; $5f18: $7b
	cp $80                                           ; $5f19: $fe $80
	di                                               ; $5f1b: $f3
	adc h                                            ; $5f1c: $8c
	ld h, e                                          ; $5f1d: $63
	sbc h                                            ; $5f1e: $9c
	ld [hl], e                                       ; $5f1f: $73
	adc a                                            ; $5f20: $8f
	cp l                                             ; $5f21: $bd

jr_011_5f22:
	rst JumpTable                                          ; $5f22: $c7
	ld a, [$da7f]                                    ; $5f23: $fa $7f $da
	daa                                              ; $5f26: $27
	or l                                             ; $5f27: $b5
	ld c, [hl]                                       ; $5f28: $4e
	or l                                             ; $5f29: $b5
	ld c, [hl]                                       ; $5f2a: $4e
	ld l, e                                          ; $5f2b: $6b
	sbc h                                            ; $5f2c: $9c
	ld l, e                                          ; $5f2d: $6b
	sbc h                                            ; $5f2e: $9c
	rst FarCall                                          ; $5f2f: $f7
	add sp, -$09                                     ; $5f30: $e8 $f7
	jr z, jr_011_5f22                                ; $5f32: $28 $ee

	ld sp, $33ec                                     ; $5f34: $31 $ec $33
	ld sp, hl                                        ; $5f37: $f9
	ccf                                              ; $5f38: $3f
	and a                                            ; $5f39: $a7
	add d                                            ; $5f3a: $82
	ld a, a                                          ; $5f3b: $7f
	or h                                             ; $5f3c: $b4
	ld l, a                                          ; $5f3d: $6f
	ld a, h                                          ; $5f3e: $7c
	rst SubAFromBC                                          ; $5f3f: $e7
	jr nz, @+$01                                     ; $5f40: $20 $ff

	ld b, b                                          ; $5f42: $40
	rst $38                                          ; $5f43: $ff
	ld b, c                                          ; $5f44: $41
	rst $38                                          ; $5f45: $ff
	add c                                            ; $5f46: $81
	rst $38                                          ; $5f47: $ff
	add d                                            ; $5f48: $82
	rst $38                                          ; $5f49: $ff
	cp $ff                                           ; $5f4a: $fe $ff
	di                                               ; $5f4c: $f3
	adc a                                            ; $5f4d: $8f
	rst $38                                          ; $5f4e: $ff
	adc h                                            ; $5f4f: $8c
	sbc l                                            ; $5f50: $9d

jr_011_5f51:
	db $e3                                           ; $5f51: $e3
	cp l                                             ; $5f52: $bd
	jp $e719                                         ; $5f53: $c3 $19 $e7


	ld [bc], a                                       ; $5f56: $02
	rst $38                                          ; $5f57: $ff
	ld [hl], a                                       ; $5f58: $77
	cp $80                                           ; $5f59: $fe $80
	db $fc                                           ; $5f5b: $fc
	rst $38                                          ; $5f5c: $ff
	ccf                                              ; $5f5d: $3f
	rst $38                                          ; $5f5e: $ff
	add hl, sp                                       ; $5f5f: $39
	rst JumpTable                                          ; $5f60: $c7
	ld a, c                                          ; $5f61: $79
	add a                                            ; $5f62: $87
	ld [hl], d                                       ; $5f63: $72
	adc a                                            ; $5f64: $8f
	ld [hl], d                                       ; $5f65: $72
	adc a                                            ; $5f66: $8f
	rst SubAFromBC                                          ; $5f67: $e7
	ld e, $e5                                        ; $5f68: $1e $e5
	ld e, $0d                                        ; $5f6a: $1e $0d
	cp $08                                           ; $5f6c: $fe $08
	rst $38                                          ; $5f6e: $ff
	ld l, e                                          ; $5f6f: $6b
	sbc h                                            ; $5f70: $9c
	ld [$c61d], a                                    ; $5f71: $ea $1d $c6
	add hl, sp                                       ; $5f74: $39
	sub $39                                          ; $5f75: $d6 $39
	call nc, $8c3b                                   ; $5f77: $d4 $3b $8c
	add c                                            ; $5f7a: $81
	ld [hl], e                                       ; $5f7b: $73
	xor h                                            ; $5f7c: $ac
	ld [hl], e                                       ; $5f7d: $73
	add hl, hl                                       ; $5f7e: $29
	rst FarCall                                          ; $5f7f: $f7
	rst SubAFromHL                                          ; $5f80: $d7
	jr c, jr_011_5f51                                ; $5f81: $38 $ce

	ld sp, $71aa                                     ; $5f83: $31 $aa $71
	sbc e                                            ; $5f86: $9b
	ld h, c                                          ; $5f87: $61
	ld [hl], h                                       ; $5f88: $74
	jp $c3b6                                         ; $5f89: $c3 $b6 $c3


	ld l, b                                          ; $5f8c: $68
	add a                                            ; $5f8d: $87
	ld c, l                                          ; $5f8e: $4d
	add a                                            ; $5f8f: $87
	ld a, h                                          ; $5f90: $7c
	rst SubAFromBC                                          ; $5f91: $e7
	cp h                                             ; $5f92: $bc
	rst SubAFromBC                                          ; $5f93: $e7
	call c, $dca7                                    ; $5f94: $dc $a7 $dc
	and a                                            ; $5f97: $a7
	call z, $fe6b                                    ; $5f98: $cc $6b $fe
	sub h                                            ; $5f9b: $94
	rst $38                                          ; $5f9c: $ff
	add b                                            ; $5f9d: $80
	ei                                               ; $5f9e: $fb
	add a                                            ; $5f9f: $87
	rst $38                                          ; $5fa0: $ff
	sbc a                                            ; $5fa1: $9f
	rst $38                                          ; $5fa2: $ff
	add [hl]                                         ; $5fa3: $86
	db $e3                                           ; $5fa4: $e3
	add e                                            ; $5fa5: $83
	jp nz, $fe7b                                     ; $5fa6: $c2 $7b $fe

	add b                                            ; $5fa9: $80
	jp $fd81                                         ; $5faa: $c3 $81 $fd


	inc bc                                           ; $5fad: $03
	rst FarCall                                          ; $5fae: $f7
	ld hl, sp+$3f                                    ; $5faf: $f8 $3f
	inc a                                            ; $5fb1: $3c
	ld a, a                                          ; $5fb2: $7f
	ld [hl], h                                       ; $5fb3: $74
	rst SubAFromHL                                          ; $5fb4: $d7
	ldh a, [$d7]                                     ; $5fb5: $f0 $d7
	ldh a, [rAUDENA]                                 ; $5fb7: $f0 $26
	and b                                            ; $5fb9: $a0
	ldh a, [$c0]                                     ; $5fba: $f0 $c0
	db $fc                                           ; $5fbc: $fc
	rst $38                                          ; $5fbd: $ff
	rst SubAFromBC                                          ; $5fbe: $e7
	rra                                              ; $5fbf: $1f
	rst $38                                          ; $5fc0: $ff
	nop                                              ; $5fc1: $00
	cp $01                                           ; $5fc2: $fe $01
	rst $38                                          ; $5fc4: $ff
	inc bc                                           ; $5fc5: $03

jr_011_5fc6:
	adc d                                            ; $5fc6: $8a
	ld b, $0f                                        ; $5fc7: $06 $0f
	add b                                            ; $5fc9: $80
	rlca                                             ; $5fca: $07
	ld c, $07                                        ; $5fcb: $0e $07
	ld h, c                                          ; $5fcd: $61
	rst $38                                          ; $5fce: $ff
	pop af                                           ; $5fcf: $f1
	rst $38                                          ; $5fd0: $ff
	sbc a                                            ; $5fd1: $9f
	ld a, a                                          ; $5fd2: $7f
	ld a, a                                          ; $5fd3: $7f
	add a                                            ; $5fd4: $87
	rst FarCall                                          ; $5fd5: $f7
	rst GetHLinHL                                          ; $5fd6: $cf
	rst SubAFromDE                                          ; $5fd7: $df
	ld l, a                                          ; $5fd8: $6f
	rst AddAOntoHL                                          ; $5fd9: $ef
	rst $38                                          ; $5fda: $ff
	cp a                                             ; $5fdb: $bf
	sbc a                                            ; $5fdc: $9f
	push bc                                          ; $5fdd: $c5
	rrca                                             ; $5fde: $0f
	sub c                                            ; $5fdf: $91
	rrca                                             ; $5fe0: $0f
	sbc d                                            ; $5fe1: $9a
	rrca                                             ; $5fe2: $0f
	ld a, [hl+]                                      ; $5fe3: $2a
	rra                                              ; $5fe4: $1f
	ld hl, $551f                                     ; $5fe5: $21 $1f $55
	ccf                                              ; $5fe8: $3f
	sbc b                                            ; $5fe9: $98
	push de                                          ; $5fea: $d5
	ccf                                              ; $5feb: $3f
	add h                                            ; $5fec: $84
	ld a, a                                          ; $5fed: $7f
	call z, $c8a7                                    ; $5fee: $cc $a7 $c8
	ld a, e                                          ; $5ff1: $7b
	cp $99                                           ; $5ff2: $fe $99
	adc b                                            ; $5ff4: $88
	and a                                            ; $5ff5: $a7
	add b                                            ; $5ff6: $80
	and a                                            ; $5ff7: $a7
	add b                                            ; $5ff8: $80
	add a                                            ; $5ff9: $87
	ld [hl], a                                       ; $5ffa: $77
	cp $9d                                           ; $5ffb: $fe $9d
	ret nz                                           ; $5ffd: $c0

	add b                                            ; $5ffe: $80
	ld l, a                                          ; $5fff: $6f
	cp $7e                                           ; $6000: $fe $7e
	ld a, a                                          ; $6002: $7f
	sbc c                                            ; $6003: $99
	jr nz, jr_011_5fc6                               ; $6004: $20 $c0

	ld d, b                                          ; $6006: $50
	ldh [rBCPS], a                                   ; $6007: $e0 $68
	ldh a, [$f7]                                     ; $6009: $f0 $f7
	add b                                            ; $600b: $80
	ld [bc], a                                       ; $600c: $02
	nop                                              ; $600d: $00
	inc bc                                           ; $600e: $03
	ld [bc], a                                       ; $600f: $02
	inc bc                                           ; $6010: $03
	nop                                              ; $6011: $00
	inc e                                            ; $6012: $1c
	rlca                                             ; $6013: $07
	rra                                              ; $6014: $1f
	inc bc                                           ; $6015: $03
	cpl                                              ; $6016: $2f
	db $10                                           ; $6017: $10
	cpl                                              ; $6018: $2f
	jr @+$78                                         ; $6019: $18 $76

	add hl, sp                                       ; $601b: $39
	ld l, a                                          ; $601c: $6f
	ld de, $03fd                                     ; $601d: $11 $fd $03
	rst $38                                          ; $6020: $ff
	jp $3f7f                                         ; $6021: $c3 $7f $3f


	cp a                                             ; $6024: $bf
	ld a, a                                          ; $6025: $7f
	ld e, a                                          ; $6026: $5f
	rst $38                                          ; $6027: $ff
	rst SubAFromDE                                          ; $6028: $df
	rst $38                                          ; $6029: $ff
	ld e, a                                          ; $602a: $5f
	ld l, e                                          ; $602b: $6b

jr_011_602c:
	cp $9e                                           ; $602c: $fe $9e
	jr z, @+$7d                                      ; $602e: $28 $7b

	cp $8f                                           ; $6030: $fe $8f
	dec hl                                           ; $6032: $2b
	rst $38                                          ; $6033: $ff
	cpl                                              ; $6034: $2f
	db $fc                                           ; $6035: $fc
	ld a, a                                          ; $6036: $7f
	ldh a, [rIE]                                     ; $6037: $f0 $ff
	ret nz                                           ; $6039: $c0

	rst $38                                          ; $603a: $ff
	nop                                              ; $603b: $00
	pop af                                           ; $603c: $f1
	nop                                              ; $603d: $00
	ldh [hDisp0_OBP1], a                                     ; $603e: $e0 $87
	add b                                            ; $6040: $80
	rst SubAFromBC                                          ; $6041: $e7
	ld [hl], a                                       ; $6042: $77
	cp $8c                                           ; $6043: $fe $8c
	sub b                                            ; $6045: $90
	rst SubAFromBC                                          ; $6046: $e7
	add b                                            ; $6047: $80
	rst FarCall                                          ; $6048: $f7
	call nz, $c8f3                                   ; $6049: $c4 $f3 $c8
	di                                               ; $604c: $f3

jr_011_604d:
	ld d, h                                          ; $604d: $54
	ld hl, sp+$6e                                    ; $604e: $f8 $6e
	call c, $c67b                                    ; $6050: $dc $7b $c6
	ld e, $e1                                        ; $6053: $1e $e1
	ld a, $e0                                        ; $6055: $3e $e0

Jump_011_6057:
	inc a                                            ; $6057: $3c
	ld a, e                                          ; $6058: $7b
	cp $9b                                           ; $6059: $fe $9b
	jr jr_011_604d                                   ; $605b: $18 $f0

	ld bc, $7700                                     ; $605d: $01 $00 $77
	cp $82                                           ; $6060: $fe $82
	jp Jump_011_5380                                 ; $6062: $c3 $80 $53


	ldh [$39], a                                     ; $6065: $e0 $39
	ld a, a                                          ; $6067: $7f
	ld e, a                                          ; $6068: $5f
	ccf                                              ; $6069: $3f
	scf                                              ; $606a: $37
	rra                                              ; $606b: $1f
	ld a, l                                          ; $606c: $7d
	rlca                                             ; $606d: $07
	db $fd                                           ; $606e: $fd
	rrca                                             ; $606f: $0f
	push de                                          ; $6070: $d5
	ccf                                              ; $6071: $3f
	or l                                             ; $6072: $b5
	ld a, a                                          ; $6073: $7f
	ld h, l                                          ; $6074: $65
	rst $38                                          ; $6075: $ff
	and l                                            ; $6076: $a5
	rst $38                                          ; $6077: $ff
	dec h                                            ; $6078: $25
	rst FarCall                                          ; $6079: $f7
	dec b                                            ; $607a: $05
	rst FarCall                                          ; $607b: $f7
	rst SubAFromDE                                          ; $607c: $df
	ld a, a                                          ; $607d: $7f
	rst SubAFromDE                                          ; $607e: $df
	ld a, e                                          ; $607f: $7b
	and b                                            ; $6080: $a0
	ld a, a                                          ; $6081: $7f
	cp $97                                           ; $6082: $fe $97
	ld e, [hl]                                       ; $6084: $5e
	cp $5c                                           ; $6085: $fe $5c
	db $fc                                           ; $6087: $fc
	ld e, b                                          ; $6088: $58
	ld hl, sp+$50                                    ; $6089: $f8 $50
	ldh a, [rAUD1SWEEP]                              ; $608b: $f0 $10
	ld [bc], a                                       ; $608d: $02
	add b                                            ; $608e: $80
	ld a, [bc]                                       ; $608f: $0a
	ld bc, $110a                                     ; $6090: $01 $0a $11
	add hl, hl                                       ; $6093: $29
	db $10                                           ; $6094: $10
	ld d, l                                          ; $6095: $55
	jr z, jr_011_602c                                ; $6096: $28 $94

	jr z, @-$54                                      ; $6098: $28 $aa

	inc d                                            ; $609a: $14
	xor d                                            ; $609b: $aa
	inc d                                            ; $609c: $14
	push bc                                          ; $609d: $c5
	ld a, [de]                                       ; $609e: $1a
	ld b, b                                          ; $609f: $40
	add b                                            ; $60a0: $80
	and e                                            ; $60a1: $a3
	ret nz                                           ; $60a2: $c0

	ld d, [hl]                                       ; $60a3: $56
	pop hl                                           ; $60a4: $e1
	ld d, d                                          ; $60a5: $52
	pop hl                                           ; $60a6: $e1
	xor e                                            ; $60a7: $ab
	ld [hl], b                                       ; $60a8: $70
	ld hl, $5578                                     ; $60a9: $21 $78 $55
	add hl, sp                                       ; $60ac: $39
	ld l, $80                                        ; $60ad: $2e $80
	rra                                              ; $60af: $1f
	ld l, $11                                        ; $60b0: $2e $11
	rla                                              ; $60b2: $17
	ld [$049b], sp                                   ; $60b3: $08 $9b $04
	ld e, e                                          ; $60b6: $5b
	add h                                            ; $60b7: $84
	dec a                                            ; $60b8: $3d
	jp nz, $ff3f                                     ; $60b9: $c2 $3f $ff

	db $db                                           ; $60bc: $db
	ldh [$8c], a                                     ; $60bd: $e0 $8c
	inc bc                                           ; $60bf: $03
	or a                                             ; $60c0: $b7
	ret c                                            ; $60c1: $d8

	ld e, e                                          ; $60c2: $5b
	db $ec                                           ; $60c3: $ec
	cp d                                             ; $60c4: $ba
	ld l, l                                          ; $60c5: $6d
	xor l                                            ; $60c6: $ad
	ld [hl], a                                       ; $60c7: $77
	sbc $36                                          ; $60c8: $de $36
	sub $bd                                          ; $60ca: $d6 $bd
	ld a, c                                          ; $60cc: $79
	rst $38                                          ; $60cd: $ff
	adc h                                            ; $60ce: $8c
	or $ff                                           ; $60cf: $f6 $ff
	ld b, c                                          ; $60d1: $41
	rst SubAFromDE                                          ; $60d2: $df
	ld a, a                                          ; $60d3: $7f
	rst $38                                          ; $60d4: $ff
	cp e                                             ; $60d5: $bb
	rst JumpTable                                          ; $60d6: $c7
	dec l                                            ; $60d7: $2d
	sbc a                                            ; $60d8: $9f
	or e                                             ; $60d9: $b3
	ld a, a                                          ; $60da: $7f
	ld c, h                                          ; $60db: $4c
	rst $38                                          ; $60dc: $ff
	rst FarCall                                          ; $60dd: $f7
	ld hl, sp+$7f                                    ; $60de: $f8 $7f
	add b                                            ; $60e0: $80
	ccf                                              ; $60e1: $3f
	sbc $ff                                          ; $60e2: $de $ff
	add b                                            ; $60e4: $80
	xor a                                            ; $60e5: $af
	ld a, a                                          ; $60e6: $7f
	rst FarCall                                          ; $60e7: $f7
	cpl                                              ; $60e8: $2f
	rst $38                                          ; $60e9: $ff
	rst SubAFromBC                                          ; $60ea: $e7
	ld [hl], a                                       ; $60eb: $77
	rst $38                                          ; $60ec: $ff
	rst SubAFromDE                                          ; $60ed: $df
	ccf                                              ; $60ee: $3f
	ei                                               ; $60ef: $fb
	rlca                                             ; $60f0: $07
	ld d, l                                          ; $60f1: $55
	adc d                                            ; $60f2: $8a
	ld h, d                                          ; $60f3: $62
	adc l                                            ; $60f4: $8d
	cp d                                             ; $60f5: $ba
	push bc                                          ; $60f6: $c5
	ld e, l                                          ; $60f7: $5d
	ldh [c], a                                       ; $60f8: $e2
	xor [hl]                                         ; $60f9: $ae
	pop af                                           ; $60fa: $f1
	ld d, [hl]                                       ; $60fb: $56
	ld sp, hl                                        ; $60fc: $f9
	xor b                                            ; $60fd: $a8
	ld a, a                                          ; $60fe: $7f
	call nc, $3b3f                                   ; $60ff: $d4 $3f $3b
	inc c                                            ; $6102: $0c
	or [hl]                                          ; $6103: $b6
	add b                                            ; $6104: $80
	add hl, de                                       ; $6105: $19
	ld l, a                                          ; $6106: $6f
	or a                                             ; $6107: $b7
	ld e, l                                          ; $6108: $5d
	ei                                               ; $6109: $fb
	ei                                               ; $610a: $fb
	halt                                             ; $610b: $76
	or h                                             ; $610c: $b4
	db $ed                                           ; $610d: $ed
	ld e, a                                          ; $610e: $5f
	jp hl                                            ; $610f: $e9


	ld l, c                                          ; $6110: $69
	db $db                                           ; $6111: $db
	rrca                                             ; $6112: $0f
	ccf                                              ; $6113: $3f
	ld hl, sp-$01                                    ; $6114: $f8 $ff
	sub c                                            ; $6116: $91
	rst FarCall                                          ; $6117: $f7
	ld [hl+], a                                      ; $6118: $22
	rst AddAOntoHL                                          ; $6119: $ef
	ld h, [hl]                                       ; $611a: $66
	rst $38                                          ; $611b: $ff
	adc $fa                                          ; $611c: $ce $fa
	sbc $72                                          ; $611e: $de $72
	jp c, $0f72                                      ; $6120: $da $72 $0f

	rst $38                                          ; $6123: $ff
	add b                                            ; $6124: $80
	ld sp, hl                                        ; $6125: $f9
	rst $38                                          ; $6126: $ff
	inc a                                            ; $6127: $3c
	rst SubAFromBC                                          ; $6128: $e7
	ld a, [hl]                                       ; $6129: $7e
	jp $c173                                         ; $612a: $c3 $73 $c1


	pop af                                           ; $612d: $f1
	add b                                            ; $612e: $80
	pop hl                                           ; $612f: $e1
	add b                                            ; $6130: $80
	ldh [$80], a                                     ; $6131: $e0 $80
	rst $38                                          ; $6133: $ff
	rst $38                                          ; $6134: $ff
	add b                                            ; $6135: $80
	ldh a, [$78]                                     ; $6136: $f0 $78
	cp $26                                           ; $6138: $fe $26
	ld a, a                                          ; $613a: $7f
	inc de                                           ; $613b: $13
	cp a                                             ; $613c: $bf
	sbc c                                            ; $613d: $99
	rst $38                                          ; $613e: $ff
	inc e                                            ; $613f: $1c
	rst FarCall                                          ; $6140: $f7
	sbc $73                                          ; $6141: $de $73
	ret nz                                           ; $6143: $c0

	add b                                            ; $6144: $80
	rst $38                                          ; $6145: $ff
	cp a                                             ; $6146: $bf
	ld a, a                                          ; $6147: $7f
	add hl, hl                                       ; $6148: $29
	rra                                              ; $6149: $1f
	ld d, l                                          ; $614a: $55
	adc a                                            ; $614b: $8f
	adc e                                            ; $614c: $8b
	rst SubAFromBC                                          ; $614d: $e7
	ld [hl], l                                       ; $614e: $75
	ei                                               ; $614f: $fb
	sbc h                                            ; $6150: $9c
	rst $38                                          ; $6151: $ff
	adc a                                            ; $6152: $8f
	rst $38                                          ; $6153: $ff
	ld c, c                                          ; $6154: $49
	sbc a                                            ; $6155: $9f
	and h                                            ; $6156: $a4
	ld c, a                                          ; $6157: $4f
	reti                                             ; $6158: $d9


	daa                                              ; $6159: $27
	adc b                                            ; $615a: $88
	inc bc                                           ; $615b: $03
	ld e, [hl]                                       ; $615c: $5e
	add c                                            ; $615d: $81
	xor c                                            ; $615e: $a9
	add $5c                                          ; $615f: $c6 $5c
	db $e3                                           ; $6161: $e3
	xor [hl]                                         ; $6162: $ae
	ld [hl], c                                       ; $6163: $71
	add b                                            ; $6164: $80
	ld d, e                                          ; $6165: $53
	sbc $93                                          ; $6166: $de $93
	cp $97                                           ; $6168: $fe $97
	db $fc                                           ; $616a: $fc
	sub a                                            ; $616b: $97
	db $fc                                           ; $616c: $fc
	sub [hl]                                         ; $616d: $96
	db $fd                                           ; $616e: $fd
	or a                                             ; $616f: $b7
	rst $38                                          ; $6170: $ff
	cp a                                             ; $6171: $bf
	db $ec                                           ; $6172: $ec
	cp a                                             ; $6173: $bf
	db $e4                                           ; $6174: $e4
	ld a, [$f263]                                    ; $6175: $fa $63 $f2
	ld h, e                                          ; $6178: $63
	db $d3                                           ; $6179: $d3
	ld h, c                                          ; $617a: $61
	ld b, c                                          ; $617b: $41
	ld hl, sp-$07                                    ; $617c: $f8 $f9
	db $fc                                           ; $617e: $fc
	cp $04                                           ; $617f: $fe $04
	rst $38                                          ; $6181: $ff
	nop                                              ; $6182: $00
	rst $38                                          ; $6183: $ff
	sbc e                                            ; $6184: $9b
	nop                                              ; $6185: $00
	ldh [$80], a                                     ; $6186: $e0 $80
	and b                                            ; $6188: $a0
	ld a, e                                          ; $6189: $7b
	cp $9e                                           ; $618a: $fe $9e
	sub b                                            ; $618c: $90
	ld a, e                                          ; $618d: $7b
	cp $8d                                           ; $618e: $fe $8d
	adc b                                            ; $6190: $88
	nop                                              ; $6191: $00
	ld b, b                                          ; $6192: $40
	nop                                              ; $6193: $00
	ld bc, $db00                                     ; $6194: $01 $00 $db
	ld [hl], c                                       ; $6197: $71
	dec sp                                           ; $6198: $3b
	ld [hl], c                                       ; $6199: $71
	ld [hl], c                                       ; $619a: $71
	dec l                                            ; $619b: $2d
	dec l                                            ; $619c: $2d
	ccf                                              ; $619d: $3f
	ccf                                              ; $619e: $3f
	ld [hl], e                                       ; $619f: $73
	ld a, a                                          ; $61a0: $7f
	ld b, c                                          ; $61a1: $41
	ld [hl], a                                       ; $61a2: $77
	ldh [$99], a                                     ; $61a3: $e0 $99
	ld c, c                                          ; $61a5: $49
	rst $38                                          ; $61a6: $ff
	ld l, c                                          ; $61a7: $69
	rst $38                                          ; $61a8: $ff
	jp hl                                            ; $61a9: $e9


	cp a                                             ; $61aa: $bf
	ld a, e                                          ; $61ab: $7b
	cp $80                                           ; $61ac: $fe $80
	ccf                                              ; $61ae: $3f
	db $d3                                           ; $61af: $d3
	ld a, a                                          ; $61b0: $7f
	rst FarCall                                          ; $61b1: $f7
	ld a, a                                          ; $61b2: $7f
	rst AddAOntoHL                                          ; $61b3: $ef
	rst $38                                          ; $61b4: $ff
	db $10                                           ; $61b5: $10
	rst $38                                          ; $61b6: $ff
	ld c, $ff                                        ; $61b7: $0e $ff
	sub [hl]                                         ; $61b9: $96
	di                                               ; $61ba: $f3
	ld l, d                                          ; $61bb: $6a
	rst FarCall                                          ; $61bc: $f7
	ld h, $fb                                        ; $61bd: $26 $fb
	xor [hl]                                         ; $61bf: $ae
	ei                                               ; $61c0: $fb
	ld l, c                                          ; $61c1: $69
	rst $38                                          ; $61c2: $ff
	ld [hl], l                                       ; $61c3: $75
	rst FarCall                                          ; $61c4: $f7
	rst $38                                          ; $61c5: $ff
	ldh [c], a                                       ; $61c6: $e2

jr_011_61c7:
	ld a, [hl]                                       ; $61c7: $7e
	pop hl                                           ; $61c8: $e1
	ld a, l                                          ; $61c9: $7d
	db $e3                                           ; $61ca: $e3
	ld [hl], a                                       ; $61cb: $77
	rst AddAOntoHL                                          ; $61cc: $ef
	add d                                            ; $61cd: $82
	ld h, l                                          ; $61ce: $65
	jp $c163                                         ; $61cf: $c3 $63 $c1


	ld h, c                                          ; $61d2: $61
	pop bc                                           ; $61d3: $c1
	ld b, b                                          ; $61d4: $40
	ret nz                                           ; $61d5: $c0

	ld a, e                                          ; $61d6: $7b
	db $fc                                           ; $61d7: $fc
	rst SubAFromDE                                          ; $61d8: $df
	sbc [hl]                                         ; $61d9: $9e
	sbc a                                            ; $61da: $9f
	inc c                                            ; $61db: $0c
	rra                                              ; $61dc: $1f
	jr jr_011_61c7                                   ; $61dd: $18 $e8

	ld hl, sp-$18                                    ; $61df: $f8 $e8
	ld hl, sp+$78                                    ; $61e1: $f8 $78
	ret z                                            ; $61e3: $c8

	ret c                                            ; $61e4: $d8

	sub b                                            ; $61e5: $90
	add c                                            ; $61e6: $81
	nop                                              ; $61e7: $00
	add c                                            ; $61e8: $81
	nop                                              ; $61e9: $00
	add b                                            ; $61ea: $80
	db $fc                                           ; $61eb: $fc
	sbc [hl]                                         ; $61ec: $9e
	ld [bc], a                                       ; $61ed: $02
	ld a, e                                          ; $61ee: $7b
	cp $8a                                           ; $61ef: $fe $8a
	inc bc                                           ; $61f1: $03
	nop                                              ; $61f2: $00
	rst SubAFromDE                                          ; $61f3: $df
	inc a                                            ; $61f4: $3c
	and a                                            ; $61f5: $a7
	ld h, [hl]                                       ; $61f6: $66
	rst GetHLinHL                                          ; $61f7: $cf
	ld b, a                                          ; $61f8: $47
	db $fd                                           ; $61f9: $fd
	ld e, h                                          ; $61fa: $5c
	ld [hl], l                                       ; $61fb: $75
	ld a, h                                          ; $61fc: $7c
	ld [hl], l                                       ; $61fd: $75
	ld a, h                                          ; $61fe: $7c
	ld a, e                                          ; $61ff: $7b
	ld c, b                                          ; $6200: $48
	ld a, a                                          ; $6201: $7f
	jr nc, @+$01                                     ; $6202: $30 $ff

	ld a, a                                          ; $6204: $7f
	ccf                                              ; $6205: $3f
	ld a, e                                          ; $6206: $7b
	ld a, $7e                                        ; $6207: $3e $7e
	bit 7, e                                         ; $6209: $cb $7b
	db $fd                                           ; $620b: $fd
	sub h                                            ; $620c: $94
	rst SubAFromDE                                          ; $620d: $df
	sbc a                                            ; $620e: $9f
	rst $38                                          ; $620f: $ff
	rst $38                                          ; $6210: $ff
	cp a                                             ; $6211: $bf
	ei                                               ; $6212: $fb
	di                                               ; $6213: $f3
	ld sp, hl                                        ; $6214: $f9
	ld sp, hl                                        ; $6215: $f9
	rst $38                                          ; $6216: $ff
	cp $db                                           ; $6217: $fe $db
	rst $38                                          ; $6219: $ff
	sbc d                                            ; $621a: $9a
	di                                               ; $621b: $f3
	cp $c7                                           ; $621c: $fe $c7
	db $fc                                           ; $621e: $fc
	ld b, c                                          ; $621f: $41

jr_011_6220:
	sbc $c0                                          ; $6220: $de $c0
	sub b                                            ; $6222: $90
	ld h, b                                          ; $6223: $60
	ret nz                                           ; $6224: $c0

	and b                                            ; $6225: $a0
	ret nz                                           ; $6226: $c0

	ld d, b                                          ; $6227: $50
	ldh [$e8], a                                     ; $6228: $e0 $e8
	jr nc, jr_011_6220                               ; $622a: $30 $f4

	jr @-$29                                         ; $622c: $18 $d5

	ld c, $fc                                        ; $622e: $0e $fc
	ld h, b                                          ; $6230: $60
	ld h, b                                          ; $6231: $60
	db $f4                                           ; $6232: $f4
	sub d                                            ; $6233: $92
	ld bc, $0702                                     ; $6234: $01 $02 $07
	ld [bc], a                                       ; $6237: $02
	dec bc                                           ; $6238: $0b
	ld b, $02                                        ; $6239: $06 $02
	nop                                              ; $623b: $00
	ld hl, $1e21                                     ; $623c: $21 $21 $1e
	ld c, $16                                        ; $623f: $0e $16
	cp $8f                                           ; $6241: $fe $8f
	sbc [hl]                                         ; $6243: $9e
	ld bc, $0186                                     ; $6244: $01 $86 $01
	rrca                                             ; $6247: $0f
	ld bc, $031d                                     ; $6248: $01 $1d $03
	rra                                              ; $624b: $1f
	inc bc                                           ; $624c: $03
	dec sp                                           ; $624d: $3b
	rlca                                             ; $624e: $07
	scf                                              ; $624f: $37
	rrca                                             ; $6250: $0f
	ld l, a                                          ; $6251: $6f
	rra                                              ; $6252: $1f
	pop de                                           ; $6253: $d1
	rst $38                                          ; $6254: $ff
	sbc l                                            ; $6255: $9d
	ld c, $f8                                        ; $6256: $0e $f8
	ld [hl], a                                       ; $6258: $77
	cp $92                                           ; $6259: $fe $92
	ld b, $fc                                        ; $625b: $06 $fc
	ld [bc], a                                       ; $625d: $02
	db $fc                                           ; $625e: $fc
	inc bc                                           ; $625f: $03
	cp $01                                           ; $6260: $fe $01
	cp $00                                           ; $6262: $fe $00
	rst $38                                          ; $6264: $ff
	ld b, a                                          ; $6265: $47
	inc bc                                           ; $6266: $03
	ld b, c                                          ; $6267: $41
	ld a, e                                          ; $6268: $7b
	ld [$fe77], sp                                   ; $6269: $08 $77 $fe
	rst $38                                          ; $626c: $ff
	adc d                                            ; $626d: $8a
	jr nz, jr_011_6270                               ; $626e: $20 $00

jr_011_6270:
	and b                                            ; $6270: $a0
	nop                                              ; $6271: $00
	ld b, b                                          ; $6272: $40
	add b                                            ; $6273: $80
	ret nz                                           ; $6274: $c0

	ldh [$b4], a                                     ; $6275: $e0 $b4
	ld a, b                                          ; $6277: $78
	ld b, [hl]                                       ; $6278: $46
	ccf                                              ; $6279: $3f

jr_011_627a:
	jr nz, jr_011_629b                               ; $627a: $20 $1f

	ld hl, $031f                                     ; $627c: $21 $1f $03
	rra                                              ; $627f: $1f
	ld [hl], a                                       ; $6280: $77
	rrca                                             ; $6281: $0f
	inc c                                            ; $6282: $0c
	ld [hl], a                                       ; $6283: $77
	sbc h                                            ; $6284: $9c
	sbc e                                            ; $6285: $9b
	nop                                              ; $6286: $00
	add $01                                          ; $6287: $c6 $01
	jp $ffda                                         ; $6289: $c3 $da $ff


	sbc d                                            ; $628c: $9a
	ld e, a                                          ; $628d: $5f
	ccf                                              ; $628e: $3f
	cp a                                             ; $628f: $bf
	ld a, a                                          ; $6290: $7f
	ld a, a                                          ; $6291: $7f
	adc $ff                                          ; $6292: $ce $ff
	rst SubAFromDE                                          ; $6294: $df
	cp $df                                           ; $6295: $fe $df
	db $fc                                           ; $6297: $fc
	rst SubAFromDE                                          ; $6298: $df
	ld hl, sp-$21                                    ; $6299: $f8 $df

jr_011_629b:
	ldh a, [$3e]                                     ; $629b: $f0 $3e
	ld [bc], a                                       ; $629d: $02
	add b                                            ; $629e: $80
	ld a, [bc]                                       ; $629f: $0a
	ld bc, Call_000_1309                                     ; $62a0: $01 $09 $13
	inc d                                            ; $62a3: $14
	inc hl                                           ; $62a4: $23
	inc sp                                           ; $62a5: $33
	ld h, [hl]                                       ; $62a6: $66
	or c                                             ; $62a7: $b1
	ld h, [hl]                                       ; $62a8: $66
	xor [hl]                                         ; $62a9: $ae
	ld h, h                                          ; $62aa: $64
	ld c, [hl]                                       ; $62ab: $4e
	db $e4                                           ; $62ac: $e4
	ld d, [hl]                                       ; $62ad: $56

jr_011_62ae:
	db $ec                                           ; $62ae: $ec
	ld a, [hl+]                                      ; $62af: $2a

jr_011_62b0:
	sub c                                            ; $62b0: $91
	sub [hl]                                         ; $62b1: $96
	ld hl, $2255                                     ; $62b2: $21 $55 $22
	dec d                                            ; $62b5: $15
	ld h, d                                          ; $62b6: $62
	add hl, hl                                       ; $62b7: $29
	ld b, [hl]                                       ; $62b8: $46
	jp hl                                            ; $62b9: $e9


	ld b, [hl]                                       ; $62ba: $46
	push af                                          ; $62bb: $f5
	ld c, [hl]                                       ; $62bc: $4e
	ld d, l                                          ; $62bd: $55
	add b                                            ; $62be: $80
	xor $f2                                          ; $62bf: $ee $f2
	inc c                                            ; $62c1: $0c
	push hl                                          ; $62c2: $e5
	ld e, $c4                                        ; $62c3: $1e $c4
	ccf                                              ; $62c5: $3f
	jp z, $913b                                      ; $62c6: $ca $3b $91

	ld [hl], c                                       ; $62c9: $71
	sub b                                            ; $62ca: $90
	ld [hl], b                                       ; $62cb: $70
	jr nz, jr_011_62ae                               ; $62cc: $20 $e0

	jr nz, jr_011_62b0                               ; $62ce: $20 $e0

	ld c, e                                          ; $62d0: $4b
	jr nc, jr_011_6338                               ; $62d1: $30 $65

	jr jr_011_627a                                   ; $62d3: $18 $a5

	jr jr_011_6309                                   ; $62d5: $18 $32

	adc h                                            ; $62d7: $8c
	ld d, d                                          ; $62d8: $52
	adc h                                            ; $62d9: $8c
	sub h                                            ; $62da: $94
	adc $b5                                          ; $62db: $ce $b5
	adc $80                                          ; $62dd: $ce $80
	ld d, [hl]                                       ; $62df: $56
	ld l, a                                          ; $62e0: $6f
	ld d, [hl]                                       ; $62e1: $56
	adc h                                            ; $62e2: $8c
	dec l                                            ; $62e3: $2d
	add $ab                                          ; $62e4: $c6 $ab
	ld b, [hl]                                       ; $62e6: $46
	jp nc, $b567                                     ; $62e7: $d2 $67 $b5

	ld h, e                                          ; $62ea: $63
	xor l                                            ; $62eb: $ad
	ld [hl], e                                       ; $62ec: $73
	xor l                                            ; $62ed: $ad
	ld [hl], e                                       ; $62ee: $73
	and l                                            ; $62ef: $a5
	ld a, e                                          ; $62f0: $7b
	reti                                             ; $62f1: $d9


	ld c, h                                          ; $62f2: $4c
	ld b, l                                          ; $62f3: $45
	ld l, [hl]                                       ; $62f4: $6e
	inc a                                            ; $62f5: $3c
	ld h, a                                          ; $62f6: $67
	ld [$da37], a                                    ; $62f7: $ea $37 $da
	scf                                              ; $62fa: $37
	ld d, [hl]                                       ; $62fb: $56
	cp e                                             ; $62fc: $bb
	ld d, d                                          ; $62fd: $52
	adc c                                            ; $62fe: $89
	cp a                                             ; $62ff: $bf
	ld de, $56ff                                     ; $6300: $11 $ff $56
	db $ec                                           ; $6303: $ec
	ld d, [hl]                                       ; $6304: $56
	db $ec                                           ; $6305: $ec
	dec [hl]                                         ; $6306: $35
	xor $35                                          ; $6307: $ee $35

jr_011_6309:
	xor $b4                                          ; $6309: $ee $b4
	rst AddAOntoHL                                          ; $630b: $ef
	and h                                            ; $630c: $a4
	rst $38                                          ; $630d: $ff
	jp c, $dab7                                      ; $630e: $da $b7 $da

	or a                                             ; $6311: $b7
	ld b, h                                          ; $6312: $44
	rst $38                                          ; $6313: $ff
	ld b, [hl]                                       ; $6314: $46
	ld a, e                                          ; $6315: $7b
	cp $95                                           ; $6316: $fe $95
	ld b, a                                          ; $6318: $47
	db $fd                                           ; $6319: $fd
	ld h, a                                          ; $631a: $67
	db $fd                                           ; $631b: $fd
	ld h, a                                          ; $631c: $67
	db $fc                                           ; $631d: $fc
	ld [hl], a                                       ; $631e: $77
	call c, $df74                                    ; $631f: $dc $74 $df
	ld [hl], a                                       ; $6322: $77
	xor h                                            ; $6323: $ac
	sbc l                                            ; $6324: $9d
	ld h, b                                          ; $6325: $60
	ret nz                                           ; $6326: $c0

	ld [hl], a                                       ; $6327: $77
	cp $9e                                           ; $6328: $fe $9e
	ldh [$7b], a                                     ; $632a: $e0 $7b
	cp $7f                                           ; $632c: $fe $7f
	ld a, [$468d]                                    ; $632e: $fa $8d $46
	ld a, a                                          ; $6331: $7f
	ld h, a                                          ; $6332: $67
	dec a                                            ; $6333: $3d
	daa                                              ; $6334: $27
	dec a                                            ; $6335: $3d
	scf                                              ; $6336: $37
	dec e                                            ; $6337: $1d

jr_011_6338:
	inc a                                            ; $6338: $3c
	dec de                                           ; $6339: $1b
	dec de                                           ; $633a: $1b
	rra                                              ; $633b: $1f
	rra                                              ; $633c: $1f
	inc d                                            ; $633d: $14
	ccf                                              ; $633e: $3f
	ld hl, $df71                                     ; $633f: $21 $71 $df
	ld [hl], a                                       ; $6342: $77
	cp $92                                           ; $6343: $fe $92
	ld [hl], e                                       ; $6345: $73
	sbc $d3                                          ; $6346: $de $d3
	cp $f5                                           ; $6348: $fe $f5
	cp $f6                                           ; $634a: $fe $f6
	sbc a                                            ; $634c: $9f
	rst $38                                          ; $634d: $ff
	add hl, de                                       ; $634e: $19
	ld de, $08ff                                     ; $634f: $11 $ff $08
	ld a, e                                          ; $6352: $7b
	cp $80                                           ; $6353: $fe $80
	adc c                                            ; $6355: $89
	rst $38                                          ; $6356: $ff
	add a                                            ; $6357: $87
	rst $38                                          ; $6358: $ff
	jp $a17f                                         ; $6359: $c3 $7f $a1


	ld a, a                                          ; $635c: $7f
	pop de                                           ; $635d: $d1
	ld a, a                                          ; $635e: $7f
	push de                                          ; $635f: $d5
	cp e                                             ; $6360: $bb
	xor l                                            ; $6361: $ad
	db $db                                           ; $6362: $db
	ld l, [hl]                                       ; $6363: $6e
	reti                                             ; $6364: $d9


	ld l, [hl]                                       ; $6365: $6e
	reti                                             ; $6366: $d9


	rst AddAOntoHL                                          ; $6367: $ef
	ld e, c                                          ; $6368: $59
	db $ed                                           ; $6369: $ed
	ld e, e                                          ; $636a: $5b
	db $ed                                           ; $636b: $ed
	ld e, e                                          ; $636c: $5b
	db $db                                           ; $636d: $db
	ld [hl], a                                       ; $636e: $77
	ld a, a                                          ; $636f: $7f
	rst GetHLinHL                                          ; $6370: $cf
	ld l, a                                          ; $6371: $6f
	call c, $91bf                                    ; $6372: $dc $bf $91
	db $f4                                           ; $6375: $f4
	rst $38                                          ; $6376: $ff
	ldh [c], a                                       ; $6377: $e2

jr_011_6378:
	rst $38                                          ; $6378: $ff
	jr nz, jr_011_6378                               ; $6379: $20 $fd

	inc de                                           ; $637b: $13
	rst FarCall                                          ; $637c: $f7
	rrca                                             ; $637d: $0f
	db $ec                                           ; $637e: $ec
	ld e, $f0                                        ; $637f: $1e $f0
	and b                                            ; $6381: $a0
	ldh a, [$bd]                                     ; $6382: $f0 $bd
	ld hl, sp-$08                                    ; $6384: $f8 $f8
	ld hl, sp-$28                                    ; $6386: $f8 $d8
	rst SubAFromDE                                          ; $6388: $df
	ldh [$de], a                                     ; $6389: $e0 $de
	ldh a, [$9e]                                     ; $638b: $f0 $9e
	ccf                                              ; $638d: $3f
	cp [hl]                                          ; $638e: $be
	rra                                              ; $638f: $1f
	rra                                              ; $6390: $1f
	dec de                                           ; $6391: $1b
	add b                                            ; $6392: $80
	rlca                                             ; $6393: $07
	ld b, $0f                                        ; $6394: $06 $0f
	ld a, [bc]                                       ; $6396: $0a
	ld c, $0e                                        ; $6397: $0e $0e
	ld [bc], a                                       ; $6399: $02
	inc bc                                           ; $639a: $03
	inc bc                                           ; $639b: $03
	rst $38                                          ; $639c: $ff
	db $10                                           ; $639d: $10
	rst $38                                          ; $639e: $ff
	jr nz, @+$01                                     ; $639f: $20 $ff

	nop                                              ; $63a1: $00
	rst SubAFromDE                                          ; $63a2: $df
	ldh [$f7], a                                     ; $63a3: $e0 $f7
	ld hl, sp+$7f                                    ; $63a5: $f8 $7f
	ld a, [hl]                                       ; $63a7: $7e
	rst $38                                          ; $63a8: $ff
	db $f4                                           ; $63a9: $f4
	rst FarCall                                          ; $63aa: $f7
	ldh a, [$cc]                                     ; $63ab: $f0 $cc
	ld a, a                                          ; $63ad: $7f
	rst JumpTable                                          ; $63ae: $c7
	ld a, a                                          ; $63af: $7f
	call $9e7f                                       ; $63b0: $cd $7f $9e
	add hl, bc                                       ; $63b3: $09
	ld a, e                                          ; $63b4: $7b
	sbc [hl]                                         ; $63b5: $9e
	ld [hl], a                                       ; $63b6: $77
	cp $80                                           ; $63b7: $fe $80
	adc h                                            ; $63b9: $8c
	rst $38                                          ; $63ba: $ff
	push de                                          ; $63bb: $d5
	ld a, a                                          ; $63bc: $7f
	db $ec                                           ; $63bd: $ec
	ld a, a                                          ; $63be: $7f
	ld a, d                                          ; $63bf: $7a
	rst $38                                          ; $63c0: $ff
	ld l, d                                          ; $63c1: $6a
	rst $38                                          ; $63c2: $ff
	adc $fb                                          ; $63c3: $ce $fb
	ld c, e                                          ; $63c5: $4b
	ld a, [$da6b]                                    ; $63c6: $fa $6b $da
	di                                               ; $63c9: $f3
	ld e, d                                          ; $63ca: $5a
	ld [hl], h                                       ; $63cb: $74
	sbc h                                            ; $63cc: $9c
	push af                                          ; $63cd: $f5
	or l                                             ; $63ce: $b5
	or a                                             ; $63cf: $b7
	rst SubAFromHL                                          ; $63d0: $d7
	halt                                             ; $63d1: $76
	rst JumpTable                                          ; $63d2: $c7
	ld e, d                                          ; $63d3: $5a
	db $e3                                           ; $63d4: $e3
	ld a, l                                          ; $63d5: $7d
	db $e3                                           ; $63d6: $e3
	ld l, a                                          ; $63d7: $6f
	sbc l                                            ; $63d8: $9d
	ldh a, [$5c]                                     ; $63d9: $f0 $5c
	db $dd                                           ; $63db: $dd
	ldh a, [$8b]                                     ; $63dc: $f0 $8b
	ldh [$a0], a                                     ; $63de: $e0 $a0
	ldh [rAUD4LEN], a                                ; $63e0: $e0 $20
	and b                                            ; $63e2: $a0
	ld h, b                                          ; $63e3: $60
	nop                                              ; $63e4: $00
	pop hl                                           ; $63e5: $e1
	ret nz                                           ; $63e6: $c0

	ld bc, $0301                                     ; $63e7: $01 $01 $03
	ld bc, $0302                                     ; $63ea: $01 $02 $03
	ld [bc], a                                       ; $63ed: $02
	inc bc                                           ; $63ee: $03
	ld bc, $8101                                     ; $63ef: $01 $01 $81
	cp l                                             ; $63f2: $bd
	ret nz                                           ; $63f3: $c0

	ldh [$f0], a                                     ; $63f4: $e0 $f0
	and b                                            ; $63f6: $a0
	add b                                            ; $63f7: $80
	ret nz                                           ; $63f8: $c0

	rst SubAFromHL                                          ; $63f9: $d7
	ldh a, [rAUD2LEN]                                ; $63fa: $f0 $16
	pop de                                           ; $63fc: $d1
	cpl                                              ; $63fd: $2f
	and c                                            ; $63fe: $a1
	rst SubAFromDE                                          ; $63ff: $df
	pop hl                                           ; $6400: $e1
	rlca                                             ; $6401: $07
	ld bc, $010f                                     ; $6402: $01 $0f $01
	dec c                                            ; $6405: $0d
	inc bc                                           ; $6406: $03
	rra                                              ; $6407: $1f
	inc bc                                           ; $6408: $03
	res 7, [hl]                                      ; $6409: $cb $be
	ld c, d                                          ; $640b: $4a
	cp a                                             ; $640c: $bf
	ld c, l                                          ; $640d: $4d
	cp a                                             ; $640e: $bf
	ld c, a                                          ; $640f: $4f
	cp l                                             ; $6410: $bd
	ld a, [bc]                                       ; $6411: $0a
	cp a                                             ; $6412: $bf
	dec hl                                           ; $6413: $2b
	sbc [hl]                                         ; $6414: $9e
	add hl, hl                                       ; $6415: $29
	sbc a                                            ; $6416: $9f
	sbc b                                            ; $6417: $98
	and a                                            ; $6418: $a7
	sbc l                                            ; $6419: $9d
	rst SubAFromDE                                          ; $641a: $df
	ld d, d                                          ; $641b: $52
	ld d, d                                          ; $641c: $52
	sub $92                                          ; $641d: $d6 $92
	ld a, e                                          ; $641f: $7b
	cp $86                                           ; $6420: $fe $86
	ld e, h                                          ; $6422: $5c
	sub [hl]                                         ; $6423: $96
	ld d, l                                          ; $6424: $55
	sbc [hl]                                         ; $6425: $9e
	ld d, l                                          ; $6426: $55
	sbc [hl]                                         ; $6427: $9e
	or l                                             ; $6428: $b5
	ld e, $54                                        ; $6429: $1e $54
	ld hl, sp+$5e                                    ; $642b: $f8 $5e
	ld hl, sp+$56                                    ; $642d: $f8 $56
	db $fc                                           ; $642f: $fc
	ld d, a                                          ; $6430: $57
	cp $33                                           ; $6431: $fe $33
	rst $38                                          ; $6433: $ff
	ld [hl-], a                                      ; $6434: $32
	ld a, a                                          ; $6435: $7f
	ld [hl-], a                                      ; $6436: $32
	ld a, a                                          ; $6437: $7f
	ld [de], a                                       ; $6438: $12
	ld a, a                                          ; $6439: $7f
	ld bc, $00bf                                     ; $643a: $01 $bf $00
	ld bc, $fb7b                                     ; $643d: $01 $7b $fb
	adc h                                            ; $6440: $8c
	add b                                            ; $6441: $80
	nop                                              ; $6442: $00
	ret nz                                           ; $6443: $c0

	add b                                            ; $6444: $80
	ld d, b                                          ; $6445: $50
	ldh [$34], a                                     ; $6446: $e0 $34
	ld hl, sp-$40                                    ; $6448: $f8 $c0
	add b                                            ; $644a: $80
	nop                                              ; $644b: $00
	ld [$b018], sp                                   ; $644c: $08 $18 $b0
	jr nc, jr_011_6451                               ; $644f: $30 $00

jr_011_6451:
	nop                                              ; $6451: $00
	ld h, b                                          ; $6452: $60
	ld bc, $03bf                                     ; $6453: $01 $bf $03
	dec b                                            ; $6456: $05
	add b                                            ; $6457: $80
	inc bc                                           ; $6458: $03
	ld a, [de]                                       ; $6459: $1a
	rlca                                             ; $645a: $07
	ld a, $07                                        ; $645b: $3e $07
	ld a, [hl-]                                      ; $645d: $3a
	rrca                                             ; $645e: $0f
	ld a, d                                          ; $645f: $7a
	rra                                              ; $6460: $1f
	jp hl                                            ; $6461: $e9


	ccf                                              ; $6462: $3f
	jp hl                                            ; $6463: $e9


	ld a, a                                          ; $6464: $7f
	push hl                                          ; $6465: $e5
	cp a                                             ; $6466: $bf
	push hl                                          ; $6467: $e5
	ccf                                              ; $6468: $3f
	rst JumpTable                                          ; $6469: $c7
	sbc l                                            ; $646a: $9d
	sub e                                            ; $646b: $93
	rst GetHLinHL                                          ; $646c: $cf
	sub e                                            ; $646d: $93
	rst GetHLinHL                                          ; $646e: $cf
	ld de, $63cf                                     ; $646f: $11 $cf $63
	call $cd62                                       ; $6472: $cd $62 $cd
	ld l, e                                          ; $6475: $6b
	call nz, Call_011_4b9a                           ; $6476: $c4 $9a $4b
	db $e4                                           ; $6479: $e4
	xor h                                            ; $647a: $ac
	rra                                              ; $647b: $1f
	xor l                                            ; $647c: $ad
	ld a, e                                          ; $647d: $7b
	cp $80                                           ; $647e: $fe $80
	dec l                                            ; $6480: $2d
	rra                                              ; $6481: $1f
	ld l, h                                          ; $6482: $6c
	rra                                              ; $6483: $1f
	ld c, d                                          ; $6484: $4a
	ccf                                              ; $6485: $3f
	ld d, d                                          ; $6486: $52
	ccf                                              ; $6487: $3f
	ld d, c                                          ; $6488: $51
	ccf                                              ; $6489: $3f
	ld d, [hl]                                       ; $648a: $56
	dec sp                                           ; $648b: $3b
	sub a                                            ; $648c: $97
	ld a, [hl-]                                      ; $648d: $3a
	sub a                                            ; $648e: $97
	ld a, [hl-]                                      ; $648f: $3a
	rrca                                             ; $6490: $0f
	cp d                                             ; $6491: $ba
	db $eb                                           ; $6492: $eb
	sbc [hl]                                         ; $6493: $9e
	jp nz, $979f                                     ; $6494: $c2 $9f $97

	rst GetHLinHL                                          ; $6497: $cf
	or e                                             ; $6498: $b3
	rst GetHLinHL                                          ; $6499: $cf
	dec l                                            ; $649a: $2d
	cp $2f                                           ; $649b: $fe $2f
	ld sp, hl                                        ; $649d: $f9
	dec hl                                           ; $649e: $2b
	adc c                                            ; $649f: $89
	ld hl, sp+$29                                    ; $64a0: $f8 $29
	ld hl, sp+$28                                    ; $64a2: $f8 $28
	ld hl, sp+$78                                    ; $64a4: $f8 $78
	ld hl, sp-$28                                    ; $64a6: $f8 $d8
	adc b                                            ; $64a8: $88
	inc c                                            ; $64a9: $0c
	inc b                                            ; $64aa: $04
	ld a, [bc]                                       ; $64ab: $0a
	rlca                                             ; $64ac: $07
	db $ed                                           ; $64ad: $ed
	sbc [hl]                                         ; $64ae: $9e
	ld [hl], c                                       ; $64af: $71
	cp $83                                           ; $64b0: $fe $83
	ld a, h                                          ; $64b2: $7c
	rst JumpTable                                          ; $64b3: $c7
	jr c, @+$81                                      ; $64b4: $38 $7f

	cp [hl]                                          ; $64b6: $be
	ld a, a                                          ; $64b7: $7f
	ccf                                              ; $64b8: $3f
	push af                                          ; $64b9: $f5
	add b                                            ; $64ba: $80
	ccf                                              ; $64bb: $3f
	push af                                          ; $64bc: $f5
	ccf                                              ; $64bd: $3f
	di                                               ; $64be: $f3
	ccf                                              ; $64bf: $3f
	ldh a, [c]                                       ; $64c0: $f2
	ccf                                              ; $64c1: $3f
	ld a, [$ee2f]                                    ; $64c2: $fa $2f $ee
	daa                                              ; $64c5: $27
	rst SubAFromBC                                          ; $64c6: $e7
	ld b, e                                          ; $64c7: $43
	jp $4b81                                         ; $64c8: $c3 $81 $4b


	db $e4                                           ; $64cb: $e4
	ld d, e                                          ; $64cc: $53
	db $e4                                           ; $64cd: $e4
	ld d, l                                          ; $64ce: $55
	ldh [c], a                                       ; $64cf: $e2
	ld d, l                                          ; $64d0: $55
	ldh [c], a                                       ; $64d1: $e2
	ld b, h                                          ; $64d2: $44
	ldh a, [c]                                       ; $64d3: $f2
	ld c, b                                          ; $64d4: $48
	ldh a, [$c8]                                     ; $64d5: $f0 $c8
	ldh a, [$c0]                                     ; $64d7: $f0 $c0
	ldh a, [rLCDC]                                   ; $64d9: $f0 $40
	ld [bc], a                                       ; $64db: $02
	sub l                                            ; $64dc: $95
	ld [$1c0d], sp                                   ; $64dd: $08 $0d $1c
	add hl, de                                       ; $64e0: $19
	dec [hl]                                         ; $64e1: $35
	ld a, [hl-]                                      ; $64e2: $3a

jr_011_64e3:
	ld [hl], b                                       ; $64e3: $70
	ld a, d                                          ; $64e4: $7a
	ldh a, [$fa]                                     ; $64e5: $f0 $fa
	ld l, a                                          ; $64e7: $6f
	cp $80                                           ; $64e8: $fe $80
	xor h                                            ; $64ea: $ac
	inc de                                           ; $64eb: $13
	ld c, d                                          ; $64ec: $4a
	inc h                                            ; $64ed: $24
	dec h                                            ; $64ee: $25
	ld c, b                                          ; $64ef: $48
	sub [hl]                                         ; $64f0: $96
	ld c, c                                          ; $64f1: $49
	adc b                                            ; $64f2: $88
	ld d, d                                          ; $64f3: $52
	ld c, c                                          ; $64f4: $49
	sub d                                            ; $64f5: $92
	ld hl, $2595                                     ; $64f6: $21 $95 $25
	sub l                                            ; $64f9: $95
	dec b                                            ; $64fa: $05
	rst $38                                          ; $64fb: $ff
	xor a                                            ; $64fc: $af
	ld a, [hl]                                       ; $64fd: $7e
	ld d, l                                          ; $64fe: $55
	cp [hl]                                          ; $64ff: $be
	ld l, b                                          ; $6500: $68
	rra                                              ; $6501: $1f
	db $eb                                           ; $6502: $eb
	ld a, a                                          ; $6503: $7f
	cp l                                             ; $6504: $bd
	sbc [hl]                                         ; $6505: $9e
	ld c, d                                          ; $6506: $4a
	ccf                                              ; $6507: $3f
	sbc l                                            ; $6508: $9d
	add b                                            ; $6509: $80
	ld a, a                                          ; $650a: $7f
	call nc, Call_011_6ae3                           ; $650b: $d4 $e3 $6a
	ld sp, $18b5                                     ; $650e: $31 $b5 $18
	ld d, d                                          ; $6511: $52
	adc h                                            ; $6512: $8c
	jr nz, jr_011_64e3                               ; $6513: $20 $ce

	ld de, $a266                                     ; $6515: $11 $66 $a2
	scf                                              ; $6518: $37
	ld e, d                                          ; $6519: $5a
	or a                                             ; $651a: $b7
	ld [hl+], a                                      ; $651b: $22
	sbc h                                            ; $651c: $9c
	ld a, [de]                                       ; $651d: $1a
	call z, $ce10                                    ; $651e: $cc $10 $ce
	ld h, c                                          ; $6521: $61
	adc $cd                                          ; $6522: $ce $cd
	ld h, [hl]                                       ; $6524: $66
	ld c, l                                          ; $6525: $4d
	ld h, [hl]                                       ; $6526: $66
	jr jr_011_6590                                   ; $6527: $18 $67

	add b                                            ; $6529: $80
	xor d                                            ; $652a: $aa
	ld [hl], a                                       ; $652b: $77
	ld b, h                                          ; $652c: $44
	rst AddAOntoHL                                          ; $652d: $ef
	adc h                                            ; $652e: $8c
	ld h, a                                          ; $652f: $67
	or h                                             ; $6530: $b4
	ld h, a                                          ; $6531: $67
	ld [hl-], a                                      ; $6532: $32

Call_011_6533:
	ld h, a                                          ; $6533: $67
	ld h, $73                                        ; $6534: $26 $73
	ld l, d                                          ; $6536: $6a
	inc sp                                           ; $6537: $33
	ld c, c                                          ; $6538: $49
	inc sp                                           ; $6539: $33
	call $fc33                                       ; $653a: $cd $33 $fc
	ldh a, [c]                                       ; $653d: $f2
	db $fd                                           ; $653e: $fd
	ldh a, [c]                                       ; $653f: $f2
	db $ed                                           ; $6540: $ed
	ldh a, [c]                                       ; $6541: $f2
	jp hl                                            ; $6542: $e9


	or $ea                                           ; $6543: $f6 $ea
	rst FarCall                                          ; $6545: $f7
	db $f4                                           ; $6546: $f4
	rst AddAOntoHL                                          ; $6547: $ef
	call nc, $ef87                                   ; $6548: $d4 $87 $ef
	jp hl                                            ; $654b: $e9


	rst SubAFromDE                                          ; $654c: $df
	rla                                              ; $654d: $17
	or l                                             ; $654e: $b5
	ld d, a                                          ; $654f: $57
	or l                                             ; $6550: $b5
	rst SubAFromHL                                          ; $6551: $d7
	or l                                             ; $6552: $b5
	db $dd                                           ; $6553: $dd
	or a                                             ; $6554: $b7
	sub l                                            ; $6555: $95
	rst $38                                          ; $6556: $ff
	sub l                                            ; $6557: $95
	rst $38                                          ; $6558: $ff
	cp l                                             ; $6559: $bd
	rst AddAOntoHL                                          ; $655a: $ef
	dec l                                            ; $655b: $2d
	rst $38                                          ; $655c: $ff
	cpl                                              ; $655d: $2f
	ldh a, [$5c]                                     ; $655e: $f0 $5c
	ldh [$58], a                                     ; $6560: $e0 $58
	ld a, e                                          ; $6562: $7b
	cp $9e                                           ; $6563: $fe $9e
	or b                                             ; $6565: $b0
	ld a, e                                          ; $6566: $7b
	cp $80                                           ; $6567: $fe $80
	ldh a, [$60]                                     ; $6569: $f0 $60
	ld [hl], b                                       ; $656b: $70
	and b                                            ; $656c: $a0
	sub e                                            ; $656d: $93
	rst $38                                          ; $656e: $ff
	pop de                                           ; $656f: $d1
	ld a, a                                          ; $6570: $7f
	reti                                             ; $6571: $d9


	ld a, a                                          ; $6572: $7f
	ld a, c                                          ; $6573: $79
	ld l, a                                          ; $6574: $6f
	ld a, c                                          ; $6575: $79
	ld l, a                                          ; $6576: $6f
	ld a, l                                          ; $6577: $7d
	ld b, a                                          ; $6578: $47
	ld l, l                                          ; $6579: $6d
	ld b, a                                          ; $657a: $47
	db $e3                                           ; $657b: $e3
	add a                                            ; $657c: $87
	ld [hl-], a                                      ; $657d: $32
	rst $38                                          ; $657e: $ff
	ld [hl-], a                                      ; $657f: $32
	rst $38                                          ; $6580: $ff
	jr z, @+$01                                      ; $6581: $28 $ff

	cp c                                             ; $6583: $b9
	rst AddAOntoHL                                          ; $6584: $ef
	cp c                                             ; $6585: $b9
	rst $38                                          ; $6586: $ff
	push de                                          ; $6587: $d5
	sub d                                            ; $6588: $92
	ld a, a                                          ; $6589: $7f
	call c, $3677                                    ; $658a: $dc $77 $36
	ei                                               ; $658d: $fb
	push de                                          ; $658e: $d5
	dec sp                                           ; $658f: $3b

jr_011_6590:
	ld d, l                                          ; $6590: $55
	cp e                                             ; $6591: $bb
	dec d                                            ; $6592: $15
	ei                                               ; $6593: $fb
	ld de, $77ff                                     ; $6594: $11 $ff $77
	cp $9e                                           ; $6597: $fe $9e
	sub c                                            ; $6599: $91
	ld a, e                                          ; $659a: $7b
	cp $80                                           ; $659b: $fe $80
	sub a                                            ; $659d: $97
	rst $38                                          ; $659e: $ff
	ld a, d                                          ; $659f: $7a
	rst $38                                          ; $65a0: $ff
	push af                                          ; $65a1: $f5
	rst $38                                          ; $65a2: $ff
	rst FarCall                                          ; $65a3: $f7
	rst $38                                          ; $65a4: $ff
	db $fd                                           ; $65a5: $fd
	rst FarCall                                          ; $65a6: $f7
	db $fd                                           ; $65a7: $fd
	rst FarCall                                          ; $65a8: $f7
	ld [$fbff], a                                    ; $65a9: $ea $ff $fb
	xor $5f                                          ; $65ac: $ee $5f
	rst $38                                          ; $65ae: $ff
	or e                                             ; $65af: $b3
	cp $ef                                           ; $65b0: $fe $ef
	db $f4                                           ; $65b2: $f4
	rst SubAFromDE                                          ; $65b3: $df
	ldh [$7b], a                                     ; $65b4: $e0 $7b
	rst JumpTable                                          ; $65b6: $c7
	ld l, a                                          ; $65b7: $6f
	rst SubAFromDE                                          ; $65b8: $df
	ld e, [hl]                                       ; $65b9: $5e
	cp $7d                                           ; $65ba: $fe $7d
	sbc c                                            ; $65bc: $99
	ld [hl], l                                       ; $65bd: $75
	cp b                                             ; $65be: $b8
	ret nc                                           ; $65bf: $d0

	add sp, $40                                      ; $65c0: $e8 $40
	db $e4                                           ; $65c2: $e4
	cp a                                             ; $65c3: $bf
	ldh a, [$b0]                                     ; $65c4: $f0 $b0
	sub e                                            ; $65c6: $93
	ret nz                                           ; $65c7: $c0

	ret nc                                           ; $65c8: $d0

	ldh [rSVBK], a                                   ; $65c9: $e0 $70
	ld h, b                                          ; $65cb: $60
	ldh a, [$e0]                                     ; $65cc: $f0 $e0
	ld c, a                                          ; $65ce: $4f
	rrca                                             ; $65cf: $0f
	rra                                              ; $65d0: $1f
	ld bc, $be1f                                     ; $65d1: $01 $1f $be
	ccf                                              ; $65d4: $3f
	ccf                                              ; $65d5: $3f
	dec a                                            ; $65d6: $3d
	sub e                                            ; $65d7: $93
	inc bc                                           ; $65d8: $03
	rla                                              ; $65d9: $17
	rrca                                             ; $65da: $0f
	rra                                              ; $65db: $1f
	rrca                                             ; $65dc: $0f
	db $eb                                           ; $65dd: $eb
	cp $fd                                           ; $65de: $fe $fd
	rra                                              ; $65e0: $1f
	rst $38                                          ; $65e1: $ff
	adc d                                            ; $65e2: $8a
	rst $38                                          ; $65e3: $ff
	cp a                                             ; $65e4: $bf
	rst $38                                          ; $65e5: $ff
	rst SubAFromDE                                          ; $65e6: $df
	sbc c                                            ; $65e7: $99
	ldh [rIE], a                                     ; $65e8: $e0 $ff
	ldh a, [$3f]                                     ; $65ea: $f0 $3f
	jr c, @+$4a                                      ; $65ec: $38 $48

	ld a, e                                          ; $65ee: $7b
	sub d                                            ; $65ef: $92
	add [hl]                                         ; $65f0: $86
	sub h                                            ; $65f1: $94
	rst $38                                          ; $65f2: $ff
	db $ec                                           ; $65f3: $ec
	ld a, a                                          ; $65f4: $7f
	ld a, [$ea3f]                                    ; $65f5: $fa $3f $ea
	ccf                                              ; $65f8: $3f
	rst SubAFromBC                                          ; $65f9: $e7
	ccf                                              ; $65fa: $3f

jr_011_65fb:
	push hl                                          ; $65fb: $e5
	ccf                                              ; $65fc: $3f
	ei                                               ; $65fd: $fb
	xor $ea                                          ; $65fe: $ee $ea
	rst $38                                          ; $6600: $ff
	di                                               ; $6601: $f3
	rst SubAFromDE                                          ; $6602: $df

jr_011_6603:
	db $db                                           ; $6603: $db
	rst FarCall                                          ; $6604: $f7
	cp d                                             ; $6605: $ba
	rst FarCall                                          ; $6606: $f7
	ld a, d                                          ; $6607: $7a
	rst FarCall                                          ; $6608: $f7
	ei                                               ; $6609: $fb
	ld a, e                                          ; $660a: $7b
	cp $8f                                           ; $660b: $fe $8f
	ld [hl], a                                       ; $660d: $77
	ld d, a                                          ; $660e: $57
	ld [hl], l                                       ; $660f: $75
	ld b, a                                          ; $6610: $47
	ld [hl], l                                       ; $6611: $75
	ld b, a                                          ; $6612: $47
	cp d                                             ; $6613: $ba
	inc hl                                           ; $6614: $23
	rst $38                                          ; $6615: $ff
	and c                                            ; $6616: $a1
	db $fc                                           ; $6617: $fc
	ld d, b                                          ; $6618: $50
	cp $78                                           ; $6619: $fe $78
	ld a, h                                          ; $661b: $7c
	jr nz, jr_011_65fb                               ; $661c: $20 $dd

	ldh [$8e], a                                     ; $661e: $e0 $8e
	and b                                            ; $6620: $a0
	ldh [rLCDC], a                                   ; $6621: $e0 $40
	ld b, b                                          ; $6623: $40
	db $e4                                           ; $6624: $e4
	ret nz                                           ; $6625: $c0

	inc b                                            ; $6626: $04
	nop                                              ; $6627: $00
	ld c, $08                                        ; $6628: $0e $08
	rra                                              ; $662a: $1f
	jr jr_011_663b                                   ; $662b: $18 $0e

	ld a, [bc]                                       ; $662d: $0a
	inc bc                                           ; $662e: $03
	inc bc                                           ; $662f: $03
	ld [bc], a                                       ; $6630: $02
	ld a, e                                          ; $6631: $7b
	cp $df                                           ; $6632: $fe $df
	ld bc, $039e                                     ; $6634: $01 $9e $03
	cp [hl]                                          ; $6637: $be
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	ld a, a                                          ; $663a: $7f

jr_011_663b:
	sbc [hl]                                         ; $663b: $9e
	ld a, h                                          ; $663c: $7c
	sbc $ff                                          ; $663d: $de $ff
	add b                                            ; $663f: $80
	db $f4                                           ; $6640: $f4
	rst SubAFromHL                                          ; $6641: $d7
	ldh a, [$27]                                     ; $6642: $f0 $27
	and b                                            ; $6644: $a0
	rst AddAOntoHL                                          ; $6645: $ef
	pop hl                                           ; $6646: $e1
	cp $06                                           ; $6647: $fe $06
	dec sp                                           ; $6649: $3b
	jr jr_011_6603                                   ; $664a: $18 $b7

	ld l, l                                          ; $664c: $6d
	push de                                          ; $664d: $d5
	ld l, a                                          ; $664e: $6f
	rst GetHLinHL                                          ; $664f: $cf
	ld e, e                                          ; $6650: $5b
	ld c, e                                          ; $6651: $4b
	rst SubAFromDE                                          ; $6652: $df
	cp l                                             ; $6653: $bd
	sub a                                            ; $6654: $97
	ld d, l                                          ; $6655: $55
	ccf                                              ; $6656: $3f
	or l                                             ; $6657: $b5
	ld l, a                                          ; $6658: $6f
	ld c, a                                          ; $6659: $4f
	db $dd                                           ; $665a: $dd
	ld a, [$faf7]                                    ; $665b: $fa $f7 $fa
	or $7f                                           ; $665e: $f6 $7f
	cp $9b                                           ; $6660: $fe $9b
	db $e3                                           ; $6662: $e3
	or $f7                                           ; $6663: $f6 $f7
	push hl                                          ; $6665: $e5
	ld [hl], a                                       ; $6666: $77
	cp $8a                                           ; $6667: $fe $8a
	push af                                          ; $6669: $f5
	push hl                                          ; $666a: $e5
	cp b                                             ; $666b: $b8
	sub b                                            ; $666c: $90
	call c, $b7cc                                    ; $666d: $dc $cc $b7
	di                                               ; $6670: $f3
	rst $38                                          ; $6671: $ff
	cp h                                             ; $6672: $bc
	cp $5c                                           ; $6673: $fe $5c
	ld d, a                                          ; $6675: $57
	ld e, [hl]                                       ; $6676: $5e
	ei                                               ; $6677: $fb
	ld l, a                                          ; $6678: $6f
	xor c                                            ; $6679: $a9
	xor a                                            ; $667a: $af
	ld a, [de]                                       ; $667b: $1a
	inc c                                            ; $667c: $0c
	inc c                                            ; $667d: $0c
	cp a                                             ; $667e: $bf
	add b                                            ; $667f: $80
	dec bc                                           ; $6680: $0b
	sub [hl]                                         ; $6681: $96
	add hl, bc                                       ; $6682: $09
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	dec b                                            ; $6685: $05
	ld [bc], a                                       ; $6686: $02
	add b                                            ; $6687: $80
	nop                                              ; $6688: $00
	ret nz                                           ; $6689: $c0

	add b                                            ; $668a: $80
	db $fd                                           ; $668b: $fd
	sbc d                                            ; $668c: $9a
	ld b, b                                          ; $668d: $40
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	add b                                            ; $6690: $80
	ld bc, $03be                                     ; $6691: $01 $be $03
	rlca                                             ; $6694: $07
	ld c, $80                                        ; $6695: $0e $80
	ld bc, SetWramBankToHighByteInStackAfterReturn                                     ; $6697: $01 $7f $07
	ld a, c                                          ; $669a: $79
	rlca                                             ; $669b: $07
	or $0e                                           ; $669c: $f6 $0e
	ld sp, hl                                        ; $669e: $f9
	dec sp                                           ; $669f: $3b
	rst AddAOntoHL                                          ; $66a0: $ef
	rra                                              ; $66a1: $1f
	db $dd                                           ; $66a2: $dd
	ccf                                              ; $66a3: $3f
	and [hl]                                         ; $66a4: $a6
	ld a, a                                          ; $66a5: $7f
	db $e4                                           ; $66a6: $e4
	rst $38                                          ; $66a7: $ff
	sbc a                                            ; $66a8: $9f
	cp e                                             ; $66a9: $bb
	cpl                                              ; $66aa: $2f
	ld a, e                                          ; $66ab: $7b
	ld e, e                                          ; $66ac: $5b
	rst $38                                          ; $66ad: $ff
	db $dd                                           ; $66ae: $dd
	or a                                             ; $66af: $b7
	push af                                          ; $66b0: $f5
	cpl                                              ; $66b1: $2f
	cp c                                             ; $66b2: $b9
	ld l, a                                          ; $66b3: $6f
	ld l, l                                          ; $66b4: $6d
	ei                                               ; $66b5: $fb
	add b                                            ; $66b6: $80
	push af                                          ; $66b7: $f5
	db $db                                           ; $66b8: $db
	db $ed                                           ; $66b9: $ed
	push hl                                          ; $66ba: $e5
	push bc                                          ; $66bb: $c5
	db $ed                                           ; $66bc: $ed
	rst JumpTable                                          ; $66bd: $c7
	jp hl                                            ; $66be: $e9


	jp hl                                            ; $66bf: $e9


	set 3, c                                         ; $66c0: $cb $d9
	set 1, c                                         ; $66c2: $cb $c9
	db $db                                           ; $66c4: $db
	adc l                                            ; $66c5: $8d
	db $d3                                           ; $66c6: $d3
	ei                                               ; $66c7: $fb
	sub a                                            ; $66c8: $97
	or a                                             ; $66c9: $b7
	cp l                                             ; $66ca: $bd
	db $fd                                           ; $66cb: $fd
	or a                                             ; $66cc: $b7
	rst SubAFromDE                                          ; $66cd: $df
	ld e, e                                          ; $66ce: $5b
	rst FarCall                                          ; $66cf: $f7
	ld e, a                                          ; $66d0: $5f
	di                                               ; $66d1: $f3
	ld a, a                                          ; $66d2: $7f
	or l                                             ; $66d3: $b5
	ld a, e                                          ; $66d4: $7b
	or l                                             ; $66d5: $b5
	add b                                            ; $66d6: $80
	ld a, e                                          ; $66d7: $7b
	xor a                                            ; $66d8: $af
	ld a, e                                          ; $66d9: $7b
	ldh [$c0], a                                     ; $66da: $e0 $c0
	ld [hl], b                                       ; $66dc: $70
	ldh [$5d], a                                     ; $66dd: $e0 $5d
	ld hl, sp+$5f                                    ; $66df: $f8 $5f
	rst $38                                          ; $66e1: $ff
	ld e, h                                          ; $66e2: $5c
	di                                               ; $66e3: $f3
	ld e, e                                          ; $66e4: $5b
	ldh a, [$f9]                                     ; $66e5: $f0 $f9
	ldh a, [$f8]                                     ; $66e7: $f0 $f8
	ldh a, [rAUD3LEN]                                ; $66e9: $f0 $1b
	rlca                                             ; $66eb: $07
	ld l, h                                          ; $66ec: $6c
	rra                                              ; $66ed: $1f
	ld [hl], c                                       ; $66ee: $71
	cp $81                                           ; $66ef: $fe $81
	cp $03                                           ; $66f1: $fe $03
	db $fc                                           ; $66f3: $fc
	rrca                                             ; $66f4: $0f
	ldh a, [$7e]                                     ; $66f5: $f0 $7e
	db $ec                                           ; $66f7: $ec
	sub [hl]                                         ; $66f8: $96
	ld a, a                                          ; $66f9: $7f
	nop                                              ; $66fa: $00
	adc c                                            ; $66fb: $89
	rst $38                                          ; $66fc: $ff
	sub [hl]                                         ; $66fd: $96
	rst $38                                          ; $66fe: $ff
	cp h                                             ; $66ff: $bc
	rst $38                                          ; $6700: $ff
	add l                                            ; $6701: $85
	ld a, e                                          ; $6702: $7b
	cp $8c                                           ; $6703: $fe $8c
	add a                                            ; $6705: $87
	rst $38                                          ; $6706: $ff
	add $ff                                          ; $6707: $c6 $ff
	call nz, Call_011_55ff                           ; $6709: $c4 $ff $55
	ei                                               ; $670c: $fb
	push hl                                          ; $670d: $e5
	cp e                                             ; $670e: $bb
	xor l                                            ; $670f: $ad
	di                                               ; $6710: $f3
	ld c, l                                          ; $6711: $4d
	di                                               ; $6712: $f3
	adc $f2                                          ; $6713: $ce $f2
	ld e, h                                          ; $6715: $5c
	ldh [$50], a                                     ; $6716: $e0 $50
	ld a, e                                          ; $6718: $7b
	cp $2a                                           ; $6719: $fe $2a
	ld [bc], a                                       ; $671b: $02
	add b                                            ; $671c: $80
	dec bc                                           ; $671d: $0b
	ld b, $12                                        ; $671e: $06 $12
	inc c                                            ; $6720: $0c
	inc h                                            ; $6721: $24
	dec e                                            ; $6722: $1d
	ld l, h                                          ; $6723: $6c
	add hl, de                                       ; $6724: $19
	ld e, b                                          ; $6725: $58

jr_011_6726:
	dec sp                                           ; $6726: $3b
	xor c                                            ; $6727: $a9
	ld a, d                                          ; $6728: $7a
	ld e, b                                          ; $6729: $58
	ldh a, [c]                                       ; $672a: $f2
	or b                                             ; $672b: $b0
	or $a5                                           ; $672c: $f6 $a5
	ld e, [hl]                                       ; $672e: $5e
	ld [hl], l                                       ; $672f: $75
	adc a                                            ; $6730: $8f
	sbc l                                            ; $6731: $9d
	ld a, $4e                                        ; $6732: $3e $4e
	inc [hl]                                         ; $6734: $34
	dec a                                            ; $6735: $3d
	ld h, d                                          ; $6736: $62
	cp e                                             ; $6737: $bb
	ld b, [hl]                                       ; $6738: $46
	halt                                             ; $6739: $76
	rst GetHLinHL                                          ; $673a: $cf
	ld h, a                                          ; $673b: $67
	add b                                            ; $673c: $80
	db $dd                                           ; $673d: $dd
	jp c, $de0c                                      ; $673e: $da $0c $de

	add h                                            ; $6741: $84
	ld l, e                                          ; $6742: $6b
	call nz, Call_011_42ad                           ; $6743: $c4 $ad $42
	ld d, l                                          ; $6746: $55
	ld [hl+], a                                      ; $6747: $22

jr_011_6748:
	ld d, [hl]                                       ; $6748: $56
	ld hl, $11af                                     ; $6749: $21 $af $11
	ld a, h                                          ; $674c: $7c
	sub e                                            ; $674d: $93
	sub [hl]                                         ; $674e: $96
	ld h, c                                          ; $674f: $61
	db $db                                           ; $6750: $db
	jr nz, jr_011_679e                               ; $6751: $20 $4b

	jr nc, jr_011_67d2                               ; $6753: $30 $7d

	db $10                                           ; $6755: $10
	and a                                            ; $6756: $a7
	jr jr_011_6748                                   ; $6757: $18 $ef

	jr jr_011_6726                                   ; $6759: $18 $cb

	inc a                                            ; $675b: $3c
	add b                                            ; $675c: $80
	add h                                            ; $675d: $84
	rst $38                                          ; $675e: $ff
	ld l, h                                          ; $675f: $6c
	sbc a                                            ; $6760: $9f
	daa                                              ; $6761: $27
	rst SubAFromDE                                          ; $6762: $df
	ld [hl], h                                       ; $6763: $74
	rst GetHLinHL                                          ; $6764: $cf
	sbc d                                            ; $6765: $9a
	ld h, a                                          ; $6766: $67
	cp d                                             ; $6767: $ba
	ld h, a                                          ; $6768: $67
	add hl, bc                                       ; $6769: $09
	rst FarCall                                          ; $676a: $f7
	add hl, de                                       ; $676b: $19
	rst FarCall                                          ; $676c: $f7
	db $10                                           ; $676d: $10
	rst $38                                          ; $676e: $ff
	ld l, l                                          ; $676f: $6d
	sbc a                                            ; $6770: $9f
	ld a, [hl-]                                      ; $6771: $3a
	rst JumpTable                                          ; $6772: $c7
	sbc l                                            ; $6773: $9d
	db $e3                                           ; $6774: $e3
	ld l, a                                          ; $6775: $6f
	ldh a, [$33]                                     ; $6776: $f0 $33
	db $fc                                           ; $6778: $fc
	ld l, $df                                        ; $6779: $2e $df
	dec de                                           ; $677b: $1b
	add b                                            ; $677c: $80
	rst SubAFromBC                                          ; $677d: $e7
	adc a                                            ; $677e: $8f
	ldh a, [rHDMA2]                                  ; $677f: $f0 $52
	or $99                                           ; $6781: $f6 $99
	db $f4                                           ; $6783: $f4
	ld e, b                                          ; $6784: $58
	and l                                            ; $6785: $a5
	or [hl]                                          ; $6786: $b6
	ld l, l                                          ; $6787: $6d
	or a                                             ; $6788: $b7
	ld l, c                                          ; $6789: $69
	scf                                              ; $678a: $37
	ret                                              ; $678b: $c9


	ld a, l                                          ; $678c: $7d
	bit 5, l                                         ; $678d: $cb $6d
	db $db                                           ; $678f: $db
	rst GetHLinHL                                          ; $6790: $cf
	db $fc                                           ; $6791: $fc
	adc l                                            ; $6792: $8d
	ld hl, sp-$64                                    ; $6793: $f8 $9c
	ld hl, sp-$68                                    ; $6795: $f8 $98
	ldh a, [rAUD2LOW]                                ; $6797: $f0 $18
	ldh a, [$30]                                     ; $6799: $f0 $30
	ldh [$80], a                                     ; $679b: $e0 $80
	inc h                                            ; $679d: $24

jr_011_679e:
	db $e3                                           ; $679e: $e3
	ld [hl], e                                       ; $679f: $73
	rst GetHLinHL                                          ; $67a0: $cf
	adc b                                            ; $67a1: $88
	rst $38                                          ; $67a2: $ff
	adc h                                            ; $67a3: $8c
	rst $38                                          ; $67a4: $ff
	add $7f                                          ; $67a5: $c6 $7f
	rst JumpTable                                          ; $67a7: $c7
	ld a, l                                          ; $67a8: $7d
	ld h, a                                          ; $67a9: $67
	inc a                                            ; $67aa: $3c
	inc sp                                           ; $67ab: $33
	ld e, $7b                                        ; $67ac: $1e $7b
	adc [hl]                                         ; $67ae: $8e
	sbc l                                            ; $67af: $9d
	rst SubAFromBC                                          ; $67b0: $e7
	add h                                            ; $67b1: $84
	rst $38                                          ; $67b2: $ff
	ld b, d                                          ; $67b3: $42
	rst $38                                          ; $67b4: $ff
	ld h, d                                          ; $67b5: $62
	rst $38                                          ; $67b6: $ff
	ld sp, $b9ff                                     ; $67b7: $31 $ff $b9
	rst AddAOntoHL                                          ; $67ba: $ef
	call c, $7795                                    ; $67bb: $dc $95 $77
	ld [$ff3f], a                                    ; $67be: $ea $3f $ff
	rra                                              ; $67c1: $1f
	ld [$08ff], sp                                   ; $67c2: $08 $ff $08
	rst $38                                          ; $67c5: $ff
	inc b                                            ; $67c6: $04
	ld a, e                                          ; $67c7: $7b
	cp $80                                           ; $67c8: $fe $80
	add d                                            ; $67ca: $82
	rst $38                                          ; $67cb: $ff
	jp $e1ff                                         ; $67cc: $c3 $ff $e1


	rst $38                                          ; $67cf: $ff
	ld [hl], c                                       ; $67d0: $71
	rst $38                                          ; $67d1: $ff

jr_011_67d2:
	rst FarCall                                          ; $67d2: $f7
	ld hl, sp+$4f                                    ; $67d3: $f8 $4f
	rst $38                                          ; $67d5: $ff
	ld c, a                                          ; $67d6: $4f
	ldh a, [$27]                                     ; $67d7: $f0 $27
	ld hl, sp+$20                                    ; $67d9: $f8 $20
	rst $38                                          ; $67db: $ff
	ld de, $9eff                                     ; $67dc: $11 $ff $9e
	rst $38                                          ; $67df: $ff
	ld c, c                                          ; $67e0: $49
	cp $da                                           ; $67e1: $fe $da
	or a                                             ; $67e3: $b7
	jp c, $b5b7                                      ; $67e4: $da $b7 $b5

	ld l, a                                          ; $67e7: $6f
	ld l, l                                          ; $67e8: $6d
	add e                                            ; $67e9: $83
	rst $38                                          ; $67ea: $ff
	db $db                                           ; $67eb: $db
	cp $7f                                           ; $67ec: $fe $7f
	cp $fb                                           ; $67ee: $fe $fb
	ldh a, [c]                                       ; $67f0: $f2
	cp e                                             ; $67f1: $bb
	di                                               ; $67f2: $f3
	xor l                                            ; $67f3: $ad
	sbc $f7                                          ; $67f4: $de $f7
	sbc b                                            ; $67f6: $98
	ld a, a                                          ; $67f7: $7f
	and b                                            ; $67f8: $a0
	rst $38                                          ; $67f9: $ff
	nop                                              ; $67fa: $00
	sbc e                                            ; $67fb: $9b
	rlca                                             ; $67fc: $07
	rra                                              ; $67fd: $1f
	rrca                                             ; $67fe: $0f
	inc a                                            ; $67ff: $3c
	ld e, $3c                                        ; $6800: $1e $3c
	ld [hl], h                                       ; $6802: $74
	rst $38                                          ; $6803: $ff
	ld h, e                                          ; $6804: $63
	rst $38                                          ; $6805: $ff
	cp [hl]                                          ; $6806: $be
	rst $38                                          ; $6807: $ff
	cp $d8                                           ; $6808: $fe $d8
	sub e                                            ; $680a: $93
	ldh [$f0], a                                     ; $680b: $e0 $f0
	ldh a, [rSVBK]                                   ; $680d: $f0 $70
	ld [hl], b                                       ; $680f: $70
	ldh a, [$f0]                                     ; $6810: $f0 $f0
	sbc a                                            ; $6812: $9f
	inc b                                            ; $6813: $04
	rst GetHLinHL                                          ; $6814: $cf
	add b                                            ; $6815: $80
	rst GetHLinHL                                          ; $6816: $cf
	cp a                                             ; $6817: $bf
	rlca                                             ; $6818: $07
	ld b, $9c                                        ; $6819: $06 $9c
	ld bc, $0307                                     ; $681b: $01 $07 $03
	db $dd                                           ; $681e: $dd
	rlca                                             ; $681f: $07
	add b                                            ; $6820: $80
	ld hl, sp-$31                                    ; $6821: $f8 $cf
	db $fc                                           ; $6823: $fc
	daa                                              ; $6824: $27
	cp $03                                           ; $6825: $fe $03
	rst $38                                          ; $6827: $ff
	ld bc, $e0ff                                     ; $6828: $01 $ff $e0
	rst $38                                          ; $682b: $ff
	ld hl, sp-$61                                    ; $682c: $f8 $9f
	sbc h                                            ; $682e: $9c
	ccf                                              ; $682f: $3f
	ccf                                              ; $6830: $3f
	and h                                            ; $6831: $a4
	rst $38                                          ; $6832: $ff
	sub d                                            ; $6833: $92
	rst $38                                          ; $6834: $ff
	ld c, c                                          ; $6835: $49
	rst $38                                          ; $6836: $ff
	and a                                            ; $6837: $a7
	rst $38                                          ; $6838: $ff
	db $d3                                           ; $6839: $d3
	ld a, a                                          ; $683a: $7f
	ld sp, hl                                        ; $683b: $f9
	ccf                                              ; $683c: $3f
	db $fd                                           ; $683d: $fd
	cpl                                              ; $683e: $2f
	or $80                                           ; $683f: $f6 $80
	cpl                                              ; $6841: $2f
	push de                                          ; $6842: $d5
	rst $38                                          ; $6843: $ff
	ld e, l                                          ; $6844: $5d
	ei                                               ; $6845: $fb
	or [hl]                                          ; $6846: $b6
	ld a, e                                          ; $6847: $7b
	rst SubAFromDE                                          ; $6848: $df
	ld [hl-], a                                      ; $6849: $32
	xor e                                            ; $684a: $ab
	halt                                             ; $684b: $76
	xor e                                            ; $684c: $ab
	halt                                             ; $684d: $76
	ld [hl], d                                       ; $684e: $72
	rst SubAFromBC                                          ; $684f: $e7
	halt                                             ; $6850: $76
	rst SubAFromBC                                          ; $6851: $e7
	or a                                             ; $6852: $b7
	rla                                              ; $6853: $17
	push bc                                          ; $6854: $c5
	add a                                            ; $6855: $87
	push bc                                          ; $6856: $c5
	add a                                            ; $6857: $87
	call nz, $a287                                   ; $6858: $c4 $87 $a2
	jp $c1e7                                         ; $685b: $c3 $e7 $c1


	ret nc                                           ; $685e: $d0

	ldh [$9e], a                                     ; $685f: $e0 $9e
	ldh a, [$7b]                                     ; $6861: $f0 $7b
	cp $df                                           ; $6863: $fe $df
	ldh [hDisp1_BGP], a                                     ; $6865: $e0 $92
	and b                                            ; $6867: $a0
	ldh [$a0], a                                     ; $6868: $e0 $a0
	jr nz, @+$43                                     ; $686a: $20 $41

	ret nz                                           ; $686c: $c0

	and c                                            ; $686d: $a1
	ret nz                                           ; $686e: $c0

	ld bc, $0300                                     ; $686f: $01 $00 $03
	ld bc, $da03                                     ; $6872: $01 $03 $da
	ld bc, $9eff                                     ; $6875: $01 $ff $9e
	add c                                            ; $6878: $81
	cp a                                             ; $6879: $bf
	ret nz                                           ; $687a: $c0

	ld h, b                                          ; $687b: $60
	add d                                            ; $687c: $82
	add b                                            ; $687d: $80
	rst $38                                          ; $687e: $ff
	ld a, [$f87b]                                    ; $687f: $fa $7b $f8
	ld l, e                                          ; $6882: $6b
	ld hl, sp+$2a                                    ; $6883: $f8 $2a
	ret                                              ; $6885: $c9


	sub [hl]                                         ; $6886: $96
	pop de                                           ; $6887: $d1
	xor $71                                          ; $6888: $ee $71
	dec c                                            ; $688a: $0d
	inc bc                                           ; $688b: $03
	dec e                                            ; $688c: $1d
	inc bc                                           ; $688d: $03
	db $fc                                           ; $688e: $fc
	ld l, a                                          ; $688f: $6f
	ld hl, sp+$6f                                    ; $6890: $f8 $6f
	cp l                                             ; $6892: $bd
	rst $38                                          ; $6893: $ff
	or $bf                                           ; $6894: $f6 $bf
	and $bf                                          ; $6896: $e6 $bf
	rst AddAOntoHL                                          ; $6898: $ef
	or [hl]                                          ; $6899: $b6
	ld a, e                                          ; $689a: $7b
	ei                                               ; $689b: $fb
	sub a                                            ; $689c: $97
	and $ef                                          ; $689d: $e6 $ef
	rst SubAFromBC                                          ; $689f: $e7
	rst SubAFromBC                                          ; $68a0: $e7
	rst AddAOntoHL                                          ; $68a1: $ef
	rst SubAFromBC                                          ; $68a2: $e7
	rst AddAOntoHL                                          ; $68a3: $ef
	rst FarCall                                          ; $68a4: $f7
	ld a, e                                          ; $68a5: $7b
	cp $9c                                           ; $68a6: $fe $9c
	rst SubAFromBC                                          ; $68a8: $e7
	rst $38                                          ; $68a9: $ff
	rst FarCall                                          ; $68aa: $f7
	ld a, e                                          ; $68ab: $7b
	cp $95                                           ; $68ac: $fe $95
	add sp, -$10                                     ; $68ae: $e8 $f0
	ld hl, sp-$10                                    ; $68b0: $f8 $f0
	db $fc                                           ; $68b2: $fc
	ld hl, sp-$02                                    ; $68b3: $f8 $fe
	db $fc                                           ; $68b5: $fc
	rst $38                                          ; $68b6: $ff
	cp $db                                           ; $68b7: $fe $db
	rst $38                                          ; $68b9: $ff
	ld a, e                                          ; $68ba: $7b
	or a                                             ; $68bb: $b7
	ld a, a                                          ; $68bc: $7f
	xor d                                            ; $68bd: $aa
	sbc l                                            ; $68be: $9d
	ld [bc], a                                       ; $68bf: $02
	nop                                              ; $68c0: $00
	cp [hl]                                          ; $68c1: $be
	ld bc, $8080                                     ; $68c2: $01 $80 $80
	sub h                                            ; $68c5: $94
	ret nz                                           ; $68c6: $c0

	ldh a, [$e0]                                     ; $68c7: $f0 $e0
	ret nz                                           ; $68c9: $c0

	add b                                            ; $68ca: $80
	stop                                             ; $68cb: $10 $00
	jr nc, jr_011_692f                               ; $68cd: $30 $60

	ld h, b                                          ; $68cf: $60
	nop                                              ; $68d0: $00
	cp a                                             ; $68d1: $bf
	ret nz                                           ; $68d2: $c0

	nop                                              ; $68d3: $00
	ld a, e                                          ; $68d4: $7b
	sub b                                            ; $68d5: $90
	sub c                                            ; $68d6: $91
	nop                                              ; $68d7: $00
	dec de                                           ; $68d8: $1b
	rlca                                             ; $68d9: $07
	dec sp                                           ; $68da: $3b
	rlca                                             ; $68db: $07
	scf                                              ; $68dc: $37
	rrca                                             ; $68dd: $0f
	ld l, a                                          ; $68de: $6f
	rra                                              ; $68df: $1f
	ld e, a                                          ; $68e0: $5f
	ccf                                              ; $68e1: $3f
	cp a                                             ; $68e2: $bf
	ld a, a                                          ; $68e3: $7f
	ld a, a                                          ; $68e4: $7f
	db $dd                                           ; $68e5: $dd
	rst $38                                          ; $68e6: $ff
	sbc h                                            ; $68e7: $9c
	and $f6                                          ; $68e8: $e6 $f6
	rst AddAOntoHL                                          ; $68ea: $ef
	ld [hl], a                                       ; $68eb: $77
	cp $7f                                           ; $68ec: $fe $7f
	or d                                             ; $68ee: $b2
	sbc [hl]                                         ; $68ef: $9e
	rst AddAOntoHL                                          ; $68f0: $ef
	ld a, e                                          ; $68f1: $7b
	cp $9c                                           ; $68f2: $fe $9c
	rst SubAFromDE                                          ; $68f4: $df
	rst $38                                          ; $68f5: $ff
	ei                                               ; $68f6: $fb
	push de                                          ; $68f7: $d5
	rst $38                                          ; $68f8: $ff
	ld a, a                                          ; $68f9: $7f
	xor h                                            ; $68fa: $ac
	sbc [hl]                                         ; $68fb: $9e
	ldh a, [$da]                                     ; $68fc: $f0 $da
	rst $38                                          ; $68fe: $ff
	ld a, a                                          ; $68ff: $7f
	and b                                            ; $6900: $a0
	ld a, a                                          ; $6901: $7f
	or $9e                                           ; $6902: $f6 $9e
	ret nz                                           ; $6904: $c0

	ld a, d                                          ; $6905: $7a
	and $80                                          ; $6906: $e6 $80
	ld bc, $f8f0                                     ; $6908: $01 $f0 $f8
	db $ec                                           ; $690b: $ec
	cp $e7                                           ; $690c: $fe $e7
	cpl                                              ; $690e: $2f
	pop hl                                           ; $690f: $e1
	inc hl                                           ; $6910: $23
	ldh [rAUD4LEN], a                                ; $6911: $e0 $20
	ret nz                                           ; $6913: $c0

	ld h, b                                          ; $6914: $60
	ret nz                                           ; $6915: $c0

	ld h, b                                          ; $6916: $60
	add b                                            ; $6917: $80
	ret nz                                           ; $6918: $c0

	rrca                                             ; $6919: $0f
	inc bc                                           ; $691a: $03
	dec a                                            ; $691b: $3d
	rrca                                             ; $691c: $0f
	pop af                                           ; $691d: $f1
	rst $38                                          ; $691e: $ff
	pop bc                                           ; $691f: $c1
	rst $38                                          ; $6920: $ff
	add e                                            ; $6921: $83
	ld a, l                                          ; $6922: $7d
	ld h, [hl]                                       ; $6923: $66
	add hl, de                                       ; $6924: $19
	ld a, $01                                        ; $6925: $3e $01
	sbc l                                            ; $6927: $9d
	ld a, a                                          ; $6928: $7f
	nop                                              ; $6929: $00
	call c, $7aff                                    ; $692a: $dc $ff $7a
	ld a, b                                          ; $692d: $78
	sub h                                            ; $692e: $94

jr_011_692f:
	rst $38                                          ; $692f: $ff
	rlca                                             ; $6930: $07
	rst $38                                          ; $6931: $ff

jr_011_6932:
	add c                                            ; $6932: $81
	rst $38                                          ; $6933: $ff
	add b                                            ; $6934: $80
	ld a, a                                          ; $6935: $7f
	ret nz                                           ; $6936: $c0

	rst SubAFromDE                                          ; $6937: $df
	rst $38                                          ; $6938: $ff
	cp a                                             ; $6939: $bf
	ld l, a                                          ; $693a: $6f
	or l                                             ; $693b: $b5
	ld a, a                                          ; $693c: $7f
	ld e, l                                          ; $693d: $5d
	ld a, a                                          ; $693e: $7f
	ld e, c                                          ; $693f: $59
	sbc h                                            ; $6940: $9c
	ld a, b                                          ; $6941: $78
	ldh a, [rAUD1SWEEP]                              ; $6942: $f0 $10
	ld [hl], $02                                     ; $6944: $36 $02
	add d                                            ; $6946: $82
	dec b                                            ; $6947: $05
	ld [$1904], sp                                   ; $6948: $08 $04 $19
	ld [hl+], a                                      ; $694b: $22
	dec a                                            ; $694c: $3d
	ld [hl], b                                       ; $694d: $70
	ld l, a                                          ; $694e: $6f
	add b                                            ; $694f: $80
	rst $38                                          ; $6950: $ff
	dec h                                            ; $6951: $25
	cp $ed                                           ; $6952: $fe $ed
	sbc [hl]                                         ; $6954: $9e
	ld a, a                                          ; $6955: $7f
	cp $78                                           ; $6956: $fe $78
	add a                                            ; $6958: $87
	ld sp, $41ce                                     ; $6959: $31 $ce $41
	cp $72                                           ; $695c: $fe $72
	db $fc                                           ; $695e: $fc
	ldh a, [rIF]                                     ; $695f: $f0 $0f
	adc h                                            ; $6961: $8c
	inc bc                                           ; $6962: $03
	ld bc, $18bd                                     ; $6963: $01 $bd $18
	add e                                            ; $6966: $83
	rrca                                             ; $6967: $0f
	inc e                                            ; $6968: $1c
	sub c                                            ; $6969: $91
	inc bc                                           ; $696a: $03
	inc sp                                           ; $696b: $33
	rrca                                             ; $696c: $0f
	db $ed                                           ; $696d: $ed
	ld e, $13                                        ; $696e: $1e $13
	db $fc                                           ; $6970: $fc
	ld h, $f8                                        ; $6971: $26 $f8
	ld e, c                                          ; $6973: $59
	ld a, $ff                                        ; $6974: $3e $ff
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	sbc $ff                                          ; $6978: $de $ff
	add b                                            ; $697a: $80
	cpl                                              ; $697b: $2f
	ldh a, [$ca]                                     ; $697c: $f0 $ca
	inc a                                            ; $697e: $3c
	sub d                                            ; $697f: $92
	rrca                                             ; $6980: $0f
	inc c                                            ; $6981: $0c
	inc bc                                           ; $6982: $03
	add e                                            ; $6983: $83
	nop                                              ; $6984: $00
	ret c                                            ; $6985: $d8

	ccf                                              ; $6986: $3f
	ld a, $c7                                        ; $6987: $3e $c7
	rst SubAFromBC                                          ; $6989: $e7
	ld sp, hl                                        ; $698a: $f9
	rst SubAFromDE                                          ; $698b: $df
	ccf                                              ; $698c: $3f
	inc de                                           ; $698d: $13
	inc c                                            ; $698e: $0c
	adc h                                            ; $698f: $8c
	inc bc                                           ; $6990: $03
	and a                                            ; $6991: $a7
	ret nz                                           ; $6992: $c0

	ld sp, $d4e0                                     ; $6993: $31 $e0 $d4
	rrca                                             ; $6996: $0f
	ld a, [hl+]                                      ; $6997: $2a
	rst JumpTable                                          ; $6998: $c7

jr_011_6999:
	sub l                                            ; $6999: $95
	add b                                            ; $699a: $80
	db $e3                                           ; $699b: $e3
	jp z, $e7f1                                      ; $699c: $ca $f1 $e7

	jr jr_011_6932                                   ; $699f: $18 $91

	ld c, $28                                        ; $69a1: $0e $28
	rst JumpTable                                          ; $69a3: $c7
	call z, $9633                                    ; $69a4: $cc $33 $96
	di                                               ; $69a7: $f3
	ld h, $e3                                        ; $69a8: $26 $e3
	ld c, a                                          ; $69aa: $4f
	rst JumpTable                                          ; $69ab: $c7
	sbc b                                            ; $69ac: $98
	adc a                                            ; $69ad: $8f
	jr nc, jr_011_69cf                               ; $69ae: $30 $1f

	ld h, b                                          ; $69b0: $60
	dec sp                                           ; $69b1: $3b
	ldh [rPCM12], a                                  ; $69b2: $e0 $76
	ld b, b                                          ; $69b4: $40
	cp $a6                                           ; $69b5: $fe $a6
	jr jr_011_69f6                                   ; $69b7: $18 $3d

	cp $80                                           ; $69b9: $fe $80
	ld h, a                                          ; $69bb: $67
	jp $81c2                                         ; $69bc: $c3 $c2 $81


	add b                                            ; $69bf: $80
	nop                                              ; $69c0: $00
	inc de                                           ; $69c1: $13
	inc b                                            ; $69c2: $04
	ld c, d                                          ; $69c3: $4a
	rla                                              ; $69c4: $17
	ld c, b                                          ; $69c5: $48
	dec de                                           ; $69c6: $1b
	ld [hl], $0f                                     ; $69c7: $36 $0f
	adc l                                            ; $69c9: $8d
	inc bc                                           ; $69ca: $03
	ld a, a                                          ; $69cb: $7f
	add b                                            ; $69cc: $80
	add e                                            ; $69cd: $83
	db $fc                                           ; $69ce: $fc

jr_011_69cf:
	jr c, @+$01                                      ; $69cf: $38 $ff

	sub e                                            ; $69d1: $93
	ld a, a                                          ; $69d2: $7f

jr_011_69d3:
	inc b                                            ; $69d3: $04
	ccf                                              ; $69d4: $3f
	pop af                                           ; $69d5: $f1
	adc a                                            ; $69d6: $8f
	jr nc, jr_011_6999                               ; $69d7: $30 $c0

	add [hl]                                         ; $69d9: $86
	sbc d                                            ; $69da: $9a
	ld hl, sp+$70                                    ; $69db: $f8 $70
	rst $38                                          ; $69dd: $ff
	rst AddAOntoHL                                          ; $69de: $ef
	rra                                              ; $69df: $1f
	ld [hl], a                                       ; $69e0: $77
	sbc d                                            ; $69e1: $9a
	add b                                            ; $69e2: $80
	scf                                              ; $69e3: $37
	ld hl, sp+$0c                                    ; $69e4: $f8 $0c
	rst $38                                          ; $69e6: $ff
	rst GetHLinHL                                          ; $69e7: $cf
	jr c, jr_011_6a1c                                ; $69e8: $38 $32

	rrca                                             ; $69ea: $0f
	ld a, h                                          ; $69eb: $7c
	add e                                            ; $69ec: $83
	rrca                                             ; $69ed: $0f
	ldh a, [$e0]                                     ; $69ee: $f0 $e0
	rst $38                                          ; $69f0: $ff
	db $fc                                           ; $69f1: $fc
	rst $38                                          ; $69f2: $ff
	rst $38                                          ; $69f3: $ff
	nop                                              ; $69f4: $00
	adc [hl]                                         ; $69f5: $8e

jr_011_69f6:
	ld bc, $19e6                                     ; $69f6: $01 $e6 $19
	ldh a, [c]                                       ; $69f9: $f2
	dec c                                            ; $69fa: $0d
	cp c                                             ; $69fb: $b9
	add $30                                          ; $69fc: $c6 $30
	rst $38                                          ; $69fe: $ff
	inc c                                            ; $69ff: $0c
	rst $38                                          ; $6a00: $ff
	ld a, a                                          ; $6a01: $7f
	add b                                            ; $6a02: $80
	rst $38                                          ; $6a03: $ff
	db $10                                           ; $6a04: $10
	rst $38                                          ; $6a05: $ff
	ld [$c4ff], sp                                   ; $6a06: $08 $ff $c4
	cp $8c                                           ; $6a09: $fe $8c
	cp $94                                           ; $6a0b: $fe $94
	cp $74                                           ; $6a0d: $fe $74
	cp $b2                                           ; $6a0f: $fe $b2
	ld a, a                                          ; $6a11: $7f
	ldh a, [c]                                       ; $6a12: $f2
	rra                                              ; $6a13: $1f
	ld [hl], e                                       ; $6a14: $73
	rra                                              ; $6a15: $1f
	ld [hl-], a                                      ; $6a16: $32
	rra                                              ; $6a17: $1f
	inc c                                            ; $6a18: $0c
	ld e, [hl]                                       ; $6a19: $5e
	dec bc                                           ; $6a1a: $0b
	ld c, a                                          ; $6a1b: $4f

jr_011_6a1c:
	rlca                                             ; $6a1c: $07
	ld l, h                                          ; $6a1d: $6c
	dec b                                            ; $6a1e: $05
	ld l, [hl]                                       ; $6a1f: $6e
	inc bc                                           ; $6a20: $03
	halt                                             ; $6a21: $76
	add b                                            ; $6a22: $80
	ld [bc], a                                       ; $6a23: $02
	ld [hl], a                                       ; $6a24: $77
	ld bc, $88bf                                     ; $6a25: $01 $bf $88
	rst $38                                          ; $6a28: $ff
	jr nz, @+$01                                     ; $6a29: $20 $ff

	adc b                                            ; $6a2b: $88
	rst $38                                          ; $6a2c: $ff
	cp $7f                                           ; $6a2d: $fe $7f
	rst SubAFromBC                                          ; $6a2f: $e7
	rra                                              ; $6a30: $1f
	rst GetHLinHL                                          ; $6a31: $cf
	jr c, jr_011_69d3                                ; $6a32: $38 $9f

	ld [hl], b                                       ; $6a34: $70
	ccf                                              ; $6a35: $3f
	pop hl                                           ; $6a36: $e1
	rst $38                                          ; $6a37: $ff
	jp nz, $ff43                                     ; $6a38: $c2 $43 $ff

	jr nc, @+$01                                     ; $6a3b: $30 $ff

	rra                                              ; $6a3d: $1f
	rst $38                                          ; $6a3e: $ff
	add a                                            ; $6a3f: $87
	db $fc                                           ; $6a40: $fc
	pop af                                           ; $6a41: $f1
	ld a, a                                          ; $6a42: $7f
	pop bc                                           ; $6a43: $c1
	add b                                            ; $6a44: $80
	rrca                                             ; $6a45: $0f
	rst $38                                          ; $6a46: $ff
	ld b, b                                          ; $6a47: $40
	rst FarCall                                          ; $6a48: $f7
	add b                                            ; $6a49: $80
	nop                                              ; $6a4a: $00
	rst JumpTable                                          ; $6a4b: $c7
	jp $fdff                                         ; $6a4c: $c3 $ff $fd


	rst $38                                          ; $6a4f: $ff
	db $f4                                           ; $6a50: $f4
	rra                                              ; $6a51: $1f
	ldh a, [$1f]                                     ; $6a52: $f0 $1f
	ldh a, [$d7]                                     ; $6a54: $f0 $d7
	ldh a, [rAUD2ENV]                                ; $6a56: $f0 $17
	ldh a, [c]                                       ; $6a58: $f2
	rla                                              ; $6a59: $17
	db $e4                                           ; $6a5a: $e4
	rst $38                                          ; $6a5b: $ff
	jp nc, $e93f                                     ; $6a5c: $d2 $3f $e9

	ld e, a                                          ; $6a5f: $5f
	ld sp, hl                                        ; $6a60: $f9
	cpl                                              ; $6a61: $2f
	ld hl, sp-$51                                    ; $6a62: $f8 $af
	sub [hl]                                         ; $6a64: $96
	db $fc                                           ; $6a65: $fc
	xor a                                            ; $6a66: $af
	ld a, h                                          ; $6a67: $7c
	xor a                                            ; $6a68: $af
	ld a, d                                          ; $6a69: $7a
	rst GetHLinHL                                          ; $6a6a: $cf
	add hl, de                                       ; $6a6b: $19
	rrca                                             ; $6a6c: $0f
	add hl, bc                                       ; $6a6d: $09
	ld a, e                                          ; $6a6e: $7b
	cp $80                                           ; $6a6f: $fe $80
	inc c                                            ; $6a71: $0c
	rlca                                             ; $6a72: $07
	inc e                                            ; $6a73: $1c
	rlca                                             ; $6a74: $07
	inc e                                            ; $6a75: $1c
	inc bc                                           ; $6a76: $03
	ld a, $03                                        ; $6a77: $3e $03
	ld a, $01                                        ; $6a79: $3e $01
	call nz, $e27f                                   ; $6a7b: $c4 $7f $e2
	ccf                                              ; $6a7e: $3f
	ld hl, sp+$1f                                    ; $6a7f: $f8 $1f
	cp $0f                                           ; $6a81: $fe $0f
	rst $38                                          ; $6a83: $ff
	adc a                                            ; $6a84: $8f
	rst $38                                          ; $6a85: $ff
	sbc a                                            ; $6a86: $9f
	ld a, a                                          ; $6a87: $7f
	rst SubAFromDE                                          ; $6a88: $df
	ld a, a                                          ; $6a89: $7f
	rst $38                                          ; $6a8a: $ff
	ld a, a                                          ; $6a8b: $7f
	ret                                              ; $6a8c: $c9


	ccf                                              ; $6a8d: $3f
	and $9e                                          ; $6a8e: $e6 $9e
	sub a                                            ; $6a90: $97
	db $fc                                           ; $6a91: $fc
	ld [hl], h                                       ; $6a92: $74
	ld hl, sp-$53                                    ; $6a93: $f8 $ad
	sbc $9b                                          ; $6a95: $de $9b
	add a                                            ; $6a97: $87
	add e                                            ; $6a98: $83
	sbc $80                                          ; $6a99: $de $80
	sbc [hl]                                         ; $6a9b: $9e
	rst JumpTable                                          ; $6a9c: $c7
	cp h                                             ; $6a9d: $bc
	rlca                                             ; $6a9e: $07
	rlca                                             ; $6a9f: $07
	inc bc                                           ; $6aa0: $03
	inc bc                                           ; $6aa1: $03
	ld b, e                                          ; $6aa2: $43
	sbc l                                            ; $6aa3: $9d
	add b                                            ; $6aa4: $80
	pop af                                           ; $6aa5: $f1
	cp a                                             ; $6aa6: $bf
	ld bc, $98fa                                     ; $6aa7: $01 $fa $98
	rrca                                             ; $6aaa: $0f
	ld a, [$fb0f]                                    ; $6aab: $fa $0f $fb
	rrca                                             ; $6aae: $0f
	ei                                               ; $6aaf: $fb
	rlca                                             ; $6ab0: $07
	ld a, e                                          ; $6ab1: $7b
	cp $9d                                           ; $6ab2: $fe $9d
	ld b, $ff                                        ; $6ab4: $06 $ff
	ld a, e                                          ; $6ab6: $7b
	cp $98                                           ; $6ab7: $fe $98
	ld l, d                                          ; $6ab9: $6a
	rst SubAFromDE                                          ; $6aba: $df
	add hl, de                                       ; $6abb: $19
	rst $38                                          ; $6abc: $ff
	add hl, sp                                       ; $6abd: $39
	rst $38                                          ; $6abe: $ff
	inc h                                            ; $6abf: $24
	ld a, e                                          ; $6ac0: $7b
	cp $8e                                           ; $6ac1: $fe $8e
	ld h, $ff                                        ; $6ac3: $26 $ff
	or d                                             ; $6ac5: $b2
	rst $38                                          ; $6ac6: $ff
	or e                                             ; $6ac7: $b3
	rst $38                                          ; $6ac8: $ff
	ccf                                              ; $6ac9: $3f
	ld bc, $003f                                     ; $6aca: $01 $3f $00
	ld e, $01                                        ; $6acd: $1e $01
	db $fd                                           ; $6acf: $fd
	add e                                            ; $6ad0: $83
	rst $38                                          ; $6ad1: $ff
	ld a, a                                          ; $6ad2: $7f
	inc bc                                           ; $6ad3: $03
	cp a                                             ; $6ad4: $bf
	ld bc, $91c1                                     ; $6ad5: $01 $c1 $91
	add b                                            ; $6ad8: $80
	ccf                                              ; $6ad9: $3f
	rst $38                                          ; $6ada: $ff
	ccf                                              ; $6adb: $3f
	rst $38                                          ; $6adc: $ff
	sbc a                                            ; $6add: $9f
	rst $38                                          ; $6ade: $ff

Call_011_6adf:
	rst SubAFromDE                                          ; $6adf: $df
	rst $38                                          ; $6ae0: $ff
	rst AddAOntoHL                                          ; $6ae1: $ef
	rst $38                                          ; $6ae2: $ff

Call_011_6ae3:
	rst FarCall                                          ; $6ae3: $f7
	rst $38                                          ; $6ae4: $ff
	ei                                               ; $6ae5: $fb
	ld a, e                                          ; $6ae6: $7b
	ld h, [hl]                                       ; $6ae7: $66
	sbc c                                            ; $6ae8: $99
	sbc h                                            ; $6ae9: $9c
	add b                                            ; $6aea: $80
	db $fd                                           ; $6aeb: $fd
	jr @+$01                                         ; $6aec: $18 $ff

	pop af                                           ; $6aee: $f1
	ld a, e                                          ; $6aef: $7b
	inc bc                                           ; $6af0: $03
	sbc l                                            ; $6af1: $9d
	cp $ff                                           ; $6af2: $fe $ff
	ld a, e                                          ; $6af4: $7b
	db $fd                                           ; $6af5: $fd
	ld a, a                                          ; $6af6: $7f
	cp $9d                                           ; $6af7: $fe $9d
	add c                                            ; $6af9: $81
	nop                                              ; $6afa: $00
	sbc $80                                          ; $6afb: $de $80
	cp [hl]                                          ; $6afd: $be
	nop                                              ; $6afe: $00
	ret nz                                           ; $6aff: $c0

	pop bc                                           ; $6b00: $c1
	add a                                            ; $6b01: $87
	add b                                            ; $6b02: $80
	ld h, c                                          ; $6b03: $61
	ret nz                                           ; $6b04: $c0

	ld [hl], e                                       ; $6b05: $73
	ld h, b                                          ; $6b06: $60
	inc bc                                           ; $6b07: $03
	rlca                                             ; $6b08: $07
	ld [bc], a                                       ; $6b09: $02
	rlca                                             ; $6b0a: $07
	inc b                                            ; $6b0b: $04
	rrca                                             ; $6b0c: $0f
	inc b                                            ; $6b0d: $04
	rrca                                             ; $6b0e: $0f
	ld [$101f], sp                                   ; $6b0f: $08 $1f $10
	ccf                                              ; $6b12: $3f
	jr nz, @+$80                                     ; $6b13: $20 $7e

	ld b, b                                          ; $6b15: $40
	ld hl, sp-$46                                    ; $6b16: $f8 $ba
	rst AddAOntoHL                                          ; $6b18: $ef
	cp c                                             ; $6b19: $b9
	ld a, e                                          ; $6b1a: $7b
	cp $90                                           ; $6b1b: $fe $90
	cp h                                             ; $6b1d: $bc
	rst SubAFromBC                                          ; $6b1e: $e7
	cp h                                             ; $6b1f: $bc
	rst SubAFromBC                                          ; $6b20: $e7
	cp [hl]                                          ; $6b21: $be
	db $e3                                           ; $6b22: $e3
	and d                                            ; $6b23: $a2
	db $e3                                           ; $6b24: $e3
	and a                                            ; $6b25: $a7
	rst SubAFromBC                                          ; $6b26: $e7
	ld a, a                                          ; $6b27: $7f
	add hl, sp                                       ; $6b28: $39
	rst $38                                          ; $6b29: $ff
	inc bc                                           ; $6b2a: $03
	rst $38                                          ; $6b2b: $ff
	cp e                                             ; $6b2c: $bb
	rst $38                                          ; $6b2d: $ff
	rst $38                                          ; $6b2e: $ff
	rst $38                                          ; $6b2f: $ff
	rst $38                                          ; $6b30: $ff
	rst $38                                          ; $6b31: $ff
	rst $38                                          ; $6b32: $ff
	db $dd                                           ; $6b33: $dd
	rst $38                                          ; $6b34: $ff
	ld a, e                                          ; $6b35: $7b
	ld c, c                                          ; $6b36: $49
	ld a, e                                          ; $6b37: $7b
	cp $84                                           ; $6b38: $fe $84
	ld a, [hl]                                       ; $6b3a: $7e
	cp $fc                                           ; $6b3b: $fe $fc
	cp $fc                                           ; $6b3d: $fe $fc
	ld a, [$f2f0]                                    ; $6b3f: $fa $f0 $f2
	ldh [$e2], a                                     ; $6b42: $e0 $e2
	jp nz, $83c2                                     ; $6b44: $c2 $c2 $83

	add h                                            ; $6b47: $84
	inc bc                                           ; $6b48: $03
	inc b                                            ; $6b49: $04
	inc bc                                           ; $6b4a: $03
	dec b                                            ; $6b4b: $05
	rlca                                             ; $6b4c: $07
	add hl, bc                                       ; $6b4d: $09
	rlca                                             ; $6b4e: $07
	ldh a, [hDisp1_SCX]                                     ; $6b4f: $f0 $91
	ld sp, hl                                        ; $6b51: $f9
	adc a                                            ; $6b52: $8f
	rst $38                                          ; $6b53: $ff
	add l                                            ; $6b54: $85
	ld [hl], e                                       ; $6b55: $73
	cp $9e                                           ; $6b56: $fe $9e
	dec b                                            ; $6b58: $05
	ld [hl], a                                       ; $6b59: $77
	cp $97                                           ; $6b5a: $fe $97
	add b                                            ; $6b5c: $80
	ldh [$80], a                                     ; $6b5d: $e0 $80
	add c                                            ; $6b5f: $81
	add e                                            ; $6b60: $83
	rst JumpTable                                          ; $6b61: $c7
	rst AddAOntoHL                                          ; $6b62: $ef
	ldh a, [$73]                                     ; $6b63: $f0 $73
	call nz, $1c8c                                   ; $6b65: $c4 $8c $1c
	rst $38                                          ; $6b68: $ff
	ld [hl+], a                                      ; $6b69: $22
	cp a                                             ; $6b6a: $bf
	pop af                                           ; $6b6b: $f1
	cp a                                             ; $6b6c: $bf
	pop hl                                           ; $6b6d: $e1
	cp a                                             ; $6b6e: $bf
	ldh [$bf], a                                     ; $6b6f: $e0 $bf
	ldh [$be], a                                     ; $6b71: $e0 $be
	ldh [$9c], a                                     ; $6b73: $e0 $9c

jr_011_6b75:
	ldh [$98], a                                     ; $6b75: $e0 $98
	ldh [hDisp1_SCY], a                                     ; $6b77: $e0 $90
	ldh [rHDMA2], a                                  ; $6b79: $e0 $52
	nop                                              ; $6b7b: $00
	rst $38                                          ; $6b7c: $ff
	sub a                                            ; $6b7d: $97
	ld a, a                                          ; $6b7e: $7f
	nop                                              ; $6b7f: $00
	ld a, a                                          ; $6b80: $7f
	dec a                                            ; $6b81: $3d
	ld h, a                                          ; $6b82: $67
	dec h                                            ; $6b83: $25
	ld l, a                                          ; $6b84: $6f
	dec h                                            ; $6b85: $25
	ld a, e                                          ; $6b86: $7b
	ld a, [$2492]                                    ; $6b87: $fa $92 $24
	ld l, a                                          ; $6b8a: $6f
	dec h                                            ; $6b8b: $25
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	rst $38                                          ; $6b8e: $ff
	nop                                              ; $6b8f: $00
	rst $38                                          ; $6b90: $ff
	rst $38                                          ; $6b91: $ff
	jr nc, jr_011_6bc4                               ; $6b92: $30 $30

	ld [hl], a                                       ; $6b94: $77
	jr nc, jr_011_6b75                               ; $6b95: $30 $de

	rst $38                                          ; $6b97: $ff
	ld a, e                                          ; $6b98: $7b
	or $6f                                           ; $6b99: $f6 $6f
	ldh a, [$6f]                                     ; $6b9b: $f0 $6f
	ld a, [$f65f]                                    ; $6b9d: $fa $5f $f6
	rst SubAFromDE                                          ; $6ba0: $df
	inc c                                            ; $6ba1: $0c
	sbc l                                            ; $6ba2: $9d
	db $fd                                           ; $6ba3: $fd
	inc c                                            ; $6ba4: $0c
	ld h, e                                          ; $6ba5: $63
	ldh a, [$98]                                     ; $6ba6: $f0 $98
	ld bc, $bdff                                     ; $6ba8: $01 $ff $bd
	rst SubAFromBC                                          ; $6bab: $e7
	and l                                            ; $6bac: $a5
	rst AddAOntoHL                                          ; $6bad: $ef
	and l                                            ; $6bae: $a5
	ld a, e                                          ; $6baf: $7b
	ld a, [$259b]                                    ; $6bb0: $fa $9b $25
	rst AddAOntoHL                                          ; $6bb3: $ef
	and l                                            ; $6bb4: $a5
	ld l, a                                          ; $6bb5: $6f
	ld a, e                                          ; $6bb6: $7b
	or [hl]                                          ; $6bb7: $b6
	ld c, e                                          ; $6bb8: $4b
	cp $9e                                           ; $6bb9: $fe $9e
	inc h                                            ; $6bbb: $24
	ld h, a                                          ; $6bbc: $67
	and b                                            ; $6bbd: $a0
	ld a, e                                          ; $6bbe: $7b
	sub [hl]                                         ; $6bbf: $96
	sbc d                                            ; $6bc0: $9a
	ld a, a                                          ; $6bc1: $7f
	ld l, a                                          ; $6bc2: $6f
	dec h                                            ; $6bc3: $25

jr_011_6bc4:
	rst AddAOntoHL                                          ; $6bc4: $ef
	dec h                                            ; $6bc5: $25
	ld h, a                                          ; $6bc6: $67
	ret nc                                           ; $6bc7: $d0

	ld a, e                                          ; $6bc8: $7b
	add $9e                                          ; $6bc9: $c6 $9e
	rst $38                                          ; $6bcb: $ff
	ld h, [hl]                                       ; $6bcc: $66
	ld [bc], a                                       ; $6bcd: $02
	rst AddAOntoHL                                          ; $6bce: $ef
	rst SubAFromDE                                          ; $6bcf: $df
	ld [bc], a                                       ; $6bd0: $02
	sbc l                                            ; $6bd1: $9d
	inc bc                                           ; $6bd2: $03
	ld [bc], a                                       ; $6bd3: $02

Call_011_6bd4:
	sbc $03                                          ; $6bd4: $de $03
	sbc $02                                          ; $6bd6: $de $02
	ei                                               ; $6bd8: $fb
	sbc l                                            ; $6bd9: $9d
	cp e                                             ; $6bda: $bb
	sub d                                            ; $6bdb: $92
	sbc $ab                                          ; $6bdc: $de $ab
	sbc d                                            ; $6bde: $9a
	dec hl                                           ; $6bdf: $2b
	xor e                                            ; $6be0: $ab
	xor e                                            ; $6be1: $ab
	cp e                                             ; $6be2: $bb
	sub d                                            ; $6be3: $92
	ld h, a                                          ; $6be4: $67
	ldh a, [$df]                                     ; $6be5: $f0 $df
	cp e                                             ; $6be7: $bb
	ld a, e                                          ; $6be8: $7b
	ldh a, [c]                                       ; $6be9: $f2
	sbc h                                            ; $6bea: $9c
	cp d                                             ; $6beb: $ba
	xor d                                            ; $6bec: $aa
	xor d                                            ; $6bed: $aa
	ei                                               ; $6bee: $fb
	sub l                                            ; $6bef: $95
	and a                                            ; $6bf0: $a7
	and d                                            ; $6bf1: $a2
	and l                                            ; $6bf2: $a5
	and l                                            ; $6bf3: $a5
	and h                                            ; $6bf4: $a4
	and h                                            ; $6bf5: $a4
	and l                                            ; $6bf6: $a5
	and l                                            ; $6bf7: $a5
	and a                                            ; $6bf8: $a7
	and d                                            ; $6bf9: $a2
	ei                                               ; $6bfa: $fb
	sbc l                                            ; $6bfb: $9d
	ld [hl], a                                       ; $6bfc: $77
	dec h                                            ; $6bfd: $25
	call c, $9c57                                    ; $6bfe: $dc $57 $9c
	ld d, l                                          ; $6c01: $55
	ld [hl], l                                       ; $6c02: $75
	dec h                                            ; $6c03: $25
	ei                                               ; $6c04: $fb
	sub l                                            ; $6c05: $95
	ld [hl], l                                       ; $6c06: $75
	ld h, l                                          ; $6c07: $65
	ld d, l                                          ; $6c08: $55
	ld d, l                                          ; $6c09: $55
	ld [hl], l                                       ; $6c0a: $75
	ld h, l                                          ; $6c0b: $65
	ld b, a                                          ; $6c0c: $47
	ld b, l                                          ; $6c0d: $45
	ld b, a                                          ; $6c0e: $47
	ld b, d                                          ; $6c0f: $42
	ei                                               ; $6c10: $fb
	rst SubAFromDE                                          ; $6c11: $df
	halt                                             ; $6c12: $76
	rst SubAFromDE                                          ; $6c13: $df
	inc h                                            ; $6c14: $24
	rst SubAFromDE                                          ; $6c15: $df
	ld h, $77                                        ; $6c16: $26 $77
	db $fc                                           ; $6c18: $fc
	ei                                               ; $6c19: $fb
	sub l                                            ; $6c1a: $95
	and $c6                                          ; $6c1b: $e6 $c6
	and h                                            ; $6c1d: $a4
	and h                                            ; $6c1e: $a4
	and $c6                                          ; $6c1f: $e6 $c6
	db $e4                                           ; $6c21: $e4
	and h                                            ; $6c22: $a4
	and [hl]                                         ; $6c23: $a6
	and [hl]                                         ; $6c24: $a6
	ei                                               ; $6c25: $fb
	sbc l                                            ; $6c26: $9d
	xor $ae                                          ; $6c27: $ee $ae
	jp c, $9ee4                                      ; $6c29: $da $e4 $9e

	and h                                            ; $6c2c: $a4
	ei                                               ; $6c2d: $fb
	sub l                                            ; $6c2e: $95
	db $dd                                           ; $6c2f: $dd
	reti                                             ; $6c30: $d9


	sub h                                            ; $6c31: $94
	sub h                                            ; $6c32: $94
	call c, $9cd8                                    ; $6c33: $dc $d8 $9c
	sub h                                            ; $6c36: $94
	call nc, Call_011_6bd4                           ; $6c37: $d4 $d4 $6b
	ldh a, [$9a]                                     ; $6c3a: $f0 $9a
	ret                                              ; $6c3c: $c9


	sub l                                            ; $6c3d: $95
	sub l                                            ; $6c3e: $95
	sbc l                                            ; $6c3f: $9d
	sbc l                                            ; $6c40: $9d
	db $dd                                           ; $6c41: $dd
	sub l                                            ; $6c42: $95
	ld l, e                                          ; $6c43: $6b
	sub b                                            ; $6c44: $90
	sbc [hl]                                         ; $6c45: $9e
	ld d, l                                          ; $6c46: $55
	call c, $df77                                    ; $6c47: $dc $77 $df
	ld [hl], l                                       ; $6c4a: $75
	sbc [hl]                                         ; $6c4b: $9e
	ld d, l                                          ; $6c4c: $55
	ei                                               ; $6c4d: $fb
	sbc c                                            ; $6c4e: $99
	ld l, [hl]                                       ; $6c4f: $6e
	ld l, d                                          ; $6c50: $6a
	ld c, [hl]                                       ; $6c51: $4e
	ld c, [hl]                                       ; $6c52: $4e
	ld l, [hl]                                       ; $6c53: $6e
	ld l, [hl]                                       ; $6c54: $6e
	ld a, e                                          ; $6c55: $7b
	db $fc                                           ; $6c56: $fc
	sbc [hl]                                         ; $6c57: $9e
	ld l, d                                          ; $6c58: $6a
	ei                                               ; $6c59: $fb
	rst SubAFromDE                                          ; $6c5a: $df
	push hl                                          ; $6c5b: $e5
	ld a, e                                          ; $6c5c: $7b
	add h                                            ; $6c5d: $84
	sbc l                                            ; $6c5e: $9d
	ld b, [hl]                                       ; $6c5f: $46
	ld b, a                                          ; $6c60: $47
	sbc $45                                          ; $6c61: $de $45
	ld l, e                                          ; $6c63: $6b
	ret nc                                           ; $6c64: $d0

	sub a                                            ; $6c65: $97
	ld h, $55                                        ; $6c66: $26 $55
	ld d, l                                          ; $6c68: $55
	ld d, a                                          ; $6c69: $57
	ld d, [hl]                                       ; $6c6a: $56
	ld d, l                                          ; $6c6b: $55
	ld d, l                                          ; $6c6c: $55
	ld [hl], a                                       ; $6c6d: $77
	ld l, e                                          ; $6c6e: $6b
	add b                                            ; $6c6f: $80
	rst SubAFromDE                                          ; $6c70: $df
	ld h, b                                          ; $6c71: $60
	rst SubAFromDE                                          ; $6c72: $df
	ld b, b                                          ; $6c73: $40
	ld l, a                                          ; $6c74: $6f
	db $fc                                           ; $6c75: $fc
	ld hl, sp-$66                                    ; $6c76: $f8 $9a
	rlca                                             ; $6c78: $07
	nop                                              ; $6c79: $00
	rra                                              ; $6c7a: $1f
	nop                                              ; $6c7b: $00
	ccf                                              ; $6c7c: $3f
	ld a, e                                          ; $6c7d: $7b
	cp $9e                                           ; $6c7e: $fe $9e
	ld a, a                                          ; $6c80: $7f
	ld a, e                                          ; $6c81: $7b
	cp $fd                                           ; $6c82: $fe $fd
	sbc d                                            ; $6c84: $9a
	add b                                            ; $6c85: $80
	nop                                              ; $6c86: $00
	ldh [rP1], a                                     ; $6c87: $e0 $00
	ldh a, [$7b]                                     ; $6c89: $f0 $7b
	cp $9e                                           ; $6c8b: $fe $9e
	ld hl, sp+$7b                                    ; $6c8d: $f8 $7b
	cp $fe                                           ; $6c8f: $fe $fe
	sub e                                            ; $6c91: $93
	ld bc, $0300                                     ; $6c92: $01 $00 $03
	ld bc, $0307                                     ; $6c95: $01 $07 $03
	rrca                                             ; $6c98: $0f
	rlca                                             ; $6c99: $07
	rra                                              ; $6c9a: $1f
	rrca                                             ; $6c9b: $0f
	ccf                                              ; $6c9c: $3f
	rra                                              ; $6c9d: $1f
	ld [hl], d                                       ; $6c9e: $72
	adc $95                                          ; $6c9f: $ce $95
	db $fc                                           ; $6ca1: $fc
	rst $38                                          ; $6ca2: $ff
	cp $ff                                           ; $6ca3: $fe $ff
	cp $fc                                           ; $6ca5: $fe $fc
	cp $f8                                           ; $6ca7: $fe $f8
	db $fc                                           ; $6ca9: $fc
	ldh a, [$73]                                     ; $6caa: $f0 $73
	ldh [$73], a                                     ; $6cac: $e0 $73
	call c, $0398                                    ; $6cae: $dc $98 $03
	rlca                                             ; $6cb1: $07
	rrca                                             ; $6cb2: $0f
	rra                                              ; $6cb3: $1f
	rra                                              ; $6cb4: $1f
	ld a, a                                          ; $6cb5: $7f
	ccf                                              ; $6cb6: $3f
	ei                                               ; $6cb7: $fb
	sbc l                                            ; $6cb8: $9d
	cp b                                             ; $6cb9: $b8
	ld a, h                                          ; $6cba: $7c
	reti                                             ; $6cbb: $d9


	db $fc                                           ; $6cbc: $fc
	db $fc                                           ; $6cbd: $fc
	sbc [hl]                                         ; $6cbe: $9e
	rrca                                             ; $6cbf: $0f
	ld l, e                                          ; $6cc0: $6b
	and h                                            ; $6cc1: $a4
	sbc [hl]                                         ; $6cc2: $9e
	rst $38                                          ; $6cc3: $ff
	ld a, e                                          ; $6cc4: $7b
	cp $fb                                           ; $6cc5: $fe $fb
	sbc [hl]                                         ; $6cc7: $9e
	ret nz                                           ; $6cc8: $c0

	ld a, e                                          ; $6cc9: $7b
	sbc [hl]                                         ; $6cca: $9e
	ld [hl], e                                       ; $6ccb: $73
	sbc h                                            ; $6ccc: $9c
	sbc l                                            ; $6ccd: $9d
	ccf                                              ; $6cce: $3f
	ld a, a                                          ; $6ccf: $7f
	ld c, a                                          ; $6cd0: $4f
	cp $d1                                           ; $6cd1: $fe $d1
	rst $38                                          ; $6cd3: $ff
	sbc b                                            ; $6cd4: $98
	ldh [$f0], a                                     ; $6cd5: $e0 $f0
	ret nz                                           ; $6cd7: $c0

	ldh [$a0], a                                     ; $6cd8: $e0 $a0
	ret nz                                           ; $6cda: $c0

	add b                                            ; $6cdb: $80
	ld a, e                                          ; $6cdc: $7b
	cp $7f                                           ; $6cdd: $fe $7f
	ld hl, sp-$69                                    ; $6cdf: $f8 $97
	ldh a, [$e0]                                     ; $6ce1: $f0 $e0
	ldh [$f0], a                                     ; $6ce3: $e0 $f0
	ldh a, [$f8]                                     ; $6ce5: $f0 $f8
	ldh a, [$f0]                                     ; $6ce7: $f0 $f0
	ld [hl], a                                       ; $6ce9: $77
	rst FarCall                                          ; $6cea: $f7
	ld a, a                                          ; $6ceb: $7f
	ldh a, [c]                                       ; $6cec: $f2
	ld a, a                                          ; $6ced: $7f
	db $fd                                           ; $6cee: $fd
	db $dd                                           ; $6cef: $dd
	ret nz                                           ; $6cf0: $c0

	ld a, e                                          ; $6cf1: $7b
	adc e                                            ; $6cf2: $8b
	sbc l                                            ; $6cf3: $9d
	rra                                              ; $6cf4: $1f
	ccf                                              ; $6cf5: $3f
	ld a, e                                          ; $6cf6: $7b
	db $fd                                           ; $6cf7: $fd
	reti                                             ; $6cf8: $d9


	ccf                                              ; $6cf9: $3f
	ld l, a                                          ; $6cfa: $6f
	ldh [$df], a                                     ; $6cfb: $e0 $df
	pop hl                                           ; $6cfd: $e1
	sbc h                                            ; $6cfe: $9c
	jp $e3e3                                         ; $6cff: $c3 $e3 $e3


	call c, $fdc7                                    ; $6d02: $dc $c7 $fd
	sbc e                                            ; $6d05: $9b
	ld [hl], b                                       ; $6d06: $70
	ld hl, sp-$04                                    ; $6d07: $f8 $fc
	db $fc                                           ; $6d09: $fc
	sbc $fe                                          ; $6d0a: $de $fe
	ld h, e                                          ; $6d0c: $63
	or b                                             ; $6d0d: $b0
	ld a, a                                          ; $6d0e: $7f
	or h                                             ; $6d0f: $b4
	ld a, e                                          ; $6d10: $7b
	ld e, $f9                                        ; $6d11: $1e $f9
	ld [hl], a                                       ; $6d13: $77
	ld l, b                                          ; $6d14: $68
	ld [hl], a                                       ; $6d15: $77
	inc b                                            ; $6d16: $04
	ld a, a                                          ; $6d17: $7f
	ld h, $7e                                        ; $6d18: $26 $7e
	ld a, [$f97b]                                    ; $6d1a: $fa $7b $f9
	ld [hl], a                                       ; $6d1d: $77
	inc c                                            ; $6d1e: $0c
	sub h                                            ; $6d1f: $94
	ld bc, $03f0                                     ; $6d20: $01 $f0 $03
	pop af                                           ; $6d23: $f1
	rlca                                             ; $6d24: $07
	db $e3                                           ; $6d25: $e3
	rrca                                             ; $6d26: $0f
	add a                                            ; $6d27: $87
	rra                                              ; $6d28: $1f
	rrca                                             ; $6d29: $0f
	rst $38                                          ; $6d2a: $ff
	ld a, e                                          ; $6d2b: $7b
	ld l, $9e                                        ; $6d2c: $2e $9e
	rst $38                                          ; $6d2e: $ff
	ld [hl], e                                       ; $6d2f: $73
	ld l, h                                          ; $6d30: $6c
	ld a, a                                          ; $6d31: $7f
	jp nz, $106f                                     ; $6d32: $c2 $6f $10

	ld a, a                                          ; $6d35: $7f
	ret nz                                           ; $6d36: $c0

	sbc b                                            ; $6d37: $98
	pop bc                                           ; $6d38: $c1
	ldh [hLCDCIntHandlerIdx], a                                     ; $6d39: $e0 $81
	pop bc                                           ; $6d3b: $c1
	inc bc                                           ; $6d3c: $03
	add e                                            ; $6d3d: $83
	inc bc                                           ; $6d3e: $03
	db $dd                                           ; $6d3f: $dd
	rlca                                             ; $6d40: $07
	sbc $0f                                          ; $6d41: $de $0f
	ld l, a                                          ; $6d43: $6f
	ldh [c], a                                       ; $6d44: $e2
	call c, $dfff                                    ; $6d45: $dc $ff $df
	cp $df                                           ; $6d48: $fe $df
	db $fc                                           ; $6d4a: $fc
	ld a, e                                          ; $6d4b: $7b
	sub [hl]                                         ; $6d4c: $96
	ld [hl], a                                       ; $6d4d: $77
	ei                                               ; $6d4e: $fb
	sbc l                                            ; $6d4f: $9d
	ret nc                                           ; $6d50: $d0

	ldh [$63], a                                     ; $6d51: $e0 $63
	sbc [hl]                                         ; $6d53: $9e
	ld [hl], a                                       ; $6d54: $77
	inc c                                            ; $6d55: $0c
	ld l, a                                          ; $6d56: $6f
	sbc h                                            ; $6d57: $9c
	ld a, [hl]                                       ; $6d58: $7e
	ld a, [$9efd]                                    ; $6d59: $fa $fd $9e
	ldh a, [$7b]                                     ; $6d5c: $f0 $7b
	and d                                            ; $6d5e: $a2
	sbc c                                            ; $6d5f: $99
	pop hl                                           ; $6d60: $e1
	inc bc                                           ; $6d61: $03
	db $e3                                           ; $6d62: $e3
	rlca                                             ; $6d63: $07
	jp Jump_011_7b0f                                 ; $6d64: $c3 $0f $7b


	pop bc                                           ; $6d67: $c1
	ld a, e                                          ; $6d68: $7b
	sbc [hl]                                         ; $6d69: $9e
	sub b                                            ; $6d6a: $90
	rst $38                                          ; $6d6b: $ff
	rst GetHLinHL                                          ; $6d6c: $cf
	rst $38                                          ; $6d6d: $ff
	xor a                                            ; $6d6e: $af
	rst SubAFromDE                                          ; $6d6f: $df
	sub a                                            ; $6d70: $97
	rst GetHLinHL                                          ; $6d71: $cf
	adc a                                            ; $6d72: $8f
	rst JumpTable                                          ; $6d73: $c7
	add e                                            ; $6d74: $83
	rst JumpTable                                          ; $6d75: $c7
	add a                                            ; $6d76: $87
	jp $c381                                         ; $6d77: $c3 $81 $c3


	ld a, e                                          ; $6d7a: $7b
	ld b, c                                          ; $6d7b: $41
	rst SubAFromDE                                          ; $6d7c: $df
	ld hl, sp+$7f                                    ; $6d7d: $f8 $7f
	sub l                                            ; $6d7f: $95
	ld a, e                                          ; $6d80: $7b
	ld c, a                                          ; $6d81: $4f
	ld a, e                                          ; $6d82: $7b
	or b                                             ; $6d83: $b0
	sbc $ff                                          ; $6d84: $de $ff
	reti                                             ; $6d86: $d9


	ccf                                              ; $6d87: $3f
	ld a, e                                          ; $6d88: $7b
	ld e, $de                                        ; $6d89: $1e $de
	rra                                              ; $6d8b: $1f
	sbc l                                            ; $6d8c: $9d
	rrca                                             ; $6d8d: $0f
	sbc a                                            ; $6d8e: $9f
	db $dd                                           ; $6d8f: $dd
	ret nz                                           ; $6d90: $c0

	ld a, e                                          ; $6d91: $7b
	ld b, $dd                                        ; $6d92: $06 $dd
	ldh [$dd], a                                     ; $6d94: $e0 $dd
	ldh a, [$9e]                                     ; $6d96: $f0 $9e
	ld hl, sp+$4b                                    ; $6d98: $f8 $4b
	ldh [hDisp1_WX], a                                     ; $6d9a: $e0 $96
	rra                                              ; $6d9c: $1f
	rst JumpTable                                          ; $6d9d: $c7
	rst JumpTable                                          ; $6d9e: $c7
	jp $e3c7                                         ; $6d9f: $c3 $c7 $e3


	jp $e1c1                                         ; $6da2: $c3 $c1 $e1


	ld h, a                                          ; $6da5: $67
	ldh [rPCM34], a                                  ; $6da6: $e0 $77
	ld b, [hl]                                       ; $6da8: $46
	ld [hl], a                                       ; $6da9: $77
	ld h, a                                          ; $6daa: $67
	ld a, [hl]                                       ; $6dab: $7e
	db $fc                                           ; $6dac: $fc
	db $ec                                           ; $6dad: $ec
	rst SubAFromDE                                          ; $6dae: $df
	add b                                            ; $6daf: $80
	sbc l                                            ; $6db0: $9d
	pop bc                                           ; $6db1: $c1
	add c                                            ; $6db2: $81
	ld [hl], d                                       ; $6db3: $72
	and d                                            ; $6db4: $a2
	ld h, a                                          ; $6db5: $67
	cp $dd                                           ; $6db6: $fe $dd
	rst $38                                          ; $6db8: $ff
	ld a, e                                          ; $6db9: $7b
	dec l                                            ; $6dba: $2d
	ld a, d                                          ; $6dbb: $7a
	halt                                             ; $6dbc: $76
	ld [hl], a                                       ; $6dbd: $77
	xor [hl]                                         ; $6dbe: $ae
	ld a, a                                          ; $6dbf: $7f
	or b                                             ; $6dc0: $b0
	ld a, a                                          ; $6dc1: $7f
	ld h, a                                          ; $6dc2: $67
	sub e                                            ; $6dc3: $93
	add a                                            ; $6dc4: $87
	rst GetHLinHL                                          ; $6dc5: $cf
	rst SubAFromBC                                          ; $6dc6: $e7
	rst JumpTable                                          ; $6dc7: $c7
	jp $e3e7                                         ; $6dc8: $c3 $e7 $e3


	di                                               ; $6dcb: $f3
	ld sp, hl                                        ; $6dcc: $f9
	pop af                                           ; $6dcd: $f1
	pop af                                           ; $6dce: $f1
	ld hl, sp+$7b                                    ; $6dcf: $f8 $7b
	dec h                                            ; $6dd1: $25
	sbc l                                            ; $6dd2: $9d
	ld hl, sp-$02                                    ; $6dd3: $f8 $fe
	halt                                             ; $6dd5: $76
	ld [bc], a                                       ; $6dd6: $02
	reti                                             ; $6dd7: $d9


	rst $38                                          ; $6dd8: $ff
	ld l, l                                          ; $6dd9: $6d
	ret nc                                           ; $6dda: $d0

	ld a, e                                          ; $6ddb: $7b
	cp b                                             ; $6ddc: $b8
	ld a, a                                          ; $6ddd: $7f
	ld c, $73                                        ; $6dde: $0e $73
	dec b                                            ; $6de0: $05
	sbc [hl]                                         ; $6de1: $9e
	db $fc                                           ; $6de2: $fc
	sbc $0f                                          ; $6de3: $de $0f
	db $dd                                           ; $6de5: $dd
	rlca                                             ; $6de6: $07
	sbc d                                            ; $6de7: $9a
	jp $e303                                         ; $6de8: $c3 $03 $e3


	ld bc, $76e1                                     ; $6deb: $01 $e1 $76
	jr nz, @+$81                                     ; $6dee: $20 $7f

	xor l                                            ; $6df0: $ad
	ld a, a                                          ; $6df1: $7f
	xor h                                            ; $6df2: $ac
	ld [hl], e                                       ; $6df3: $73
	ld d, b                                          ; $6df4: $50
	halt                                             ; $6df5: $76
	ld h, a                                          ; $6df6: $67
	ld a, e                                          ; $6df7: $7b
	jp nz, $165e                                     ; $6df8: $c2 $5e $16

	sbc [hl]                                         ; $6dfb: $9e
	ld b, b                                          ; $6dfc: $40
	ld [hl], c                                       ; $6dfd: $71
	call nc, $865f                                   ; $6dfe: $d4 $5f $86
	sbc [hl]                                         ; $6e01: $9e
	ld b, b                                          ; $6e02: $40
	ld [hl], d                                       ; $6e03: $72
	adc $7f                                          ; $6e04: $ce $7f
	adc l                                            ; $6e06: $8d
	ld a, [hl]                                       ; $6e07: $7e
	jp hl                                            ; $6e08: $e9


	ld a, d                                          ; $6e09: $7a
	and h                                            ; $6e0a: $a4
	ld a, l                                          ; $6e0b: $7d
	adc a                                            ; $6e0c: $8f
	ld a, a                                          ; $6e0d: $7f
	cp $fc                                           ; $6e0e: $fe $fc
	sbc [hl]                                         ; $6e10: $9e
	ld a, [$f666]                                    ; $6e11: $fa $66 $f6
	sbc l                                            ; $6e14: $9d
	cp $02                                           ; $6e15: $fe $02
	ld [hl], c                                       ; $6e17: $71
	or h                                             ; $6e18: $b4
	ld a, a                                          ; $6e19: $7f
	rst JumpTable                                          ; $6e1a: $c7
	rst SubAFromDE                                          ; $6e1b: $df
	rra                                              ; $6e1c: $1f
	ld a, a                                          ; $6e1d: $7f
	sbc $9d                                          ; $6e1e: $de $9d
	dec b                                            ; $6e20: $05
	inc bc                                           ; $6e21: $03
	ld sp, hl                                        ; $6e22: $f9
	reti                                             ; $6e23: $d9


	db $fc                                           ; $6e24: $fc
	ld a, l                                          ; $6e25: $7d
	adc [hl]                                         ; $6e26: $8e
	ld a, [$4875]                                    ; $6e27: $fa $75 $48
	ld [hl], l                                       ; $6e2a: $75
	and h                                            ; $6e2b: $a4
	ld a, [hl]                                       ; $6e2c: $7e
	inc e                                            ; $6e2d: $1c
	ldh [$cb], a                                     ; $6e2e: $e0 $cb
	ldh [$d2], a                                     ; $6e30: $e0 $d2
	ld [hl], l                                       ; $6e32: $75
	nop                                              ; $6e33: $00
	ldh [$3e], a                                     ; $6e34: $e0 $3e
	sub l                                            ; $6e36: $95
	ld de, $1312                                     ; $6e37: $11 $12 $13
	inc d                                            ; $6e3a: $14
	dec d                                            ; $6e3b: $15
	ld d, $17                                        ; $6e3c: $16 $17
	jr jr_011_6e55                                   ; $6e3e: $18 $15

	ld d, $77                                        ; $6e40: $16 $77
	or $ef                                           ; $6e42: $f6 $ef
	sub l                                            ; $6e44: $95
	ld hl, $2322                                     ; $6e45: $21 $22 $23
	inc h                                            ; $6e48: $24
	dec h                                            ; $6e49: $25
	ld h, $27                                        ; $6e4a: $26 $27
	jr z, @+$27                                      ; $6e4c: $28 $25

	ld h, $7b                                        ; $6e4e: $26 $7b
	or $9e                                           ; $6e50: $f6 $9e
	jr nz, @-$0f                                     ; $6e52: $20 $ef

	sub l                                            ; $6e54: $95

jr_011_6e55:
	add hl, de                                       ; $6e55: $19
	ld a, [de]                                       ; $6e56: $1a
	dec de                                           ; $6e57: $1b
	dec e                                            ; $6e58: $1d
	inc e                                            ; $6e59: $1c
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	dec e                                            ; $6e5c: $1d
	ld e, $1f                                        ; $6e5d: $1e $1f
	ld a, e                                          ; $6e5f: $7b
	or $ee                                           ; $6e60: $f6 $ee
	sub l                                            ; $6e62: $95
	add hl, de                                       ; $6e63: $19
	add hl, hl                                       ; $6e64: $29
	ld a, [hl+]                                      ; $6e65: $2a
	dec hl                                           ; $6e66: $2b
	inc l                                            ; $6e67: $2c
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00

jr_011_6e6a:
	dec l                                            ; $6e6a: $2d
	ld l, $2f                                        ; $6e6b: $2e $2f
	ld a, e                                          ; $6e6d: $7b
	or $9e                                           ; $6e6e: $f6 $9e
	jr nc, @+$3d                                     ; $6e70: $30 $3b

	ldh [hDisp1_WX], a                                     ; $6e72: $e0 $96
	ld sp, $3332                                     ; $6e74: $31 $32 $33
	inc [hl]                                         ; $6e77: $34
	dec [hl]                                         ; $6e78: $35
	rla                                              ; $6e79: $17
	ld [hl], $34                                     ; $6e7a: $36 $34
	dec [hl]                                         ; $6e7c: $35
	ld a, e                                          ; $6e7d: $7b
	or $9e                                           ; $6e7e: $f6 $9e
	scf                                              ; $6e80: $37
	rst AddAOntoHL                                          ; $6e81: $ef
	sub l                                            ; $6e82: $95
	jr c, @+$3b                                      ; $6e83: $38 $39

	ld a, [hl-]                                      ; $6e85: $3a
	dec sp                                           ; $6e86: $3b
	inc a                                            ; $6e87: $3c
	dec a                                            ; $6e88: $3d
	daa                                              ; $6e89: $27
	ld a, $3c                                        ; $6e8a: $3e $3c
	dec a                                            ; $6e8c: $3d
	ld [hl], a                                       ; $6e8d: $77
	or $f0                                           ; $6e8e: $f6 $f0
	adc a                                            ; $6e90: $8f
	ld bc, $0302                                     ; $6e91: $01 $02 $03
	inc b                                            ; $6e94: $04

Call_011_6e95:
	dec b                                            ; $6e95: $05
	ld b, $07                                        ; $6e96: $06 $07
	ld [$0a09], sp                                   ; $6e98: $08 $09 $0a
	dec bc                                           ; $6e9b: $0b
	inc c                                            ; $6e9c: $0c
	dec c                                            ; $6e9d: $0d
	ld c, $0f                                        ; $6e9e: $0e $0f
	db $10                                           ; $6ea0: $10
	ldh [rP1], a                                     ; $6ea1: $e0 $00
	ldh [rP1], a                                     ; $6ea3: $e0 $00
	ldh [hDisp1_WY], a                                     ; $6ea5: $e0 $95
	ld a, [de]                                       ; $6ea7: $1a
	nop                                              ; $6ea8: $00
	ldh [$a0], a                                     ; $6ea9: $e0 $a0
	sbc b                                            ; $6eab: $98
	ld bc, $0010                                     ; $6eac: $01 $10 $00
	ld [bc], a                                       ; $6eaf: $02
	jr nz, @+$05                                     ; $6eb0: $20 $03

	jr nc, jr_011_6ed7                               ; $6eb2: $30 $23

	ldh a, [$e0]                                     ; $6eb4: $f0 $e0
	sbc $7f                                          ; $6eb6: $de $7f
	ret nc                                           ; $6eb8: $d0

	dec de                                           ; $6eb9: $1b
	ldh a, [$d9]                                     ; $6eba: $f0 $d9
	ld b, h                                          ; $6ebc: $44
	ldh [rP1], a                                     ; $6ebd: $e0 $00
	ldh [$cb], a                                     ; $6ebf: $e0 $cb
	xor a                                            ; $6ec1: $af
	inc b                                            ; $6ec2: $04
	pop af                                           ; $6ec3: $f1
	rst SubAFromDE                                          ; $6ec4: $df
	sbc d                                            ; $6ec5: $9a
	rst SubAFromDE                                          ; $6ec6: $df
	ld a, [hl]                                       ; $6ec7: $7e
	push af                                          ; $6ec8: $f5
	rst SubAFromDE                                          ; $6ec9: $df
	ret c                                            ; $6eca: $d8

	rst SubAFromDE                                          ; $6ecb: $df
	ld [hl], a                                       ; $6ecc: $77
	jp hl                                            ; $6ecd: $e9


	rst SubAFromDE                                          ; $6ece: $df
	jr c, jr_011_6e6a                                ; $6ecf: $38 $99

	ld a, h                                          ; $6ed1: $7c
	ld l, h                                          ; $6ed2: $6c
	adc d                                            ; $6ed3: $8a
	adc d                                            ; $6ed4: $8a
	rst FarCall                                          ; $6ed5: $f7
	rst FarCall                                          ; $6ed6: $f7

jr_011_6ed7:
	push af                                          ; $6ed7: $f5
	rst SubAFromDE                                          ; $6ed8: $df
	adc l                                            ; $6ed9: $8d
	rra                                              ; $6eda: $1f
	ret nc                                           ; $6edb: $d0

	rst SubAFromDE                                          ; $6edc: $df
	jr nc, @-$1f                                     ; $6edd: $30 $df

	ld a, b                                          ; $6edf: $78
	di                                               ; $6ee0: $f3
	rst SubAFromDE                                          ; $6ee1: $df
	inc bc                                           ; $6ee2: $03
	push af                                          ; $6ee3: $f5
	rst SubAFromDE                                          ; $6ee4: $df
	inc c                                            ; $6ee5: $0c
	rst SubAFromDE                                          ; $6ee6: $df
	sbc [hl]                                         ; $6ee7: $9e
	rst SubAFromDE                                          ; $6ee8: $df
	ld l, d                                          ; $6ee9: $6a
	rst SubAFromDE                                          ; $6eea: $df
	rst GetHLinHL                                          ; $6eeb: $cf
	jp hl                                            ; $6eec: $e9


	rst SubAFromDE                                          ; $6eed: $df
	ld b, $df                                        ; $6eee: $06 $df
	rrca                                             ; $6ef0: $0f
	rst SubAFromDE                                          ; $6ef1: $df
	or a                                             ; $6ef2: $b7
	rst SubAFromDE                                          ; $6ef3: $df
	db $dd                                           ; $6ef4: $dd
	push af                                          ; $6ef5: $f5
	sbc l                                            ; $6ef6: $9d
	halt                                             ; $6ef7: $76
	ld [hl], $4f                                     ; $6ef8: $36 $4f
	ldh a, [$9b]                                     ; $6efa: $f0 $9b
	xor e                                            ; $6efc: $ab
	xor d                                            ; $6efd: $aa
	cp l                                             ; $6efe: $bd
	cp l                                             ; $6eff: $bd
	push af                                          ; $6f00: $f5
	rst SubAFromDE                                          ; $6f01: $df
	adc b                                            ; $6f02: $88
	ld c, a                                          ; $6f03: $4f
	ld [hl], b                                       ; $6f04: $70
	sbc e                                            ; $6f05: $9b
	ld l, d                                          ; $6f06: $6a
	ld a, [hl+]                                      ; $6f07: $2a
	rst AddAOntoHL                                          ; $6f08: $ef
	rst AddAOntoHL                                          ; $6f09: $ef
	ld c, a                                          ; $6f0a: $4f
	ret nc                                           ; $6f0b: $d0

	ld c, a                                          ; $6f0c: $4f
	ret nz                                           ; $6f0d: $c0

	rst SubAFromDE                                          ; $6f0e: $df
	ld l, d                                          ; $6f0f: $6a
	ld c, a                                          ; $6f10: $4f
	ldh a, [$df]                                     ; $6f11: $f0 $df
	dec hl                                           ; $6f13: $2b
	rst SubAFromDE                                          ; $6f14: $df
	scf                                              ; $6f15: $37
	push af                                          ; $6f16: $f5
	rst SubAFromDE                                          ; $6f17: $df
	db $ec                                           ; $6f18: $ec
	rst SubAFromDE                                          ; $6f19: $df
	cp b                                             ; $6f1a: $b8
	push af                                          ; $6f1b: $f5
	rst SubAFromDE                                          ; $6f1c: $df
	ld l, [hl]                                       ; $6f1d: $6e
	rst SubAFromDE                                          ; $6f1e: $df
	cp e                                             ; $6f1f: $bb
	push af                                          ; $6f20: $f5
	rst SubAFromDE                                          ; $6f21: $df
	xor c                                            ; $6f22: $a9
	rst SubAFromDE                                          ; $6f23: $df
	add hl, sp                                       ; $6f24: $39
	push af                                          ; $6f25: $f5
	rst SubAFromDE                                          ; $6f26: $df
	db $dd                                           ; $6f27: $dd
	ld c, a                                          ; $6f28: $4f
	add b                                            ; $6f29: $80
	rst SubAFromDE                                          ; $6f2a: $df
	ld c, d                                          ; $6f2b: $4a
	rst SubAFromDE                                          ; $6f2c: $df
	inc sp                                           ; $6f2d: $33
	di                                               ; $6f2e: $f3
	rst SubAFromDE                                          ; $6f2f: $df
	ld [hl], b                                       ; $6f30: $70
	rst SubAFromDE                                          ; $6f31: $df
	sbc b                                            ; $6f32: $98
	reti                                             ; $6f33: $d9


	xor b                                            ; $6f34: $a8
	rst SubAFromDE                                          ; $6f35: $df
	xor [hl]                                         ; $6f36: $ae
	rst $38                                          ; $6f37: $ff
	rst SubAFromDE                                          ; $6f38: $df
	ld [hl], a                                       ; $6f39: $77
	rst SubAFromDE                                          ; $6f3a: $df
	xor b                                            ; $6f3b: $a8
	db $dd                                           ; $6f3c: $dd
	xor e                                            ; $6f3d: $ab
	rst SubAFromDE                                          ; $6f3e: $df
	xor c                                            ; $6f3f: $a9
	rst SubAFromDE                                          ; $6f40: $df
	xor e                                            ; $6f41: $ab
	sbc l                                            ; $6f42: $9d
	db $db                                           ; $6f43: $db
	adc e                                            ; $6f44: $8b
	ld [hl], a                                       ; $6f45: $77
	ldh a, [$df]                                     ; $6f46: $f0 $df
	adc c                                            ; $6f48: $89
	db $dd                                           ; $6f49: $dd
	cp d                                             ; $6f4a: $ba
	ld l, a                                          ; $6f4b: $6f
	ld a, [$f077]                                    ; $6f4c: $fa $77 $f0
	rst SubAFromDE                                          ; $6f4f: $df
	adc l                                            ; $6f50: $8d
	rst SubAFromDE                                          ; $6f51: $df
	cp d                                             ; $6f52: $ba
	sbc d                                            ; $6f53: $9a
	cp e                                             ; $6f54: $bb
	cp d                                             ; $6f55: $ba
	sbc l                                            ; $6f56: $9d
	sbc l                                            ; $6f57: $9d
	cp [hl]                                          ; $6f58: $be
	ld [hl], e                                       ; $6f59: $73
	ldh a, [$df]                                     ; $6f5a: $f0 $df
	rst GetHLinHL                                          ; $6f5c: $cf
	rst SubAFromDE                                          ; $6f5d: $df
	ld l, c                                          ; $6f5e: $69
	rst SubAFromDE                                          ; $6f5f: $df
	xor d                                            ; $6f60: $aa
	sbc e                                            ; $6f61: $9b
	ld [$49aa], a                                    ; $6f62: $ea $aa $49
	ld c, c                                          ; $6f65: $49
	db $dd                                           ; $6f66: $dd
	xor d                                            ; $6f67: $aa
	ld [hl], a                                       ; $6f68: $77
	adc [hl]                                         ; $6f69: $8e
	rst SubAFromDE                                          ; $6f6a: $df
	and e                                            ; $6f6b: $a3
	db $dd                                           ; $6f6c: $dd
	or [hl]                                          ; $6f6d: $b6
	rst SubAFromDE                                          ; $6f6e: $df
	scf                                              ; $6f6f: $37
	sbc [hl]                                         ; $6f70: $9e
	or a                                             ; $6f71: $b7
	sbc $b6                                          ; $6f72: $de $b6
	ld [hl], a                                       ; $6f74: $77
	ldh a, [$7e]                                     ; $6f75: $f0 $7e
	call c, Call_011_6adf                            ; $6f77: $dc $df $6a
	rst SubAFromDE                                          ; $6f7a: $df
	ld l, [hl]                                       ; $6f7b: $6e
	sbc l                                            ; $6f7c: $9d
	ld l, d                                          ; $6f7d: $6a
	ld h, d                                          ; $6f7e: $62
	db $dd                                           ; $6f7f: $dd
	ld l, d                                          ; $6f80: $6a
	rst $38                                          ; $6f81: $ff
	rst SubAFromDE                                          ; $6f82: $df
	add hl, sp                                       ; $6f83: $39
	sbc l                                            ; $6f84: $9d
	daa                                              ; $6f85: $27
	ld h, $dd                                        ; $6f86: $26 $dd
	dec hl                                           ; $6f88: $2b
	rst SubAFromDE                                          ; $6f89: $df
	daa                                              ; $6f8a: $27
	rst SubAFromDE                                          ; $6f8b: $df
	dec hl                                           ; $6f8c: $2b
	rst SubAFromDE                                          ; $6f8d: $df
	xor e                                            ; $6f8e: $ab
	ld [hl], a                                       ; $6f8f: $77
	ld a, $d7                                        ; $6f90: $3e $d7
	xor d                                            ; $6f92: $aa
	ld [hl], a                                       ; $6f93: $77
	inc [hl]                                         ; $6f94: $34
	rst SubAFromDE                                          ; $6f95: $df
	rst SubAFromBC                                          ; $6f96: $e7
	sbc l                                            ; $6f97: $9d
	ld l, l                                          ; $6f98: $6d
	dec l                                            ; $6f99: $2d
	db $dd                                           ; $6f9a: $dd
	ld l, d                                          ; $6f9b: $6a
	rst SubAFromDE                                          ; $6f9c: $df
	ld l, b                                          ; $6f9d: $68
	ld l, a                                          ; $6f9e: $6f
	ret nc                                           ; $6f9f: $d0

	rst SubAFromDE                                          ; $6fa0: $df
	db $dd                                           ; $6fa1: $dd
	sub c                                            ; $6fa2: $91
	ld l, e                                          ; $6fa3: $6b
	ld l, d                                          ; $6fa4: $6a
	xor e                                            ; $6fa5: $ab
	xor e                                            ; $6fa6: $ab
	and e                                            ; $6fa7: $a3
	and e                                            ; $6fa8: $a3
	inc hl                                           ; $6fa9: $23
	inc hl                                           ; $6faa: $23
	xor e                                            ; $6fab: $ab
	and e                                            ; $6fac: $a3
	xor e                                            ; $6fad: $ab
	xor e                                            ; $6fae: $ab
	ld a, h                                          ; $6faf: $7c
	ld c, h                                          ; $6fb0: $4c
	ld l, a                                          ; $6fb1: $6f
	cp $97                                           ; $6fb2: $fe $97
	ld a, a                                          ; $6fb4: $7f
	ld c, a                                          ; $6fb5: $4f
	ld a, a                                          ; $6fb6: $7f
	ld c, h                                          ; $6fb7: $4c
	ld a, a                                          ; $6fb8: $7f
	ld b, b                                          ; $6fb9: $40
	rst $38                                          ; $6fba: $ff
	pop bc                                           ; $6fbb: $c1
	ei                                               ; $6fbc: $fb
	rst SubAFromDE                                          ; $6fbd: $df
	ld a, b                                          ; $6fbe: $78
	sub a                                            ; $6fbf: $97
	db $fc                                           ; $6fc0: $fc
	add h                                            ; $6fc1: $84
	db $fc                                           ; $6fc2: $fc
	inc b                                            ; $6fc3: $04
	ld hl, sp+$38                                    ; $6fc4: $f8 $38
	ret nz                                           ; $6fc6: $c0

	ret nz                                           ; $6fc7: $c0

	db $fd                                           ; $6fc8: $fd
	rst SubAFromDE                                          ; $6fc9: $df
	ld bc, $0fdf                                     ; $6fca: $01 $df $0f
	adc a                                            ; $6fcd: $8f
	ld a, a                                          ; $6fce: $7f
	ld a, b                                          ; $6fcf: $78
	rst $38                                          ; $6fd0: $ff
	add b                                            ; $6fd1: $80
	rst $38                                          ; $6fd2: $ff
	add a                                            ; $6fd3: $87
	rst $38                                          ; $6fd4: $ff
	cp $f8                                           ; $6fd5: $fe $f8
	ret z                                            ; $6fd7: $c8

	ld hl, sp-$78                                    ; $6fd8: $f8 $88
	cp $9e                                           ; $6fda: $fe $9e
	cp $02                                           ; $6fdc: $fe $02
	ld a, e                                          ; $6fde: $7b
	cp $99                                           ; $6fdf: $fe $99
	ld e, $fc                                        ; $6fe1: $1e $fc
	inc a                                            ; $6fe3: $3c
	db $fc                                           ; $6fe4: $fc
	inc b                                            ; $6fe5: $04
	rlca                                             ; $6fe6: $07
	ld [hl], e                                       ; $6fe7: $73
	cp $93                                           ; $6fe8: $fe $93
	rrca                                             ; $6fea: $0f
	add hl, bc                                       ; $6feb: $09
	rrca                                             ; $6fec: $0f
	add hl, bc                                       ; $6fed: $09
	rra                                              ; $6fee: $1f
	jr @+$41                                         ; $6fef: $18 $3f

	jr nc, jr_011_7072                               ; $6ff1: $30 $7f

	ld b, e                                          ; $6ff3: $43
	sbc [hl]                                         ; $6ff4: $9e
	sub d                                            ; $6ff5: $92
	ld [hl], a                                       ; $6ff6: $77
	cp $95                                           ; $6ff7: $fe $95
	cp [hl]                                          ; $6ff9: $be
	and [hl]                                         ; $6ffa: $a6
	db $fc                                           ; $6ffb: $fc
	db $e4                                           ; $6ffc: $e4
	db $fc                                           ; $6ffd: $fc
	inc b                                            ; $6ffe: $04
	db $fc                                           ; $6fff: $fc
	inc b                                            ; $7000: $04

jr_011_7001:
	cp $92                                           ; $7001: $fe $92

jr_011_7003:
	ld sp, hl                                        ; $7003: $f9
	rst SubAFromDE                                          ; $7004: $df
	rrca                                             ; $7005: $0f
	sbc l                                            ; $7006: $9d
	rra                                              ; $7007: $1f
	db $10                                           ; $7008: $10
	ld a, e                                          ; $7009: $7b
	cp $9e                                           ; $700a: $fe $9e
	rra                                              ; $700c: $1f
	ld a, e                                          ; $700d: $7b
	ret c                                            ; $700e: $d8

	sub e                                            ; $700f: $93
	add hl, de                                       ; $7010: $19
	rra                                              ; $7011: $1f
	ld de, $f0ff                                     ; $7012: $11 $ff $f0
	rst $38                                          ; $7015: $ff
	nop                                              ; $7016: $00
	rst $38                                          ; $7017: $ff
	inc bc                                           ; $7018: $03
	rst $38                                          ; $7019: $ff
	ld h, a                                          ; $701a: $67
	rst $38                                          ; $701b: $ff
	ld [hl], e                                       ; $701c: $73
	and b                                            ; $701d: $a0
	sbc $e0                                          ; $701e: $de $e0
	sbc h                                            ; $7020: $9c
	jr nz, jr_011_7003                               ; $7021: $20 $e0

	jr nz, jr_011_7001                               ; $7023: $20 $dc

	ret nz                                           ; $7025: $c0

	sbc [hl]                                         ; $7026: $9e
	ld b, b                                          ; $7027: $40
	ld [hl], e                                       ; $7028: $73
	ld h, b                                          ; $7029: $60
	sbc e                                            ; $702a: $9b
	ld l, e                                          ; $702b: $6b
	and d                                            ; $702c: $a2
	xor d                                            ; $702d: $aa
	xor d                                            ; $702e: $aa
	sbc $a2                                          ; $702f: $de $a2
	ld a, e                                          ; $7031: $7b
	db $fc                                           ; $7032: $fc
	ld a, e                                          ; $7033: $7b
	nop                                              ; $7034: $00
	rst SubAFromDE                                          ; $7035: $df
	scf                                              ; $7036: $37
	rst SubAFromDE                                          ; $7037: $df
	dec hl                                           ; $7038: $2b
	rst SubAFromDE                                          ; $7039: $df
	ld a, [hl+]                                      ; $703a: $2a
	sbc e                                            ; $703b: $9b
	ld [hl+], a                                      ; $703c: $22
	ld h, $22                                        ; $703d: $26 $22
	ld h, $dd                                        ; $703f: $26 $dd
	ld a, [hl+]                                      ; $7041: $2a
	rst $38                                          ; $7042: $ff
	rst SubAFromDE                                          ; $7043: $df
	cp b                                             ; $7044: $b8
	rst SubAFromDE                                          ; $7045: $df
	db $ec                                           ; $7046: $ec
	db $dd                                           ; $7047: $dd
	ld d, h                                          ; $7048: $54
	sub e                                            ; $7049: $93
	ld b, h                                          ; $704a: $44
	ld h, h                                          ; $704b: $64
	ld [hl], h                                       ; $704c: $74
	ld [hl], h                                       ; $704d: $74
	ld d, h                                          ; $704e: $54
	ld d, h                                          ; $704f: $54
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	cp e                                             ; $7052: $bb
	cp e                                             ; $7053: $bb
	ld l, [hl]                                       ; $7054: $6e
	ld l, [hl]                                       ; $7055: $6e
	db $dd                                           ; $7056: $dd
	ld d, l                                          ; $7057: $55
	sbc c                                            ; $7058: $99
	ld b, h                                          ; $7059: $44
	ld h, [hl]                                       ; $705a: $66
	ld [hl], a                                       ; $705b: $77
	ld [hl], a                                       ; $705c: $77
	ld d, l                                          ; $705d: $55
	ld d, l                                          ; $705e: $55
	halt                                             ; $705f: $76
	ldh a, [hDisp1_OBP0]                                     ; $7060: $f0 $93
	set 5, e                                         ; $7062: $cb $eb
	adc e                                            ; $7064: $8b
	jp z, $afaf                                      ; $7065: $ca $af $af

	add a                                            ; $7068: $87
	add a                                            ; $7069: $87
	db $ed                                           ; $706a: $ed
	db $ed                                           ; $706b: $ed
	xor c                                            ; $706c: $a9
	xor c                                            ; $706d: $a9
	halt                                             ; $706e: $76
	and b                                            ; $706f: $a0
	rst SubAFromDE                                          ; $7070: $df
	db $dd                                           ; $7071: $dd

jr_011_7072:
	db $dd                                           ; $7072: $dd
	xor d                                            ; $7073: $aa
	sbc e                                            ; $7074: $9b
	adc b                                            ; $7075: $88
	call z, $eeee                                    ; $7076: $cc $ee $ee
	halt                                             ; $7079: $76
	or b                                             ; $707a: $b0
	rst SubAFromDE                                          ; $707b: $df
	inc sp                                           ; $707c: $33
	rst SubAFromDE                                          ; $707d: $df
	ld c, [hl]                                       ; $707e: $4e
	sub c                                            ; $707f: $91
	or [hl]                                          ; $7080: $b6
	or h                                             ; $7081: $b4
	add [hl]                                         ; $7082: $86
	and [hl]                                         ; $7083: $a6
	sub [hl]                                         ; $7084: $96
	sub [hl]                                         ; $7085: $96
	add [hl]                                         ; $7086: $86
	and [hl]                                         ; $7087: $a6
	or [hl]                                          ; $7088: $b6
	or [hl]                                          ; $7089: $b6
	rst $38                                          ; $708a: $ff
	nop                                              ; $708b: $00
	ld hl, sp+$00                                    ; $708c: $f8 $00
	ld [hl], e                                       ; $708e: $73
	ld a, e                                          ; $708f: $7b
	ld a, [$687b]                                    ; $7090: $fa $7b $68
	ld a, e                                          ; $7093: $7b
	cp $f7                                           ; $7094: $fe $f7
	sbc e                                            ; $7096: $9b
	ld d, l                                          ; $7097: $55
	xor d                                            ; $7098: $aa
	cp a                                             ; $7099: $bf
	ld b, b                                          ; $709a: $40
	ld c, a                                          ; $709b: $4f
	ldh a, [$9b]                                     ; $709c: $f0 $9b
	xor d                                            ; $709e: $aa
	ld d, l                                          ; $709f: $55
	ld d, a                                          ; $70a0: $57
	xor b                                            ; $70a1: $a8
	ld c, a                                          ; $70a2: $4f
	ldh a, [$7f]                                     ; $70a3: $f0 $7f
	db $fc                                           ; $70a5: $fc
	rst FarCall                                          ; $70a6: $f7
	sbc e                                            ; $70a7: $9b
	ld bc, $2afe                                     ; $70a8: $01 $fe $2a
	push de                                          ; $70ab: $d5
	ld d, a                                          ; $70ac: $57
	ldh a, [rPCM34]                                  ; $70ad: $f0 $77
	or c                                             ; $70af: $b1
	sbc l                                            ; $70b0: $9d
	dec b                                            ; $70b1: $05
	ld a, [$9f1b]                                    ; $70b2: $fa $1b $9f
	sbc [hl]                                         ; $70b5: $9e
	ccf                                              ; $70b6: $3f
	ld c, e                                          ; $70b7: $4b
	ldh a, [$7b]                                     ; $70b8: $f0 $7b
	cp l                                             ; $70ba: $bd
	ld a, [hl]                                       ; $70bb: $7e
	db $d3                                           ; $70bc: $d3
	rst FarCall                                          ; $70bd: $f7
	rst SubAFromDE                                          ; $70be: $df
	add b                                            ; $70bf: $80
	db $dd                                           ; $70c0: $dd
	ld b, b                                          ; $70c1: $40
	rst SubAFromDE                                          ; $70c2: $df
	add b                                            ; $70c3: $80
	ld sp, hl                                        ; $70c4: $f9
	adc a                                            ; $70c5: $8f
	ld sp, hl                                        ; $70c6: $f9
	ret                                              ; $70c7: $c9


	ld [hl-], a                                      ; $70c8: $32
	ld [hl-], a                                      ; $70c9: $32
	inc b                                            ; $70ca: $04
	inc b                                            ; $70cb: $04
	jr jr_011_70e6                                   ; $70cc: $18 $18

	rst $38                                          ; $70ce: $ff
	pop hl                                           ; $70cf: $e1
	cp $02                                           ; $70d0: $fe $02
	inc c                                            ; $70d2: $0c
	db $fc                                           ; $70d3: $fc
	ldh a, [$f0]                                     ; $70d4: $f0 $f0
	halt                                             ; $70d6: $76
	jp nz, $10df                                     ; $70d7: $c2 $df $10

	rst SubAFromDE                                          ; $70da: $df
	sub b                                            ; $70db: $90
	rst SubAFromDE                                          ; $70dc: $df
	db $10                                           ; $70dd: $10
	adc [hl]                                         ; $70de: $8e
	pop af                                           ; $70df: $f1
	sub c                                            ; $70e0: $91
	ld de, $e0f1                                     ; $70e1: $11 $f1 $e0
	ldh [$80], a                                     ; $70e4: $e0 $80

jr_011_70e6:
	add b                                            ; $70e6: $80
	ld b, e                                          ; $70e7: $43
	ld b, e                                          ; $70e8: $43
	ld b, h                                          ; $70e9: $44
	ld b, h                                          ; $70ea: $44
	add e                                            ; $70eb: $83
	add e                                            ; $70ec: $83
	ld [bc], a                                       ; $70ed: $02
	ld [bc], a                                       ; $70ee: $02
	rlca                                             ; $70ef: $07
	ld a, d                                          ; $70f0: $7a
	ld h, a                                          ; $70f1: $67
	rst SubAFromDE                                          ; $70f2: $df
	inc bc                                           ; $70f3: $03
	add b                                            ; $70f4: $80
	ld sp, hl                                        ; $70f5: $f9
	adc c                                            ; $70f6: $89
	ld a, [$24fa]                                    ; $70f7: $fa $fa $24
	inc h                                            ; $70fa: $24
	ret z                                            ; $70fb: $c8

	ret z                                            ; $70fc: $c8

	ld a, a                                          ; $70fd: $7f
	ld [hl], c                                       ; $70fe: $71
	cp $82                                           ; $70ff: $fe $82
	adc h                                            ; $7101: $8c
	db $fc                                           ; $7102: $fc
	ld [hl], b                                       ; $7103: $70
	ld [hl], b                                       ; $7104: $70
	ld bc, $0301                                     ; $7105: $01 $01 $03
	inc bc                                           ; $7108: $03
	rlca                                             ; $7109: $07
	ld b, $0f                                        ; $710a: $06 $0f
	inc c                                            ; $710c: $0c
	rrca                                             ; $710d: $0f
	ld [$111f], sp                                   ; $710e: $08 $1f $11
	rra                                              ; $7111: $1f
	inc de                                           ; $7112: $13
	ld a, $94                                        ; $7113: $3e $94
	ld [hl+], a                                      ; $7115: $22
	rst $38                                          ; $7116: $ff
	add a                                            ; $7117: $87
	db $fc                                           ; $7118: $fc
	inc c                                            ; $7119: $0c
	ld hl, sp+$38                                    ; $711a: $f8 $38
	ldh [$60], a                                     ; $711c: $e0 $60
	ret nz                                           ; $711e: $c0

	ret nz                                           ; $711f: $c0

	ld [hl], a                                       ; $7120: $77
	sbc h                                            ; $7121: $9c
	rst SubAFromDE                                          ; $7122: $df
	inc bc                                           ; $7123: $03
	rst SubAFromDE                                          ; $7124: $df
	ld bc, $07de                                     ; $7125: $01 $de $07
	ld a, d                                          ; $7128: $7a
	ld l, $7b                                        ; $7129: $2e $7b
	jp c, $2a7e                                      ; $712b: $da $7e $2a

	sbc d                                            ; $712e: $9a
	ld [$919f], sp                                   ; $712f: $08 $9f $91
	rst $38                                          ; $7132: $ff
	ldh [$7b], a                                     ; $7133: $e0 $7b
	ld h, c                                          ; $7135: $61
	sbc d                                            ; $7136: $9a
	inc e                                            ; $7137: $1c
	rst $38                                          ; $7138: $ff
	ld hl, sp-$01                                    ; $7139: $f8 $ff
	ld bc, $fe7b                                     ; $713b: $01 $7b $fe
	sub d                                            ; $713e: $92
	di                                               ; $713f: $f3
	adc [hl]                                         ; $7140: $8e
	rst $38                                          ; $7141: $ff
	db $fc                                           ; $7142: $fc
	inc c                                            ; $7143: $0c
	ld sp, hl                                        ; $7144: $f9
	ld a, c                                          ; $7145: $79
	jp $87c2                                         ; $7146: $c3 $c2 $87


	add h                                            ; $7149: $84
	adc a                                            ; $714a: $8f
	adc b                                            ; $714b: $88
	ld a, d                                          ; $714c: $7a
	ld [hl], $9c                                     ; $714d: $36 $9c
	di                                               ; $714f: $f3
	rra                                              ; $7150: $1f
	di                                               ; $7151: $f3
	ld a, c                                          ; $7152: $79
	db $ec                                           ; $7153: $ec
	add b                                            ; $7154: $80
	rlca                                             ; $7155: $07
	rst $38                                          ; $7156: $ff
	ld c, $ff                                        ; $7157: $0e $ff
	ld c, h                                          ; $7159: $4c
	rst $38                                          ; $715a: $ff
	ret z                                            ; $715b: $c8

	rst $38                                          ; $715c: $ff
	sub c                                            ; $715d: $91
	cp $83                                           ; $715e: $fe $83
	db $fc                                           ; $7160: $fc
	rlca                                             ; $7161: $07
	cp $12                                           ; $7162: $fe $12
	cp $32                                           ; $7164: $fe $32
	cp $32                                           ; $7166: $fe $32
	sbc $52                                          ; $7168: $de $52
	cp [hl]                                          ; $716a: $be
	and [hl]                                         ; $716b: $a6
	inc a                                            ; $716c: $3c
	inc h                                            ; $716d: $24
	ld a, h                                          ; $716e: $7c
	call nz, $8ff9                                   ; $716f: $c4 $f9 $8f
	ccf                                              ; $7172: $3f
	inc a                                            ; $7173: $3c
	ld a, e                                          ; $7174: $7b
	cp [hl]                                          ; $7175: $be
	sbc d                                            ; $7176: $9a
	add c                                            ; $7177: $81
	rst $38                                          ; $7178: $ff
	sbc a                                            ; $7179: $9f
	ld a, a                                          ; $717a: $7f
	ld [hl], b                                       ; $717b: $70
	ld a, c                                          ; $717c: $79
	and d                                            ; $717d: $a2
	sbc h                                            ; $717e: $9c
	adc a                                            ; $717f: $8f
	ld hl, sp+$18                                    ; $7180: $f8 $18
	ld a, e                                          ; $7182: $7b
	or d                                             ; $7183: $b2
	sub [hl]                                         ; $7184: $96
	rrca                                             ; $7185: $0f
	ld hl, sp-$78                                    ; $7186: $f8 $88
	ld hl, sp+$18                                    ; $7188: $f8 $18
	ldh a, [rAUD1SWEEP]                              ; $718a: $f0 $10
	ldh a, [$30]                                     ; $718c: $f0 $30

Call_011_718e:
	ld a, d                                          ; $718e: $7a
	ld a, [bc]                                       ; $718f: $0a
	sbc [hl]                                         ; $7190: $9e
	ldh [$6f], a                                     ; $7191: $e0 $6f
	adc b                                            ; $7193: $88
	rst FarCall                                          ; $7194: $f7
	ld a, a                                          ; $7195: $7f
	ld [$11df], a                                    ; $7196: $ea $df $11
	rst SubAFromDE                                          ; $7199: $df
	sub d                                            ; $719a: $92
	rst SubAFromDE                                          ; $719b: $df
	ld de, $f079                                     ; $719c: $11 $79 $f0
	ld [hl], e                                       ; $719f: $73
	ld a, [bc]                                       ; $71a0: $0a
	sbc c                                            ; $71a1: $99
	cp a                                             ; $71a2: $bf
	and b                                            ; $71a3: $a0
	inc hl                                           ; $71a4: $23
	inc hl                                           ; $71a5: $23
	inc e                                            ; $71a6: $1c
	inc e                                            ; $71a7: $1c
	ld a, e                                          ; $71a8: $7b
	ld l, d                                          ; $71a9: $6a
	sub a                                            ; $71aa: $97
	ld b, $1f                                        ; $71ab: $06 $1f
	jr jr_011_71c0                                   ; $71ad: $18 $11

	rra                                              ; $71af: $1f
	ld c, $0e                                        ; $71b0: $0e $0e
	rst $38                                          ; $71b2: $ff
	ld a, e                                          ; $71b3: $7b
	ld e, h                                          ; $71b4: $5c
	rst SubAFromDE                                          ; $71b5: $df
	jp nz, $82df                                     ; $71b6: $c2 $df $82

	ld a, e                                          ; $71b9: $7b
	sbc d                                            ; $71ba: $9a
	sbc c                                            ; $71bb: $99
	ld [hl], d                                       ; $71bc: $72
	jp nc, $8cde                                     ; $71bd: $d2 $de $8c

jr_011_71c0:
	adc h                                            ; $71c0: $8c
	inc bc                                           ; $71c1: $03
	sbc $02                                          ; $71c2: $de $02
	rst SubAFromDE                                          ; $71c4: $df
	ld bc, $5c75                                     ; $71c5: $01 $75 $5c
	ld a, a                                          ; $71c8: $7f
	or $77                                           ; $71c9: $f6 $77
	ld b, d                                          ; $71cb: $42
	ld a, a                                          ; $71cc: $7f
	ld [hl], $94                                     ; $71cd: $36 $94
	jr c, jr_011_71e9                                ; $71cf: $38 $18

	inc c                                            ; $71d1: $0c
	inc c                                            ; $71d2: $0c
	ld h, h                                          ; $71d3: $64
	ld h, h                                          ; $71d4: $64
	call c, $c05c                                    ; $71d5: $dc $5c $c0
	ld b, b                                          ; $71d8: $40
	ld b, b                                          ; $71d9: $40
	ld a, e                                          ; $71da: $7b
	and h                                            ; $71db: $a4
	ld a, a                                          ; $71dc: $7f
	ld [$e2df], a                                    ; $71dd: $ea $df $e2
	rst SubAFromDE                                          ; $71e0: $df
	ld [de], a                                       ; $71e1: $12
	rst SubAFromDE                                          ; $71e2: $df
	ldh [c], a                                       ; $71e3: $e2
	ld a, e                                          ; $71e4: $7b
	ldh [c], a                                       ; $71e5: $e2
	rst SubAFromDE                                          ; $71e6: $df
	ld [bc], a                                       ; $71e7: $02
	ld a, e                                          ; $71e8: $7b

jr_011_71e9:
	ldh [rPCM34], a                                  ; $71e9: $e0 $77
	inc e                                            ; $71eb: $1c
	rst SubAFromDE                                          ; $71ec: $df
	inc a                                            ; $71ed: $3c
	rst SubAFromDE                                          ; $71ee: $df
	ld b, e                                          ; $71ef: $43
	rst SubAFromDE                                          ; $71f0: $df
	inc a                                            ; $71f1: $3c
	ld l, d                                          ; $71f2: $6a
	ld [hl], c                                       ; $71f3: $71
	sub b                                            ; $71f4: $90
	ld sp, $6969                                     ; $71f5: $31 $69 $69
	sub c                                            ; $71f8: $91
	sub c                                            ; $71f9: $91
	jp nz, Jump_011_7cc2                             ; $71fa: $c2 $c2 $7c

	ld b, h                                          ; $71fd: $44
	ld hl, sp-$78                                    ; $71fe: $f8 $88
	db $10                                           ; $7200: $10
	ldh a, [$e0]                                     ; $7201: $f0 $e0
	ldh [$f2], a                                     ; $7203: $e0 $f2
	sbc l                                            ; $7205: $9d
	ldh [$e3], a                                     ; $7206: $e0 $e3
	sbc $22                                          ; $7208: $de $22
	rst SubAFromDE                                          ; $720a: $df
	ld b, e                                          ; $720b: $43
	rst SubAFromDE                                          ; $720c: $df
	add b                                            ; $720d: $80
	ld a, a                                          ; $720e: $7f
	xor b                                            ; $720f: $a8
	sub c                                            ; $7210: $91
	pop af                                           ; $7211: $f1
	ld de, $f191                                     ; $7212: $11 $91 $f1
	ld h, b                                          ; $7215: $60
	ld h, b                                          ; $7216: $60
	ld a, a                                          ; $7217: $7f
	ld b, [hl]                                       ; $7218: $46
	add hl, sp                                       ; $7219: $39
	add hl, sp                                       ; $721a: $39
	ld [bc], a                                       ; $721b: $02
	ld [bc], a                                       ; $721c: $02
	inc c                                            ; $721d: $0c
	inc c                                            ; $721e: $0c
	ld [hl], l                                       ; $721f: $75
	inc d                                            ; $7220: $14
	sub a                                            ; $7221: $97
	ld b, h                                          ; $7222: $44
	ld a, h                                          ; $7223: $7c
	jr c, @+$3a                                      ; $7224: $38 $38

	ret nz                                           ; $7226: $c0

	ld b, b                                          ; $7227: $40
	ld e, b                                          ; $7228: $58
	ld e, b                                          ; $7229: $58
	db $dd                                           ; $722a: $dd
	and h                                            ; $722b: $a4
	sub a                                            ; $722c: $97
	cp $f2                                           ; $722d: $fe $f2
	cp $02                                           ; $722f: $fe $02
	ld [hl], d                                       ; $7231: $72
	cp $cc                                           ; $7232: $fe $cc
	call z, $906f                                    ; $7234: $cc $6f $90
	rst SubAFromDE                                          ; $7237: $df
	db $e4                                           ; $7238: $e4
	halt                                             ; $7239: $76
	cp h                                             ; $723a: $bc
	halt                                             ; $723b: $76
	add b                                            ; $723c: $80
	rst $38                                          ; $723d: $ff
	rst SubAFromDE                                          ; $723e: $df
	add e                                            ; $723f: $83
	ld d, e                                          ; $7240: $53
	sub b                                            ; $7241: $90
	ld a, [hl]                                       ; $7242: $7e
	db $10                                           ; $7243: $10
	sub h                                            ; $7244: $94
	nop                                              ; $7245: $00
	ld [hl], e                                       ; $7246: $73
	ld [hl], e                                       ; $7247: $73
	jp nc, $fed2                                     ; $7248: $d2 $d2 $fe

	ld [hl+], a                                      ; $724b: $22
	db $fc                                           ; $724c: $fc
	inc b                                            ; $724d: $04
	adc b                                            ; $724e: $88
	ld hl, sp+$76                                    ; $724f: $f8 $76
	ld [hl], b                                       ; $7251: $70
	db $dd                                           ; $7252: $dd
	ld [bc], a                                       ; $7253: $02
	ld [hl], a                                       ; $7254: $77
	ld b, [hl]                                       ; $7255: $46
	ld [hl], a                                       ; $7256: $77
	ld h, h                                          ; $7257: $64

jr_011_7258:
	ld c, e                                          ; $7258: $4b
	add e                                            ; $7259: $83
	ld a, [hl]                                       ; $725a: $7e
	ld h, $7a                                        ; $725b: $26 $7a
	jr nz, jr_011_7258                               ; $725d: $20 $f9

	rst SubAFromDE                                          ; $725f: $df
	jr nc, jr_011_72de                               ; $7260: $30 $7c

	add l                                            ; $7262: $85
	sbc l                                            ; $7263: $9d
	ld c, c                                          ; $7264: $49
	ld sp, hl                                        ; $7265: $f9
	push af                                          ; $7266: $f5
	rst SubAFromDE                                          ; $7267: $df
	inc bc                                           ; $7268: $03
	sbc l                                            ; $7269: $9d
	inc e                                            ; $726a: $1c
	rra                                              ; $726b: $1f
	rst FarCall                                          ; $726c: $f7
	rst SubAFromDE                                          ; $726d: $df
	inc c                                            ; $726e: $0c
	sbc h                                            ; $726f: $9c
	ld [de], a                                       ; $7270: $12
	ld e, $f3                                        ; $7271: $1e $f3
	ld e, c                                          ; $7273: $59
	or [hl]                                          ; $7274: $b6
	ld a, c                                          ; $7275: $79
	add $7f                                          ; $7276: $c6 $7f
	ld h, e                                          ; $7278: $63
	ld d, l                                          ; $7279: $55
	dec h                                            ; $727a: $25
	ld [hl], l                                       ; $727b: $75
	and [hl]                                         ; $727c: $a6
	sbc [hl]                                         ; $727d: $9e
	rlca                                             ; $727e: $07
	db $dd                                           ; $727f: $dd
	ld h, $96                                        ; $7280: $26 $96
	daa                                              ; $7282: $27
	inc hl                                           ; $7283: $23
	inc sp                                           ; $7284: $33
	jr nz, jr_011_72b7                               ; $7285: $20 $30

	jr nc, jr_011_72a8                               ; $7287: $30 $1f

	ld a, b                                          ; $7289: $78
	rrca                                             ; $728a: $0f
	ld a, e                                          ; $728b: $7b
	jp nc, $0e93                                     ; $728c: $d2 $93 $0e

	inc c                                            ; $728f: $0c
	jr c, jr_011_72ca                                ; $7290: $38 $38

	pop hl                                           ; $7292: $e1
	ret nz                                           ; $7293: $c0

	rlca                                             ; $7294: $07

jr_011_7295:
	rlca                                             ; $7295: $07
	inc a                                            ; $7296: $3c
	rra                                              ; $7297: $1f
	ldh a, [$f0]                                     ; $7298: $f0 $f0
	halt                                             ; $729a: $76
	sub b                                            ; $729b: $90
	sub h                                            ; $729c: $94
	db $d3                                           ; $729d: $d3
	ld [hl], e                                       ; $729e: $73
	jp nc, $9373                                     ; $729f: $d2 $73 $93

	di                                               ; $72a2: $f3
	jr jr_011_7295                                   ; $72a3: $18 $f0

	inc e                                            ; $72a5: $1c
	sbc b                                            ; $72a6: $98
	rrca                                             ; $72a7: $0f

jr_011_72a8:
	ld [hl], c                                       ; $72a8: $71
	ld a, d                                          ; $72a9: $7a
	sub h                                            ; $72aa: $94
	jr nc, @+$01                                     ; $72ab: $30 $ff

	ld hl, sp-$31                                    ; $72ad: $f8 $cf
	ret c                                            ; $72af: $d8

	adc a                                            ; $72b0: $8f
	jr jr_011_72cb                                   ; $72b1: $18 $18

	ldh a, [rSVBK]                                   ; $72b3: $f0 $70
	ret nz                                           ; $72b5: $c0

	ld a, e                                          ; $72b6: $7b

jr_011_72b7:
	or h                                             ; $72b7: $b4
	rst SubAFromDE                                          ; $72b8: $df
	rrca                                             ; $72b9: $0f
	sub a                                            ; $72ba: $97
	daa                                              ; $72bb: $27
	rst SubAFromBC                                          ; $72bc: $e7
	ld h, $e6                                        ; $72bd: $26 $e6
	jr nz, @-$1e                                     ; $72bf: $20 $e0

	add hl, de                                       ; $72c1: $19
	db $10                                           ; $72c2: $10
	ld l, a                                          ; $72c3: $6f
	ldh [c], a                                       ; $72c4: $e2
	rst SubAFromDE                                          ; $72c5: $df
	add b                                            ; $72c6: $80
	sub e                                            ; $72c7: $93
	add hl, de                                       ; $72c8: $19
	rrca                                             ; $72c9: $0f

jr_011_72ca:
	scf                                              ; $72ca: $37

jr_011_72cb:
	ld e, $6c                                        ; $72cb: $1e $6c
	inc a                                            ; $72cd: $3c
	ret c                                            ; $72ce: $d8

	ret c                                            ; $72cf: $d8

	rra                                              ; $72d0: $1f
	ld de, $0e0e                                     ; $72d1: $11 $0e $0e
	db $fd                                           ; $72d4: $fd
	sub a                                            ; $72d5: $97
	sbc c                                            ; $72d6: $99
	rra                                              ; $72d7: $1f
	ld sp, $613f                                     ; $72d8: $31 $3f $61
	ld a, a                                          ; $72db: $7f
	pop bc                                           ; $72dc: $c1
	rst JumpTable                                          ; $72dd: $c7

jr_011_72de:
	ld h, [hl]                                       ; $72de: $66
	ld a, [hl+]                                      ; $72df: $2a
	sub e                                            ; $72e0: $93
	scf                                              ; $72e1: $37
	ccf                                              ; $72e2: $3f
	cpl                                              ; $72e3: $2f
	inc a                                            ; $72e4: $3c
	jr c, jr_011_731f                                ; $72e5: $38 $38

	add e                                            ; $72e7: $83
	ld bc, $83c7                                     ; $72e8: $01 $c7 $83
	ld a, h                                          ; $72eb: $7c
	ld a, h                                          ; $72ec: $7c
	db $fc                                           ; $72ed: $fc
	sbc h                                            ; $72ee: $9c
	db $fc                                           ; $72ef: $fc
	add b                                            ; $72f0: $80
	rst $38                                          ; $72f1: $ff
	ld [hl], a                                       ; $72f2: $77
	cp $79                                           ; $72f3: $fe $79
	inc c                                            ; $72f5: $0c
	ld a, e                                          ; $72f6: $7b
	db $10                                           ; $72f7: $10
	rst SubAFromDE                                          ; $72f8: $df
	rra                                              ; $72f9: $1f
	halt                                             ; $72fa: $76
	dec c                                            ; $72fb: $0d
	ld l, b                                          ; $72fc: $68
	db $ec                                           ; $72fd: $ec
	ld a, a                                          ; $72fe: $7f
	cp $9e                                           ; $72ff: $fe $9e
	rlca                                             ; $7301: $07
	ld h, l                                          ; $7302: $65
	ei                                               ; $7303: $fb
	ld h, a                                          ; $7304: $67
	xor $6f                                          ; $7305: $ee $6f
	sbc d                                            ; $7307: $9a
	cp $9e                                           ; $7308: $fe $9e
	cp $6f                                           ; $730a: $fe $6f
	ldh a, [$7b]                                     ; $730c: $f0 $7b
	ret z                                            ; $730e: $c8

	ld c, h                                          ; $730f: $4c
	cp b                                             ; $7310: $b8
	ld e, e                                          ; $7311: $5b
	db $10                                           ; $7312: $10
	ld a, d                                          ; $7313: $7a
	or [hl]                                          ; $7314: $b6
	ld a, d                                          ; $7315: $7a
	dec de                                           ; $7316: $1b
	ld d, b                                          ; $7317: $50
	xor d                                            ; $7318: $aa
	ld a, c                                          ; $7319: $79
	ld c, l                                          ; $731a: $4d
	db $fc                                           ; $731b: $fc
	ld a, a                                          ; $731c: $7f
	xor b                                            ; $731d: $a8
	ld l, a                                          ; $731e: $6f

jr_011_731f:
	call nc, $f89e                                   ; $731f: $d4 $9e $f8
	ld [hl], h                                       ; $7322: $74
	ret nc                                           ; $7323: $d0

	ld a, b                                          ; $7324: $78
	and d                                            ; $7325: $a2
	ld [hl], a                                       ; $7326: $77
	db $f4                                           ; $7327: $f4
	sbc l                                            ; $7328: $9d
	db $fc                                           ; $7329: $fc
	nop                                              ; $732a: $00
	ld a, e                                          ; $732b: $7b
	jr nc, @+$7d                                     ; $732c: $30 $7b

	ldh a, [$9e]                                     ; $732e: $f0 $9e
	ld a, a                                          ; $7330: $7f
	ld a, e                                          ; $7331: $7b
	or $7f                                           ; $7332: $f6 $7f
	ld a, [$7c5d]                                    ; $7334: $fa $5d $7c
	ld d, c                                          ; $7337: $51
	ld [hl], d                                       ; $7338: $72
	push af                                          ; $7339: $f5
	rst SubAFromDE                                          ; $733a: $df
	ret nz                                           ; $733b: $c0

	sbc e                                            ; $733c: $9b
	inc a                                            ; $733d: $3c
	db $fc                                           ; $733e: $fc
	ld [bc], a                                       ; $733f: $02
	cp $f5                                           ; $7340: $fe $f5
	rst SubAFromDE                                          ; $7342: $df
	pop bc                                           ; $7343: $c1
	sbc l                                            ; $7344: $9d
	ld hl, $f5e1                                     ; $7345: $21 $e1 $f5
	rst SubAFromDE                                          ; $7348: $df
	rrca                                             ; $7349: $0f
	sbc [hl]                                         ; $734a: $9e
	jr nc, jr_011_73c7                               ; $734b: $30 $7a

	ld [hl+], a                                      ; $734d: $22
	ld e, a                                          ; $734e: $5f
	ret nc                                           ; $734f: $d0

	ld a, [hl]                                       ; $7350: $7e
	ret c                                            ; $7351: $d8

	ld a, a                                          ; $7352: $7f
	cp $f5                                           ; $7353: $fe $f5
	db $dd                                           ; $7355: $dd
	add b                                            ; $7356: $80
	rst FarCall                                          ; $7357: $f7
	rst SubAFromDE                                          ; $7358: $df
	push bc                                          ; $7359: $c5
	sbc e                                            ; $735a: $9b
	ld a, [hl+]                                      ; $735b: $2a
	rst AddAOntoHL                                          ; $735c: $ef
	ld a, [hl+]                                      ; $735d: $2a
	rst AddAOntoHL                                          ; $735e: $ef
	ld d, d                                          ; $735f: $52
	ld h, c                                          ; $7360: $61
	ld [hl], l                                       ; $7361: $75

jr_011_7362:
	db $fc                                           ; $7362: $fc
	ld a, a                                          ; $7363: $7f
	adc $4e                                          ; $7364: $ce $4e
	ld c, h                                          ; $7366: $4c
	ld d, e                                          ; $7367: $53
	inc e                                            ; $7368: $1c
	ld [hl], d                                       ; $7369: $72
	inc a                                            ; $736a: $3c
	rst SubAFromBC                                          ; $736b: $e7
	ld a, a                                          ; $736c: $7f
	add $9e                                          ; $736d: $c6 $9e
	ldh [$15], a                                     ; $736f: $e0 $15
	ld b, $97                                        ; $7371: $06 $97
	ld hl, $45e7                                     ; $7373: $21 $e7 $45
	rst GetHLinHL                                          ; $7376: $cf
	sbc c                                            ; $7377: $99
	adc e                                            ; $7378: $8b
	ld bc, $fc03                                     ; $7379: $01 $03 $fc
	sub l                                            ; $737c: $95
	rst $38                                          ; $737d: $ff
	nop                                              ; $737e: $00
	rst $38                                          ; $737f: $ff
	jr nz, jr_011_7362                               ; $7380: $20 $e0

	ld b, b                                          ; $7382: $40
	pop bc                                           ; $7383: $c1
	add d                                            ; $7384: $82
	add c                                            ; $7385: $81
	dec b                                            ; $7386: $05
	ld h, e                                          ; $7387: $63
	ldh a, [$97]                                     ; $7388: $f0 $97
	ld d, l                                          ; $738a: $55
	ret z                                            ; $738b: $c8

	add b                                            ; $738c: $80
	sbc a                                            ; $738d: $9f
	rlca                                             ; $738e: $07
	rra                                              ; $738f: $1f
	jr jr_011_73aa                                   ; $7390: $18 $18

	ld h, a                                          ; $7392: $67
	ldh a, [$fd]                                     ; $7393: $f0 $fd
	rst SubAFromDE                                          ; $7395: $df
	ld e, $df                                        ; $7396: $1e $df
	ccf                                              ; $7398: $3f
	sub a                                            ; $7399: $97
	ld [hl], e                                       ; $739a: $73
	ld a, a                                          ; $739b: $7f
	ld h, c                                          ; $739c: $61
	ld a, a                                          ; $739d: $7f
	ld h, b                                          ; $739e: $60
	ld a, a                                          ; $739f: $7f
	jr nc, jr_011_73e1                               ; $73a0: $30 $3f

	ld sp, hl                                        ; $73a2: $f9
	rst SubAFromDE                                          ; $73a3: $df
	add b                                            ; $73a4: $80
	rst SubAFromDE                                          ; $73a5: $df
	ret nz                                           ; $73a6: $c0

	rst SubAFromDE                                          ; $73a7: $df
	ldh [$99], a                                     ; $73a8: $e0 $99

jr_011_73aa:
	ld [hl], b                                       ; $73aa: $70
	ldh a, [rIF]                                     ; $73ab: $f0 $0f
	rrca                                             ; $73ad: $0f
	jr jr_011_73cf                                   ; $73ae: $18 $1f

	ld [hl], a                                       ; $73b0: $77
	cp $7f                                           ; $73b1: $fe $7f
	and $9e                                          ; $73b3: $e6 $9e
	ld sp, $fe7b                                     ; $73b5: $31 $7b $fe
	ld a, a                                          ; $73b8: $7f
	call c, $c7df                                    ; $73b9: $dc $df $c7
	rst SubAFromDE                                          ; $73bc: $df
	rst GetHLinHL                                          ; $73bd: $cf
	sbc [hl]                                         ; $73be: $9e
	call z, $fe7b                                    ; $73bf: $cc $7b $fe
	sub a                                            ; $73c2: $97
	adc $cf                                          ; $73c3: $ce $cf
	add a                                            ; $73c5: $87
	add a                                            ; $73c6: $87

jr_011_73c7:
	add c                                            ; $73c7: $81
	add c                                            ; $73c8: $81
	add e                                            ; $73c9: $83
	add e                                            ; $73ca: $83
	db $dd                                           ; $73cb: $dd
	rst $38                                          ; $73cc: $ff
	ld [hl], e                                       ; $73cd: $73
	cp b                                             ; $73ce: $b8

jr_011_73cf:
	sbc l                                            ; $73cf: $9d
	rst $38                                          ; $73d0: $ff
	add a                                            ; $73d1: $87
	ld a, e                                          ; $73d2: $7b
	cp $9d                                           ; $73d3: $fe $9d
	inc c                                            ; $73d5: $0c
	db $fc                                           ; $73d6: $fc
	ld e, a                                          ; $73d7: $5f
	ldh a, [$73]                                     ; $73d8: $f0 $73
	or $99                                           ; $73da: $f6 $99
	nop                                              ; $73dc: $00
	db $fc                                           ; $73dd: $fc
	db $fc                                           ; $73de: $fc
	cp $fe                                           ; $73df: $fe $fe

jr_011_73e1:
	ld b, $7b                                        ; $73e1: $06 $7b
	cp $96                                           ; $73e3: $fe $96
	ld c, $fe                                        ; $73e5: $0e $fe
	db $fc                                           ; $73e7: $fc
	db $fc                                           ; $73e8: $fc
	ldh a, [$f0]                                     ; $73e9: $f0 $f0
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	ccf                                              ; $73ed: $3f
	ld a, e                                          ; $73ee: $7b
	cp d                                             ; $73ef: $ba
	sub e                                            ; $73f0: $93
	ld hl, $633f                                     ; $73f1: $21 $3f $63
	ld a, a                                          ; $73f4: $7f
	ld h, e                                          ; $73f5: $63
	ld a, a                                          ; $73f6: $7f
	ld b, e                                          ; $73f7: $43
	ld a, a                                          ; $73f8: $7f
	add $fe                                          ; $73f9: $c6 $fe
	add $fe                                          ; $73fb: $c6 $fe
	db $db                                           ; $73fd: $db
	add b                                            ; $73fe: $80
	rst FarCall                                          ; $73ff: $f7
	rst SubAFromDE                                          ; $7400: $df
	rra                                              ; $7401: $1f
	ld a, a                                          ; $7402: $7f
	sub h                                            ; $7403: $94
	sbc l                                            ; $7404: $9d
	jr c, jr_011_7446                                ; $7405: $38 $3f

	ld [hl], a                                       ; $7407: $77
	sub d                                            ; $7408: $92
	sbc [hl]                                         ; $7409: $9e
	ld [hl], c                                       ; $740a: $71
	ld a, e                                          ; $740b: $7b
	call c, $e398                                    ; $740c: $dc $98 $e3
	rst $38                                          ; $740f: $ff
	rst GetHLinHL                                          ; $7410: $cf
	rst GetHLinHL                                          ; $7411: $cf
	rst SubAFromDE                                          ; $7412: $df
	rst SubAFromDE                                          ; $7413: $df
	ret c                                            ; $7414: $d8

	ld a, e                                          ; $7415: $7b
	cp $9e                                           ; $7416: $fe $9e
	sbc b                                            ; $7418: $98
	sbc $9f                                          ; $7419: $de $9f
	rst SubAFromDE                                          ; $741b: $df
	rrca                                             ; $741c: $0f
	rst $38                                          ; $741d: $ff
	sub a                                            ; $741e: $97
	adc d                                            ; $741f: $8a
	add a                                            ; $7420: $87
	dec d                                            ; $7421: $15
	dec c                                            ; $7422: $0d
	jr z, @+$1a                                      ; $7423: $28 $18

	db $10                                           ; $7425: $10
	jr nc, jr_011_748f                               ; $7426: $30 $67

	ld b, b                                          ; $7428: $40
	ld e, a                                          ; $7429: $5f
	sub b                                            ; $742a: $90
	ld a, a                                          ; $742b: $7f
	add l                                            ; $742c: $85
	sub h                                            ; $742d: $94
	ld hl, sp-$01                                    ; $742e: $f8 $ff
	jr jr_011_7451                                   ; $7430: $18 $1f

	jp $e3c3                                         ; $7432: $c3 $c3 $e3


	db $e3                                           ; $7435: $e3
	ld [hl], e                                       ; $7436: $73
	di                                               ; $7437: $f3
	inc sp                                           ; $7438: $33
	ld a, e                                          ; $7439: $7b
	cp $93                                           ; $743a: $fe $93
	ld [hl], $f7                                     ; $743c: $36 $f7
	ld h, [hl]                                       ; $743e: $66
	rst SubAFromBC                                          ; $743f: $e7
	ld h, [hl]                                       ; $7440: $66
	rst SubAFromBC                                          ; $7441: $e7
	ld sp, hl                                        ; $7442: $f9
	ld sp, hl                                        ; $7443: $f9
	add hl, de                                       ; $7444: $19
	ld sp, hl                                        ; $7445: $f9

jr_011_7446:
	dec de                                           ; $7446: $1b
	ei                                               ; $7447: $fb
	ld l, a                                          ; $7448: $6f
	cp $7f                                           ; $7449: $fe $7f
	xor $7f                                          ; $744b: $ee $7f
	cp $df                                           ; $744d: $fe $df
	ld hl, sp-$64                                    ; $744f: $f8 $9c

jr_011_7451:
	adc h                                            ; $7451: $8c
	db $fc                                           ; $7452: $fc
	inc c                                            ; $7453: $0c
	ld a, e                                          ; $7454: $7b
	cp $9d                                           ; $7455: $fe $9d
	jr jr_011_7451                                   ; $7457: $18 $f8

	ld [hl], a                                       ; $7459: $77
	cp $97                                           ; $745a: $fe $97
	jr nc, @-$0e                                     ; $745c: $30 $f0

	call nz, Call_011_49bd                           ; $745e: $c4 $bd $49
	dec sp                                           ; $7461: $3b
	ld [hl], $32                                     ; $7462: $36 $32
	ld a, [$ba7b]                                    ; $7464: $fa $7b $ba
	sub a                                            ; $7467: $97
	ld d, h                                          ; $7468: $54
	inc sp                                           ; $7469: $33
	ld bc, $097f                                     ; $746a: $01 $7f $09
	ld a, a                                          ; $746d: $7f
	halt                                             ; $746e: $76
	ld [hl], $67                                     ; $746f: $36 $67
	ldh a, [$97]                                     ; $7471: $f0 $97
	and c                                            ; $7473: $a1
	ld l, a                                          ; $7474: $6f
	ld [hl+], a                                      ; $7475: $22
	xor $ac                                          ; $7476: $ee $ac
	db $ec                                           ; $7478: $ec
	ld b, b                                          ; $7479: $40
	ld b, b                                          ; $747a: $40
	ld h, a                                          ; $747b: $67
	ldh a, [$97]                                     ; $747c: $f0 $97
	and d                                            ; $747e: $a2
	cp $05                                           ; $747f: $fe $05
	db $fc                                           ; $7481: $fc
	xor h                                            ; $7482: $ac
	db $fd                                           ; $7483: $fd
	ld sp, hl                                        ; $7484: $f9
	ld a, c                                          ; $7485: $79
	ld h, a                                          ; $7486: $67
	ldh a, [$97]                                     ; $7487: $f0 $97
	ld [hl+], a                                      ; $7489: $22
	rst SubAFromBC                                          ; $748a: $e7
	ret z                                            ; $748b: $c8

	rst JumpTable                                          ; $748c: $c7
	ld [de], a                                       ; $748d: $12
	rrca                                             ; $748e: $0f

jr_011_748f:
	dec c                                            ; $748f: $0d
	dec e                                            ; $7490: $1d
	ld h, a                                          ; $7491: $67
	ldh a, [$97]                                     ; $7492: $f0 $97
	inc bc                                           ; $7494: $03
	ccf                                              ; $7495: $3f
	inc d                                            ; $7496: $14
	ld a, h                                          ; $7497: $7c
	db $e4                                           ; $7498: $e4
	ld l, h                                          ; $7499: $6c
	inc b                                            ; $749a: $04
	inc c                                            ; $749b: $0c
	ld h, d                                          ; $749c: $62
	and b                                            ; $749d: $a0
	sbc d                                            ; $749e: $9a
	ldh a, [rAUD1SWEEP]                              ; $749f: $f0 $10
	ldh [$a0], a                                     ; $74a1: $e0 $a0
	ldh [$f8], a                                     ; $74a3: $e0 $f8
	sbc b                                            ; $74a5: $98
	ld bc, $e718                                     ; $74a6: $01 $18 $e7
	ldh [$ef], a                                     ; $74a9: $e0 $ef
	inc c                                            ; $74ab: $0c
	rlca                                             ; $74ac: $07
	rst FarCall                                          ; $74ad: $f7
	sbc c                                            ; $74ae: $99
	jp nz, $15dd                                     ; $74af: $c2 $dd $15

	dec e                                            ; $74b2: $1d
	nop                                              ; $74b3: $00
	ld [$99f7], sp                                   ; $74b4: $08 $f7 $99
	call z, $25af                                    ; $74b7: $cc $af $25
	db $e3                                           ; $74ba: $e3
	jp z, $f7c6                                      ; $74bb: $ca $c6 $f7

	sbc c                                            ; $74be: $99
	ld d, b                                          ; $74bf: $50
	di                                               ; $74c0: $f3
	ld [hl+], a                                      ; $74c1: $22
	rst SubAFromBC                                          ; $74c2: $e7
	ld b, h                                          ; $74c3: $44
	call $dff7                                       ; $74c4: $cd $f7 $df
	ld bc, $049e                                     ; $74c7: $01 $9e $04
	sbc $03                                          ; $74ca: $de $03
	db $ec                                           ; $74cc: $ec
	sbc h                                            ; $74cd: $9c
	ret nz                                           ; $74ce: $c0

	ld b, b                                          ; $74cf: $40
	ret nz                                           ; $74d0: $c0

	ld [hl], d                                       ; $74d1: $72
	or [hl]                                          ; $74d2: $b6

jr_011_74d3:
	sub d                                            ; $74d3: $92
	ld [bc], a                                       ; $74d4: $02
	inc b                                            ; $74d5: $04
	dec bc                                           ; $74d6: $0b
	adc e                                            ; $74d7: $8b
	ld a, a                                          ; $74d8: $7f
	ld [hl], $fe                                     ; $74d9: $36 $fe
	jp $1cfc                                         ; $74db: $c3 $fc $1c


	db $fd                                           ; $74de: $fd
	sub b                                            ; $74df: $90
	di                                               ; $74e0: $f3
	ld sp, hl                                        ; $74e1: $f9
	sub a                                            ; $74e2: $97
	sub d                                            ; $74e3: $92
	ld h, c                                          ; $74e4: $61
	ld bc, $94f1                                     ; $74e5: $01 $f1 $94
	di                                               ; $74e8: $f3
	and e                                            ; $74e9: $a3
	ld h, e                                          ; $74ea: $63
	db $fd                                           ; $74eb: $fd
	add a                                            ; $74ec: $87
	ld b, b                                          ; $74ed: $40
	add b                                            ; $74ee: $80
	jr nz, @-$3e                                     ; $74ef: $20 $c0

	jr nz, jr_011_74d3                               ; $74f1: $20 $e0

	ld b, h                                          ; $74f3: $44
	jp $8f81                                         ; $74f4: $c3 $81 $8f


	sub [hl]                                         ; $74f7: $96
	ld c, $38                                        ; $74f8: $0e $38
	ccf                                              ; $74fa: $3f
	inc e                                            ; $74fb: $1c
	rra                                              ; $74fc: $1f
	ld c, $0f                                        ; $74fd: $0e $0f
	rlca                                             ; $74ff: $07
	rlca                                             ; $7500: $07

jr_011_7501:
	inc bc                                           ; $7501: $03
	inc bc                                           ; $7502: $03
	ld bc, $fd01                                     ; $7503: $01 $01 $fd
	add b                                            ; $7506: $80
	jr c, jr_011_7501                                ; $7507: $38 $f8

	inc e                                            ; $7509: $1c
	db $fc                                           ; $750a: $fc
	ld c, $fe                                        ; $750b: $0e $fe
	rlca                                             ; $750d: $07
	rst $38                                          ; $750e: $ff
	xor e                                            ; $750f: $ab
	rst SubAFromHL                                          ; $7510: $d7
	push de                                          ; $7511: $d5
	db $eb                                           ; $7512: $eb
	ld [$75f5], a                                    ; $7513: $ea $f5 $75
	ld a, d                                          ; $7516: $7a
	ld h, e                                          ; $7517: $63
	ld a, a                                          ; $7518: $7f
	jp $c3ff                                         ; $7519: $c3 $ff $c3


	rst $38                                          ; $751c: $ff
	add $fe                                          ; $751d: $c6 $fe
	xor [hl]                                         ; $751f: $ae
	sub $5c                                          ; $7520: $d6 $5c
	xor h                                            ; $7522: $ac
	xor h                                            ; $7523: $ac
	ld e, h                                          ; $7524: $5c
	ld e, h                                          ; $7525: $5c
	sbc e                                            ; $7526: $9b
	xor h                                            ; $7527: $ac
	ccf                                              ; $7528: $3f
	ccf                                              ; $7529: $3f
	ld [hl], b                                       ; $752a: $70
	ld a, c                                          ; $752b: $79
	ret c                                            ; $752c: $d8

	ld a, a                                          ; $752d: $7f
	cp $96                                           ; $752e: $fe $96
	ld a, [hl]                                       ; $7530: $7e
	ld a, a                                          ; $7531: $7f
	ccf                                              ; $7532: $3f
	ld a, $0c                                        ; $7533: $3e $0c
	rrca                                             ; $7535: $0f
	dec c                                            ; $7536: $0d
	ld c, $0f                                        ; $7537: $0e $0f
	ld l, d                                          ; $7539: $6a
	add d                                            ; $753a: $82
	sub a                                            ; $753b: $97
	cp a                                             ; $753c: $bf
	ld a, a                                          ; $753d: $7f
	ld a, a                                          ; $753e: $7f
	cp a                                             ; $753f: $bf
	or b                                             ; $7540: $b0
	ld [hl], b                                       ; $7541: $70
	ld [hl], b                                       ; $7542: $70
	ldh a, [$4e]                                     ; $7543: $f0 $4e
	ld [bc], a                                       ; $7545: $02
	rst $38                                          ; $7546: $ff
	rst SubAFromDE                                          ; $7547: $df
	ldh [hDisp1_WY], a                                     ; $7548: $e0 $95
	ld sp, $31f1                                     ; $754a: $31 $f1 $31

jr_011_754d:
	pop af                                           ; $754d: $f1
	ld [hl], c                                       ; $754e: $71
	pop af                                           ; $754f: $f1
	db $e3                                           ; $7550: $e3
	db $e3                                           ; $7551: $e3
	jp $ddc3                                         ; $7552: $c3 $c3 $dd


	inc bc                                           ; $7555: $03
	sbc e                                            ; $7556: $9b
	add [hl]                                         ; $7557: $86
	cp $8c                                           ; $7558: $fe $8c
	db $fc                                           ; $755a: $fc
	halt                                             ; $755b: $76
	ld a, [hl]                                       ; $755c: $7e
	sbc c                                            ; $755d: $99
	ld e, b                                          ; $755e: $58
	cp b                                             ; $755f: $b8
	cp b                                             ; $7560: $b8
	ld e, b                                          ; $7561: $58
	ld e, b                                          ; $7562: $58
	cp b                                             ; $7563: $b8
	ld [hl], l                                       ; $7564: $75
	xor $dd                                          ; $7565: $ee $dd
	ld bc, $03dd                                     ; $7567: $01 $dd $03
	sbc $07                                          ; $756a: $de $07
	sbc h                                            ; $756c: $9c
	ld b, $0e                                        ; $756d: $06 $0e
	rrca                                             ; $756f: $0f
	ld [hl], a                                       ; $7570: $77
	sub h                                            ; $7571: $94
	ld a, a                                          ; $7572: $7f
	call c, $849d                                    ; $7573: $dc $9d $84
	db $fc                                           ; $7576: $fc
	ld [hl], a                                       ; $7577: $77
	sub d                                            ; $7578: $92
	ld a, e                                          ; $7579: $7b
	call c, $789e                                    ; $757a: $dc $9e $78
	di                                               ; $757d: $f3
	rst SubAFromDE                                          ; $757e: $df
	ld bc, $5475                                     ; $757f: $01 $75 $54
	ld [hl], l                                       ; $7582: $75
	ld a, b                                          ; $7583: $78
	sub [hl]                                         ; $7584: $96
	ld [hl], a                                       ; $7585: $77
	ld l, e                                          ; $7586: $6b
	ld [$d5f5], a                                    ; $7587: $ea $f5 $d5
	ld [$d5ea], a                                    ; $758a: $ea $ea $d5
	jr nc, jr_011_760a                               ; $758d: $30 $7b

	db $f4                                           ; $758f: $f4
	sub e                                            ; $7590: $93
	pop bc                                           ; $7591: $c1
	rst $38                                          ; $7592: $ff
	add e                                            ; $7593: $83
	rst $38                                          ; $7594: $ff
	ld d, a                                          ; $7595: $57
	xor a                                            ; $7596: $af
	xor [hl]                                         ; $7597: $ae
	ld e, [hl]                                       ; $7598: $5e
	ld e, h                                          ; $7599: $5c
	cp h                                             ; $759a: $bc
	ld hl, sp+$78                                    ; $759b: $f8 $78
	ld [hl], l                                       ; $759d: $75
	ld h, h                                          ; $759e: $64
	add b                                            ; $759f: $80
	adc h                                            ; $75a0: $8c
	adc a                                            ; $75a1: $8f
	jr jr_011_75c3                                   ; $75a2: $18 $1f

	dec e                                            ; $75a4: $1d
	ld a, [de]                                       ; $75a5: $1a
	ld a, [hl-]                                      ; $75a6: $3a
	dec [hl]                                         ; $75a7: $35
	dec [hl]                                         ; $75a8: $35
	ld a, [hl-]                                      ; $75a9: $3a
	ld l, e                                          ; $75aa: $6b
	ld [hl], l                                       ; $75ab: $75
	ld [hl], $f7                                     ; $75ac: $36 $f7

jr_011_75ae:
	ld a, h                                          ; $75ae: $7c
	rst $38                                          ; $75af: $ff
	ld l, h                                          ; $75b0: $6c
	rst AddAOntoHL                                          ; $75b1: $ef
	ld l, h                                          ; $75b2: $6c
	rst AddAOntoHL                                          ; $75b3: $ef
	ld l, d                                          ; $75b4: $6a
	db $ed                                           ; $75b5: $ed
	db $dd                                           ; $75b6: $dd
	jp c, $ddda                                      ; $75b7: $da $da $dd

	sbc l                                            ; $75ba: $9d
	sbc d                                            ; $75bb: $9a
	jr nc, jr_011_75ae                               ; $75bc: $30 $f0

	jr nc, jr_011_754d                               ; $75be: $30 $8d

	ldh a, [$71]                                     ; $75c0: $f0 $71
	pop af                                           ; $75c2: $f1

jr_011_75c3:
	ld h, c                                          ; $75c3: $61
	pop hl                                           ; $75c4: $e1
	db $e3                                           ; $75c5: $e3
	ld h, e                                          ; $75c6: $63
	db $e3                                           ; $75c7: $e3
	db $e3                                           ; $75c8: $e3
	add $c7                                          ; $75c9: $c6 $c7
	rst GetHLinHL                                          ; $75cb: $cf
	adc $70                                          ; $75cc: $ce $70
	ld [hl], b                                       ; $75ce: $70
	ld hl, sp-$08                                    ; $75cf: $f8 $f8
	sbc h                                            ; $75d1: $9c
	ld a, e                                          ; $75d2: $7b
	ld l, [hl]                                       ; $75d3: $6e
	ld [hl], e                                       ; $75d4: $73
	sub d                                            ; $75d5: $92
	sbc h                                            ; $75d6: $9c
	ld e, b                                          ; $75d7: $58
	ld [hl], b                                       ; $75d8: $70
	or b                                             ; $75d9: $b0
	ld sp, hl                                        ; $75da: $f9
	sub a                                            ; $75db: $97
	dec c                                            ; $75dc: $0d
	add b                                            ; $75dd: $80
	ld b, d                                          ; $75de: $42
	adc l                                            ; $75df: $8d
	nop                                              ; $75e0: $00
	rst JumpTable                                          ; $75e1: $c7
	ld b, h                                          ; $75e2: $44
	jp $f164                                         ; $75e3: $c3 $64 $f1


	ld a, a                                          ; $75e6: $7f
	or $99                                           ; $75e7: $f6 $99
	ld d, c                                          ; $75e9: $51
	rst GetHLinHL                                          ; $75ea: $cf
	xor d                                            ; $75eb: $aa
	sbc [hl]                                         ; $75ec: $9e
	sub e                                            ; $75ed: $93
	cp [hl]                                          ; $75ee: $be
	ei                                               ; $75ef: $fb
	sub [hl]                                         ; $75f0: $96
	ld [bc], a                                       ; $75f1: $02
	ld bc, $1f00                                     ; $75f2: $01 $00 $1f
	ld a, [bc]                                       ; $75f5: $0a
	add hl, de                                       ; $75f6: $19
	jr nz, jr_011_7618                               ; $75f7: $20 $1f

	inc c                                            ; $75f9: $0c
	ld h, b                                          ; $75fa: $60
	ret nc                                           ; $75fb: $d0

	sub a                                            ; $75fc: $97
	db $10                                           ; $75fd: $10

jr_011_75fe:
	ld h, $40                                        ; $75fe: $26 $40
	ld a, $0a                                        ; $7600: $3e $0a
	cp $9b                                           ; $7602: $fe $9b
	or $7b                                           ; $7604: $f6 $7b
	or $92                                           ; $7606: $f6 $92
	inc c                                            ; $7608: $0c
	ld b, d                                          ; $7609: $42

jr_011_760a:
	ld a, $12                                        ; $760a: $3e $12
	ld a, [hl]                                       ; $760c: $7e
	add [hl]                                         ; $760d: $86
	cp $24                                           ; $760e: $fe $24
	ld hl, sp+$02                                    ; $7610: $f8 $02
	cp $0a                                           ; $7612: $fe $0a
	cp $fb                                           ; $7614: $fe $fb
	sub l                                            ; $7616: $95
	add l                                            ; $7617: $85

jr_011_7618:
	ldh [c], a                                       ; $7618: $e2
	jr nz, jr_011_75fe                               ; $7619: $20 $e3

	pop bc                                           ; $761b: $c1
	pop bc                                           ; $761c: $c1
	add b                                            ; $761d: $80
	ld b, $15                                        ; $761e: $06 $15
	and $fc                                          ; $7620: $e6 $fc
	ld a, [hl]                                       ; $7622: $7e
	ld b, b                                          ; $7623: $40
	sub [hl]                                         ; $7624: $96
	inc bc                                           ; $7625: $03
	ld [$2107], sp                                   ; $7626: $08 $07 $21
	rra                                              ; $7629: $1f
	db $10                                           ; $762a: $10
	ccf                                              ; $762b: $3f
	ld [bc], a                                       ; $762c: $02
	rra                                              ; $762d: $1f
	rst FarCall                                          ; $762e: $f7
	sbc d                                            ; $762f: $9a
	ld h, b                                          ; $7630: $60
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	ldh a, [$50]                                     ; $7633: $f0 $50
	ld a, d                                          ; $7635: $7a
	ldh a, [$63]                                     ; $7636: $f0 $63
	inc d                                            ; $7638: $14
	ld a, e                                          ; $7639: $7b
	ret c                                            ; $763a: $d8

	sbc [hl]                                         ; $763b: $9e
	ld bc, $d659                                     ; $763c: $01 $59 $d6
	ld [hl], a                                       ; $763f: $77
	ld a, d                                          ; $7640: $7a
	sbc l                                            ; $7641: $9d
	nop                                              ; $7642: $00
	ret z                                            ; $7643: $c8

	push af                                          ; $7644: $f5
	sbc e                                            ; $7645: $9b
	inc b                                            ; $7646: $04
	add e                                            ; $7647: $83
	nop                                              ; $7648: $00
	adc a                                            ; $7649: $8f
	push af                                          ; $764a: $f5
	sbc e                                            ; $764b: $9b
	jr nz, jr_011_768e                               ; $764c: $20 $40

	ld bc, $f2f2                                     ; $764e: $01 $f2 $f2
	sub c                                            ; $7651: $91
	ld bc, $cccc                                     ; $7652: $01 $cc $cc
	adc b                                            ; $7655: $88
	adc h                                            ; $7656: $8c
	adc b                                            ; $7657: $88
	adc b                                            ; $7658: $88
	jr @-$66                                         ; $7659: $18 $98

	db $10                                           ; $765b: $10
	jr jr_011_768e                                   ; $765c: $18 $30

	ldh a, [$e0]                                     ; $765e: $f0 $e0
	ld l, e                                          ; $7660: $6b
	and d                                            ; $7661: $a2
	sub [hl]                                         ; $7662: $96
	ldh [$f1], a                                     ; $7663: $e0 $f1
	ld hl, $6171                                     ; $7665: $21 $71 $61
	ld h, e                                          ; $7668: $63
	jp $81e3                                         ; $7669: $c3 $e3 $81


	ld a, e                                          ; $766c: $7b
	ld [hl+], a                                      ; $766d: $22
	sbc c                                            ; $766e: $99
	ld b, h                                          ; $766f: $44
	ld c, h                                          ; $7670: $4c
	ld c, b                                          ; $7671: $48
	ret z                                            ; $7672: $c8

	adc a                                            ; $7673: $8f
	adc a                                            ; $7674: $8f
	ld a, c                                          ; $7675: $79
	ret z                                            ; $7676: $c8

	rst SubAFromDE                                          ; $7677: $df
	add b                                            ; $7678: $80
	ld [hl], d                                       ; $7679: $72
	ld c, [hl]                                       ; $767a: $4e
	sbc e                                            ; $767b: $9b
	ld a, [hl-]                                      ; $767c: $3a
	dec a                                            ; $767d: $3d
	dec e                                            ; $767e: $1d
	ld e, $7a                                        ; $767f: $1e $7a
	ld a, [hl+]                                      ; $7681: $2a
	add b                                            ; $7682: $80
	inc c                                            ; $7683: $0c
	dec de                                           ; $7684: $1b
	inc e                                            ; $7685: $1c
	rra                                              ; $7686: $1f
	jr @+$37                                         ; $7687: $18 $35

	jr c, jr_011_76c5                                ; $7689: $38 $3a

	ld sp, $58b8                                     ; $768b: $31 $b8 $58

jr_011_768e:
	db $fc                                           ; $768e: $fc
	inc e                                            ; $768f: $1c
	cp $0e                                           ; $7690: $fe $0e
	rst $38                                          ; $7692: $ff
	rlca                                             ; $7693: $07
	cp a                                             ; $7694: $bf
	ld b, e                                          ; $7695: $43
	rst SubAFromDE                                          ; $7696: $df
	ld h, c                                          ; $7697: $61
	push af                                          ; $7698: $f5
	ldh [$fa], a                                     ; $7699: $e0 $fa
	ldh a, [$0e]                                     ; $769b: $f0 $0e
	dec c                                            ; $769d: $0d
	rrca                                             ; $769e: $0f
	inc c                                            ; $769f: $0c
	rrca                                             ; $76a0: $0f
	inc c                                            ; $76a1: $0c
	ld a, a                                          ; $76a2: $7f
	sbc $88                                          ; $76a3: $de $88
	add a                                            ; $76a5: $87
	add [hl]                                         ; $76a6: $86
	rst JumpTable                                          ; $76a7: $c7
	rst JumpTable                                          ; $76a8: $c7
	db $e3                                           ; $76a9: $e3
	db $e3                                           ; $76aa: $e3
	pop hl                                           ; $76ab: $e1
	ld h, c                                          ; $76ac: $61
	ldh [$60], a                                     ; $76ad: $e0 $60
	ldh [$60], a                                     ; $76af: $e0 $60
	cp b                                             ; $76b1: $b8
	ld a, b                                          ; $76b2: $78
	rst $38                                          ; $76b3: $ff
	ccf                                              ; $76b4: $3f
	rst AddAOntoHL                                          ; $76b5: $ef
	rra                                              ; $76b6: $1f
	ld d, l                                          ; $76b7: $55
	nop                                              ; $76b8: $00
	xor d                                            ; $76b9: $aa
	add b                                            ; $76ba: $80
	push de                                          ; $76bb: $d5
	ld a, c                                          ; $76bc: $79
	ld d, $df                                        ; $76bd: $16 $df
	ld c, $df                                        ; $76bf: $0e $df
	ld a, a                                          ; $76c1: $7f
	add h                                            ; $76c2: $84
	db $fd                                           ; $76c3: $fd
	di                                               ; $76c4: $f3

jr_011_76c5:
	cp a                                             ; $76c5: $bf
	pop bc                                           ; $76c6: $c1
	ld d, l                                          ; $76c7: $55
	ld bc, $03ab                                     ; $76c8: $01 $ab $03
	ld e, a                                          ; $76cb: $5f
	ccf                                              ; $76cc: $3f
	ld bc, $0e01                                     ; $76cd: $01 $01 $0e
	ld c, $1f                                        ; $76d0: $0e $1f
	rra                                              ; $76d2: $1f
	cp l                                             ; $76d3: $bd
	cp e                                             ; $76d4: $bb
	cp a                                             ; $76d5: $bf
	or b                                             ; $76d6: $b0
	cp d                                             ; $76d7: $ba
	or b                                             ; $76d8: $b0
	dec a                                            ; $76d9: $3d
	jr c, jr_011_76fa                                ; $76da: $38 $1e

	ld e, $e0                                        ; $76dc: $1e $e0
	ld a, e                                          ; $76de: $7b
	sbc $df                                          ; $76df: $de $df
	add b                                            ; $76e1: $80
	rst SubAFromDE                                          ; $76e2: $df
	db $e3                                           ; $76e3: $e3
	rst SubAFromDE                                          ; $76e4: $df
	rst $38                                          ; $76e5: $ff
	sbc l                                            ; $76e6: $9d
	cp $7e                                           ; $76e7: $fe $7e
	ld a, e                                          ; $76e9: $7b
	adc $89                                          ; $76ea: $ce $89
	nop                                              ; $76ec: $00
	dec e                                            ; $76ed: $1d
	ld e, $3f                                        ; $76ee: $1e $3f
	jr c, @+$01                                      ; $76f0: $38 $ff

	ldh a, [$fe]                                     ; $76f2: $f0 $fe
	pop hl                                           ; $76f4: $e1
	cp a                                             ; $76f5: $bf
	pop bc                                           ; $76f6: $c1
	xor e                                            ; $76f7: $ab
	inc bc                                           ; $76f8: $03
	ld d, a                                          ; $76f9: $57

jr_011_76fa:
	rlca                                             ; $76fa: $07
	sbc [hl]                                         ; $76fb: $9e
	ld a, $70                                        ; $76fc: $3e $70
	or b                                             ; $76fe: $b0
	ldh a, [rSVBK]                                   ; $76ff: $f0 $70
	ld h, b                                          ; $7701: $60
	sbc $e0                                          ; $7702: $de $e0
	rst SubAFromDE                                          ; $7704: $df
	rst JumpTable                                          ; $7705: $c7
	rst SubAFromDE                                          ; $7706: $df
	adc a                                            ; $7707: $8f
	sbc e                                            ; $7708: $9b
	ld c, $0c                                        ; $7709: $0e $0c
	dec c                                            ; $770b: $0d
	inc c                                            ; $770c: $0c
	ld [hl], l                                       ; $770d: $75
	add sp, -$7d                                     ; $770e: $e8 $83
	rra                                              ; $7710: $1f
	ld e, $ff                                        ; $7711: $1e $ff
	db $fc                                           ; $7713: $fc
	rst AddAOntoHL                                          ; $7714: $ef
	ldh a, [rHDMA5]                                  ; $7715: $f0 $55
	nop                                              ; $7717: $00
	xor e                                            ; $7718: $ab
	ld bc, $0f57                                     ; $7719: $01 $57 $0f
	db $d3                                           ; $771c: $d3
	xor a                                            ; $771d: $af
	rst $38                                          ; $771e: $ff
	rlca                                             ; $771f: $07
	xor $1e                                          ; $7720: $ee $1e
	db $fc                                           ; $7722: $fc
	inc e                                            ; $7723: $1c
	cp b                                             ; $7724: $b8
	ld a, b                                          ; $7725: $78
	ld [hl], b                                       ; $7726: $70
	ldh a, [$e0]                                     ; $7727: $f0 $e0
	ldh [$80], a                                     ; $7729: $e0 $80
	add b                                            ; $772b: $80
	ld [hl], a                                       ; $772c: $77
	db $fc                                           ; $772d: $fc
	ld [hl], l                                       ; $772e: $75
	ret nz                                           ; $772f: $c0

	ld a, l                                          ; $7730: $7d

jr_011_7731:
	call nz, $6c7f                                   ; $7731: $c4 $7f $6c
	sbc c                                            ; $7734: $99
	ld a, [de]                                       ; $7735: $1a
	inc e                                            ; $7736: $1c
	dec e                                            ; $7737: $1d
	jr jr_011_7731                                   ; $7738: $18 $f7

	db $eb                                           ; $773a: $eb
	ld a, c                                          ; $773b: $79
	ld d, c                                          ; $773c: $51
	sub d                                            ; $773d: $92
	add a                                            ; $773e: $87
	halt                                             ; $773f: $76
	adc [hl]                                         ; $7740: $8e
	db $fc                                           ; $7741: $fc
	inc c                                            ; $7742: $0c
	ld e, h                                          ; $7743: $5c
	inc e                                            ; $7744: $1c
	cp b                                             ; $7745: $b8
	jr c, jr_011_77b8                                ; $7746: $38 $70

	ld [hl], b                                       ; $7748: $70
	cp d                                             ; $7749: $ba
	or l                                             ; $774a: $b5
	ld a, c                                          ; $774b: $79
	pop de                                           ; $774c: $d1
	sub b                                            ; $774d: $90
	ld sp, $637d                                     ; $774e: $31 $7d $63
	ld a, a                                          ; $7751: $7f
	ld h, e                                          ; $7752: $63
	ld l, e                                          ; $7753: $6b
	ld h, e                                          ; $7754: $63
	push de                                          ; $7755: $d5
	ldh [c], a                                       ; $7756: $e2
	ld [$dec0], a                                    ; $7757: $ea $c0 $de
	db $dd                                           ; $775a: $dd
	cp a                                             ; $775b: $bf
	cp b                                             ; $775c: $b8
	ld [hl], a                                       ; $775d: $77
	sub b                                            ; $775e: $90
	sub l                                            ; $775f: $95
	db $fd                                           ; $7760: $fd
	jp $07ab                                         ; $7761: $c3 $ab $07


	ld d, a                                          ; $7764: $57
	rrca                                             ; $7765: $0f
	xor [hl]                                         ; $7766: $ae
	ld e, $b0                                        ; $7767: $1e $b0
	ld [hl], b                                       ; $7769: $70
	ld a, e                                          ; $776a: $7b
	ld a, $9d                                        ; $776b: $3e $9d
	ldh [$c0], a                                     ; $776d: $e0 $c0
	ld a, b                                          ; $776f: $78
	add $70                                          ; $7770: $c6 $70
	call nz, Call_011_427e                           ; $7772: $c4 $7e $42
	sub d                                            ; $7775: $92
	jr nc, jr_011_7788                               ; $7776: $30 $10

	sub b                                            ; $7778: $90
	sub b                                            ; $7779: $90
	sbc b                                            ; $777a: $98
	adc b                                            ; $777b: $88
	adc b                                            ; $777c: $88
	adc c                                            ; $777d: $89
	call $fdcd                                       ; $777e: $cd $cd $fd
	ld a, b                                          ; $7781: $78
	db $fd                                           ; $7782: $fd
	ld a, d                                          ; $7783: $7a
	xor h                                            ; $7784: $ac
	sbc $23                                          ; $7785: $de $23
	add [hl]                                         ; $7787: $86

jr_011_7788:
	ld b, e                                          ; $7788: $43
	ld h, a                                          ; $7789: $67
	ld b, [hl]                                       ; $778a: $46
	ld b, a                                          ; $778b: $47
	add h                                            ; $778c: $84
	call $fccc                                       ; $778d: $cd $cc $fc
	ld a, b                                          ; $7790: $78
	db $fc                                           ; $7791: $fc
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	ld hl, $2233                                     ; $7794: $21 $33 $22
	db $e3                                           ; $7797: $e3
	add $c6                                          ; $7798: $c6 $c6
	inc c                                            ; $779a: $0c
	ld c, $18                                        ; $779b: $0e $18
	inc a                                            ; $779d: $3c
	ld [hl], b                                       ; $779e: $70
	ld hl, sp-$40                                    ; $779f: $f8 $c0
	ld a, e                                          ; $77a1: $7b
	inc [hl]                                         ; $77a2: $34
	sub d                                            ; $77a3: $92
	ld de, $11b3                                     ; $77a4: $11 $b3 $11
	inc sp                                           ; $77a7: $33
	db $10                                           ; $77a8: $10
	ld sp, $1810                                     ; $77a9: $31 $10 $18
	jr jr_011_77ca                                   ; $77ac: $18 $1c

	inc c                                            ; $77ae: $0c
	rrca                                             ; $77af: $0f
	inc bc                                           ; $77b0: $03
	ld a, d                                          ; $77b1: $7a
	ld d, d                                          ; $77b2: $52
	rst SubAFromDE                                          ; $77b3: $df
	sub c                                            ; $77b4: $91
	sub [hl]                                         ; $77b5: $96
	and c                                            ; $77b6: $a1
	or e                                             ; $77b7: $b3

jr_011_77b8:
	ld b, d                                          ; $77b8: $42
	db $e3                                           ; $77b9: $e3
	ld b, $06                                        ; $77ba: $06 $06
	inc c                                            ; $77bc: $0c
	inc e                                            ; $77bd: $1c
	jr nc, jr_011_7833                               ; $77be: $30 $73

	ldh [$9d], a                                     ; $77c0: $e0 $9d
	ld [$7b19], sp                                   ; $77c2: $08 $19 $7b
	cp $97                                           ; $77c5: $fe $97
	jr jr_011_77d1                                   ; $77c7: $18 $08

	inc c                                            ; $77c9: $0c

jr_011_77ca:
	inc c                                            ; $77ca: $0c
	ld c, $06                                        ; $77cb: $0e $06
	rlca                                             ; $77cd: $07
	ld bc, $4878                                     ; $77ce: $01 $78 $48

jr_011_77d1:
	sbc e                                            ; $77d1: $9b
	ld a, h                                          ; $77d2: $7c
	ld a, [hl]                                       ; $77d3: $7e
	ld b, b                                          ; $77d4: $40
	ld h, b                                          ; $77d5: $60
	ld a, b                                          ; $77d6: $78
	ld e, b                                          ; $77d7: $58
	ld h, e                                          ; $77d8: $63
	sub b                                            ; $77d9: $90
	sbc $04                                          ; $77da: $de $04
	sbc h                                            ; $77dc: $9c
	inc c                                            ; $77dd: $0c
	ld [$de0c], sp                                   ; $77de: $08 $0c $de
	ld [$18df], sp                                   ; $77e1: $08 $df $18
	sbc $1f                                          ; $77e4: $de $1f
	ld a, e                                          ; $77e6: $7b
	add b                                            ; $77e7: $80
	sbc [hl]                                         ; $77e8: $9e
	jr c, jr_011_7851                                ; $77e9: $38 $66

	ld e, d                                          ; $77eb: $5a
	ei                                               ; $77ec: $fb
	ld a, a                                          ; $77ed: $7f
	call nc, Call_011_718e                           ; $77ee: $d4 $8e $71
	ld sp, hl                                        ; $77f1: $f9
	ld de, $1311                                     ; $77f2: $11 $11 $13
	inc sp                                           ; $77f5: $33
	ld [hl+], a                                      ; $77f6: $22
	ld [hl+], a                                      ; $77f7: $22
	ld h, $66                                        ; $77f8: $26 $66
	ld b, h                                          ; $77fa: $44
	ld h, [hl]                                       ; $77fb: $66
	ld b, h                                          ; $77fc: $44
	call nz, $0606                                   ; $77fd: $c4 $06 $06
	db $fc                                           ; $7800: $fc
	ld a, e                                          ; $7801: $7b
	ld a, d                                          ; $7802: $7a
	sbc b                                            ; $7803: $98
	ldh a, [$f8]                                     ; $7804: $f0 $f8
	ld [$1018], sp                                   ; $7806: $08 $18 $10
	jr jr_011_781b                                   ; $7809: $18 $10

	ld a, d                                          ; $780b: $7a
	ld l, $95                                        ; $780c: $2e $95
	adc b                                            ; $780e: $88
	sbc b                                            ; $780f: $98
	ld de, $1119                                     ; $7810: $11 $19 $11
	inc de                                           ; $7813: $13
	inc de                                           ; $7814: $13
	inc sp                                           ; $7815: $33
	jr nz, @+$32                                     ; $7816: $20 $30

	sbc $20                                          ; $7818: $de $20
	sub h                                            ; $781a: $94

jr_011_781b:
	ld h, a                                          ; $781b: $67
	ld b, a                                          ; $781c: $47
	ld b, a                                          ; $781d: $47
	ld [hl], c                                       ; $781e: $71
	ld [hl], c                                       ; $781f: $71
	ld h, e                                          ; $7820: $63
	db $e3                                           ; $7821: $e3
	ld b, [hl]                                       ; $7822: $46
	add $8c                                          ; $7823: $c6 $8c
	adc h                                            ; $7825: $8c
	ld a, e                                          ; $7826: $7b
	ldh [$7f], a                                     ; $7827: $e0 $7f
	xor $7b                                          ; $7829: $ee $7b
	db $ec                                           ; $782b: $ec
	rst SubAFromDE                                          ; $782c: $df
	call nz, Call_011_4497                           ; $782d: $c4 $97 $44
	call z, $cc48                                    ; $7830: $cc $48 $cc

jr_011_7833:
	ret z                                            ; $7833: $c8

	ret z                                            ; $7834: $c8

	adc b                                            ; $7835: $88
	ret c                                            ; $7836: $d8

	ld a, e                                          ; $7837: $7b
	ret nc                                           ; $7838: $d0

	sbc h                                            ; $7839: $9c
	sub b                                            ; $783a: $90
	db $10                                           ; $783b: $10
	or c                                             ; $783c: $b1
	push af                                          ; $783d: $f5
	rst SubAFromDE                                          ; $783e: $df
	ldh a, [rPCM34]                                  ; $783f: $f0 $77
	or h                                             ; $7841: $b4
	ld l, h                                          ; $7842: $6c
	xor b                                            ; $7843: $a8
	rst SubAFromDE                                          ; $7844: $df
	inc bc                                           ; $7845: $03
	rst SubAFromDE                                          ; $7846: $df
	ld b, $7e                                        ; $7847: $06 $7e
	jr z, jr_011_77d1                                ; $7849: $28 $86

	inc a                                            ; $784b: $3c
	jr c, jr_011_78c3                                ; $784c: $38 $75

	ld h, c                                          ; $784e: $61
	ld l, c                                          ; $784f: $69
	ld h, e                                          ; $7850: $63

jr_011_7851:
	rst SubAFromHL                                          ; $7851: $d7
	jp $87ab                                         ; $7852: $c3 $ab $87


	ld d, [hl]                                       ; $7855: $56
	ld b, $ac                                        ; $7856: $06 $ac
	inc c                                            ; $7858: $0c
	ld c, h                                          ; $7859: $4c
	inc e                                            ; $785a: $1c
	jr jr_011_7895                                   ; $785b: $18 $38

	sbc l                                            ; $785d: $9d
	sbc b                                            ; $785e: $98
	adc [hl]                                         ; $785f: $8e
	adc h                                            ; $7860: $8c
	rlca                                             ; $7861: $07
	rlca                                             ; $7862: $07
	inc bc                                           ; $7863: $03
	ld a, e                                          ; $7864: $7b
	ld b, [hl]                                       ; $7865: $46
	ld l, c                                          ; $7866: $69
	ld e, d                                          ; $7867: $5a
	rst SubAFromDE                                          ; $7868: $df
	ld h, b                                          ; $7869: $60
	ld [hl], d                                       ; $786a: $72
	jp nc, $dff9                                     ; $786b: $d2 $f9 $df

	rst $38                                          ; $786e: $ff
	rst SubAFromDE                                          ; $786f: $df
	ccf                                              ; $7870: $3f
	push af                                          ; $7871: $f5
	rst SubAFromDE                                          ; $7872: $df
	db $fc                                           ; $7873: $fc
	halt                                             ; $7874: $76
	ld e, $fd                                        ; $7875: $1e $fd
	sub a                                            ; $7877: $97
	inc a                                            ; $7878: $3c
	ld a, [hl]                                       ; $7879: $7e
	ld b, e                                          ; $787a: $43
	rst $38                                          ; $787b: $ff
	add b                                            ; $787c: $80
	add b                                            ; $787d: $80
	rrca                                             ; $787e: $0f
	rrca                                             ; $787f: $0f
	ld e, a                                          ; $7880: $5f
	call nz, $077e                                   ; $7881: $c4 $7e $07
	rst SubAFromDE                                          ; $7884: $df
	ret nz                                           ; $7885: $c0

	sbc [hl]                                         ; $7886: $9e
	push de                                          ; $7887: $d5
	ld [hl], l                                       ; $7888: $75

jr_011_7889:
	sbc c                                            ; $7889: $99
	ld a, c                                          ; $788a: $79
	sbc b                                            ; $788b: $98
	rst $38                                          ; $788c: $ff
	sub l                                            ; $788d: $95
	inc e                                            ; $788e: $1c
	ld e, $63                                        ; $788f: $1e $63
	ld a, a                                          ; $7891: $7f
	ret nz                                           ; $7892: $c0

	pop bc                                           ; $7893: $c1
	db $fc                                           ; $7894: $fc

jr_011_7895:
	db $fc                                           ; $7895: $fc
	ldh a, [$f0]                                     ; $7896: $f0 $f0
	ld e, a                                          ; $7898: $5f
	or d                                             ; $7899: $b2
	rst SubAFromDE                                          ; $789a: $df
	add c                                            ; $789b: $81
	rst SubAFromDE                                          ; $789c: $df
	ld c, $df                                        ; $789d: $0e $df
	rlca                                             ; $789f: $07
	rst SubAFromDE                                          ; $78a0: $df
	ld bc, $e06f                                     ; $78a1: $01 $6f $e0
	sub l                                            ; $78a4: $95
	ld h, a                                          ; $78a5: $67
	rst $38                                          ; $78a6: $ff
	add c                                            ; $78a7: $81
	jp $3efe                                         ; $78a8: $c3 $fe $3e


	ld hl, sp-$08                                    ; $78ab: $f8 $f8
	ret nz                                           ; $78ad: $c0

	ret nz                                           ; $78ae: $c0

	ld [hl], b                                       ; $78af: $70
	res 3, d                                         ; $78b0: $cb $9a
	inc bc                                           ; $78b2: $03
	ld [bc], a                                       ; $78b3: $02
	rlca                                             ; $78b4: $07
	add h                                            ; $78b5: $84
	add [hl]                                         ; $78b6: $86
	rst FarCall                                          ; $78b7: $f7
	sub h                                            ; $78b8: $94
	add e                                            ; $78b9: $83
	rst JumpTable                                          ; $78ba: $c7
	ld c, h                                          ; $78bb: $4c
	rst GetHLinHL                                          ; $78bc: $cf
	ld e, b                                          ; $78bd: $58
	ld e, b                                          ; $78be: $58
	ld e, $1c                                        ; $78bf: $1e $1c
	rrca                                             ; $78c1: $0f
	rrca                                             ; $78c2: $0f

jr_011_78c3:
	rlca                                             ; $78c3: $07
	ld [hl], b                                       ; $78c4: $70
	jp c, $f07f                                      ; $78c5: $da $7f $f0

	sbc e                                            ; $78c8: $9b
	call z, $88cf                                    ; $78c9: $cc $cf $88
	ret z                                            ; $78cc: $c8

	halt                                             ; $78cd: $76
	inc [hl]                                         ; $78ce: $34
	ei                                               ; $78cf: $fb
	sub e                                            ; $78d0: $93
	cp $ff                                           ; $78d1: $fe $ff
	inc bc                                           ; $78d3: $03
	rst $38                                          ; $78d4: $ff
	ld [bc], a                                       ; $78d5: $02
	rlca                                             ; $78d6: $07
	push de                                          ; $78d7: $d5
	ret nz                                           ; $78d8: $c0

	db $eb                                           ; $78d9: $eb
	ldh [$7f], a                                     ; $78da: $e0 $7f
	ld a, a                                          ; $78dc: $7f
	ld [hl], a                                       ; $78dd: $77
	ld e, h                                          ; $78de: $5c
	sub l                                            ; $78df: $95
	rra                                              ; $78e0: $1f
	ccf                                              ; $78e1: $3f
	jr nz, jr_011_7963                               ; $78e2: $20 $7f

	ld b, b                                          ; $78e4: $40
	ld h, b                                          ; $78e5: $60
	ld a, h                                          ; $78e6: $7c
	inc a                                            ; $78e7: $3c
	ld hl, sp-$08                                    ; $78e8: $f8 $f8
	ld [hl], l                                       ; $78ea: $75
	call z, $bc76                                    ; $78eb: $cc $76 $bc
	adc l                                            ; $78ee: $8d
	jr @-$02                                         ; $78ef: $18 $fc

	ld [$001c], sp                                   ; $78f1: $08 $1c $00
	nop                                              ; $78f4: $00
	ld a, $3e                                        ; $78f5: $3e $3e
	ld d, l                                          ; $78f7: $55
	ld e, l                                          ; $78f8: $5d
	ld d, l                                          ; $78f9: $55
	ld d, l                                          ; $78fa: $55
	ld e, c                                          ; $78fb: $59

Call_011_78fc:
	ld e, c                                          ; $78fc: $59
	ld d, l                                          ; $78fd: $55
	ld d, l                                          ; $78fe: $55
	ld a, $3e                                        ; $78ff: $3e $3e
	ld [hl], a                                       ; $7901: $77
	ld e, h                                          ; $7902: $5c
	rst SubAFromDE                                          ; $7903: $df
	jr jr_011_7889                                   ; $7904: $18 $83

	jr c, jr_011_7944                                ; $7906: $38 $3c

	ld h, h                                          ; $7908: $64
	ld l, h                                          ; $7909: $6c
	ld b, a                                          ; $790a: $47
	rst GetHLinHL                                          ; $790b: $cf
	add b                                            ; $790c: $80
	ret nz                                           ; $790d: $c0

	adc a                                            ; $790e: $8f
	sbc a                                            ; $790f: $9f
	ld de, $4393                                     ; $7910: $11 $93 $43
	jp $c742                                         ; $7913: $c3 $42 $c7


	ld b, h                                          ; $7916: $44
	ld b, [hl]                                       ; $7917: $46
	ld c, h                                          ; $7918: $4c
	ld c, h                                          ; $7919: $4c
	ld c, b                                          ; $791a: $48
	call z, $d898                                    ; $791b: $cc $98 $d8
	sub b                                            ; $791e: $90
	sbc c                                            ; $791f: $99
	sub c                                            ; $7920: $91
	or c                                             ; $7921: $b1
	ld a, e                                          ; $7922: $7b
	ldh [$98], a                                     ; $7923: $e0 $98
	inc e                                            ; $7925: $1c
	inc [hl]                                         ; $7926: $34
	inc [hl]                                         ; $7927: $34
	inc h                                            ; $7928: $24
	ld h, h                                          ; $7929: $64
	ld h, h                                          ; $792a: $64
	ld l, h                                          ; $792b: $6c
	halt                                             ; $792c: $76
	xor d                                            ; $792d: $aa
	add b                                            ; $792e: $80
	sub b                                            ; $792f: $90
	reti                                             ; $7930: $d9


	ld b, c                                          ; $7931: $41
	ld h, c                                          ; $7932: $61
	inc hl                                           ; $7933: $23
	ld h, e                                          ; $7934: $63
	ld [hl+], a                                      ; $7935: $22
	ld [hl-], a                                      ; $7936: $32
	inc h                                            ; $7937: $24
	ld [hl], $24                                     ; $7938: $36 $24
	ld [hl], h                                       ; $793a: $74
	ld c, b                                          ; $793b: $48
	db $ec                                           ; $793c: $ec
	adc b                                            ; $793d: $88
	call z, $0808                                    ; $793e: $cc $08 $08
	add b                                            ; $7941: $80
	add b                                            ; $7942: $80
	adc h                                            ; $7943: $8c

jr_011_7944:
	sbc [hl]                                         ; $7944: $9e
	ld [de], a                                       ; $7945: $12
	dec de                                           ; $7946: $1b
	ld [de], a                                       ; $7947: $12
	inc de                                           ; $7948: $13
	inc e                                            ; $7949: $1c
	ld a, $30                                        ; $794a: $3e $30
	jr c, jr_011_794f                                ; $794c: $38 $01

	ld a, h                                          ; $794e: $7c

jr_011_794f:
	ld b, c                                          ; $794f: $41
	sbc [hl]                                         ; $7950: $9e
	rrca                                             ; $7951: $0f
	ld [hl], d                                       ; $7952: $72
	and e                                            ; $7953: $a3
	sbc $01                                          ; $7954: $de $01
	sbc l                                            ; $7956: $9d
	ld [bc], a                                       ; $7957: $02
	inc bc                                           ; $7958: $03
	db $dd                                           ; $7959: $dd
	ld [bc], a                                       ; $795a: $02
	sbc h                                            ; $795b: $9c
	inc b                                            ; $795c: $04
	ld b, $30                                        ; $795d: $06 $30
	ld a, c                                          ; $795f: $79
	ld [hl+], a                                      ; $7960: $22
	ld d, [hl]                                       ; $7961: $56
	ret nz                                           ; $7962: $c0

jr_011_7963:
	rst SubAFromDE                                          ; $7963: $df
	ldh a, [$7f]                                     ; $7964: $f0 $7f
	pop af                                           ; $7966: $f1
	ld a, e                                          ; $7967: $7b
	ret c                                            ; $7968: $d8

	sbc h                                            ; $7969: $9c
	inc bc                                           ; $796a: $03
	ccf                                              ; $796b: $3f
	rra                                              ; $796c: $1f
	halt                                             ; $796d: $76
	or $ff                                           ; $796e: $f6 $ff
	sbc e                                            ; $7970: $9b
	rst SubAFromDE                                          ; $7971: $df
	adc a                                            ; $7972: $8f
	add a                                            ; $7973: $87
	inc bc                                           ; $7974: $03
	ld a, c                                          ; $7975: $79
	ld a, [hl+]                                      ; $7976: $2a
	sbc c                                            ; $7977: $99
	ret nz                                           ; $7978: $c0

	db $fc                                           ; $7979: $fc
	ld hl, sp+$3f                                    ; $797a: $f8 $3f
	ccf                                              ; $797c: $3f
	rrca                                             ; $797d: $0f
	ld a, e                                          ; $797e: $7b
	jp nz, $03db                                     ; $797f: $c2 $db $03

	ld l, [hl]                                       ; $7982: $6e
	xor $fd                                          ; $7983: $ee $fd
	ld a, [hl-]                                      ; $7985: $3a
	ld bc, $97ff                                     ; $7986: $01 $ff $97
	inc bc                                           ; $7989: $03
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	ld b, $07                                        ; $798c: $06 $07
	ld [$0a00], sp                                   ; $798e: $08 $00 $0a
	jp hl                                            ; $7991: $e9


	sub [hl]                                         ; $7992: $96
	inc hl                                           ; $7993: $23
	inc h                                            ; $7994: $24
	dec h                                            ; $7995: $25
	ld h, $27                                        ; $7996: $26 $27
	jr z, jr_011_79c3                                ; $7998: $28 $29

	ld a, [hl+]                                      ; $799a: $2a
	dec hl                                           ; $799b: $2b
	db $eb                                           ; $799c: $eb
	sub l                                            ; $799d: $95
	ld b, d                                          ; $799e: $42
	ld b, e                                          ; $799f: $43
	ld b, h                                          ; $79a0: $44
	ld b, l                                          ; $79a1: $45
	ld b, [hl]                                       ; $79a2: $46
	ld b, a                                          ; $79a3: $47
	ld c, b                                          ; $79a4: $48
	ld c, c                                          ; $79a5: $49
	ld c, d                                          ; $79a6: $4a
	ld c, e                                          ; $79a7: $4b
	ld sp, hl                                        ; $79a8: $f9
	sbc [hl]                                         ; $79a9: $9e
	ld d, h                                          ; $79aa: $54
	push af                                          ; $79ab: $f5
	adc e                                            ; $79ac: $8b
	ld h, c                                          ; $79ad: $61
	ld h, d                                          ; $79ae: $62
	ld h, e                                          ; $79af: $63
	ld h, h                                          ; $79b0: $64
	ld h, l                                          ; $79b1: $65
	ld h, [hl]                                       ; $79b2: $66
	ld h, a                                          ; $79b3: $67
	ld l, b                                          ; $79b4: $68
	ld l, c                                          ; $79b5: $69
	ld l, d                                          ; $79b6: $6a
	ld l, e                                          ; $79b7: $6b
	ld l, h                                          ; $79b8: $6c
	ld l, l                                          ; $79b9: $6d
	ld l, [hl]                                       ; $79ba: $6e
	ld l, [hl]                                       ; $79bb: $6e
	ld [hl], b                                       ; $79bc: $70
	ld [hl], c                                       ; $79bd: $71
	ld [hl], d                                       ; $79be: $72
	ld [hl], e                                       ; $79bf: $73
	ld [hl], h                                       ; $79c0: $74
	di                                               ; $79c1: $f3
	adc a                                            ; $79c2: $8f

jr_011_79c3:
	add e                                            ; $79c3: $83
	add h                                            ; $79c4: $84
	add l                                            ; $79c5: $85
	add [hl]                                         ; $79c6: $86
	add a                                            ; $79c7: $87
	adc b                                            ; $79c8: $88
	adc c                                            ; $79c9: $89
	adc d                                            ; $79ca: $8a
	adc e                                            ; $79cb: $8b
	adc h                                            ; $79cc: $8c
	adc l                                            ; $79cd: $8d
	adc b                                            ; $79ce: $88
	adc a                                            ; $79cf: $8f
	sub b                                            ; $79d0: $90
	sub c                                            ; $79d1: $91
	sub d                                            ; $79d2: $92
	pop af                                           ; $79d3: $f1
	adc [hl]                                         ; $79d4: $8e
	and e                                            ; $79d5: $a3
	and h                                            ; $79d6: $a4
	and l                                            ; $79d7: $a5
	and [hl]                                         ; $79d8: $a6
	and a                                            ; $79d9: $a7
	xor b                                            ; $79da: $a8
	xor c                                            ; $79db: $a9
	xor d                                            ; $79dc: $aa
	xor e                                            ; $79dd: $ab
	xor h                                            ; $79de: $ac
	xor l                                            ; $79df: $ad
	xor [hl]                                         ; $79e0: $ae
	xor a                                            ; $79e1: $af
	or b                                             ; $79e2: $b0
	or c                                             ; $79e3: $b1
	or d                                             ; $79e4: $b2
	or e                                             ; $79e5: $b3
	pop af                                           ; $79e6: $f1
	adc a                                            ; $79e7: $8f
	call nz, $c6c5                                   ; $79e8: $c4 $c5 $c6
	rst JumpTable                                          ; $79eb: $c7
	ret z                                            ; $79ec: $c8

	ret                                              ; $79ed: $c9


	jp z, $cccb                                      ; $79ee: $ca $cb $cc

	call $cfce                                       ; $79f1: $cd $ce $cf
	ret nc                                           ; $79f4: $d0

	pop de                                           ; $79f5: $d1
	jp nc, $f4d3                                     ; $79f6: $d2 $d3 $f4

	adc h                                            ; $79f9: $8c
	xor l                                            ; $79fa: $ad
	ldh [c], a                                       ; $79fb: $e2
	db $e3                                           ; $79fc: $e3
	db $e4                                           ; $79fd: $e4
	push hl                                          ; $79fe: $e5
	and $e7                                          ; $79ff: $e6 $e7
	add sp, -$17                                     ; $7a01: $e8 $e9
	ld [$eceb], a                                    ; $7a03: $ea $eb $ec
	db $ed                                           ; $7a06: $ed
	xor $ef                                          ; $7a07: $ee $ef
	ldh a, [$f1]                                     ; $7a09: $f0 $f1
	ldh a, [c]                                       ; $7a0b: $f2
	di                                               ; $7a0c: $f3
	db $f4                                           ; $7a0d: $f4
	adc l                                            ; $7a0e: $8d
	db $fd                                           ; $7a0f: $fd
	db $fc                                           ; $7a10: $fc
	ei                                               ; $7a11: $fb
	ld a, [rRAMG]                                    ; $7a12: $fa $00 $00
	ld sp, hl                                        ; $7a15: $f9
	ld hl, sp-$09                                    ; $7a16: $f8 $f7
	or $f5                                           ; $7a18: $f6 $f5
	db $f4                                           ; $7a1a: $f4
	pop hl                                           ; $7a1b: $e1
	ldh [$df], a                                     ; $7a1c: $e0 $df
	sbc $dd                                          ; $7a1e: $de $dd
	call c, $94ed                                    ; $7a20: $dc $ed $94
	db $db                                           ; $7a23: $db
	jp c, $d8d9                                      ; $7a24: $da $d9 $d8

	rst SubAFromHL                                          ; $7a27: $d7
	sub $d5                                          ; $7a28: $d6 $d5
	call nc, $c2c3                                   ; $7a2a: $d4 $c3 $c2
	pop bc                                           ; $7a2d: $c1
	pop af                                           ; $7a2e: $f1
	adc [hl]                                         ; $7a2f: $8e
	ret nz                                           ; $7a30: $c0

	cp a                                             ; $7a31: $bf
	cp [hl]                                          ; $7a32: $be
	cp l                                             ; $7a33: $bd
	cp h                                             ; $7a34: $bc
	cp e                                             ; $7a35: $bb
	cp d                                             ; $7a36: $ba
	cp c                                             ; $7a37: $b9
	cp b                                             ; $7a38: $b8
	or a                                             ; $7a39: $b7
	or [hl]                                          ; $7a3a: $b6
	or l                                             ; $7a3b: $b5
	or h                                             ; $7a3c: $b4
	and d                                            ; $7a3d: $a2
	and c                                            ; $7a3e: $a1
	and b                                            ; $7a3f: $a0
	sbc a                                            ; $7a40: $9f
	ldh a, [c]                                       ; $7a41: $f2
	adc [hl]                                         ; $7a42: $8e
	sbc [hl]                                         ; $7a43: $9e
	sbc l                                            ; $7a44: $9d
	sbc h                                            ; $7a45: $9c
	sbc e                                            ; $7a46: $9b
	sbc d                                            ; $7a47: $9a
	sbc c                                            ; $7a48: $99
	sbc b                                            ; $7a49: $98
	sub a                                            ; $7a4a: $97
	sub [hl]                                         ; $7a4b: $96
	sub l                                            ; $7a4c: $95
	sub h                                            ; $7a4d: $94
	sub e                                            ; $7a4e: $93
	adc [hl]                                         ; $7a4f: $8e
	add d                                            ; $7a50: $82
	add c                                            ; $7a51: $81
	add b                                            ; $7a52: $80
	ld a, a                                          ; $7a53: $7f
	db $ed                                           ; $7a54: $ed
	sbc [hl]                                         ; $7a55: $9e
	ld a, [hl]                                       ; $7a56: $7e
	rst SubAFromHL                                          ; $7a57: $d7
	ld a, l                                          ; $7a58: $7d
	sbc [hl]                                         ; $7a59: $9e
	ld a, h                                          ; $7a5a: $7c
	di                                               ; $7a5b: $f3
	adc h                                            ; $7a5c: $8c
	ld a, e                                          ; $7a5d: $7b
	ld a, d                                          ; $7a5e: $7a
	ld a, c                                          ; $7a5f: $79
	ld a, e                                          ; $7a60: $7b
	ld a, b                                          ; $7a61: $78
	ld [hl], a                                       ; $7a62: $77
	halt                                             ; $7a63: $76
	ld [hl], l                                       ; $7a64: $75
	nop                                              ; $7a65: $00
	ld l, a                                          ; $7a66: $6f
	ld h, b                                          ; $7a67: $60
	xor l                                            ; $7a68: $ad
	ld e, a                                          ; $7a69: $5f
	ld e, [hl]                                       ; $7a6a: $5e
	ld e, l                                          ; $7a6b: $5d
	ld e, h                                          ; $7a6c: $5c
	nop                                              ; $7a6d: $00
	xor l                                            ; $7a6e: $ad
	ld e, h                                          ; $7a6f: $5c
	db $f4                                           ; $7a70: $f4
	adc e                                            ; $7a71: $8b
	ld e, e                                          ; $7a72: $5b
	ld e, d                                          ; $7a73: $5a
	ld e, c                                          ; $7a74: $59
	ld e, b                                          ; $7a75: $58
	ld d, a                                          ; $7a76: $57
	ld d, [hl]                                       ; $7a77: $56
	ld d, l                                          ; $7a78: $55
	ld d, e                                          ; $7a79: $53
	ld d, d                                          ; $7a7a: $52
	ld d, c                                          ; $7a7b: $51
	ld d, b                                          ; $7a7c: $50
	ld c, a                                          ; $7a7d: $4f
	ld c, [hl]                                       ; $7a7e: $4e
	ld c, l                                          ; $7a7f: $4d
	ld c, h                                          ; $7a80: $4c
	ld b, c                                          ; $7a81: $41
	ld b, b                                          ; $7a82: $40
	ccf                                              ; $7a83: $3f
	ld a, $3d                                        ; $7a84: $3e $3d
	push af                                          ; $7a86: $f5
	sub h                                            ; $7a87: $94
	inc a                                            ; $7a88: $3c
	dec sp                                           ; $7a89: $3b
	ld a, [hl-]                                      ; $7a8a: $3a
	add hl, sp                                       ; $7a8b: $39
	jr c, jr_011_7ac5                                ; $7a8c: $38 $37

	ld [hl], $35                                     ; $7a8e: $36 $35
	inc [hl]                                         ; $7a90: $34
	inc [hl]                                         ; $7a91: $34
	inc sp                                           ; $7a92: $33
	db $eb                                           ; $7a93: $eb
	adc l                                            ; $7a94: $8d
	ld [hl-], a                                      ; $7a95: $32
	ld sp, $2f30                                     ; $7a96: $31 $30 $2f
	ld l, $2d                                        ; $7a99: $2e $2d

jr_011_7a9b:
	inc l                                            ; $7a9b: $2c
	ld [hl+], a                                      ; $7a9c: $22
	ld hl, $1f20                                     ; $7a9d: $21 $20 $1f
	ld e, $1d                                        ; $7aa0: $1e $1d
	inc e                                            ; $7aa2: $1c
	dec de                                           ; $7aa3: $1b
	ld a, [de]                                       ; $7aa4: $1a
	add hl, de                                       ; $7aa5: $19
	jr jr_011_7a9b                                   ; $7aa6: $18 $f3

	adc l                                            ; $7aa8: $8d
	rla                                              ; $7aa9: $17
	ld d, $15                                        ; $7aaa: $16 $15
	inc d                                            ; $7aac: $14
	inc de                                           ; $7aad: $13
	ld [de], a                                       ; $7aae: $12
	ld de, $0f10                                     ; $7aaf: $11 $10 $0f
	ld c, $0d                                        ; $7ab2: $0e $0d
	inc c                                            ; $7ab4: $0c
	dec bc                                           ; $7ab5: $0b
	add hl, bc                                       ; $7ab6: $09
	dec b                                            ; $7ab7: $05
	inc b                                            ; $7ab8: $04
	ld [bc], a                                       ; $7ab9: $02
	ld bc, $00e0                                     ; $7aba: $01 $e0 $00
	ldh [$35], a                                     ; $7abd: $e0 $35
	dec h                                            ; $7abf: $25
	nop                                              ; $7ac0: $00
	ldh [$c1], a                                     ; $7ac1: $e0 $c1
	rst SubAFromHL                                          ; $7ac3: $d7
	ld [hl+], a                                      ; $7ac4: $22

jr_011_7ac5:
	inc bc                                           ; $7ac5: $03
	ldh a, [$67]                                     ; $7ac6: $f0 $67
	ldh a, [$da]                                     ; $7ac8: $f0 $da
	inc sp                                           ; $7aca: $33
	inc bc                                           ; $7acb: $03
	ldh a, [$fc]                                     ; $7acc: $f0 $fc
	rst SubAFromHL                                          ; $7ace: $d7
	ld [hl], a                                       ; $7acf: $77
	inc bc                                           ; $7ad0: $03
	ldh a, [$fc]                                     ; $7ad1: $f0 $fc
	rst SubAFromHL                                          ; $7ad3: $d7
	ld d, l                                          ; $7ad4: $55

jr_011_7ad5:
	cpl                                              ; $7ad5: $2f
	ldh a, [rBGP]                                    ; $7ad6: $f0 $47
	ld [hl], b                                       ; $7ad8: $70
	rst SubAFromHL                                          ; $7ad9: $d7
	ld b, h                                          ; $7ada: $44
	inc bc                                           ; $7adb: $03
	ldh a, [$33]                                     ; $7adc: $f0 $33

jr_011_7ade:
	ldh a, [$f1]                                     ; $7ade: $f0 $f1

jr_011_7ae0:
	inc bc                                           ; $7ae0: $03
	ret nc                                           ; $7ae1: $d0

	ldh [$72], a                                     ; $7ae2: $e0 $72
	sub h                                            ; $7ae4: $94
	ld bc, $dde5                                     ; $7ae5: $01 $e5 $dd
	ld bc, $dff7                                     ; $7ae8: $01 $f7 $df
	push bc                                          ; $7aeb: $c5
	sbc e                                            ; $7aec: $9b
	ld a, [hl+]                                      ; $7aed: $2a
	rst AddAOntoHL                                          ; $7aee: $ef
	ld a, [hl+]                                      ; $7aef: $2a
	rst AddAOntoHL                                          ; $7af0: $ef
	push af                                          ; $7af1: $f5
	db $dd                                           ; $7af2: $dd
	add b                                            ; $7af3: $80
	sbc h                                            ; $7af4: $9c
	ldh a, [rP1]                                     ; $7af5: $f0 $00
	add b                                            ; $7af7: $80
	ld [$c0df], a                                    ; $7af8: $ea $df $c0
	sbc e                                            ; $7afb: $9b
	jr nz, jr_011_7ade                               ; $7afc: $20 $e0

	jr nz, jr_011_7ae0                               ; $7afe: $20 $e0

	push af                                          ; $7b00: $f5
	rst SubAFromDE                                          ; $7b01: $df
	rrca                                             ; $7b02: $0f
	sbc l                                            ; $7b03: $9d
	jr nc, jr_011_7b45                               ; $7b04: $30 $3f

	push af                                          ; $7b06: $f5
	rst SubAFromDE                                          ; $7b07: $df
	pop bc                                           ; $7b08: $c1
	sbc l                                            ; $7b09: $9d
	ld hl, $57e1                                     ; $7b0a: $21 $e1 $57
	ret nc                                           ; $7b0d: $d0

	sub [hl]                                         ; $7b0e: $96

Jump_011_7b0f:
	inc a                                            ; $7b0f: $3c
	db $fc                                           ; $7b10: $fc
	ld [bc], a                                       ; $7b11: $02
	cp $ff                                           ; $7b12: $fe $ff
	nop                                              ; $7b14: $00
	rst $38                                          ; $7b15: $ff
	nop                                              ; $7b16: $00
	db $fc                                           ; $7b17: $fc
	dec hl                                           ; $7b18: $2b
	ld [hl], d                                       ; $7b19: $72
	sbc e                                            ; $7b1a: $9b
	ld [bc], a                                       ; $7b1b: $02
	inc bc                                           ; $7b1c: $03
	ld [bc], a                                       ; $7b1d: $02
	inc bc                                           ; $7b1e: $03
	ld d, a                                          ; $7b1f: $57
	add d                                            ; $7b20: $82
	sbc e                                            ; $7b21: $9b
	ld b, b                                          ; $7b22: $40
	ret nz                                           ; $7b23: $c0

	ld b, b                                          ; $7b24: $40
	ret nz                                           ; $7b25: $c0

	ld b, a                                          ; $7b26: $47
	call c, $dff7                                    ; $7b27: $dc $f7 $df
	inc c                                            ; $7b2a: $0c
	sbc e                                            ; $7b2b: $9b
	ld [de], a                                       ; $7b2c: $12
	ld e, $f3                                        ; $7b2d: $1e $f3
	rst $38                                          ; $7b2f: $ff
	push af                                          ; $7b30: $f5
	rst SubAFromDE                                          ; $7b31: $df
	inc bc                                           ; $7b32: $03
	sbc l                                            ; $7b33: $9d
	inc e                                            ; $7b34: $1c
	rra                                              ; $7b35: $1f
	rst FarCall                                          ; $7b36: $f7
	rst SubAFromDE                                          ; $7b37: $df
	jr nc, jr_011_7ad5                               ; $7b38: $30 $9b

	ret z                                            ; $7b3a: $c8

	ld hl, sp+$49                                    ; $7b3b: $f8 $49
	ld sp, hl                                        ; $7b3d: $f9
	push af                                          ; $7b3e: $f5
	rst SubAFromDE                                          ; $7b3f: $df
	ldh [$9d], a                                     ; $7b40: $e0 $9d
	db $10                                           ; $7b42: $10
	ldh a, [rPCM34]                                  ; $7b43: $f0 $77

jr_011_7b45:
	add b                                            ; $7b45: $80
	ld d, a                                          ; $7b46: $57
	res 3, c                                         ; $7b47: $cb $99
	xor d                                            ; $7b49: $aa
	ld d, l                                          ; $7b4a: $55
	ld d, a                                          ; $7b4b: $57
	xor b                                            ; $7b4c: $a8
	cp a                                             ; $7b4d: $bf
	ld b, b                                          ; $7b4e: $40
	ld d, a                                          ; $7b4f: $57
	ldh a, [$9b]                                     ; $7b50: $f0 $9b
	ld d, l                                          ; $7b52: $55
	xor d                                            ; $7b53: $aa
	xor d                                            ; $7b54: $aa
	ld d, l                                          ; $7b55: $55
	rst FarCall                                          ; $7b56: $f7
	sbc e                                            ; $7b57: $9b
	ld [bc], a                                       ; $7b58: $02
	db $fd                                           ; $7b59: $fd
	dec d                                            ; $7b5a: $15
	ld [$f057], a                                    ; $7b5b: $ea $57 $f0
	ld [hl], e                                       ; $7b5e: $73
	pop bc                                           ; $7b5f: $c1
	ld d, a                                          ; $7b60: $57
	cp a                                             ; $7b61: $bf
	ld a, a                                          ; $7b62: $7f
	ld c, $4f                                        ; $7b63: $0e $4f
	ldh a, [$7b]                                     ; $7b65: $f0 $7b
	ld e, e                                          ; $7b67: $5b
	ld a, [hl]                                       ; $7b68: $7e
	rst FarCall                                          ; $7b69: $f7
	ld d, e                                          ; $7b6a: $53
	ld a, [hl-]                                      ; $7b6b: $3a
	sbc $40                                          ; $7b6c: $de $40
	rst SubAFromDE                                          ; $7b6e: $df
	add b                                            ; $7b6f: $80
	ld sp, hl                                        ; $7b70: $f9
	adc a                                            ; $7b71: $8f
	ld sp, hl                                        ; $7b72: $f9
	ret                                              ; $7b73: $c9


	ld [hl-], a                                      ; $7b74: $32
	ld [hl-], a                                      ; $7b75: $32
	inc b                                            ; $7b76: $04
	inc b                                            ; $7b77: $04
	jr jr_011_7b92                                   ; $7b78: $18 $18

	rst $38                                          ; $7b7a: $ff
	pop hl                                           ; $7b7b: $e1

jr_011_7b7c:
	cp $02                                           ; $7b7c: $fe $02
	inc c                                            ; $7b7e: $0c
	db $fc                                           ; $7b7f: $fc
	ldh a, [$f0]                                     ; $7b80: $f0 $f0
	ld [hl], e                                       ; $7b82: $73
	ld l, d                                          ; $7b83: $6a
	add b                                            ; $7b84: $80
	db $10                                           ; $7b85: $10
	sub b                                            ; $7b86: $90
	sub b                                            ; $7b87: $90
	db $10                                           ; $7b88: $10
	db $10                                           ; $7b89: $10
	pop af                                           ; $7b8a: $f1
	sub c                                            ; $7b8b: $91
	ld de, $e0f1                                     ; $7b8c: $11 $f1 $e0
	ldh [$80], a                                     ; $7b8f: $e0 $80
	add b                                            ; $7b91: $80

jr_011_7b92:
	ld b, e                                          ; $7b92: $43
	ld b, e                                          ; $7b93: $43
	ld b, h                                          ; $7b94: $44
	ld b, h                                          ; $7b95: $44
	add e                                            ; $7b96: $83
	add e                                            ; $7b97: $83
	ld [bc], a                                       ; $7b98: $02
	ld [bc], a                                       ; $7b99: $02
	rlca                                             ; $7b9a: $07
	rlca                                             ; $7b9b: $07
	inc b                                            ; $7b9c: $04
	rlca                                             ; $7b9d: $07
	inc bc                                           ; $7b9e: $03
	inc bc                                           ; $7b9f: $03
	ld sp, hl                                        ; $7ba0: $f9
	adc c                                            ; $7ba1: $89
	ld a, [$dffa]                                    ; $7ba2: $fa $fa $df
	inc h                                            ; $7ba5: $24
	rst SubAFromDE                                          ; $7ba6: $df
	ret z                                            ; $7ba7: $c8

	adc h                                            ; $7ba8: $8c
	ld a, a                                          ; $7ba9: $7f
	ld [hl], c                                       ; $7baa: $71
	cp $82                                           ; $7bab: $fe $82
	adc h                                            ; $7bad: $8c
	db $fc                                           ; $7bae: $fc
	ld [hl], b                                       ; $7baf: $70
	ld [hl], b                                       ; $7bb0: $70
	ldh a, [$30]                                     ; $7bb1: $f0 $30
	ld de, $9211                                     ; $7bb3: $11 $11 $92
	sub d                                            ; $7bb6: $92
	ld de, $e011                                     ; $7bb7: $11 $11 $e0
	jr nz, jr_011_7b7c                               ; $7bba: $20 $c0

	ld [hl], e                                       ; $7bbc: $73
	xor d                                            ; $7bbd: $aa
	adc [hl]                                         ; $7bbe: $8e
	cp a                                             ; $7bbf: $bf
	and b                                            ; $7bc0: $a0
	inc hl                                           ; $7bc1: $23
	inc hl                                           ; $7bc2: $23
	inc e                                            ; $7bc3: $1c
	inc e                                            ; $7bc4: $1c
	ld bc, $0701                                     ; $7bc5: $01 $01 $07
	ld b, $1f                                        ; $7bc8: $06 $1f
	jr @+$13                                         ; $7bca: $18 $11

	rra                                              ; $7bcc: $1f
	ld c, $0e                                        ; $7bcd: $0e $0e
	rst $38                                          ; $7bcf: $ff
	ld a, d                                          ; $7bd0: $7a
	ld a, [$c2df]                                    ; $7bd1: $fa $df $c2
	rst SubAFromDE                                          ; $7bd4: $df
	add d                                            ; $7bd5: $82
	sub [hl]                                         ; $7bd6: $96
	cp $32                                           ; $7bd7: $fe $32
	cp $72                                           ; $7bd9: $fe $72
	jp nc, $8cde                                     ; $7bdb: $d2 $de $8c

	adc h                                            ; $7bde: $8c
	inc bc                                           ; $7bdf: $03
	sbc $02                                          ; $7be0: $de $02
	halt                                             ; $7be2: $76
	jp z, $01df                                      ; $7be3: $ca $df $01

	ld a, d                                          ; $7be6: $7a
	and e                                            ; $7be7: $a3
	sbc [hl]                                         ; $7be8: $9e
	inc bc                                           ; $7be9: $03
	db $dd                                           ; $7bea: $dd
	ld bc, $02dd                                     ; $7beb: $01 $dd $02
	ld l, a                                          ; $7bee: $6f
	or $73                                           ; $7bef: $f6 $73
	ld sp, $4e7a                                     ; $7bf1: $31 $7a $4e
	rst SubAFromDE                                          ; $7bf4: $df
	ld [hl], e                                       ; $7bf5: $73
	rst SubAFromDE                                          ; $7bf6: $df
	jp nc, $fe8d                                     ; $7bf7: $d2 $8d $fe

	ld [hl+], a                                      ; $7bfa: $22
	db $fc                                           ; $7bfb: $fc
	inc b                                            ; $7bfc: $04
	adc b                                            ; $7bfd: $88
	ld hl, sp+$70                                    ; $7bfe: $f8 $70
	ld [hl], b                                       ; $7c00: $70
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	add e                                            ; $7c03: $83
	add e                                            ; $7c04: $83
	inc a                                            ; $7c05: $3c
	inc a                                            ; $7c06: $3c
	ld b, e                                          ; $7c07: $43
	ld b, e                                          ; $7c08: $43
	inc a                                            ; $7c09: $3c
	inc a                                            ; $7c0a: $3c
	ld l, d                                          ; $7c0b: $6a
	xor h                                            ; $7c0c: $ac
	sbc b                                            ; $7c0d: $98
	ld [bc], a                                       ; $7c0e: $02
	ldh [c], a                                       ; $7c0f: $e2
	ldh [c], a                                       ; $7c10: $e2
	ld [de], a                                       ; $7c11: $12
	ld [de], a                                       ; $7c12: $12
	db $e4                                           ; $7c13: $e4
	db $e4                                           ; $7c14: $e4
	ld a, e                                          ; $7c15: $7b
	ld [hl], e                                       ; $7c16: $73
	rst SubAFromDE                                          ; $7c17: $df
	inc b                                            ; $7c18: $04
	ld a, e                                          ; $7c19: $7b
	ld [hl], b                                       ; $7c1a: $70
	ld a, a                                          ; $7c1b: $7f
	adc d                                            ; $7c1c: $8a
	rst SubAFromDE                                          ; $7c1d: $df
	ld e, b                                          ; $7c1e: $58
	db $dd                                           ; $7c1f: $dd
	and h                                            ; $7c20: $a4
	add [hl]                                         ; $7c21: $86
	cp $f2                                           ; $7c22: $fe $f2
	cp $02                                           ; $7c24: $fe $02
	ld [hl], d                                       ; $7c26: $72
	cp $cc                                           ; $7c27: $fe $cc
	call z, Call_011_467f                            ; $7c29: $cc $7f $46
	add hl, sp                                       ; $7c2c: $39
	add hl, sp                                       ; $7c2d: $39
	ld [bc], a                                       ; $7c2e: $02
	ld [bc], a                                       ; $7c2f: $02
	inc c                                            ; $7c30: $0c
	inc c                                            ; $7c31: $0c
	ccf                                              ; $7c32: $3f
	jr nc, @+$81                                     ; $7c33: $30 $7f

	ld b, e                                          ; $7c35: $43
	ld b, h                                          ; $7c36: $44
	ld a, h                                          ; $7c37: $7c
	jr c, @+$3a                                      ; $7c38: $38 $38

	db $e3                                           ; $7c3a: $e3
	sbc $22                                          ; $7c3b: $de $22
	rst SubAFromDE                                          ; $7c3d: $df
	ld b, e                                          ; $7c3e: $43
	rst SubAFromDE                                          ; $7c3f: $df
	add b                                            ; $7c40: $80
	adc b                                            ; $7c41: $88
	ldh [$60], a                                     ; $7c42: $e0 $60
	pop af                                           ; $7c44: $f1
	ld de, $f191                                     ; $7c45: $11 $91 $f1
	ld h, b                                          ; $7c48: $60
	ld h, b                                          ; $7c49: $60
	rst $38                                          ; $7c4a: $ff
	ld sp, $6969                                     ; $7c4b: $31 $69 $69
	sub c                                            ; $7c4e: $91
	sub c                                            ; $7c4f: $91
	jp nz, Jump_011_7cc2                             ; $7c50: $c2 $c2 $7c

	ld b, h                                          ; $7c53: $44
	ld hl, sp-$78                                    ; $7c54: $f8 $88
	db $10                                           ; $7c56: $10
	ldh a, [$e0]                                     ; $7c57: $f0 $e0
	ld a, c                                          ; $7c59: $79
	ret nc                                           ; $7c5a: $d0

	rst SubAFromDE                                          ; $7c5b: $df
	inc bc                                           ; $7c5c: $03
	ccf                                              ; $7c5d: $3f
	and b                                            ; $7c5e: $a0
	rst SubAFromDE                                          ; $7c5f: $df
	ldh [c], a                                       ; $7c60: $e2
	ld a, e                                          ; $7c61: $7b
	ld h, d                                          ; $7c62: $62
	ld a, e                                          ; $7c63: $7b
	ld l, c                                          ; $7c64: $69
	rst SubAFromDE                                          ; $7c65: $df
	ld bc, $c87f                                     ; $7c66: $01 $7f $c8
	sub c                                            ; $7c69: $91
	jr c, @+$1a                                      ; $7c6a: $38 $18

	inc c                                            ; $7c6c: $0c
	inc c                                            ; $7c6d: $0c
	ld h, h                                          ; $7c6e: $64
	ld h, h                                          ; $7c6f: $64
	call c, $c05c                                    ; $7c70: $dc $5c $c0
	ld b, b                                          ; $7c73: $40
	ld b, b                                          ; $7c74: $40
	ret nz                                           ; $7c75: $c0

	add b                                            ; $7c76: $80
	add b                                            ; $7c77: $80
	ccf                                              ; $7c78: $3f
	nop                                              ; $7c79: $00
	adc h                                            ; $7c7a: $8c
	ld bc, $0302                                     ; $7c7b: $01 $02 $03
	ld bc, $0605                                     ; $7c7e: $01 $05 $06
	rlca                                             ; $7c81: $07
	ld [$0a00], sp                                   ; $7c82: $08 $00 $0a
	dec bc                                           ; $7c85: $0b
	inc c                                            ; $7c86: $0c
	dec c                                            ; $7c87: $0d
	ld c, $0f                                        ; $7c88: $0e $0f
	stop                                             ; $7c8a: $10 $00
	inc c                                            ; $7c8c: $0c
	db $10                                           ; $7c8d: $10
	db $f4                                           ; $7c8e: $f4

jr_011_7c8f:
	adc e                                            ; $7c8f: $8b
	ld hl, $2322                                     ; $7c90: $21 $22 $23
	inc h                                            ; $7c93: $24
	dec h                                            ; $7c94: $25
	ld h, $27                                        ; $7c95: $26 $27
	jr z, jr_011_7cc2                                ; $7c97: $28 $29

	ld a, [hl+]                                      ; $7c99: $2a
	dec hl                                           ; $7c9a: $2b
	jr nz, jr_011_7cbc                               ; $7c9b: $20 $1f

	ld e, $1d                                        ; $7c9d: $1e $1d
	inc e                                            ; $7c9f: $1c
	dec de                                           ; $7ca0: $1b
	ld a, [de]                                       ; $7ca1: $1a
	add hl, de                                       ; $7ca2: $19
	jr jr_011_7c8f                                   ; $7ca3: $18 $ea

	sub [hl]                                         ; $7ca5: $96
	rla                                              ; $7ca6: $17
	ld d, $15                                        ; $7ca7: $16 $15
	inc d                                            ; $7ca9: $14
	inc de                                           ; $7caa: $13
	ld [de], a                                       ; $7cab: $12
	ld de, $0409                                     ; $7cac: $11 $09 $04
	ldh [rP1], a                                     ; $7caf: $e0 $00
	ldh [rP1], a                                     ; $7cb1: $e0 $00
	ldh [rP1], a                                     ; $7cb3: $e0 $00
	ldh [$58], a                                     ; $7cb5: $e0 $58
	dec c                                            ; $7cb7: $0d
	nop                                              ; $7cb8: $00
	rst SubAFromHL                                          ; $7cb9: $d7
	ld d, l                                          ; $7cba: $55
	ei                                               ; $7cbb: $fb

jr_011_7cbc:
	ld b, a                                          ; $7cbc: $47
	ldh a, [$d7]                                     ; $7cbd: $f0 $d7
	ld [hl+], a                                      ; $7cbf: $22
	ldh [rP1], a                                     ; $7cc0: $e0 $00

Jump_011_7cc2:
jr_011_7cc2:
	ldh [$2c], a                                     ; $7cc2: $e0 $2c
	ld e, [hl]                                       ; $7cc4: $5e
	add c                                            ; $7cc5: $81
	pop af                                           ; $7cc6: $f1
	call c, $9e10                                    ; $7cc7: $dc $10 $9e
	ldh a, [$5f]                                     ; $7cca: $f0 $5f
	ld hl, sp-$04                                    ; $7ccc: $f8 $fc
	sbc [hl]                                         ; $7cce: $9e
	rst $38                                          ; $7ccf: $ff
	ld e, a                                          ; $7cd0: $5f
	ld hl, sp-$24                                    ; $7cd1: $f8 $dc
	ld [$0f9e], sp                                   ; $7cd3: $08 $9e $0f
	ld e, a                                          ; $7cd6: $5f
	ld hl, sp-$65                                    ; $7cd7: $f8 $9b
	cp c                                             ; $7cd9: $b9
	and l                                            ; $7cda: $a5
	ld b, d                                          ; $7cdb: $42
	inc a                                            ; $7cdc: $3c
	db $fd                                           ; $7cdd: $fd
	ld h, a                                          ; $7cde: $67
	ld hl, sp-$23                                    ; $7cdf: $f8 $dd
	xor $f5                                          ; $7ce1: $ee $f5
	rst SubAFromDE                                          ; $7ce3: $df

Call_011_7ce4:
	cp [hl]                                          ; $7ce4: $be
	rst SubAFromDE                                          ; $7ce5: $df
	sbc h                                            ; $7ce6: $9c
	push af                                          ; $7ce7: $f5
	sbc e                                            ; $7ce8: $9b
	di                                               ; $7ce9: $f3
	ei                                               ; $7cea: $fb
	dec sp                                           ; $7ceb: $3b
	dec sp                                           ; $7cec: $3b
	push af                                          ; $7ced: $f5
	sbc e                                            ; $7cee: $9b
	sbc a                                            ; $7cef: $9f
	cp a                                             ; $7cf0: $bf
	cp b                                             ; $7cf1: $b8
	cp b                                             ; $7cf2: $b8
	ld d, e                                          ; $7cf3: $53
	ldh a, [$9c]                                     ; $7cf4: $f0 $9c
	sbc a                                            ; $7cf6: $9f
	adc a                                            ; $7cf7: $8f
	adc a                                            ; $7cf8: $8f
	push af                                          ; $7cf9: $f5
	sbc e                                            ; $7cfa: $9b
	ld [hl], e                                       ; $7cfb: $73
	di                                               ; $7cfc: $f3
	db $e3                                           ; $7cfd: $e3
	add e                                            ; $7cfe: $83
	push af                                          ; $7cff: $f5
	sbc e                                            ; $7d00: $9b
	jr c, jr_011_7d3f                                ; $7d01: $38 $3c

	sbc a                                            ; $7d03: $9f
	rst JumpTable                                          ; $7d04: $c7
	push af                                          ; $7d05: $f5
	sbc e                                            ; $7d06: $9b
	cp $ef                                           ; $7d07: $fe $ef
	rst SubAFromBC                                          ; $7d09: $e7
	db $e3                                           ; $7d0a: $e3
	pop af                                           ; $7d0b: $f1
	sbc e                                            ; $7d0c: $9b
	inc a                                            ; $7d0d: $3c
	ld b, d                                          ; $7d0e: $42
	cp c                                             ; $7d0f: $b9
	and l                                            ; $7d10: $a5
	ld h, e                                          ; $7d11: $63
	ld hl, sp-$26                                    ; $7d12: $f8 $da
	xor $f8                                          ; $7d14: $ee $f8
	rst SubAFromDE                                          ; $7d16: $df
	pop bc                                           ; $7d17: $c1
	rst SubAFromDE                                          ; $7d18: $df
	db $e3                                           ; $7d19: $e3
	rst SubAFromDE                                          ; $7d1a: $df
	rst FarCall                                          ; $7d1b: $f7
	ld h, a                                          ; $7d1c: $67
	ld l, $ff                                        ; $7d1d: $2e $ff
	rst SubAFromDE                                          ; $7d1f: $df
	jp $e3de                                         ; $7d20: $c3 $de $e3


	ld a, a                                          ; $7d23: $7f

jr_011_7d24:
	sbc d                                            ; $7d24: $9a
	ld hl, sp-$21                                    ; $7d25: $f8 $df
	add a                                            ; $7d27: $87
	sbc d                                            ; $7d28: $9a
	adc a                                            ; $7d29: $8f
	adc [hl]                                         ; $7d2a: $8e
	adc [hl]                                         ; $7d2b: $8e
	sbc h                                            ; $7d2c: $9c
	sbc a                                            ; $7d2d: $9f
	ld hl, sp-$21                                    ; $7d2e: $f8 $df
	db $e3                                           ; $7d30: $e3
	rst SubAFromDE                                          ; $7d31: $df
	di                                               ; $7d32: $f3
	sbc h                                            ; $7d33: $9c
	ei                                               ; $7d34: $fb
	cp e                                             ; $7d35: $bb
	cp a                                             ; $7d36: $bf
	ld hl, sp-$65                                    ; $7d37: $f8 $9b
	add e                                            ; $7d39: $83
	db $e3                                           ; $7d3a: $e3
	di                                               ; $7d3b: $f3
	ld [hl], e                                       ; $7d3c: $73
	sbc $7b                                          ; $7d3d: $de $7b

jr_011_7d3f:
	ld hl, sp-$65                                    ; $7d3f: $f8 $9b
	rst JumpTable                                          ; $7d41: $c7
	sbc a                                            ; $7d42: $9f
	inc a                                            ; $7d43: $3c
	jr c, jr_011_7d24                                ; $7d44: $38 $de

	ld a, b                                          ; $7d46: $78
	ld e, a                                          ; $7d47: $5f
	ret nc                                           ; $7d48: $d0

	sbc c                                            ; $7d49: $99
	rst SubAFromBC                                          ; $7d4a: $e7
	rst AddAOntoHL                                          ; $7d4b: $ef
	cp $fc                                           ; $7d4c: $fe $fc
	ld hl, sp-$04                                    ; $7d4e: $f8 $fc
	pop af                                           ; $7d50: $f1
	sbc [hl]                                         ; $7d51: $9e
	add b                                            ; $7d52: $80
	ldh a, [c]                                       ; $7d53: $f2
	db $dd                                           ; $7d54: $dd
	rst $38                                          ; $7d55: $ff
	push af                                          ; $7d56: $f5
	db $dd                                           ; $7d57: $dd
	rra                                              ; $7d58: $1f
	push af                                          ; $7d59: $f5
	sbc h                                            ; $7d5a: $9c
	ldh a, [$e0]                                     ; $7d5b: $f0 $e0
	ldh [$de], a                                     ; $7d5d: $e0 $de
	ret nz                                           ; $7d5f: $c0

	rst SubAFromDE                                          ; $7d60: $df
	add b                                            ; $7d61: $80
	ld sp, hl                                        ; $7d62: $f9
	sbc d                                            ; $7d63: $9a
	ld bc, $0303                                     ; $7d64: $01 $03 $03
	rlca                                             ; $7d67: $07
	rlca                                             ; $7d68: $07
	sbc $0f                                          ; $7d69: $de $0f
	ld sp, hl                                        ; $7d6b: $f9
	sbc [hl]                                         ; $7d6c: $9e
	ret nz                                           ; $7d6d: $c0

	ld b, a                                          ; $7d6e: $47
	or b                                             ; $7d6f: $b0
	sbc [hl]                                         ; $7d70: $9e
	ld hl, sp+$4f                                    ; $7d71: $f8 $4f
	xor $dd                                          ; $7d73: $ee $dd
	rst $38                                          ; $7d75: $ff
	ld a, e                                          ; $7d76: $7b
	ld a, b                                          ; $7d77: $78
	ld h, [hl]                                       ; $7d78: $66
	ld a, $9d                                        ; $7d79: $3e $9d
	nop                                              ; $7d7b: $00
	ccf                                              ; $7d7c: $3f
	jp c, $dfff                                      ; $7d7d: $da $ff $df

	ldh [$fa], a                                     ; $7d80: $e0 $fa
	sbc d                                            ; $7d82: $9a
	inc bc                                           ; $7d83: $03
	rrca                                             ; $7d84: $0f
	rra                                              ; $7d85: $1f
	ccf                                              ; $7d86: $3f
	ld a, a                                          ; $7d87: $7f
	ld b, a                                          ; $7d88: $47
	ld a, d                                          ; $7d89: $7a
	ld a, a                                          ; $7d8a: $7f
	sbc c                                            ; $7d8b: $99
	ld c, e                                          ; $7d8c: $4b
	ldh a, [$9c]                                     ; $7d8d: $f0 $9c
	nop                                              ; $7d8f: $00
	rlca                                             ; $7d90: $07
	rlca                                             ; $7d91: $07
	db $eb                                           ; $7d92: $eb
	rst SubAFromDE                                          ; $7d93: $df
	ld hl, sp+$7f                                    ; $7d94: $f8 $7f
	ld e, [hl]                                       ; $7d96: $5e
	ld a, a                                          ; $7d97: $7f
	ld h, c                                          ; $7d98: $61
	ld c, a                                          ; $7d99: $4f
	sub b                                            ; $7d9a: $90
	sbc $ff                                          ; $7d9b: $de $ff
	ld e, e                                          ; $7d9d: $5b
	ld [$4e7f], sp                                   ; $7d9e: $08 $7f $4e
	ld a, a                                          ; $7da1: $7f
	ld d, b                                          ; $7da2: $50
	ld a, a                                          ; $7da3: $7f
	adc d                                            ; $7da4: $8a
	ldh a, [c]                                       ; $7da5: $f2
	sbc [hl]                                         ; $7da6: $9e
	ld bc, $f8de                                     ; $7da7: $01 $de $f8
	sbc $f0                                          ; $7daa: $de $f0
	ld h, e                                          ; $7dac: $63
	ld a, d                                          ; $7dad: $7a
	ld [hl], a                                       ; $7dae: $77
	db $ed                                           ; $7daf: $ed
	rst SubAFromDE                                          ; $7db0: $df
	ld bc, $03de                                     ; $7db1: $01 $de $03
	pop af                                           ; $7db4: $f1
	ld [hl], a                                       ; $7db5: $77
	ld b, c                                          ; $7db6: $41
	rst SubAFromDE                                          ; $7db7: $df
	cp $df                                           ; $7db8: $fe $df
	db $fc                                           ; $7dba: $fc
	ld c, e                                          ; $7dbb: $4b
	and b                                            ; $7dbc: $a0
	ld h, e                                          ; $7dbd: $63
	or b                                             ; $7dbe: $b0
	rst SubAFromDE                                          ; $7dbf: $df
	rra                                              ; $7dc0: $1f
	sbc $3f                                          ; $7dc1: $de $3f
	sbc $7f                                          ; $7dc3: $de $7f
	sbc [hl]                                         ; $7dc5: $9e
	ldh a, [$57]                                     ; $7dc6: $f0 $57
	ld a, e                                          ; $7dc8: $7b
	ld h, a                                          ; $7dc9: $67
	ld [$c85b], sp                                   ; $7dca: $08 $5b $c8
	ld a, e                                          ; $7dcd: $7b
	ld a, e                                          ; $7dce: $7b
	ld a, e                                          ; $7dcf: $7b
	sub $df                                          ; $7dd0: $d6 $df
	ld a, a                                          ; $7dd2: $7f
	db $ec                                           ; $7dd3: $ec
	sbc $80                                          ; $7dd4: $de $80
	ld b, e                                          ; $7dd6: $43
	adc e                                            ; $7dd7: $8b
	ld a, d                                          ; $7dd8: $7a
	call z, $b662                                    ; $7dd9: $cc $62 $b6
	rst SubAFromDE                                          ; $7ddc: $df
	rrca                                             ; $7ddd: $0f
	sbc [hl]                                         ; $7dde: $9e
	rra                                              ; $7ddf: $1f
	db $db                                           ; $7de0: $db
	rst $38                                          ; $7de1: $ff
	sbc [hl]                                         ; $7de2: $9e
	ld hl, sp-$08                                    ; $7de3: $f8 $f8
	ld [hl], d                                       ; $7de5: $72
	call $184b                                       ; $7de6: $cd $4b $18
	sbc [hl]                                         ; $7de9: $9e
	rrca                                             ; $7dea: $0f
	ld a, e                                          ; $7deb: $7b
	db $eb                                           ; $7dec: $eb
	di                                               ; $7ded: $f3
	ld a, a                                          ; $7dee: $7f
	ret                                              ; $7def: $c9


	ld h, d                                          ; $7df0: $62
	ld e, b                                          ; $7df1: $58
	ld a, d                                          ; $7df2: $7a
	inc a                                            ; $7df3: $3c
	ld d, a                                          ; $7df4: $57
	sbc e                                            ; $7df5: $9b
	jp c, $9eff                                      ; $7df6: $da $ff $9e

	cp $27                                           ; $7df9: $fe $27
	jr z, @-$20                                      ; $7dfb: $28 $de

	rlca                                             ; $7dfd: $07
	ld a, e                                          ; $7dfe: $7b
	adc d                                            ; $7dff: $8a
	ld a, a                                          ; $7e00: $7f
	ld c, l                                          ; $7e01: $4d
	ld d, b                                          ; $7e02: $50
	ld [hl], b                                       ; $7e03: $70
	sub $10                                          ; $7e04: $d6 $10
	ld [hl], l                                       ; $7e06: $75
	push hl                                          ; $7e07: $e5
	ld a, d                                          ; $7e08: $7a
	pop bc                                           ; $7e09: $c1
	ld e, d                                          ; $7e0a: $5a
	ret nz                                           ; $7e0b: $c0

	ld l, a                                          ; $7e0c: $6f
	cp l                                             ; $7e0d: $bd
	ld d, [hl]                                       ; $7e0e: $56
	sbc h                                            ; $7e0f: $9c
	ld d, [hl]                                       ; $7e10: $56
	or b                                             ; $7e11: $b0
	pop de                                           ; $7e12: $d1
	ld [$c27f], sp                                   ; $7e13: $08 $7f $c2
	ld l, e                                          ; $7e16: $6b
	cp b                                             ; $7e17: $b8
	ld h, a                                          ; $7e18: $67
	ld hl, sp+$58                                    ; $7e19: $f8 $58
	inc h                                            ; $7e1b: $24
	ld l, a                                          ; $7e1c: $6f
	inc c                                            ; $7e1d: $0c
	ld l, e                                          ; $7e1e: $6b
	ret c                                            ; $7e1f: $d8

	ld l, e                                          ; $7e20: $6b
	ld hl, sp+$7d                                    ; $7e21: $f8 $7d
	nop                                              ; $7e23: $00
	ldh [$9d], a                                     ; $7e24: $e0 $9d
	sbc [hl]                                         ; $7e26: $9e
	ld b, c                                          ; $7e27: $41
	rst SubAFromHL                                          ; $7e28: $d7
	ld b, b                                          ; $7e29: $40
	sbc [hl]                                         ; $7e2a: $9e
	ccf                                              ; $7e2b: $3f
	db $ed                                           ; $7e2c: $ed
	sbc [hl]                                         ; $7e2d: $9e
	ld a, $fd                                        ; $7e2e: $3e $fd
	sbc b                                            ; $7e30: $98
	dec a                                            ; $7e31: $3d
	inc a                                            ; $7e32: $3c
	inc a                                            ; $7e33: $3c
	dec sp                                           ; $7e34: $3b
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	ld a, [hl-]                                      ; $7e37: $3a
	inc hl                                           ; $7e38: $23
	ldh [$9b], a                                     ; $7e39: $e0 $9b
	add hl, sp                                       ; $7e3b: $39
	jr c, jr_011_7e75                                ; $7e3c: $38 $37

	ld [hl], $1f                                     ; $7e3e: $36 $1f
	ldh [$97], a                                     ; $7e40: $e0 $97
	dec [hl]                                         ; $7e42: $35
	inc [hl]                                         ; $7e43: $34
	inc sp                                           ; $7e44: $33
	ld [hl-], a                                      ; $7e45: $32
	ld sp, $3030                                     ; $7e46: $31 $30 $30
	cpl                                              ; $7e49: $2f
	dec hl                                           ; $7e4a: $2b
	ldh [$97], a                                     ; $7e4b: $e0 $97
	ld l, $38                                        ; $7e4d: $2e $38
	dec l                                            ; $7e4f: $2d
	inc l                                            ; $7e50: $2c
	nop                                              ; $7e51: $00
	dec hl                                           ; $7e52: $2b
	ld a, [hl+]                                      ; $7e53: $2a
	add hl, hl                                       ; $7e54: $29
	dec hl                                           ; $7e55: $2b
	ret nz                                           ; $7e56: $c0

	sub [hl]                                         ; $7e57: $96
	jr z, jr_011_7e92                                ; $7e58: $28 $38

	jr c, @+$29                                      ; $7e5a: $38 $27

	ld h, $25                                        ; $7e5c: $26 $25
	ld a, [hl+]                                      ; $7e5e: $2a
	inc h                                            ; $7e5f: $24
	inc hl                                           ; $7e60: $23
	dec hl                                           ; $7e61: $2b
	ldh [$97], a                                     ; $7e62: $e0 $97
	ld [hl+], a                                      ; $7e64: $22
	ld hl, $1f20                                     ; $7e65: $21 $20 $1f
	ld e, $1d                                        ; $7e68: $1e $1d
	inc e                                            ; $7e6a: $1c
	dec de                                           ; $7e6b: $1b
	rra                                              ; $7e6c: $1f
	add b                                            ; $7e6d: $80
	sbc e                                            ; $7e6e: $9b
	ld a, [de]                                       ; $7e6f: $1a
	ld a, [hl+]                                      ; $7e70: $2a
	ld a, [hl+]                                      ; $7e71: $2a
	add hl, de                                       ; $7e72: $19
	db $fd                                           ; $7e73: $fd
	daa                                              ; $7e74: $27

jr_011_7e75:
	ldh [$9b], a                                     ; $7e75: $e0 $9b
	jr jr_011_7e90                                   ; $7e77: $18 $17

	rla                                              ; $7e79: $17
	ld d, $1b                                        ; $7e7a: $16 $1b
	ldh [$97], a                                     ; $7e7c: $e0 $97
	dec d                                            ; $7e7e: $15
	inc d                                            ; $7e7f: $14
	inc de                                           ; $7e80: $13
	ld [de], a                                       ; $7e81: $12
	ld de, $0f10                                     ; $7e82: $11 $10 $0f
	ld c, $27                                        ; $7e85: $0e $27
	ldh [$97], a                                     ; $7e87: $e0 $97
	inc c                                            ; $7e89: $0c
	dec bc                                           ; $7e8a: $0b
	ld a, [bc]                                       ; $7e8b: $0a
	add hl, bc                                       ; $7e8c: $09
	ld [$0607], sp                                   ; $7e8d: $08 $07 $06

jr_011_7e90:
	dec b                                            ; $7e90: $05
	cpl                                              ; $7e91: $2f

jr_011_7e92:
	ldh [$9e], a                                     ; $7e92: $e0 $9e
	inc bc                                           ; $7e94: $03
	rst SubAFromHL                                          ; $7e95: $d7
	ld [bc], a                                       ; $7e96: $02
	sbc [hl]                                         ; $7e97: $9e
	ld bc, $00e0                                     ; $7e98: $01 $e0 $00
	ldh [rP1], a                                     ; $7e9b: $e0 $00
	ldh [$d3], a                                     ; $7e9d: $e0 $d3
	dec bc                                           ; $7e9f: $0b
	nop                                              ; $7ea0: $00
	ldh [$3e], a                                     ; $7ea1: $e0 $3e
	db $dd                                           ; $7ea3: $dd
	ld de, $f017                                     ; $7ea4: $11 $17 $f0
	ldh [rP1], a                                     ; $7ea7: $e0 $00
	push hl                                          ; $7ea9: $e5
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
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff
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

Jump_011_7f81:
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

Jump_011_7f94:
	rst $38                                          ; $7f94: $ff

Jump_011_7f95:
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

Call_011_7fb6:
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
	rst $38                                          ; $7ffe: $ff

Call_011_7fff:
	rst $38                                          ; $7fff: $ff
