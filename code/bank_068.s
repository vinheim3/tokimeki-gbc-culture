; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

	ld [$cefa], a                                    ; $4000: $ea $fa $ce
	cp $c6                                           ; $4003: $fe $c6
	cp $86                                           ; $4005: $fe $86
	cp $82                                           ; $4007: $fe $82
	add d                                            ; $4009: $82
	ld a, h                                          ; $400a: $7c
	ld a, l                                          ; $400b: $7d
	cp $fe                                           ; $400c: $fe $fe
	add c                                            ; $400e: $81
	db $ed                                           ; $400f: $ed
	ld e, $de                                        ; $4010: $1e $de
	ccf                                              ; $4012: $3f
	or e                                             ; $4013: $b3
	ld a, e                                          ; $4014: $7b
	jp nc, $9cf3                                     ; $4015: $d2 $f3 $9c

	ld e, a                                          ; $4018: $5f
	ret nc                                           ; $4019: $d0

	dec de                                           ; $401a: $1b
	ld a, [$fe1e]                                    ; $401b: $fa $1e $fe
	adc b                                            ; $401e: $88
	add b                                            ; $401f: $80
	cp a                                             ; $4020: $bf
	ret nz                                           ; $4021: $c0

	cp a                                             ; $4022: $bf
	ret nz                                           ; $4023: $c0

	rst $38                                          ; $4024: $ff
	ret nz                                           ; $4025: $c0

	ld e, a                                          ; $4026: $5f
	ld h, b                                          ; $4027: $60
	ld e, a                                          ; $4028: $5f
	ld h, b                                          ; $4029: $60
	cpl                                              ; $402a: $2f
	jr nc, jr_068_406c                               ; $402b: $30 $3f

	jr nc, jr_068_4066                               ; $402d: $30 $37

	jr c, jr_068_40a0                                ; $402f: $38 $6f

	ld l, h                                          ; $4031: $6c
	ld c, [hl]                                       ; $4032: $4e
	ld c, a                                          ; $4033: $4f
	ld e, c                                          ; $4034: $59
	ld e, c                                          ; $4035: $59
	db $dd                                           ; $4036: $dd
	db $10                                           ; $4037: $10
	rst SubAFromDE                                          ; $4038: $df
	ld [$01df], sp                                   ; $4039: $08 $df $01
	rst SubAFromDE                                          ; $403c: $df
	rlca                                             ; $403d: $07
	sbc d                                            ; $403e: $9a
	pop af                                           ; $403f: $f1
	ld h, b                                          ; $4040: $60
	pop af                                           ; $4041: $f1
	db $20, $b0                                      ; $4042: $20 $b0
	cp [hl]                                          ; $4044: $be
	sub b                                            ; $4045: $90
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	rst SubAFromDE                                          ; $4048: $df
	ld bc, $83b7                                     ; $4049: $01 $b7 $83
	add e                                            ; $404c: $83
	ld bc, $0000                                     ; $404d: $01 $00 $00
	nop                                              ; $4050: $00
	ld [$0e0c], sp                                   ; $4051: $08 $0c $0e
	db $fc                                           ; $4054: $fc
	add b                                            ; $4055: $80
	add a                                            ; $4056: $87
	sbc $83                                          ; $4057: $de $83
	sbc [hl]                                         ; $4059: $9e
	inc bc                                           ; $405a: $03
	inc bc                                           ; $405b: $03
	ccf                                              ; $405c: $3f
	ccf                                              ; $405d: $3f
	rst $38                                          ; $405e: $ff
	rst $38                                          ; $405f: $ff
	pop bc                                           ; $4060: $c1
	rst $38                                          ; $4061: $ff
	nop                                              ; $4062: $00
	or a                                             ; $4063: $b7
	ld a, b                                          ; $4064: $78
	ld a, l                                          ; $4065: $7d

jr_068_4066:
	cp $c7                                           ; $4066: $fe $c7
	rst SubAFromBC                                          ; $4068: $e7
	and $e7                                          ; $4069: $e6 $e7
	ld a, [hl-]                                      ; $406b: $3a

jr_068_406c:
	ccf                                              ; $406c: $3f
	dec bc                                           ; $406d: $0b
	ld a, $27                                        ; $406e: $3e $27
	inc l                                            ; $4070: $2c
	ld a, a                                          ; $4071: $7f
	jr jr_068_4077                                   ; $4072: $18 $03

	nop                                              ; $4074: $00
	sbc c                                            ; $4075: $99
	db $fc                                           ; $4076: $fc

jr_068_4077:
	inc bc                                           ; $4077: $03
	db $fc                                           ; $4078: $fc
	inc bc                                           ; $4079: $03
	ld hl, sp+$07                                    ; $407a: $f8 $07
	ld [hl], a                                       ; $407c: $77
	cp $89                                           ; $407d: $fe $89
	pop af                                           ; $407f: $f1
	rrca                                             ; $4080: $0f
	di                                               ; $4081: $f3
	rrca                                             ; $4082: $0f
	and $1e                                          ; $4083: $e6 $1e
	db $ec                                           ; $4085: $ec
	inc e                                            ; $4086: $1c
	call c, $bd3c                                    ; $4087: $dc $3c $bd
	ld a, l                                          ; $408a: $7d
	db $fc                                           ; $408b: $fc
	db $fc                                           ; $408c: $fc
	db $f4                                           ; $408d: $f4
	db $fc                                           ; $408e: $fc
	rst SubAFromBC                                          ; $408f: $e7
	rst $38                                          ; $4090: $ff
	add a                                            ; $4091: $87
	rst $38                                          ; $4092: $ff
	rlca                                             ; $4093: $07
	rst $38                                          ; $4094: $ff
	ld c, a                                          ; $4095: $4f
	ld h, b                                          ; $4096: $60
	sub e                                            ; $4097: $93
	rst $38                                          ; $4098: $ff
	add b                                            ; $4099: $80
	rst $38                                          ; $409a: $ff
	nop                                              ; $409b: $00
	rst $38                                          ; $409c: $ff
	ld e, $ff                                        ; $409d: $1e $ff
	ccf                                              ; $409f: $3f

jr_068_40a0:
	or c                                             ; $40a0: $b1
	ld a, a                                          ; $40a1: $7f
	rst SubAFromBC                                          ; $40a2: $e7
	rst $38                                          ; $40a3: $ff
	ld [hl], e                                       ; $40a4: $73
	ld h, b                                          ; $40a5: $60
	sbc [hl]                                         ; $40a6: $9e
	adc h                                            ; $40a7: $8c
	ld h, e                                          ; $40a8: $63
	and b                                            ; $40a9: $a0
	sbc [hl]                                         ; $40aa: $9e
	ld a, a                                          ; $40ab: $7f
	ld [hl], a                                       ; $40ac: $77
	and b                                            ; $40ad: $a0
	ld a, a                                          ; $40ae: $7f
	cp $95                                           ; $40af: $fe $95
	ei                                               ; $40b1: $fb
	ld a, h                                          ; $40b2: $7c
	db $fd                                           ; $40b3: $fd
	cp $c7                                           ; $40b4: $fe $c7
	rst $38                                          ; $40b6: $ff
	ld a, [de]                                       ; $40b7: $1a
	ld a, [hl]                                       ; $40b8: $7e
	dec bc                                           ; $40b9: $0b
	ld a, [hl]                                       ; $40ba: $7e
	ld l, a                                          ; $40bb: $6f
	and b                                            ; $40bc: $a0
	dec sp                                           ; $40bd: $3b
	ret nz                                           ; $40be: $c0

	cp a                                             ; $40bf: $bf
	ldh a, [$df]                                     ; $40c0: $f0 $df
	sub [hl]                                         ; $40c2: $96
	ld a, $e9                                        ; $40c3: $3e $e9
	ld a, e                                          ; $40c5: $7b
	ei                                               ; $40c6: $fb
	cp $fe                                           ; $40c7: $fe $fe
	inc e                                            ; $40c9: $1c
	cp $80                                           ; $40ca: $fe $80
	ld b, a                                          ; $40cc: $47
	ret nz                                           ; $40cd: $c0

	ld a, a                                          ; $40ce: $7f
	cp $94                                           ; $40cf: $fe $94
	add a                                            ; $40d1: $87
	nop                                              ; $40d2: $00
	dec e                                            ; $40d3: $1d
	ld a, [hl]                                       ; $40d4: $7e
	ei                                               ; $40d5: $fb
	ei                                               ; $40d6: $fb
	dec hl                                           ; $40d7: $2b
	ld a, [hl]                                       ; $40d8: $7e
	ccf                                              ; $40d9: $3f
	inc a                                            ; $40da: $3c
	ld a, a                                          ; $40db: $7f
	cp a                                             ; $40dc: $bf
	inc bc                                           ; $40dd: $03
	cp e                                             ; $40de: $bb
	dec sp                                           ; $40df: $3b
	ret nz                                           ; $40e0: $c0

	sbc [hl]                                         ; $40e1: $9e
	pop af                                           ; $40e2: $f1
	cp [hl]                                          ; $40e3: $be
	ldh [$fe], a                                     ; $40e4: $e0 $fe
	ldh a, [$9d]                                     ; $40e6: $f0 $9d
	ld h, c                                          ; $40e8: $61
	cp $7a                                           ; $40e9: $fe $7a
	ldh [$3f], a                                     ; $40eb: $e0 $3f
	ret nz                                           ; $40ed: $c0

	sbc [hl]                                         ; $40ee: $9e
	rst JumpTable                                          ; $40ef: $c7
	cp a                                             ; $40f0: $bf
	add e                                            ; $40f1: $83
	ccf                                              ; $40f2: $3f
	sbc d                                            ; $40f3: $9a
	ld bc, $4346                                     ; $40f4: $01 $46 $43
	dec a                                            ; $40f7: $3d
	ld a, $77                                        ; $40f8: $3e $77
	ret nz                                           ; $40fa: $c0

	adc a                                            ; $40fb: $8f
	pop af                                           ; $40fc: $f1
	ld c, $f1                                        ; $40fd: $0e $f1
	ld e, $eb                                        ; $40ff: $1e $eb
	inc e                                            ; $4101: $1c
	rst $38                                          ; $4102: $ff
	nop                                              ; $4103: $00
	cp $01                                           ; $4104: $fe $01
	ei                                               ; $4106: $fb
	ld d, $f3                                        ; $4107: $16 $f3
	inc c                                            ; $4109: $0c
	rst $38                                          ; $410a: $ff
	nop                                              ; $410b: $00
	ld [hl], a                                       ; $410c: $77
	db $fc                                           ; $410d: $fc
	sub e                                            ; $410e: $93
	ccf                                              ; $410f: $3f
	ret nz                                           ; $4110: $c0

	sbc $e1                                          ; $4111: $de $e1
	ld [hl], e                                       ; $4113: $73
	ld a, a                                          ; $4114: $7f
	rst GetHLinHL                                          ; $4115: $cf
	rst $38                                          ; $4116: $ff
	rst JumpTable                                          ; $4117: $c7
	rst $38                                          ; $4118: $ff
	ret c                                            ; $4119: $d8

	rst SubAFromBC                                          ; $411a: $e7
	ld e, a                                          ; $411b: $5f
	ldh [$9b], a                                     ; $411c: $e0 $9b
	jp c, $e137                                      ; $411e: $da $37 $e1

	ld e, $1f                                        ; $4121: $1e $1f
	ldh [$98], a                                     ; $4123: $e0 $98
	jp hl                                            ; $4125: $e9


	scf                                              ; $4126: $37
	di                                               ; $4127: $f3
	ccf                                              ; $4128: $3f
	sbc $3f                                          ; $4129: $de $3f
	db $e3                                           ; $412b: $e3
	ld a, e                                          ; $412c: $7b
	or $7f                                           ; $412d: $f6 $7f
	sbc $2f                                          ; $412f: $de $2f
	ldh [$9a], a                                     ; $4131: $e0 $9a
	rst FarCall                                          ; $4133: $f7

jr_068_4134:
	ccf                                              ; $4134: $3f
	di                                               ; $4135: $f3
	ld e, $ff                                        ; $4136: $1e $ff
	ld [hl], e                                       ; $4138: $73
	sbc [hl]                                         ; $4139: $9e
	ld d, a                                          ; $413a: $57
	ldh [$29], a                                     ; $413b: $e0 $29
	ld bc, $bb80                                     ; $413d: $01 $80 $bb
	ld [$cefa], a                                    ; $4140: $ea $fa $ce
	cp $c6                                           ; $4143: $fe $c6
	cp $86                                           ; $4145: $fe $86
	adc [hl]                                         ; $4147: $8e
	ldh a, [c]                                       ; $4148: $f2
	ld [hl], d                                       ; $4149: $72
	db $fc                                           ; $414a: $fc
	db $fd                                           ; $414b: $fd
	adc [hl]                                         ; $414c: $8e
	rst $38                                          ; $414d: $ff
	nop                                              ; $414e: $00
	db $ed                                           ; $414f: $ed
	ld e, $de                                        ; $4150: $1e $de
	ccf                                              ; $4152: $3f
	or e                                             ; $4153: $b3
	ld [hl], e                                       ; $4154: $73
	jp nc, $9cf7                                     ; $4155: $d2 $f7 $9c

	ld e, a                                          ; $4158: $5f
	ret nc                                           ; $4159: $d0

	dec de                                           ; $415a: $1b
	db $eb                                           ; $415b: $eb
	ld e, $fe                                        ; $415c: $1e $fe
	adc b                                            ; $415e: $88
	adc h                                            ; $415f: $8c
	sbc a                                            ; $4160: $9f
	ldh [$bf], a                                     ; $4161: $e0 $bf
	ret nz                                           ; $4163: $c0

	rst $38                                          ; $4164: $ff
	ret nz                                           ; $4165: $c0

	ld e, a                                          ; $4166: $5f
	ld h, b                                          ; $4167: $60
	ld e, a                                          ; $4168: $5f
	ld h, b                                          ; $4169: $60
	cpl                                              ; $416a: $2f
	jr nc, jr_068_41ac                               ; $416b: $30 $3f

	jr nc, jr_068_41a6                               ; $416d: $30 $37

	jr c, jr_068_41e0                                ; $416f: $38 $6f

	ld l, h                                          ; $4171: $6c
	ld c, [hl]                                       ; $4172: $4e
	ld c, a                                          ; $4173: $4f
	ld e, c                                          ; $4174: $59
	ld e, c                                          ; $4175: $59
	db $dd                                           ; $4176: $dd
	db $10                                           ; $4177: $10
	rst SubAFromDE                                          ; $4178: $df
	ld [$01df], sp                                   ; $4179: $08 $df $01
	rst SubAFromDE                                          ; $417c: $df
	rlca                                             ; $417d: $07
	sbc d                                            ; $417e: $9a
	pop af                                           ; $417f: $f1
	ld h, b                                          ; $4180: $60
	pop af                                           ; $4181: $f1
	jr nz, jr_068_4134                               ; $4182: $20 $b0

	or e                                             ; $4184: $b3
	sub b                                            ; $4185: $90
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	ld bc, $8383                                     ; $4188: $01 $83 $83
	ld bc, $0000                                     ; $418b: $01 $00 $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	ld [$fc0c], sp                                   ; $4190: $08 $0c $fc
	add b                                            ; $4193: $80
	add a                                            ; $4194: $87
	sbc $03                                          ; $4195: $de $03
	sub d                                            ; $4197: $92
	rrca                                             ; $4198: $0f
	rrca                                             ; $4199: $0f
	ccf                                              ; $419a: $3f
	ccf                                              ; $419b: $3f
	ld [hl], e                                       ; $419c: $73
	rst $38                                          ; $419d: $ff
	pop bc                                           ; $419e: $c1
	rst $38                                          ; $419f: $ff
	nop                                              ; $41a0: $00

jr_068_41a1:
	rst FarCall                                          ; $41a1: $f7
	jr c, jr_068_41a1                                ; $41a2: $38 $fd

	ld a, [hl]                                       ; $41a4: $7e
	rst JumpTable                                          ; $41a5: $c7

jr_068_41a6:
	rst SubAFromBC                                          ; $41a6: $e7

jr_068_41a7:
	ld h, $af                                        ; $41a7: $26 $af
	ld a, [hl-]                                      ; $41a9: $3a
	ld a, $0b                                        ; $41aa: $3e $0b

jr_068_41ac:
	ld a, $27                                        ; $41ac: $3e $27
	inc l                                            ; $41ae: $2c
	ld a, a                                          ; $41af: $7f
	jr jr_068_41b5                                   ; $41b0: $18 $03

	nop                                              ; $41b2: $00
	sbc c                                            ; $41b3: $99
	db $fc                                           ; $41b4: $fc

jr_068_41b5:
	inc bc                                           ; $41b5: $03
	db $fc                                           ; $41b6: $fc
	inc bc                                           ; $41b7: $03
	ld hl, sp+$07                                    ; $41b8: $f8 $07
	ld [hl], a                                       ; $41ba: $77
	cp $89                                           ; $41bb: $fe $89
	pop af                                           ; $41bd: $f1
	rrca                                             ; $41be: $0f
	di                                               ; $41bf: $f3
	rrca                                             ; $41c0: $0f
	and $1e                                          ; $41c1: $e6 $1e
	db $ec                                           ; $41c3: $ec
	inc e                                            ; $41c4: $1c
	call c, $bd3c                                    ; $41c5: $dc $3c $bd
	ld a, l                                          ; $41c8: $7d
	db $fc                                           ; $41c9: $fc
	db $fc                                           ; $41ca: $fc
	db $f4                                           ; $41cb: $f4
	db $fc                                           ; $41cc: $fc
	rst SubAFromBC                                          ; $41cd: $e7
	rst $38                                          ; $41ce: $ff
	add a                                            ; $41cf: $87
	rst $38                                          ; $41d0: $ff
	rlca                                             ; $41d1: $07
	rst $38                                          ; $41d2: $ff
	ld b, a                                          ; $41d3: $47
	ld h, b                                          ; $41d4: $60
	ld a, a                                          ; $41d5: $7f
	cp $97                                           ; $41d6: $fe $97
	di                                               ; $41d8: $f3
	inc c                                            ; $41d9: $0c
	rst SubAFromDE                                          ; $41da: $df
	ld a, $bf                                        ; $41db: $3e $bf
	ld a, a                                          ; $41dd: $7f
	db $fc                                           ; $41de: $fc
	rst $38                                          ; $41df: $ff

jr_068_41e0:
	ld l, a                                          ; $41e0: $6f
	ld h, b                                          ; $41e1: $60
	ld c, a                                          ; $41e2: $4f
	and b                                            ; $41e3: $a0
	ld a, a                                          ; $41e4: $7f
	cp $98                                           ; $41e5: $fe $98
	rst JumpTable                                          ; $41e7: $c7
	jr c, jr_068_41a7                                ; $41e8: $38 $bd

	ld a, [hl]                                       ; $41ea: $7e
	ld a, a                                          ; $41eb: $7f
	rst $38                                          ; $41ec: $ff
	dec sp                                           ; $41ed: $3b
	ld h, e                                          ; $41ee: $63
	and b                                            ; $41ef: $a0
	ccf                                              ; $41f0: $3f
	ret nz                                           ; $41f1: $c0

	ld [hl], a                                       ; $41f2: $77
	cp $95                                           ; $41f3: $fe $95
	add c                                            ; $41f5: $81
	ld h, b                                          ; $41f6: $60
	cp $3e                                           ; $41f7: $fe $3e
	rst FarCall                                          ; $41f9: $f7
	ld a, a                                          ; $41fa: $7f
	rst $38                                          ; $41fb: $ff
	ld a, $fe                                        ; $41fc: $3e $fe
	add b                                            ; $41fe: $80
	ld b, a                                          ; $41ff: $47
	ret nz                                           ; $4200: $c0

	ld [hl], a                                       ; $4201: $77
	cp $96                                           ; $4202: $fe $96
	jp $be00                                         ; $4204: $c3 $00 $be


	ld a, $cb                                        ; $4207: $3e $cb
	rst $38                                          ; $4209: $ff
	ccf                                              ; $420a: $3f
	inc a                                            ; $420b: $3c
	ld a, a                                          ; $420c: $7f
	cp a                                             ; $420d: $bf
	inc bc                                           ; $420e: $03
	cp e                                             ; $420f: $bb
	dec sp                                           ; $4210: $3b
	ret nz                                           ; $4211: $c0

	sbc [hl]                                         ; $4212: $9e
	ldh a, [$be]                                     ; $4213: $f0 $be
	ldh [rIE], a                                     ; $4215: $e0 $ff
	di                                               ; $4217: $f3
	sbc l                                            ; $4218: $9d
	ld h, c                                          ; $4219: $61
	rst SubAFromDE                                          ; $421a: $df
	inc sp                                           ; $421b: $33
	ret nz                                           ; $421c: $c0

	sbc [hl]                                         ; $421d: $9e
	rst JumpTable                                          ; $421e: $c7
	cp [hl]                                          ; $421f: $be
	add e                                            ; $4220: $83
	ccf                                              ; $4221: $3f
	ld h, a                                          ; $4222: $67
	sbc h                                            ; $4223: $9c
	ld b, e                                          ; $4224: $43
	dec a                                            ; $4225: $3d
	ld a, $77                                        ; $4226: $3e $77
	ret nz                                           ; $4228: $c0

	sbc c                                            ; $4229: $99
	pop af                                           ; $422a: $f1
	ld c, $f1                                        ; $422b: $0e $f1
	ld e, $eb                                        ; $422d: $1e $eb
	inc e                                            ; $422f: $1c
	ld [hl], a                                       ; $4230: $77
	add sp, -$65                                     ; $4231: $e8 $9b
	rst FarCall                                          ; $4233: $f7
	ld e, $f3                                        ; $4234: $1e $f3
	inc c                                            ; $4236: $0c
	ld [hl], a                                       ; $4237: $77
	ld b, d                                          ; $4238: $42
	ld a, a                                          ; $4239: $7f
	db $fc                                           ; $423a: $fc
	sub e                                            ; $423b: $93
	ccf                                              ; $423c: $3f
	ret nz                                           ; $423d: $c0

	sbc $e1                                          ; $423e: $de $e1
	ld [hl], e                                       ; $4240: $73
	ld a, a                                          ; $4241: $7f
	rst GetHLinHL                                          ; $4242: $cf
	rst $38                                          ; $4243: $ff
	rst JumpTable                                          ; $4244: $c7
	rst $38                                          ; $4245: $ff
	ret c                                            ; $4246: $d8

	rst SubAFromBC                                          ; $4247: $e7
	ld h, a                                          ; $4248: $67
	ldh [$7f], a                                     ; $4249: $e0 $7f
	add sp, $7f                                      ; $424b: $e8 $7f
	ldh [$9d], a                                     ; $424d: $e0 $9d
	ei                                               ; $424f: $fb
	ld e, $0f                                        ; $4250: $1e $0f
	ldh [$9c], a                                     ; $4252: $e0 $9c
	rst $38                                          ; $4254: $ff
	ld e, $ff                                        ; $4255: $1e $ff
	ld [hl], e                                       ; $4257: $73
	cp [hl]                                          ; $4258: $be
	scf                                              ; $4259: $37
	ldh [$9e], a                                     ; $425a: $e0 $9e
	push af                                          ; $425c: $f5

jr_068_425d:
	ld [hl], a                                       ; $425d: $77
	ldh [c], a                                       ; $425e: $e2
	sbc h                                            ; $425f: $9c
	ld e, $fd                                        ; $4260: $1e $fd
	ld c, $47                                        ; $4262: $0e $47
	ldh [$35], a                                     ; $4264: $e0 $35
	ld bc, $bb80                                     ; $4266: $01 $80 $bb
	ld [$cefa], a                                    ; $4269: $ea $fa $ce
	cp $c6                                           ; $426c: $fe $c6
	cp $86                                           ; $426e: $fe $86
	adc [hl]                                         ; $4270: $8e
	ldh a, [c]                                       ; $4271: $f2
	ld [hl], d                                       ; $4272: $72
	db $fc                                           ; $4273: $fc
	db $fd                                           ; $4274: $fd
	adc [hl]                                         ; $4275: $8e
	cp $01                                           ; $4276: $fe $01
	rst JumpTable                                          ; $4278: $c7
	jr c, @-$0c                                      ; $4279: $38 $f2

	ld bc, $3edf                                     ; $427b: $01 $df $3e
	or d                                             ; $427e: $b2
	ld [hl], e                                       ; $427f: $73
	call c, $d0df                                    ; $4280: $dc $df $d0
	dec de                                           ; $4283: $1b
	ld a, [$fe1e]                                    ; $4284: $fa $1e $fe
	adc b                                            ; $4287: $88
	adc h                                            ; $4288: $8c
	cp a                                             ; $4289: $bf
	ret nz                                           ; $428a: $c0

	cp a                                             ; $428b: $bf
	ret nz                                           ; $428c: $c0

	rst $38                                          ; $428d: $ff
	ret nz                                           ; $428e: $c0

	ld e, a                                          ; $428f: $5f
	ld h, b                                          ; $4290: $60
	ld e, a                                          ; $4291: $5f
	ld h, b                                          ; $4292: $60
	cpl                                              ; $4293: $2f
	jr nc, jr_068_42d5                               ; $4294: $30 $3f

	jr nc, jr_068_42cf                               ; $4296: $30 $37

	jr c, jr_068_4309                                ; $4298: $38 $6f

	ld l, h                                          ; $429a: $6c
	ld c, [hl]                                       ; $429b: $4e
	ld c, a                                          ; $429c: $4f
	ld e, c                                          ; $429d: $59
	ld e, c                                          ; $429e: $59
	db $dd                                           ; $429f: $dd
	db $10                                           ; $42a0: $10
	rst SubAFromDE                                          ; $42a1: $df
	ld [$01df], sp                                   ; $42a2: $08 $df $01
	rst SubAFromDE                                          ; $42a5: $df
	rlca                                             ; $42a6: $07
	sbc b                                            ; $42a7: $98
	pop af                                           ; $42a8: $f1
	ld h, b                                          ; $42a9: $60
	pop af                                           ; $42aa: $f1
	jr nz, jr_068_425d                               ; $42ab: $20 $b0

	nop                                              ; $42ad: $00
	sub b                                            ; $42ae: $90
	ei                                               ; $42af: $fb
	sub a                                            ; $42b0: $97
	ld bc, $0182                                     ; $42b1: $01 $82 $01
	add e                                            ; $42b4: $83
	nop                                              ; $42b5: $00
	add e                                            ; $42b6: $83
	nop                                              ; $42b7: $00
	add c                                            ; $42b8: $81

jr_068_42b9:
	ld a, [$0880]                                    ; $42b9: $fa $80 $08
	nop                                              ; $42bc: $00
	inc c                                            ; $42bd: $0c
	nop                                              ; $42be: $00
	db $fc                                           ; $42bf: $fc
	add a                                            ; $42c0: $87
	sbc $83                                          ; $42c1: $de $83
	sbc [hl]                                         ; $42c3: $9e
	inc bc                                           ; $42c4: $03
	inc bc                                           ; $42c5: $03
	rra                                              ; $42c6: $1f
	dec de                                           ; $42c7: $1b
	ld a, a                                          ; $42c8: $7f
	ld a, a                                          ; $42c9: $7f
	pop hl                                           ; $42ca: $e1
	rst $38                                          ; $42cb: $ff
	add b                                            ; $42cc: $80
	or e                                             ; $42cd: $b3
	ld c, h                                          ; $42ce: $4c

jr_068_42cf:
	ld c, a                                          ; $42cf: $4f
	add b                                            ; $42d0: $80
	ld sp, hl                                        ; $42d1: $f9
	ld a, [hl]                                       ; $42d2: $7e
	rst SubAFromBC                                          ; $42d3: $e7
	rst SubAFromBC                                          ; $42d4: $e7

jr_068_42d5:
	ld a, [hl-]                                      ; $42d5: $3a
	cp a                                             ; $42d6: $bf
	dec bc                                           ; $42d7: $0b
	ld a, $27                                        ; $42d8: $3e $27
	sub h                                            ; $42da: $94
	inc l                                            ; $42db: $2c
	ld a, a                                          ; $42dc: $7f
	jr jr_068_42e2                                   ; $42dd: $18 $03

	nop                                              ; $42df: $00
	db $fc                                           ; $42e0: $fc
	inc bc                                           ; $42e1: $03

jr_068_42e2:
	db $fc                                           ; $42e2: $fc
	inc bc                                           ; $42e3: $03
	ld hl, sp+$07                                    ; $42e4: $f8 $07
	ld [hl], a                                       ; $42e6: $77
	cp $89                                           ; $42e7: $fe $89
	pop af                                           ; $42e9: $f1
	rrca                                             ; $42ea: $0f
	di                                               ; $42eb: $f3
	rrca                                             ; $42ec: $0f
	and $1e                                          ; $42ed: $e6 $1e
	db $ec                                           ; $42ef: $ec
	inc e                                            ; $42f0: $1c
	call c, $bd3c                                    ; $42f1: $dc $3c $bd
	ld a, l                                          ; $42f4: $7d
	db $fc                                           ; $42f5: $fc
	db $fc                                           ; $42f6: $fc
	db $f4                                           ; $42f7: $f4
	db $fc                                           ; $42f8: $fc
	rst SubAFromBC                                          ; $42f9: $e7
	rst $38                                          ; $42fa: $ff
	add a                                            ; $42fb: $87
	rst $38                                          ; $42fc: $ff
	rlca                                             ; $42fd: $07
	rst $38                                          ; $42fe: $ff
	ld b, a                                          ; $42ff: $47
	ld h, b                                          ; $4300: $60
	sub e                                            ; $4301: $93
	rst $38                                          ; $4302: $ff
	nop                                              ; $4303: $00
	rst SubAFromBC                                          ; $4304: $e7
	jr jr_068_42b9                                   ; $4305: $18 $b2

	ld b, c                                          ; $4307: $41
	rst $38                                          ; $4308: $ff

jr_068_4309:
	ld e, $bf                                        ; $4309: $1e $bf
	ld a, a                                          ; $430b: $7f
	and $ef                                          ; $430c: $e6 $ef
	ld [hl], a                                       ; $430e: $77
	ld h, b                                          ; $430f: $60
	ld c, a                                          ; $4310: $4f
	and b                                            ; $4311: $a0
	ld a, a                                          ; $4312: $7f
	ldh [c], a                                       ; $4313: $e2
	sub l                                            ; $4314: $95
	jp $a53c                                         ; $4315: $c3 $3c $a5


	ld b, d                                          ; $4318: $42
	rst $38                                          ; $4319: $ff
	inc a                                            ; $431a: $3c
	rst $38                                          ; $431b: $ff
	ld a, a                                          ; $431c: $7f
	db $eb                                           ; $431d: $eb
	rst $38                                          ; $431e: $ff
	ld l, a                                          ; $431f: $6f
	and b                                            ; $4320: $a0
	ccf                                              ; $4321: $3f
	ret nz                                           ; $4322: $c0

	ld [hl], a                                       ; $4323: $77
	cp [hl]                                          ; $4324: $be
	sub l                                            ; $4325: $95
	pop bc                                           ; $4326: $c1
	jr nz, @-$42                                     ; $4327: $20 $bc

	ld e, $f3                                        ; $4329: $1e $f3
	ld a, e                                          ; $432b: $7b
	cp $3e                                           ; $432c: $fe $3e
	cp $80                                           ; $432e: $fe $80
	ld b, a                                          ; $4330: $47
	ret nz                                           ; $4331: $c0

	ld [hl], a                                       ; $4332: $77
	ldh [c], a                                       ; $4333: $e2
	ld a, a                                          ; $4334: $7f
	ld a, $97                                        ; $4335: $3e $97
	ld a, l                                          ; $4337: $7d
	ld a, h                                          ; $4338: $7c
	set 5, a                                         ; $4339: $cb $ef
	ccf                                              ; $433b: $3f
	inc a                                            ; $433c: $3c
	ld a, a                                          ; $433d: $7f
	nop                                              ; $433e: $00
	cpl                                              ; $433f: $2f
	ret nz                                           ; $4340: $c0

	sbc h                                            ; $4341: $9c
	db $e3                                           ; $4342: $e3
	nop                                              ; $4343: $00
	ret nz                                           ; $4344: $c0

	ld a, e                                          ; $4345: $7b
	ld a, [$f19c]                                    ; $4346: $fa $9c $f1
	ld h, c                                          ; $4349: $61
	sbc $33                                          ; $434a: $de $33
	ret nz                                           ; $434c: $c0

	sbc [hl]                                         ; $434d: $9e
	rst JumpTable                                          ; $434e: $c7
	ld a, e                                          ; $434f: $7b
	jp z, $3f99                                      ; $4350: $ca $99 $3f

	nop                                              ; $4353: $00
	ld h, a                                          ; $4354: $67
	ld b, e                                          ; $4355: $43
	dec a                                            ; $4356: $3d
	ld a, $77                                        ; $4357: $3e $77
	ret nz                                           ; $4359: $c0

	sbc c                                            ; $435a: $99
	pop af                                           ; $435b: $f1
	ld c, $f1                                        ; $435c: $0e $f1
	ld e, $eb                                        ; $435e: $1e $eb
	inc e                                            ; $4360: $1c
	ld [hl], a                                       ; $4361: $77
	add sp, -$64                                     ; $4362: $e8 $9c
	push af                                          ; $4364: $f5
	ld e, $e3                                        ; $4365: $1e $e3
	ld a, e                                          ; $4367: $7b
	ld hl, sp-$71                                    ; $4368: $f8 $8f
	di                                               ; $436a: $f3
	inc c                                            ; $436b: $0c
	rst $38                                          ; $436c: $ff
	nop                                              ; $436d: $00
	ccf                                              ; $436e: $3f
	ret nz                                           ; $436f: $c0

	sbc $e1                                          ; $4370: $de $e1
	ld [hl], e                                       ; $4372: $73
	ld a, a                                          ; $4373: $7f
	rst GetHLinHL                                          ; $4374: $cf
	rst $38                                          ; $4375: $ff
	rst JumpTable                                          ; $4376: $c7
	rst $38                                          ; $4377: $ff
	ret c                                            ; $4378: $d8

	rst SubAFromBC                                          ; $4379: $e7
	ld e, a                                          ; $437a: $5f
	ldh [$9b], a                                     ; $437b: $e0 $9b
	rst FarCall                                          ; $437d: $f7
	ld e, $ed                                        ; $437e: $1e $ed
	ld e, $17                                        ; $4380: $1e $17
	ldh [$9a], a                                     ; $4382: $e0 $9a
	db $fd                                           ; $4384: $fd
	ld e, $fb                                        ; $4385: $1e $fb
	ld e, $ff                                        ; $4387: $1e $ff
	ld a, e                                          ; $4389: $7b
	ldh [c], a                                       ; $438a: $e2
	ld a, a                                          ; $438b: $7f
	sbc $37                                          ; $438c: $de $37
	ldh [$9c], a                                     ; $438e: $e0 $9c
	rst AddAOntoHL                                          ; $4390: $ef
	inc e                                            ; $4391: $1c

jr_068_4392:
	rst $38                                          ; $4392: $ff
	ld a, e                                          ; $4393: $7b
	ldh [$9d], a                                     ; $4394: $e0 $9d
	db $fd                                           ; $4396: $fd
	ld c, $47                                        ; $4397: $0e $47
	ldh [$37], a                                     ; $4399: $e0 $37
	ld bc, $bb80                                     ; $439b: $01 $80 $bb
	ld [$cefa], a                                    ; $439e: $ea $fa $ce
	cp $c6                                           ; $43a1: $fe $c6
	cp $86                                           ; $43a3: $fe $86
	cp $82                                           ; $43a5: $fe $82
	or $0c                                           ; $43a7: $f6 $0c
	srl h                                            ; $43a9: $cb $3c
	cp a                                             ; $43ab: $bf
	ld [hl], b                                       ; $43ac: $70
	rst $38                                          ; $43ad: $ff
	ret nz                                           ; $43ae: $c0

	db $fd                                           ; $43af: $fd
	ld e, $f2                                        ; $43b0: $1e $f2
	inc sp                                           ; $43b2: $33
	di                                               ; $43b3: $f3
	ld [hl], a                                       ; $43b4: $77
	xor h                                            ; $43b5: $ac
	rst $38                                          ; $43b6: $ff
	ret nz                                           ; $43b7: $c0

	dec de                                           ; $43b8: $1b
	jp c, $ff1e                                      ; $43b9: $da $1e $ff

	adc b                                            ; $43bc: $88
	adc h                                            ; $43bd: $8c
	cp a                                             ; $43be: $bf
	ret nz                                           ; $43bf: $c0

	cp a                                             ; $43c0: $bf
	ret nz                                           ; $43c1: $c0

	rst $38                                          ; $43c2: $ff
	ret nz                                           ; $43c3: $c0

	ld e, a                                          ; $43c4: $5f
	ld h, b                                          ; $43c5: $60
	ld e, a                                          ; $43c6: $5f
	ld h, b                                          ; $43c7: $60
	cpl                                              ; $43c8: $2f
	jr nc, jr_068_440a                               ; $43c9: $30 $3f

	jr nc, jr_068_4404                               ; $43cb: $30 $37

	jr c, jr_068_443e                                ; $43cd: $38 $6f

	ld l, h                                          ; $43cf: $6c
	ld c, [hl]                                       ; $43d0: $4e
	ld c, a                                          ; $43d1: $4f
	ld e, c                                          ; $43d2: $59
	ld e, c                                          ; $43d3: $59
	db $dd                                           ; $43d4: $dd
	db $10                                           ; $43d5: $10
	rst SubAFromDE                                          ; $43d6: $df
	ld [$01df], sp                                   ; $43d7: $08 $df $01
	rst SubAFromDE                                          ; $43da: $df
	rlca                                             ; $43db: $07
	sbc d                                            ; $43dc: $9a
	pop af                                           ; $43dd: $f1
	ld h, b                                          ; $43de: $60
	pop af                                           ; $43df: $f1
	jr nz, jr_068_4392                               ; $43e0: $20 $b0

	or e                                             ; $43e2: $b3
	sub b                                            ; $43e3: $90
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	ld bc, $8383                                     ; $43e6: $01 $83 $83
	add c                                            ; $43e9: $81
	add b                                            ; $43ea: $80
	nop                                              ; $43eb: $00
	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	ld [$fc0c], sp                                   ; $43ee: $08 $0c $fc
	add b                                            ; $43f1: $80
	add a                                            ; $43f2: $87
	sbc $83                                          ; $43f3: $de $83
	sbc [hl]                                         ; $43f5: $9e
	inc bc                                           ; $43f6: $03
	ccf                                              ; $43f7: $3f
	inc bc                                           ; $43f8: $03
	sbc a                                            ; $43f9: $9f
	ld h, c                                          ; $43fa: $61
	ld h, e                                          ; $43fb: $63
	db $fd                                           ; $43fc: $fd
	rst SubAFromDE                                          ; $43fd: $df
	ccf                                              ; $43fe: $3f
	rst $38                                          ; $43ff: $ff
	nop                                              ; $4400: $00
	cp a                                             ; $4401: $bf
	ld a, h                                          ; $4402: $7c
	ld c, a                                          ; $4403: $4f

jr_068_4404:
	adc $cf                                          ; $4404: $ce $cf
	rst SubAFromDE                                          ; $4406: $df
	ld a, [hl-]                                      ; $4407: $3a
	cp a                                             ; $4408: $bf
	ld a, [bc]                                       ; $4409: $0a

jr_068_440a:
	ld a, $27                                        ; $440a: $3e $27
	inc l                                            ; $440c: $2c
	ld a, a                                          ; $440d: $7f
	jr jr_068_4413                                   ; $440e: $18 $03

	nop                                              ; $4410: $00
	sbc c                                            ; $4411: $99
	db $fc                                           ; $4412: $fc

jr_068_4413:
	inc bc                                           ; $4413: $03
	db $fc                                           ; $4414: $fc
	inc bc                                           ; $4415: $03
	ld hl, sp+$07                                    ; $4416: $f8 $07
	ld [hl], a                                       ; $4418: $77
	cp $89                                           ; $4419: $fe $89
	pop af                                           ; $441b: $f1
	rrca                                             ; $441c: $0f
	di                                               ; $441d: $f3
	rrca                                             ; $441e: $0f
	and $1e                                          ; $441f: $e6 $1e
	db $ec                                           ; $4421: $ec
	inc e                                            ; $4422: $1c
	call c, $bd3c                                    ; $4423: $dc $3c $bd
	ld a, l                                          ; $4426: $7d
	db $fc                                           ; $4427: $fc
	db $fc                                           ; $4428: $fc
	db $f4                                           ; $4429: $f4
	db $fc                                           ; $442a: $fc
	rst SubAFromBC                                          ; $442b: $e7
	rst $38                                          ; $442c: $ff
	add a                                            ; $442d: $87
	rst $38                                          ; $442e: $ff
	rlca                                             ; $442f: $07
	rst $38                                          ; $4430: $ff
	ccf                                              ; $4431: $3f

jr_068_4432:
	ld h, b                                          ; $4432: $60
	ld a, a                                          ; $4433: $7f
	cp h                                             ; $4434: $bc
	ld a, a                                          ; $4435: $7f
	ld e, [hl]                                       ; $4436: $5e
	sbc c                                            ; $4437: $99
	cp $3f                                           ; $4438: $fe $3f
	pop af                                           ; $443a: $f1
	ld [hl], a                                       ; $443b: $77
	ret nz                                           ; $443c: $c0

	ei                                               ; $443d: $fb

jr_068_443e:
	ld [hl], a                                       ; $443e: $77
	ld h, b                                          ; $443f: $60
	ld b, a                                          ; $4440: $47
	and b                                            ; $4441: $a0
	ld [hl], a                                       ; $4442: $77
	sbc [hl]                                         ; $4443: $9e
	sbc d                                            ; $4444: $9a
	ld l, a                                          ; $4445: $6f
	cp $c7                                           ; $4446: $fe $c7
	rst AddAOntoHL                                          ; $4448: $ef
	dec bc                                           ; $4449: $0b
	ld l, e                                          ; $444a: $6b
	and b                                            ; $444b: $a0
	ccf                                              ; $444c: $3f
	ret nz                                           ; $444d: $c0

	sub c                                            ; $444e: $91
	rst SubAFromBC                                          ; $444f: $e7
	jr jr_068_4413                                   ; $4450: $18 $c1

	jr nz, jr_068_4432                               ; $4452: $20 $de

	ld e, $f3                                        ; $4454: $1e $f3
	dec sp                                           ; $4456: $3b
	ei                                               ; $4457: $fb
	ld a, a                                          ; $4458: $7f
	ld a, [$ff1e]                                    ; $4459: $fa $1e $ff
	add b                                            ; $445c: $80
	ld b, a                                          ; $445d: $47
	ret nz                                           ; $445e: $c0

	sub d                                            ; $445f: $92
	db $e3                                           ; $4460: $e3
	inc e                                            ; $4461: $1c
	add a                                            ; $4462: $87
	nop                                              ; $4463: $00
	ld a, a                                          ; $4464: $7f
	inc a                                            ; $4465: $3c
	rst FarCall                                          ; $4466: $f7
	halt                                             ; $4467: $76
	set 7, a                                         ; $4468: $cb $ff
	ccf                                              ; $446a: $3f
	inc a                                            ; $446b: $3c
	ld a, a                                          ; $446c: $7f
	cp a                                             ; $446d: $bf
	inc bc                                           ; $446e: $03
	cp e                                             ; $446f: $bb
	dec sp                                           ; $4470: $3b
	add b                                            ; $4471: $80
	ld a, a                                          ; $4472: $7f
	cp $96                                           ; $4473: $fe $96
	pop af                                           ; $4475: $f1
	nop                                              ; $4476: $00
	db $e4                                           ; $4477: $e4
	ld c, $de                                        ; $4478: $0e $de
	ccf                                              ; $447a: $3f
	db $ed                                           ; $447b: $ed
	ld [hl], e                                       ; $447c: $73
	db $e3                                           ; $447d: $e3
	ld b, e                                          ; $447e: $43
	ret nz                                           ; $447f: $c0

	ld [hl], a                                       ; $4480: $77
	cp $7e                                           ; $4481: $fe $7e
	db $fc                                           ; $4483: $fc
	sbc b                                            ; $4484: $98
	ld e, a                                          ; $4485: $5f
	jr c, jr_068_4505                                ; $4486: $38 $7d

	cp $bb                                           ; $4488: $fe $bb
	rst JumpTable                                          ; $448a: $c7
	ld b, a                                          ; $448b: $47
	cp a                                             ; $448c: $bf
	inc bc                                           ; $448d: $03
	pop af                                           ; $448e: $f1
	sub e                                            ; $448f: $93
	ld c, $f1                                        ; $4490: $0e $f1
	ld e, $eb                                        ; $4492: $1e $eb
	inc e                                            ; $4494: $1c
	rst $38                                          ; $4495: $ff
	nop                                              ; $4496: $00
	cp l                                             ; $4497: $bd
	ld b, e                                          ; $4498: $43
	sub $3f                                          ; $4499: $d6 $3f
	db $e3                                           ; $449b: $e3
	ld a, e                                          ; $449c: $7b
	ld hl, sp-$71                                    ; $449d: $f8 $8f
	di                                               ; $449f: $f3
	inc c                                            ; $44a0: $0c
	rst $38                                          ; $44a1: $ff
	nop                                              ; $44a2: $00
	ccf                                              ; $44a3: $3f
	ret nz                                           ; $44a4: $c0

	sbc $e1                                          ; $44a5: $de $e1
	ld [hl], e                                       ; $44a7: $73
	ld a, a                                          ; $44a8: $7f
	rst GetHLinHL                                          ; $44a9: $cf
	rst $38                                          ; $44aa: $ff
	rst JumpTable                                          ; $44ab: $c7
	rst $38                                          ; $44ac: $ff
	ret c                                            ; $44ad: $d8

	rst SubAFromBC                                          ; $44ae: $e7
	ld h, a                                          ; $44af: $67
	ldh [$99], a                                     ; $44b0: $e0 $99
	pop de                                           ; $44b2: $d1
	ld l, a                                          ; $44b3: $6f
	cp $3f                                           ; $44b4: $fe $3f
	db $fd                                           ; $44b6: $fd
	ld e, $1f                                        ; $44b7: $1e $1f
	ldh [$99], a                                     ; $44b9: $e0 $99
	pop bc                                           ; $44bb: $c1
	ld a, a                                          ; $44bc: $7f
	or $3f                                           ; $44bd: $f6 $3f
	db $dd                                           ; $44bf: $dd
	ld a, $77                                        ; $44c0: $3e $77
	or $7f                                           ; $44c2: $f6 $7f
	sbc $37                                          ; $44c4: $de $37
	ldh [$9a], a                                     ; $44c6: $e0 $9a
	jp $ff7f                                         ; $44c8: $c3 $7f $ff


	ccf                                              ; $44cb: $3f
	ldh a, [c]                                       ; $44cc: $f2
	ld l, e                                          ; $44cd: $6b
	cp [hl]                                          ; $44ce: $be
	ld d, a                                          ; $44cf: $57
	ldh [rAUD1ENV], a                                ; $44d0: $e0 $12
	inc bc                                           ; $44d2: $03
	rst AddAOntoHL                                          ; $44d3: $ef
	db $dd                                           ; $44d4: $dd
	ld bc, $0280                                     ; $44d5: $01 $80 $02
	inc bc                                           ; $44d8: $03
	inc bc                                           ; $44d9: $03
	ld [bc], a                                       ; $44da: $02
	inc b                                            ; $44db: $04
	rlca                                             ; $44dc: $07
	dec b                                            ; $44dd: $05
	ld b, $0a                                        ; $44de: $06 $0a
	dec c                                            ; $44e0: $0d
	add hl, bc                                       ; $44e1: $09
	rrca                                             ; $44e2: $0f
	ld a, [bc]                                       ; $44e3: $0a
	rrca                                             ; $44e4: $0f
	dec bc                                           ; $44e5: $0b
	ld c, $1d                                        ; $44e6: $0e $1d
	ld e, $16                                        ; $44e8: $1e $16
	dec e                                            ; $44ea: $1d
	ld a, [de]                                       ; $44eb: $1a
	dec e                                            ; $44ec: $1d
	dec e                                            ; $44ed: $1d
	ld a, [de]                                       ; $44ee: $1a
	dec d                                            ; $44ef: $15
	ld a, [de]                                       ; $44f0: $1a
	dec e                                            ; $44f1: $1d
	ld [de], a                                       ; $44f2: $12
	dec de                                           ; $44f3: $1b
	inc d                                            ; $44f4: $14
	ld a, [de]                                       ; $44f5: $1a
	sub [hl]                                         ; $44f6: $96
	dec d                                            ; $44f7: $15
	inc de                                           ; $44f8: $13
	dec e                                            ; $44f9: $1d
	dec d                                            ; $44fa: $15
	dec de                                           ; $44fb: $1b
	inc d                                            ; $44fc: $14
	dec de                                           ; $44fd: $1b
	ld d, $1b                                        ; $44fe: $16 $1b
	ld a, e                                          ; $4500: $7b
	db $fd                                           ; $4501: $fd
	ld a, e                                          ; $4502: $7b
	cp $91                                           ; $4503: $fe $91

jr_068_4505:
	dec d                                            ; $4505: $15
	ld e, $17                                        ; $4506: $1e $17
	inc e                                            ; $4508: $1c
	rla                                              ; $4509: $17
	inc e                                            ; $450a: $1c
	ld d, $1d                                        ; $450b: $16 $1d
	ld d, $1d                                        ; $450d: $16 $1d
	ld c, $0d                                        ; $450f: $0e $0d
	ld [$770f], sp                                   ; $4511: $08 $0f $77
	cp $9e                                           ; $4514: $fe $9e
	inc c                                            ; $4516: $0c
	ld a, e                                          ; $4517: $7b
	cp $7f                                           ; $4518: $fe $7f
	ret nz                                           ; $451a: $c0

	sbc [hl]                                         ; $451b: $9e
	ld b, $7b                                        ; $451c: $06 $7b
	cp $df                                           ; $451e: $fe $df
	rlca                                             ; $4520: $07
	db $db                                           ; $4521: $db
	inc bc                                           ; $4522: $03
	sub e                                            ; $4523: $93
	dec c                                            ; $4524: $0d
	rrca                                             ; $4525: $0f
	ld de, $2c1f                                     ; $4526: $11 $1f $2c
	inc sp                                           ; $4529: $33
	ld c, [hl]                                       ; $452a: $4e
	ld [hl], c                                       ; $452b: $71
	ld c, a                                          ; $452c: $4f
	ld [hl], c                                       ; $452d: $71
	sbc a                                            ; $452e: $9f
	ldh [$7b], a                                     ; $452f: $e0 $7b
	cp $96                                           ; $4531: $fe $96
	ldh [c], a                                       ; $4533: $e2
	cp l                                             ; $4534: $bd
	add $bd                                          ; $4535: $c6 $bd
	add $bb                                          ; $4537: $c6 $bb
	call z, $ec9b                                    ; $4539: $cc $9b $ec
	pop hl                                           ; $453c: $e1
	rst SubAFromDE                                          ; $453d: $df
	ld bc, $07df                                     ; $453e: $01 $df $07
	add e                                            ; $4541: $83
	dec c                                            ; $4542: $0d
	ld c, $17                                        ; $4543: $0e $17
	add hl, de                                       ; $4545: $19
	ld l, $31                                        ; $4546: $2e $31
	ld d, b                                          ; $4548: $50
	ld l, a                                          ; $4549: $6f
	ld b, c                                          ; $454a: $41
	ld a, a                                          ; $454b: $7f
	sbc b                                            ; $454c: $98
	rst $38                                          ; $454d: $ff
	ldh [rIE], a                                     ; $454e: $e0 $ff
	sbc l                                            ; $4550: $9d
	db $e3                                           ; $4551: $e3
	ld [hl], d                                       ; $4552: $72
	adc a                                            ; $4553: $8f
	xor h                                            ; $4554: $ac
	ld e, a                                          ; $4555: $5f
	ld d, b                                          ; $4556: $50
	cp a                                             ; $4557: $bf
	add d                                            ; $4558: $82
	ld a, l                                          ; $4559: $7d
	ld b, h                                          ; $455a: $44
	ei                                               ; $455b: $fb
	adc e                                            ; $455c: $8b
	or $e0                                           ; $455d: $f6 $e0
	pop bc                                           ; $455f: $c1
	rst SubAFromDE                                          ; $4560: $df
	add b                                            ; $4561: $80
	rst SubAFromDE                                          ; $4562: $df
	add c                                            ; $4563: $81
	ld a, a                                          ; $4564: $7f
	ld [de], a                                       ; $4565: $12
	add l                                            ; $4566: $85
	push hl                                          ; $4567: $e5
	and $9f                                          ; $4568: $e6 $9f
	db $fc                                           ; $456a: $fc
	adc d                                            ; $456b: $8a
	db $fd                                           ; $456c: $fd
	xor a                                            ; $456d: $af
	reti                                             ; $456e: $d9


	xor a                                            ; $456f: $af
	db $db                                           ; $4570: $db
	xor l                                            ; $4571: $ad
	rst SubAFromDE                                          ; $4572: $df
	jp hl                                            ; $4573: $e9


	rra                                              ; $4574: $1f
	db $e3                                           ; $4575: $e3
	dec e                                            ; $4576: $1d
	or $09                                           ; $4577: $f6 $09
	or $09                                           ; $4579: $f6 $09
	cp a                                             ; $457b: $bf
	ld b, b                                          ; $457c: $40
	cp a                                             ; $457d: $bf
	ld b, b                                          ; $457e: $40
	ld a, $c1                                        ; $457f: $3e $c1
	pop af                                           ; $4581: $f1
	rst SubAFromDE                                          ; $4582: $df
	inc c                                            ; $4583: $0c
	rst SubAFromDE                                          ; $4584: $df
	rlca                                             ; $4585: $07
	ld a, a                                          ; $4586: $7f
	ret nc                                           ; $4587: $d0

	ld a, a                                          ; $4588: $7f
	cp $df                                           ; $4589: $fe $df
	rlca                                             ; $458b: $07
	add b                                            ; $458c: $80
	dec e                                            ; $458d: $1d
	rra                                              ; $458e: $1f
	ld [hl], l                                       ; $458f: $75
	ld a, e                                          ; $4590: $7b
	xor b                                            ; $4591: $a8
	rst FarCall                                          ; $4592: $f7
	rst $38                                          ; $4593: $ff
	rst $38                                          ; $4594: $ff
	db $e3                                           ; $4595: $e3
	rra                                              ; $4596: $1f
	ld sp, hl                                        ; $4597: $f9
	ld a, a                                          ; $4598: $7f
	call nz, $528f                                   ; $4599: $c4 $8f $52
	rst SubAFromBC                                          ; $459c: $e7
	dec l                                            ; $459d: $2d
	di                                               ; $459e: $f3
	or $f9                                           ; $459f: $f6 $f9
	dec c                                            ; $45a1: $0d
	cp $7e                                           ; $45a2: $fe $7e
	rst $38                                          ; $45a4: $ff
	sbc c                                            ; $45a5: $99
	rst $38                                          ; $45a6: $ff
	ld h, a                                          ; $45a7: $67
	rst $38                                          ; $45a8: $ff
	dec c                                            ; $45a9: $0d
	rst $38                                          ; $45aa: $ff
	dec [hl]                                         ; $45ab: $35
	sbc b                                            ; $45ac: $98
	db $db                                           ; $45ad: $db
	ld e, e                                          ; $45ae: $5b
	and a                                            ; $45af: $a7
	or [hl]                                          ; $45b0: $b6
	ld c, a                                          ; $45b1: $4f
	ld l, a                                          ; $45b2: $6f
	ld e, [hl]                                       ; $45b3: $5e
	ldh [$c1], a                                     ; $45b4: $e0 $c1
	add b                                            ; $45b6: $80
	db $ed                                           ; $45b7: $ed
	sbc a                                            ; $45b8: $9f
	ret c                                            ; $45b9: $d8

	ccf                                              ; $45ba: $3f
	sbc b                                            ; $45bb: $98
	ld a, a                                          ; $45bc: $7f
	inc de                                           ; $45bd: $13
	rst $38                                          ; $45be: $ff
	ld [hl], l                                       ; $45bf: $75
	cp [hl]                                          ; $45c0: $be
	ld a, d                                          ; $45c1: $7a
	cp h                                             ; $45c2: $bc
	db $fc                                           ; $45c3: $fc
	ld hl, sp-$04                                    ; $45c4: $f8 $fc
	ldh a, [rAUD3ENA]                                ; $45c6: $f0 $1a
	db $fc                                           ; $45c8: $fc
	rla                                              ; $45c9: $17
	cp [hl]                                          ; $45ca: $be
	dec [hl]                                         ; $45cb: $35
	cp e                                             ; $45cc: $bb
	ei                                               ; $45cd: $fb
	db $fc                                           ; $45ce: $fc
	rst SubAFromHL                                          ; $45cf: $d7
	sbc $ef                                          ; $45d0: $de $ef
	ld a, b                                          ; $45d2: $78
	rst JumpTable                                          ; $45d3: $c7
	ld l, l                                          ; $45d4: $6d
	and $80                                          ; $45d5: $e6 $80
	ld [hl], $10                                     ; $45d7: $36 $10
	db $10                                           ; $45d9: $10
	inc hl                                           ; $45da: $23
	inc hl                                           ; $45db: $23
	dec h                                            ; $45dc: $25
	daa                                              ; $45dd: $27
	ld a, [de]                                       ; $45de: $1a
	dec e                                            ; $45df: $1d
	inc c                                            ; $45e0: $0c
	dec bc                                           ; $45e1: $0b
	dec e                                            ; $45e2: $1d
	dec de                                           ; $45e3: $1b
	add hl, hl                                       ; $45e4: $29
	ccf                                              ; $45e5: $3f
	ld c, l                                          ; $45e6: $4d
	ld a, a                                          ; $45e7: $7f
	ld [hl], e                                       ; $45e8: $73
	ld e, a                                          ; $45e9: $5f
	ld a, a                                          ; $45ea: $7f
	ld d, a                                          ; $45eb: $57
	push bc                                          ; $45ec: $c5
	rst $38                                          ; $45ed: $ff
	ld l, l                                          ; $45ee: $6d
	cp $bf                                           ; $45ef: $fe $bf
	ld a, a                                          ; $45f1: $7f
	and e                                            ; $45f2: $a3
	ld a, a                                          ; $45f3: $7f
	ld d, l                                          ; $45f4: $55
	cp [hl]                                          ; $45f5: $be
	adc d                                            ; $45f6: $8a
	jp c, $adbd                                      ; $45f7: $da $bd $ad

	sbc e                                            ; $45fa: $9b
	res 3, a                                         ; $45fb: $cb $9f
	sbc [hl]                                         ; $45fd: $9e
	rst GetHLinHL                                          ; $45fe: $cf
	adc l                                            ; $45ff: $8d
	adc $ee                                          ; $4600: $ce $ee
	call $efcd                                       ; $4602: $cd $cd $ef
	rst SubAFromDE                                          ; $4605: $df
	rst AddAOntoHL                                          ; $4606: $ef
	ld l, l                                          ; $4607: $6d
	cp $2c                                           ; $4608: $fe $2c
	rst $38                                          ; $460a: $ff
	xor a                                            ; $460b: $af
	sbc $ff                                          ; $460c: $de $ff
	sub l                                            ; $460e: $95
	ei                                               ; $460f: $fb
	rst $38                                          ; $4610: $ff
	cp c                                             ; $4611: $b9
	rst $38                                          ; $4612: $ff
	ld a, a                                          ; $4613: $7f
	db $fd                                           ; $4614: $fd
	db $ed                                           ; $4615: $ed
	ld a, [hl]                                       ; $4616: $7e
	ld c, [hl]                                       ; $4617: $4e
	ei                                               ; $4618: $fb
	ldh [$c1], a                                     ; $4619: $e0 $c1
	sbc [hl]                                         ; $461b: $9e
	pop hl                                           ; $461c: $e1
	call c, $9cc0                                    ; $461d: $dc $c0 $9c
	ld b, b                                          ; $4620: $40
	add b                                            ; $4621: $80
	ret nz                                           ; $4622: $c0

	cp e                                             ; $4623: $bb
	add b                                            ; $4624: $80
	add c                                            ; $4625: $81
	ld bc, $c782                                     ; $4626: $01 $82 $c7
	rst $38                                          ; $4629: $ff
	add c                                            ; $462a: $81
	rst $38                                          ; $462b: $ff
	ld sp, hl                                        ; $462c: $f9
	rlca                                             ; $462d: $07
	sbc a                                            ; $462e: $9f
	ld a, a                                          ; $462f: $7f
	rst $38                                          ; $4630: $ff
	rrca                                             ; $4631: $0f
	pop af                                           ; $4632: $f1
	db $db                                           ; $4633: $db
	ld hl, $ff67                                     ; $4634: $21 $67 $ff
	rst $38                                          ; $4637: $ff
	cp e                                             ; $4638: $bb
	db $e4                                           ; $4639: $e4
	ld h, [hl]                                       ; $463a: $66
	ret                                              ; $463b: $c9


	push bc                                          ; $463c: $c5
	ld b, e                                          ; $463d: $43
	inc de                                           ; $463e: $13
	ld b, [hl]                                       ; $463f: $46
	adc d                                            ; $4640: $8a
	ld d, a                                          ; $4641: $57
	xor l                                            ; $4642: $ad
	ld d, a                                          ; $4643: $57
	ld b, l                                          ; $4644: $45
	rst $38                                          ; $4645: $ff
	ld c, l                                          ; $4646: $4d
	rst $38                                          ; $4647: $ff
	rst AddAOntoHL                                          ; $4648: $ef
	sbc $ff                                          ; $4649: $de $ff
	ld a, a                                          ; $464b: $7f
	call c, $0c80                                    ; $464c: $dc $80 $0c
	di                                               ; $464f: $f3
	db $db                                           ; $4650: $db
	ldh [$30], a                                     ; $4651: $e0 $30
	rst $38                                          ; $4653: $ff
	ld a, a                                          ; $4654: $7f
	rst $38                                          ; $4655: $ff
	rst JumpTable                                          ; $4656: $c7
	rst $38                                          ; $4657: $ff
	ld c, h                                          ; $4658: $4c
	add e                                            ; $4659: $83
	add e                                            ; $465a: $83
	ld a, h                                          ; $465b: $7c
	ld h, h                                          ; $465c: $64
	add e                                            ; $465d: $83
	ld a, a                                          ; $465e: $7f
	rst $38                                          ; $465f: $ff
	and h                                            ; $4660: $a4
	jp $8f73                                         ; $4661: $c3 $73 $8f


	sbc h                                            ; $4664: $9c
	ld a, a                                          ; $4665: $7f
	cp $ff                                           ; $4666: $fe $ff
	jp $fdff                                         ; $4668: $c3 $ff $fd


	di                                               ; $466b: $f3
	db $10                                           ; $466c: $10
	sub [hl]                                         ; $466d: $96
	ld sp, hl                                        ; $466e: $f9
	ret nz                                           ; $466f: $c0

	db $fc                                           ; $4670: $fc
	ldh a, [$fe]                                     ; $4671: $f0 $fe
	ret nc                                           ; $4673: $d0

	rst $38                                          ; $4674: $ff
	add sp, -$01                                     ; $4675: $e8 $ff
	ldh [$c1], a                                     ; $4677: $e0 $c1
	add b                                            ; $4679: $80
	cp $07                                           ; $467a: $fe $07
	db $ec                                           ; $467c: $ec
	rlca                                             ; $467d: $07
	ld c, l                                          ; $467e: $4d
	ld b, $4d                                        ; $467f: $06 $4d
	ld b, $9b                                        ; $4681: $06 $9b
	inc c                                            ; $4683: $0c
	sbc e                                            ; $4684: $9b
	inc c                                            ; $4685: $0c
	scf                                              ; $4686: $37
	jr @-$07                                         ; $4687: $18 $f7

	jr jr_068_46fa                                   ; $4689: $18 $6f

	jr nc, @-$01                                     ; $468b: $30 $fd

	cp $fe                                           ; $468d: $fe $fe
	rst $38                                          ; $468f: $ff
	adc c                                            ; $4690: $89
	rst $38                                          ; $4691: $ff
	ld de, $20bf                                     ; $4692: $11 $bf $20
	rst $38                                          ; $4695: $ff
	call z, $1ef3                                    ; $4696: $cc $f3 $1e
	adc a                                            ; $4699: $8f
	pop hl                                           ; $469a: $e1
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	ldh [$e0], a                                     ; $469d: $e0 $e0
	ld hl, sp-$68                                    ; $469f: $f8 $98
	db $f4                                           ; $46a1: $f4
	ld a, h                                          ; $46a2: $7c
	adc $fe                                          ; $46a3: $ce $fe
	sub [hl]                                         ; $46a5: $96
	cp $3d                                           ; $46a6: $fe $3d
	rst $38                                          ; $46a8: $ff
	ld [hl], l                                       ; $46a9: $75
	ld a, e                                          ; $46aa: $7b
	cp $80                                           ; $46ab: $fe $80
	ld [$93ff], a                                    ; $46ad: $ea $ff $93
	cp $05                                           ; $46b0: $fe $05
	cp $ca                                           ; $46b2: $fe $ca
	dec a                                            ; $46b4: $3d
	ccf                                              ; $46b5: $3f
	di                                               ; $46b6: $f3
	db $fd                                           ; $46b7: $fd
	cp $0e                                           ; $46b8: $fe $0e
	pop af                                           ; $46ba: $f1
	add e                                            ; $46bb: $83
	rst $38                                          ; $46bc: $ff
	db $fc                                           ; $46bd: $fc
	rst $38                                          ; $46be: $ff
	dec sp                                           ; $46bf: $3b
	rst $38                                          ; $46c0: $ff
	adc h                                            ; $46c1: $8c
	ld a, a                                          ; $46c2: $7f
	ld b, [hl]                                       ; $46c3: $46
	cp a                                             ; $46c4: $bf
	jp nz, $23ff                                     ; $46c5: $c2 $ff $23

	rst SubAFromDE                                          ; $46c8: $df
	add hl, de                                       ; $46c9: $19
	rst SubAFromBC                                          ; $46ca: $e7
	dec b                                            ; $46cb: $05
	add b                                            ; $46cc: $80
	di                                               ; $46cd: $f3
	ld h, d                                          ; $46ce: $62
	sub c                                            ; $46cf: $91
	xor b                                            ; $46d0: $a8
	pop bc                                           ; $46d1: $c1
	jp nz, $ede4                                     ; $46d2: $c2 $e4 $ed

	ld [hl], d                                       ; $46d5: $72
	inc [hl]                                         ; $46d6: $34
	ld a, e                                          ; $46d7: $7b
	ld a, [de]                                       ; $46d8: $1a
	dec a                                            ; $46d9: $3d
	or l                                             ; $46da: $b5
	ld e, $0c                                        ; $46db: $1e $0c
	sbc a                                            ; $46dd: $9f
	ld a, [bc]                                       ; $46de: $0a
	rra                                              ; $46df: $1f
	rrca                                             ; $46e0: $0f
	rrca                                             ; $46e1: $0f
	dec b                                            ; $46e2: $05
	rrca                                             ; $46e3: $0f
	rlca                                             ; $46e4: $07
	xor a                                            ; $46e5: $af
	ld [bc], a                                       ; $46e6: $02
	and a                                            ; $46e7: $a7
	ld [bc], a                                       ; $46e8: $02
	or a                                             ; $46e9: $b7
	sub d                                            ; $46ea: $92
	or a                                             ; $46eb: $b7
	sbc b                                            ; $46ec: $98
	sub d                                            ; $46ed: $92
	rst SubAFromDE                                          ; $46ee: $df
	sub c                                            ; $46ef: $91
	rst SubAFromDE                                          ; $46f0: $df
	adc c                                            ; $46f1: $89
	rst SubAFromDE                                          ; $46f2: $df
	ld c, c                                          ; $46f3: $49
	ld [hl], a                                       ; $46f4: $77
	cp $99                                           ; $46f5: $fe $99
	rst $38                                          ; $46f7: $ff
	ret                                              ; $46f8: $c9


	ld a, a                                          ; $46f9: $7f

jr_068_46fa:
	jp hl                                            ; $46fa: $e9


	ld a, a                                          ; $46fb: $7f
	add sp, $7b                                      ; $46fc: $e8 $7b
	cp $9c                                           ; $46fe: $fe $9c
	jp hl                                            ; $4700: $e9


	rst $38                                          ; $4701: $ff
	pop hl                                           ; $4702: $e1
	ld [hl], e                                       ; $4703: $73
	cp $9a                                           ; $4704: $fe $9a
	or c                                             ; $4706: $b1
	cp a                                             ; $4707: $bf
	or b                                             ; $4708: $b0
	cp a                                             ; $4709: $bf
	or h                                             ; $470a: $b4
	ld a, e                                          ; $470b: $7b
	cp $91                                           ; $470c: $fe $91
	inc [hl]                                         ; $470e: $34
	ccf                                              ; $470f: $3f
	ld sp, $b13f                                     ; $4710: $31 $3f $b1
	cp a                                             ; $4713: $bf
	ld h, l                                          ; $4714: $65
	rst $38                                          ; $4715: $ff
	and l                                            ; $4716: $a5
	ld a, a                                          ; $4717: $7f
	and l                                            ; $4718: $a5
	ld a, a                                          ; $4719: $7f
	rst SubAFromBC                                          ; $471a: $e7
	ccf                                              ; $471b: $3f
	ld [hl], a                                       ; $471c: $77
	cp $85                                           ; $471d: $fe $85
	and $3f                                          ; $471f: $e6 $3f
	db $e4                                           ; $4721: $e4
	ccf                                              ; $4722: $3f
	xor l                                            ; $4723: $ad
	ld a, [hl]                                       ; $4724: $7e
	bit 7, h                                         ; $4725: $cb $7c
	rst GetHLinHL                                          ; $4727: $cf
	ld a, b                                          ; $4728: $78
	rst SubAFromHL                                          ; $4729: $d7
	ld a, d                                          ; $472a: $7a
	rst SubAFromDE                                          ; $472b: $df
	ld [hl], h                                       ; $472c: $74
	rst AddAOntoHL                                          ; $472d: $ef
	ld [hl], h                                       ; $472e: $74
	ld e, a                                          ; $472f: $5f
	ldh [rIE], a                                     ; $4730: $e0 $ff
	ret                                              ; $4732: $c9


	rst AddAOntoHL                                          ; $4733: $ef
	sbc d                                            ; $4734: $9a
	rst FarCall                                          ; $4735: $f7
	sbc [hl]                                         ; $4736: $9e
	rst $38                                          ; $4737: $ff
	inc d                                            ; $4738: $14
	push af                                          ; $4739: $f5
	rst SubAFromDE                                          ; $473a: $df
	adc b                                            ; $473b: $88
	add b                                            ; $473c: $80
	ld b, h                                          ; $473d: $44
	call nz, $c444                                   ; $473e: $c4 $44 $c4
	xor h                                            ; $4741: $ac
	ld l, h                                          ; $4742: $6c
	inc [hl]                                         ; $4743: $34
	db $fc                                           ; $4744: $fc
	ld [hl], h                                       ; $4745: $74
	db $fc                                           ; $4746: $fc
	cp b                                             ; $4747: $b8
	ld hl, sp+$28                                    ; $4748: $f8 $28
	ld hl, sp+$6c                                    ; $474a: $f8 $6c
	db $fc                                           ; $474c: $fc
	xor d                                            ; $474d: $aa
	cp $2e                                           ; $474e: $fe $2e
	cp $59                                           ; $4750: $fe $59
	ld sp, hl                                        ; $4752: $f9
	pop af                                           ; $4753: $f1
	pop af                                           ; $4754: $f1
	jr z, @-$06                                      ; $4755: $28 $f8

	ld c, b                                          ; $4757: $48
	ld hl, sp-$2c                                    ; $4758: $f8 $d4
	db $fc                                           ; $475a: $fc
	sub h                                            ; $475b: $94
	add c                                            ; $475c: $81
	db $fc                                           ; $475d: $fc
	or h                                             ; $475e: $b4
	db $fc                                           ; $475f: $fc
	ld h, $fe                                        ; $4760: $26 $fe
	xor $fe                                          ; $4762: $ee $fe
	jp z, Jump_068_4afe                              ; $4764: $ca $fe $4a

	cp $da                                           ; $4767: $fe $da
	ld a, [hl]                                       ; $4769: $7e
	or d                                             ; $476a: $b2
	ld a, [hl]                                       ; $476b: $7e
	ld [hl], d                                       ; $476c: $72
	cp [hl]                                          ; $476d: $be
	ld d, [hl]                                       ; $476e: $56
	cp [hl]                                          ; $476f: $be
	ld [hl], $de                                     ; $4770: $36 $de
	cp h                                             ; $4772: $bc
	ld e, h                                          ; $4773: $5c
	sbc h                                            ; $4774: $9c
	ld a, h                                          ; $4775: $7c
	ld c, h                                          ; $4776: $4c
	cp h                                             ; $4777: $bc
	ld c, b                                          ; $4778: $48
	cp b                                             ; $4779: $b8
	ret z                                            ; $477a: $c8

	ld a, e                                          ; $477b: $7b
	cp $9a                                           ; $477c: $fe $9a
	xor b                                            ; $477e: $a8
	ld hl, sp-$58                                    ; $477f: $f8 $a8
	ld hl, sp+$68                                    ; $4781: $f8 $68
	ld [hl], e                                       ; $4783: $73
	cp $7f                                           ; $4784: $fe $7f
	ret nc                                           ; $4786: $d0

	ld a, a                                          ; $4787: $7f
	cp $9c                                           ; $4788: $fe $9c
	ld [$18f8], sp                                   ; $478a: $08 $f8 $18
	ld [hl], e                                       ; $478d: $73
	cp $9d                                           ; $478e: $fe $9d
	ld d, b                                          ; $4790: $50
	ldh a, [rPCM34]                                  ; $4791: $f0 $77
	cp $9e                                           ; $4793: $fe $9e
	ld [hl], b                                       ; $4795: $70
	ld a, e                                          ; $4796: $7b
	cp $9d                                           ; $4797: $fe $9d
	ld h, b                                          ; $4799: $60
	ldh [rPCM34], a                                  ; $479a: $e0 $77
	cp $9d                                           ; $479c: $fe $9d
	ld b, b                                          ; $479e: $40
	ret nz                                           ; $479f: $c0

	ld [hl], a                                       ; $47a0: $77
	cp $db                                           ; $47a1: $fe $db
	add b                                            ; $47a3: $80
	rst $38                                          ; $47a4: $ff
	rst SubAFromDE                                          ; $47a5: $df
	rra                                              ; $47a6: $1f
	ld a, a                                          ; $47a7: $7f
	ld [hl], e                                       ; $47a8: $73
	ld a, [hl]                                       ; $47a9: $7e
	dec l                                            ; $47aa: $2d
	ld a, [hl]                                       ; $47ab: $7e
	ld d, b                                          ; $47ac: $50
	ld a, [hl]                                       ; $47ad: $7e
	call nc, $3696                                   ; $47ae: $d4 $96 $36
	ret                                              ; $47b1: $c9


	ld h, [hl]                                       ; $47b2: $66
	sbc c                                            ; $47b3: $99
	rrca                                             ; $47b4: $0f
	ldh a, [$1f]                                     ; $47b5: $f0 $1f
	ldh [$5f], a                                     ; $47b7: $e0 $5f
	ld a, b                                          ; $47b9: $78
	ld a, $7c                                        ; $47ba: $3e $7c
	and $99                                          ; $47bc: $e6 $99
	ld a, [hl]                                       ; $47be: $7e
	add c                                            ; $47bf: $81
	ld a, h                                          ; $47c0: $7c
	add e                                            ; $47c1: $83
	ld sp, hl                                        ; $47c2: $f9
	ld b, $74                                        ; $47c3: $06 $74
	cp [hl]                                          ; $47c5: $be
	ld a, a                                          ; $47c6: $7f
	call nc, $2098                                   ; $47c7: $d4 $98 $20
	ldh [rAUD1SWEEP], a                              ; $47ca: $e0 $10
	ldh a, [rAUD1SWEEP]                              ; $47cc: $f0 $10
	ldh a, [$08]                                     ; $47ce: $f0 $08
	ld a, e                                          ; $47d0: $7b
	xor [hl]                                         ; $47d1: $ae
	ld a, a                                          ; $47d2: $7f
	cp $96                                           ; $47d3: $fe $96
	adc h                                            ; $47d5: $8c
	ld a, h                                          ; $47d6: $7c
	adc h                                            ; $47d7: $8c
	ld a, h                                          ; $47d8: $7c
	call z, $ca3c                                    ; $47d9: $cc $3c $ca
	ld a, $c2                                        ; $47dc: $3e $c2
	ld a, e                                          ; $47de: $7b
	cp $9d                                           ; $47df: $fe $9d
	sub d                                            ; $47e1: $92
	ld a, [hl]                                       ; $47e2: $7e
	dec e                                            ; $47e3: $1d
	nop                                              ; $47e4: $00
	sbc $99                                          ; $47e5: $de $99
	sbc [hl]                                         ; $47e7: $9e
	xor d                                            ; $47e8: $aa
	db $dd                                           ; $47e9: $dd
	sbc c                                            ; $47ea: $99
	ld a, a                                          ; $47eb: $7f
	ei                                               ; $47ec: $fb
	sbc e                                            ; $47ed: $9b
	ld de, $9999                                     ; $47ee: $11 $99 $99
	nop                                              ; $47f1: $00
	ld [hl], e                                       ; $47f2: $73
	ei                                               ; $47f3: $fb
	rst SubAFromDE                                          ; $47f4: $df
	ld de, $f673                                     ; $47f5: $11 $73 $f6
	sbc h                                            ; $47f8: $9c
	nop                                              ; $47f9: $00
	adc b                                            ; $47fa: $88
	add b                                            ; $47fb: $80
	ld [hl], e                                       ; $47fc: $73
	rst SubAFromBC                                          ; $47fd: $e7
	sbc [hl]                                         ; $47fe: $9e
	xor d                                            ; $47ff: $aa
	adc d                                            ; $4800: $8a
	ld bc, $e4bf                                     ; $4801: $01 $bf $e4
	pop bc                                           ; $4804: $c1
	add b                                            ; $4805: $80
	ld bc, $0181                                     ; $4806: $01 $81 $01
	sbc e                                            ; $4809: $9b
	inc de                                           ; $480a: $13
	inc sp                                           ; $480b: $33
	inc hl                                           ; $480c: $23
	ld [hl], a                                       ; $480d: $77
	ld [hl+], a                                      ; $480e: $22
	ld h, a                                          ; $480f: $67
	ld b, d                                          ; $4810: $42
	rst AddAOntoHL                                          ; $4811: $ef
	add l                                            ; $4812: $85
	xor $85                                          ; $4813: $ee $85
	cp $07                                           ; $4815: $fe $07
	db $fc                                           ; $4817: $fc
	rrca                                             ; $4818: $0f
	db $fc                                           ; $4819: $fc
	dec c                                            ; $481a: $0d
	rst $38                                          ; $481b: $ff
	dec bc                                           ; $481c: $0b
	cp $1b                                           ; $481d: $fe $1b
	cp $1a                                           ; $481f: $fe $1a
	rst $38                                          ; $4821: $ff
	rra                                              ; $4822: $1f
	db $fd                                           ; $4823: $fd
	rla                                              ; $4824: $17
	sub d                                            ; $4825: $92
	rst FarCall                                          ; $4826: $f7
	inc sp                                           ; $4827: $33
	di                                               ; $4828: $f3
	inc sp                                           ; $4829: $33
	di                                               ; $482a: $f3
	ld [hl], $f6                                     ; $482b: $36 $f6
	inc h                                            ; $482d: $24
	db $e4                                           ; $482e: $e4
	and h                                            ; $482f: $a4
	db $e4                                           ; $4830: $e4
	and d                                            ; $4831: $a2
	ldh [c], a                                       ; $4832: $e2
	db $dd                                           ; $4833: $dd
	ret nz                                           ; $4834: $c0

	rst SubAFromDE                                          ; $4835: $df
	pop bc                                           ; $4836: $c1
	db $dd                                           ; $4837: $dd
	add c                                            ; $4838: $81
	db $db                                           ; $4839: $db
	add b                                            ; $483a: $80
	add b                                            ; $483b: $80
	sbc h                                            ; $483c: $9c
	rst $38                                          ; $483d: $ff
	sub h                                            ; $483e: $94
	cp a                                             ; $483f: $bf
	dec a                                            ; $4840: $3d
	or a                                             ; $4841: $b7
	dec l                                            ; $4842: $2d
	ld [hl], a                                       ; $4843: $77
	ld a, l                                          ; $4844: $7d
	ld h, a                                          ; $4845: $67
	ld a, d                                          ; $4846: $7a
	rst JumpTable                                          ; $4847: $c7
	rst GetHLinHL                                          ; $4848: $cf
	cp $7e                                           ; $4849: $fe $7e
	ld a, [$c2fe]                                    ; $484b: $fa $fe $c2
	rst $38                                          ; $484e: $ff
	nop                                              ; $484f: $00
	sbc a                                            ; $4850: $9f
	ld a, h                                          ; $4851: $7c
	ld h, a                                          ; $4852: $67
	cp $c5                                           ; $4853: $fe $c5
	and $bc                                          ; $4855: $e6 $bc
	cp $ac                                           ; $4857: $fe $ac
	ld a, $e4                                        ; $4859: $3e $e4
	add b                                            ; $485b: $80
	inc a                                            ; $485c: $3c
	add hl, de                                       ; $485d: $19
	cp $ab                                           ; $485e: $fe $ab
	ld d, h                                          ; $4860: $54
	ld d, a                                          ; $4861: $57
	xor b                                            ; $4862: $a8
	ld a, a                                          ; $4863: $7f
	add b                                            ; $4864: $80
	rst $38                                          ; $4865: $ff
	add b                                            ; $4866: $80
	cp a                                             ; $4867: $bf
	ret nz                                           ; $4868: $c0

	rst $38                                          ; $4869: $ff
	ret nz                                           ; $486a: $c0

	rst SubAFromDE                                          ; $486b: $df
	ldh [$af], a                                     ; $486c: $e0 $af
	or b                                             ; $486e: $b0
	sub a                                            ; $486f: $97
	sbc b                                            ; $4870: $98
	dec bc                                           ; $4871: $0b
	inc c                                            ; $4872: $0c
	dec b                                            ; $4873: $05
	ld b, $03                                        ; $4874: $06 $03
	inc bc                                           ; $4876: $03
	add a                                            ; $4877: $87
	add a                                            ; $4878: $87
	jr c, jr_068_48ba                                ; $4879: $38 $3f

	adc h                                            ; $487b: $8c

jr_068_487c:
	ld b, a                                          ; $487c: $47
	ld a, a                                          ; $487d: $7f
	rst SubAFromDE                                          ; $487e: $df
	di                                               ; $487f: $f3
	sbc e                                            ; $4880: $9b
	di                                               ; $4881: $f3
	or c                                             ; $4882: $b1
	db $e3                                           ; $4883: $e3
	or e                                             ; $4884: $b3
	pop hl                                           ; $4885: $e1
	ld [hl], d                                       ; $4886: $72
	pop hl                                           ; $4887: $e1
	pop af                                           ; $4888: $f1
	ld h, b                                          ; $4889: $60
	ld h, d                                          ; $488a: $62
	ld h, c                                          ; $488b: $61
	ld h, c                                          ; $488c: $61
	inc hl                                           ; $488d: $23
	daa                                              ; $488e: $27
	cp [hl]                                          ; $488f: $be
	rlca                                             ; $4890: $07
	rlca                                             ; $4891: $07
	ld [bc], a                                       ; $4892: $02
	sbc $01                                          ; $4893: $de $01
	cp a                                             ; $4895: $bf
	ld bc, $8000                                     ; $4896: $01 $00 $80
	jr nc, jr_068_489b                               ; $4899: $30 $00

jr_068_489b:
	db $f4                                           ; $489b: $f4
	cp [hl]                                          ; $489c: $be
	db $f4                                           ; $489d: $f4
	sbc [hl]                                         ; $489e: $9e
	ld e, d                                          ; $489f: $5a
	adc a                                            ; $48a0: $8f
	sbc d                                            ; $48a1: $9a
	rrca                                             ; $48a2: $0f
	rrca                                             ; $48a3: $0f
	rlca                                             ; $48a4: $07
	rst $38                                          ; $48a5: $ff
	rlca                                             ; $48a6: $07
	rra                                              ; $48a7: $1f
	db $e3                                           ; $48a8: $e3
	db $e3                                           ; $48a9: $e3
	rst $38                                          ; $48aa: $ff
	cp $1f                                           ; $48ab: $fe $1f
	db $fd                                           ; $48ad: $fd
	ld [bc], a                                       ; $48ae: $02
	ld [hl], a                                       ; $48af: $77
	ld hl, sp-$15                                    ; $48b0: $f8 $eb
	db $fc                                           ; $48b2: $fc
	add l                                            ; $48b3: $85
	adc $7b                                          ; $48b4: $ce $7b
	ld a, a                                          ; $48b6: $7f
	dec de                                           ; $48b7: $1b
	add b                                            ; $48b8: $80
	ld a, d                                          ; $48b9: $7a

jr_068_48ba:
	ld c, e                                          ; $48ba: $4b
	ld a, b                                          ; $48bb: $78
	jr nc, @+$01                                     ; $48bc: $30 $ff

	and b                                            ; $48be: $a0
	ld e, a                                          ; $48bf: $5f
	ld d, h                                          ; $48c0: $54
	xor e                                            ; $48c1: $ab
	ld hl, sp+$07                                    ; $48c2: $f8 $07
	pop af                                           ; $48c4: $f1
	rrca                                             ; $48c5: $0f
	pop af                                           ; $48c6: $f1
	rrca                                             ; $48c7: $0f
	db $e3                                           ; $48c8: $e3
	rra                                              ; $48c9: $1f
	ldh [c], a                                       ; $48ca: $e2
	ld e, $c4                                        ; $48cb: $1e $c4
	inc a                                            ; $48cd: $3c
	adc h                                            ; $48ce: $8c
	ld a, h                                          ; $48cf: $7c
	cp l                                             ; $48d0: $bd
	ld a, l                                          ; $48d1: $7d
	ld a, h                                          ; $48d2: $7c
	db $fc                                           ; $48d3: $fc
	rst $38                                          ; $48d4: $ff
	rst $38                                          ; $48d5: $ff
	db $fc                                           ; $48d6: $fc
	rst $38                                          ; $48d7: $ff
	sbc e                                            ; $48d8: $9b
	or $ff                                           ; $48d9: $f6 $ff
	ld h, [hl]                                       ; $48db: $66
	rst $38                                          ; $48dc: $ff
	inc hl                                           ; $48dd: $23
	jr nz, jr_068_487c                               ; $48de: $20 $9c

	cp $0b                                           ; $48e0: $fe $0b
	rst $38                                          ; $48e2: $ff
	ld [hl], a                                       ; $48e3: $77
	jr nz, jr_068_491d                               ; $48e4: $20 $37

	ld b, b                                          ; $48e6: $40
	ld a, a                                          ; $48e7: $7f
	cp $95                                           ; $48e8: $fe $95
	cp a                                             ; $48ea: $bf
	ld a, h                                          ; $48eb: $7c
	ld [hl], a                                       ; $48ec: $77
	cp $c4                                           ; $48ed: $fe $c4
	and $2c                                          ; $48ef: $e6 $2c
	cp $a4                                           ; $48f1: $fe $a4
	ld a, h                                          ; $48f3: $7c
	cpl                                              ; $48f4: $2f
	ld h, b                                          ; $48f5: $60
	sbc [hl]                                         ; $48f6: $9e
	inc bc                                           ; $48f7: $03
	cp a                                             ; $48f8: $bf
	ld bc, $2301                                     ; $48f9: $01 $01 $23
	ld h, b                                          ; $48fc: $60
	ld a, a                                          ; $48fd: $7f
	ret nz                                           ; $48fe: $c0

	sub l                                            ; $48ff: $95
	ei                                               ; $4900: $fb
	ld a, h                                          ; $4901: $7c
	db $dd                                           ; $4902: $dd
	cp $cf                                           ; $4903: $fe $cf
	rst GetHLinHL                                          ; $4905: $cf
	dec de                                           ; $4906: $1b
	ld a, [hl]                                       ; $4907: $7e
	ld c, e                                          ; $4908: $4b
	ld a, h                                          ; $4909: $7c
	dec de                                           ; $490a: $1b
	add b                                            ; $490b: $80
	ld a, [hl]                                       ; $490c: $7e
	and b                                            ; $490d: $a0
	sbc [hl]                                         ; $490e: $9e
	rst $38                                          ; $490f: $ff

jr_068_4910:
	daa                                              ; $4910: $27
	add b                                            ; $4911: $80
	sub a                                            ; $4912: $97
	add $00                                          ; $4913: $c6 $00
	cp b                                             ; $4915: $b8
	ld a, h                                          ; $4916: $7c
	ld [hl], h                                       ; $4917: $74
	cp $c6                                           ; $4918: $fe $c6
	sub $1f                                          ; $491a: $d6 $1f
	add b                                            ; $491c: $80

jr_068_491d:
	rst $38                                          ; $491d: $ff
	ld [hl], a                                       ; $491e: $77
	ld a, [hl]                                       ; $491f: $7e
	daa                                              ; $4920: $27
	add b                                            ; $4921: $80
	sub a                                            ; $4922: $97
	rrca                                             ; $4923: $0f
	nop                                              ; $4924: $00
	or a                                             ; $4925: $b7
	ld a, b                                          ; $4926: $78
	ld a, l                                          ; $4927: $7d
	cp $c7                                           ; $4928: $fe $c7
	rst AddAOntoHL                                          ; $492a: $ef
	dec bc                                           ; $492b: $0b
	add b                                            ; $492c: $80
	inc hl                                           ; $492d: $23
	nop                                              ; $492e: $00
	ld a, a                                          ; $492f: $7f
	add b                                            ; $4930: $80
	sub [hl]                                         ; $4931: $96
	add b                                            ; $4932: $80
	nop                                              ; $4933: $00
	ret z                                            ; $4934: $c8

	jr nc, jr_068_491d                               ; $4935: $30 $e6

	jp nz, Jump_068_7cbc                             ; $4937: $c2 $bc $7c

	ld bc, $4002                                     ; $493a: $01 $02 $40
	daa                                              ; $493d: $27
	ld h, b                                          ; $493e: $60
	ld [hl], a                                       ; $493f: $77
	ld e, [hl]                                       ; $4940: $5e
	rra                                              ; $4941: $1f
	ld h, b                                          ; $4942: $60
	ld a, a                                          ; $4943: $7f
	call c, $1f98                                    ; $4944: $dc $98 $1f
	nop                                              ; $4947: $00
	add a                                            ; $4948: $87
	adc $ff                                          ; $4949: $ce $ff
	ld a, h                                          ; $494b: $7c
	nop                                              ; $494c: $00
	ld a, [bc]                                       ; $494d: $0a
	ld b, b                                          ; $494e: $40
	sbc [hl]                                         ; $494f: $9e
	jr c, jr_068_4910                                ; $4950: $38 $be

	inc a                                            ; $4952: $3c
	ld a, h                                          ; $4953: $7c
	ret c                                            ; $4954: $d8

	sub [hl]                                         ; $4955: $96
	ld h, b                                          ; $4956: $60
	ld d, b                                          ; $4957: $50
	jr nz, jr_068_495a                               ; $4958: $20 $00

jr_068_495a:
	nop                                              ; $495a: $00
	call z, Call_068_7898                            ; $495b: $cc $98 $78
	jr nc, jr_068_49d6                               ; $495e: $30 $76

	adc h                                            ; $4960: $8c
	ld [hl], a                                       ; $4961: $77
	and [hl]                                         ; $4962: $a6
	sub a                                            ; $4963: $97
	add a                                            ; $4964: $87
	ld bc, $87df                                     ; $4965: $01 $df $87
	ld a, a                                          ; $4968: $7f
	ld sp, hl                                        ; $4969: $f9
	rst FarCall                                          ; $496a: $f7
	ret nz                                           ; $496b: $c0

	ld d, e                                          ; $496c: $53
	ldh [$9b], a                                     ; $496d: $e0 $9b
	sbc h                                            ; $496f: $9c
	ld a, b                                          ; $4970: $78
	ld [$7330], sp                                   ; $4971: $08 $30 $73
	sbc $2b                                          ; $4974: $de $2b
	ldh [$9c], a                                     ; $4976: $e0 $9c
	call c, Call_068_787c                            ; $4978: $dc $7c $78
	ld l, a                                          ; $497b: $6f
	cp [hl]                                          ; $497c: $be
	daa                                              ; $497d: $27
	ret nz                                           ; $497e: $c0

	sbc l                                            ; $497f: $9d
	db $fc                                           ; $4980: $fc
	ld c, b                                          ; $4981: $48
	sbc $78                                          ; $4982: $de $78
	ld a, e                                          ; $4984: $7b
	sbc $9e                                          ; $4985: $de $9e
	ld sp, $e063                                     ; $4987: $31 $63 $e0
	adc a                                            ; $498a: $8f
	ld bc, $e4bf                                     ; $498b: $01 $bf $e4
	pop bc                                           ; $498e: $c1
	add b                                            ; $498f: $80
	ld bc, $0181                                     ; $4990: $01 $81 $01
	sbc e                                            ; $4993: $9b
	inc de                                           ; $4994: $13
	inc sp                                           ; $4995: $33
	inc hl                                           ; $4996: $23
	ld [hl], a                                       ; $4997: $77
	inc hl                                           ; $4998: $23
	ld h, a                                          ; $4999: $67
	ld b, d                                          ; $499a: $42
	rst AddAOntoHL                                          ; $499b: $ef
	add l                                            ; $499c: $85
	xor $85                                          ; $499d: $ee $85
	cp $07                                           ; $499f: $fe $07
	db $fc                                           ; $49a1: $fc
	rrca                                             ; $49a2: $0f
	db $fc                                           ; $49a3: $fc
	dec c                                            ; $49a4: $0d
	rst $38                                          ; $49a5: $ff
	dec bc                                           ; $49a6: $0b
	cp $1b                                           ; $49a7: $fe $1b
	cp $1a                                           ; $49a9: $fe $1a
	rst $38                                          ; $49ab: $ff
	rra                                              ; $49ac: $1f
	db $fd                                           ; $49ad: $fd
	rla                                              ; $49ae: $17
	sub d                                            ; $49af: $92
	rst FarCall                                          ; $49b0: $f7
	inc sp                                           ; $49b1: $33
	di                                               ; $49b2: $f3
	inc sp                                           ; $49b3: $33
	di                                               ; $49b4: $f3
	ld [hl], $f6                                     ; $49b5: $36 $f6
	inc h                                            ; $49b7: $24
	db $e4                                           ; $49b8: $e4
	and h                                            ; $49b9: $a4
	db $e4                                           ; $49ba: $e4
	and d                                            ; $49bb: $a2
	ldh [c], a                                       ; $49bc: $e2
	db $dd                                           ; $49bd: $dd
	ret nz                                           ; $49be: $c0

	rst SubAFromDE                                          ; $49bf: $df
	pop bc                                           ; $49c0: $c1
	db $dd                                           ; $49c1: $dd

jr_068_49c2:
	add c                                            ; $49c2: $81
	db $db                                           ; $49c3: $db
	add b                                            ; $49c4: $80
	add b                                            ; $49c5: $80
	sbc h                                            ; $49c6: $9c
	rst $38                                          ; $49c7: $ff
	sub h                                            ; $49c8: $94
	cp a                                             ; $49c9: $bf
	dec a                                            ; $49ca: $3d
	or a                                             ; $49cb: $b7
	dec l                                            ; $49cc: $2d
	ld [hl], a                                       ; $49cd: $77
	ld a, l                                          ; $49ce: $7d
	ld h, a                                          ; $49cf: $67
	ld [hl], d                                       ; $49d0: $72
	rst $38                                          ; $49d1: $ff
	rst GetHLinHL                                          ; $49d2: $cf
	cp $f6                                           ; $49d3: $fe $f6
	adc [hl]                                         ; $49d5: $8e

jr_068_49d6:
	ld a, [hl]                                       ; $49d6: $7e
	add d                                            ; $49d7: $82
	rst $38                                          ; $49d8: $ff
	jr c, jr_068_49c2                                ; $49d9: $38 $e7

	ld a, h                                          ; $49db: $7c
	ld b, a                                          ; $49dc: $47
	and $dd                                          ; $49dd: $e6 $dd
	cp $bc                                           ; $49df: $fe $bc
	cp $ac                                           ; $49e1: $fe $ac
	ld a, $e4                                        ; $49e3: $3e $e4
	add b                                            ; $49e5: $80
	inc a                                            ; $49e6: $3c
	sbc c                                            ; $49e7: $99
	ld a, [hl]                                       ; $49e8: $7e
	rst $38                                          ; $49e9: $ff
	nop                                              ; $49ea: $00
	ld a, a                                          ; $49eb: $7f
	add b                                            ; $49ec: $80
	ld a, a                                          ; $49ed: $7f
	add b                                            ; $49ee: $80
	rst $38                                          ; $49ef: $ff
	add b                                            ; $49f0: $80
	cp a                                             ; $49f1: $bf
	ret nz                                           ; $49f2: $c0

	rst $38                                          ; $49f3: $ff
	ret nz                                           ; $49f4: $c0

	rst SubAFromDE                                          ; $49f5: $df
	ldh [$af], a                                     ; $49f6: $e0 $af
	or b                                             ; $49f8: $b0
	sub a                                            ; $49f9: $97
	sbc b                                            ; $49fa: $98
	dec bc                                           ; $49fb: $0b
	inc c                                            ; $49fc: $0c
	dec b                                            ; $49fd: $05
	ld b, $03                                        ; $49fe: $06 $03
	inc bc                                           ; $4a00: $03
	add a                                            ; $4a01: $87
	add a                                            ; $4a02: $87
	jr c, jr_068_4a44                                ; $4a03: $38 $3f

	adc d                                            ; $4a05: $8a
	ld b, a                                          ; $4a06: $47

jr_068_4a07:
	ld a, a                                          ; $4a07: $7f
	rst SubAFromDE                                          ; $4a08: $df
	di                                               ; $4a09: $f3
	sbc e                                            ; $4a0a: $9b
	di                                               ; $4a0b: $f3
	or c                                             ; $4a0c: $b1
	db $e3                                           ; $4a0d: $e3
	or e                                             ; $4a0e: $b3
	pop hl                                           ; $4a0f: $e1
	ld [hl], d                                       ; $4a10: $72
	pop hl                                           ; $4a11: $e1
	pop af                                           ; $4a12: $f1
	ld h, b                                          ; $4a13: $60
	ld h, d                                          ; $4a14: $62
	ld h, c                                          ; $4a15: $61
	ld h, c                                          ; $4a16: $61
	inc hl                                           ; $4a17: $23
	ld h, $01                                        ; $4a18: $26 $01
	rlca                                             ; $4a1a: $07
	cp a                                             ; $4a1b: $bf
	rlca                                             ; $4a1c: $07
	ld [bc], a                                       ; $4a1d: $02
	sbc $01                                          ; $4a1e: $de $01
	cp a                                             ; $4a20: $bf
	ld bc, $8000                                     ; $4a21: $01 $00 $80
	jr nc, jr_068_4a26                               ; $4a24: $30 $00

jr_068_4a26:
	db $f4                                           ; $4a26: $f4
	cp [hl]                                          ; $4a27: $be
	db $f4                                           ; $4a28: $f4
	sbc [hl]                                         ; $4a29: $9e
	ld e, d                                          ; $4a2a: $5a
	adc a                                            ; $4a2b: $8f
	sbc d                                            ; $4a2c: $9a
	rrca                                             ; $4a2d: $0f
	rrca                                             ; $4a2e: $0f
	rlca                                             ; $4a2f: $07
	rra                                              ; $4a30: $1f
	rst $38                                          ; $4a31: $ff
	db $e3                                           ; $4a32: $e3
	rst $38                                          ; $4a33: $ff
	rst $38                                          ; $4a34: $ff
	add e                                            ; $4a35: $83

jr_068_4a36:
	cp $03                                           ; $4a36: $fe $03
	db $fd                                           ; $4a38: $fd
	ld a, d                                          ; $4a39: $7a
	rst SubAFromBC                                          ; $4a3a: $e7
	db $fc                                           ; $4a3b: $fc
	push bc                                          ; $4a3c: $c5
	and $87                                          ; $4a3d: $e6 $87
	and $7b                                          ; $4a3f: $e6 $7b
	ld a, a                                          ; $4a41: $7f
	dec de                                           ; $4a42: $1b
	add b                                            ; $4a43: $80

jr_068_4a44:
	ld a, d                                          ; $4a44: $7a
	ld c, e                                          ; $4a45: $4b
	ld a, b                                          ; $4a46: $78
	jr nc, @+$01                                     ; $4a47: $30 $ff

	ldh [$1f], a                                     ; $4a49: $e0 $1f
	db $fc                                           ; $4a4b: $fc
	inc bc                                           ; $4a4c: $03
	ld hl, sp+$07                                    ; $4a4d: $f8 $07
	pop af                                           ; $4a4f: $f1
	rrca                                             ; $4a50: $0f
	pop af                                           ; $4a51: $f1
	rrca                                             ; $4a52: $0f
	db $e3                                           ; $4a53: $e3
	rra                                              ; $4a54: $1f
	ldh [c], a                                       ; $4a55: $e2
	ld e, $c4                                        ; $4a56: $1e $c4
	inc a                                            ; $4a58: $3c
	adc h                                            ; $4a59: $8c
	ld a, h                                          ; $4a5a: $7c
	cp l                                             ; $4a5b: $bd
	ld a, l                                          ; $4a5c: $7d
	ld a, h                                          ; $4a5d: $7c
	db $fc                                           ; $4a5e: $fc
	rst $38                                          ; $4a5f: $ff
	rst $38                                          ; $4a60: $ff
	db $fc                                           ; $4a61: $fc
	rst $38                                          ; $4a62: $ff
	sbc e                                            ; $4a63: $9b
	or $ff                                           ; $4a64: $f6 $ff
	ld h, [hl]                                       ; $4a66: $66
	rst $38                                          ; $4a67: $ff
	inc hl                                           ; $4a68: $23
	jr nz, jr_068_4a07                               ; $4a69: $20 $9c

	cp $0b                                           ; $4a6b: $fe $0b
	rst $38                                          ; $4a6d: $ff
	ld [hl], a                                       ; $4a6e: $77
	jr nz, @+$3d                                     ; $4a6f: $20 $3b

	ld b, b                                          ; $4a71: $40
	sbc e                                            ; $4a72: $9b
	nop                                              ; $4a73: $00
	rst SubAFromDE                                          ; $4a74: $df
	jr c, jr_068_4a36                                ; $4a75: $38 $bf

	ld a, e                                          ; $4a77: $7b
	ld a, $99                                        ; $4a78: $3e $99
	db $f4                                           ; $4a7a: $f4
	or $ac                                           ; $4a7b: $f6 $ac
	cp $e4                                           ; $4a7d: $fe $e4
	inc a                                            ; $4a7f: $3c
	cpl                                              ; $4a80: $2f
	ld h, b                                          ; $4a81: $60
	sbc l                                            ; $4a82: $9d
	inc bc                                           ; $4a83: $03
	nop                                              ; $4a84: $00
	dec de                                           ; $4a85: $1b
	ld h, b                                          ; $4a86: $60
	sub d                                            ; $4a87: $92
	ld [bc], a                                       ; $4a88: $02
	cp a                                             ; $4a89: $bf
	ld a, b                                          ; $4a8a: $78
	ld a, l                                          ; $4a8b: $7d
	cp $c7                                           ; $4a8c: $fe $c7
	adc $6b                                          ; $4a8e: $ce $6b
	rst AddAOntoHL                                          ; $4a90: $ef
	ld e, e                                          ; $4a91: $5b
	ld a, [hl]                                       ; $4a92: $7e
	ld c, e                                          ; $4a93: $4b
	ld a, b                                          ; $4a94: $78
	dec de                                           ; $4a95: $1b
	add b                                            ; $4a96: $80
	ld [hl], d                                       ; $4a97: $72
	and b                                            ; $4a98: $a0
	scf                                              ; $4a99: $37

jr_068_4a9a:
	add b                                            ; $4a9a: $80
	ld a, a                                          ; $4a9b: $7f
	cp $9e                                           ; $4a9c: $fe $9e
	add $bf                                          ; $4a9e: $c6 $bf
	add b                                            ; $4aa0: $80
	cp h                                             ; $4aa1: $bc
	sbc h                                            ; $4aa2: $9c
	ld a, [hl]                                       ; $4aa3: $7e
	rst SubAFromBC                                          ; $4aa4: $e7
	rst FarCall                                          ; $4aa5: $f7
	rra                                              ; $4aa6: $1f
	add b                                            ; $4aa7: $80
	db $fd                                           ; $4aa8: $fd
	rst SubAFromDE                                          ; $4aa9: $df
	ld bc, $802f                                     ; $4aaa: $01 $2f $80
	sbc [hl]                                         ; $4aad: $9e
	adc a                                            ; $4aae: $8f
	cp [hl]                                          ; $4aaf: $be
	inc bc                                           ; $4ab0: $03
	rst $38                                          ; $4ab1: $ff
	ei                                               ; $4ab2: $fb
	sbc d                                            ; $4ab3: $9a
	ld a, h                                          ; $4ab4: $7c
	and a                                            ; $4ab5: $a7
	rst AddAOntoHL                                          ; $4ab6: $ef
	ld c, a                                          ; $4ab7: $4f
	ld a, h                                          ; $4ab8: $7c
	inc bc                                           ; $4ab9: $03
	add b                                            ; $4aba: $80
	inc hl                                           ; $4abb: $23
	add b                                            ; $4abc: $80
	sbc b                                            ; $4abd: $98
	db $fc                                           ; $4abe: $fc
	nop                                              ; $4abf: $00
	jp nz, $fc42                                     ; $4ac0: $c2 $42 $fc

	inc a                                            ; $4ac3: $3c
	add c                                            ; $4ac4: $81
	ld [bc], a                                       ; $4ac5: $02
	ld b, b                                          ; $4ac6: $40
	inc bc                                           ; $4ac7: $03
	ld h, b                                          ; $4ac8: $60
	dec sp                                           ; $4ac9: $3b
	ld h, b                                          ; $4aca: $60
	ld a, a                                          ; $4acb: $7f
	sbc $9e                                          ; $4acc: $de $9e
	rrca                                             ; $4ace: $0f
	cp a                                             ; $4acf: $bf
	ld a, a                                          ; $4ad0: $7f
	sub a                                            ; $4ad1: $97
	sbc e                                            ; $4ad2: $9b
	inc c                                            ; $4ad3: $0c
	ei                                               ; $4ad4: $fb
	db $fc                                           ; $4ad5: $fc
	nop                                              ; $4ad6: $00
	ld a, [bc]                                       ; $4ad7: $0a
	ld b, b                                          ; $4ad8: $40
	sbc [hl]                                         ; $4ad9: $9e
	jr c, jr_068_4a9a                                ; $4ada: $38 $be

	inc a                                            ; $4adc: $3c
	ld a, h                                          ; $4add: $7c
	ret c                                            ; $4ade: $d8

	sub a                                            ; $4adf: $97
	ld h, b                                          ; $4ae0: $60
	ld d, b                                          ; $4ae1: $50
	jr nz, jr_068_4ae4                               ; $4ae2: $20 $00

jr_068_4ae4:
	nop                                              ; $4ae4: $00
	add [hl]                                         ; $4ae5: $86
	ld e, h                                          ; $4ae6: $5c
	ld a, b                                          ; $4ae7: $78
	cp h                                             ; $4ae8: $bc
	nop                                              ; $4ae9: $00
	jr nc, jr_068_4aec                               ; $4aea: $30 $00

jr_068_4aec:
	ld bc, $9887                                     ; $4aec: $01 $87 $98
	ld bc, $87df                                     ; $4aef: $01 $df $87
	ld a, a                                          ; $4af2: $7f
	ld sp, hl                                        ; $4af3: $f9
	rst FarCall                                          ; $4af4: $f7
	ret nz                                           ; $4af5: $c0

	ld d, a                                          ; $4af6: $57
	ldh [$9b], a                                     ; $4af7: $e0 $9b
	and [hl]                                         ; $4af9: $a6
	ld e, h                                          ; $4afa: $5c
	ld a, h                                          ; $4afb: $7c
	jr c, jr_068_4b15                                ; $4afc: $38 $17

Jump_068_4afe:
	ldh [$98], a                                     ; $4afe: $e0 $98
	add [hl]                                         ; $4b00: $86
	call c, Call_068_4c7c                            ; $4b01: $dc $7c $4c
	ld a, b                                          ; $4b04: $78
	jr c, @+$12                                      ; $4b05: $38 $10

	cp [hl]                                          ; $4b07: $be
	jr nc, jr_068_4b0b                               ; $4b08: $30 $01

	add a                                            ; $4b0a: $87

jr_068_4b0b:
	inc sp                                           ; $4b0b: $33
	ldh [$9a], a                                     ; $4b0c: $e0 $9a
	db $fc                                           ; $4b0e: $fc
	ld a, h                                          ; $4b0f: $7c
	ld a, b                                          ; $4b10: $78
	ld l, b                                          ; $4b11: $68
	jr nc, jr_068_4b8f                               ; $4b12: $30 $7b

	cp a                                             ; $4b14: $bf

jr_068_4b15:
	sbc [hl]                                         ; $4b15: $9e
	ld sp, $e063                                     ; $4b16: $31 $63 $e0
	adc e                                            ; $4b19: $8b
	ld bc, $e4bf                                     ; $4b1a: $01 $bf $e4
	pop bc                                           ; $4b1d: $c1
	add b                                            ; $4b1e: $80
	ld bc, $0181                                     ; $4b1f: $01 $81 $01
	sbc e                                            ; $4b22: $9b
	inc de                                           ; $4b23: $13
	inc sp                                           ; $4b24: $33
	inc hl                                           ; $4b25: $23
	ld [hl], a                                       ; $4b26: $77
	inc hl                                           ; $4b27: $23
	ld h, a                                          ; $4b28: $67

jr_068_4b29:
	ld b, d                                          ; $4b29: $42
	rst AddAOntoHL                                          ; $4b2a: $ef
	add l                                            ; $4b2b: $85
	xor $85                                          ; $4b2c: $ee $85
	cp $07                                           ; $4b2e: $fe $07
	db $fc                                           ; $4b30: $fc
	rrca                                             ; $4b31: $0f
	db $fc                                           ; $4b32: $fc
	dec c                                            ; $4b33: $0d
	rst $38                                          ; $4b34: $ff
	dec bc                                           ; $4b35: $0b
	cp $1b                                           ; $4b36: $fe $1b
	cp $1a                                           ; $4b38: $fe $1a
	rst $38                                          ; $4b3a: $ff
	rra                                              ; $4b3b: $1f
	db $fd                                           ; $4b3c: $fd
	rla                                              ; $4b3d: $17
	sub d                                            ; $4b3e: $92
	rst FarCall                                          ; $4b3f: $f7
	inc sp                                           ; $4b40: $33
	di                                               ; $4b41: $f3
	inc sp                                           ; $4b42: $33
	di                                               ; $4b43: $f3
	ld [hl], $f6                                     ; $4b44: $36 $f6
	inc h                                            ; $4b46: $24
	db $e4                                           ; $4b47: $e4
	and h                                            ; $4b48: $a4
	db $e4                                           ; $4b49: $e4
	and d                                            ; $4b4a: $a2
	ldh [c], a                                       ; $4b4b: $e2
	db $dd                                           ; $4b4c: $dd
	ret nz                                           ; $4b4d: $c0

	rst SubAFromDE                                          ; $4b4e: $df
	pop bc                                           ; $4b4f: $c1
	db $dd                                           ; $4b50: $dd
	add c                                            ; $4b51: $81
	db $db                                           ; $4b52: $db
	add b                                            ; $4b53: $80
	add b                                            ; $4b54: $80
	sbc h                                            ; $4b55: $9c
	rst $38                                          ; $4b56: $ff
	sub h                                            ; $4b57: $94
	cp a                                             ; $4b58: $bf
	dec a                                            ; $4b59: $3d
	or a                                             ; $4b5a: $b7
	dec l                                            ; $4b5b: $2d
	ld [hl], a                                       ; $4b5c: $77
	ld a, l                                          ; $4b5d: $7d
	ld h, a                                          ; $4b5e: $67
	ld [hl], d                                       ; $4b5f: $72
	rst $38                                          ; $4b60: $ff
	rst $38                                          ; $4b61: $ff
	cp $f6                                           ; $4b62: $fe $f6
	adc [hl]                                         ; $4b64: $8e
	ld a, [hl]                                       ; $4b65: $7e
	add d                                            ; $4b66: $82
	rst JumpTable                                          ; $4b67: $c7
	jr c, jr_068_4b29                                ; $4b68: $38 $bf

	ld a, h                                          ; $4b6a: $7c
	ld h, a                                          ; $4b6b: $67
	or $c5                                           ; $4b6c: $f6 $c5
	and $bc                                          ; $4b6e: $e6 $bc
	cp $ac                                           ; $4b70: $fe $ac
	ld a, $e4                                        ; $4b72: $3e $e4
	add b                                            ; $4b74: $80
	inc a                                            ; $4b75: $3c
	sbc c                                            ; $4b76: $99
	ld a, [hl]                                       ; $4b77: $7e
	rst $38                                          ; $4b78: $ff
	nop                                              ; $4b79: $00
	ld a, a                                          ; $4b7a: $7f
	add b                                            ; $4b7b: $80
	ld a, a                                          ; $4b7c: $7f
	add b                                            ; $4b7d: $80
	rst $38                                          ; $4b7e: $ff
	add b                                            ; $4b7f: $80
	cp a                                             ; $4b80: $bf
	ret nz                                           ; $4b81: $c0

	rst $38                                          ; $4b82: $ff
	ret nz                                           ; $4b83: $c0

	rst SubAFromDE                                          ; $4b84: $df
	ldh [$af], a                                     ; $4b85: $e0 $af
	or b                                             ; $4b87: $b0
	sub a                                            ; $4b88: $97
	sbc b                                            ; $4b89: $98
	dec bc                                           ; $4b8a: $0b
	inc c                                            ; $4b8b: $0c
	dec b                                            ; $4b8c: $05
	ld b, $03                                        ; $4b8d: $06 $03

jr_068_4b8f:
	inc bc                                           ; $4b8f: $03
	add a                                            ; $4b90: $87
	add a                                            ; $4b91: $87
	jr c, jr_068_4bd3                                ; $4b92: $38 $3f

	adc d                                            ; $4b94: $8a
	ld b, a                                          ; $4b95: $47

jr_068_4b96:
	ld a, a                                          ; $4b96: $7f
	rst SubAFromDE                                          ; $4b97: $df
	di                                               ; $4b98: $f3
	sbc e                                            ; $4b99: $9b
	di                                               ; $4b9a: $f3
	or c                                             ; $4b9b: $b1
	db $e3                                           ; $4b9c: $e3
	or e                                             ; $4b9d: $b3
	pop hl                                           ; $4b9e: $e1
	ld [hl], d                                       ; $4b9f: $72
	pop hl                                           ; $4ba0: $e1
	pop af                                           ; $4ba1: $f1
	ld h, b                                          ; $4ba2: $60
	ld h, d                                          ; $4ba3: $62
	ld h, c                                          ; $4ba4: $61
	ld h, c                                          ; $4ba5: $61
	inc hl                                           ; $4ba6: $23
	ld h, $01                                        ; $4ba7: $26 $01
	rlca                                             ; $4ba9: $07
	cp a                                             ; $4baa: $bf
	rlca                                             ; $4bab: $07
	ld [bc], a                                       ; $4bac: $02
	sbc $01                                          ; $4bad: $de $01
	cp a                                             ; $4baf: $bf
	ld bc, $8000                                     ; $4bb0: $01 $00 $80
	jr nc, jr_068_4bb5                               ; $4bb3: $30 $00

jr_068_4bb5:
	db $f4                                           ; $4bb5: $f4
	cp [hl]                                          ; $4bb6: $be
	db $f4                                           ; $4bb7: $f4
	sbc [hl]                                         ; $4bb8: $9e
	ld e, d                                          ; $4bb9: $5a
	adc a                                            ; $4bba: $8f
	sbc d                                            ; $4bbb: $9a
	rrca                                             ; $4bbc: $0f
	rrca                                             ; $4bbd: $0f
	rlca                                             ; $4bbe: $07
	add a                                            ; $4bbf: $87
	ld a, a                                          ; $4bc0: $7f
	ld a, e                                          ; $4bc1: $7b
	rst $38                                          ; $4bc2: $ff
	cp a                                             ; $4bc3: $bf
	rst JumpTable                                          ; $4bc4: $c7
	ld a, [$cd07]                                    ; $4bc5: $fa $07 $cd
	ld [hl-], a                                      ; $4bc8: $32
	ld a, a                                          ; $4bc9: $7f
	ld hl, sp-$19                                    ; $4bca: $f8 $e7
	db $e4                                           ; $4bcc: $e4
	add l                                            ; $4bcd: $85
	and $7b                                          ; $4bce: $e6 $7b
	ld a, a                                          ; $4bd0: $7f
	dec de                                           ; $4bd1: $1b
	add b                                            ; $4bd2: $80

jr_068_4bd3:
	ld a, d                                          ; $4bd3: $7a
	ld c, e                                          ; $4bd4: $4b
	ld a, b                                          ; $4bd5: $78
	jr nc, @+$01                                     ; $4bd6: $30 $ff

	ldh [$1f], a                                     ; $4bd8: $e0 $1f
	db $fc                                           ; $4bda: $fc
	inc bc                                           ; $4bdb: $03
	ld hl, sp+$07                                    ; $4bdc: $f8 $07
	pop af                                           ; $4bde: $f1
	rrca                                             ; $4bdf: $0f
	pop af                                           ; $4be0: $f1
	rrca                                             ; $4be1: $0f
	db $e3                                           ; $4be2: $e3
	rra                                              ; $4be3: $1f
	ldh [c], a                                       ; $4be4: $e2
	ld e, $c4                                        ; $4be5: $1e $c4
	inc a                                            ; $4be7: $3c
	adc h                                            ; $4be8: $8c
	ld a, h                                          ; $4be9: $7c
	cp l                                             ; $4bea: $bd
	ld a, l                                          ; $4beb: $7d
	ld a, h                                          ; $4bec: $7c
	db $fc                                           ; $4bed: $fc
	rst $38                                          ; $4bee: $ff
	rst $38                                          ; $4bef: $ff
	db $fc                                           ; $4bf0: $fc
	rst $38                                          ; $4bf1: $ff
	sbc e                                            ; $4bf2: $9b
	or $ff                                           ; $4bf3: $f6 $ff
	ld h, [hl]                                       ; $4bf5: $66
	rst $38                                          ; $4bf6: $ff
	inc hl                                           ; $4bf7: $23
	jr nz, jr_068_4b96                               ; $4bf8: $20 $9c

	cp $0b                                           ; $4bfa: $fe $0b
	rst $38                                          ; $4bfc: $ff
	ld [hl], a                                       ; $4bfd: $77
	jr nz, jr_068_4c3f                               ; $4bfe: $20 $3f

	ld b, b                                          ; $4c00: $40
	ld a, a                                          ; $4c01: $7f
	call $df9a                                       ; $4c02: $cd $9a $df
	jr c, @+$81                                      ; $4c05: $38 $7f

	db $fc                                           ; $4c07: $fc
	rst JumpTable                                          ; $4c08: $c7
	ld l, e                                          ; $4c09: $6b
	ld b, b                                          ; $4c0a: $40
	inc bc                                           ; $4c0b: $03
	ld h, b                                          ; $4c0c: $60
	ld b, e                                          ; $4c0d: $43
	ld h, b                                          ; $4c0e: $60
	sub c                                            ; $4c0f: $91
	db $fd                                           ; $4c10: $fd
	ld [bc], a                                       ; $4c11: $02
	rst FarCall                                          ; $4c12: $f7
	ld a, b                                          ; $4c13: $78
	db $eb                                           ; $4c14: $eb
	db $fc                                           ; $4c15: $fc
	add l                                            ; $4c16: $85
	adc $7a                                          ; $4c17: $ce $7a
	ld a, a                                          ; $4c19: $7f
	dec de                                           ; $4c1a: $1b
	ld a, e                                          ; $4c1b: $7b
	ld c, e                                          ; $4c1c: $4b
	ld a, b                                          ; $4c1d: $78
	inc bc                                           ; $4c1e: $03
	add b                                            ; $4c1f: $80
	dec sp                                           ; $4c20: $3b
	add b                                            ; $4c21: $80
	ld a, a                                          ; $4c22: $7f
	cp $94                                           ; $4c23: $fe $94
	rst JumpTable                                          ; $4c25: $c7
	nop                                              ; $4c26: $00
	or d                                             ; $4c27: $b2
	ld a, b                                          ; $4c28: $78
	db $fc                                           ; $4c29: $fc
	cp $e6                                           ; $4c2a: $fe $e6
	halt                                             ; $4c2c: $76
	ld hl, sp+$3c                                    ; $4c2d: $f8 $3c
	add c                                            ; $4c2f: $81
	ld [bc], a                                       ; $4c30: $02
	ret nz                                           ; $4c31: $c0

jr_068_4c32:
	scf                                              ; $4c32: $37
	ld h, b                                          ; $4c33: $60
	sbc [hl]                                         ; $4c34: $9e
	inc bc                                           ; $4c35: $03
	cp [hl]                                          ; $4c36: $be
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	ld bc, $019e                                     ; $4c39: $01 $9e $01
	cpl                                              ; $4c3c: $2f
	ld h, b                                          ; $4c3d: $60
	ld a, a                                          ; $4c3e: $7f

jr_068_4c3f:
	xor [hl]                                         ; $4c3f: $ae
	ld a, a                                          ; $4c40: $7f
	sbc $99                                          ; $4c41: $de $99
	ld a, e                                          ; $4c43: $7b
	ld [hl], b                                       ; $4c44: $70
	rst $38                                          ; $4c45: $ff
	db $fc                                           ; $4c46: $fc
	xor a                                            ; $4c47: $af
	rst AddAOntoHL                                          ; $4c48: $ef
	ld a, e                                          ; $4c49: $7b
	ld h, b                                          ; $4c4a: $60
	ld [bc], a                                       ; $4c4b: $02
	ret nz                                           ; $4c4c: $c0

	inc hl                                           ; $4c4d: $23
	ld b, b                                          ; $4c4e: $40
	ld [hl], c                                       ; $4c4f: $71
	ldh [$27], a                                     ; $4c50: $e0 $27
	ld b, b                                          ; $4c52: $40
	sbc [hl]                                         ; $4c53: $9e
	add d                                            ; $4c54: $82
	cp a                                             ; $4c55: $bf
	ld hl, sp-$7e                                    ; $4c56: $f8 $82
	sbc h                                            ; $4c58: $9c
	jp nz, Jump_068_7cfc                             ; $4c59: $c2 $fc $7c

	inc bc                                           ; $4c5c: $03
	ld b, b                                          ; $4c5d: $40
	dec de                                           ; $4c5e: $1b
	ld b, b                                          ; $4c5f: $40
	ld a, a                                          ; $4c60: $7f
	ccf                                              ; $4c61: $3f
	daa                                              ; $4c62: $27
	ld b, b                                          ; $4c63: $40
	ld a, a                                          ; $4c64: $7f
	ldh [$7e], a                                     ; $4c65: $e0 $7e
	add e                                            ; $4c67: $83
	sbc c                                            ; $4c68: $99
	ld a, e                                          ; $4c69: $7b
	nop                                              ; $4c6a: $00
	add e                                            ; $4c6b: $83
	add [hl]                                         ; $4c6c: $86
	ld a, a                                          ; $4c6d: $7f
	db $fc                                           ; $4c6e: $fc
	rlca                                             ; $4c6f: $07
	ld b, b                                          ; $4c70: $40
	sbc [hl]                                         ; $4c71: $9e
	jr c, jr_068_4c32                                ; $4c72: $38 $be

	inc a                                            ; $4c74: $3c
	ld a, h                                          ; $4c75: $7c
	ret c                                            ; $4c76: $d8

	sub a                                            ; $4c77: $97
	ld h, b                                          ; $4c78: $60
	ld d, b                                          ; $4c79: $50
	jr nz, jr_068_4c7c                               ; $4c7a: $20 $00

Call_068_4c7c:
jr_068_4c7c:
	nop                                              ; $4c7c: $00
	call z, Call_068_7898                            ; $4c7d: $cc $98 $78
	cp h                                             ; $4c80: $bc
	nop                                              ; $4c81: $00
	jr nc, jr_068_4c84                               ; $4c82: $30 $00

jr_068_4c84:
	ld bc, $9887                                     ; $4c84: $01 $87 $98
	ld bc, $87df                                     ; $4c87: $01 $df $87
	ld a, a                                          ; $4c8a: $7f
	ld sp, hl                                        ; $4c8b: $f9
	rst FarCall                                          ; $4c8c: $f7
	ret nz                                           ; $4c8d: $c0

	ld c, e                                          ; $4c8e: $4b
	ldh [$9d], a                                     ; $4c8f: $e0 $9d
	jr nc, jr_068_4cb3                               ; $4c91: $30 $20

	dec de                                           ; $4c93: $1b
	ldh [$9b], a                                     ; $4c94: $e0 $9b
	adc $9c                                          ; $4c96: $ce $9c
	ld a, h                                          ; $4c98: $7c
	ld a, b                                          ; $4c99: $78
	ld l, a                                          ; $4c9a: $6f
	cp [hl]                                          ; $4c9b: $be
	dec hl                                           ; $4c9c: $2b
	ret nz                                           ; $4c9d: $c0

	ld [hl], a                                       ; $4c9e: $77
	ldh [$7b], a                                     ; $4c9f: $e0 $7b
	pop bc                                           ; $4ca1: $c1
	ld d, a                                          ; $4ca2: $57
	ldh [$80], a                                     ; $4ca3: $e0 $80
	ld bc, $e4bf                                     ; $4ca5: $01 $bf $e4
	pop bc                                           ; $4ca8: $c1
	add b                                            ; $4ca9: $80
	ld bc, $0181                                     ; $4caa: $01 $81 $01
	sbc e                                            ; $4cad: $9b
	inc de                                           ; $4cae: $13
	inc sp                                           ; $4caf: $33
	inc hl                                           ; $4cb0: $23
	ld [hl], a                                       ; $4cb1: $77
	inc hl                                           ; $4cb2: $23

jr_068_4cb3:
	ld h, a                                          ; $4cb3: $67
	ld b, d                                          ; $4cb4: $42
	rst AddAOntoHL                                          ; $4cb5: $ef
	add l                                            ; $4cb6: $85
	xor $85                                          ; $4cb7: $ee $85
	cp $07                                           ; $4cb9: $fe $07
	db $fc                                           ; $4cbb: $fc
	rrca                                             ; $4cbc: $0f
	db $fc                                           ; $4cbd: $fc
	dec c                                            ; $4cbe: $0d
	cp $0a                                           ; $4cbf: $fe $0a
	rst $38                                          ; $4cc1: $ff
	dec de                                           ; $4cc2: $1b
	cp $1a                                           ; $4cc3: $fe $1a
	rst $38                                          ; $4cc5: $ff
	rra                                              ; $4cc6: $1f
	db $fd                                           ; $4cc7: $fd
	rla                                              ; $4cc8: $17
	sub d                                            ; $4cc9: $92
	rst FarCall                                          ; $4cca: $f7
	inc sp                                           ; $4ccb: $33
	di                                               ; $4ccc: $f3
	inc sp                                           ; $4ccd: $33
	di                                               ; $4cce: $f3
	ld [hl], $f6                                     ; $4ccf: $36 $f6
	inc h                                            ; $4cd1: $24
	db $e4                                           ; $4cd2: $e4
	and h                                            ; $4cd3: $a4
	db $e4                                           ; $4cd4: $e4
	and d                                            ; $4cd5: $a2
	ldh [c], a                                       ; $4cd6: $e2
	db $dd                                           ; $4cd7: $dd
	ret nz                                           ; $4cd8: $c0

	rst SubAFromDE                                          ; $4cd9: $df
	pop bc                                           ; $4cda: $c1
	db $dd                                           ; $4cdb: $dd
	add c                                            ; $4cdc: $81
	db $db                                           ; $4cdd: $db
	add b                                            ; $4cde: $80
	add b                                            ; $4cdf: $80
	sbc h                                            ; $4ce0: $9c
	rst $38                                          ; $4ce1: $ff
	sub h                                            ; $4ce2: $94
	cp a                                             ; $4ce3: $bf
	dec a                                            ; $4ce4: $3d
	or a                                             ; $4ce5: $b7
	dec l                                            ; $4ce6: $2d
	ld [hl], a                                       ; $4ce7: $77
	ld a, l                                          ; $4ce8: $7d
	ld h, a                                          ; $4ce9: $67
	ld l, [hl]                                       ; $4cea: $6e
	di                                               ; $4ceb: $f3
	di                                               ; $4cec: $f3
	cp $fe                                           ; $4ced: $fe $fe
	adc [hl]                                         ; $4cef: $8e
	ld a, [hl]                                       ; $4cf0: $7e
	add d                                            ; $4cf1: $82
	rst $38                                          ; $4cf2: $ff
	nop                                              ; $4cf3: $00
	rst SubAFromDE                                          ; $4cf4: $df
	inc a                                            ; $4cf5: $3c
	cp a                                             ; $4cf6: $bf
	ld a, [hl]                                       ; $4cf7: $7e
	ld b, l                                          ; $4cf8: $45
	and $bc                                          ; $4cf9: $e6 $bc
	cp $ac                                           ; $4cfb: $fe $ac
	ld a, $e4                                        ; $4cfd: $3e $e4
	add b                                            ; $4cff: $80
	inc a                                            ; $4d00: $3c
	sbc c                                            ; $4d01: $99
	ld a, [hl]                                       ; $4d02: $7e
	rst $38                                          ; $4d03: $ff
	nop                                              ; $4d04: $00
	ld a, a                                          ; $4d05: $7f
	add b                                            ; $4d06: $80
	ld a, a                                          ; $4d07: $7f
	add b                                            ; $4d08: $80
	rst $38                                          ; $4d09: $ff
	add b                                            ; $4d0a: $80
	cp a                                             ; $4d0b: $bf
	ret nz                                           ; $4d0c: $c0

	rst $38                                          ; $4d0d: $ff
	ret nz                                           ; $4d0e: $c0

	rst SubAFromDE                                          ; $4d0f: $df
	ldh [$af], a                                     ; $4d10: $e0 $af
	or b                                             ; $4d12: $b0
	sub a                                            ; $4d13: $97
	sbc b                                            ; $4d14: $98
	dec bc                                           ; $4d15: $0b
	inc c                                            ; $4d16: $0c
	dec b                                            ; $4d17: $05
	ld b, $03                                        ; $4d18: $06 $03
	inc bc                                           ; $4d1a: $03
	add a                                            ; $4d1b: $87
	add a                                            ; $4d1c: $87
	jr c, jr_068_4d5e                                ; $4d1d: $38 $3f

	adc d                                            ; $4d1f: $8a
	ld b, a                                          ; $4d20: $47
	ld a, a                                          ; $4d21: $7f
	rst SubAFromDE                                          ; $4d22: $df
	di                                               ; $4d23: $f3
	sbc e                                            ; $4d24: $9b
	di                                               ; $4d25: $f3
	or c                                             ; $4d26: $b1
	db $e3                                           ; $4d27: $e3
	or e                                             ; $4d28: $b3
	pop hl                                           ; $4d29: $e1
	ld [hl], d                                       ; $4d2a: $72
	pop hl                                           ; $4d2b: $e1
	pop af                                           ; $4d2c: $f1
	ld h, b                                          ; $4d2d: $60
	ld h, d                                          ; $4d2e: $62
	ld h, c                                          ; $4d2f: $61
	ld h, c                                          ; $4d30: $61
	inc hl                                           ; $4d31: $23
	ld h, $01                                        ; $4d32: $26 $01
	rlca                                             ; $4d34: $07
	cp a                                             ; $4d35: $bf
	rlca                                             ; $4d36: $07
	ld [bc], a                                       ; $4d37: $02
	sbc $01                                          ; $4d38: $de $01
	cp a                                             ; $4d3a: $bf
	ld bc, $8000                                     ; $4d3b: $01 $00 $80
	jr nc, jr_068_4d40                               ; $4d3e: $30 $00

jr_068_4d40:
	db $f4                                           ; $4d40: $f4
	cp [hl]                                          ; $4d41: $be
	db $f4                                           ; $4d42: $f4
	sbc [hl]                                         ; $4d43: $9e
	ld e, d                                          ; $4d44: $5a
	adc a                                            ; $4d45: $8f
	sbc d                                            ; $4d46: $9a
	rrca                                             ; $4d47: $0f
	rrca                                             ; $4d48: $0f
	rlca                                             ; $4d49: $07
	rst SubAFromBC                                          ; $4d4a: $e7
	rra                                              ; $4d4b: $1f
	dec sp                                           ; $4d4c: $3b
	rst $38                                          ; $4d4d: $ff
	rst SubAFromDE                                          ; $4d4e: $df
	rst SubAFromBC                                          ; $4d4f: $e7
	ld a, d                                          ; $4d50: $7a
	add a                                            ; $4d51: $87
	db $fd                                           ; $4d52: $fd
	ld [bc], a                                       ; $4d53: $02
	ld [hl], a                                       ; $4d54: $77
	ld hl, sp-$15                                    ; $4d55: $f8 $eb
	db $fc                                           ; $4d57: $fc
	add l                                            ; $4d58: $85
	adc $7b                                          ; $4d59: $ce $7b
	ld a, a                                          ; $4d5b: $7f
	dec de                                           ; $4d5c: $1b
	add b                                            ; $4d5d: $80

jr_068_4d5e:
	ld a, d                                          ; $4d5e: $7a
	ld c, a                                          ; $4d5f: $4f
	ld a, b                                          ; $4d60: $78
	jr nc, @+$01                                     ; $4d61: $30 $ff

	ldh [$1f], a                                     ; $4d63: $e0 $1f
	db $fc                                           ; $4d65: $fc
	inc bc                                           ; $4d66: $03
	ld hl, sp+$07                                    ; $4d67: $f8 $07
	pop af                                           ; $4d69: $f1
	rrca                                             ; $4d6a: $0f
	pop af                                           ; $4d6b: $f1
	rrca                                             ; $4d6c: $0f
	db $e3                                           ; $4d6d: $e3
	rra                                              ; $4d6e: $1f
	ldh [c], a                                       ; $4d6f: $e2
	ld e, $c4                                        ; $4d70: $1e $c4
	inc a                                            ; $4d72: $3c
	adc h                                            ; $4d73: $8c
	ld a, h                                          ; $4d74: $7c
	cp l                                             ; $4d75: $bd
	ld a, l                                          ; $4d76: $7d
	ld a, h                                          ; $4d77: $7c
	db $fc                                           ; $4d78: $fc
	rst $38                                          ; $4d79: $ff
	rst $38                                          ; $4d7a: $ff
	db $fc                                           ; $4d7b: $fc
	rst $38                                          ; $4d7c: $ff
	sbc e                                            ; $4d7d: $9b
	or $ff                                           ; $4d7e: $f6 $ff
	ld h, [hl]                                       ; $4d80: $66
	rst $38                                          ; $4d81: $ff
	rlca                                             ; $4d82: $07
	jr nz, jr_068_4dbc                               ; $4d83: $20 $37

	ld b, b                                          ; $4d85: $40
	ld a, a                                          ; $4d86: $7f
	cp $95                                           ; $4d87: $fe $95
	rst JumpTable                                          ; $4d89: $c7
	jr c, jr_068_4e07                                ; $4d8a: $38 $7b

	db $fc                                           ; $4d8c: $fc
	db $f4                                           ; $4d8d: $f4
	or $ae                                           ; $4d8e: $f6 $ae
	cp $a4                                           ; $4d90: $fe $a4
	inc a                                            ; $4d92: $3c
	cpl                                              ; $4d93: $2f
	ld h, b                                          ; $4d94: $60
	sbc [hl]                                         ; $4d95: $9e
	inc bc                                           ; $4d96: $03
	cp a                                             ; $4d97: $bf
	ld bc, $2301                                     ; $4d98: $01 $01 $23
	ld h, b                                          ; $4d9b: $60
	ld a, a                                          ; $4d9c: $7f
	ret nz                                           ; $4d9d: $c0

	sub l                                            ; $4d9e: $95
	adc a                                            ; $4d9f: $8f
	ld [hl], b                                       ; $4da0: $70
	ld a, e                                          ; $4da1: $7b
	db $fc                                           ; $4da2: $fc
	call $1fee                                       ; $4da3: $cd $ee $1f
	ld a, a                                          ; $4da6: $7f
	ld c, c                                          ; $4da7: $49
	ld a, d                                          ; $4da8: $7a
	rra                                              ; $4da9: $1f
	add b                                            ; $4daa: $80

jr_068_4dab:
	sbc l                                            ; $4dab: $9d
	dec bc                                           ; $4dac: $0b
	cp $1f                                           ; $4dad: $fe $1f
	add b                                            ; $4daf: $80
	sbc [hl]                                         ; $4db0: $9e
	and $bf                                          ; $4db1: $e6 $bf
	ret nz                                           ; $4db3: $c0

	cp [hl]                                          ; $4db4: $be
	sbc e                                            ; $4db5: $9b
	ld a, b                                          ; $4db6: $78
	or $f6                                           ; $4db7: $f6 $f6
	db $e4                                           ; $4db9: $e4
	inc hl                                           ; $4dba: $23
	add b                                            ; $4dbb: $80

jr_068_4dbc:
	rst $38                                          ; $4dbc: $ff
	ld [hl], a                                       ; $4dbd: $77
	ld a, [hl]                                       ; $4dbe: $7e
	inc hl                                           ; $4dbf: $23
	add b                                            ; $4dc0: $80
	cp a                                             ; $4dc1: $bf
	rst $38                                          ; $4dc2: $ff
	ld a, e                                          ; $4dc3: $7b
	sbc d                                            ; $4dc4: $9a
	db $fc                                           ; $4dc5: $fc
	rst SubAFromBC                                          ; $4dc6: $e7
	rst AddAOntoHL                                          ; $4dc7: $ef
	ld c, c                                          ; $4dc8: $49
	ld a, [hl]                                       ; $4dc9: $7e
	inc bc                                           ; $4dca: $03
	add b                                            ; $4dcb: $80
	inc hl                                           ; $4dcc: $23
	add b                                            ; $4dcd: $80
	sbc b                                            ; $4dce: $98
	ld hl, sp+$00                                    ; $4dcf: $f8 $00
	add $82                                          ; $4dd1: $c6 $82
	db $fc                                           ; $4dd3: $fc
	ld a, h                                          ; $4dd4: $7c
	add c                                            ; $4dd5: $81
	ld [bc], a                                       ; $4dd6: $02
	ld b, b                                          ; $4dd7: $40
	daa                                              ; $4dd8: $27
	ld h, b                                          ; $4dd9: $60
	ld a, e                                          ; $4dda: $7b
	ld e, [hl]                                       ; $4ddb: $5e
	dec de                                           ; $4ddc: $1b
	ld h, b                                          ; $4ddd: $60
	ld a, a                                          ; $4dde: $7f
	call c, Call_068_7f98                            ; $4ddf: $dc $98 $7f
	nop                                              ; $4de2: $00
	rlca                                             ; $4de3: $07
	adc [hl]                                         ; $4de4: $8e
	rst $38                                          ; $4de5: $ff
	db $fc                                           ; $4de6: $fc
	nop                                              ; $4de7: $00
	ld a, [bc]                                       ; $4de8: $0a
	ld b, b                                          ; $4de9: $40
	sbc [hl]                                         ; $4dea: $9e
	jr c, jr_068_4dab                                ; $4deb: $38 $be

	inc a                                            ; $4ded: $3c
	ld a, h                                          ; $4dee: $7c
	ret c                                            ; $4def: $d8

	sub a                                            ; $4df0: $97
	ld h, b                                          ; $4df1: $60
	ld d, b                                          ; $4df2: $50
	jr nz, jr_068_4df5                               ; $4df3: $20 $00

jr_068_4df5:
	nop                                              ; $4df5: $00
	ret z                                            ; $4df6: $c8

	ld e, b                                          ; $4df7: $58
	ld a, b                                          ; $4df8: $78
	cp h                                             ; $4df9: $bc
	nop                                              ; $4dfa: $00
	jr nc, jr_068_4dfd                               ; $4dfb: $30 $00

jr_068_4dfd:
	ld bc, $9887                                     ; $4dfd: $01 $87 $98
	ld bc, $87df                                     ; $4e00: $01 $df $87
	ld a, a                                          ; $4e03: $7f
	ld sp, hl                                        ; $4e04: $f9
	rst FarCall                                          ; $4e05: $f7
	ret nz                                           ; $4e06: $c0

jr_068_4e07:
	ld d, a                                          ; $4e07: $57
	ldh [$9b], a                                     ; $4e08: $e0 $9b
	ld a, b                                          ; $4e0a: $78
	ld [hl], b                                       ; $4e0b: $70
	ld a, b                                          ; $4e0c: $78
	ld l, b                                          ; $4e0d: $68
	rla                                              ; $4e0e: $17
	ldh [$9e], a                                     ; $4e0f: $e0 $9e
	ld l, b                                          ; $4e11: $68
	ld a, e                                          ; $4e12: $7b
	ldh [$9e], a                                     ; $4e13: $e0 $9e
	jr c, jr_068_4e92                                ; $4e15: $38 $7b

	pop hl                                           ; $4e17: $e1
	ld a, a                                          ; $4e18: $7f
	db $fd                                           ; $4e19: $fd
	dec hl                                           ; $4e1a: $2b
	ldh [$9a], a                                     ; $4e1b: $e0 $9a
	ld e, b                                          ; $4e1d: $58
	ld a, h                                          ; $4e1e: $7c
	ld l, h                                          ; $4e1f: $6c
	ld a, h                                          ; $4e20: $7c
	jr c, jr_068_4e72                                ; $4e21: $38 $4f

	ldh [$8d], a                                     ; $4e23: $e0 $8d
	ld bc, $e4bf                                     ; $4e25: $01 $bf $e4
	pop bc                                           ; $4e28: $c1
	add b                                            ; $4e29: $80
	ld bc, $0181                                     ; $4e2a: $01 $81 $01
	sbc e                                            ; $4e2d: $9b
	inc de                                           ; $4e2e: $13
	inc sp                                           ; $4e2f: $33
	inc hl                                           ; $4e30: $23
	ld [hl], a                                       ; $4e31: $77
	inc hl                                           ; $4e32: $23
	ld h, a                                          ; $4e33: $67
	ld b, d                                          ; $4e34: $42
	rst AddAOntoHL                                          ; $4e35: $ef
	add l                                            ; $4e36: $85
	xor $85                                          ; $4e37: $ee $85
	cp $07                                           ; $4e39: $fe $07
	db $fc                                           ; $4e3b: $fc
	rrca                                             ; $4e3c: $0f
	db $fc                                           ; $4e3d: $fc
	dec c                                            ; $4e3e: $0d
	cp $0b                                           ; $4e3f: $fe $0b
	rst $38                                          ; $4e41: $ff
	dec de                                           ; $4e42: $1b
	cp $1a                                           ; $4e43: $fe $1a
	rst $38                                          ; $4e45: $ff
	rra                                              ; $4e46: $1f
	db $fd                                           ; $4e47: $fd
	rla                                              ; $4e48: $17
	sub d                                            ; $4e49: $92
	rst FarCall                                          ; $4e4a: $f7
	inc sp                                           ; $4e4b: $33
	di                                               ; $4e4c: $f3
	inc sp                                           ; $4e4d: $33
	di                                               ; $4e4e: $f3
	ld [hl], $f6                                     ; $4e4f: $36 $f6
	inc h                                            ; $4e51: $24
	db $e4                                           ; $4e52: $e4
	and h                                            ; $4e53: $a4
	db $e4                                           ; $4e54: $e4
	and d                                            ; $4e55: $a2
	ldh [c], a                                       ; $4e56: $e2
	db $dd                                           ; $4e57: $dd
	ret nz                                           ; $4e58: $c0

	rst SubAFromDE                                          ; $4e59: $df
	pop bc                                           ; $4e5a: $c1
	db $dd                                           ; $4e5b: $dd
	add c                                            ; $4e5c: $81
	db $db                                           ; $4e5d: $db
	add b                                            ; $4e5e: $80
	add b                                            ; $4e5f: $80
	sbc h                                            ; $4e60: $9c
	rst $38                                          ; $4e61: $ff
	sub h                                            ; $4e62: $94
	cp a                                             ; $4e63: $bf
	dec a                                            ; $4e64: $3d
	or a                                             ; $4e65: $b7
	dec l                                            ; $4e66: $2d
	ld [hl], a                                       ; $4e67: $77
	ld a, l                                          ; $4e68: $7d
	ld h, a                                          ; $4e69: $67
	ld l, d                                          ; $4e6a: $6a
	rst FarCall                                          ; $4e6b: $f7
	rst FarCall                                          ; $4e6c: $f7
	ld a, [$9efa]                                    ; $4e6d: $fa $fa $9e
	ld a, h                                          ; $4e70: $7c
	add [hl]                                         ; $4e71: $86

jr_068_4e72:
	add a                                            ; $4e72: $87
	ld a, d                                          ; $4e73: $7a
	ld a, a                                          ; $4e74: $7f
	add b                                            ; $4e75: $80
	cp a                                             ; $4e76: $bf
	ld a, h                                          ; $4e77: $7c
	ld b, a                                          ; $4e78: $47
	and $bc                                          ; $4e79: $e6 $bc
	cp $ac                                           ; $4e7b: $fe $ac
	ld a, $e4                                        ; $4e7d: $3e $e4
	add b                                            ; $4e7f: $80
	inc a                                            ; $4e80: $3c
	sbc c                                            ; $4e81: $99
	ld a, [hl]                                       ; $4e82: $7e
	rst $38                                          ; $4e83: $ff
	nop                                              ; $4e84: $00
	ld a, a                                          ; $4e85: $7f
	add b                                            ; $4e86: $80
	ld a, a                                          ; $4e87: $7f
	add b                                            ; $4e88: $80
	rst $38                                          ; $4e89: $ff
	add b                                            ; $4e8a: $80
	cp a                                             ; $4e8b: $bf
	ret nz                                           ; $4e8c: $c0

	rst $38                                          ; $4e8d: $ff
	ret nz                                           ; $4e8e: $c0

	rst SubAFromDE                                          ; $4e8f: $df
	ldh [$af], a                                     ; $4e90: $e0 $af

jr_068_4e92:
	or b                                             ; $4e92: $b0
	sub a                                            ; $4e93: $97
	sbc b                                            ; $4e94: $98
	dec bc                                           ; $4e95: $0b
	inc c                                            ; $4e96: $0c
	dec b                                            ; $4e97: $05
	ld b, $03                                        ; $4e98: $06 $03
	inc bc                                           ; $4e9a: $03
	add a                                            ; $4e9b: $87
	add a                                            ; $4e9c: $87
	jr c, jr_068_4ede                                ; $4e9d: $38 $3f

	adc b                                            ; $4e9f: $88
	ld b, a                                          ; $4ea0: $47

jr_068_4ea1:
	ld a, a                                          ; $4ea1: $7f
	rst SubAFromDE                                          ; $4ea2: $df
	di                                               ; $4ea3: $f3
	sbc e                                            ; $4ea4: $9b
	di                                               ; $4ea5: $f3
	or c                                             ; $4ea6: $b1
	db $e3                                           ; $4ea7: $e3
	or e                                             ; $4ea8: $b3
	pop hl                                           ; $4ea9: $e1
	ld [hl], d                                       ; $4eaa: $72
	pop hl                                           ; $4eab: $e1
	pop af                                           ; $4eac: $f1
	ld h, b                                          ; $4ead: $60
	ld h, e                                          ; $4eae: $63
	ld h, b                                          ; $4eaf: $60
	ld h, d                                          ; $4eb0: $62
	ld hl, $0325                                     ; $4eb1: $21 $25 $03
	inc b                                            ; $4eb4: $04
	inc bc                                           ; $4eb5: $03
	rlca                                             ; $4eb6: $07
	cp a                                             ; $4eb7: $bf
	inc bc                                           ; $4eb8: $03
	nop                                              ; $4eb9: $00
	sbc [hl]                                         ; $4eba: $9e
	ld bc, $01bf                                     ; $4ebb: $01 $bf $01
	nop                                              ; $4ebe: $00
	add b                                            ; $4ebf: $80
	jr nc, jr_068_4ec2                               ; $4ec0: $30 $00

jr_068_4ec2:
	db $f4                                           ; $4ec2: $f4
	cp [hl]                                          ; $4ec3: $be
	db $f4                                           ; $4ec4: $f4
	sbc [hl]                                         ; $4ec5: $9e
	ld e, d                                          ; $4ec6: $5a
	adc a                                            ; $4ec7: $8f
	sbc d                                            ; $4ec8: $9a
	rrca                                             ; $4ec9: $0f
	rrca                                             ; $4eca: $0f
	rlca                                             ; $4ecb: $07
	rst SubAFromBC                                          ; $4ecc: $e7
	rra                                              ; $4ecd: $1f
	sbc e                                            ; $4ece: $9b
	ld a, a                                          ; $4ecf: $7f
	ld a, a                                          ; $4ed0: $7f
	rst SubAFromBC                                          ; $4ed1: $e7
	ld a, [$c587]                                    ; $4ed2: $fa $87 $c5
	ld a, [hl-]                                      ; $4ed5: $3a
	ei                                               ; $4ed6: $fb
	inc b                                            ; $4ed7: $04
	ld a, l                                          ; $4ed8: $7d
	ld a, [$fccf]                                    ; $4ed9: $fa $cf $fc
	ld h, e                                          ; $4edc: $63
	ld h, [hl]                                       ; $4edd: $66

jr_068_4ede:
	dec de                                           ; $4ede: $1b
	add b                                            ; $4edf: $80
	ld a, a                                          ; $4ee0: $7f
	ld c, e                                          ; $4ee1: $4b
	ld a, b                                          ; $4ee2: $78
	jr nc, @+$01                                     ; $4ee3: $30 $ff

	ldh [$1f], a                                     ; $4ee5: $e0 $1f
	db $fc                                           ; $4ee7: $fc
	inc bc                                           ; $4ee8: $03
	ld hl, sp+$07                                    ; $4ee9: $f8 $07
	pop af                                           ; $4eeb: $f1
	rrca                                             ; $4eec: $0f
	pop af                                           ; $4eed: $f1
	rrca                                             ; $4eee: $0f
	db $e3                                           ; $4eef: $e3
	rra                                              ; $4ef0: $1f
	ldh [c], a                                       ; $4ef1: $e2
	ld e, $c4                                        ; $4ef2: $1e $c4
	inc a                                            ; $4ef4: $3c
	adc h                                            ; $4ef5: $8c
	ld a, h                                          ; $4ef6: $7c
	cp l                                             ; $4ef7: $bd
	ld a, l                                          ; $4ef8: $7d
	ld a, h                                          ; $4ef9: $7c
	db $fc                                           ; $4efa: $fc
	rst $38                                          ; $4efb: $ff
	rst $38                                          ; $4efc: $ff
	db $fc                                           ; $4efd: $fc
	rst $38                                          ; $4efe: $ff
	sbc e                                            ; $4eff: $9b
	or $ff                                           ; $4f00: $f6 $ff
	ld h, [hl]                                       ; $4f02: $66
	rst $38                                          ; $4f03: $ff
	dec de                                           ; $4f04: $1b
	jr nz, jr_068_4ea1                               ; $4f05: $20 $9a

	cp $1b                                           ; $4f07: $fe $1b
	rst $38                                          ; $4f09: $ff
	ld a, [de]                                       ; $4f0a: $1a
	rst $38                                          ; $4f0b: $ff
	ccf                                              ; $4f0c: $3f
	ld b, b                                          ; $4f0d: $40

jr_068_4f0e:
	sub c                                            ; $4f0e: $91
	rst $38                                          ; $4f0f: $ff
	ld [bc], a                                       ; $4f10: $02
	add a                                            ; $4f11: $87
	ld a, b                                          ; $4f12: $78
	ld a, a                                          ; $4f13: $7f
	add b                                            ; $4f14: $80
	db $db                                           ; $4f15: $db
	inc a                                            ; $4f16: $3c
	ld l, [hl]                                       ; $4f17: $6e
	xor $c4                                          ; $4f18: $ee $c4
	sbc $a4                                          ; $4f1a: $de $a4
	ld a, h                                          ; $4f1c: $7c
	daa                                              ; $4f1d: $27
	ld h, b                                          ; $4f1e: $60
	ld a, e                                          ; $4f1f: $7b
	ld h, e                                          ; $4f20: $63
	dec hl                                           ; $4f21: $2b
	ld h, b                                          ; $4f22: $60
	sub l                                            ; $4f23: $95

jr_068_4f24:
	db $fd                                           ; $4f24: $fd
	ld [bc], a                                       ; $4f25: $02
	rst JumpTable                                          ; $4f26: $c7
	jr c, jr_068_4f24                                ; $4f27: $38 $fb

	inc b                                            ; $4f29: $04
	ld a, c                                          ; $4f2a: $79
	cp $e5                                           ; $4f2b: $fe $e5
	and $77                                          ; $4f2d: $e6 $77
	ld h, b                                          ; $4f2f: $60
	inc de                                           ; $4f30: $13

jr_068_4f31:
	add b                                            ; $4f31: $80
	ld a, d                                          ; $4f32: $7a
	and b                                            ; $4f33: $a0
	scf                                              ; $4f34: $37
	add b                                            ; $4f35: $80
	ld a, a                                          ; $4f36: $7f
	ld c, e                                          ; $4f37: $4b
	sbc [hl]                                         ; $4f38: $9e
	rst JumpTable                                          ; $4f39: $c7
	cp a                                             ; $4f3a: $bf
	add d                                            ; $4f3b: $82
	ld hl, sp-$64                                    ; $4f3c: $f8 $9c
	jr c, jr_068_4f0e                                ; $4f3e: $38 $ce

	xor $1f                                          ; $4f40: $ee $1f
	add b                                            ; $4f42: $80
	db $fd                                           ; $4f43: $fd
	rst SubAFromDE                                          ; $4f44: $df
	ld bc, $802f                                     ; $4f45: $01 $2f $80
	ld a, a                                          ; $4f48: $7f
	ret nz                                           ; $4f49: $c0

	sbc [hl]                                         ; $4f4a: $9e
	rrca                                             ; $4f4b: $0f
	cp a                                             ; $4f4c: $bf
	inc bc                                           ; $4f4d: $03
	ld a, e                                          ; $4f4e: $7b
	sbc h                                            ; $4f4f: $9c
	ld a, h                                          ; $4f50: $7c
	sbc a                                            ; $4f51: $9f
	rst SubAFromDE                                          ; $4f52: $df
	inc bc                                           ; $4f53: $03
	add b                                            ; $4f54: $80
	rla                                              ; $4f55: $17
	add b                                            ; $4f56: $80
	sbc c                                            ; $4f57: $99
	nop                                              ; $4f58: $00
	and $c6                                          ; $4f59: $e6 $c6
	cp h                                             ; $4f5b: $bc
	ld a, h                                          ; $4f5c: $7c
	add c                                            ; $4f5d: $81
	ld [bc], a                                       ; $4f5e: $02
	ld b, b                                          ; $4f5f: $40
	inc bc                                           ; $4f60: $03
	ld h, b                                          ; $4f61: $60
	inc sp                                           ; $4f62: $33
	ld h, b                                          ; $4f63: $60
	ld a, a                                          ; $4f64: $7f
	call c, Call_068_7f98                            ; $4f65: $dc $98 $7f
	nop                                              ; $4f68: $00
	sub e                                            ; $4f69: $93
	adc [hl]                                         ; $4f6a: $8e
	ld a, e                                          ; $4f6b: $7b
	ld a, h                                          ; $4f6c: $7c
	nop                                              ; $4f6d: $00
	ld a, [bc]                                       ; $4f6e: $0a
	ld b, b                                          ; $4f6f: $40
	sbc [hl]                                         ; $4f70: $9e
	jr c, jr_068_4f31                                ; $4f71: $38 $be

	inc a                                            ; $4f73: $3c
	ld a, h                                          ; $4f74: $7c
	ret c                                            ; $4f75: $d8

	sub [hl]                                         ; $4f76: $96
	ld h, b                                          ; $4f77: $60
	ld d, b                                          ; $4f78: $50
	jr nz, jr_068_4f7b                               ; $4f79: $20 $00

jr_068_4f7b:
	nop                                              ; $4f7b: $00
	xor b                                            ; $4f7c: $a8
	ld d, b                                          ; $4f7d: $50
	ld e, b                                          ; $4f7e: $58
	ld [$8c76], sp                                   ; $4f7f: $08 $76 $8c
	halt                                             ; $4f82: $76
	add l                                            ; $4f83: $85
	sub a                                            ; $4f84: $97
	add a                                            ; $4f85: $87
	ld bc, $87df                                     ; $4f86: $01 $df $87
	ld a, a                                          ; $4f89: $7f
	ld sp, hl                                        ; $4f8a: $f9
	rst FarCall                                          ; $4f8b: $f7
	ret nz                                           ; $4f8c: $c0

	ld c, a                                          ; $4f8d: $4f
	ldh [$9d], a                                     ; $4f8e: $e0 $9d
	jr c, jr_068_4fda                                ; $4f90: $38 $48

	ld [hl], a                                       ; $4f92: $77
	ldh [c], a                                       ; $4f93: $e2
	ld a, a                                          ; $4f94: $7f
	push af                                          ; $4f95: $f5
	cpl                                              ; $4f96: $2f
	ldh [$9a], a                                     ; $4f97: $e0 $9a
	ld hl, sp+$70                                    ; $4f99: $f8 $70
	ld a, b                                          ; $4f9b: $78
	ld l, b                                          ; $4f9c: $68
	ld a, b                                          ; $4f9d: $78
	ld a, e                                          ; $4f9e: $7b
	rst SubAFromDE                                          ; $4f9f: $df
	ld a, a                                          ; $4fa0: $7f
	db $fd                                           ; $4fa1: $fd
	sbc [hl]                                         ; $4fa2: $9e
	ld hl, $e027                                     ; $4fa3: $21 $27 $e0
	rst SubAFromDE                                          ; $4fa6: $df
	ld a, b                                          ; $4fa7: $78
	sbc l                                            ; $4fa8: $9d
	jr z, jr_068_501b                                ; $4fa9: $28 $70

	ld a, e                                          ; $4fab: $7b
	sbc $9e                                          ; $4fac: $de $9e
	ld sp, $e063                                     ; $4fae: $31 $63 $e0
	ld h, $03                                        ; $4fb1: $26 $03
	db $eb                                           ; $4fb3: $eb
	rst SubAFromDE                                          ; $4fb4: $df
	ld bc, $0380                                     ; $4fb5: $01 $80 $03
	ld [bc], a                                       ; $4fb8: $02
	dec d                                            ; $4fb9: $15
	ld d, $16                                        ; $4fba: $16 $16
	dec d                                            ; $4fbc: $15
	rla                                              ; $4fbd: $17
	dec d                                            ; $4fbe: $15
	rra                                              ; $4fbf: $1f
	ld e, $17                                        ; $4fc0: $1e $17
	rra                                              ; $4fc2: $1f
	ld c, e                                          ; $4fc3: $4b
	ld c, a                                          ; $4fc4: $4f
	scf                                              ; $4fc5: $37
	scf                                              ; $4fc6: $37
	rra                                              ; $4fc7: $1f
	rra                                              ; $4fc8: $1f
	rlca                                             ; $4fc9: $07
	rlca                                             ; $4fca: $07
	dec b                                            ; $4fcb: $05
	rlca                                             ; $4fcc: $07
	add hl, bc                                       ; $4fcd: $09
	rrca                                             ; $4fce: $0f
	dec bc                                           ; $4fcf: $0b
	dec c                                            ; $4fd0: $0d
	dec bc                                           ; $4fd1: $0b
	dec c                                            ; $4fd2: $0d
	ld a, [bc]                                       ; $4fd3: $0a
	dec c                                            ; $4fd4: $0d
	rla                                              ; $4fd5: $17
	sub e                                            ; $4fd6: $93
	jr jr_068_4fee                                   ; $4fd7: $18 $15

	ld a, [de]                                       ; $4fd9: $1a

jr_068_4fda:
	dec e                                            ; $4fda: $1d
	ld [de], a                                       ; $4fdb: $12
	rra                                              ; $4fdc: $1f
	ld [de], a                                       ; $4fdd: $12
	ld d, $1b                                        ; $4fde: $16 $1b
	ld a, [bc]                                       ; $4fe0: $0a
	rrca                                             ; $4fe1: $0f
	add hl, bc                                       ; $4fe2: $09
	ld a, e                                          ; $4fe3: $7b
	cp $7f                                           ; $4fe4: $fe $7f
	and $8b                                          ; $4fe6: $e6 $8b
	rlca                                             ; $4fe8: $07
	ld b, $0f                                        ; $4fe9: $06 $0f
	inc c                                            ; $4feb: $0c
	rla                                              ; $4fec: $17
	inc e                                            ; $4fed: $1c

jr_068_4fee:
	dec d                                            ; $4fee: $15
	ld e, $16                                        ; $4fef: $1e $16
	rra                                              ; $4ff1: $1f
	add hl, de                                       ; $4ff2: $19
	add hl, de                                       ; $4ff3: $19
	ld [$0c08], sp                                   ; $4ff4: $08 $08 $0c
	inc c                                            ; $4ff7: $0c
	inc b                                            ; $4ff8: $04
	inc b                                            ; $4ff9: $04
	ld [bc], a                                       ; $4ffa: $02
	ld [bc], a                                       ; $4ffb: $02
	pop af                                           ; $4ffc: $f1
	rst SubAFromDE                                          ; $4ffd: $df
	inc bc                                           ; $4ffe: $03
	adc l                                            ; $4fff: $8d
	inc c                                            ; $5000: $0c
	rrca                                             ; $5001: $0f
	jr nc, jr_068_5043                               ; $5002: $30 $3f

	add $ff                                          ; $5004: $c6 $ff
	ld a, c                                          ; $5006: $79
	ld a, a                                          ; $5007: $7f
	jr nz, @+$41                                     ; $5008: $20 $3f

	ld e, c                                          ; $500a: $59
	ld h, a                                          ; $500b: $67
	ld a, h                                          ; $500c: $7c
	ld b, e                                          ; $500d: $43
	cp $81                                           ; $500e: $fe $81
	cp $81                                           ; $5010: $fe $81
	ld [hl], a                                       ; $5012: $77
	sub h                                            ; $5013: $94
	rst SubAFromDE                                          ; $5014: $df
	rlca                                             ; $5015: $07
	add b                                            ; $5016: $80
	ld [$130f], sp                                   ; $5017: $08 $0f $13
	inc e                                            ; $501a: $1c

jr_068_501b:
	dec l                                            ; $501b: $2d
	ld a, $32                                        ; $501c: $3e $32
	ccf                                              ; $501e: $3f
	ld l, l                                          ; $501f: $6d
	ld [hl], e                                       ; $5020: $73
	ld e, e                                          ; $5021: $5b
	ld a, l                                          ; $5022: $7d
	ld a, l                                          ; $5023: $7d
	ld a, a                                          ; $5024: $7f
	rst AddAOntoHL                                          ; $5025: $ef
	rst $38                                          ; $5026: $ff
	ld a, $ff                                        ; $5027: $3e $ff
	ld d, a                                          ; $5029: $57
	cp a                                             ; $502a: $bf

jr_068_502b:
	add hl, hl                                       ; $502b: $29
	sbc $d7                                          ; $502c: $de $d7

jr_068_502e:
	ld l, a                                          ; $502e: $6f
	ld [hl], c                                       ; $502f: $71
	cp a                                             ; $5030: $bf
	rst GetHLinHL                                          ; $5031: $cf
	rst $38                                          ; $5032: $ff
	ld a, l                                          ; $5033: $7d
	rst $38                                          ; $5034: $ff
	db $e4                                           ; $5035: $e4
	add b                                            ; $5036: $80
	rst $38                                          ; $5037: $ff
	and h                                            ; $5038: $a4
	rst $38                                          ; $5039: $ff
	inc h                                            ; $503a: $24
	rst $38                                          ; $503b: $ff
	ld [de], a                                       ; $503c: $12
	rst $38                                          ; $503d: $ff
	inc de                                           ; $503e: $13
	rst SubAFromDE                                          ; $503f: $df
	ld c, c                                          ; $5040: $49
	rst SubAFromDE                                          ; $5041: $df
	ld c, c                                          ; $5042: $49

jr_068_5043:
	ld l, a                                          ; $5043: $6f
	dec h                                            ; $5044: $25
	ld l, a                                          ; $5045: $6f
	inc hl                                           ; $5046: $23
	or a                                             ; $5047: $b7
	ld sp, $9bbb                                     ; $5048: $31 $bb $9b
	rst $38                                          ; $504b: $ff
	adc l                                            ; $504c: $8d
	cp $89                                           ; $504d: $fe $89
	db $fc                                           ; $504f: $fc
	ld d, e                                          ; $5050: $53
	ld hl, sp+$6f                                    ; $5051: $f8 $6f
	ld hl, sp+$77                                    ; $5053: $f8 $77
	call z, $f490                                    ; $5055: $cc $90 $f4
	adc a                                            ; $5058: $8f
	ei                                               ; $5059: $fb
	rlca                                             ; $505a: $07
	ei                                               ; $505b: $fb
	rlca                                             ; $505c: $07
	push af                                          ; $505d: $f5
	rrca                                             ; $505e: $0f
	jp hl                                            ; $505f: $e9


	rra                                              ; $5060: $1f
	jp c, $2a3f                                      ; $5061: $da $3f $2a

	rst $38                                          ; $5064: $ff
	ld [$d27b], a                                    ; $5065: $ea $7b $d2
	add b                                            ; $5068: $80
	sub h                                            ; $5069: $94
	rst $38                                          ; $506a: $ff
	ld d, h                                          ; $506b: $54
	ld a, a                                          ; $506c: $7f
	ld c, b                                          ; $506d: $48
	ld a, a                                          ; $506e: $7f
	jr z, jr_068_50b0                                ; $506f: $28 $3f

	jr c, jr_068_50b2                                ; $5071: $38 $3f

	ld a, [de]                                       ; $5073: $1a
	rra                                              ; $5074: $1f
	ld a, [bc]                                       ; $5075: $0a
	rrca                                             ; $5076: $0f
	ld a, [bc]                                       ; $5077: $0a
	rrca                                             ; $5078: $0f
	ld [$170f], sp                                   ; $5079: $08 $0f $17
	dec e                                            ; $507c: $1d
	rla                                              ; $507d: $17
	dec e                                            ; $507e: $1d
	dec e                                            ; $507f: $1d
	rra                                              ; $5080: $1f
	inc d                                            ; $5081: $14
	rla                                              ; $5082: $17
	inc de                                           ; $5083: $13
	ld [de], a                                       ; $5084: $12
	inc de                                           ; $5085: $13
	ld [de], a                                       ; $5086: $12
	ld a, [bc]                                       ; $5087: $0a
	sbc d                                            ; $5088: $9a
	dec bc                                           ; $5089: $0b
	add hl, bc                                       ; $508a: $09
	add hl, bc                                       ; $508b: $09
	dec b                                            ; $508c: $05
	dec b                                            ; $508d: $05
	ld l, a                                          ; $508e: $6f
	jr jr_068_502b                                   ; $508f: $18 $9a

	ld [bc], a                                       ; $5091: $02
	inc bc                                           ; $5092: $03
	ld [bc], a                                       ; $5093: $02
	inc bc                                           ; $5094: $03
	ld b, $7b                                        ; $5095: $06 $7b
	jr z, jr_068_502e                                ; $5097: $28 $95

	ld d, $19                                        ; $5099: $16 $19
	ld l, a                                          ; $509b: $6f
	ld [hl], b                                       ; $509c: $70
	sbc a                                            ; $509d: $9f
	ldh [$7f], a                                     ; $509e: $e0 $7f
	add b                                            ; $50a0: $80
	rst $38                                          ; $50a1: $ff
	nop                                              ; $50a2: $00
	ld [hl], a                                       ; $50a3: $77
	cp $80                                           ; $50a4: $fe $80
	rst FarCall                                          ; $50a6: $f7
	adc b                                            ; $50a7: $88
	ei                                               ; $50a8: $fb
	inc b                                            ; $50a9: $04
	db $fc                                           ; $50aa: $fc
	jp $80ff                                         ; $50ab: $c3 $ff $80


	rst $38                                          ; $50ae: $ff
	ld b, b                                          ; $50af: $40

jr_068_50b0:
	ld a, $3e                                        ; $50b0: $3e $3e

jr_068_50b2:
	call $aaff                                       ; $50b2: $cd $ff $aa
	rst FarCall                                          ; $50b5: $f7
	push af                                          ; $50b6: $f5
	jp c, $fb4e                                      ; $50b7: $da $4e $fb

	ei                                               ; $50ba: $fb
	ld l, a                                          ; $50bb: $6f
	or [hl]                                          ; $50bc: $b6
	ld l, a                                          ; $50bd: $6f
	db $ec                                           ; $50be: $ec
	ccf                                              ; $50bf: $3f
	or e                                             ; $50c0: $b3
	ld a, h                                          ; $50c1: $7c
	db $ec                                           ; $50c2: $ec
	di                                               ; $50c3: $f3
	di                                               ; $50c4: $f3
	add e                                            ; $50c5: $83
	db $fc                                           ; $50c6: $fc
	ld c, $f1                                        ; $50c7: $0e $f1
	ei                                               ; $50c9: $fb
	add a                                            ; $50ca: $87
	call c, $f03f                                    ; $50cb: $dc $3f $f0
	rst $38                                          ; $50ce: $ff
	add hl, bc                                       ; $50cf: $09
	rst $38                                          ; $50d0: $ff
	ld b, $ff                                        ; $50d1: $06 $ff
	sbc e                                            ; $50d3: $9b
	db $fc                                           ; $50d4: $fc
	xor [hl]                                         ; $50d5: $ae
	pop af                                           ; $50d6: $f1
	ld e, b                                          ; $50d7: $58
	and $70                                          ; $50d8: $e6 $70
	ret z                                            ; $50da: $c8

	and b                                            ; $50db: $a0
	ret nc                                           ; $50dc: $d0

	ldh [hDisp1_SCY], a                                     ; $50dd: $e0 $90
	ret nz                                           ; $50df: $c0

	and b                                            ; $50e0: $a0
	ld b, b                                          ; $50e1: $40
	ld h, e                                          ; $50e2: $63
	cp $80                                           ; $50e3: $fe $80
	ret nz                                           ; $50e5: $c0

	or b                                             ; $50e6: $b0
	xor a                                            ; $50e7: $af
	rst SubAFromDE                                          ; $50e8: $df
	ret c                                            ; $50e9: $d8

	ld l, a                                          ; $50ea: $6f
	cp a                                             ; $50eb: $bf
	ld a, a                                          ; $50ec: $7f
	ld h, [hl]                                       ; $50ed: $66
	rst $38                                          ; $50ee: $ff
	call z, $acff                                    ; $50ef: $cc $ff $ac
	rst SubAFromDE                                          ; $50f2: $df
	ld sp, hl                                        ; $50f3: $f9
	sbc a                                            ; $50f4: $9f
	ld e, c                                          ; $50f5: $59
	cp a                                             ; $50f6: $bf
	or $3b                                           ; $50f7: $f6 $3b
	or d                                             ; $50f9: $b2
	ld a, e                                          ; $50fa: $7b
	cp e                                             ; $50fb: $bb
	ld [hl], d                                       ; $50fc: $72
	push de                                          ; $50fd: $d5
	ld [hl], d                                       ; $50fe: $72
	ld d, h                                          ; $50ff: $54
	di                                               ; $5100: $f3
	ld e, b                                          ; $5101: $58
	rst FarCall                                          ; $5102: $f7
	add d                                            ; $5103: $82
	add b                                            ; $5104: $80
	ei                                               ; $5105: $fb
	jp z, $cab3                                      ; $5106: $ca $b3 $ca

	or e                                             ; $5109: $b3
	ldh [c], a                                       ; $510a: $e2
	or e                                             ; $510b: $b3
	ldh a, [c]                                       ; $510c: $f2
	and e                                            ; $510d: $a3
	ld [hl], a                                       ; $510e: $77
	and e                                            ; $510f: $a3
	rst FarCall                                          ; $5110: $f7
	inc hl                                           ; $5111: $23
	or $23                                           ; $5112: $f6 $23
	and $33                                          ; $5114: $e6 $33
	and $33                                          ; $5116: $e6 $33
	ld e, a                                          ; $5118: $5f
	or e                                             ; $5119: $b3
	ld e, a                                          ; $511a: $5f
	or e                                             ; $511b: $b3
	ccf                                              ; $511c: $3f
	db $d3                                           ; $511d: $d3
	rst FarCall                                          ; $511e: $f7
	ld e, e                                          ; $511f: $5b
	push af                                          ; $5120: $f5
	ld e, e                                          ; $5121: $5b
	rst AddAOntoHL                                          ; $5122: $ef
	ld e, c                                          ; $5123: $59
	add b                                            ; $5124: $80
	rst SubAFromDE                                          ; $5125: $df
	add hl, hl                                       ; $5126: $29
	rst $38                                          ; $5127: $ff
	xor c                                            ; $5128: $a9
	ei                                               ; $5129: $fb
	xor l                                            ; $512a: $ad
	xor a                                            ; $512b: $af
	push af                                          ; $512c: $f5
	push de                                          ; $512d: $d5
	rst $38                                          ; $512e: $ff

jr_068_512f:
	db $f4                                           ; $512f: $f4
	ld a, a                                          ; $5130: $7f
	db $f4                                           ; $5131: $f4
	ld a, a                                          ; $5132: $7f
	ld a, d                                          ; $5133: $7a
	cp a                                             ; $5134: $bf
	ld a, [$aeaf]                                    ; $5135: $fa $af $ae
	rst AddAOntoHL                                          ; $5138: $ef
	ld l, a                                          ; $5139: $6f
	rst JumpTable                                          ; $513a: $c7
	rst SubAFromBC                                          ; $513b: $e7
	ld b, e                                          ; $513c: $43
	and a                                            ; $513d: $a7
	ld h, e                                          ; $513e: $63
	db $e3                                           ; $513f: $e3
	ld hl, $21f7                                     ; $5140: $21 $f7 $21
	cp $97                                           ; $5143: $fe $97
	inc de                                           ; $5145: $13
	db $fd                                           ; $5146: $fd
	ld d, $fb                                        ; $5147: $16 $fb
	inc e                                            ; $5149: $1c
	ld [hl], $d8                                     ; $514a: $36 $d8
	sbc $de                                          ; $514c: $de $de
	jr nz, jr_068_512f                               ; $514e: $20 $df

	db $10                                           ; $5150: $10
	rst SubAFromDE                                          ; $5151: $df
	ldh a, [$80]                                     ; $5152: $f0 $80
	ret c                                            ; $5154: $d8

	ld hl, sp-$2b                                    ; $5155: $f8 $d5
	db $fd                                           ; $5157: $fd
	sub a                                            ; $5158: $97
	rst $38                                          ; $5159: $ff
	ld h, $fe                                        ; $515a: $26 $fe
	ld c, [hl]                                       ; $515c: $4e
	cp $32                                           ; $515d: $fe $32
	cp $c7                                           ; $515f: $fe $c7
	rst $38                                          ; $5161: $ff
	ld e, $ff                                        ; $5162: $1e $ff
	ld h, e                                          ; $5164: $63
	rst $38                                          ; $5165: $ff
	sbc b                                            ; $5166: $98
	rst $38                                          ; $5167: $ff
	ld b, a                                          ; $5168: $47
	rst $38                                          ; $5169: $ff
	dec sp                                           ; $516a: $3b
	db $fc                                           ; $516b: $fc
	rst SubAFromDE                                          ; $516c: $df
	ldh [$fb], a                                     ; $516d: $e0 $fb
	rlca                                             ; $516f: $07
	ret nz                                           ; $5170: $c0

	jr c, jr_068_5173                                ; $5171: $38 $00

jr_068_5173:
	sbc [hl]                                         ; $5173: $9e
	ret nz                                           ; $5174: $c0

	ld a, $1f                                        ; $5175: $3e $1f
	sub a                                            ; $5177: $97
	inc bc                                           ; $5178: $03
	rlca                                             ; $5179: $07
	rrca                                             ; $517a: $0f
	inc a                                            ; $517b: $3c
	rst $38                                          ; $517c: $ff
	pop af                                           ; $517d: $f1
	ccf                                              ; $517e: $3f
	rst JumpTable                                          ; $517f: $c7
	ldh [$c1], a                                     ; $5180: $e0 $c1
	adc c                                            ; $5182: $89
	ld h, h                                          ; $5183: $64
	ret nz                                           ; $5184: $c0

	or h                                             ; $5185: $b4
	ldh [$da], a                                     ; $5186: $e0 $da
	or b                                             ; $5188: $b0
	adc $98                                          ; $5189: $ce $98
	rst SubAFromBC                                          ; $518b: $e7
	adc h                                            ; $518c: $8c
	ld h, e                                          ; $518d: $63
	add $63                                          ; $518e: $c6 $63
	jp nz, $f171                                     ; $5190: $c2 $71 $f1

	ld c, a                                          ; $5193: $4f
	rst $38                                          ; $5194: $ff
	and b                                            ; $5195: $a0
	ld hl, sp-$60                                    ; $5196: $f8 $a0
	ldh a, [$de]                                     ; $5198: $f0 $de
	ldh [$9a], a                                     ; $519a: $e0 $9a
	ld h, b                                          ; $519c: $60
	ld [hl], b                                       ; $519d: $70
	jr nc, @+$12                                     ; $519e: $30 $10

	db $10                                           ; $51a0: $10
	ld sp, hl                                        ; $51a1: $f9
	rst SubAFromDE                                          ; $51a2: $df
	ldh [$df], a                                     ; $51a3: $e0 $df
	add b                                            ; $51a5: $80
	rst SubAFromDE                                          ; $51a6: $df
	ld [$30df], sp                                   ; $51a7: $08 $df $30
	rst SubAFromDE                                          ; $51aa: $df

jr_068_51ab:
	ld h, b                                          ; $51ab: $60
	rst SubAFromDE                                          ; $51ac: $df
	ret nz                                           ; $51ad: $c0

	rst SubAFromDE                                          ; $51ae: $df
	ldh [hDisp1_OBP0], a                                     ; $51af: $e0 $93
	jr c, jr_068_51ab                                ; $51b1: $38 $f8

	add [hl]                                         ; $51b3: $86
	cp $7f                                           ; $51b4: $fe $7f
	rst $38                                          ; $51b6: $ff
	cp a                                             ; $51b7: $bf
	ret nz                                           ; $51b8: $c0

	rst FarCall                                          ; $51b9: $f7
	rrca                                             ; $51ba: $0f
	ld a, b                                          ; $51bb: $78
	rst $38                                          ; $51bc: $ff
	ld a, e                                          ; $51bd: $7b
	ld h, h                                          ; $51be: $64
	sbc [hl]                                         ; $51bf: $9e
	ld bc, $674b                                     ; $51c0: $01 $4b $67
	sub d                                            ; $51c3: $92
	ld c, $3f                                        ; $51c4: $0e $3f
	ld a, b                                          ; $51c6: $78
	db $fd                                           ; $51c7: $fd
	jp $1fef                                         ; $51c8: $c3 $ef $1f


	db $fc                                           ; $51cb: $fc
	ld a, a                                          ; $51cc: $7f
	ldh a, [c]                                       ; $51cd: $f2
	rst $38                                          ; $51ce: $ff
	ei                                               ; $51cf: $fb
	rra                                              ; $51d0: $1f
	ldh [$c1], a                                     ; $51d1: $e0 $c1
	sbc d                                            ; $51d3: $9a
	inc c                                            ; $51d4: $0c
	rra                                              ; $51d5: $1f
	ld c, $0f                                        ; $51d6: $0e $0f
	rlca                                             ; $51d8: $07
	ld a, e                                          ; $51d9: $7b
	cp $88                                           ; $51da: $fe $88

jr_068_51dc:
	dec b                                            ; $51dc: $05
	rrca                                             ; $51dd: $0f
	inc b                                            ; $51de: $04
	rlca                                             ; $51df: $07
	add d                                            ; $51e0: $82
	rlca                                             ; $51e1: $07
	jp nz, $e103                                     ; $51e2: $c2 $03 $e1

	add e                                            ; $51e5: $83
	ldh [rHDMA2], a                                  ; $51e6: $e0 $52
	ld h, b                                          ; $51e8: $60
	jr c, jr_068_521b                                ; $51e9: $38 $30

	ld e, $18                                        ; $51eb: $1e $18
	dec c                                            ; $51ed: $0d
	inc c                                            ; $51ee: $0c
	rlca                                             ; $51ef: $07
	ld c, $03                                        ; $51f0: $0e $03
	rra                                              ; $51f2: $1f
	ld d, e                                          ; $51f3: $53
	add h                                            ; $51f4: $84
	push af                                          ; $51f5: $f5
	rst SubAFromDE                                          ; $51f6: $df
	ldh a, [hDisp1_OBP1]                                     ; $51f7: $f0 $94
	db $fc                                           ; $51f9: $fc
	inc c                                            ; $51fa: $0c
	cp $f2                                           ; $51fb: $fe $f2
	rrca                                             ; $51fd: $0f
	db $fd                                           ; $51fe: $fd
	inc bc                                           ; $51ff: $03
	xor e                                            ; $5200: $ab
	nop                                              ; $5201: $00
	ld d, l                                          ; $5202: $55
	nop                                              ; $5203: $00
	ld [hl], a                                       ; $5204: $77
	db $fc                                           ; $5205: $fc
	sbc [hl]                                         ; $5206: $9e
	ld a, [hl+]                                      ; $5207: $2a
	ld [hl], a                                       ; $5208: $77
	db $fc                                           ; $5209: $fc
	adc l                                            ; $520a: $8d
	ccf                                              ; $520b: $3f
	ld a, a                                          ; $520c: $7f
	rst $38                                          ; $520d: $ff
	ret nz                                           ; $520e: $c0

	rst SubAFromBC                                          ; $520f: $e7
	rra                                              ; $5210: $1f
	cp b                                             ; $5211: $b8
	ld a, a                                          ; $5212: $7f
	ret nz                                           ; $5213: $c0

	rst $38                                          ; $5214: $ff
	db $fd                                           ; $5215: $fd
	cp $f3                                           ; $5216: $fe $f3
	rst $38                                          ; $5218: $ff
	ld d, d                                          ; $5219: $52

jr_068_521a:
	rst $38                                          ; $521a: $ff

jr_068_521b:
	ld l, c                                          ; $521b: $69

jr_068_521c:
	rst SubAFromDE                                          ; $521c: $df
	ldh [$c1], a                                     ; $521d: $e0 $c1
	add b                                            ; $521f: $80
	rra                                              ; $5220: $1f
	db $e3                                           ; $5221: $e3
	ccf                                              ; $5222: $3f
	ret nz                                           ; $5223: $c0

	ld a, e                                          ; $5224: $7b
	add b                                            ; $5225: $80
	ld h, c                                          ; $5226: $61
	add c                                            ; $5227: $81
	jp $e783                                         ; $5228: $c3 $83 $e7


	add a                                            ; $522b: $87
	ld h, l                                          ; $522c: $65
	rst JumpTable                                          ; $522d: $c7
	ld l, d                                          ; $522e: $6a
	call $e83d                                       ; $522f: $cd $3d $e8
	jr z, jr_068_521c                                ; $5232: $28 $e8

	jr z, jr_068_529e                                ; $5234: $28 $68

	jr c, jr_068_52a8                                ; $5236: $38 $70

	jr nc, jr_068_521a                               ; $5238: $30 $e0

	ld h, b                                          ; $523a: $60
	ret nz                                           ; $523b: $c0

	jr nc, @-$1e                                     ; $523c: $30 $e0

	jr jr_068_51dc                                   ; $523e: $18 $9c

	ldh a, [rP1]                                     ; $5240: $f0 $00
	nop                                              ; $5242: $00
	db $dd                                           ; $5243: $dd
	add b                                            ; $5244: $80
	sbc l                                            ; $5245: $9d
	ld b, b                                          ; $5246: $40
	ret nz                                           ; $5247: $c0

	ld [hl], a                                       ; $5248: $77
	cp $de                                           ; $5249: $fe $de
	rst $38                                          ; $524b: $ff
	ld [hl], l                                       ; $524c: $75
	ld h, d                                          ; $524d: $62
	sbc h                                            ; $524e: $9c
	db $fc                                           ; $524f: $fc
	ccf                                              ; $5250: $3f
	ret nz                                           ; $5251: $c0

	ld [hl], e                                       ; $5252: $73
	ld hl, sp-$80                                    ; $5253: $f8 $80
	add b                                            ; $5255: $80
	cp $e1                                           ; $5256: $fe $e1
	ld [hl], c                                       ; $5258: $71
	rst $38                                          ; $5259: $ff
	ld e, [hl]                                       ; $525a: $5e
	cp $68                                           ; $525b: $fe $68
	ld hl, sp+$28                                    ; $525d: $f8 $28
	ld hl, sp-$5c                                    ; $525f: $f8 $a4
	db $fc                                           ; $5261: $fc
	call z, $fcb4                                    ; $5262: $cc $b4 $fc
	sub h                                            ; $5265: $94
	ld a, [$aa96]                                    ; $5266: $fa $96 $aa
	sub $ee                                          ; $5269: $d6 $ee
	jp nc, $dae6                                     ; $526b: $d2 $e6 $da

	ld e, [hl]                                       ; $526e: $5e
	ld [$eb1d], a                                    ; $526f: $ea $1d $eb
	ld a, l                                          ; $5272: $7d
	xor e                                            ; $5273: $ab
	add c                                            ; $5274: $81
	ld [hl], a                                       ; $5275: $77
	xor c                                            ; $5276: $a9
	ld [hl], a                                       ; $5277: $77
	xor c                                            ; $5278: $a9
	db $db                                           ; $5279: $db
	and l                                            ; $527a: $a5
	xor e                                            ; $527b: $ab
	push de                                          ; $527c: $d5
	xor e                                            ; $527d: $ab
	push de                                          ; $527e: $d5
	ld a, e                                          ; $527f: $7b
	push de                                          ; $5280: $d5
	ld e, c                                          ; $5281: $59
	rst FarCall                                          ; $5282: $f7
	ld e, c                                          ; $5283: $59
	rst FarCall                                          ; $5284: $f7
	ld c, c                                          ; $5285: $49
	rst FarCall                                          ; $5286: $f7
	ld e, d                                          ; $5287: $5a
	or $ba                                           ; $5288: $f6 $ba
	sub $b2                                          ; $528a: $d6 $b2
	sbc $b2                                          ; $528c: $de $b2
	sbc $b4                                          ; $528e: $de $b4
	call c, $7c54                                    ; $5290: $dc $54 $7c
	ld [hl], a                                       ; $5293: $77
	cp $9b                                           ; $5294: $fe $9b
	ld e, b                                          ; $5296: $58
	ld a, b                                          ; $5297: $78
	ld e, b                                          ; $5298: $58
	ld a, b                                          ; $5299: $78
	sbc $f8                                          ; $529a: $de $f8
	sbc [hl]                                         ; $529c: $9e
	ld a, b                                          ; $529d: $78

jr_068_529e:
	db $dd                                           ; $529e: $dd
	ldh a, [hDisp0_OBP1]                                     ; $529f: $f0 $87
	cp b                                             ; $52a1: $b8
	ld hl, sp+$3c                                    ; $52a2: $f8 $3c
	db $f4                                           ; $52a4: $f4
	ccf                                              ; $52a5: $3f
	di                                               ; $52a6: $f3
	xor a                                            ; $52a7: $af

jr_068_52a8:
	ld sp, hl                                        ; $52a8: $f9
	rst SubAFromBC                                          ; $52a9: $e7
	db $fd                                           ; $52aa: $fd
	jp nz, $f27e                                     ; $52ab: $c2 $7e $f2

	ld l, $f9                                        ; $52ae: $2e $f9
	rla                                              ; $52b0: $17
	db $fc                                           ; $52b1: $fc
	dec de                                           ; $52b2: $1b
	cp $0d                                           ; $52b3: $fe $0d
	db $fc                                           ; $52b5: $fc
	rrca                                             ; $52b6: $0f

jr_068_52b7:
	cp $07                                           ; $52b7: $fe $07
	push af                                          ; $52b9: $f5
	rst SubAFromDE                                          ; $52ba: $df
	add b                                            ; $52bb: $80
	sbc c                                            ; $52bc: $99
	ldh a, [rSVBK]                                   ; $52bd: $f0 $70
	ld hl, sp+$08                                    ; $52bf: $f8 $08
	db $fc                                           ; $52c1: $fc
	inc b                                            ; $52c2: $04
	ld [hl], a                                       ; $52c3: $77
	cp $7f                                           ; $52c4: $fe $7f
	ld hl, sp-$64                                    ; $52c6: $f8 $9c
	ret nc                                           ; $52c8: $d0

	jr nc, jr_068_532b                               ; $52c9: $30 $60

	ld a, d                                          ; $52cb: $7a
	ld a, [hl+]                                      ; $52cc: $2a
	push af                                          ; $52cd: $f5
	rst SubAFromDE                                          ; $52ce: $df
	ld b, b                                          ; $52cf: $40
	ld e, a                                          ; $52d0: $5f
	ldh a, [$6f]                                     ; $52d1: $f0 $6f
	ld c, h                                          ; $52d3: $4c
	sbc l                                            ; $52d4: $9d
	jr nz, jr_068_52b7                               ; $52d5: $20 $e0

	inc h                                            ; $52d7: $24
	nop                                              ; $52d8: $00
	rst SubAFromDE                                          ; $52d9: $df
	sbc c                                            ; $52da: $99
	adc [hl]                                         ; $52db: $8e
	xor $bb                                          ; $52dc: $ee $bb
	sbc c                                            ; $52de: $99
	ld h, [hl]                                       ; $52df: $66
	xor $99                                          ; $52e0: $ee $99
	xor d                                            ; $52e2: $aa
	sbc c                                            ; $52e3: $99
	ld h, [hl]                                       ; $52e4: $66
	ld de, $4411                                     ; $52e5: $11 $11 $44
	xor $66                                          ; $52e8: $ee $66
	sbc c                                            ; $52ea: $99
	sbc c                                            ; $52eb: $99
	nop                                              ; $52ec: $00
	ld [hl], a                                       ; $52ed: $77
	ei                                               ; $52ee: $fb
	sbc h                                            ; $52ef: $9c
	ld [hl+], a                                      ; $52f0: $22
	xor $6e                                          ; $52f1: $ee $6e
	ld [hl], a                                       ; $52f3: $77
	ei                                               ; $52f4: $fb
	rst SubAFromDE                                          ; $52f5: $df
	sbc c                                            ; $52f6: $99
	sbc h                                            ; $52f7: $9c
	db $dd                                           ; $52f8: $dd
	xor $dd                                          ; $52f9: $ee $dd
	ld h, b                                          ; $52fb: $60
	ld bc, $ff80                                     ; $52fc: $01 $80 $ff
	cp $5b                                           ; $52ff: $fe $5b
	cp $b7                                           ; $5301: $fe $b7
	db $fc                                           ; $5303: $fc
	or a                                             ; $5304: $b7
	db $fc                                           ; $5305: $fc
	ld [hl], a                                       ; $5306: $77
	call c, $cf78                                    ; $5307: $dc $78 $cf
	xor e                                            ; $530a: $ab
	rst SubAFromDE                                          ; $530b: $df
	sbc a                                            ; $530c: $9f
	db $fc                                           ; $530d: $fc
	rst $38                                          ; $530e: $ff
	ldh [$f7], a                                     ; $530f: $e0 $f7
	adc a                                            ; $5311: $8f
	rst $38                                          ; $5312: $ff
	sbc a                                            ; $5313: $9f
	rst FarCall                                          ; $5314: $f7
	or a                                             ; $5315: $b7
	cp l                                             ; $5316: $bd
	rst $38                                          ; $5317: $ff
	pop af                                           ; $5318: $f1
	ei                                               ; $5319: $fb
	jp c, $e69f                                      ; $531a: $da $9f $e6

	add b                                            ; $531d: $80
	sbc a                                            ; $531e: $9f
	ld [$d580], a                                    ; $531f: $ea $80 $d5
	add b                                            ; $5322: $80
	ld [$c080], a                                    ; $5323: $ea $80 $c0
	add b                                            ; $5326: $80
	ret nz                                           ; $5327: $c0

	ld b, b                                          ; $5328: $40
	add b                                            ; $5329: $80
	nop                                              ; $532a: $00

jr_068_532b:
	ld b, b                                          ; $532b: $40
	add b                                            ; $532c: $80
	and b                                            ; $532d: $a0
	ret nz                                           ; $532e: $c0

	ldh a, [$e0]                                     ; $532f: $f0 $e0
	db $fc                                           ; $5331: $fc
	ld hl, sp-$42                                    ; $5332: $f8 $be
	rst GetHLinHL                                          ; $5334: $cf
	ld a, a                                          ; $5335: $7f
	add e                                            ; $5336: $83
	ld a, a                                          ; $5337: $7f
	add c                                            ; $5338: $81
	ld a, e                                          ; $5339: $7b
	add b                                            ; $533a: $80
	ld a, c                                          ; $533b: $79
	add b                                            ; $533c: $80
	sub a                                            ; $533d: $97
	ld l, b                                          ; $533e: $68
	add b                                            ; $533f: $80
	ld sp, hl                                        ; $5340: $f9
	rrca                                             ; $5341: $0f
	db $fd                                           ; $5342: $fd
	rrca                                             ; $5343: $0f
	db $fd                                           ; $5344: $fd
	dec b                                            ; $5345: $05
	ld a, e                                          ; $5346: $7b
	cp $8d                                           ; $5347: $fe $8d
	rlca                                             ; $5349: $07
	rst $38                                          ; $534a: $ff
	inc bc                                           ; $534b: $03
	cp a                                             ; $534c: $bf
	jp $02ff                                         ; $534d: $c3 $ff $02


	rst $38                                          ; $5350: $ff
	ld [bc], a                                       ; $5351: $02
	ld a, a                                          ; $5352: $7f
	add b                                            ; $5353: $80
	cp a                                             ; $5354: $bf
	ret nz                                           ; $5355: $c0

	ld a, e                                          ; $5356: $7b
	ret nz                                           ; $5357: $c0

	inc hl                                           ; $5358: $23
	ld b, b                                          ; $5359: $40
	ld bc, $01bf                                     ; $535a: $01 $bf $01
	nop                                              ; $535d: $00
	add b                                            ; $535e: $80
	add b                                            ; $535f: $80
	cp c                                             ; $5360: $b9
	db $ed                                           ; $5361: $ed
	or l                                             ; $5362: $b5
	db $ed                                           ; $5363: $ed
	db $dd                                           ; $5364: $dd
	ld d, l                                          ; $5365: $55
	db $dd                                           ; $5366: $dd
	ld [hl], a                                       ; $5367: $77
	or $3f                                           ; $5368: $f6 $3f
	sbc a                                            ; $536a: $9f
	ld a, [hl]                                       ; $536b: $7e
	ei                                               ; $536c: $fb
	ld a, h                                          ; $536d: $7c
	or $0f                                           ; $536e: $f6 $0f
	push bc                                          ; $5370: $c5
	dec sp                                           ; $5371: $3b
	cp e                                             ; $5372: $bb
	ld a, l                                          ; $5373: $7d
	rst AddAOntoHL                                          ; $5374: $ef
	ld l, l                                          ; $5375: $6d
	rst $38                                          ; $5376: $ff
	ld a, a                                          ; $5377: $7f
	bit 7, c                                         ; $5378: $cb $79
	xor e                                            ; $537a: $ab
	ld l, l                                          ; $537b: $6d
	push bc                                          ; $537c: $c5
	dec sp                                           ; $537d: $3b
	sbc l                                            ; $537e: $9d
	cp $83                                           ; $537f: $fe $83
	ccf                                              ; $5381: $3f
	add b                                            ; $5382: $80
	sub a                                            ; $5383: $97
	rst $38                                          ; $5384: $ff
	add b                                            ; $5385: $80
	rst FarCall                                          ; $5386: $f7
	adc a                                            ; $5387: $8f
	rst AddAOntoHL                                          ; $5388: $ef
	sbc a                                            ; $5389: $9f
	db $dd                                           ; $538a: $dd
	cp a                                             ; $538b: $bf
	ld l, a                                          ; $538c: $6f
	add b                                            ; $538d: $80
	ccf                                              ; $538e: $3f
	and b                                            ; $538f: $a0
	sub l                                            ; $5390: $95
	rst $38                                          ; $5391: $ff
	nop                                              ; $5392: $00
	ld a, a                                          ; $5393: $7f
	add b                                            ; $5394: $80
	cp e                                             ; $5395: $bb
	ret nz                                           ; $5396: $c0

	ld h, e                                          ; $5397: $63
	ret nz                                           ; $5398: $c0

	ld bc, $3780                                     ; $5399: $01 $80 $37
	and b                                            ; $539c: $a0
	sub l                                            ; $539d: $95
	db $fd                                           ; $539e: $fd
	inc bc                                           ; $539f: $03
	rst JumpTable                                          ; $53a0: $c7
	add hl, sp                                       ; $53a1: $39
	cp e                                             ; $53a2: $bb
	ld a, l                                          ; $53a3: $7d
	db $fd                                           ; $53a4: $fd
	ld a, a                                          ; $53a5: $7f
	rst GetHLinHL                                          ; $53a6: $cf
	ld a, a                                          ; $53a7: $7f
	rra                                              ; $53a8: $1f
	and b                                            ; $53a9: $a0
	sub l                                            ; $53aa: $95
	db $fc                                           ; $53ab: $fc
	add b                                            ; $53ac: $80

jr_068_53ad:
	pop af                                           ; $53ad: $f1
	adc [hl]                                         ; $53ae: $8e
	rst GetHLinHL                                          ; $53af: $cf
	cp a                                             ; $53b0: $bf
	di                                               ; $53b1: $f3
	ei                                               ; $53b2: $fb
	rst SubAFromDE                                          ; $53b3: $df
	cp a                                             ; $53b4: $bf
	cpl                                              ; $53b5: $2f
	and b                                            ; $53b6: $a0
	ld a, a                                          ; $53b7: $7f
	cp $9a                                           ; $53b8: $fe $9a
	dec sp                                           ; $53ba: $3b
	nop                                              ; $53bb: $00
	ld h, e                                          ; $53bc: $63
	add b                                            ; $53bd: $80
	pop bc                                           ; $53be: $c1
	ld a, e                                          ; $53bf: $7b
	sbc [hl]                                         ; $53c0: $9e
	rst $38                                          ; $53c1: $ff
	ccf                                              ; $53c2: $3f
	and b                                            ; $53c3: $a0
	sbc b                                            ; $53c4: $98
	rst $38                                          ; $53c5: $ff
	ld bc, $19e7                                     ; $53c6: $01 $e7 $19
	db $fd                                           ; $53c9: $fd
	ccf                                              ; $53ca: $3f
	rst AddAOntoHL                                          ; $53cb: $ef
	dec de                                           ; $53cc: $1b
	and b                                            ; $53cd: $a0
	ld a, a                                          ; $53ce: $7f
	cp $9c                                           ; $53cf: $fe $9c
	ld hl, sp-$80                                    ; $53d1: $f8 $80
	ldh [rPCM34], a                                  ; $53d3: $e0 $77
	ld a, [$b09d]                                    ; $53d5: $fa $9d $b0
	rst AddAOntoHL                                          ; $53d8: $ef
	dec hl                                           ; $53d9: $2b
	and b                                            ; $53da: $a0
	sbc [hl]                                         ; $53db: $9e
	ld [hl], e                                       ; $53dc: $73
	cp a                                             ; $53dd: $bf
	inc bc                                           ; $53de: $03
	pop bc                                           ; $53df: $c1
	sbc h                                            ; $53e0: $9c
	ld b, b                                          ; $53e1: $40
	add c                                            ; $53e2: $81
	ret nz                                           ; $53e3: $c0

	scf                                              ; $53e4: $37
	ld b, b                                          ; $53e5: $40
	ld a, a                                          ; $53e6: $7f
	and b                                            ; $53e7: $a0
	ld a, a                                          ; $53e8: $7f
	cp $99                                           ; $53e9: $fe $99
	push af                                          ; $53eb: $f5
	dec bc                                           ; $53ec: $0b
	db $fd                                           ; $53ed: $fd
	ld b, a                                          ; $53ee: $47
	cp e                                             ; $53ef: $bb
	ld a, l                                          ; $53f0: $7d
	ld [hl], a                                       ; $53f1: $77
	and b                                            ; $53f2: $a0
	ld a, a                                          ; $53f3: $7f
	ld a, l                                          ; $53f4: $7d
	ld a, e                                          ; $53f5: $7b
	ld a, [de]                                       ; $53f6: $1a
	cp a                                             ; $53f7: $bf
	ld bc, $9b0c                                     ; $53f8: $01 $0c $9b
	dec b                                            ; $53fb: $05
	rlca                                             ; $53fc: $07
	inc bc                                           ; $53fd: $03
	ld bc, $03bc                                     ; $53fe: $01 $bc $03
	ld bc, $8101                                     ; $5401: $01 $01 $81
	db $d3                                           ; $5404: $d3
	sbc [hl]                                         ; $5405: $9e
	pop hl                                           ; $5406: $e1
	sbc $ff                                          ; $5407: $de $ff
	add b                                            ; $5409: $80
	ld a, h                                          ; $540a: $7c
	sbc a                                            ; $540b: $9f
	jr jr_068_53ad                                   ; $540c: $18 $9f

	ld [$c37e], sp                                   ; $540e: $08 $7e $c3
	ld a, $c3                                        ; $5411: $3e $c3
	cp $03                                           ; $5413: $fe $03
	ld a, [$ff87]                                    ; $5415: $fa $87 $ff
	rlca                                             ; $5418: $07
	rst FarCall                                          ; $5419: $f7
	rrca                                             ; $541a: $0f
	rst $38                                          ; $541b: $ff
	rrca                                             ; $541c: $0f
	db $fd                                           ; $541d: $fd
	rra                                              ; $541e: $1f
	push hl                                          ; $541f: $e5
	daa                                              ; $5420: $27
	push bc                                          ; $5421: $c5
	ld b, a                                          ; $5422: $47
	add l                                            ; $5423: $85
	add a                                            ; $5424: $87
	dec b                                            ; $5425: $05
	rlca                                             ; $5426: $07
	add l                                            ; $5427: $85
	add a                                            ; $5428: $87
	sbc c                                            ; $5429: $99
	and $66                                          ; $542a: $e6 $66
	db $f4                                           ; $542c: $f4
	inc d                                            ; $542d: $14
	db $fc                                           ; $542e: $fc
	inc c                                            ; $542f: $0c
	ld h, a                                          ; $5430: $67
	ret nz                                           ; $5431: $c0

	sbc l                                            ; $5432: $9d
	rrca                                             ; $5433: $0f
	rlca                                             ; $5434: $07
	rla                                              ; $5435: $17
	ret nz                                           ; $5436: $c0

	sbc e                                            ; $5437: $9b
	ld a, d                                          ; $5438: $7a
	add a                                            ; $5439: $87
	rst $38                                          ; $543a: $ff
	add a                                            ; $543b: $87
	rrca                                             ; $543c: $0f
	ret nz                                           ; $543d: $c0

	sbc d                                            ; $543e: $9a
	ld c, $0d                                        ; $543f: $0e $0d
	rlca                                             ; $5441: $07
	rlca                                             ; $5442: $07
	ld [bc], a                                       ; $5443: $02
	ld l, e                                          ; $5444: $6b
	cp [hl]                                          ; $5445: $be
	inc bc                                           ; $5446: $03
	ret nz                                           ; $5447: $c0

	dec sp                                           ; $5448: $3b
	ret nz                                           ; $5449: $c0

	sub a                                            ; $544a: $97
	ld e, $1d                                        ; $544b: $1e $1d
	rra                                              ; $544d: $1f
	rrca                                             ; $544e: $0f
	rrca                                             ; $544f: $0f
	ld a, [bc]                                       ; $5450: $0a
	rlca                                             ; $5451: $07
	ld b, $77                                        ; $5452: $06 $77
	cp [hl]                                          ; $5454: $be
	scf                                              ; $5455: $37
	ret nz                                           ; $5456: $c0

	sbc [hl]                                         ; $5457: $9e
	ld a, a                                          ; $5458: $7f
	dec hl                                           ; $5459: $2b
	ret nz                                           ; $545a: $c0

	ld e, c                                          ; $545b: $59
	ld bc, $ff80                                     ; $545c: $01 $80 $ff
	cp $5b                                           ; $545f: $fe $5b
	cp $b7                                           ; $5461: $fe $b7
	db $fc                                           ; $5463: $fc
	or a                                             ; $5464: $b7
	db $fc                                           ; $5465: $fc
	ld [hl], h                                       ; $5466: $74
	rst SubAFromDE                                          ; $5467: $df
	ld e, a                                          ; $5468: $5f
	rst $38                                          ; $5469: $ff
	cp a                                             ; $546a: $bf
	add sp, -$07                                     ; $546b: $e8 $f9
	adc $ef                                          ; $546d: $ce $ef
	sbc a                                            ; $546f: $9f
	db $d3                                           ; $5470: $d3
	cp e                                             ; $5471: $bb
	ldh a, [c]                                       ; $5472: $f2
	or e                                             ; $5473: $b3
	rst FarCall                                          ; $5474: $f7
	rst $38                                          ; $5475: $ff
	db $dd                                           ; $5476: $dd
	cp a                                             ; $5477: $bf
	pop de                                           ; $5478: $d1
	cp e                                             ; $5479: $bb
	jp c, $c68f                                      ; $547a: $da $8f $c6

	sbc d                                            ; $547d: $9a
	adc [hl]                                         ; $547e: $8e
	reti                                             ; $547f: $d9


	add [hl]                                         ; $5480: $86
	ret nz                                           ; $5481: $c0

	add b                                            ; $5482: $80
	ld [hl], e                                       ; $5483: $73
	cp $82                                           ; $5484: $fe $82
	ld b, b                                          ; $5486: $40
	add b                                            ; $5487: $80
	nop                                              ; $5488: $00
	ld b, b                                          ; $5489: $40
	add b                                            ; $548a: $80
	and b                                            ; $548b: $a0
	ret nz                                           ; $548c: $c0

	ldh a, [$e0]                                     ; $548d: $f0 $e0
	db $fc                                           ; $548f: $fc
	ld hl, sp-$42                                    ; $5490: $f8 $be
	rst GetHLinHL                                          ; $5492: $cf
	ld a, a                                          ; $5493: $7f
	add e                                            ; $5494: $83
	ld a, a                                          ; $5495: $7f
	add c                                            ; $5496: $81
	ld a, e                                          ; $5497: $7b
	add b                                            ; $5498: $80
	ld a, c                                          ; $5499: $79
	add b                                            ; $549a: $80
	ld l, b                                          ; $549b: $68
	add b                                            ; $549c: $80
	ld sp, hl                                        ; $549d: $f9
	rrca                                             ; $549e: $0f
	db $fd                                           ; $549f: $fd
	rrca                                             ; $54a0: $0f
	db $fd                                           ; $54a1: $fd
	dec b                                            ; $54a2: $05
	ld a, e                                          ; $54a3: $7b
	cp $91                                           ; $54a4: $fe $91
	rlca                                             ; $54a6: $07
	ld a, a                                          ; $54a7: $7f
	add e                                            ; $54a8: $83
	cp a                                             ; $54a9: $bf
	jp $02ff                                         ; $54aa: $c3 $ff $02


	ld a, a                                          ; $54ad: $7f
	add d                                            ; $54ae: $82
	cp a                                             ; $54af: $bf
	ret nz                                           ; $54b0: $c0

	ccf                                              ; $54b1: $3f
	ret nz                                           ; $54b2: $c0

	ld a, e                                          ; $54b3: $7b
	cp h                                             ; $54b4: $bc
	ld h, e                                          ; $54b5: $63
	ld bc, $0001                                     ; $54b6: $01 $01 $00
	cp c                                             ; $54b9: $b9
	add b                                            ; $54ba: $80
	db $ed                                           ; $54bb: $ed

Call_068_54bc:
	or l                                             ; $54bc: $b5
	db $ed                                           ; $54bd: $ed
	db $dd                                           ; $54be: $dd
	ld d, l                                          ; $54bf: $55
	db $dd                                           ; $54c0: $dd
	ld [hl], a                                       ; $54c1: $77
	or $3f                                           ; $54c2: $f6 $3f
	sbc a                                            ; $54c4: $9f
	ld a, [hl]                                       ; $54c5: $7e
	rst $38                                          ; $54c6: $ff
	ld h, h                                          ; $54c7: $64
	or $39                                           ; $54c8: $f6 $39
	ei                                               ; $54ca: $fb
	ld a, l                                          ; $54cb: $7d
	rst GetHLinHL                                          ; $54cc: $cf
	ld c, a                                          ; $54cd: $4f
	ret                                              ; $54ce: $c9


	ld e, a                                          ; $54cf: $5f
	ei                                               ; $54d0: $fb
	ld a, c                                          ; $54d1: $79
	bit 7, c                                         ; $54d2: $cb $79
	xor a                                            ; $54d4: $af
	ld l, c                                          ; $54d5: $69
	call $fe33                                       ; $54d6: $cd $33 $fe

jr_068_54d9:
	add e                                            ; $54d9: $83
	ld c, a                                          ; $54da: $4f
	add b                                            ; $54db: $80
	sbc e                                            ; $54dc: $9b
	rst $38                                          ; $54dd: $ff
	ret z                                            ; $54de: $c8

	ld sp, hl                                        ; $54df: $f9
	add [hl]                                         ; $54e0: $86
	ld [hl], a                                       ; $54e1: $77
	ld a, [hl]                                       ; $54e2: $7e
	sbc e                                            ; $54e3: $9b
	rst FarCall                                          ; $54e4: $f7
	cp a                                             ; $54e5: $bf
	db $fd                                           ; $54e6: $fd
	rst $38                                          ; $54e7: $ff
	ld l, a                                          ; $54e8: $6f
	add b                                            ; $54e9: $80
	ld b, a                                          ; $54ea: $47
	and b                                            ; $54eb: $a0
	ld a, e                                          ; $54ec: $7b
	sbc [hl]                                         ; $54ed: $9e
	sbc l                                            ; $54ee: $9d
	add b                                            ; $54ef: $80
	cp a                                             ; $54f0: $bf
	inc hl                                           ; $54f1: $23
	and b                                            ; $54f2: $a0
	sub l                                            ; $54f3: $95
	cp $01                                           ; $54f4: $fe $01
	rst SubAFromHL                                          ; $54f6: $d7
	add hl, sp                                       ; $54f7: $39
	cp e                                             ; $54f8: $bb
	ld a, l                                          ; $54f9: $7d
	rst GetHLinHL                                          ; $54fa: $cf
	ld l, a                                          ; $54fb: $6f
	ei                                               ; $54fc: $fb
	ld a, l                                          ; $54fd: $7d
	daa                                              ; $54fe: $27
	and b                                            ; $54ff: $a0
	sbc l                                            ; $5500: $9d
	rst $38                                          ; $5501: $ff
	add b                                            ; $5502: $80

jr_068_5503:
	ld [hl], a                                       ; $5503: $77
	cp $99                                           ; $5504: $fe $99
	and $9f                                          ; $5506: $e6 $9f
	rst SubAFromDE                                          ; $5508: $df
	cp a                                             ; $5509: $bf
	pop af                                           ; $550a: $f1
	ei                                               ; $550b: $fb
	cpl                                              ; $550c: $2f
	and b                                            ; $550d: $a0
	sbc [hl]                                         ; $550e: $9e
	rst $38                                          ; $550f: $ff
	cp [hl]                                          ; $5510: $be
	rst $38                                          ; $5511: $ff
	ei                                               ; $5512: $fb
	db $e3                                           ; $5513: $e3
	sbc h                                            ; $5514: $9c
	ret nz                                           ; $5515: $c0

	ld bc, $3780                                     ; $5516: $01 $80 $37
	and b                                            ; $5519: $a0
	sbc [hl]                                         ; $551a: $9e
	rst $38                                          ; $551b: $ff
	ld a, e                                          ; $551c: $7b
	cp $99                                           ; $551d: $fe $99
	ei                                               ; $551f: $fb
	dec a                                            ; $5520: $3d
	rst AddAOntoHL                                          ; $5521: $ef
	ld a, a                                          ; $5522: $7f
	db $db                                           ; $5523: $db
	ld a, l                                          ; $5524: $7d
	rla                                              ; $5525: $17
	and b                                            ; $5526: $a0
	sub h                                            ; $5527: $94
	ldh a, [$80]                                     ; $5528: $f0 $80
	ldh [$80], a                                     ; $552a: $e0 $80
	cp $80                                           ; $552c: $fe $80
	pop hl                                           ; $552e: $e1
	or b                                             ; $552f: $b0
	rst $38                                          ; $5530: $ff
	sbc a                                            ; $5531: $9f
	cp $6e                                           ; $5532: $fe $6e
	jp nz, $c002                                     ; $5534: $c2 $02 $c0

	ld b, a                                          ; $5537: $47
	add b                                            ; $5538: $80
	ld [hl], a                                       ; $5539: $77
	jr nz, jr_068_54d9                               ; $553a: $20 $9d

	add c                                            ; $553c: $81
	add b                                            ; $553d: $80
	cpl                                              ; $553e: $2f
	add b                                            ; $553f: $80
	ld [hl], e                                       ; $5540: $73
	cp $97                                           ; $5541: $fe $97
	adc l                                            ; $5543: $8d
	rst FarCall                                          ; $5544: $f7
	ld a, c                                          ; $5545: $79
	db $fd                                           ; $5546: $fd
	inc bc                                           ; $5547: $03
	cp $83                                           ; $5548: $fe $83
	add b                                            ; $554a: $80
	cp l                                             ; $554b: $bd
	ld bc, $1000                                     ; $554c: $01 $00 $10
	ld c, $9b                                        ; $554f: $0e $9b
	inc b                                            ; $5551: $04
	dec b                                            ; $5552: $05
	ld [bc], a                                       ; $5553: $02
	ld bc, $03bc                                     ; $5554: $01 $bc $03
	ld bc, $8101                                     ; $5557: $01 $01 $81
	db $d3                                           ; $555a: $d3
	sbc [hl]                                         ; $555b: $9e
	pop hl                                           ; $555c: $e1
	sbc $ff                                          ; $555d: $de $ff
	add b                                            ; $555f: $80
	ld a, h                                          ; $5560: $7c
	sbc a                                            ; $5561: $9f
	jr jr_068_5503                                   ; $5562: $18 $9f

	ld [$c37e], sp                                   ; $5564: $08 $7e $c3
	ld a, $c3                                        ; $5567: $3e $c3
	cp $03                                           ; $5569: $fe $03
	cp d                                             ; $556b: $ba
	ld b, a                                          ; $556c: $47
	rst $38                                          ; $556d: $ff
	add a                                            ; $556e: $87
	rst FarCall                                          ; $556f: $f7
	rrca                                             ; $5570: $0f
	rst $38                                          ; $5571: $ff
	rrca                                             ; $5572: $0f
	db $fd                                           ; $5573: $fd
	rra                                              ; $5574: $1f
	push hl                                          ; $5575: $e5
	daa                                              ; $5576: $27
	push bc                                          ; $5577: $c5
	ld b, a                                          ; $5578: $47
	add l                                            ; $5579: $85
	add a                                            ; $557a: $87
	dec b                                            ; $557b: $05
	rlca                                             ; $557c: $07
	add l                                            ; $557d: $85
	add a                                            ; $557e: $87
	sbc c                                            ; $557f: $99
	and $66                                          ; $5580: $e6 $66
	db $f4                                           ; $5582: $f4
	inc d                                            ; $5583: $14
	db $fc                                           ; $5584: $fc
	inc c                                            ; $5585: $0c
	ld l, a                                          ; $5586: $6f
	ret nz                                           ; $5587: $c0

	ld a, a                                          ; $5588: $7f
	db $fc                                           ; $5589: $fc
	sbc e                                            ; $558a: $9b
	rra                                              ; $558b: $1f
	rrca                                             ; $558c: $0f
	rlca                                             ; $558d: $07
	rlca                                             ; $558e: $07
	inc bc                                           ; $558f: $03
	ret nz                                           ; $5590: $c0

	inc hl                                           ; $5591: $23
	ret nz                                           ; $5592: $c0

	sub a                                            ; $5593: $97
	ld sp, $3f00                                     ; $5594: $31 $00 $3f
	rra                                              ; $5597: $1f
	rrca                                             ; $5598: $0f
	dec bc                                           ; $5599: $0b
	rlca                                             ; $559a: $07
	ld b, $6f                                        ; $559b: $06 $6f
	cp [hl]                                          ; $559d: $be
	ccf                                              ; $559e: $3f
	ret nz                                           ; $559f: $c0

	sbc l                                            ; $55a0: $9d
	ld a, [$2707]                                    ; $55a1: $fa $07 $27
	ret nz                                           ; $55a4: $c0

	ld [hl], a                                       ; $55a5: $77
	add h                                            ; $55a6: $84
	ld l, a                                          ; $55a7: $6f
	ret nz                                           ; $55a8: $c0

	sbc $1f                                          ; $55a9: $de $1f
	sbc l                                            ; $55ab: $9d
	dec bc                                           ; $55ac: $0b
	rrca                                             ; $55ad: $0f
	ld [hl], e                                       ; $55ae: $73
	cp [hl]                                          ; $55af: $be
	inc bc                                           ; $55b0: $03
	ret nz                                           ; $55b1: $c0

	ld e, e                                          ; $55b2: $5b
	ret nz                                           ; $55b3: $c0

	ld h, e                                          ; $55b4: $63
	ld bc, $ff80                                     ; $55b5: $01 $80 $ff
	cp $5b                                           ; $55b8: $fe $5b
	cp $b7                                           ; $55ba: $fe $b7
	db $fc                                           ; $55bc: $fc
	or a                                             ; $55bd: $b7
	db $fc                                           ; $55be: $fc
	ld [hl], a                                       ; $55bf: $77
	call c, $df68                                    ; $55c0: $dc $68 $df
	sbc a                                            ; $55c3: $9f
	rst $38                                          ; $55c4: $ff
	rst AddAOntoHL                                          ; $55c5: $ef
	ld hl, sp-$49                                    ; $55c6: $f8 $b7
	rst GetHLinHL                                          ; $55c8: $cf
	rst AddAOntoHL                                          ; $55c9: $ef
	sbc a                                            ; $55ca: $9f
	ldh a, [c]                                       ; $55cb: $f2
	sub e                                            ; $55cc: $93
	di                                               ; $55cd: $f3
	or a                                             ; $55ce: $b7
	db $fd                                           ; $55cf: $fd
	rst $38                                          ; $55d0: $ff
	pop de                                           ; $55d1: $d1
	cp e                                             ; $55d2: $bb
	jp c, $c68f                                      ; $55d3: $da $8f $c6

	sbc d                                            ; $55d6: $9a
	adc [hl]                                         ; $55d7: $8e
	reti                                             ; $55d8: $d9


	add [hl]                                         ; $55d9: $86
	ret nz                                           ; $55da: $c0

	add b                                            ; $55db: $80
	ld [hl], e                                       ; $55dc: $73
	cp $82                                           ; $55dd: $fe $82
	ld b, b                                          ; $55df: $40
	add b                                            ; $55e0: $80
	nop                                              ; $55e1: $00
	ld b, b                                          ; $55e2: $40
	add b                                            ; $55e3: $80
	and b                                            ; $55e4: $a0
	ret nz                                           ; $55e5: $c0

	ldh a, [$e0]                                     ; $55e6: $f0 $e0
	db $fc                                           ; $55e8: $fc
	ld hl, sp-$42                                    ; $55e9: $f8 $be
	rst GetHLinHL                                          ; $55eb: $cf
	ld a, a                                          ; $55ec: $7f
	add e                                            ; $55ed: $83
	ld a, a                                          ; $55ee: $7f
	add c                                            ; $55ef: $81
	ld a, e                                          ; $55f0: $7b
	add b                                            ; $55f1: $80
	ld a, c                                          ; $55f2: $79
	add b                                            ; $55f3: $80
	ld l, b                                          ; $55f4: $68
	add b                                            ; $55f5: $80
	ld sp, hl                                        ; $55f6: $f9
	rrca                                             ; $55f7: $0f
	db $fd                                           ; $55f8: $fd
	rrca                                             ; $55f9: $0f
	db $fd                                           ; $55fa: $fd
	dec b                                            ; $55fb: $05
	ld a, e                                          ; $55fc: $7b
	cp $91                                           ; $55fd: $fe $91
	rlca                                             ; $55ff: $07
	rst $38                                          ; $5600: $ff
	inc bc                                           ; $5601: $03
	cp a                                             ; $5602: $bf
	jp $02ff                                         ; $5603: $c3 $ff $02


	ld a, a                                          ; $5606: $7f
	add d                                            ; $5607: $82
	cp a                                             ; $5608: $bf
	ret nz                                           ; $5609: $c0

	ccf                                              ; $560a: $3f
	ret nz                                           ; $560b: $c0

	ld a, e                                          ; $560c: $7b
	cp h                                             ; $560d: $bc
	ld h, e                                          ; $560e: $63
	ld bc, $0001                                     ; $560f: $01 $01 $00
	cp c                                             ; $5612: $b9
	add b                                            ; $5613: $80
	db $ed                                           ; $5614: $ed
	or l                                             ; $5615: $b5
	db $ed                                           ; $5616: $ed
	db $dd                                           ; $5617: $dd
	ld d, l                                          ; $5618: $55
	db $dd                                           ; $5619: $dd
	ld [hl], a                                       ; $561a: $77
	or $3f                                           ; $561b: $f6 $3f
	sbc a                                            ; $561d: $9f
	ld a, [hl]                                       ; $561e: $7e
	rst $38                                          ; $561f: $ff
	ld [hl], h                                       ; $5620: $74
	adc $31                                          ; $5621: $ce $31
	or a                                             ; $5623: $b7
	ld a, c                                          ; $5624: $79
	db $eb                                           ; $5625: $eb
	ld l, l                                          ; $5626: $6d
	rst AddAOntoHL                                          ; $5627: $ef
	ld a, a                                          ; $5628: $7f
	ld sp, hl                                        ; $5629: $f9
	ld a, a                                          ; $562a: $7f
	bit 7, c                                         ; $562b: $cb $79
	xor a                                            ; $562d: $af
	ld l, c                                          ; $562e: $69
	call $fe33                                       ; $562f: $cd $33 $fe
	add e                                            ; $5632: $83
	ld b, a                                          ; $5633: $47
	add b                                            ; $5634: $80
	ld a, a                                          ; $5635: $7f
	jp nz, $f895                                     ; $5636: $c2 $95 $f8

	add a                                            ; $5639: $87
	rst AddAOntoHL                                          ; $563a: $ef
	sbc a                                            ; $563b: $9f
	db $d3                                           ; $563c: $d3
	cp e                                             ; $563d: $bb
	db $fd                                           ; $563e: $fd
	cp a                                             ; $563f: $bf
	pop af                                           ; $5640: $f1
	ei                                               ; $5641: $fb
	ld [hl], a                                       ; $5642: $77
	add b                                            ; $5643: $80
	ld b, a                                          ; $5644: $47
	and b                                            ; $5645: $a0
	ld a, e                                          ; $5646: $7b
	cp $98                                           ; $5647: $fe $98
	nop                                              ; $5649: $00
	ld a, a                                          ; $564a: $7f
	add b                                            ; $564b: $80
	cp e                                             ; $564c: $bb
	ret nz                                           ; $564d: $c0

	ld h, e                                          ; $564e: $63
	ret nz                                           ; $564f: $c0

	scf                                              ; $5650: $37
	and b                                            ; $5651: $a0
	sub d                                            ; $5652: $92
	cp $01                                           ; $5653: $fe $01
	rst $38                                          ; $5655: $ff
	ld bc, $39f7                                     ; $5656: $01 $f7 $39
	db $eb                                           ; $5659: $eb
	ld a, l                                          ; $565a: $7d
	rst $38                                          ; $565b: $ff
	ld a, a                                          ; $565c: $7f
	ret                                              ; $565d: $c9


	ld a, a                                          ; $565e: $7f
	xor e                                            ; $565f: $ab
	dec hl                                           ; $5660: $2b
	and b                                            ; $5661: $a0
	sbc b                                            ; $5662: $98
	rst $38                                          ; $5663: $ff
	add b                                            ; $5664: $80
	rst $38                                          ; $5665: $ff
	add b                                            ; $5666: $80
	or $8f                                           ; $5667: $f6 $8f

jr_068_5669:
	rst SubAFromDE                                          ; $5669: $df
	ld a, e                                          ; $566a: $7b
	and b                                            ; $566b: $a0
	sbc d                                            ; $566c: $9a
	jp z, $c69f                                      ; $566d: $ca $9f $c6

	adc [hl]                                         ; $5670: $8e
	rst SubAFromDE                                          ; $5671: $df
	ld l, a                                          ; $5672: $6f
	ld [hl+], a                                      ; $5673: $22
	inc bc                                           ; $5674: $03
	jr nz, @+$59                                     ; $5675: $20 $57

	add b                                            ; $5677: $80
	ld a, a                                          ; $5678: $7f
	cp $98                                           ; $5679: $fe $98
	ei                                               ; $567b: $fb
	nop                                              ; $567c: $00
	ld h, e                                          ; $567d: $63
	add b                                            ; $567e: $80
	pop bc                                           ; $567f: $c1
	ret nz                                           ; $5680: $c0

	add c                                            ; $5681: $81
	inc sp                                           ; $5682: $33
	add b                                            ; $5683: $80
	ld a, a                                          ; $5684: $7f
	cp $97                                           ; $5685: $fe $97
	rst SubAFromHL                                          ; $5687: $d7
	add hl, sp                                       ; $5688: $39
	ei                                               ; $5689: $fb
	ld a, l                                          ; $568a: $7d
	rst SubAFromDE                                          ; $568b: $df
	rst $38                                          ; $568c: $ff
	xor e                                            ; $568d: $ab
	ld l, l                                          ; $568e: $6d
	rra                                              ; $568f: $1f
	add b                                            ; $5690: $80
	sub l                                            ; $5691: $95
	pop af                                           ; $5692: $f1
	add b                                            ; $5693: $80
	ldh [$80], a                                     ; $5694: $e0 $80
	cp $80                                           ; $5696: $fe $80
	ld hl, sp-$50                                    ; $5698: $f8 $b0
	rst GetHLinHL                                          ; $569a: $cf
	sbc a                                            ; $569b: $9f
	inc bc                                           ; $569c: $03
	add b                                            ; $569d: $80
	daa                                              ; $569e: $27
	add b                                            ; $569f: $80
	cp a                                             ; $56a0: $bf
	ld bc, $7f81                                     ; $56a1: $01 $81 $7f
	call $8033                                       ; $56a4: $cd $33 $80
	ld [hl], e                                       ; $56a7: $73
	cp $97                                           ; $56a8: $fe $97
	adc l                                            ; $56aa: $8d
	rst FarCall                                          ; $56ab: $f7
	ld a, c                                          ; $56ac: $79
	db $fd                                           ; $56ad: $fd
	inc bc                                           ; $56ae: $03
	cp $83                                           ; $56af: $fe $83
	add b                                            ; $56b1: $80
	cp l                                             ; $56b2: $bd
	ld bc, $0800                                     ; $56b3: $01 $00 $08
	ld b, $9d                                        ; $56b6: $06 $9d
	rlca                                             ; $56b8: $07
	ld [bc], a                                       ; $56b9: $02
	cp e                                             ; $56ba: $bb
	ld bc, $0103                                     ; $56bb: $01 $03 $01
	ld bc, $d381                                     ; $56be: $01 $81 $d3
	sbc [hl]                                         ; $56c1: $9e
	pop hl                                           ; $56c2: $e1
	sbc $ff                                          ; $56c3: $de $ff
	add b                                            ; $56c5: $80
	ld a, h                                          ; $56c6: $7c
	sbc a                                            ; $56c7: $9f
	jr jr_068_5669                                   ; $56c8: $18 $9f

	ld [$c37e], sp                                   ; $56ca: $08 $7e $c3
	ld a, $c3                                        ; $56cd: $3e $c3
	cp $03                                           ; $56cf: $fe $03
	cp d                                             ; $56d1: $ba
	ld b, a                                          ; $56d2: $47
	rst $38                                          ; $56d3: $ff
	add a                                            ; $56d4: $87
	rst FarCall                                          ; $56d5: $f7
	rrca                                             ; $56d6: $0f
	rst $38                                          ; $56d7: $ff
	rrca                                             ; $56d8: $0f
	db $fd                                           ; $56d9: $fd
	rra                                              ; $56da: $1f
	push hl                                          ; $56db: $e5
	daa                                              ; $56dc: $27
	push bc                                          ; $56dd: $c5
	ld b, a                                          ; $56de: $47
	add l                                            ; $56df: $85
	add a                                            ; $56e0: $87
	dec b                                            ; $56e1: $05
	rlca                                             ; $56e2: $07
	add l                                            ; $56e3: $85
	add a                                            ; $56e4: $87
	sbc c                                            ; $56e5: $99
	and $66                                          ; $56e6: $e6 $66
	db $f4                                           ; $56e8: $f4
	inc d                                            ; $56e9: $14
	db $fc                                           ; $56ea: $fc
	inc c                                            ; $56eb: $0c
	ld l, a                                          ; $56ec: $6f
	ret nz                                           ; $56ed: $c0

	ld a, a                                          ; $56ee: $7f
	db $fc                                           ; $56ef: $fc
	sbc e                                            ; $56f0: $9b
	ld c, $0f                                        ; $56f1: $0e $0f
	rlca                                             ; $56f3: $07
	rlca                                             ; $56f4: $07
	inc bc                                           ; $56f5: $03
	ret nz                                           ; $56f6: $c0

	inc hl                                           ; $56f7: $23
	ret nz                                           ; $56f8: $c0

	rst $38                                          ; $56f9: $ff
	ld a, a                                          ; $56fa: $7f
	ret nz                                           ; $56fb: $c0

	sbc l                                            ; $56fc: $9d
	rrca                                             ; $56fd: $0f
	dec c                                            ; $56fe: $0d
	ld h, a                                          ; $56ff: $67
	cp [hl]                                          ; $5700: $be
	ccf                                              ; $5701: $3f
	ret nz                                           ; $5702: $c0

	sbc l                                            ; $5703: $9d
	ld a, [$0707]                                    ; $5704: $fa $07 $07
	add b                                            ; $5707: $80
	sub a                                            ; $5708: $97
	ld e, $1f                                        ; $5709: $1e $1f
	rra                                              ; $570b: $1f
	rrca                                             ; $570c: $0f
	ld c, $0b                                        ; $570d: $0e $0b
	rlca                                             ; $570f: $07
	ld b, $77                                        ; $5710: $06 $77
	cp [hl]                                          ; $5712: $be
	inc bc                                           ; $5713: $03
	ret nz                                           ; $5714: $c0

	ld e, e                                          ; $5715: $5b
	ret nz                                           ; $5716: $c0

	ld c, l                                          ; $5717: $4d
	ld bc, $ff94                                     ; $5718: $01 $94 $ff
	cp $5b                                           ; $571b: $fe $5b
	cp $b7                                           ; $571d: $fe $b7
	db $fc                                           ; $571f: $fc
	or a                                             ; $5720: $b7
	db $fc                                           ; $5721: $fc
	ld [hl], a                                       ; $5722: $77
	call c, $de48                                    ; $5723: $dc $48 $de
	rst $38                                          ; $5726: $ff
	adc c                                            ; $5727: $89
	cp a                                             ; $5728: $bf
	ret z                                            ; $5729: $c8

	or a                                             ; $572a: $b7
	rst GetHLinHL                                          ; $572b: $cf
	rst AddAOntoHL                                          ; $572c: $ef
	sbc a                                            ; $572d: $9f
	ldh a, [c]                                       ; $572e: $f2
	sbc e                                            ; $572f: $9b
	di                                               ; $5730: $f3
	or e                                             ; $5731: $b3
	db $fd                                           ; $5732: $fd
	rst $38                                          ; $5733: $ff
	pop de                                           ; $5734: $d1
	cp e                                             ; $5735: $bb
	jp c, $c68f                                      ; $5736: $da $8f $c6

	adc [hl]                                         ; $5739: $8e
	reti                                             ; $573a: $d9


	add [hl]                                         ; $573b: $86
	ret nz                                           ; $573c: $c0

	add b                                            ; $573d: $80
	ld [hl], e                                       ; $573e: $73
	cp $82                                           ; $573f: $fe $82
	ld b, b                                          ; $5741: $40
	add b                                            ; $5742: $80
	nop                                              ; $5743: $00
	ld b, b                                          ; $5744: $40
	add b                                            ; $5745: $80
	and b                                            ; $5746: $a0
	ret nz                                           ; $5747: $c0

	ldh a, [$e0]                                     ; $5748: $f0 $e0
	db $fc                                           ; $574a: $fc
	ld hl, sp-$42                                    ; $574b: $f8 $be
	rst GetHLinHL                                          ; $574d: $cf
	ld a, a                                          ; $574e: $7f
	add e                                            ; $574f: $83
	ld a, a                                          ; $5750: $7f
	add c                                            ; $5751: $81
	ld a, e                                          ; $5752: $7b
	add b                                            ; $5753: $80
	ld a, c                                          ; $5754: $79
	add b                                            ; $5755: $80
	ld l, b                                          ; $5756: $68
	add b                                            ; $5757: $80
	ld sp, hl                                        ; $5758: $f9
	rrca                                             ; $5759: $0f
	db $fd                                           ; $575a: $fd
	rrca                                             ; $575b: $0f
	db $fd                                           ; $575c: $fd
	dec b                                            ; $575d: $05
	ld a, e                                          ; $575e: $7b
	cp $91                                           ; $575f: $fe $91
	rlca                                             ; $5761: $07
	rst $38                                          ; $5762: $ff
	inc bc                                           ; $5763: $03
	cp a                                             ; $5764: $bf
	jp $02ff                                         ; $5765: $c3 $ff $02


	ld a, a                                          ; $5768: $7f
	add d                                            ; $5769: $82
	cp a                                             ; $576a: $bf
	ret nz                                           ; $576b: $c0

	ccf                                              ; $576c: $3f
	ret nz                                           ; $576d: $c0

	ld a, e                                          ; $576e: $7b
	cp h                                             ; $576f: $bc
	ld h, e                                          ; $5770: $63
	ld bc, $0001                                     ; $5771: $01 $01 $00
	cp c                                             ; $5774: $b9
	add b                                            ; $5775: $80
	db $ed                                           ; $5776: $ed
	or l                                             ; $5777: $b5
	db $ed                                           ; $5778: $ed
	db $dd                                           ; $5779: $dd
	ld d, l                                          ; $577a: $55
	db $dd                                           ; $577b: $dd
	ld [hl], a                                       ; $577c: $77
	or $3f                                           ; $577d: $f6 $3f
	sbc a                                            ; $577f: $9f
	ld a, [hl]                                       ; $5780: $7e
	rst $38                                          ; $5781: $ff
	ld [hl], h                                       ; $5782: $74
	adc $31                                          ; $5783: $ce $31
	or a                                             ; $5785: $b7
	ld a, c                                          ; $5786: $79
	db $eb                                           ; $5787: $eb
	ld l, l                                          ; $5788: $6d
	rst GetHLinHL                                          ; $5789: $cf
	ld e, a                                          ; $578a: $5f
	ld sp, hl                                        ; $578b: $f9
	ld a, a                                          ; $578c: $7f
	bit 7, c                                         ; $578d: $cb $79
	xor a                                            ; $578f: $af
	ld l, c                                          ; $5790: $69
	call $fe33                                       ; $5791: $cd $33 $fe
	add e                                            ; $5794: $83
	ld b, a                                          ; $5795: $47
	add b                                            ; $5796: $80
	ld a, a                                          ; $5797: $7f
	jp nz, $f191                                     ; $5798: $c2 $91 $f1

	adc [hl]                                         ; $579b: $8e
	rst AddAOntoHL                                          ; $579c: $ef
	sbc a                                            ; $579d: $9f
	rst SubAFromHL                                          ; $579e: $d7
	or a                                             ; $579f: $b7
	db $fd                                           ; $57a0: $fd
	cp a                                             ; $57a1: $bf
	pop af                                           ; $57a2: $f1
	ei                                               ; $57a3: $fb
	jp c, $c69f                                      ; $57a4: $da $9f $c6

	adc [hl]                                         ; $57a7: $8e
	ld b, a                                          ; $57a8: $47
	and b                                            ; $57a9: $a0
	ld a, e                                          ; $57aa: $7b
	cp $bf                                           ; $57ab: $fe $bf
	rst $38                                          ; $57ad: $ff
	ei                                               ; $57ae: $fb
	sbc h                                            ; $57af: $9c
	add b                                            ; $57b0: $80
	ld h, e                                          ; $57b1: $63
	add b                                            ; $57b2: $80
	scf                                              ; $57b3: $37
	and b                                            ; $57b4: $a0
	sub [hl]                                         ; $57b5: $96
	cp $01                                           ; $57b6: $fe $01
	rst JumpTable                                          ; $57b8: $c7
	add hl, sp                                       ; $57b9: $39
	cp e                                             ; $57ba: $bb
	ld a, l                                          ; $57bb: $7d
	rst AddAOntoHL                                          ; $57bc: $ef
	ld a, l                                          ; $57bd: $7d
	rst $38                                          ; $57be: $ff
	dec de                                           ; $57bf: $1b

jr_068_57c0:
	and b                                            ; $57c0: $a0
	sub e                                            ; $57c1: $93
	rst $38                                          ; $57c2: $ff
	add b                                            ; $57c3: $80
	rst $38                                          ; $57c4: $ff
	add b                                            ; $57c5: $80
	ld hl, sp-$80                                    ; $57c6: $f8 $80
	xor $9f                                          ; $57c8: $ee $9f
	di                                               ; $57ca: $f3
	ei                                               ; $57cb: $fb
	jp c, $23bf                                      ; $57cc: $da $bf $23

	and b                                            ; $57cf: $a0
	cp a                                             ; $57d0: $bf
	ld h, e                                          ; $57d1: $63
	add c                                            ; $57d2: $81
	ld a, e                                          ; $57d3: $7b
	sbc [hl]                                         ; $57d4: $9e
	ccf                                              ; $57d5: $3f
	and b                                            ; $57d6: $a0
	sbc [hl]                                         ; $57d7: $9e
	rst $38                                          ; $57d8: $ff
	ld [hl], e                                       ; $57d9: $73
	cp $99                                           ; $57da: $fe $99
	ei                                               ; $57dc: $fb
	dec a                                            ; $57dd: $3d
	rst GetHLinHL                                          ; $57de: $cf
	ld a, a                                          ; $57df: $7f
	db $eb                                           ; $57e0: $eb
	ld l, l                                          ; $57e1: $6d
	rla                                              ; $57e2: $17
	and b                                            ; $57e3: $a0
	sbc [hl]                                         ; $57e4: $9e
	ldh a, [$7b]                                     ; $57e5: $f0 $7b
	ld a, [$d09a]                                    ; $57e7: $fa $9a $d0
	cp b                                             ; $57ea: $b8
	rst GetHLinHL                                          ; $57eb: $cf
	adc a                                            ; $57ec: $8f
	rst SubAFromDE                                          ; $57ed: $df
	ld l, [hl]                                       ; $57ee: $6e
	jp nz, $c002                                     ; $57ef: $c2 $02 $c0

	ccf                                              ; $57f2: $3f
	add b                                            ; $57f3: $80
	ld a, a                                          ; $57f4: $7f
	add d                                            ; $57f5: $82
	sbc e                                            ; $57f6: $9b
	add c                                            ; $57f7: $81
	ret nz                                           ; $57f8: $c0

	nop                                              ; $57f9: $00
	add b                                            ; $57fa: $80
	cpl                                              ; $57fb: $2f
	add b                                            ; $57fc: $80
	ld a, a                                          ; $57fd: $7f
	cp $96                                           ; $57fe: $fe $96
	cp a                                             ; $5800: $bf
	ld c, l                                          ; $5801: $4d
	rst FarCall                                          ; $5802: $f7
	ld a, c                                          ; $5803: $79
	db $fd                                           ; $5804: $fd
	inc bc                                           ; $5805: $03
	cp $83                                           ; $5806: $fe $83
	add b                                            ; $5808: $80
	cp l                                             ; $5809: $bd
	ld bc, $0100                                     ; $580a: $01 $00 $01
	ld [bc], a                                       ; $580d: $02
	sbc l                                            ; $580e: $9d
	inc bc                                           ; $580f: $03
	inc b                                            ; $5810: $04
	cp e                                             ; $5811: $bb
	ld bc, $0103                                     ; $5812: $01 $03 $01
	ld bc, $d381                                     ; $5815: $01 $81 $d3
	sbc [hl]                                         ; $5818: $9e
	pop hl                                           ; $5819: $e1
	sbc $ff                                          ; $581a: $de $ff
	add b                                            ; $581c: $80
	ld a, h                                          ; $581d: $7c
	sbc a                                            ; $581e: $9f
	jr jr_068_57c0                                   ; $581f: $18 $9f

	ld [$c37e], sp                                   ; $5821: $08 $7e $c3
	ld a, $c3                                        ; $5824: $3e $c3
	cp $03                                           ; $5826: $fe $03
	ld a, d                                          ; $5828: $7a
	add a                                            ; $5829: $87
	rst $38                                          ; $582a: $ff
	add a                                            ; $582b: $87
	rst FarCall                                          ; $582c: $f7
	rrca                                             ; $582d: $0f
	rst $38                                          ; $582e: $ff
	rrca                                             ; $582f: $0f
	db $fd                                           ; $5830: $fd
	rra                                              ; $5831: $1f
	push hl                                          ; $5832: $e5
	daa                                              ; $5833: $27
	push bc                                          ; $5834: $c5
	ld b, a                                          ; $5835: $47
	add l                                            ; $5836: $85
	add a                                            ; $5837: $87
	dec b                                            ; $5838: $05
	rlca                                             ; $5839: $07
	add l                                            ; $583a: $85
	add a                                            ; $583b: $87
	sbc c                                            ; $583c: $99
	and $66                                          ; $583d: $e6 $66
	db $f4                                           ; $583f: $f4
	inc d                                            ; $5840: $14
	db $fc                                           ; $5841: $fc
	inc c                                            ; $5842: $0c
	ld h, a                                          ; $5843: $67
	ret nz                                           ; $5844: $c0

	rst SubAFromDE                                          ; $5845: $df
	inc bc                                           ; $5846: $03
	sbc l                                            ; $5847: $9d
	rlca                                             ; $5848: $07
	dec b                                            ; $5849: $05
	inc bc                                           ; $584a: $03
	ret nz                                           ; $584b: $c0

	dec bc                                           ; $584c: $0b
	ret nz                                           ; $584d: $c0

	ld a, a                                          ; $584e: $7f
	db $fd                                           ; $584f: $fd
	ld l, a                                          ; $5850: $6f
	cp [hl]                                          ; $5851: $be
	inc bc                                           ; $5852: $03
	ret nz                                           ; $5853: $c0

	cpl                                              ; $5854: $2f
	ret nz                                           ; $5855: $c0

	rst SubAFromDE                                          ; $5856: $df
	rlca                                             ; $5857: $07
	ld a, a                                          ; $5858: $7f
	cp [hl]                                          ; $5859: $be
	sbc [hl]                                         ; $585a: $9e
	inc bc                                           ; $585b: $03
	ld [hl], a                                       ; $585c: $77
	cp [hl]                                          ; $585d: $be
	dec hl                                           ; $585e: $2b
	ret nz                                           ; $585f: $c0

	sbc [hl]                                         ; $5860: $9e
	adc a                                            ; $5861: $8f
	scf                                              ; $5862: $37
	ret nz                                           ; $5863: $c0

	ld b, c                                          ; $5864: $41
	ld bc, $ff80                                     ; $5865: $01 $80 $ff
	cp $5b                                           ; $5868: $fe $5b
	cp $b7                                           ; $586a: $fe $b7
	db $fc                                           ; $586c: $fc
	or a                                             ; $586d: $b7
	db $fc                                           ; $586e: $fc
	ld [hl], a                                       ; $586f: $77
	call c, $fe49                                    ; $5870: $dc $49 $fe
	rst $38                                          ; $5873: $ff
	rst $38                                          ; $5874: $ff
	cp $89                                           ; $5875: $fe $89
	ldh a, [hDisp1_LCDC]                                     ; $5877: $f0 $8f
	rst AddAOntoHL                                          ; $5879: $ef
	sub b                                            ; $587a: $90
	rst SubAFromHL                                          ; $587b: $d7
	xor a                                            ; $587c: $af
	db $db                                           ; $587d: $db
	cp e                                             ; $587e: $bb
	di                                               ; $587f: $f3
	or e                                             ; $5880: $b3
	db $fd                                           ; $5881: $fd
	rst $38                                          ; $5882: $ff
	jp nc, $ce9f                                     ; $5883: $d2 $9f $ce

	sbc d                                            ; $5886: $9a
	adc [hl]                                         ; $5887: $8e
	pop hl                                           ; $5888: $e1
	sbc [hl]                                         ; $5889: $9e
	ret nz                                           ; $588a: $c0

	add b                                            ; $588b: $80
	ld [hl], e                                       ; $588c: $73
	cp $82                                           ; $588d: $fe $82
	ld b, b                                          ; $588f: $40
	add b                                            ; $5890: $80
	nop                                              ; $5891: $00
	ld b, b                                          ; $5892: $40
	add b                                            ; $5893: $80
	and b                                            ; $5894: $a0
	ret nz                                           ; $5895: $c0

	ldh a, [$e0]                                     ; $5896: $f0 $e0
	db $fc                                           ; $5898: $fc
	ld hl, sp-$42                                    ; $5899: $f8 $be
	rst GetHLinHL                                          ; $589b: $cf
	ld a, a                                          ; $589c: $7f
	add e                                            ; $589d: $83
	ld a, a                                          ; $589e: $7f
	add c                                            ; $589f: $81
	ld a, e                                          ; $58a0: $7b
	add b                                            ; $58a1: $80
	ld a, c                                          ; $58a2: $79
	add b                                            ; $58a3: $80
	ld l, b                                          ; $58a4: $68
	add b                                            ; $58a5: $80
	ld sp, hl                                        ; $58a6: $f9
	rrca                                             ; $58a7: $0f
	db $fd                                           ; $58a8: $fd
	rrca                                             ; $58a9: $0f
	db $fd                                           ; $58aa: $fd
	dec b                                            ; $58ab: $05
	ld a, e                                          ; $58ac: $7b
	cp $8b                                           ; $58ad: $fe $8b
	rlca                                             ; $58af: $07
	rst $38                                          ; $58b0: $ff
	inc bc                                           ; $58b1: $03
	ld a, a                                          ; $58b2: $7f
	add e                                            ; $58b3: $83
	rst $38                                          ; $58b4: $ff
	jp nz, $02ff                                     ; $58b5: $c2 $ff $02

	rst $38                                          ; $58b8: $ff
	nop                                              ; $58b9: $00
	ld a, a                                          ; $58ba: $7f
	add b                                            ; $58bb: $80
	cp e                                             ; $58bc: $bb
	ret nz                                           ; $58bd: $c0

	ld h, e                                          ; $58be: $63
	ret nz                                           ; $58bf: $c0

	ld bc, $0140                                     ; $58c0: $01 $40 $01
	cp $80                                           ; $58c3: $fe $80
	cp c                                             ; $58c5: $b9
	db $ed                                           ; $58c6: $ed
	or l                                             ; $58c7: $b5
	db $ed                                           ; $58c8: $ed
	db $dd                                           ; $58c9: $dd
	ld d, l                                          ; $58ca: $55
	db $dd                                           ; $58cb: $dd
	ld [hl], a                                       ; $58cc: $77
	or $3f                                           ; $58cd: $f6 $3f
	rst SubAFromDE                                          ; $58cf: $df
	ld a, $bf                                        ; $58d0: $3e $bf
	ld [hl], h                                       ; $58d2: $74
	adc $71                                          ; $58d3: $ce $71
	or a                                             ; $58d5: $b7
	ld c, c                                          ; $58d6: $49
	di                                               ; $58d7: $f3
	dec a                                            ; $58d8: $3d
	db $fd                                           ; $58d9: $fd
	ld a, a                                          ; $58da: $7f
	rst SubAFromHL                                          ; $58db: $d7
	ld e, a                                          ; $58dc: $5f
	bit 7, l                                         ; $58dd: $cb $7d
	cp a                                             ; $58df: $bf
	ld a, c                                          ; $58e0: $79
	pop bc                                           ; $58e1: $c1
	ccf                                              ; $58e2: $3f
	cp $7f                                           ; $58e3: $fe $7f
	adc $4b                                          ; $58e5: $ce $4b
	add b                                            ; $58e7: $80
	sbc l                                            ; $58e8: $9d
	rst $38                                          ; $58e9: $ff
	add b                                            ; $58ea: $80
	ld [hl], a                                       ; $58eb: $77
	cp $95                                           ; $58ec: $fe $95
	or $8f                                           ; $58ee: $f6 $8f
	rst SubAFromDE                                          ; $58f0: $df
	cp a                                             ; $58f1: $bf
	push af                                          ; $58f2: $f5
	rst FarCall                                          ; $58f3: $f7
	ldh a, [c]                                       ; $58f4: $f2
	cp a                                             ; $58f5: $bf
	adc $8e                                          ; $58f6: $ce $8e
	scf                                              ; $58f8: $37
	and b                                            ; $58f9: $a0
	ld a, a                                          ; $58fa: $7f
	cp $99                                           ; $58fb: $fe $99
	ei                                               ; $58fd: $fb
	nop                                              ; $58fe: $00

jr_068_58ff:
	and e                                            ; $58ff: $a3
	ret nz                                           ; $5900: $c0

	ld bc, $37c0                                     ; $5901: $01 $c0 $37
	and b                                            ; $5904: $a0
	sub l                                            ; $5905: $95
	cp a                                             ; $5906: $bf
	ld b, c                                          ; $5907: $41
	rst $38                                          ; $5908: $ff
	ld bc, $3dfb                                     ; $5909: $01 $fb $3d
	push de                                          ; $590c: $d5
	ld e, a                                          ; $590d: $5f
	rst GetHLinHL                                          ; $590e: $cf
	ld a, a                                          ; $590f: $7f
	rla                                              ; $5910: $17
	and b                                            ; $5911: $a0
	sub l                                            ; $5912: $95
	ld hl, sp-$80                                    ; $5913: $f8 $80
	xor $9f                                          ; $5915: $ee $9f
	sub a                                            ; $5917: $97
	rst FarCall                                          ; $5918: $f7
	ldh a, [c]                                       ; $5919: $f2
	rst $38                                          ; $591a: $ff
	sbc $9e                                          ; $591b: $de $9e
	daa                                              ; $591d: $27
	and b                                            ; $591e: $a0
	sbc h                                            ; $591f: $9c
	ld h, e                                          ; $5920: $63
	nop                                              ; $5921: $00
	add c                                            ; $5922: $81
	inc hl                                           ; $5923: $23
	and b                                            ; $5924: $a0
	sbc c                                            ; $5925: $99
	rst SubAFromBC                                          ; $5926: $e7
	add hl, de                                       ; $5927: $19
	cp c                                             ; $5928: $b9
	ld a, a                                          ; $5929: $7f
	rst GetHLinHL                                          ; $592a: $cf
	ld e, a                                          ; $592b: $5f
	rrca                                             ; $592c: $0f
	and b                                            ; $592d: $a0
	sub a                                            ; $592e: $97
	ldh a, [$80]                                     ; $592f: $f0 $80
	rst SubAFromDE                                          ; $5931: $df
	and b                                            ; $5932: $a0
	ldh a, [$98]                                     ; $5933: $f0 $98
	rst SubAFromDE                                          ; $5935: $df
	adc a                                            ; $5936: $8f
	rra                                              ; $5937: $1f
	and b                                            ; $5938: $a0
	ld a, a                                          ; $5939: $7f
	and d                                            ; $593a: $a2
	sbc l                                            ; $593b: $9d
	add c                                            ; $593c: $81
	add b                                            ; $593d: $80
	cpl                                              ; $593e: $2f
	and b                                            ; $593f: $a0
	ld [hl], e                                       ; $5940: $73
	cp $9e                                           ; $5941: $fe $9e
	ld b, l                                          ; $5943: $45
	ld l, a                                          ; $5944: $6f
	and b                                            ; $5945: $a0
	ld a, a                                          ; $5946: $7f
	db $dd                                           ; $5947: $dd
	ld [hl], a                                       ; $5948: $77
	ld a, d                                          ; $5949: $7a
	ld a, a                                          ; $594a: $7f
	db $fc                                           ; $594b: $fc
	sbc l                                            ; $594c: $9d
	inc bc                                           ; $594d: $03
	ld bc, $03de                                     ; $594e: $01 $de $03
	ld [hl], a                                       ; $5951: $77
	ld hl, sp+$77                                    ; $5952: $f8 $77
	ret z                                            ; $5954: $c8

	sbc h                                            ; $5955: $9c
	nop                                              ; $5956: $00
	db $d3                                           ; $5957: $d3
	pop hl                                           ; $5958: $e1
	sbc $ff                                          ; $5959: $de $ff
	add b                                            ; $595b: $80
	ld a, h                                          ; $595c: $7c
	sbc a                                            ; $595d: $9f
	jr jr_068_58ff                                   ; $595e: $18 $9f

	ld [$c37e], sp                                   ; $5960: $08 $7e $c3
	ld a, $c3                                        ; $5963: $3e $c3
	cp $03                                           ; $5965: $fe $03
	ld a, d                                          ; $5967: $7a
	add a                                            ; $5968: $87
	rst $38                                          ; $5969: $ff
	add a                                            ; $596a: $87
	rst FarCall                                          ; $596b: $f7
	adc a                                            ; $596c: $8f
	rst $38                                          ; $596d: $ff
	rrca                                             ; $596e: $0f
	db $fd                                           ; $596f: $fd
	rra                                              ; $5970: $1f
	push hl                                          ; $5971: $e5
	daa                                              ; $5972: $27
	push bc                                          ; $5973: $c5
	ld b, a                                          ; $5974: $47
	add l                                            ; $5975: $85
	add a                                            ; $5976: $87
	dec b                                            ; $5977: $05
	rlca                                             ; $5978: $07
	add l                                            ; $5979: $85
	add a                                            ; $597a: $87
	sbc c                                            ; $597b: $99
	and $66                                          ; $597c: $e6 $66
	db $f4                                           ; $597e: $f4
	inc d                                            ; $597f: $14
	db $fc                                           ; $5980: $fc
	inc c                                            ; $5981: $0c
	ld e, e                                          ; $5982: $5b
	ret nz                                           ; $5983: $c0

	sbc h                                            ; $5984: $9c
	ld [bc], a                                       ; $5985: $02
	inc bc                                           ; $5986: $03
	inc bc                                           ; $5987: $03
	inc bc                                           ; $5988: $03
	ret nz                                           ; $5989: $c0

	dec de                                           ; $598a: $1b
	ret nz                                           ; $598b: $c0

	sbc h                                            ; $598c: $9c
	rlca                                             ; $598d: $07
	inc bc                                           ; $598e: $03
	rlca                                             ; $598f: $07
	ld l, e                                          ; $5990: $6b
	cp [hl]                                          ; $5991: $be
	cpl                                              ; $5992: $2f
	ret nz                                           ; $5993: $c0

	sbc e                                            ; $5994: $9b
	ld [hl], a                                       ; $5995: $77
	adc a                                            ; $5996: $8f
	ld a, a                                          ; $5997: $7f
	adc a                                            ; $5998: $8f
	dec de                                           ; $5999: $1b
	ret nz                                           ; $599a: $c0

	ld a, a                                          ; $599b: $7f
	jp nz, $07df                                     ; $599c: $c2 $df $07

	ld a, a                                          ; $599f: $7f
	jp hl                                            ; $59a0: $e9


	dec de                                           ; $59a1: $1b
	ret nz                                           ; $59a2: $c0

	cpl                                              ; $59a3: $2f
	add b                                            ; $59a4: $80
	ld [$f183], sp                                   ; $59a5: $08 $83 $f1
	adc a                                            ; $59a8: $8f
	ld bc, $0603                                     ; $59a9: $01 $03 $06
	ld b, $05                                        ; $59ac: $06 $05
	inc bc                                           ; $59ae: $03
	ld b, $09                                        ; $59af: $06 $09
	ld bc, $0502                                     ; $59b1: $01 $02 $05
	dec b                                            ; $59b4: $05
	ld b, $02                                        ; $59b5: $06 $02
	rlca                                             ; $59b7: $07
	rrca                                             ; $59b8: $0f
	db $eb                                           ; $59b9: $eb
	sbc l                                            ; $59ba: $9d
	rlca                                             ; $59bb: $07
	ld bc, $f85f                                     ; $59bc: $01 $5f $f8
	ld a, a                                          ; $59bf: $7f
	sub $9b                                          ; $59c0: $d6 $9b
	inc b                                            ; $59c2: $04
	dec b                                            ; $59c3: $05
	ld a, [bc]                                       ; $59c4: $0a
	dec c                                            ; $59c5: $0d
	ld [hl], a                                       ; $59c6: $77
	add $df                                          ; $59c7: $c6 $df
	rlca                                             ; $59c9: $07
	add b                                            ; $59ca: $80
	rrca                                             ; $59cb: $0f
	ld c, $1a                                        ; $59cc: $0e $1a
	dec d                                            ; $59ce: $15
	ld [hl], $29                                     ; $59cf: $36 $29
	dec l                                            ; $59d1: $2d
	ld d, [hl]                                       ; $59d2: $56
	ld e, e                                          ; $59d3: $5b
	ld l, l                                          ; $59d4: $6d
	dec e                                            ; $59d5: $1d
	dec de                                           ; $59d6: $1b
	dec sp                                           ; $59d7: $3b
	ld [hl], $36                                     ; $59d8: $36 $36
	ld l, l                                          ; $59da: $6d
	ld l, l                                          ; $59db: $6d
	ld e, e                                          ; $59dc: $5b
	or [hl]                                          ; $59dd: $b6
	cp [hl]                                          ; $59de: $be
	sbc e                                            ; $59df: $9b
	and l                                            ; $59e0: $a5
	and [hl]                                         ; $59e1: $a6
	cp l                                             ; $59e2: $bd
	and b                                            ; $59e3: $a0
	xor $db                                          ; $59e4: $ee $db
	db $d3                                           ; $59e6: $d3
	or $f6                                           ; $59e7: $f6 $f6
	db $f4                                           ; $59e9: $f4
	sub b                                            ; $59ea: $90
	db $e4                                           ; $59eb: $e4
	db $ed                                           ; $59ec: $ed
	jp hl                                            ; $59ed: $e9


	jp c, $edfc                                      ; $59ee: $da $fc $ed

	push hl                                          ; $59f1: $e5
	ld sp, hl                                        ; $59f2: $f9
	ld sp, hl                                        ; $59f3: $f9
	cp l                                             ; $59f4: $bd
	sbc l                                            ; $59f5: $9d
	jp hl                                            ; $59f6: $e9


	set 3, e                                         ; $59f7: $cb $db
	db $db                                           ; $59f9: $db
	sbc $d7                                          ; $59fa: $de $d7
	sbc c                                            ; $59fc: $99
	rst FarCall                                          ; $59fd: $f7
	sub l                                            ; $59fe: $95
	sub l                                            ; $59ff: $95
	sub a                                            ; $5a00: $97
	add [hl]                                         ; $5a01: $86
	sub [hl]                                         ; $5a02: $96
	sbc $56                                          ; $5a03: $de $56
	sbc $ff                                          ; $5a05: $de $ff
	rst SubAFromDE                                          ; $5a07: $df
	cp $de                                           ; $5a08: $fe $de
	ld a, [hl]                                       ; $5a0a: $7e
	adc e                                            ; $5a0b: $8b
	ld d, h                                          ; $5a0c: $54
	ld d, l                                          ; $5a0d: $55
	ld e, [hl]                                       ; $5a0e: $5e
	ld e, l                                          ; $5a0f: $5d
	ld c, e                                          ; $5a10: $4b
	cpl                                              ; $5a11: $2f
	cpl                                              ; $5a12: $2f
	ccf                                              ; $5a13: $3f
	ld a, h                                          ; $5a14: $7c
	ld a, l                                          ; $5a15: $7d
	ld a, a                                          ; $5a16: $7f
	ld a, [hl]                                       ; $5a17: $7e
	ld a, h                                          ; $5a18: $7c
	jr c, jr_068_5a57                                ; $5a19: $38 $3c

	ld a, $3d                                        ; $5a1b: $3e $3d
	ld a, [hl]                                       ; $5a1d: $7e
	ld a, a                                          ; $5a1e: $7f
	ld a, a                                          ; $5a1f: $7f
	db $dd                                           ; $5a20: $dd
	rst $38                                          ; $5a21: $ff
	add a                                            ; $5a22: $87
	dec sp                                           ; $5a23: $3b
	ld e, c                                          ; $5a24: $59
	ld e, b                                          ; $5a25: $58
	ld e, a                                          ; $5a26: $5f
	adc h                                            ; $5a27: $8c
	adc b                                            ; $5a28: $88
	adc b                                            ; $5a29: $88
	ld hl, sp-$19                                    ; $5a2a: $f8 $e7
	dec de                                           ; $5a2c: $1b
	inc de                                           ; $5a2d: $13
	scf                                              ; $5a2e: $37
	push af                                          ; $5a2f: $f5
	rlc a                                            ; $5a30: $cb $07
	rst $38                                          ; $5a32: $ff
	inc b                                            ; $5a33: $04
	ld [bc], a                                       ; $5a34: $02
	add hl, bc                                       ; $5a35: $09
	add hl, bc                                       ; $5a36: $09
	dec bc                                           ; $5a37: $0b
	dec [hl]                                         ; $5a38: $35
	ei                                               ; $5a39: $fb
	rlca                                             ; $5a3a: $07
	rst AddAOntoHL                                          ; $5a3b: $ef
	sbc c                                            ; $5a3c: $99
	ld bc, $1906                                     ; $5a3d: $01 $06 $19
	ld a, [hl]                                       ; $5a40: $7e
	call $7b3f                                       ; $5a41: $cd $3f $7b
	ld hl, sp-$6f                                    ; $5a44: $f8 $91
	rlca                                             ; $5a46: $07
	ld e, $7f                                        ; $5a47: $1e $7f
	di                                               ; $5a49: $f3
	ret nz                                           ; $5a4a: $c0

	db $fc                                           ; $5a4b: $fc
	sbc e                                            ; $5a4c: $9b
	ld hl, $8842                                     ; $5a4d: $21 $42 $88
	inc de                                           ; $5a50: $13
	ld h, $08                                        ; $5a51: $26 $08
	cp $db                                           ; $5a53: $fe $db
	rst $38                                          ; $5a55: $ff
	adc [hl]                                         ; $5a56: $8e

jr_068_5a57:
	db $fc                                           ; $5a57: $fc
	jr jr_068_5a8b                                   ; $5a58: $18 $31

	ld [hl], e                                       ; $5a5a: $73
	ld d, e                                          ; $5a5b: $53
	rst SubAFromBC                                          ; $5a5c: $e7
	xor a                                            ; $5a5d: $af
	cpl                                              ; $5a5e: $2f
	ccf                                              ; $5a5f: $3f
	ld sp, hl                                        ; $5a60: $f9
	ei                                               ; $5a61: $fb
	di                                               ; $5a62: $f3
	rst FarCall                                          ; $5a63: $f7
	db $fd                                           ; $5a64: $fd
	ld sp, hl                                        ; $5a65: $f9
	ld sp, hl                                        ; $5a66: $f9
	pop af                                           ; $5a67: $f1
	ldh [$c1], a                                     ; $5a68: $e0 $c1
	add b                                            ; $5a6a: $80
	cp $fc                                           ; $5a6b: $fe $fc
	ld sp, hl                                        ; $5a6d: $f9
	ld a, [$f5fc]                                    ; $5a6e: $fa $fc $f5
	push af                                          ; $5a71: $f5
	ld sp, hl                                        ; $5a72: $f9
	rrca                                             ; $5a73: $0f
	adc a                                            ; $5a74: $8f
	call $1fdf                                       ; $5a75: $cd $df $1f
	rla                                              ; $5a78: $17
	dec a                                            ; $5a79: $3d
	dec a                                            ; $5a7a: $3d
	jp hl                                            ; $5a7b: $e9


	jp hl                                            ; $5a7c: $e9


	db $eb                                           ; $5a7d: $eb
	db $db                                           ; $5a7e: $db
	xor e                                            ; $5a7f: $ab
	and a                                            ; $5a80: $a7
	rla                                              ; $5a81: $17
	rrca                                             ; $5a82: $0f
	dec hl                                           ; $5a83: $2b
	ld a, e                                          ; $5a84: $7b
	ld a, [hl]                                       ; $5a85: $7e
	cp $ee                                           ; $5a86: $fe $ee
	cp $fc                                           ; $5a88: $fe $fc
	sub [hl]                                         ; $5a8a: $96

jr_068_5a8b:
	call c, $1830                                    ; $5a8b: $dc $30 $18
	inc c                                            ; $5a8e: $0c
	ld a, [bc]                                       ; $5a8f: $0a
	add hl, bc                                       ; $5a90: $09
	rlca                                             ; $5a91: $07
	ld b, $03                                        ; $5a92: $06 $03
	ld a, e                                          ; $5a94: $7b
	ld hl, sp-$7f                                    ; $5a95: $f8 $81
	ld c, $0f                                        ; $5a97: $0e $0f
	dec b                                            ; $5a99: $05
	dec b                                            ; $5a9a: $05
	ld [bc], a                                       ; $5a9b: $02
	rrca                                             ; $5a9c: $0f
	dec [hl]                                         ; $5a9d: $35
	call $ad63                                       ; $5a9e: $cd $63 $ad
	ld d, e                                          ; $5aa1: $53
	call z, $0e35                                    ; $5aa2: $cc $35 $0e
	dec sp                                           ; $5aa5: $3b
	rst $38                                          ; $5aa6: $ff
	sbc a                                            ; $5aa7: $9f
	ld [hl], e                                       ; $5aa8: $73
	rst AddAOntoHL                                          ; $5aa9: $ef
	rst $38                                          ; $5aaa: $ff

jr_068_5aab:
	ei                                               ; $5aab: $fb
	ld a, [bc]                                       ; $5aac: $0a
	call nz, $1db2                                   ; $5aad: $c4 $b2 $1d
	ld [hl], a                                       ; $5ab0: $77

jr_068_5ab1:
	rst JumpTable                                          ; $5ab1: $c7
	ld a, [de]                                       ; $5ab2: $1a
	ld h, [hl]                                       ; $5ab3: $66
	ccf                                              ; $5ab4: $3f
	db $db                                           ; $5ab5: $db
	rst $38                                          ; $5ab6: $ff
	adc a                                            ; $5ab7: $8f
	rst AddAOntoHL                                          ; $5ab8: $ef
	add h                                            ; $5ab9: $84
	inc c                                            ; $5aba: $0c
	inc e                                            ; $5abb: $1c
	jr c, jr_068_5b37                                ; $5abc: $38 $79

	jp hl                                            ; $5abe: $e9


	push bc                                          ; $5abf: $c5
	push bc                                          ; $5ac0: $c5
	rst SubAFromDE                                          ; $5ac1: $df
	cp a                                             ; $5ac2: $bf
	ld a, l                                          ; $5ac3: $7d
	ld l, l                                          ; $5ac4: $6d
	ret                                              ; $5ac5: $c9


	adc c                                            ; $5ac6: $89
	add l                                            ; $5ac7: $85
	dec sp                                           ; $5ac8: $3b
	jr nz, jr_068_5aab                               ; $5ac9: $20 $e0

	db $d3                                           ; $5acb: $d3
	add b                                            ; $5acc: $80
	add sp, -$37                                     ; $5acd: $e8 $c9
	ld e, e                                          ; $5acf: $5b
	dec hl                                           ; $5ad0: $2b
	sbc a                                            ; $5ad1: $9f
	ld hl, sp+$7e                                    ; $5ad2: $f8 $7e
	db $fd                                           ; $5ad4: $fd
	ld hl, sp-$10                                    ; $5ad5: $f8 $f0
	ld h, c                                          ; $5ad7: $61
	inc sp                                           ; $5ad8: $33
	sbc a                                            ; $5ad9: $9f
	rst $38                                          ; $5ada: $ff
	add c                                            ; $5adb: $81
	inc bc                                           ; $5adc: $03
	ldh [c], a                                       ; $5add: $e2
	db $e3                                           ; $5ade: $e3
	jp $88c4                                         ; $5adf: $c3 $c4 $88


	sub c                                            ; $5ae2: $91
	ld hl, $1e43                                     ; $5ae3: $21 $43 $1e
	ld e, $3f                                        ; $5ae6: $1e $3f
	ccf                                              ; $5ae8: $3f
	ld a, a                                          ; $5ae9: $7f
	ld a, [hl]                                       ; $5aea: $7e
	cp $80                                           ; $5aeb: $fe $80
	db $fc                                           ; $5aed: $fc
	inc b                                            ; $5aee: $04
	add hl, bc                                       ; $5aef: $09
	ld a, [bc]                                       ; $5af0: $0a
	rla                                              ; $5af1: $17
	db $f4                                           ; $5af2: $f4
	ld [hl], $9b                                     ; $5af3: $36 $9b
	ld a, l                                          ; $5af5: $7d
	inc b                                            ; $5af6: $04
	add hl, bc                                       ; $5af7: $09
	dec bc                                           ; $5af8: $0b
	ld e, $ff                                        ; $5af9: $1e $ff
	dec sp                                           ; $5afb: $3b
	sbc l                                            ; $5afc: $9d
	cp $d3                                           ; $5afd: $fe $d3
	or [hl]                                          ; $5aff: $b6
	xor [hl]                                         ; $5b00: $ae
	ld e, l                                          ; $5b01: $5d
	ld d, e                                          ; $5b02: $53
	ei                                               ; $5b03: $fb
	or $d9                                           ; $5b04: $f6 $d9
	ld l, a                                          ; $5b06: $6f
	ld l, l                                          ; $5b07: $6d
	ld a, c                                          ; $5b08: $79
	cp e                                             ; $5b09: $bb
	cp [hl]                                          ; $5b0a: $be
	sbc a                                            ; $5b0b: $9f
	sub l                                            ; $5b0c: $95
	sbc a                                            ; $5b0d: $9f
	cp [hl]                                          ; $5b0e: $be
	sub e                                            ; $5b0f: $93
	and h                                            ; $5b10: $a4
	db $fc                                           ; $5b11: $fc
	db $e3                                           ; $5b12: $e3
	jr nc, jr_068_5ab1                               ; $5b13: $30 $9c

	ld c, a                                          ; $5b15: $4f
	ld c, e                                          ; $5b16: $4b
	db $dd                                           ; $5b17: $dd
	rst $38                                          ; $5b18: $ff
	sbc [hl]                                         ; $5b19: $9e
	ld sp, hl                                        ; $5b1a: $f9
	ld a, d                                          ; $5b1b: $7a
	cp e                                             ; $5b1c: $bb
	adc a                                            ; $5b1d: $8f
	call $e4e4                                       ; $5b1e: $cd $e4 $e4
	and $b6                                          ; $5b21: $e6 $b6
	sub a                                            ; $5b23: $97
	rla                                              ; $5b24: $17
	rla                                              ; $5b25: $17
	rst AddAOntoHL                                          ; $5b26: $ef
	rst AddAOntoHL                                          ; $5b27: $ef
	or a                                             ; $5b28: $b7
	or a                                             ; $5b29: $b7
	rla                                              ; $5b2a: $17
	dec e                                            ; $5b2b: $1d
	dec e                                            ; $5b2c: $1d
	inc e                                            ; $5b2d: $1c
	ldh [$c1], a                                     ; $5b2e: $e0 $c1
	add b                                            ; $5b30: $80
	call c, Call_068_7cbc                            ; $5b31: $dc $bc $7c
	ld l, [hl]                                       ; $5b34: $6e
	or $3b                                           ; $5b35: $f6 $3b

jr_068_5b37:
	dec e                                            ; $5b37: $1d
	and a                                            ; $5b38: $a7
	ld h, e                                          ; $5b39: $63
	jp $f183                                         ; $5b3a: $c3 $83 $f1


	ld sp, hl                                        ; $5b3d: $f9
	db $fd                                           ; $5b3e: $fd
	rst $38                                          ; $5b3f: $ff
	rst $38                                          ; $5b40: $ff
	ld b, e                                          ; $5b41: $43
	jp $79b9                                         ; $5b42: $c3 $b9 $79


	db $fc                                           ; $5b45: $fc
	db $fc                                           ; $5b46: $fc
	cp $fe                                           ; $5b47: $fe $fe
	ld a, a                                          ; $5b49: $7f
	ld a, a                                          ; $5b4a: $7f
	rst JumpTable                                          ; $5b4b: $c7
	add a                                            ; $5b4c: $87
	inc bc                                           ; $5b4d: $03
	inc bc                                           ; $5b4e: $03
	ld bc, $0180                                     ; $5b4f: $01 $80 $01
	rst $38                                          ; $5b52: $ff
	or h                                             ; $5b53: $b4
	jr c, jr_068_5ba0                                ; $5b54: $38 $4a

	ld d, b                                          ; $5b56: $50
	ld d, h                                          ; $5b57: $54
	sub l                                            ; $5b58: $95
	ldh a, [rIE]                                     ; $5b59: $f0 $ff
	ld b, e                                          ; $5b5b: $43
	rst JumpTable                                          ; $5b5c: $c7
	and h                                            ; $5b5d: $a4
	xor l                                            ; $5b5e: $ad
	xor e                                            ; $5b5f: $ab
	ld [$6f7f], a                                    ; $5b60: $ea $7f $6f
	db $d3                                           ; $5b63: $d3
	db $fc                                           ; $5b64: $fc
	sub a                                            ; $5b65: $97
	dec l                                            ; $5b66: $2d
	ld a, [$0b0d]                                    ; $5b67: $fa $0d $0b
	sbc a                                            ; $5b6a: $9f
	ldh [$bf], a                                     ; $5b6b: $e0 $bf
	ld a, a                                          ; $5b6d: $7f
	di                                               ; $5b6e: $f3
	db $fd                                           ; $5b6f: $fd
	sub h                                            ; $5b70: $94
	cp $07                                           ; $5b71: $fe $07
	ld d, b                                          ; $5b73: $50
	inc b                                            ; $5b74: $04
	push hl                                          ; $5b75: $e5
	inc bc                                           ; $5b76: $03
	db $e4                                           ; $5b77: $e4
	ld d, d                                          ; $5b78: $52
	add hl, hl                                       ; $5b79: $29
	sub l                                            ; $5b7a: $95
	db $e3                                           ; $5b7b: $e3
	ld a, e                                          ; $5b7c: $7b
	ld h, e                                          ; $5b7d: $63
	adc e                                            ; $5b7e: $8b
	sbc e                                            ; $5b7f: $9b
	db $ed                                           ; $5b80: $ed
	halt                                             ; $5b81: $76
	cp d                                             ; $5b82: $ba
	ld l, h                                          ; $5b83: $6c
	sbc d                                            ; $5b84: $9a
	add d                                            ; $5b85: $82
	ld h, e                                          ; $5b86: $63
	di                                               ; $5b87: $f3
	ld d, c                                          ; $5b88: $51
	ld b, b                                          ; $5b89: $40
	add b                                            ; $5b8a: $80
	ei                                               ; $5b8b: $fb
	db $fd                                           ; $5b8c: $fd
	db $fd                                           ; $5b8d: $fd
	call c, $ac4c                                    ; $5b8e: $dc $4c $ac

jr_068_5b91:
	xor h                                            ; $5b91: $ac
	db $ec                                           ; $5b92: $ec
	ldh [$c1], a                                     ; $5b93: $e0 $c1
	sub [hl]                                         ; $5b95: $96
	sub l                                            ; $5b96: $95
	sub [hl]                                         ; $5b97: $96
	xor [hl]                                         ; $5b98: $ae
	or [hl]                                          ; $5b99: $b6
	xor h                                            ; $5b9a: $ac
	ld a, l                                          ; $5b9b: $7d
	ld a, e                                          ; $5b9c: $7b
	rst FarCall                                          ; $5b9d: $f7
	rst $38                                          ; $5b9e: $ff
	ld a, c                                          ; $5b9f: $79

jr_068_5ba0:
	db $d3                                           ; $5ba0: $d3
	sbc e                                            ; $5ba1: $9b
	di                                               ; $5ba2: $f3
	ldh [c], a                                       ; $5ba3: $e2
	call nz, $ddc8                                   ; $5ba4: $c4 $c8 $dd
	rst $38                                          ; $5ba7: $ff
	rst SubAFromDE                                          ; $5ba8: $df
	rst SubAFromDE                                          ; $5ba9: $df
	sbc h                                            ; $5baa: $9c
	cp a                                             ; $5bab: $bf
	rst $38                                          ; $5bac: $ff
	add b                                            ; $5bad: $80
	cp $df                                           ; $5bae: $fe $df

jr_068_5bb0:
	jr nz, jr_068_5b91                               ; $5bb0: $20 $df

	ld h, b                                          ; $5bb2: $60
	add b                                            ; $5bb3: $80
	nop                                              ; $5bb4: $00
	ret nz                                           ; $5bb5: $c0

	ldh [rAUD1SWEEP], a                              ; $5bb6: $e0 $10
	ld [hl], b                                       ; $5bb8: $70
	cp b                                             ; $5bb9: $b8
	ld a, [hl]                                       ; $5bba: $7e
	push hl                                          ; $5bbb: $e5
	nop                                              ; $5bbc: $00
	ret nz                                           ; $5bbd: $c0

	jr nz, jr_068_5bb0                               ; $5bbe: $20 $f0

	sub b                                            ; $5bc0: $90
	ld a, b                                          ; $5bc1: $78
	cp $ff                                           ; $5bc2: $fe $ff
	call nc, Call_068_75ea                           ; $5bc4: $d4 $ea $75
	ld [hl], $f9                                     ; $5bc7: $36 $f9
	and $3f                                          ; $5bc9: $e6 $3f
	ld h, d                                          ; $5bcb: $62
	rst AddAOntoHL                                          ; $5bcc: $ef
	dec e                                            ; $5bcd: $1d
	ei                                               ; $5bce: $fb
	rst GetHLinHL                                          ; $5bcf: $cf
	cp $f9                                           ; $5bd0: $fe $f9
	rst $38                                          ; $5bd2: $ff
	sub d                                            ; $5bd3: $92
	rst $38                                          ; $5bd4: $ff
	jp z, $a75d                                      ; $5bd5: $ca $5d $a7

	ld a, d                                          ; $5bd8: $7a
	sub e                                            ; $5bd9: $93
	ld c, c                                          ; $5bda: $49
	add hl, hl                                       ; $5bdb: $29
	ld d, $f7                                        ; $5bdc: $16 $f7
	and $7c                                          ; $5bde: $e6 $7c
	cp l                                             ; $5be0: $bd
	ld a, e                                          ; $5be1: $7b
	ld hl, $ff89                                     ; $5be2: $21 $89 $ff
	adc [hl]                                         ; $5be5: $8e
	and h                                            ; $5be6: $a4
	jp nz, $72d2                                     ; $5be7: $c2 $d2 $72

	ld [hl], d                                       ; $5bea: $72
	ld e, e                                          ; $5beb: $5b
	ld e, c                                          ; $5bec: $59
	ld a, a                                          ; $5bed: $7f
	ld e, a                                          ; $5bee: $5f
	ccf                                              ; $5bef: $3f
	cpl                                              ; $5bf0: $2f
	adc a                                            ; $5bf1: $8f
	adc a                                            ; $5bf2: $8f
	and a                                            ; $5bf3: $a7
	and a                                            ; $5bf4: $a7
	reti                                             ; $5bf5: $d9


	ld sp, hl                                        ; $5bf6: $f9
	db $fd                                           ; $5bf7: $fd
	cp l                                             ; $5bf8: $bd
	cp l                                             ; $5bf9: $bd
	sbc $b5                                          ; $5bfa: $de $b5
	sbc $27                                          ; $5bfc: $de $27
	rst SubAFromDE                                          ; $5bfe: $df
	ld h, a                                          ; $5bff: $67
	sbc $6f                                          ; $5c00: $de $6f
	sub a                                            ; $5c02: $97
	and c                                            ; $5c03: $a1
	adc d                                            ; $5c04: $8a
	ld a, [hl+]                                      ; $5c05: $2a
	ld a, [hl+]                                      ; $5c06: $2a
	inc [hl]                                         ; $5c07: $34
	or h                                             ; $5c08: $b4
	xor b                                            ; $5c09: $a8
	jr z, jr_068_5c86                                ; $5c0a: $28 $7a

	ld h, h                                          ; $5c0c: $64
	ld a, [hl]                                       ; $5c0d: $7e
	ld h, e                                          ; $5c0e: $63
	sbc c                                            ; $5c0f: $99
	db $fc                                           ; $5c10: $fc
	ld hl, sp-$08                                    ; $5c11: $f8 $f8
	jr z, @-$4e                                      ; $5c13: $28 $b0

	or b                                             ; $5c15: $b0
	sbc $a0                                          ; $5c16: $de $a0
	rst SubAFromDE                                          ; $5c18: $df
	ret nz                                           ; $5c19: $c0

	ld a, [hl]                                       ; $5c1a: $7e
	ld b, b                                          ; $5c1b: $40
	sbc [hl]                                         ; $5c1c: $9e
	ldh a, [$de]                                     ; $5c1d: $f0 $de
	ldh [$de], a                                     ; $5c1f: $e0 $de
	ret nz                                           ; $5c21: $c0

	rst SubAFromDE                                          ; $5c22: $df
	add b                                            ; $5c23: $80
	ld a, a                                          ; $5c24: $7f
	sub [hl]                                         ; $5c25: $96
	rst SubAFromDE                                          ; $5c26: $df
	db $10                                           ; $5c27: $10
	sbc [hl]                                         ; $5c28: $9e
	ld [$f877], sp                                   ; $5c29: $08 $77 $f8
	sub l                                            ; $5c2c: $95
	ldh [$f0], a                                     ; $5c2d: $e0 $f0
	ldh a, [$f8]                                     ; $5c2f: $f0 $f8
	ld b, $9d                                        ; $5c31: $06 $9d
	cp $7f                                           ; $5c33: $fe $7f
	rst $38                                          ; $5c35: $ff
	rst AddAOntoHL                                          ; $5c36: $ef
	ld a, b                                          ; $5c37: $78
	jp $e39d                                         ; $5c38: $c3 $9d $e3


	add c                                            ; $5c3b: $81
	ld [hl], e                                       ; $5c3c: $73
	add sp, -$23                                     ; $5c3d: $e8 $dd
	rst $38                                          ; $5c3f: $ff
	ld a, a                                          ; $5c40: $7f
	ld d, l                                          ; $5c41: $55
	ld a, a                                          ; $5c42: $7f
	ld a, b                                          ; $5c43: $78
	ld a, h                                          ; $5c44: $7c
	ldh [$9e], a                                     ; $5c45: $e0 $9e
	ld [bc], a                                       ; $5c47: $02
	ld a, b                                          ; $5c48: $78
	ld l, a                                          ; $5c49: $6f
	ld l, b                                          ; $5c4a: $68
	ld e, c                                          ; $5c4b: $59
	ld a, e                                          ; $5c4c: $7b
	rst SubAFromBC                                          ; $5c4d: $e7
	ld h, a                                          ; $5c4e: $67
	ld hl, sp-$6b                                    ; $5c4f: $f8 $95
	sub b                                            ; $5c51: $90
	or b                                             ; $5c52: $b0
	ld h, b                                          ; $5c53: $60
	ld b, b                                          ; $5c54: $40
	ld b, b                                          ; $5c55: $40
	ldh [hDisp1_SCY], a                                     ; $5c56: $e0 $90
	add sp, -$70                                     ; $5c58: $e8 $90
	or b                                             ; $5c5a: $b0
	ld a, e                                          ; $5c5b: $7b
	or e                                             ; $5c5c: $b3
	ld a, a                                          ; $5c5d: $7f
	cp a                                             ; $5c5e: $bf
	add b                                            ; $5c5f: $80
	ld hl, sp-$44                                    ; $5c60: $f8 $bc
	and h                                            ; $5c62: $a4
	or b                                             ; $5c63: $b0
	ldh a, [rBCPS]                                   ; $5c64: $f0 $68
	ld l, b                                          ; $5c66: $68
	add sp, -$48                                     ; $5c67: $e8 $b8
	db $fc                                           ; $5c69: $fc
	db $e4                                           ; $5c6a: $e4
	ldh a, [$b0]                                     ; $5c6b: $f0 $b0
	cp b                                             ; $5c6d: $b8
	cp b                                             ; $5c6e: $b8
	jr c, jr_068_5cd9                                ; $5c6f: $38 $68

	ret c                                            ; $5c71: $d8

	ret c                                            ; $5c72: $d8

	ld a, b                                          ; $5c73: $78
	ld a, b                                          ; $5c74: $78
	xor b                                            ; $5c75: $a8
	ldh a, [$f0]                                     ; $5c76: $f0 $f0
	ld d, b                                          ; $5c78: $50
	ld l, b                                          ; $5c79: $68
	ld l, b                                          ; $5c7a: $68
	ret z                                            ; $5c7b: $c8

	ret z                                            ; $5c7c: $c8

	ret c                                            ; $5c7d: $d8

	sub b                                            ; $5c7e: $90
	ld a, e                                          ; $5c7f: $7b
	jp nc, $209c                                     ; $5c80: $d2 $9c $20

	ld b, b                                          ; $5c83: $40
	ld b, b                                          ; $5c84: $40
	ld [hl], a                                       ; $5c85: $77

jr_068_5c86:
	inc d                                            ; $5c86: $14
	sbc [hl]                                         ; $5c87: $9e
	and b                                            ; $5c88: $a0
	ld a, e                                          ; $5c89: $7b
	pop de                                           ; $5c8a: $d1
	ld [hl], a                                       ; $5c8b: $77
	ld hl, sp-$11                                    ; $5c8c: $f8 $ef
	sbc c                                            ; $5c8e: $99
	add b                                            ; $5c8f: $80
	ld b, b                                          ; $5c90: $40
	ret nz                                           ; $5c91: $c0

	and b                                            ; $5c92: $a0
	ldh [$e0], a                                     ; $5c93: $e0 $e0
	ld a, e                                          ; $5c95: $7b
	ld hl, sp-$76                                    ; $5c96: $f8 $8a
	ret nz                                           ; $5c98: $c0

	ld b, b                                          ; $5c99: $40
	ld h, b                                          ; $5c9a: $60
	jr nz, jr_068_5cbd                               ; $5c9b: $20 $20

	sub b                                            ; $5c9d: $90
	sub b                                            ; $5c9e: $90
	adc b                                            ; $5c9f: $88
	ret z                                            ; $5ca0: $c8

	ld hl, sp-$0c                                    ; $5ca1: $f8 $f4
	db $fc                                           ; $5ca3: $fc
	db $fc                                           ; $5ca4: $fc
	ld [hl], b                                       ; $5ca5: $70
	ld [hl], b                                       ; $5ca6: $70
	ld a, b                                          ; $5ca7: $78
	jr c, jr_068_5cb2                                ; $5ca8: $38 $08

	inc c                                            ; $5caa: $0c
	add h                                            ; $5cab: $84
	add h                                            ; $5cac: $84
	inc hl                                           ; $5cad: $23
	nop                                              ; $5cae: $00
	sub h                                            ; $5caf: $94
	cp e                                             ; $5cb0: $bb
	sbc c                                            ; $5cb1: $99

jr_068_5cb2:
	sbc c                                            ; $5cb2: $99
	ld de, $d588                                     ; $5cb3: $11 $88 $d5
	sbc c                                            ; $5cb6: $99
	nop                                              ; $5cb7: $00
	sbc c                                            ; $5cb8: $99
	sbc c                                            ; $5cb9: $99
	ld d, l                                          ; $5cba: $55
	ld [hl], a                                       ; $5cbb: $77
	ei                                               ; $5cbc: $fb

jr_068_5cbd:
	sbc [hl]                                         ; $5cbd: $9e

jr_068_5cbe:
	ld b, h                                          ; $5cbe: $44
	ld [hl], e                                       ; $5cbf: $73
	ei                                               ; $5cc0: $fb
	rst SubAFromDE                                          ; $5cc1: $df
	ld de, $99df                                     ; $5cc2: $11 $df $99
	sbc c                                            ; $5cc5: $99
	ld [hl+], a                                      ; $5cc6: $22
	sbc c                                            ; $5cc7: $99
	ld de, $aa99                                     ; $5cc8: $11 $99 $aa
	xor d                                            ; $5ccb: $aa
	sbc $99                                          ; $5ccc: $de $99
	sbc [hl]                                         ; $5cce: $9e
	xor d                                            ; $5ccf: $aa
	adc l                                            ; $5cd0: $8d
	ld bc, $3f84                                     ; $5cd1: $01 $84 $3f
	pop af                                           ; $5cd4: $f1
	jr c, jr_068_5cbe                                ; $5cd5: $38 $e7

	daa                                              ; $5cd7: $27
	rst $38                                          ; $5cd8: $ff

jr_068_5cd9:
	ld a, a                                          ; $5cd9: $7f
	ld hl, sp+$7c                                    ; $5cda: $f8 $7c
	jp $cf77                                         ; $5cdc: $c3 $77 $cf


	call c, $e9ff                                    ; $5cdf: $dc $ff $e9
	db $fd                                           ; $5ce2: $fd
	rst GetHLinHL                                          ; $5ce3: $cf
	cp a                                             ; $5ce4: $bf
	res 1, a                                         ; $5ce5: $cb $8f
	rst SubAFromHL                                          ; $5ce7: $d7
	adc a                                            ; $5ce8: $8f
	jp z, $d580                                      ; $5ce9: $ca $80 $d5

	add b                                            ; $5cec: $80
	ret nz                                           ; $5ced: $c0

	ld [hl], a                                       ; $5cee: $77
	cp $81                                           ; $5cef: $fe $81
	ret nz                                           ; $5cf1: $c0

	ld a, a                                          ; $5cf2: $7f
	ld b, b                                          ; $5cf3: $40
	ld e, a                                          ; $5cf4: $5f
	ld h, b                                          ; $5cf5: $60
	ccf                                              ; $5cf6: $3f
	jr nz, jr_068_5d28                               ; $5cf7: $20 $2f

	jr nc, jr_068_5d1a                               ; $5cf9: $30 $1f

	db $10                                           ; $5cfb: $10
	rla                                              ; $5cfc: $17
	jr jr_068_5d0a                                   ; $5cfd: $18 $0b

	inc c                                            ; $5cff: $0c
	dec [hl]                                         ; $5d00: $35
	ld a, $da                                        ; $5d01: $3e $da
	rst SubAFromBC                                          ; $5d03: $e7
	ld l, a                                          ; $5d04: $6f
	sbc a                                            ; $5d05: $9f
	sbc c                                            ; $5d06: $99
	ld a, a                                          ; $5d07: $7f
	db $10                                           ; $5d08: $10
	rst $38                                          ; $5d09: $ff

jr_068_5d0a:
	ld bc, $03ff                                     ; $5d0a: $01 $ff $03
	rst $38                                          ; $5d0d: $ff
	rlca                                             ; $5d0e: $07
	ld a, e                                          ; $5d0f: $7b
	cp $98                                           ; $5d10: $fe $98
	add a                                            ; $5d12: $87
	ld b, $43                                        ; $5d13: $06 $43
	add d                                            ; $5d15: $82
	jp nz, $e082                                     ; $5d16: $c2 $82 $e0

	cp a                                             ; $5d19: $bf

jr_068_5d1a:
	ldh [$60], a                                     ; $5d1a: $e0 $60
	sbc h                                            ; $5d1c: $9c
	add b                                            ; $5d1d: $80
	add c                                            ; $5d1e: $81
	ret nz                                           ; $5d1f: $c0

	ld [hl], a                                       ; $5d20: $77
	cp $9c                                           ; $5d21: $fe $9c
	nop                                              ; $5d23: $00
	add b                                            ; $5d24: $80
	add b                                            ; $5d25: $80
	cp l                                             ; $5d26: $bd
	nop                                              ; $5d27: $00

jr_068_5d28:
	db $10                                           ; $5d28: $10
	jr c, @+$5a                                      ; $5d29: $38 $58

	add b                                            ; $5d2b: $80
	jr nz, jr_068_5d86                               ; $5d2c: $20 $58

	ld h, b                                          ; $5d2e: $60
	rra                                              ; $5d2f: $1f
	inc c                                            ; $5d30: $0c
	rrca                                             ; $5d31: $0f
	ld [$080f], sp                                   ; $5d32: $08 $0f $08
	rra                                              ; $5d35: $1f
	nop                                              ; $5d36: $00
	ld b, e                                          ; $5d37: $43
	inc a                                            ; $5d38: $3c
	cp $3f                                           ; $5d39: $fe $3f
	db $fd                                           ; $5d3b: $fd
	inc bc                                           ; $5d3c: $03
	db $e3                                           ; $5d3d: $e3
	inc e                                            ; $5d3e: $1c
	db $dd                                           ; $5d3f: $dd

jr_068_5d40:
	ld a, $be                                        ; $5d40: $3e $be
	ld a, a                                          ; $5d42: $7f
	ld d, c                                          ; $5d43: $51
	ld a, e                                          ; $5d44: $7b
	rla                                              ; $5d45: $17
	ld e, a                                          ; $5d46: $5f
	dec de                                           ; $5d47: $1b
	rra                                              ; $5d48: $1f
	ccf                                              ; $5d49: $3f
	ld c, $9e                                        ; $5d4a: $0e $9e
	dec d                                            ; $5d4c: $15
	cp h                                             ; $5d4d: $bc
	dec hl                                           ; $5d4e: $2b
	inc bc                                           ; $5d4f: $03
	rlca                                             ; $5d50: $07
	rrca                                             ; $5d51: $0f
	rrca                                             ; $5d52: $0f
	sub d                                            ; $5d53: $92
	ld bc, $031f                                     ; $5d54: $01 $1f $03
	ccf                                              ; $5d57: $3f
	rlca                                             ; $5d58: $07
	ld a, a                                          ; $5d59: $7f
	rrca                                             ; $5d5a: $0f
	rst $38                                          ; $5d5b: $ff
	ccf                                              ; $5d5c: $3f
	cp $ff                                           ; $5d5d: $fe $ff
	dec sp                                           ; $5d5f: $3b
	db $fc                                           ; $5d60: $fc
	ld a, e                                          ; $5d61: $7b
	and e                                            ; $5d62: $a3
	sub d                                            ; $5d63: $92
	ld bc, $03fe                                     ; $5d64: $01 $fe $03
	ld a, h                                          ; $5d67: $7c
	rlca                                             ; $5d68: $07
	ld a, d                                          ; $5d69: $7a
	dec e                                            ; $5d6a: $1d
	xor $31                                          ; $5d6b: $ee $31
	add b                                            ; $5d6d: $80
	xor $c0                                          ; $5d6e: $ee $c0
	ld h, [hl]                                       ; $5d70: $66
	ld a, e                                          ; $5d71: $7b
	cp $9c                                           ; $5d72: $fe $9c
	halt                                             ; $5d74: $76
	ldh [$36], a                                     ; $5d75: $e0 $36
	ld a, e                                          ; $5d77: $7b
	cp $9c                                           ; $5d78: $fe $9c
	or d                                             ; $5d7a: $b2
	ldh [$32], a                                     ; $5d7b: $e0 $32
	ld [hl], a                                       ; $5d7d: $77
	cp $88                                           ; $5d7e: $fe $88
	ld h, b                                          ; $5d80: $60
	or d                                             ; $5d81: $b2
	ldh [$f3], a                                     ; $5d82: $e0 $f3
	ld h, b                                          ; $5d84: $60
	or a                                             ; $5d85: $b7

jr_068_5d86:
	ldh [$37], a                                     ; $5d86: $e0 $37
	ldh [$37], a                                     ; $5d88: $e0 $37
	ldh [c], a                                       ; $5d8a: $e2
	scf                                              ; $5d8b: $37
	ldh [rPCM34], a                                  ; $5d8c: $e0 $77
	ld h, d                                          ; $5d8e: $62
	rst FarCall                                          ; $5d8f: $f7
	ldh [c], a                                       ; $5d90: $e2
	rst $38                                          ; $5d91: $ff
	ldh [rIE], a                                     ; $5d92: $e0 $ff
	ldh [c], a                                       ; $5d94: $e2
	rst $38                                          ; $5d95: $ff
	jp nz, $fe7b                                     ; $5d96: $c2 $7b $fe

	sbc [hl]                                         ; $5d99: $9e
	jp z, $fe73                                      ; $5d9a: $ca $73 $fe

	sbc h                                            ; $5d9d: $9c
	ld c, d                                          ; $5d9e: $4a
	rst $38                                          ; $5d9f: $ff
	ld c, e                                          ; $5da0: $4b
	ld a, e                                          ; $5da1: $7b
	cp $9c                                           ; $5da2: $fe $9c
	ld e, e                                          ; $5da4: $5b
	rst $38                                          ; $5da5: $ff
	ld e, d                                          ; $5da6: $5a
	ld a, e                                          ; $5da7: $7b
	cp $67                                           ; $5da8: $fe $67
	jr nz, jr_068_5d40                               ; $5daa: $20 $94

	ld a, a                                          ; $5dac: $7f
	ret nz                                           ; $5dad: $c0

	ld a, a                                          ; $5dae: $7f
	ret nz                                           ; $5daf: $c0

	rst AddAOntoHL                                          ; $5db0: $ef
	rst SubAFromDE                                          ; $5db1: $df
	db $fd                                           ; $5db2: $fd
	db $fd                                           ; $5db3: $fd
	jp z, $c9bf                                      ; $5db4: $ca $bf $c9

	ld d, e                                          ; $5db7: $53
	jr nz, jr_068_5e19                               ; $5db8: $20 $5f

	ld b, b                                          ; $5dba: $40
	ld a, a                                          ; $5dbb: $7f
	cp $9d                                           ; $5dbc: $fe $9d
	pop bc                                           ; $5dbe: $c1
	nop                                              ; $5dbf: $00
	rlca                                             ; $5dc0: $07
	ld b, b                                          ; $5dc1: $40
	sub h                                            ; $5dc2: $94
	rst $38                                          ; $5dc3: $ff
	nop                                              ; $5dc4: $00
	pop af                                           ; $5dc5: $f1
	ld c, $fe                                        ; $5dc6: $0e $fe
	ccf                                              ; $5dc8: $3f
	ld a, e                                          ; $5dc9: $7b
	ld a, e                                          ; $5dca: $7b
	dec d                                            ; $5dcb: $15
	ld e, a                                          ; $5dcc: $5f
	inc de                                           ; $5dcd: $13
	ld l, e                                          ; $5dce: $6b
	ld b, b                                          ; $5dcf: $40
	ld d, a                                          ; $5dd0: $57
	and b                                            ; $5dd1: $a0
	sub a                                            ; $5dd2: $97
	ld hl, sp-$40                                    ; $5dd3: $f8 $c0
	or $cf                                           ; $5dd5: $f6 $cf
	rst SubAFromDE                                          ; $5dd7: $df
	cp a                                             ; $5dd8: $bf
	ret z                                            ; $5dd9: $c8

	sbc l                                            ; $5dda: $9d
	rra                                              ; $5ddb: $1f
	and b                                            ; $5ddc: $a0
	sbc [hl]                                         ; $5ddd: $9e
	ld bc, $9e7b                                     ; $5dde: $01 $7b $9e
	sbc $80                                          ; $5de1: $de $80
	dec de                                           ; $5de3: $1b
	and b                                            ; $5de4: $a0
	sub a                                            ; $5de5: $97
	db $e3                                           ; $5de6: $e3
	nop                                              ; $5de7: $00
	adc l                                            ; $5de8: $8d
	ld e, $3f                                        ; $5de9: $1e $3f
	ld a, a                                          ; $5deb: $7f
	dec d                                            ; $5dec: $15
	ld [hl], a                                       ; $5ded: $77
	scf                                              ; $5dee: $37
	and b                                            ; $5def: $a0
	sbc [hl]                                         ; $5df0: $9e
	db $fc                                           ; $5df1: $fc
	ld a, e                                          ; $5df2: $7b
	sbc [hl]                                         ; $5df3: $9e
	sbc c                                            ; $5df4: $99
	rst SubAFromDE                                          ; $5df5: $df
	and b                                            ; $5df6: $a0
	ld hl, sp-$50                                    ; $5df7: $f8 $b0
	rst GetHLinHL                                          ; $5df9: $cf
	sbc a                                            ; $5dfa: $9f
	rra                                              ; $5dfb: $1f
	and b                                            ; $5dfc: $a0
	rst $38                                          ; $5dfd: $ff
	ld a, e                                          ; $5dfe: $7b
	and d                                            ; $5dff: $a2
	ld a, e                                          ; $5e00: $7b
	db $fd                                           ; $5e01: $fd
	daa                                              ; $5e02: $27
	and b                                            ; $5e03: $a0
	sbc [hl]                                         ; $5e04: $9e
	rst JumpTable                                          ; $5e05: $c7
	cp l                                             ; $5e06: $bd
	inc bc                                           ; $5e07: $03
	inc bc                                           ; $5e08: $03
	rrca                                             ; $5e09: $0f
	ld [hl], e                                       ; $5e0a: $73
	sbc h                                            ; $5e0b: $9c
	ld h, c                                          ; $5e0c: $61
	inc a                                            ; $5e0d: $3c
	ccf                                              ; $5e0e: $3f
	ld [hl], a                                       ; $5e0f: $77
	and b                                            ; $5e10: $a0
	ld [hl], $a0                                     ; $5e11: $36 $a0
	ld a, e                                          ; $5e13: $7b
	cp $9d                                           ; $5e14: $fe $9d
	inc sp                                           ; $5e16: $33
	ldh [rOCPS], a                                   ; $5e17: $e0 $6a

jr_068_5e19:
	and b                                            ; $5e19: $a0
	sub [hl]                                         ; $5e1a: $96
	ld d, b                                          ; $5e1b: $50
	jr nz, jr_068_5e1e                               ; $5e1c: $20 $00

jr_068_5e1e:
	nop                                              ; $5e1e: $00
	call c, Call_068_6040                            ; $5e1f: $dc $40 $60
	jr c, jr_068_5e24                                ; $5e22: $38 $00

jr_068_5e24:
	cp h                                             ; $5e24: $bc
	ld h, b                                          ; $5e25: $60
	nop                                              ; $5e26: $00
	ld bc, $7b07                                     ; $5e27: $01 $07 $7b
	sub d                                            ; $5e2a: $92
	add a                                            ; $5e2b: $87
	ld sp, hl                                        ; $5e2c: $f9
	cp $bf                                           ; $5e2d: $fe $bf
	ldh a, [$7f]                                     ; $5e2f: $f0 $7f
	ldh a, [$9c]                                     ; $5e31: $f0 $9c
	cp b                                             ; $5e33: $b8
	jr @+$7a                                         ; $5e34: $18 $78

	jr c, @-$06                                      ; $5e36: $38 $f8

	ld [hl], a                                       ; $5e38: $77
	ldh [$9a], a                                     ; $5e39: $e0 $9a
	ld hl, sp+$60                                    ; $5e3b: $f8 $60
	ld a, b                                          ; $5e3d: $78
	jr nc, jr_068_5e40                               ; $5e3e: $30 $00

jr_068_5e40:
	cp h                                             ; $5e40: $bc
	jr nz, jr_068_5e43                               ; $5e41: $20 $00

jr_068_5e43:
	ld bc, $7b07                                     ; $5e43: $01 $07 $7b
	ccf                                              ; $5e46: $3f
	ldh [$9b], a                                     ; $5e47: $e0 $9b
	ld b, b                                          ; $5e49: $40
	ld a, b                                          ; $5e4a: $78
	ld a, b                                          ; $5e4b: $78
	jr nc, jr_068_5ec1                               ; $5e4c: $30 $73

	sbc $27                                          ; $5e4e: $de $27
	ret nz                                           ; $5e50: $c0

	sbc d                                            ; $5e51: $9a
	ld hl, sp+$78                                    ; $5e52: $f8 $78
	ld [hl], b                                       ; $5e54: $70
	ld d, b                                          ; $5e55: $50
	ld [hl], b                                       ; $5e56: $70
	ld a, e                                          ; $5e57: $7b
	or $9e                                           ; $5e58: $f6 $9e

Jump_068_5e5a:
	ld hl, $e043                                     ; $5e5a: $21 $43 $e0
	sbc d                                            ; $5e5d: $9a
	ld bc, $3185                                     ; $5e5e: $01 $85 $31
	rst $38                                          ; $5e61: $ff
	ld a, $ff                                        ; $5e62: $3e $ff
	ccf                                              ; $5e64: $3f
	pop hl                                           ; $5e65: $e1
	ld a, a                                          ; $5e66: $7f
	ret nz                                           ; $5e67: $c0

	ld [hl], a                                       ; $5e68: $77
	rst GetHLinHL                                          ; $5e69: $cf
	ld l, l                                          ; $5e6a: $6d
	db $dd                                           ; $5e6b: $dd
	ret nc                                           ; $5e6c: $d0

	ld sp, hl                                        ; $5e6d: $f9
	xor a                                            ; $5e6e: $af
	rst $38                                          ; $5e6f: $ff
	res 5, a                                         ; $5e70: $cb $af
	ret                                              ; $5e72: $c9


	adc a                                            ; $5e73: $8f
	pop de                                           ; $5e74: $d1
	adc l                                            ; $5e75: $8d
	rst GetHLinHL                                          ; $5e76: $cf
	add [hl]                                         ; $5e77: $86
	ret nz                                           ; $5e78: $c0

	add b                                            ; $5e79: $80
	ld [hl], e                                       ; $5e7a: $73
	cp $81                                           ; $5e7b: $fe $81
	ret nz                                           ; $5e7d: $c0

	ld a, a                                          ; $5e7e: $7f
	ld b, b                                          ; $5e7f: $40
	ld e, a                                          ; $5e80: $5f
	ld h, b                                          ; $5e81: $60
	ccf                                              ; $5e82: $3f
	jr nz, jr_068_5eb4                               ; $5e83: $20 $2f

	jr nc, jr_068_5ea6                               ; $5e85: $30 $1f

	db $10                                           ; $5e87: $10
	rla                                              ; $5e88: $17
	jr jr_068_5e96                                   ; $5e89: $18 $0b

	inc c                                            ; $5e8b: $0c
	dec [hl]                                         ; $5e8c: $35
	ld a, $da                                        ; $5e8d: $3e $da
	rst SubAFromBC                                          ; $5e8f: $e7
	ld l, a                                          ; $5e90: $6f
	sbc a                                            ; $5e91: $9f
	sbc c                                            ; $5e92: $99
	ld a, a                                          ; $5e93: $7f
	db $10                                           ; $5e94: $10
	rst $38                                          ; $5e95: $ff

jr_068_5e96:
	ld bc, $03ff                                     ; $5e96: $01 $ff $03
	rst $38                                          ; $5e99: $ff
	rlca                                             ; $5e9a: $07
	ld a, e                                          ; $5e9b: $7b
	cp $97                                           ; $5e9c: $fe $97
	add a                                            ; $5e9e: $87
	ld b, $c3                                        ; $5e9f: $06 $c3
	ld [bc], a                                       ; $5ea1: $02
	ld b, d                                          ; $5ea2: $42
	add d                                            ; $5ea3: $82
	ldh [rP1], a                                     ; $5ea4: $e0 $00

jr_068_5ea6:
	ld a, e                                          ; $5ea6: $7b
	cp $9c                                           ; $5ea7: $fe $9c
	add b                                            ; $5ea9: $80
	add c                                            ; $5eaa: $81
	ret nz                                           ; $5eab: $c0

	ld [hl], a                                       ; $5eac: $77
	cp $9c                                           ; $5ead: $fe $9c
	nop                                              ; $5eaf: $00
	add b                                            ; $5eb0: $80
	add b                                            ; $5eb1: $80
	cp $80                                           ; $5eb2: $fe $80

jr_068_5eb4:
	stop                                             ; $5eb4: $10 $00
	jr c, jr_068_5eb8                                ; $5eb6: $38 $00

jr_068_5eb8:
	ld e, b                                          ; $5eb8: $58
	jr nz, jr_068_5f13                               ; $5eb9: $20 $58

	ld h, b                                          ; $5ebb: $60
	rra                                              ; $5ebc: $1f
	inc c                                            ; $5ebd: $0c
	rrca                                             ; $5ebe: $0f
	inc c                                            ; $5ebf: $0c
	rrca                                             ; $5ec0: $0f

jr_068_5ec1:
	ld [$0f10], sp                                   ; $5ec1: $08 $10 $0f
	ld c, a                                          ; $5ec4: $4f
	ccf                                              ; $5ec5: $3f
	rst FarCall                                          ; $5ec6: $f7
	jr c, @+$01                                      ; $5ec7: $38 $ff

	nop                                              ; $5ec9: $00
	xor $1f                                          ; $5eca: $ee $1f
	ld sp, hl                                        ; $5ecc: $f9
	add hl, sp                                       ; $5ecd: $39
	pop de                                           ; $5ece: $d1
	ld e, c                                          ; $5ecf: $59
	sbc l                                            ; $5ed0: $9d
	rra                                              ; $5ed1: $1f
	ld d, $82                                        ; $5ed2: $16 $82
	ccf                                              ; $5ed4: $3f
	ld [bc], a                                       ; $5ed5: $02
	ld a, $73                                        ; $5ed6: $3e $73
	ld a, [de]                                       ; $5ed8: $1a
	rra                                              ; $5ed9: $1f
	inc c                                            ; $5eda: $0c
	rlca                                             ; $5edb: $07
	nop                                              ; $5edc: $00
	inc bc                                           ; $5edd: $03
	nop                                              ; $5ede: $00
	rlca                                             ; $5edf: $07
	nop                                              ; $5ee0: $00
	rrca                                             ; $5ee1: $0f
	nop                                              ; $5ee2: $00
	rrca                                             ; $5ee3: $0f
	ld bc, $031f                                     ; $5ee4: $01 $1f $03
	ccf                                              ; $5ee7: $3f
	rlca                                             ; $5ee8: $07
	ld a, a                                          ; $5ee9: $7f
	rrca                                             ; $5eea: $0f
	rst $38                                          ; $5eeb: $ff
	ccf                                              ; $5eec: $3f
	cp $ff                                           ; $5eed: $fe $ff
	dec sp                                           ; $5eef: $3b
	db $fc                                           ; $5ef0: $fc
	ld a, e                                          ; $5ef1: $7b
	and e                                            ; $5ef2: $a3
	sub d                                            ; $5ef3: $92
	ld bc, $03fe                                     ; $5ef4: $01 $fe $03
	ld a, h                                          ; $5ef7: $7c
	rlca                                             ; $5ef8: $07
	ld a, d                                          ; $5ef9: $7a
	dec e                                            ; $5efa: $1d
	xor $31                                          ; $5efb: $ee $31
	add b                                            ; $5efd: $80
	xor $c0                                          ; $5efe: $ee $c0
	ld h, [hl]                                       ; $5f00: $66
	ld a, e                                          ; $5f01: $7b
	cp $80                                           ; $5f02: $fe $80
	halt                                             ; $5f04: $76
	and b                                            ; $5f05: $a0
	or $e0                                           ; $5f06: $f6 $e0
	ld [hl], $e0                                     ; $5f08: $36 $e0
	ld [hl-], a                                      ; $5f0a: $32
	ldh [$32], a                                     ; $5f0b: $e0 $32
	ld h, b                                          ; $5f0d: $60
	or d                                             ; $5f0e: $b2
	ld h, b                                          ; $5f0f: $60
	or d                                             ; $5f10: $b2
	ldh [$f2], a                                     ; $5f11: $e0 $f2

jr_068_5f13:
	ldh [$b3], a                                     ; $5f13: $e0 $b3
	ld h, b                                          ; $5f15: $60
	or a                                             ; $5f16: $b7
	ldh [$37], a                                     ; $5f17: $e0 $37
	ldh [$37], a                                     ; $5f19: $e0 $37
	ldh [c], a                                       ; $5f1b: $e2
	scf                                              ; $5f1c: $37
	ldh [rPCM34], a                                  ; $5f1d: $e0 $77
	ld h, d                                          ; $5f1f: $62
	rst FarCall                                          ; $5f20: $f7
	ldh [c], a                                       ; $5f21: $e2
	rst $38                                          ; $5f22: $ff
	sbc d                                            ; $5f23: $9a
	ldh [rIE], a                                     ; $5f24: $e0 $ff
	ldh [c], a                                       ; $5f26: $e2
	rst $38                                          ; $5f27: $ff
	jp nz, $fe7b                                     ; $5f28: $c2 $7b $fe

	sbc [hl]                                         ; $5f2b: $9e
	jp z, $fe73                                      ; $5f2c: $ca $73 $fe

	sbc h                                            ; $5f2f: $9c
	ld c, d                                          ; $5f30: $4a
	rst $38                                          ; $5f31: $ff
	ld c, e                                          ; $5f32: $4b
	ld a, e                                          ; $5f33: $7b
	cp $9c                                           ; $5f34: $fe $9c
	ld e, e                                          ; $5f36: $5b
	rst $38                                          ; $5f37: $ff
	ld e, d                                          ; $5f38: $5a
	ld a, e                                          ; $5f39: $7b
	cp $67                                           ; $5f3a: $fe $67
	jr nz, jr_068_5fb5                               ; $5f3c: $20 $77

	cp $99                                           ; $5f3e: $fe $99
	rst FarCall                                          ; $5f40: $f7
	rst GetHLinHL                                          ; $5f41: $cf
	cp c                                             ; $5f42: $b9
	ld sp, hl                                        ; $5f43: $f9
	res 7, a                                         ; $5f44: $cb $bf
	ld c, a                                          ; $5f46: $4f
	jr nz, jr_068_5fa4                               ; $5f47: $20 $5b

	ld b, b                                          ; $5f49: $40
	sbc b                                            ; $5f4a: $98
	nop                                              ; $5f4b: $00
	pop bc                                           ; $5f4c: $c1
	nop                                              ; $5f4d: $00
	pop bc                                           ; $5f4e: $c1
	ret nz                                           ; $5f4f: $c0

	pop bc                                           ; $5f50: $c1
	ret nz                                           ; $5f51: $c0

	sbc $80                                          ; $5f52: $de $80
	inc hl                                           ; $5f54: $23
	ld b, b                                          ; $5f55: $40
	ld a, a                                          ; $5f56: $7f
	cp $99                                           ; $5f57: $fe $99
	di                                               ; $5f59: $f3
	inc c                                            ; $5f5a: $0c
	sbc $3f                                          ; $5f5b: $de $3f
	di                                               ; $5f5d: $f3
	ld [hl], e                                       ; $5f5e: $73
	ld a, e                                          ; $5f5f: $7b
	ld b, b                                          ; $5f60: $40
	sbc [hl]                                         ; $5f61: $9e
	ccf                                              ; $5f62: $3f
	ld l, a                                          ; $5f63: $6f
	ld b, b                                          ; $5f64: $40
	ld b, a                                          ; $5f65: $47
	ld h, b                                          ; $5f66: $60
	ld l, a                                          ; $5f67: $6f
	ld e, h                                          ; $5f68: $5c
	sbc l                                            ; $5f69: $9d
	ldh [$f3], a                                     ; $5f6a: $e0 $f3
	ld h, a                                          ; $5f6c: $67
	ld h, b                                          ; $5f6d: $60
	ld d, a                                          ; $5f6e: $57
	add b                                            ; $5f6f: $80
	sub e                                            ; $5f70: $93
	db $fc                                           ; $5f71: $fc
	ret nz                                           ; $5f72: $c0

	cp b                                             ; $5f73: $b8
	ret nz                                           ; $5f74: $c0

	rst $38                                          ; $5f75: $ff
	adc [hl]                                         ; $5f76: $8e
	push af                                          ; $5f77: $f5
	cp a                                             ; $5f78: $bf
	ret                                              ; $5f79: $c9


	sbc l                                            ; $5f7a: $9d
	rst JumpTable                                          ; $5f7b: $c7
	adc [hl]                                         ; $5f7c: $8e
	cpl                                              ; $5f7d: $2f
	add b                                            ; $5f7e: $80
	sbc [hl]                                         ; $5f7f: $9e
	ld bc, $fe7b                                     ; $5f80: $01 $7b $fe
	rrca                                             ; $5f83: $0f
	add b                                            ; $5f84: $80
	ld [hl], a                                       ; $5f85: $77
	cp $7f                                           ; $5f86: $fe $7f
	ld a, [hl]                                       ; $5f88: $7e
	sbc b                                            ; $5f89: $98
	ld h, l                                          ; $5f8a: $65
	ld a, a                                          ; $5f8b: $7f
	inc de                                           ; $5f8c: $13
	dec sp                                           ; $5f8d: $3b
	ld a, [hl]                                       ; $5f8e: $7e
	rrca                                             ; $5f8f: $0f
	rra                                              ; $5f90: $1f
	ld a, d                                          ; $5f91: $7a
	call nz, $8037                                   ; $5f92: $c4 $37 $80
	ld a, e                                          ; $5f95: $7b
	cp $23                                           ; $5f96: $fe $23

Call_068_5f98:
	add b                                            ; $5f98: $80
	sbc b                                            ; $5f99: $98
	rst AddAOntoHL                                          ; $5f9a: $ef
	add b                                            ; $5f9b: $80
	ldh a, [$b0]                                     ; $5f9c: $f0 $b0
	rst GetHLinHL                                          ; $5f9e: $cf
	sbc a                                            ; $5f9f: $9f
	rst GetHLinHL                                          ; $5fa0: $cf
	ld l, a                                          ; $5fa1: $6f
	add d                                            ; $5fa2: $82
	inc bc                                           ; $5fa3: $03

jr_068_5fa4:
	add b                                            ; $5fa4: $80
	scf                                              ; $5fa5: $37
	add b                                            ; $5fa6: $80
	sbc [hl]                                         ; $5fa7: $9e
	jp $99fe                                         ; $5fa8: $c3 $fe $99


	ld e, a                                          ; $5fab: $5f
	ld b, b                                          ; $5fac: $40
	inc hl                                           ; $5fad: $23
	ld hl, $1f7e                                     ; $5fae: $21 $7e $1f
	dec de                                           ; $5fb1: $1b
	add b                                            ; $5fb2: $80
	sbc l                                            ; $5fb3: $9d
	inc sp                                           ; $5fb4: $33

jr_068_5fb5:
	ldh [rOCPD], a                                   ; $5fb5: $e0 $6b
	add b                                            ; $5fb7: $80
	sub [hl]                                         ; $5fb8: $96
	ld d, b                                          ; $5fb9: $50
	jr nz, jr_068_5fbc                               ; $5fba: $20 $00

jr_068_5fbc:
	nop                                              ; $5fbc: $00
	sub [hl]                                         ; $5fbd: $96
	call z, $187c                                    ; $5fbe: $cc $7c $18
	nop                                              ; $5fc1: $00
	ld a, e                                          ; $5fc2: $7b
	or b                                             ; $5fc3: $b0
	rst $38                                          ; $5fc4: $ff
	ld a, a                                          ; $5fc5: $7f
	and d                                            ; $5fc6: $a2
	ld a, a                                          ; $5fc7: $7f
	adc $91                                          ; $5fc8: $ce $91
	ld a, e                                          ; $5fca: $7b
	add a                                            ; $5fcb: $87
	ld sp, hl                                        ; $5fcc: $f9
	cp $bf                                           ; $5fcd: $fe $bf
	ldh a, [$7f]                                     ; $5fcf: $f0 $7f
	ldh a, [$9c]                                     ; $5fd1: $f0 $9c
	cp b                                             ; $5fd3: $b8
	jr jr_068_604e                                   ; $5fd4: $18 $78

	jr c, @-$06                                      ; $5fd6: $38 $f8

	ld [hl], a                                       ; $5fd8: $77
	ldh [$9a], a                                     ; $5fd9: $e0 $9a
	cp [hl]                                          ; $5fdb: $be
	call c, Call_068_787c                            ; $5fdc: $dc $7c $78
	ld a, b                                          ; $5fdf: $78
	cp $9e                                           ; $5fe0: $fe $9e
	jr nc, jr_068_600f                               ; $5fe2: $30 $2b

	ldh [$99], a                                     ; $5fe4: $e0 $99
	cp $fc                                           ; $5fe6: $fe $fc
	ld a, h                                          ; $5fe8: $7c
	ld l, b                                          ; $5fe9: $68
	ld a, b                                          ; $5fea: $78
	jr nc, jr_068_6004                               ; $5feb: $30 $17

	ldh [$9d], a                                     ; $5fed: $e0 $9d
	db $fc                                           ; $5fef: $fc
	ld a, b                                          ; $5ff0: $78
	ld l, a                                          ; $5ff1: $6f
	sbc $9e                                          ; $5ff2: $de $9e
	ld hl, $e043                                     ; $5ff4: $21 $43 $e0
	and c                                            ; $5ff7: $a1
	ld bc, $3385                                     ; $5ff8: $01 $85 $33
	db $fd                                           ; $5ffb: $fd
	inc a                                            ; $5ffc: $3c
	rst $38                                          ; $5ffd: $ff
	ccf                                              ; $5ffe: $3f
	db $e3                                           ; $5fff: $e3
	ld a, a                                          ; $6000: $7f
	pop bc                                           ; $6001: $c1

Jump_068_6002:
	halt                                             ; $6002: $76
	rst GetHLinHL                                          ; $6003: $cf

jr_068_6004:
	ld a, a                                          ; $6004: $7f
	rst SubAFromDE                                          ; $6005: $df
	db $f4                                           ; $6006: $f4
	db $fc                                           ; $6007: $fc
	add sp, -$04                                     ; $6008: $e8 $fc
	rst GetHLinHL                                          ; $600a: $cf
	xor a                                            ; $600b: $af
	res 1, a                                         ; $600c: $cb $8f
	pop bc                                           ; $600e: $c1

jr_068_600f:
	adc l                                            ; $600f: $8d
	sbc $86                                          ; $6010: $de $86
	ret nz                                           ; $6012: $c0

	add b                                            ; $6013: $80
	ld [hl], e                                       ; $6014: $73
	cp $81                                           ; $6015: $fe $81
	ret nz                                           ; $6017: $c0

	ld a, a                                          ; $6018: $7f
	ld b, b                                          ; $6019: $40
	ld e, a                                          ; $601a: $5f
	ld h, b                                          ; $601b: $60
	ccf                                              ; $601c: $3f
	jr nz, jr_068_604e                               ; $601d: $20 $2f

	jr nc, jr_068_6040                               ; $601f: $30 $1f

	db $10                                           ; $6021: $10
	rla                                              ; $6022: $17
	jr jr_068_6030                                   ; $6023: $18 $0b

	inc c                                            ; $6025: $0c
	dec [hl]                                         ; $6026: $35
	ld a, $da                                        ; $6027: $3e $da
	rst SubAFromBC                                          ; $6029: $e7
	ld l, a                                          ; $602a: $6f
	sbc a                                            ; $602b: $9f
	sbc c                                            ; $602c: $99
	ld a, a                                          ; $602d: $7f
	db $10                                           ; $602e: $10
	rst $38                                          ; $602f: $ff

jr_068_6030:
	ld bc, $03ff                                     ; $6030: $01 $ff $03
	rst $38                                          ; $6033: $ff
	rlca                                             ; $6034: $07
	ld a, e                                          ; $6035: $7b
	cp $91                                           ; $6036: $fe $91
	add a                                            ; $6038: $87
	ld b, $c3                                        ; $6039: $06 $c3
	ld [bc], a                                       ; $603b: $02
	ld b, d                                          ; $603c: $42
	add d                                            ; $603d: $82
	ldh [$80], a                                     ; $603e: $e0 $80

Call_068_6040:
jr_068_6040:
	ldh [rP1], a                                     ; $6040: $e0 $00
	ld h, b                                          ; $6042: $60
	add b                                            ; $6043: $80
	add c                                            ; $6044: $81
	ret nz                                           ; $6045: $c0

	ld [hl], a                                       ; $6046: $77
	cp $9c                                           ; $6047: $fe $9c
	nop                                              ; $6049: $00
	add b                                            ; $604a: $80
	add b                                            ; $604b: $80
	cp l                                             ; $604c: $bd
	nop                                              ; $604d: $00

jr_068_604e:
	db $10                                           ; $604e: $10
	jr c, jr_068_60a9                                ; $604f: $38 $58

	add b                                            ; $6051: $80
	jr nz, jr_068_60ac                               ; $6052: $20 $58

	ld h, b                                          ; $6054: $60
	rra                                              ; $6055: $1f
	inc c                                            ; $6056: $0c
	rrca                                             ; $6057: $0f
	inc c                                            ; $6058: $0c
	rrca                                             ; $6059: $0f
	ld [$0f10], sp                                   ; $605a: $08 $10 $0f
	ld c, a                                          ; $605d: $4f
	ccf                                              ; $605e: $3f
	rst FarCall                                          ; $605f: $f7
	jr c, @+$01                                      ; $6060: $38 $ff

	nop                                              ; $6062: $00

jr_068_6063:
	ei                                               ; $6063: $fb
	inc a                                            ; $6064: $3c
	cp $7f                                           ; $6065: $fe $7f
	ret                                              ; $6067: $c9


	ld a, c                                          ; $6068: $79
	sub c                                            ; $6069: $91
	add hl, de                                       ; $606a: $19
	ld d, $3f                                        ; $606b: $16 $3f
	dec de                                           ; $606d: $1b
	ld a, $13                                        ; $606e: $3e $13
	ld a, [de]                                       ; $6070: $1a
	sbc h                                            ; $6071: $9c
	ccf                                              ; $6072: $3f
	inc c                                            ; $6073: $0c
	ld bc, $03bd                                     ; $6074: $01 $bd $03
	rlca                                             ; $6077: $07
	rrca                                             ; $6078: $0f
	rrca                                             ; $6079: $0f
	sub d                                            ; $607a: $92
	ld bc, $031f                                     ; $607b: $01 $1f $03
	ccf                                              ; $607e: $3f
	rlca                                             ; $607f: $07
	ld a, a                                          ; $6080: $7f
	rrca                                             ; $6081: $0f
	rst $38                                          ; $6082: $ff
	ccf                                              ; $6083: $3f
	cp $ff                                           ; $6084: $fe $ff
	dec sp                                           ; $6086: $3b
	db $fc                                           ; $6087: $fc
	ld a, e                                          ; $6088: $7b
	and e                                            ; $6089: $a3
	adc b                                            ; $608a: $88
	ld bc, $03fe                                     ; $608b: $01 $fe $03
	ld a, h                                          ; $608e: $7c
	rlca                                             ; $608f: $07
	ld a, d                                          ; $6090: $7a
	dec e                                            ; $6091: $1d
	xor $31                                          ; $6092: $ee $31
	add b                                            ; $6094: $80
	xor $c0                                          ; $6095: $ee $c0
	ld h, [hl]                                       ; $6097: $66
	ret nz                                           ; $6098: $c0

	ld h, [hl]                                       ; $6099: $66
	ld b, b                                          ; $609a: $40
	or $a0                                           ; $609b: $f6 $a0
	or $e0                                           ; $609d: $f6 $e0
	halt                                             ; $609f: $76
	ldh [$32], a                                     ; $60a0: $e0 $32
	ld l, e                                          ; $60a2: $6b
	cp $89                                           ; $60a3: $fe $89
	or d                                             ; $60a5: $b2
	ldh [$f3], a                                     ; $60a6: $e0 $f3
	ld h, b                                          ; $60a8: $60

jr_068_60a9:
	or a                                             ; $60a9: $b7
	ldh [$37], a                                     ; $60aa: $e0 $37

jr_068_60ac:
	ldh [$37], a                                     ; $60ac: $e0 $37
	ldh [c], a                                       ; $60ae: $e2
	scf                                              ; $60af: $37
	ldh [rPCM34], a                                  ; $60b0: $e0 $77
	ld h, d                                          ; $60b2: $62
	rst FarCall                                          ; $60b3: $f7
	ldh [c], a                                       ; $60b4: $e2
	rst $38                                          ; $60b5: $ff
	ldh [rIE], a                                     ; $60b6: $e0 $ff
	ldh [c], a                                       ; $60b8: $e2
	rst $38                                          ; $60b9: $ff
	jp nz, $fe7b                                     ; $60ba: $c2 $7b $fe

	sbc [hl]                                         ; $60bd: $9e
	jp z, $fe73                                      ; $60be: $ca $73 $fe

	sbc h                                            ; $60c1: $9c
	ld c, d                                          ; $60c2: $4a
	rst $38                                          ; $60c3: $ff
	ld c, e                                          ; $60c4: $4b
	ld a, e                                          ; $60c5: $7b
	cp $9c                                           ; $60c6: $fe $9c
	ld e, e                                          ; $60c8: $5b
	rst $38                                          ; $60c9: $ff
	ld e, d                                          ; $60ca: $5a
	ld a, e                                          ; $60cb: $7b
	cp $67                                           ; $60cc: $fe $67
	jr nz, jr_068_6063                               ; $60ce: $20 $93

	ld a, a                                          ; $60d0: $7f
	ret nz                                           ; $60d1: $c0

	ld a, a                                          ; $60d2: $7f
	ret nz                                           ; $60d3: $c0

	rst AddAOntoHL                                          ; $60d4: $ef
	rst SubAFromDE                                          ; $60d5: $df
	sbc c                                            ; $60d6: $99
	rst $38                                          ; $60d7: $ff
	db $fd                                           ; $60d8: $fd
	db $fd                                           ; $60d9: $fd
	res 5, a                                         ; $60da: $cb $af
	ld d, a                                          ; $60dc: $57
	jr nz, jr_068_613e                               ; $60dd: $20 $5f

	ld b, b                                          ; $60df: $40
	ld a, a                                          ; $60e0: $7f
	cp $9c                                           ; $60e1: $fe $9c
	pop bc                                           ; $60e3: $c1
	nop                                              ; $60e4: $00
	pop bc                                           ; $60e5: $c1
	ld a, e                                          ; $60e6: $7b
	inc a                                            ; $60e7: $3c
	rla                                              ; $60e8: $17
	ld b, b                                          ; $60e9: $40
	ld a, a                                          ; $60ea: $7f
	cp $95                                           ; $60eb: $fe $95
	db $dd                                           ; $60ed: $dd
	ld a, $b3                                        ; $60ee: $3e $b3
	ld a, a                                          ; $60f0: $7f
	pop hl                                           ; $60f1: $e1
	ld [hl], e                                       ; $60f2: $73
	ld d, $3f                                        ; $60f3: $16 $3f
	ld a, [de]                                       ; $60f5: $1a
	rra                                              ; $60f6: $1f
	ld l, a                                          ; $60f7: $6f
	ld b, b                                          ; $60f8: $40
	daa                                              ; $60f9: $27
	ld h, b                                          ; $60fa: $60
	sbc [hl]                                         ; $60fb: $9e
	ldh [rOCPD], a                                   ; $60fc: $e0 $6b
	ld h, b                                          ; $60fe: $60
	ld d, a                                          ; $60ff: $57
	add b                                            ; $6100: $80
	sub e                                            ; $6101: $93
	db $fc                                           ; $6102: $fc
	ret nz                                           ; $6103: $c0

	or b                                             ; $6104: $b0
	ret nz                                           ; $6105: $c0

	adc $bf                                          ; $6106: $ce $bf
	rst FarCall                                          ; $6108: $f7
	rst $38                                          ; $6109: $ff
	reti                                             ; $610a: $d9


	sbc l                                            ; $610b: $9d
	sub $8e                                          ; $610c: $d6 $8e
	cpl                                              ; $610e: $2f
	add b                                            ; $610f: $80
	ld a, a                                          ; $6110: $7f
	or b                                             ; $6111: $b0
	ld a, e                                          ; $6112: $7b
	xor [hl]                                         ; $6113: $ae
	inc de                                           ; $6114: $13
	add b                                            ; $6115: $80
	ld a, a                                          ; $6116: $7f
	cp $95                                           ; $6117: $fe $95
	jp $3e00                                         ; $6119: $c3 $00 $3e


	rra                                              ; $611c: $1f
	ld l, e                                          ; $611d: $6b
	ld a, a                                          ; $611e: $7f
	ccf                                              ; $611f: $3f
	ccf                                              ; $6120: $3f
	inc de                                           ; $6121: $13
	dec de                                           ; $6122: $1b
	inc hl                                           ; $6123: $23
	add b                                            ; $6124: $80
	ld a, a                                          ; $6125: $7f
	cp $9c                                           ; $6126: $fe $9c
	or e                                             ; $6128: $b3
	ldh [$f7], a                                     ; $6129: $e0 $f7
	scf                                              ; $612b: $37
	add b                                            ; $612c: $80
	sub [hl]                                         ; $612d: $96
	cp b                                             ; $612e: $b8
	ret nz                                           ; $612f: $c0

	cp $80                                           ; $6130: $fe $80
	jp hl                                            ; $6132: $e9


	or b                                             ; $6133: $b0
	rst SubAFromDE                                          ; $6134: $df
	sbc a                                            ; $6135: $9f
	sbc $6f                                          ; $6136: $de $6f
	add d                                            ; $6138: $82
	inc bc                                           ; $6139: $03
	add b                                            ; $613a: $80
	cpl                                              ; $613b: $2f
	add b                                            ; $613c: $80
	ld a, a                                          ; $613d: $7f

jr_068_613e:
	call c, Call_068_5f98                            ; $613e: $dc $98 $5f
	ld b, b                                          ; $6141: $40
	ld [hl+], a                                      ; $6142: $22
	ld hl, $1f3f                                     ; $6143: $21 $3f $1f
	rra                                              ; $6146: $1f
	cp a                                             ; $6147: $bf
	ld bc, $2f80                                     ; $6148: $01 $80 $2f
	add b                                            ; $614b: $80
	sbc [hl]                                         ; $614c: $9e
	inc sp                                           ; $614d: $33
	ld h, a                                          ; $614e: $67
	nop                                              ; $614f: $00
	sub [hl]                                         ; $6150: $96
	ld d, b                                          ; $6151: $50
	jr nz, jr_068_6154                               ; $6152: $20 $00

jr_068_6154:
	nop                                              ; $6154: $00
	call c, Call_068_7080                            ; $6155: $dc $80 $70
	jr c, jr_068_615a                                ; $6158: $38 $00

jr_068_615a:
	cp h                                             ; $615a: $bc
	ld [hl], b                                       ; $615b: $70
	nop                                              ; $615c: $00
	ld bc, $7b07                                     ; $615d: $01 $07 $7b
	sub d                                            ; $6160: $92
	add a                                            ; $6161: $87
	ld sp, hl                                        ; $6162: $f9
	cp $bf                                           ; $6163: $fe $bf
	ldh a, [$7f]                                     ; $6165: $f0 $7f
	ldh a, [$9c]                                     ; $6167: $f0 $9c
	cp b                                             ; $6169: $b8
	jr jr_068_61e4                                   ; $616a: $18 $78

	jr c, @-$06                                      ; $616c: $38 $f8

	ld [hl], a                                       ; $616e: $77
	ldh [$98], a                                     ; $616f: $e0 $98
	db $fc                                           ; $6171: $fc
	call z, Call_068_7878                            ; $6172: $cc $78 $78
	ld [hl], b                                       ; $6175: $70
	jr nc, jr_068_6178                               ; $6176: $30 $00

jr_068_6178:
	cp l                                             ; $6178: $bd
	jr nc, jr_068_617c                               ; $6179: $30 $01

	rlca                                             ; $617b: $07

jr_068_617c:
	ld a, e                                          ; $617c: $7b
	ld b, e                                          ; $617d: $43
	ldh [$9a], a                                     ; $617e: $e0 $9a
	call c, Call_068_7c8c                            ; $6180: $dc $8c $7c
	ld a, b                                          ; $6183: $78
	ld a, b                                          ; $6184: $78
	ld a, e                                          ; $6185: $7b
	ldh [$7f], a                                     ; $6186: $e0 $7f
	push af                                          ; $6188: $f5
	dec hl                                           ; $6189: $2b
	ldh [$9e], a                                     ; $618a: $e0 $9e
	add h                                            ; $618c: $84
	sbc $7c                                          ; $618d: $de $7c
	sbc l                                            ; $618f: $9d
	ld e, b                                          ; $6190: $58
	jr c, jr_068_620e                                ; $6191: $38 $7b

	sbc $9e                                          ; $6193: $de $9e
	ld hl, $e043                                     ; $6195: $21 $43 $e0
	sbc h                                            ; $6198: $9c
	ld bc, $3b85                                     ; $6199: $01 $85 $3b
	db $fd                                           ; $619c: $fd
	inc h                                            ; $619d: $24
	rst $38                                          ; $619e: $ff
	ccf                                              ; $619f: $3f
	db $e3                                           ; $61a0: $e3
	ld a, a                                          ; $61a1: $7f
	pop bc                                           ; $61a2: $c1
	ld a, a                                          ; $61a3: $7f
	ret nz                                           ; $61a4: $c0

	ld [hl], a                                       ; $61a5: $77
	rst GetHLinHL                                          ; $61a6: $cf
	db $fd                                           ; $61a7: $fd
	rst $38                                          ; $61a8: $ff
	xor b                                            ; $61a9: $a8
	ld sp, hl                                        ; $61aa: $f9
	rst GetHLinHL                                          ; $61ab: $cf
	xor a                                            ; $61ac: $af
	db $eb                                           ; $61ad: $eb
	adc a                                            ; $61ae: $8f
	pop bc                                           ; $61af: $c1
	adc l                                            ; $61b0: $8d
	adc $87                                          ; $61b1: $ce $87
	ret nz                                           ; $61b3: $c0

	add b                                            ; $61b4: $80
	ld a, e                                          ; $61b5: $7b
	cp $de                                           ; $61b6: $fe $de
	ret nz                                           ; $61b8: $c0

	add d                                            ; $61b9: $82
	ld a, a                                          ; $61ba: $7f
	ld b, b                                          ; $61bb: $40
	ld e, a                                          ; $61bc: $5f
	ld h, b                                          ; $61bd: $60
	ccf                                              ; $61be: $3f
	jr nz, jr_068_61f0                               ; $61bf: $20 $2f

	jr nc, jr_068_61e2                               ; $61c1: $30 $1f

	db $10                                           ; $61c3: $10
	rla                                              ; $61c4: $17
	jr jr_068_61d2                                   ; $61c5: $18 $0b

	inc c                                            ; $61c7: $0c
	dec [hl]                                         ; $61c8: $35
	ld a, $da                                        ; $61c9: $3e $da
	rst SubAFromBC                                          ; $61cb: $e7
	ld l, a                                          ; $61cc: $6f
	sbc a                                            ; $61cd: $9f
	sbc c                                            ; $61ce: $99
	ld a, a                                          ; $61cf: $7f
	db $10                                           ; $61d0: $10
	rst $38                                          ; $61d1: $ff

jr_068_61d2:
	ld bc, $03ff                                     ; $61d2: $01 $ff $03
	rst $38                                          ; $61d5: $ff
	rlca                                             ; $61d6: $07
	ld a, e                                          ; $61d7: $7b
	cp $91                                           ; $61d8: $fe $91
	add a                                            ; $61da: $87
	ld b, $c3                                        ; $61db: $06 $c3
	ld [bc], a                                       ; $61dd: $02
	ld b, d                                          ; $61de: $42
	add d                                            ; $61df: $82
	ldh [$80], a                                     ; $61e0: $e0 $80

jr_068_61e2:
	ldh [rP1], a                                     ; $61e2: $e0 $00

jr_068_61e4:
	ld h, b                                          ; $61e4: $60
	add b                                            ; $61e5: $80
	add c                                            ; $61e6: $81
	ret nz                                           ; $61e7: $c0

	ld [hl], a                                       ; $61e8: $77
	cp $be                                           ; $61e9: $fe $be
	add b                                            ; $61eb: $80
	add b                                            ; $61ec: $80
	nop                                              ; $61ed: $00
	sbc [hl]                                         ; $61ee: $9e
	db $10                                           ; $61ef: $10

jr_068_61f0:
	cp a                                             ; $61f0: $bf
	jr c, jr_068_624b                                ; $61f1: $38 $58

	add b                                            ; $61f3: $80
	jr nz, @+$5a                                     ; $61f4: $20 $58

	ld h, b                                          ; $61f6: $60
	rra                                              ; $61f7: $1f
	inc c                                            ; $61f8: $0c
	rrca                                             ; $61f9: $0f
	inc c                                            ; $61fa: $0c
	rrca                                             ; $61fb: $0f
	ld [$0f10], sp                                   ; $61fc: $08 $10 $0f
	ld c, a                                          ; $61ff: $4f
	ccf                                              ; $6200: $3f
	rst FarCall                                          ; $6201: $f7
	jr c, @+$01                                      ; $6202: $38 $ff

	nop                                              ; $6204: $00
	db $e3                                           ; $6205: $e3
	inc e                                            ; $6206: $1c
	rst $38                                          ; $6207: $ff
	ld a, $e3                                        ; $6208: $3e $e3
	ld [hl], a                                       ; $620a: $77
	db $d3                                           ; $620b: $d3
	ld [hl], e                                       ; $620c: $73
	rla                                              ; $620d: $17

jr_068_620e:
	rra                                              ; $620e: $1f
	ld a, [de]                                       ; $620f: $1a
	rra                                              ; $6210: $1f
	inc de                                           ; $6211: $13
	ld a, [de]                                       ; $6212: $1a
	ld a, a                                          ; $6213: $7f
	db $e4                                           ; $6214: $e4
	sbc [hl]                                         ; $6215: $9e
	ld bc, $03bd                                     ; $6216: $01 $bd $03
	rlca                                             ; $6219: $07
	rrca                                             ; $621a: $0f
	rrca                                             ; $621b: $0f
	sub d                                            ; $621c: $92
	ld bc, $031f                                     ; $621d: $01 $1f $03
	ccf                                              ; $6220: $3f
	rlca                                             ; $6221: $07
	ld a, a                                          ; $6222: $7f
	rrca                                             ; $6223: $0f
	rst $38                                          ; $6224: $ff
	ccf                                              ; $6225: $3f
	cp $ff                                           ; $6226: $fe $ff
	dec sp                                           ; $6228: $3b
	db $fc                                           ; $6229: $fc
	ld a, e                                          ; $622a: $7b
	and e                                            ; $622b: $a3
	sub d                                            ; $622c: $92
	ld bc, $03fe                                     ; $622d: $01 $fe $03
	ld a, h                                          ; $6230: $7c
	rlca                                             ; $6231: $07
	ld a, d                                          ; $6232: $7a
	dec e                                            ; $6233: $1d
	xor $31                                          ; $6234: $ee $31
	add b                                            ; $6236: $80
	xor $c0                                          ; $6237: $ee $c0
	ld h, [hl]                                       ; $6239: $66
	ld a, e                                          ; $623a: $7b
	cp $98                                           ; $623b: $fe $98
	halt                                             ; $623d: $76
	and b                                            ; $623e: $a0
	or $e0                                           ; $623f: $f6 $e0
	ld [hl], $e0                                     ; $6241: $36 $e0
	ld [hl-], a                                      ; $6243: $32
	ld l, a                                          ; $6244: $6f
	cp $88                                           ; $6245: $fe $88
	ld h, b                                          ; $6247: $60
	or d                                             ; $6248: $b2
	ldh [$f3], a                                     ; $6249: $e0 $f3

jr_068_624b:
	ld h, b                                          ; $624b: $60
	or a                                             ; $624c: $b7
	ldh [$37], a                                     ; $624d: $e0 $37
	ldh [$37], a                                     ; $624f: $e0 $37
	ldh [c], a                                       ; $6251: $e2
	scf                                              ; $6252: $37
	ldh [rPCM34], a                                  ; $6253: $e0 $77
	ld h, d                                          ; $6255: $62
	rst FarCall                                          ; $6256: $f7
	ldh [c], a                                       ; $6257: $e2
	rst $38                                          ; $6258: $ff
	ldh [rIE], a                                     ; $6259: $e0 $ff
	ldh [c], a                                       ; $625b: $e2
	rst $38                                          ; $625c: $ff
	jp nz, $fe7b                                     ; $625d: $c2 $7b $fe

	sbc [hl]                                         ; $6260: $9e
	jp z, $fe73                                      ; $6261: $ca $73 $fe

	sbc h                                            ; $6264: $9c
	ld c, d                                          ; $6265: $4a
	rst $38                                          ; $6266: $ff
	ld c, e                                          ; $6267: $4b
	ld a, e                                          ; $6268: $7b
	cp $9c                                           ; $6269: $fe $9c
	ld e, e                                          ; $626b: $5b
	rst $38                                          ; $626c: $ff
	ld e, d                                          ; $626d: $5a
	ld a, e                                          ; $626e: $7b
	cp $5f                                           ; $626f: $fe $5f
	jr nz, jr_068_62f2                               ; $6271: $20 $7f

	cp $94                                           ; $6273: $fe $94
	rst FarCall                                          ; $6275: $f7
	rst GetHLinHL                                          ; $6276: $cf
	sbc l                                            ; $6277: $9d
	rst $38                                          ; $6278: $ff
	cp c                                             ; $6279: $b9
	db $fd                                           ; $627a: $fd
	db $eb                                           ; $627b: $eb
	cp a                                             ; $627c: $bf
	pop bc                                           ; $627d: $c1
	adc l                                            ; $627e: $8d
	ret z                                            ; $627f: $c8

	ld h, e                                          ; $6280: $63
	jr nz, jr_068_62e2                               ; $6281: $20 $5f

	ld b, b                                          ; $6283: $40
	ld a, a                                          ; $6284: $7f
	cp $9d                                           ; $6285: $fe $9d
	pop bc                                           ; $6287: $c1
	nop                                              ; $6288: $00
	rlca                                             ; $6289: $07
	ld b, b                                          ; $628a: $40
	ld [hl], a                                       ; $628b: $77
	ld a, $95                                        ; $628c: $3e $95
	db $fd                                           ; $628e: $fd
	ld a, $d2                                        ; $628f: $3e $d2
	ld a, e                                          ; $6291: $7b
	rra                                              ; $6292: $1f
	ld a, a                                          ; $6293: $7f
	rla                                              ; $6294: $17
	ld e, a                                          ; $6295: $5f
	ld [de], a                                       ; $6296: $12
	dec de                                           ; $6297: $1b
	ld [hl], a                                       ; $6298: $77
	ld b, b                                          ; $6299: $40
	scf                                              ; $629a: $37
	ld h, b                                          ; $629b: $60
	ld a, e                                          ; $629c: $7b
	ld e, [hl]                                       ; $629d: $5e
	sbc h                                            ; $629e: $9c
	or e                                             ; $629f: $b3
	ldh [$f7], a                                     ; $62a0: $e0 $f7
	ld l, a                                          ; $62a2: $6f
	ld h, b                                          ; $62a3: $60
	ld d, a                                          ; $62a4: $57
	add b                                            ; $62a5: $80
	sub h                                            ; $62a6: $94
	db $fc                                           ; $62a7: $fc
	ret nz                                           ; $62a8: $c0

	or [hl]                                          ; $62a9: $b6
	rst GetHLinHL                                          ; $62aa: $cf
	cp l                                             ; $62ab: $bd
	db $fd                                           ; $62ac: $fd
	res 7, a                                         ; $62ad: $cb $bf
	rst JumpTable                                          ; $62af: $c7
	adc a                                            ; $62b0: $8f
	rst JumpTable                                          ; $62b1: $c7
	ld [hl], a                                       ; $62b2: $77
	add d                                            ; $62b3: $82
	dec sp                                           ; $62b4: $3b
	add b                                            ; $62b5: $80
	ld a, a                                          ; $62b6: $7f
	or b                                             ; $62b7: $b0
	inc bc                                           ; $62b8: $03
	add b                                            ; $62b9: $80

jr_068_62ba:
	cp a                                             ; $62ba: $bf
	pop bc                                           ; $62bb: $c1
	dec e                                            ; $62bc: $1d
	sub a                                            ; $62bd: $97
	ld a, $6a                                        ; $62be: $3e $6a
	ld a, e                                          ; $62c0: $7b
	ld h, a                                          ; $62c1: $67
	ccf                                              ; $62c2: $3f
	ld e, $1f                                        ; $62c3: $1e $1f
	rra                                              ; $62c5: $1f
	cp a                                             ; $62c6: $bf
	ld bc, $3380                                     ; $62c7: $01 $80 $33
	add b                                            ; $62ca: $80
	sbc h                                            ; $62cb: $9c
	ldh [$33], a                                     ; $62cc: $e0 $33
	and b                                            ; $62ce: $a0
	inc sp                                           ; $62cf: $33
	add b                                            ; $62d0: $80
	sub a                                            ; $62d1: $97
	cp b                                             ; $62d2: $b8
	ret nz                                           ; $62d3: $c0

	rst FarCall                                          ; $62d4: $f7
	and b                                            ; $62d5: $a0
	ret c                                            ; $62d6: $d8

	sbc b                                            ; $62d7: $98
	rst GetHLinHL                                          ; $62d8: $cf
	adc a                                            ; $62d9: $8f
	ld [hl], e                                       ; $62da: $73
	add d                                            ; $62db: $82
	inc sp                                           ; $62dc: $33
	add b                                            ; $62dd: $80
	sbc l                                            ; $62de: $9d
	ld bc, $be40                                     ; $62df: $01 $40 $be

jr_068_62e2:
	add b                                            ; $62e2: $80
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	rla                                              ; $62e5: $17
	add b                                            ; $62e6: $80
	ld a, a                                          ; $62e7: $7f
	jp c, $867f                                      ; $62e8: $da $7f $86

	sbc h                                            ; $62eb: $9c
	ld h, c                                          ; $62ec: $61
	ld h, e                                          ; $62ed: $63
	ld a, $13                                        ; $62ee: $3e $13
	add b                                            ; $62f0: $80
	ld h, [hl]                                       ; $62f1: $66

jr_068_62f2:
	ld h, b                                          ; $62f2: $60
	sub [hl]                                         ; $62f3: $96
	ld d, b                                          ; $62f4: $50
	jr nz, jr_068_62f7                               ; $62f5: $20 $00

jr_068_62f7:
	nop                                              ; $62f7: $00
	jr nz, jr_068_62ba                               ; $62f8: $20 $c0

	ld [hl], b                                       ; $62fa: $70
	jr jr_068_62fd                                   ; $62fb: $18 $00

jr_068_62fd:
	cp h                                             ; $62fd: $bc
	ld [hl], b                                       ; $62fe: $70
	nop                                              ; $62ff: $00
	ld bc, $7b07                                     ; $6300: $01 $07 $7b
	sub d                                            ; $6303: $92
	add a                                            ; $6304: $87
	ld sp, hl                                        ; $6305: $f9
	cp $bf                                           ; $6306: $fe $bf
	ldh a, [$7f]                                     ; $6308: $f0 $7f
	ldh a, [$9c]                                     ; $630a: $f0 $9c
	cp b                                             ; $630c: $b8
	jr jr_068_6387                                   ; $630d: $18 $78

	jr c, @-$06                                      ; $630f: $38 $f8

	ld [hl], a                                       ; $6311: $77
	ldh [$9b], a                                     ; $6312: $e0 $9b
	ldh a, [$60]                                     ; $6314: $f0 $60
	ld a, b                                          ; $6316: $78
	ld d, b                                          ; $6317: $50
	ld a, e                                          ; $6318: $7b
	jp c, $e023                                      ; $6319: $da $23 $e0

	sbc e                                            ; $631c: $9b
	ld [hl], b                                       ; $631d: $70
	ldh [$78], a                                     ; $631e: $e0 $78
	ld [hl], b                                       ; $6320: $70
	ld l, a                                          ; $6321: $6f
	sbc $2b                                          ; $6322: $de $2b
	ldh [$7f], a                                     ; $6324: $e0 $7f
	ldh [c], a                                       ; $6326: $e2
	rst SubAFromDE                                          ; $6327: $df
	ld a, b                                          ; $6328: $78
	sbc e                                            ; $6329: $9b
	ld c, b                                          ; $632a: $48
	ld [hl], b                                       ; $632b: $70
	jr nc, jr_068_632e                               ; $632c: $30 $00

jr_068_632e:
	cp [hl]                                          ; $632e: $be
	ld hl, $7b07                                     ; $632f: $21 $07 $7b
	ld d, e                                          ; $6332: $53
	ldh [hDisp0_SCX], a                                     ; $6333: $e0 $84
	ld bc, $3f86                                     ; $6335: $01 $86 $3f
	pop af                                           ; $6338: $f1
	inc sp                                           ; $6339: $33
	db $fc                                           ; $633a: $fc
	inc a                                            ; $633b: $3c
	rst AddAOntoHL                                          ; $633c: $ef
	ld a, a                                          ; $633d: $7f
	db $e3                                           ; $633e: $e3
	ld e, c                                          ; $633f: $59
	rst SubAFromBC                                          ; $6340: $e7
	ld a, a                                          ; $6341: $7f
	ret nz                                           ; $6342: $c0

	rst AddAOntoHL                                          ; $6343: $ef
	rst SubAFromDE                                          ; $6344: $df
	sbc c                                            ; $6345: $99
	rst $38                                          ; $6346: $ff
	db $ec                                           ; $6347: $ec
	db $fc                                           ; $6348: $fc
	add sp, -$51                                     ; $6349: $e8 $af
	push af                                          ; $634b: $f5
	adc l                                            ; $634c: $8d
	rst SubAFromBC                                          ; $634d: $e7
	add b                                            ; $634e: $80
	ret nz                                           ; $634f: $c0

	ld l, a                                          ; $6350: $6f
	cp $81                                           ; $6351: $fe $81
	ret nz                                           ; $6353: $c0

	ld a, a                                          ; $6354: $7f
	ld b, b                                          ; $6355: $40
	ld e, a                                          ; $6356: $5f
	ld h, b                                          ; $6357: $60
	ccf                                              ; $6358: $3f
	jr nz, jr_068_638a                               ; $6359: $20 $2f

	jr nc, jr_068_637c                               ; $635b: $30 $1f

	db $10                                           ; $635d: $10
	rla                                              ; $635e: $17
	jr jr_068_636c                                   ; $635f: $18 $0b

	inc c                                            ; $6361: $0c
	dec [hl]                                         ; $6362: $35
	ld a, $da                                        ; $6363: $3e $da
	rst SubAFromBC                                          ; $6365: $e7
	ld l, a                                          ; $6366: $6f
	sbc a                                            ; $6367: $9f
	sbc c                                            ; $6368: $99
	ld a, a                                          ; $6369: $7f
	db $10                                           ; $636a: $10
	rst $38                                          ; $636b: $ff

jr_068_636c:
	ld bc, $03ff                                     ; $636c: $01 $ff $03
	rst $38                                          ; $636f: $ff
	rlca                                             ; $6370: $07
	ld a, e                                          ; $6371: $7b
	cp $8e                                           ; $6372: $fe $8e
	add a                                            ; $6374: $87
	ld b, $c3                                        ; $6375: $06 $c3
	ld [bc], a                                       ; $6377: $02
	jp nz, Jump_068_6002                             ; $6378: $c2 $02 $60

	add b                                            ; $637b: $80

jr_068_637c:
	ldh [$80], a                                     ; $637c: $e0 $80

jr_068_637e:
	ld h, b                                          ; $637e: $60
	add b                                            ; $637f: $80
	pop bc                                           ; $6380: $c1
	nop                                              ; $6381: $00
	pop bc                                           ; $6382: $c1
	add b                                            ; $6383: $80
	add c                                            ; $6384: $81
	db $dd                                           ; $6385: $dd
	add b                                            ; $6386: $80

jr_068_6387:
	cp l                                             ; $6387: $bd
	nop                                              ; $6388: $00
	db $10                                           ; $6389: $10

jr_068_638a:
	jr c, @+$5a                                      ; $638a: $38 $58

	add b                                            ; $638c: $80
	jr nz, @+$5a                                     ; $638d: $20 $58

	ld h, b                                          ; $638f: $60
	rra                                              ; $6390: $1f
	inc c                                            ; $6391: $0c
	rrca                                             ; $6392: $0f
	inc c                                            ; $6393: $0c
	rrca                                             ; $6394: $0f
	ld [$0f10], sp                                   ; $6395: $08 $10 $0f
	ld c, a                                          ; $6398: $4f
	ccf                                              ; $6399: $3f
	rst FarCall                                          ; $639a: $f7
	jr c, jr_068_637e                                ; $639b: $38 $e1

	ld e, $9e                                        ; $639d: $1e $9e

jr_068_639f:
	ld h, c                                          ; $639f: $61
	db $dd                                           ; $63a0: $dd
	ld a, $b6                                        ; $63a1: $3e $b6
	ld a, a                                          ; $63a3: $7f
	pop de                                           ; $63a4: $d1
	ld a, c                                          ; $63a5: $79
	rla                                              ; $63a6: $17
	ld e, a                                          ; $63a7: $5f
	ld [de], a                                       ; $63a8: $12
	dec de                                           ; $63a9: $1b
	dec c                                            ; $63aa: $0d
	ld e, $9e                                        ; $63ab: $1e $9e
	ccf                                              ; $63ad: $3f
	cp h                                             ; $63ae: $bc
	ld bc, $0703                                     ; $63af: $01 $03 $07
	rrca                                             ; $63b2: $0f
	rrca                                             ; $63b3: $0f
	sub d                                            ; $63b4: $92
	ld bc, $031f                                     ; $63b5: $01 $1f $03
	ccf                                              ; $63b8: $3f
	rlca                                             ; $63b9: $07
	ld a, a                                          ; $63ba: $7f
	rrca                                             ; $63bb: $0f
	rst $38                                          ; $63bc: $ff
	ccf                                              ; $63bd: $3f
	cp $ff                                           ; $63be: $fe $ff
	dec sp                                           ; $63c0: $3b
	db $fc                                           ; $63c1: $fc
	ld a, e                                          ; $63c2: $7b
	and e                                            ; $63c3: $a3
	adc b                                            ; $63c4: $88
	ld bc, $03fe                                     ; $63c5: $01 $fe $03
	ld a, h                                          ; $63c8: $7c
	rlca                                             ; $63c9: $07
	ld a, d                                          ; $63ca: $7a
	dec e                                            ; $63cb: $1d
	xor $31                                          ; $63cc: $ee $31
	add b                                            ; $63ce: $80
	xor $c0                                          ; $63cf: $ee $c0
	ld h, [hl]                                       ; $63d1: $66
	ret nz                                           ; $63d2: $c0

	ld h, [hl]                                       ; $63d3: $66
	ld b, b                                          ; $63d4: $40
	or $a0                                           ; $63d5: $f6 $a0
	or $e0                                           ; $63d7: $f6 $e0
	halt                                             ; $63d9: $76
	ldh [$32], a                                     ; $63da: $e0 $32
	ld l, a                                          ; $63dc: $6f
	cp $99                                           ; $63dd: $fe $99
	ld h, b                                          ; $63df: $60
	or d                                             ; $63e0: $b2
	ldh [$f3], a                                     ; $63e1: $e0 $f3
	ldh [$37], a                                     ; $63e3: $e0 $37
	ld [hl], a                                       ; $63e5: $77
	cp $92                                           ; $63e6: $fe $92
	ldh [c], a                                       ; $63e8: $e2
	scf                                              ; $63e9: $37
	ldh [rPCM34], a                                  ; $63ea: $e0 $77
	ld h, d                                          ; $63ec: $62
	rst FarCall                                          ; $63ed: $f7
	ldh [c], a                                       ; $63ee: $e2
	rst $38                                          ; $63ef: $ff
	ldh [rIE], a                                     ; $63f0: $e0 $ff
	ldh [c], a                                       ; $63f2: $e2
	rst $38                                          ; $63f3: $ff
	jp nz, $fe7b                                     ; $63f4: $c2 $7b $fe

	sbc [hl]                                         ; $63f7: $9e
	jp z, $fe73                                      ; $63f8: $ca $73 $fe

	sbc h                                            ; $63fb: $9c
	ld c, d                                          ; $63fc: $4a
	rst $38                                          ; $63fd: $ff
	ld c, e                                          ; $63fe: $4b
	ld a, e                                          ; $63ff: $7b
	cp $9c                                           ; $6400: $fe $9c
	ld e, e                                          ; $6402: $5b
	rst $38                                          ; $6403: $ff
	ld e, d                                          ; $6404: $5a
	ld a, e                                          ; $6405: $7b
	cp $67                                           ; $6406: $fe $67
	jr nz, jr_068_639f                               ; $6408: $20 $95

	ld e, a                                          ; $640a: $5f
	pop hl                                           ; $640b: $e1
	ld [hl], b                                       ; $640c: $70
	rst GetHLinHL                                          ; $640d: $cf
	rst $38                                          ; $640e: $ff
	ret nz                                           ; $640f: $c0

	cp a                                             ; $6410: $bf
	rst SubAFromDE                                          ; $6411: $df
	ei                                               ; $6412: $fb
	ei                                               ; $6413: $fb
	ld c, a                                          ; $6414: $4f
	jr nz, jr_068_6462                               ; $6415: $20 $4b

	ld b, b                                          ; $6417: $40
	sbc [hl]                                         ; $6418: $9e
	nop                                              ; $6419: $00
	rla                                              ; $641a: $17
	ld b, b                                          ; $641b: $40
	sub l                                            ; $641c: $95
	rst $38                                          ; $641d: $ff
	nop                                              ; $641e: $00
	db $e3                                           ; $641f: $e3
	inc e                                            ; $6420: $1c
	rst $38                                          ; $6421: $ff
	nop                                              ; $6422: $00
	cp $3f                                           ; $6423: $fe $3f
	db $d3                                           ; $6425: $d3
	ld [hl], a                                       ; $6426: $77
	ld e, a                                          ; $6427: $5f
	ld b, b                                          ; $6428: $40
	rlca                                             ; $6429: $07
	ld h, b                                          ; $642a: $60
	ld e, a                                          ; $642b: $5f
	add b                                            ; $642c: $80
	ld a, [hl]                                       ; $642d: $7e
	and b                                            ; $642e: $a0
	ld a, a                                          ; $642f: $7f
	add b                                            ; $6430: $80
	sub a                                            ; $6431: $97
	or c                                             ; $6432: $b1
	ret nz                                           ; $6433: $c0

	rst AddAOntoHL                                          ; $6434: $ef
	sbc a                                            ; $6435: $9f
	ld a, [$e5ff]                                    ; $6436: $fa $ff $e5
	sbc l                                            ; $6439: $9d
	scf                                              ; $643a: $37
	add b                                            ; $643b: $80
	sbc [hl]                                         ; $643c: $9e
	ldh [$bd], a                                     ; $643d: $e0 $bd
	pop bc                                           ; $643f: $c1
	pop bc                                           ; $6440: $c1
	add c                                            ; $6441: $81
	add b                                            ; $6442: $80
	dec de                                           ; $6443: $1b
	add b                                            ; $6444: $80
	ld [hl], a                                       ; $6445: $77
	cp $97                                           ; $6446: $fe $97
	jp $3f00                                         ; $6448: $c3 $00 $3f


	ld a, $6b                                        ; $644b: $3e $6b
	ld a, a                                          ; $644d: $7f
	inc de                                           ; $644e: $13
	dec sp                                           ; $644f: $3b
	rra                                              ; $6450: $1f
	add b                                            ; $6451: $80
	ld a, e                                          ; $6452: $7b
	cp $9c                                           ; $6453: $fe $9c
	inc sp                                           ; $6455: $33
	ldh [$f7], a                                     ; $6456: $e0 $f7
	scf                                              ; $6458: $37
	add b                                            ; $6459: $80
	sub a                                            ; $645a: $97
	cp b                                             ; $645b: $b8
	ret nz                                           ; $645c: $c0

	rst $38                                          ; $645d: $ff
	add b                                            ; $645e: $80
	ldh a, [$b8]                                     ; $645f: $f0 $b8
	rst AddAOntoHL                                          ; $6461: $ef

jr_068_6462:
	sbc a                                            ; $6462: $9f
	rra                                              ; $6463: $1f
	nop                                              ; $6464: $00
	ld a, e                                          ; $6465: $7b

jr_068_6466:
	xor [hl]                                         ; $6466: $ae
	inc bc                                           ; $6467: $03
	add b                                            ; $6468: $80
	ld a, a                                          ; $6469: $7f
	call c, $4f9a                                    ; $646a: $dc $9a $4f
	ld b, b                                          ; $646d: $40
	ld hl, $1f33                                     ; $646e: $21 $33 $1f
	rrca                                             ; $6471: $0f
	add b                                            ; $6472: $80
	sbc [hl]                                         ; $6473: $9e
	or a                                             ; $6474: $b7
	ld l, a                                          ; $6475: $6f
	add b                                            ; $6476: $80
	sub [hl]                                         ; $6477: $96
	ld d, b                                          ; $6478: $50
	jr nz, jr_068_647b                               ; $6479: $20 $00

jr_068_647b:
	nop                                              ; $647b: $00
	ld [hl], b                                       ; $647c: $70
	jr nz, jr_068_64b7                               ; $647d: $20 $38

	ld d, b                                          ; $647f: $50
	jr c, @-$42                                      ; $6480: $38 $bc

	nop                                              ; $6482: $00
	jr nz, jr_068_6486                               ; $6483: $20 $01

	rlca                                             ; $6485: $07

jr_068_6486:
	ld a, e                                          ; $6486: $7b
	sub d                                            ; $6487: $92
	add a                                            ; $6488: $87
	ld sp, hl                                        ; $6489: $f9
	cp $bf                                           ; $648a: $fe $bf
	ldh a, [$7f]                                     ; $648c: $f0 $7f
	ldh a, [$9c]                                     ; $648e: $f0 $9c
	cp b                                             ; $6490: $b8
	jr jr_068_650b                                   ; $6491: $18 $78

	jr c, @-$06                                      ; $6493: $38 $f8

	ld [hl], a                                       ; $6495: $77
	ldh [$99], a                                     ; $6496: $e0 $99
	jr nc, jr_068_64fa                               ; $6498: $30 $60

	ld a, b                                          ; $649a: $78
	ld [hl], b                                       ; $649b: $70
	ld a, b                                          ; $649c: $78
	ld d, b                                          ; $649d: $50
	rra                                              ; $649e: $1f
	ldh [$98], a                                     ; $649f: $e0 $98
	ld [hl], b                                       ; $64a1: $70
	ld h, b                                          ; $64a2: $60
	ld hl, sp+$70                                    ; $64a3: $f8 $70
	ld a, b                                          ; $64a5: $78
	ld e, b                                          ; $64a6: $58
	jr nc, jr_068_6466                               ; $64a7: $30 $bd

	nop                                              ; $64a9: $00
	ld hl, $7b07                                     ; $64aa: $21 $07 $7b
	scf                                              ; $64ad: $37
	ldh [$9b], a                                     ; $64ae: $e0 $9b
	ldh a, [$f8]                                     ; $64b0: $f0 $f8
	ld e, b                                          ; $64b2: $58
	ld a, b                                          ; $64b3: $78
	ld a, e                                          ; $64b4: $7b
	rst SubAFromDE                                          ; $64b5: $df
	ccf                                              ; $64b6: $3f

jr_068_64b7:
	ldh [rDIV], a                                    ; $64b7: $e0 $04
	inc bc                                           ; $64b9: $03
	db $ed                                           ; $64ba: $ed
	reti                                             ; $64bb: $d9


	ld bc, $029b                                     ; $64bc: $01 $9b $02
	inc bc                                           ; $64bf: $03
	dec b                                            ; $64c0: $05
	ld b, $6f                                        ; $64c1: $06 $6f
	ldh a, [c]                                       ; $64c3: $f2
	ld a, a                                          ; $64c4: $7f
	or $80                                           ; $64c5: $f6 $80
	inc bc                                           ; $64c7: $03
	ld [bc], a                                       ; $64c8: $02
	dec b                                            ; $64c9: $05
	ld b, $07                                        ; $64ca: $06 $07
	inc b                                            ; $64cc: $04
	ld a, [bc]                                       ; $64cd: $0a
	dec c                                            ; $64ce: $0d
	dec c                                            ; $64cf: $0d
	dec bc                                           ; $64d0: $0b
	ld c, $0b                                        ; $64d1: $0e $0b
	rla                                              ; $64d3: $17
	ld e, $1d                                        ; $64d4: $1e $1d
	ld e, $1b                                        ; $64d6: $1e $1b
	inc e                                            ; $64d8: $1c
	inc de                                           ; $64d9: $13
	inc e                                            ; $64da: $1c
	ld [hl], $39                                     ; $64db: $36 $39
	inc [hl]                                         ; $64dd: $34
	dec sp                                           ; $64de: $3b
	dec l                                            ; $64df: $2d
	ld [hl-], a                                      ; $64e0: $32
	add hl, hl                                       ; $64e1: $29
	ld [hl], $2b                                     ; $64e2: $36 $2b
	inc [hl]                                         ; $64e4: $34
	ld [hl+], a                                      ; $64e5: $22
	sub a                                            ; $64e6: $97
	dec a                                            ; $64e7: $3d
	ld b, a                                          ; $64e8: $47
	ld a, c                                          ; $64e9: $79
	ld d, l                                          ; $64ea: $55
	ld a, e                                          ; $64eb: $7b
	ld e, l                                          ; $64ec: $5d
	ld [hl], e                                       ; $64ed: $73
	ld l, [hl]                                       ; $64ee: $6e
	ld [hl], a                                       ; $64ef: $77
	cp $9a                                           ; $64f0: $fe $9a
	ld [hl], a                                       ; $64f2: $77
	ld c, h                                          ; $64f3: $4c
	ld [hl], a                                       ; $64f4: $77
	ld e, l                                          ; $64f5: $5d
	ld h, [hl]                                       ; $64f6: $66
	ld [hl], a                                       ; $64f7: $77
	cp $80                                           ; $64f8: $fe $80

jr_068_64fa:
	ld e, a                                          ; $64fa: $5f
	ld h, h                                          ; $64fb: $64
	ld a, d                                          ; $64fc: $7a
	ld l, l                                          ; $64fd: $6d
	ld l, d                                          ; $64fe: $6a
	ld a, l                                          ; $64ff: $7d
	ld l, $39                                        ; $6500: $2e $39
	ld l, $39                                        ; $6502: $2e $39
	inc l                                            ; $6504: $2c
	dec sp                                           ; $6505: $3b
	dec h                                            ; $6506: $25
	ld a, [hl-]                                      ; $6507: $3a
	dec e                                            ; $6508: $1d
	ld [de], a                                       ; $6509: $12
	dec e                                            ; $650a: $1d

jr_068_650b:
	ld [de], a                                       ; $650b: $12
	rla                                              ; $650c: $17
	ld a, [de]                                       ; $650d: $1a
	rla                                              ; $650e: $17
	ld a, [de]                                       ; $650f: $1a
	inc de                                           ; $6510: $13
	ld e, $0b                                        ; $6511: $1e $0b
	ld c, $08                                        ; $6513: $0e $08
	rrca                                             ; $6515: $0f
	add hl, bc                                       ; $6516: $09
	rrca                                             ; $6517: $0f
	dec b                                            ; $6518: $05
	sbc l                                            ; $6519: $9d
	rlca                                             ; $651a: $07
	dec b                                            ; $651b: $05
	sbc $07                                          ; $651c: $de $07
	sub e                                            ; $651e: $93

jr_068_651f:
	dec bc                                           ; $651f: $0b
	rrca                                             ; $6520: $0f
	inc de                                           ; $6521: $13
	rra                                              ; $6522: $1f
	dec d                                            ; $6523: $15
	dec de                                           ; $6524: $1b
	dec l                                            ; $6525: $2d
	inc sp                                           ; $6526: $33
	dec a                                            ; $6527: $3d
	inc hl                                           ; $6528: $23
	ld e, h                                          ; $6529: $5c
	ld h, e                                          ; $652a: $63
	ld [hl], a                                       ; $652b: $77
	cp $8f                                           ; $652c: $fe $8f
	adc h                                            ; $652e: $8c
	di                                               ; $652f: $f3
	adc $b1                                          ; $6530: $ce $b1
	ld l, [hl]                                       ; $6532: $6e
	sub c                                            ; $6533: $91
	ld [hl], a                                       ; $6534: $77
	adc b                                            ; $6535: $88
	or a                                             ; $6536: $b7
	ret z                                            ; $6537: $c8

	ld e, e                                          ; $6538: $5b
	db $e4                                           ; $6539: $e4
	xor e                                            ; $653a: $ab
	ld [hl], h                                       ; $653b: $74
	sub l                                            ; $653c: $95
	ld a, d                                          ; $653d: $7a
	ld e, a                                          ; $653e: $5f
	ld l, [hl]                                       ; $653f: $6e
	rst $38                                          ; $6540: $ff
	rst SubAFromDE                                          ; $6541: $df
	rrca                                             ; $6542: $0f
	ld a, a                                          ; $6543: $7f
	ld a, b                                          ; $6544: $78
	rst SubAFromDE                                          ; $6545: $df
	ld bc, $07df                                     ; $6546: $01 $df $07
	rst SubAFromDE                                          ; $6549: $df
	ld [$03df], sp                                   ; $654a: $08 $df $03
	add b                                            ; $654d: $80
	dec c                                            ; $654e: $0d
	ld c, $14                                        ; $654f: $0e $14
	rra                                              ; $6551: $1f
	daa                                              ; $6552: $27
	ccf                                              ; $6553: $3f
	ld e, e                                          ; $6554: $5b
	ld a, h                                          ; $6555: $7c
	rst AddAOntoHL                                          ; $6556: $ef
	ldh a, [$bc]                                     ; $6557: $f0 $bc
	jp $8f70                                         ; $6559: $c3 $70 $8f


	rst JumpTable                                          ; $655c: $c7
	ccf                                              ; $655d: $3f
	adc [hl]                                         ; $655e: $8e
	ld a, h                                          ; $655f: $7c
	add hl, sp                                       ; $6560: $39
	ldh a, [rIE]                                     ; $6561: $f0 $ff
	rst $38                                          ; $6563: $ff
	db $10                                           ; $6564: $10
	rst AddAOntoHL                                          ; $6565: $ef
	ld h, c                                          ; $6566: $61
	sbc [hl]                                         ; $6567: $9e
	jp z, $d534                                      ; $6568: $ca $34 $d5

	jr z, jr_068_651f                                ; $656b: $28 $b2

	sub [hl]                                         ; $656d: $96
	ld c, c                                          ; $656e: $49
	inc l                                            ; $656f: $2c
	db $d3                                           ; $6570: $d3
	ld c, c                                          ; $6571: $49
	or a                                             ; $6572: $b7
	jp nc, $a42f                                     ; $6573: $d2 $2f $a4

	ld a, a                                          ; $6576: $7f
	ldh [$c1], a                                     ; $6577: $e0 $c1
	add d                                            ; $6579: $82
	ld b, e                                          ; $657a: $43
	rst $38                                          ; $657b: $ff
	ld l, b                                          ; $657c: $68
	rst JumpTable                                          ; $657d: $c7
	ld b, [hl]                                       ; $657e: $46
	pop bc                                           ; $657f: $c1
	ld e, e                                          ; $6580: $5b
	rst JumpTable                                          ; $6581: $c7
	ld a, a                                          ; $6582: $7f
	rst GetHLinHL                                          ; $6583: $cf
	rst AddAOntoHL                                          ; $6584: $ef
	rst SubAFromDE                                          ; $6585: $df
	call c, $78ff                                    ; $6586: $dc $ff $78
	rst $38                                          ; $6589: $ff
	ld [hl], b                                       ; $658a: $70
	rst $38                                          ; $658b: $ff
	or b                                             ; $658c: $b0
	ld a, a                                          ; $658d: $7f
	cp b                                             ; $658e: $b8
	ld a, a                                          ; $658f: $7f
	ld hl, sp+$3f                                    ; $6590: $f8 $3f
	db $fc                                           ; $6592: $fc
	ccf                                              ; $6593: $3f
	ld e, h                                          ; $6594: $5c
	ccf                                              ; $6595: $3f
	ld e, [hl]                                       ; $6596: $5e
	ld a, e                                          ; $6597: $7b
	cp $df                                           ; $6598: $fe $df
	ld bc, $e97e                                     ; $659a: $01 $7e $e9
	add b                                            ; $659d: $80
	add hl, bc                                       ; $659e: $09
	ld c, $12                                        ; $659f: $0e $12
	dec e                                            ; $65a1: $1d
	ld h, $39                                        ; $65a2: $26 $39
	or l                                             ; $65a4: $b5
	xor d                                            ; $65a5: $aa
	rst SubAFromBC                                          ; $65a6: $e7
	ld a, [$fff2]                                    ; $65a7: $fa $f2 $ff
	ld a, d                                          ; $65aa: $7a
	cp a                                             ; $65ab: $bf
	cp a                                             ; $65ac: $bf
	rst GetHLinHL                                          ; $65ad: $cf
	rst SubAFromDE                                          ; $65ae: $df
	db $e3                                           ; $65af: $e3
	rst AddAOntoHL                                          ; $65b0: $ef
	di                                               ; $65b1: $f3
	or a                                             ; $65b2: $b7
	ld sp, hl                                        ; $65b3: $f9
	sbc e                                            ; $65b4: $9b
	db $fd                                           ; $65b5: $fd
	jp z, $b4fd                                      ; $65b6: $ca $fd $b4

	ld a, a                                          ; $65b9: $7f
	db $ec                                           ; $65ba: $ec
	rra                                              ; $65bb: $1f
	inc b                                            ; $65bc: $04
	add d                                            ; $65bd: $82
	rst $38                                          ; $65be: $ff
	ldh [c], a                                       ; $65bf: $e2
	rst $38                                          ; $65c0: $ff
	cp d                                             ; $65c1: $ba
	rra                                              ; $65c2: $1f
	halt                                             ; $65c3: $76
	rrca                                             ; $65c4: $0f
	jp $f93f                                         ; $65c5: $c3 $3f $f9


	rst $38                                          ; $65c8: $ff
	rst FarCall                                          ; $65c9: $f7
	rrca                                             ; $65ca: $0f
	ld h, e                                          ; $65cb: $63
	rra                                              ; $65cc: $1f
	adc l                                            ; $65cd: $8d
	ld a, a                                          ; $65ce: $7f
	dec sp                                           ; $65cf: $3b
	rst $38                                          ; $65d0: $ff

jr_068_65d1:
	ld l, [hl]                                       ; $65d1: $6e
	ei                                               ; $65d2: $fb
	sub [hl]                                         ; $65d3: $96
	ldh a, [c]                                       ; $65d4: $f2
	ld a, [de]                                       ; $65d5: $1a
	or $2e                                           ; $65d6: $f6 $2e
	and $76                                          ; $65d8: $e6 $76
	rst AddAOntoHL                                          ; $65da: $ef
	ldh [$c1], a                                     ; $65db: $e0 $c1
	add d                                            ; $65dd: $82
	call nc, $e9f8                                   ; $65de: $d4 $f8 $e9
	sbc $4e                                          ; $65e1: $de $4e
	rst JumpTable                                          ; $65e3: $c7
	jp $e0c1                                         ; $65e4: $c3 $c1 $e0


	ret nz                                           ; $65e7: $c0

	ret nz                                           ; $65e8: $c0

	ldh [rBCPS], a                                   ; $65e9: $e0 $68
	ldh a, [$32]                                     ; $65eb: $f0 $32
	db $fc                                           ; $65ed: $fc
	inc a                                            ; $65ee: $3c
	rst $38                                          ; $65ef: $ff
	rla                                              ; $65f0: $17
	ld hl, sp+$1b                                    ; $65f1: $f8 $1b
	ldh a, [$29]                                     ; $65f3: $f0 $29
	ldh a, [rAUD4LEN]                                ; $65f5: $f0 $20
	ldh a, [$30]                                     ; $65f7: $f0 $30
	ldh [$50], a                                     ; $65f9: $e0 $50
	ld a, e                                          ; $65fb: $7b
	cp $df                                           ; $65fc: $fe $df
	rst $38                                          ; $65fe: $ff
	add b                                            ; $65ff: $80
	jr nc, jr_068_65d1                               ; $6600: $30 $cf

	ld l, h                                          ; $6602: $6c
	sub e                                            ; $6603: $93
	db $d3                                           ; $6604: $d3
	cpl                                              ; $6605: $2f
	xor l                                            ; $6606: $ad
	ld e, [hl]                                       ; $6607: $5e
	jr jr_068_6669                                   ; $6608: $18 $5f

	ld d, d                                          ; $660a: $52
	ld e, a                                          ; $660b: $5f
	ld a, [$4d5f]                                    ; $660c: $fa $5f $4d
	rst $38                                          ; $660f: $ff
	ccf                                              ; $6610: $3f
	cp $e6                                           ; $6611: $fe $e6
	ld sp, hl                                        ; $6613: $f9
	rst SubAFromHL                                          ; $6614: $d7
	rst AddAOntoHL                                          ; $6615: $ef
	ld a, [hl]                                       ; $6616: $7e
	rst $38                                          ; $6617: $ff
	inc de                                           ; $6618: $13
	db $fc                                           ; $6619: $fc
	xor [hl]                                         ; $661a: $ae
	pop af                                           ; $661b: $f1
	rst SubAFromDE                                          ; $661c: $df
	rst SubAFromBC                                          ; $661d: $e7
	sbc b                                            ; $661e: $98
	sub l                                            ; $661f: $95
	rst $38                                          ; $6620: $ff
	rst SubAFromBC                                          ; $6621: $e7
	rst $38                                          ; $6622: $ff
	sbc b                                            ; $6623: $98
	rst $38                                          ; $6624: $ff
	ldh [$f8], a                                     ; $6625: $e0 $f8
	pop bc                                           ; $6627: $c1
	di                                               ; $6628: $f3
	cp [hl]                                          ; $6629: $be
	sbc $ff                                          ; $662a: $de $ff
	ld a, [hl]                                       ; $662c: $7e
	cp l                                             ; $662d: $bd
	adc a                                            ; $662e: $8f
	ld c, h                                          ; $662f: $4c
	rst $38                                          ; $6630: $ff
	ld h, d                                          ; $6631: $62
	ei                                               ; $6632: $fb
	ld [hl], c                                       ; $6633: $71
	db $dd                                           ; $6634: $dd
	ld e, b                                          ; $6635: $58
	adc $4c                                          ; $6636: $ce $4c
	add $4c                                          ; $6638: $c6 $4c
	rst JumpTable                                          ; $663a: $c7
	add $83                                          ; $663b: $c6 $83
	jp nz, $e083                                     ; $663d: $c2 $83 $e0

	cp a                                             ; $6640: $bf
	sub l                                            ; $6641: $95
	inc bc                                           ; $6642: $03
	nop                                              ; $6643: $00
	ld a, h                                          ; $6644: $7c
	add e                                            ; $6645: $83
	ldh [$fe], a                                     ; $6646: $e0 $fe
	ld bc, $1c00                                     ; $6648: $01 $00 $1c
	inc bc                                           ; $664b: $03
	db $fd                                           ; $664c: $fd
	sub [hl]                                         ; $664d: $96
	jp $f800                                         ; $664e: $c3 $00 $f8


	rlca                                             ; $6651: $07
	rst $38                                          ; $6652: $ff
	nop                                              ; $6653: $00
	db $fc                                           ; $6654: $fc
	nop                                              ; $6655: $00
	ldh [$f8], a                                     ; $6656: $e0 $f8
	rst SubAFromDE                                          ; $6658: $df
	adc b                                            ; $6659: $88
	add b                                            ; $665a: $80
	ld b, h                                          ; $665b: $44
	call nz, $e4e4                                   ; $665c: $c4 $e4 $e4
	inc h                                            ; $665f: $24
	db $e4                                           ; $6660: $e4
	sbc b                                            ; $6661: $98
	ld a, b                                          ; $6662: $78
	db $fc                                           ; $6663: $fc
	ld e, h                                          ; $6664: $5c
	ld [hl], d                                       ; $6665: $72
	sbc $d9                                          ; $6666: $de $d9
	or a                                             ; $6668: $b7

jr_068_6669:
	sbc l                                            ; $6669: $9d
	ld [hl], e                                       ; $666a: $73
	ld l, c                                          ; $666b: $69
	rst FarCall                                          ; $666c: $f7
	ld a, [$e6fe]                                    ; $666d: $fa $fe $e6
	ld e, $f9                                        ; $6670: $1e $f9
	rlca                                             ; $6672: $07
	ldh a, [rIE]                                     ; $6673: $f0 $ff
	inc bc                                           ; $6675: $03
	rst $38                                          ; $6676: $ff
	ld a, h                                          ; $6677: $7c
	add e                                            ; $6678: $83
	rrca                                             ; $6679: $0f
	sbc c                                            ; $667a: $99
	ldh a, [$e0]                                     ; $667b: $f0 $e0
	rst $38                                          ; $667d: $ff
	ld e, $7f                                        ; $667e: $1e $7f
	ldh [$7a], a                                     ; $6680: $e0 $7a
	add [hl]                                         ; $6682: $86
	adc e                                            ; $6683: $8b
	ld l, b                                          ; $6684: $68
	sbc a                                            ; $6685: $9f
	rst SubAFromDE                                          ; $6686: $df
	db $e4                                           ; $6687: $e4
	sbc l                                            ; $6688: $9d
	ld [hl], d                                       ; $6689: $72
	ld h, [hl]                                       ; $668a: $66
	sbc c                                            ; $668b: $99
	inc sp                                           ; $668c: $33
	call z, $e699                                    ; $668d: $cc $99 $e6
	call z, $e6e3                                    ; $6690: $cc $e3 $e6
	pop af                                           ; $6693: $f1
	ldh a, [c]                                       ; $6694: $f2
	cp c                                             ; $6695: $b9
	ld hl, sp-$45                                    ; $6696: $f8 $bb
	ldh [$c1], a                                     ; $6698: $e0 $c1
	add b                                            ; $669a: $80
	ld b, h                                          ; $669b: $44
	inc sp                                           ; $669c: $33
	ld [$10e7], sp                                   ; $669d: $08 $e7 $10
	adc a                                            ; $66a0: $8f
	ld b, [hl]                                       ; $66a1: $46
	add hl, sp                                       ; $66a2: $39
	rra                                              ; $66a3: $1f
	ldh [hDisp1_LCDC], a                                     ; $66a4: $e0 $8f
	nop                                              ; $66a6: $00
	inc a                                            ; $66a7: $3c
	inc bc                                           ; $66a8: $03
	di                                               ; $66a9: $f3
	rrca                                             ; $66aa: $0f
	sub l                                            ; $66ab: $95
	ld a, a                                          ; $66ac: $7f
	jr nc, @+$01                                     ; $66ad: $30 $ff

	ldh [$3f], a                                     ; $66af: $e0 $3f
	ld h, b                                          ; $66b1: $60
	ccf                                              ; $66b2: $3f
	ld h, c                                          ; $66b3: $61
	ccf                                              ; $66b4: $3f
	ld c, c                                          ; $66b5: $49
	ld [hl], a                                       ; $66b6: $77
	ld d, l                                          ; $66b7: $55
	ld h, e                                          ; $66b8: $63
	jp nz, $639e                                     ; $66b9: $c2 $9e $63

	rst SubAFromBC                                          ; $66bc: $e7
	rst SubAFromDE                                          ; $66bd: $df
	add b                                            ; $66be: $80
	add b                                            ; $66bf: $80
	ld h, b                                          ; $66c0: $60
	ldh [rAUD1SWEEP], a                              ; $66c1: $e0 $10
	ldh a, [rBCPS]                                   ; $66c3: $f0 $68
	ld hl, sp+$14                                    ; $66c5: $f8 $14
	db $fc                                           ; $66c7: $fc
	jp z, $663e                                      ; $66c8: $ca $3e $66

	sbc [hl]                                         ; $66cb: $9e
	inc hl                                           ; $66cc: $23
	rst SubAFromDE                                          ; $66cd: $df
	ld de, $01ef                                     ; $66ce: $11 $ef $01
	rst $38                                          ; $66d1: $ff
	nop                                              ; $66d2: $00
	rst $38                                          ; $66d3: $ff
	ret nc                                           ; $66d4: $d0

	ccf                                              ; $66d5: $3f
	add sp, $1f                                      ; $66d6: $e8 $1f
	ld [hl], h                                       ; $66d8: $74
	adc a                                            ; $66d9: $8f
	inc [hl]                                         ; $66da: $34
	rst GetHLinHL                                          ; $66db: $cf
	sbc d                                            ; $66dc: $9a
	ld h, a                                          ; $66dd: $67
	ld c, [hl]                                       ; $66de: $4e
	sbc d                                            ; $66df: $9a
	or e                                             ; $66e0: $b3
	ld b, l                                          ; $66e1: $45
	cp e                                             ; $66e2: $bb
	inc hl                                           ; $66e3: $23
	db $dd                                           ; $66e4: $dd
	ld [hl], a                                       ; $66e5: $77
	db $ec                                           ; $66e6: $ec
	sbc [hl]                                         ; $66e7: $9e
	ld [$fe7b], sp                                   ; $66e8: $08 $7b $fe
	sbc [hl]                                         ; $66eb: $9e
	ld b, h                                          ; $66ec: $44
	ld a, e                                          ; $66ed: $7b
	cp $7d                                           ; $66ee: $fe $7d
	or $9e                                           ; $66f0: $f6 $9e
	and d                                            ; $66f2: $a2
	ld a, e                                          ; $66f3: $7b
	cp $80                                           ; $66f4: $fe $80
	sub d                                            ; $66f6: $92
	rst $38                                          ; $66f7: $ff
	ld d, d                                          ; $66f8: $52
	rst $38                                          ; $66f9: $ff
	pop de                                           ; $66fa: $d1
	ld e, a                                          ; $66fb: $5f
	ret                                              ; $66fc: $c9


	ld e, a                                          ; $66fd: $5f
	ret                                              ; $66fe: $c9


	ld c, a                                          ; $66ff: $4f
	ret                                              ; $6700: $c9


	ld l, a                                          ; $6701: $6f
	pop bc                                           ; $6702: $c1
	rst AddAOntoHL                                          ; $6703: $ef
	call nc, $ddef                                   ; $6704: $d4 $ef $dd
	and $fd                                          ; $6707: $e6 $fd
	and $f9                                          ; $6709: $e6 $f9
	and $fd                                          ; $670b: $e6 $fd
	ldh [c], a                                       ; $670d: $e2
	rst $38                                          ; $670e: $ff
	ldh [c], a                                       ; $670f: $e2
	cp $e3                                           ; $6710: $fe $e3
	ld a, [$7ae7]                                    ; $6712: $fa $e7 $7a
	add b                                            ; $6715: $80
	rst SubAFromBC                                          ; $6716: $e7
	ld [hl], d                                       ; $6717: $72
	rst AddAOntoHL                                          ; $6718: $ef
	push af                                          ; $6719: $f5
	ld l, a                                          ; $671a: $6f
	push af                                          ; $671b: $f5

jr_068_671c:
	ld l, a                                          ; $671c: $6f
	push hl                                          ; $671d: $e5
	ld a, a                                          ; $671e: $7f
	ret                                              ; $671f: $c9


	ld a, a                                          ; $6720: $7f
	ld c, e                                          ; $6721: $4b
	rst $38                                          ; $6722: $ff
	ld c, e                                          ; $6723: $4b
	rst $38                                          ; $6724: $ff
	rst GetHLinHL                                          ; $6725: $cf
	rst $38                                          ; $6726: $ff
	adc $ff                                          ; $6727: $ce $ff
	db $dd                                           ; $6729: $dd
	cp $9b                                           ; $672a: $fe $9b
	db $fc                                           ; $672c: $fc
	sbc d                                            ; $672d: $9a
	db $fc                                           ; $672e: $fc
	or h                                             ; $672f: $b4
	ld hl, sp-$48                                    ; $6730: $f8 $b8

jr_068_6732:
	ldh a, [$e1]                                     ; $6732: $f0 $e1
	ldh a, [hDisp1_LCDC]                                     ; $6734: $f0 $8f
	di                                               ; $6736: $f3
	ldh [$c3], a                                     ; $6737: $e0 $c3
	ldh [$a7], a                                     ; $6739: $e0 $a7
	ret nz                                           ; $673b: $c0

	rst JumpTable                                          ; $673c: $c7
	add b                                            ; $673d: $80
	ld c, a                                          ; $673e: $4f
	add b                                            ; $673f: $80
	adc a                                            ; $6740: $8f
	ld bc, $019f                                     ; $6741: $01 $9f $01
	ld e, $02                                        ; $6744: $1e $02
	ld c, a                                          ; $6746: $4f
	ld l, [hl]                                       ; $6747: $6e
	db $db                                           ; $6748: $db
	add b                                            ; $6749: $80
	sbc l                                            ; $674a: $9d
	ld b, b                                          ; $674b: $40
	ret nz                                           ; $674c: $c0

	ld l, a                                          ; $674d: $6f
	cp $9d                                           ; $674e: $fe $9d
	jr nz, jr_068_6732                               ; $6750: $20 $e0

	ld [hl], a                                       ; $6752: $77
	cp $9e                                           ; $6753: $fe $9e
	and b                                            ; $6755: $a0
	ld [hl], e                                       ; $6756: $73
	cp $7f                                           ; $6757: $fe $7f
	ld d, h                                          ; $6759: $54
	ld a, a                                          ; $675a: $7f
	cp $77                                           ; $675b: $fe $77
	ei                                               ; $675d: $fb
	sbc [hl]                                         ; $675e: $9e
	and b                                            ; $675f: $a0
	ld a, e                                          ; $6760: $7b
	cp $77                                           ; $6761: $fe $77
	jp hl                                            ; $6763: $e9


	ld a, a                                          ; $6764: $7f
	ld sp, hl                                        ; $6765: $f9
	ld l, a                                          ; $6766: $6f
	ldh [c], a                                       ; $6767: $e2
	rst SubAFromHL                                          ; $6768: $d7
	ret nz                                           ; $6769: $c0

	db $db                                           ; $676a: $db
	add b                                            ; $676b: $80
	rst SubAFromDE                                          ; $676c: $df
	ret nz                                           ; $676d: $c0

	rst SubAFromDE                                          ; $676e: $df
	ldh a, [hDisp0_WY]                                     ; $676f: $f0 $88
	adc b                                            ; $6771: $88
	ld hl, sp-$3c                                    ; $6772: $f8 $c4
	db $fc                                           ; $6774: $fc
	ld h, d                                          ; $6775: $62
	cp $6a                                           ; $6776: $fe $6a
	or $cb                                           ; $6778: $f6 $cb
	rst FarCall                                          ; $677a: $f7
	sbc a                                            ; $677b: $9f
	rst SubAFromBC                                          ; $677c: $e7
	ld c, $c7                                        ; $677d: $0e $c7
	inc e                                            ; $677f: $1c
	adc a                                            ; $6780: $8f
	db $10                                           ; $6781: $10
	sbc a                                            ; $6782: $9f
	nop                                              ; $6783: $00
	ccf                                              ; $6784: $3f
	ld bc, $027f                                     ; $6785: $01 $7f $02
	ld a, e                                          ; $6788: $7b
	ld b, b                                          ; $6789: $40
	ld a, a                                          ; $678a: $7f
	jr c, jr_068_671c                                ; $678b: $38 $8f

	db $10                                           ; $678d: $10
	cp $20                                           ; $678e: $fe $20
	ld hl, sp+$40                                    ; $6790: $f8 $40
	ldh a, [rLCDC]                                   ; $6792: $f0 $40
	ldh [$80], a                                     ; $6794: $e0 $80
	ret nz                                           ; $6796: $c0

	ld bc, $0381                                     ; $6797: $01 $81 $03
	inc bc                                           ; $679a: $03
	ld b, $07                                        ; $679b: $06 $07
	ld [hl], a                                       ; $679d: $77
	sub d                                            ; $679e: $92
	ld a, a                                          ; $679f: $7f
	cp d                                             ; $67a0: $ba
	sbc [hl]                                         ; $67a1: $9e
	ld [hl], b                                       ; $67a2: $70
	ld a, e                                          ; $67a3: $7b
	call z, $1489                                    ; $67a4: $cc $89 $14
	db $ec                                           ; $67a7: $ec
	ld [hl], h                                       ; $67a8: $74
	adc h                                            ; $67a9: $8c

jr_068_67aa:
	ld [$f21e], a                                    ; $67aa: $ea $1e $f2
	ld e, $fe                                        ; $67ad: $1e $fe
	ld [bc], a                                       ; $67af: $02
	cp $02                                           ; $67b0: $fe $02
	call $ed73                                       ; $67b2: $cd $73 $ed
	di                                               ; $67b5: $f3
	jp hl                                            ; $67b6: $e9


	rst FarCall                                          ; $67b7: $f7
	ld e, c                                          ; $67b8: $59
	rst SubAFromBC                                          ; $67b9: $e7
	or c                                             ; $67ba: $b1
	rst GetHLinHL                                          ; $67bb: $cf
	ld e, $00                                        ; $67bc: $1e $00
	sbc [hl]                                         ; $67be: $9e
	call z, $99de                                    ; $67bf: $cc $de $99
	ld a, a                                          ; $67c2: $7f
	db $fc                                           ; $67c3: $fc
	sbc e                                            ; $67c4: $9b
	ld de, $9999                                     ; $67c5: $11 $99 $99
	ld d, l                                          ; $67c8: $55
	ld [hl], e                                       ; $67c9: $73
	ei                                               ; $67ca: $fb
	sbc l                                            ; $67cb: $9d
	ld de, $6700                                     ; $67cc: $11 $00 $67
	or $df                                           ; $67cf: $f6 $df
	sbc c                                            ; $67d1: $99
	ld a, a                                          ; $67d2: $7f
	push af                                          ; $67d3: $f5
	ld a, e                                          ; $67d4: $7b
	ei                                               ; $67d5: $fb
	sbc h                                            ; $67d6: $9c
	call z, $cc44                                    ; $67d7: $cc $44 $cc
	add c                                            ; $67da: $81
	ld bc, $4880                                     ; $67db: $01 $80 $48
	rst $38                                          ; $67de: $ff

jr_068_67df:
	ld c, c                                          ; $67df: $49
	rst $38                                          ; $67e0: $ff
	sub e                                            ; $67e1: $93
	rst $38                                          ; $67e2: $ff
	sub e                                            ; $67e3: $93
	cp $27                                           ; $67e4: $fe $27
	cp $27                                           ; $67e6: $fe $27
	db $fc                                           ; $67e8: $fc

jr_068_67e9:
	cpl                                              ; $67e9: $2f
	db $fc                                           ; $67ea: $fc
	dec hl                                           ; $67eb: $2b
	db $fc                                           ; $67ec: $fc
	ld c, l                                          ; $67ed: $4d
	ei                                               ; $67ee: $fb
	ld e, a                                          ; $67ef: $5f
	ld hl, sp+$57                                    ; $67f0: $f8 $57
	ld hl, sp-$25                                    ; $67f2: $f8 $db

jr_068_67f4:
	db $fc                                           ; $67f4: $fc
	sbc $fd                                          ; $67f5: $de $fd
	rst SubAFromDE                                          ; $67f7: $df
	rst $38                                          ; $67f8: $ff
	rst FarCall                                          ; $67f9: $f7
	cp $ab                                           ; $67fa: $fe $ab
	sub h                                            ; $67fc: $94
	or $ab                                           ; $67fd: $f6 $ab
	rst FarCall                                          ; $67ff: $f7
	cp l                                             ; $6800: $bd
	di                                               ; $6801: $f3
	xor a                                            ; $6802: $af
	add sp, -$19                                     ; $6803: $e8 $e7
	rst SubAFromBC                                          ; $6805: $e7
	ldh [$e0], a                                     ; $6806: $e0 $e0
	db $dd                                           ; $6808: $dd
	pop hl                                           ; $6809: $e1
	db $db                                           ; $680a: $db
	di                                               ; $680b: $f3
	rst SubAFromDE                                          ; $680c: $df
	ldh a, [c]                                       ; $680d: $f2
	add b                                            ; $680e: $80
	ld d, d                                          ; $680f: $52
	jp nc, $d353                                     ; $6810: $d2 $53 $d3

	ld c, c                                          ; $6813: $49
	ret                                              ; $6814: $c9


	ld c, b                                          ; $6815: $48
	ret z                                            ; $6816: $c8

	ld a, [hl]                                       ; $6817: $7e
	cp $e6                                           ; $6818: $fe $e6
	cp a                                             ; $681a: $bf
	db $ed                                           ; $681b: $ed
	add hl, sp                                       ; $681c: $39
	db $dd                                           ; $681d: $dd
	add hl, de                                       ; $681e: $19
	reti                                             ; $681f: $d9


	jr jr_068_67aa                                   ; $6820: $18 $88

	ld [$0080], sp                                   ; $6822: $08 $80 $00
	ld b, b                                          ; $6825: $40
	jr c, @+$3e                                      ; $6826: $38 $3c

	ld hl, sp-$02                                    ; $6828: $f8 $fe
	ret nz                                           ; $682a: $c0

	rst SubAFromBC                                          ; $682b: $e7
	jr jr_068_67e9                                   ; $682c: $18 $bb

	add b                                            ; $682e: $80
	ld a, h                                          ; $682f: $7c
	ld h, l                                          ; $6830: $65
	and $d4                                          ; $6831: $e6 $d4
	cp $32                                           ; $6833: $fe $32
	db $f4                                           ; $6835: $f4
	jr z, jr_068_67f4                                ; $6836: $28 $bc

	xor $10                                          ; $6838: $ee $10
	ld d, a                                          ; $683a: $57
	xor b                                            ; $683b: $a8
	ld l, e                                          ; $683c: $6b
	sub h                                            ; $683d: $94
	cp a                                             ; $683e: $bf
	ret nz                                           ; $683f: $c0

	rst $38                                          ; $6840: $ff
	ret nz                                           ; $6841: $c0

	rst SubAFromDE                                          ; $6842: $df
	ldh [rIE], a                                     ; $6843: $e0 $ff
	ldh [$af], a                                     ; $6845: $e0 $af
	or b                                             ; $6847: $b0
	sub a                                            ; $6848: $97
	sbc b                                            ; $6849: $98
	dec bc                                           ; $684a: $0b
	inc c                                            ; $684b: $0c
	ld b, $07                                        ; $684c: $06 $07
	sub c                                            ; $684e: $91
	rrca                                             ; $684f: $0f
	dec bc                                           ; $6850: $0b
	ld e, $13                                        ; $6851: $1e $13
	rra                                              ; $6853: $1f
	ld de, $203f                                     ; $6854: $11 $3f $20
	cp a                                             ; $6857: $bf
	and b                                            ; $6858: $a0
	ccf                                              ; $6859: $3f
	jr nc, jr_068_67df                               ; $685a: $30 $83

	add e                                            ; $685c: $83
	db $dd                                           ; $685d: $dd
	add c                                            ; $685e: $81
	db $dd                                           ; $685f: $dd
	add b                                            ; $6860: $80
	sub c                                            ; $6861: $91
	inc bc                                           ; $6862: $03
	ld bc, $0702                                     ; $6863: $01 $02 $07
	inc b                                            ; $6866: $04
	inc bc                                           ; $6867: $03
	rrca                                             ; $6868: $0f
	nop                                              ; $6869: $00
	ld c, $01                                        ; $686a: $0e $01
	rlca                                             ; $686c: $07
	ld bc, $0100                                     ; $686d: $01 $00 $01
	db $fd                                           ; $6870: $fd
	add b                                            ; $6871: $80
	stop                                             ; $6872: $10 $00
	jr jr_068_6876                                   ; $6874: $18 $00

jr_068_6876:
	cp b                                             ; $6876: $b8
	dec a                                            ; $6877: $3d
	inc l                                            ; $6878: $2c
	dec a                                            ; $6879: $3d
	inc e                                            ; $687a: $1c
	rla                                              ; $687b: $17
	ld e, $13                                        ; $687c: $1e $13
	ld c, $03                                        ; $687e: $0e $03
	push hl                                          ; $6880: $e5
	ei                                               ; $6881: $fb

jr_068_6882:
	rra                                              ; $6882: $1f
	db $fd                                           ; $6883: $fd
	cp $01                                           ; $6884: $fe $01
	ld [hl], a                                       ; $6886: $77
	ld hl, sp-$33                                    ; $6887: $f8 $cd
	adc $96                                          ; $6889: $ce $96
	rst SubAFromDE                                          ; $688b: $df
	and a                                            ; $688c: $a7
	db $fc                                           ; $688d: $fc
	jp $ffe8                                         ; $688e: $c3 $e8 $ff


	sub d                                            ; $6891: $92
	ld [hl], b                                       ; $6892: $70
	dec hl                                           ; $6893: $2b
	nop                                              ; $6894: $00
	ld d, a                                          ; $6895: $57
	nop                                              ; $6896: $00
	rrca                                             ; $6897: $0f
	nop                                              ; $6898: $00
	rrca                                             ; $6899: $0f
	ld bc, $010f                                     ; $689a: $01 $0f $01
	rra                                              ; $689d: $1f
	inc bc                                           ; $689e: $03
	ld a, e                                          ; $689f: $7b
	cp $8e                                           ; $68a0: $fe $8e
	rlca                                             ; $68a2: $07
	ccf                                              ; $68a3: $3f
	rrca                                             ; $68a4: $0f
	inc a                                            ; $68a5: $3c
	rra                                              ; $68a6: $1f
	ld a, b                                          ; $68a7: $78
	dec a                                            ; $68a8: $3d
	db $e4                                           ; $68a9: $e4
	ld a, [hl]                                       ; $68aa: $7e
	add $fe                                          ; $68ab: $c6 $fe
	inc l                                            ; $68ad: $2c
	call c, $38d8                                    ; $68ae: $dc $d8 $38
	ldh [$e0], a                                     ; $68b1: $e0 $e0
	cp $9e                                           ; $68b3: $fe $9e
	ld bc, $2027                                     ; $68b5: $01 $27 $20
	sbc l                                            ; $68b8: $9d
	rst SubAFromDE                                          ; $68b9: $df
	db $fc                                           ; $68ba: $fc
	ld l, a                                          ; $68bb: $6f
	jr nz, jr_068_68fd                               ; $68bc: $20 $3f

	ld b, b                                          ; $68be: $40
	sub [hl]                                         ; $68bf: $96
	rst $38                                          ; $68c0: $ff
	nop                                              ; $68c1: $00
	rst SubAFromBC                                          ; $68c2: $e7
	jr jr_068_6882                                   ; $68c3: $18 $bd

	ld a, [hl]                                       ; $68c5: $7e
	ld b, h                                          ; $68c6: $44
	xor $b2                                          ; $68c7: $ee $b2
	ld [hl], e                                       ; $68c9: $73
	ld b, b                                          ; $68ca: $40
	ccf                                              ; $68cb: $3f
	ld h, b                                          ; $68cc: $60
	ld a, a                                          ; $68cd: $7f
	cp $9e                                           ; $68ce: $fe $9e
	rlca                                             ; $68d0: $07
	ld a, e                                          ; $68d1: $7b
	xor b                                            ; $68d2: $a8
	daa                                              ; $68d3: $27
	ld h, b                                          ; $68d4: $60
	ld a, a                                          ; $68d5: $7f
	jp nz, $f799                                     ; $68d6: $c2 $99 $f7

	ld a, b                                          ; $68d9: $78
	db $dd                                           ; $68da: $dd
	sbc $a7                                          ; $68db: $de $a7
	rst $38                                          ; $68dd: $ff
	ld h, a                                          ; $68de: $67
	ld h, b                                          ; $68df: $60
	dec de                                           ; $68e0: $1b
	add b                                            ; $68e1: $80
	sbc h                                            ; $68e2: $9c
	cp $f7                                           ; $68e3: $fe $f7
	rst $38                                          ; $68e5: $ff
	cpl                                              ; $68e6: $2f
	add b                                            ; $68e7: $80
	sub e                                            ; $68e8: $93
	and $00                                          ; $68e9: $e6 $00
	ret nz                                           ; $68eb: $c0

	nop                                              ; $68ec: $00
	call c, $a63c                                    ; $68ed: $dc $3c $a6
	halt                                             ; $68f0: $76
	call c, $c6fc                                    ; $68f1: $dc $fc $c6
	jr c, jr_068_692d                                ; $68f4: $38 $37

	add b                                            ; $68f6: $80
	sbc [hl]                                         ; $68f7: $9e
	ld b, $77                                        ; $68f8: $06 $77
	daa                                              ; $68fa: $27
	ld a, e                                          ; $68fb: $7b
	ld a, [hl]                                       ; $68fc: $7e

jr_068_68fd:
	cpl                                              ; $68fd: $2f
	add b                                            ; $68fe: $80
	ld a, a                                          ; $68ff: $7f
	ldh [$99], a                                     ; $6900: $e0 $99
	scf                                              ; $6902: $37
	ld a, b                                          ; $6903: $78
	ld l, [hl]                                       ; $6904: $6e
	rst AddAOntoHL                                          ; $6905: $ef
	db $db                                           ; $6906: $db
	db $fc                                           ; $6907: $fc
	inc bc                                           ; $6908: $03
	add b                                            ; $6909: $80
	ld a, a                                          ; $690a: $7f
	add b                                            ; $690b: $80
	dec hl                                           ; $690c: $2b
	nop                                              ; $690d: $00
	ld [hl], a                                       ; $690e: $77
	add b                                            ; $690f: $80
	sbc b                                            ; $6910: $98
	db $fc                                           ; $6911: $fc
	nop                                              ; $6912: $00
	jp nz, $f402                                     ; $6913: $c2 $02 $f4

	call z, $23fe                                    ; $6916: $cc $fe $23
	add b                                            ; $6919: $80

Call_068_691a:
	rra                                              ; $691a: $1f
	nop                                              ; $691b: $00
	halt                                             ; $691c: $76
	ldh [$99], a                                     ; $691d: $e0 $99
	ld a, a                                          ; $691f: $7f
	nop                                              ; $6920: $00
	adc l                                            ; $6921: $8d
	add [hl]                                         ; $6922: $86
	ei                                               ; $6923: $fb
	ld a, h                                          ; $6924: $7c
	ld [hl], a                                       ; $6925: $77
	add b                                            ; $6926: $80
	sbc [hl]                                         ; $6927: $9e
	inc e                                            ; $6928: $1c
	ld a, e                                          ; $6929: $7b
	cp $96                                           ; $692a: $fe $96
	inc l                                            ; $692c: $2c

jr_068_692d:
	jr nc, jr_068_6947                               ; $692d: $30 $18

	db $10                                           ; $692f: $10
	ld [bc], a                                       ; $6930: $02
	nop                                              ; $6931: $00
	inc l                                            ; $6932: $2c
	inc [hl]                                         ; $6933: $34

jr_068_6934:
	jr jr_068_6934                                   ; $6934: $18 $fe

	ld [hl], a                                       ; $6936: $77
	db $fc                                           ; $6937: $fc
	sub h                                            ; $6938: $94
	pop bc                                           ; $6939: $c1
	add b                                            ; $693a: $80
	ld a, e                                          ; $693b: $7b
	rst SubAFromBC                                          ; $693c: $e7
	dec a                                            ; $693d: $3d
	sbc $ff                                          ; $693e: $de $ff
	ret nz                                           ; $6940: $c0

	ccf                                              ; $6941: $3f
	ccf                                              ; $6942: $3f
	nop                                              ; $6943: $00
	ld c, a                                          ; $6944: $4f
	ldh [$7b], a                                     ; $6945: $e0 $7b

jr_068_6947:
	db $e3                                           ; $6947: $e3
	daa                                              ; $6948: $27
	ldh [rIE], a                                     ; $6949: $e0 $ff
	sbc e                                            ; $694b: $9b
	inc l                                            ; $694c: $2c
	inc a                                            ; $694d: $3c
	inc a                                            ; $694e: $3c
	inc d                                            ; $694f: $14
	ld l, a                                          ; $6950: $6f
	sbc $23                                          ; $6951: $de $23
	ldh [rPCM34], a                                  ; $6953: $e0 $77
	sbc $9d                                          ; $6955: $de $9d
	ld [$5310], sp                                   ; $6957: $08 $10 $53
	ldh [hDisp1_OBP1], a                                     ; $695a: $e0 $94
	ld bc, $4880                                     ; $695c: $01 $80 $48
	rst $38                                          ; $695f: $ff

jr_068_6960:
	ld c, c                                          ; $6960: $49
	rst $38                                          ; $6961: $ff
	sub e                                            ; $6962: $93
	rst $38                                          ; $6963: $ff
	sub e                                            ; $6964: $93
	cp $27                                           ; $6965: $fe $27
	cp $27                                           ; $6967: $fe $27
	db $fc                                           ; $6969: $fc
	ld l, $fd                                        ; $696a: $2e $fd
	dec hl                                           ; $696c: $2b
	rst $38                                          ; $696d: $ff
	ld c, a                                          ; $696e: $4f
	cp $5f                                           ; $696f: $fe $5f
	ld hl, sp+$57                                    ; $6971: $f8 $57
	ld hl, sp-$25                                    ; $6973: $f8 $db
	db $fc                                           ; $6975: $fc
	sbc $fd                                          ; $6976: $de $fd
	rst SubAFromDE                                          ; $6978: $df
	rst $38                                          ; $6979: $ff
	rst FarCall                                          ; $697a: $f7
	cp $ab                                           ; $697b: $fe $ab
	sub h                                            ; $697d: $94
	or $ab                                           ; $697e: $f6 $ab
	rst FarCall                                          ; $6980: $f7
	cp l                                             ; $6981: $bd
	di                                               ; $6982: $f3
	xor a                                            ; $6983: $af
	add sp, -$19                                     ; $6984: $e8 $e7
	rst SubAFromBC                                          ; $6986: $e7
	ldh [$e0], a                                     ; $6987: $e0 $e0
	db $dd                                           ; $6989: $dd
	pop hl                                           ; $698a: $e1
	db $db                                           ; $698b: $db
	di                                               ; $698c: $f3
	rst SubAFromDE                                          ; $698d: $df
	ldh a, [c]                                       ; $698e: $f2
	add b                                            ; $698f: $80
	ld d, d                                          ; $6990: $52
	jp nc, $d353                                     ; $6991: $d2 $53 $d3

	ld c, c                                          ; $6994: $49
	ret                                              ; $6995: $c9


	ld c, b                                          ; $6996: $48
	ret z                                            ; $6997: $c8

	ld a, [hl]                                       ; $6998: $7e
	cp $e6                                           ; $6999: $fe $e6
	cp a                                             ; $699b: $bf
	db $ed                                           ; $699c: $ed
	add hl, sp                                       ; $699d: $39
	db $dd                                           ; $699e: $dd
	add hl, de                                       ; $699f: $19
	reti                                             ; $69a0: $d9


	jr @-$76                                         ; $69a1: $18 $88

	ld [$e010], sp                                   ; $69a3: $08 $10 $e0
	ldh a, [$f8]                                     ; $69a6: $f0 $f8
	ld a, h                                          ; $69a8: $7c
	add b                                            ; $69a9: $80
	or $38                                           ; $69aa: $f6 $38
	ld a, [$c67c]                                    ; $69ac: $fa $7c $c6
	add b                                            ; $69af: $80
	db $e4                                           ; $69b0: $e4
	xor h                                            ; $69b1: $ac
	xor $98                                          ; $69b2: $ee $98
	cp $a6                                           ; $69b4: $fe $a6
	inc a                                            ; $69b6: $3c
	cp b                                             ; $69b7: $b8
	inc a                                            ; $69b8: $3c
	db $ec                                           ; $69b9: $ec
	db $10                                           ; $69ba: $10
	ld a, a                                          ; $69bb: $7f
	add b                                            ; $69bc: $80
	ld a, a                                          ; $69bd: $7f
	add b                                            ; $69be: $80
	cp a                                             ; $69bf: $bf
	ret nz                                           ; $69c0: $c0

	rst $38                                          ; $69c1: $ff
	ret nz                                           ; $69c2: $c0

	rst SubAFromDE                                          ; $69c3: $df
	ldh [rIE], a                                     ; $69c4: $e0 $ff
	ldh [$af], a                                     ; $69c6: $e0 $af
	or b                                             ; $69c8: $b0
	sub a                                            ; $69c9: $97
	sbc b                                            ; $69ca: $98
	dec bc                                           ; $69cb: $0b
	inc c                                            ; $69cc: $0c
	ld b, $07                                        ; $69cd: $06 $07
	sub c                                            ; $69cf: $91
	rrca                                             ; $69d0: $0f
	dec bc                                           ; $69d1: $0b
	ld e, $13                                        ; $69d2: $1e $13
	rra                                              ; $69d4: $1f
	ld de, $203f                                     ; $69d5: $11 $3f $20
	cp a                                             ; $69d8: $bf
	and b                                            ; $69d9: $a0
	ccf                                              ; $69da: $3f
	jr nc, jr_068_6960                               ; $69db: $30 $83

	add e                                            ; $69dd: $83
	db $dd                                           ; $69de: $dd
	add c                                            ; $69df: $81
	rst SubAFromDE                                          ; $69e0: $df
	add b                                            ; $69e1: $80
	sub c                                            ; $69e2: $91
	add c                                            ; $69e3: $81
	add e                                            ; $69e4: $83
	ld [bc], a                                       ; $69e5: $02
	rlca                                             ; $69e6: $07
	ld bc, $0706                                     ; $69e7: $01 $06 $07
	nop                                              ; $69ea: $00
	rrca                                             ; $69eb: $0f
	ld bc, $010f                                     ; $69ec: $01 $0f $01
	ld b, $01                                        ; $69ef: $06 $01
	ei                                               ; $69f1: $fb
	add b                                            ; $69f2: $80
	stop                                             ; $69f3: $10 $00
	jr jr_068_69f7                                   ; $69f5: $18 $00

jr_068_69f7:
	cp b                                             ; $69f7: $b8
	dec a                                            ; $69f8: $3d
	inc l                                            ; $69f9: $2c
	dec a                                            ; $69fa: $3d
	inc e                                            ; $69fb: $1c
	rla                                              ; $69fc: $17
	ld a, [de]                                       ; $69fd: $1a
	rst FarCall                                          ; $69fe: $f7
	cp $fb                                           ; $69ff: $fe $fb
	db $fd                                           ; $6a01: $fd
	inc bc                                           ; $6a02: $03
	rst SubAFromBC                                          ; $6a03: $e7
	ld a, c                                          ; $6a04: $79
	ld a, [$8efd]                                    ; $6a05: $fa $fd $8e
	rst GetHLinHL                                          ; $6a08: $cf
	db $db                                           ; $6a09: $db
	call c, $fceb                                    ; $6a0a: $dc $eb $fc
	adc e                                            ; $6a0d: $8b
	ld hl, sp+$4f                                    ; $6a0e: $f8 $4f
	add sp, -$21                                     ; $6a10: $e8 $df
	sbc h                                            ; $6a12: $9c
	ld [hl], b                                       ; $6a13: $70
	inc bc                                           ; $6a14: $03
	nop                                              ; $6a15: $00
	ld a, e                                          ; $6a16: $7b
	ret nc                                           ; $6a17: $d0

	ld [hl], e                                       ; $6a18: $73
	adc $9d                                          ; $6a19: $ce $9d
	rra                                              ; $6a1b: $1f
	inc bc                                           ; $6a1c: $03
	ld a, e                                          ; $6a1d: $7b
	cp $8e                                           ; $6a1e: $fe $8e
	rlca                                             ; $6a20: $07
	ccf                                              ; $6a21: $3f
	rrca                                             ; $6a22: $0f
	inc a                                            ; $6a23: $3c
	rra                                              ; $6a24: $1f
	ld a, b                                          ; $6a25: $78
	dec a                                            ; $6a26: $3d
	db $e4                                           ; $6a27: $e4
	ld a, [hl]                                       ; $6a28: $7e
	add $fe                                          ; $6a29: $c6 $fe
	inc l                                            ; $6a2b: $2c
	call c, $38d8                                    ; $6a2c: $dc $d8 $38
	ldh [$e0], a                                     ; $6a2f: $e0 $e0
	cp $9e                                           ; $6a31: $fe $9e
	ld bc, $2007                                     ; $6a33: $01 $07 $20
	ld b, a                                          ; $6a36: $47
	ld b, b                                          ; $6a37: $40
	sub d                                            ; $6a38: $92
	cp $00                                           ; $6a39: $fe $00
	and $18                                          ; $6a3b: $e6 $18
	cp [hl]                                          ; $6a3d: $be
	ld a, h                                          ; $6a3e: $7c
	ld h, h                                          ; $6a3f: $64
	and $b4                                          ; $6a40: $e6 $b4
	cp $8a                                           ; $6a42: $fe $8a
	inc a                                            ; $6a44: $3c
	xor b                                            ; $6a45: $a8
	ld a, e                                          ; $6a46: $7b
	ld b, b                                          ; $6a47: $40
	ld b, e                                          ; $6a48: $43
	ld h, b                                          ; $6a49: $60
	ld a, e                                          ; $6a4a: $7b
	sub b                                            ; $6a4b: $90
	daa                                              ; $6a4c: $27
	ld h, b                                          ; $6a4d: $60
	sub [hl]                                         ; $6a4e: $96
	rst $38                                          ; $6a4f: $ff
	ld bc, $01fe                                     ; $6a50: $01 $fe $01
	or $f9                                           ; $6a53: $f6 $f9
	sbc a                                            ; $6a55: $9f
	sbc [hl]                                         ; $6a56: $9e
	xor e                                            ; $6a57: $ab
	ld e, e                                          ; $6a58: $5b
	ld h, b                                          ; $6a59: $60
	daa                                              ; $6a5a: $27
	add b                                            ; $6a5b: $80
	sbc c                                            ; $6a5c: $99
	rst SubAFromDE                                          ; $6a5d: $df
	db $fc                                           ; $6a5e: $fc
	rst SubAFromDE                                          ; $6a5f: $df
	cp $f7                                           ; $6a60: $fe $f7
	rst $38                                          ; $6a62: $ff
	scf                                              ; $6a63: $37
	add b                                            ; $6a64: $80
	ld [hl], a                                       ; $6a65: $77
	cp $7b                                           ; $6a66: $fe $7b
	ld a, h                                          ; $6a68: $7c
	sbc b                                            ; $6a69: $98
	ld a, [hl]                                       ; $6a6a: $7e
	ld h, [hl]                                       ; $6a6b: $66
	db $ec                                           ; $6a6c: $ec
	ld hl, sp-$04                                    ; $6a6d: $f8 $fc
	call nc, $3b38                                   ; $6a6f: $d4 $38 $3b
	add b                                            ; $6a72: $80
	ld a, e                                          ; $6a73: $7b
	xor d                                            ; $6a74: $aa
	rst SubAFromDE                                          ; $6a75: $df
	ld bc, $8027                                     ; $6a76: $01 $27 $80
	ld a, a                                          ; $6a79: $7f
	cp $96                                           ; $6a7a: $fe $96
	rst $38                                          ; $6a7c: $ff
	nop                                              ; $6a7d: $00
	rst FarCall                                          ; $6a7e: $f7
	ld a, b                                          ; $6a7f: $78
	xor a                                            ; $6a80: $af
	cp $43                                           ; $6a81: $fe $43
	db $ec                                           ; $6a83: $ec
	rst $38                                          ; $6a84: $ff
	inc bc                                           ; $6a85: $03
	add b                                            ; $6a86: $80
	cpl                                              ; $6a87: $2f
	nop                                              ; $6a88: $00
	ld a, a                                          ; $6a89: $7f
	cp $93                                           ; $6a8a: $fe $93
	call z, $8000                                    ; $6a8c: $cc $00 $80
	nop                                              ; $6a8f: $00
	add h                                            ; $6a90: $84
	nop                                              ; $6a91: $00
	ld a, [$4602]                                    ; $6a92: $fa $02 $46
	call nz, Call_068_78bc                           ; $6a95: $c4 $bc $78
	scf                                              ; $6a98: $37
	add b                                            ; $6a99: $80
	sbc [hl]                                         ; $6a9a: $9e
	ld b, $fa                                        ; $6a9b: $06 $fa
	cpl                                              ; $6a9d: $2f
	add b                                            ; $6a9e: $80
	ld [hl], a                                       ; $6a9f: $77
	call c, Call_068_7b99                            ; $6aa0: $dc $99 $7b
	ld b, $8f                                        ; $6aa3: $06 $8f
	call z, Call_068_78f7                            ; $6aa5: $cc $f7 $78
	ld [hl], a                                       ; $6aa8: $77
	add b                                            ; $6aa9: $80
	sbc [hl]                                         ; $6aaa: $9e
	inc e                                            ; $6aab: $1c
	ld a, e                                          ; $6aac: $7b
	cp $94                                           ; $6aad: $fe $94
	inc l                                            ; $6aaf: $2c
	jr nc, jr_068_6aca                               ; $6ab0: $30 $18

	stop                                             ; $6ab2: $10 $00
	ld [bc], a                                       ; $6ab4: $02
	ld l, [hl]                                       ; $6ab5: $6e
	inc h                                            ; $6ab6: $24

jr_068_6ab7:
	inc l                                            ; $6ab7: $2c
	db $10                                           ; $6ab8: $10
	jr jr_068_6ab7                                   ; $6ab9: $18 $fc

	sub h                                            ; $6abb: $94
	pop bc                                           ; $6abc: $c1
	add b                                            ; $6abd: $80
	ld a, e                                          ; $6abe: $7b

jr_068_6abf:
	rst SubAFromBC                                          ; $6abf: $e7
	dec a                                            ; $6ac0: $3d
	sbc $ff                                          ; $6ac1: $de $ff
	ret nz                                           ; $6ac3: $c0

	ccf                                              ; $6ac4: $3f
	ccf                                              ; $6ac5: $3f
	nop                                              ; $6ac6: $00
	ld h, e                                          ; $6ac7: $63
	ldh [$9a], a                                     ; $6ac8: $e0 $9a

jr_068_6aca:
	ld [bc], a                                       ; $6aca: $02
	nop                                              ; $6acb: $00
	ld l, [hl]                                       ; $6acc: $6e
	inc [hl]                                         ; $6acd: $34
	inc a                                            ; $6ace: $3c
	ld a, e                                          ; $6acf: $7b
	pop hl                                           ; $6ad0: $e1
	ld [hl], a                                       ; $6ad1: $77
	sbc $37                                          ; $6ad2: $de $37
	ldh [$7f], a                                     ; $6ad4: $e0 $7f
	rrca                                             ; $6ad6: $0f
	sbc d                                            ; $6ad7: $9a
	ld a, [hl]                                       ; $6ad8: $7e
	ld l, $3e                                        ; $6ad9: $2e $3e
	inc [hl]                                         ; $6adb: $34
	inc e                                            ; $6adc: $1c
	ld a, e                                          ; $6add: $7b
	pop hl                                           ; $6ade: $e1
	sbc [hl]                                         ; $6adf: $9e
	ld [$e02b], sp                                   ; $6ae0: $08 $2b $e0
	sub [hl]                                         ; $6ae3: $96
	ld [hl], d                                       ; $6ae4: $72
	ld l, $2e                                        ; $6ae5: $2e $2e
	ld [hl], $1c                                     ; $6ae7: $36 $1c
	inc d                                            ; $6ae9: $14
	ld [$1808], sp                                   ; $6aea: $08 $08 $18
	ld d, e                                          ; $6aed: $53
	ldh [$80], a                                     ; $6aee: $e0 $80
	ld bc, $4880                                     ; $6af0: $01 $80 $48
	rst $38                                          ; $6af3: $ff

jr_068_6af4:
	ld c, c                                          ; $6af4: $49
	rst $38                                          ; $6af5: $ff
	sub e                                            ; $6af6: $93
	rst $38                                          ; $6af7: $ff
	sub e                                            ; $6af8: $93
	cp $27                                           ; $6af9: $fe $27
	cp $27                                           ; $6afb: $fe $27
	db $fc                                           ; $6afd: $fc
	ld l, $fd                                        ; $6afe: $2e $fd
	dec hl                                           ; $6b00: $2b
	rst $38                                          ; $6b01: $ff
	ld c, [hl]                                       ; $6b02: $4e
	rst $38                                          ; $6b03: $ff
	ld e, a                                          ; $6b04: $5f
	ld hl, sp+$57                                    ; $6b05: $f8 $57
	ld hl, sp-$25                                    ; $6b07: $f8 $db
	db $fc                                           ; $6b09: $fc
	sbc $fd                                          ; $6b0a: $de $fd
	rst SubAFromDE                                          ; $6b0c: $df
	rst $38                                          ; $6b0d: $ff
	rst FarCall                                          ; $6b0e: $f7
	cp $ab                                           ; $6b0f: $fe $ab
	sub h                                            ; $6b11: $94
	or $ab                                           ; $6b12: $f6 $ab
	rst FarCall                                          ; $6b14: $f7
	cp l                                             ; $6b15: $bd
	di                                               ; $6b16: $f3
	xor a                                            ; $6b17: $af
	add sp, -$19                                     ; $6b18: $e8 $e7
	rst SubAFromBC                                          ; $6b1a: $e7
	ldh [$e0], a                                     ; $6b1b: $e0 $e0
	db $dd                                           ; $6b1d: $dd
	pop hl                                           ; $6b1e: $e1
	db $db                                           ; $6b1f: $db
	di                                               ; $6b20: $f3
	rst SubAFromDE                                          ; $6b21: $df
	ldh a, [c]                                       ; $6b22: $f2
	add b                                            ; $6b23: $80
	ld d, d                                          ; $6b24: $52
	jp nc, $d353                                     ; $6b25: $d2 $53 $d3

	ld c, c                                          ; $6b28: $49
	ret                                              ; $6b29: $c9


	ld c, b                                          ; $6b2a: $48
	ret z                                            ; $6b2b: $c8

	ld a, [hl]                                       ; $6b2c: $7e
	cp $e6                                           ; $6b2d: $fe $e6
	cp a                                             ; $6b2f: $bf
	db $ed                                           ; $6b30: $ed
	add hl, sp                                       ; $6b31: $39
	db $dd                                           ; $6b32: $dd
	add hl, de                                       ; $6b33: $19
	reti                                             ; $6b34: $d9


	jr jr_068_6abf                                   ; $6b35: $18 $88

	ld [$00f0], sp                                   ; $6b37: $08 $f0 $00
	ld [hl], b                                       ; $6b3a: $70
	ld hl, sp-$04                                    ; $6b3b: $f8 $fc
	ld hl, sp-$02                                    ; $6b3d: $f8 $fe
	nop                                              ; $6b3f: $00
	cp a                                             ; $6b40: $bf

jr_068_6b41:
	ld a, b                                          ; $6b41: $78
	ld h, a                                          ; $6b42: $67
	add b                                            ; $6b43: $80
	db $e4                                           ; $6b44: $e4
	push bc                                          ; $6b45: $c5
	and $d4                                          ; $6b46: $e6 $d4
	cp $26                                           ; $6b48: $fe $26
	ld a, h                                          ; $6b4a: $7c
	jr z, jr_068_6b89                                ; $6b4b: $28 $3c

	xor h                                            ; $6b4d: $ac
	db $10                                           ; $6b4e: $10
	ld a, a                                          ; $6b4f: $7f
	add b                                            ; $6b50: $80
	ld a, a                                          ; $6b51: $7f
	add b                                            ; $6b52: $80
	cp a                                             ; $6b53: $bf
	ret nz                                           ; $6b54: $c0

	rst $38                                          ; $6b55: $ff
	ret nz                                           ; $6b56: $c0

	rst SubAFromDE                                          ; $6b57: $df
	ldh [rIE], a                                     ; $6b58: $e0 $ff
	ldh [$af], a                                     ; $6b5a: $e0 $af
	or b                                             ; $6b5c: $b0
	sub a                                            ; $6b5d: $97
	sbc b                                            ; $6b5e: $98
	dec bc                                           ; $6b5f: $0b
	inc c                                            ; $6b60: $0c
	ld b, $07                                        ; $6b61: $06 $07
	sub c                                            ; $6b63: $91
	rrca                                             ; $6b64: $0f
	dec bc                                           ; $6b65: $0b
	ld e, $13                                        ; $6b66: $1e $13
	rra                                              ; $6b68: $1f
	ld de, $203f                                     ; $6b69: $11 $3f $20
	cp a                                             ; $6b6c: $bf
	and b                                            ; $6b6d: $a0
	ccf                                              ; $6b6e: $3f
	jr nc, jr_068_6af4                               ; $6b6f: $30 $83

	add e                                            ; $6b71: $83
	db $dd                                           ; $6b72: $dd
	add c                                            ; $6b73: $81
	db $dd                                           ; $6b74: $dd
	add b                                            ; $6b75: $80
	rst SubAFromDE                                          ; $6b76: $df
	inc bc                                           ; $6b77: $03
	sub l                                            ; $6b78: $95
	ld [bc], a                                       ; $6b79: $02
	rlca                                             ; $6b7a: $07
	dec b                                            ; $6b7b: $05
	ld [bc], a                                       ; $6b7c: $02
	ld c, $01                                        ; $6b7d: $0e $01
	rrca                                             ; $6b7f: $0f
	ld bc, $0106                                     ; $6b80: $01 $06 $01
	ei                                               ; $6b83: $fb
	sbc [hl]                                         ; $6b84: $9e
	db $10                                           ; $6b85: $10
	cp a                                             ; $6b86: $bf
	jr jr_068_6b41                                   ; $6b87: $18 $b8

jr_068_6b89:
	add e                                            ; $6b89: $83
	dec a                                            ; $6b8a: $3d
	inc l                                            ; $6b8b: $2c
	dec a                                            ; $6b8c: $3d
	inc e                                            ; $6b8d: $1c
	rla                                              ; $6b8e: $17
	ld [de], a                                       ; $6b8f: $12
	ccf                                              ; $6b90: $3f
	cp $ff                                           ; $6b91: $fe $ff
	cp l                                             ; $6b93: $bd
	jp $01ff                                         ; $6b94: $c3 $ff $01


	halt                                             ; $6b97: $76
	ld sp, hl                                        ; $6b98: $f9
	adc e                                            ; $6b99: $8b
	call z, $cfce                                    ; $6b9a: $cc $ce $cf
	xor a                                            ; $6b9d: $af
	db $fc                                           ; $6b9e: $fc
	set 7, b                                         ; $6b9f: $cb $f8
	ld c, a                                          ; $6ba1: $4f
	add sp, -$01                                     ; $6ba2: $e8 $ff
	ld [hl], b                                       ; $6ba4: $70
	inc bc                                           ; $6ba5: $03
	cp [hl]                                          ; $6ba6: $be
	rlca                                             ; $6ba7: $07
	rrca                                             ; $6ba8: $0f
	rrca                                             ; $6ba9: $0f
	ld a, e                                          ; $6baa: $7b
	adc $9d                                          ; $6bab: $ce $9d
	rra                                              ; $6bad: $1f
	inc bc                                           ; $6bae: $03
	ld a, e                                          ; $6baf: $7b
	cp $8e                                           ; $6bb0: $fe $8e
	rlca                                             ; $6bb2: $07
	ccf                                              ; $6bb3: $3f
	rrca                                             ; $6bb4: $0f
	inc a                                            ; $6bb5: $3c
	rra                                              ; $6bb6: $1f
	ld a, b                                          ; $6bb7: $78
	dec a                                            ; $6bb8: $3d
	db $e4                                           ; $6bb9: $e4
	ld a, [hl]                                       ; $6bba: $7e
	add $fe                                          ; $6bbb: $c6 $fe
	inc l                                            ; $6bbd: $2c
	call c, $38d8                                    ; $6bbe: $dc $d8 $38
	ldh [$e0], a                                     ; $6bc1: $e0 $e0
	cp a                                             ; $6bc3: $bf
	nop                                              ; $6bc4: $00
	ld bc, $2007                                     ; $6bc5: $01 $07 $20
	ccf                                              ; $6bc8: $3f
	ld b, b                                          ; $6bc9: $40
	sbc d                                            ; $6bca: $9a
	rst $38                                          ; $6bcb: $ff
	nop                                              ; $6bcc: $00
	rst SubAFromDE                                          ; $6bcd: $df
	inc a                                            ; $6bce: $3c
	ld h, a                                          ; $6bcf: $67
	ld a, e                                          ; $6bd0: $7b
	ld b, b                                          ; $6bd1: $40
	sbc l                                            ; $6bd2: $9d
	and [hl]                                         ; $6bd3: $a6
	db $fc                                           ; $6bd4: $fc
	ld [hl], a                                       ; $6bd5: $77
	ld b, b                                          ; $6bd6: $40
	ld b, a                                          ; $6bd7: $47
	ld h, b                                          ; $6bd8: $60
	ld a, e                                          ; $6bd9: $7b
	sub b                                            ; $6bda: $90
	sbc [hl]                                         ; $6bdb: $9e
	nop                                              ; $6bdc: $00
	rra                                              ; $6bdd: $1f
	ld h, b                                          ; $6bde: $60
	sub a                                            ; $6bdf: $97
	cp $01                                           ; $6be0: $fe $01
	rst FarCall                                          ; $6be2: $f7
	ld a, b                                          ; $6be3: $78
	call $aece                                       ; $6be4: $cd $ce $ae
	rst $38                                          ; $6be7: $ff
	ld e, a                                          ; $6be8: $5f
	ld h, b                                          ; $6be9: $60
	daa                                              ; $6bea: $27
	add b                                            ; $6beb: $80
	sbc e                                            ; $6bec: $9b
	rst SubAFromDE                                          ; $6bed: $df
	db $fc                                           ; $6bee: $fc
	rst SubAFromDE                                          ; $6bef: $df
	cp $27                                           ; $6bf0: $fe $27
	add b                                            ; $6bf2: $80
	ld a, a                                          ; $6bf3: $7f
	cp $97                                           ; $6bf4: $fe $97
	db $db                                           ; $6bf6: $db
	inc a                                            ; $6bf7: $3c
	or [hl]                                          ; $6bf8: $b6
	ld a, [hl]                                       ; $6bf9: $7e

jr_068_6bfa:
	and $f4                                          ; $6bfa: $e6 $f4
	jr c, jr_068_6bfa                                ; $6bfc: $38 $fc

	cpl                                              ; $6bfe: $2f
	add b                                            ; $6bff: $80
	ld a, a                                          ; $6c00: $7f
	xor d                                            ; $6c01: $aa
	rst SubAFromDE                                          ; $6c02: $df
	ld bc, $8027                                     ; $6c03: $01 $27 $80
	ld a, a                                          ; $6c06: $7f
	call nz, $c797                                   ; $6c07: $c4 $97 $c7
	jr c, @+$75                                      ; $6c0a: $38 $73

	db $fc                                           ; $6c0c: $fc
	xor [hl]                                         ; $6c0d: $ae
	rst AddAOntoHL                                          ; $6c0e: $ef
	ld c, e                                          ; $6c0f: $4b
	db $fc                                           ; $6c10: $fc
	inc bc                                           ; $6c11: $03
	add b                                            ; $6c12: $80
	dec de                                           ; $6c13: $1b
	add b                                            ; $6c14: $80
	sbc [hl]                                         ; $6c15: $9e
	and $bf                                          ; $6c16: $e6 $bf
	ret nz                                           ; $6c18: $c0

	ld a, [$029a]                                    ; $6c19: $fa $9a $02
	call nz, $f8c6                                   ; $6c1c: $c4 $c6 $f8
	inc a                                            ; $6c1f: $3c
	cpl                                              ; $6c20: $2f
	add b                                            ; $6c21: $80
	rra                                              ; $6c22: $1f
	nop                                              ; $6c23: $00
	ld a, a                                          ; $6c24: $7f
	call nz, $8f9e                                   ; $6c25: $c4 $9e $8f
	cp [hl]                                          ; $6c28: $be
	rlca                                             ; $6c29: $07
	ccf                                              ; $6c2a: $3f
	add l                                            ; $6c2b: $85
	sbc h                                            ; $6c2c: $9c
	adc [hl]                                         ; $6c2d: $8e
	rst $38                                          ; $6c2e: $ff
	ld a, b                                          ; $6c2f: $78
	ld [hl], a                                       ; $6c30: $77
	add b                                            ; $6c31: $80
	sbc [hl]                                         ; $6c32: $9e
	inc e                                            ; $6c33: $1c
	cp a                                             ; $6c34: $bf
	inc e                                            ; $6c35: $1c
	inc l                                            ; $6c36: $2c
	sub a                                            ; $6c37: $97
	jr nc, @+$1a                                     ; $6c38: $30 $18

	db $10                                           ; $6c3a: $10
	ld [bc], a                                       ; $6c3b: $02
	nop                                              ; $6c3c: $00
	jr z, @+$32                                      ; $6c3d: $28 $30

jr_068_6c3f:
	nop                                              ; $6c3f: $00
	cp l                                             ; $6c40: $bd
	jr jr_068_6c43                                   ; $6c41: $18 $00

jr_068_6c43:
	nop                                              ; $6c43: $00
	pop bc                                           ; $6c44: $c1
	sub l                                            ; $6c45: $95
	add b                                            ; $6c46: $80
	ld a, e                                          ; $6c47: $7b
	rst SubAFromBC                                          ; $6c48: $e7
	dec a                                            ; $6c49: $3d
	sbc $ff                                          ; $6c4a: $de $ff
	ret nz                                           ; $6c4c: $c0

	ccf                                              ; $6c4d: $3f
	ccf                                              ; $6c4e: $3f
	nop                                              ; $6c4f: $00
	ld e, e                                          ; $6c50: $5b
	ldh [$9c], a                                     ; $6c51: $e0 $9c
	inc a                                            ; $6c53: $3c
	inc h                                            ; $6c54: $24
	inc e                                            ; $6c55: $1c
	ld a, e                                          ; $6c56: $7b
	pop hl                                           ; $6c57: $e1
	ld [hl], a                                       ; $6c58: $77
	sbc $2f                                          ; $6c59: $de $2f
	ldh [$9c], a                                     ; $6c5b: $e0 $9c
	ld l, $34                                        ; $6c5d: $2e $34
	inc a                                            ; $6c5f: $3c
	dec de                                           ; $6c60: $1b
	ldh [rIE], a                                     ; $6c61: $e0 $ff
	sbc d                                            ; $6c63: $9a
	ld l, $3c                                        ; $6c64: $2e $3c
	inc a                                            ; $6c66: $3c
	inc d                                            ; $6c67: $14
	jr jr_068_6ce5                                   ; $6c68: $18 $7b

	pop hl                                           ; $6c6a: $e1
	ld a, a                                          ; $6c6b: $7f
	push af                                          ; $6c6c: $f5
	ld d, a                                          ; $6c6d: $57
	ldh [$7b], a                                     ; $6c6e: $e0 $7b
	ld bc, $4880                                     ; $6c70: $01 $80 $48
	rst $38                                          ; $6c73: $ff

jr_068_6c74:
	ld c, c                                          ; $6c74: $49
	rst $38                                          ; $6c75: $ff
	sub e                                            ; $6c76: $93
	rst $38                                          ; $6c77: $ff
	sub e                                            ; $6c78: $93
	cp $27                                           ; $6c79: $fe $27
	cp $27                                           ; $6c7b: $fe $27
	db $fc                                           ; $6c7d: $fc
	ld l, $fd                                        ; $6c7e: $2e $fd
	dec hl                                           ; $6c80: $2b
	rst $38                                          ; $6c81: $ff
	ld c, l                                          ; $6c82: $4d
	cp $5f                                           ; $6c83: $fe $5f
	ld hl, sp+$57                                    ; $6c85: $f8 $57
	ld hl, sp-$25                                    ; $6c87: $f8 $db
	db $fc                                           ; $6c89: $fc
	sbc $fd                                          ; $6c8a: $de $fd
	rst SubAFromDE                                          ; $6c8c: $df
	rst $38                                          ; $6c8d: $ff
	rst FarCall                                          ; $6c8e: $f7
	cp $ab                                           ; $6c8f: $fe $ab
	sub h                                            ; $6c91: $94
	or $ab                                           ; $6c92: $f6 $ab
	rst FarCall                                          ; $6c94: $f7
	cp l                                             ; $6c95: $bd
	di                                               ; $6c96: $f3
	xor a                                            ; $6c97: $af
	add sp, -$19                                     ; $6c98: $e8 $e7
	rst SubAFromBC                                          ; $6c9a: $e7
	ldh [$e0], a                                     ; $6c9b: $e0 $e0
	db $dd                                           ; $6c9d: $dd
	pop hl                                           ; $6c9e: $e1
	db $db                                           ; $6c9f: $db
	di                                               ; $6ca0: $f3
	rst SubAFromDE                                          ; $6ca1: $df
	ldh a, [c]                                       ; $6ca2: $f2
	add b                                            ; $6ca3: $80
	ld d, d                                          ; $6ca4: $52
	jp nc, $d353                                     ; $6ca5: $d2 $53 $d3

	ld c, c                                          ; $6ca8: $49
	ret                                              ; $6ca9: $c9


	ld c, b                                          ; $6caa: $48
	ret z                                            ; $6cab: $c8

	ld a, [hl]                                       ; $6cac: $7e
	cp $e6                                           ; $6cad: $fe $e6
	cp a                                             ; $6caf: $bf
	db $ed                                           ; $6cb0: $ed
	add hl, sp                                       ; $6cb1: $39
	db $dd                                           ; $6cb2: $dd
	add hl, de                                       ; $6cb3: $19
	reti                                             ; $6cb4: $d9


	jr jr_068_6c3f                                   ; $6cb5: $18 $88

	ld [$00f0], sp                                   ; $6cb7: $08 $f0 $00
	ld [hl], b                                       ; $6cba: $70
	ld hl, sp-$04                                    ; $6cbb: $f8 $fc
	ld hl, sp-$02                                    ; $6cbd: $f8 $fe
	nop                                              ; $6cbf: $00
	cp a                                             ; $6cc0: $bf

jr_068_6cc1:
	ld a, b                                          ; $6cc1: $78
	ld h, a                                          ; $6cc2: $67
	add b                                            ; $6cc3: $80
	db $ec                                           ; $6cc4: $ec
	push bc                                          ; $6cc5: $c5
	and $d4                                          ; $6cc6: $e6 $d4
	cp $3a                                           ; $6cc8: $fe $3a
	ld a, h                                          ; $6cca: $7c
	jr z, jr_068_6d09                                ; $6ccb: $28 $3c

	xor h                                            ; $6ccd: $ac
	db $10                                           ; $6cce: $10
	ld a, a                                          ; $6ccf: $7f
	add b                                            ; $6cd0: $80
	ld a, a                                          ; $6cd1: $7f
	add b                                            ; $6cd2: $80
	cp a                                             ; $6cd3: $bf
	ret nz                                           ; $6cd4: $c0

	rst $38                                          ; $6cd5: $ff
	ret nz                                           ; $6cd6: $c0

	rst SubAFromDE                                          ; $6cd7: $df
	ldh [rIE], a                                     ; $6cd8: $e0 $ff
	ldh [$af], a                                     ; $6cda: $e0 $af
	or b                                             ; $6cdc: $b0
	sub a                                            ; $6cdd: $97
	sbc b                                            ; $6cde: $98
	dec bc                                           ; $6cdf: $0b
	inc c                                            ; $6ce0: $0c
	ld b, $07                                        ; $6ce1: $06 $07
	sub c                                            ; $6ce3: $91
	rrca                                             ; $6ce4: $0f

jr_068_6ce5:
	dec bc                                           ; $6ce5: $0b
	ld e, $13                                        ; $6ce6: $1e $13
	rra                                              ; $6ce8: $1f
	ld de, $203f                                     ; $6ce9: $11 $3f $20
	cp a                                             ; $6cec: $bf
	and b                                            ; $6ced: $a0
	ccf                                              ; $6cee: $3f
	jr nc, jr_068_6c74                               ; $6cef: $30 $83

	add e                                            ; $6cf1: $83
	db $dd                                           ; $6cf2: $dd
	add c                                            ; $6cf3: $81
	db $dd                                           ; $6cf4: $dd
	add b                                            ; $6cf5: $80
	sub e                                            ; $6cf6: $93
	ld bc, $0203                                     ; $6cf7: $01 $03 $02
	rlca                                             ; $6cfa: $07
	dec b                                            ; $6cfb: $05
	ld [bc], a                                       ; $6cfc: $02
	rrca                                             ; $6cfd: $0f
	nop                                              ; $6cfe: $00
	rrca                                             ; $6cff: $0f
	ld bc, $0106                                     ; $6d00: $01 $06 $01
	ei                                               ; $6d03: $fb
	sbc [hl]                                         ; $6d04: $9e
	db $10                                           ; $6d05: $10
	cp a                                             ; $6d06: $bf
	jr jr_068_6cc1                                   ; $6d07: $18 $b8

jr_068_6d09:
	add e                                            ; $6d09: $83
	dec a                                            ; $6d0a: $3d
	inc l                                            ; $6d0b: $2c
	dec a                                            ; $6d0c: $3d
	inc e                                            ; $6d0d: $1c
	rla                                              ; $6d0e: $17
	ld [de], a                                       ; $6d0f: $12
	ccf                                              ; $6d10: $3f
	ld a, $ff                                        ; $6d11: $3e $ff
	db $dd                                           ; $6d13: $dd
	db $e3                                           ; $6d14: $e3
	rst $38                                          ; $6d15: $ff
	ld bc, $79f6                                     ; $6d16: $01 $f6 $79
	sbc e                                            ; $6d19: $9b
	call c, $cf8e                                    ; $6d1a: $dc $8e $cf
	xor a                                            ; $6d1d: $af
	db $fc                                           ; $6d1e: $fc
	set 7, b                                         ; $6d1f: $cb $f8
	ld c, a                                          ; $6d21: $4f
	add sp, -$01                                     ; $6d22: $e8 $ff
	ld [hl], b                                       ; $6d24: $70
	inc bc                                           ; $6d25: $03
	cp [hl]                                          ; $6d26: $be
	rlca                                             ; $6d27: $07
	rrca                                             ; $6d28: $0f
	rrca                                             ; $6d29: $0f
	sbc d                                            ; $6d2a: $9a
	ld bc, $010f                                     ; $6d2b: $01 $0f $01
	rra                                              ; $6d2e: $1f
	inc bc                                           ; $6d2f: $03
	ld a, e                                          ; $6d30: $7b
	cp $8e                                           ; $6d31: $fe $8e
	rlca                                             ; $6d33: $07
	ccf                                              ; $6d34: $3f
	rrca                                             ; $6d35: $0f
	inc a                                            ; $6d36: $3c
	rra                                              ; $6d37: $1f
	ld a, b                                          ; $6d38: $78
	dec a                                            ; $6d39: $3d
	db $e4                                           ; $6d3a: $e4
	ld a, [hl]                                       ; $6d3b: $7e
	add $fe                                          ; $6d3c: $c6 $fe
	inc l                                            ; $6d3e: $2c
	call c, $38d8                                    ; $6d3f: $dc $d8 $38
	ldh [$e0], a                                     ; $6d42: $e0 $e0
	cp a                                             ; $6d44: $bf
	nop                                              ; $6d45: $00
	ld bc, $2007                                     ; $6d46: $01 $07 $20
	ccf                                              ; $6d49: $3f
	ld b, b                                          ; $6d4a: $40
	sbc d                                            ; $6d4b: $9a
	rst $38                                          ; $6d4c: $ff
	nop                                              ; $6d4d: $00
	cp e                                             ; $6d4e: $bb
	ld a, h                                          ; $6d4f: $7c
	ld h, l                                          ; $6d50: $65
	ld h, e                                          ; $6d51: $63
	ld b, b                                          ; $6d52: $40
	dec sp                                           ; $6d53: $3b
	ld h, b                                          ; $6d54: $60
	ld a, a                                          ; $6d55: $7f
	adc d                                            ; $6d56: $8a
	inc hl                                           ; $6d57: $23
	ld h, b                                          ; $6d58: $60
	sub [hl]                                         ; $6d59: $96
	cp $01                                           ; $6d5a: $fe $01
	or a                                             ; $6d5c: $b7
	ld a, b                                          ; $6d5d: $78
	db $db                                           ; $6d5e: $db
	db $fc                                           ; $6d5f: $fc
	adc a                                            ; $6d60: $8f
	sbc $8b                                          ; $6d61: $de $8b
	ld h, e                                          ; $6d63: $63
	ld h, b                                          ; $6d64: $60
	daa                                              ; $6d65: $27
	add b                                            ; $6d66: $80
	sbc h                                            ; $6d67: $9c
	rst SubAFromDE                                          ; $6d68: $df
	db $fc                                           ; $6d69: $fc
	db $dd                                           ; $6d6a: $dd
	inc hl                                           ; $6d6b: $23
	add b                                            ; $6d6c: $80
	sub e                                            ; $6d6d: $93
	db $e3                                           ; $6d6e: $e3
	nop                                              ; $6d6f: $00
	db $fc                                           ; $6d70: $fc
	inc a                                            ; $6d71: $3c
	call nc, $ba76                                   ; $6d72: $d4 $76 $ba
	db $fc                                           ; $6d75: $fc
	ld l, b                                          ; $6d76: $68
	cp h                                             ; $6d77: $bc
	or h                                             ; $6d78: $b4
	ld [$8037], sp                                   ; $6d79: $08 $37 $80
	sbc h                                            ; $6d7c: $9c
	ld b, $00                                        ; $6d7d: $06 $00
	ld bc, $7e73                                     ; $6d7f: $01 $73 $7e
	scf                                              ; $6d82: $37
	add b                                            ; $6d83: $80
	ld a, a                                          ; $6d84: $7f
	jp nz, $8f99                                     ; $6d85: $c2 $99 $8f

	nop                                              ; $6d88: $00
	ld [hl], a                                       ; $6d89: $77
	ld a, b                                          ; $6d8a: $78
	or a                                             ; $6d8b: $b7
	cp [hl]                                          ; $6d8c: $be
	inc bc                                           ; $6d8d: $03
	add b                                            ; $6d8e: $80
	ld a, e                                          ; $6d8f: $7b
	cp $27                                           ; $6d90: $fe $27
	add b                                            ; $6d92: $80
	sbc [hl]                                         ; $6d93: $9e
	ldh [c], a                                       ; $6d94: $e2
	cp [hl]                                          ; $6d95: $be
	ret nz                                           ; $6d96: $c0

	call nz, $9afa                                   ; $6d97: $c4 $fa $9a
	ld [bc], a                                       ; $6d9a: $02
	call nz, $bcc4                                   ; $6d9b: $c4 $c4 $bc
	ld a, b                                          ; $6d9e: $78
	cpl                                              ; $6d9f: $2f
	add b                                            ; $6da0: $80
	rra                                              ; $6da1: $1f
	nop                                              ; $6da2: $00
	ld a, a                                          ; $6da3: $7f
	jp nz, $1f9e                                     ; $6da4: $c2 $9e $1f

	cp a                                             ; $6da7: $bf
	rrca                                             ; $6da8: $0f
	ld a, a                                          ; $6da9: $7f
	sbc d                                            ; $6daa: $9a
	ld [bc], a                                       ; $6dab: $02
	adc a                                            ; $6dac: $8f
	adc h                                            ; $6dad: $8c
	rst FarCall                                          ; $6dae: $f7
	ld a, b                                          ; $6daf: $78
	ld [hl], a                                       ; $6db0: $77
	add b                                            ; $6db1: $80
	sbc [hl]                                         ; $6db2: $9e
	inc e                                            ; $6db3: $1c
	cp a                                             ; $6db4: $bf
	inc e                                            ; $6db5: $1c
	inc l                                            ; $6db6: $2c
	sbc e                                            ; $6db7: $9b
	jr nc, @+$1a                                     ; $6db8: $30 $18

jr_068_6dba:
	stop                                             ; $6dba: $10 $00
	ld a, e                                          ; $6dbc: $7b
	ld a, [$7fff]                                    ; $6dbd: $fa $ff $7f
	ret nc                                           ; $6dc0: $d0

	db $fd                                           ; $6dc1: $fd
	sub h                                            ; $6dc2: $94
	pop bc                                           ; $6dc3: $c1
	add b                                            ; $6dc4: $80
	ld a, e                                          ; $6dc5: $7b
	rst SubAFromBC                                          ; $6dc6: $e7
	dec a                                            ; $6dc7: $3d
	sbc $ff                                          ; $6dc8: $de $ff
	ret nz                                           ; $6dca: $c0

	ccf                                              ; $6dcb: $3f
	ccf                                              ; $6dcc: $3f
	nop                                              ; $6dcd: $00
	ld e, e                                          ; $6dce: $5b
	ldh [$9b], a                                     ; $6dcf: $e0 $9b
	jr c, jr_068_6e03                                ; $6dd1: $38 $30

	inc e                                            ; $6dd3: $1c
	ld [$de6f], sp                                   ; $6dd4: $08 $6f $de
	cpl                                              ; $6dd7: $2f
	ldh [$9b], a                                     ; $6dd8: $e0 $9b
	inc a                                            ; $6dda: $3c
	jr c, jr_068_6df9                                ; $6ddb: $38 $1c

	inc d                                            ; $6ddd: $14
	rrca                                             ; $6dde: $0f
	ldh [$9c], a                                     ; $6ddf: $e0 $9c
	inc a                                            ; $6de1: $3c
	inc d                                            ; $6de2: $14
	inc e                                            ; $6de3: $1c
	ld a, e                                          ; $6de4: $7b
	pop hl                                           ; $6de5: $e1
	ld a, a                                          ; $6de6: $7f
	db $fd                                           ; $6de7: $fd
	ld d, a                                          ; $6de8: $57
	ldh [$a5], a                                     ; $6de9: $e0 $a5
	ld bc, $4880                                     ; $6deb: $01 $80 $48
	rst $38                                          ; $6dee: $ff

jr_068_6def:
	ld c, c                                          ; $6def: $49
	rst $38                                          ; $6df0: $ff
	sub e                                            ; $6df1: $93
	rst $38                                          ; $6df2: $ff
	sub e                                            ; $6df3: $93
	cp $27                                           ; $6df4: $fe $27
	cp $27                                           ; $6df6: $fe $27
	db $fc                                           ; $6df8: $fc

jr_068_6df9:
	ld l, $fd                                        ; $6df9: $2e $fd
	dec hl                                           ; $6dfb: $2b
	rst $38                                          ; $6dfc: $ff
	ld c, a                                          ; $6dfd: $4f
	ld hl, sp+$5f                                    ; $6dfe: $f8 $5f
	ld hl, sp+$56                                    ; $6e00: $f8 $56
	ld sp, hl                                        ; $6e02: $f9

jr_068_6e03:
	db $db                                           ; $6e03: $db
	db $fc                                           ; $6e04: $fc
	sbc $fd                                          ; $6e05: $de $fd
	rst SubAFromDE                                          ; $6e07: $df
	rst $38                                          ; $6e08: $ff
	or $ff                                           ; $6e09: $f6 $ff
	xor e                                            ; $6e0b: $ab
	sub h                                            ; $6e0c: $94
	or $ab                                           ; $6e0d: $f6 $ab
	rst FarCall                                          ; $6e0f: $f7
	cp l                                             ; $6e10: $bd
	di                                               ; $6e11: $f3
	xor a                                            ; $6e12: $af
	add sp, -$19                                     ; $6e13: $e8 $e7
	rst SubAFromBC                                          ; $6e15: $e7
	ldh [$e0], a                                     ; $6e16: $e0 $e0
	db $dd                                           ; $6e18: $dd
	pop hl                                           ; $6e19: $e1
	db $db                                           ; $6e1a: $db
	di                                               ; $6e1b: $f3
	rst SubAFromDE                                          ; $6e1c: $df
	ldh a, [c]                                       ; $6e1d: $f2
	add b                                            ; $6e1e: $80
	ld d, d                                          ; $6e1f: $52
	jp nc, $d353                                     ; $6e20: $d2 $53 $d3

	ld c, c                                          ; $6e23: $49
	ret                                              ; $6e24: $c9


	ld c, b                                          ; $6e25: $48
	ret z                                            ; $6e26: $c8

	ld a, [hl]                                       ; $6e27: $7e
	cp $e6                                           ; $6e28: $fe $e6
	cp a                                             ; $6e2a: $bf
	db $ed                                           ; $6e2b: $ed
	add hl, sp                                       ; $6e2c: $39
	db $dd                                           ; $6e2d: $dd
	add hl, de                                       ; $6e2e: $19
	reti                                             ; $6e2f: $d9


	jr jr_068_6dba                                   ; $6e30: $18 $88

	ld [$00f0], sp                                   ; $6e32: $08 $f0 $00
	jr @-$1e                                         ; $6e35: $18 $e0

	db $e4                                           ; $6e37: $e4
	ld hl, sp-$26                                    ; $6e38: $f8 $da
	inc a                                            ; $6e3a: $3c
	ld a, a                                          ; $6e3b: $7f
	add b                                            ; $6e3c: $80
	cp e                                             ; $6e3d: $bb
	add b                                            ; $6e3e: $80
	ld a, h                                          ; $6e3f: $7c
	ld b, l                                          ; $6e40: $45
	and $d4                                          ; $6e41: $e6 $d4
	cp $ba                                           ; $6e43: $fe $ba
	db $fc                                           ; $6e45: $fc
	jr z, @+$7e                                      ; $6e46: $28 $7c

	xor [hl]                                         ; $6e48: $ae
	db $10                                           ; $6e49: $10
	ld a, a                                          ; $6e4a: $7f
	add b                                            ; $6e4b: $80
	ld a, a                                          ; $6e4c: $7f
	add b                                            ; $6e4d: $80
	cp a                                             ; $6e4e: $bf
	ret nz                                           ; $6e4f: $c0

	rst $38                                          ; $6e50: $ff
	ret nz                                           ; $6e51: $c0

	rst SubAFromDE                                          ; $6e52: $df
	ldh [rIE], a                                     ; $6e53: $e0 $ff
	ldh [$af], a                                     ; $6e55: $e0 $af
	or b                                             ; $6e57: $b0
	sub a                                            ; $6e58: $97
	sbc b                                            ; $6e59: $98
	dec bc                                           ; $6e5a: $0b
	inc c                                            ; $6e5b: $0c
	ld b, $07                                        ; $6e5c: $06 $07
	sub c                                            ; $6e5e: $91
	rrca                                             ; $6e5f: $0f
	dec bc                                           ; $6e60: $0b
	ld e, $13                                        ; $6e61: $1e $13
	rra                                              ; $6e63: $1f
	ld de, $203f                                     ; $6e64: $11 $3f $20
	cp a                                             ; $6e67: $bf
	and b                                            ; $6e68: $a0
	ccf                                              ; $6e69: $3f
	jr nc, jr_068_6def                               ; $6e6a: $30 $83

	add e                                            ; $6e6c: $83
	db $dd                                           ; $6e6d: $dd
	add c                                            ; $6e6e: $81
	rst SubAFromDE                                          ; $6e6f: $df
	add b                                            ; $6e70: $80
	sub c                                            ; $6e71: $91
	add d                                            ; $6e72: $82
	add c                                            ; $6e73: $81
	inc bc                                           ; $6e74: $03
	rlca                                             ; $6e75: $07
	ld [bc], a                                       ; $6e76: $02
	rlca                                             ; $6e77: $07
	dec b                                            ; $6e78: $05
	ld [bc], a                                       ; $6e79: $02
	rrca                                             ; $6e7a: $0f
	nop                                              ; $6e7b: $00
	ld c, $01                                        ; $6e7c: $0e $01
	rlca                                             ; $6e7e: $07
	inc bc                                           ; $6e7f: $03
	cp a                                             ; $6e80: $bf
	ld bc, $7f00                                     ; $6e81: $01 $00 $7f
	db $fd                                           ; $6e84: $fd
	sbc [hl]                                         ; $6e85: $9e
	db $10                                           ; $6e86: $10
	cp a                                             ; $6e87: $bf
	jr @-$46                                         ; $6e88: $18 $b8

	add e                                            ; $6e8a: $83
	dec a                                            ; $6e8b: $3d
	inc l                                            ; $6e8c: $2c
	dec a                                            ; $6e8d: $3d
	inc e                                            ; $6e8e: $1c
	rla                                              ; $6e8f: $17
	ld a, [hl-]                                      ; $6e90: $3a
	ld a, a                                          ; $6e91: $7f
	sbc $e3                                          ; $6e92: $de $e3
	ld a, l                                          ; $6e94: $7d
	add e                                            ; $6e95: $83
	rlca                                             ; $6e96: $07
	ld sp, hl                                        ; $6e97: $f9
	ld a, [$7305]                                    ; $6e98: $fa $05 $73
	db $fc                                           ; $6e9b: $fc
	adc l                                            ; $6e9c: $8d
	adc $be                                          ; $6e9d: $ce $be
	rst $38                                          ; $6e9f: $ff
	db $eb                                           ; $6ea0: $eb
	ld hl, sp-$31                                    ; $6ea1: $f8 $cf
	add sp, -$01                                     ; $6ea3: $e8 $ff
	ld [hl], b                                       ; $6ea5: $70
	inc bc                                           ; $6ea6: $03
	cp [hl]                                          ; $6ea7: $be
	rlca                                             ; $6ea8: $07
	rrca                                             ; $6ea9: $0f
	rrca                                             ; $6eaa: $0f
	sbc d                                            ; $6eab: $9a
	ld bc, $010f                                     ; $6eac: $01 $0f $01
	rra                                              ; $6eaf: $1f
	inc bc                                           ; $6eb0: $03
	ld a, e                                          ; $6eb1: $7b
	cp $8e                                           ; $6eb2: $fe $8e
	rlca                                             ; $6eb4: $07
	ccf                                              ; $6eb5: $3f
	rrca                                             ; $6eb6: $0f
	inc a                                            ; $6eb7: $3c
	rra                                              ; $6eb8: $1f
	ld a, b                                          ; $6eb9: $78
	dec a                                            ; $6eba: $3d
	db $e4                                           ; $6ebb: $e4
	ld a, [hl]                                       ; $6ebc: $7e
	add $fe                                          ; $6ebd: $c6 $fe
	inc l                                            ; $6ebf: $2c
	call c, $38d8                                    ; $6ec0: $dc $d8 $38
	ldh [$e0], a                                     ; $6ec3: $e0 $e0
	cp a                                             ; $6ec5: $bf
	nop                                              ; $6ec6: $00
	ld bc, $2037                                     ; $6ec7: $01 $37 $20
	sbc c                                            ; $6eca: $99
	ld d, a                                          ; $6ecb: $57
	ld hl, sp-$26                                    ; $6ecc: $f8 $da
	db $fd                                           ; $6ece: $fd
	rst SubAFromDE                                          ; $6ecf: $df
	db $fc                                           ; $6ed0: $fc
	ld l, a                                          ; $6ed1: $6f
	jr nz, jr_068_6f13                               ; $6ed2: $20 $3f

	ld b, b                                          ; $6ed4: $40
	sub a                                            ; $6ed5: $97
	rst GetHLinHL                                          ; $6ed6: $cf
	jr nc, jr_068_6f18                               ; $6ed7: $30 $3f

	ret nz                                           ; $6ed9: $c0

	cp e                                             ; $6eda: $bb
	ld a, h                                          ; $6edb: $7c
	call nc, Call_068_6ff6                           ; $6edc: $d4 $f6 $6f
	ld b, b                                          ; $6edf: $40
	ld b, a                                          ; $6ee0: $47
	ld h, b                                          ; $6ee1: $60
	ld a, a                                          ; $6ee2: $7f
	ld h, d                                          ; $6ee3: $62
	ld a, a                                          ; $6ee4: $7f
	adc [hl]                                         ; $6ee5: $8e
	sbc h                                            ; $6ee6: $9c
	rlca                                             ; $6ee7: $07
	ld bc, $7b03                                     ; $6ee8: $01 $03 $7b
	ld e, [hl]                                       ; $6eeb: $5e
	ccf                                              ; $6eec: $3f
	ld h, b                                          ; $6eed: $60
	adc a                                            ; $6eee: $8f
	rst $38                                          ; $6eef: $ff
	ld bc, $f10e                                     ; $6ef0: $01 $0e $f1
	or $09                                           ; $6ef3: $f6 $09
	pop af                                           ; $6ef5: $f1
	cp $9e                                           ; $6ef6: $fe $9e
	rst SubAFromDE                                          ; $6ef8: $df
	db $eb                                           ; $6ef9: $eb
	db $fc                                           ; $6efa: $fc
	rst GetHLinHL                                          ; $6efb: $cf
	add sp, $1f                                      ; $6efc: $e8 $1f
	ldh [rPCM34], a                                  ; $6efe: $e0 $77
	ld h, b                                          ; $6f00: $60
	cpl                                              ; $6f01: $2f
	add b                                            ; $6f02: $80
	ld a, [hl]                                       ; $6f03: $7e
	and b                                            ; $6f04: $a0
	ld a, e                                          ; $6f05: $7b
	add b                                            ; $6f06: $80
	sbc l                                            ; $6f07: $9d
	cp $f7                                           ; $6f08: $fe $f7
	inc sp                                           ; $6f0a: $33
	add b                                            ; $6f0b: $80
	sbc [hl]                                         ; $6f0c: $9e
	rst $38                                          ; $6f0d: $ff
	cp [hl]                                          ; $6f0e: $be
	rst $38                                          ; $6f0f: $ff
	ldh [c], a                                       ; $6f10: $e2
	ld hl, sp-$67                                    ; $6f11: $f8 $99

jr_068_6f13:
	jr c, jr_068_6f5b                                ; $6f13: $38 $46

	cp $c8                                           ; $6f15: $fe $c8
	db $ec                                           ; $6f17: $ec

jr_068_6f18:
	adc $3a                                          ; $6f18: $ce $3a
	ldh [$7f], a                                     ; $6f1a: $e0 $7f
	cp $9a                                           ; $6f1c: $fe $9a
	ld b, $00                                        ; $6f1e: $06 $00
	ld bc, $0103                                     ; $6f20: $01 $03 $01
	ld a, [hl-]                                      ; $6f23: $3a
	ldh [$7f], a                                     ; $6f24: $e0 $7f
	add b                                            ; $6f26: $80
	sbc h                                            ; $6f27: $9c
	cp $01                                           ; $6f28: $fe $01
	rst $38                                          ; $6f2a: $ff
	cp a                                             ; $6f2b: $bf
	rrca                                             ; $6f2c: $0f
	ld [hl], a                                       ; $6f2d: $77
	sbc b                                            ; $6f2e: $98
	ld hl, sp-$52                                    ; $6f2f: $f8 $ae
	cp a                                             ; $6f31: $bf
	set 5, h                                         ; $6f32: $cb $ec
	sbc a                                            ; $6f34: $9f
	ld h, b                                          ; $6f35: $60
	inc bc                                           ; $6f36: $03
	add b                                            ; $6f37: $80
	sbc [hl]                                         ; $6f38: $9e
	cp $1f                                           ; $6f39: $fe $1f
	add b                                            ; $6f3b: $80
	sub a                                            ; $6f3c: $97
	ret nz                                           ; $6f3d: $c0

	nop                                              ; $6f3e: $00
	sbc l                                            ; $6f3f: $9d
	ld [bc], a                                       ; $6f40: $02
	call nz, $b8e6                                   ; $6f41: $c4 $e6 $b8
	inc a                                            ; $6f44: $3c
	cpl                                              ; $6f45: $2f
	add b                                            ; $6f46: $80
	rst $38                                          ; $6f47: $ff
	ld a, a                                          ; $6f48: $7f
	ld a, a                                          ; $6f49: $7f
	rra                                              ; $6f4a: $1f
	add b                                            ; $6f4b: $80
	ld a, a                                          ; $6f4c: $7f
	adc d                                            ; $6f4d: $8a
	sbc c                                            ; $6f4e: $99
	ld a, a                                          ; $6f4f: $7f
	nop                                              ; $6f50: $00
	rlca                                             ; $6f51: $07
	adc [hl]                                         ; $6f52: $8e
	ei                                               ; $6f53: $fb
	db $fc                                           ; $6f54: $fc
	ld [hl], a                                       ; $6f55: $77
	add b                                            ; $6f56: $80
	sbc [hl]                                         ; $6f57: $9e
	inc e                                            ; $6f58: $1c
	cp a                                             ; $6f59: $bf
	inc e                                            ; $6f5a: $1c

jr_068_6f5b:
	inc l                                            ; $6f5b: $2c
	sub a                                            ; $6f5c: $97
	jr nc, @+$1a                                     ; $6f5d: $30 $18

	stop                                             ; $6f5f: $10 $00
	nop                                              ; $6f61: $00
	jr nc, jr_068_6f7c                               ; $6f62: $30 $18

	inc e                                            ; $6f64: $1c
	cp l                                             ; $6f65: $bd
	nop                                              ; $6f66: $00
	jr jr_068_6f69                                   ; $6f67: $18 $00

jr_068_6f69:
	pop bc                                           ; $6f69: $c1
	sub l                                            ; $6f6a: $95
	add b                                            ; $6f6b: $80
	ld a, e                                          ; $6f6c: $7b
	rst SubAFromBC                                          ; $6f6d: $e7
	dec a                                            ; $6f6e: $3d
	sbc $ff                                          ; $6f6f: $de $ff
	ret nz                                           ; $6f71: $c0

	ccf                                              ; $6f72: $3f
	ccf                                              ; $6f73: $3f
	nop                                              ; $6f74: $00
	ld d, e                                          ; $6f75: $53
	ldh [$9e], a                                     ; $6f76: $e0 $9e
	inc c                                            ; $6f78: $0c
	ld a, e                                          ; $6f79: $7b
	db $e3                                           ; $6f7a: $e3
	rla                                              ; $6f7b: $17

jr_068_6f7c:
	ldh [$9d], a                                     ; $6f7c: $e0 $9d
	inc a                                            ; $6f7e: $3c
	ld [$e277], sp                                   ; $6f7f: $08 $77 $e2
	ld a, a                                          ; $6f82: $7f
	push af                                          ; $6f83: $f5
	dec hl                                           ; $6f84: $2b
	ldh [$9b], a                                     ; $6f85: $e0 $9b
	jr c, jr_068_6fa5                                ; $6f87: $38 $1c

	jr z, jr_068_6fc7                                ; $6f89: $28 $3c

	ld [hl], e                                       ; $6f8b: $73
	cp [hl]                                          ; $6f8c: $be
	ld d, a                                          ; $6f8d: $57
	ldh [$3e], a                                     ; $6f8e: $e0 $3e
	add e                                            ; $6f90: $83
	rst $38                                          ; $6f91: $ff
	sbc $01                                          ; $6f92: $de $01
	sbc h                                            ; $6f94: $9c
	ld [bc], a                                       ; $6f95: $02
	inc bc                                           ; $6f96: $03
	inc bc                                           ; $6f97: $03
	ld [hl], e                                       ; $6f98: $73
	ld hl, sp-$66                                    ; $6f99: $f8 $9a
	inc bc                                           ; $6f9b: $03
	ld [bc], a                                       ; $6f9c: $02
	ld [bc], a                                       ; $6f9d: $02
	dec b                                            ; $6f9e: $05
	dec b                                            ; $6f9f: $05
	db $db                                           ; $6fa0: $db
	rlca                                             ; $6fa1: $07
	rst SubAFromDE                                          ; $6fa2: $df
	ld b, $db                                        ; $6fa3: $06 $db

jr_068_6fa5:
	inc b                                            ; $6fa5: $04
	cp $7f                                           ; $6fa6: $fe $7f
	pop hl                                           ; $6fa8: $e1
	sbc h                                            ; $6fa9: $9c
	rrca                                             ; $6faa: $0f
	ld a, [de]                                       ; $6fab: $1a
	dec [hl]                                         ; $6fac: $35
	ld [hl], a                                       ; $6fad: $77
	ld hl, sp-$80                                    ; $6fae: $f8 $80
	inc bc                                           ; $6fb0: $03
	rrca                                             ; $6fb1: $0f
	rra                                              ; $6fb2: $1f
	ld a, $6c                                        ; $6fb3: $3e $6c
	xor a                                            ; $6fb5: $af
	ld a, [$8bd5]                                    ; $6fb6: $fa $d5 $8b
	ld b, b                                          ; $6fb9: $40
	ld c, h                                          ; $6fba: $4c
	inc hl                                           ; $6fbb: $23
	ld [hl], a                                       ; $6fbc: $77
	rst FarCall                                          ; $6fbd: $f7
	and a                                            ; $6fbe: $a7
	xor e                                            ; $6fbf: $ab
	db $f4                                           ; $6fc0: $f4
	ld a, a                                          ; $6fc1: $7f
	ld a, a                                          ; $6fc2: $7f
	ccf                                              ; $6fc3: $3f
	rra                                              ; $6fc4: $1f
	ld b, $0a                                        ; $6fc5: $06 $0a

jr_068_6fc7:
	dec e                                            ; $6fc7: $1d
	rra                                              ; $6fc8: $1f
	dec hl                                           ; $6fc9: $2b
	ld [hl], $56                                     ; $6fca: $36 $56
	rra                                              ; $6fcc: $1f
	rlca                                             ; $6fcd: $07
	rrca                                             ; $6fce: $0f
	rst SubAFromDE                                          ; $6fcf: $df
	dec de                                           ; $6fd0: $1b
	add b                                            ; $6fd1: $80
	ld a, $2d                                        ; $6fd2: $3e $2d
	ld l, l                                          ; $6fd4: $6d
	ld c, c                                          ; $6fd5: $49
	ld l, l                                          ; $6fd6: $6d
	sub e                                            ; $6fd7: $93
	sub d                                            ; $6fd8: $92
	sub [hl]                                         ; $6fd9: $96
	sub h                                            ; $6fda: $94
	and l                                            ; $6fdb: $a5
	and c                                            ; $6fdc: $a1
	ld a, [hl]                                       ; $6fdd: $7e
	ld e, d                                          ; $6fde: $5a
	db $fc                                           ; $6fdf: $fc
	db $fd                                           ; $6fe0: $fd
	ld sp, hl                                        ; $6fe1: $f9
	ei                                               ; $6fe2: $fb
	ld a, [$a3fe]                                    ; $6fe3: $fa $fe $a3
	ldh [c], a                                       ; $6fe6: $e2
	db $e3                                           ; $6fe7: $e3
	ld h, e                                          ; $6fe8: $63
	ld h, l                                          ; $6fe9: $65
	ld l, l                                          ; $6fea: $6d
	dec l                                            ; $6feb: $2d
	add hl, hl                                       ; $6fec: $29
	db $fc                                           ; $6fed: $fc
	db $fd                                           ; $6fee: $fd
	db $fd                                           ; $6fef: $fd
	ld a, l                                          ; $6ff0: $7d
	rst SubAFromDE                                          ; $6ff1: $df
	ld a, e                                          ; $6ff2: $7b
	sbc e                                            ; $6ff3: $9b
	dec sp                                           ; $6ff4: $3b
	ccf                                              ; $6ff5: $3f

Call_068_6ff6:
	dec hl                                           ; $6ff6: $2b
	ld [hl-], a                                      ; $6ff7: $32
	db $dd                                           ; $6ff8: $dd
	ld [de], a                                       ; $6ff9: $12
	sbc e                                            ; $6ffa: $9b
	dec de                                           ; $6ffb: $1b
	dec bc                                           ; $6ffc: $0b
	ccf                                              ; $6ffd: $3f
	ccf                                              ; $6ffe: $3f
	db $dd                                           ; $6fff: $dd
	rra                                              ; $7000: $1f
	sbc e                                            ; $7001: $9b
	ld e, $0e                                        ; $7002: $1e $0e
	ld a, [bc]                                       ; $7004: $0a
	ld c, $dd                                        ; $7005: $0e $dd
	ld b, $df                                        ; $7007: $06 $df
	ld [bc], a                                       ; $7009: $02
	rst SubAFromDE                                          ; $700a: $df
	rrca                                             ; $700b: $0f
	db $dd                                           ; $700c: $dd
	rlca                                             ; $700d: $07
	db $dd                                           ; $700e: $dd
	inc bc                                           ; $700f: $03
	sbc c                                            ; $7010: $99
	ld bc, $1907                                     ; $7011: $01 $07 $19
	ld l, $5f                                        ; $7014: $2e $5f
	ld a, a                                          ; $7016: $7f
	ld [hl], a                                       ; $7017: $77
	ld hl, sp-$6a                                    ; $7018: $f8 $96
	rra                                              ; $701a: $1f
	ld sp, $4060                                     ; $701b: $31 $60 $40
	ldh [$c0], a                                     ; $701e: $e0 $c0
	ldh a, [$c2]                                     ; $7020: $f0 $c2
	pop bc                                           ; $7022: $c1
	call c, Call_068_7f80                            ; $7023: $dc $80 $7f
	add b                                            ; $7026: $80
	db $fd                                           ; $7027: $fd
	sbc l                                            ; $7028: $9d
	add d                                            ; $7029: $82
	add b                                            ; $702a: $80
	ld [hl], e                                       ; $702b: $73
	ld sp, hl                                        ; $702c: $f9
	ld a, e                                          ; $702d: $7b
	ld [hl], d                                       ; $702e: $72
	ei                                               ; $702f: $fb
	add h                                            ; $7030: $84
	ld a, $47                                        ; $7031: $3e $47
	cp d                                             ; $7033: $ba
	xor $66                                          ; $7034: $ee $66
	sub e                                            ; $7036: $93
	call $3e33                                       ; $7037: $cd $33 $3e
	ld a, a                                          ; $703a: $7f
	rst JumpTable                                          ; $703b: $c7
	di                                               ; $703c: $f3
	sbc e                                            ; $703d: $9b
	rst AddAOntoHL                                          ; $703e: $ef
	ld a, $fc                                        ; $703f: $3e $fc
	call c, Call_068_691a                            ; $7041: $dc $1a $69
	rst JumpTable                                          ; $7044: $c7
	jr c, jr_068_7088                                ; $7045: $38 $41

jr_068_7047:
	ccf                                              ; $7047: $3f
	db $db                                           ; $7048: $db
	db $e3                                           ; $7049: $e3
	db $fd                                           ; $704a: $fd
	rst FarCall                                          ; $704b: $f7
	db $dd                                           ; $704c: $dd
	rst $38                                          ; $704d: $ff
	add l                                            ; $704e: $85
	db $fc                                           ; $704f: $fc
	xor a                                            ; $7050: $af
	ld [hl], h                                       ; $7051: $74
	jp $8e85                                         ; $7052: $c3 $85 $8e


	jr jr_068_7088                                   ; $7055: $18 $31

	ld l, [hl]                                       ; $7057: $6e
	ldh a, [$c3]                                     ; $7058: $f0 $c3
	adc h                                            ; $705a: $8c
	dec sp                                           ; $705b: $3b
	ld h, a                                          ; $705c: $67
	call z, $3f9f                                    ; $705d: $cc $9f $3f
	pop af                                           ; $7060: $f1
	add $0c                                          ; $7061: $c6 $0c
	add hl, de                                       ; $7063: $19
	add hl, sp                                       ; $7064: $39
	cp [hl]                                          ; $7065: $be
	ld [hl], h                                       ; $7066: $74
	ld d, h                                          ; $7067: $54
	ld a, a                                          ; $7068: $7f
	db $dd                                           ; $7069: $dd
	rst $38                                          ; $706a: $ff
	sbc b                                            ; $706b: $98

jr_068_706c:
	ld a, e                                          ; $706c: $7b
	ei                                               ; $706d: $fb
	rst $38                                          ; $706e: $ff
	sbc $9a                                          ; $706f: $de $9a
	xor e                                            ; $7071: $ab
	xor a                                            ; $7072: $af
	sbc $35                                          ; $7073: $de $35
	sbc [hl]                                         ; $7075: $9e
	xor c                                            ; $7076: $a9
	sbc $f5                                          ; $7077: $de $f5
	sbc [hl]                                         ; $7079: $9e
	pop af                                           ; $707a: $f1
	sbc $e1                                          ; $707b: $de $e1
	sub l                                            ; $707d: $95
	ld h, c                                          ; $707e: $61
	xor c                                            ; $707f: $a9

Call_068_7080:
	and c                                            ; $7080: $a1
	and e                                            ; $7081: $a3
	cp e                                             ; $7082: $bb
	cp e                                             ; $7083: $bb
	cp a                                             ; $7084: $bf
	or a                                             ; $7085: $b7
	and a                                            ; $7086: $a7
	ld h, c                                          ; $7087: $61

jr_068_7088:
	db $db                                           ; $7088: $db
	ld l, c                                          ; $7089: $69
	sbc e                                            ; $708a: $9b
	ld a, c                                          ; $708b: $79
	and a                                            ; $708c: $a7
	and e                                            ; $708d: $a3
	db $e3                                           ; $708e: $e3
	db $dd                                           ; $708f: $dd
	ld l, e                                          ; $7090: $6b
	sbc e                                            ; $7091: $9b
	ld h, c                                          ; $7092: $61
	ld a, c                                          ; $7093: $79
	ld a, l                                          ; $7094: $7d
	ld a, l                                          ; $7095: $7d
	db $dd                                           ; $7096: $dd
	db $fd                                           ; $7097: $fd
	sub h                                            ; $7098: $94
	rst $38                                          ; $7099: $ff
	ld h, c                                          ; $709a: $61
	ld h, c                                          ; $709b: $61
	ld l, l                                          ; $709c: $6d
	ld l, l                                          ; $709d: $6d
	xor e                                            ; $709e: $ab
	xor e                                            ; $709f: $ab
	db $eb                                           ; $70a0: $eb
	db $eb                                           ; $70a1: $eb
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	db $dd                                           ; $70a4: $dd
	rst FarCall                                          ; $70a5: $f7
	add b                                            ; $70a6: $80
	or a                                             ; $70a7: $b7
	dec [hl]                                         ; $70a8: $35
	push af                                          ; $70a9: $f5
	push af                                          ; $70aa: $f5
	ld a, l                                          ; $70ab: $7d
	dec a                                            ; $70ac: $3d
	dec a                                            ; $70ad: $3d
	sbc a                                            ; $70ae: $9f
	rrca                                             ; $70af: $0f
	ld c, a                                          ; $70b0: $4f
	dec d                                            ; $70b1: $15
	dec e                                            ; $70b2: $1d
	rra                                              ; $70b3: $1f
	rrca                                             ; $70b4: $0f
	adc a                                            ; $70b5: $8f
	ld b, a                                          ; $70b6: $47
	ld b, a                                          ; $70b7: $47
	inc hl                                           ; $70b8: $23
	rst SubAFromHL                                          ; $70b9: $d7
	rst AddAOntoHL                                          ; $70ba: $ef
	ld l, e                                          ; $70bb: $6b
	and a                                            ; $70bc: $a7
	ld d, l                                          ; $70bd: $55
	ld l, c                                          ; $70be: $69
	dec [hl]                                         ; $70bf: $35
	ld a, [de]                                       ; $70c0: $1a
	inc hl                                           ; $70c1: $23
	ld de, $5890                                     ; $70c2: $11 $90 $58
	jr c, jr_068_7047                                ; $70c5: $38 $80

	inc e                                            ; $70c7: $1c
	ld c, $07                                        ; $70c8: $0e $07
	jr nz, jr_068_706c                               ; $70ca: $20 $a0

	ld d, d                                          ; $70cc: $52
	ld d, d                                          ; $70cd: $52
	or $5c                                           ; $70ce: $f6 $5c
	or h                                             ; $70d0: $b4
	ld l, d                                          ; $70d1: $6a
	jr nz, @-$5e                                     ; $70d2: $20 $a0

	ldh a, [c]                                       ; $70d4: $f2
	ldh a, [c]                                       ; $70d5: $f2
	or $bc                                           ; $70d6: $f6 $bc
	ld l, h                                          ; $70d8: $6c
	sbc $db                                          ; $70d9: $de $db
	ld [hl], e                                       ; $70db: $73
	and a                                            ; $70dc: $a7
	ld c, [hl]                                       ; $70dd: $4e
	cp h                                             ; $70de: $bc

jr_068_70df:
	cp $07                                           ; $70df: $fe $07
	pop af                                           ; $70e1: $f1
	scf                                              ; $70e2: $37
	rst AddAOntoHL                                          ; $70e3: $ef
	rst SubAFromDE                                          ; $70e4: $df
	cp a                                             ; $70e5: $bf
	ld a, e                                          ; $70e6: $7b
	ld a, h                                          ; $70e7: $7c
	sbc b                                            ; $70e8: $98
	rrca                                             ; $70e9: $0f
	ld a, a                                          ; $70ea: $7f
	ld bc, $837e                                     ; $70eb: $01 $7e $83
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	call c, $9dff                                    ; $70f0: $dc $ff $9d
	rst GetHLinHL                                          ; $70f3: $cf
	rra                                              ; $70f4: $1f
	ld a, e                                          ; $70f5: $7b
	rst AddAOntoHL                                          ; $70f6: $ef
	sub a                                            ; $70f7: $97
	ld l, $52                                        ; $70f8: $2e $52
	and h                                            ; $70fa: $a4
	ld c, h                                          ; $70fb: $4c
	ld e, h                                          ; $70fc: $5c
	sbc l                                            ; $70fd: $9d
	cp c                                             ; $70fe: $b9
	cp e                                             ; $70ff: $bb
	db $dd                                           ; $7100: $dd
	rst $38                                          ; $7101: $ff
	rst SubAFromDE                                          ; $7102: $df
	rst FarCall                                          ; $7103: $f7
	sbc l                                            ; $7104: $9d
	rst AddAOntoHL                                          ; $7105: $ef
	xor $e0                                          ; $7106: $ee $e0
	pop bc                                           ; $7108: $c1
	sub h                                            ; $7109: $94
	ld a, e                                          ; $710a: $7b
	dec l                                            ; $710b: $2d
	or [hl]                                          ; $710c: $b6
	jr jr_068_7167                                   ; $710d: $18 $58

	call z, $a3a6                                    ; $710f: $cc $a6 $a3
	add a                                            ; $7112: $87
	add e                                            ; $7113: $83
	ld bc, $80de                                     ; $7114: $01 $de $80
	rst SubAFromDE                                          ; $7117: $df
	ret nz                                           ; $7118: $c0

	sub e                                            ; $7119: $93
	pop de                                           ; $711a: $d1
	ret z                                            ; $711b: $c8

	call nz, $e2e6                                   ; $711c: $c4 $e6 $e2
	pop af                                           ; $711f: $f1
	ldh a, [$fc]                                     ; $7120: $f0 $fc
	and b                                            ; $7122: $a0
	sub b                                            ; $7123: $90
	adc b                                            ; $7124: $88
	ld b, b                                          ; $7125: $40
	ld hl, sp-$64                                    ; $7126: $f8 $9c
	inc bc                                           ; $7128: $03
	rlca                                             ; $7129: $07
	rra                                              ; $712a: $1f
	ld l, a                                          ; $712b: $6f
	ld hl, sp-$6f                                    ; $712c: $f8 $91
	inc b                                            ; $712e: $04
	jr jr_068_70df                                   ; $712f: $18 $ae

	reti                                             ; $7131: $d9


	jp nc, $87d3                                     ; $7132: $d2 $d3 $87

	add a                                            ; $7135: $87
	adc h                                            ; $7136: $8c
	sbc d                                            ; $7137: $9a
	or c                                             ; $7138: $b1
	rst SubAFromBC                                          ; $7139: $e7
	xor $ef                                          ; $713a: $ee $ef
	db $dd                                           ; $713c: $dd
	rst $38                                          ; $713d: $ff
	sub a                                            ; $713e: $97
	sub h                                            ; $713f: $94
	sbc c                                            ; $7140: $99
	ld d, [hl]                                       ; $7141: $56
	ret c                                            ; $7142: $d8

	ld [hl], c                                       ; $7143: $71
	cp $d9                                           ; $7144: $fe $d9
	sbc $d9                                          ; $7146: $de $d9
	rst $38                                          ; $7148: $ff
	sbc [hl]                                         ; $7149: $9e
	set 3, [hl]                                      ; $714a: $cb $de
	ret                                              ; $714c: $c9


	rst SubAFromDE                                          ; $714d: $df
	call $dd9c                                       ; $714e: $cd $9c $dd
	ld e, a                                          ; $7151: $5f
	rst $38                                          ; $7152: $ff
	db $dd                                           ; $7153: $dd
	rst SubAFromDE                                          ; $7154: $df
	sbc h                                            ; $7155: $9c
	ld a, a                                          ; $7156: $7f
	ld [hl], a                                       ; $7157: $77
	ld [hl], e                                       ; $7158: $73
	ldh [$c1], a                                     ; $7159: $e0 $c1
	adc a                                            ; $715b: $8f
	db $fc                                           ; $715c: $fc
	sbc h                                            ; $715d: $9c
	xor $7f                                          ; $715e: $ee $7f
	rra                                              ; $7160: $1f
	rlca                                             ; $7161: $07
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	adc b                                            ; $7164: $88
	inc b                                            ; $7165: $04
	add h                                            ; $7166: $84

jr_068_7167:
	ldh [c], a                                       ; $7167: $e2
	add hl, sp                                       ; $7168: $39
	rrca                                             ; $7169: $0f
	rlca                                             ; $716a: $07
	inc bc                                           ; $716b: $03
	ld a, c                                          ; $716c: $79
	ld [hl], e                                       ; $716d: $73
	sub h                                            ; $716e: $94
	ld [bc], a                                       ; $716f: $02
	inc b                                            ; $7170: $04
	inc b                                            ; $7171: $04
	ld [$8300], sp                                   ; $7172: $08 $00 $83
	rst JumpTable                                          ; $7175: $c7
	ld h, [hl]                                       ; $7176: $66
	ld a, $1c                                        ; $7177: $3e $1c
	inc e                                            ; $7179: $1c
	ld [hl], a                                       ; $717a: $77
	ld e, h                                          ; $717b: $5c
	sbc d                                            ; $717c: $9a
	inc c                                            ; $717d: $0c
	ld a, b                                          ; $717e: $78
	ldh a, [$e0]                                     ; $717f: $f0 $e0
	and b                                            ; $7181: $a0
	ld [hl], e                                       ; $7182: $73
	ld hl, sp-$6d                                    ; $7183: $f8 $93
	sub b                                            ; $7185: $90
	jr nz, jr_068_71e8                               ; $7186: $20 $60

	ret nz                                           ; $7188: $c0

	add b                                            ; $7189: $80
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	add b                                            ; $718c: $80
	ldh [$58], a                                     ; $718d: $e0 $58
	db $e4                                           ; $718f: $e4
	ccf                                              ; $7190: $3f
	ld [hl], e                                       ; $7191: $73
	ld hl, sp-$6e                                    ; $7192: $f8 $92
	cp b                                             ; $7194: $b8
	inc e                                            ; $7195: $1c
	rst $38                                          ; $7196: $ff
	ret nz                                           ; $7197: $c0

	inc bc                                           ; $7198: $03
	inc e                                            ; $7199: $1c
	ld h, e                                          ; $719a: $63
	sbc b                                            ; $719b: $98
	ld b, $81                                        ; $719c: $06 $81
	ld h, b                                          ; $719e: $60
	ldh [hDisp0_OBP1], a                                     ; $719f: $e0 $87
	db $db                                           ; $71a1: $db
	rst $38                                          ; $71a2: $ff
	sub a                                            ; $71a3: $97
	db $10                                           ; $71a4: $10
	ld [$c684], sp                                   ; $71a5: $08 $84 $c6
	db $e3                                           ; $71a8: $e3
	db $e3                                           ; $71a9: $e3
	ld [hl], d                                       ; $71aa: $72
	ld a, d                                          ; $71ab: $7a
	ld a, d                                          ; $71ac: $7a
	or c                                             ; $71ad: $b1
	sbc d                                            ; $71ae: $9a
	ld h, a                                          ; $71af: $67
	scf                                              ; $71b0: $37
	inc sp                                           ; $71b1: $33
	dec de                                           ; $71b2: $1b
	rrca                                             ; $71b3: $0f
	ldh [$c1], a                                     ; $71b4: $e0 $c1
	ld a, l                                          ; $71b6: $7d
	dec c                                            ; $71b7: $0d
	rst SubAFromDE                                          ; $71b8: $df
	rra                                              ; $71b9: $1f
	sbc [hl]                                         ; $71ba: $9e
	sbc a                                            ; $71bb: $9f
	sbc $8f                                          ; $71bc: $de $8f
	db $fc                                           ; $71be: $fc
	sbc h                                            ; $71bf: $9c
	add b                                            ; $71c0: $80
	add c                                            ; $71c1: $81
	add c                                            ; $71c2: $81
	ld a, b                                          ; $71c3: $78
	rst SubAFromBC                                          ; $71c4: $e7
	sbc e                                            ; $71c5: $9b
	ld c, $0c                                        ; $71c6: $0e $0c
	inc c                                            ; $71c8: $0c
	inc e                                            ; $71c9: $1c
	ld a, b                                          ; $71ca: $78
	di                                               ; $71cb: $f3
	rst SubAFromDE                                          ; $71cc: $df
	inc bc                                           ; $71cd: $03
	sbc $07                                          ; $71ce: $de $07
	add b                                            ; $71d0: $80
	nop                                              ; $71d1: $00
	ldh a, [$80]                                     ; $71d2: $f0 $80
	ld b, b                                          ; $71d4: $40

jr_068_71d5:
	jr nz, @-$2e                                     ; $71d5: $20 $d0

	jr nc, jr_068_7231                               ; $71d7: $30 $58

	xor b                                            ; $71d9: $a8
	ldh a, [$80]                                     ; $71da: $f0 $80
	ret nz                                           ; $71dc: $c0

	ldh [$f0], a                                     ; $71dd: $e0 $f0
	ldh a, [$b8]                                     ; $71df: $f0 $b8
	ret c                                            ; $71e1: $d8

	ld d, h                                          ; $71e2: $54
	sbc h                                            ; $71e3: $9c
	ld c, d                                          ; $71e4: $4a
	ld h, $2d                                        ; $71e5: $26 $2d
	add hl, sp                                       ; $71e7: $39

jr_068_71e8:
	sub l                                            ; $71e8: $95
	dec d                                            ; $71e9: $15
	db $ec                                           ; $71ea: $ec
	ld h, h                                          ; $71eb: $64
	or [hl]                                          ; $71ec: $b6
	jp c, $cfdb                                      ; $71ed: $da $db $cf

	rst SubAFromDE                                          ; $71f0: $df
	rst AddAOntoHL                                          ; $71f1: $ef
	adc c                                            ; $71f2: $89
	ld e, e                                          ; $71f3: $5b
	ld c, e                                          ; $71f4: $4b
	dec l                                            ; $71f5: $2d
	inc l                                            ; $71f6: $2c
	inc b                                            ; $71f7: $04
	sbc h                                            ; $71f8: $9c
	sbc h                                            ; $71f9: $9c
	sub [hl]                                         ; $71fa: $96
	and a                                            ; $71fb: $a7
	or a                                             ; $71fc: $b7
	db $d3                                           ; $71fd: $d3
	db $d3                                           ; $71fe: $d3
	ei                                               ; $71ff: $fb
	db $eb                                           ; $7200: $eb
	db $eb                                           ; $7201: $eb
	jp hl                                            ; $7202: $e9


	sub [hl]                                         ; $7203: $96
	jp c, Jump_068_5e5a                              ; $7204: $da $5a $5e

	ld c, h                                          ; $7207: $4c
	db $ec                                           ; $7208: $ec
	sbc $e9                                          ; $7209: $de $e9
	sbc $e5                                          ; $720b: $de $e5
	db $dd                                           ; $720d: $dd
	rst FarCall                                          ; $720e: $f7
	db $dd                                           ; $720f: $dd
	push hl                                          ; $7210: $e5
	ld [hl], l                                       ; $7211: $75
	add h                                            ; $7212: $84
	rst SubAFromDE                                          ; $7213: $df
	rst FarCall                                          ; $7214: $f7
	sbc l                                            ; $7215: $9d
	push af                                          ; $7216: $f5
	ld [hl], l                                       ; $7217: $75
	db $dd                                           ; $7218: $dd
	ld [hl], a                                       ; $7219: $77
	rst SubAFromDE                                          ; $721a: $df
	ld [hl], c                                       ; $721b: $71
	sbc [hl]                                         ; $721c: $9e

jr_068_721d:
	ld a, c                                          ; $721d: $79
	call c, Call_068_7ceb                            ; $721e: $dc $eb $7c
	and [hl]                                         ; $7221: $a6
	sbc [hl]                                         ; $7222: $9e
	ccf                                              ; $7223: $3f
	ld a, b                                          ; $7224: $78
	and d                                            ; $7225: $a2
	rst SubAFromDE                                          ; $7226: $df
	ccf                                              ; $7227: $3f
	sbc $cf                                          ; $7228: $de $cf
	sbc $8e                                          ; $722a: $de $8e
	rst SubAFromDE                                          ; $722c: $df
	inc e                                            ; $722d: $1c
	sbc $7f                                          ; $722e: $de $7f
	rst SubAFromDE                                          ; $7230: $df

jr_068_7231:
	rst $38                                          ; $7231: $ff
	sbc $df                                          ; $7232: $de $df
	rst SubAFromDE                                          ; $7234: $df
	jr jr_068_71d5                                   ; $7235: $18 $9e

Jump_068_7237:
	db $10                                           ; $7237: $10
	db $fc                                           ; $7238: $fc
	sbc b                                            ; $7239: $98
	sbc a                                            ; $723a: $9f
	rra                                              ; $723b: $1f
	ccf                                              ; $723c: $3f
	dec sp                                           ; $723d: $3b
	ld sp, $c3e3                                     ; $723e: $31 $e3 $c3
	ld [hl], a                                       ; $7241: $77
	ld l, e                                          ; $7242: $6b
	ld l, h                                          ; $7243: $6c
	ldh [c], a                                       ; $7244: $e2
	ld l, e                                          ; $7245: $6b
	ld hl, sp-$26                                    ; $7246: $f8 $da
	add b                                            ; $7248: $80
	ld h, a                                          ; $7249: $67
	ldh a, [c]                                       ; $724a: $f2
	sub [hl]                                         ; $724b: $96

jr_068_724c:
	nop                                              ; $724c: $00
	ret nz                                           ; $724d: $c0

	jr nz, jr_068_7260                               ; $724e: $20 $10

	ld [$e428], sp                                   ; $7250: $08 $28 $e4
	call nz, Call_068_7b8c                           ; $7253: $c4 $8c $7b
	ld h, d                                          ; $7256: $62
	adc d                                            ; $7257: $8a
	ld hl, sp-$28                                    ; $7258: $f8 $d8
	inc e                                            ; $725a: $1c
	inc a                                            ; $725b: $3c
	ld [hl], h                                       ; $725c: $74
	ld a, [bc]                                       ; $725d: $0a
	sbc d                                            ; $725e: $9a
	ld a, c                                          ; $725f: $79

jr_068_7260:
	ld h, c                                          ; $7260: $61
	ld c, h                                          ; $7261: $4c
	ld a, d                                          ; $7262: $7a
	halt                                             ; $7263: $76
	ld l, $f6                                        ; $7264: $2e $f6
	and $c7                                          ; $7266: $e6 $c7
	rst SubAFromDE                                          ; $7268: $df
	rst $38                                          ; $7269: $ff
	db $fd                                           ; $726a: $fd
	ld sp, hl                                        ; $726b: $f9
	pop af                                           ; $726c: $f1
	ld l, c                                          ; $726d: $69
	rst $38                                          ; $726e: $ff
	sbc [hl]                                         ; $726f: $9e
	inc bc                                           ; $7270: $03
	ld [hl], b                                       ; $7271: $70
	xor l                                            ; $7272: $ad
	ld a, [hl]                                       ; $7273: $7e
	nop                                              ; $7274: $00
	add b                                            ; $7275: $80
	inc b                                            ; $7276: $04
	ld b, $05                                        ; $7277: $06 $05
	dec de                                           ; $7279: $1b
	ld [de], a                                       ; $727a: $12
	add hl, hl                                       ; $727b: $29
	dec de                                           ; $727c: $1b
	scf                                              ; $727d: $37
	inc [hl]                                         ; $727e: $34
	add hl, bc                                       ; $727f: $09

jr_068_7280:
	ld a, [de]                                       ; $7280: $1a
	inc h                                            ; $7281: $24
	dec l                                            ; $7282: $2d
	ld d, [hl]                                       ; $7283: $56
	ld h, h                                          ; $7284: $64
	ld c, b                                          ; $7285: $48
	ld c, e                                          ; $7286: $4b
	ld [hl], d                                       ; $7287: $72
	ld h, [hl]                                       ; $7288: $66
	ld d, [hl]                                       ; $7289: $56
	inc [hl]                                         ; $728a: $34
	ld [hl], h                                       ; $728b: $74
	ld l, b                                          ; $728c: $68
	ld e, b                                          ; $728d: $58
	jr nc, jr_068_721d                               ; $728e: $30 $8d

	sbc c                                            ; $7290: $99
	xor c                                            ; $7291: $a9
	jp z, $948a                                      ; $7292: $ca $8a $94

	add b                                            ; $7295: $80
	and h                                            ; $7296: $a4
	call z, $1020                                    ; $7297: $cc $20 $10
	jr nc, jr_068_724c                               ; $729a: $30 $b0

	add sp, -$44                                     ; $729c: $e8 $bc
	db $fc                                           ; $729e: $fc
	db $fc                                           ; $729f: $fc
	ld e, b                                          ; $72a0: $58
	ld l, b                                          ; $72a1: $68
	ld c, b                                          ; $72a2: $48
	ret z                                            ; $72a3: $c8

	ld hl, sp-$3c                                    ; $72a4: $f8 $c4
	db $fc                                           ; $72a6: $fc
	add h                                            ; $72a7: $84
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	db $10                                           ; $72aa: $10
	ld [hl], b                                       ; $72ab: $70
	ldh [$d0], a                                     ; $72ac: $e0 $d0
	jr nc, jr_068_7310                               ; $72ae: $30 $60

	nop                                              ; $72b0: $00
	jr @+$6a                                         ; $72b1: $18 $68

	adc b                                            ; $72b3: $88
	db $10                                           ; $72b4: $10
	adc h                                            ; $72b5: $8c
	jr z, jr_068_7280                                ; $72b6: $28 $c8

	sbc b                                            ; $72b8: $98
	ld b, b                                          ; $72b9: $40
	or b                                             ; $72ba: $b0
	ld h, b                                          ; $72bb: $60
	ld d, b                                          ; $72bc: $50
	or b                                             ; $72bd: $b0
	ld h, b                                          ; $72be: $60
	ld h, b                                          ; $72bf: $60
	ret nz                                           ; $72c0: $c0

	or b                                             ; $72c1: $b0
	ld c, b                                          ; $72c2: $48

jr_068_72c3:
	sbc b                                            ; $72c3: $98
	xor b                                            ; $72c4: $a8
	ld c, b                                          ; $72c5: $48
	sub b                                            ; $72c6: $90
	sub b                                            ; $72c7: $90
	jr nz, jr_068_72c3                               ; $72c8: $20 $f9

	halt                                             ; $72ca: $76
	ld b, a                                          ; $72cb: $47
	db $ed                                           ; $72cc: $ed
	jr nz, jr_068_72cf                               ; $72cd: $20 $00

jr_068_72cf:
	sbc [hl]                                         ; $72cf: $9e
	db $dd                                           ; $72d0: $dd
	sbc $99                                          ; $72d1: $de $99
	sbc h                                            ; $72d3: $9c
	xor $55                                          ; $72d4: $ee $55
	sbc c                                            ; $72d6: $99
	sbc $11                                          ; $72d7: $de $11
	ld a, a                                          ; $72d9: $7f
	ei                                               ; $72da: $fb
	sbc h                                            ; $72db: $9c
	nop                                              ; $72dc: $00
	sbc c                                            ; $72dd: $99
	sbc c                                            ; $72de: $99
	ld [hl], e                                       ; $72df: $73
	ei                                               ; $72e0: $fb
	sbc [hl]                                         ; $72e1: $9e
	ld [hl+], a                                      ; $72e2: $22
	ld l, a                                          ; $72e3: $6f
	ei                                               ; $72e4: $fb
	sbc d                                            ; $72e5: $9a
	ld de, $2200                                     ; $72e6: $11 $00 $22
	sbc c                                            ; $72e9: $99
	db $dd                                           ; $72ea: $dd
	db $dd                                           ; $72eb: $dd
	call z, $0146                            ; $72ec: $cc $46 $01
	add h                                            ; $72ef: $84
	ld a, [$fece]                                    ; $72f0: $fa $ce $fe
	call z, $88fc                                    ; $72f3: $cc $fc $88
	cp $80                                           ; $72f6: $fe $80
	rst JumpTable                                          ; $72f8: $c7
	cp a                                             ; $72f9: $bf
	jr c, @+$01                                      ; $72fa: $38 $ff

	rst $38                                          ; $72fc: $ff
	ret nz                                           ; $72fd: $c0

	rst SubAFromDE                                          ; $72fe: $df
	inc a                                            ; $72ff: $3c
	or [hl]                                          ; $7300: $b6
	ld [hl], a                                       ; $7301: $77
	ld c, [hl]                                       ; $7302: $4e
	xor $fc                                          ; $7303: $ee $fc
	cp $f4                                           ; $7305: $fe $f4
	ld a, h                                          ; $7307: $7c
	db $fc                                           ; $7308: $fc
	inc a                                            ; $7309: $3c
	cp $be                                           ; $730a: $fe $be
	ld [$c0d5], a                                    ; $730c: $ea $d5 $c0
	add b                                            ; $730f: $80

jr_068_7310:
	add b                                            ; $7310: $80
	ret nz                                           ; $7311: $c0

	add b                                            ; $7312: $80
	ldh [$c0], a                                     ; $7313: $e0 $c0
	ldh [$c0], a                                     ; $7315: $e0 $c0
	ld [hl], b                                       ; $7317: $70
	ldh [$38], a                                     ; $7318: $e0 $38
	ldh a, [$be]                                     ; $731a: $f0 $be
	db $ec                                           ; $731c: $ec
	xor a                                            ; $731d: $af
	rst SubAFromBC                                          ; $731e: $e7
	ld h, a                                          ; $731f: $67
	db $e3                                           ; $7320: $e3
	ld h, e                                          ; $7321: $63
	pop hl                                           ; $7322: $e1
	di                                               ; $7323: $f3
	ldh [$b1], a                                     ; $7324: $e0 $b1
	ldh [$32], a                                     ; $7326: $e0 $32
	ldh a, [rAUD3LEN]                                ; $7328: $f0 $1b
	ldh a, [$0d]                                     ; $732a: $f0 $0d
	ld hl, sp+$07                                    ; $732c: $f8 $07
	db $fc                                           ; $732e: $fc
	sbc [hl]                                         ; $732f: $9e
	ld [hl], e                                       ; $7330: $73
	db $dd                                           ; $7331: $dd
	ld h, c                                          ; $7332: $61
	sbc e                                            ; $7333: $9b
	ld b, b                                          ; $7334: $40
	ld b, c                                          ; $7335: $41
	ld b, c                                          ; $7336: $41
	inc bc                                           ; $7337: $03
	cp [hl]                                          ; $7338: $be
	add a                                            ; $7339: $87
	add a                                            ; $733a: $87
	add $99                                          ; $733b: $c6 $99
	ld bc, $01c3                                     ; $733d: $01 $c3 $01
	add b                                            ; $7340: $80
	ld bc, $bd01                                     ; $7341: $01 $01 $bd
	ld bc, $0504                                     ; $7344: $01 $04 $05
	ld c, $80                                        ; $7347: $0e $80
	ld [bc], a                                       ; $7349: $02
	ld a, [bc]                                       ; $734a: $0a
	inc b                                            ; $734b: $04
	ld a, [hl-]                                      ; $734c: $3a
	rrca                                             ; $734d: $0f
	ld a, a                                          ; $734e: $7f
	rlca                                             ; $734f: $07
	rst $38                                          ; $7350: $ff
	rlca                                             ; $7351: $07
	rra                                              ; $7352: $1f
	db $e3                                           ; $7353: $e3
	ei                                               ; $7354: $fb
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	inc bc                                           ; $7357: $03
	ld [hl], a                                       ; $7358: $77
	ld sp, hl                                        ; $7359: $f9
	sbc e                                            ; $735a: $9b
	db $dd                                           ; $735b: $dd
	sub a                                            ; $735c: $97
	cp l                                             ; $735d: $bd
	or l                                             ; $735e: $b5
	rst FarCall                                          ; $735f: $f7
	rst SubAFromDE                                          ; $7360: $df
	pop af                                           ; $7361: $f1
	ld a, l                                          ; $7362: $7d
	db $e3                                           ; $7363: $e3
	db $fd                                           ; $7364: $fd
	inc bc                                           ; $7365: $03
	ld e, a                                          ; $7366: $5f
	inc bc                                           ; $7367: $03
	add b                                            ; $7368: $80
	cp e                                             ; $7369: $bb
	rlca                                             ; $736a: $07
	dec de                                           ; $736b: $1b
	rlca                                             ; $736c: $07
	dec e                                            ; $736d: $1d
	rlca                                             ; $736e: $07
	dec de                                           ; $736f: $1b
	dec c                                            ; $7370: $0d
	ccf                                              ; $7371: $3f
	add hl, bc                                       ; $7372: $09
	ccf                                              ; $7373: $3f
	add hl, bc                                       ; $7374: $09
	ld a, a                                          ; $7375: $7f
	add hl, de                                       ; $7376: $19
	rst $38                                          ; $7377: $ff
	add hl, sp                                       ; $7378: $39
	db $fd                                           ; $7379: $fd
	ld a, c                                          ; $737a: $79
	ld sp, hl                                        ; $737b: $f9
	pop af                                           ; $737c: $f1
	ld sp, hl                                        ; $737d: $f9
	ldh a, [$f1]                                     ; $737e: $f0 $f1
	ldh a, [$f1]                                     ; $7380: $f0 $f1
	ldh [$e3], a                                     ; $7382: $e0 $e3
	ret nz                                           ; $7384: $c0

	jp $8780                                         ; $7385: $c3 $80 $87


	cp [hl]                                          ; $7388: $be
	rrca                                             ; $7389: $0f
	rrca                                             ; $738a: $0f
	ld a, [$6053]                                    ; $738b: $fa $53 $60
	sub l                                            ; $738e: $95
	rst $38                                          ; $738f: $ff
	nop                                              ; $7390: $00
	rst $38                                          ; $7391: $ff
	inc a                                            ; $7392: $3c
	adc $6f                                          ; $7393: $ce $6f
	sbc $de                                          ; $7395: $de $de
	db $f4                                           ; $7397: $f4
	ld a, [hl]                                       ; $7398: $7e
	ld h, a                                          ; $7399: $67
	ld h, b                                          ; $739a: $60
	ld c, a                                          ; $739b: $4f
	add b                                            ; $739c: $80
	sbc d                                            ; $739d: $9a
	rst JumpTable                                          ; $739e: $c7
	nop                                              ; $739f: $00
	jp $8101                                         ; $73a0: $c3 $01 $81


	inc hl                                           ; $73a3: $23
	add b                                            ; $73a4: $80
	sub a                                            ; $73a5: $97
	rst $38                                          ; $73a6: $ff
	ld [hl], c                                       ; $73a7: $71
	rst $38                                          ; $73a8: $ff
	ld sp, hl                                        ; $73a9: $f9
	sbc a                                            ; $73aa: $9f
	cp l                                             ; $73ab: $bd
	dec [hl]                                         ; $73ac: $35
	ld [hl], a                                       ; $73ad: $77
	ld d, a                                          ; $73ae: $57
	add b                                            ; $73af: $80
	ld b, a                                          ; $73b0: $47
	and b                                            ; $73b1: $a0
	sbc [hl]                                         ; $73b2: $9e
	ld sp, hl                                        ; $73b3: $f9
	cp a                                             ; $73b4: $bf
	ldh [$bc], a                                     ; $73b5: $e0 $bc
	sbc d                                            ; $73b7: $9a
	ld a, [hl]                                       ; $73b8: $7e
	ldh [c], a                                       ; $73b9: $e2
	rst FarCall                                          ; $73ba: $f7
	db $fc                                           ; $73bb: $fc
	ld a, $37                                        ; $73bc: $3e $37
	and b                                            ; $73be: $a0
	ld a, a                                          ; $73bf: $7f
	cp $7f                                           ; $73c0: $fe $7f
	ld hl, sp+$77                                    ; $73c2: $f8 $77
	and d                                            ; $73c4: $a2
	ld a, a                                          ; $73c5: $7f
	dec de                                           ; $73c6: $1b
	inc sp                                           ; $73c7: $33
	and b                                            ; $73c8: $a0
	sub h                                            ; $73c9: $94
	ld bc, $01ff                                     ; $73ca: $01 $ff $01
	adc a                                            ; $73cd: $8f
	ld bc, $7f75                                     ; $73ce: $01 $75 $7f
	rst GetHLinHL                                          ; $73d1: $cf
	jp hl                                            ; $73d2: $e9


	ld a, l                                          ; $73d3: $7d
	di                                               ; $73d4: $f3
	daa                                              ; $73d5: $27
	and b                                            ; $73d6: $a0
	sbc [hl]                                         ; $73d7: $9e
	ldh a, [$bf]                                     ; $73d8: $f0 $bf
	jp nz, $9acd                                     ; $73da: $c2 $cd $9a

	ld sp, $c2e3                                     ; $73dd: $31 $e3 $c2
	cp [hl]                                          ; $73e0: $be
	ld a, h                                          ; $73e1: $7c
	scf                                              ; $73e2: $37
	and b                                            ; $73e3: $a0
	sbc [hl]                                         ; $73e4: $9e
	rlca                                             ; $73e5: $07
	cp d                                             ; $73e6: $ba
	inc bc                                           ; $73e7: $03
	nop                                              ; $73e8: $00
	ld bc, $0401                                     ; $73e9: $01 $01 $04
	dec b                                            ; $73ec: $05
	ld c, $43                                        ; $73ed: $0e $43
	and b                                            ; $73ef: $a0
	ld a, a                                          ; $73f0: $7f
	and d                                            ; $73f1: $a2
	sbc c                                            ; $73f2: $99
	rrca                                             ; $73f3: $0f
	ld bc, $03f7                                     ; $73f4: $01 $f7 $03
	adc a                                            ; $73f7: $8f
	adc l                                            ; $73f8: $8d
	ld e, a                                          ; $73f9: $5f
	and b                                            ; $73fa: $a0
	ld a, a                                          ; $73fb: $7f
	rst SubAFromHL                                          ; $73fc: $d7
	ld a, a                                          ; $73fd: $7f
	call nc, $369c                                   ; $73fe: $d4 $9c $36
	ld [de], a                                       ; $7401: $12
	inc c                                            ; $7402: $0c
	cp h                                             ; $7403: $bc
	nop                                              ; $7404: $00
	ld [$8301], sp                                   ; $7405: $08 $01 $83
	rst $38                                          ; $7408: $ff
	sub b                                            ; $7409: $90
	db $e3                                           ; $740a: $e3
	ld a, a                                          ; $740b: $7f
	ccf                                              ; $740c: $3f
	cp a                                             ; $740d: $bf
	sbc c                                            ; $740e: $99
	rst SubAFromDE                                          ; $740f: $df
	ld b, h                                          ; $7410: $44
	rst AddAOntoHL                                          ; $7411: $ef
	inc hl                                           ; $7412: $23
	ld [hl], a                                       ; $7413: $77
	db $10                                           ; $7414: $10
	cp e                                             ; $7415: $bb
	db $10                                           ; $7416: $10
	ld hl, sp+$08                                    ; $7417: $f8 $08
	ld l, a                                          ; $7419: $6f
	ldh [$9e], a                                     ; $741a: $e0 $9e
	inc e                                            ; $741c: $1c
	dec de                                           ; $741d: $1b
	ldh [rIE], a                                     ; $741e: $e0 $ff
	sbc e                                            ; $7420: $9b
	scf                                              ; $7421: $37
	ld [de], a                                       ; $7422: $12
	ld a, $2c                                        ; $7423: $3e $2c
	ld [hl], a                                       ; $7425: $77
	sbc $9e                                          ; $7426: $de $9e
	add hl, bc                                       ; $7428: $09
	dec hl                                           ; $7429: $2b
	ldh [$7f], a                                     ; $742a: $e0 $7f
	ret nz                                           ; $742c: $c0

	ld a, e                                          ; $742d: $7b
	ldh [$7b], a                                     ; $742e: $e0 $7b
	rst SubAFromDE                                          ; $7430: $df
	scf                                              ; $7431: $37
	ldh [rOBP1], a                                   ; $7432: $e0 $49
	ld bc, $fa84                                     ; $7434: $01 $84 $fa
	adc $fe                                          ; $7437: $ce $fe
	call z, $8cf8                                    ; $7439: $cc $f8 $8c
	ld hl, sp-$42                                    ; $743c: $f8 $be
	add $ff                                          ; $743e: $c6 $ff
	db $fd                                           ; $7440: $fd
	add e                                            ; $7441: $83
	rst SubAFromDE                                          ; $7442: $df
	inc a                                            ; $7443: $3c
	and [hl]                                         ; $7444: $a6
	ld l, a                                          ; $7445: $6f
	ld c, [hl]                                       ; $7446: $4e
	adc $de                                          ; $7447: $ce $de
	cp $b4                                           ; $7449: $fe $b4
	ld a, [hl]                                       ; $744b: $7e
	db $e4                                           ; $744c: $e4
	inc [hl]                                         ; $744d: $34
	ld hl, sp+$1c                                    ; $744e: $f8 $1c
	cp $be                                           ; $7450: $fe $be
	ldh [$c0], a                                     ; $7452: $e0 $c0
	ret nz                                           ; $7454: $c0

	add b                                            ; $7455: $80
	add b                                            ; $7456: $80
	ret nz                                           ; $7457: $c0

	add b                                            ; $7458: $80
	ldh [$c0], a                                     ; $7459: $e0 $c0
	ldh [$c0], a                                     ; $745b: $e0 $c0
	ld [hl], b                                       ; $745d: $70
	ldh [$38], a                                     ; $745e: $e0 $38
	ldh a, [$be]                                     ; $7460: $f0 $be
	db $ec                                           ; $7462: $ec
	xor a                                            ; $7463: $af
	rst SubAFromBC                                          ; $7464: $e7
	ld h, a                                          ; $7465: $67
	db $e3                                           ; $7466: $e3
	ld h, e                                          ; $7467: $63
	pop hl                                           ; $7468: $e1
	di                                               ; $7469: $f3
	ldh [$b1], a                                     ; $746a: $e0 $b1
	ldh [$32], a                                     ; $746c: $e0 $32
	ldh a, [rAUD3LEN]                                ; $746e: $f0 $1b
	ldh a, [$0d]                                     ; $7470: $f0 $0d
	ld hl, sp+$07                                    ; $7472: $f8 $07
	db $fc                                           ; $7474: $fc
	sbc [hl]                                         ; $7475: $9e
	ld [hl], e                                       ; $7476: $73
	db $dd                                           ; $7477: $dd
	ld h, c                                          ; $7478: $61
	rst SubAFromDE                                          ; $7479: $df
	ld b, b                                          ; $747a: $40
	sub c                                            ; $747b: $91
	ld b, c                                          ; $747c: $41
	inc bc                                           ; $747d: $03
	ld bc, $0087                                     ; $747e: $01 $87 $00
	add [hl]                                         ; $7481: $86
	ld bc, $01c7                                     ; $7482: $01 $c7 $01
	jp $8001                                         ; $7485: $c3 $01 $80


	ld bc, $bd01                                     ; $7488: $01 $01 $bd
	ld bc, $0404                                     ; $748b: $01 $04 $04
	ld c, $80                                        ; $748e: $0e $80
	ld [bc], a                                       ; $7490: $02
	ld a, [bc]                                       ; $7491: $0a
	inc b                                            ; $7492: $04
	ld a, [hl-]                                      ; $7493: $3a
	rrca                                             ; $7494: $0f
	ld a, a                                          ; $7495: $7f
	rlca                                             ; $7496: $07
	ccf                                              ; $7497: $3f
	rst $38                                          ; $7498: $ff
	rst JumpTable                                          ; $7499: $c7
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	inc bc                                           ; $749c: $03
	ld a, a                                          ; $749d: $7f
	di                                               ; $749e: $f3
	sbc a                                            ; $749f: $9f
	reti                                             ; $74a0: $d9


	sub l                                            ; $74a1: $95
	cp a                                             ; $74a2: $bf
	rst FarCall                                          ; $74a3: $f7
	db $fd                                           ; $74a4: $fd
	rst SubAFromHL                                          ; $74a5: $d7
	pop af                                           ; $74a6: $f1
	sbc a                                            ; $74a7: $9f
	or c                                             ; $74a8: $b1
	ld l, l                                          ; $74a9: $6d
	di                                               ; $74aa: $f3
	dec e                                            ; $74ab: $1d
	ld h, e                                          ; $74ac: $63
	rra                                              ; $74ad: $1f
	inc bc                                           ; $74ae: $03
	add b                                            ; $74af: $80
	dec de                                           ; $74b0: $1b
	rlca                                             ; $74b1: $07
	dec de                                           ; $74b2: $1b
	rlca                                             ; $74b3: $07
	dec e                                            ; $74b4: $1d
	rlca                                             ; $74b5: $07
	dec de                                           ; $74b6: $1b
	dec c                                            ; $74b7: $0d
	ccf                                              ; $74b8: $3f
	add hl, bc                                       ; $74b9: $09
	ccf                                              ; $74ba: $3f
	add hl, bc                                       ; $74bb: $09
	ld a, a                                          ; $74bc: $7f
	add hl, de                                       ; $74bd: $19
	rst $38                                          ; $74be: $ff
	add hl, sp                                       ; $74bf: $39
	db $fd                                           ; $74c0: $fd
	ld a, c                                          ; $74c1: $79
	ld sp, hl                                        ; $74c2: $f9
	pop af                                           ; $74c3: $f1
	ld sp, hl                                        ; $74c4: $f9
	ldh a, [$f1]                                     ; $74c5: $f0 $f1
	ldh a, [$f1]                                     ; $74c7: $f0 $f1
	ldh [$e3], a                                     ; $74c9: $e0 $e3
	ret nz                                           ; $74cb: $c0

	jp $8780                                         ; $74cc: $c3 $80 $87


	cp [hl]                                          ; $74cf: $be
	rrca                                             ; $74d0: $0f
	rrca                                             ; $74d1: $0f
	ld a, [$605b]                                    ; $74d2: $fa $5b $60
	sub l                                            ; $74d5: $95
	rst $38                                          ; $74d6: $ff
	nop                                              ; $74d7: $00
	rst $38                                          ; $74d8: $ff
	ld a, $ef                                        ; $74d9: $3e $ef
	ld l, a                                          ; $74db: $6f
	jp z, $f4ce                                      ; $74dc: $ca $ce $f4

	cp $5f                                           ; $74df: $fe $5f
	ld h, b                                          ; $74e1: $60
	ld d, a                                          ; $74e2: $57
	add b                                            ; $74e3: $80
	ld a, a                                          ; $74e4: $7f
	cp $17                                           ; $74e5: $fe $17
	add b                                            ; $74e7: $80
	ld a, a                                          ; $74e8: $7f
	cp $9b                                           ; $74e9: $fe $9b
	rst FarCall                                          ; $74eb: $f7
	ld sp, hl                                        ; $74ec: $f9
	db $db                                           ; $74ed: $db
	db $dd                                           ; $74ee: $dd
	ld a, e                                          ; $74ef: $7b
	ld a, [hl]                                       ; $74f0: $7e
	ld d, e                                          ; $74f1: $53
	add b                                            ; $74f2: $80
	ld c, a                                          ; $74f3: $4f
	and b                                            ; $74f4: $a0
	sbc [hl]                                         ; $74f5: $9e
	pop af                                           ; $74f6: $f1
	cp a                                             ; $74f7: $bf
	ret nz                                           ; $74f8: $c0

	sbc [hl]                                         ; $74f9: $9e
	sbc d                                            ; $74fa: $9a
	ld a, h                                          ; $74fb: $7c
	rst $38                                          ; $74fc: $ff
	rst $38                                          ; $74fd: $ff
	db $e4                                           ; $74fe: $e4
	halt                                             ; $74ff: $76
	dec hl                                           ; $7500: $2b
	and b                                            ; $7501: $a0
	cp [hl]                                          ; $7502: $be
	jp nz, $0180                                     ; $7503: $c2 $80 $01

	ld a, e                                          ; $7506: $7b
	sbc [hl]                                         ; $7507: $9e
	scf                                              ; $7508: $37
	and b                                            ; $7509: $a0
	sub c                                            ; $750a: $91
	rst $38                                          ; $750b: $ff
	ld bc, $010f                                     ; $750c: $01 $0f $01
	ld [hl], a                                       ; $750f: $77
	ld a, c                                          ; $7510: $79
	rst $38                                          ; $7511: $ff
	db $fd                                           ; $7512: $fd
	adc a                                            ; $7513: $8f
	cp c                                             ; $7514: $b9
	ld a, l                                          ; $7515: $7d
	di                                               ; $7516: $f3
	ld a, l                                          ; $7517: $7d
	inc bc                                           ; $7518: $03
	cpl                                              ; $7519: $2f
	and b                                            ; $751a: $a0
	ld [hl], a                                       ; $751b: $77
	xor h                                            ; $751c: $ac
	ld a, a                                          ; $751d: $7f
	and [hl]                                         ; $751e: $a6
	sbc e                                            ; $751f: $9b
	db $e3                                           ; $7520: $e3
	jp nz, $3cfc                                     ; $7521: $c2 $fc $3c

	cpl                                              ; $7524: $2f
	and b                                            ; $7525: $a0
	ld a, a                                          ; $7526: $7f
	xor $17                                          ; $7527: $ee $17
	and b                                            ; $7529: $a0
	sbc [hl]                                         ; $752a: $9e
	rra                                              ; $752b: $1f
	ld a, e                                          ; $752c: $7b
	sbc [hl]                                         ; $752d: $9e
	sbc d                                            ; $752e: $9a
	rst FarCall                                          ; $752f: $f7
	dec b                                            ; $7530: $05
	rrca                                             ; $7531: $0f
	add hl, bc                                       ; $7532: $09
	db $fd                                           ; $7533: $fd
	ld h, e                                          ; $7534: $63
	and b                                            ; $7535: $a0
	ld a, a                                          ; $7536: $7f
	reti                                             ; $7537: $d9


	sbc b                                            ; $7538: $98
	ld b, c                                          ; $7539: $41
	ld bc, $223e                                     ; $753a: $01 $3e $22
	inc d                                            ; $753d: $14
	inc c                                            ; $753e: $0c
	nop                                              ; $753f: $00
	cp l                                             ; $7540: $bd
	inc c                                            ; $7541: $0c
	ld bc, $ff83                                     ; $7542: $01 $83 $ff
	sub b                                            ; $7545: $90
	db $e3                                           ; $7546: $e3
	ld a, a                                          ; $7547: $7f
	ccf                                              ; $7548: $3f
	cp a                                             ; $7549: $bf
	sbc c                                            ; $754a: $99
	rst SubAFromDE                                          ; $754b: $df
	ld b, h                                          ; $754c: $44
	rst AddAOntoHL                                          ; $754d: $ef
	inc hl                                           ; $754e: $23
	ld [hl], a                                       ; $754f: $77
	db $10                                           ; $7550: $10
	cp e                                             ; $7551: $bb
	db $10                                           ; $7552: $10
	ld hl, sp+$08                                    ; $7553: $f8 $08
	ld a, e                                          ; $7555: $7b
	ldh [$9b], a                                     ; $7556: $e0 $9b
	nop                                              ; $7558: $00
	halt                                             ; $7559: $76
	ld [hl+], a                                      ; $755a: $22
	inc a                                            ; $755b: $3c

jr_068_755c:
	cp h                                             ; $755c: $bc
	nop                                              ; $755d: $00
	inc c                                            ; $755e: $0c
	ld bc, $ff83                                     ; $755f: $01 $83 $ff
	ld b, e                                          ; $7562: $43
	ldh [$7f], a                                     ; $7563: $e0 $7f
	ld [$7698], a                                    ; $7565: $ea $98 $76
	ld h, [hl]                                       ; $7568: $66
	ld a, [hl]                                       ; $7569: $7e
	inc h                                            ; $756a: $24
	inc e                                            ; $756b: $1c
	jr jr_068_756e                                   ; $756c: $18 $00

jr_068_756e:
	cp [hl]                                          ; $756e: $be
	dec c                                            ; $756f: $0d
	add e                                            ; $7570: $83
	rst $38                                          ; $7571: $ff
	scf                                              ; $7572: $37
	ldh [$9e], a                                     ; $7573: $e0 $9e
	ld [hl], d                                       ; $7575: $72
	ld a, e                                          ; $7576: $7b
	ldh [$9e], a                                     ; $7577: $e0 $9e
	inc e                                            ; $7579: $1c
	cpl                                              ; $757a: $2f
	ldh [rKEY1], a                                   ; $757b: $e0 $4d
	ld bc, $fa81                                     ; $757d: $01 $81 $fa
	adc $fe                                          ; $7580: $ce $fe
	call z, $88fc                                    ; $7582: $cc $fc $88
	jp nz, $bebc                                     ; $7585: $c2 $bc $be

	rst $38                                          ; $7588: $ff
	ld a, l                                          ; $7589: $7d
	jp $1cff                                         ; $758a: $c3 $ff $1c


	or $3f                                           ; $758d: $f6 $3f
	ld b, [hl]                                       ; $758f: $46
	and $ce                                          ; $7590: $e6 $ce
	adc $bc                                          ; $7592: $ce $bc
	ld a, [hl]                                       ; $7594: $7e
	or h                                             ; $7595: $b4
	ld a, h                                          ; $7596: $7c
	call nc, $fe34                                   ; $7597: $d4 $34 $fe
	jr jr_068_755c                                   ; $759a: $18 $c0

	nop                                              ; $759c: $00
	ld a, e                                          ; $759d: $7b
	cp $80                                           ; $759e: $fe $80
	add b                                            ; $75a0: $80
	ret nz                                           ; $75a1: $c0

	add b                                            ; $75a2: $80
	ldh [$c0], a                                     ; $75a3: $e0 $c0
	ldh [$c0], a                                     ; $75a5: $e0 $c0
	ld [hl], b                                       ; $75a7: $70
	ldh [$38], a                                     ; $75a8: $e0 $38
	ldh a, [$be]                                     ; $75aa: $f0 $be
	db $ec                                           ; $75ac: $ec
	xor a                                            ; $75ad: $af
	rst SubAFromBC                                          ; $75ae: $e7
	ld h, a                                          ; $75af: $67
	db $e3                                           ; $75b0: $e3
	ld h, e                                          ; $75b1: $63
	pop hl                                           ; $75b2: $e1
	di                                               ; $75b3: $f3
	ldh [$b1], a                                     ; $75b4: $e0 $b1
	ldh [$32], a                                     ; $75b6: $e0 $32
	ldh a, [rAUD3LEN]                                ; $75b8: $f0 $1b
	ldh a, [$0d]                                     ; $75ba: $f0 $0d
	ld hl, sp+$07                                    ; $75bc: $f8 $07
	db $fc                                           ; $75be: $fc
	sbc [hl]                                         ; $75bf: $9e
	ld [hl], e                                       ; $75c0: $73
	db $dd                                           ; $75c1: $dd
	ld h, c                                          ; $75c2: $61
	sbc c                                            ; $75c3: $99
	ld b, b                                          ; $75c4: $40
	ld b, c                                          ; $75c5: $41
	ld b, b                                          ; $75c6: $40
	inc bc                                           ; $75c7: $03
	nop                                              ; $75c8: $00
	add a                                            ; $75c9: $87
	ld a, e                                          ; $75ca: $7b
	cp $94                                           ; $75cb: $fe $94
	rst JumpTable                                          ; $75cd: $c7
	ld bc, $01c2                                     ; $75ce: $01 $c2 $01
	add b                                            ; $75d1: $80
	ld bc, $0001                                     ; $75d2: $01 $01 $00
	ld bc, $0400                                     ; $75d5: $01 $00 $04
	ld a, e                                          ; $75d8: $7b
	cp $80                                           ; $75d9: $fe $80
	ld c, $02                                        ; $75db: $0e $02
	ld a, [bc]                                       ; $75dd: $0a
	inc b                                            ; $75de: $04
	ld a, [hl-]                                      ; $75df: $3a
	rrca                                             ; $75e0: $0f
	ld a, a                                          ; $75e1: $7f
	rlca                                             ; $75e2: $07
	rst JumpTable                                          ; $75e3: $c7
	ccf                                              ; $75e4: $3f
	ccf                                              ; $75e5: $3f
	rst $38                                          ; $75e6: $ff
	rst SubAFromDE                                          ; $75e7: $df
	db $e3                                           ; $75e8: $e3
	rst $38                                          ; $75e9: $ff

Call_068_75ea:
	ld [hl], e                                       ; $75ea: $73
	rst $38                                          ; $75eb: $ff
	ld sp, hl                                        ; $75ec: $f9
	sbc e                                            ; $75ed: $9b
	sbc l                                            ; $75ee: $9d
	sub l                                            ; $75ef: $95
	cp a                                             ; $75f0: $bf
	rst FarCall                                          ; $75f1: $f7
	pop af                                           ; $75f2: $f1
	rst SubAFromDE                                          ; $75f3: $df
	pop af                                           ; $75f4: $f1
	ld l, l                                          ; $75f5: $6d
	di                                               ; $75f6: $f3
	dec e                                            ; $75f7: $1d
	ld h, e                                          ; $75f8: $63
	rra                                              ; $75f9: $1f
	add b                                            ; $75fa: $80
	inc bc                                           ; $75fb: $03
	dec de                                           ; $75fc: $1b
	rlca                                             ; $75fd: $07
	dec de                                           ; $75fe: $1b
	rlca                                             ; $75ff: $07
	dec e                                            ; $7600: $1d
	rlca                                             ; $7601: $07
	dec de                                           ; $7602: $1b
	dec c                                            ; $7603: $0d
	ccf                                              ; $7604: $3f
	add hl, bc                                       ; $7605: $09
	ccf                                              ; $7606: $3f
	add hl, bc                                       ; $7607: $09
	ld a, a                                          ; $7608: $7f
	add hl, de                                       ; $7609: $19
	rst $38                                          ; $760a: $ff
	add hl, sp                                       ; $760b: $39
	db $fd                                           ; $760c: $fd
	ld a, c                                          ; $760d: $79
	ld sp, hl                                        ; $760e: $f9
	pop af                                           ; $760f: $f1
	ld sp, hl                                        ; $7610: $f9
	ldh a, [$f1]                                     ; $7611: $f0 $f1
	ldh a, [$f1]                                     ; $7613: $f0 $f1
	ldh [$e3], a                                     ; $7615: $e0 $e3
	ret nz                                           ; $7617: $c0

	jp Jump_068_7f80                                 ; $7618: $c3 $80 $7f


	or d                                             ; $761b: $b2
	sbc [hl]                                         ; $761c: $9e
	rrca                                             ; $761d: $0f
	ld a, e                                          ; $761e: $7b
	cp $53                                           ; $761f: $fe $53
	ld h, b                                          ; $7621: $60
	sub [hl]                                         ; $7622: $96
	nop                                              ; $7623: $00
	rst SubAFromDE                                          ; $7624: $df
	inc a                                            ; $7625: $3c
	cp [hl]                                          ; $7626: $be
	ld a, a                                          ; $7627: $7f
	xor $6e                                          ; $7628: $ee $6e
	call z, $5fce                                    ; $762a: $cc $ce $5f
	ld h, b                                          ; $762d: $60
	ld c, e                                          ; $762e: $4b
	add b                                            ; $762f: $80
	sbc l                                            ; $7630: $9d
	nop                                              ; $7631: $00
	jp $801f                                         ; $7632: $c3 $1f $80


	sub [hl]                                         ; $7635: $96
	inc bc                                           ; $7636: $03
	rst FarCall                                          ; $7637: $f7
	ld a, c                                          ; $7638: $79
	ei                                               ; $7639: $fb
	db $fd                                           ; $763a: $fd
	sub a                                            ; $763b: $97
	sbc l                                            ; $763c: $9d
	or l                                             ; $763d: $b5
	or a                                             ; $763e: $b7
	ld d, a                                          ; $763f: $57
	add b                                            ; $7640: $80
	ld c, a                                          ; $7641: $4f
	and b                                            ; $7642: $a0
	ld a, a                                          ; $7643: $7f
	cp $94                                           ; $7644: $fe $94
	ret                                              ; $7646: $c9


	jr nc, @-$1e                                     ; $7647: $30 $e0

	nop                                              ; $7649: $00
	cp h                                             ; $764a: $bc
	ld a, [hl]                                       ; $764b: $7e
	db $e3                                           ; $764c: $e3
	rst FarCall                                          ; $764d: $f7
	call c, $fe3e                                    ; $764e: $dc $3e $fe
	ld [hl], a                                       ; $7651: $77
	ld [bc], a                                       ; $7652: $02
	ld b, e                                          ; $7653: $43
	and b                                            ; $7654: $a0
	sbc e                                            ; $7655: $9b
	jp nz, $8000                                     ; $7656: $c2 $00 $80

	nop                                              ; $7659: $00
	sbc $01                                          ; $765a: $de $01
	inc sp                                           ; $765c: $33
	and b                                            ; $765d: $a0
	sub c                                            ; $765e: $91
	rst $38                                          ; $765f: $ff
	ld bc, $011f                                     ; $7660: $01 $1f $01
	ld l, a                                          ; $7663: $6f
	ld [hl], c                                       ; $7664: $71
	rst $38                                          ; $7665: $ff
	db $fd                                           ; $7666: $fd
	sub a                                            ; $7667: $97
	cp c                                             ; $7668: $b9
	ld l, l                                          ; $7669: $6d
	di                                               ; $766a: $f3
	ld a, l                                          ; $766b: $7d
	inc bc                                           ; $766c: $03
	cpl                                              ; $766d: $2f
	and b                                            ; $766e: $a0
	sub l                                            ; $766f: $95
	ld sp, hl                                        ; $7670: $f9
	nop                                              ; $7671: $00
	ldh a, [rP1]                                     ; $7672: $f0 $00
	adc $30                                          ; $7674: $ce $30
	pop hl                                           ; $7676: $e1
	pop bc                                           ; $7677: $c1
	cp [hl]                                          ; $7678: $be
	ld a, [hl]                                       ; $7679: $7e
	dec de                                           ; $767a: $1b
	and b                                            ; $767b: $a0
	cp $27                                           ; $767c: $fe $27
	and b                                            ; $767e: $a0
	ld a, a                                          ; $767f: $7f
	cp $99                                           ; $7680: $fe $99
	rst FarCall                                          ; $7682: $f7
	dec b                                            ; $7683: $05
	adc a                                            ; $7684: $8f
	adc c                                            ; $7685: $89
	db $fd                                           ; $7686: $fd
	ld [hl], e                                       ; $7687: $73
	ld h, a                                          ; $7688: $67
	and b                                            ; $7689: $a0
	ld a, a                                          ; $768a: $7f
	reti                                             ; $768b: $d9


	ld a, a                                          ; $768c: $7f
	jp nc, $369c                                     ; $768d: $d2 $9c $36

	ld [hl-], a                                      ; $7690: $32
	inc e                                            ; $7691: $1c
	cp $9e                                           ; $7692: $fe $9e
	inc c                                            ; $7694: $0c
	ld a, e                                          ; $7695: $7b
	ret z                                            ; $7696: $c8

	adc l                                            ; $7697: $8d
	add e                                            ; $7698: $83
	nop                                              ; $7699: $00
	rst $38                                          ; $769a: $ff
	db $e3                                           ; $769b: $e3
	ld a, a                                          ; $769c: $7f
	ccf                                              ; $769d: $3f
	cp a                                             ; $769e: $bf
	sbc c                                            ; $769f: $99
	rst SubAFromDE                                          ; $76a0: $df
	ld b, h                                          ; $76a1: $44
	rst AddAOntoHL                                          ; $76a2: $ef
	inc hl                                           ; $76a3: $23
	ld [hl], a                                       ; $76a4: $77
	db $10                                           ; $76a5: $10
	cp e                                             ; $76a6: $bb
	db $10                                           ; $76a7: $10
	ld hl, sp+$08                                    ; $76a8: $f8 $08
	ld [hl], a                                       ; $76aa: $77
	ldh [$9b], a                                     ; $76ab: $e0 $9b
	ld a, $32                                        ; $76ad: $3e $32
	inc a                                            ; $76af: $3c
	inc d                                            ; $76b0: $14
	rla                                              ; $76b1: $17
	ldh [$9b], a                                     ; $76b2: $e0 $9b
	ld a, [hl-]                                      ; $76b4: $3a
	ld [hl-], a                                      ; $76b5: $32
	ld a, $1c                                        ; $76b6: $3e $1c
	ld [hl], a                                       ; $76b8: $77
	cp [hl]                                          ; $76b9: $be
	sbc [hl]                                         ; $76ba: $9e
	dec c                                            ; $76bb: $0d
	dec hl                                           ; $76bc: $2b
	ldh [$9b], a                                     ; $76bd: $e0 $9b
	ld a, [hl]                                       ; $76bf: $7e
	ld a, [hl-]                                      ; $76c0: $3a
	ld a, $26                                        ; $76c1: $3e $26
	ld [hl], a                                       ; $76c3: $77
	rst SubAFromDE                                          ; $76c4: $df
	sbc [hl]                                         ; $76c5: $9e
	add hl, bc                                       ; $76c6: $09
	dec sp                                           ; $76c7: $3b
	ldh [rSCY], a                                    ; $76c8: $e0 $42
	ld bc, $fa82                                     ; $76ca: $01 $82 $fa
	adc $fe                                          ; $76cd: $ce $fe
	call z, $88fc                                    ; $76cf: $cc $fc $88
	ldh [$9e], a                                     ; $76d2: $e0 $9e
	sbc [hl]                                         ; $76d4: $9e
	rst $38                                          ; $76d5: $ff
	db $fc                                           ; $76d6: $fc
	inc bc                                           ; $76d7: $03
	rst $38                                          ; $76d8: $ff
	inc e                                            ; $76d9: $1c
	or $3f                                           ; $76da: $f6 $3f
	ld h, [hl]                                       ; $76dc: $66
	and $ce                                          ; $76dd: $e6 $ce
	adc $bc                                          ; $76df: $ce $bc
	ld a, [hl]                                       ; $76e1: $7e
	or h                                             ; $76e2: $b4
	ld a, h                                          ; $76e3: $7c
	call nc, $fe34                                   ; $76e4: $d4 $34 $fe
	jr @-$3e                                         ; $76e7: $18 $c0

	cp a                                             ; $76e9: $bf
	ret nz                                           ; $76ea: $c0

	ret nz                                           ; $76eb: $c0

	add b                                            ; $76ec: $80
	add b                                            ; $76ed: $80
	ret nz                                           ; $76ee: $c0

	add b                                            ; $76ef: $80
	ldh [$c0], a                                     ; $76f0: $e0 $c0
	ldh [$c0], a                                     ; $76f2: $e0 $c0
	ld [hl], b                                       ; $76f4: $70
	ldh [$38], a                                     ; $76f5: $e0 $38
	ldh a, [$be]                                     ; $76f7: $f0 $be
	db $ec                                           ; $76f9: $ec
	xor a                                            ; $76fa: $af
	rst SubAFromBC                                          ; $76fb: $e7
	ld h, a                                          ; $76fc: $67
	db $e3                                           ; $76fd: $e3
	ld h, e                                          ; $76fe: $63
	pop hl                                           ; $76ff: $e1
	di                                               ; $7700: $f3
	ldh [$b1], a                                     ; $7701: $e0 $b1
	ldh [$32], a                                     ; $7703: $e0 $32
	ldh a, [rAUD3LEN]                                ; $7705: $f0 $1b
	ldh a, [$0d]                                     ; $7707: $f0 $0d
	ld hl, sp+$07                                    ; $7709: $f8 $07
	db $fc                                           ; $770b: $fc
	sbc [hl]                                         ; $770c: $9e
	ld [hl], e                                       ; $770d: $73
	db $dd                                           ; $770e: $dd
	ld h, c                                          ; $770f: $61
	sbc e                                            ; $7710: $9b
	ld b, b                                          ; $7711: $40
	ld b, c                                          ; $7712: $41
	ld b, b                                          ; $7713: $40
	inc bc                                           ; $7714: $03
	cp [hl]                                          ; $7715: $be
	add a                                            ; $7716: $87
	add a                                            ; $7717: $87
	rst JumpTable                                          ; $7718: $c7
	sbc c                                            ; $7719: $99
	ld bc, $01c2                                     ; $771a: $01 $c2 $01
	add b                                            ; $771d: $80
	ld bc, $bd01                                     ; $771e: $01 $01 $bd
	ld bc, $0404                                     ; $7721: $01 $04 $04
	ld c, $80                                        ; $7724: $0e $80
	ld [bc], a                                       ; $7726: $02
	ld a, [bc]                                       ; $7727: $0a
	inc b                                            ; $7728: $04
	ld a, [hl-]                                      ; $7729: $3a
	rrca                                             ; $772a: $0f
	ld a, a                                          ; $772b: $7f
	rlca                                             ; $772c: $07
	rst GetHLinHL                                          ; $772d: $cf
	ccf                                              ; $772e: $3f
	ccf                                              ; $772f: $3f
	di                                               ; $7730: $f3
	rst SubAFromDE                                          ; $7731: $df
	db $e3                                           ; $7732: $e3
	rst $38                                          ; $7733: $ff
	ld [hl], e                                       ; $7734: $73
	rst $38                                          ; $7735: $ff
	ld sp, hl                                        ; $7736: $f9
	sbc e                                            ; $7737: $9b
	sbc l                                            ; $7738: $9d
	sub l                                            ; $7739: $95
	cp a                                             ; $773a: $bf
	rst FarCall                                          ; $773b: $f7
	pop af                                           ; $773c: $f1
	rst SubAFromDE                                          ; $773d: $df
	pop af                                           ; $773e: $f1
	ld l, l                                          ; $773f: $6d
	di                                               ; $7740: $f3
	dec e                                            ; $7741: $1d
	ld h, e                                          ; $7742: $63
	rra                                              ; $7743: $1f
	inc bc                                           ; $7744: $03
	add b                                            ; $7745: $80
	dec de                                           ; $7746: $1b
	rlca                                             ; $7747: $07
	dec de                                           ; $7748: $1b
	rlca                                             ; $7749: $07
	dec e                                            ; $774a: $1d
	rlca                                             ; $774b: $07
	dec de                                           ; $774c: $1b
	dec c                                            ; $774d: $0d
	ccf                                              ; $774e: $3f
	add hl, bc                                       ; $774f: $09
	ccf                                              ; $7750: $3f
	add hl, bc                                       ; $7751: $09

jr_068_7752:
	ld a, a                                          ; $7752: $7f
	add hl, de                                       ; $7753: $19
	rst $38                                          ; $7754: $ff
	add hl, sp                                       ; $7755: $39
	db $fd                                           ; $7756: $fd
	ld a, c                                          ; $7757: $79
	ld sp, hl                                        ; $7758: $f9
	pop af                                           ; $7759: $f1
	ld sp, hl                                        ; $775a: $f9
	ldh a, [$f1]                                     ; $775b: $f0 $f1
	ldh a, [$f1]                                     ; $775d: $f0 $f1
	ldh [$e3], a                                     ; $775f: $e0 $e3
	ret nz                                           ; $7761: $c0

	jp $8780                                         ; $7762: $c3 $80 $87


	cp [hl]                                          ; $7765: $be
	rrca                                             ; $7766: $0f
	rrca                                             ; $7767: $0f
	ld a, [$6057]                                    ; $7768: $fa $57 $60
	sub [hl]                                         ; $776b: $96
	nop                                              ; $776c: $00
	rst $38                                          ; $776d: $ff
	inc a                                            ; $776e: $3c
	and l                                            ; $776f: $a5
	ld h, [hl]                                       ; $7770: $66
	ld c, [hl]                                       ; $7771: $4e
	rst GetHLinHL                                          ; $7772: $cf
	db $fc                                           ; $7773: $fc
	cp $5f                                           ; $7774: $fe $5f
	ld h, b                                          ; $7776: $60
	ld c, e                                          ; $7777: $4b
	add b                                            ; $7778: $80
	sbc l                                            ; $7779: $9d
	nop                                              ; $777a: $00
	jp $801f                                         ; $777b: $c3 $1f $80


	ld a, a                                          ; $777e: $7f
	ret nz                                           ; $777f: $c0

	sbc b                                            ; $7780: $98
	ld [hl], c                                       ; $7781: $71
	rst $38                                          ; $7782: $ff
	ld sp, hl                                        ; $7783: $f9
	sub e                                            ; $7784: $93
	cp l                                             ; $7785: $bd
	push af                                          ; $7786: $f5
	rst FarCall                                          ; $7787: $f7
	ld d, a                                          ; $7788: $57
	add b                                            ; $7789: $80
	ld c, e                                          ; $778a: $4b
	and b                                            ; $778b: $a0
	ld a, a                                          ; $778c: $7f
	ret nz                                           ; $778d: $c0

	sub l                                            ; $778e: $95
	jr nc, jr_068_7752                               ; $778f: $30 $c1

	nop                                              ; $7791: $00
	db $fc                                           ; $7792: $fc
	ld a, $e2                                        ; $7793: $3e $e2
	rst AddAOntoHL                                          ; $7795: $ef
	db $fc                                           ; $7796: $fc
	ld a, $fe                                        ; $7797: $3e $fe
	cp [hl]                                          ; $7799: $be
	ret nz                                           ; $779a: $c0

	ret nz                                           ; $779b: $c0

	ld [hl], e                                       ; $779c: $73
	ld c, e                                          ; $779d: $4b
	and b                                            ; $779e: $a0
	sbc [hl]                                         ; $779f: $9e
	jp nz, $80bf                                     ; $77a0: $c2 $bf $80

	ld bc, $9e7b                                     ; $77a3: $01 $7b $9e
	inc sp                                           ; $77a6: $33
	and b                                            ; $77a7: $a0
	sub d                                            ; $77a8: $92
	ld bc, $011f                                     ; $77a9: $01 $1f $01
	ld [hl], a                                       ; $77ac: $77
	ld a, c                                          ; $77ad: $79
	cp l                                             ; $77ae: $bd
	cp a                                             ; $77af: $bf
	rst SubAFromHL                                          ; $77b0: $d7
	ld sp, hl                                        ; $77b1: $f9
	db $ed                                           ; $77b2: $ed
	ld [hl], e                                       ; $77b3: $73
	ld a, l                                          ; $77b4: $7d
	inc bc                                           ; $77b5: $03
	cpl                                              ; $77b6: $2f
	and b                                            ; $77b7: $a0
	sbc [hl]                                         ; $77b8: $9e
	pop hl                                           ; $77b9: $e1
	cp [hl]                                          ; $77ba: $be
	ret nz                                           ; $77bb: $c0

	db $fc                                           ; $77bc: $fc
	pop hl                                           ; $77bd: $e1
	sbc e                                            ; $77be: $9b
	add d                                            ; $77bf: $82
	ld a, [$fc7c]                                    ; $77c0: $fa $7c $fc
	inc bc                                           ; $77c3: $03
	and b                                            ; $77c4: $a0
	scf                                              ; $77c5: $37
	and b                                            ; $77c6: $a0
	sub a                                            ; $77c7: $97
	rrca                                             ; $77c8: $0f
	ld bc, $017f                                     ; $77c9: $01 $7f $01
	adc a                                            ; $77cc: $8f
	adc l                                            ; $77cd: $8d
	ld l, l                                          ; $77ce: $6d
	di                                               ; $77cf: $f3
	ld h, a                                          ; $77d0: $67
	and b                                            ; $77d1: $a0
	cp a                                             ; $77d2: $bf
	inc b                                            ; $77d3: $04
	nop                                              ; $77d4: $00
	sbc d                                            ; $77d5: $9a
	ld e, $0a                                        ; $77d6: $1e $0a
	ld [hl], $10                                     ; $77d8: $36 $10
	nop                                              ; $77da: $00
	cp l                                             ; $77db: $bd
	inc c                                            ; $77dc: $0c
	ld bc, $ff83                                     ; $77dd: $01 $83 $ff
	sub b                                            ; $77e0: $90
	db $e3                                           ; $77e1: $e3
	ld a, a                                          ; $77e2: $7f
	ccf                                              ; $77e3: $3f
	cp a                                             ; $77e4: $bf
	sbc c                                            ; $77e5: $99
	rst SubAFromDE                                          ; $77e6: $df
	ld b, h                                          ; $77e7: $44
	rst AddAOntoHL                                          ; $77e8: $ef
	inc hl                                           ; $77e9: $23
	ld [hl], a                                       ; $77ea: $77
	db $10                                           ; $77eb: $10
	cp e                                             ; $77ec: $bb
	db $10                                           ; $77ed: $10
	ld hl, sp+$08                                    ; $77ee: $f8 $08
	ld [hl], e                                       ; $77f0: $73
	ldh [$9c], a                                     ; $77f1: $e0 $9c
	ld c, $3a                                        ; $77f3: $0e $3a
	ld [de], a                                       ; $77f5: $12
	rrca                                             ; $77f6: $0f
	ldh [$9c], a                                     ; $77f7: $e0 $9c
	ld a, $16                                        ; $77f9: $3e $16
	inc e                                            ; $77fb: $1c
	cp l                                             ; $77fc: $bd
	nop                                              ; $77fd: $00
	dec c                                            ; $77fe: $0d
	add e                                            ; $77ff: $83
	rst $38                                          ; $7800: $ff
	dec hl                                           ; $7801: $2b
	ldh [$9e], a                                     ; $7802: $e0 $9e
	ld e, $7b                                        ; $7804: $1e $7b
	rst SubAFromDE                                          ; $7806: $df
	sbc [hl]                                         ; $7807: $9e
	add hl, bc                                       ; $7808: $09
	dec sp                                           ; $7809: $3b
	ldh [rKEY1], a                                   ; $780a: $e0 $4d
	ld bc, $fa84                                     ; $780c: $01 $84 $fa
	adc $fe                                          ; $780f: $ce $fe
	call z, $88fc                                    ; $7811: $cc $fc $88
	add d                                            ; $7814: $82
	db $fc                                           ; $7815: $fc
	cp $ff                                           ; $7816: $fe $ff
	db $fd                                           ; $7818: $fd
	inc bc                                           ; $7819: $03
	db $e3                                           ; $781a: $e3
	inc e                                            ; $781b: $1c
	or e                                             ; $781c: $b3
	ld b, b                                          ; $781d: $40
	cp $3f                                           ; $781e: $fe $3f
	rst SubAFromBC                                          ; $7820: $e7
	ld l, a                                          ; $7821: $6f
	db $ec                                           ; $7822: $ec
	cp $b4                                           ; $7823: $fe $b4
	inc a                                            ; $7825: $3c
	sbc $1c                                          ; $7826: $de $1c
	ldh [$be], a                                     ; $7828: $e0 $be
	ret nz                                           ; $782a: $c0

	ret nz                                           ; $782b: $c0

	ret nz                                           ; $782c: $c0

	add b                                            ; $782d: $80
	add b                                            ; $782e: $80
	ret nz                                           ; $782f: $c0

	add b                                            ; $7830: $80
	ldh [$c0], a                                     ; $7831: $e0 $c0
	ldh [$c0], a                                     ; $7833: $e0 $c0
	ld [hl], b                                       ; $7835: $70
	ldh [$38], a                                     ; $7836: $e0 $38
	ldh a, [$be]                                     ; $7838: $f0 $be
	db $ec                                           ; $783a: $ec
	xor a                                            ; $783b: $af
	rst SubAFromBC                                          ; $783c: $e7
	ld h, a                                          ; $783d: $67
	db $e3                                           ; $783e: $e3
	ld h, e                                          ; $783f: $63
	pop hl                                           ; $7840: $e1
	di                                               ; $7841: $f3
	ldh [$b1], a                                     ; $7842: $e0 $b1
	ldh [$32], a                                     ; $7844: $e0 $32
	ldh a, [rAUD3LEN]                                ; $7846: $f0 $1b
	ldh a, [$0d]                                     ; $7848: $f0 $0d
	ld hl, sp+$07                                    ; $784a: $f8 $07
	db $fc                                           ; $784c: $fc
	sbc [hl]                                         ; $784d: $9e
	ld [hl], e                                       ; $784e: $73
	db $dd                                           ; $784f: $dd
	ld h, c                                          ; $7850: $61
	sbc e                                            ; $7851: $9b
	ld b, b                                          ; $7852: $40
	ld b, c                                          ; $7853: $41
	ld b, b                                          ; $7854: $40
	inc bc                                           ; $7855: $03
	cp h                                             ; $7856: $bc
	add a                                            ; $7857: $87
	add a                                            ; $7858: $87
	rst JumpTable                                          ; $7859: $c7
	jp $9d00                                         ; $785a: $c3 $00 $9d


	add c                                            ; $785d: $81
	ld bc, $01bd                                     ; $785e: $01 $bd $01
	inc b                                            ; $7861: $04
	inc b                                            ; $7862: $04
	ld c, $80                                        ; $7863: $0e $80
	ld [bc], a                                       ; $7865: $02
	ld a, [bc]                                       ; $7866: $0a
	inc b                                            ; $7867: $04
	ld a, [hl-]                                      ; $7868: $3a
	rrca                                             ; $7869: $0f
	ld [hl], a                                       ; $786a: $77
	rrca                                             ; $786b: $0f
	rst SubAFromDE                                          ; $786c: $df
	ccf                                              ; $786d: $3f
	dec hl                                           ; $786e: $2b
	rst FarCall                                          ; $786f: $f7
	rst SubAFromDE                                          ; $7870: $df
	db $e3                                           ; $7871: $e3
	rst GetHLinHL                                          ; $7872: $cf
	inc sp                                           ; $7873: $33
	adc a                                            ; $7874: $8f
	ld bc, $7977                                     ; $7875: $01 $77 $79

Call_068_7878:
	db $fd                                           ; $7878: $fd
	rst $38                                          ; $7879: $ff
	or a                                             ; $787a: $b7
	cp l                                             ; $787b: $bd

Call_068_787c:
	rst SubAFromHL                                          ; $787c: $d7
	pop af                                           ; $787d: $f1
	ld l, l                                          ; $787e: $6d
	di                                               ; $787f: $f3
	ld a, l                                          ; $7880: $7d
	inc bc                                           ; $7881: $03
	rra                                              ; $7882: $1f
	inc bc                                           ; $7883: $03
	add b                                            ; $7884: $80
	dec de                                           ; $7885: $1b
	rlca                                             ; $7886: $07
	dec de                                           ; $7887: $1b
	rlca                                             ; $7888: $07
	dec e                                            ; $7889: $1d
	rlca                                             ; $788a: $07
	dec de                                           ; $788b: $1b
	dec c                                            ; $788c: $0d
	ccf                                              ; $788d: $3f
	add hl, bc                                       ; $788e: $09
	ccf                                              ; $788f: $3f
	add hl, bc                                       ; $7890: $09
	ld a, a                                          ; $7891: $7f
	add hl, de                                       ; $7892: $19
	rst $38                                          ; $7893: $ff
	add hl, sp                                       ; $7894: $39
	db $fd                                           ; $7895: $fd
	ld a, c                                          ; $7896: $79
	ld sp, hl                                        ; $7897: $f9

Call_068_7898:
	pop af                                           ; $7898: $f1
	ld sp, hl                                        ; $7899: $f9
	ldh a, [$f1]                                     ; $789a: $f0 $f1
	ldh a, [$f1]                                     ; $789c: $f0 $f1
	ldh [$e3], a                                     ; $789e: $e0 $e3
	ret nz                                           ; $78a0: $c0

	jp $8780                                         ; $78a1: $c3 $80 $87


	cp [hl]                                          ; $78a4: $be
	rrca                                             ; $78a5: $0f
	rrca                                             ; $78a6: $0f
	ld a, [$605b]                                    ; $78a7: $fa $5b $60
	sub e                                            ; $78aa: $93
	rst $38                                          ; $78ab: $ff
	nop                                              ; $78ac: $00
	jp $b13c                                         ; $78ad: $c3 $3c $b1


	ld b, b                                          ; $78b0: $40
	rst SubAFromDE                                          ; $78b1: $df
	ld a, $f3                                        ; $78b2: $3e $f3
	rst FarCall                                          ; $78b4: $f7
	or [hl]                                          ; $78b5: $b6
	ld a, $67                                        ; $78b6: $3e $67
	ld h, b                                          ; $78b8: $60
	ccf                                              ; $78b9: $3f
	add b                                            ; $78ba: $80
	sbc e                                            ; $78bb: $9b

Call_068_78bc:
	add b                                            ; $78bc: $80
	ld bc, $8081                                     ; $78bd: $01 $81 $80
	scf                                              ; $78c0: $37
	add b                                            ; $78c1: $80
	sub a                                            ; $78c2: $97
	rst $38                                          ; $78c3: $ff
	inc bc                                           ; $78c4: $03
	rst $38                                          ; $78c5: $ff
	ld bc, $018f                                     ; $78c6: $01 $8f $01
	ld a, l                                          ; $78c9: $7d
	ld a, a                                          ; $78ca: $7f
	ld c, a                                          ; $78cb: $4f
	add b                                            ; $78cc: $80
	ld c, a                                          ; $78cd: $4f
	and b                                            ; $78ce: $a0
	sub e                                            ; $78cf: $93
	di                                               ; $78d0: $f3
	nop                                              ; $78d1: $00
	call z, $a030                                    ; $78d2: $cc $30 $a0
	ld b, b                                          ; $78d5: $40
	cp $3e                                           ; $78d6: $fe $3e
	rst FarCall                                          ; $78d8: $f7
	rst $38                                          ; $78d9: $ff

jr_068_78da:
	rst SubAFromDE                                          ; $78da: $df
	inc a                                            ; $78db: $3c
	daa                                              ; $78dc: $27
	and b                                            ; $78dd: $a0
	sbc d                                            ; $78de: $9a
	ld [bc], a                                       ; $78df: $02
	nop                                              ; $78e0: $00
	ld bc, $8101                                     ; $78e1: $01 $01 $81
	dec hl                                           ; $78e4: $2b
	and b                                            ; $78e5: $a0
	ld [hl], a                                       ; $78e6: $77
	sbc [hl]                                         ; $78e7: $9e
	sbc e                                            ; $78e8: $9b
	ld a, a                                          ; $78e9: $7f
	ld a, l                                          ; $78ea: $7d
	rst SubAFromDE                                          ; $78eb: $df
	ld sp, hl                                        ; $78ec: $f9
	rra                                              ; $78ed: $1f
	and b                                            ; $78ee: $a0
	ld [hl], a                                       ; $78ef: $77
	xor d                                            ; $78f0: $aa
	sbc c                                            ; $78f1: $99
	cp $00                                           ; $78f2: $fe $00
	db $e3                                           ; $78f4: $e3
	pop bc                                           ; $78f5: $c1
	rst $38                                          ; $78f6: $ff

Call_068_78f7:
	ld a, $2f                                        ; $78f7: $3e $2f
	and b                                            ; $78f9: $a0
	sbc [hl]                                         ; $78fa: $9e
	jp nz, $01bf                                     ; $78fb: $c2 $bf $01

	ld bc, $01df                                     ; $78fe: $01 $df $01
	cp [hl]                                          ; $7901: $be
	add h                                            ; $7902: $84
	inc b                                            ; $7903: $04
	ld c, $4b                                        ; $7904: $0e $4b
	and b                                            ; $7906: $a0
	sub e                                            ; $7907: $93
	sbc a                                            ; $7908: $9f
	ld bc, $010f                                     ; $7909: $01 $0f $01
	rlca                                             ; $790c: $07
	ld bc, $017f                                     ; $790d: $01 $7f $01
	sbc a                                            ; $7910: $9f
	adc l                                            ; $7911: $8d
	ld [hl], l                                       ; $7912: $75
	ei                                               ; $7913: $fb
	ld h, a                                          ; $7914: $67
	and b                                            ; $7915: $a0
	cp a                                             ; $7916: $bf
	inc b                                            ; $7917: $04
	nop                                              ; $7918: $00
	sbc h                                            ; $7919: $9c
	ld e, $0a                                        ; $791a: $1e $0a
	jr nc, jr_068_78da                               ; $791c: $30 $bc

	inc c                                            ; $791e: $0c
	nop                                              ; $791f: $00
	ld bc, $ff83                                     ; $7920: $01 $83 $ff
	sub b                                            ; $7923: $90
	db $e3                                           ; $7924: $e3
	ld a, a                                          ; $7925: $7f
	ccf                                              ; $7926: $3f
	cp a                                             ; $7927: $bf
	sbc c                                            ; $7928: $99
	rst SubAFromDE                                          ; $7929: $df
	ld b, h                                          ; $792a: $44
	rst AddAOntoHL                                          ; $792b: $ef
	inc hl                                           ; $792c: $23
	ld [hl], a                                       ; $792d: $77
	db $10                                           ; $792e: $10
	cp e                                             ; $792f: $bb
	db $10                                           ; $7930: $10
	ld hl, sp+$08                                    ; $7931: $f8 $08
	ld [hl], e                                       ; $7933: $73
	ldh [$9b], a                                     ; $7934: $e0 $9b
	inc c                                            ; $7936: $0c
	ld a, $1c                                        ; $7937: $3e $1c
	nop                                              ; $7939: $00
	cp l                                             ; $793a: $bd
	inc c                                            ; $793b: $0c
	ld bc, $ff83                                     ; $793c: $01 $83 $ff
	dec sp                                           ; $793f: $3b
	ldh [$9a], a                                     ; $7940: $e0 $9a
	ld c, $0c                                        ; $7942: $0e $0c
	ld e, $14                                        ; $7944: $1e $14
	inc e                                            ; $7946: $1c
	ld a, e                                          ; $7947: $7b
	sbc $9e                                          ; $7948: $de $9e
	dec c                                            ; $794a: $0d
	daa                                              ; $794b: $27
	ret nz                                           ; $794c: $c0

	sub a                                            ; $794d: $97
	inc e                                            ; $794e: $1c
	ld a, $3c                                        ; $794f: $3e $3c
	inc a                                            ; $7951: $3c
	inc [hl]                                         ; $7952: $34
	inc a                                            ; $7953: $3c
	inc e                                            ; $7954: $1c
	add hl, bc                                       ; $7955: $09
	dec sp                                           ; $7956: $3b
	ldh [rSC], a                                     ; $7957: $e0 $02
	nop                                              ; $7959: $00
	ldh [rSC], a                                     ; $795a: $e0 $02
	db $fd                                           ; $795c: $fd
	rst SubAFromDE                                          ; $795d: $df
	inc bc                                           ; $795e: $03
	add l                                            ; $795f: $85
	dec b                                            ; $7960: $05
	ld b, $0b                                        ; $7961: $06 $0b
	inc c                                            ; $7963: $0c
	rla                                              ; $7964: $17
	jr jr_068_7996                                   ; $7965: $18 $2f

	jr nc, jr_068_79c6                               ; $7967: $30 $5d

	ld h, d                                          ; $7969: $62
	cp [hl]                                          ; $796a: $be
	jp $d1af                                         ; $796b: $c3 $af $d1


	cp a                                             ; $796e: $bf
	ret                                              ; $796f: $c9


	xor d                                            ; $7970: $aa
	db $dd                                           ; $7971: $dd
	sbc [hl]                                         ; $7972: $9e
	db $fd                                           ; $7973: $fd
	ld e, h                                          ; $7974: $5c
	ld [hl], a                                       ; $7975: $77
	ld a, a                                          ; $7976: $7f
	ld [hl], e                                       ; $7977: $73
	ld a, $33                                        ; $7978: $3e $33
	push af                                          ; $797a: $f5
	rst SubAFromDE                                          ; $797b: $df
	ld bc, $0696                                     ; $797c: $01 $96 $06
	rlca                                             ; $797f: $07
	jr @+$21                                         ; $7980: $18 $1f

	ld a, a                                          ; $7982: $7f
	ld a, a                                          ; $7983: $7f
	ld [bc], a                                       ; $7984: $02
	inc bc                                           ; $7985: $03
	ld [bc], a                                       ; $7986: $02
	call c, Call_068_7b03                            ; $7987: $dc $03 $7b
	ld a, [$028c]                                    ; $798a: $fa $8c $02
	dec b                                            ; $798d: $05
	ld b, $07                                        ; $798e: $06 $07
	inc b                                            ; $7990: $04
	ld b, $05                                        ; $7991: $06 $05
	ld a, [bc]                                       ; $7993: $0a
	dec c                                            ; $7994: $0d
	add hl, bc                                       ; $7995: $09

jr_068_7996:
	ld c, $0d                                        ; $7996: $0e $0d
	ld a, [bc]                                       ; $7998: $0a
	dec c                                            ; $7999: $0d
	ld a, [bc]                                       ; $799a: $0a
	dec bc                                           ; $799b: $0b
	inc c                                            ; $799c: $0c
	dec bc                                           ; $799d: $0b
	dec c                                            ; $799e: $0d
	ld l, a                                          ; $799f: $6f
	cp $77                                           ; $79a0: $fe $77
	ei                                               ; $79a2: $fb
	sbc [hl]                                         ; $79a3: $9e
	ld c, $7b                                        ; $79a4: $0e $7b
	cp $9d                                           ; $79a6: $fe $9d
	ld a, [bc]                                       ; $79a8: $0a
	rrca                                             ; $79a9: $0f
	ld a, e                                          ; $79aa: $7b
	rst SubAFromDE                                          ; $79ab: $df
	ld l, e                                          ; $79ac: $6b
	cp $77                                           ; $79ad: $fe $77
	ret z                                            ; $79af: $c8

	ld l, a                                          ; $79b0: $6f
	cp $db                                           ; $79b1: $fe $db
	ld bc, $dffd                                     ; $79b3: $01 $fd $df
	add hl, sp                                       ; $79b6: $39
	add c                                            ; $79b7: $81
	call nc, Call_068_7aec                           ; $79b8: $d4 $ec $7a
	add [hl]                                         ; $79bb: $86
	db $fd                                           ; $79bc: $fd
	inc bc                                           ; $79bd: $03
	halt                                             ; $79be: $76
	sbc c                                            ; $79bf: $99
	cp e                                             ; $79c0: $bb
	call z, $67dc                                    ; $79c1: $cc $dc $67
	cp $27                                           ; $79c4: $fe $27

jr_068_79c6:
	jp c, Jump_068_7237                              ; $79c6: $da $37 $72

	sbc a                                            ; $79c9: $9f
	or e                                             ; $79ca: $b3
	rst SubAFromDE                                          ; $79cb: $df
	sub d                                            ; $79cc: $92
	rst $38                                          ; $79cd: $ff
	call nc, $d8ff                                   ; $79ce: $d4 $ff $d8
	rst $38                                          ; $79d1: $ff
	ld [hl], c                                       ; $79d2: $71
	rst $38                                          ; $79d3: $ff
	inc bc                                           ; $79d4: $03
	rst $38                                          ; $79d5: $ff
	ei                                               ; $79d6: $fb
	rst SubAFromDE                                          ; $79d7: $df
	ld c, $9b                                        ; $79d8: $0e $9b
	rlca                                             ; $79da: $07
	dec b                                            ; $79db: $05
	inc bc                                           ; $79dc: $03
	ld [bc], a                                       ; $79dd: $02
	ld l, a                                          ; $79de: $6f
	adc $4f                                          ; $79df: $ce $4f
	ld [hl], b                                       ; $79e1: $70
	rst SubAFromDE                                          ; $79e2: $df
	rra                                              ; $79e3: $1f
	add c                                            ; $79e4: $81
	ld h, b                                          ; $79e5: $60
	ld a, a                                          ; $79e6: $7f
	rst JumpTable                                          ; $79e7: $c7
	ld hl, sp-$61                                    ; $79e8: $f8 $9f
	db $e3                                           ; $79ea: $e3
	inc a                                            ; $79eb: $3c
	rst SubAFromDE                                          ; $79ec: $df
	ld [hl], a                                       ; $79ed: $77
	ld hl, sp-$62                                    ; $79ee: $f8 $9e
	pop hl                                           ; $79f0: $e1
	ld hl, sp+$07                                    ; $79f1: $f8 $07
	ccf                                              ; $79f3: $3f
	rst $38                                          ; $79f4: $ff
	jp hl                                            ; $79f5: $e9


	rst $38                                          ; $79f6: $ff
	sub d                                            ; $79f7: $92
	rst $38                                          ; $79f8: $ff
	ld l, h                                          ; $79f9: $6c
	or a                                             ; $79fa: $b7
	reti                                             ; $79fb: $d9


	ld h, $b2                                        ; $79fc: $26 $b2
	ld c, l                                          ; $79fe: $4d
	daa                                              ; $79ff: $27
	reti                                             ; $7a00: $d9


	ld h, l                                          ; $7a01: $65

jr_068_7a02:
	sbc e                                            ; $7a02: $9b
	ldh [$c1], a                                     ; $7a03: $e0 $c1
	sbc b                                            ; $7a05: $98
	ld e, a                                          ; $7a06: $5f
	rst $38                                          ; $7a07: $ff
	ret c                                            ; $7a08: $d8

	db $fc                                           ; $7a09: $fc
	ret z                                            ; $7a0a: $c8

	ld hl, sp-$18                                    ; $7a0b: $f8 $e8
	ld a, e                                          ; $7a0d: $7b
	cp $89                                           ; $7a0e: $fe $89
	reti                                             ; $7a10: $d9


	ld a, b                                          ; $7a11: $78
	rst GetHLinHL                                          ; $7a12: $cf
	ld l, h                                          ; $7a13: $6c
	rst FarCall                                          ; $7a14: $f7
	ld [hl], h                                       ; $7a15: $74
	sbc b                                            ; $7a16: $98
	ldh a, [$8c]                                     ; $7a17: $f0 $8c

jr_068_7a19:
	ld hl, sp-$34                                    ; $7a19: $f8 $cc
	ret c                                            ; $7a1b: $d8

	ld c, h                                          ; $7a1c: $4c
	ret                                              ; $7a1d: $c9


	call z, $8849                                    ; $7a1e: $cc $49 $88
	db $dd                                           ; $7a21: $dd
	sbc b                                            ; $7a22: $98
	call c, $fe98                                    ; $7a23: $dc $98 $fe
	ei                                               ; $7a26: $fb
	rst SubAFromDE                                          ; $7a27: $df
	ld [bc], a                                       ; $7a28: $02
	rst SubAFromDE                                          ; $7a29: $df
	add d                                            ; $7a2a: $82
	add b                                            ; $7a2b: $80
	db $e3                                           ; $7a2c: $e3
	ld h, e                                          ; $7a2d: $63
	jp c, $f63b                                      ; $7a2e: $da $3b $f6

jr_068_7a31:
	adc a                                            ; $7a31: $8f
	ld a, e                                          ; $7a32: $7b
	ld b, a                                          ; $7a33: $47
	dec a                                            ; $7a34: $3d
	inc hl                                           ; $7a35: $23
	ld e, $11                                        ; $7a36: $1e $11
	rrca                                             ; $7a38: $0f
	ld [$1c1b], sp                                   ; $7a39: $08 $1b $1c
	daa                                              ; $7a3c: $27
	inc a                                            ; $7a3d: $3c
	call $33fe                                       ; $7a3e: $cd $fe $33
	cp $8e                                           ; $7a41: $fe $8e
	rst $38                                          ; $7a43: $ff
	ld h, e                                          ; $7a44: $63
	rst $38                                          ; $7a45: $ff
	add hl, de                                       ; $7a46: $19
	rst $38                                          ; $7a47: $ff
	add l                                            ; $7a48: $85
	rst $38                                          ; $7a49: $ff
	ld h, d                                          ; $7a4a: $62
	ld a, e                                          ; $7a4b: $7b
	ld a, [$059e]                                    ; $7a4c: $fa $9e $05
	ld a, e                                          ; $7a4f: $7b
	jr nc, jr_068_7a31                               ; $7a50: $30 $df

	rst $38                                          ; $7a52: $ff
	sub c                                            ; $7a53: $91
	inc c                                            ; $7a54: $0c
	db $fd                                           ; $7a55: $fd
	ld de, $22fb                                     ; $7a56: $11 $fb $22
	rst FarCall                                          ; $7a59: $f7
	ld b, h                                          ; $7a5a: $44
	xor $88                                          ; $7a5b: $ee $88
	db $dd                                           ; $7a5d: $dd
	jr jr_068_7a19                                   ; $7a5e: $18 $b9

	jr jr_068_7a9b                                   ; $7a60: $18 $39

	ldh [$c1], a                                     ; $7a62: $e0 $c1
	add b                                            ; $7a64: $80
	ccf                                              ; $7a65: $3f
	jp $827f                                         ; $7a66: $c3 $7f $82


	ld a, h                                          ; $7a69: $7c
	add h                                            ; $7a6a: $84
	inc b                                            ; $7a6b: $04
	db $fc                                           ; $7a6c: $fc
	ld [$c818], sp                                   ; $7a6d: $08 $18 $c8
	jr jr_068_7a02                                   ; $7a70: $18 $90

	jr nc, jr_068_7a95                               ; $7a72: $30 $21

	jr nc, jr_068_7aa9                               ; $7a74: $30 $33

	ld h, b                                          ; $7a76: $60
	ld [hl+], a                                      ; $7a77: $22
	ld h, c                                          ; $7a78: $61
	dec h                                            ; $7a79: $25
	db $e3                                           ; $7a7a: $e3
	ld l, a                                          ; $7a7b: $6f
	rst JumpTable                                          ; $7a7c: $c7
	ld d, [hl]                                       ; $7a7d: $56
	rst GetHLinHL                                          ; $7a7e: $cf
	ld l, l                                          ; $7a7f: $6d
	sbc $5b                                          ; $7a80: $de $5b
	db $fc                                           ; $7a82: $fc
	ld d, a                                          ; $7a83: $57
	sbc [hl]                                         ; $7a84: $9e
	ld hl, sp-$03                                    ; $7a85: $f8 $fd
	rst SubAFromDE                                          ; $7a87: $df
	rra                                              ; $7a88: $1f
	sub d                                            ; $7a89: $92
	ld l, a                                          ; $7a8a: $6f
	ld [hl], h                                       ; $7a8b: $74
	cp d                                             ; $7a8c: $ba
	push hl                                          ; $7a8d: $e5
	ld d, l                                          ; $7a8e: $55
	xor e                                            ; $7a8f: $ab
	rst $38                                          ; $7a90: $ff
	dec hl                                           ; $7a91: $2b
	xor [hl]                                         ; $7a92: $ae
	ld a, e                                          ; $7a93: $7b
	ld a, [hl+]                                      ; $7a94: $2a

jr_068_7a95:
	rst $38                                          ; $7a95: $ff
	sbc d                                            ; $7a96: $9a
	sbc $ff                                          ; $7a97: $de $ff
	sub b                                            ; $7a99: $90
	ld h, a                                          ; $7a9a: $67

jr_068_7a9b:
	ld hl, sp+$38                                    ; $7a9b: $f8 $38
	rst $38                                          ; $7a9d: $ff
	ccf                                              ; $7a9e: $3f
	rst $38                                          ; $7a9f: $ff
	dec hl                                           ; $7aa0: $2b
	rst FarCall                                          ; $7aa1: $f7
	ld [hl-], a                                      ; $7aa2: $32
	db $ed                                           ; $7aa3: $ed
	inc hl                                           ; $7aa4: $23
	rst $38                                          ; $7aa5: $ff
	inc l                                            ; $7aa6: $2c
	rst $38                                          ; $7aa7: $ff
	inc sp                                           ; $7aa8: $33

jr_068_7aa9:
	ld a, e                                          ; $7aa9: $7b
	db $fc                                           ; $7aaa: $fc
	add a                                            ; $7aab: $87
	or e                                             ; $7aac: $b3
	rst $38                                          ; $7aad: $ff
	xor h                                            ; $7aae: $ac
	rst $38                                          ; $7aaf: $ff
	or b                                             ; $7ab0: $b0
	cp $e0                                           ; $7ab1: $fe $e0
	db $fc                                           ; $7ab3: $fc
	rst SubAFromDE                                          ; $7ab4: $df
	rst $38                                          ; $7ab5: $ff
	sub d                                            ; $7ab6: $92
	ei                                               ; $7ab7: $fb
	ld bc, $4cf9                                     ; $7ab8: $01 $f9 $4c
	ld a, h                                          ; $7abb: $7c
	ld c, h                                          ; $7abc: $4c
	cp $8e                                           ; $7abd: $fe $8e
	cp e                                             ; $7abf: $bb
	adc a                                            ; $7ac0: $8f
	cp c                                             ; $7ac1: $b9
	adc l                                            ; $7ac2: $8d
	sbc c                                            ; $7ac3: $99

jr_068_7ac4:
	ldh [$c1], a                                     ; $7ac4: $e0 $c1
	add b                                            ; $7ac6: $80
	jr c, jr_068_7ae9                                ; $7ac7: $38 $20

	jr nc, @+$62                                     ; $7ac9: $30 $60

	ld [hl], b                                       ; $7acb: $70
	ld h, b                                          ; $7acc: $60
	pop de                                           ; $7acd: $d1
	ld h, b                                          ; $7ace: $60
	db $e3                                           ; $7acf: $e3
	pop bc                                           ; $7ad0: $c1
	and [hl]                                         ; $7ad1: $a6
	jp $ccbc                                         ; $7ad2: $c3 $bc $cc


	ldh a, [$d8]                                     ; $7ad5: $f0 $d8
	ldh [$60], a                                     ; $7ad7: $e0 $60
	ret nz                                           ; $7ad9: $c0

	ret nz                                           ; $7ada: $c0

	add b                                            ; $7adb: $80
	add b                                            ; $7adc: $80
	nop                                              ; $7add: $00
	add b                                            ; $7ade: $80
	add b                                            ; $7adf: $80
	ld b, b                                          ; $7ae0: $40
	ret nz                                           ; $7ae1: $c0

	jr nz, jr_068_7ac4                               ; $7ae2: $20 $e0

	ld de, $9ef1                                     ; $7ae4: $11 $f1 $9e
	dec bc                                           ; $7ae7: $0b

jr_068_7ae8:
	db $fd                                           ; $7ae8: $fd

jr_068_7ae9:
	rst SubAFromDE                                          ; $7ae9: $df
	add b                                            ; $7aea: $80
	add b                                            ; $7aeb: $80

Call_068_7aec:
	ld [hl], b                                       ; $7aec: $70
	ldh a, [$ac]                                     ; $7aed: $f0 $ac
	call c, $bf5b                                    ; $7aef: $dc $5b $bf
	ld a, l                                          ; $7af2: $7d
	cp a                                             ; $7af3: $bf
	cp a                                             ; $7af4: $bf
	db $fd                                           ; $7af5: $fd
	ld a, [$f5fd]                                    ; $7af6: $fa $fd $f5
	ld a, [$e5da]                                    ; $7af9: $fa $da $e5
	db $e4                                           ; $7afc: $e4
	dec de                                           ; $7afd: $1b
	add hl, de                                       ; $7afe: $19
	and $66                                          ; $7aff: $e6 $66
	sbc c                                            ; $7b01: $99
	db $db                                           ; $7b02: $db

Call_068_7b03:
	rst SubAFromBC                                          ; $7b03: $e7
	ld a, a                                          ; $7b04: $7f
	rst $38                                          ; $7b05: $ff
	add b                                            ; $7b06: $80
	rst $38                                          ; $7b07: $ff
	nop                                              ; $7b08: $00
	rst $38                                          ; $7b09: $ff
	cp b                                             ; $7b0a: $b8
	ld a, e                                          ; $7b0b: $7b
	db $fc                                           ; $7b0c: $fc
	sub [hl]                                         ; $7b0d: $96
	inc e                                            ; $7b0e: $1c
	rst $38                                          ; $7b0f: $ff
	db $e3                                           ; $7b10: $e3
	rst $38                                          ; $7b11: $ff
	jr jr_068_7b93                                   ; $7b12: $18 $7f

	rlca                                             ; $7b14: $07
	rrca                                             ; $7b15: $0f
	cp $7b                                           ; $7b16: $fe $7b
	ld d, d                                          ; $7b18: $52
	sbc h                                            ; $7b19: $9c
	add hl, bc                                       ; $7b1a: $09
	rst $38                                          ; $7b1b: $ff
	add h                                            ; $7b1c: $84
	ld a, d                                          ; $7b1d: $7a
	or b                                             ; $7b1e: $b0
	sbc c                                            ; $7b1f: $99
	ld [hl], c                                       ; $7b20: $71
	ld e, a                                          ; $7b21: $5f
	ld a, c                                          ; $7b22: $79
	rst GetHLinHL                                          ; $7b23: $cf
	inc [hl]                                         ; $7b24: $34
	rst AddAOntoHL                                          ; $7b25: $ef
	ldh [$c1], a                                     ; $7b26: $e0 $c1
	sub e                                            ; $7b28: $93
	inc a                                            ; $7b29: $3c
	ld c, $70                                        ; $7b2a: $0e $70
	dec a                                            ; $7b2c: $3d
	ld l, l                                          ; $7b2d: $6d
	ld [hl], d                                       ; $7b2e: $72
	sbc h                                            ; $7b2f: $9c
	db $e3                                           ; $7b30: $e3
	inc e                                            ; $7b31: $1c
	and d                                            ; $7b32: $a2
	nop                                              ; $7b33: $00
	ld a, $71                                        ; $7b34: $3e $71
	xor h                                            ; $7b36: $ac
	ld a, l                                          ; $7b37: $7d
	sbc c                                            ; $7b38: $99
	sub d                                            ; $7b39: $92
	rlca                                             ; $7b3a: $07
	inc c                                            ; $7b3b: $0c
	ld e, $10                                        ; $7b3c: $1e $10
	jr c, jr_068_7b60                                ; $7b3e: $38 $20

	ld a, a                                          ; $7b40: $7f
	ld b, [hl]                                       ; $7b41: $46
	jp hl                                            ; $7b42: $e9


	add l                                            ; $7b43: $85
	ei                                               ; $7b44: $fb
	ld [hl], d                                       ; $7b45: $72
	adc a                                            ; $7b46: $8f
	ld sp, hl                                        ; $7b47: $f9
	rst SubAFromDE                                          ; $7b48: $df
	inc b                                            ; $7b49: $04
	rst SubAFromDE                                          ; $7b4a: $df
	add d                                            ; $7b4b: $82
	adc d                                            ; $7b4c: $8a
	ld b, d                                          ; $7b4d: $42
	jp nz, $e262                                     ; $7b4e: $c2 $62 $e2

	ld [hl-], a                                      ; $7b51: $32
	ldh a, [c]                                       ; $7b52: $f2
	ld [hl], $f6                                     ; $7b53: $36 $f6
	ld e, a                                          ; $7b55: $5f
	cp a                                             ; $7b56: $bf
	sub a                                            ; $7b57: $97
	ld a, a                                          ; $7b58: $7f
	ld e, d                                          ; $7b59: $5a
	cp $9a                                           ; $7b5a: $fe $9a
	cp $2a                                           ; $7b5c: $fe $2a
	cp $cf                                           ; $7b5e: $fe $cf

jr_068_7b60:
	rst $38                                          ; $7b60: $ff
	db $ed                                           ; $7b61: $ed
	ld a, d                                          ; $7b62: $7a
	jr z, jr_068_7ae8                                ; $7b63: $28 $83

	push bc                                          ; $7b65: $c5
	ccf                                              ; $7b66: $3f
	dec bc                                           ; $7b67: $0b
	rst FarCall                                          ; $7b68: $f7
	ld h, l                                          ; $7b69: $65
	sbc e                                            ; $7b6a: $9b
	or d                                             ; $7b6b: $b2
	call $f649                                       ; $7b6c: $cd $49 $f6
	adc h                                            ; $7b6f: $8c
	di                                               ; $7b70: $f3
	ld h, [hl]                                       ; $7b71: $66
	sbc c                                            ; $7b72: $99
	ld [hl-], a                                      ; $7b73: $32
	call $e689                                       ; $7b74: $cd $89 $e6
	sub l                                            ; $7b77: $95
	ldh [c], a                                       ; $7b78: $e2
	ld b, h                                          ; $7b79: $44
	di                                               ; $7b7a: $f3
	ld c, b                                          ; $7b7b: $48
	di                                               ; $7b7c: $f3
	ld h, $f9                                        ; $7b7d: $26 $f9
	and d                                            ; $7b7f: $a2
	db $fd                                           ; $7b80: $fd
	ldh [$c1], a                                     ; $7b81: $e0 $c1
	sbc e                                            ; $7b83: $9b
	ld a, c                                          ; $7b84: $79
	adc a                                            ; $7b85: $8f
	ei                                               ; $7b86: $fb
	rrca                                             ; $7b87: $0f
	ld a, e                                          ; $7b88: $7b
	cp $97                                           ; $7b89: $fe $97

jr_068_7b8b:
	rra                                              ; $7b8b: $1f

Call_068_7b8c:
	ld [hl], l                                       ; $7b8c: $75
	sbc a                                            ; $7b8d: $9f
	dec [hl]                                         ; $7b8e: $35
	ld e, a                                          ; $7b8f: $5f

jr_068_7b90:
	dec d                                            ; $7b90: $15
	ccf                                              ; $7b91: $3f
	ld a, l                                          ; $7b92: $7d

jr_068_7b93:
	ld a, d                                          ; $7b93: $7a
	db $f4                                           ; $7b94: $f4
	sub c                                            ; $7b95: $91
	ret c                                            ; $7b96: $d8

	ld a, $d0                                        ; $7b97: $3e $d0

Call_068_7b99:
	jr c, @+$22                                      ; $7b99: $38 $20

	ld [hl], b                                       ; $7b9b: $70
	ld b, b                                          ; $7b9c: $40
	ldh [$80], a                                     ; $7b9d: $e0 $80
	ret nz                                           ; $7b9f: $c0

	ld b, b                                          ; $7ba0: $40
	and b                                            ; $7ba1: $a0
	ldh [rAUD1SWEEP], a                              ; $7ba2: $e0 $10
	db $ed                                           ; $7ba4: $ed
	rst SubAFromDE                                          ; $7ba5: $df
	add b                                            ; $7ba6: $80
	rst SubAFromDE                                          ; $7ba7: $df
	ret nz                                           ; $7ba8: $c0

	rst SubAFromDE                                          ; $7ba9: $df
	jr nz, jr_068_7b8b                               ; $7baa: $20 $df

	db $10                                           ; $7bac: $10
	rst $38                                          ; $7bad: $ff
	rst SubAFromDE                                          ; $7bae: $df
	jr jr_068_7b90                                   ; $7baf: $18 $df

	ld [hl], b                                       ; $7bb1: $70
	ld a, a                                          ; $7bb2: $7f
	db $db                                           ; $7bb3: $db
	rst SubAFromDE                                          ; $7bb4: $df
	ret nz                                           ; $7bb5: $c0

	ld a, [hl]                                       ; $7bb6: $7e
	sub e                                            ; $7bb7: $93
	add b                                            ; $7bb8: $80
	ld h, b                                          ; $7bb9: $60
	ldh [rSVBK], a                                   ; $7bba: $e0 $70
	ldh a, [$d0]                                     ; $7bbc: $f0 $d0
	ldh a, [rOBP0]                                   ; $7bbe: $f0 $48
	ld hl, sp-$18                                    ; $7bc0: $f8 $e8
	ld a, b                                          ; $7bc2: $78
	cp b                                             ; $7bc3: $b8
	ld a, b                                          ; $7bc4: $78
	ld [hl], h                                       ; $7bc5: $74
	cp h                                             ; $7bc6: $bc
	call nc, $34bc                                   ; $7bc7: $d4 $bc $34
	call c, $dc74                                    ; $7bca: $dc $74 $dc
	ld l, h                                          ; $7bcd: $6c
	call c, $6c9c                                    ; $7bce: $dc $9c $6c
	cp h                                             ; $7bd1: $bc
	ld l, h                                          ; $7bd2: $6c
	or $2e                                           ; $7bd3: $f6 $2e
	ld l, [hl]                                       ; $7bd5: $6e
	or [hl]                                          ; $7bd6: $b6
	ld c, [hl]                                       ; $7bd7: $4e
	sbc l                                            ; $7bd8: $9d
	or [hl]                                          ; $7bd9: $b6
	ld e, [hl]                                       ; $7bda: $5e
	ld a, e                                          ; $7bdb: $7b
	cp $7f                                           ; $7bdc: $fe $7f
	db $fd                                           ; $7bde: $fd
	sub e                                            ; $7bdf: $93
	or d                                             ; $7be0: $b2
	ld e, [hl]                                       ; $7be1: $5e
	xor d                                            ; $7be2: $aa
	ld e, [hl]                                       ; $7be3: $5e
	cp d                                             ; $7be4: $ba
	ld c, [hl]                                       ; $7be5: $4e
	ld a, [$fa0e]                                    ; $7be6: $fa $0e $fa
	ld c, $5a                                        ; $7be9: $0e $5a
	xor [hl]                                         ; $7beb: $ae
	ld [hl], a                                       ; $7bec: $77
	cp $91                                           ; $7bed: $fe $91
	ld c, d                                          ; $7bef: $4a
	cp [hl]                                          ; $7bf0: $be
	ld c, d                                          ; $7bf1: $4a
	cp [hl]                                          ; $7bf2: $be
	ld c, h                                          ; $7bf3: $4c
	cp h                                             ; $7bf4: $bc
	ld b, h                                          ; $7bf5: $44
	cp h                                             ; $7bf6: $bc
	call nz, Call_068_54bc                           ; $7bf7: $c4 $bc $54
	cp h                                             ; $7bfa: $bc
	ret c                                            ; $7bfb: $d8

	cp b                                             ; $7bfc: $b8
	ld [hl], a                                       ; $7bfd: $77
	cp $97                                           ; $7bfe: $fe $97
	ret nc                                           ; $7c00: $d0

	or b                                             ; $7c01: $b0
	ld [hl], b                                       ; $7c02: $70
	or b                                             ; $7c03: $b0
	ld [hl], b                                       ; $7c04: $70
	ldh a, [$60]                                     ; $7c05: $f0 $60
	ldh [rPCM34], a                                  ; $7c07: $e0 $77
	cp $7f                                           ; $7c09: $fe $7f
	xor d                                            ; $7c0b: $aa
	rst SubAFromDE                                          ; $7c0c: $df
	ret nz                                           ; $7c0d: $c0

	ld l, a                                          ; $7c0e: $6f
	ld a, [$e0df]                                    ; $7c0f: $fa $df $e0
	add a                                            ; $7c12: $87
	sub b                                            ; $7c13: $90
	ldh a, [hDisp0_WY]                                     ; $7c14: $f0 $88
	ld hl, sp+$34                                    ; $7c16: $f8 $34
	call z, $877b                                    ; $7c18: $cc $7b $87
	inc e                                            ; $7c1b: $1c
	db $e3                                           ; $7c1c: $e3
	rst JumpTable                                          ; $7c1d: $c7
	jr c, @-$0e                                      ; $7c1e: $38 $f0

	rrca                                             ; $7c20: $0f
	ei                                               ; $7c21: $fb
	rlca                                             ; $7c22: $07
	push af                                          ; $7c23: $f5
	rrca                                             ; $7c24: $0f
	rst AddAOntoHL                                          ; $7c25: $ef
	add hl, de                                       ; $7c26: $19
	sbc $31                                          ; $7c27: $de $31
	cp a                                             ; $7c29: $bf
	ld h, b                                          ; $7c2a: $60
	ccf                                              ; $7c2b: $3f
	ld h, h                                          ; $7c2c: $64
	halt                                             ; $7c2d: $76
	rlca                                             ; $7c2e: $07
	rst SubAFromDE                                          ; $7c2f: $df
	ldh a, [$97]                                     ; $7c30: $f0 $97
	ld [$04f8], sp                                   ; $7c32: $08 $f8 $04
	db $fc                                           ; $7c35: $fc
	jp nz, $c2be                                     ; $7c36: $c2 $be $c2

	cp [hl]                                          ; $7c39: $be
	rla                                              ; $7c3a: $17
	nop                                              ; $7c3b: $00
	sbc [hl]                                         ; $7c3c: $9e
	cp e                                             ; $7c3d: $bb
	sbc $99                                          ; $7c3e: $de $99
	ld [hl], a                                       ; $7c40: $77
	db $fc                                           ; $7c41: $fc
	sbc e                                            ; $7c42: $9b
	sbc c                                            ; $7c43: $99
	ld b, h                                          ; $7c44: $44
	sbc c                                            ; $7c45: $99
	nop                                              ; $7c46: $00
	ld c, a                                          ; $7c47: $4f
	ei                                               ; $7c48: $fb
	sbc [hl]                                         ; $7c49: $9e
	ld de, $fb77                                     ; $7c4a: $11 $77 $fb
	sbc $99                                          ; $7c4d: $de $99
	rst SubAFromDE                                          ; $7c4f: $df
	xor d                                            ; $7c50: $aa
	or b                                             ; $7c51: $b0
	ld bc, $0188                                     ; $7c52: $01 $88 $01
	or a                                             ; $7c55: $b7
	ld bc, $0177                                     ; $7c56: $01 $77 $01
	ld l, a                                          ; $7c59: $6f
	ld b, c                                          ; $7c5a: $41
	rst AddAOntoHL                                          ; $7c5b: $ef
	ld b, e                                          ; $7c5c: $43
	rst GetHLinHL                                          ; $7c5d: $cf
	add e                                            ; $7c5e: $83
	rst SubAFromDE                                          ; $7c5f: $df
	add [hl]                                         ; $7c60: $86
	rst SubAFromDE                                          ; $7c61: $df
	add h                                            ; $7c62: $84
	cp a                                             ; $7c63: $bf
	dec l                                            ; $7c64: $2d
	cp [hl]                                          ; $7c65: $be
	dec l                                            ; $7c66: $2d
	cp $5d                                           ; $7c67: $fe $5d
	cp $5f                                           ; $7c69: $fe $5f
	ld [hl], e                                       ; $7c6b: $73
	cp $80                                           ; $7c6c: $fe $80
	ld a, [hl-]                                      ; $7c6e: $3a
	rst $38                                          ; $7c6f: $ff
	cp a                                             ; $7c70: $bf
	ei                                               ; $7c71: $fb
	rst AddAOntoHL                                          ; $7c72: $ef
	cp l                                             ; $7c73: $bd
	cp $af                                           ; $7c74: $fe $af
	ei                                               ; $7c76: $fb
	xor e                                            ; $7c77: $ab
	ld hl, sp+$28                                    ; $7c78: $f8 $28
	ret z                                            ; $7c7a: $c8

	ld a, b                                          ; $7c7b: $78
	ldh a, [$50]                                     ; $7c7c: $f0 $50
	or b                                             ; $7c7e: $b0
	ld d, b                                          ; $7c7f: $50
	ldh a, [rAUD1SWEEP]                              ; $7c80: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $7c82: $f0 $10
	or c                                             ; $7c84: $b1
	ld d, c                                          ; $7c85: $51
	or c                                             ; $7c86: $b1
	ld d, c                                          ; $7c87: $51
	ld [hl], c                                       ; $7c88: $71
	pop de                                           ; $7c89: $d1
	ld [hl], c                                       ; $7c8a: $71
	pop de                                           ; $7c8b: $d1

Call_068_7c8c:
	ld [hl], b                                       ; $7c8c: $70
	add b                                            ; $7c8d: $80
	ret nc                                           ; $7c8e: $d0

	ld d, b                                          ; $7c8f: $50
	ldh a, [$50]                                     ; $7c90: $f0 $50
	ldh a, [$39]                                     ; $7c92: $f0 $39
	ld l, l                                          ; $7c94: $6d
	ld a, c                                          ; $7c95: $79
	call $c77d                                       ; $7c96: $cd $7d $c7
	db $fd                                           ; $7c99: $fd
	add a                                            ; $7c9a: $87
	ld a, l                                          ; $7c9b: $7d
	add a                                            ; $7c9c: $87
	ld a, d                                          ; $7c9d: $7a
	add a                                            ; $7c9e: $87
	xor $1f                                          ; $7c9f: $ee $1f
	or c                                             ; $7ca1: $b1
	ld a, [hl]                                       ; $7ca2: $7e
	rst SubAFromDE                                          ; $7ca3: $df
	ldh [$f3], a                                     ; $7ca4: $e0 $f3
	inc c                                            ; $7ca6: $0c
	rst SubAFromDE                                          ; $7ca7: $df
	ld a, $a2                                        ; $7ca8: $3e $a2
	ld [hl], e                                       ; $7caa: $73
	halt                                             ; $7cab: $76
	rst $38                                          ; $7cac: $ff
	sub [hl]                                         ; $7cad: $96
	xor $ff                                          ; $7cae: $ee $ff
	ld [hl-], a                                      ; $7cb0: $32
	cp d                                             ; $7cb1: $ba
	db $fd                                           ; $7cb2: $fd
	ld e, $7f                                        ; $7cb3: $1e $7f
	add b                                            ; $7cb5: $80
	rst $38                                          ; $7cb6: $ff
	ld a, e                                          ; $7cb7: $7b
	cp $83                                           ; $7cb8: $fe $83
	cp a                                             ; $7cba: $bf
	ret nz                                           ; $7cbb: $c0

Call_068_7cbc:
Jump_068_7cbc:
	ld a, a                                          ; $7cbc: $7f
	ld b, b                                          ; $7cbd: $40
	ld e, a                                          ; $7cbe: $5f
	ld h, b                                          ; $7cbf: $60
	ld a, a                                          ; $7cc0: $7f
	ld h, b                                          ; $7cc1: $60
	rst AddAOntoHL                                          ; $7cc2: $ef
	ldh a, [$d7]                                     ; $7cc3: $f0 $d7
	ret c                                            ; $7cc5: $d8

	db $db                                           ; $7cc6: $db
	call c, $9e9d                                    ; $7cc7: $dc $9d $9e
	ld a, [de]                                       ; $7cca: $1a
	dec de                                           ; $7ccb: $1b
	add hl, bc                                       ; $7ccc: $09
	add hl, bc                                       ; $7ccd: $09
	adc b                                            ; $7cce: $88
	adc b                                            ; $7ccf: $88
	rra                                              ; $7cd0: $1f
	rra                                              ; $7cd1: $1f
	pop hl                                           ; $7cd2: $e1
	rst $38                                          ; $7cd3: $ff
	ret c                                            ; $7cd4: $d8

	ld d, b                                          ; $7cd5: $50
	ld a, e                                          ; $7cd6: $7b
	cp $93                                           ; $7cd7: $fe $93
	ld [hl], b                                       ; $7cd9: $70
	ld hl, sp+$30                                    ; $7cda: $f8 $30
	cp h                                             ; $7cdc: $bc
	db $10                                           ; $7cdd: $10
	sbc h                                            ; $7cde: $9c
	add hl, bc                                       ; $7cdf: $09
	inc c                                            ; $7ce0: $0c
	inc bc                                           ; $7ce1: $03
	inc bc                                           ; $7ce2: $03
	nop                                              ; $7ce3: $00
	add e                                            ; $7ce4: $83
	ld [hl], e                                       ; $7ce5: $73
	cp $9c                                           ; $7ce6: $fe $9c
	add c                                            ; $7ce8: $81
	nop                                              ; $7ce9: $00
	add b                                            ; $7cea: $80

Call_068_7ceb:
	db $fc                                           ; $7ceb: $fc
	sub [hl]                                         ; $7cec: $96
	stop                                             ; $7ced: $10 $00
	or [hl]                                          ; $7cef: $b6
	db $e3                                           ; $7cf0: $e3
	or l                                             ; $7cf1: $b5
	db $e3                                           ; $7cf2: $e3
	db $e3                                           ; $7cf3: $e3
	ld b, c                                          ; $7cf4: $41
	ld h, d                                          ; $7cf5: $62
	ld a, e                                          ; $7cf6: $7b
	cp $84                                           ; $7cf7: $fe $84
	ld bc, $f1e0                                     ; $7cf9: $01 $e0 $f1

Jump_068_7cfc:
	db $fc                                           ; $7cfc: $fc
	xor $1f                                          ; $7cfd: $ee $1f
	db $fc                                           ; $7cff: $fc
	inc bc                                           ; $7d00: $03
	cp a                                             ; $7d01: $bf
	ld a, h                                          ; $7d02: $7c
	ld h, a                                          ; $7d03: $67
	xor $a7                                          ; $7d04: $ee $a7
	rst SubAFromBC                                          ; $7d06: $e7
	dec sp                                           ; $7d07: $3b
	cp a                                             ; $7d08: $bf
	dec hl                                           ; $7d09: $2b
	ld a, $25                                        ; $7d0a: $3e $25
	ld [hl], $5c                                     ; $7d0c: $36 $5c
	ccf                                              ; $7d0e: $3f
	ld a, [hl+]                                      ; $7d0f: $2a
	nop                                              ; $7d10: $00
	dec d                                            ; $7d11: $15
	nop                                              ; $7d12: $00
	inc bc                                           ; $7d13: $03
	ld a, e                                          ; $7d14: $7b
	cp $9e                                           ; $7d15: $fe $9e
	rlca                                             ; $7d17: $07
	ld a, e                                          ; $7d18: $7b
	cp $80                                           ; $7d19: $fe $80
	rrca                                             ; $7d1b: $0f
	ld bc, $030f                                     ; $7d1c: $01 $0f $03
	rra                                              ; $7d1f: $1f
	rlca                                             ; $7d20: $07
	ccf                                              ; $7d21: $3f
	rrca                                             ; $7d22: $0f
	ld a, a                                          ; $7d23: $7f
	ld e, $bf                                        ; $7d24: $1e $bf
	ld a, h                                          ; $7d26: $7c
	rst $38                                          ; $7d27: $ff
	ldh a, [rIE]                                     ; $7d28: $f0 $ff
	nop                                              ; $7d2a: $00
	rst $38                                          ; $7d2b: $ff
	nop                                              ; $7d2c: $00
	ld a, a                                          ; $7d2d: $7f
	inc bc                                           ; $7d2e: $03
	ld d, b                                          ; $7d2f: $50
	rst $38                                          ; $7d30: $ff
	ld b, b                                          ; $7d31: $40
	rst $38                                          ; $7d32: $ff
	jr z, @+$01                                      ; $7d33: $28 $ff

	xor b                                            ; $7d35: $a8
	rst $38                                          ; $7d36: $ff
	and b                                            ; $7d37: $a0
	rst $38                                          ; $7d38: $ff
	and h                                            ; $7d39: $a4
	adc a                                            ; $7d3a: $8f
	rst $38                                          ; $7d3b: $ff
	push de                                          ; $7d3c: $d5
	rst $38                                          ; $7d3d: $ff
	ld d, l                                          ; $7d3e: $55
	rst $38                                          ; $7d3f: $ff
	pop de                                           ; $7d40: $d1
	ld a, a                                          ; $7d41: $7f
	and c                                            ; $7d42: $a1
	ld l, a                                          ; $7d43: $6f
	and b                                            ; $7d44: $a0
	ld l, a                                          ; $7d45: $6f
	and b                                            ; $7d46: $a0
	rst $38                                          ; $7d47: $ff
	ldh [$36], a                                     ; $7d48: $e0 $36
	ret nc                                           ; $7d4a: $d0

	ld l, a                                          ; $7d4b: $6f
	cp $93                                           ; $7d4c: $fe $93
	ccf                                              ; $7d4e: $3f
	ldh a, [$3f]                                     ; $7d4f: $f0 $3f
	or h                                             ; $7d51: $b4
	ld a, a                                          ; $7d52: $7f
	ret nc                                           ; $7d53: $d0

	ld e, a                                          ; $7d54: $5f
	ld d, b                                          ; $7d55: $50
	rst SubAFromDE                                          ; $7d56: $df
	sub b                                            ; $7d57: $90
	sbc a                                            ; $7d58: $9f
	sub h                                            ; $7d59: $94
	ld h, e                                          ; $7d5a: $63
	cp $95                                           ; $7d5b: $fe $95
	adc h                                            ; $7d5d: $8c
	adc a                                            ; $7d5e: $8f
	adc c                                            ; $7d5f: $89
	adc a                                            ; $7d60: $8f
	ret                                              ; $7d61: $c9


	ld c, a                                          ; $7d62: $4f
	ld sp, hl                                        ; $7d63: $f9
	rst $38                                          ; $7d64: $ff
	ld sp, hl                                        ; $7d65: $f9
	rrca                                             ; $7d66: $0f
	ld b, $e0                                        ; $7d67: $06 $e0
	ccf                                              ; $7d69: $3f
	nop                                              ; $7d6a: $00
	ld [hl], a                                       ; $7d6b: $77
	adc b                                            ; $7d6c: $88
	ld a, [hl]                                       ; $7d6d: $7e
	cp $9d                                           ; $7d6e: $fe $9d
	ld [hl], d                                       ; $7d70: $72
	ei                                               ; $7d71: $fb
	ld l, a                                          ; $7d72: $6f
	nop                                              ; $7d73: $00
	inc bc                                           ; $7d74: $03
	jr nz, @+$45                                     ; $7d75: $20 $43

	jr nz, jr_068_7df8                               ; $7d77: $20 $7f

	jp nz, $c397                                     ; $7d79: $c2 $97 $c3

	inc a                                            ; $7d7c: $3c
	ld a, l                                          ; $7d7d: $7d
	cp $a7                                           ; $7d7e: $fe $a7
	rst AddAOntoHL                                          ; $7d80: $ef
	ld l, $3f                                        ; $7d81: $2e $3f
	ld [hl], a                                       ; $7d83: $77
	jr nz, jr_068_7db1                               ; $7d84: $20 $2b

	ld b, b                                          ; $7d86: $40
	sbc [hl]                                         ; $7d87: $9e
	ld a, a                                          ; $7d88: $7f
	ld h, a                                          ; $7d89: $67
	ld b, b                                          ; $7d8a: $40
	inc bc                                           ; $7d8b: $03
	ld h, b                                          ; $7d8c: $60
	inc sp                                           ; $7d8d: $33
	ld h, b                                          ; $7d8e: $60
	sbc d                                            ; $7d8f: $9a
	di                                               ; $7d90: $f3
	nop                                              ; $7d91: $00
	sbc h                                            ; $7d92: $9c
	ld a, [hl]                                       ; $7d93: $7e
	rst AddAOntoHL                                          ; $7d94: $ef
	inc bc                                           ; $7d95: $03
	ld h, b                                          ; $7d96: $60
	daa                                              ; $7d97: $27
	ld h, b                                          ; $7d98: $60
	ld a, e                                          ; $7d99: $7b
	ld e, [hl]                                       ; $7d9a: $5e
	sbc l                                            ; $7d9b: $9d
	nop                                              ; $7d9c: $00
	cp l                                             ; $7d9d: $bd
	ld a, e                                          ; $7d9e: $7b
	ret nz                                           ; $7d9f: $c0

	sbc h                                            ; $7da0: $9c
	dec [hl]                                         ; $7da1: $35
	halt                                             ; $7da2: $76
	ld e, b                                          ; $7da3: $58
	inc bc                                           ; $7da4: $03
	ld h, b                                          ; $7da5: $60
	inc bc                                           ; $7da6: $03
	ld h, b                                          ; $7da7: $60
	dec hl                                           ; $7da8: $2b
	ld h, b                                          ; $7da9: $60
	sub a                                            ; $7daa: $97
	ldh [rP1], a                                     ; $7dab: $e0 $00
	db $fc                                           ; $7dad: $fc
	nop                                              ; $7dae: $00
	db $d3                                           ; $7daf: $d3
	ld h, c                                          ; $7db0: $61

jr_068_7db1:
	rst $38                                          ; $7db1: $ff
	ld a, $03                                        ; $7db2: $3e $03
	ld h, b                                          ; $7db4: $60
	dec hl                                           ; $7db5: $2b
	ld h, b                                          ; $7db6: $60
	sbc b                                            ; $7db7: $98
	ld bc, $1e00                                     ; $7db8: $01 $00 $1e
	nop                                              ; $7dbb: $00
	ld b, c                                          ; $7dbc: $41
	ld h, c                                          ; $7dbd: $61
	ld a, $0f                                        ; $7dbe: $3e $0f
	ld h, b                                          ; $7dc0: $60
	adc a                                            ; $7dc1: $8f
	or [hl]                                          ; $7dc2: $b6
	ret nc                                           ; $7dc3: $d0

	ld [hl], $3c                                     ; $7dc4: $36 $3c
	nop                                              ; $7dc6: $00
	ld a, h                                          ; $7dc7: $7c
	jr nz, jr_068_7e26                               ; $7dc8: $20 $5c

	ld h, b                                          ; $7dca: $60
	jr c, @+$22                                      ; $7dcb: $38 $20

	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	ld d, [hl]                                       ; $7dcf: $56
	inc l                                            ; $7dd0: $2c
	inc l                                            ; $7dd1: $2c
	cp $9d                                           ; $7dd2: $fe $9d
	ld [$fb10], sp                                   ; $7dd4: $08 $10 $fb
	sub a                                            ; $7dd7: $97
	jp nz, $db81                                     ; $7dd8: $c2 $81 $db

	rst SubAFromBC                                          ; $7ddb: $e7
	cp a                                             ; $7ddc: $bf
	db $fc                                           ; $7ddd: $fc
	inc a                                            ; $7dde: $3c
	and b                                            ; $7ddf: $a0
	ld d, a                                          ; $7de0: $57
	ldh [$9c], a                                     ; $7de1: $e0 $9c
	inc a                                            ; $7de3: $3c
	inc h                                            ; $7de4: $24
	jr jr_068_7e5a                                   ; $7de5: $18 $73

	adc h                                            ; $7de7: $8c
	cpl                                              ; $7de8: $2f
	ldh [$9a], a                                     ; $7de9: $e0 $9a
	ld a, [hl]                                       ; $7deb: $7e
	ld a, $3c                                        ; $7dec: $3e $3c
	inc [hl]                                         ; $7dee: $34
	jr @+$7d                                         ; $7def: $18 $7b

	rst SubAFromDE                                          ; $7df1: $df
	ld l, a                                          ; $7df2: $6f
	cp [hl]                                          ; $7df3: $be
	dec sp                                           ; $7df4: $3b
	ldh [$99], a                                     ; $7df5: $e0 $99
	inc a                                            ; $7df7: $3c

jr_068_7df8:
	ld a, h                                          ; $7df8: $7c
	inc a                                            ; $7df9: $3c
	inc a                                            ; $7dfa: $3c
	inc d                                            ; $7dfb: $14
	jr c, jr_068_7e69                                ; $7dfc: $38 $6b

	sbc $67                                          ; $7dfe: $de $67
	ldh [$c7], a                                     ; $7e00: $e0 $c7
	ld bc, $0180                                     ; $7e02: $01 $80 $01
	or a                                             ; $7e05: $b7
	ld bc, $0177                                     ; $7e06: $01 $77 $01
	ld l, a                                          ; $7e09: $6f
	ld b, c                                          ; $7e0a: $41
	rst AddAOntoHL                                          ; $7e0b: $ef
	ld b, e                                          ; $7e0c: $43
	rst GetHLinHL                                          ; $7e0d: $cf
	add e                                            ; $7e0e: $83
	rst SubAFromDE                                          ; $7e0f: $df
	add [hl]                                         ; $7e10: $86
	rst SubAFromDE                                          ; $7e11: $df
	add h                                            ; $7e12: $84
	cp a                                             ; $7e13: $bf
	dec l                                            ; $7e14: $2d
	cp [hl]                                          ; $7e15: $be
	dec l                                            ; $7e16: $2d
	cp $5d                                           ; $7e17: $fe $5d
	cp $5f                                           ; $7e19: $fe $5f
	rst $38                                          ; $7e1b: $ff
	ld e, a                                          ; $7e1c: $5f
	cp $5f                                           ; $7e1d: $fe $5f
	cp $3a                                           ; $7e1f: $fe $3a
	rst $38                                          ; $7e21: $ff
	cp a                                             ; $7e22: $bf
	add b                                            ; $7e23: $80
	ei                                               ; $7e24: $fb
	rst AddAOntoHL                                          ; $7e25: $ef

jr_068_7e26:
	cp l                                             ; $7e26: $bd
	cp $af                                           ; $7e27: $fe $af
	ei                                               ; $7e29: $fb
	xor e                                            ; $7e2a: $ab
	ld hl, sp+$28                                    ; $7e2b: $f8 $28
	ret z                                            ; $7e2d: $c8

	ld a, b                                          ; $7e2e: $78
	ldh a, [$50]                                     ; $7e2f: $f0 $50
	or b                                             ; $7e31: $b0
	ld d, b                                          ; $7e32: $50
	ldh a, [rAUD1SWEEP]                              ; $7e33: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $7e35: $f0 $10
	or c                                             ; $7e37: $b1
	ld d, c                                          ; $7e38: $51
	or c                                             ; $7e39: $b1
	ld d, c                                          ; $7e3a: $51
	ld [hl], c                                       ; $7e3b: $71
	pop de                                           ; $7e3c: $d1
	ld [hl], c                                       ; $7e3d: $71
	pop de                                           ; $7e3e: $d1
	ld [hl], b                                       ; $7e3f: $70
	ret nc                                           ; $7e40: $d0

	ld d, b                                          ; $7e41: $50
	ldh a, [$7f]                                     ; $7e42: $f0 $7f
	cp $80                                           ; $7e44: $fe $80
	add hl, sp                                       ; $7e46: $39
	ld l, l                                          ; $7e47: $6d
	ld a, c                                          ; $7e48: $79
	call $c77d                                       ; $7e49: $cd $7d $c7
	db $fd                                           ; $7e4c: $fd
	add a                                            ; $7e4d: $87
	ld b, l                                          ; $7e4e: $45
	cp a                                             ; $7e4f: $bf
	ld a, d                                          ; $7e50: $7a
	rst $38                                          ; $7e51: $ff
	or [hl]                                          ; $7e52: $b6
	rst GetHLinHL                                          ; $7e53: $cf
	ld a, [$da07]                                    ; $7e54: $fa $07 $da
	dec a                                            ; $7e57: $3d
	or l                                             ; $7e58: $b5
	ld a, [hl]                                       ; $7e59: $7e

jr_068_7e5a:
	db $e3                                           ; $7e5a: $e3
	halt                                             ; $7e5b: $76
	ld h, d                                          ; $7e5c: $62
	di                                               ; $7e5d: $f3
	or [hl]                                          ; $7e5e: $b6
	rst $38                                          ; $7e5f: $ff
	ld l, $bf                                        ; $7e60: $2e $bf
	or d                                             ; $7e62: $b2
	ld a, [hl-]                                      ; $7e63: $3a
	db $fd                                           ; $7e64: $fd
	sbc e                                            ; $7e65: $9b
	ld e, $7f                                        ; $7e66: $1e $7f
	add b                                            ; $7e68: $80

jr_068_7e69:
	rst $38                                          ; $7e69: $ff
	ld a, e                                          ; $7e6a: $7b
	cp $83                                           ; $7e6b: $fe $83
	cp a                                             ; $7e6d: $bf
	ret nz                                           ; $7e6e: $c0

	ld a, a                                          ; $7e6f: $7f
	ld b, b                                          ; $7e70: $40
	ld e, a                                          ; $7e71: $5f
	ld h, b                                          ; $7e72: $60
	ld a, a                                          ; $7e73: $7f
	ld h, b                                          ; $7e74: $60
	rst AddAOntoHL                                          ; $7e75: $ef
	ldh a, [$d7]                                     ; $7e76: $f0 $d7
	ret c                                            ; $7e78: $d8

	db $db                                           ; $7e79: $db
	call c, $9e9d                                    ; $7e7a: $dc $9d $9e
	ld a, [de]                                       ; $7e7d: $1a
	dec de                                           ; $7e7e: $1b
	add hl, bc                                       ; $7e7f: $09
	add hl, bc                                       ; $7e80: $09
	adc b                                            ; $7e81: $88
	adc b                                            ; $7e82: $88
	rra                                              ; $7e83: $1f
	rra                                              ; $7e84: $1f
	pop hl                                           ; $7e85: $e1
	rst $38                                          ; $7e86: $ff
	ret c                                            ; $7e87: $d8

	ld d, b                                          ; $7e88: $50
	ld a, e                                          ; $7e89: $7b
	cp $91                                           ; $7e8a: $fe $91
	ld [hl], b                                       ; $7e8c: $70
	ld hl, sp+$30                                    ; $7e8d: $f8 $30
	cp h                                             ; $7e8f: $bc
	db $10                                           ; $7e90: $10
	sbc h                                            ; $7e91: $9c
	ld [$008d], sp                                   ; $7e92: $08 $8d $00
	ld [bc], a                                       ; $7e95: $02
	ld bc, $0182                                     ; $7e96: $01 $82 $01
	add e                                            ; $7e99: $83
	cp d                                             ; $7e9a: $ba
	add e                                            ; $7e9b: $83
	add c                                            ; $7e9c: $81
	add b                                            ; $7e9d: $80
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	db $10                                           ; $7ea0: $10
	or [hl]                                          ; $7ea1: $b6
	add b                                            ; $7ea2: $80
	db $e3                                           ; $7ea3: $e3
	or l                                             ; $7ea4: $b5
	db $e3                                           ; $7ea5: $e3
	db $e3                                           ; $7ea6: $e3
	ld b, c                                          ; $7ea7: $41
	ld h, d                                          ; $7ea8: $62
	ld b, c                                          ; $7ea9: $41
	ld h, e                                          ; $7eaa: $63
	ld e, h                                          ; $7eab: $5c
	ld e, $7f                                        ; $7eac: $1e $7f
	ld h, c                                          ; $7eae: $61
	rst $38                                          ; $7eaf: $ff
	cp a                                             ; $7eb0: $bf
	ret nz                                           ; $7eb1: $c0

	ld e, a                                          ; $7eb2: $5f
	cp h                                             ; $7eb3: $bc
	or a                                             ; $7eb4: $b7
	ld a, [hl]                                       ; $7eb5: $7e
	ld [hl], d                                       ; $7eb6: $72
	rst FarCall                                          ; $7eb7: $f7
	or e                                             ; $7eb8: $b3
	di                                               ; $7eb9: $f3
	dec hl                                           ; $7eba: $2b
	cp a                                             ; $7ebb: $bf
	inc hl                                           ; $7ebc: $23
	ld a, $25                                        ; $7ebd: $3e $25
	ld [hl], $5c                                     ; $7ebf: $36 $5c
	ccf                                              ; $7ec1: $3f
	rst $38                                          ; $7ec2: $ff
	sbc [hl]                                         ; $7ec3: $9e
	ld bc, $03bc                                     ; $7ec4: $01 $bc $03
	inc bc                                           ; $7ec7: $03
	rlca                                             ; $7ec8: $07
	rlca                                             ; $7ec9: $07
	rrca                                             ; $7eca: $0f
	sub c                                            ; $7ecb: $91
	ld bc, $030f                                     ; $7ecc: $01 $0f $03
	rra                                              ; $7ecf: $1f
	rlca                                             ; $7ed0: $07
	ccf                                              ; $7ed1: $3f
	rrca                                             ; $7ed2: $0f
	ld a, a                                          ; $7ed3: $7f
	ld e, $bf                                        ; $7ed4: $1e $bf
	ld a, h                                          ; $7ed6: $7c
	rst $38                                          ; $7ed7: $ff
	ldh a, [rIE]                                     ; $7ed8: $f0 $ff
	cp a                                             ; $7eda: $bf
	rst $38                                          ; $7edb: $ff
	ld a, a                                          ; $7edc: $7f
	add e                                            ; $7edd: $83
	inc bc                                           ; $7ede: $03
	ld d, b                                          ; $7edf: $50
	rst $38                                          ; $7ee0: $ff
	ld b, b                                          ; $7ee1: $40
	rst $38                                          ; $7ee2: $ff
	jr z, @+$01                                      ; $7ee3: $28 $ff

	xor b                                            ; $7ee5: $a8
	rst $38                                          ; $7ee6: $ff
	and b                                            ; $7ee7: $a0
	rst $38                                          ; $7ee8: $ff
	and h                                            ; $7ee9: $a4
	rst $38                                          ; $7eea: $ff
	push de                                          ; $7eeb: $d5
	rst $38                                          ; $7eec: $ff
	ld d, l                                          ; $7eed: $55
	rst $38                                          ; $7eee: $ff
	pop de                                           ; $7eef: $d1
	ld a, a                                          ; $7ef0: $7f
	and c                                            ; $7ef1: $a1
	ld l, a                                          ; $7ef2: $6f
	and b                                            ; $7ef3: $a0
	ld l, a                                          ; $7ef4: $6f
	and b                                            ; $7ef5: $a0
	rst $38                                          ; $7ef6: $ff
	ldh [$36], a                                     ; $7ef7: $e0 $36
	ret nc                                           ; $7ef9: $d0

	ld l, a                                          ; $7efa: $6f
	cp $93                                           ; $7efb: $fe $93
	ccf                                              ; $7efd: $3f
	ldh a, [$3f]                                     ; $7efe: $f0 $3f
	or h                                             ; $7f00: $b4
	ld a, a                                          ; $7f01: $7f
	ret nc                                           ; $7f02: $d0

	ld e, a                                          ; $7f03: $5f
	ld d, b                                          ; $7f04: $50
	rst SubAFromDE                                          ; $7f05: $df
	sub b                                            ; $7f06: $90
	sbc a                                            ; $7f07: $9f
	sub h                                            ; $7f08: $94
	ld h, e                                          ; $7f09: $63
	cp $95                                           ; $7f0a: $fe $95
	adc h                                            ; $7f0c: $8c
	adc a                                            ; $7f0d: $8f
	adc c                                            ; $7f0e: $89
	adc a                                            ; $7f0f: $8f
	ret                                              ; $7f10: $c9


	ld c, a                                          ; $7f11: $4f
	ld sp, hl                                        ; $7f12: $f9
	rst $38                                          ; $7f13: $ff
	ld sp, hl                                        ; $7f14: $f9
	rrca                                             ; $7f15: $0f
	ld b, $e0                                        ; $7f16: $06 $e0
	ld b, a                                          ; $7f18: $47
	nop                                              ; $7f19: $00
	sub e                                            ; $7f1a: $93
	cp $01                                           ; $7f1b: $fe $01
	db $eb                                           ; $7f1d: $eb
	inc e                                            ; $7f1e: $1c
	db $dd                                           ; $7f1f: $dd
	ld a, $72                                        ; $7f20: $3e $72
	di                                               ; $7f22: $f3
	or $ff                                           ; $7f23: $f6 $ff
	ld l, $ff                                        ; $7f25: $2e $ff
	ld [hl], a                                       ; $7f27: $77
	nop                                              ; $7f28: $00
	inc bc                                           ; $7f29: $03
	jr nz, jr_068_7f77                               ; $7f2a: $20 $4b

	jr nz, jr_068_7fac                               ; $7f2c: $20 $7e

	ret nc                                           ; $7f2e: $d0

	ld a, a                                          ; $7f2f: $7f
	ret nz                                           ; $7f30: $c0

	sub a                                            ; $7f31: $97
	cp l                                             ; $7f32: $bd
	ld a, [hl]                                       ; $7f33: $7e
	ld h, [hl]                                       ; $7f34: $66
	rst SubAFromBC                                          ; $7f35: $e7
	cp e                                             ; $7f36: $bb
	rst $38                                          ; $7f37: $ff
	ld a, [hl+]                                      ; $7f38: $2a
	ccf                                              ; $7f39: $3f
	ld [hl], a                                       ; $7f3a: $77
	jr nz, jr_068_7f44                               ; $7f3b: $20 $07

	ld b, b                                          ; $7f3d: $40
	dec hl                                           ; $7f3e: $2b
	ld h, b                                          ; $7f3f: $60
	ld [hl], e                                       ; $7f40: $73
	cp $2f                                           ; $7f41: $fe $2f
	ld h, b                                          ; $7f43: $60

jr_068_7f44:
	halt                                             ; $7f44: $76
	add sp, -$66                                     ; $7f45: $e8 $9a
	di                                               ; $7f47: $f3
	nop                                              ; $7f48: $00
	cp a                                             ; $7f49: $bf
	ld a, h                                          ; $7f4a: $7c
	rst AddAOntoHL                                          ; $7f4b: $ef
	inc bc                                           ; $7f4c: $03
	ld h, b                                          ; $7f4d: $60
	cpl                                              ; $7f4e: $2f
	ld h, b                                          ; $7f4f: $60
	ld [hl], a                                       ; $7f50: $77
	ret nz                                           ; $7f51: $c0

	sub l                                            ; $7f52: $95
	jp $dd00                                         ; $7f53: $c3 $00 $dd


	ld a, $eb                                        ; $7f56: $3e $eb
	rst $38                                          ; $7f58: $ff
	halt                                             ; $7f59: $76
	scf                                              ; $7f5a: $37
	ld a, c                                          ; $7f5b: $79
	ld e, $2b                                        ; $7f5c: $1e $2b
	ld h, b                                          ; $7f5e: $60
	sbc [hl]                                         ; $7f5f: $9e
	ld a, a                                          ; $7f60: $7f
	ld a, e                                          ; $7f61: $7b
	ld h, b                                          ; $7f62: $60
	sbc [hl]                                         ; $7f63: $9e
	or [hl]                                          ; $7f64: $b6
	inc bc                                           ; $7f65: $03
	ld h, b                                          ; $7f66: $60
	dec de                                           ; $7f67: $1b
	ld h, b                                          ; $7f68: $60
	sbc [hl]                                         ; $7f69: $9e
	ldh [$bf], a                                     ; $7f6a: $e0 $bf
	db $fc                                           ; $7f6c: $fc
	db $d3                                           ; $7f6d: $d3
	ld a, a                                          ; $7f6e: $7f
	adc a                                            ; $7f6f: $8f
	sbc [hl]                                         ; $7f70: $9e
	ld a, $03                                        ; $7f71: $3e $03
	ld h, b                                          ; $7f73: $60
	dec hl                                           ; $7f74: $2b
	ld h, b                                          ; $7f75: $60
	ld a, l                                          ; $7f76: $7d

jr_068_7f77:
	ld [$1e9a], a                                    ; $7f77: $ea $9a $1e
	nop                                              ; $7f7a: $00
	ld b, c                                          ; $7f7b: $41
	ld h, c                                          ; $7f7c: $61
	ld a, $26                                        ; $7f7d: $3e $26
	ret nz                                           ; $7f7f: $c0

Call_068_7f80:
Jump_068_7f80:
	ld [hl], a                                       ; $7f80: $77
	ld h, b                                          ; $7f81: $60
	ld [hl], e                                       ; $7f82: $73
	ld e, [hl]                                       ; $7f83: $5e
	adc l                                            ; $7f84: $8d
	inc a                                            ; $7f85: $3c
	nop                                              ; $7f86: $00
	ld a, h                                          ; $7f87: $7c
	jr nz, jr_068_7fe6                               ; $7f88: $20 $5c

	ld h, b                                          ; $7f8a: $60
	jr c, @+$22                                      ; $7f8b: $38 $20

	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	halt                                             ; $7f8f: $76
	ld c, h                                          ; $7f90: $4c
	inc a                                            ; $7f91: $3c
	jr c, jr_068_7f94                                ; $7f92: $38 $00

jr_068_7f94:
	nop                                              ; $7f94: $00
	jr z, jr_068_7fa7                                ; $7f95: $28 $10

	ei                                               ; $7f97: $fb

Call_068_7f98:
	sub a                                            ; $7f98: $97
	jp nz, $db81                                     ; $7f99: $c2 $81 $db

	rst SubAFromBC                                          ; $7f9c: $e7
	cp a                                             ; $7f9d: $bf
	db $fc                                           ; $7f9e: $fc
	inc a                                            ; $7f9f: $3c
	and b                                            ; $7fa0: $a0
	ld e, a                                          ; $7fa1: $5f
	ldh [$98], a                                     ; $7fa2: $e0 $98
	ld d, [hl]                                       ; $7fa4: $56
	inc l                                            ; $7fa5: $2c
	inc a                                            ; $7fa6: $3c

jr_068_7fa7:
	inc d                                            ; $7fa7: $14
	jr c, jr_068_7fc2                                ; $7fa8: $38 $18

	nop                                              ; $7faa: $00
	cp l                                             ; $7fab: $bd

jr_068_7fac:
	jr jr_068_7fae                                   ; $7fac: $18 $00

jr_068_7fae:
	nop                                              ; $7fae: $00
	jp nz, $e043                                     ; $7faf: $c2 $43 $e0

	sbc [hl]                                         ; $7fb2: $9e
	ld a, [hl]                                       ; $7fb3: $7e
	sbc $3e                                          ; $7fb4: $de $3e
	ld a, a                                          ; $7fb6: $7f
	sbc $ff                                          ; $7fb7: $de $ff
	sbc [hl]                                         ; $7fb9: $9e
	ld [$be73], sp                                   ; $7fba: $08 $73 $be
	scf                                              ; $7fbd: $37
	ldh [$7b], a                                     ; $7fbe: $e0 $7b
	sbc $9d                                          ; $7fc0: $de $9d

jr_068_7fc2:
	inc [hl]                                         ; $7fc2: $34
	inc a                                            ; $7fc3: $3c
	ld l, e                                          ; $7fc4: $6b
	cp [hl]                                          ; $7fc5: $be
	ld h, a                                          ; $7fc6: $67
	ldh [$d9], a                                     ; $7fc7: $e0 $d9
	ld bc, $0180                                     ; $7fc9: $01 $80 $01
	or a                                             ; $7fcc: $b7
	ld bc, $0177                                     ; $7fcd: $01 $77 $01
	ld l, a                                          ; $7fd0: $6f
	ld b, c                                          ; $7fd1: $41
	rst AddAOntoHL                                          ; $7fd2: $ef
	ld b, e                                          ; $7fd3: $43
	rst GetHLinHL                                          ; $7fd4: $cf
	add e                                            ; $7fd5: $83
	rst SubAFromDE                                          ; $7fd6: $df
	add [hl]                                         ; $7fd7: $86
	rst SubAFromDE                                          ; $7fd8: $df
	add h                                            ; $7fd9: $84
	cp a                                             ; $7fda: $bf
	dec l                                            ; $7fdb: $2d
	cp [hl]                                          ; $7fdc: $be
	dec l                                            ; $7fdd: $2d
	cp $5d                                           ; $7fde: $fe $5d
	cp $5f                                           ; $7fe0: $fe $5f
	rst $38                                          ; $7fe2: $ff
	ld e, a                                          ; $7fe3: $5f
	cp $5f                                           ; $7fe4: $fe $5f

jr_068_7fe6:
	cp $3a                                           ; $7fe6: $fe $3a
	rst $38                                          ; $7fe8: $ff
	cp a                                             ; $7fe9: $bf
	add b                                            ; $7fea: $80
	ei                                               ; $7feb: $fb
	rst AddAOntoHL                                          ; $7fec: $ef
	cp l                                             ; $7fed: $bd
	cp $af                                           ; $7fee: $fe $af
	ei                                               ; $7ff0: $fb
	xor e                                            ; $7ff1: $ab
	ld hl, sp+$28                                    ; $7ff2: $f8 $28
	ret z                                            ; $7ff4: $c8

	ld a, b                                          ; $7ff5: $78
	ldh a, [$50]                                     ; $7ff6: $f0 $50
	or b                                             ; $7ff8: $b0
	ld d, b                                          ; $7ff9: $50
	ldh a, [rAUD1SWEEP]                              ; $7ffa: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $7ffc: $f0 $10
	or c                                             ; $7ffe: $b1
	ld d, c                                          ; $7fff: $51
