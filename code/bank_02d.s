; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

	rra                                              ; $4000: $1f
	rst $38                                          ; $4001: $ff
	ld a, a                                          ; $4002: $7f
	ld e, $43                                        ; $4003: $1e $43
	sub $1d                                          ; $4005: $d6 $1d
	ld h, [hl]                                       ; $4007: $66
	ld [$7fff], sp                                   ; $4008: $08 $ff $7f
	rst GetHLinHL                                          ; $400b: $cf
	ld b, e                                          ; $400c: $43
	inc b                                            ; $400d: $04
	ld [de], a                                       ; $400e: $12
	sbc e                                            ; $400f: $9b
	ld b, e                                          ; $4010: $43
	rst $38                                          ; $4011: $ff
	ld a, a                                          ; $4012: $7f
	call nc, $1f7b                                   ; $4013: $d4 $7b $1f
	ld [hl], e                                       ; $4016: $73
	ld c, d                                          ; $4017: $4a
	ld c, c                                          ; $4018: $49
	db $10                                           ; $4019: $10
	ld c, d                                          ; $401a: $4a
	add a                                            ; $401b: $87
	db $10                                           ; $401c: $10
	inc b                                            ; $401d: $04
	ld [de], a                                       ; $401e: $12
	inc hl                                           ; $401f: $23
	inc b                                            ; $4020: $04
	rst $38                                          ; $4021: $ff
	ld a, a                                          ; $4022: $7f
	dec a                                            ; $4023: $3d
	scf                                              ; $4024: $37
	and [hl]                                         ; $4025: $a6
	db $10                                           ; $4026: $10
	inc hl                                           ; $4027: $23
	inc b                                            ; $4028: $04
	rra                                              ; $4029: $1f
	rst $38                                          ; $402a: $ff
	ld a, a                                          ; $402b: $7f
	ld e, $43                                        ; $402c: $1e $43
	sub $1d                                          ; $402e: $d6 $1d
	ld h, [hl]                                       ; $4030: $66
	ld [$7fff], sp                                   ; $4031: $08 $ff $7f
	sbc e                                            ; $4034: $9b
	ld b, e                                          ; $4035: $43
	rst GetHLinHL                                          ; $4036: $cf
	ld b, e                                          ; $4037: $43
	inc b                                            ; $4038: $04
	ld [de], a                                       ; $4039: $12
	rst $38                                          ; $403a: $ff
	ld a, a                                          ; $403b: $7f
	call nc, $1f7b                                   ; $403c: $d4 $7b $1f
	ld [hl], e                                       ; $403f: $73
	ld c, d                                          ; $4040: $4a
	ld c, c                                          ; $4041: $49
	cp $7b                                           ; $4042: $fe $7b
	ld hl, sp+$52                                    ; $4044: $f8 $52
	sub c                                            ; $4046: $91
	dec [hl]                                         ; $4047: $35
	jp z, $ff10                                      ; $4048: $ca $10 $ff

	ld a, a                                          ; $404b: $7f
	xor [hl]                                         ; $404c: $ae
	dec [hl]                                         ; $404d: $35
	and [hl]                                         ; $404e: $a6
	db $10                                           ; $404f: $10
	inc hl                                           ; $4050: $23
	inc b                                            ; $4051: $04
	rra                                              ; $4052: $1f
	rst SubAFromDE                                          ; $4053: $df
	ld h, a                                          ; $4054: $67
	ld e, $43                                        ; $4055: $1e $43
	sub $1d                                          ; $4057: $d6 $1d
	ld h, [hl]                                       ; $4059: $66
	ld [$7fff], sp                                   ; $405a: $08 $ff $7f
	sbc e                                            ; $405d: $9b
	ld b, e                                          ; $405e: $43
	rst GetHLinHL                                          ; $405f: $cf
	ld b, e                                          ; $4060: $43
	add h                                            ; $4061: $84
	ld de, $35ac                                     ; $4062: $11 $ac $35
	daa                                              ; $4065: $27
	dec a                                            ; $4066: $3d
	add b                                            ; $4067: $80
	inc l                                            ; $4068: $2c
	ld b, c                                          ; $4069: $41
	db $10                                           ; $406a: $10
	cp h                                             ; $406b: $bc
	ld h, a                                          ; $406c: $67
	ld a, a                                          ; $406d: $7f
	ld e, d                                          ; $406e: $5a
	cp e                                             ; $406f: $bb
	ld c, c                                          ; $4070: $49
	db $10                                           ; $4071: $10
	ld c, d                                          ; $4072: $4a
	or $56                                           ; $4073: $f6 $56
	xor [hl]                                         ; $4075: $ae
	dec [hl]                                         ; $4076: $35
	and [hl]                                         ; $4077: $a6
	db $10                                           ; $4078: $10
	inc hl                                           ; $4079: $23
	inc b                                            ; $407a: $04
	rra                                              ; $407b: $1f
	rst SubAFromDE                                          ; $407c: $df
	ld h, a                                          ; $407d: $67
	ld e, $43                                        ; $407e: $1e $43
	sub $1d                                          ; $4080: $d6 $1d
	ld h, [hl]                                       ; $4082: $66
	ld [$7fff], sp                                   ; $4083: $08 $ff $7f
	sbc e                                            ; $4086: $9b
	ld b, e                                          ; $4087: $43
	rst GetHLinHL                                          ; $4088: $cf
	ld b, e                                          ; $4089: $43
	add h                                            ; $408a: $84
	ld de, $35ac                                     ; $408b: $11 $ac $35
	daa                                              ; $408e: $27
	dec a                                            ; $408f: $3d
	add b                                            ; $4090: $80
	inc l                                            ; $4091: $2c
	ld b, c                                          ; $4092: $41
	db $10                                           ; $4093: $10
	cp h                                             ; $4094: $bc
	ld h, a                                          ; $4095: $67
	ld a, a                                          ; $4096: $7f
	ld e, d                                          ; $4097: $5a
	cp e                                             ; $4098: $bb
	ld c, c                                          ; $4099: $49
	db $10                                           ; $409a: $10
	ld c, d                                          ; $409b: $4a
	or $56                                           ; $409c: $f6 $56
	xor [hl]                                         ; $409e: $ae
	dec [hl]                                         ; $409f: $35
	and [hl]                                         ; $40a0: $a6
	db $10                                           ; $40a1: $10
	inc hl                                           ; $40a2: $23
	inc b                                            ; $40a3: $04
	rra                                              ; $40a4: $1f
	sbc $6f                                          ; $40a5: $de $6f
	ld [hl], $5f                                     ; $40a7: $36 $5f
	ld c, $46                                        ; $40a9: $0e $46
	and h                                            ; $40ab: $a4
	ld [$5b7e], sp                                   ; $40ac: $08 $7e $5b
	dec c                                            ; $40af: $0d
	ld b, d                                          ; $40b0: $42
	xor h                                            ; $40b1: $ac
	ld a, [bc]                                       ; $40b2: $0a
	and h                                            ; $40b3: $a4
	ld [$5b7e], sp                                   ; $40b4: $08 $7e $5b
	sub h                                            ; $40b7: $94
	ld h, $1e                                        ; $40b8: $26 $1e
	ld [hl+], a                                      ; $40ba: $22
	and h                                            ; $40bb: $a4
	ld [$5b7e], sp                                   ; $40bc: $08 $7e $5b
	dec c                                            ; $40bf: $0d
	ld b, d                                          ; $40c0: $42
	ld d, b                                          ; $40c1: $50
	ld hl, $08a4                                     ; $40c2: $21 $a4 $08
	sbc a                                            ; $40c5: $9f
	ld e, a                                          ; $40c6: $5f
	cpl                                              ; $40c7: $2f
	ld e, e                                          ; $40c8: $5b
	sub c                                            ; $40c9: $91
	dec h                                            ; $40ca: $25
	push bc                                          ; $40cb: $c5
	db $10                                           ; $40cc: $10
	rra                                              ; $40cd: $1f
	cp l                                             ; $40ce: $bd
	ld [hl], a                                       ; $40cf: $77
	ld l, $42                                        ; $40d0: $2e $42
	db $db                                           ; $40d2: $db
	ld a, $2e                                        ; $40d3: $3e $2e
	add hl, de                                       ; $40d5: $19
	or [hl]                                          ; $40d6: $b6
	ld d, d                                          ; $40d7: $52
	dec l                                            ; $40d8: $2d
	ld [hl], $88                                     ; $40d9: $36 $88
	ld sp, $1082                                     ; $40db: $31 $82 $10
	db $db                                           ; $40de: $db
	ld a, $16                                        ; $40df: $3e $16
	ld l, $91                                        ; $40e1: $2e $91
	dec e                                            ; $40e3: $1d
	ld h, [hl]                                       ; $40e4: $66
	db $10                                           ; $40e5: $10
	ld a, [de]                                       ; $40e6: $1a
	ld d, a                                          ; $40e7: $57
	ld c, $3e                                        ; $40e8: $0e $3e
	ld c, [hl]                                       ; $40ea: $4e
	dec e                                            ; $40eb: $1d
	add d                                            ; $40ec: $82
	db $10                                           ; $40ed: $10
	db $f4                                           ; $40ee: $f4
	ld d, [hl]                                       ; $40ef: $56
	ld [hl], b                                       ; $40f0: $70
	dec h                                            ; $40f1: $25
	add sp, $0c                                      ; $40f2: $e8 $0c
	add d                                            ; $40f4: $82
	db $10                                           ; $40f5: $10
	rra                                              ; $40f6: $1f
	rst $38                                          ; $40f7: $ff
	ld a, a                                          ; $40f8: $7f
	sub b                                            ; $40f9: $90
	ld c, [hl]                                       ; $40fa: $4e
	xor b                                            ; $40fb: $a8
	add hl, hl                                       ; $40fc: $29
	ld b, $19                                        ; $40fd: $06 $19
	rst $38                                          ; $40ff: $ff
	ld a, a                                          ; $4100: $7f
	reti                                             ; $4101: $d9


	dec hl                                           ; $4102: $2b
	ld d, e                                          ; $4103: $53
	cpl                                              ; $4104: $2f
	ld d, b                                          ; $4105: $50
	ld [hl], $ff                                     ; $4106: $36 $ff
	ld a, a                                          ; $4108: $7f
	reti                                             ; $4109: $d9


	dec hl                                           ; $410a: $2b
	ld d, b                                          ; $410b: $50
	ld [hl], $06                                     ; $410c: $36 $06
	add hl, de                                       ; $410e: $19
	reti                                             ; $410f: $d9


	dec hl                                           ; $4110: $2b
	ld d, e                                          ; $4111: $53
	cpl                                              ; $4112: $2f
	dec bc                                           ; $4113: $0b
	ld h, $06                                        ; $4114: $26 $06
	add hl, de                                       ; $4116: $19
	rst $38                                          ; $4117: $ff
	ld a, a                                          ; $4118: $7f
	ld e, l                                          ; $4119: $5d
	ld b, e                                          ; $411a: $43
	ld a, [hl-]                                      ; $411b: $3a
	ld h, $4a                                        ; $411c: $26 $4a
	dec d                                            ; $411e: $15
	rra                                              ; $411f: $1f
	rst $38                                          ; $4120: $ff
	ld a, a                                          ; $4121: $7f
	dec [hl]                                         ; $4122: $35
	ld [hl], e                                       ; $4123: $73
	xor b                                            ; $4124: $a8
	dec [hl]                                         ; $4125: $35
	and c                                            ; $4126: $a1
	inc e                                            ; $4127: $1c
	rst $38                                          ; $4128: $ff
	ld a, a                                          ; $4129: $7f
	xor [hl]                                         ; $412a: $ae
	ld c, [hl]                                       ; $412b: $4e
	daa                                              ; $412c: $27
	add hl, hl                                       ; $412d: $29
	ld b, d                                          ; $412e: $42
	inc c                                            ; $412f: $0c
	rst $38                                          ; $4130: $ff
	ld a, a                                          ; $4131: $7f
	xor [hl]                                         ; $4132: $ae
	ld c, [hl]                                       ; $4133: $4e
	xor e                                            ; $4134: $ab
	ld d, c                                          ; $4135: $51
	ld b, [hl]                                       ; $4136: $46
	dec [hl]                                         ; $4137: $35
	dec e                                            ; $4138: $1d
	ccf                                              ; $4139: $3f
	cp $77                                           ; $413a: $fe $77
	ld l, $4e                                        ; $413c: $2e $4e
	ld b, d                                          ; $413e: $42
	inc c                                            ; $413f: $0c
	rst $38                                          ; $4140: $ff
	ld a, a                                          ; $4141: $7f
	dec e                                            ; $4142: $1d
	ccf                                              ; $4143: $3f
	rst SubAFromBC                                          ; $4144: $e7
	ld hl, $0c42                                     ; $4145: $21 $42 $0c
	rra                                              ; $4148: $1f
	rst SubAFromDE                                          ; $4149: $df
	ld a, a                                          ; $414a: $7f
	ld a, d                                          ; $414b: $7a
	ld b, d                                          ; $414c: $42
	ret z                                            ; $414d: $c8

	db $10                                           ; $414e: $10
	ld h, b                                          ; $414f: $60
	db $10                                           ; $4150: $10
	ld a, d                                          ; $4151: $7a
	ld b, d                                          ; $4152: $42
	db $ed                                           ; $4153: $ed
	inc c                                            ; $4154: $0c
	ld b, h                                          ; $4155: $44
	inc b                                            ; $4156: $04
	ld b, b                                          ; $4157: $40
	db $10                                           ; $4158: $10
	dec l                                            ; $4159: $2d
	ld a, $88                                        ; $415a: $3e $88
	dec l                                            ; $415c: $2d
	db $e4                                           ; $415d: $e4
	inc h                                            ; $415e: $24
	ld h, c                                          ; $415f: $61
	inc c                                            ; $4160: $0c
	dec de                                           ; $4161: $1b
	ld e, e                                          ; $4162: $5b
	dec b                                            ; $4163: $05
	dec h                                            ; $4164: $25
	or e                                             ; $4165: $b3
	dec h                                            ; $4166: $25
	ld h, d                                          ; $4167: $62
	inc c                                            ; $4168: $0c
	rst SubAFromHL                                          ; $4169: $d7
	ld e, [hl]                                       ; $416a: $5e
	adc h                                            ; $416b: $8c
	dec [hl]                                         ; $416c: $35
	ld b, d                                          ; $416d: $42
	ld [$1042], sp                                   ; $416e: $08 $42 $10
	rra                                              ; $4171: $1f
	ld e, d                                          ; $4172: $5a
	ld l, a                                          ; $4173: $6f
	or h                                             ; $4174: $b4
	ld e, d                                          ; $4175: $5a
	ld l, d                                          ; $4176: $6a
	add hl, hl                                       ; $4177: $29
	ld b, d                                          ; $4178: $42
	ld [$6f5a], sp                                   ; $4179: $08 $5a $6f
	or h                                             ; $417c: $b4
	ld e, d                                          ; $417d: $5a
	db $10                                           ; $417e: $10
	ld b, [hl]                                       ; $417f: $46
	ld l, d                                          ; $4180: $6a
	add hl, hl                                       ; $4181: $29
	ld e, d                                          ; $4182: $5a
	ld [hl], e                                       ; $4183: $73
	and a                                            ; $4184: $a7
	ld l, l                                          ; $4185: $6d
	add hl, sp                                       ; $4186: $39
	dec a                                            ; $4187: $3d
	jr z, jr_02d_41ab                                ; $4188: $28 $21

	ld e, d                                          ; $418a: $5a
	ld l, a                                          ; $418b: $6f
	or h                                             ; $418c: $b4
	ld e, d                                          ; $418d: $5a
	add hl, sp                                       ; $418e: $39
	dec a                                            ; $418f: $3d
	jr z, jr_02d_41b3                                ; $4190: $28 $21

	ld e, d                                          ; $4192: $5a
	ld [hl], e                                       ; $4193: $73
	dec d                                            ; $4194: $15
	ld c, a                                          ; $4195: $4f
	ld [de], a                                       ; $4196: $12
	ccf                                              ; $4197: $3f
	jr z, jr_02d_41bb                                ; $4198: $28 $21

	ld e, $9c                                        ; $419a: $1e $9c
	ld b, e                                          ; $419c: $43
	xor l                                            ; $419d: $ad
	ld [hl+], a                                      ; $419e: $22
	ld b, l                                          ; $419f: $45
	ld hl, $1904                                     ; $41a0: $21 $04 $19
	sbc h                                            ; $41a3: $9c
	ld b, e                                          ; $41a4: $43
	inc c                                            ; $41a5: $0c
	ld a, [hl-]                                      ; $41a6: $3a
	ret                                              ; $41a7: $c9


	inc d                                            ; $41a8: $14
	ld b, e                                          ; $41a9: $43
	inc c                                            ; $41aa: $0c

jr_02d_41ab:
	sbc h                                            ; $41ab: $9c
	ld b, e                                          ; $41ac: $43
	ld l, a                                          ; $41ad: $6f
	ld c, [hl]                                       ; $41ae: $4e
	rst JumpTable                                          ; $41af: $c7
	dec a                                            ; $41b0: $3d
	ld b, e                                          ; $41b1: $43
	inc c                                            ; $41b2: $0c

jr_02d_41b3:
	sbc h                                            ; $41b3: $9c
	ld b, e                                          ; $41b4: $43
	rst JumpTable                                          ; $41b5: $c7
	dec a                                            ; $41b6: $3d
	ld b, l                                          ; $41b7: $45
	ld hl, $1904                                     ; $41b8: $21 $04 $19

jr_02d_41bb:
	rra                                              ; $41bb: $1f
	ld e, c                                          ; $41bc: $59
	ld e, a                                          ; $41bd: $5f
	dec hl                                           ; $41be: $2b
	ld e, d                                          ; $41bf: $5a
	call nz, $841c                                   ; $41c0: $c4 $1c $84
	inc c                                            ; $41c3: $0c
	sbc h                                            ; $41c4: $9c
	ld l, e                                          ; $41c5: $6b
	cp d                                             ; $41c6: $ba
	ld a, [hl-]                                      ; $41c7: $3a
	push bc                                          ; $41c8: $c5
	jr nz, @+$43                                     ; $41c9: $20 $41

	inc c                                            ; $41cb: $0c
	rst $38                                          ; $41cc: $ff
	ld a, a                                          ; $41cd: $7f
	sbc h                                            ; $41ce: $9c
	ld e, a                                          ; $41cf: $5f
	pop de                                           ; $41d0: $d1
	ld d, d                                          ; $41d1: $52
	rlca                                             ; $41d2: $07
	add hl, hl                                       ; $41d3: $29
	rst $38                                          ; $41d4: $ff
	ld [hl], a                                       ; $41d5: $77
	pop de                                           ; $41d6: $d1
	ld d, d                                          ; $41d7: $52
	ld a, d                                          ; $41d8: $7a
	ld a, [hl+]                                      ; $41d9: $2a
	and l                                            ; $41da: $a5
	db $10                                           ; $41db: $10
	sbc h                                            ; $41dc: $9c
	ld h, e                                          ; $41dd: $63
	inc sp                                           ; $41de: $33
	dec e                                            ; $41df: $1d
	ld a, d                                          ; $41e0: $7a
	ld a, [hl+]                                      ; $41e1: $2a
	push bc                                          ; $41e2: $c5
	jr @+$21                                         ; $41e3: $18 $1f

	ld a, c                                          ; $41e5: $79
	ld l, $f5                                        ; $41e6: $2e $f5
	ld l, d                                          ; $41e8: $6a
	db $f4                                           ; $41e9: $f4
	dec h                                            ; $41ea: $25
	ld c, d                                          ; $41eb: $4a
	add hl, hl                                       ; $41ec: $29
	sbc $7f                                          ; $41ed: $de $7f
	db $f4                                           ; $41ef: $f4
	ld l, d                                          ; $41f0: $6a
	inc c                                            ; $41f1: $0c
	ld d, d                                          ; $41f2: $52
	and $1c                                          ; $41f3: $e6 $1c
	dec d                                            ; $41f5: $15
	ld l, e                                          ; $41f6: $6b
	add h                                            ; $41f7: $84
	db $10                                           ; $41f8: $10
	dec l                                            ; $41f9: $2d
	ld e, d                                          ; $41fa: $5a
	and $28                                          ; $41fb: $e6 $28
	sbc $7f                                          ; $41fd: $de $7f
	ld c, d                                          ; $41ff: $4a
	add hl, hl                                       ; $4200: $29
	db $f4                                           ; $4201: $f4
	dec h                                            ; $4202: $25
	and $28                                          ; $4203: $e6 $28
	rst $38                                          ; $4205: $ff
	ld h, e                                          ; $4206: $63
	sbc $7f                                          ; $4207: $de $7f
	db $f4                                           ; $4209: $f4
	ld l, d                                          ; $420a: $6a
	and $1c                                          ; $420b: $e6 $1c
	rra                                              ; $420d: $1f
	sbc l                                            ; $420e: $9d
	ld l, e                                          ; $420f: $6b
	or h                                             ; $4210: $b4
	ld d, [hl]                                       ; $4211: $56
	xor d                                            ; $4212: $aa
	dec l                                            ; $4213: $2d
	ld h, h                                          ; $4214: $64
	nop                                              ; $4215: $00
	or h                                             ; $4216: $b4
	ld d, [hl]                                       ; $4217: $56
	rst SubAFromBC                                          ; $4218: $e7
	inc h                                            ; $4219: $24
	rrca                                             ; $421a: $0f
	add hl, bc                                       ; $421b: $09
	jr nz, jr_02d_4222                               ; $421c: $20 $04

	ld a, b                                          ; $421e: $78
	ld [hl], $b4                                     ; $421f: $36 $b4
	ld d, [hl]                                       ; $4221: $56

jr_02d_4222:
	ld c, a                                          ; $4222: $4f
	dec d                                            ; $4223: $15
	add h                                            ; $4224: $84
	ld [$3678], sp                                   ; $4225: $08 $78 $36
	adc b                                            ; $4228: $88
	add hl, bc                                       ; $4229: $09
	rst $38                                          ; $422a: $ff
	jr z, @+$64                                      ; $422b: $28 $62

	ld [$3678], sp                                   ; $422d: $08 $78 $36
	rst SubAFromBC                                          ; $4230: $e7
	inc h                                            ; $4231: $24
	add e                                            ; $4232: $83
	inc d                                            ; $4233: $14
	ld b, d                                          ; $4234: $42
	inc b                                            ; $4235: $04
	rra                                              ; $4236: $1f
	cp l                                             ; $4237: $bd
	ld l, a                                          ; $4238: $6f
	db $ec                                           ; $4239: $ec
	dec [hl]                                         ; $423a: $35
	ld b, a                                          ; $423b: $47
	dec l                                            ; $423c: $2d
	and e                                            ; $423d: $a3
	inc d                                            ; $423e: $14
	sbc a                                            ; $423f: $9f
	ld e, e                                          ; $4240: $5b
	inc de                                           ; $4241: $13
	ld [hl-], a                                      ; $4242: $32
	ld c, a                                          ; $4243: $4f
	add hl, hl                                       ; $4244: $29
	and [hl]                                         ; $4245: $a6
	db $10                                           ; $4246: $10
	cp a                                             ; $4247: $bf
	ld a, a                                          ; $4248: $7f
	or a                                             ; $4249: $b7
	ld d, [hl]                                       ; $424a: $56
	xor h                                            ; $424b: $ac
	ld b, b                                          ; $424c: $40
	db $e4                                           ; $424d: $e4
	inc e                                            ; $424e: $1c
	rst $38                                          ; $424f: $ff
	ld a, a                                          ; $4250: $7f
	sbc a                                            ; $4251: $9f
	ld e, e                                          ; $4252: $5b
	srl c                                            ; $4253: $cb $39
	and e                                            ; $4255: $a3
	inc d                                            ; $4256: $14
	ld e, h                                          ; $4257: $5c
	ld [hl], e                                       ; $4258: $73
	add $45                                          ; $4259: $c6 $45
	call z, $a34c                                    ; $425b: $cc $4c $a3
	inc d                                            ; $425e: $14
	rra                                              ; $425f: $1f
	rst $38                                          ; $4260: $ff
	ld a, a                                          ; $4261: $7f
	cp e                                             ; $4262: $bb
	ld d, e                                          ; $4263: $53
	dec [hl]                                         ; $4264: $35
	ld h, e                                          ; $4265: $63
	adc d                                            ; $4266: $8a
	ld b, l                                          ; $4267: $45
	rst $38                                          ; $4268: $ff
	ld a, a                                          ; $4269: $7f
	ccf                                              ; $426a: $3f
	ccf                                              ; $426b: $3f
	sbc [hl]                                         ; $426c: $9e
	ld [hl-], a                                      ; $426d: $32
	ld [hl], c                                       ; $426e: $71
	add hl, hl                                       ; $426f: $29
	rst $38                                          ; $4270: $ff
	ld a, a                                          ; $4271: $7f
	ccf                                              ; $4272: $3f
	ccf                                              ; $4273: $3f
	jp nc, $0a76                                     ; $4274: $d2 $76 $0a

	add hl, hl                                       ; $4277: $29
	ccf                                              ; $4278: $3f
	ccf                                              ; $4279: $3f
	inc [hl]                                         ; $427a: $34
	ld h, e                                          ; $427b: $63
	rst JumpTable                                          ; $427c: $c7
	db $10                                           ; $427d: $10
	ld [hl], c                                       ; $427e: $71
	add hl, hl                                       ; $427f: $29
	rst $38                                          ; $4280: $ff
	ld a, a                                          ; $4281: $7f
	inc [hl]                                         ; $4282: $34
	ld h, e                                          ; $4283: $63
	adc d                                            ; $4284: $8a
	ld b, l                                          ; $4285: $45
	rst JumpTable                                          ; $4286: $c7
	db $10                                           ; $4287: $10
	rra                                              ; $4288: $1f
	rst SubAFromDE                                          ; $4289: $df
	ld a, e                                          ; $428a: $7b
	ld [hl], b                                       ; $428b: $70
	ld [hl-], a                                      ; $428c: $32
	call $e56e                                       ; $428d: $cd $6e $e5
	inc d                                            ; $4290: $14
	rst $38                                          ; $4291: $ff
	ld a, a                                          ; $4292: $7f
	sbc d                                            ; $4293: $9a
	ld [hl], $3e                                     ; $4294: $36 $3e
	ld b, e                                          ; $4296: $43
	ld b, e                                          ; $4297: $43
	inc c                                            ; $4298: $0c
	rst $38                                          ; $4299: $ff
	ld a, a                                          ; $429a: $7f
	rla                                              ; $429b: $17
	ld e, a                                          ; $429c: $5f
	ld d, b                                          ; $429d: $50
	ld c, d                                          ; $429e: $4a
	and l                                            ; $429f: $a5
	inc d                                            ; $42a0: $14
	rla                                              ; $42a1: $17
	ld d, a                                          ; $42a2: $57
	ld a, $43                                        ; $42a3: $3e $43
	db $10                                           ; $42a5: $10
	inc b                                            ; $42a6: $04
	ld h, e                                          ; $42a7: $63
	inc c                                            ; $42a8: $0c
	ld a, $43                                        ; $42a9: $3e $43
	rst SubAFromBC                                          ; $42ab: $e7
	inc d                                            ; $42ac: $14
	db $10                                           ; $42ad: $10
	inc b                                            ; $42ae: $04
	inc hl                                           ; $42af: $23
	inc b                                            ; $42b0: $04

jr_02d_42b1:
	rra                                              ; $42b1: $1f
	ld e, l                                          ; $42b2: $5d
	rra                                              ; $42b3: $1f
	ld a, [hl]                                       ; $42b4: $7e
	ld b, a                                          ; $42b5: $47
	rst GetHLinHL                                          ; $42b6: $cf
	ld b, [hl]                                       ; $42b7: $46
	add sp, $18                                      ; $42b8: $e8 $18
	call c, Call_02d_747b                            ; $42ba: $dc $7b $74
	ld l, a                                          ; $42bd: $6f
	rst GetHLinHL                                          ; $42be: $cf
	ld b, [hl]                                       ; $42bf: $46
	add sp, $18                                      ; $42c0: $e8 $18
	rst $38                                          ; $42c2: $ff
	ld a, a                                          ; $42c3: $7f
	cp d                                             ; $42c4: $ba
	ld l, $d0                                        ; $42c5: $2e $d0
	ld b, [hl]                                       ; $42c7: $46
	add sp, $18                                      ; $42c8: $e8 $18
	rst $38                                          ; $42ca: $ff
	ld a, a                                          ; $42cb: $7f
	ld a, [hl]                                       ; $42cc: $7e
	ld b, a                                          ; $42cd: $47
	ld a, c                                          ; $42ce: $79
	ld hl, $18e8                                     ; $42cf: $21 $e8 $18
	rst $38                                          ; $42d2: $ff
	ld [hl], a                                       ; $42d3: $77
	ld a, [hl]                                       ; $42d4: $7e
	ld b, a                                          ; $42d5: $47
	cp d                                             ; $42d6: $ba
	ld l, $e8                                        ; $42d7: $2e $e8
	jr jr_02d_42fa                                   ; $42d9: $18 $1f

	db $fd                                           ; $42db: $fd
	ld c, [hl]                                       ; $42dc: $4e
	ld [hl], c                                       ; $42dd: $71
	dec e                                            ; $42de: $1d
	add hl, sp                                       ; $42df: $39
	ld [hl], $f5                                     ; $42e0: $36 $f5
	dec h                                            ; $42e2: $25
	adc l                                            ; $42e3: $8d
	ld [hl], e                                       ; $42e4: $73
	ld b, h                                          ; $42e5: $44
	halt                                             ; $42e6: $76
	and b                                            ; $42e7: $a0
	ld l, c                                          ; $42e8: $69
	ld h, l                                          ; $42e9: $65
	dec h                                            ; $42ea: $25
	sbc $52                                          ; $42eb: $de $52
	sbc l                                            ; $42ed: $9d
	add hl, bc                                       ; $42ee: $09
	ld b, d                                          ; $42ef: $42
	ld c, c                                          ; $42f0: $49
	and l                                            ; $42f1: $a5
	jr nz, jr_02d_42b1                               ; $42f2: $20 $bd

	ld [hl], a                                       ; $42f4: $77
	jr @+$6d                                         ; $42f5: $18 $6b

	inc h                                            ; $42f7: $24
	ld e, d                                          ; $42f8: $5a
	ld b, d                                          ; $42f9: $42

jr_02d_42fa:
	ld c, c                                          ; $42fa: $49
	jr jr_02d_4368                                   ; $42fb: $18 $6b

	dec b                                            ; $42fd: $05
	ld h, [hl]                                       ; $42fe: $66
	ld b, d                                          ; $42ff: $42
	ld c, c                                          ; $4300: $49
	push af                                          ; $4301: $f5
	dec h                                            ; $4302: $25
	rra                                              ; $4303: $1f
	inc e                                            ; $4304: $1c
	ld c, e                                          ; $4305: $4b
	ld sp, $aa21                                     ; $4306: $31 $21 $aa
	inc c                                            ; $4309: $0c
	ld b, h                                          ; $430a: $44
	nop                                              ; $430b: $00
	sbc $6f                                          ; $430c: $de $6f
	inc e                                            ; $430e: $1c
	ld c, e                                          ; $430f: $4b
	xor d                                            ; $4310: $aa
	inc c                                            ; $4311: $0c
	ld b, h                                          ; $4312: $44
	nop                                              ; $4313: $00
	inc e                                            ; $4314: $1c
	ld c, a                                          ; $4315: $4f
	cp b                                             ; $4316: $b8
	ld hl, $14eb                                     ; $4317: $21 $eb $14
	ld b, h                                          ; $431a: $44
	nop                                              ; $431b: $00
	inc e                                            ; $431c: $1c
	ld c, e                                          ; $431d: $4b
	call c, $d532                                    ; $431e: $dc $32 $d5
	ld hl, $0044                                     ; $4321: $21 $44 $00
	inc e                                            ; $4324: $1c
	ld c, e                                          ; $4325: $4b
	ld sp, $aa21                                     ; $4326: $31 $21 $aa
	inc c                                            ; $4329: $0c
	ld b, h                                          ; $432a: $44
	nop                                              ; $432b: $00
	rra                                              ; $432c: $1f
	ld a, l                                          ; $432d: $7d
	ld h, a                                          ; $432e: $67
	ld a, [hl+]                                      ; $432f: $2a
	ld b, d                                          ; $4330: $42
	inc hl                                           ; $4331: $23
	ld sp, $1460                                     ; $4332: $31 $60 $14
	rst $38                                          ; $4335: $ff
	ld [hl], a                                       ; $4336: $77
	ldh a, [rOCPS]                                   ; $4337: $f0 $6a
	inc hl                                           ; $4339: $23
	ld sp, $1460                                     ; $433a: $31 $60 $14
	rst $38                                          ; $433d: $ff
	ld [hl], a                                       ; $433e: $77
	ld a, e                                          ; $433f: $7b
	ld [hl-], a                                      ; $4340: $32
	sub c                                            ; $4341: $91
	ld hl, $0068                                     ; $4342: $21 $68 $00
	ldh a, [rOCPS]                                   ; $4345: $f0 $6a
	ld a, c                                          ; $4347: $79
	ld [hl-], a                                      ; $4348: $32
	xor e                                            ; $4349: $ab
	dec b                                            ; $434a: $05
	inc h                                            ; $434b: $24
	ld sp, $77ff                                     ; $434c: $31 $ff $77
	or a                                             ; $434f: $b7
	ld c, [hl]                                       ; $4350: $4e
	db $d3                                           ; $4351: $d3
	add hl, sp                                       ; $4352: $39
	ld h, b                                          ; $4353: $60
	inc d                                            ; $4354: $14
	rra                                              ; $4355: $1f
	rst $38                                          ; $4356: $ff
	ld a, e                                          ; $4357: $7b
	sbc c                                            ; $4358: $99
	ld e, e                                          ; $4359: $5b
	sub c                                            ; $435a: $91
	dec c                                            ; $435b: $0d
	and a                                            ; $435c: $a7
	ld [$539e], sp                                   ; $435d: $08 $9e $53
	ld d, [hl]                                       ; $4360: $56
	ld l, $91                                        ; $4361: $2e $91
	dec c                                            ; $4363: $0d
	and a                                            ; $4364: $a7
	ld [$7fff], sp                                   ; $4365: $08 $ff $7f

jr_02d_4368:
	sub a                                            ; $4368: $97
	ld a, e                                          ; $4369: $7b
	jp c, $a736                                      ; $436a: $da $36 $a7

	nop                                              ; $436d: $00
	rst $38                                          ; $436e: $ff
	ld a, e                                          ; $436f: $7b
	sub a                                            ; $4370: $97
	ld a, e                                          ; $4371: $7b
	and a                                            ; $4372: $a7
	ld [$0843], sp                                   ; $4373: $08 $43 $08
	ld e, e                                          ; $4376: $5b
	ld d, e                                          ; $4377: $53
	and a                                            ; $4378: $a7
	dec a                                            ; $4379: $3d
	ld c, [hl]                                       ; $437a: $4e
	add hl, bc                                       ; $437b: $09
	sub [hl]                                         ; $437c: $96
	add hl, sp                                       ; $437d: $39
	rra                                              ; $437e: $1f
	rst $38                                          ; $437f: $ff
	ld a, a                                          ; $4380: $7f
	or $7a                                           ; $4381: $f6 $7a
	ld l, a                                          ; $4383: $6f
	ld c, [hl]                                       ; $4384: $4e
	and a                                            ; $4385: $a7
	jr @+$01                                         ; $4386: $18 $ff

	ld a, e                                          ; $4388: $7b
	add hl, sp                                       ; $4389: $39
	ld [hl-], a                                      ; $438a: $32
	ldh a, [rAUD3LEVEL]                              ; $438b: $f0 $1c
	ld h, e                                          ; $438d: $63
	ld [$7fff], sp                                   ; $438e: $08 $ff $7f
	dec sp                                           ; $4391: $3b
	ld c, a                                          ; $4392: $4f
	add hl, sp                                       ; $4393: $39
	ld [hl-], a                                      ; $4394: $32
	ld h, e                                          ; $4395: $63
	ld [$7bff], sp                                   ; $4396: $08 $ff $7b
	rrca                                             ; $4399: $0f
	ld b, a                                          ; $439a: $47
	and h                                            ; $439b: $a4
	add hl, hl                                       ; $439c: $29

jr_02d_439d:
	ld h, e                                          ; $439d: $63
	ld [$7fff], sp                                   ; $439e: $08 $ff $7f
	dec sp                                           ; $43a1: $3b
	ld c, a                                          ; $43a2: $4f
	dec c                                            ; $43a3: $0d
	dec l                                            ; $43a4: $2d
	ld h, e                                          ; $43a5: $63
	ld [$fe1f], sp                                   ; $43a6: $08 $1f $fe
	ld a, e                                          ; $43a9: $7b
	db $10                                           ; $43aa: $10
	ld a, $2b                                        ; $43ab: $3e $2b
	dec h                                            ; $43ad: $25
	add l                                            ; $43ae: $85
	db $10                                           ; $43af: $10
	sbc $6b                                          ; $43b0: $de $6b
	ld d, $2e                                        ; $43b2: $16 $2e
	ld c, [hl]                                       ; $43b4: $4e
	dec d                                            ; $43b5: $15
	add [hl]                                         ; $43b6: $86
	db $10                                           ; $43b7: $10
	rst $38                                          ; $43b8: $ff
	ld a, a                                          ; $43b9: $7f
	sub b                                            ; $43ba: $90
	ld l, d                                          ; $43bb: $6a
	ld c, [hl]                                       ; $43bc: $4e
	dec d                                            ; $43bd: $15
	add l                                            ; $43be: $85
	jr nz, jr_02d_439d                               ; $43bf: $20 $dc

	ld l, e                                          ; $43c1: $6b
	ld d, $2e                                        ; $43c2: $16 $2e
	pop af                                           ; $43c4: $f1
	inc c                                            ; $43c5: $0c
	add h                                            ; $43c6: $84
	db $10                                           ; $43c7: $10
	sbc e                                            ; $43c8: $9b
	ld [hl], a                                       ; $43c9: $77
	sub b                                            ; $43ca: $90
	ld l, d                                          ; $43cb: $6a
	xor b                                            ; $43cc: $a8
	dec a                                            ; $43cd: $3d
	add [hl]                                         ; $43ce: $86
	db $10                                           ; $43cf: $10
	rra                                              ; $43d0: $1f
	ld e, a                                          ; $43d1: $5f
	ccf                                              ; $43d2: $3f
	sub a                                            ; $43d3: $97
	dec h                                            ; $43d4: $25
	xor b                                            ; $43d5: $a8
	inc c                                            ; $43d6: $0c
	ld c, $2e                                        ; $43d7: $0e $2e
	rst $38                                          ; $43d9: $ff
	ld a, a                                          ; $43da: $7f
	ld [hl], h                                       ; $43db: $74
	ld c, a                                          ; $43dc: $4f
	rst SubAFromHL                                          ; $43dd: $d7
	ld b, d                                          ; $43de: $42
	ld c, $2e                                        ; $43df: $0e $2e
	rst $38                                          ; $43e1: $ff
	ld a, a                                          ; $43e2: $7f
	ld e, a                                          ; $43e3: $5f
	ccf                                              ; $43e4: $3f
	ld c, $2e                                        ; $43e5: $0e $2e
	xor b                                            ; $43e7: $a8
	inc c                                            ; $43e8: $0c
	rst $38                                          ; $43e9: $ff
	ld a, a                                          ; $43ea: $7f
	sub a                                            ; $43eb: $97
	dec h                                            ; $43ec: $25
	ld c, $2e                                        ; $43ed: $0e $2e
	xor b                                            ; $43ef: $a8
	inc c                                            ; $43f0: $0c
	rst $38                                          ; $43f1: $ff
	ld a, a                                          ; $43f2: $7f
	ld e, a                                          ; $43f3: $5f
	ccf                                              ; $43f4: $3f
	ld [hl], h                                       ; $43f5: $74
	ld c, a                                          ; $43f6: $4f
	xor b                                            ; $43f7: $a8
	inc c                                            ; $43f8: $0c
	rra                                              ; $43f9: $1f
	cp $7f                                           ; $43fa: $fe $7f
	ld d, d                                          ; $43fc: $52
	inc de                                           ; $43fd: $13
	ld a, [hl+]                                      ; $43fe: $2a
	add hl, de                                       ; $43ff: $19
	ld h, $08                                        ; $4400: $26 $08
	ld a, l                                          ; $4402: $7d
	ld d, e                                          ; $4403: $53
	ld d, d                                          ; $4404: $52
	inc de                                           ; $4405: $13
	push af                                          ; $4406: $f5
	jr jr_02d_442f                                   ; $4407: $18 $26

	ld [$7ffe], sp                                   ; $4409: $08 $fe $7f
	ld d, d                                          ; $440c: $52
	inc de                                           ; $440d: $13
	ld a, l                                          ; $440e: $7d
	ld d, e                                          ; $440f: $53
	ld a, [hl+]                                      ; $4410: $2a
	add hl, de                                       ; $4411: $19
	add hl, sp                                       ; $4412: $39
	ld l, e                                          ; $4413: $6b
	sbc c                                            ; $4414: $99
	ld b, [hl]                                       ; $4415: $46
	or b                                             ; $4416: $b0
	dec l                                            ; $4417: $2d
	ld h, $08                                        ; $4418: $26 $08
	ld a, l                                          ; $441a: $7d
	ld d, e                                          ; $441b: $53
	ld d, d                                          ; $441c: $52
	inc de                                           ; $441d: $13
	ld a, [hl+]                                      ; $441e: $2a
	add hl, de                                       ; $441f: $19
	ld h, $08                                        ; $4420: $26 $08
	rra                                              ; $4422: $1f
	rst $38                                          ; $4423: $ff
	ld a, a                                          ; $4424: $7f
	adc $12                                          ; $4425: $ce $12
	ld l, d                                          ; $4427: $6a
	ld a, [bc]                                       ; $4428: $0a
	rst SubAFromBC                                          ; $4429: $e7
	ld bc, $7fff                                     ; $442a: $01 $ff $7f
	adc $12                                          ; $442d: $ce $12

jr_02d_442f:
	add hl, sp                                       ; $442f: $39
	ld [hl], $84                                     ; $4430: $36 $84
	db $10                                           ; $4432: $10
	ret                                              ; $4433: $c9


	ld [hl], $c6                                     ; $4434: $36 $c6
	add hl, sp                                       ; $4436: $39
	rst SubAFromBC                                          ; $4437: $e7
	ld bc, $1084                                     ; $4438: $01 $84 $10
	rst $38                                          ; $443b: $ff
	ld a, a                                          ; $443c: $7f
	adc $12                                          ; $443d: $ce $12
	rst SubAFromBC                                          ; $443f: $e7
	ld bc, $1084                                     ; $4440: $01 $84 $10
	ret                                              ; $4443: $c9


	ld [hl], $ff                                     ; $4444: $36 $ff
	ld a, a                                          ; $4446: $7f
	add h                                            ; $4447: $84
	db $10                                           ; $4448: $10
	rst SubAFromBC                                          ; $4449: $e7
	ld bc, $2e1f                                     ; $444a: $01 $1f $2e
	ld a, a                                          ; $444d: $7f
	add $7e                                          ; $444e: $c6 $7e
	ld [hl+], a                                      ; $4450: $22
	ld a, d                                          ; $4451: $7a
	add c                                            ; $4452: $81
	ld h, l                                          ; $4453: $65
	rst AddAOntoHL                                          ; $4454: $ef
	ld a, a                                          ; $4455: $7f
	ld b, h                                          ; $4456: $44
	ld a, [hl]                                       ; $4457: $7e
	or c                                             ; $4458: $b1
	dec e                                            ; $4459: $1d
	push bc                                          ; $445a: $c5
	dec l                                            ; $445b: $2d
	rst $38                                          ; $445c: $ff
	ld a, a                                          ; $445d: $7f
	sbc [hl]                                         ; $445e: $9e
	ld h, $44                                        ; $445f: $26 $44
	ld a, [hl]                                       ; $4461: $7e
	and l                                            ; $4462: $a5
	inc d                                            ; $4463: $14
	rst $38                                          ; $4464: $ff
	ld a, a                                          ; $4465: $7f
	rst AddAOntoHL                                          ; $4466: $ef
	ld a, a                                          ; $4467: $7f
	add hl, hl                                       ; $4468: $29
	ld a, a                                          ; $4469: $7f
	ld [hl+], a                                      ; $446a: $22
	ld a, d                                          ; $446b: $7a
	add hl, hl                                       ; $446c: $29
	ld a, a                                          ; $446d: $7f
	sbc [hl]                                         ; $446e: $9e
	ld h, $e4                                        ; $446f: $26 $e4
	ld [hl], c                                       ; $4471: $71
	or c                                             ; $4472: $b1
	dec e                                            ; $4473: $1d
	rra                                              ; $4474: $1f
	cp $7f                                           ; $4475: $fe $7f
	dec b                                            ; $4477: $05
	ld b, d                                          ; $4478: $42
	ldh [$6c], a                                     ; $4479: $e0 $6c
	jp nz, $fe40                                     ; $447b: $c2 $40 $fe

	ld a, a                                          ; $447e: $7f
	cp c                                             ; $447f: $b9
	add hl, de                                       ; $4480: $19
	ldh [$6c], a                                     ; $4481: $e0 $6c
	ld l, c                                          ; $4483: $69
	ld [$7ffe], sp                                   ; $4484: $08 $fe $7f
	sub h                                            ; $4487: $94
	inc c                                            ; $4488: $0c
	ldh [$6c], a                                     ; $4489: $e0 $6c
	ld l, c                                          ; $448b: $69
	ld [$265d], sp                                   ; $448c: $08 $5d $26
	dec b                                            ; $448f: $05
	ld b, d                                          ; $4490: $42
	ldh [$6c], a                                     ; $4491: $e0 $6c
	ld l, c                                          ; $4493: $69
	ld [$7ffe], sp                                   ; $4494: $08 $fe $7f
	db $10                                           ; $4497: $10
	ld a, [hl+]                                      ; $4498: $2a
	ldh [$6c], a                                     ; $4499: $e0 $6c
	ld l, c                                          ; $449b: $69
	ld [$541f], sp                                   ; $449c: $08 $1f $54
	ld b, d                                          ; $449f: $42
	jp c, Jump_02d_713a                              ; $44a0: $da $3a $71

	dec d                                            ; $44a3: $15
	ld h, h                                          ; $44a4: $64
	nop                                              ; $44a5: $00
	ld a, c                                          ; $44a6: $79
	ld a, [hl-]                                      ; $44a7: $3a
	inc l                                            ; $44a8: $2c
	add hl, de                                       ; $44a9: $19
	inc b                                            ; $44aa: $04
	add hl, sp                                       ; $44ab: $39
	ld h, h                                          ; $44ac: $64
	nop                                              ; $44ad: $00
	cp a                                             ; $44ae: $bf
	ld l, a                                          ; $44af: $6f
	ld e, d                                          ; $44b0: $5a
	ld l, $63                                        ; $44b1: $2e $63
	dec l                                            ; $44b3: $2d
	ld h, h                                          ; $44b4: $64
	nop                                              ; $44b5: $00
	ld e, l                                          ; $44b6: $5d
	ld h, a                                          ; $44b7: $67
	sbc c                                            ; $44b8: $99
	ld [hl], $71                                     ; $44b9: $36 $71
	dec d                                            ; $44bb: $15
	ld h, h                                          ; $44bc: $64
	nop                                              ; $44bd: $00
	inc a                                            ; $44be: $3c
	ld c, a                                          ; $44bf: $4f
	or d                                             ; $44c0: $b2
	nop                                              ; $44c1: $00
	ld h, h                                          ; $44c2: $64
	dec e                                            ; $44c3: $1d
	ld h, h                                          ; $44c4: $64
	nop                                              ; $44c5: $00
	rra                                              ; $44c6: $1f
	or $73                                           ; $44c7: $f6 $73
	ld sp, $ab4f                                     ; $44c9: $31 $4f $ab
	ld h, d                                          ; $44cc: $62
	add e                                            ; $44cd: $83
	ld sp, $3afc                                     ; $44ce: $31 $fc $3a
	ld d, $2a                                        ; $44d1: $16 $2a
	adc [hl]                                         ; $44d3: $8e
	dec h                                            ; $44d4: $25
	inc l                                            ; $44d5: $2c
	dec d                                            ; $44d6: $15
	db $fc                                           ; $44d7: $fc
	ld a, [hl-]                                      ; $44d8: $3a
	ld sp, $164f                                     ; $44d9: $31 $4f $16
	ld a, [hl+]                                      ; $44dc: $2a
	add e                                            ; $44dd: $83
	ld sp, $73f6                                     ; $44de: $31 $f6 $73
	ld d, $2a                                        ; $44e1: $16 $2a
	adc [hl]                                         ; $44e3: $8e
	dec h                                            ; $44e4: $25
	add e                                            ; $44e5: $83
	ld sp, $73f6                                     ; $44e6: $31 $f6 $73
	ld d, $2a                                        ; $44e9: $16 $2a
	db $fc                                           ; $44eb: $fc
	ld a, [hl-]                                      ; $44ec: $3a
	ld sp, $1f4f                                     ; $44ed: $31 $4f $1f
	jr c, jr_02d_453d                                ; $44f0: $38 $4b

	adc [hl]                                         ; $44f2: $8e
	ld l, $a8                                        ; $44f3: $2e $a8
	dec l                                            ; $44f5: $2d
	call nz, $ff18                                   ; $44f6: $c4 $18 $ff
	ld a, a                                          ; $44f9: $7f
	ld c, h                                          ; $44fa: $4c
	ld e, d                                          ; $44fb: $5a
	adc [hl]                                         ; $44fc: $8e
	ld l, $c4                                        ; $44fd: $2e $c4
	jr @+$7d                                         ; $44ff: $18 $7b

	dec a                                            ; $4501: $3d
	adc [hl]                                         ; $4502: $8e
	ld l, $a8                                        ; $4503: $2e $a8
	dec l                                            ; $4505: $2d
	call nz, $ff18                                   ; $4506: $c4 $18 $ff
	ld a, a                                          ; $4509: $7f
	dec d                                            ; $450a: $15
	ld l, e                                          ; $450b: $6b
	ld c, h                                          ; $450c: $4c
	ld e, d                                          ; $450d: $5a
	call nz, $ff18                                   ; $450e: $c4 $18 $ff
	ld a, a                                          ; $4511: $7f
	adc $6a                                          ; $4512: $ce $6a
	ld c, h                                          ; $4514: $4c
	ld e, d                                          ; $4515: $5a
	call nz, $1f18                                   ; $4516: $c4 $18 $1f
	sbc d                                            ; $4519: $9a
	ld a, $d3                                        ; $451a: $3e $d3
	add hl, hl                                       ; $451c: $29
	sub c                                            ; $451d: $91
	dec e                                            ; $451e: $1d
	add hl, hl                                       ; $451f: $29
	ld hl, $6f79                                     ; $4520: $21 $79 $6f
	rst FarCall                                          ; $4523: $f7
	ld h, [hl]                                       ; $4524: $66
	sub c                                            ; $4525: $91
	ld e, d                                          ; $4526: $5a
	add hl, hl                                       ; $4527: $29
	ld hl, $3215                                     ; $4528: $21 $15 $32
	sub c                                            ; $452b: $91
	ld e, d                                          ; $452c: $5a
	sub c                                            ; $452d: $91
	dec e                                            ; $452e: $1d
	add hl, hl                                       ; $452f: $29
	ld hl, $66f7                                     ; $4530: $21 $f7 $66
	adc h                                            ; $4533: $8c
	ld e, [hl]                                       ; $4534: $5e
	ld h, $5e                                        ; $4535: $26 $5e
	db $eb                                           ; $4537: $eb
	dec [hl]                                         ; $4538: $35
	db $d3                                           ; $4539: $d3
	add hl, hl                                       ; $453a: $29
	and l                                            ; $453b: $a5
	ld c, l                                          ; $453c: $4d

jr_02d_453d:
	add hl, hl                                       ; $453d: $29
	ld hl, $30c0                                     ; $453e: $21 $c0 $30
	rra                                              ; $4541: $1f
	inc b                                            ; $4542: $04
	add hl, hl                                       ; $4543: $29
	call z, $6559                                    ; $4544: $cc $59 $65
	inc b                                            ; $4547: $04
	nop                                              ; $4548: $00
	ld [$6318], sp                                   ; $4549: $08 $18 $63
	call z, $2c59                                    ; $454c: $cc $59 $2c
	ld a, [hl-]                                      ; $454f: $3a
	inc b                                            ; $4550: $04
	add hl, hl                                       ; $4551: $29
	or a                                             ; $4552: $b7
	ld [hl-], a                                      ; $4553: $32
	ld a, b                                          ; $4554: $78
	ld a, [de]                                       ; $4555: $1a
	ld [hl], c                                       ; $4556: $71
	dec b                                            ; $4557: $05
	ld c, $01                                        ; $4558: $0e $01
	or a                                             ; $455a: $b7
	ld [hl-], a                                      ; $455b: $32
	ld [hl], c                                       ; $455c: $71
	dec b                                            ; $455d: $05
	ld h, l                                          ; $455e: $65
	inc b                                            ; $455f: $04
	nop                                              ; $4560: $00
	ld [$6318], sp                                   ; $4561: $08 $18 $63
	call z, $6559                                    ; $4564: $cc $59 $65
	inc b                                            ; $4567: $04
	nop                                              ; $4568: $00
	ld [$f41f], sp                                   ; $4569: $08 $1f $f4
	ld e, a                                          ; $456c: $5f
	rrca                                             ; $456d: $0f
	ccf                                              ; $456e: $3f
	jp hl                                            ; $456f: $e9


	ld b, [hl]                                       ; $4570: $46
	ld c, c                                          ; $4571: $49
	ld c, d                                          ; $4572: $4a
	rrca                                             ; $4573: $0f
	ccf                                              ; $4574: $3f
	jp nc, $8414                                     ; $4575: $d2 $14 $84

	dec h                                            ; $4578: $25
	rst SubAFromBC                                          ; $4579: $e7
	inc e                                            ; $457a: $1c
	jr c, jr_02d_45ab                                ; $457b: $38 $2e

	jp nc, $e714                                     ; $457d: $d2 $14 $e7

	inc e                                            ; $4580: $1c
	jr nz, @+$0e                                     ; $4581: $20 $0c

	ld c, c                                          ; $4583: $49
	ld c, d                                          ; $4584: $4a
	nop                                              ; $4585: $00
	dec a                                            ; $4586: $3d
	and d                                            ; $4587: $a2
	inc d                                            ; $4588: $14
	jr nz, @+$0e                                     ; $4589: $20 $0c

	rrca                                             ; $458b: $0f
	ccf                                              ; $458c: $3f
	ld c, b                                          ; $458d: $48
	ld a, $e7                                        ; $458e: $3e $e7
	inc e                                            ; $4590: $1c
	jr nz, jr_02d_459f                               ; $4591: $20 $0c

	rra                                              ; $4593: $1f
	adc e                                            ; $4594: $8b
	ld d, d                                          ; $4595: $52
	ld h, $39                                        ; $4596: $26 $39
	inc b                                            ; $4598: $04
	ld sp, $1084                                     ; $4599: $31 $84 $10
	rst $38                                          ; $459c: $ff
	ld d, a                                          ; $459d: $57
	adc e                                            ; $459e: $8b

jr_02d_459f:
	ld d, d                                          ; $459f: $52
	inc b                                            ; $45a0: $04
	ld sp, $1084                                     ; $45a1: $31 $84 $10
	rst $38                                          ; $45a4: $ff
	ld d, a                                          ; $45a5: $57
	adc e                                            ; $45a6: $8b
	ld d, d                                          ; $45a7: $52
	ld d, d                                          ; $45a8: $52
	dec e                                            ; $45a9: $1d
	add h                                            ; $45aa: $84

jr_02d_45ab:
	db $10                                           ; $45ab: $10
	rst $38                                          ; $45ac: $ff
	ld d, a                                          ; $45ad: $57
	ccf                                              ; $45ae: $3f
	dec sp                                           ; $45af: $3b
	ld e, d                                          ; $45b0: $5a
	ld h, $84                                        ; $45b1: $26 $84
	db $10                                           ; $45b3: $10
	rst $38                                          ; $45b4: $ff
	ld d, a                                          ; $45b5: $57
	ld e, d                                          ; $45b6: $5a
	ld h, $52                                        ; $45b7: $26 $52
	dec e                                            ; $45b9: $1d
	add h                                            ; $45ba: $84
	db $10                                           ; $45bb: $10
	rra                                              ; $45bc: $1f
	add hl, sp                                       ; $45bd: $39
	ld d, e                                          ; $45be: $53
	sub h                                            ; $45bf: $94
	ld a, $ac                                        ; $45c0: $3e $ac
	ld sp, $1ce7                                     ; $45c2: $31 $e7 $1c
	xor h                                            ; $45c5: $ac
	ld sp, $1130                                     ; $45c6: $31 $30 $11
	ld c, $05                                        ; $45c9: $0e $05
	call z, $9204                                    ; $45cb: $cc $04 $92
	ld [hl], e                                       ; $45ce: $73
	xor d                                            ; $45cf: $aa
	ld h, d                                          ; $45d0: $62
	add $41                                          ; $45d1: $c6 $41
	inc hl                                           ; $45d3: $23
	dec l                                            ; $45d4: $2d
	or $1d                                           ; $45d5: $f6 $1d
	jr nc, @+$13                                     ; $45d7: $30 $11

	dec hl                                           ; $45d9: $2b
	dec d                                            ; $45da: $15
	and a                                            ; $45db: $a7
	ld [$327b], sp                                   ; $45dc: $08 $7b $32
	push de                                          ; $45df: $d5
	add hl, de                                       ; $45e0: $19
	or b                                             ; $45e1: $b0
	dec d                                            ; $45e2: $15
	dec hl                                           ; $45e3: $2b
	dec d                                            ; $45e4: $15
	rra                                              ; $45e5: $1f
	inc sp                                           ; $45e6: $33
	ld b, d                                          ; $45e7: $42
	jp z, $a618                                      ; $45e8: $ca $18 $a6

	inc d                                            ; $45eb: $14
	ld h, e                                          ; $45ec: $63
	inc c                                            ; $45ed: $0c
	call c, $583e                                    ; $45ee: $dc $3e $58
	ld [hl-], a                                      ; $45f1: $32
	ld [$6325], sp                                   ; $45f2: $08 $25 $63
	inc c                                            ; $45f5: $0c
	ld a, e                                          ; $45f6: $7b
	ld l, a                                          ; $45f7: $6f
	call c, $ad3e                                    ; $45f8: $dc $3e $ad
	dec [hl]                                         ; $45fb: $35
	add $1c                                          ; $45fc: $c6 $1c
	inc sp                                           ; $45fe: $33
	ld b, d                                          ; $45ff: $42
	xor l                                            ; $4600: $ad
	dec [hl]                                         ; $4601: $35
	add $1c                                          ; $4602: $c6 $1c
	ld h, e                                          ; $4604: $63
	inc c                                            ; $4605: $0c
	ld l, a                                          ; $4606: $6f
	dec h                                            ; $4607: $25
	inc c                                            ; $4608: $0c
	add hl, de                                       ; $4609: $19
	ld [$6325], sp                                   ; $460a: $08 $25 $63
	inc c                                            ; $460d: $0c
	rra                                              ; $460e: $1f
	cp h                                             ; $460f: $bc
	ld [hl+], a                                      ; $4610: $22
	ld a, [hl-]                                      ; $4611: $3a
	ld a, [de]                                       ; $4612: $1a
	ld d, d                                          ; $4613: $52
	ld c, $d9                                        ; $4614: $0e $d9
	dec c                                            ; $4616: $0d
	cp h                                             ; $4617: $bc
	ld [hl+], a                                      ; $4618: $22
	ld a, [hl-]                                      ; $4619: $3a
	ld a, [de]                                       ; $461a: $1a
	reti                                             ; $461b: $d9


	dec c                                            ; $461c: $0d
	ld l, b                                          ; $461d: $68
	dec c                                            ; $461e: $0d
	sbc h                                            ; $461f: $9c
	ld [hl], e                                       ; $4620: $73
	xor [hl]                                         ; $4621: $ae
	ld b, [hl]                                       ; $4622: $46
	jp z, Jump_02d_6845                              ; $4623: $ca $45 $68

	dec c                                            ; $4626: $0d
	xor [hl]                                         ; $4627: $ae
	ld b, [hl]                                       ; $4628: $46
	ld d, d                                          ; $4629: $52
	ld c, $ca                                        ; $462a: $0e $ca
	ld b, l                                          ; $462c: $45
	ld l, b                                          ; $462d: $68
	dec c                                            ; $462e: $0d
	cp h                                             ; $462f: $bc
	ld [hl+], a                                      ; $4630: $22
	ld [hl], a                                       ; $4631: $77
	rrca                                             ; $4632: $0f
	ld d, d                                          ; $4633: $52
	ld c, $68                                        ; $4634: $0e $68
	dec c                                            ; $4636: $0d
	rra                                              ; $4637: $1f
	cp a                                             ; $4638: $bf
	ld c, e                                          ; $4639: $4b
	ld d, l                                          ; $463a: $55
	ld [hl-], a                                      ; $463b: $32
	db $d3                                           ; $463c: $d3
	dec h                                            ; $463d: $25
	add sp, $18                                      ; $463e: $e8 $18
	cp e                                             ; $4640: $bb
	ld [hl], e                                       ; $4641: $73
	inc d                                            ; $4642: $14
	ld l, e                                          ; $4643: $6b
	xor $41                                          ; $4644: $ee $41
	and e                                            ; $4646: $a3
	inc e                                            ; $4647: $1c
	call nc, Call_02d_7162                           ; $4648: $d4 $62 $71
	ld d, d                                          ; $464b: $52
	xor $41                                          ; $464c: $ee $41
	and e                                            ; $464e: $a3
	inc e                                            ; $464f: $1c
	cp e                                             ; $4650: $bb
	ld [hl], e                                       ; $4651: $73
	cp a                                             ; $4652: $bf
	ld c, e                                          ; $4653: $4b
	ld [hl], c                                       ; $4654: $71
	ld d, d                                          ; $4655: $52
	and e                                            ; $4656: $a3
	inc e                                            ; $4657: $1c
	db $db                                           ; $4658: $db
	ld a, $71                                        ; $4659: $3e $71
	ld d, d                                          ; $465b: $52
	ld d, l                                          ; $465c: $55
	ld [hl-], a                                      ; $465d: $32
	add sp, $18                                      ; $465e: $e8 $18
	rra                                              ; $4660: $1f
	sbc h                                            ; $4661: $9c
	ld [hl], e                                       ; $4662: $73
	ld e, e                                          ; $4663: $5b
	ld e, e                                          ; $4664: $5b
	rrca                                             ; $4665: $0f
	ld b, [hl]                                       ; $4666: $46
	or c                                             ; $4667: $b1
	add hl, hl                                       ; $4668: $29
	ld e, e                                          ; $4669: $5b
	ld e, e                                          ; $466a: $5b
	or c                                             ; $466b: $b1
	add hl, hl                                       ; $466c: $29
	xor d                                            ; $466d: $aa
	add hl, sp                                       ; $466e: $39
	and [hl]                                         ; $466f: $a6
	inc d                                            ; $4670: $14
	sbc h                                            ; $4671: $9c
	ld [hl], e                                       ; $4672: $73
	sub b                                            ; $4673: $90
	add hl, hl                                       ; $4674: $29
	ld l, d                                          ; $4675: $6a
	ld sp, $14a6                                     ; $4676: $31 $a6 $14
	or c                                             ; $4679: $b1
	add hl, hl                                       ; $467a: $29
	ld l, [hl]                                       ; $467b: $6e
	dec h                                            ; $467c: $25
	xor d                                            ; $467d: $aa
	add hl, sp                                       ; $467e: $39
	and [hl]                                         ; $467f: $a6
	inc d                                            ; $4680: $14
	or $5a                                           ; $4681: $f6 $5a
	rrca                                             ; $4683: $0f
	ld b, [hl]                                       ; $4684: $46
	ld l, d                                          ; $4685: $6a
	ld sp, $2990                                     ; $4686: $31 $90 $29
	rra                                              ; $4689: $1f
	sbc h                                            ; $468a: $9c
	ld [hl], e                                       ; $468b: $73
	ld e, e                                          ; $468c: $5b
	ld e, e                                          ; $468d: $5b
	rrca                                             ; $468e: $0f
	ld b, [hl]                                       ; $468f: $46
	or c                                             ; $4690: $b1
	add hl, hl                                       ; $4691: $29
	ld e, e                                          ; $4692: $5b
	ld e, e                                          ; $4693: $5b
	or c                                             ; $4694: $b1
	add hl, hl                                       ; $4695: $29
	db $eb                                           ; $4696: $eb
	ld c, c                                          ; $4697: $49
	and [hl]                                         ; $4698: $a6
	inc d                                            ; $4699: $14
	or $5a                                           ; $469a: $f6 $5a
	sub b                                            ; $469c: $90
	add hl, hl                                       ; $469d: $29
	ld l, d                                          ; $469e: $6a
	ld sp, $14a6                                     ; $469f: $31 $a6 $14
	or c                                             ; $46a2: $b1
	add hl, hl                                       ; $46a3: $29
	ld l, [hl]                                       ; $46a4: $6e
	dec h                                            ; $46a5: $25
	xor d                                            ; $46a6: $aa
	add hl, sp                                       ; $46a7: $39
	and [hl]                                         ; $46a8: $a6
	inc d                                            ; $46a9: $14
	or $5a                                           ; $46aa: $f6 $5a
	rrca                                             ; $46ac: $0f
	ld b, [hl]                                       ; $46ad: $46
	ld l, d                                          ; $46ae: $6a
	ld sp, $2990                                     ; $46af: $31 $90 $29
	rra                                              ; $46b2: $1f
	sbc h                                            ; $46b3: $9c
	ld [hl], e                                       ; $46b4: $73
	add hl, de                                       ; $46b5: $19
	ld d, e                                          ; $46b6: $53
	rrca                                             ; $46b7: $0f
	ld b, [hl]                                       ; $46b8: $46
	ld l, [hl]                                       ; $46b9: $6e
	dec h                                            ; $46ba: $25
	add hl, de                                       ; $46bb: $19
	ld d, e                                          ; $46bc: $53
	ld l, [hl]                                       ; $46bd: $6e
	dec h                                            ; $46be: $25
	xor d                                            ; $46bf: $aa
	add hl, sp                                       ; $46c0: $39
	and [hl]                                         ; $46c1: $a6
	inc d                                            ; $46c2: $14
	sbc h                                            ; $46c3: $9c
	ld [hl], e                                       ; $46c4: $73
	ld l, [hl]                                       ; $46c5: $6e
	dec h                                            ; $46c6: $25
	ld l, d                                          ; $46c7: $6a
	ld sp, $14a6                                     ; $46c8: $31 $a6 $14
	di                                               ; $46cb: $f3
	ld sp, $256e                                     ; $46cc: $31 $6e $25
	xor d                                            ; $46cf: $aa
	add hl, sp                                       ; $46d0: $39
	and [hl]                                         ; $46d1: $a6
	inc d                                            ; $46d2: $14
	or $5a                                           ; $46d3: $f6 $5a
	rrca                                             ; $46d5: $0f
	ld b, [hl]                                       ; $46d6: $46
	ld l, d                                          ; $46d7: $6a
	ld sp, $256e                                     ; $46d8: $31 $6e $25
	rra                                              ; $46db: $1f
	db $fc                                           ; $46dc: $fc
	ld hl, $1951                                     ; $46dd: $21 $51 $19
	ld b, c                                          ; $46e0: $41
	add hl, sp                                       ; $46e1: $39
	and l                                            ; $46e2: $a5
	inc d                                            ; $46e3: $14
	rst $38                                          ; $46e4: $ff
	ld a, a                                          ; $46e5: $7f
	db $fc                                           ; $46e6: $fc
	ld hl, $3941                                     ; $46e7: $21 $41 $39
	ld d, c                                          ; $46ea: $51
	add hl, de                                       ; $46eb: $19
	rst $38                                          ; $46ec: $ff
	ld a, a                                          ; $46ed: $7f
	add hl, hl                                       ; $46ee: $29
	ld a, a                                          ; $46ef: $7f
	add $1a                                          ; $46f0: $c6 $1a
	and l                                            ; $46f2: $a5
	inc d                                            ; $46f3: $14
	rst $38                                          ; $46f4: $ff
	ld a, a                                          ; $46f5: $7f
	db $fc                                           ; $46f6: $fc
	ld hl, $3941                                     ; $46f7: $21 $41 $39
	and l                                            ; $46fa: $a5
	inc d                                            ; $46fb: $14
	rst $38                                          ; $46fc: $ff
	ld a, a                                          ; $46fd: $7f
	add hl, hl                                       ; $46fe: $29
	ld a, a                                          ; $46ff: $7f
	adc h                                            ; $4700: $8c
	ld c, c                                          ; $4701: $49
	ld b, c                                          ; $4702: $41
	add hl, sp                                       ; $4703: $39
	rra                                              ; $4704: $1f
	cp [hl]                                          ; $4705: $be
	ld a, [hl+]                                      ; $4706: $2a
	sbc b                                            ; $4707: $98
	ld [hl+], a                                      ; $4708: $22
	or d                                             ; $4709: $b2
	dec l                                            ; $470a: $2d
	call z, Call_02d_6e0c                            ; $470b: $cc $0c $6e
	dec c                                            ; $470e: $0d
	call z, $890c                                    ; $470f: $cc $0c $89
	inc b                                            ; $4712: $04
	and l                                            ; $4713: $a5
	ld [$2abe], sp                                   ; $4714: $08 $be $2a
	db $db                                           ; $4717: $db
	dec d                                            ; $4718: $15
	call z, $890c                                    ; $4719: $cc $0c $89
	inc b                                            ; $471c: $04
	cp [hl]                                          ; $471d: $be
	ld a, [hl+]                                      ; $471e: $2a
	db $db                                           ; $471f: $db
	dec d                                            ; $4720: $15
	ld [hl], e                                       ; $4721: $73
	ld de, $0ccc                                     ; $4722: $11 $cc $0c
	rst $38                                          ; $4725: $ff
	ld a, a                                          ; $4726: $7f
	sbc b                                            ; $4727: $98
	ld [hl+], a                                      ; $4728: $22
	ld d, l                                          ; $4729: $55
	ld [hl+], a                                      ; $472a: $22
	or d                                             ; $472b: $b2
	dec l                                            ; $472c: $2d
	rra                                              ; $472d: $1f
	cp $7f                                           ; $472e: $fe $7f
	inc sp                                           ; $4730: $33
	ld [hl], a                                       ; $4731: $77
	adc c                                            ; $4732: $89
	ld l, [hl]                                       ; $4733: $6e
	rst $38                                          ; $4734: $ff
	ld [hl], e                                       ; $4735: $73
	cp $7f                                           ; $4736: $fe $7f
	inc sp                                           ; $4738: $33
	ld [hl], a                                       ; $4739: $77
	jp hl                                            ; $473a: $e9


	ld a, [hl]                                       ; $473b: $7e
	rst JumpTable                                          ; $473c: $c7
	ld e, c                                          ; $473d: $59
	cp $7f                                           ; $473e: $fe $7f
	inc sp                                           ; $4740: $33
	ld [hl], a                                       ; $4741: $77
	jp hl                                            ; $4742: $e9


	ld a, [hl]                                       ; $4743: $7e
	rst JumpTable                                          ; $4744: $c7
	ld e, c                                          ; $4745: $59
	cp $7f                                           ; $4746: $fe $7f
	inc sp                                           ; $4748: $33
	ld [hl], a                                       ; $4749: $77
	adc c                                            ; $474a: $89
	ld l, [hl]                                       ; $474b: $6e
	rst JumpTable                                          ; $474c: $c7
	ld e, c                                          ; $474d: $59
	cp $7f                                           ; $474e: $fe $7f
	inc sp                                           ; $4750: $33
	ld [hl], a                                       ; $4751: $77
	jr z, jr_02d_47be                                ; $4752: $28 $6a

	ld h, h                                          ; $4754: $64
	ld d, l                                          ; $4755: $55
	rra                                              ; $4756: $1f
	rst $38                                          ; $4757: $ff
	ld c, a                                          ; $4758: $4f
	cp a                                             ; $4759: $bf
	scf                                              ; $475a: $37
	sbc a                                            ; $475b: $9f
	ld a, [de]                                       ; $475c: $1a
	ccf                                              ; $475d: $3f
	ld e, $bf                                        ; $475e: $1e $bf
	scf                                              ; $4760: $37
	sbc a                                            ; $4761: $9f
	ld a, [de]                                       ; $4762: $1a
	ccf                                              ; $4763: $3f
	ld e, $f8                                        ; $4764: $1e $f8
	ld sp, $5b7f                                     ; $4766: $31 $7f $5b
	sbc e                                            ; $4769: $9b
	ld c, d                                          ; $476a: $4a
	cp b                                             ; $476b: $b8
	dec h                                            ; $476c: $25
	ld [hl], e                                       ; $476d: $73
	dec h                                            ; $476e: $25
	rst $38                                          ; $476f: $ff
	ld h, a                                          ; $4770: $67
	rst $38                                          ; $4771: $ff
	ld c, a                                          ; $4772: $4f
	sbc a                                            ; $4773: $9f
	ld a, [de]                                       ; $4774: $1a
	or $29                                           ; $4775: $f6 $29
	cp a                                             ; $4777: $bf
	ld c, a                                          ; $4778: $4f
	sbc a                                            ; $4779: $9f
	ld a, [de]                                       ; $477a: $1a
	cp b                                             ; $477b: $b8
	dec h                                            ; $477c: $25
	ld [hl], e                                       ; $477d: $73
	dec h                                            ; $477e: $25
	rra                                              ; $477f: $1f
	db $dd                                           ; $4780: $dd
	ld a, a                                          ; $4781: $7f
	sub c                                            ; $4782: $91
	ld e, d                                          ; $4783: $5a
	inc l                                            ; $4784: $2c
	ld de, $3967                                     ; $4785: $11 $67 $39
	ld a, c                                          ; $4788: $79
	ld a, [hl-]                                      ; $4789: $3a
	dec c                                            ; $478a: $0d
	ld c, [hl]                                       ; $478b: $4e
	inc l                                            ; $478c: $2c
	ld de, $20c5                                     ; $478d: $11 $c5 $20
	db $f4                                           ; $4790: $f4
	ld h, [hl]                                       ; $4791: $66
	dec c                                            ; $4792: $0d
	ld c, [hl]                                       ; $4793: $4e
	ld h, a                                          ; $4794: $67
	add hl, sp                                       ; $4795: $39
	push bc                                          ; $4796: $c5
	jr nz, jr_02d_47ae                               ; $4797: $20 $15

	ld a, [hl+]                                      ; $4799: $2a
	inc l                                            ; $479a: $2c
	ld de, $3967                                     ; $479b: $11 $67 $39
	push bc                                          ; $479e: $c5
	jr nz, jr_02d_47bb                               ; $479f: $20 $1a

	ld l, e                                          ; $47a1: $6b
	dec c                                            ; $47a2: $0d
	ld c, [hl]                                       ; $47a3: $4e
	ld h, a                                          ; $47a4: $67
	add hl, sp                                       ; $47a5: $39
	push bc                                          ; $47a6: $c5
	jr nz, @+$21                                     ; $47a7: $20 $1f

	rst $38                                          ; $47a9: $ff
	ld a, a                                          ; $47aa: $7f
	or c                                             ; $47ab: $b1
	ld h, d                                          ; $47ac: $62
	adc b                                            ; $47ad: $88

jr_02d_47ae:
	ld b, l                                          ; $47ae: $45
	jp hl                                            ; $47af: $e9


	dec l                                            ; $47b0: $2d
	rst $38                                          ; $47b1: $ff
	ld a, a                                          ; $47b2: $7f
	or c                                             ; $47b3: $b1
	ld h, d                                          ; $47b4: $62
	ret                                              ; $47b5: $c9


	dec [hl]                                         ; $47b6: $35
	ld b, $1d                                        ; $47b7: $06 $1d
	or c                                             ; $47b9: $b1
	ld h, d                                          ; $47ba: $62

jr_02d_47bb:
	jp z, $884d                                      ; $47bb: $ca $4d $88

jr_02d_47be:
	ld b, l                                          ; $47be: $45
	dec h                                            ; $47bf: $25
	ld sp, $7fff                                     ; $47c0: $31 $ff $7f
	jp nc, $e932                                     ; $47c3: $d2 $32 $e9

	dec l                                            ; $47c6: $2d
	ld b, $1d                                        ; $47c7: $06 $1d
	rst $38                                          ; $47c9: $ff
	ld a, a                                          ; $47ca: $7f
	or c                                             ; $47cb: $b1
	ld h, d                                          ; $47cc: $62
	jp hl                                            ; $47cd: $e9


	dec l                                            ; $47ce: $2d
	ld b, $1d                                        ; $47cf: $06 $1d
	rra                                              ; $47d1: $1f
	rst $38                                          ; $47d2: $ff
	ld a, a                                          ; $47d3: $7f
	xor l                                            ; $47d4: $ad
	ld [bc], a                                       ; $47d5: $02
	ld d, e                                          ; $47d6: $53
	ld l, e                                          ; $47d7: $6b
	and e                                            ; $47d8: $a3
	inc l                                            ; $47d9: $2c
	rst $38                                          ; $47da: $ff
	ld a, a                                          ; $47db: $7f
	xor l                                            ; $47dc: $ad
	ld [bc], a                                       ; $47dd: $02
	reti                                             ; $47de: $d9


	add hl, de                                       ; $47df: $19
	and e                                            ; $47e0: $a3
	inc l                                            ; $47e1: $2c
	rst $38                                          ; $47e2: $ff
	ld a, a                                          ; $47e3: $7f
	cp d                                             ; $47e4: $ba
	ld b, d                                          ; $47e5: $42
	xor b                                            ; $47e6: $a8
	ld d, l                                          ; $47e7: $55
	and e                                            ; $47e8: $a3
	inc l                                            ; $47e9: $2c
	rst $38                                          ; $47ea: $ff
	ld a, a                                          ; $47eb: $7f
	sbc h                                            ; $47ec: $9c
	ld a, [hl+]                                      ; $47ed: $2a
	reti                                             ; $47ee: $d9


	add hl, de                                       ; $47ef: $19
	ld [$ff21], sp                                   ; $47f0: $08 $21 $ff
	ld a, a                                          ; $47f3: $7f
	xor l                                            ; $47f4: $ad
	ld [bc], a                                       ; $47f5: $02
	sbc b                                            ; $47f6: $98
	rrca                                             ; $47f7: $0f
	and e                                            ; $47f8: $a3
	inc l                                            ; $47f9: $2c
	rra                                              ; $47fa: $1f
	rst $38                                          ; $47fb: $ff
	ld a, a                                          ; $47fc: $7f
	xor l                                            ; $47fd: $ad
	ld [bc], a                                       ; $47fe: $02
	ld d, e                                          ; $47ff: $53
	ld l, e                                          ; $4800: $6b
	and e                                            ; $4801: $a3
	inc l                                            ; $4802: $2c
	rst $38                                          ; $4803: $ff
	ld a, a                                          ; $4804: $7f
	xor l                                            ; $4805: $ad
	ld [bc], a                                       ; $4806: $02
	reti                                             ; $4807: $d9


	add hl, de                                       ; $4808: $19
	and e                                            ; $4809: $a3
	inc l                                            ; $480a: $2c
	rst $38                                          ; $480b: $ff
	ld a, a                                          ; $480c: $7f
	cp d                                             ; $480d: $ba
	ld b, d                                          ; $480e: $42
	xor b                                            ; $480f: $a8
	ld d, l                                          ; $4810: $55
	and e                                            ; $4811: $a3
	inc l                                            ; $4812: $2c
	rst $38                                          ; $4813: $ff
	ld a, a                                          ; $4814: $7f
	sbc h                                            ; $4815: $9c
	ld a, [hl+]                                      ; $4816: $2a
	reti                                             ; $4817: $d9


	add hl, de                                       ; $4818: $19
	ld [$ff21], sp                                   ; $4819: $08 $21 $ff
	ld a, a                                          ; $481c: $7f
	xor l                                            ; $481d: $ad
	ld [bc], a                                       ; $481e: $02
	sbc b                                            ; $481f: $98
	rrca                                             ; $4820: $0f
	and e                                            ; $4821: $a3
	inc l                                            ; $4822: $2c
	rra                                              ; $4823: $1f
	db $fc                                           ; $4824: $fc
	ld hl, $1951                                     ; $4825: $21 $51 $19
	ld b, c                                          ; $4828: $41
	add hl, sp                                       ; $4829: $39

jr_02d_482a:
	and l                                            ; $482a: $a5
	inc d                                            ; $482b: $14
	rst $38                                          ; $482c: $ff
	ld a, a                                          ; $482d: $7f
	db $fc                                           ; $482e: $fc
	ld hl, $3941                                     ; $482f: $21 $41 $39
	ld d, c                                          ; $4832: $51
	add hl, de                                       ; $4833: $19
	rst $38                                          ; $4834: $ff
	ld a, a                                          ; $4835: $7f
	add hl, hl                                       ; $4836: $29
	ld a, a                                          ; $4837: $7f
	add $1a                                          ; $4838: $c6 $1a
	and l                                            ; $483a: $a5
	inc d                                            ; $483b: $14
	rst $38                                          ; $483c: $ff
	ld a, a                                          ; $483d: $7f
	db $fc                                           ; $483e: $fc
	ld hl, $3941                                     ; $483f: $21 $41 $39
	and l                                            ; $4842: $a5
	inc d                                            ; $4843: $14
	rst $38                                          ; $4844: $ff
	ld a, a                                          ; $4845: $7f
	add hl, hl                                       ; $4846: $29
	ld a, a                                          ; $4847: $7f
	adc h                                            ; $4848: $8c
	ld c, c                                          ; $4849: $49
	ld b, c                                          ; $484a: $41
	add hl, sp                                       ; $484b: $39
	rra                                              ; $484c: $1f
	cp c                                             ; $484d: $b9
	ld [hl], a                                       ; $484e: $77
	ld c, $6b                                        ; $484f: $0e $6b
	ld a, [bc]                                       ; $4851: $0a
	ld c, [hl]                                       ; $4852: $4e
	rst SubAFromBC                                          ; $4853: $e7
	inc h                                            ; $4854: $24
	cp c                                             ; $4855: $b9
	ld [hl], a                                       ; $4856: $77
	ld c, $6b                                        ; $4857: $0e $6b
	call nc, $e762                                   ; $4859: $d4 $62 $e7
	inc h                                            ; $485c: $24
	cp c                                             ; $485d: $b9
	ld [hl], a                                       ; $485e: $77
	sbc c                                            ; $485f: $99
	ld a, $d4                                        ; $4860: $3e $d4
	ld h, d                                          ; $4862: $62
	rst SubAFromBC                                          ; $4863: $e7
	inc h                                            ; $4864: $24
	cp c                                             ; $4865: $b9
	ld [hl], a                                       ; $4866: $77
	sbc c                                            ; $4867: $99
	ld a, $0a                                        ; $4868: $3e $0a
	ld c, [hl]                                       ; $486a: $4e
	rst SubAFromBC                                          ; $486b: $e7
	inc h                                            ; $486c: $24
	call nc, $0e62                                   ; $486d: $d4 $62 $0e
	ld l, e                                          ; $4870: $6b
	sbc c                                            ; $4871: $99
	ld a, $e7                                        ; $4872: $3e $e7
	inc h                                            ; $4874: $24
	rra                                              ; $4875: $1f
	ld c, $15                                        ; $4876: $0e $15
	db $eb                                           ; $4878: $eb
	db $10                                           ; $4879: $10
	ret                                              ; $487a: $c9


	db $10                                           ; $487b: $10
	xor b                                            ; $487c: $a8
	inc c                                            ; $487d: $0c
	ld l, e                                          ; $487e: $6b
	dec l                                            ; $487f: $2d
	ret                                              ; $4880: $c9


	jr jr_02d_482a                                   ; $4881: $18 $a7

	inc c                                            ; $4883: $0c
	ld h, l                                          ; $4884: $65
	ld [$6b53], sp                                   ; $4885: $08 $53 $6b
	rst SubAFromHL                                          ; $4888: $d7
	add hl, hl                                       ; $4889: $29
	ld sp, $6519                                     ; $488a: $31 $19 $65
	ld [$6b53], sp                                   ; $488d: $08 $53 $6b
	adc $52                                          ; $4890: $ce $52
	ld sp, $6519                                     ; $4892: $31 $19 $65
	ld [$29d7], sp                                   ; $4895: $08 $d7 $29
	db $eb                                           ; $4898: $eb
	db $10                                           ; $4899: $10
	ld c, $15                                        ; $489a: $0e $15
	and a                                            ; $489c: $a7
	inc c                                            ; $489d: $0c
	rra                                              ; $489e: $1f
	ld l, [hl]                                       ; $489f: $6e
	ld d, d                                          ; $48a0: $52
	ld [$8646], sp                                   ; $48a1: $08 $46 $86
	add hl, sp                                       ; $48a4: $39
	and h                                            ; $48a5: $a4
	inc d                                            ; $48a6: $14
	ei                                               ; $48a7: $fb
	ld a, a                                          ; $48a8: $7f
	halt                                             ; $48a9: $76
	ld l, $86                                        ; $48aa: $2e $86
	add hl, sp                                       ; $48ac: $39
	and h                                            ; $48ad: $a4
	inc d                                            ; $48ae: $14
	ei                                               ; $48af: $fb
	ld a, a                                          ; $48b0: $7f
	ld [hl], d                                       ; $48b1: $72
	ld l, a                                          ; $48b2: $6f
	add [hl]                                         ; $48b3: $86
	add hl, sp                                       ; $48b4: $39
	and h                                            ; $48b5: $a4
	inc d                                            ; $48b6: $14
	ei                                               ; $48b7: $fb
	ld a, a                                          ; $48b8: $7f
	halt                                             ; $48b9: $76
	ld l, $86                                        ; $48ba: $2e $86
	add hl, sp                                       ; $48bc: $39
	inc l                                            ; $48bd: $2c
	dec e                                            ; $48be: $1d
	halt                                             ; $48bf: $76
	ld l, $86                                        ; $48c0: $2e $86
	add hl, sp                                       ; $48c2: $39
	inc l                                            ; $48c3: $2c
	dec e                                            ; $48c4: $1d
	and h                                            ; $48c5: $a4
	inc d                                            ; $48c6: $14
	rra                                              ; $48c7: $1f
	ld e, d                                          ; $48c8: $5a
	ld l, e                                          ; $48c9: $6b
	or c                                             ; $48ca: $b1
	ld h, d                                          ; $48cb: $62
	ld sp, $a80d                                     ; $48cc: $31 $0d $a8
	inc b                                            ; $48cf: $04
	ld sp, $a80d                                     ; $48d0: $31 $0d $a8
	inc b                                            ; $48d3: $04
	and e                                            ; $48d4: $a3
	inc d                                            ; $48d5: $14
	ld h, e                                          ; $48d6: $63
	nop                                              ; $48d7: $00
	ld e, d                                          ; $48d8: $5a
	ld l, e                                          ; $48d9: $6b
	sbc d                                            ; $48da: $9a
	ld a, [hl-]                                      ; $48db: $3a
	ld sp, $a80d                                     ; $48dc: $31 $0d $a8
	inc b                                            ; $48df: $04
	ld e, d                                          ; $48e0: $5a
	ld l, e                                          ; $48e1: $6b
	or c                                             ; $48e2: $b1
	ld h, d                                          ; $48e3: $62
	sub h                                            ; $48e4: $94
	ld a, $4a                                        ; $48e5: $3e $4a
	add hl, sp                                       ; $48e7: $39
	sbc d                                            ; $48e8: $9a
	ld a, [hl-]                                      ; $48e9: $3a
	ld c, d                                          ; $48ea: $4a
	add hl, sp                                       ; $48eb: $39
	ld sp, $630d                                     ; $48ec: $31 $0d $63
	nop                                              ; $48ef: $00
	rra                                              ; $48f0: $1f
	or b                                             ; $48f1: $b0
	ld h, $17                                        ; $48f2: $26 $17
	ld [bc], a                                       ; $48f4: $02
	sub l                                            ; $48f5: $95
	ld bc, $0021                                     ; $48f6: $01 $21 $00
	dec l                                            ; $48f9: $2d
	dec b                                            ; $48fa: $05
	xor e                                            ; $48fb: $ab
	db $10                                           ; $48fc: $10
	and e                                            ; $48fd: $a3
	ld [$0021], sp                                   ; $48fe: $08 $21 $00
	ld c, h                                          ; $4901: $4c
	ld [de], a                                       ; $4902: $12
	rla                                              ; $4903: $17
	ld [bc], a                                       ; $4904: $02
	add [hl]                                         ; $4905: $86
	dec c                                            ; $4906: $0d
	ld hl, $4c00                                     ; $4907: $21 $00 $4c
	ld [de], a                                       ; $490a: $12
	ret z                                            ; $490b: $c8

	ld de, $0521                                     ; $490c: $11 $21 $05
	ld hl, $ac00                                     ; $490f: $21 $00 $ac
	ld a, [de]                                       ; $4912: $1a
	ld a, [bc]                                       ; $4913: $0a
	ld [de], a                                       ; $4914: $12
	add [hl]                                         ; $4915: $86
	dec c                                            ; $4916: $0d
	ld hl, $1f05                                     ; $4917: $21 $05 $1f
	db $fc                                           ; $491a: $fc
	ld hl, $1951                                     ; $491b: $21 $51 $19
	ld b, c                                          ; $491e: $41
	add hl, sp                                       ; $491f: $39
	and l                                            ; $4920: $a5
	inc d                                            ; $4921: $14
	rst $38                                          ; $4922: $ff
	ld a, a                                          ; $4923: $7f
	db $fc                                           ; $4924: $fc
	ld hl, $3941                                     ; $4925: $21 $41 $39
	ld d, c                                          ; $4928: $51
	add hl, de                                       ; $4929: $19
	rst $38                                          ; $492a: $ff
	ld a, a                                          ; $492b: $7f
	add hl, hl                                       ; $492c: $29
	ld a, a                                          ; $492d: $7f
	add $1a                                          ; $492e: $c6 $1a
	and l                                            ; $4930: $a5
	inc d                                            ; $4931: $14
	rst $38                                          ; $4932: $ff
	ld a, a                                          ; $4933: $7f
	db $fc                                           ; $4934: $fc
	ld hl, $3941                                     ; $4935: $21 $41 $39
	and l                                            ; $4938: $a5
	inc d                                            ; $4939: $14
	rst $38                                          ; $493a: $ff
	ld a, a                                          ; $493b: $7f
	add hl, hl                                       ; $493c: $29
	ld a, a                                          ; $493d: $7f
	adc h                                            ; $493e: $8c
	ld c, c                                          ; $493f: $49
	ld b, c                                          ; $4940: $41
	add hl, sp                                       ; $4941: $39
	rra                                              ; $4942: $1f
	rst $38                                          ; $4943: $ff
	ld a, a                                          ; $4944: $7f
	ld [hl], c                                       ; $4945: $71
	dec de                                           ; $4946: $1b
	ld [hl], h                                       ; $4947: $74
	dec h                                            ; $4948: $25
	and l                                            ; $4949: $a5
	jr jr_02d_498a                                   ; $494a: $18 $3e

	ld e, e                                          ; $494c: $5b
	ld [hl], h                                       ; $494d: $74
	ld d, d                                          ; $494e: $52
	ld l, b                                          ; $494f: $68
	ld b, l                                          ; $4950: $45
	and l                                            ; $4951: $a5
	jr jr_02d_49af                                   ; $4952: $18 $5b

	ld [hl-], a                                      ; $4954: $32
	ld l, b                                          ; $4955: $68
	ld b, l                                          ; $4956: $45
	ld [hl], h                                       ; $4957: $74
	dec h                                            ; $4958: $25
	and l                                            ; $4959: $a5
	jr @+$01                                         ; $495a: $18 $ff

	ld a, a                                          ; $495c: $7f
	ld a, $5b                                        ; $495d: $3e $5b
	ld [hl], h                                       ; $495f: $74
	dec h                                            ; $4960: $25
	and l                                            ; $4961: $a5
	jr jr_02d_49d8                                   ; $4962: $18 $74

	ld d, d                                          ; $4964: $52
	ld l, b                                          ; $4965: $68
	ld b, l                                          ; $4966: $45
	ld [hl], h                                       ; $4967: $74
	dec h                                            ; $4968: $25
	and l                                            ; $4969: $a5
	jr jr_02d_498b                                   ; $496a: $18 $1f

	sub h                                            ; $496c: $94
	add hl, de                                       ; $496d: $19
	rrca                                             ; $496e: $0f
	ld de, $08a8                                     ; $496f: $11 $a8 $08
	ld h, l                                          ; $4972: $65
	nop                                              ; $4973: $00
	sub h                                            ; $4974: $94
	add hl, de                                       ; $4975: $19
	jr nc, @+$13                                     ; $4976: $30 $11

	ld c, $0d                                        ; $4978: $0e $0d
	ld h, l                                          ; $497a: $65
	nop                                              ; $497b: $00
	inc d                                            ; $497c: $14
	ld l, $94                                        ; $497d: $2e $94
	add hl, de                                       ; $497f: $19
	rrca                                             ; $4980: $0f
	ld de, $08a8                                     ; $4981: $11 $a8 $08
	ld e, d                                          ; $4984: $5a
	ld l, e                                          ; $4985: $6b
	rrca                                             ; $4986: $0f
	ld de, $08ed                                     ; $4987: $11 $ed $08

jr_02d_498a:
	ld h, l                                          ; $498a: $65

jr_02d_498b:
	nop                                              ; $498b: $00
	ld e, d                                          ; $498c: $5a
	ld l, e                                          ; $498d: $6b
	sub h                                            ; $498e: $94
	add hl, de                                       ; $498f: $19
	inc d                                            ; $4990: $14
	ld l, $a8                                        ; $4991: $2e $a8
	ld [$ff1f], sp                                   ; $4993: $08 $1f $ff
	ld a, a                                          ; $4996: $7f
	and $61                                          ; $4997: $e6 $61
	jr nz, jr_02d_49f0                               ; $4999: $20 $55

	pop hl                                           ; $499b: $e1
	inc a                                            ; $499c: $3c
	rst $38                                          ; $499d: $ff
	ld c, a                                          ; $499e: $4f
	ld e, l                                          ; $499f: $5d
	cpl                                              ; $49a0: $2f
	or h                                             ; $49a1: $b4
	dec h                                            ; $49a2: $25
	inc b                                            ; $49a3: $04
	ld hl, $7fff                                     ; $49a4: $21 $ff $7f
	xor l                                            ; $49a7: $ad
	ld [hl], d                                       ; $49a8: $72
	and $7a                                          ; $49a9: $e6 $7a
	ld h, d                                          ; $49ab: $62
	ld e, c                                          ; $49ac: $59
	rst $38                                          ; $49ad: $ff
	ld a, a                                          ; $49ae: $7f

jr_02d_49af:
	and $61                                          ; $49af: $e6 $61
	add $25                                          ; $49b1: $c6 $25
	inc b                                            ; $49b3: $04
	ld hl, $7ae6                                     ; $49b4: $21 $e6 $7a
	or h                                             ; $49b7: $b4
	dec h                                            ; $49b8: $25
	jr nz, jr_02d_4a10                               ; $49b9: $20 $55

	inc b                                            ; $49bb: $04
	ld hl, $101f                                     ; $49bc: $21 $1f $10
	ld b, d                                          ; $49bf: $42
	ld h, $3d                                        ; $49c0: $26 $3d
	db $eb                                           ; $49c2: $eb
	inc e                                            ; $49c3: $1c
	jp $100c                                         ; $49c4: $c3 $0c $10


	ld b, d                                          ; $49c7: $42
	adc a                                            ; $49c8: $8f
	add hl, de                                       ; $49c9: $19
	xor h                                            ; $49ca: $ac
	inc c                                            ; $49cb: $0c
	ld h, e                                          ; $49cc: $63
	inc c                                            ; $49cd: $0c
	db $10                                           ; $49ce: $10
	ld b, d                                          ; $49cf: $42
	adc a                                            ; $49d0: $8f
	add hl, de                                       ; $49d1: $19
	ld h, $3d                                        ; $49d2: $26 $3d
	db $e4                                           ; $49d4: $e4
	inc l                                            ; $49d5: $2c
	xor h                                            ; $49d6: $ac
	inc c                                            ; $49d7: $0c

jr_02d_49d8:
	ld b, l                                          ; $49d8: $45
	ld [$0cc3], sp                                   ; $49d9: $08 $c3 $0c
	ld h, e                                          ; $49dc: $63
	inc c                                            ; $49dd: $0c
	db $10                                           ; $49de: $10
	ld b, d                                          ; $49df: $42
	ld b, a                                          ; $49e0: $47
	dec [hl]                                         ; $49e1: $35
	dec b                                            ; $49e2: $05
	dec l                                            ; $49e3: $2d
	ld h, b                                          ; $49e4: $60
	jr nz, @+$21                                     ; $49e5: $20 $1f

	ret z                                            ; $49e7: $c8

jr_02d_49e8:
	ld b, l                                          ; $49e8: $45
	daa                                              ; $49e9: $27
	dec a                                            ; $49ea: $3d
	daa                                              ; $49eb: $27
	ld hl, $18e5                                     ; $49ec: $21 $e5 $18
	sub c                                            ; $49ef: $91

jr_02d_49f0:
	ld l, d                                          ; $49f0: $6a
	add sp, $51                                      ; $49f1: $e8 $51
	daa                                              ; $49f3: $27
	ld hl, $18e5                                     ; $49f4: $21 $e5 $18
	sub c                                            ; $49f7: $91
	ld l, d                                          ; $49f8: $6a
	add sp, $51                                      ; $49f9: $e8 $51
	daa                                              ; $49fb: $27
	dec a                                            ; $49fc: $3d
	push hl                                          ; $49fd: $e5
	jr jr_02d_49e8                                   ; $49fe: $18 $e8

	ld d, c                                          ; $4a00: $51
	daa                                              ; $4a01: $27
	dec a                                            ; $4a02: $3d
	daa                                              ; $4a03: $27
	ld hl, $18e5                                     ; $4a04: $21 $e5 $18
	sub c                                            ; $4a07: $91
	ld l, d                                          ; $4a08: $6a
	ld c, [hl]                                       ; $4a09: $4e
	ld e, d                                          ; $4a0a: $5a
	daa                                              ; $4a0b: $27
	ld hl, $18e5                                     ; $4a0c: $21 $e5 $18
	rra                                              ; $4a0f: $1f

jr_02d_4a10:
	rst FarCall                                          ; $4a10: $f7
	ld c, d                                          ; $4a11: $4a
	or l                                             ; $4a12: $b5
	ld hl, $0d52                                     ; $4a13: $21 $52 $0d

jr_02d_4a16:
	ld h, [hl]                                       ; $4a16: $66
	inc c                                            ; $4a17: $0c
	rst FarCall                                          ; $4a18: $f7
	ld c, d                                          ; $4a19: $4a
	xor h                                            ; $4a1a: $ac
	dec d                                            ; $4a1b: $15
	ld d, e                                          ; $4a1c: $53
	db $10                                           ; $4a1d: $10
	add c                                            ; $4a1e: $81
	inc b                                            ; $4a1f: $04
	ld d, [hl]                                       ; $4a20: $56
	ld b, d                                          ; $4a21: $42
	ld d, h                                          ; $4a22: $54
	add hl, hl                                       ; $4a23: $29
	ld d, e                                          ; $4a24: $53
	db $10                                           ; $4a25: $10
	ld h, [hl]                                       ; $4a26: $66
	inc c                                            ; $4a27: $0c
	rst FarCall                                          ; $4a28: $f7
	ld c, d                                          ; $4a29: $4a
	xor h                                            ; $4a2a: $ac
	dec d                                            ; $4a2b: $15
	or l                                             ; $4a2c: $b5
	ld hl, $0481                                     ; $4a2d: $21 $81 $04
	ld e, d                                          ; $4a30: $5a
	ld [hl], e                                       ; $4a31: $73
	rst FarCall                                          ; $4a32: $f7
	ld c, d                                          ; $4a33: $4a
	ld d, e                                          ; $4a34: $53
	db $10                                           ; $4a35: $10
	or $59                                           ; $4a36: $f6 $59
	rra                                              ; $4a38: $1f
	db $dd                                           ; $4a39: $dd
	ld a, e                                          ; $4a3a: $7b
	ld [hl-], a                                      ; $4a3b: $32
	ld h, a                                          ; $4a3c: $67
	and l                                            ; $4a3d: $a5
	dec h                                            ; $4a3e: $25
	add hl, hl                                       ; $4a3f: $29
	dec h                                            ; $4a40: $25
	sbc d                                            ; $4a41: $9a
	ld [hl], e                                       ; $4a42: $73
	and l                                            ; $4a43: $a5
	dec h                                            ; $4a44: $25
	add hl, hl                                       ; $4a45: $29
	dec h                                            ; $4a46: $25
	and l                                            ; $4a47: $a5
	inc d                                            ; $4a48: $14
	sbc d                                            ; $4a49: $9a
	ld [hl], e                                       ; $4a4a: $73
	ld [hl-], a                                      ; $4a4b: $32
	ld h, a                                          ; $4a4c: $67
	inc de                                           ; $4a4d: $13
	ld [hl], $05                                     ; $4a4e: $36 $05
	add hl, sp                                       ; $4a50: $39
	sbc d                                            ; $4a51: $9a
	ld [hl], e                                       ; $4a52: $73
	adc a                                            ; $4a53: $8f
	ld e, [hl]                                       ; $4a54: $5e
	dec c                                            ; $4a55: $0d
	add hl, hl                                       ; $4a56: $29
	dec b                                            ; $4a57: $05
	add hl, sp                                       ; $4a58: $39
	sbc d                                            ; $4a59: $9a
	ld [hl], e                                       ; $4a5a: $73
	adc a                                            ; $4a5b: $8f
	ld e, [hl]                                       ; $4a5c: $5e
	dec b                                            ; $4a5d: $05
	add hl, sp                                       ; $4a5e: $39
	and l                                            ; $4a5f: $a5
	dec h                                            ; $4a60: $25
	rra                                              ; $4a61: $1f
	ld [hl], e                                       ; $4a62: $73
	ld a, [hl-]                                      ; $4a63: $3a
	or d                                             ; $4a64: $b2
	dec b                                            ; $4a65: $05
	add [hl]                                         ; $4a66: $86
	nop                                              ; $4a67: $00
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	cp h                                             ; $4a6a: $bc
	ld a, a                                          ; $4a6b: $7f
	ld [hl], e                                       ; $4a6c: $73
	ld a, [hl-]                                      ; $4a6d: $3a
	rst SubAFromBC                                          ; $4a6e: $e7
	inc c                                            ; $4a6f: $0c
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	ld [hl], e                                       ; $4a72: $73
	ld a, [hl-]                                      ; $4a73: $3a
	add a                                            ; $4a74: $87
	ld sp, $24c2                                     ; $4a75: $31 $c2 $24
	nop                                              ; $4a78: $00
	nop                                              ; $4a79: $00
	cp h                                             ; $4a7a: $bc
	ld a, a                                          ; $4a7b: $7f
	or d                                             ; $4a7c: $b2
	dec b                                            ; $4a7d: $05
	add [hl]                                         ; $4a7e: $86
	nop                                              ; $4a7f: $00
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	ld [hl], e                                       ; $4a82: $73
	ld a, [hl-]                                      ; $4a83: $3a
	add a                                            ; $4a84: $87
	ld sp, $012e                                     ; $4a85: $31 $2e $01
	nop                                              ; $4a88: $00
	nop                                              ; $4a89: $00
	rra                                              ; $4a8a: $1f
	ld l, a                                          ; $4a8b: $6f
	ld a, a                                          ; $4a8c: $7f
	rrca                                             ; $4a8d: $0f
	add hl, de                                       ; $4a8e: $19
	push hl                                          ; $4a8f: $e5
	jr nz, jr_02d_4a16                               ; $4a90: $20 $84

	db $10                                           ; $4a92: $10
	jp c, $d74e                                      ; $4a93: $da $4e $d7

	inc h                                            ; $4a96: $24
	sub c                                            ; $4a97: $91
	ld d, d                                          ; $4a98: $52
	add h                                            ; $4a99: $84
	db $10                                           ; $4a9a: $10
	call c, Call_02d_6f7f                            ; $4a9b: $dc $7f $6f
	ld a, a                                          ; $4a9e: $7f
	sub c                                            ; $4a9f: $91
	ld d, d                                          ; $4aa0: $52
	add h                                            ; $4aa1: $84
	db $10                                           ; $4aa2: $10
	call c, $da7f                                    ; $4aa3: $dc $7f $da
	ld c, [hl]                                       ; $4aa6: $4e
	rrca                                             ; $4aa7: $0f
	add hl, de                                       ; $4aa8: $19
	add h                                            ; $4aa9: $84
	db $10                                           ; $4aaa: $10
	call c, $997f                                    ; $4aab: $dc $7f $99
	ld [hl+], a                                      ; $4aae: $22
	sub c                                            ; $4aaf: $91
	ld d, d                                          ; $4ab0: $52
	add h                                            ; $4ab1: $84
	db $10                                           ; $4ab2: $10
	rra                                              ; $4ab3: $1f
	inc sp                                           ; $4ab4: $33
	ld [hl], $4b                                     ; $4ab5: $36 $4b
	dec h                                            ; $4ab7: $25
	and [hl]                                         ; $4ab8: $a6
	db $10                                           ; $4ab9: $10
	ld h, d                                          ; $4aba: $62
	inc c                                            ; $4abb: $0c
	inc sp                                           ; $4abc: $33
	ld [hl], $4b                                     ; $4abd: $36 $4b
	dec h                                            ; $4abf: $25
	and [hl]                                         ; $4ac0: $a6
	db $10                                           ; $4ac1: $10
	add $18                                          ; $4ac2: $c6 $18
	ld a, [hl-]                                      ; $4ac4: $3a
	ld e, a                                          ; $4ac5: $5f
	inc sp                                           ; $4ac6: $33
	ld [hl], $4b                                     ; $4ac7: $36 $4b
	dec h                                            ; $4ac9: $25
	and [hl]                                         ; $4aca: $a6
	db $10                                           ; $4acb: $10
	cp l                                             ; $4acc: $bd
	ld l, a                                          ; $4acd: $6f
	inc sp                                           ; $4ace: $33
	ld [hl], $4b                                     ; $4acf: $36 $4b
	dec h                                            ; $4ad1: $25
	ld h, d                                          ; $4ad2: $62
	inc c                                            ; $4ad3: $0c
	cp l                                             ; $4ad4: $bd
	ld l, a                                          ; $4ad5: $6f
	ld c, e                                          ; $4ad6: $4b
	dec h                                            ; $4ad7: $25
	and [hl]                                         ; $4ad8: $a6
	db $10                                           ; $4ad9: $10
	cp b                                             ; $4ada: $b8
	jr jr_02d_4afc                                   ; $4adb: $18 $1f

	ret nc                                           ; $4add: $d0

	ld sp, $216e                                     ; $4ade: $31 $6e $21
	rst JumpTable                                          ; $4ae1: $c7
	inc d                                            ; $4ae2: $14
	add l                                            ; $4ae3: $85
	db $10                                           ; $4ae4: $10
	sub $3e                                          ; $4ae5: $d6 $3e
	ldh a, [c]                                       ; $4ae7: $f2
	ld hl, $116a                                     ; $4ae8: $21 $6a $11
	add l                                            ; $4aeb: $85
	db $10                                           ; $4aec: $10
	cp l                                             ; $4aed: $bd
	ld [hl], e                                       ; $4aee: $73
	or e                                             ; $4aef: $b3
	ld e, d                                          ; $4af0: $5a
	ld l, [hl]                                       ; $4af1: $6e
	ld hl, $14c7                                     ; $4af2: $21 $c7 $14
	inc e                                            ; $4af5: $1c
	ld c, e                                          ; $4af6: $4b
	ld l, [hl]                                       ; $4af7: $6e
	ld hl, $1d0a                                     ; $4af8: $21 $0a $1d
	add l                                            ; $4afb: $85

jr_02d_4afc:
	db $10                                           ; $4afc: $10
	cp l                                             ; $4afd: $bd
	ld [hl], e                                       ; $4afe: $73
	ld [hl], a                                       ; $4aff: $77
	ld hl, $1d11                                     ; $4b00: $21 $11 $1d
	add l                                            ; $4b03: $85
	db $10                                           ; $4b04: $10
	rra                                              ; $4b05: $1f
	ei                                               ; $4b06: $fb
	ld a, $b7                                        ; $4b07: $3e $b7
	ld a, [hl-]                                      ; $4b09: $3a
	sub e                                            ; $4b0a: $93
	ld hl, $14a5                                     ; $4b0b: $21 $a5 $14
	ld a, [bc]                                       ; $4b0e: $0a
	dec e                                            ; $4b0f: $1d
	ld l, d                                          ; $4b10: $6a
	ld hl, $2107                                     ; $4b11: $21 $07 $21
	and l                                            ; $4b14: $a5
	inc d                                            ; $4b15: $14
	sbc l                                            ; $4b16: $9d
	ld l, e                                          ; $4b17: $6b
	or a                                             ; $4b18: $b7
	ld a, [hl-]                                      ; $4b19: $3a
	ld [hl], e                                       ; $4b1a: $73
	ld a, [hl+]                                      ; $4b1b: $2a
	and l                                            ; $4b1c: $a5
	inc d                                            ; $4b1d: $14
	ld [hl], e                                       ; $4b1e: $73
	ld a, [hl+]                                      ; $4b1f: $2a
	sub e                                            ; $4b20: $93
	ld hl, $1d0a                                     ; $4b21: $21 $0a $1d
	and l                                            ; $4b24: $a5
	inc d                                            ; $4b25: $14
	sbc l                                            ; $4b26: $9d
	ld l, e                                          ; $4b27: $6b
	ei                                               ; $4b28: $fb
	ld a, $ee                                        ; $4b29: $3e $ee
	dec [hl]                                         ; $4b2b: $35
	and l                                            ; $4b2c: $a5
	inc d                                            ; $4b2d: $14
	rra                                              ; $4b2e: $1f
	or h                                             ; $4b2f: $b4
	ld d, [hl]                                       ; $4b30: $56
	xor e                                            ; $4b31: $ab
	dec [hl]                                         ; $4b32: $35
	and d                                            ; $4b33: $a2
	jr jr_02d_4b36                                   ; $4b34: $18 $00

jr_02d_4b36:
	nop                                              ; $4b36: $00
	or [hl]                                          ; $4b37: $b6

jr_02d_4b38:
	ld e, e                                          ; $4b38: $5b
	ld c, [hl]                                       ; $4b39: $4e
	ld a, [hl-]                                      ; $4b3a: $3a
	and h                                            ; $4b3b: $a4
	ld d, c                                          ; $4b3c: $51
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	rst $38                                          ; $4b3f: $ff
	ld a, a                                          ; $4b40: $7f
	or c                                             ; $4b41: $b1
	ld e, [hl]                                       ; $4b42: $5e
	ld c, [hl]                                       ; $4b43: $4e
	ld a, [hl-]                                      ; $4b44: $3a
	db $ec                                           ; $4b45: $ec
	ld c, c                                          ; $4b46: $49
	or [hl]                                          ; $4b47: $b6
	ld e, e                                          ; $4b48: $5b
	ld c, [hl]                                       ; $4b49: $4e
	ld a, [hl-]                                      ; $4b4a: $3a
	ld l, b                                          ; $4b4b: $68
	dec h                                            ; $4b4c: $25
	ldh [c], a                                       ; $4b4d: $e2
	ld [$7fff], sp                                   ; $4b4e: $08 $ff $7f
	db $ec                                           ; $4b51: $ec
	ld c, c                                          ; $4b52: $49
	rst SubAFromBC                                          ; $4b53: $e7
	jr nz, jr_02d_4b38                               ; $4b54: $20 $e2

	ld [$531f], sp                                   ; $4b56: $08 $1f $53
	ld a, $ae                                        ; $4b59: $3e $ae
	add hl, hl                                       ; $4b5b: $29
	add sp, $14                                      ; $4b5c: $e8 $14
	add h                                            ; $4b5e: $84
	inc d                                            ; $4b5f: $14
	ld a, c                                          ; $4b60: $79
	ld h, e                                          ; $4b61: $63
	ld d, e                                          ; $4b62: $53
	ld a, $4b                                        ; $4b63: $3e $4b
	ld sp, $1484                                     ; $4b65: $31 $84 $14
	db $fc                                           ; $4b68: $fc
	ld a, a                                          ; $4b69: $7f
	ld [hl], e                                       ; $4b6a: $73
	ld c, [hl]                                       ; $4b6b: $4e
	bit 0, l                                         ; $4b6c: $cb $45
	ld c, e                                          ; $4b6e: $4b
	ld sp, $3e53                                     ; $4b6f: $31 $53 $3e
	xor [hl]                                         ; $4b72: $ae
	add hl, hl                                       ; $4b73: $29
	ld h, h                                          ; $4b74: $64
	add hl, sp                                       ; $4b75: $39
	add h                                            ; $4b76: $84
	inc d                                            ; $4b77: $14
	ld d, e                                          ; $4b78: $53
	ld a, $cb                                        ; $4b79: $3e $cb
	ld b, l                                          ; $4b7b: $45
	ld c, e                                          ; $4b7c: $4b
	ld sp, $3964                                     ; $4b7d: $31 $64 $39
	rra                                              ; $4b80: $1f
	cp [hl]                                          ; $4b81: $be
	ld b, [hl]                                       ; $4b82: $46
	ld [hl], b                                       ; $4b83: $70
	dec l                                            ; $4b84: $2d
	rst SubAFromBC                                          ; $4b85: $e7
	inc e                                            ; $4b86: $1c
	add l                                            ; $4b87: $85
	inc d                                            ; $4b88: $14
	ld e, a                                          ; $4b89: $5f
	ld d, a                                          ; $4b8a: $57
	cp [hl]                                          ; $4b8b: $be
	ld b, [hl]                                       ; $4b8c: $46
	ld d, [hl]                                       ; $4b8d: $56
	ld c, d                                          ; $4b8e: $4a
	ld [hl], b                                       ; $4b8f: $70
	dec l                                            ; $4b90: $2d
	cp [hl]                                          ; $4b91: $be
	ld b, [hl]                                       ; $4b92: $46
	inc a                                            ; $4b93: $3c
	ld a, [hl-]                                      ; $4b94: $3a
	ret nc                                           ; $4b95: $d0

	inc e                                            ; $4b96: $1c
	rst SubAFromBC                                          ; $4b97: $e7
	inc e                                            ; $4b98: $1c
	ld e, a                                          ; $4b99: $5f
	ld d, a                                          ; $4b9a: $57
	ld d, a                                          ; $4b9b: $57
	dec l                                            ; $4b9c: $2d
	ret nc                                           ; $4b9d: $d0

	inc e                                            ; $4b9e: $1c
	rst SubAFromBC                                          ; $4b9f: $e7
	inc e                                            ; $4ba0: $1c
	ld a, h                                          ; $4ba1: $7c
	ld a, $f8                                        ; $4ba2: $3e $f8
	dec [hl]                                         ; $4ba4: $35
	jr nc, jr_02d_4bc8                               ; $4ba5: $30 $21

	and l                                            ; $4ba7: $a5
	inc d                                            ; $4ba8: $14
	rra                                              ; $4ba9: $1f
	rrca                                             ; $4baa: $0f
	ld [hl], a                                       ; $4bab: $77
	dec c                                            ; $4bac: $0d
	ld e, $28                                        ; $4bad: $1e $28
	dec c                                            ; $4baf: $0d
	add h                                            ; $4bb0: $84
	db $10                                           ; $4bb1: $10
	rst $38                                          ; $4bb2: $ff
	ld [hl], a                                       ; $4bb3: $77
	push de                                          ; $4bb4: $d5
	ld d, [hl]                                       ; $4bb5: $56
	ld c, [hl]                                       ; $4bb6: $4e
	dec h                                            ; $4bb7: $25
	add h                                            ; $4bb8: $84
	db $10                                           ; $4bb9: $10
	rst $38                                          ; $4bba: $ff
	ld [hl], a                                       ; $4bbb: $77
	rrca                                             ; $4bbc: $0f
	ld [hl], a                                       ; $4bbd: $77
	jr z, jr_02d_4bcd                                ; $4bbe: $28 $0d

	add h                                            ; $4bc0: $84
	db $10                                           ; $4bc1: $10
	rst $38                                          ; $4bc2: $ff
	ld [hl], a                                       ; $4bc3: $77
	rrca                                             ; $4bc4: $0f
	ld [hl], a                                       ; $4bc5: $77
	add hl, hl                                       ; $4bc6: $29
	ld e, [hl]                                       ; $4bc7: $5e

jr_02d_4bc8:
	ld c, [hl]                                       ; $4bc8: $4e
	dec h                                            ; $4bc9: $25
	rst $38                                          ; $4bca: $ff
	ld [hl], a                                       ; $4bcb: $77
	ld c, [hl]                                       ; $4bcc: $4e

jr_02d_4bcd:
	dec h                                            ; $4bcd: $25
	jr z, jr_02d_4bdd                                ; $4bce: $28 $0d

	add h                                            ; $4bd0: $84
	db $10                                           ; $4bd1: $10
	rra                                              ; $4bd2: $1f
	rst $38                                          ; $4bd3: $ff
	ld l, e                                          ; $4bd4: $6b
	cp a                                             ; $4bd5: $bf
	ld d, a                                          ; $4bd6: $57
	rra                                              ; $4bd7: $1f
	ld c, a                                          ; $4bd8: $4f
	ld a, l                                          ; $4bd9: $7d
	ld b, [hl]                                       ; $4bda: $46
	rra                                              ; $4bdb: $1f
	ld c, a                                          ; $4bdc: $4f

jr_02d_4bdd:
	ld a, l                                          ; $4bdd: $7d
	ld b, [hl]                                       ; $4bde: $46
	rst FarCall                                          ; $4bdf: $f7
	add hl, sp                                       ; $4be0: $39
	ld [hl], b                                       ; $4be1: $70

jr_02d_4be2:
	add hl, sp                                       ; $4be2: $39
	cp a                                             ; $4be3: $bf
	ld d, a                                          ; $4be4: $57
	rra                                              ; $4be5: $1f
	ld c, a                                          ; $4be6: $4f
	ld a, l                                          ; $4be7: $7d
	ld b, [hl]                                       ; $4be8: $46
	rst FarCall                                          ; $4be9: $f7
	add hl, sp                                       ; $4bea: $39
	rra                                              ; $4beb: $1f
	ld c, a                                          ; $4bec: $4f
	rst FarCall                                          ; $4bed: $f7
	add hl, sp                                       ; $4bee: $39
	rst FarCall                                          ; $4bef: $f7
	add hl, sp                                       ; $4bf0: $39
	ld [hl], b                                       ; $4bf1: $70

jr_02d_4bf2:
	add hl, sp                                       ; $4bf2: $39
	ld a, l                                          ; $4bf3: $7d
	ld b, [hl]                                       ; $4bf4: $46
	rst FarCall                                          ; $4bf5: $f7
	add hl, sp                                       ; $4bf6: $39
	ld [hl], b                                       ; $4bf7: $70
	add hl, sp                                       ; $4bf8: $39
	ld a, [hl+]                                      ; $4bf9: $2a
	ld c, c                                          ; $4bfa: $49
	rra                                              ; $4bfb: $1f
	sbc $73                                          ; $4bfc: $de $73
	ld l, c                                          ; $4bfe: $69
	ld l, d                                          ; $4bff: $6a
	dec hl                                           ; $4c00: $2b
	ld b, d                                          ; $4c01: $42
	inc bc                                           ; $4c02: $03
	add hl, sp                                       ; $4c03: $39
	sbc $7b                                          ; $4c04: $de $7b
	push de                                          ; $4c06: $d5
	ld d, [hl]                                       ; $4c07: $56
	ld l, c                                          ; $4c08: $69
	ld l, d                                          ; $4c09: $6a
	inc bc                                           ; $4c0a: $03
	add hl, sp                                       ; $4c0b: $39
	sbc $73                                          ; $4c0c: $de $73
	push de                                          ; $4c0e: $d5
	ld d, [hl]                                       ; $4c0f: $56
	dec hl                                           ; $4c10: $2b
	ld b, d                                          ; $4c11: $42
	and l                                            ; $4c12: $a5
	ld d, c                                          ; $4c13: $51
	sbc $7b                                          ; $4c14: $de $7b
	or d                                             ; $4c16: $b2
	ld a, a                                          ; $4c17: $7f
	ld l, c                                          ; $4c18: $69
	ld l, d                                          ; $4c19: $6a
	add h                                            ; $4c1a: $84
	ld c, l                                          ; $4c1b: $4d
	sbc $73                                          ; $4c1c: $de $73
	dec hl                                           ; $4c1e: $2b
	ld b, d                                          ; $4c1f: $42
	ld l, c                                          ; $4c20: $69
	ld l, d                                          ; $4c21: $6a
	and l                                            ; $4c22: $a5
	ld d, c                                          ; $4c23: $51
	rra                                              ; $4c24: $1f
	rst $38                                          ; $4c25: $ff
	ld a, a                                          ; $4c26: $7f
	db $f4                                           ; $4c27: $f4
	ld sp, $2170                                     ; $4c28: $31 $70 $21
	xor c                                            ; $4c2b: $a9
	db $10                                           ; $4c2c: $10
	rst $38                                          ; $4c2d: $ff
	ld a, a                                          ; $4c2e: $7f
	or e                                             ; $4c2f: $b3
	ld h, d                                          ; $4c30: $62
	adc e                                            ; $4c31: $8b
	ld b, l                                          ; $4c32: $45
	and l                                            ; $4c33: $a5
	jr nz, @+$01                                     ; $4c34: $20 $ff

	ld a, a                                          ; $4c36: $7f
	or e                                             ; $4c37: $b3
	ld h, d                                          ; $4c38: $62
	ld [hl], b                                       ; $4c39: $70
	ld hl, $10a9                                     ; $4c3a: $21 $a9 $10
	rst $38                                          ; $4c3d: $ff
	ld a, a                                          ; $4c3e: $7f
	inc e                                            ; $4c3f: $1c
	ld d, e                                          ; $4c40: $53
	ld [hl], b                                       ; $4c41: $70
	ld hl, $10a9                                     ; $4c42: $21 $a9 $10
	rst $38                                          ; $4c45: $ff
	ld a, a                                          ; $4c46: $7f
	db $10                                           ; $4c47: $10
	ld [hl], e                                       ; $4c48: $73
	adc e                                            ; $4c49: $8b
	ld b, l                                          ; $4c4a: $45
	and l                                            ; $4c4b: $a5
	jr nz, jr_02d_4c6d                               ; $4c4c: $20 $1f

	ld a, l                                          ; $4c4e: $7d
	ld l, a                                          ; $4c4f: $6f
	ld c, $52                                        ; $4c50: $0e $52
	ld [hl], d                                       ; $4c52: $72
	dec e                                            ; $4c53: $1d
	add l                                            ; $4c54: $85
	inc d                                            ; $4c55: $14
	ld a, l                                          ; $4c56: $7d
	ld l, a                                          ; $4c57: $6f
	dec de                                           ; $4c58: $1b
	ld b, d                                          ; $4c59: $42
	sub b                                            ; $4c5a: $90
	jr jr_02d_4be2                                   ; $4c5b: $18 $85

	inc d                                            ; $4c5d: $14
	ld a, l                                          ; $4c5e: $7d
	ld l, a                                          ; $4c5f: $6f
	ld l, [hl]                                       ; $4c60: $6e
	ld e, $72                                        ; $4c61: $1e $72
	dec e                                            ; $4c63: $1d
	add l                                            ; $4c64: $85
	inc d                                            ; $4c65: $14
	ld [hl], d                                       ; $4c66: $72
	dec e                                            ; $4c67: $1d
	ld a, [bc]                                       ; $4c68: $0a
	dec e                                            ; $4c69: $1d
	sub b                                            ; $4c6a: $90
	jr jr_02d_4bf2                                   ; $4c6b: $18 $85

jr_02d_4c6d:
	inc d                                            ; $4c6d: $14
	ld a, l                                          ; $4c6e: $7d
	ld l, a                                          ; $4c6f: $6f
	dec de                                           ; $4c70: $1b
	ld b, d                                          ; $4c71: $42
	rst GetHLinHL                                          ; $4c72: $cf
	dec [hl]                                         ; $4c73: $35
	ld h, h                                          ; $4c74: $64
	db $10                                           ; $4c75: $10
	rra                                              ; $4c76: $1f
	inc [hl]                                         ; $4c77: $34
	ld d, e                                          ; $4c78: $53
	ld c, h                                          ; $4c79: $4c
	ld l, $68                                        ; $4c7a: $2e $68
	add hl, de                                       ; $4c7c: $19
	push bc                                          ; $4c7d: $c5
	inc d                                            ; $4c7e: $14
	db $fd                                           ; $4c7f: $fd
	ld a, a                                          ; $4c80: $7f
	ld [hl], e                                       ; $4c81: $73
	ld [hl], a                                       ; $4c82: $77
	db $ed                                           ; $4c83: $ed
	ld a, $4c                                        ; $4c84: $3e $4c
	ld l, $fd                                        ; $4c86: $2e $fd
	ld a, a                                          ; $4c88: $7f
	db $ed                                           ; $4c89: $ed
	ld a, $68                                        ; $4c8a: $3e $68
	add hl, de                                       ; $4c8c: $19
	push bc                                          ; $4c8d: $c5
	inc d                                            ; $4c8e: $14
	db $fd                                           ; $4c8f: $fd
	ld a, a                                          ; $4c90: $7f
	dec c                                            ; $4c91: $0d
	ld [hl], e                                       ; $4c92: $73
	ld l, c                                          ; $4c93: $69
	ld c, [hl]                                       ; $4c94: $4e
	db $ed                                           ; $4c95: $ed
	ld a, $fd                                        ; $4c96: $3e $fd
	ld a, a                                          ; $4c98: $7f
	adc d                                            ; $4c99: $8a
	dec l                                            ; $4c9a: $2d
	ld l, c                                          ; $4c9b: $69
	ld c, [hl]                                       ; $4c9c: $4e
	push bc                                          ; $4c9d: $c5
	inc d                                            ; $4c9e: $14
	rra                                              ; $4c9f: $1f
	xor h                                            ; $4ca0: $ac
	ld [hl], d                                       ; $4ca1: $72
	ld b, [hl]                                       ; $4ca2: $46
	dec e                                            ; $4ca3: $1d
	ld c, [hl]                                       ; $4ca4: $4e
	ld hl, $1cc3                                     ; $4ca5: $21 $c3 $1c
	rst $38                                          ; $4ca8: $ff
	ld a, a                                          ; $4ca9: $7f
	pop de                                           ; $4caa: $d1
	ld [hl], $ac                                     ; $4cab: $36 $ac
	ld [hl], d                                       ; $4cad: $72
	and e                                            ; $4cae: $a3
	ld h, c                                          ; $4caf: $61
	rst $38                                          ; $4cb0: $ff
	ld a, a                                          ; $4cb1: $7f
	dec d                                            ; $4cb2: $15
	ld l, a                                          ; $4cb3: $6f
	ld c, [hl]                                       ; $4cb4: $4e
	ld hl, $1cc3                                     ; $4cb5: $21 $c3 $1c
	pop de                                           ; $4cb8: $d1
	ld [hl], $4d                                     ; $4cb9: $36 $4d
	ld a, $46                                        ; $4cbb: $3e $46
	dec e                                            ; $4cbd: $1d
	jp $ff1c                                         ; $4cbe: $c3 $1c $ff


	ld a, a                                          ; $4cc1: $7f
	xor h                                            ; $4cc2: $ac
	ld [hl], d                                       ; $4cc3: $72
	and e                                            ; $4cc4: $a3
	ld h, c                                          ; $4cc5: $61
	jp $1f1c                                         ; $4cc6: $c3 $1c $1f


	cp $7f                                           ; $4cc9: $fe $7f
	jr nc, jr_02d_4d44                               ; $4ccb: $30 $77

	or c                                             ; $4ccd: $b1
	dec h                                            ; $4cce: $25
	and [hl]                                         ; $4ccf: $a6

jr_02d_4cd0:
	jr jr_02d_4cd0                                   ; $4cd0: $18 $fe

	ld a, a                                          ; $4cd2: $7f
	jr nc, jr_02d_4d4c                               ; $4cd3: $30 $77

	ld l, b                                          ; $4cd5: $68
	ld l, d                                          ; $4cd6: $6a
	dec bc                                           ; $4cd7: $0b
	ld [hl], $fe                                     ; $4cd8: $36 $fe
	ld a, a                                          ; $4cda: $7f
	dec bc                                           ; $4cdb: $0b
	ld [hl], $ad                                     ; $4cdc: $36 $ad
	ld a, [hl+]                                      ; $4cde: $2a
	ld h, $19                                        ; $4cdf: $26 $19
	cp $7f                                           ; $4ce1: $fe $7f
	ld d, l                                          ; $4ce3: $55
	cpl                                              ; $4ce4: $2f
	ld l, l                                          ; $4ce5: $6d
	ld e, $26                                        ; $4ce6: $1e $26
	add hl, de                                       ; $4ce8: $19
	cp $7f                                           ; $4ce9: $fe $7f
	dec bc                                           ; $4ceb: $0b
	ld [hl], $ad                                     ; $4cec: $36 $ad
	ld a, [hl+]                                      ; $4cee: $2a
	and [hl]                                         ; $4cef: $a6
	jr jr_02d_4d11                                   ; $4cf0: $18 $1f

	rst $38                                          ; $4cf2: $ff
	ld a, a                                          ; $4cf3: $7f
	xor $7a                                          ; $4cf4: $ee $7a
	push hl                                          ; $4cf6: $e5
	ld h, l                                          ; $4cf7: $65
	and l                                            ; $4cf8: $a5
	inc d                                            ; $4cf9: $14
	ret c                                            ; $4cfa: $d8

	dec sp                                           ; $4cfb: $3b
	ret nc                                           ; $4cfc: $d0

	ld h, $e9                                        ; $4cfd: $26 $e9
	dec d                                            ; $4cff: $15
	and l                                            ; $4d00: $a5
	inc d                                            ; $4d01: $14
	rst $38                                          ; $4d02: $ff
	ld a, a                                          ; $4d03: $7f
	di                                               ; $4d04: $f3
	ld h, [hl]                                       ; $4d05: $66
	ret c                                            ; $4d06: $d8

	dec sp                                           ; $4d07: $3b
	db $10                                           ; $4d08: $10
	cpl                                              ; $4d09: $2f
	rst $38                                          ; $4d0a: $ff
	ld a, a                                          ; $4d0b: $7f
	ret c                                            ; $4d0c: $d8

	dec sp                                           ; $4d0d: $3b
	jp hl                                            ; $4d0e: $e9


	dec d                                            ; $4d0f: $15
	and l                                            ; $4d10: $a5

jr_02d_4d11:
	inc d                                            ; $4d11: $14
	rst $38                                          ; $4d12: $ff
	ld a, a                                          ; $4d13: $7f
	xor $7a                                          ; $4d14: $ee $7a
	db $10                                           ; $4d16: $10
	cpl                                              ; $4d17: $2f
	and l                                            ; $4d18: $a5
	inc d                                            ; $4d19: $14
	rra                                              ; $4d1a: $1f
	rst $38                                          ; $4d1b: $ff
	ld a, a                                          ; $4d1c: $7f
	adc d                                            ; $4d1d: $8a
	ld [hl], d                                       ; $4d1e: $72
	db $e3                                           ; $4d1f: $e3
	ld l, c                                          ; $4d20: $69
	and c                                            ; $4d21: $a1
	ld h, c                                          ; $4d22: $61
	rst $38                                          ; $4d23: $ff
	ld a, a                                          ; $4d24: $7f
	ld a, [hl+]                                      ; $4d25: $2a
	ld e, d                                          ; $4d26: $5a
	add a                                            ; $4d27: $87
	ld c, c                                          ; $4d28: $49
	ld h, a                                          ; $4d29: $67
	dec l                                            ; $4d2a: $2d
	rst $38                                          ; $4d2b: $ff
	ld a, a                                          ; $4d2c: $7f
	db $dd                                           ; $4d2d: $dd
	ld [hl], $18                                     ; $4d2e: $36 $18
	ld [hl+], a                                      ; $4d30: $22
	ld h, a                                          ; $4d31: $67
	dec l                                            ; $4d32: $2d
	rst $38                                          ; $4d33: $ff
	ld a, a                                          ; $4d34: $7f
	ld a, [hl+]                                      ; $4d35: $2a
	ld e, d                                          ; $4d36: $5a
	db $e3                                           ; $4d37: $e3
	ld l, c                                          ; $4d38: $69
	ld h, a                                          ; $4d39: $67
	dec l                                            ; $4d3a: $2d
	rst $38                                          ; $4d3b: $ff
	ld a, a                                          ; $4d3c: $7f
	adc d                                            ; $4d3d: $8a
	ld [hl], d                                       ; $4d3e: $72

jr_02d_4d3f:
	ld a, [hl+]                                      ; $4d3f: $2a
	ld e, d                                          ; $4d40: $5a
	ld h, a                                          ; $4d41: $67
	dec l                                            ; $4d42: $2d
	rra                                              ; $4d43: $1f

jr_02d_4d44:
	rst SubAFromDE                                          ; $4d44: $df
	ld a, [hl-]                                      ; $4d45: $3a
	inc a                                            ; $4d46: $3c
	ld h, $da                                        ; $4d47: $26 $da
	dec e                                            ; $4d49: $1d
	and l                                            ; $4d4a: $a5
	inc d                                            ; $4d4b: $14

jr_02d_4d4c:
	rst SubAFromDE                                          ; $4d4c: $df
	ld a, [hl-]                                      ; $4d4d: $3a
	inc a                                            ; $4d4e: $3c
	ld h, $2f                                        ; $4d4f: $26 $2f
	ld h, a                                          ; $4d51: $67
	and l                                            ; $4d52: $a5
	inc d                                            ; $4d53: $14
	rst SubAFromDE                                          ; $4d54: $df
	ld [hl], e                                       ; $4d55: $73
	adc [hl]                                         ; $4d56: $8e
	ld h, $3c                                        ; $4d57: $26 $3c
	ld h, $a5                                        ; $4d59: $26 $a5
	inc d                                            ; $4d5b: $14
	rst SubAFromDE                                          ; $4d5c: $df
	ld [hl], e                                       ; $4d5d: $73
	ld [hl], d                                       ; $4d5e: $72
	ld a, a                                          ; $4d5f: $7f
	add [hl]                                         ; $4d60: $86
	halt                                             ; $4d61: $76
	and l                                            ; $4d62: $a5
	inc d                                            ; $4d63: $14
	rst SubAFromDE                                          ; $4d64: $df
	ld [hl], e                                       ; $4d65: $73
	cpl                                              ; $4d66: $2f
	ld h, a                                          ; $4d67: $67
	adc [hl]                                         ; $4d68: $8e
	ld h, $e2                                        ; $4d69: $26 $e2
	ld h, l                                          ; $4d6b: $65
	rra                                              ; $4d6c: $1f
	rst $38                                          ; $4d6d: $ff
	ld a, a                                          ; $4d6e: $7f
	ld [hl], l                                       ; $4d6f: $75
	ld d, [hl]                                       ; $4d70: $56
	db $d3                                           ; $4d71: $d3
	ld l, d                                          ; $4d72: $6a
	rst AddAOntoHL                                          ; $4d73: $ef
	ld b, l                                          ; $4d74: $45
	rst $38                                          ; $4d75: $ff
	ld a, a                                          ; $4d76: $7f
	ld [hl], l                                       ; $4d77: $75
	ld d, [hl]                                       ; $4d78: $56
	ld c, d                                          ; $4d79: $4a
	ld sp, $1084                                     ; $4d7a: $31 $84 $10
	rst $38                                          ; $4d7d: $ff
	ld a, a                                          ; $4d7e: $7f
	ld [hl], l                                       ; $4d7f: $75
	ld d, [hl]                                       ; $4d80: $56
	jp $8418                                         ; $4d81: $c3 $18 $84


	db $10                                           ; $4d84: $10
	rst $38                                          ; $4d85: $ff
	ld a, a                                          ; $4d86: $7f
	ld a, e                                          ; $4d87: $7b
	ld a, $b7                                        ; $4d88: $3e $b7
	dec h                                            ; $4d8a: $25
	jp $ff18                                         ; $4d8b: $c3 $18 $ff


	ld a, a                                          ; $4d8e: $7f
	db $d3                                           ; $4d8f: $d3
	ld l, d                                          ; $4d90: $6a
	dec [hl]                                         ; $4d91: $35
	ld c, d                                          ; $4d92: $4a
	jp $1f18                                         ; $4d93: $c3 $18 $1f


	ld h, $35                                        ; $4d96: $26 $35
	push hl                                          ; $4d98: $e5
	inc l                                            ; $4d99: $2c
	add h                                            ; $4d9a: $84
	jr jr_02d_4e00                                   ; $4d9b: $18 $63

	inc c                                            ; $4d9d: $0c
	ld c, l                                          ; $4d9e: $4d
	ld b, d                                          ; $4d9f: $42
	jp hl                                            ; $4da0: $e9


	ld c, c                                          ; $4da1: $49
	ret                                              ; $4da2: $c9


	dec a                                            ; $4da3: $3d
	push hl                                          ; $4da4: $e5
	inc h                                            ; $4da5: $24
	jp hl                                            ; $4da6: $e9


	ld c, c                                          ; $4da7: $49
	ld b, [hl]                                       ; $4da8: $46
	ld b, c                                          ; $4da9: $41
	and h                                            ; $4daa: $a4
	inc h                                            ; $4dab: $24
	ld h, e                                          ; $4dac: $63
	inc c                                            ; $4dad: $0c
	ld c, l                                          ; $4dae: $4d
	ld b, d                                          ; $4daf: $42
	ret                                              ; $4db0: $c9


	dec a                                            ; $4db1: $3d
	ld h, $35                                        ; $4db2: $26 $35
	and h                                            ; $4db4: $a4
	jr nz, @-$19                                     ; $4db5: $20 $e5

	inc h                                            ; $4db7: $24
	and h                                            ; $4db8: $a4
	jr nz, jr_02d_4d3f                               ; $4db9: $20 $84

	jr jr_02d_4e20                                   ; $4dbb: $18 $63

	inc c                                            ; $4dbd: $0c
	rra                                              ; $4dbe: $1f
	rst FarCall                                          ; $4dbf: $f7
	ld a, a                                          ; $4dc0: $7f
	ld [hl], l                                       ; $4dc1: $75
	ld a, a                                          ; $4dc2: $7f
	rst GetHLinHL                                          ; $4dc3: $cf
	ld a, d                                          ; $4dc4: $7a
	ld c, c                                          ; $4dc5: $49
	ld [hl], d                                       ; $4dc6: $72
	rst $38                                          ; $4dc7: $ff
	ld a, a                                          ; $4dc8: $7f
	adc b                                            ; $4dc9: $88
	ld a, [hl]                                       ; $4dca: $7e
	dec b                                            ; $4dcb: $05
	halt                                             ; $4dcc: $76
	add h                                            ; $4dcd: $84
	ld l, c                                          ; $4dce: $69
	rst FarCall                                          ; $4dcf: $f7
	ld a, a                                          ; $4dd0: $7f
	adc b                                            ; $4dd1: $88
	ld a, [hl]                                       ; $4dd2: $7e
	dec b                                            ; $4dd3: $05
	halt                                             ; $4dd4: $76
	add h                                            ; $4dd5: $84
	ld l, c                                          ; $4dd6: $69
	db $fc                                           ; $4dd7: $fc
	ld a, a                                          ; $4dd8: $7f
	rst FarCall                                          ; $4dd9: $f7
	ld a, a                                          ; $4dda: $7f
	ld [hl], l                                       ; $4ddb: $75
	ld a, a                                          ; $4ddc: $7f
	db $ed                                           ; $4ddd: $ed
	ld a, d                                          ; $4dde: $7a
	ld [hl], l                                       ; $4ddf: $75
	ld a, a                                          ; $4de0: $7f
	jr nc, jr_02d_4e62                               ; $4de1: $30 $7f

	db $ed                                           ; $4de3: $ed
	ld a, d                                          ; $4de4: $7a
	xor h                                            ; $4de5: $ac
	halt                                             ; $4de6: $76
	rra                                              ; $4de7: $1f
	ret nz                                           ; $4de8: $c0

	ld b, h                                          ; $4de9: $44
	ld [$600c], sp                                   ; $4dea: $08 $0c $60
	jr nc, jr_02d_4def                               ; $4ded: $30 $00

jr_02d_4def:
	db $10                                           ; $4def: $10
	ld e, h                                          ; $4df0: $5c
	ld e, e                                          ; $4df1: $5b
	push de                                          ; $4df2: $d5
	dec l                                            ; $4df3: $2d
	ld [$000c], sp                                   ; $4df4: $08 $0c $00
	db $10                                           ; $4df7: $10
	inc a                                            ; $4df8: $3c
	ld d, a                                          ; $4df9: $57
	or h                                             ; $4dfa: $b4
	add hl, de                                       ; $4dfb: $19
	ret nz                                           ; $4dfc: $c0

	ld b, h                                          ; $4dfd: $44
	nop                                              ; $4dfe: $00
	db $10                                           ; $4dff: $10

jr_02d_4e00:
	call c, $0842                                    ; $4e00: $dc $42 $08
	inc c                                            ; $4e03: $0c
	ld h, b                                          ; $4e04: $60
	jr nc, jr_02d_4e07                               ; $4e05: $30 $00

jr_02d_4e07:
	db $10                                           ; $4e07: $10
	inc a                                            ; $4e08: $3c
	ld d, a                                          ; $4e09: $57
	ld d, b                                          ; $4e0a: $50
	ccf                                              ; $4e0b: $3f
	xor b                                            ; $4e0c: $a8
	ld hl, $1000                                     ; $4e0d: $21 $00 $10
	rra                                              ; $4e10: $1f
	sbc d                                            ; $4e11: $9a
	ld l, e                                          ; $4e12: $6b
	xor b                                            ; $4e13: $a8
	ld [hl], d                                       ; $4e14: $72
	ld [bc], a                                       ; $4e15: $02
	ld a, [bc]                                       ; $4e16: $0a
	adc b                                            ; $4e17: $88
	db $10                                           ; $4e18: $10
	inc a                                            ; $4e19: $3c
	inc sp                                           ; $4e1a: $33
	ld e, e                                          ; $4e1b: $5b
	ld [hl+], a                                      ; $4e1c: $22
	or $19                                           ; $4e1d: $f6 $19
	adc b                                            ; $4e1f: $88

jr_02d_4e20:
	db $10                                           ; $4e20: $10
	sbc d                                            ; $4e21: $9a
	ld l, e                                          ; $4e22: $6b
	ret                                              ; $4e23: $c9


	ld d, l                                          ; $4e24: $55
	or $19                                           ; $4e25: $f6 $19
	adc b                                            ; $4e27: $88
	db $10                                           ; $4e28: $10
	xor b                                            ; $4e29: $a8
	ld [hl], d                                       ; $4e2a: $72
	or $19                                           ; $4e2b: $f6 $19
	ret                                              ; $4e2d: $c9


	ld d, l                                          ; $4e2e: $55
	adc b                                            ; $4e2f: $88
	db $10                                           ; $4e30: $10
	sbc d                                            ; $4e31: $9a
	ld l, e                                          ; $4e32: $6b
	or $19                                           ; $4e33: $f6 $19
	ld [bc], a                                       ; $4e35: $02
	ld a, [bc]                                       ; $4e36: $0a
	adc b                                            ; $4e37: $88
	db $10                                           ; $4e38: $10
	rra                                              ; $4e39: $1f
	xor l                                            ; $4e3a: $ad
	ld hl, $196d                                     ; $4e3b: $21 $6d $19
	jp z, $000c                                      ; $4e3e: $ca $0c $00

	nop                                              ; $4e41: $00
	ld l, l                                          ; $4e42: $6d
	add hl, de                                       ; $4e43: $19
	rst SubAFromBC                                          ; $4e44: $e7
	inc e                                            ; $4e45: $1c
	jp z, $000c                                      ; $4e46: $ca $0c $00

	nop                                              ; $4e49: $00
	xor l                                            ; $4e4a: $ad
	ld hl, $18a1                                     ; $4e4b: $21 $a1 $18
	ld h, a                                          ; $4e4e: $67
	inc b                                            ; $4e4f: $04
	nop                                              ; $4e50: $00
	nop                                              ; $4e51: $00
	xor l                                            ; $4e52: $ad
	ld hl, $04e5                                     ; $4e53: $21 $e5 $04
	add c                                            ; $4e56: $81
	inc l                                            ; $4e57: $2c
	nop                                              ; $4e58: $00
	nop                                              ; $4e59: $00
	rst SubAFromBC                                          ; $4e5a: $e7
	inc e                                            ; $4e5b: $1c
	and c                                            ; $4e5c: $a1
	jr @+$69                                         ; $4e5d: $18 $67

	inc b                                            ; $4e5f: $04
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00

jr_02d_4e62:
	rra                                              ; $4e62: $1f
	call c, $d277                                    ; $4e63: $dc $77 $d2
	ld h, d                                          ; $4e66: $62
	ld l, [hl]                                       ; $4e67: $6e
	ld d, [hl]                                       ; $4e68: $56
	xor c                                            ; $4e69: $a9
	ld b, l                                          ; $4e6a: $45
	call c, Call_02d_5377                            ; $4e6b: $dc $77 $53
	ld a, e                                          ; $4e6e: $7b
	ld l, d                                          ; $4e6f: $6a
	ld l, d                                          ; $4e70: $6a
	ld de, $dc1b                                     ; $4e71: $11 $1b $dc
	ld [hl], a                                       ; $4e74: $77
	ld de, $c71b                                     ; $4e75: $11 $1b $c7
	dec e                                            ; $4e78: $1d
	and e                                            ; $4e79: $a3
	inc c                                            ; $4e7a: $0c
	xor c                                            ; $4e7b: $a9
	ld b, l                                          ; $4e7c: $45
	ld b, a                                          ; $4e7d: $47
	add hl, hl                                       ; $4e7e: $29
	and e                                            ; $4e7f: $a3
	inc c                                            ; $4e80: $0c
	jr nz, jr_02d_4e8b                               ; $4e81: $20 $08

	call c, $c777                                    ; $4e83: $dc $77 $c7
	dec e                                            ; $4e86: $1d
	ld l, [hl]                                       ; $4e87: $6e
	ld d, [hl]                                       ; $4e88: $56
	jr nz, jr_02d_4e93                               ; $4e89: $20 $08

jr_02d_4e8b:
	rra                                              ; $4e8b: $1f
	cp e                                             ; $4e8c: $bb
	ld [hl], a                                       ; $4e8d: $77
	push af                                          ; $4e8e: $f5
	ld h, d                                          ; $4e8f: $62
	add e                                            ; $4e90: $83
	ld c, c                                          ; $4e91: $49
	ld h, d                                          ; $4e92: $62

jr_02d_4e93:
	ld [$26ef], sp                                   ; $4e93: $08 $ef $26
	and a                                            ; $4e96: $a7
	dec h                                            ; $4e97: $25
	add e                                            ; $4e98: $83
	ld c, c                                          ; $4e99: $49
	ld h, d                                          ; $4e9a: $62
	ld [$77bb], sp                                   ; $4e9b: $08 $bb $77
	rst AddAOntoHL                                          ; $4e9e: $ef
	ld h, $6b                                        ; $4e9f: $26 $6b
	ld e, [hl]                                       ; $4ea1: $5e
	and a                                            ; $4ea2: $a7
	dec h                                            ; $4ea3: $25
	ld a, [hl-]                                      ; $4ea4: $3a
	ld e, e                                          ; $4ea5: $5b
	adc [hl]                                         ; $4ea6: $8e
	dec h                                            ; $4ea7: $25
	add e                                            ; $4ea8: $83
	ld c, c                                          ; $4ea9: $49
	ld h, d                                          ; $4eaa: $62
	ld [$5a28], sp                                   ; $4eab: $08 $28 $5a
	adc [hl]                                         ; $4eae: $8e
	dec h                                            ; $4eaf: $25
	add e                                            ; $4eb0: $83
	ld c, c                                          ; $4eb1: $49
	ld h, d                                          ; $4eb2: $62
	ld [$fe1f], sp                                   ; $4eb3: $08 $1f $fe
	ld a, e                                          ; $4eb6: $7b
	ld a, [bc]                                       ; $4eb7: $0a
	ld l, d                                          ; $4eb8: $6a
	ld b, e                                          ; $4eb9: $43
	ld h, c                                          ; $4eba: $61
	ldh [c], a                                       ; $4ebb: $e2
	inc e                                            ; $4ebc: $1c
	dec c                                            ; $4ebd: $0d
	inc hl                                           ; $4ebe: $23
	inc b                                            ; $4ebf: $04
	ld h, $25                                        ; $4ec0: $26 $25
	ld sp, $1ce2                                     ; $4ec2: $31 $e2 $1c
	cp $7b                                           ; $4ec5: $fe $7b
	ld a, [bc]                                       ; $4ec7: $0a
	ld l, d                                          ; $4ec8: $6a
	dec h                                            ; $4ec9: $25
	ld sp, $1ce2                                     ; $4eca: $31 $e2 $1c
	ldh a, [c]                                       ; $4ecd: $f2
	halt                                             ; $4ece: $76
	dec c                                            ; $4ecf: $0d
	inc hl                                           ; $4ed0: $23
	inc b                                            ; $4ed1: $04
	ld h, $24                                        ; $4ed2: $26 $24
	add hl, de                                       ; $4ed4: $19
	cp $7b                                           ; $4ed5: $fe $7b
	ld a, [bc]                                       ; $4ed7: $0a
	ld l, d                                          ; $4ed8: $6a
	inc b                                            ; $4ed9: $04
	ld h, $24                                        ; $4eda: $26 $24
	add hl, de                                       ; $4edc: $19
	rra                                              ; $4edd: $1f
	rst $38                                          ; $4ede: $ff
	ld b, a                                          ; $4edf: $47
	ld e, d                                          ; $4ee0: $5a
	dec sp                                           ; $4ee1: $3b
	ld l, $1a                                        ; $4ee2: $2e $1a
	adc h                                            ; $4ee4: $8c
	ld de, $7fff                                     ; $4ee5: $11 $ff $7f
	ei                                               ; $4ee8: $fb
	ld l, l                                          ; $4ee9: $6d
	ld d, h                                          ; $4eea: $54
	ld h, c                                          ; $4eeb: $61
	adc h                                            ; $4eec: $8c
	ld de, $3b5a                                     ; $4eed: $11 $5a $3b
	ld c, a                                          ; $4ef0: $4f
	dec hl                                           ; $4ef1: $2b
	call z, $8c02                                    ; $4ef2: $cc $02 $8c
	ld de, $7fff                                     ; $4ef5: $11 $ff $7f
	cpl                                              ; $4ef8: $2f
	ld [hl], d                                       ; $4ef9: $72
	ld d, h                                          ; $4efa: $54
	ld h, c                                          ; $4efb: $61
	adc h                                            ; $4efc: $8c
	ld de, $7fff                                     ; $4efd: $11 $ff $7f
	ei                                               ; $4f00: $fb
	ld l, l                                          ; $4f01: $6d
	or d                                             ; $4f02: $b2
	add hl, hl                                       ; $4f03: $29
	adc h                                            ; $4f04: $8c
	ld de, $311f                                     ; $4f05: $11 $1f $31
	ld e, d                                          ; $4f08: $5a
	adc c                                            ; $4f09: $89
	dec h                                            ; $4f0a: $25
	add h                                            ; $4f0b: $84
	inc e                                            ; $4f0c: $1c
	nop                                              ; $4f0d: $00
	ld [$77dc], sp                                   ; $4f0e: $08 $dc $77
	xor l                                            ; $4f11: $ad
	ld l, [hl]                                       ; $4f12: $6e
	ld [hl], a                                       ; $4f13: $77
	ld e, $93                                        ; $4f14: $1e $93
	dec b                                            ; $4f16: $05
	call c, Call_02d_7777                            ; $4f17: $dc $77 $77
	ld e, $93                                        ; $4f1a: $1e $93
	dec b                                            ; $4f1c: $05
	ret z                                            ; $4f1d: $c8

	inc b                                            ; $4f1e: $04
	call c, $d677                                    ; $4f1f: $dc $77 $d6
	ld b, d                                          ; $4f22: $42
	pop de                                           ; $4f23: $d1
	add hl, hl                                       ; $4f24: $29
	add h                                            ; $4f25: $84
	inc e                                            ; $4f26: $1c
	call c, $1677                                    ; $4f27: $dc $77 $16
	ld l, e                                          ; $4f2a: $6b
	ld sp, $005a                                     ; $4f2b: $31 $5a $00
	ld [$9a1f], sp                                   ; $4f2e: $08 $1f $9a
	ld [hl], e                                       ; $4f31: $73
	xor l                                            ; $4f32: $ad
	ld h, d                                          ; $4f33: $62
	add e                                            ; $4f34: $83
	ld c, c                                          ; $4f35: $49
	add l                                            ; $4f36: $85
	inc b                                            ; $4f37: $04
	cp c                                             ; $4f38: $b9
	ld h, $d4                                        ; $4f39: $26 $d4
	dec c                                            ; $4f3b: $0d
	and h                                            ; $4f3c: $a4
	ld c, l                                          ; $4f3d: $4d
	add l                                            ; $4f3e: $85
	inc b                                            ; $4f3f: $04
	sbc d                                            ; $4f40: $9a
	ld [hl], e                                       ; $4f41: $73
	cp c                                             ; $4f42: $b9
	ld h, $ad                                        ; $4f43: $26 $ad
	ld h, d                                          ; $4f45: $62
	db $f4                                           ; $4f46: $f4
	dec d                                            ; $4f47: $15
	ld a, [hl-]                                      ; $4f48: $3a
	ld e, e                                          ; $4f49: $5b
	adc [hl]                                         ; $4f4a: $8e
	dec h                                            ; $4f4b: $25
	add e                                            ; $4f4c: $83
	ld c, c                                          ; $4f4d: $49
	ld h, d                                          ; $4f4e: $62
	ld [$5b3a], sp                                   ; $4f4f: $08 $3a $5b
	adc [hl]                                         ; $4f52: $8e
	dec h                                            ; $4f53: $25
	add e                                            ; $4f54: $83
	ld c, c                                          ; $4f55: $49
	ld h, d                                          ; $4f56: $62
	ld [$ff1f], sp                                   ; $4f57: $08 $1f $ff
	ld [hl], e                                       ; $4f5a: $73
	inc d                                            ; $4f5b: $14
	ld h, d                                          ; $4f5c: $62
	dec c                                            ; $4f5d: $0d
	ld e, [hl]                                       ; $4f5e: $5e
	adc c                                            ; $4f5f: $89
	nop                                              ; $4f60: $00
	dec sp                                           ; $4f61: $3b
	ld [bc], a                                       ; $4f62: $02
	or e                                             ; $4f63: $b3
	ld bc, $010f                                     ; $4f64: $01 $0f $01
	adc c                                            ; $4f67: $89
	nop                                              ; $4f68: $00
	ld e, [hl]                                       ; $4f69: $5e
	ld c, a                                          ; $4f6a: $4f
	inc d                                            ; $4f6b: $14
	ld h, d                                          ; $4f6c: $62
	or e                                             ; $4f6d: $b3
	dec h                                            ; $4f6e: $25
	rst AddAOntoHL                                          ; $4f6f: $ef
	ld [$73ff], sp                                   ; $4f70: $08 $ff $73
	cp h                                             ; $4f73: $bc
	ld l, $0f                                        ; $4f74: $2e $0f
	ld bc, $0089                                     ; $4f76: $01 $89 $00
	rst $38                                          ; $4f79: $ff
	ld [hl], e                                       ; $4f7a: $73
	dec sp                                           ; $4f7b: $3b
	ld [bc], a                                       ; $4f7c: $02
	or e                                             ; $4f7d: $b3
	ld bc, $010f                                     ; $4f7e: $01 $0f $01
	rra                                              ; $4f81: $1f
	cp [hl]                                          ; $4f82: $be
	ld [hl], e                                       ; $4f83: $73
	db $d3                                           ; $4f84: $d3

jr_02d_4f85:
	ld h, $ea                                        ; $4f85: $26 $ea
	ld de, $0063                                     ; $4f87: $11 $63 $00

jr_02d_4f8a:
	cpl                                              ; $4f8a: $2f
	ld [hl], e                                       ; $4f8b: $73
	sbc $6f                                          ; $4f8c: $de $6f
	sbc a                                            ; $4f8e: $9f
	dec d                                            ; $4f8f: $15
	and a                                            ; $4f90: $a7
	ld [$7fff], sp                                   ; $4f91: $08 $ff $7f
	cpl                                              ; $4f94: $2f
	ld [hl], e                                       ; $4f95: $73
	adc d                                            ; $4f96: $8a
	halt                                             ; $4f97: $76
	rst SubAFromBC                                          ; $4f98: $e7
	jr jr_02d_4f85                                   ; $4f99: $18 $ea

	ld de, $159f                                     ; $4f9b: $11 $9f $15
	ld [$4514], a                                    ; $4f9e: $ea $14 $45
	ld [$73dd], sp                                   ; $4fa1: $08 $dd $73
	ld a, [hl-]                                      ; $4fa4: $3a
	inc sp                                           ; $4fa5: $33
	ld de, $a52e                                     ; $4fa6: $11 $2e $a5
	nop                                              ; $4fa9: $00
	rra                                              ; $4faa: $1f
	cp $7f                                           ; $4fab: $fe $7f
	db $fd                                           ; $4fad: $fd
	ld b, $50                                        ; $4fae: $06 $50
	add hl, bc                                       ; $4fb0: $09
	ret z                                            ; $4fb1: $c8

	inc c                                            ; $4fb2: $0c
	rst SubAFromDE                                          ; $4fb3: $df
	ld a, e                                          ; $4fb4: $7b
	sub e                                            ; $4fb5: $93
	ld a, a                                          ; $4fb6: $7f
	adc d                                            ; $4fb7: $8a
	ld a, d                                          ; $4fb8: $7a
	ld h, $2d                                        ; $4fb9: $26 $2d
	rst SubAFromDE                                          ; $4fbb: $df
	ld a, e                                          ; $4fbc: $7b
	dec e                                            ; $4fbd: $1d
	ld b, e                                          ; $4fbe: $43
	dec b                                            ; $4fbf: $05
	ld e, $c9                                        ; $4fc0: $1e $c9
	ld [$7bdf], sp                                   ; $4fc2: $08 $df $7b
	ld d, b                                          ; $4fc5: $50
	add hl, bc                                       ; $4fc6: $09
	cp a                                             ; $4fc7: $bf
	add hl, bc                                       ; $4fc8: $09
	and a                                            ; $4fc9: $a7
	db $10                                           ; $4fca: $10
	call c, Call_02d_507f                            ; $4fcb: $dc $7f $50
	add hl, bc                                       ; $4fce: $09
	ld b, h                                          ; $4fcf: $44
	inc sp                                           ; $4fd0: $33
	rl h                                             ; $4fd1: $cb $14
	rra                                              ; $4fd3: $1f
	sbc a                                            ; $4fd4: $9f
	ld l, a                                          ; $4fd5: $6f
	sbc [hl]                                         ; $4fd6: $9e
	dec h                                            ; $4fd7: $25
	cp l                                             ; $4fd8: $bd
	inc c                                            ; $4fd9: $0c
	push bc                                          ; $4fda: $c5
	jr jr_02d_5055                                   ; $4fdb: $18 $78

	ld h, a                                          ; $4fdd: $67
	pop af                                           ; $4fde: $f1
	ld d, d                                          ; $4fdf: $52
	dec h                                            ; $4fe0: $25
	dec [hl]                                         ; $4fe1: $35
	xor d                                            ; $4fe2: $aa
	db $10                                           ; $4fe3: $10
	cp a                                             ; $4fe4: $bf
	ld [hl], a                                       ; $4fe5: $77
	ld [hl], h                                       ; $4fe6: $74
	ld [hl], a                                       ; $4fe7: $77
	ld [$a362], sp                                   ; $4fe8: $08 $62 $a3
	jr jr_02d_4f8a                                   ; $4feb: $18 $9d

	ld e, a                                          ; $4fed: $5f
	sbc a                                            ; $4fee: $9f
	rla                                              ; $4fef: $17
	dec [hl]                                         ; $4ff0: $35
	dec e                                            ; $4ff1: $1d
	call nz, $dd18                                   ; $4ff2: $c4 $18 $dd
	ld [hl], e                                       ; $4ff5: $73
	inc l                                            ; $4ff6: $2c
	ld d, $45                                        ; $4ff7: $16 $45
	dec c                                            ; $4ff9: $0d
	and l                                            ; $4ffa: $a5
	inc b                                            ; $4ffb: $04
	rra                                              ; $4ffc: $1f
	ld e, h                                          ; $4ffd: $5c
	ld h, a                                          ; $4ffe: $67
	ld c, a                                          ; $4fff: $4f
	ld hl, $10cb                                     ; $5000: $21 $cb $10
	push bc                                          ; $5003: $c5
	inc c                                            ; $5004: $0c
	ld hl, sp+$52                                    ; $5005: $f8 $52
	xor l                                            ; $5007: $ad
	add hl, hl                                       ; $5008: $29
	jp hl                                            ; $5009: $e9


	db $10                                           ; $500a: $10
	ld h, d                                          ; $500b: $62
	inc d                                            ; $500c: $14
	sbc l                                            ; $500d: $9d
	ld d, a                                          ; $500e: $57
	ldh a, [$2d]                                     ; $500f: $f0 $2d
	ld l, c                                          ; $5011: $69
	ld sp, $14c3                                     ; $5012: $31 $c3 $14
	ld l, l                                          ; $5015: $6d
	ld hl, $3145                                     ; $5016: $21 $45 $31
	add e                                            ; $5019: $83
	inc e                                            ; $501a: $1c
	add d                                            ; $501b: $82
	ld [$675d], sp                                   ; $501c: $08 $5d $67
	ldh a, [c]                                       ; $501f: $f2
	dec [hl]                                         ; $5020: $35
	xor h                                            ; $5021: $ac
	ld hl, $08a2                                     ; $5022: $21 $a2 $08
	rra                                              ; $5025: $1f
	rst $38                                          ; $5026: $ff
	ld a, a                                          ; $5027: $7f
	ld [hl], h                                       ; $5028: $74
	ld [hl], e                                       ; $5029: $73
	add sp, $51                                      ; $502a: $e8 $51
	add h                                            ; $502c: $84
	inc d                                            ; $502d: $14
	rst SubAFromDE                                          ; $502e: $df
	ld [hl], e                                       ; $502f: $73
	ld h, $2e                                        ; $5030: $26 $2e
	rst FarCall                                          ; $5032: $f7
	jr nz, jr_02d_5077                               ; $5033: $20 $42

	db $10                                           ; $5035: $10
	rst $38                                          ; $5036: $ff
	ld a, a                                          ; $5037: $7f
	ld a, a                                          ; $5038: $7f
	dec de                                           ; $5039: $1b
	xor d                                            ; $503a: $aa
	ld h, d                                          ; $503b: $62
	inc bc                                           ; $503c: $03
	dec [hl]                                         ; $503d: $35
	dec de                                           ; $503e: $1b
	ld c, a                                          ; $503f: $4f
	ld l, a                                          ; $5040: $6f
	ld e, d                                          ; $5041: $5a
	ld a, [hl+]                                      ; $5042: $2a
	ld e, d                                          ; $5043: $5a
	add b                                            ; $5044: $80
	inc c                                            ; $5045: $0c
	rst $38                                          ; $5046: $ff
	ld a, a                                          ; $5047: $7f
	dec e                                            ; $5048: $1d
	ld d, e                                          ; $5049: $53
	ld d, $2a                                        ; $504a: $16 $2a
	jp nz, $1f20                                     ; $504c: $c2 $20 $1f

	rst $38                                          ; $504f: $ff
	ld a, a                                          ; $5050: $7f
	or l                                             ; $5051: $b5
	ld l, e                                          ; $5052: $6b

jr_02d_5053:
	ld l, c                                          ; $5053: $69
	ld b, d                                          ; $5054: $42

jr_02d_5055:
	add h                                            ; $5055: $84
	db $10                                           ; $5056: $10
	rst $38                                          ; $5057: $ff
	ld a, a                                          ; $5058: $7f
	inc a                                            ; $5059: $3c
	rra                                              ; $505a: $1f
	ld l, c                                          ; $505b: $69
	ld b, d                                          ; $505c: $42
	add h                                            ; $505d: $84
	db $10                                           ; $505e: $10
	ld b, e                                          ; $505f: $43
	ld l, [hl]                                       ; $5060: $6e
	inc a                                            ; $5061: $3c
	rra                                              ; $5062: $1f
	ld [hl], c                                       ; $5063: $71
	inc b                                            ; $5064: $04
	add h                                            ; $5065: $84
	db $10                                           ; $5066: $10
	ld b, e                                          ; $5067: $43
	ld l, [hl]                                       ; $5068: $6e
	or l                                             ; $5069: $b5
	ld l, e                                          ; $506a: $6b
	ld [hl], c                                       ; $506b: $71
	inc b                                            ; $506c: $04
	add h                                            ; $506d: $84
	db $10                                           ; $506e: $10
	ld b, e                                          ; $506f: $43
	ld l, [hl]                                       ; $5070: $6e
	inc a                                            ; $5071: $3c
	rra                                              ; $5072: $1f
	ld l, c                                          ; $5073: $69
	ld b, d                                          ; $5074: $42
	add h                                            ; $5075: $84
	db $10                                           ; $5076: $10

jr_02d_5077:
	rra                                              ; $5077: $1f
	cp $7f                                           ; $5078: $fe $7f
	or $20                                           ; $507a: $f6 $20
	call Call_02d_6414                               ; $507c: $cd $14 $64

Call_02d_507f:
	inc c                                            ; $507f: $0c
	ld [hl], e                                       ; $5080: $73
	ld a, $f6                                        ; $5081: $3e $f6
	jr nz, jr_02d_5053                               ; $5083: $20 $ce

	jr @+$44                                         ; $5085: $18 $42

	inc b                                            ; $5087: $04
	rst $38                                          ; $5088: $ff
	ld a, a                                          ; $5089: $7f
	sbc a                                            ; $508a: $9f
	ld l, e                                          ; $508b: $6b
	add a                                            ; $508c: $87
	dec [hl]                                         ; $508d: $35
	ld b, e                                          ; $508e: $43
	inc c                                            ; $508f: $0c
	sbc $7f                                          ; $5090: $de $7f
	pop de                                           ; $5092: $d1
	ld e, d                                          ; $5093: $5a
	add a                                            ; $5094: $87
	ld b, l                                          ; $5095: $45
	add h                                            ; $5096: $84
	db $10                                           ; $5097: $10
	sbc $7f                                          ; $5098: $de $7f
	inc de                                           ; $509a: $13
	ld b, d                                          ; $509b: $42
	or $20                                           ; $509c: $f6 $20
	add h                                            ; $509e: $84
	inc d                                            ; $509f: $14
	rra                                              ; $50a0: $1f
	rst $38                                          ; $50a1: $ff
	ld [hl], a                                       ; $50a2: $77
	sbc e                                            ; $50a3: $9b
	ld l, $17                                        ; $50a4: $2e $17
	ld l, $32                                        ; $50a6: $2e $32
	dec d                                            ; $50a8: $15
	sbc $6f                                          ; $50a9: $de $6f
	ld [hl], l                                       ; $50ab: $75
	ld b, d                                          ; $50ac: $42
	ld h, $3d                                        ; $50ad: $26 $3d
	add e                                            ; $50af: $83
	inc d                                            ; $50b0: $14
	rst $38                                          ; $50b1: $ff
	ld a, a                                          ; $50b2: $7f
	sbc e                                            ; $50b3: $9b
	ld l, $67                                        ; $50b4: $2e $67
	ld sp, $14a6                                     ; $50b6: $31 $a6 $14
	rst $38                                          ; $50b9: $ff
	ld a, a                                          ; $50ba: $7f
	xor $5a                                          ; $50bb: $ee $5a
	ld l, d                                          ; $50bd: $6a
	dec [hl]                                         ; $50be: $35
	add e                                            ; $50bf: $83
	inc d                                            ; $50c0: $14
	rst $38                                          ; $50c1: $ff
	ld a, a                                          ; $50c2: $7f
	ld l, $4b                                        ; $50c3: $2e $4b
	sbc e                                            ; $50c5: $9b
	ld l, $8d                                        ; $50c6: $2e $8d
	ld sp, $db1f                                     ; $50c8: $31 $1f $db
	ld a, e                                          ; $50cb: $7b
	ld a, c                                          ; $50cc: $79
	ld [hl-], a                                      ; $50cd: $32
	ld a, [bc]                                       ; $50ce: $0a
	ld [hl], e                                       ; $50cf: $73
	ld b, d                                          ; $50d0: $42
	nop                                              ; $50d1: $00
	cp l                                             ; $50d2: $bd
	ld c, e                                          ; $50d3: $4b
	ld a, c                                          ; $50d4: $79
	ld [hl-], a                                      ; $50d5: $32
	ld [$422e], sp                                   ; $50d6: $08 $2e $42
	nop                                              ; $50d9: $00
	di                                               ; $50da: $f3
	ld a, [de]                                       ; $50db: $1a
	ld a, c                                          ; $50dc: $79
	ld [hl-], a                                      ; $50dd: $32
	ld [$422e], sp                                   ; $50de: $08 $2e $42
	nop                                              ; $50e1: $00
	cp l                                             ; $50e2: $bd
	ld c, e                                          ; $50e3: $4b
	add hl, de                                       ; $50e4: $19
	ld h, [hl]                                       ; $50e5: $66
	add hl, hl                                       ; $50e6: $29
	dec h                                            ; $50e7: $25
	ld b, d                                          ; $50e8: $42
	nop                                              ; $50e9: $00
	db $db                                           ; $50ea: $db
	ld a, e                                          ; $50eb: $7b
	add hl, de                                       ; $50ec: $19
	ld h, [hl]                                       ; $50ed: $66
	pop de                                           ; $50ee: $d1
	jr jr_02d_5133                                   ; $50ef: $18 $42

	nop                                              ; $50f1: $00
	rra                                              ; $50f2: $1f
	sbc h                                            ; $50f3: $9c
	ld [hl], e                                       ; $50f4: $73
	dec bc                                           ; $50f5: $0b
	add hl, de                                       ; $50f6: $19
	ld h, b                                          ; $50f7: $60
	inc l                                            ; $50f8: $2c
	or c                                             ; $50f9: $b1
	inc d                                            ; $50fa: $14
	sbc h                                            ; $50fb: $9c
	ld [hl], e                                       ; $50fc: $73
	ld b, a                                          ; $50fd: $47
	ld c, c                                          ; $50fe: $49
	ld h, b                                          ; $50ff: $60
	inc l                                            ; $5100: $2c
	ld hl, $9c1c                                     ; $5101: $21 $1c $9c
	ld [hl], e                                       ; $5104: $73
	jr @+$44                                         ; $5105: $18 $42

	dec bc                                           ; $5107: $0b
	add hl, de                                       ; $5108: $19
	ld h, l                                          ; $5109: $65
	inc c                                            ; $510a: $0c
	jr jr_02d_512b                                   ; $510b: $18 $1e

	pop hl                                           ; $510d: $e1
	ld b, b                                          ; $510e: $40
	db $ec                                           ; $510f: $ec
	jr jr_02d_5133                                   ; $5110: $18 $21

	inc e                                            ; $5112: $1c
	sbc h                                            ; $5113: $9c
	ld [hl], e                                       ; $5114: $73
	pop hl                                           ; $5115: $e1
	ld b, b                                          ; $5116: $40
	dec bc                                           ; $5117: $0b
	add hl, de                                       ; $5118: $19
	ld h, l                                          ; $5119: $65
	inc c                                            ; $511a: $0c
	rra                                              ; $511b: $1f
	ret                                              ; $511c: $c9


	ld hl, $1589                                     ; $511d: $21 $89 $15
	ld b, [hl]                                       ; $5120: $46
	add hl, hl                                       ; $5121: $29
	db $e3                                           ; $5122: $e3
	inc e                                            ; $5123: $1c
	inc sp                                           ; $5124: $33
	ld a, [hl-]                                      ; $5125: $3a
	ret                                              ; $5126: $c9


	ld hl, $2946                                     ; $5127: $21 $46 $29
	db $e3                                           ; $512a: $e3

jr_02d_512b:
	inc e                                            ; $512b: $1c
	ret                                              ; $512c: $c9


	ld hl, $2946                                     ; $512d: $21 $46 $29
	db $e3                                           ; $5130: $e3
	inc e                                            ; $5131: $1c
	and l                                            ; $5132: $a5

jr_02d_5133:
	inc d                                            ; $5133: $14
	inc sp                                           ; $5134: $33
	ld a, [hl-]                                      ; $5135: $3a
	adc c                                            ; $5136: $89
	dec d                                            ; $5137: $15
	dec h                                            ; $5138: $25
	dec h                                            ; $5139: $25
	ld h, e                                          ; $513a: $63
	inc c                                            ; $513b: $0c
	inc sp                                           ; $513c: $33
	ld a, [hl-]                                      ; $513d: $3a
	push hl                                          ; $513e: $e5
	inc d                                            ; $513f: $14
	adc b                                            ; $5140: $88
	inc d                                            ; $5141: $14
	ld h, e                                          ; $5142: $63
	inc c                                            ; $5143: $0c
	rra                                              ; $5144: $1f

jr_02d_5145:
	adc l                                            ; $5145: $8d
	ld l, d                                          ; $5146: $6a
	ld d, d                                          ; $5147: $52
	ld a, $b0                                        ; $5148: $3e $b0
	ld hl, $0863                                     ; $514a: $21 $63 $08
	cp [hl]                                          ; $514d: $be
	ld e, e                                          ; $514e: $5b
	ld a, [hl]                                       ; $514f: $7e
	ld b, e                                          ; $5150: $43
	inc l                                            ; $5151: $2c
	dec e                                            ; $5152: $1d
	ld h, e                                          ; $5153: $63
	ld [$6a8d], sp                                   ; $5154: $08 $8d $6a
	push bc                                          ; $5157: $c5
	ld d, l                                          ; $5158: $55
	or b                                             ; $5159: $b0
	ld hl, $10cb                                     ; $515a: $21 $cb $10
	or b                                             ; $515d: $b0
	ld hl, $10cb                                     ; $515e: $21 $cb $10
	add l                                            ; $5161: $85
	inc c                                            ; $5162: $0c
	jr nz, jr_02d_5169                               ; $5163: $20 $04

	push bc                                          ; $5165: $c5
	ld d, l                                          ; $5166: $55
	rl b                                             ; $5167: $cb $10

jr_02d_5169:
	and $1c                                          ; $5169: $e6 $1c
	jr nz, jr_02d_5171                               ; $516b: $20 $04

	rra                                              ; $516d: $1f
	ld [de], a                                       ; $516e: $12
	ld d, d                                          ; $516f: $52
	xor a                                            ; $5170: $af

jr_02d_5171:
	ld c, l                                          ; $5171: $4d
	ld c, h                                          ; $5172: $4c
	ld b, c                                          ; $5173: $41
	rst JumpTable                                          ; $5174: $c7
	inc l                                            ; $5175: $2c
	adc h                                            ; $5176: $8c
	dec h                                            ; $5177: $25
	add hl, bc                                       ; $5178: $09
	dec [hl]                                         ; $5179: $35
	inc b                                            ; $517a: $04
	ld hl, $0420                                     ; $517b: $21 $20 $04
	adc h                                            ; $517e: $8c
	dec h                                            ; $517f: $25
	xor a                                            ; $5180: $af
	ld c, l                                          ; $5181: $4d
	add hl, bc                                       ; $5182: $09
	dec [hl]                                         ; $5183: $35
	ld h, e                                          ; $5184: $63
	db $10                                           ; $5185: $10
	adc h                                            ; $5186: $8c
	dec h                                            ; $5187: $25
	ld c, d                                          ; $5188: $4a
	dec a                                            ; $5189: $3d
	push bc                                          ; $518a: $c5
	inc h                                            ; $518b: $24
	ld hl, $af04                                     ; $518c: $21 $04 $af
	ld c, l                                          ; $518f: $4d
	add hl, bc                                       ; $5190: $09
	dec [hl]                                         ; $5191: $35
	adc h                                            ; $5192: $8c
	dec h                                            ; $5193: $25
	jr nz, jr_02d_519a                               ; $5194: $20 $04

	rra                                              ; $5196: $1f
	cp h                                             ; $5197: $bc
	ld [hl], a                                       ; $5198: $77
	sbc l                                            ; $5199: $9d

jr_02d_519a:
	ld [hl], $94                                     ; $519a: $36 $94
	ld hl, $1d0e                                     ; $519c: $21 $0e $1d
	cp h                                             ; $519f: $bc
	ld [hl], a                                       ; $51a0: $77
	ld [hl], c                                       ; $51a1: $71
	ld d, [hl]                                       ; $51a2: $56
	add a                                            ; $51a3: $87
	dec a                                            ; $51a4: $3d
	add h                                            ; $51a5: $84
	jr jr_02d_5145                                   ; $51a6: $18 $9d

	ld [hl], $19                                     ; $51a8: $36 $19
	ld h, $94                                        ; $51aa: $26 $94
	ld hl, $1d0e                                     ; $51ac: $21 $0e $1d
	cp h                                             ; $51af: $bc
	ld [hl], a                                       ; $51b0: $77
	jp c, $9414                                      ; $51b1: $da $14 $94

	ld hl, $1884                                     ; $51b4: $21 $84 $18
	cp h                                             ; $51b7: $bc
	ld [hl], a                                       ; $51b8: $77
	ld a, a                                          ; $51b9: $7f

jr_02d_51ba:
	daa                                              ; $51ba: $27
	sbc l                                            ; $51bb: $9d
	ld [hl], $0e                                     ; $51bc: $36 $0e
	dec e                                            ; $51be: $1d
	rra                                              ; $51bf: $1f
	cp $7f                                           ; $51c0: $fe $7f
	pop af                                           ; $51c2: $f1

jr_02d_51c3:
	ld d, [hl]                                       ; $51c3: $56
	dec h                                            ; $51c4: $25
	dec e                                            ; $51c5: $1d
	and e                                            ; $51c6: $a3
	jr jr_02d_51ba                                   ; $51c7: $18 $f1

	ld d, [hl]                                       ; $51c9: $56
	ld a, l                                          ; $51ca: $7d
	cpl                                              ; $51cb: $2f
	or [hl]                                          ; $51cc: $b6
	ld l, $25                                        ; $51cd: $2e $25
	dec e                                            ; $51cf: $1d
	ld e, b                                          ; $51d0: $58
	ld e, a                                          ; $51d1: $5f

jr_02d_51d2:
	or [hl]                                          ; $51d2: $b6
	ld l, $6e                                        ; $51d3: $2e $6e
	ld l, $e4                                        ; $51d5: $2e $e4
	jr z, jr_02d_51ed                                ; $51d7: $28 $14

	ld d, e                                          ; $51d9: $53
	jp z, $f031                                      ; $51da: $ca $31 $f0

	jr nz, jr_02d_51c3                               ; $51dd: $20 $e4

	jr z, jr_02d_51d2                                ; $51df: $28 $f1

	ld d, [hl]                                       ; $51e1: $56
	pop de                                           ; $51e2: $d1
	ld e, d                                          ; $51e3: $5a
	dec c                                            ; $51e4: $0d
	ld c, d                                          ; $51e5: $4a
	dec h                                            ; $51e6: $25
	dec e                                            ; $51e7: $1d
	rra                                              ; $51e8: $1f
	push af                                          ; $51e9: $f5
	ld e, [hl]                                       ; $51ea: $5e
	adc l                                            ; $51eb: $8d
	ld e, [hl]                                       ; $51ec: $5e

jr_02d_51ed:
	ld l, e                                          ; $51ed: $6b
	dec [hl]                                         ; $51ee: $35
	inc bc                                           ; $51ef: $03
	add hl, sp                                       ; $51f0: $39
	cp $7b                                           ; $51f1: $fe $7b
	ld sp, $0353                                     ; $51f3: $31 $53 $03
	add hl, sp                                       ; $51f6: $39
	add d                                            ; $51f7: $82
	inc d                                            ; $51f8: $14
	cp $7b                                           ; $51f9: $fe $7b
	ld sp, $6e53                                     ; $51fb: $31 $53 $6e
	ld b, [hl]                                       ; $51fe: $46
	inc bc                                           ; $51ff: $03
	add hl, sp                                       ; $5200: $39
	cp e                                             ; $5201: $bb
	ld b, a                                          ; $5202: $47
	rst FarCall                                          ; $5203: $f7
	ld a, [hl+]                                      ; $5204: $2a
	ld l, [hl]                                       ; $5205: $6e
	ld b, [hl]                                       ; $5206: $46
	inc bc                                           ; $5207: $03
	add hl, sp                                       ; $5208: $39
	cp $7b                                           ; $5209: $fe $7b
	ld sp, $bb53                                     ; $520b: $31 $53 $bb
	ld b, a                                          ; $520e: $47
	push af                                          ; $520f: $f5
	ld e, [hl]                                       ; $5210: $5e
	rra                                              ; $5211: $1f
	adc $49                                          ; $5212: $ce $49
	ld c, b                                          ; $5214: $48
	dec [hl]                                         ; $5215: $35
	dec l                                            ; $5216: $2d
	add hl, de                                       ; $5217: $19
	ld b, b                                          ; $5218: $40
	nop                                              ; $5219: $00
	ld a, [hl-]                                      ; $521a: $3a
	ld h, e                                          ; $521b: $63
	or $21                                           ; $521c: $f6 $21
	dec l                                            ; $521e: $2d
	add hl, de                                       ; $521f: $19
	ld b, b                                          ; $5220: $40
	nop                                              ; $5221: $00
	adc $49                                          ; $5222: $ce $49
	ld c, b                                          ; $5224: $48
	dec [hl]                                         ; $5225: $35
	ld [$4021], sp                                   ; $5226: $08 $21 $40
	nop                                              ; $5229: $00
	ld a, [hl-]                                      ; $522a: $3a
	ld h, e                                          ; $522b: $63
	ld c, e                                          ; $522c: $4b
	ld d, $48                                        ; $522d: $16 $48
	dec [hl]                                         ; $522f: $35
	ld b, b                                          ; $5230: $40
	nop                                              ; $5231: $00
	ld a, [hl-]                                      ; $5232: $3a

jr_02d_5233:
	ld h, e                                          ; $5233: $63
	adc $49                                          ; $5234: $ce $49
	dec l                                            ; $5236: $2d
	add hl, de                                       ; $5237: $19
	ld c, b                                          ; $5238: $48
	dec [hl]                                         ; $5239: $35
	rra                                              ; $523a: $1f
	sbc h                                            ; $523b: $9c
	ld c, e                                          ; $523c: $4b
	ld [hl], e                                       ; $523d: $73
	ld a, [hl+]                                      ; $523e: $2a
	ld c, l                                          ; $523f: $4d
	add hl, de                                       ; $5240: $19
	and d                                            ; $5241: $a2
	inc d                                            ; $5242: $14
	rst $38                                          ; $5243: $ff
	ld e, e                                          ; $5244: $5b
	ld [hl], e                                       ; $5245: $73
	ld a, [hl+]                                      ; $5246: $2a
	ld a, [bc]                                       ; $5247: $0a
	ld e, $a2                                        ; $5248: $1e $a2
	inc d                                            ; $524a: $14
	rst $38                                          ; $524b: $ff
	ld [hl], a                                       ; $524c: $77
	ld [hl], e                                       ; $524d: $73
	ld a, [hl+]                                      ; $524e: $2a
	ld a, [bc]                                       ; $524f: $0a
	ld e, $04                                        ; $5250: $1e $04
	ld de, $77ff                                     ; $5252: $11 $ff $77
	ld h, a                                          ; $5255: $67
	ld e, [hl]                                       ; $5256: $5e
	ld a, [bc]                                       ; $5257: $0a
	ld e, $a2                                        ; $5258: $1e $a2
	inc d                                            ; $525a: $14
	rst $38                                          ; $525b: $ff
	ld e, e                                          ; $525c: $5b
	inc a                                            ; $525d: $3c
	inc sp                                           ; $525e: $33
	dec [hl]                                         ; $525f: $35
	ld d, $4d                                        ; $5260: $16 $4d
	add hl, de                                       ; $5262: $19
	rra                                              ; $5263: $1f
	jr jr_02d_52e1                                   ; $5264: $18 $7b

	ld d, h                                          ; $5266: $54
	ld l, d                                          ; $5267: $6a
	xor [hl]                                         ; $5268: $ae
	ld e, c                                          ; $5269: $59
	rst JumpTable                                          ; $526a: $c7
	jr c, @+$56                                      ; $526b: $38 $54

	ld l, d                                          ; $526d: $6a
	ld l, l                                          ; $526e: $6d
	ld c, c                                          ; $526f: $49
	add sp, $28                                      ; $5270: $e8 $28
	and l                                            ; $5272: $a5
	inc e                                            ; $5273: $1c
	ld de, $545e                                     ; $5274: $11 $5e $54
	ld l, d                                          ; $5277: $6a
	xor [hl]                                         ; $5278: $ae
	ld e, c                                          ; $5279: $59
	ld [$1145], sp                                   ; $527a: $08 $45 $11
	ld e, [hl]                                       ; $527d: $5e
	ld c, d                                          ; $527e: $4a
	ld c, c                                          ; $527f: $49
	ld [$c745], sp                                   ; $5280: $08 $45 $c7
	jr c, jr_02d_5233                                ; $5283: $38 $ae

	ld e, c                                          ; $5285: $59
	ld c, d                                          ; $5286: $4a
	ld d, c                                          ; $5287: $51
	ld [$c745], sp                                   ; $5288: $08 $45 $c7
	jr c, jr_02d_52ac                                ; $528b: $38 $1f

	ld a, b                                          ; $528d: $78
	ld [hl], $b0                                     ; $528e: $36 $b0
	dec d                                            ; $5290: $15
	rrca                                             ; $5291: $0f
	ld de, $0c66                                     ; $5292: $11 $66 $0c
	dec de                                           ; $5295: $1b
	ld b, e                                          ; $5296: $43
	ld d, $22                                        ; $5297: $16 $22
	or b                                             ; $5299: $b0
	dec d                                            ; $529a: $15
	call z, $bd10                                    ; $529b: $cc $10 $bd
	ld l, e                                          ; $529e: $6b
	ld d, $22                                        ; $529f: $16 $22
	ld l, l                                          ; $52a1: $6d
	ld a, $a8                                        ; $52a2: $3e $a8
	inc c                                            ; $52a4: $0c
	ld a, b                                          ; $52a5: $78
	ld [hl], $6d                                     ; $52a6: $36 $6d
	ld a, $2d                                        ; $52a8: $3e $2d
	dec d                                            ; $52aa: $15
	ld h, [hl]                                       ; $52ab: $66

jr_02d_52ac:
	inc c                                            ; $52ac: $0c
	ld l, l                                          ; $52ad: $6d
	ld a, $b0                                        ; $52ae: $3e $b0
	dec d                                            ; $52b0: $15
	dec l                                            ; $52b1: $2d
	dec d                                            ; $52b2: $15
	add h                                            ; $52b3: $84
	db $10                                           ; $52b4: $10
	rra                                              ; $52b5: $1f
	rst $38                                          ; $52b6: $ff
	ld a, [hl]                                       ; $52b7: $7e
	ld h, $46                                        ; $52b8: $26 $46
	ld e, d                                          ; $52ba: $5a
	ld e, $47                                        ; $52bb: $1e $47
	ld [$4ec9], sp                                   ; $52bd: $08 $c9 $4e
	ld h, $46                                        ; $52c0: $26 $46
	db $10                                           ; $52c2: $10
	ld hl, $0847                                     ; $52c3: $21 $47 $08
	rst $38                                          ; $52c6: $ff
	ld a, [hl]                                       ; $52c7: $7e
	ld e, d                                          ; $52c8: $5a
	ld e, $4b                                        ; $52c9: $1e $4b
	ld h, c                                          ; $52cb: $61
	ld b, a                                          ; $52cc: $47
	ld [$7eff], sp                                   ; $52cd: $08 $ff $7e
	ld d, h                                          ; $52d0: $54
	ld a, d                                          ; $52d1: $7a
	ld c, e                                          ; $52d2: $4b
	ld h, c                                          ; $52d3: $61
	ld b, a                                          ; $52d4: $47
	ld [$1e5a], sp                                   ; $52d5: $08 $5a $1e
	db $10                                           ; $52d8: $10
	ld hl, $614b                                     ; $52d9: $21 $4b $61
	ld b, a                                          ; $52dc: $47
	ld [$ff1f], sp                                   ; $52dd: $08 $1f $ff
	ld a, a                                          ; $52e0: $7f

jr_02d_52e1:
	cp b                                             ; $52e1: $b8
	ld c, [hl]                                       ; $52e2: $4e
	ld l, l                                          ; $52e3: $6d
	dec h                                            ; $52e4: $25
	ld h, e                                          ; $52e5: $63
	inc b                                            ; $52e6: $04
	ld a, [hl]                                       ; $52e7: $7e
	ld h, e                                          ; $52e8: $63
	jr c, jr_02d_5314                                ; $52e9: $38 $29

	ld h, a                                          ; $52eb: $67
	ld b, c                                          ; $52ec: $41
	ld h, e                                          ; $52ed: $63
	inc b                                            ; $52ee: $04
	rst $38                                          ; $52ef: $ff
	ld a, a                                          ; $52f0: $7f
	db $d3                                           ; $52f1: $d3
	ld e, d                                          ; $52f2: $5a
	ld h, a                                          ; $52f3: $67
	ld b, c                                          ; $52f4: $41
	ld h, e                                          ; $52f5: $63
	inc b                                            ; $52f6: $04
	rst $38                                          ; $52f7: $ff
	ld a, a                                          ; $52f8: $7f
	add hl, de                                       ; $52f9: $19
	ld h, e                                          ; $52fa: $63
	ld h, a                                          ; $52fb: $67
	ld b, c                                          ; $52fc: $41
	ld h, e                                          ; $52fd: $63
	inc b                                            ; $52fe: $04
	cp b                                             ; $52ff: $b8
	ld c, [hl]                                       ; $5300: $4e
	ld [$671d], a                                    ; $5301: $ea $1d $67
	ld b, c                                          ; $5304: $41
	ld h, e                                          ; $5305: $63
	inc b                                            ; $5306: $04
	rra                                              ; $5307: $1f
	pop de                                           ; $5308: $d1
	ld h, d                                          ; $5309: $62
	ld b, [hl]                                       ; $530a: $46
	dec [hl]                                         ; $530b: $35
	ld [$6325], sp                                   ; $530c: $08 $25 $63
	inc c                                            ; $530f: $0c
	call c, Call_02d_7673                            ; $5310: $dc $73 $76
	ld l, a                                          ; $5313: $6f

jr_02d_5314:
	pop de                                           ; $5314: $d1
	ld h, d                                          ; $5315: $62
	ld b, [hl]                                       ; $5316: $46
	dec [hl]                                         ; $5317: $35
	adc a                                            ; $5318: $8f
	ld e, d                                          ; $5319: $5a
	or h                                             ; $531a: $b4
	add hl, sp                                       ; $531b: $39
	dec c                                            ; $531c: $0d
	dec h                                            ; $531d: $25
	ld h, e                                          ; $531e: $63
	inc c                                            ; $531f: $0c
	call c, $8f73                                    ; $5320: $dc $73 $8f
	ld e, d                                          ; $5323: $5a
	ld [hl], d                                       ; $5324: $72
	dec l                                            ; $5325: $2d
	ld h, e                                          ; $5326: $63
	inc c                                            ; $5327: $0c
	halt                                             ; $5328: $76
	ld l, a                                          ; $5329: $6f
	adc a                                            ; $532a: $8f
	ld e, d                                          ; $532b: $5a
	ld b, [hl]                                       ; $532c: $46
	dec [hl]                                         ; $532d: $35
	ld h, e                                          ; $532e: $63
	inc c                                            ; $532f: $0c
	rra                                              ; $5330: $1f
	or e                                             ; $5331: $b3
	ld h, [hl]                                       ; $5332: $66
	ld l, d                                          ; $5333: $6a
	ld [de], a                                       ; $5334: $12
	adc b                                            ; $5335: $88
	ld d, c                                          ; $5336: $51
	ld b, c                                          ; $5337: $41
	inc d                                            ; $5338: $14
	sbc $77                                          ; $5339: $de $77
	ld e, $47                                        ; $533b: $1e $47
	rst AddAOntoHL                                          ; $533d: $ef
	ld h, [hl]                                       ; $533e: $66
	jp hl                                            ; $533f: $e9


	inc d                                            ; $5340: $14
	sbc $77                                          ; $5341: $de $77
	db $fd                                           ; $5343: $fd
	ld b, d                                          ; $5344: $42
	adc b                                            ; $5345: $88
	ld d, c                                          ; $5346: $51
	ld b, c                                          ; $5347: $41
	inc d                                            ; $5348: $14
	sbc $77                                          ; $5349: $de $77
	adc b                                            ; $534b: $88
	ld d, c                                          ; $534c: $51
	jp hl                                            ; $534d: $e9


	inc d                                            ; $534e: $14
	ld b, c                                          ; $534f: $41
	inc d                                            ; $5350: $14
	sbc $77                                          ; $5351: $de $77
	or e                                             ; $5353: $b3
	ld h, [hl]                                       ; $5354: $66
	adc b                                            ; $5355: $88
	ld d, c                                          ; $5356: $51
	ld b, c                                          ; $5357: $41
	inc d                                            ; $5358: $14
	rra                                              ; $5359: $1f
	sbc $7f                                          ; $535a: $de $7f
	ld c, d                                          ; $535c: $4a
	ld a, $70                                        ; $535d: $3e $70
	add hl, hl                                       ; $535f: $29
	add e                                            ; $5360: $83
	db $10                                           ; $5361: $10
	db $fc                                           ; $5362: $fc
	ld c, [hl]                                       ; $5363: $4e
	jr jr_02d_53e1                                   ; $5364: $18 $7b

	ld [hl], b                                       ; $5366: $70
	add hl, hl                                       ; $5367: $29
	add e                                            ; $5368: $83
	db $10                                           ; $5369: $10
	sbc $7f                                          ; $536a: $de $7f
	jr jr_02d_53e9                                   ; $536c: $18 $7b

	ld c, d                                          ; $536e: $4a
	ld a, $e7                                        ; $536f: $3e $e7
	ld b, h                                          ; $5371: $44
	jr jr_02d_53ef                                   ; $5372: $18 $7b

	adc $59                                          ; $5374: $ce $59
	rst SubAFromBC                                          ; $5376: $e7

Call_02d_5377:
	ld b, h                                          ; $5377: $44
	ld b, b                                          ; $5378: $40
	inc h                                            ; $5379: $24
	sbc $7f                                          ; $537a: $de $7f
	ld a, $1f                                        ; $537c: $3e $1f
	ld a, $15                                        ; $537e: $3e $15
	add e                                            ; $5380: $83
	db $10                                           ; $5381: $10
	rra                                              ; $5382: $1f
	or c                                             ; $5383: $b1
	dec l                                            ; $5384: $2d
	inc l                                            ; $5385: $2c
	dec h                                            ; $5386: $25
	ret                                              ; $5387: $c9


	inc d                                            ; $5388: $14
	ld h, [hl]                                       ; $5389: $66
	inc c                                            ; $538a: $0c
	ld e, l                                          ; $538b: $5d
	ld e, a                                          ; $538c: $5f
	sbc b                                            ; $538d: $98
	ld b, [hl]                                       ; $538e: $46
	or c                                             ; $538f: $b1
	dec l                                            ; $5390: $2d
	dec l                                            ; $5391: $2d
	dec e                                            ; $5392: $1d
	ld e, l                                          ; $5393: $5d
	ld e, a                                          ; $5394: $5f
	ld d, l                                          ; $5395: $55
	ld b, d                                          ; $5396: $42
	inc l                                            ; $5397: $2c
	dec h                                            ; $5398: $25
	ld h, [hl]                                       ; $5399: $66
	inc c                                            ; $539a: $0c
	ld e, l                                          ; $539b: $5d
	ld e, a                                          ; $539c: $5f
	sbc b                                            ; $539d: $98
	ld b, [hl]                                       ; $539e: $46
	or c                                             ; $539f: $b1
	dec l                                            ; $53a0: $2d
	ld h, [hl]                                       ; $53a1: $66
	inc c                                            ; $53a2: $0c
	sbc b                                            ; $53a3: $98
	ld b, [hl]                                       ; $53a4: $46
	or c                                             ; $53a5: $b1
	dec l                                            ; $53a6: $2d
	ret                                              ; $53a7: $c9


	inc d                                            ; $53a8: $14
	ld h, [hl]                                       ; $53a9: $66
	inc c                                            ; $53aa: $0c
	rra                                              ; $53ab: $1f
	ld d, b                                          ; $53ac: $50
	ld d, a                                          ; $53ad: $57
	ld d, d                                          ; $53ae: $52
	ld [hl-], a                                      ; $53af: $32
	xor b                                            ; $53b0: $a8
	inc c                                            ; $53b1: $0c
	ld hl, $b910                                     ; $53b2: $21 $10 $b9
	ld h, a                                          ; $53b5: $67
	db $ec                                           ; $53b6: $ec
	ld a, $c8                                        ; $53b7: $3e $c8
	add hl, sp                                       ; $53b9: $39
	xor b                                            ; $53ba: $a8
	inc c                                            ; $53bb: $0c
	ld d, b                                          ; $53bc: $50
	ld d, a                                          ; $53bd: $57
	ret z                                            ; $53be: $c8

	add hl, sp                                       ; $53bf: $39
	add l                                            ; $53c0: $85
	ld b, c                                          ; $53c1: $41
	ldh [c], a                                       ; $53c2: $e2
	inc l                                            ; $53c3: $2c
	ld [hl], c                                       ; $53c4: $71
	add hl, de                                       ; $53c5: $19
	inc l                                            ; $53c6: $2c
	add hl, de                                       ; $53c7: $19
	add $0c                                          ; $53c8: $c6 $0c
	ld hl, $ec10                                     ; $53ca: $21 $10 $ec
	ld a, $85                                        ; $53cd: $3e $85
	ld b, c                                          ; $53cf: $41
	inc l                                            ; $53d0: $2c
	add hl, de                                       ; $53d1: $19
	add $0c                                          ; $53d2: $c6 $0c
	rra                                              ; $53d4: $1f
	sbc $7b                                          ; $53d5: $de $7b
	rrca                                             ; $53d7: $0f
	ld [hl], a                                       ; $53d8: $77
	ld h, a                                          ; $53d9: $67
	ld l, d                                          ; $53da: $6a
	ld b, h                                          ; $53db: $44
	ld h, d                                          ; $53dc: $62
	rrca                                             ; $53dd: $0f
	ld [hl], a                                       ; $53de: $77
	ld b, h                                          ; $53df: $44
	ld h, d                                          ; $53e0: $62

jr_02d_53e1:
	or c                                             ; $53e1: $b1
	add hl, de                                       ; $53e2: $19
	add c                                            ; $53e3: $81
	db $10                                           ; $53e4: $10
	sub $3e                                          ; $53e5: $d6 $3e
	xor c                                            ; $53e7: $a9
	ld b, l                                          ; $53e8: $45

jr_02d_53e9:
	ldh [c], a                                       ; $53e9: $e2
	db $10                                           ; $53ea: $10
	add c                                            ; $53eb: $81
	db $10                                           ; $53ec: $10
	sbc $7b                                          ; $53ed: $de $7b

jr_02d_53ef:
	ld l, h                                          ; $53ef: $6c
	ld e, d                                          ; $53f0: $5a
	ldh [c], a                                       ; $53f1: $e2
	db $10                                           ; $53f2: $10
	or c                                             ; $53f3: $b1
	add hl, de                                       ; $53f4: $19
	rrca                                             ; $53f5: $0f
	ld [hl], a                                       ; $53f6: $77
	ld b, h                                          ; $53f7: $44
	ld h, d                                          ; $53f8: $62
	xor c                                            ; $53f9: $a9
	ld b, l                                          ; $53fa: $45
	ldh [c], a                                       ; $53fb: $e2
	db $10                                           ; $53fc: $10
	rra                                              ; $53fd: $1f
	rst $38                                          ; $53fe: $ff
	ld a, a                                          ; $53ff: $7f
	ld [hl], l                                       ; $5400: $75
	ld a, a                                          ; $5401: $7f
	jr nc, jr_02d_5483                               ; $5402: $30 $7f

	ld c, b                                          ; $5404: $48
	dec [hl]                                         ; $5405: $35
	rst $38                                          ; $5406: $ff
	ld a, a                                          ; $5407: $7f
	jr nc, jr_02d_5489                               ; $5408: $30 $7f

	ret nc                                           ; $540a: $d0

	ld l, d                                          ; $540b: $6a
	ld c, b                                          ; $540c: $48
	dec [hl]                                         ; $540d: $35
	jr nc, jr_02d_548f                               ; $540e: $30 $7f

	ld l, b                                          ; $5410: $68
	halt                                             ; $5411: $76
	ret nc                                           ; $5412: $d0

	ld l, d                                          ; $5413: $6a
	ld c, b                                          ; $5414: $48
	dec [hl]                                         ; $5415: $35
	rst $38                                          ; $5416: $ff
	ld a, a                                          ; $5417: $7f
	jr nc, jr_02d_5499                               ; $5418: $30 $7f

	ld c, a                                          ; $541a: $4f
	ld e, d                                          ; $541b: $5a
	ld b, $2d                                        ; $541c: $06 $2d
	rst $38                                          ; $541e: $ff
	ld a, a                                          ; $541f: $7f
	jr nc, @+$81                                     ; $5420: $30 $7f

	sub d                                            ; $5422: $92
	ld e, c                                          ; $5423: $59
	ld b, $2d                                        ; $5424: $06 $2d
	rra                                              ; $5426: $1f
	rst $38                                          ; $5427: $ff
	ld a, a                                          ; $5428: $7f
	bit 0, l                                         ; $5429: $cb $45
	ld [de], a                                       ; $542b: $12
	dec h                                            ; $542c: $25
	add h                                            ; $542d: $84
	db $10                                           ; $542e: $10
	rst $38                                          ; $542f: $ff
	ld a, a                                          ; $5430: $7f
	cpl                                              ; $5431: $2f
	ld a, e                                          ; $5432: $7b
	ld d, h                                          ; $5433: $54
	ld [hl-], a                                      ; $5434: $32
	xor e                                            ; $5435: $ab
	add hl, hl                                       ; $5436: $29
	cp e                                             ; $5437: $bb
	ld [hl], a                                       ; $5438: $77
	ld d, h                                          ; $5439: $54
	ld [hl-], a                                      ; $543a: $32
	bit 0, l                                         ; $543b: $cb $45
	add h                                            ; $543d: $84
	db $10                                           ; $543e: $10
	rst $38                                          ; $543f: $ff
	ld a, a                                          ; $5440: $7f
	ld d, h                                          ; $5441: $54
	ld [hl-], a                                      ; $5442: $32
	xor e                                            ; $5443: $ab
	add hl, hl                                       ; $5444: $29
	add h                                            ; $5445: $84
	db $10                                           ; $5446: $10
	rst $38                                          ; $5447: $ff
	ld a, a                                          ; $5448: $7f
	bit 0, l                                         ; $5449: $cb $45
	xor e                                            ; $544b: $ab
	add hl, hl                                       ; $544c: $29
	add h                                            ; $544d: $84
	db $10                                           ; $544e: $10
	rra                                              ; $544f: $1f
	sub a                                            ; $5450: $97
	ld d, $4b                                        ; $5451: $16 $4b
	ld d, [hl]                                       ; $5453: $56
	add hl, bc                                       ; $5454: $09
	ld d, $84                                        ; $5455: $16 $84
	db $10                                           ; $5457: $10
	pop de                                           ; $5458: $d1
	ld l, a                                          ; $5459: $6f
	ld c, e                                          ; $545a: $4b
	ld d, [hl]                                       ; $545b: $56
	ld d, e                                          ; $545c: $53
	add hl, hl                                       ; $545d: $29
	add h                                            ; $545e: $84
	db $10                                           ; $545f: $10
	ld a, [$d17f]                                    ; $5460: $fa $7f $d1
	ld l, a                                          ; $5463: $6f
	ld d, e                                          ; $5464: $53
	add hl, hl                                       ; $5465: $29
	add h                                            ; $5466: $84
	db $10                                           ; $5467: $10
	pop af                                           ; $5468: $f1
	ld a, a                                          ; $5469: $7f
	sub a                                            ; $546a: $97
	ld d, $09                                        ; $546b: $16 $09
	ld d, $84                                        ; $546d: $16 $84
	db $10                                           ; $546f: $10
	pop af                                           ; $5470: $f1
	ld a, a                                          ; $5471: $7f
	ei                                               ; $5472: $fb
	ld [hl], a                                       ; $5473: $77
	ld c, e                                          ; $5474: $4b
	ld d, [hl]                                       ; $5475: $56
	add h                                            ; $5476: $84
	db $10                                           ; $5477: $10
	rra                                              ; $5478: $1f
	sbc $77                                          ; $5479: $de $77
	reti                                             ; $547b: $d9


	ld a, $b5                                        ; $547c: $3e $b5
	dec d                                            ; $547e: $15
	ld h, l                                          ; $547f: $65
	inc c                                            ; $5480: $0c
	sbc $77                                          ; $5481: $de $77

jr_02d_5483:
	or l                                             ; $5483: $b5
	dec d                                            ; $5484: $15
	adc b                                            ; $5485: $88
	ld d, c                                          ; $5486: $51
	ld h, l                                          ; $5487: $65
	inc c                                            ; $5488: $0c

jr_02d_5489:
	sbc $77                                          ; $5489: $de $77
	ld d, b                                          ; $548b: $50
	ld a, e                                          ; $548c: $7b
	or l                                             ; $548d: $b5
	dec d                                            ; $548e: $15

jr_02d_548f:
	ld l, b                                          ; $548f: $68
	add hl, de                                       ; $5490: $19
	push de                                          ; $5491: $d5
	add hl, hl                                       ; $5492: $29
	ld d, b                                          ; $5493: $50
	ld a, e                                          ; $5494: $7b
	ld l, b                                          ; $5495: $68
	add hl, de                                       ; $5496: $19
	ld h, l                                          ; $5497: $65
	inc c                                            ; $5498: $0c

jr_02d_5499:
	sbc d                                            ; $5499: $9a
	ld h, $72                                        ; $549a: $26 $72
	ld e, [hl]                                       ; $549c: $5e
	adc b                                            ; $549d: $88
	ld d, c                                          ; $549e: $51
	and e                                            ; $549f: $a3
	jr z, @+$21                                      ; $54a0: $28 $1f

	sbc $6f                                          ; $54a2: $de $6f
	ld [hl], e                                       ; $54a4: $73
	ld c, a                                          ; $54a5: $4f
	adc c                                            ; $54a6: $89
	ld b, [hl]                                       ; $54a7: $46
	ld h, h                                          ; $54a8: $64
	dec a                                            ; $54a9: $3d
	sbc $6f                                          ; $54aa: $de $6f
	ld a, [hl+]                                      ; $54ac: $2a
	ld a, e                                          ; $54ad: $7b
	and d                                            ; $54ae: $a2
	inc h                                            ; $54af: $24
	ld h, h                                          ; $54b0: $64
	dec a                                            ; $54b1: $3d
	ld c, [hl]                                       ; $54b2: $4e
	ld e, a                                          ; $54b3: $5f
	ld b, b                                          ; $54b4: $40
	inc e                                            ; $54b5: $1c
	and d                                            ; $54b6: $a2
	inc h                                            ; $54b7: $24
	ld b, a                                          ; $54b8: $47
	ld b, c                                          ; $54b9: $41
	ld c, [hl]                                       ; $54ba: $4e
	ld e, a                                          ; $54bb: $5f
	halt                                             ; $54bc: $76
	ld l, $70                                        ; $54bd: $2e $70
	ld hl, $24a2                                     ; $54bf: $21 $a2 $24
	sbc $6f                                          ; $54c2: $de $6f
	adc c                                            ; $54c4: $89
	ld b, [hl]                                       ; $54c5: $46
	ld [hl], b                                       ; $54c6: $70
	ld hl, $24a2                                     ; $54c7: $21 $a2 $24
	rra                                              ; $54ca: $1f
	rst $38                                          ; $54cb: $ff
	ld a, a                                          ; $54cc: $7f
	ld sp, $7857                                     ; $54cd: $31 $57 $78
	db $10                                           ; $54d0: $10
	dec h                                            ; $54d1: $25
	dec [hl]                                         ; $54d2: $35
	or e                                             ; $54d3: $b3
	ld h, a                                          ; $54d4: $67
	db $ed                                           ; $54d5: $ed
	ld d, [hl]                                       ; $54d6: $56
	ld h, l                                          ; $54d7: $65
	ld c, c                                          ; $54d8: $49
	ld h, b                                          ; $54d9: $60
	inc h                                            ; $54da: $24
	db $ed                                           ; $54db: $ed
	ld d, [hl]                                       ; $54dc: $56
	ld [hl], e                                       ; $54dd: $73
	ld sp, $4965                                     ; $54de: $31 $65 $49
	ld h, b                                          ; $54e1: $60
	inc h                                            ; $54e2: $24
	rst $38                                          ; $54e3: $ff
	ld a, a                                          ; $54e4: $7f
	ld [hl], e                                       ; $54e5: $73
	ld sp, $4965                                     ; $54e6: $31 $65 $49
	ld h, b                                          ; $54e9: $60
	inc h                                            ; $54ea: $24
	rst $38                                          ; $54eb: $ff
	ld a, a                                          ; $54ec: $7f
	or e                                             ; $54ed: $b3
	ld h, a                                          ; $54ee: $67
	ld sp, $2557                                     ; $54ef: $31 $57 $25
	dec [hl]                                         ; $54f2: $35
	rra                                              ; $54f3: $1f
	rst SubAFromBC                                          ; $54f4: $e7
	ld e, l                                          ; $54f5: $5d
	inc hl                                           ; $54f6: $23
	ld d, l                                          ; $54f7: $55
	and c                                            ; $54f8: $a1
	inc a                                            ; $54f9: $3c
	and d                                            ; $54fa: $a2
	jr nc, @+$74                                     ; $54fb: $30 $72

	ld [hl], a                                       ; $54fd: $77
	db $ec                                           ; $54fe: $ec
	ld l, d                                          ; $54ff: $6a
	and l                                            ; $5500: $a5
	ld d, l                                          ; $5501: $55
	and d                                            ; $5502: $a2
	jr nc, jr_02d_5530                               ; $5503: $30 $2b

	ld [hl], $23                                     ; $5505: $36 $23
	ld d, l                                          ; $5507: $55
	ld [hl], d                                       ; $5508: $72
	ld [hl], a                                       ; $5509: $77
	add d                                            ; $550a: $82
	jr nz, jr_02d_557f                               ; $550b: $20 $72

	ld [hl], a                                       ; $550d: $77
	inc hl                                           ; $550e: $23
	ld d, l                                          ; $550f: $55
	and c                                            ; $5510: $a1
	inc a                                            ; $5511: $3c
	add d                                            ; $5512: $82
	jr nz, @-$17                                     ; $5513: $20 $e7

	ld e, l                                          ; $5515: $5d
	inc hl                                           ; $5516: $23
	ld d, l                                          ; $5517: $55
	dec hl                                           ; $5518: $2b
	ld [hl], $82                                     ; $5519: $36 $82
	jr nz, jr_02d_553c                               ; $551b: $20 $1f

	rst $38                                          ; $551d: $ff
	ld a, a                                          ; $551e: $7f
	adc e                                            ; $551f: $8b
	ld a, d                                          ; $5520: $7a
	push hl                                          ; $5521: $e5
	ld [hl], c                                       ; $5522: $71
	and $24                                          ; $5523: $e6 $24
	rst $38                                          ; $5525: $ff
	ld a, a                                          ; $5526: $7f
	ld a, $5b                                        ; $5527: $3e $5b
	inc [hl]                                         ; $5529: $34
	ld [hl-], a                                      ; $552a: $32
	and $24                                          ; $552b: $e6 $24
	rst $38                                          ; $552d: $ff
	ld a, a                                          ; $552e: $7f
	ld a, [hl]                                       ; $552f: $7e

jr_02d_5530:
	ld h, a                                          ; $5530: $67
	ld d, b                                          ; $5531: $50
	ld a, a                                          ; $5532: $7f
	ld l, d                                          ; $5533: $6a
	ld a, $ff                                        ; $5534: $3e $ff
	ld a, a                                          ; $5536: $7f
	add l                                            ; $5537: $85
	ld b, l                                          ; $5538: $45
	sub h                                            ; $5539: $94
	ld c, [hl]                                       ; $553a: $4e
	push hl                                          ; $553b: $e5

jr_02d_553c:
	ld h, l                                          ; $553c: $65
	rst $38                                          ; $553d: $ff
	ld a, a                                          ; $553e: $7f
	push hl                                          ; $553f: $e5
	ld h, l                                          ; $5540: $65
	sub e                                            ; $5541: $93
	inc b                                            ; $5542: $04
	ld d, d                                          ; $5543: $52
	ld b, d                                          ; $5544: $42
	rra                                              ; $5545: $1f
	rst $38                                          ; $5546: $ff
	ld a, a                                          ; $5547: $7f
	ldh a, [c]                                       ; $5548: $f2
	ld a, a                                          ; $5549: $7f
	jp z, $087e                                      ; $554a: $ca $7e $08

	halt                                             ; $554d: $76
	call c, $ea7f                                    ; $554e: $dc $7f $ea
	ld a, [hl]                                       ; $5551: $7e
	ld h, $62                                        ; $5552: $26 $62
	jp $df4d                                         ; $5554: $c3 $4d $df


	ld [hl], a                                       ; $5557: $77
	ld [$267e], a                                    ; $5558: $ea $7e $26
	ld h, d                                          ; $555b: $62
	jp $fe4d                                         ; $555c: $c3 $4d $fe


	ld a, a                                          ; $555f: $7f
	ld l, $63                                        ; $5560: $2e $63
	cp d                                             ; $5562: $ba
	nop                                              ; $5563: $00
	adc b                                            ; $5564: $88
	ld hl, $4ebc                                     ; $5565: $21 $bc $4e
	ld [$267e], a                                    ; $5568: $ea $7e $26
	ld h, d                                          ; $556b: $62
	and a                                            ; $556c: $a7
	ld [$931f], sp                                   ; $556d: $08 $1f $93
	ld e, d                                          ; $5570: $5a
	ld d, b                                          ; $5571: $50
	ld d, d                                          ; $5572: $52
	ld c, b                                          ; $5573: $48
	dec l                                            ; $5574: $2d
	add e                                            ; $5575: $83
	inc d                                            ; $5576: $14
	cp b                                             ; $5577: $b8
	ld b, d                                          ; $5578: $42
	ldh a, [c]                                       ; $5579: $f2
	dec l                                            ; $557a: $2d
	adc a                                            ; $557b: $8f
	dec h                                            ; $557c: $25
	add e                                            ; $557d: $83
	inc d                                            ; $557e: $14

jr_02d_557f:
	ld [hl], c                                       ; $557f: $71
	ld l, d                                          ; $5580: $6a
	db $ec                                           ; $5581: $ec
	ld b, l                                          ; $5582: $45
	ld c, b                                          ; $5583: $48
	dec l                                            ; $5584: $2d
	add e                                            ; $5585: $83
	inc d                                            ; $5586: $14
	dec l                                            ; $5587: $2d
	ld d, d                                          ; $5588: $52
	ld l, d                                          ; $5589: $6a
	ld sp, $20e6                                     ; $558a: $31 $e6 $20
	add e                                            ; $558d: $83
	inc d                                            ; $558e: $14
	xor e                                            ; $558f: $ab
	add hl, sp                                       ; $5590: $39
	ldh a, [c]                                       ; $5591: $f2
	dec l                                            ; $5592: $2d
	ld c, b                                          ; $5593: $48
	dec l                                            ; $5594: $2d
	add e                                            ; $5595: $83
	inc d                                            ; $5596: $14
	rra                                              ; $5597: $1f
	rst $38                                          ; $5598: $ff
	ld a, a                                          ; $5599: $7f
	or d                                             ; $559a: $b2
	ld d, d                                          ; $559b: $52
	xor d                                            ; $559c: $aa
	dec [hl]                                         ; $559d: $35
	jp $ff18                                         ; $559e: $c3 $18 $ff


	ld a, a                                          ; $55a1: $7f
	jr nc, jr_02d_561b                               ; $55a2: $30 $77

	adc c                                            ; $55a4: $89
	ld [hl], d                                       ; $55a5: $72
	daa                                              ; $55a6: $27
	dec l                                            ; $55a7: $2d
	cp $7f                                           ; $55a8: $fe $7f
	sbc c                                            ; $55aa: $99
	ld b, a                                          ; $55ab: $47
	sub c                                            ; $55ac: $91
	ld [hl], $e9                                     ; $55ad: $36 $e9
	inc e                                            ; $55af: $1c
	rst SubAFromDE                                          ; $55b0: $df
	ld a, e                                          ; $55b1: $7b
	adc c                                            ; $55b2: $89
	ld [hl], d                                       ; $55b3: $72
	ld a, [bc]                                       ; $55b4: $0a
	ld [hl+], a                                      ; $55b5: $22
	call nz, $df20                                   ; $55b6: $c4 $20 $df
	ld a, e                                          ; $55b9: $7b
	sub l                                            ; $55ba: $95
	ld d, e                                          ; $55bb: $53
	pop de                                           ; $55bc: $d1
	dec [hl]                                         ; $55bd: $35
	call nz, $1f20                                   ; $55be: $c4 $20 $1f
	rst $38                                          ; $55c1: $ff
	ld a, a                                          ; $55c2: $7f
	call z, $c55e                                    ; $55c3: $cc $5e $c5
	dec d                                            ; $55c6: $15
	rst JumpTable                                          ; $55c7: $c7
	inc b                                            ; $55c8: $04
	cp $7f                                           ; $55c9: $fe $7f
	call z, $205e                                    ; $55cb: $cc $5e $20
	ld e, d                                          ; $55ce: $5a
	ld [$ff0d], sp                                   ; $55cf: $08 $0d $ff
	ld a, e                                          ; $55d2: $7b
	dec sp                                           ; $55d3: $3b
	ld a, [hl-]                                      ; $55d4: $3a
	ld a, [de]                                       ; $55d5: $1a
	dec b                                            ; $55d6: $05
	jp nz, $fb00                                     ; $55d7: $c2 $00 $fb

	ld a, e                                          ; $55da: $7b
	sbc e                                            ; $55db: $9b
	inc b                                            ; $55dc: $04
	push bc                                          ; $55dd: $c5
	add hl, hl                                       ; $55de: $29
	ld b, l                                          ; $55df: $45
	inc d                                            ; $55e0: $14
	db $dd                                           ; $55e1: $dd
	ld [hl], e                                       ; $55e2: $73
	dec sp                                           ; $55e3: $3b
	ld a, [hl-]                                      ; $55e4: $3a
	jr nz, jr_02d_5625                               ; $55e5: $20 $3e

	ld [de], a                                       ; $55e7: $12
	add hl, bc                                       ; $55e8: $09
	rra                                              ; $55e9: $1f
	rst $38                                          ; $55ea: $ff
	ld [hl], a                                       ; $55eb: $77
	pop de                                           ; $55ec: $d1
	ld l, [hl]                                       ; $55ed: $6e
	jp hl                                            ; $55ee: $e9


	dec a                                            ; $55ef: $3d
	and d                                            ; $55f0: $a2
	ld [$77ff], sp                                   ; $55f1: $08 $ff $77
	cpl                                              ; $55f4: $2f
	ld [hl], a                                       ; $55f5: $77
	ld h, l                                          ; $55f6: $65
	ld de, $14c2                                     ; $55f7: $11 $c2 $14
	cp [hl]                                          ; $55fa: $be
	ld h, a                                          ; $55fb: $67
	ld h, l                                          ; $55fc: $65
	ld de, $216e                                     ; $55fd: $11 $6e $21
	and d                                            ; $5600: $a2
	ld [$7bfd], sp                                   ; $5601: $08 $fd $7b
	inc d                                            ; $5604: $14
	dec de                                           ; $5605: $1b
	ld h, l                                          ; $5606: $65
	ld de, $1081                                     ; $5607: $11 $81 $10
	jr nc, jr_02d_5683                               ; $560a: $30 $77

	dec hl                                           ; $560c: $2b
	ld d, [hl]                                       ; $560d: $56
	ld l, [hl]                                       ; $560e: $6e
	ld hl, $08a2                                     ; $560f: $21 $a2 $08
	rra                                              ; $5612: $1f
	rst $38                                          ; $5613: $ff
	ld a, a                                          ; $5614: $7f
	rst AddAOntoHL                                          ; $5615: $ef
	ld d, d                                          ; $5616: $52
	xor $2d                                          ; $5617: $ee $2d
	inc h                                            ; $5619: $24
	add hl, de                                       ; $561a: $19

jr_02d_561b:
	rst $38                                          ; $561b: $ff
	ld a, a                                          ; $561c: $7f
	or l                                             ; $561d: $b5
	ld h, $24                                        ; $561e: $26 $24
	add hl, de                                       ; $5620: $19
	and l                                            ; $5621: $a5
	inc c                                            ; $5622: $0c
	rst $38                                          ; $5623: $ff
	ld a, a                                          ; $5624: $7f

jr_02d_5625:
	dec [hl]                                         ; $5625: $35
	ld b, d                                          ; $5626: $42
	ld l, h                                          ; $5627: $6c
	ld b, c                                          ; $5628: $41
	inc h                                            ; $5629: $24
	add hl, de                                       ; $562a: $19
	rst $38                                          ; $562b: $ff
	ld a, a                                          ; $562c: $7f
	or c                                             ; $562d: $b1
	ld c, d                                          ; $562e: $4a
	ret z                                            ; $562f: $c8

	dec [hl]                                         ; $5630: $35
	and l                                            ; $5631: $a5
	inc c                                            ; $5632: $0c
	rst $38                                          ; $5633: $ff
	ld a, a                                          ; $5634: $7f
	rst AddAOntoHL                                          ; $5635: $ef
	ld d, d                                          ; $5636: $52
	inc h                                            ; $5637: $24
	add hl, de                                       ; $5638: $19
	and l                                            ; $5639: $a5
	inc c                                            ; $563a: $0c
	rra                                              ; $563b: $1f
	rst $38                                          ; $563c: $ff
	ld a, a                                          ; $563d: $7f
	sub e                                            ; $563e: $93
	ld a, a                                          ; $563f: $7f
	jr z, jr_02d_56a8                                ; $5640: $28 $66

	and l                                            ; $5642: $a5
	inc d                                            ; $5643: $14
	rst $38                                          ; $5644: $ff
	ld a, a                                          ; $5645: $7f
	xor a                                            ; $5646: $af
	ld l, d                                          ; $5647: $6a
	rst GetHLinHL                                          ; $5648: $cf
	add hl, sp                                       ; $5649: $39
	and l                                            ; $564a: $a5
	inc d                                            ; $564b: $14
	rst $38                                          ; $564c: $ff
	ld a, a                                          ; $564d: $7f
	scf                                              ; $564e: $37
	scf                                              ; $564f: $37
	push hl                                          ; $5650: $e5
	add hl, bc                                       ; $5651: $09
	and l                                            ; $5652: $a5
	inc d                                            ; $5653: $14
	rst $38                                          ; $5654: $ff
	ld a, a                                          ; $5655: $7f
	rst GetHLinHL                                          ; $5656: $cf
	add hl, sp                                       ; $5657: $39
	db $f4                                           ; $5658: $f4
	ld c, [hl]                                       ; $5659: $4e
	and l                                            ; $565a: $a5
	inc d                                            ; $565b: $14
	db $f4                                           ; $565c: $f4
	ld c, [hl]                                       ; $565d: $4e
	rst GetHLinHL                                          ; $565e: $cf
	add hl, sp                                       ; $565f: $39
	add hl, hl                                       ; $5660: $29
	dec h                                            ; $5661: $25
	and l                                            ; $5662: $a5
	inc d                                            ; $5663: $14
	rra                                              ; $5664: $1f
	inc sp                                           ; $5665: $33
	ld a, e                                          ; $5666: $7b
	add hl, hl                                       ; $5667: $29
	ld e, [hl]                                       ; $5668: $5e
	adc b                                            ; $5669: $88
	dec a                                            ; $566a: $3d
	ld b, a                                          ; $566b: $47
	ld sp, $5e29                                     ; $566c: $31 $29 $5e
	ld l, b                                          ; $566f: $68
	ld sp, $4524                                     ; $5670: $31 $24 $45
	add d                                            ; $5673: $82
	jr z, jr_02d_56a9                                ; $5674: $28 $33

	ld a, e                                          ; $5676: $7b
	add hl, hl                                       ; $5677: $29
	ld e, [hl]                                       ; $5678: $5e
	inc h                                            ; $5679: $24
	ld b, l                                          ; $567a: $45
	ld b, l                                          ; $567b: $45
	ld b, l                                          ; $567c: $45
	inc sp                                           ; $567d: $33
	ld a, e                                          ; $567e: $7b
	add hl, hl                                       ; $567f: $29
	ld e, [hl]                                       ; $5680: $5e
	inc h                                            ; $5681: $24
	ld b, l                                          ; $5682: $45

jr_02d_5683:
	db $ed                                           ; $5683: $ed
	ld c, c                                          ; $5684: $49
	inc sp                                           ; $5685: $33
	ld a, e                                          ; $5686: $7b
	adc b                                            ; $5687: $88
	dec a                                            ; $5688: $3d
	ld b, a                                          ; $5689: $47
	ld sp, $20e5                                     ; $568a: $31 $e5 $20
	rra                                              ; $568d: $1f
	call c, Call_02d_7a7b                            ; $568e: $dc $7b $7a
	cpl                                              ; $5691: $2f
	ld [hl-], a                                      ; $5692: $32
	ld l, a                                          ; $5693: $6f
	add a                                            ; $5694: $87
	ld h, [hl]                                       ; $5695: $66
	call c, $f07b                                    ; $5696: $dc $7b $f0
	ld h, [hl]                                       ; $5699: $66
	ld c, [hl]                                       ; $569a: $4e
	ld d, d                                          ; $569b: $52
	db $e3                                           ; $569c: $e3
	inc l                                            ; $569d: $2c
	call c, $f07b                                    ; $569e: $dc $7b $f0
	ld h, [hl]                                       ; $56a1: $66
	db $ed                                           ; $56a2: $ed
	add hl, de                                       ; $56a3: $19
	add h                                            ; $56a4: $84
	inc d                                            ; $56a5: $14
	ld [hl-], a                                      ; $56a6: $32
	ld l, a                                          ; $56a7: $6f

jr_02d_56a8:
	ld a, d                                          ; $56a8: $7a

jr_02d_56a9:
	cpl                                              ; $56a9: $2f
	pop af                                           ; $56aa: $f1
	dec l                                            ; $56ab: $2d
	and b                                            ; $56ac: $a0
	inc e                                            ; $56ad: $1c
	call c, Call_02d_7a7b                            ; $56ae: $dc $7b $7a
	cpl                                              ; $56b1: $2f
	ld [hl-], a                                      ; $56b2: $32
	ld l, a                                          ; $56b3: $6f
	db $e3                                           ; $56b4: $e3
	inc l                                            ; $56b5: $2c
	rra                                              ; $56b6: $1f
	ld [hl], a                                       ; $56b7: $77
	ld e, a                                          ; $56b8: $5f
	pop de                                           ; $56b9: $d1
	ld e, [hl]                                       ; $56ba: $5e
	add hl, de                                       ; $56bb: $19
	ld bc, $55c7                                     ; $56bc: $01 $c7 $55
	ld [hl], a                                       ; $56bf: $77
	ld e, a                                          ; $56c0: $5f
	pop de                                           ; $56c1: $d1
	ld e, [hl]                                       ; $56c2: $5e
	rst JumpTable                                          ; $56c3: $c7
	ld d, l                                          ; $56c4: $55
	jp nz, Jump_02d_771c                             ; $56c5: $c2 $1c $77

	ld e, a                                          ; $56c8: $5f
	xor e                                            ; $56c9: $ab
	ld h, $c5                                        ; $56ca: $26 $c5
	dec d                                            ; $56cc: $15
	ld [hl+], a                                      ; $56cd: $22
	dec e                                            ; $56ce: $1d
	sub c                                            ; $56cf: $91
	ld a, $c8                                        ; $56d0: $3e $c8
	dec [hl]                                         ; $56d2: $35
	ld bc, $4019                                     ; $56d3: $01 $19 $40
	inc c                                            ; $56d6: $0c
	ld [hl], a                                       ; $56d7: $77
	ld e, a                                          ; $56d8: $5f
	ld de, $ab43                                     ; $56d9: $11 $43 $ab
	ld h, $c5                                        ; $56dc: $26 $c5
	dec d                                            ; $56de: $15
	rra                                              ; $56df: $1f
	db $dd                                           ; $56e0: $dd
	ld a, e                                          ; $56e1: $7b
	pop de                                           ; $56e2: $d1
	ld h, [hl]                                       ; $56e3: $66
	rst AddAOntoHL                                          ; $56e4: $ef
	dec a                                            ; $56e5: $3d
	daa                                              ; $56e6: $27

jr_02d_56e7:
	ld sp, $7bdd                                     ; $56e7: $31 $dd $7b
	ld a, c                                          ; $56ea: $79
	ld [hl], $2e                                     ; $56eb: $36 $2e
	ld b, c                                          ; $56ed: $41
	ld b, h                                          ; $56ee: $44
	ld [$7bdd], sp                                   ; $56ef: $08 $dd $7b
	ld a, c                                          ; $56f2: $79
	ld [hl], $0e                                     ; $56f3: $36 $0e
	dec d                                            ; $56f5: $15
	ld b, h                                          ; $56f6: $44
	ld [$7bdd], sp                                   ; $56f7: $08 $dd $7b
	ld a, c                                          ; $56fa: $79
	ld [hl], $ef                                     ; $56fb: $36 $ef
	dec a                                            ; $56fd: $3d
	ld b, h                                          ; $56fe: $44
	ld [$66d1], sp                                   ; $56ff: $08 $d1 $66
	rst AddAOntoHL                                          ; $5702: $ef
	dec a                                            ; $5703: $3d
	daa                                              ; $5704: $27
	ld sp, $0844                                     ; $5705: $31 $44 $08
	rra                                              ; $5708: $1f
	ld [hl], h                                       ; $5709: $74
	ld b, [hl]                                       ; $570a: $46
	dec c                                            ; $570b: $0d
	add hl, de                                       ; $570c: $19
	xor b                                            ; $570d: $a8
	inc d                                            ; $570e: $14
	ld h, e                                          ; $570f: $63
	inc c                                            ; $5710: $0c
	jr jr_02d_577a                                   ; $5711: $18 $67

	ld [hl], h                                       ; $5713: $74
	ld b, [hl]                                       ; $5714: $46
	dec c                                            ; $5715: $0d
	add hl, de                                       ; $5716: $19
	xor b                                            ; $5717: $a8
	inc d                                            ; $5718: $14
	ld [hl], h                                       ; $5719: $74
	ld b, [hl]                                       ; $571a: $46
	ld b, a                                          ; $571b: $47
	ld sp, $20c4                                     ; $571c: $31 $c4 $20
	ld h, e                                          ; $571f: $63
	inc c                                            ; $5720: $0c
	sub b                                            ; $5721: $90
	add hl, hl                                       ; $5722: $29
	dec c                                            ; $5723: $0d
	add hl, de                                       ; $5724: $19
	xor b                                            ; $5725: $a8
	inc d                                            ; $5726: $14
	call nz, $0d20                                   ; $5727: $c4 $20 $0d
	add hl, de                                       ; $572a: $19
	ld b, a                                          ; $572b: $47
	ld sp, $14a8                                     ; $572c: $31 $a8 $14
	ld h, e                                          ; $572f: $63
	inc c                                            ; $5730: $0c
	rra                                              ; $5731: $1f
	ei                                               ; $5732: $fb
	ld h, e                                          ; $5733: $63
	rlca                                             ; $5734: $07
	ld b, d                                          ; $5735: $42
	add a                                            ; $5736: $87
	dec [hl]                                         ; $5737: $35
	ld hl, $fb08                                     ; $5738: $21 $08 $fb
	ld h, e                                          ; $573b: $63
	adc $56                                          ; $573c: $ce $56
	rlca                                             ; $573e: $07
	ld b, d                                          ; $573f: $42
	add d                                            ; $5740: $82
	inc d                                            ; $5741: $14
	ei                                               ; $5742: $fb
	ld h, e                                          ; $5743: $63
	bit 0, c                                         ; $5744: $cb $41
	db $e4                                           ; $5746: $e4
	inc h                                            ; $5747: $24
	add d                                            ; $5748: $82
	inc d                                            ; $5749: $14

jr_02d_574a:
	rlca                                             ; $574a: $07
	ld b, d                                          ; $574b: $42
	bit 0, c                                         ; $574c: $cb $41
	db $e4                                           ; $574e: $e4
	inc h                                            ; $574f: $24
	ld hl, $1308                                     ; $5750: $21 $08 $13
	ld e, e                                          ; $5753: $5b
	bit 0, c                                         ; $5754: $cb $41
	add a                                            ; $5756: $87
	dec [hl]                                         ; $5757: $35
	add d                                            ; $5758: $82
	inc d                                            ; $5759: $14
	rra                                              ; $575a: $1f
	rst $38                                          ; $575b: $ff
	ld a, a                                          ; $575c: $7f
	ld a, [de]                                       ; $575d: $1a
	ld [hl-], a                                      ; $575e: $32
	pop af                                           ; $575f: $f1
	jr jr_02d_56e7                                   ; $5760: $18 $85

	inc d                                            ; $5762: $14
	rra                                              ; $5763: $1f
	ld d, e                                          ; $5764: $53
	ld a, [de]                                       ; $5765: $1a
	ld [hl-], a                                      ; $5766: $32
	push de                                          ; $5767: $d5
	ld e, [hl]                                       ; $5768: $5e
	add l                                            ; $5769: $85
	inc d                                            ; $576a: $14
	rra                                              ; $576b: $1f
	ld d, e                                          ; $576c: $53
	push de                                          ; $576d: $d5
	ld e, [hl]                                       ; $576e: $5e
	ld [de], a                                       ; $576f: $12
	ld [hl], $85                                     ; $5770: $36 $85
	inc d                                            ; $5772: $14
	rst $38                                          ; $5773: $ff
	ld a, a                                          ; $5774: $7f
	push de                                          ; $5775: $d5
	ld e, [hl]                                       ; $5776: $5e
	ld [de], a                                       ; $5777: $12
	ld [hl], $85                                     ; $5778: $36 $85

jr_02d_577a:
	inc d                                            ; $577a: $14
	rst $38                                          ; $577b: $ff
	ld a, a                                          ; $577c: $7f
	push de                                          ; $577d: $d5
	ld e, [hl]                                       ; $577e: $5e
	ld [de], a                                       ; $577f: $12
	ld [hl], $e5                                     ; $5780: $36 $e5
	jr z, jr_02d_57a3                                ; $5782: $28 $1f

	db $fc                                           ; $5784: $fc
	ld a, a                                          ; $5785: $7f
	or b                                             ; $5786: $b0
	ld l, [hl]                                       ; $5787: $6e
	dec bc                                           ; $5788: $0b
	ld a, $63                                        ; $5789: $3e $63
	inc c                                            ; $578b: $0c
	ld [hl], $36                                     ; $578c: $36 $36
	dec bc                                           ; $578e: $0b
	ld a, $51                                        ; $578f: $3e $51
	add hl, hl                                       ; $5791: $29

jr_02d_5792:
	ld h, e                                          ; $5792: $63
	inc c                                            ; $5793: $0c
	db $ec                                           ; $5794: $ec
	ld e, c                                          ; $5795: $59
	ld d, c                                          ; $5796: $51
	add hl, hl                                       ; $5797: $29
	inc h                                            ; $5798: $24
	ld b, l                                          ; $5799: $45
	ld h, e                                          ; $579a: $63
	inc c                                            ; $579b: $0c
	db $fc                                           ; $579c: $fc
	ld a, a                                          ; $579d: $7f
	or b                                             ; $579e: $b0
	ld l, [hl]                                       ; $579f: $6e
	ld [hl], $36                                     ; $57a0: $36 $36
	ld h, e                                          ; $57a2: $63

jr_02d_57a3:
	inc c                                            ; $57a3: $0c
	db $fc                                           ; $57a4: $fc
	ld a, a                                          ; $57a5: $7f
	or b                                             ; $57a6: $b0
	ld l, [hl]                                       ; $57a7: $6e
	ld d, c                                          ; $57a8: $51
	add hl, hl                                       ; $57a9: $29
	ld h, e                                          ; $57aa: $63
	inc c                                            ; $57ab: $0c
	rra                                              ; $57ac: $1f
	ld a, [hl]                                       ; $57ad: $7e
	ld d, a                                          ; $57ae: $57
	db $d3                                           ; $57af: $d3
	dec h                                            ; $57b0: $25
	inc c                                            ; $57b1: $0c
	add hl, de                                       ; $57b2: $19
	ld b, e                                          ; $57b3: $43
	inc c                                            ; $57b4: $0c
	rst $38                                          ; $57b5: $ff
	ld a, a                                          ; $57b6: $7f
	ld a, [hl]                                       ; $57b7: $7e
	ld d, a                                          ; $57b8: $57
	xor a                                            ; $57b9: $af
	ld sp, $1083                                     ; $57ba: $31 $83 $10
	jr nc, jr_02d_57e5                               ; $57bd: $30 $26

	dec l                                            ; $57bf: $2d
	dec d                                            ; $57c0: $15
	pop hl                                           ; $57c1: $e1

jr_02d_57c2:
	jr nc, jr_02d_574a                               ; $57c2: $30 $86

	ld [$6bff], sp                                   ; $57c4: $08 $ff $6b
	di                                               ; $57c7: $f3
	add hl, hl                                       ; $57c8: $29
	ld l, $15                                        ; $57c9: $2e $15
	add h                                            ; $57cb: $84
	jr jr_02d_5792                                   ; $57cc: $18 $c4

	jr jr_02d_57dc                                   ; $57ce: $18 $0c

	add hl, de                                       ; $57d0: $19
	ld b, d                                          ; $57d1: $42
	inc c                                            ; $57d2: $0c
	ld hl, $1f04                                     ; $57d3: $21 $04 $1f
	db $db                                           ; $57d6: $db
	ld a, a                                          ; $57d7: $7f
	db $d3                                           ; $57d8: $d3
	ld h, l                                          ; $57d9: $65
	ld c, a                                          ; $57da: $4f
	ld e, c                                          ; $57db: $59

jr_02d_57dc:
	inc hl                                           ; $57dc: $23
	inc c                                            ; $57dd: $0c
	db $db                                           ; $57de: $db
	ld a, a                                          ; $57df: $7f
	rst GetHLinHL                                          ; $57e0: $cf
	ld [hl], d                                       ; $57e1: $72
	xor b                                            ; $57e2: $a8
	ld e, c                                          ; $57e3: $59
	xor [hl]                                         ; $57e4: $ae

jr_02d_57e5:
	jr nz, jr_02d_57c2                               ; $57e5: $20 $db

	ld a, a                                          ; $57e7: $7f
	rst GetHLinHL                                          ; $57e8: $cf
	ld [hl], d                                       ; $57e9: $72
	db $d3                                           ; $57ea: $d3
	ld h, l                                          ; $57eb: $65
	inc hl                                           ; $57ec: $23
	inc c                                            ; $57ed: $0c
	db $db                                           ; $57ee: $db
	ld a, a                                          ; $57ef: $7f
	rst GetHLinHL                                          ; $57f0: $cf
	ld [hl], d                                       ; $57f1: $72
	db $f4                                           ; $57f2: $f4
	ld c, c                                          ; $57f3: $49
	inc hl                                           ; $57f4: $23
	inc c                                            ; $57f5: $0c
	db $db                                           ; $57f6: $db
	ld a, a                                          ; $57f7: $7f
	xor [hl]                                         ; $57f8: $ae
	jr nz, jr_02d_5800                               ; $57f9: $20 $05

	dec e                                            ; $57fb: $1d
	nop                                              ; $57fc: $00
	nop                                              ; $57fd: $00
	rra                                              ; $57fe: $1f
	ld e, [hl]                                       ; $57ff: $5e

jr_02d_5800:
	ld h, e                                          ; $5800: $63
	inc sp                                           ; $5801: $33
	dec h                                            ; $5802: $25
	adc a                                            ; $5803: $8f
	inc d                                            ; $5804: $14
	and [hl]                                         ; $5805: $a6
	ld [$2533], sp                                   ; $5806: $08 $33 $25
	adc a                                            ; $5809: $8f
	inc d                                            ; $580a: $14
	add hl, hl                                       ; $580b: $29
	dec h                                            ; $580c: $25
	ld hl, $ff00                                     ; $580d: $21 $00 $ff
	ld a, a                                          ; $5810: $7f
	cp c                                             ; $5811: $b9
	ld a, $29                                        ; $5812: $3e $29
	dec h                                            ; $5814: $25
	ld b, e                                          ; $5815: $43
	nop                                              ; $5816: $00
	cp a                                             ; $5817: $bf
	ld l, a                                          ; $5818: $6f
	rst SubAFromDE                                          ; $5819: $df
	ld d, a                                          ; $581a: $57
	sub h                                            ; $581b: $94
	dec [hl]                                         ; $581c: $35
	and [hl]                                         ; $581d: $a6
	jr @+$01                                         ; $581e: $18 $ff

	ld e, e                                          ; $5820: $5b
	push af                                          ; $5821: $f5
	ld e, [hl]                                       ; $5822: $5e
	sub h                                            ; $5823: $94
	dec [hl]                                         ; $5824: $35
	pop de                                           ; $5825: $d1
	ld [$ff1f], sp                                   ; $5826: $08 $1f $ff
	ld a, a                                          ; $5829: $7f
	sbc b                                            ; $582a: $98
	ld [hl-], a                                      ; $582b: $32
	jp hl                                            ; $582c: $e9


	inc c                                            ; $582d: $0c
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	ld [hl], b                                       ; $5830: $70
	ld de, $0ce9                                     ; $5831: $11 $e9 $0c
	ld l, b                                          ; $5834: $68
	ld [rRAMG], sp                                   ; $5835: $08 $00 $00
	or c                                             ; $5838: $b1
	ld hl, $110d                                     ; $5839: $21 $0d $11
	adc c                                            ; $583c: $89
	ld [rRAMG], sp                                   ; $583d: $08 $00 $00
	jp c, $b13e                                      ; $5840: $da $3e $b1

	ld hl, $24e4                                     ; $5843: $21 $e4 $24
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	or c                                             ; $5848: $b1
	ld hl, $110d                                     ; $5849: $21 $0d $11
	db $e4                                           ; $584c: $e4
	inc h                                            ; $584d: $24
	nop                                              ; $584e: $00
	nop                                              ; $584f: $00
	rra                                              ; $5850: $1f
	db $ed                                           ; $5851: $ed
	ld [de], a                                       ; $5852: $12
	ld h, $0a                                        ; $5853: $26 $0a
	and e                                            ; $5855: $a3
	dec c                                            ; $5856: $0d
	ldh [rAUD3LEVEL], a                              ; $5857: $e0 $1c
	cp h                                             ; $5859: $bc
	ld a, a                                          ; $585a: $7f
	db $ed                                           ; $585b: $ed
	ld [de], a                                       ; $585c: $12
	push hl                                          ; $585d: $e5
	dec a                                            ; $585e: $3d
	jp nz, $bc28                                     ; $585f: $c2 $28 $bc

	ld a, a                                          ; $5862: $7f
	ret z                                            ; $5863: $c8

	halt                                             ; $5864: $76
	rst JumpTable                                          ; $5865: $c7
	ld e, d                                          ; $5866: $5a
	jp nz, $ed28                                     ; $5867: $c2 $28 $ed

	ld [de], a                                       ; $586a: $12
	rst JumpTable                                          ; $586b: $c7
	ld e, d                                          ; $586c: $5a
	ld h, $0a                                        ; $586d: $26 $0a
	ldh [rAUD3LEVEL], a                              ; $586f: $e0 $1c
	cp h                                             ; $5871: $bc
	ld a, a                                          ; $5872: $7f
	scf                                              ; $5873: $37
	dec h                                            ; $5874: $25
	ld h, $0a                                        ; $5875: $26 $0a
	jp nz, $1f28                                     ; $5877: $c2 $28 $1f

	ld d, b                                          ; $587a: $50
	ld l, e                                          ; $587b: $6b
	ld c, h                                          ; $587c: $4c
	ld a, $c8                                        ; $587d: $3e $c8
	add hl, sp                                       ; $587f: $39
	ldh [c], a                                       ; $5880: $e2
	inc d                                            ; $5881: $14
	ld d, b                                          ; $5882: $50
	ld l, e                                          ; $5883: $6b
	ld [hl], $27                                     ; $5884: $36 $27
	ret z                                            ; $5886: $c8

	dec c                                            ; $5887: $0d
	ldh [c], a                                       ; $5888: $e2
	inc d                                            ; $5889: $14
	ld d, $27                                        ; $588a: $16 $27
	dec c                                            ; $588c: $0d
	ld c, [hl]                                       ; $588d: $4e
	ret z                                            ; $588e: $c8

	dec c                                            ; $588f: $0d
	ldh [c], a                                       ; $5890: $e2
	inc d                                            ; $5891: $14
	ld d, b                                          ; $5892: $50
	ld l, e                                          ; $5893: $6b
	adc b                                            ; $5894: $88
	ld l, d                                          ; $5895: $6a
	push bc                                          ; $5896: $c5
	ld e, l                                          ; $5897: $5d
	ldh [c], a                                       ; $5898: $e2
	inc d                                            ; $5899: $14
	ld d, $27                                        ; $589a: $16 $27
	inc c                                            ; $589c: $0c
	ld c, [hl]                                       ; $589d: $4e
	push bc                                          ; $589e: $c5
	ld e, l                                          ; $589f: $5d
	ldh [c], a                                       ; $58a0: $e2
	inc d                                            ; $58a1: $14
	rra                                              ; $58a2: $1f
	rst $38                                          ; $58a3: $ff
	ld a, a                                          ; $58a4: $7f
	jp nc, $d472                                     ; $58a5: $d2 $72 $d4

	add hl, hl                                       ; $58a8: $29
	and [hl]                                         ; $58a9: $a6
	dec d                                            ; $58aa: $15
	rst $38                                          ; $58ab: $ff
	ld a, a                                          ; $58ac: $7f
	ld [hl-], a                                      ; $58ad: $32
	ld a, e                                          ; $58ae: $7b
	add [hl]                                         ; $58af: $86
	ld [hl], d                                       ; $58b0: $72
	ret                                              ; $58b1: $c9


	ld c, l                                          ; $58b2: $4d
	rst $38                                          ; $58b3: $ff
	ld a, a                                          ; $58b4: $7f
	jp nc, $e472                                     ; $58b5: $d2 $72 $e4

	jr c, jr_02d_58fa                                ; $58b8: $38 $40

	inc e                                            ; $58ba: $1c
	jp nc, $d472                                     ; $58bb: $d2 $72 $d4

	add hl, hl                                       ; $58be: $29
	and [hl]                                         ; $58bf: $a6
	dec d                                            ; $58c0: $15
	ld b, b                                          ; $58c1: $40
	inc e                                            ; $58c2: $1c
	jp nc, $d472                                     ; $58c3: $d2 $72 $d4

	add hl, hl                                       ; $58c6: $29
	ret                                              ; $58c7: $c9


	ld c, l                                          ; $58c8: $4d
	ld b, b                                          ; $58c9: $40
	inc e                                            ; $58ca: $1c
	rra                                              ; $58cb: $1f
	sbc a                                            ; $58cc: $9f
	ld b, e                                          ; $58cd: $43
	reti                                             ; $58ce: $d9


	ld l, $2f                                        ; $58cf: $2e $2f
	ld d, $09                                        ; $58d1: $16 $09
	dec d                                            ; $58d3: $15
	rst $38                                          ; $58d4: $ff
	ld a, a                                          ; $58d5: $7f
	ld a, a                                          ; $58d6: $7f
	ld b, e                                          ; $58d7: $43
	sbc b                                            ; $58d8: $98
	ld [hl], $6e                                     ; $58d9: $36 $6e
	ld hl, $7fff                                     ; $58db: $21 $ff $7f
	rst FarCall                                          ; $58de: $f7
	ld l, $2f                                        ; $58df: $2e $2f
	ld d, $09                                        ; $58e1: $16 $09
	dec d                                            ; $58e3: $15
	rst $38                                          ; $58e4: $ff
	ld a, a                                          ; $58e5: $7f
	reti                                             ; $58e6: $d9


	ld l, $2f                                        ; $58e7: $2e $2f
	ld d, $09                                        ; $58e9: $16 $09
	dec d                                            ; $58eb: $15
	rst $38                                          ; $58ec: $ff
	ld a, a                                          ; $58ed: $7f
	ld e, [hl]                                       ; $58ee: $5e
	ld l, e                                          ; $58ef: $6b
	sbc d                                            ; $58f0: $9a
	ld b, [hl]                                       ; $58f1: $46
	jp nc, $1f29                                     ; $58f2: $d2 $29 $1f

	sbc a                                            ; $58f5: $9f
	ld d, e                                          ; $58f6: $53
	ld a, [de]                                       ; $58f7: $1a
	ld b, $52                                        ; $58f8: $06 $52

jr_02d_58fa:
	ld bc, $0086                                     ; $58fa: $01 $86 $00
	sbc b                                            ; $58fd: $98
	ld h, $b1                                        ; $58fe: $26 $b1
	add hl, de                                       ; $5900: $19
	ret                                              ; $5901: $c9


	ld [$0044], sp                                   ; $5902: $08 $44 $00
	rst $38                                          ; $5905: $ff
	ld a, a                                          ; $5906: $7f
	bit 7, [hl]                                      ; $5907: $cb $7e
	call nz, $0361                                   ; $5909: $c4 $61 $03
	ld b, l                                          ; $590c: $45
	sbc a                                            ; $590d: $9f
	ld c, e                                          ; $590e: $4b
	sub $52                                          ; $590f: $d6 $52
	ld c, [hl]                                       ; $5911: $4e
	dec c                                            ; $5912: $0d
	add l                                            ; $5913: $85
	inc b                                            ; $5914: $04
	rst $38                                          ; $5915: $ff
	ld a, a                                          ; $5916: $7f
	ld d, e                                          ; $5917: $53
	dec bc                                           ; $5918: $0b
	dec hl                                           ; $5919: $2b
	ld c, $04                                        ; $591a: $0e $04
	ld de, $ff18                                     ; $591c: $11 $18 $ff
	ld a, a                                          ; $591f: $7f
	ldh [rHDMA3], a                                  ; $5920: $e0 $53
	rra                                              ; $5922: $1f
	inc a                                            ; $5923: $3c
	inc bc                                           ; $5924: $03
	ld bc, $7fff                                     ; $5925: $01 $ff $7f
	ld e, a                                          ; $5928: $5f
	cpl                                              ; $5929: $2f
	sbc l                                            ; $592a: $9d
	ld [de], a                                       ; $592b: $12
	and d                                            ; $592c: $a2
	inc d                                            ; $592d: $14
	rra                                              ; $592e: $1f
	rst $38                                          ; $592f: $ff
	ld a, a                                          ; $5930: $7f
	or b                                             ; $5931: $b0
	ld d, d                                          ; $5932: $52
	db $f4                                           ; $5933: $f4
	add hl, hl                                       ; $5934: $29
	and d                                            ; $5935: $a2
	inc d                                            ; $5936: $14
	rra                                              ; $5937: $1f
	ld a, [hl-]                                      ; $5938: $3a
	dec h                                            ; $5939: $25
	ld a, a                                          ; $593a: $7f
	add b                                            ; $593b: $80
	ld [hl], c                                       ; $593c: $71
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	rra                                              ; $593f: $1f
	ld a, [hl-]                                      ; $5940: $3a
	dec h                                            ; $5941: $25
	ld a, a                                          ; $5942: $7f
	rst $38                                          ; $5943: $ff
	ld a, a                                          ; $5944: $7f
	nop                                              ; $5945: $00
	nop                                              ; $5946: $00
	rst $38                                          ; $5947: $ff
	ld a, a                                          ; $5948: $7f
	add b                                            ; $5949: $80
	ld [hl], c                                       ; $594a: $71
	dec d                                            ; $594b: $15
	inc c                                            ; $594c: $0c
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	rst $38                                          ; $594f: $ff
	ld a, a                                          ; $5950: $7f
	rst $38                                          ; $5951: $ff
	ld sp, $101f                                     ; $5952: $31 $1f $10
	nop                                              ; $5955: $00
	nop                                              ; $5956: $00
	rra                                              ; $5957: $1f
	sbc d                                            ; $5958: $9a
	ld [hl-], a                                      ; $5959: $32
	pop de                                           ; $595a: $d1
	add hl, bc                                       ; $595b: $09
	ld l, e                                          ; $595c: $6b
	inc b                                            ; $595d: $04
	nop                                              ; $595e: $00
	nop                                              ; $595f: $00
	sbc a                                            ; $5960: $9f
	ld e, e                                          ; $5961: $5b
	cp [hl]                                          ; $5962: $be
	ld a, [de]                                       ; $5963: $1a
	ld l, e                                          ; $5964: $6b
	inc b                                            ; $5965: $04
	nop                                              ; $5966: $00
	nop                                              ; $5967: $00
	cp [hl]                                          ; $5968: $be
	ld a, [de]                                       ; $5969: $1a
	ld a, [de]                                       ; $596a: $1a
	ld c, $d1                                        ; $596b: $0e $d1
	add hl, bc                                       ; $596d: $09
	ld l, e                                          ; $596e: $6b
	inc b                                            ; $596f: $04
	sbc a                                            ; $5970: $9f
	cpl                                              ; $5971: $2f
	cp [hl]                                          ; $5972: $be
	ld a, [de]                                       ; $5973: $1a
	ld a, [de]                                       ; $5974: $1a
	ld c, $6b                                        ; $5975: $0e $6b
	inc b                                            ; $5977: $04
	sbc a                                            ; $5978: $9f
	ld e, e                                          ; $5979: $5b
	sbc a                                            ; $597a: $9f
	cpl                                              ; $597b: $2f
	cp [hl]                                          ; $597c: $be
	ld a, [de]                                       ; $597d: $1a
	ld l, e                                          ; $597e: $6b
	inc b                                            ; $597f: $04
	rra                                              ; $5980: $1f
	rst $38                                          ; $5981: $ff
	ld l, a                                          ; $5982: $6f
	ld a, a                                          ; $5983: $7f
	ld b, e                                          ; $5984: $43
	ei                                               ; $5985: $fb
	ld b, [hl]                                       ; $5986: $46
	cpl                                              ; $5987: $2f
	ld d, [hl]                                       ; $5988: $56
	scf                                              ; $5989: $37
	ld l, a                                          ; $598a: $6f
	ld c, h                                          ; $598b: $4c
	ld h, [hl]                                       ; $598c: $66
	ld a, [bc]                                       ; $598d: $0a
	ld e, d                                          ; $598e: $5a
	db $e4                                           ; $598f: $e4
	inc l                                            ; $5990: $2c
	ld c, h                                          ; $5991: $4c
	ld h, [hl]                                       ; $5992: $66
	ld a, [bc]                                       ; $5993: $0a
	ld e, d                                          ; $5994: $5a
	and [hl]                                         ; $5995: $a6
	ld c, c                                          ; $5996: $49
	ld b, [hl]                                       ; $5997: $46
	ld b, c                                          ; $5998: $41
	scf                                              ; $5999: $37
	ld l, a                                          ; $599a: $6f
	ld a, a                                          ; $599b: $7f
	ld b, e                                          ; $599c: $43
	add sp, $55                                      ; $599d: $e8 $55
	inc h                                            ; $599f: $24
	add hl, sp                                       ; $59a0: $39
	rst $38                                          ; $59a1: $ff
	ld l, a                                          ; $59a2: $6f
	scf                                              ; $59a3: $37
	ld l, a                                          ; $59a4: $6f
	ld l, a                                          ; $59a5: $6f
	ld l, d                                          ; $59a6: $6a
	inc h                                            ; $59a7: $24
	add hl, sp                                       ; $59a8: $39
	rra                                              ; $59a9: $1f
	sbc [hl]                                         ; $59aa: $9e
	ld h, a                                          ; $59ab: $67
	cp d                                             ; $59ac: $ba
	ld d, $90                                        ; $59ad: $16 $90
	add hl, de                                       ; $59af: $19
	and a                                            ; $59b0: $a7
	inc b                                            ; $59b1: $04
	cp d                                             ; $59b2: $ba
	ld d, $fd                                        ; $59b3: $16 $fd
	ld b, [hl]                                       ; $59b5: $46
	adc h                                            ; $59b6: $8c
	add hl, sp                                       ; $59b7: $39
	and c                                            ; $59b8: $a1
	inc d                                            ; $59b9: $14
	sbc [hl]                                         ; $59ba: $9e
	ld h, a                                          ; $59bb: $67
	ld hl, sp+$5e                                    ; $59bc: $f8 $5e
	cp d                                             ; $59be: $ba
	ld d, $a7                                        ; $59bf: $16 $a7
	inc b                                            ; $59c1: $04

jr_02d_59c2:
	sbc [hl]                                         ; $59c2: $9e
	ld h, a                                          ; $59c3: $67
	cp d                                             ; $59c4: $ba
	ld d, $f5                                        ; $59c5: $16 $f5
	dec a                                            ; $59c7: $3d
	and a                                            ; $59c8: $a7
	inc b                                            ; $59c9: $04
	sbc [hl]                                         ; $59ca: $9e
	ld h, a                                          ; $59cb: $67
	db $fd                                           ; $59cc: $fd
	ld b, [hl]                                       ; $59cd: $46
	adc h                                            ; $59ce: $8c
	add hl, sp                                       ; $59cf: $39
	ld hl, sp+$5e                                    ; $59d0: $f8 $5e
	rra                                              ; $59d2: $1f
	rst $38                                          ; $59d3: $ff
	ld a, a                                          ; $59d4: $7f
	xor a                                            ; $59d5: $af
	ld h, d                                          ; $59d6: $62
	push af                                          ; $59d7: $f5
	db $10                                           ; $59d8: $10
	ld b, a                                          ; $59d9: $47
	inc b                                            ; $59da: $04
	rst $38                                          ; $59db: $ff
	ld a, a                                          ; $59dc: $7f
	xor a                                            ; $59dd: $af
	ld h, d                                          ; $59de: $62
	ld b, a                                          ; $59df: $47
	dec a                                            ; $59e0: $3d
	ld l, [hl]                                       ; $59e1: $6e
	ld [$7fff], sp                                   ; $59e2: $08 $ff $7f
	cp h                                             ; $59e5: $bc
	dec c                                            ; $59e6: $0d
	push af                                          ; $59e7: $f5
	db $10                                           ; $59e8: $10
	ld l, [hl]                                       ; $59e9: $6e
	ld [$7fff], sp                                   ; $59ea: $08 $ff $7f
	cp h                                             ; $59ed: $bc
	dec c                                            ; $59ee: $0d
	dec sp                                           ; $59ef: $3b
	ld bc, $0447                                     ; $59f0: $01 $47 $04
	rst $38                                          ; $59f3: $ff
	ld a, a                                          ; $59f4: $7f
	ei                                               ; $59f5: $fb
	ld hl, $013b                                     ; $59f6: $21 $3b $01
	ld l, [hl]                                       ; $59f9: $6e
	ld [$bd1f], sp                                   ; $59fa: $08 $1f $bd
	ld l, e                                          ; $59fd: $6b
	or h                                             ; $59fe: $b4
	ld c, [hl]                                       ; $59ff: $4e
	daa                                              ; $5a00: $27
	add hl, sp                                       ; $5a01: $39
	and l                                            ; $5a02: $a5
	jr nz, jr_02d_59c2                               ; $5a03: $20 $bd

	ld l, e                                          ; $5a05: $6b
	sbc e                                            ; $5a06: $9b
	ld a, $f7                                        ; $5a07: $3e $f7
	db $10                                           ; $5a09: $10
	or h                                             ; $5a0a: $b4
	ld c, [hl]                                       ; $5a0b: $4e
	cp l                                             ; $5a0c: $bd
	ld l, e                                          ; $5a0d: $6b
	rst FarCall                                          ; $5a0e: $f7
	db $10                                           ; $5a0f: $10
	daa                                              ; $5a10: $27
	add hl, sp                                       ; $5a11: $39
	ld b, e                                          ; $5a12: $43
	add hl, de                                       ; $5a13: $19
	cp l                                             ; $5a14: $bd
	ld l, e                                          ; $5a15: $6b
	or h                                             ; $5a16: $b4
	ld c, [hl]                                       ; $5a17: $4e
	rst FarCall                                          ; $5a18: $f7
	db $10                                           ; $5a19: $10
	and l                                            ; $5a1a: $a5
	inc d                                            ; $5a1b: $14
	or h                                             ; $5a1c: $b4
	ld c, [hl]                                       ; $5a1d: $4e
	ld b, e                                          ; $5a1e: $43
	add hl, de                                       ; $5a1f: $19
	daa                                              ; $5a20: $27
	add hl, sp                                       ; $5a21: $39
	and l                                            ; $5a22: $a5
	jr nz, jr_02d_5a44                               ; $5a23: $20 $1f

	add hl, de                                       ; $5a25: $19
	ld d, d                                          ; $5a26: $52
	ld a, [bc]                                       ; $5a27: $0a
	ld c, c                                          ; $5a28: $49
	di                                               ; $5a29: $f3
	inc c                                            ; $5a2a: $0c
	daa                                              ; $5a2b: $27
	ld [$669e], sp                                   ; $5a2c: $08 $9e $66
	add hl, de                                       ; $5a2f: $19
	ld d, d                                          ; $5a30: $52
	di                                               ; $5a31: $f3
	inc c                                            ; $5a32: $0c
	daa                                              ; $5a33: $27
	ld [$4e7c], sp                                   ; $5a34: $08 $7c $4e
	ld a, d                                          ; $5a37: $7a
	ld a, [de]                                       ; $5a38: $1a
	ld e, e                                          ; $5a39: $5b
	dec a                                            ; $5a3a: $3d
	di                                               ; $5a3b: $f3
	inc c                                            ; $5a3c: $0c
	ld a, h                                          ; $5a3d: $7c
	ld c, [hl]                                       ; $5a3e: $4e
	ei                                               ; $5a3f: $fb
	ld c, l                                          ; $5a40: $4d
	ld e, e                                          ; $5a41: $5b
	dec a                                            ; $5a42: $3d
	daa                                              ; $5a43: $27

jr_02d_5a44:
	ld [$4e7c], sp                                   ; $5a44: $08 $7c $4e
	ei                                               ; $5a47: $fb
	ld c, l                                          ; $5a48: $4d
	ld a, [bc]                                       ; $5a49: $0a
	ld c, c                                          ; $5a4a: $49
	daa                                              ; $5a4b: $27
	ld [$5e1f], sp                                   ; $5a4c: $08 $1f $5e
	inc sp                                           ; $5a4f: $33
	rst FarCall                                          ; $5a50: $f7
	ld bc, $3400                                     ; $5a51: $01 $00 $34
	nop                                              ; $5a54: $00
	nop                                              ; $5a55: $00
	rst FarCall                                          ; $5a56: $f7
	ld bc, $04cc                                     ; $5a57: $01 $cc $04
	nop                                              ; $5a5a: $00
	inc [hl]                                         ; $5a5b: $34
	nop                                              ; $5a5c: $00
	nop                                              ; $5a5d: $00
	rst FarCall                                          ; $5a5e: $f7
	ld bc, $04cc                                     ; $5a5f: $01 $cc $04
	nop                                              ; $5a62: $00
	inc [hl]                                         ; $5a63: $34
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	rst FarCall                                          ; $5a66: $f7
	ld bc, $04cc                                     ; $5a67: $01 $cc $04
	nop                                              ; $5a6a: $00
	inc [hl]                                         ; $5a6b: $34
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	rst FarCall                                          ; $5a6e: $f7
	ld bc, $04cc                                     ; $5a6f: $01 $cc $04
	nop                                              ; $5a72: $00
	inc [hl]                                         ; $5a73: $34
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	rra                                              ; $5a76: $1f
	rst $38                                          ; $5a77: $ff
	ld a, a                                          ; $5a78: $7f
	and b                                            ; $5a79: $a0
	ld a, [hl]                                       ; $5a7a: $7e
	ld a, c                                          ; $5a7b: $79
	inc c                                            ; $5a7c: $0c
	nop                                              ; $5a7d: $00
	nop                                              ; $5a7e: $00

jr_02d_5a7f:
	rst $38                                          ; $5a7f: $ff
	ld a, a                                          ; $5a80: $7f
	db $10                                           ; $5a81: $10
	ld a, [hl]                                       ; $5a82: $7e
	add hl, hl                                       ; $5a83: $29
	ld c, c                                          ; $5a84: $49
	nop                                              ; $5a85: $00
	nop                                              ; $5a86: $00
	rst $38                                          ; $5a87: $ff
	ld a, a                                          ; $5a88: $7f
	rst $38                                          ; $5a89: $ff
	dec h                                            ; $5a8a: $25
	ld a, c                                          ; $5a8b: $79
	inc c                                            ; $5a8c: $0c
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	rst $38                                          ; $5a8f: $ff
	ld a, a                                          ; $5a90: $7f
	and b                                            ; $5a91: $a0
	ld a, [hl]                                       ; $5a92: $7e
	add hl, hl                                       ; $5a93: $29
	ld c, c                                          ; $5a94: $49
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	rst $38                                          ; $5a97: $ff
	ld a, a                                          ; $5a98: $7f
	rst $38                                          ; $5a99: $ff
	dec h                                            ; $5a9a: $25
	add hl, hl                                       ; $5a9b: $29
	ld c, c                                          ; $5a9c: $49
	nop                                              ; $5a9d: $00
	nop                                              ; $5a9e: $00
	jr @+$01                                         ; $5a9f: $18 $ff

	ld a, a                                          ; $5aa1: $7f
	ld a, a                                          ; $5aa2: $7f
	ld a, [hl]                                       ; $5aa3: $7e
	rst SubAFromDE                                          ; $5aa4: $df
	ld [bc], a                                       ; $5aa5: $02
	ld b, b                                          ; $5aa6: $40
	ld h, h                                          ; $5aa7: $64

jr_02d_5aa8:
	rra                                              ; $5aa8: $1f
	ld b, b                                          ; $5aa9: $40
	ld a, a                                          ; $5aaa: $7f
	ld a, [hl]                                       ; $5aab: $7e
	dec d                                            ; $5aac: $15
	nop                                              ; $5aad: $00
	nop                                              ; $5aae: $00
	nop                                              ; $5aaf: $00
	jr jr_02d_5aa8                                   ; $5ab0: $18 $f6

	ld a, e                                          ; $5ab2: $7b
	dec bc                                           ; $5ab3: $0b
	ld e, e                                          ; $5ab4: $5b
	ldh [$4e], a                                     ; $5ab5: $e0 $4e
	ret nz                                           ; $5ab7: $c0

	add hl, sp                                       ; $5ab8: $39
	dec bc                                           ; $5ab9: $0b
	ld e, e                                          ; $5aba: $5b
	ldh [c], a                                       ; $5abb: $e2
	dec [hl]                                         ; $5abc: $35
	ld b, b                                          ; $5abd: $40
	ld sp, $18a6                                     ; $5abe: $31 $a6 $18
	jr jr_02d_5a7f                                   ; $5ac1: $18 $bc

	ld b, [hl]                                       ; $5ac3: $46
	xor h                                            ; $5ac4: $ac
	ld c, l                                          ; $5ac5: $4d
	inc e                                            ; $5ac6: $1c
	ld d, b                                          ; $5ac7: $50
	ld hl, $bc00                                     ; $5ac8: $21 $00 $bc
	ld b, [hl]                                       ; $5acb: $46
	xor h                                            ; $5acc: $ac
	ld c, l                                          ; $5acd: $4d
	ld de, $213a                                     ; $5ace: $11 $3a $21
	nop                                              ; $5ad1: $00
	ld e, $55                                        ; $5ad2: $1e $55
	ld a, a                                          ; $5ad4: $7f
	and l                                            ; $5ad5: $a5
	ld a, [hl]                                       ; $5ad6: $7e
	ld b, b                                          ; $5ad7: $40
	ld a, l                                          ; $5ad8: $7d
	and b                                            ; $5ad9: $a0
	ld b, b                                          ; $5ada: $40
	ld e, a                                          ; $5adb: $5f
	ld d, a                                          ; $5adc: $57
	cp a                                             ; $5add: $bf
	ld d, $5f                                        ; $5ade: $16 $5f
	ld bc, $00b0                                     ; $5ae0: $01 $b0 $00
	ld e, d                                          ; $5ae3: $5a
	ld l, e                                          ; $5ae4: $6b
	ld d, d                                          ; $5ae5: $52
	ld c, d                                          ; $5ae6: $4a
	ld c, d                                          ; $5ae7: $4a
	add hl, hl                                       ; $5ae8: $29
	and l                                            ; $5ae9: $a5
	inc d                                            ; $5aea: $14
	rst $38                                          ; $5aeb: $ff
	ld a, a                                          ; $5aec: $7f
	ldh [$03], a                                     ; $5aed: $e0 $03
	ldh [$03], a                                     ; $5aef: $e0 $03
	ldh [$03], a                                     ; $5af1: $e0 $03
	ccf                                              ; $5af3: $3f
	rst $38                                          ; $5af4: $ff
	ld a, a                                          ; $5af5: $7f
	cp a                                             ; $5af6: $bf
	add hl, sp                                       ; $5af7: $39
	inc e                                            ; $5af8: $1c
	inc e                                            ; $5af9: $1c
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	rst $38                                          ; $5afc: $ff
	ld a, a                                          ; $5afd: $7f
	inc hl                                           ; $5afe: $23
	ld [hl], a                                       ; $5aff: $77
	ld bc, $0066                                     ; $5b00: $01 $66 $00
	nop                                              ; $5b03: $00
	rst $38                                          ; $5b04: $ff
	ld a, a                                          ; $5b05: $7f
	cp a                                             ; $5b06: $bf
	add hl, sp                                       ; $5b07: $39
	ld bc, $0066                                     ; $5b08: $01 $66 $00
	nop                                              ; $5b0b: $00
	rst $38                                          ; $5b0c: $ff
	ld a, a                                          ; $5b0d: $7f
	inc hl                                           ; $5b0e: $23
	ld [hl], a                                       ; $5b0f: $77
	ld a, l                                          ; $5b10: $7d
	inc a                                            ; $5b11: $3c
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	rst $38                                          ; $5b14: $ff
	ld a, a                                          ; $5b15: $7f
	sbc a                                            ; $5b16: $9f
	ld e, l                                          ; $5b17: $5d
	ld a, l                                          ; $5b18: $7d
	inc a                                            ; $5b19: $3c
	ld c, $18                                        ; $5b1a: $0e $18
	rst $38                                          ; $5b1c: $ff
	ld a, a                                          ; $5b1d: $7f
	ret nz                                           ; $5b1e: $c0

	ld d, $1c                                        ; $5b1f: $16 $1c
	inc e                                            ; $5b21: $1c
	nop                                              ; $5b22: $00
	nop                                              ; $5b23: $00
	ccf                                              ; $5b24: $3f
	rst $38                                          ; $5b25: $ff
	ld a, a                                          ; $5b26: $7f
	cp a                                             ; $5b27: $bf
	add hl, sp                                       ; $5b28: $39
	inc e                                            ; $5b29: $1c
	inc e                                            ; $5b2a: $1c
	nop                                              ; $5b2b: $00
	nop                                              ; $5b2c: $00
	rst $38                                          ; $5b2d: $ff
	ld a, a                                          ; $5b2e: $7f
	ret z                                            ; $5b2f: $c8

	ld a, [hl]                                       ; $5b30: $7e
	ret nz                                           ; $5b31: $c0

	ld a, l                                          ; $5b32: $7d
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	rst $38                                          ; $5b35: $ff
	ld a, a                                          ; $5b36: $7f
	ret z                                            ; $5b37: $c8

	ld a, [hl]                                       ; $5b38: $7e
	inc e                                            ; $5b39: $1c
	inc e                                            ; $5b3a: $1c
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	rst $38                                          ; $5b3d: $ff
	ld a, a                                          ; $5b3e: $7f
	cp a                                             ; $5b3f: $bf
	add hl, sp                                       ; $5b40: $39
	ret nz                                           ; $5b41: $c0

	ld a, l                                          ; $5b42: $7d
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	jr nz, jr_02d_5b9a                               ; $5b45: $20 $53

	call $4624                                       ; $5b47: $cd $24 $46
	inc d                                            ; $5b4a: $14
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	jr nz, jr_02d_5ba2                               ; $5b4d: $20 $53

	ld b, b                                          ; $5b4f: $40
	ld a, [hl-]                                      ; $5b50: $3a
	inc e                                            ; $5b51: $1c
	inc e                                            ; $5b52: $1c
	nop                                              ; $5b53: $00
	nop                                              ; $5b54: $00
	ccf                                              ; $5b55: $3f
	rst $38                                          ; $5b56: $ff
	ld a, a                                          ; $5b57: $7f
	cp a                                             ; $5b58: $bf
	add hl, sp                                       ; $5b59: $39
	inc e                                            ; $5b5a: $1c
	inc e                                            ; $5b5b: $1c
	nop                                              ; $5b5c: $00
	nop                                              ; $5b5d: $00
	rst $38                                          ; $5b5e: $ff
	ld a, a                                          ; $5b5f: $7f
	rst JumpTable                                          ; $5b60: $c7
	ld e, l                                          ; $5b61: $5d
	and c                                            ; $5b62: $a1
	inc l                                            ; $5b63: $2c
	jr nz, jr_02d_5b86                               ; $5b64: $20 $20

	rst $38                                          ; $5b66: $ff
	ld a, a                                          ; $5b67: $7f
	ld e, h                                          ; $5b68: $5c
	ld c, $f2                                        ; $5b69: $0e $f2
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	nop                                              ; $5b6d: $00
	rst $38                                          ; $5b6e: $ff
	ld a, a                                          ; $5b6f: $7f
	cp a                                             ; $5b70: $bf
	add hl, sp                                       ; $5b71: $39
	and c                                            ; $5b72: $a1
	inc l                                            ; $5b73: $2c
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	ccf                                              ; $5b76: $3f
	ccf                                              ; $5b77: $3f
	rst JumpTable                                          ; $5b78: $c7
	ld e, l                                          ; $5b79: $5d
	and c                                            ; $5b7a: $a1
	inc l                                            ; $5b7b: $2c
	jr nz, jr_02d_5b9e                               ; $5b7c: $20 $20

	nop                                              ; $5b7e: $00
	ld [bc], a                                       ; $5b7f: $02
	ld [bc], a                                       ; $5b80: $02
	ld [bc], a                                       ; $5b81: $02
	inc b                                            ; $5b82: $04
	ld [bc], a                                       ; $5b83: $02
	ld b, $02                                        ; $5b84: $06 $02

jr_02d_5b86:
	ccf                                              ; $5b86: $3f
	rst $38                                          ; $5b87: $ff
	ld a, a                                          ; $5b88: $7f
	cp a                                             ; $5b89: $bf
	add hl, sp                                       ; $5b8a: $39
	inc e                                            ; $5b8b: $1c
	inc e                                            ; $5b8c: $1c
	nop                                              ; $5b8d: $00
	nop                                              ; $5b8e: $00
	rst $38                                          ; $5b8f: $ff
	ld a, a                                          ; $5b90: $7f
	dec c                                            ; $5b91: $0d
	ld a, [hl]                                       ; $5b92: $7e
	dec b                                            ; $5b93: $05
	ld e, l                                          ; $5b94: $5d
	nop                                              ; $5b95: $00
	nop                                              ; $5b96: $00
	rst $38                                          ; $5b97: $ff
	ld a, a                                          ; $5b98: $7f
	cp a                                             ; $5b99: $bf

jr_02d_5b9a:
	add hl, sp                                       ; $5b9a: $39
	dec b                                            ; $5b9b: $05
	ld e, l                                          ; $5b9c: $5d
	nop                                              ; $5b9d: $00

jr_02d_5b9e:
	nop                                              ; $5b9e: $00
	rst $38                                          ; $5b9f: $ff
	ld a, a                                          ; $5ba0: $7f
	dec c                                            ; $5ba1: $0d

jr_02d_5ba2:
	ld a, [hl]                                       ; $5ba2: $7e
	inc e                                            ; $5ba3: $1c
	inc e                                            ; $5ba4: $1c
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	sbc a                                            ; $5ba7: $9f
	ld d, a                                          ; $5ba8: $57
	rla                                              ; $5ba9: $17
	ld [hl+], a                                      ; $5baa: $22
	inc l                                            ; $5bab: $2c
	ld de, $0000                                     ; $5bac: $11 $00 $00
	rst $38                                          ; $5baf: $ff
	ld a, a                                          ; $5bb0: $7f
	cp a                                             ; $5bb1: $bf
	add hl, sp                                       ; $5bb2: $39
	inc l                                            ; $5bb3: $2c
	ld de, $0000                                     ; $5bb4: $11 $00 $00
	ccf                                              ; $5bb7: $3f
	rst $38                                          ; $5bb8: $ff
	ld a, a                                          ; $5bb9: $7f
	cp a                                             ; $5bba: $bf
	add hl, sp                                       ; $5bbb: $39
	inc e                                            ; $5bbc: $1c
	inc e                                            ; $5bbd: $1c
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	cp b                                             ; $5bc0: $b8
	ld a, a                                          ; $5bc1: $7f
	rst JumpTable                                          ; $5bc2: $c7
	ld b, $e0                                        ; $5bc3: $06 $e0
	dec h                                            ; $5bc5: $25
	ldh [rAUD4LEN], a                                ; $5bc6: $e0 $20
	ld a, b                                          ; $5bc8: $78
	ld a, a                                          ; $5bc9: $7f
	cp a                                             ; $5bca: $bf
	add hl, sp                                       ; $5bcb: $39
	inc e                                            ; $5bcc: $1c
	inc e                                            ; $5bcd: $1c
	nop                                              ; $5bce: $00
	nop                                              ; $5bcf: $00
	rst $38                                          ; $5bd0: $ff
	ld a, a                                          ; $5bd1: $7f
	rst SubAFromDE                                          ; $5bd2: $df
	ld l, c                                          ; $5bd3: $69
	ld a, c                                          ; $5bd4: $79
	ld c, b                                          ; $5bd5: $48
	nop                                              ; $5bd6: $00
	nop                                              ; $5bd7: $00
	rst $38                                          ; $5bd8: $ff
	ld a, a                                          ; $5bd9: $7f
	rst JumpTable                                          ; $5bda: $c7
	ld b, $5c                                        ; $5bdb: $06 $5c
	inc d                                            ; $5bdd: $14
	nop                                              ; $5bde: $00
	nop                                              ; $5bdf: $00
	rst $38                                          ; $5be0: $ff
	ld a, a                                          ; $5be1: $7f
	rst JumpTable                                          ; $5be2: $c7
	ld b, $79                                        ; $5be3: $06 $79
	ld c, b                                          ; $5be5: $48
	nop                                              ; $5be6: $00
	nop                                              ; $5be7: $00
	ccf                                              ; $5be8: $3f
	rst $38                                          ; $5be9: $ff
	ld a, a                                          ; $5bea: $7f
	cp a                                             ; $5beb: $bf
	add hl, sp                                       ; $5bec: $39
	inc e                                            ; $5bed: $1c
	inc e                                            ; $5bee: $1c
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	rst $38                                          ; $5bf1: $ff
	ld a, a                                          ; $5bf2: $7f
	jp c, $ce0a                                      ; $5bf3: $da $0a $ce

	ld bc, $0000                                     ; $5bf6: $01 $00 $00
	rst $38                                          ; $5bf9: $ff
	ld a, a                                          ; $5bfa: $7f
	call c, $b405                                    ; $5bfb: $dc $05 $b4
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	rst $38                                          ; $5c01: $ff
	ld a, a                                          ; $5c02: $7f
	ld c, [hl]                                       ; $5c03: $4e
	ld h, d                                          ; $5c04: $62
	ld h, l                                          ; $5c05: $65
	add hl, sp                                       ; $5c06: $39
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	rst $38                                          ; $5c09: $ff
	ld a, a                                          ; $5c0a: $7f
	cp a                                             ; $5c0b: $bf
	add hl, sp                                       ; $5c0c: $39
	ld h, l                                          ; $5c0d: $65
	add hl, sp                                       ; $5c0e: $39
	nop                                              ; $5c0f: $00
	nop                                              ; $5c10: $00
	rst $38                                          ; $5c11: $ff
	ld a, a                                          ; $5c12: $7f
	or c                                             ; $5c13: $b1
	ld l, [hl]                                       ; $5c14: $6e
	or h                                             ; $5c15: $b4
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	nop                                              ; $5c18: $00
	ccf                                              ; $5c19: $3f
	rst $38                                          ; $5c1a: $ff
	ld a, a                                          ; $5c1b: $7f
	cp a                                             ; $5c1c: $bf
	add hl, sp                                       ; $5c1d: $39
	inc e                                            ; $5c1e: $1c
	inc e                                            ; $5c1f: $1c
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	rst $38                                          ; $5c22: $ff
	ld a, a                                          ; $5c23: $7f
	ld hl, $e073                                     ; $5c24: $21 $73 $e0
	ld [hl], l                                       ; $5c27: $75
	nop                                              ; $5c28: $00
	nop                                              ; $5c29: $00
	rst $38                                          ; $5c2a: $ff
	ld a, a                                          ; $5c2b: $7f
	ld hl, $3e73                                     ; $5c2c: $21 $73 $3e
	ld e, b                                          ; $5c2f: $58
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	rst $38                                          ; $5c32: $ff
	ld a, a                                          ; $5c33: $7f
	cp a                                             ; $5c34: $bf
	add hl, sp                                       ; $5c35: $39
	ldh [$75], a                                     ; $5c36: $e0 $75
	nop                                              ; $5c38: $00
	nop                                              ; $5c39: $00
	rst $38                                          ; $5c3a: $ff
	ld a, a                                          ; $5c3b: $7f
	cp a                                             ; $5c3c: $bf
	add hl, sp                                       ; $5c3d: $39
	or h                                             ; $5c3e: $b4
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	ret nz                                           ; $5c42: $c0

	ld bc, $01c2                                     ; $5c43: $01 $c2 $01
	call nz, $c601                                   ; $5c46: $c4 $01 $c6
	ld bc, $ff3f                                     ; $5c49: $01 $3f $ff
	ld l, a                                          ; $5c4c: $6f
	cp a                                             ; $5c4d: $bf
	add hl, de                                       ; $5c4e: $19
	jr jr_02d_5c59                                   ; $5c4f: $18 $08

	nop                                              ; $5c51: $00
	nop                                              ; $5c52: $00
	ldh a, [$3f]                                     ; $5c53: $f0 $3f
	ld h, b                                          ; $5c55: $60
	ld a, [hl-]                                      ; $5c56: $3a
	ldh [$30], a                                     ; $5c57: $e0 $30

jr_02d_5c59:
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	rst SubAFromDE                                          ; $5c5b: $df
	ld e, a                                          ; $5c5c: $5f
	dec sp                                           ; $5c5d: $3b
	ld [hl+], a                                      ; $5c5e: $22
	pop af                                           ; $5c5f: $f1
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	db $fd                                           ; $5c63: $fd
	ld a, a                                          ; $5c64: $7f
	xor l                                            ; $5c65: $ad
	ld a, d                                          ; $5c66: $7a
	jr @+$0a                                         ; $5c67: $18 $08

	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	add b                                            ; $5c6b: $80
	ld bc, $0182                                     ; $5c6c: $01 $82 $01
	add h                                            ; $5c6f: $84
	ld bc, $0186                                     ; $5c70: $01 $86 $01
	ret nz                                           ; $5c73: $c0

	ld bc, $01c2                                     ; $5c74: $01 $c2 $01
	call nz, $c601                                   ; $5c77: $c4 $01 $c6
	ld bc, $ff3f                                     ; $5c7a: $01 $3f $ff
	ld l, a                                          ; $5c7d: $6f
	cp a                                             ; $5c7e: $bf
	add hl, de                                       ; $5c7f: $19
	jr jr_02d_5c8a                                   ; $5c80: $18 $08

	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	ldh a, [$3f]                                     ; $5c84: $f0 $3f
	ld h, b                                          ; $5c86: $60
	ld a, [hl-]                                      ; $5c87: $3a
	ldh [$30], a                                     ; $5c88: $e0 $30

jr_02d_5c8a:
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	rst $38                                          ; $5c8c: $ff
	ld l, a                                          ; $5c8d: $6f
	dec d                                            ; $5c8e: $15
	ld a, [hl+]                                      ; $5c8f: $2a
	jp z, $002c                                      ; $5c90: $ca $2c $00

	nop                                              ; $5c93: $00
	rst $38                                          ; $5c94: $ff
	ld l, a                                          ; $5c95: $6f
	add a                                            ; $5c96: $87
	ld h, [hl]                                       ; $5c97: $66
	ld h, c                                          ; $5c98: $61
	ld h, c                                          ; $5c99: $61
	nop                                              ; $5c9a: $00
	nop                                              ; $5c9b: $00
	rst $38                                          ; $5c9c: $ff
	ld l, a                                          ; $5c9d: $6f
	rst SubAFromDE                                          ; $5c9e: $df
	dec c                                            ; $5c9f: $0d
	ld h, c                                          ; $5ca0: $61
	ld h, c                                          ; $5ca1: $61
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	rst $38                                          ; $5ca4: $ff
	ld l, a                                          ; $5ca5: $6f
	ld h, b                                          ; $5ca6: $60
	ld a, [hl-]                                      ; $5ca7: $3a
	ld h, c                                          ; $5ca8: $61
	ld h, c                                          ; $5ca9: $61
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	ccf                                              ; $5cac: $3f
	rst $38                                          ; $5cad: $ff
	ld a, a                                          ; $5cae: $7f
	cp a                                             ; $5caf: $bf
	add hl, sp                                       ; $5cb0: $39
	inc e                                            ; $5cb1: $1c
	inc e                                            ; $5cb2: $1c
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	rst $38                                          ; $5cb5: $ff
	ld a, a                                          ; $5cb6: $7f
	sbc a                                            ; $5cb7: $9f
	ld [bc], a                                       ; $5cb8: $02
	ld h, c                                          ; $5cb9: $61
	ld h, c                                          ; $5cba: $61
	nop                                              ; $5cbb: $00
	nop                                              ; $5cbc: $00
	rst $38                                          ; $5cbd: $ff
	ld a, a                                          ; $5cbe: $7f
	ldh a, [rHDMA1]                                  ; $5cbf: $f0 $51
	ld [$002d], sp                                   ; $5cc1: $08 $2d $00
	nop                                              ; $5cc4: $00
	rst $38                                          ; $5cc5: $ff
	ld a, a                                          ; $5cc6: $7f
	add a                                            ; $5cc7: $87
	ld a, [hl]                                       ; $5cc8: $7e
	and b                                            ; $5cc9: $a0
	ld a, c                                          ; $5cca: $79
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	rst $38                                          ; $5ccd: $ff
	ld a, a                                          ; $5cce: $7f
	cp a                                             ; $5ccf: $bf
	add hl, sp                                       ; $5cd0: $39
	ld h, c                                          ; $5cd1: $61
	ld h, c                                          ; $5cd2: $61
	nop                                              ; $5cd3: $00
	nop                                              ; $5cd4: $00
	rst $38                                          ; $5cd5: $ff
	ld a, a                                          ; $5cd6: $7f
	add a                                            ; $5cd7: $87
	ld a, [hl]                                       ; $5cd8: $7e
	inc e                                            ; $5cd9: $1c
	inc e                                            ; $5cda: $1c
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	ccf                                              ; $5cdd: $3f
	rst $38                                          ; $5cde: $ff
	ld a, a                                          ; $5cdf: $7f
	cp a                                             ; $5ce0: $bf
	add hl, sp                                       ; $5ce1: $39
	inc e                                            ; $5ce2: $1c
	inc e                                            ; $5ce3: $1c
	nop                                              ; $5ce4: $00
	nop                                              ; $5ce5: $00
	rst SubAFromDE                                          ; $5ce6: $df
	dec hl                                           ; $5ce7: $2b
	cp a                                             ; $5ce8: $bf
	add hl, sp                                       ; $5ce9: $39
	inc e                                            ; $5cea: $1c
	inc e                                            ; $5ceb: $1c
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	rst $38                                          ; $5cee: $ff
	ld h, a                                          ; $5cef: $67
	rra                                              ; $5cf0: $1f
	ld [hl+], a                                      ; $5cf1: $22
	or a                                             ; $5cf2: $b7
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	rst $38                                          ; $5cf6: $ff
	ld a, a                                          ; $5cf7: $7f
	add a                                            ; $5cf8: $87
	ld [bc], a                                       ; $5cf9: $02
	ld a, [$0010]                                    ; $5cfa: $fa $10 $00
	nop                                              ; $5cfd: $00
	rst $38                                          ; $5cfe: $ff
	ld a, a                                          ; $5cff: $7f
	ccf                                              ; $5d00: $3f
	ld d, l                                          ; $5d01: $55
	inc e                                            ; $5d02: $1c
	inc e                                            ; $5d03: $1c
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	rst $38                                          ; $5d06: $ff
	ld a, a                                          ; $5d07: $7f
	ldh a, [rHDMA1]                                  ; $5d08: $f0 $51
	ld [$002d], sp                                   ; $5d0a: $08 $2d $00
	nop                                              ; $5d0d: $00
	ccf                                              ; $5d0e: $3f
	rst $38                                          ; $5d0f: $ff
	ld a, a                                          ; $5d10: $7f
	cp a                                             ; $5d11: $bf
	add hl, sp                                       ; $5d12: $39
	inc e                                            ; $5d13: $1c
	inc e                                            ; $5d14: $1c
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	rst SubAFromDE                                          ; $5d17: $df
	dec hl                                           ; $5d18: $2b
	cp a                                             ; $5d19: $bf
	add hl, sp                                       ; $5d1a: $39
	inc e                                            ; $5d1b: $1c
	inc e                                            ; $5d1c: $1c
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	rst $38                                          ; $5d1f: $ff
	ld a, a                                          ; $5d20: $7f
	rra                                              ; $5d21: $1f
	ld [hl+], a                                      ; $5d22: $22
	or a                                             ; $5d23: $b7
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	cp a                                             ; $5d27: $bf
	ld d, e                                          ; $5d28: $53
	rra                                              ; $5d29: $1f
	ld [hl+], a                                      ; $5d2a: $22
	or a                                             ; $5d2b: $b7
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	rst $38                                          ; $5d2f: $ff
	ld a, a                                          ; $5d30: $7f
	ccf                                              ; $5d31: $3f
	ld d, l                                          ; $5d32: $55
	inc e                                            ; $5d33: $1c
	inc e                                            ; $5d34: $1c
	nop                                              ; $5d35: $00
	nop                                              ; $5d36: $00
	rst $38                                          ; $5d37: $ff
	ld a, a                                          ; $5d38: $7f
	ldh a, [rHDMA1]                                  ; $5d39: $f0 $51
	ld [$002d], sp                                   ; $5d3b: $08 $2d $00
	nop                                              ; $5d3e: $00
	ccf                                              ; $5d3f: $3f
	rst $38                                          ; $5d40: $ff
	ld a, a                                          ; $5d41: $7f
	cp a                                             ; $5d42: $bf
	add hl, sp                                       ; $5d43: $39
	inc e                                            ; $5d44: $1c
	inc e                                            ; $5d45: $1c
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00
	rst $38                                          ; $5d48: $ff
	ld a, a                                          ; $5d49: $7f
	ldh a, [rHDMA1]                                  ; $5d4a: $f0 $51
	inc e                                            ; $5d4c: $1c
	inc e                                            ; $5d4d: $1c
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	rst $38                                          ; $5d50: $ff
	ld a, a                                          ; $5d51: $7f
	ldh a, [rHDMA1]                                  ; $5d52: $f0 $51
	ld [$002d], sp                                   ; $5d54: $08 $2d $00
	nop                                              ; $5d57: $00
	rst $38                                          ; $5d58: $ff
	ld a, a                                          ; $5d59: $7f
	cp a                                             ; $5d5a: $bf
	ld [bc], a                                       ; $5d5b: $02
	ldh [rAUD3LOW], a                                ; $5d5c: $e0 $1d
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	rst $38                                          ; $5d60: $ff
	ld a, a                                          ; $5d61: $7f
	and d                                            ; $5d62: $a2
	ld a, [hl]                                       ; $5d63: $7e
	inc e                                            ; $5d64: $1c
	inc e                                            ; $5d65: $1c
	nop                                              ; $5d66: $00
	nop                                              ; $5d67: $00
	rst $38                                          ; $5d68: $ff
	ld a, a                                          ; $5d69: $7f
	cp a                                             ; $5d6a: $bf
	ld [bc], a                                       ; $5d6b: $02
	inc e                                            ; $5d6c: $1c
	inc e                                            ; $5d6d: $1c
	nop                                              ; $5d6e: $00

jr_02d_5d6f:
	nop                                              ; $5d6f: $00
	ccf                                              ; $5d70: $3f
	rst $38                                          ; $5d71: $ff
	ld a, a                                          ; $5d72: $7f
	cp a                                             ; $5d73: $bf
	add hl, sp                                       ; $5d74: $39
	inc e                                            ; $5d75: $1c
	inc e                                            ; $5d76: $1c
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	rst $38                                          ; $5d79: $ff
	ld a, a                                          ; $5d7a: $7f
	ldh a, [rHDMA1]                                  ; $5d7b: $f0 $51
	inc e                                            ; $5d7d: $1c
	inc e                                            ; $5d7e: $1c
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	rst $38                                          ; $5d81: $ff
	ld a, a                                          ; $5d82: $7f
	ldh a, [rHDMA1]                                  ; $5d83: $f0 $51
	ld [$002d], sp                                   ; $5d85: $08 $2d $00
	nop                                              ; $5d88: $00
	rst $38                                          ; $5d89: $ff
	ld a, a                                          ; $5d8a: $7f
	cp a                                             ; $5d8b: $bf
	add hl, sp                                       ; $5d8c: $39
	ldh [rAUD3LOW], a                                ; $5d8d: $e0 $1d
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	rst $38                                          ; $5d91: $ff
	ld a, a                                          ; $5d92: $7f
	and d                                            ; $5d93: $a2
	ld a, [hl]                                       ; $5d94: $7e
	inc e                                            ; $5d95: $1c
	inc e                                            ; $5d96: $1c
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	rst $38                                          ; $5d99: $ff
	ld a, a                                          ; $5d9a: $7f
	cp a                                             ; $5d9b: $bf
	ld [bc], a                                       ; $5d9c: $02
	inc e                                            ; $5d9d: $1c
	inc e                                            ; $5d9e: $1c
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	ccf                                              ; $5da1: $3f
	rst $38                                          ; $5da2: $ff
	ld a, a                                          ; $5da3: $7f
	push hl                                          ; $5da4: $e5
	ld a, [hl]                                       ; $5da5: $7e
	inc bc                                           ; $5da6: $03
	ld [hl], d                                       ; $5da7: $72
	nop                                              ; $5da8: $00
	nop                                              ; $5da9: $00
	rst $38                                          ; $5daa: $ff
	ld a, a                                          ; $5dab: $7f
	rst SubAFromDE                                          ; $5dac: $df
	ld b, c                                          ; $5dad: $41
	and b                                            ; $5dae: $a0
	dec h                                            ; $5daf: $25
	nop                                              ; $5db0: $00
	nop                                              ; $5db1: $00
	rst SubAFromHL                                          ; $5db2: $d7
	ld l, a                                          ; $5db3: $6f
	ldh [rDMA], a                                    ; $5db4: $e0 $46
	and b                                            ; $5db6: $a0
	dec h                                            ; $5db7: $25
	nop                                              ; $5db8: $00
	ld [$5b5c], sp                                   ; $5db9: $08 $5c $5b
	sub $25                                          ; $5dbc: $d6 $25
	ret z                                            ; $5dbe: $c8

	ld hl, $0088                                     ; $5dbf: $21 $88 $00
	rst $38                                          ; $5dc2: $ff
	ld a, a                                          ; $5dc3: $7f
	ld sp, $e32f                                     ; $5dc4: $31 $2f $e3
	dec e                                            ; $5dc7: $1d
	and [hl]                                         ; $5dc8: $a6
	db $10                                           ; $5dc9: $10
	rst $38                                          ; $5dca: $ff
	ld a, a                                          ; $5dcb: $7f
	rst SubAFromDE                                          ; $5dcc: $df
	jr jr_02d_5d6f                                   ; $5dcd: $18 $a0

	ld h, l                                          ; $5dcf: $65
	nop                                              ; $5dd0: $00
	nop                                              ; $5dd1: $00
	ccf                                              ; $5dd2: $3f
	rst $38                                          ; $5dd3: $ff
	ld a, a                                          ; $5dd4: $7f
	rst SubAFromDE                                          ; $5dd5: $df
	ld b, c                                          ; $5dd6: $41
	inc bc                                           ; $5dd7: $03
	ld [hl], d                                       ; $5dd8: $72
	nop                                              ; $5dd9: $00
	nop                                              ; $5dda: $00
	rst $38                                          ; $5ddb: $ff
	ld a, a                                          ; $5ddc: $7f
	rst SubAFromDE                                          ; $5ddd: $df
	ld b, c                                          ; $5dde: $41
	ld [hl], c                                       ; $5ddf: $71
	dec c                                            ; $5de0: $0d
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	rst $38                                          ; $5de3: $ff
	ld a, a                                          ; $5de4: $7f
	jp c, $030d                                      ; $5de5: $da $0d $03

	ld [hl], d                                       ; $5de8: $72
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	rst $38                                          ; $5deb: $ff
	ld a, a                                          ; $5dec: $7f
	rst SubAFromDE                                          ; $5ded: $df
	ld b, c                                          ; $5dee: $41
	jr nz, jr_02d_5e06                               ; $5def: $20 $15

	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	rst $38                                          ; $5df3: $ff
	ld a, a                                          ; $5df4: $7f
	ld [$203e], a                                    ; $5df5: $ea $3e $20
	dec d                                            ; $5df8: $15
	nop                                              ; $5df9: $00
	ld [$66d1], sp                                   ; $5dfa: $08 $d1 $66
	ld b, e                                          ; $5dfd: $43
	ld c, c                                          ; $5dfe: $49
	ld [$002d], sp                                   ; $5dff: $08 $2d $00
	ld [$ff3f], sp                                   ; $5e02: $08 $3f $ff
	ld a, a                                          ; $5e05: $7f

jr_02d_5e06:
	inc c                                            ; $5e06: $0c
	ld c, a                                          ; $5e07: $4f
	and b                                            ; $5e08: $a0
	dec h                                            ; $5e09: $25

jr_02d_5e0a:
	nop                                              ; $5e0a: $00
	ld [$7fff], sp                                   ; $5e0b: $08 $ff $7f
	rst SubAFromDE                                          ; $5e0e: $df
	ld b, c                                          ; $5e0f: $41
	and b                                            ; $5e10: $a0
	ld sp, $0000                                     ; $5e11: $31 $00 $00
	rst $38                                          ; $5e14: $ff
	ld a, a                                          ; $5e15: $7f
	rst SubAFromDE                                          ; $5e16: $df
	ld b, c                                          ; $5e17: $41
	dec de                                           ; $5e18: $1b
	dec e                                            ; $5e19: $1d
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	rst $38                                          ; $5e1c: $ff
	ld a, a                                          ; $5e1d: $7f
	rra                                              ; $5e1e: $1f
	jr nz, jr_02d_5e0a                               ; $5e1f: $20 $e9

	ld c, b                                          ; $5e21: $48
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	rst $38                                          ; $5e24: $ff
	ld a, a                                          ; $5e25: $7f
	rst SubAFromDE                                          ; $5e26: $df
	ld b, c                                          ; $5e27: $41
	jp hl                                            ; $5e28: $e9


	ld c, b                                          ; $5e29: $48
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	rst $38                                          ; $5e2c: $ff
	ld a, a                                          ; $5e2d: $7f
	rst SubAFromDE                                          ; $5e2e: $df
	dec [hl]                                         ; $5e2f: $35
	ldh a, [c]                                       ; $5e30: $f2
	inc c                                            ; $5e31: $0c
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	ccf                                              ; $5e34: $3f
	rst $38                                          ; $5e35: $ff
	ld a, a                                          ; $5e36: $7f
	ret nz                                           ; $5e37: $c0

	ld c, d                                          ; $5e38: $4a
	ld b, b                                          ; $5e39: $40
	add hl, hl                                       ; $5e3a: $29
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	rst $38                                          ; $5e3d: $ff
	ld a, a                                          ; $5e3e: $7f
	rst SubAFromDE                                          ; $5e3f: $df
	ld b, c                                          ; $5e40: $41
	ld b, b                                          ; $5e41: $40
	add hl, hl                                       ; $5e42: $29
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	rst $38                                          ; $5e45: $ff
	ld a, a                                          ; $5e46: $7f
	ld a, a                                          ; $5e47: $7f
	ld e, d                                          ; $5e48: $5a
	ld hl, sp+$30                                    ; $5e49: $f8 $30
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	ld d, [hl]                                       ; $5e4d: $56
	add hl, hl                                       ; $5e4e: $29
	ld [de], a                                       ; $5e4f: $12
	nop                                              ; $5e50: $00
	add hl, bc                                       ; $5e51: $09
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	db $10                                           ; $5e55: $10
	ld e, d                                          ; $5e56: $5a
	ld [$093d], sp                                   ; $5e57: $08 $3d $09
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	nop                                              ; $5e5c: $00
	rst $38                                          ; $5e5d: $ff
	ld a, a                                          ; $5e5e: $7f
	ld [de], a                                       ; $5e5f: $12
	nop                                              ; $5e60: $00
	add hl, bc                                       ; $5e61: $09
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	ccf                                              ; $5e65: $3f
	rst $38                                          ; $5e66: $ff
	ld a, a                                          ; $5e67: $7f
	ret nz                                           ; $5e68: $c0

	ld c, d                                          ; $5e69: $4a
	ld b, b                                          ; $5e6a: $40
	add hl, hl                                       ; $5e6b: $29
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	rst $38                                          ; $5e6e: $ff
	ld a, a                                          ; $5e6f: $7f
	rst SubAFromDE                                          ; $5e70: $df
	ld b, c                                          ; $5e71: $41
	ld b, b                                          ; $5e72: $40
	add hl, hl                                       ; $5e73: $29
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	rst $38                                          ; $5e76: $ff
	ld a, a                                          ; $5e77: $7f
	ei                                               ; $5e78: $fb
	ld b, [hl]                                       ; $5e79: $46
	dec [hl]                                         ; $5e7a: $35
	ld h, $00                                        ; $5e7b: $26 $00
	nop                                              ; $5e7d: $00
	rst $38                                          ; $5e7e: $ff
	ld a, a                                          ; $5e7f: $7f
	rst SubAFromDE                                          ; $5e80: $df
	ld b, c                                          ; $5e81: $41
	jr c, jr_02d_5ea5                                ; $5e82: $38 $21

	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	rst $38                                          ; $5e86: $ff
	ld a, a                                          ; $5e87: $7f
	ld d, $36                                        ; $5e88: $16 $36
	ld c, $15                                        ; $5e8a: $0e $15
	ld h, l                                          ; $5e8c: $65
	ld [$7fff], sp                                   ; $5e8d: $08 $ff $7f
	inc [hl]                                         ; $5e90: $34
	ld d, e                                          ; $5e91: $53
	jp z, $c429                                      ; $5e92: $ca $29 $c4

	db $10                                           ; $5e95: $10
	ccf                                              ; $5e96: $3f
	rst $38                                          ; $5e97: $ff
	ld a, a                                          ; $5e98: $7f
	rst SubAFromDE                                          ; $5e99: $df
	ld b, c                                          ; $5e9a: $41
	ld b, b                                          ; $5e9b: $40
	add hl, hl                                       ; $5e9c: $29
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	rst $38                                          ; $5e9f: $ff
	ld a, a                                          ; $5ea0: $7f
	rst SubAFromDE                                          ; $5ea1: $df
	ld b, c                                          ; $5ea2: $41
	ldh a, [c]                                       ; $5ea3: $f2
	inc c                                            ; $5ea4: $0c

jr_02d_5ea5:
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	rst $38                                          ; $5ea7: $ff
	ld a, a                                          ; $5ea8: $7f
	and b                                            ; $5ea9: $a0
	dec [hl]                                         ; $5eaa: $35
	add hl, hl                                       ; $5eab: $29
	ld a, [hl]                                       ; $5eac: $7e
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	rst $38                                          ; $5eaf: $ff
	ld a, a                                          ; $5eb0: $7f
	ret nz                                           ; $5eb1: $c0

	ld c, d                                          ; $5eb2: $4a
	ld b, b                                          ; $5eb3: $40
	add hl, hl                                       ; $5eb4: $29
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	rst $38                                          ; $5eb7: $ff
	ld a, a                                          ; $5eb8: $7f
	rst SubAFromDE                                          ; $5eb9: $df
	ld b, c                                          ; $5eba: $41
	add hl, hl                                       ; $5ebb: $29
	ld a, [hl]                                       ; $5ebc: $7e
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	rst $38                                          ; $5ebf: $ff
	ld a, a                                          ; $5ec0: $7f
	dec hl                                           ; $5ec1: $2b
	ld a, e                                          ; $5ec2: $7b
	add l                                            ; $5ec3: $85
	ld l, c                                          ; $5ec4: $69
	ld h, e                                          ; $5ec5: $63
	jr nz, jr_02d_5f07                               ; $5ec6: $20 $3f

	rst $38                                          ; $5ec8: $ff
	ld a, a                                          ; $5ec9: $7f
	ld b, b                                          ; $5eca: $40
	ld a, [hl]                                       ; $5ecb: $7e
	ldh [rSVBK], a                                   ; $5ecc: $e0 $70
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	rst $38                                          ; $5ed0: $ff
	ld a, a                                          ; $5ed1: $7f
	cp a                                             ; $5ed2: $bf
	add hl, sp                                       ; $5ed3: $39
	ldh [rSVBK], a                                   ; $5ed4: $e0 $70
	nop                                              ; $5ed6: $00
	nop                                              ; $5ed7: $00
	rst $38                                          ; $5ed8: $ff
	ld a, a                                          ; $5ed9: $7f
	call Call_02d_6147                               ; $5eda: $cd $47 $61
	ld [hl+], a                                      ; $5edd: $22
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	rst $38                                          ; $5ee0: $ff
	ld a, a                                          ; $5ee1: $7f
	cp a                                             ; $5ee2: $bf
	add hl, sp                                       ; $5ee3: $39
	ld h, c                                          ; $5ee4: $61
	ld [hl+], a                                      ; $5ee5: $22
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	rst $38                                          ; $5ee8: $ff
	ld a, a                                          ; $5ee9: $7f
	ld b, b                                          ; $5eea: $40
	ld a, [hl]                                       ; $5eeb: $7e
	ld h, c                                          ; $5eec: $61
	ld [hl+], a                                      ; $5eed: $22
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	ld [bc], a                                       ; $5ef1: $02
	ld [bc], a                                       ; $5ef2: $02
	ld [bc], a                                       ; $5ef3: $02
	inc b                                            ; $5ef4: $04
	ld [bc], a                                       ; $5ef5: $02
	ld b, $02                                        ; $5ef6: $06 $02
	ccf                                              ; $5ef8: $3f
	rst $38                                          ; $5ef9: $ff
	ld a, a                                          ; $5efa: $7f
	ld b, b                                          ; $5efb: $40
	ld a, [hl]                                       ; $5efc: $7e
	ldh [rSVBK], a                                   ; $5efd: $e0 $70
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	rst $38                                          ; $5f01: $ff
	ld a, a                                          ; $5f02: $7f
	cp a                                             ; $5f03: $bf
	add hl, sp                                       ; $5f04: $39
	ldh [rSVBK], a                                   ; $5f05: $e0 $70

jr_02d_5f07:
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	rst $38                                          ; $5f09: $ff
	ld a, a                                          ; $5f0a: $7f
	sbc h                                            ; $5f0b: $9c
	ld [de], a                                       ; $5f0c: $12
	ld d, b                                          ; $5f0d: $50
	dec c                                            ; $5f0e: $0d
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	rst $38                                          ; $5f11: $ff
	ld a, a                                          ; $5f12: $7f
	rlca                                             ; $5f13: $07
	ld c, a                                          ; $5f14: $4f
	ret nz                                           ; $5f15: $c0

	add hl, hl                                       ; $5f16: $29
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	rst $38                                          ; $5f19: $ff
	ld a, a                                          ; $5f1a: $7f
	cp a                                             ; $5f1b: $bf
	add hl, sp                                       ; $5f1c: $39
	ld d, b                                          ; $5f1d: $50
	dec c                                            ; $5f1e: $0d
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	rst $38                                          ; $5f21: $ff
	ld a, a                                          ; $5f22: $7f
	cp a                                             ; $5f23: $bf
	add hl, sp                                       ; $5f24: $39
	ld e, $1c                                        ; $5f25: $1e $1c
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	ccf                                              ; $5f29: $3f
	rst $38                                          ; $5f2a: $ff
	ld a, a                                          ; $5f2b: $7f
	ld b, b                                          ; $5f2c: $40
	ld a, [hl]                                       ; $5f2d: $7e
	ldh [rSVBK], a                                   ; $5f2e: $e0 $70
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	rst $38                                          ; $5f32: $ff
	ld a, a                                          ; $5f33: $7f
	cp a                                             ; $5f34: $bf
	add hl, sp                                       ; $5f35: $39
	ldh [rSVBK], a                                   ; $5f36: $e0 $70
	nop                                              ; $5f38: $00
	nop                                              ; $5f39: $00
	rst $38                                          ; $5f3a: $ff
	ld a, a                                          ; $5f3b: $7f
	ccf                                              ; $5f3c: $3f
	inc bc                                           ; $5f3d: $03
	ld a, h                                          ; $5f3e: $7c
	ld bc, $0000                                     ; $5f3f: $01 $00 $00
	rst $38                                          ; $5f42: $ff
	ld a, a                                          ; $5f43: $7f

jr_02d_5f44:
	sbc c                                            ; $5f44: $99
	ld [hl-], a                                      ; $5f45: $32
	sub d                                            ; $5f46: $92
	ld bc, $0000                                     ; $5f47: $01 $00 $00
	rst $38                                          ; $5f4a: $ff
	ld a, a                                          ; $5f4b: $7f
	ld e, $45                                        ; $5f4c: $1e $45
	ld c, b                                          ; $5f4e: $48
	ld b, l                                          ; $5f4f: $45
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	rst $38                                          ; $5f52: $ff
	ld a, a                                          ; $5f53: $7f
	ccf                                              ; $5f54: $3f
	inc bc                                           ; $5f55: $03
	ld b, b                                          ; $5f56: $40
	ld [hl], c                                       ; $5f57: $71
	nop                                              ; $5f58: $00
	nop                                              ; $5f59: $00
	ccf                                              ; $5f5a: $3f
	sbc a                                            ; $5f5b: $9f
	inc bc                                           ; $5f5c: $03
	or d                                             ; $5f5d: $b2
	ld l, l                                          ; $5f5e: $6d
	call z, LCDCInterrupt                            ; $5f5f: $cc $48 $00
	nop                                              ; $5f62: $00
	sbc a                                            ; $5f63: $9f
	inc bc                                           ; $5f64: $03
	sbc l                                            ; $5f65: $9d
	ld bc, $48cc                                     ; $5f66: $01 $cc $48
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	sbc a                                            ; $5f6b: $9f
	inc bc                                           ; $5f6c: $03
	db $db                                           ; $5f6d: $db
	ld b, c                                          ; $5f6e: $41
	di                                               ; $5f6f: $f3
	jr z, jr_02d_5f72                                ; $5f70: $28 $00

jr_02d_5f72:
	nop                                              ; $5f72: $00
	sbc a                                            ; $5f73: $9f
	inc bc                                           ; $5f74: $03
	dec de                                           ; $5f75: $1b
	ld b, d                                          ; $5f76: $42
	ld [$0039], sp                                   ; $5f77: $08 $39 $00
	nop                                              ; $5f7a: $00
	sbc a                                            ; $5f7b: $9f
	inc bc                                           ; $5f7c: $03
	or d                                             ; $5f7d: $b2
	ld l, l                                          ; $5f7e: $6d
	call z, $a548                                    ; $5f7f: $cc $48 $a5
	jr nz, jr_02d_5f44                               ; $5f82: $20 $c0

	ld bc, $01c2                                     ; $5f84: $01 $c2 $01
	call nz, $c601                                   ; $5f87: $c4 $01 $c6
	ld bc, $3b3f                                     ; $5f8a: $01 $3f $3b
	ld d, [hl]                                       ; $5f8d: $56
	ld l, h                                          ; $5f8e: $6c
	ld [hl], c                                       ; $5f8f: $71
	ld h, b                                          ; $5f90: $60
	ld b, b                                          ; $5f91: $40
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	dec sp                                           ; $5f94: $3b
	ld d, [hl]                                       ; $5f95: $56
	ld de, $602d                                     ; $5f96: $11 $2d $60
	ld b, b                                          ; $5f99: $40
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	ld l, a                                          ; $5f9c: $6f
	halt                                             ; $5f9d: $76
	nop                                              ; $5f9e: $00
	ld h, l                                          ; $5f9f: $65
	ld h, b                                          ; $5fa0: $60
	ld b, b                                          ; $5fa1: $40
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	dec sp                                           ; $5fa4: $3b
	ld d, [hl]                                       ; $5fa5: $56
	ld l, h                                          ; $5fa6: $6c
	ld [hl], c                                       ; $5fa7: $71
	ld h, c                                          ; $5fa8: $61
	ld h, b                                          ; $5fa9: $60
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	dec c                                            ; $5fac: $0d
	ld h, e                                          ; $5fad: $63
	ld l, [hl]                                       ; $5fae: $6e
	add hl, sp                                       ; $5faf: $39
	ld h, b                                          ; $5fb0: $60
	ld b, b                                          ; $5fb1: $40
	nop                                              ; $5fb2: $00
	nop                                              ; $5fb3: $00
	dec sp                                           ; $5fb4: $3b
	ld d, [hl]                                       ; $5fb5: $56
	ld d, [hl]                                       ; $5fb6: $56
	dec d                                            ; $5fb7: $15
	ld h, b                                          ; $5fb8: $60
	ld b, b                                          ; $5fb9: $40
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	ccf                                              ; $5fbc: $3f
	rst $38                                          ; $5fbd: $ff
	ld a, a                                          ; $5fbe: $7f
	ld b, b                                          ; $5fbf: $40
	ld a, [hl]                                       ; $5fc0: $7e
	ldh [rSVBK], a                                   ; $5fc1: $e0 $70
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	rst $38                                          ; $5fc5: $ff
	ld a, a                                          ; $5fc6: $7f
	cp a                                             ; $5fc7: $bf
	add hl, sp                                       ; $5fc8: $39
	ldh [rSVBK], a                                   ; $5fc9: $e0 $70
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	rst $38                                          ; $5fcd: $ff
	ld a, a                                          ; $5fce: $7f
	cp a                                             ; $5fcf: $bf
	inc [hl]                                         ; $5fd0: $34
	dec d                                            ; $5fd1: $15
	inc c                                            ; $5fd2: $0c
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	rst $38                                          ; $5fd5: $ff
	ld a, a                                          ; $5fd6: $7f
	ld c, b                                          ; $5fd7: $48
	ld [bc], a                                       ; $5fd8: $02
	dec d                                            ; $5fd9: $15
	inc c                                            ; $5fda: $0c
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	rst $38                                          ; $5fdd: $ff
	ld a, a                                          ; $5fde: $7f
	xor [hl]                                         ; $5fdf: $ae
	dec [hl]                                         ; $5fe0: $35
	jp hl                                            ; $5fe1: $e9


	jr nz, jr_02d_5fe4                               ; $5fe2: $20 $00

jr_02d_5fe4:
	nop                                              ; $5fe4: $00
	rst $38                                          ; $5fe5: $ff
	ld a, a                                          ; $5fe6: $7f
	rst $38                                          ; $5fe7: $ff
	ld a, [bc]                                       ; $5fe8: $0a
	ret nz                                           ; $5fe9: $c0

	ld d, b                                          ; $5fea: $50
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	ccf                                              ; $5fed: $3f
	db $fc                                           ; $5fee: $fc
	ld [hl], a                                       ; $5fef: $77
	ret nz                                           ; $5ff0: $c0

	ld a, [hl-]                                      ; $5ff1: $3a
	xor $08                                          ; $5ff2: $ee $08
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	push af                                          ; $5ff6: $f5
	ld a, a                                          ; $5ff7: $7f
	ld l, d                                          ; $5ff8: $6a
	inc bc                                           ; $5ff9: $03
	ld [$0041], sp                                   ; $5ffa: $08 $41 $00
	nop                                              ; $5ffd: $00
	rst $38                                          ; $5ffe: $ff
	ld a, a                                          ; $5fff: $7f
	rst SubAFromDE                                          ; $6000: $df
	add hl, hl                                       ; $6001: $29
	ld h, d                                          ; $6002: $62
	ld a, [hl]                                       ; $6003: $7e
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	rst $38                                          ; $6006: $ff
	ld a, a                                          ; $6007: $7f
	rst SubAFromDE                                          ; $6008: $df
	add hl, hl                                       ; $6009: $29
	ld [$0041], sp                                   ; $600a: $08 $41 $00
	nop                                              ; $600d: $00
	rst FarCall                                          ; $600e: $f7
	ld a, a                                          ; $600f: $7f
	ld de, $0866                                     ; $6010: $11 $66 $08
	ld b, c                                          ; $6013: $41
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	rst FarCall                                          ; $6016: $f7
	ld a, a                                          ; $6017: $7f
	ld l, d                                          ; $6018: $6a
	inc bc                                           ; $6019: $03
	ld [hl], $0d                                     ; $601a: $36 $0d
	db $eb                                           ; $601c: $eb
	inc c                                            ; $601d: $0c
	ccf                                              ; $601e: $3f
	rst $38                                          ; $601f: $ff
	ld a, a                                          ; $6020: $7f
	ld sp, hl                                        ; $6021: $f9
	dec l                                            ; $6022: $2d
	adc b                                            ; $6023: $88
	ld c, l                                          ; $6024: $4d
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	rst $38                                          ; $6027: $ff
	ld a, a                                          ; $6028: $7f
	adc a                                            ; $6029: $8f
	ld [hl], d                                       ; $602a: $72
	dec sp                                           ; $602b: $3b
	ld hl, $20eb                                     ; $602c: $21 $eb $20
	rst $38                                          ; $602f: $ff
	ld a, a                                          ; $6030: $7f
	ld sp, hl                                        ; $6031: $f9
	dec l                                            ; $6032: $2d
	rst GetHLinHL                                          ; $6033: $cf
	jr nz, jr_02d_6036                               ; $6034: $20 $00

jr_02d_6036:
	nop                                              ; $6036: $00
	rst $38                                          ; $6037: $ff
	ld a, a                                          ; $6038: $7f
	ld sp, hl                                        ; $6039: $f9
	dec l                                            ; $603a: $2d
	rst SubAFromBC                                          ; $603b: $e7
	inc a                                            ; $603c: $3c
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	rst $38                                          ; $603f: $ff
	ld a, a                                          ; $6040: $7f
	adc a                                            ; $6041: $8f
	ld [hl], d                                       ; $6042: $72
	rst SubAFromBC                                          ; $6043: $e7
	inc a                                            ; $6044: $3c
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	rst $38                                          ; $6047: $ff
	ld a, a                                          ; $6048: $7f
	adc a                                            ; $6049: $8f
	ld [hl], d                                       ; $604a: $72
	adc b                                            ; $604b: $88
	ld c, l                                          ; $604c: $4d
	db $eb                                           ; $604d: $eb
	jr nz, jr_02d_608f                               ; $604e: $20 $3f

	rst $38                                          ; $6050: $ff
	ld a, a                                          ; $6051: $7f
	rst SubAFromDE                                          ; $6052: $df
	add hl, hl                                       ; $6053: $29
	ld [$0039], sp                                   ; $6054: $08 $39 $00
	nop                                              ; $6057: $00
	ld a, c                                          ; $6058: $79
	ld b, a                                          ; $6059: $47
	rst AddAOntoHL                                          ; $605a: $ef
	ld h, c                                          ; $605b: $61
	ld [$8539], sp                                   ; $605c: $08 $39 $85
	jr nz, @+$01                                     ; $605f: $20 $ff

	ld a, a                                          ; $6061: $7f
	rst SubAFromDE                                          ; $6062: $df
	add hl, hl                                       ; $6063: $29
	ld sp, hl                                        ; $6064: $f9
	inc e                                            ; $6065: $1c
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	ld sp, hl                                        ; $6068: $f9
	ld e, e                                          ; $6069: $5b
	rst AddAOntoHL                                          ; $606a: $ef
	ld h, c                                          ; $606b: $61
	ld e, $30                                        ; $606c: $1e $30
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	ld a, [hl-]                                      ; $6070: $3a
	ld a, a                                          ; $6071: $7f
	ld d, e                                          ; $6072: $53
	ld l, [hl]                                       ; $6073: $6e
	ld [$0039], sp                                   ; $6074: $08 $39 $00
	nop                                              ; $6077: $00
	ld a, c                                          ; $6078: $79
	ld b, a                                          ; $6079: $47
	sub e                                            ; $607a: $93
	ld [hl], $ad                                     ; $607b: $36 $ad
	ld sp, $20c7                                     ; $607d: $31 $c7 $20
	ccf                                              ; $6080: $3f
	rst $38                                          ; $6081: $ff
	ld a, a                                          ; $6082: $7f
	rst SubAFromDE                                          ; $6083: $df
	add hl, hl                                       ; $6084: $29
	add e                                            ; $6085: $83
	ld a, l                                          ; $6086: $7d
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	rst $38                                          ; $6089: $ff
	ld a, a                                          ; $608a: $7f
	sbc a                                            ; $608b: $9f
	ld [bc], a                                       ; $608c: $02
	ld c, h                                          ; $608d: $4c
	ld h, l                                          ; $608e: $65

jr_02d_608f:
	nop                                              ; $608f: $00
	nop                                              ; $6090: $00
	rst $38                                          ; $6091: $ff
	ld a, a                                          ; $6092: $7f
	dec [hl]                                         ; $6093: $35
	ld l, [hl]                                       ; $6094: $6e
	xor b                                            ; $6095: $a8
	ld b, b                                          ; $6096: $40
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	rst $38                                          ; $6099: $ff
	ld a, a                                          ; $609a: $7f
	rst SubAFromDE                                          ; $609b: $df
	add hl, hl                                       ; $609c: $29
	xor b                                            ; $609d: $a8
	ld b, b                                          ; $609e: $40
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	rst $38                                          ; $60a1: $ff
	ld a, a                                          ; $60a2: $7f
	sub b                                            ; $60a3: $90
	ld h, l                                          ; $60a4: $65
	add e                                            ; $60a5: $83
	ld a, l                                          ; $60a6: $7d
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	rst $38                                          ; $60a9: $ff
	ld a, a                                          ; $60aa: $7f
	adc $7e                                          ; $60ab: $ce $7e
	add e                                            ; $60ad: $83
	ld a, l                                          ; $60ae: $7d
	ld c, c                                          ; $60af: $49
	dec [hl]                                         ; $60b0: $35
	ccf                                              ; $60b1: $3f
	ld [hl], h                                       ; $60b2: $74
	ld h, a                                          ; $60b3: $67
	ld c, $5a                                        ; $60b4: $0e $5a
	add d                                            ; $60b6: $82
	inc h                                            ; $60b7: $24
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	ld [hl], h                                       ; $60ba: $74
	ld h, a                                          ; $60bb: $67
	ld h, e                                          ; $60bc: $63
	ld e, [hl]                                       ; $60bd: $5e
	ld b, b                                          ; $60be: $40
	add hl, sp                                       ; $60bf: $39
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	ld [hl], h                                       ; $60c2: $74
	ld h, a                                          ; $60c3: $67
	or h                                             ; $60c4: $b4
	add hl, hl                                       ; $60c5: $29
	pop de                                           ; $60c6: $d1
	inc d                                            ; $60c7: $14
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	ld [hl], h                                       ; $60ca: $74
	ld h, a                                          ; $60cb: $67
	or h                                             ; $60cc: $b4
	add hl, hl                                       ; $60cd: $29
	add $38                                          ; $60ce: $c6 $38
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	ld [hl], h                                       ; $60d2: $74
	ld h, a                                          ; $60d3: $67
	ld c, $5a                                        ; $60d4: $0e $5a
	add $38                                          ; $60d6: $c6 $38
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	ld [hl], h                                       ; $60da: $74
	ld h, a                                          ; $60db: $67
	nop                                              ; $60dc: $00
	ld a, $82                                        ; $60dd: $3e $82
	inc h                                            ; $60df: $24
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	ccf                                              ; $60e2: $3f
	db $dd                                           ; $60e3: $dd
	ld e, a                                          ; $60e4: $5f
	rst SubAFromDE                                          ; $60e5: $df
	add hl, hl                                       ; $60e6: $29
	ret                                              ; $60e7: $c9


	ld b, b                                          ; $60e8: $40
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	ld a, a                                          ; $60eb: $7f
	inc hl                                           ; $60ec: $23
	rst SubAFromDE                                          ; $60ed: $df
	add hl, hl                                       ; $60ee: $29
	ret                                              ; $60ef: $c9


	ld b, b                                          ; $60f0: $40
	nop                                              ; $60f1: $00
	nop                                              ; $60f2: $00
	rst $38                                          ; $60f3: $ff
	ld a, a                                          ; $60f4: $7f
	rst SubAFromDE                                          ; $60f5: $df
	add hl, hl                                       ; $60f6: $29
	ldh a, [c]                                       ; $60f7: $f2
	inc h                                            ; $60f8: $24
	nop                                              ; $60f9: $00
	nop                                              ; $60fa: $00
	rst $38                                          ; $60fb: $ff
	ld a, a                                          ; $60fc: $7f
	rst SubAFromDE                                          ; $60fd: $df
	add hl, hl                                       ; $60fe: $29
	ret                                              ; $60ff: $c9


	ld b, b                                          ; $6100: $40
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	db $dd                                           ; $6103: $dd
	ld e, a                                          ; $6104: $5f
	xor a                                            ; $6105: $af
	ld e, c                                          ; $6106: $59
	ret                                              ; $6107: $c9


	ld b, b                                          ; $6108: $40
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	ld a, a                                          ; $610b: $7f
	inc hl                                           ; $610c: $23
	ld c, d                                          ; $610d: $4a
	dec sp                                           ; $610e: $3b
	ld a, a                                          ; $610f: $7f
	jr nz, jr_02d_6112                               ; $6110: $20 $00

jr_02d_6112:
	nop                                              ; $6112: $00
	ccf                                              ; $6113: $3f
	rst $38                                          ; $6114: $ff
	ld a, a                                          ; $6115: $7f
	sub e                                            ; $6116: $93
	ld [hl], l                                       ; $6117: $75
	ld c, $74                                        ; $6118: $0e $74
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	rst $38                                          ; $611c: $ff
	ld a, a                                          ; $611d: $7f
	sub e                                            ; $611e: $93
	ld [hl], l                                       ; $611f: $75
	jr nz, jr_02d_6198                               ; $6120: $20 $76

	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	rst $38                                          ; $6124: $ff
	ld a, a                                          ; $6125: $7f
	sbc a                                            ; $6126: $9f
	ld b, l                                          ; $6127: $45
	ld c, $74                                        ; $6128: $0e $74
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	rst $38                                          ; $612c: $ff
	ld a, a                                          ; $612d: $7f
	sbc a                                            ; $612e: $9f
	ld b, l                                          ; $612f: $45
	add b                                            ; $6130: $80
	halt                                             ; $6131: $76
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	rst $38                                          ; $6134: $ff
	ld a, a                                          ; $6135: $7f
	sub e                                            ; $6136: $93
	ld [hl], l                                       ; $6137: $75
	jr nz, jr_02d_61b0                               ; $6138: $20 $76

	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	rst $38                                          ; $613c: $ff
	ld a, a                                          ; $613d: $7f
	rra                                              ; $613e: $1f
	inc bc                                           ; $613f: $03
	ld c, $74                                        ; $6140: $0e $74
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	ccf                                              ; $6144: $3f
	rst $38                                          ; $6145: $ff
	ld a, a                                          ; $6146: $7f

Call_02d_6147:
	sub e                                            ; $6147: $93
	ld [hl], l                                       ; $6148: $75
	ld c, $74                                        ; $6149: $0e $74
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	rst $38                                          ; $614d: $ff
	ld a, a                                          ; $614e: $7f
	sub e                                            ; $614f: $93
	ld [hl], l                                       ; $6150: $75
	jr nz, jr_02d_61c9                               ; $6151: $20 $76

	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	rst $38                                          ; $6155: $ff
	ld a, a                                          ; $6156: $7f
	sbc a                                            ; $6157: $9f
	ld b, l                                          ; $6158: $45
	ld c, $74                                        ; $6159: $0e $74
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	rst $38                                          ; $615d: $ff
	ld a, a                                          ; $615e: $7f
	sbc a                                            ; $615f: $9f
	ld b, l                                          ; $6160: $45
	jr nz, jr_02d_61d9                               ; $6161: $20 $76

	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	rst $38                                          ; $6165: $ff
	ld a, a                                          ; $6166: $7f
	sub e                                            ; $6167: $93
	ld [hl], l                                       ; $6168: $75
	jr nz, jr_02d_61e1                               ; $6169: $20 $76

	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	rst $38                                          ; $616d: $ff
	ld a, a                                          ; $616e: $7f
	rra                                              ; $616f: $1f
	inc bc                                           ; $6170: $03
	jr nz, jr_02d_61e9                               ; $6171: $20 $76

	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	ccf                                              ; $6175: $3f
	rst $38                                          ; $6176: $ff
	ld a, a                                          ; $6177: $7f
	sub e                                            ; $6178: $93
	ld [hl], l                                       ; $6179: $75
	ld c, $74                                        ; $617a: $0e $74
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	rst $38                                          ; $617e: $ff
	ld a, a                                          ; $617f: $7f
	sbc a                                            ; $6180: $9f
	ld b, l                                          ; $6181: $45
	ld c, $74                                        ; $6182: $0e $74
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	rst $38                                          ; $6186: $ff
	ld a, a                                          ; $6187: $7f
	sbc a                                            ; $6188: $9f
	ld b, l                                          ; $6189: $45
	ld h, d                                          ; $618a: $62
	ld a, [hl]                                       ; $618b: $7e
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	rst $38                                          ; $618e: $ff
	ld a, a                                          ; $618f: $7f
	sub e                                            ; $6190: $93
	ld [hl], l                                       ; $6191: $75
	ld h, d                                          ; $6192: $62
	ld a, [hl]                                       ; $6193: $7e
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	rst $38                                          ; $6196: $ff
	ld a, a                                          ; $6197: $7f

jr_02d_6198:
	db $dd                                           ; $6198: $dd
	dec h                                            ; $6199: $25
	db $ed                                           ; $619a: $ed
	inc e                                            ; $619b: $1c
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	ret nz                                           ; $619e: $c0

	ld bc, $01c2                                     ; $619f: $01 $c2 $01
	call nz, $c601                                   ; $61a2: $c4 $01 $c6
	ld bc, $ff3f                                     ; $61a5: $01 $3f $ff
	ld a, a                                          ; $61a8: $7f
	sub e                                            ; $61a9: $93
	ld [hl], l                                       ; $61aa: $75
	ld c, $74                                        ; $61ab: $0e $74
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	rst $38                                          ; $61af: $ff

jr_02d_61b0:
	ld a, a                                          ; $61b0: $7f
	sbc a                                            ; $61b1: $9f
	ld b, l                                          ; $61b2: $45
	ld c, $74                                        ; $61b3: $0e $74
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	rst $38                                          ; $61b7: $ff
	ld a, a                                          ; $61b8: $7f
	rst $38                                          ; $61b9: $ff
	dec l                                            ; $61ba: $2d
	ldh a, [$0c]                                     ; $61bb: $f0 $0c
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	rst $38                                          ; $61bf: $ff
	ld a, a                                          ; $61c0: $7f
	sbc a                                            ; $61c1: $9f
	ld b, l                                          ; $61c2: $45
	inc e                                            ; $61c3: $1c
	inc e                                            ; $61c4: $1c
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	rst $38                                          ; $61c7: $ff
	ld a, a                                          ; $61c8: $7f

jr_02d_61c9:
	rst $38                                          ; $61c9: $ff
	dec l                                            ; $61ca: $2d
	rst JumpTable                                          ; $61cb: $c7
	jr jr_02d_61ce                                   ; $61cc: $18 $00

jr_02d_61ce:
	nop                                              ; $61ce: $00
	ret nz                                           ; $61cf: $c0

	ld bc, $01c2                                     ; $61d0: $01 $c2 $01
	call nz, $c601                                   ; $61d3: $c4 $01 $c6
	ld bc, $cf3f                                     ; $61d6: $01 $3f $cf

jr_02d_61d9:
	dec l                                            ; $61d9: $2d
	and l                                            ; $61da: $a5
	dec a                                            ; $61db: $3d
	ld b, $50                                        ; $61dc: $06 $50
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	or a                                             ; $61e0: $b7

jr_02d_61e1:
	ld b, l                                          ; $61e1: $45
	db $eb                                           ; $61e2: $eb
	ld b, h                                          ; $61e3: $44
	ld b, $50                                        ; $61e4: $06 $50
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	or a                                             ; $61e8: $b7

jr_02d_61e9:
	ld b, l                                          ; $61e9: $45
	db $eb                                           ; $61ea: $eb
	ld b, h                                          ; $61eb: $44
	inc d                                            ; $61ec: $14
	dec d                                            ; $61ed: $15
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	add b                                            ; $61f0: $80
	ld e, l                                          ; $61f1: $5d
	and l                                            ; $61f2: $a5
	dec a                                            ; $61f3: $3d
	ld b, $50                                        ; $61f4: $06 $50
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	rst GetHLinHL                                          ; $61f8: $cf
	dec l                                            ; $61f9: $2d
	jp z, $0604                                      ; $61fa: $ca $04 $06

	ld d, b                                          ; $61fd: $50
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	ret nz                                           ; $6200: $c0

	ld bc, $01c2                                     ; $6201: $01 $c2 $01
	call nz, $c601                                   ; $6204: $c4 $01 $c6
	ld bc, $ff3f                                     ; $6207: $01 $3f $ff
	ld a, a                                          ; $620a: $7f
	sub e                                            ; $620b: $93
	ld [hl], l                                       ; $620c: $75
	ld c, $74                                        ; $620d: $0e $74
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	rst $38                                          ; $6211: $ff
	ld a, a                                          ; $6212: $7f
	jr z, jr_02d_626f                                ; $6213: $28 $5a

	db $eb                                           ; $6215: $eb
	inc e                                            ; $6216: $1c
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	rst $38                                          ; $6219: $ff
	ld a, a                                          ; $621a: $7f
	sbc a                                            ; $621b: $9f
	ld b, l                                          ; $621c: $45
	ld c, $74                                        ; $621d: $0e $74
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	rst $38                                          ; $6221: $ff
	ld a, a                                          ; $6222: $7f
	rra                                              ; $6223: $1f
	jr c, jr_02d_6233                                ; $6224: $38 $0d

	inc d                                            ; $6226: $14
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	rst $38                                          ; $6229: $ff
	ld a, a                                          ; $622a: $7f
	jr z, jr_02d_6287                                ; $622b: $28 $5a

	dec c                                            ; $622d: $0d
	inc d                                            ; $622e: $14
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	rst $38                                          ; $6231: $ff
	ld a, a                                          ; $6232: $7f

jr_02d_6233:
	jr z, jr_02d_628f                                ; $6233: $28 $5a

	rra                                              ; $6235: $1f
	jr c, jr_02d_6238                                ; $6236: $38 $00

jr_02d_6238:
	nop                                              ; $6238: $00
	ccf                                              ; $6239: $3f
	rst $38                                          ; $623a: $ff
	ld a, a                                          ; $623b: $7f
	sub e                                            ; $623c: $93
	ld [hl], l                                       ; $623d: $75
	ld c, $74                                        ; $623e: $0e $74
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	rst $38                                          ; $6242: $ff
	ld a, a                                          ; $6243: $7f
	jr z, jr_02d_62a0                                ; $6244: $28 $5a

	db $eb                                           ; $6246: $eb
	inc e                                            ; $6247: $1c
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	rst $38                                          ; $624a: $ff
	ld a, a                                          ; $624b: $7f
	sbc a                                            ; $624c: $9f
	ld b, l                                          ; $624d: $45
	ld c, $74                                        ; $624e: $0e $74
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	rst $38                                          ; $6252: $ff
	ld a, a                                          ; $6253: $7f
	and b                                            ; $6254: $a0
	ld a, l                                          ; $6255: $7d
	ld b, b                                          ; $6256: $40
	ld h, b                                          ; $6257: $60
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	rst $38                                          ; $625a: $ff
	ld a, a                                          ; $625b: $7f
	jr z, jr_02d_62b8                                ; $625c: $28 $5a

	ld b, b                                          ; $625e: $40
	ld h, b                                          ; $625f: $60
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	rst $38                                          ; $6262: $ff
	ld a, a                                          ; $6263: $7f
	jr z, jr_02d_62c0                                ; $6264: $28 $5a

	and b                                            ; $6266: $a0
	ld a, l                                          ; $6267: $7d
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	ccf                                              ; $626a: $3f
	rst $38                                          ; $626b: $ff
	ld a, a                                          ; $626c: $7f
	sub e                                            ; $626d: $93
	ld [hl], l                                       ; $626e: $75

jr_02d_626f:
	ld c, $74                                        ; $626f: $0e $74
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	rst $38                                          ; $6273: $ff
	ld a, a                                          ; $6274: $7f
	jr z, jr_02d_62d1                                ; $6275: $28 $5a

	db $eb                                           ; $6277: $eb
	inc e                                            ; $6278: $1c
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	rst $38                                          ; $627b: $ff
	ld a, a                                          ; $627c: $7f
	sbc a                                            ; $627d: $9f
	ld b, l                                          ; $627e: $45
	ld c, $74                                        ; $627f: $0e $74
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	rst $38                                          ; $6283: $ff
	ld a, a                                          ; $6284: $7f
	ld d, $21                                        ; $6285: $16 $21

jr_02d_6287:
	ld l, h                                          ; $6287: $6c
	inc c                                            ; $6288: $0c
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	rst $38                                          ; $628b: $ff
	ld a, a                                          ; $628c: $7f
	jr z, jr_02d_62e9                                ; $628d: $28 $5a

jr_02d_628f:
	ld l, h                                          ; $628f: $6c
	inc c                                            ; $6290: $0c
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	rst $38                                          ; $6293: $ff
	ld a, a                                          ; $6294: $7f
	jr z, jr_02d_62f1                                ; $6295: $28 $5a

	ld d, $21                                        ; $6297: $16 $21
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	ccf                                              ; $629b: $3f
	rst $38                                          ; $629c: $ff
	ld a, a                                          ; $629d: $7f
	sub e                                            ; $629e: $93
	ld [hl], l                                       ; $629f: $75

jr_02d_62a0:
	ld c, $74                                        ; $62a0: $0e $74
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	rst $38                                          ; $62a4: $ff
	ld a, a                                          ; $62a5: $7f
	sbc a                                            ; $62a6: $9f
	ld b, l                                          ; $62a7: $45
	ld c, $74                                        ; $62a8: $0e $74
	nop                                              ; $62aa: $00
	nop                                              ; $62ab: $00
	rst $38                                          ; $62ac: $ff
	ld a, a                                          ; $62ad: $7f
	sub e                                            ; $62ae: $93
	ld [hl], l                                       ; $62af: $75
	jp hl                                            ; $62b0: $e9


	inc h                                            ; $62b1: $24
	nop                                              ; $62b2: $00
	nop                                              ; $62b3: $00
	rst $38                                          ; $62b4: $ff
	ld a, a                                          ; $62b5: $7f
	sbc a                                            ; $62b6: $9f
	dec de                                           ; $62b7: $1b

jr_02d_62b8:
	jp hl                                            ; $62b8: $e9


	inc h                                            ; $62b9: $24
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	rst $38                                          ; $62bc: $ff
	ld a, a                                          ; $62bd: $7f
	sbc b                                            ; $62be: $98
	ld c, c                                          ; $62bf: $49

jr_02d_62c0:
	jp hl                                            ; $62c0: $e9


	inc h                                            ; $62c1: $24
	nop                                              ; $62c2: $00
	nop                                              ; $62c3: $00
	sbc a                                            ; $62c4: $9f
	inc sp                                           ; $62c5: $33
	sbc b                                            ; $62c6: $98
	ld c, c                                          ; $62c7: $49
	rst $38                                          ; $62c8: $ff
	ld a, a                                          ; $62c9: $7f
	nop                                              ; $62ca: $00
	nop                                              ; $62cb: $00
	ccf                                              ; $62cc: $3f
	rst $38                                          ; $62cd: $ff
	ld a, a                                          ; $62ce: $7f
	sub e                                            ; $62cf: $93
	ld [hl], l                                       ; $62d0: $75

jr_02d_62d1:
	ld c, $74                                        ; $62d1: $0e $74
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	rst $38                                          ; $62d5: $ff
	ld a, a                                          ; $62d6: $7f
	sbc a                                            ; $62d7: $9f
	ld b, l                                          ; $62d8: $45
	add hl, de                                       ; $62d9: $19
	inc h                                            ; $62da: $24
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	rst $38                                          ; $62dd: $ff
	ld a, a                                          ; $62de: $7f
	sbc a                                            ; $62df: $9f
	ld b, l                                          ; $62e0: $45
	ld c, $74                                        ; $62e1: $0e $74
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	rst $38                                          ; $62e5: $ff
	ld a, a                                          ; $62e6: $7f
	sbc a                                            ; $62e7: $9f
	ld b, l                                          ; $62e8: $45

jr_02d_62e9:
	ld h, h                                          ; $62e9: $64
	ld [hl+], a                                      ; $62ea: $22
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	rst $38                                          ; $62ed: $ff
	ld a, a                                          ; $62ee: $7f
	sbc a                                            ; $62ef: $9f
	ld b, l                                          ; $62f0: $45

jr_02d_62f1:
	ld e, h                                          ; $62f1: $5c
	ld [hl+], a                                      ; $62f2: $22
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	rst $38                                          ; $62f5: $ff
	ld a, a                                          ; $62f6: $7f
	ld e, h                                          ; $62f7: $5c
	ld [hl+], a                                      ; $62f8: $22
	ld c, $74                                        ; $62f9: $0e $74
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	ccf                                              ; $62fd: $3f
	rst $38                                          ; $62fe: $ff
	ld a, a                                          ; $62ff: $7f
	dec de                                           ; $6300: $1b
	ld a, [de]                                       ; $6301: $1a
	pop af                                           ; $6302: $f1
	inc c                                            ; $6303: $0c
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	rst $38                                          ; $6306: $ff
	ld a, a                                          ; $6307: $7f
	rst SubAFromDE                                          ; $6308: $df
	add hl, hl                                       ; $6309: $29
	jr nz, jr_02d_638a                               ; $630a: $20 $7e

	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	rst SubAFromHL                                          ; $630e: $d7
	ld a, a                                          ; $630f: $7f
	xor h                                            ; $6310: $ac
	halt                                             ; $6311: $76
	pop af                                           ; $6312: $f1
	inc c                                            ; $6313: $0c
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	rst $38                                          ; $6316: $ff
	ld a, a                                          ; $6317: $7f
	rst SubAFromDE                                          ; $6318: $df
	add hl, hl                                       ; $6319: $29
	dec sp                                           ; $631a: $3b
	inc c                                            ; $631b: $0c
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	ld a, a                                          ; $631e: $7f
	ld b, a                                          ; $631f: $47
	xor h                                            ; $6320: $ac
	halt                                             ; $6321: $76
	ret nz                                           ; $6322: $c0

	ld a, l                                          ; $6323: $7d
	nop                                              ; $6324: $00
	inc d                                            ; $6325: $14
	rst $38                                          ; $6326: $ff
	ld a, a                                          ; $6327: $7f
	xor h                                            ; $6328: $ac
	halt                                             ; $6329: $76
	ld bc, $0035                                     ; $632a: $01 $35 $00
	nop                                              ; $632d: $00
	ccf                                              ; $632e: $3f
	or $53                                           ; $632f: $f6 $53
	rst SubAFromDE                                          ; $6331: $df
	add hl, hl                                       ; $6332: $29
	pop bc                                           ; $6333: $c1
	ld bc, $00a3                                     ; $6334: $01 $a3 $00
	or $53                                           ; $6337: $f6 $53
	inc d                                            ; $6339: $14
	ld h, [hl]                                       ; $633a: $66
	ret                                              ; $633b: $c9


	ld c, b                                          ; $633c: $48
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	rst $38                                          ; $633f: $ff
	ld a, a                                          ; $6340: $7f
	rst SubAFromDE                                          ; $6341: $df
	add hl, hl                                       ; $6342: $29
	ret                                              ; $6343: $c9


	ld c, b                                          ; $6344: $48
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	rst $38                                          ; $6347: $ff
	ld a, a                                          ; $6348: $7f
	rst SubAFromDE                                          ; $6349: $df
	add hl, hl                                       ; $634a: $29
	dec sp                                           ; $634b: $3b
	inc c                                            ; $634c: $0c
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	rst $38                                          ; $634f: $ff
	ld a, a                                          ; $6350: $7f
	rst SubAFromDE                                          ; $6351: $df
	add hl, hl                                       ; $6352: $29
	ld b, c                                          ; $6353: $41
	ld d, c                                          ; $6354: $51
	ld h, b                                          ; $6355: $60
	jr @+$01                                         ; $6356: $18 $ff

	ld a, a                                          ; $6358: $7f
	adc h                                            ; $6359: $8c
	dec hl                                           ; $635a: $2b
	ld bc, $6052                                     ; $635b: $01 $52 $60
	jr @+$41                                         ; $635e: $18 $3f

	rst $38                                          ; $6360: $ff
	ld a, a                                          ; $6361: $7f
	rst SubAFromDE                                          ; $6362: $df
	ld [de], a                                       ; $6363: $12
	di                                               ; $6364: $f3
	inc b                                            ; $6365: $04
	xor c                                            ; $6366: $a9
	db $10                                           ; $6367: $10
	or l                                             ; $6368: $b5
	ld a, a                                          ; $6369: $7f
	rst SubAFromDE                                          ; $636a: $df
	ld [de], a                                       ; $636b: $12
	ld e, b                                          ; $636c: $58
	ld bc, $0000                                     ; $636d: $01 $00 $00
	or l                                             ; $6370: $b5
	ld a, a                                          ; $6371: $7f
	ld c, e                                          ; $6372: $4b
	ld l, [hl]                                       ; $6373: $6e
	dec sp                                           ; $6374: $3b
	inc c                                            ; $6375: $0c
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	rst $38                                          ; $6378: $ff
	ld a, a                                          ; $6379: $7f
	rst SubAFromDE                                          ; $637a: $df
	add hl, hl                                       ; $637b: $29
	dec sp                                           ; $637c: $3b
	inc c                                            ; $637d: $0c
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	rst $38                                          ; $6380: $ff
	ld a, a                                          ; $6381: $7f
	rst SubAFromDE                                          ; $6382: $df
	ld [de], a                                       ; $6383: $12
	dec e                                            ; $6384: $1d
	add hl, hl                                       ; $6385: $29
	xor c                                            ; $6386: $a9
	db $10                                           ; $6387: $10
	or l                                             ; $6388: $b5
	ld a, a                                          ; $6389: $7f

jr_02d_638a:
	rrca                                             ; $638a: $0f
	ld l, [hl]                                       ; $638b: $6e
	xor d                                            ; $638c: $aa
	ld b, h                                          ; $638d: $44
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	ccf                                              ; $6390: $3f
	rst $38                                          ; $6391: $ff
	ld a, e                                          ; $6392: $7b
	rra                                              ; $6393: $1f
	dec bc                                           ; $6394: $0b
	xor [hl]                                         ; $6395: $ae
	dec d                                            ; $6396: $15
	and e                                            ; $6397: $a3
	nop                                              ; $6398: $00
	cp $73                                           ; $6399: $fe $73
	rst SubAFromDE                                          ; $639b: $df
	add hl, hl                                       ; $639c: $29
	rrca                                             ; $639d: $0f
	ld d, $00                                        ; $639e: $16 $00
	nop                                              ; $63a0: $00
	rst $38                                          ; $63a1: $ff
	ld h, e                                          ; $63a2: $63
	rst SubAFromDE                                          ; $63a3: $df
	add hl, hl                                       ; $63a4: $29
	adc a                                            ; $63a5: $8f
	ld e, h                                          ; $63a6: $5c
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	rst $38                                          ; $63a9: $ff
	ld a, a                                          ; $63aa: $7f
	rst SubAFromDE                                          ; $63ab: $df
	add hl, hl                                       ; $63ac: $29
	dec sp                                           ; $63ad: $3b
	inc c                                            ; $63ae: $0c
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	rst $38                                          ; $63b1: $ff
	ld a, a                                          ; $63b2: $7f
	rst SubAFromDE                                          ; $63b3: $df
	add hl, hl                                       ; $63b4: $29
	ld h, c                                          ; $63b5: $61
	ld d, b                                          ; $63b6: $50
	nop                                              ; $63b7: $00
	nop                                              ; $63b8: $00
	cp $73                                           ; $63b9: $fe $73
	sbc a                                            ; $63bb: $9f
	add hl, bc                                       ; $63bc: $09
	add b                                            ; $63bd: $80
	ld [hl+], a                                      ; $63be: $22
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	ccf                                              ; $63c1: $3f
	rst $38                                          ; $63c2: $ff
	ld a, e                                          ; $63c3: $7b
	ccf                                              ; $63c4: $3f
	ld [bc], a                                       ; $63c5: $02
	ld d, a                                          ; $63c6: $57
	ld bc, $0060                                     ; $63c7: $01 $60 $00
	rst $38                                          ; $63ca: $ff
	ld a, e                                          ; $63cb: $7b
	and [hl]                                         ; $63cc: $a6
	ld e, e                                          ; $63cd: $5b
	dec sp                                           ; $63ce: $3b
	inc c                                            ; $63cf: $0c
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	rst $38                                          ; $63d2: $ff
	ld a, a                                          ; $63d3: $7f
	rst SubAFromDE                                          ; $63d4: $df
	add hl, hl                                       ; $63d5: $29
	jr nz, jr_02d_63db                               ; $63d6: $20 $03

	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	rst $38                                          ; $63da: $ff

jr_02d_63db:
	ld a, a                                          ; $63db: $7f
	rst SubAFromDE                                          ; $63dc: $df
	add hl, hl                                       ; $63dd: $29
	dec sp                                           ; $63de: $3b
	inc c                                            ; $63df: $0c
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	rst $38                                          ; $63e2: $ff
	ld a, a                                          ; $63e3: $7f
	and [hl]                                         ; $63e4: $a6
	ld e, e                                          ; $63e5: $5b
	ldh [$39], a                                     ; $63e6: $e0 $39
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	rst $38                                          ; $63ea: $ff
	ld a, a                                          ; $63eb: $7f
	and [hl]                                         ; $63ec: $a6
	ld e, e                                          ; $63ed: $5b
	ldh [$39], a                                     ; $63ee: $e0 $39
	xor c                                            ; $63f0: $a9
	db $10                                           ; $63f1: $10
	ccf                                              ; $63f2: $3f
	rst $38                                          ; $63f3: $ff
	ld a, a                                          ; $63f4: $7f
	ld c, h                                          ; $63f5: $4c
	ld h, a                                          ; $63f6: $67
	xor $1c                                          ; $63f7: $ee $1c
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	rst $38                                          ; $63fb: $ff
	ld a, a                                          ; $63fc: $7f
	rst SubAFromDE                                          ; $63fd: $df
	add hl, hl                                       ; $63fe: $29
	xor $1c                                          ; $63ff: $ee $1c
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	rst $38                                          ; $6403: $ff
	ld a, a                                          ; $6404: $7f
	ld c, h                                          ; $6405: $4c
	ld h, a                                          ; $6406: $67
	dec sp                                           ; $6407: $3b
	inc c                                            ; $6408: $0c
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	rst $38                                          ; $640b: $ff
	ld a, a                                          ; $640c: $7f
	rst SubAFromDE                                          ; $640d: $df
	add hl, hl                                       ; $640e: $29
	dec sp                                           ; $640f: $3b
	inc c                                            ; $6410: $0c
	nop                                              ; $6411: $00
	nop                                              ; $6412: $00
	rst $38                                          ; $6413: $ff

Call_02d_6414:
	ld a, a                                          ; $6414: $7f
	ld l, $6e                                        ; $6415: $2e $6e
	jr nc, jr_02d_643e                               ; $6417: $30 $25

	and l                                            ; $6419: $a5
	inc d                                            ; $641a: $14
	rst $38                                          ; $641b: $ff
	ld a, a                                          ; $641c: $7f
	ld c, h                                          ; $641d: $4c
	ld h, a                                          ; $641e: $67
	ret nz                                           ; $641f: $c0

	add hl, sp                                       ; $6420: $39
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	ccf                                              ; $6423: $3f
	rst $38                                          ; $6424: $ff
	ld a, a                                          ; $6425: $7f
	ld d, d                                          ; $6426: $52
	ld l, d                                          ; $6427: $6a
	xor l                                            ; $6428: $ad
	ld c, c                                          ; $6429: $49
	rlca                                             ; $642a: $07
	dec l                                            ; $642b: $2d
	rst $38                                          ; $642c: $ff
	dec bc                                           ; $642d: $0b
	rst $38                                          ; $642e: $ff
	dec h                                            ; $642f: $25
	add b                                            ; $6430: $80
	ld b, $00                                        ; $6431: $06 $00
	nop                                              ; $6433: $00
	rst $38                                          ; $6434: $ff
	ld a, a                                          ; $6435: $7f
	ld d, d                                          ; $6436: $52
	ld l, d                                          ; $6437: $6a
	rst FarCall                                          ; $6438: $f7
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	nop                                              ; $643b: $00
	rst $38                                          ; $643c: $ff
	ld a, a                                          ; $643d: $7f

jr_02d_643e:
	rst $38                                          ; $643e: $ff
	dec h                                            ; $643f: $25
	rst FarCall                                          ; $6440: $f7
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	rst $38                                          ; $6444: $ff
	ld a, a                                          ; $6445: $7f
	ld h, d                                          ; $6446: $62
	ld a, [hl]                                       ; $6447: $7e
	jr nz, jr_02d_64b3                               ; $6448: $20 $69

	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	rst $38                                          ; $644c: $ff
	ld a, a                                          ; $644d: $7f
	rst $38                                          ; $644e: $ff
	dec h                                            ; $644f: $25
	jr nz, jr_02d_64bb                               ; $6450: $20 $69

	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	ccf                                              ; $6454: $3f
	rst $38                                          ; $6455: $ff
	ld a, a                                          ; $6456: $7f
	sbc d                                            ; $6457: $9a
	ld d, d                                          ; $6458: $52
	rst FarCall                                          ; $6459: $f7
	nop                                              ; $645a: $00
	dec h                                            ; $645b: $25
	dec [hl]                                         ; $645c: $35
	rst $38                                          ; $645d: $ff
	ld a, a                                          ; $645e: $7f
	db $f4                                           ; $645f: $f4
	ld l, d                                          ; $6460: $6a
	ldh [$79], a                                     ; $6461: $e0 $79
	dec h                                            ; $6463: $25
	dec [hl]                                         ; $6464: $35
	rst $38                                          ; $6465: $ff
	ld a, a                                          ; $6466: $7f
	rst $38                                          ; $6467: $ff
	dec h                                            ; $6468: $25
	dec e                                            ; $6469: $1d
	inc a                                            ; $646a: $3c
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	rst $38                                          ; $646d: $ff
	ld a, a                                          ; $646e: $7f
	rst $38                                          ; $646f: $ff
	dec h                                            ; $6470: $25
	rst FarCall                                          ; $6471: $f7
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	rst $38                                          ; $6475: $ff
	ld a, a                                          ; $6476: $7f
	ld l, e                                          ; $6477: $6b
	ld a, a                                          ; $6478: $7f
	ldh [$79], a                                     ; $6479: $e0 $79
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	cp a                                             ; $647d: $bf
	dec bc                                           ; $647e: $0b
	rst $38                                          ; $647f: $ff
	dec h                                            ; $6480: $25
	ldh [$79], a                                     ; $6481: $e0 $79
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	ccf                                              ; $6485: $3f
	rst $38                                          ; $6486: $ff
	ld a, a                                          ; $6487: $7f
	rrca                                             ; $6488: $0f
	ld l, e                                          ; $6489: $6b
	xor d                                            ; $648a: $aa
	ld c, c                                          ; $648b: $49
	push hl                                          ; $648c: $e5
	inc h                                            ; $648d: $24
	rst $38                                          ; $648e: $ff
	inc hl                                           ; $648f: $23
	rrca                                             ; $6490: $0f
	ld l, e                                          ; $6491: $6b
	add b                                            ; $6492: $80
	ld h, l                                          ; $6493: $65
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	rst $38                                          ; $6496: $ff
	ld a, a                                          ; $6497: $7f
	rst $38                                          ; $6498: $ff
	dec h                                            ; $6499: $25
	add b                                            ; $649a: $80
	ld h, l                                          ; $649b: $65
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	rst $38                                          ; $649e: $ff
	ld a, a                                          ; $649f: $7f
	rst $38                                          ; $64a0: $ff
	dec h                                            ; $64a1: $25
	rst FarCall                                          ; $64a2: $f7
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	rst $38                                          ; $64a6: $ff
	ld a, a                                          ; $64a7: $7f
	rrca                                             ; $64a8: $0f
	ld l, e                                          ; $64a9: $6b
	add b                                            ; $64aa: $80
	ld h, l                                          ; $64ab: $65
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	rst $38                                          ; $64ae: $ff
	inc hl                                           ; $64af: $23
	rst $38                                          ; $64b0: $ff
	dec h                                            ; $64b1: $25
	add b                                            ; $64b2: $80

jr_02d_64b3:
	ld h, l                                          ; $64b3: $65
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	ccf                                              ; $64b6: $3f
	rst $38                                          ; $64b7: $ff
	ld a, a                                          ; $64b8: $7f
	xor h                                            ; $64b9: $ac
	ld d, a                                          ; $64ba: $57

jr_02d_64bb:
	jr nz, jr_02d_651f                               ; $64bb: $20 $62

	ld b, b                                          ; $64bd: $40
	dec l                                            ; $64be: $2d
	rst $38                                          ; $64bf: $ff
	ld a, a                                          ; $64c0: $7f
	adc e                                            ; $64c1: $8b
	ld b, a                                          ; $64c2: $47
	rra                                              ; $64c3: $1f
	ld b, b                                          ; $64c4: $40
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	rst $38                                          ; $64c7: $ff
	ld a, a                                          ; $64c8: $7f
	sub h                                            ; $64c9: $94
	ld l, d                                          ; $64ca: $6a
	ld a, [$0014]                                    ; $64cb: $fa $14 $00
	nop                                              ; $64ce: $00
	rst $38                                          ; $64cf: $ff
	ld a, a                                          ; $64d0: $7f
	rst $38                                          ; $64d1: $ff
	dec h                                            ; $64d2: $25
	rst FarCall                                          ; $64d3: $f7
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	rst $38                                          ; $64d7: $ff
	ld a, a                                          ; $64d8: $7f
	ld l, e                                          ; $64d9: $6b
	ld a, a                                          ; $64da: $7f
	ldh [$79], a                                     ; $64db: $e0 $79
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	rst $38                                          ; $64df: $ff
	ld a, a                                          ; $64e0: $7f
	rst $38                                          ; $64e1: $ff
	dec h                                            ; $64e2: $25
	and b                                            ; $64e3: $a0
	ld l, [hl]                                       ; $64e4: $6e
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	ccf                                              ; $64e7: $3f
	rst $38                                          ; $64e8: $ff
	ld a, a                                          ; $64e9: $7f
	add $7e                                          ; $64ea: $c6 $7e
	ld b, b                                          ; $64ec: $40
	ld d, l                                          ; $64ed: $55
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	rst $38                                          ; $64f0: $ff
	ld a, a                                          ; $64f1: $7f
	rst $38                                          ; $64f2: $ff
	dec h                                            ; $64f3: $25
	sub b                                            ; $64f4: $90
	ld a, [hl-]                                      ; $64f5: $3a
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	rst $38                                          ; $64f8: $ff
	ld a, a                                          ; $64f9: $7f
	rst $38                                          ; $64fa: $ff
	ld [bc], a                                       ; $64fb: $02
	inc e                                            ; $64fc: $1c
	ld b, h                                          ; $64fd: $44
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	rst $38                                          ; $6500: $ff
	ld a, a                                          ; $6501: $7f
	rst $38                                          ; $6502: $ff
	dec h                                            ; $6503: $25
	rst FarCall                                          ; $6504: $f7
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	rst $38                                          ; $6508: $ff
	ld a, a                                          ; $6509: $7f
	rst SubAFromDE                                          ; $650a: $df
	ld e, l                                          ; $650b: $5d
	inc e                                            ; $650c: $1c
	ld b, h                                          ; $650d: $44
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	rst $38                                          ; $6510: $ff
	ld a, a                                          ; $6511: $7f
	xor a                                            ; $6512: $af
	inc bc                                           ; $6513: $03
	ret nz                                           ; $6514: $c0

	add hl, bc                                       ; $6515: $09
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	ccf                                              ; $6518: $3f
	halt                                             ; $6519: $76
	ld l, a                                          ; $651a: $6f
	sub d                                            ; $651b: $92
	ld e, c                                          ; $651c: $59
	jr nz, jr_02d_6558                               ; $651d: $20 $39

jr_02d_651f:
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	rst $38                                          ; $6521: $ff
	ld a, a                                          ; $6522: $7f
	rst $38                                          ; $6523: $ff
	dec h                                            ; $6524: $25
	jr nz, jr_02d_6560                               ; $6525: $20 $39

	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	rst $38                                          ; $6529: $ff
	dec bc                                           ; $652a: $0b
	rst $38                                          ; $652b: $ff
	dec h                                            ; $652c: $25
	ld [hl], $01                                     ; $652d: $36 $01
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	rst $38                                          ; $6531: $ff
	ld a, a                                          ; $6532: $7f
	rst $38                                          ; $6533: $ff
	dec h                                            ; $6534: $25
	rst FarCall                                          ; $6535: $f7
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	rst $38                                          ; $6539: $ff
	ld a, a                                          ; $653a: $7f
	sub d                                            ; $653b: $92
	ld e, c                                          ; $653c: $59
	ld [$0048], a                                    ; $653d: $ea $48 $00
	nop                                              ; $6540: $00
	rst $38                                          ; $6541: $ff
	ld a, a                                          ; $6542: $7f
	sub d                                            ; $6543: $92
	ld e, c                                          ; $6544: $59
	rst FarCall                                          ; $6545: $f7
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	rra                                              ; $6549: $1f
	rst $38                                          ; $654a: $ff
	ld a, a                                          ; $654b: $7f
	ld [hl], a                                       ; $654c: $77
	ld a, a                                          ; $654d: $7f
	adc h                                            ; $654e: $8c
	ld [hl], d                                       ; $654f: $72
	db $eb                                           ; $6550: $eb
	ld c, l                                          ; $6551: $4d
	rst $38                                          ; $6552: $ff
	ld a, a                                          ; $6553: $7f
	adc h                                            ; $6554: $8c
	ld [hl], d                                       ; $6555: $72
	rst SubAFromHL                                          ; $6556: $d7
	dec l                                            ; $6557: $2d

jr_02d_6558:
	ld [$ff1d], sp                                   ; $6558: $08 $1d $ff
	ld a, a                                          ; $655b: $7f
	db $dd                                           ; $655c: $dd
	ld a, $ae                                        ; $655d: $3e $ae
	ld e, [hl]                                       ; $655f: $5e

jr_02d_6560:
	rst SubAFromHL                                          ; $6560: $d7
	dec l                                            ; $6561: $2d
	rst $38                                          ; $6562: $ff
	ld a, a                                          ; $6563: $7f
	db $dd                                           ; $6564: $dd
	ld a, $77                                        ; $6565: $3e $77
	ld a, a                                          ; $6567: $7f
	rst SubAFromHL                                          ; $6568: $d7
	dec l                                            ; $6569: $2d
	ld [hl], a                                       ; $656a: $77
	ld a, a                                          ; $656b: $7f
	db $dd                                           ; $656c: $dd
	ld a, $d7                                        ; $656d: $3e $d7
	dec l                                            ; $656f: $2d
	ld [$3f1d], sp                                   ; $6570: $08 $1d $3f
	rst $38                                          ; $6573: $ff
	ld a, a                                          ; $6574: $7f
	rst $38                                          ; $6575: $ff
	dec h                                            ; $6576: $25
	push de                                          ; $6577: $d5
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	rst $38                                          ; $657b: $ff
	ld a, a                                          ; $657c: $7f
	ld h, d                                          ; $657d: $62
	ld a, [hl]                                       ; $657e: $7e
	nop                                              ; $657f: $00
	ld h, c                                          ; $6580: $61
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	rst $38                                          ; $6583: $ff
	ld a, a                                          ; $6584: $7f
	rst $38                                          ; $6585: $ff
	dec h                                            ; $6586: $25
	nop                                              ; $6587: $00
	ld h, c                                          ; $6588: $61
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	rst $38                                          ; $658b: $ff
	ld a, a                                          ; $658c: $7f
	xor h                                            ; $658d: $ac
	ld [bc], a                                       ; $658e: $02
	ld h, [hl]                                       ; $658f: $66
	ld bc, $0000                                     ; $6590: $01 $00 $00
	rst $38                                          ; $6593: $ff
	ld a, a                                          ; $6594: $7f
	ld h, d                                          ; $6595: $62
	ld a, [hl]                                       ; $6596: $7e
	ld h, [hl]                                       ; $6597: $66
	ld bc, $0000                                     ; $6598: $01 $00 $00
	rst $38                                          ; $659b: $ff
	ld a, a                                          ; $659c: $7f
	ei                                               ; $659d: $fb
	ld bc, $6100                                     ; $659e: $01 $00 $61
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	ccf                                              ; $65a3: $3f
	rst $38                                          ; $65a4: $ff
	ld a, a                                          ; $65a5: $7f
	ld d, c                                          ; $65a6: $51
	ld h, [hl]                                       ; $65a7: $66
	jr z, @+$43                                      ; $65a8: $28 $41

	ret z                                            ; $65aa: $c8

	db $10                                           ; $65ab: $10
	rst $38                                          ; $65ac: $ff
	dec hl                                           ; $65ad: $2b
	rst $38                                          ; $65ae: $ff
	dec h                                            ; $65af: $25
	nop                                              ; $65b0: $00
	ld h, c                                          ; $65b1: $61
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	rst $38                                          ; $65b4: $ff
	ld a, a                                          ; $65b5: $7f
	ld h, d                                          ; $65b6: $62
	ld a, [hl]                                       ; $65b7: $7e
	jr z, jr_02d_65fb                                ; $65b8: $28 $41

	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	rst $38                                          ; $65bc: $ff
	ld a, a                                          ; $65bd: $7f
	rst $38                                          ; $65be: $ff
	dec h                                            ; $65bf: $25
	push de                                          ; $65c0: $d5
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	rst $38                                          ; $65c4: $ff
	ld a, a                                          ; $65c5: $7f
	ld h, d                                          ; $65c6: $62
	ld a, [hl]                                       ; $65c7: $7e
	nop                                              ; $65c8: $00
	ld h, c                                          ; $65c9: $61
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	rst $38                                          ; $65cc: $ff
	ld a, a                                          ; $65cd: $7f
	rst $38                                          ; $65ce: $ff
	dec h                                            ; $65cf: $25
	nop                                              ; $65d0: $00
	ld h, c                                          ; $65d1: $61
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	ccf                                              ; $65d4: $3f
	rst $38                                          ; $65d5: $ff
	ld a, a                                          ; $65d6: $7f
	rst $38                                          ; $65d7: $ff
	dec h                                            ; $65d8: $25
	push de                                          ; $65d9: $d5
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	rst $38                                          ; $65dd: $ff
	ld a, a                                          ; $65de: $7f
	rst $38                                          ; $65df: $ff
	dec h                                            ; $65e0: $25
	add $28                                          ; $65e1: $c6 $28
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	rst $38                                          ; $65e5: $ff
	ld a, a                                          ; $65e6: $7f
	ld sp, $c656                                     ; $65e7: $31 $56 $c6
	jr z, jr_02d_65ec                                ; $65ea: $28 $00

jr_02d_65ec:
	nop                                              ; $65ec: $00
	rst $38                                          ; $65ed: $ff
	ld a, a                                          ; $65ee: $7f
	ld sp, $7656                                     ; $65ef: $31 $56 $76
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	rst $38                                          ; $65f5: $ff
	ld a, a                                          ; $65f6: $7f
	ld sp, $4156                                     ; $65f7: $31 $56 $41
	ld d, l                                          ; $65fa: $55

jr_02d_65fb:
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	rst $38                                          ; $65fd: $ff
	ld a, a                                          ; $65fe: $7f
	sub [hl]                                         ; $65ff: $96
	ld [de], a                                       ; $6600: $12
	or b                                             ; $6601: $b0
	ld de, $0001                                     ; $6602: $11 $01 $00
	ccf                                              ; $6605: $3f
	rst $38                                          ; $6606: $ff
	ld a, a                                          ; $6607: $7f
	jp nz, $c07e                                     ; $6608: $c2 $7e $c0

	dec d                                            ; $660b: $15
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	rst $38                                          ; $660e: $ff
	rrca                                             ; $660f: $0f
	ld a, a                                          ; $6610: $7f
	ld [bc], a                                       ; $6611: $02
	ret nz                                           ; $6612: $c0

	dec d                                            ; $6613: $15
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	rst $38                                          ; $6616: $ff
	rrca                                             ; $6617: $0f
	ld a, a                                          ; $6618: $7f
	ld [bc], a                                       ; $6619: $02
	ld a, l                                          ; $661a: $7d
	ld bc, $0000                                     ; $661b: $01 $00 $00
	rst $38                                          ; $661e: $ff
	ld a, a                                          ; $661f: $7f
	rst $38                                          ; $6620: $ff
	dec h                                            ; $6621: $25
	push de                                          ; $6622: $d5
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	rst $38                                          ; $6626: $ff
	ld a, a                                          ; $6627: $7f
	nop                                              ; $6628: $00
	dec sp                                           ; $6629: $3b
	ret nz                                           ; $662a: $c0

	dec d                                            ; $662b: $15
	and b                                            ; $662c: $a0
	nop                                              ; $662d: $00
	rst $38                                          ; $662e: $ff
	ld a, a                                          ; $662f: $7f
	jp nz, $d57e                                     ; $6630: $c2 $7e $d5

	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	ccf                                              ; $6636: $3f
	rst $38                                          ; $6637: $ff
	ld a, a                                          ; $6638: $7f
	ld h, d                                          ; $6639: $62
	ld a, [hl]                                       ; $663a: $7e
	and b                                            ; $663b: $a0
	ld bc, $00c6                                     ; $663c: $01 $c6 $00
	rst $38                                          ; $663f: $ff
	rlca                                             ; $6640: $07
	rst $38                                          ; $6641: $ff
	dec h                                            ; $6642: $25
	nop                                              ; $6643: $00
	ld h, c                                          ; $6644: $61
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	rst $38                                          ; $6647: $ff
	ld a, a                                          ; $6648: $7f
	ld h, d                                          ; $6649: $62
	ld a, [hl]                                       ; $664a: $7e
	push de                                          ; $664b: $d5
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	rst $38                                          ; $664f: $ff
	ld a, a                                          ; $6650: $7f
	rst $38                                          ; $6651: $ff
	dec h                                            ; $6652: $25
	push de                                          ; $6653: $d5
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	rst $38                                          ; $6657: $ff
	ld a, a                                          ; $6658: $7f
	ld h, d                                          ; $6659: $62
	ld a, [hl]                                       ; $665a: $7e
	nop                                              ; $665b: $00
	ld h, c                                          ; $665c: $61
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	rst $38                                          ; $665f: $ff
	ld a, a                                          ; $6660: $7f
	rst $38                                          ; $6661: $ff
	dec h                                            ; $6662: $25
	nop                                              ; $6663: $00
	ld h, c                                          ; $6664: $61
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	ccf                                              ; $6667: $3f
	rst $38                                          ; $6668: $ff
	ld a, a                                          ; $6669: $7f
	ldh [rAUDENA], a                                 ; $666a: $e0 $26
	add b                                            ; $666c: $80
	add hl, bc                                       ; $666d: $09
	pop bc                                           ; $666e: $c1
	nop                                              ; $666f: $00
	cp $32                                           ; $6670: $fe $32
	jp c, $0001                                      ; $6672: $da $01 $00

	ld h, c                                          ; $6675: $61
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	ld a, h                                          ; $6678: $7c
	ld l, e                                          ; $6679: $6b
	ldh [rAUDENA], a                                 ; $667a: $e0 $26
	push de                                          ; $667c: $d5
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	rst $38                                          ; $6680: $ff
	ld a, a                                          ; $6681: $7f
	rst $38                                          ; $6682: $ff
	dec h                                            ; $6683: $25
	push de                                          ; $6684: $d5
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	rst $38                                          ; $6688: $ff
	ld a, a                                          ; $6689: $7f
	ld h, d                                          ; $668a: $62
	ld a, [hl]                                       ; $668b: $7e
	nop                                              ; $668c: $00
	ld h, c                                          ; $668d: $61
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	rst $38                                          ; $6690: $ff
	ld a, a                                          ; $6691: $7f
	rst $38                                          ; $6692: $ff
	dec h                                            ; $6693: $25
	nop                                              ; $6694: $00
	ld h, c                                          ; $6695: $61
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	ccf                                              ; $6698: $3f
	rst $38                                          ; $6699: $ff
	ld a, a                                          ; $669a: $7f
	halt                                             ; $669b: $76
	ld l, l                                          ; $669c: $6d
	ld [de], a                                       ; $669d: $12
	ld h, b                                          ; $669e: $60
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	rst $38                                          ; $66a1: $ff
	dec bc                                           ; $66a2: $0b
	rst $38                                          ; $66a3: $ff
	dec h                                            ; $66a4: $25
	jr nz, jr_02d_6708                               ; $66a5: $20 $61

	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	rst $38                                          ; $66a9: $ff
	ld a, a                                          ; $66aa: $7f
	adc $43                                          ; $66ab: $ce $43
	nop                                              ; $66ad: $00
	rra                                              ; $66ae: $1f
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	rst $38                                          ; $66b1: $ff
	ld a, a                                          ; $66b2: $7f
	rst $38                                          ; $66b3: $ff
	dec h                                            ; $66b4: $25
	push de                                          ; $66b5: $d5
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	rst $38                                          ; $66b9: $ff
	ld a, a                                          ; $66ba: $7f
	ld h, d                                          ; $66bb: $62
	ld a, [hl]                                       ; $66bc: $7e
	nop                                              ; $66bd: $00
	ld h, c                                          ; $66be: $61
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	rst $38                                          ; $66c1: $ff
	ld a, a                                          ; $66c2: $7f
	rst $38                                          ; $66c3: $ff
	dec h                                            ; $66c4: $25
	nop                                              ; $66c5: $00
	ld h, c                                          ; $66c6: $61
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	ccf                                              ; $66c9: $3f
	rst $38                                          ; $66ca: $ff
	ld a, a                                          ; $66cb: $7f
	ld d, e                                          ; $66cc: $53
	ld [hl+], a                                      ; $66cd: $22
	ld c, b                                          ; $66ce: $48
	dec e                                            ; $66cf: $1d
	add $10                                          ; $66d0: $c6 $10
	rst $38                                          ; $66d2: $ff
	dec hl                                           ; $66d3: $2b
	rst $38                                          ; $66d4: $ff
	dec h                                            ; $66d5: $25
	jr nz, jr_02d_6735                               ; $66d6: $20 $5d

	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	rst $38                                          ; $66da: $ff
	ld a, a                                          ; $66db: $7f
	rst $38                                          ; $66dc: $ff
	dec h                                            ; $66dd: $25
	ret c                                            ; $66de: $d8

	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	rst $38                                          ; $66e2: $ff
	ld a, a                                          ; $66e3: $7f
	rst $38                                          ; $66e4: $ff
	dec h                                            ; $66e5: $25
	push de                                          ; $66e6: $d5
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	rst $38                                          ; $66ea: $ff
	ld a, a                                          ; $66eb: $7f
	add b                                            ; $66ec: $80
	halt                                             ; $66ed: $76
	jr nz, jr_02d_674d                               ; $66ee: $20 $5d

	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	rst $38                                          ; $66f2: $ff
	ld a, a                                          ; $66f3: $7f
	inc c                                            ; $66f4: $0c
	ld l, [hl]                                       ; $66f5: $6e
	ld c, b                                          ; $66f6: $48
	dec e                                            ; $66f7: $1d
	db $e4                                           ; $66f8: $e4
	jr nc, jr_02d_673a                               ; $66f9: $30 $3f

	rst $38                                          ; $66fb: $ff
	ld a, a                                          ; $66fc: $7f
	rst $38                                          ; $66fd: $ff
	dec h                                            ; $66fe: $25
	push de                                          ; $66ff: $d5
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	rst $38                                          ; $6703: $ff
	ld a, a                                          ; $6704: $7f
	ld h, d                                          ; $6705: $62
	ld a, [hl]                                       ; $6706: $7e
	inc sp                                           ; $6707: $33

jr_02d_6708:
	dec c                                            ; $6708: $0d
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	rst $38                                          ; $670b: $ff
	ld a, a                                          ; $670c: $7f
	ld h, d                                          ; $670d: $62
	ld a, [hl]                                       ; $670e: $7e
	nop                                              ; $670f: $00
	ld h, c                                          ; $6710: $61
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	rst $38                                          ; $6713: $ff
	ld a, a                                          ; $6714: $7f
	or a                                             ; $6715: $b7
	daa                                              ; $6716: $27
	ld c, d                                          ; $6717: $4a
	ld [bc], a                                       ; $6718: $02
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	rst $38                                          ; $671b: $ff
	ld a, a                                          ; $671c: $7f
	ld h, d                                          ; $671d: $62
	ld a, [hl]                                       ; $671e: $7e
	sbc a                                            ; $671f: $9f
	add hl, bc                                       ; $6720: $09
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	rst $38                                          ; $6723: $ff
	ld a, a                                          ; $6724: $7f
	rst $38                                          ; $6725: $ff
	dec h                                            ; $6726: $25
	sbc a                                            ; $6727: $9f
	add hl, bc                                       ; $6728: $09
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	ccf                                              ; $672b: $3f
	rst $38                                          ; $672c: $ff
	ld a, a                                          ; $672d: $7f
	ret nz                                           ; $672e: $c0

	ld c, d                                          ; $672f: $4a
	and b                                            ; $6730: $a0
	dec [hl]                                         ; $6731: $35
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	rst $38                                          ; $6734: $ff

jr_02d_6735:
	ld a, a                                          ; $6735: $7f
	ld a, e                                          ; $6736: $7b
	ld h, c                                          ; $6737: $61
	inc [hl]                                         ; $6738: $34
	inc [hl]                                         ; $6739: $34

jr_02d_673a:
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	rst $38                                          ; $673c: $ff
	ld a, a                                          ; $673d: $7f
	ld a, [hl]                                       ; $673e: $7e
	dec [hl]                                         ; $673f: $35
	and b                                            ; $6740: $a0
	dec [hl]                                         ; $6741: $35
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	rst $38                                          ; $6744: $ff
	ld a, a                                          ; $6745: $7f
	sbc e                                            ; $6746: $9b
	ld hl, $28c6                                     ; $6747: $21 $c6 $28
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	rst $38                                          ; $674c: $ff

jr_02d_674d:
	ld a, a                                          ; $674d: $7f
	xor l                                            ; $674e: $ad
	ld b, l                                          ; $674f: $45
	add $28                                          ; $6750: $c6 $28
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	rst $38                                          ; $6754: $ff
	ld a, a                                          ; $6755: $7f
	ret nz                                           ; $6756: $c0

	ld c, d                                          ; $6757: $4a
	sbc h                                            ; $6758: $9c
	stop                                             ; $6759: $10 $00
	nop                                              ; $675b: $00
	ccf                                              ; $675c: $3f
	rst $38                                          ; $675d: $ff
	ld a, a                                          ; $675e: $7f
	rst $38                                          ; $675f: $ff
	dec [hl]                                         ; $6760: $35
	jr c, jr_02d_6770                                ; $6761: $38 $0d

	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	rst $38                                          ; $6765: $ff
	ld a, a                                          ; $6766: $7f
	rra                                              ; $6767: $1f
	dec de                                           ; $6768: $1b
	db $f4                                           ; $6769: $f4
	ld bc, $0000                                     ; $676a: $01 $00 $00
	rst $38                                          ; $676d: $ff
	ld a, a                                          ; $676e: $7f
	rst $38                                          ; $676f: $ff

jr_02d_6770:
	dec [hl]                                         ; $6770: $35
	db $f4                                           ; $6771: $f4
	ld bc, $0000                                     ; $6772: $01 $00 $00
	rst $38                                          ; $6775: $ff
	ld a, a                                          ; $6776: $7f
	rst $38                                          ; $6777: $ff
	dec [hl]                                         ; $6778: $35
	ld l, e                                          ; $6779: $6b
	ld d, c                                          ; $677a: $51
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	rst $38                                          ; $677d: $ff
	ld a, a                                          ; $677e: $7f
	rra                                              ; $677f: $1f
	dec de                                           ; $6780: $1b
	jr c, jr_02d_6790                                ; $6781: $38 $0d

	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	ret nz                                           ; $6785: $c0

	ld bc, $01c2                                     ; $6786: $01 $c2 $01
	call nz, $c601                                   ; $6789: $c4 $01 $c6
	ld bc, $ff3f                                     ; $678c: $01 $3f $ff
	ld a, a                                          ; $678f: $7f

jr_02d_6790:
	and b                                            ; $6790: $a0
	ld a, d                                          ; $6791: $7a
	add b                                            ; $6792: $80
	ld l, c                                          ; $6793: $69
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	rst $38                                          ; $6796: $ff
	ld a, a                                          ; $6797: $7f
	rst SubAFromDE                                          ; $6798: $df
	add hl, hl                                       ; $6799: $29
	add b                                            ; $679a: $80
	ld l, c                                          ; $679b: $69
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	rst $38                                          ; $679e: $ff
	ld a, a                                          ; $679f: $7f
	rst SubAFromDE                                          ; $67a0: $df
	add hl, hl                                       ; $67a1: $29
	db $d3                                           ; $67a2: $d3
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	rst $38                                          ; $67a6: $ff
	ld a, a                                          ; $67a7: $7f
	nop                                              ; $67a8: $00
	ld a, e                                          ; $67a9: $7b
	db $d3                                           ; $67aa: $d3
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	rst $38                                          ; $67ae: $ff
	ld a, a                                          ; $67af: $7f
	scf                                              ; $67b0: $37
	ld d, $cb                                        ; $67b1: $16 $cb
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	ret nz                                           ; $67b6: $c0

	ld bc, $01c2                                     ; $67b7: $01 $c2 $01
	call nz, $c601                                   ; $67ba: $c4 $01 $c6
	ld bc, $ff3f                                     ; $67bd: $01 $3f $ff
	ld a, a                                          ; $67c0: $7f
	ld e, [hl]                                       ; $67c1: $5e
	ld [hl], l                                       ; $67c2: $75
	ld d, $58                                        ; $67c3: $16 $58
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	rst $38                                          ; $67c7: $ff
	ld a, a                                          ; $67c8: $7f
	rst SubAFromDE                                          ; $67c9: $df
	ld b, b                                          ; $67ca: $40
	ld d, $28                                        ; $67cb: $16 $28
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	rst $38                                          ; $67cf: $ff
	ld a, a                                          ; $67d0: $7f
	rst $38                                          ; $67d1: $ff
	ld [de], a                                       ; $67d2: $12
	db $db                                           ; $67d3: $db
	add hl, bc                                       ; $67d4: $09
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	rst $38                                          ; $67d7: $ff
	ld a, a                                          ; $67d8: $7f
	and e                                            ; $67d9: $a3
	ld [hl], d                                       ; $67da: $72
	ld b, b                                          ; $67db: $40
	ld c, l                                          ; $67dc: $4d
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	rst $38                                          ; $67df: $ff
	ld a, a                                          ; $67e0: $7f
	cp a                                             ; $67e1: $bf
	add hl, sp                                       ; $67e2: $39
	ld d, $58                                        ; $67e3: $16 $58
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	rst $38                                          ; $67e7: $ff
	ld a, a                                          ; $67e8: $7f
	cp a                                             ; $67e9: $bf
	add hl, sp                                       ; $67ea: $39
	ld d, $28                                        ; $67eb: $16 $28
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	ccf                                              ; $67ef: $3f
	rst $38                                          ; $67f0: $ff
	ld a, a                                          ; $67f1: $7f
	dec a                                            ; $67f2: $3d
	ld l, l                                          ; $67f3: $6d
	ld d, $3c                                        ; $67f4: $16 $3c
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	rst $38                                          ; $67f8: $ff
	ld a, a                                          ; $67f9: $7f
	rst SubAFromDE                                          ; $67fa: $df
	add hl, hl                                       ; $67fb: $29
	ld d, $3c                                        ; $67fc: $16 $3c
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	rst $38                                          ; $6800: $ff
	ld a, a                                          ; $6801: $7f
	ld b, e                                          ; $6802: $43
	scf                                              ; $6803: $37
	and b                                            ; $6804: $a0
	ld hl, $0000                                     ; $6805: $21 $00 $00
	rst $38                                          ; $6808: $ff
	ld a, a                                          ; $6809: $7f
	rst SubAFromDE                                          ; $680a: $df
	add hl, hl                                       ; $680b: $29
	and b                                            ; $680c: $a0
	ld hl, $0000                                     ; $680d: $21 $00 $00
	rst $38                                          ; $6810: $ff
	ld a, a                                          ; $6811: $7f
	and e                                            ; $6812: $a3
	ld [hl], d                                       ; $6813: $72
	cp e                                             ; $6814: $bb
	inc d                                            ; $6815: $14
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	rst $38                                          ; $6818: $ff
	ld a, a                                          ; $6819: $7f
	rst SubAFromDE                                          ; $681a: $df
	add hl, hl                                       ; $681b: $29
	cp e                                             ; $681c: $bb
	inc d                                            ; $681d: $14
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	ccf                                              ; $6820: $3f
	rst $38                                          ; $6821: $ff
	ld a, a                                          ; $6822: $7f
	rst SubAFromDE                                          ; $6823: $df
	add hl, hl                                       ; $6824: $29
	and b                                            ; $6825: $a0
	ld h, c                                          ; $6826: $61
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	rst $38                                          ; $6829: $ff
	ld a, a                                          ; $682a: $7f
	rlca                                             ; $682b: $07
	ld a, a                                          ; $682c: $7f
	and b                                            ; $682d: $a0
	ld h, c                                          ; $682e: $61
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	rst $38                                          ; $6831: $ff
	ld a, a                                          ; $6832: $7f

jr_02d_6833:
	rst SubAFromDE                                          ; $6833: $df
	add hl, hl                                       ; $6834: $29
	rst GetHLinHL                                          ; $6835: $cf
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	rst $38                                          ; $6839: $ff
	ld a, a                                          ; $683a: $7f
	and e                                            ; $683b: $a3
	ld [hl], d                                       ; $683c: $72
	cp e                                             ; $683d: $bb
	inc d                                            ; $683e: $14
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	rst $38                                          ; $6841: $ff
	ld a, a                                          ; $6842: $7f
	add a                                            ; $6843: $87
	ld [hl], d                                       ; $6844: $72

Jump_02d_6845:
	and d                                            ; $6845: $a2
	ld c, c                                          ; $6846: $49
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	rst $38                                          ; $6849: $ff
	ld a, a                                          ; $684a: $7f
	rlca                                             ; $684b: $07
	ld a, a                                          ; $684c: $7f
	cp e                                             ; $684d: $bb
	inc d                                            ; $684e: $14
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	ccf                                              ; $6851: $3f
	rst $38                                          ; $6852: $ff
	ld a, a                                          ; $6853: $7f
	rst SubAFromDE                                          ; $6854: $df
	add hl, hl                                       ; $6855: $29
	rst GetHLinHL                                          ; $6856: $cf
	nop                                              ; $6857: $00
	ld h, b                                          ; $6858: $60
	nop                                              ; $6859: $00
	rst $38                                          ; $685a: $ff
	ld a, a                                          ; $685b: $7f
	and d                                            ; $685c: $a2
	ld e, d                                          ; $685d: $5a
	cp e                                             ; $685e: $bb
	inc d                                            ; $685f: $14
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	rst $38                                          ; $6862: $ff
	ld a, a                                          ; $6863: $7f
	rst SubAFromDE                                          ; $6864: $df
	add hl, hl                                       ; $6865: $29
	add b                                            ; $6866: $80
	ld sp, $0000                                     ; $6867: $31 $00 $00
	rst $38                                          ; $686a: $ff
	ld a, a                                          ; $686b: $7f
	rst SubAFromDE                                          ; $686c: $df
	add hl, hl                                       ; $686d: $29
	cp e                                             ; $686e: $bb
	inc d                                            ; $686f: $14
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	rst $38                                          ; $6872: $ff
	ld a, a                                          ; $6873: $7f

jr_02d_6874:
	and d                                            ; $6874: $a2
	ld e, d                                          ; $6875: $5a
	add b                                            ; $6876: $80
	ld sp, $0000                                     ; $6877: $31 $00 $00
	rst $38                                          ; $687a: $ff
	ld a, a                                          ; $687b: $7f
	and d                                            ; $687c: $a2
	ld e, d                                          ; $687d: $5a
	add b                                            ; $687e: $80
	ld sp, $10a9                                     ; $687f: $31 $a9 $10
	ccf                                              ; $6882: $3f
	sub d                                            ; $6883: $92
	ld a, d                                          ; $6884: $7a
	adc c                                            ; $6885: $89
	ccf                                              ; $6886: $3f
	pop hl                                           ; $6887: $e1
	ld [bc], a                                       ; $6888: $02
	add h                                            ; $6889: $84
	db $10                                           ; $688a: $10
	rst $38                                          ; $688b: $ff
	ld a, a                                          ; $688c: $7f
	sbc a                                            ; $688d: $9f
	cpl                                              ; $688e: $2f
	ld h, a                                          ; $688f: $67
	ld e, c                                          ; $6890: $59
	ld h, d                                          ; $6891: $62
	jr nz, jr_02d_6833                               ; $6892: $20 $9f

	cpl                                              ; $6894: $2f
	add [hl]                                         ; $6895: $86
	ld d, [hl]                                       ; $6896: $56
	dec de                                           ; $6897: $1b
	ld a, [bc]                                       ; $6898: $0a
	ld h, a                                          ; $6899: $67
	ld e, c                                          ; $689a: $59
	rst $38                                          ; $689b: $ff
	ld a, a                                          ; $689c: $7f
	sbc a                                            ; $689d: $9f
	cpl                                              ; $689e: $2f
	dec de                                           ; $689f: $1b
	ld a, [bc]                                       ; $68a0: $0a
	ld h, a                                          ; $68a1: $67
	ld e, c                                          ; $68a2: $59
	rst $38                                          ; $68a3: $ff
	ld a, a                                          ; $68a4: $7f
	sbc a                                            ; $68a5: $9f
	cpl                                              ; $68a6: $2f
	add [hl]                                         ; $68a7: $86
	ld d, [hl]                                       ; $68a8: $56
	ld h, a                                          ; $68a9: $67
	ld e, c                                          ; $68aa: $59
	rst $38                                          ; $68ab: $ff
	ld a, a                                          ; $68ac: $7f
	sbc a                                            ; $68ad: $9f
	cpl                                              ; $68ae: $2f
	dec de                                           ; $68af: $1b
	ld a, [bc]                                       ; $68b0: $0a
	sbc $20                                          ; $68b1: $de $20
	jr c, jr_02d_6874                                ; $68b3: $38 $bf

	ld d, e                                          ; $68b5: $53
	ld a, l                                          ; $68b6: $7d
	ld bc, $007a                                     ; $68b7: $01 $7a $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	cp a                                             ; $68bc: $bf
	ld d, e                                          ; $68bd: $53
	ret nz                                           ; $68be: $c0

	dec sp                                           ; $68bf: $3b
	ld h, b                                          ; $68c0: $60
	ld b, b                                          ; $68c1: $40
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	ld a, l                                          ; $68c4: $7d
	ld bc, $007a                                     ; $68c5: $01 $7a $00
	ld c, [hl]                                       ; $68c8: $4e
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	ccf                                              ; $68cc: $3f
	rst $38                                          ; $68cd: $ff
	ld a, a                                          ; $68ce: $7f
	rst SubAFromDE                                          ; $68cf: $df
	ld b, c                                          ; $68d0: $41
	and b                                            ; $68d1: $a0
	dec h                                            ; $68d2: $25
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	rst $38                                          ; $68d5: $ff
	ld a, a                                          ; $68d6: $7f
	ret nz                                           ; $68d7: $c0

	ld c, d                                          ; $68d8: $4a
	and b                                            ; $68d9: $a0
	dec h                                            ; $68da: $25
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	rst $38                                          ; $68dd: $ff
	ld a, a                                          ; $68de: $7f
	ld h, d                                          ; $68df: $62
	ld a, [hl]                                       ; $68e0: $7e
	and b                                            ; $68e1: $a0
	dec h                                            ; $68e2: $25
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	rst $38                                          ; $68e5: $ff
	ld a, a                                          ; $68e6: $7f
	adc $26                                          ; $68e7: $ce $26
	and b                                            ; $68e9: $a0
	dec h                                            ; $68ea: $25
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	rst $38                                          ; $68ed: $ff
	ld a, a                                          ; $68ee: $7f
	rst SubAFromDE                                          ; $68ef: $df
	ld b, c                                          ; $68f0: $41
	inc l                                            ; $68f1: $2c
	ld bc, $0000                                     ; $68f2: $01 $00 $00
	rst $38                                          ; $68f5: $ff
	ld a, a                                          ; $68f6: $7f
	ld h, d                                          ; $68f7: $62
	ld a, [hl]                                       ; $68f8: $7e
	ld h, b                                          ; $68f9: $60
	ld d, c                                          ; $68fa: $51
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	ccf                                              ; $68fd: $3f
	rst $38                                          ; $68fe: $ff
	ld a, a                                          ; $68ff: $7f
	ld a, d                                          ; $6900: $7a
	ld b, [hl]                                       ; $6901: $46
	dec c                                            ; $6902: $0d
	ld hl, $0088                                     ; $6903: $21 $88 $00
	rst $38                                          ; $6906: $ff
	inc bc                                           ; $6907: $03
	ld h, d                                          ; $6908: $62
	ld a, [hl]                                       ; $6909: $7e
	dec c                                            ; $690a: $0d
	ld hl, $0000                                     ; $690b: $21 $00 $00
	rst $38                                          ; $690e: $ff
	ld a, a                                          ; $690f: $7f
	ld a, a                                          ; $6910: $7f
	ld a, [de]                                       ; $6911: $1a
	dec c                                            ; $6912: $0d
	ld hl, $0000                                     ; $6913: $21 $00 $00
	rst $38                                          ; $6916: $ff
	ld a, a                                          ; $6917: $7f
	rst $38                                          ; $6918: $ff
	dec a                                            ; $6919: $3d
	ld a, [hl-]                                      ; $691a: $3a
	jr jr_02d_691d                                   ; $691b: $18 $00

jr_02d_691d:
	nop                                              ; $691d: $00
	rst $38                                          ; $691e: $ff
	ld a, a                                          ; $691f: $7f
	rst $38                                          ; $6920: $ff
	dec a                                            ; $6921: $3d
	nop                                              ; $6922: $00
	ld h, c                                          ; $6923: $61
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	rst $38                                          ; $6926: $ff
	ld a, a                                          ; $6927: $7f
	ld h, d                                          ; $6928: $62
	ld a, [hl]                                       ; $6929: $7e
	nop                                              ; $692a: $00
	ld h, c                                          ; $692b: $61
	ld bc, $3f00                                     ; $692c: $01 $00 $3f
	rst $38                                          ; $692f: $ff
	ld b, e                                          ; $6930: $43
	ld a, a                                          ; $6931: $7f
	ld a, [hl-]                                      ; $6932: $3a
	nop                                              ; $6933: $00
	ld h, c                                          ; $6934: $61
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	rst $38                                          ; $6937: $ff
	ld a, a                                          ; $6938: $7f
	add hl, de                                       ; $6939: $19
	ld a, [bc]                                       ; $693a: $0a
	dec h                                            ; $693b: $25
	ld sp, $0000                                     ; $693c: $31 $00 $00
	rst $38                                          ; $693f: $ff
	ld a, a                                          ; $6940: $7f
	dec d                                            ; $6941: $15
	ld a, [hl]                                       ; $6942: $7e
	db $10                                           ; $6943: $10
	ld a, h                                          ; $6944: $7c
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	rst $38                                          ; $6947: $ff
	ld a, a                                          ; $6948: $7f
	rra                                              ; $6949: $1f
	ld e, [hl]                                       ; $694a: $5e
	db $10                                           ; $694b: $10
	ld a, h                                          ; $694c: $7c
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	rst $38                                          ; $694f: $ff
	ld a, a                                          ; $6950: $7f
	ld h, d                                          ; $6951: $62
	ld a, [hl]                                       ; $6952: $7e
	nop                                              ; $6953: $00
	ld h, c                                          ; $6954: $61
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	rst $38                                          ; $6957: $ff
	ld a, a                                          ; $6958: $7f
	ld h, d                                          ; $6959: $62
	ld a, [hl]                                       ; $695a: $7e
	db $10                                           ; $695b: $10
	ld a, h                                          ; $695c: $7c
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	ccf                                              ; $695f: $3f
	rst $38                                          ; $6960: $ff
	ld a, a                                          ; $6961: $7f
	ld h, d                                          ; $6962: $62
	ld a, [hl]                                       ; $6963: $7e
	db $e3                                           ; $6964: $e3
	dec e                                            ; $6965: $1d
	db $e4                                           ; $6966: $e4
	nop                                              ; $6967: $00
	rst $38                                          ; $6968: $ff
	ld a, a                                          ; $6969: $7f
	ld a, a                                          ; $696a: $7f
	ld [de], a                                       ; $696b: $12
	nop                                              ; $696c: $00
	ld h, c                                          ; $696d: $61
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	rst $38                                          ; $6970: $ff
	ld a, a                                          ; $6971: $7f
	dec [hl]                                         ; $6972: $35
	ld l, [hl]                                       ; $6973: $6e
	ld [$0048], a                                    ; $6974: $ea $48 $00
	nop                                              ; $6977: $00
	rst $38                                          ; $6978: $ff
	ld a, a                                          ; $6979: $7f
	ld a, $32                                        ; $697a: $3e $32
	ld [$0048], a                                    ; $697c: $ea $48 $00
	nop                                              ; $697f: $00
	rst $38                                          ; $6980: $ff
	ld a, a                                          ; $6981: $7f
	ld h, d                                          ; $6982: $62
	ld a, [hl]                                       ; $6983: $7e
	ld [$0048], a                                    ; $6984: $ea $48 $00
	nop                                              ; $6987: $00
	rst $38                                          ; $6988: $ff
	ld a, a                                          ; $6989: $7f
	ld h, d                                          ; $698a: $62
	ld a, [hl]                                       ; $698b: $7e
	nop                                              ; $698c: $00
	ld h, c                                          ; $698d: $61
	ld bc, $3f00                                     ; $698e: $01 $00 $3f
	rst $38                                          ; $6991: $ff
	ld a, a                                          ; $6992: $7f
	ld a, b                                          ; $6993: $78
	add hl, de                                       ; $6994: $19
	ld c, b                                          ; $6995: $48
	dec a                                            ; $6996: $3d
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	rst $38                                          ; $6999: $ff
	ld a, a                                          ; $699a: $7f
	ld [hl], c                                       ; $699b: $71
	ld h, [hl]                                       ; $699c: $66
	ld c, b                                          ; $699d: $48
	dec a                                            ; $699e: $3d
	and e                                            ; $699f: $a3
	ld [$7fff], sp                                   ; $69a0: $08 $ff $7f
	ld a, b                                          ; $69a3: $78
	add hl, de                                       ; $69a4: $19
	jr nz, jr_02d_6a25                               ; $69a5: $20 $7e

	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	rst $38                                          ; $69a9: $ff
	ld a, a                                          ; $69aa: $7f
	rst AddAOntoHL                                          ; $69ab: $ef
	ld h, $66                                        ; $69ac: $26 $66
	ld de, $0000                                     ; $69ae: $11 $00 $00
	rst $38                                          ; $69b1: $ff
	ld a, a                                          ; $69b2: $7f
	ld a, b                                          ; $69b3: $78
	add hl, de                                       ; $69b4: $19
	adc b                                            ; $69b5: $88
	dec e                                            ; $69b6: $1d
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	rst $38                                          ; $69b9: $ff
	ld a, a                                          ; $69ba: $7f
	add hl, sp                                       ; $69bb: $39
	ld c, a                                          ; $69bc: $4f
	adc b                                            ; $69bd: $88
	dec e                                            ; $69be: $1d
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	ccf                                              ; $69c1: $3f
	rst $38                                          ; $69c2: $ff
	ld a, e                                          ; $69c3: $7b
	sub c                                            ; $69c4: $91
	ld l, d                                          ; $69c5: $6a
	ld b, a                                          ; $69c6: $47
	ld b, c                                          ; $69c7: $41
	ld [bc], a                                       ; $69c8: $02
	nop                                              ; $69c9: $00
	rst $38                                          ; $69ca: $ff
	ld a, a                                          ; $69cb: $7f
	sub h                                            ; $69cc: $94
	ld [bc], a                                       ; $69cd: $02
	ld h, b                                          ; $69ce: $60
	ld hl, $0000                                     ; $69cf: $21 $00 $00
	rst $38                                          ; $69d2: $ff
	ld a, a                                          ; $69d3: $7f
	rst $38                                          ; $69d4: $ff
	dec e                                            ; $69d5: $1d
	rst FarCall                                          ; $69d6: $f7
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	or a                                             ; $69da: $b7
	dec sp                                           ; $69db: $3b
	and b                                            ; $69dc: $a0
	ld h, [hl]                                       ; $69dd: $66
	xor d                                            ; $69de: $aa
	dec c                                            ; $69df: $0d
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	rst $38                                          ; $69e2: $ff
	ld a, a                                          ; $69e3: $7f
	and b                                            ; $69e4: $a0
	ld h, [hl]                                       ; $69e5: $66
	dec h                                            ; $69e6: $25
	ld d, c                                          ; $69e7: $51
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	rst $38                                          ; $69ea: $ff
	ld a, a                                          ; $69eb: $7f
	rra                                              ; $69ec: $1f
	ld a, [hl+]                                      ; $69ed: $2a
	dec h                                            ; $69ee: $25
	ld d, c                                          ; $69ef: $51
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	ccf                                              ; $69f2: $3f
	rst $38                                          ; $69f3: $ff
	ld a, a                                          ; $69f4: $7f
	rst SubAFromHL                                          ; $69f5: $d7
	ld h, $a2                                        ; $69f6: $26 $a2
	ld bc, $0000                                     ; $69f8: $01 $00 $00
	rst $38                                          ; $69fb: $ff
	inc bc                                           ; $69fc: $03
	inc a                                            ; $69fd: $3c
	ld [hl+], a                                      ; $69fe: $22
	jp $0001                                         ; $69ff: $c3 $01 $00


	nop                                              ; $6a02: $00
	rst $38                                          ; $6a03: $ff
	ld a, a                                          ; $6a04: $7f
	inc a                                            ; $6a05: $3c
	ld [hl+], a                                      ; $6a06: $22
	ld [hl+], a                                      ; $6a07: $22
	dec [hl]                                         ; $6a08: $35
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	rst $38                                          ; $6a0b: $ff
	ld a, a                                          ; $6a0c: $7f
	inc a                                            ; $6a0d: $3c
	ld [hl+], a                                      ; $6a0e: $22
	or a                                             ; $6a0f: $b7
	inc d                                            ; $6a10: $14
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	rst $38                                          ; $6a13: $ff
	ld a, a                                          ; $6a14: $7f
	jr nc, jr_02d_6a85                               ; $6a15: $30 $6e

	ld [hl+], a                                      ; $6a17: $22
	dec [hl]                                         ; $6a18: $35
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	rst $38                                          ; $6a1b: $ff
	ld a, a                                          ; $6a1c: $7f
	ld h, d                                          ; $6a1d: $62
	ld a, [hl]                                       ; $6a1e: $7e
	xor b                                            ; $6a1f: $a8
	ld bc, $0105                                     ; $6a20: $01 $05 $01
	ccf                                              ; $6a23: $3f
	rst $38                                          ; $6a24: $ff

jr_02d_6a25:
	ld e, a                                          ; $6a25: $5f
	or [hl]                                          ; $6a26: $b6
	daa                                              ; $6a27: $27
	and d                                            ; $6a28: $a2
	ld bc, $0000                                     ; $6a29: $01 $00 $00

jr_02d_6a2c:
	rst $38                                          ; $6a2c: $ff
	ld a, a                                          ; $6a2d: $7f
	dec d                                            ; $6a2e: $15

jr_02d_6a2f:
	ld [hl], c                                       ; $6a2f: $71
	inc b                                            ; $6a30: $04
	ld c, $00                                        ; $6a31: $0e $00
	nop                                              ; $6a33: $00
	rst $38                                          ; $6a34: $ff
	ld a, a                                          ; $6a35: $7f
	inc a                                            ; $6a36: $3c
	ld d, $03                                        ; $6a37: $16 $03
	ld sp, $0000                                     ; $6a39: $31 $00 $00
	rst $38                                          ; $6a3c: $ff
	ld a, a                                          ; $6a3d: $7f
	inc a                                            ; $6a3e: $3c
	ld [bc], a                                       ; $6a3f: $02
	or a                                             ; $6a40: $b7
	inc d                                            ; $6a41: $14
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	rst $38                                          ; $6a44: $ff
	ld a, a                                          ; $6a45: $7f
	jr nc, jr_02d_6ab6                               ; $6a46: $30 $6e

	ld [hl+], a                                      ; $6a48: $22
	dec [hl]                                         ; $6a49: $35
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	rst $38                                          ; $6a4c: $ff
	ld a, a                                          ; $6a4d: $7f
	ld h, d                                          ; $6a4e: $62
	ld a, [hl]                                       ; $6a4f: $7e
	and d                                            ; $6a50: $a2
	ld bc, $0105                                     ; $6a51: $01 $05 $01
	rra                                              ; $6a54: $1f
	rst $38                                          ; $6a55: $ff
	ld a, a                                          ; $6a56: $7f
	ld [hl], h                                       ; $6a57: $74
	ld l, d                                          ; $6a58: $6a
	xor e                                            ; $6a59: $ab
	ld b, l                                          ; $6a5a: $45
	jp $ff20                                         ; $6a5b: $c3 $20 $ff


	ld a, a                                          ; $6a5e: $7f
	call c, $fb3e                                    ; $6a5f: $dc $3e $fb
	add hl, de                                       ; $6a62: $19
	db $eb                                           ; $6a63: $eb
	jr @+$01                                         ; $6a64: $18 $ff

	ld a, a                                          ; $6a66: $7f
	or [hl]                                          ; $6a67: $b6
	ld [hl], l                                       ; $6a68: $75
	db $eb                                           ; $6a69: $eb
	jr jr_02d_6a2f                                   ; $6a6a: $18 $c3

	jr nz, @+$01                                     ; $6a6c: $20 $ff

	ld a, a                                          ; $6a6e: $7f
	db $e4                                           ; $6a6f: $e4
	ld [hl], l                                       ; $6a70: $75
	ei                                               ; $6a71: $fb
	add hl, de                                       ; $6a72: $19
	and d                                            ; $6a73: $a2
	jr nz, jr_02d_6a2c                               ; $6a74: $20 $b6

	ld [hl], l                                       ; $6a76: $75
	db $e4                                           ; $6a77: $e4
	ld [hl], l                                       ; $6a78: $75
	ei                                               ; $6a79: $fb
	add hl, de                                       ; $6a7a: $19
	jp $1f20                                         ; $6a7b: $c3 $20 $1f


	jr jr_02d_6a96                                   ; $6a7e: $18 $16

	call $c208                                       ; $6a80: $cd $08 $c2
	ld h, c                                          ; $6a83: $61
	nop                                              ; $6a84: $00

jr_02d_6a85:
	nop                                              ; $6a85: $00
	rst $38                                          ; $6a86: $ff
	ld a, a                                          ; $6a87: $7f
	ld d, l                                          ; $6a88: $55
	ld de, $04b0                                     ; $6a89: $11 $b0 $04
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	rst $38                                          ; $6a8e: $ff
	ld a, a                                          ; $6a8f: $7f
	add d                                            ; $6a90: $82
	ld a, d                                          ; $6a91: $7a
	jp nz, $0061                                     ; $6a92: $c2 $61 $00

	nop                                              ; $6a95: $00

jr_02d_6a96:
	rst $38                                          ; $6a96: $ff
	ld a, a                                          ; $6a97: $7f
	ld e, c                                          ; $6a98: $59
	ld d, $c2                                        ; $6a99: $16 $c2
	ld h, c                                          ; $6a9b: $61
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	rst $38                                          ; $6a9e: $ff
	ld a, a                                          ; $6a9f: $7f
	rst $38                                          ; $6aa0: $ff
	db $10                                           ; $6aa1: $10
	dec bc                                           ; $6aa2: $0b
	ld a, [hl-]                                      ; $6aa3: $3a
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	rra                                              ; $6aa6: $1f
	rst $38                                          ; $6aa7: $ff
	ld a, a                                          ; $6aa8: $7f
	xor e                                            ; $6aa9: $ab
	ld c, [hl]                                       ; $6aaa: $4e
	ld e, h                                          ; $6aab: $5c
	add hl, bc                                       ; $6aac: $09
	and d                                            ; $6aad: $a2
	inc d                                            ; $6aae: $14
	rst $38                                          ; $6aaf: $ff
	ld a, a                                          ; $6ab0: $7f
	xor e                                            ; $6ab1: $ab
	ld c, [hl]                                       ; $6ab2: $4e
	add h                                            ; $6ab3: $84
	add hl, hl                                       ; $6ab4: $29
	and d                                            ; $6ab5: $a2

jr_02d_6ab6:
	inc d                                            ; $6ab6: $14
	rst $38                                          ; $6ab7: $ff
	ld a, a                                          ; $6ab8: $7f
	dec h                                            ; $6ab9: $25
	ld a, a                                          ; $6aba: $7f
	ldh [$7d], a                                     ; $6abb: $e0 $7d
	and d                                            ; $6abd: $a2
	inc d                                            ; $6abe: $14
	rst $38                                          ; $6abf: $ff
	ld a, a                                          ; $6ac0: $7f
	ld e, [hl]                                       ; $6ac1: $5e
	ld h, $b9                                        ; $6ac2: $26 $b9
	nop                                              ; $6ac4: $00
	and d                                            ; $6ac5: $a2
	inc d                                            ; $6ac6: $14
	rst $38                                          ; $6ac7: $ff
	ld a, a                                          ; $6ac8: $7f
	ccf                                              ; $6ac9: $3f
	inc sp                                           ; $6aca: $33
	ld e, h                                          ; $6acb: $5c
	ld [bc], a                                       ; $6acc: $02
	xor b                                            ; $6acd: $a8
	nop                                              ; $6ace: $00
	rra                                              ; $6acf: $1f
	rst $38                                          ; $6ad0: $ff
	ld a, a                                          ; $6ad1: $7f
	ld e, d                                          ; $6ad2: $5a
	ld h, $e9                                        ; $6ad3: $26 $e9
	ld e, c                                          ; $6ad5: $59
	and d                                            ; $6ad6: $a2
	inc d                                            ; $6ad7: $14
	rst $38                                          ; $6ad8: $ff
	ld a, a                                          ; $6ad9: $7f
	ld l, l                                          ; $6ada: $6d
	ld c, d                                          ; $6adb: $4a
	jp nz, $a241                                     ; $6adc: $c2 $41 $a2

	inc d                                            ; $6adf: $14
	rst $38                                          ; $6ae0: $ff
	ld a, a                                          ; $6ae1: $7f
	dec h                                            ; $6ae2: $25
	ld a, a                                          ; $6ae3: $7f
	add b                                            ; $6ae4: $80
	ld [hl], c                                       ; $6ae5: $71
	and d                                            ; $6ae6: $a2
	inc d                                            ; $6ae7: $14
	rst $38                                          ; $6ae8: $ff
	ld a, a                                          ; $6ae9: $7f
	ld a, a                                          ; $6aea: $7f
	ld [hl-], a                                      ; $6aeb: $32
	cp a                                             ; $6aec: $bf
	nop                                              ; $6aed: $00
	and d                                            ; $6aee: $a2
	inc d                                            ; $6aef: $14
	rst $38                                          ; $6af0: $ff
	ld a, a                                          ; $6af1: $7f
	sbc a                                            ; $6af2: $9f
	ld [hl-], a                                      ; $6af3: $32
	sub e                                            ; $6af4: $93
	nop                                              ; $6af5: $00
	and d                                            ; $6af6: $a2
	inc d                                            ; $6af7: $14
	rra                                              ; $6af8: $1f
	rst $38                                          ; $6af9: $ff
	ld a, a                                          ; $6afa: $7f
	ld e, [hl]                                       ; $6afb: $5e
	ld a, [hl-]                                      ; $6afc: $3a
	db $10                                           ; $6afd: $10
	ld h, [hl]                                       ; $6afe: $66
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	rst $38                                          ; $6b01: $ff
	ld a, a                                          ; $6b02: $7f
	rst $38                                          ; $6b03: $ff
	ccf                                              ; $6b04: $3f
	scf                                              ; $6b05: $37
	ld a, [de]                                       ; $6b06: $1a
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	rst $38                                          ; $6b09: $ff
	ld a, a                                          ; $6b0a: $7f
	ld e, [hl]                                       ; $6b0b: $5e
	ld a, [hl-]                                      ; $6b0c: $3a
	rst $38                                          ; $6b0d: $ff
	ccf                                              ; $6b0e: $3f
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	rst $38                                          ; $6b11: $ff
	ld a, a                                          ; $6b12: $7f
	rst FarCall                                          ; $6b13: $f7
	ld a, d                                          ; $6b14: $7a
	db $10                                           ; $6b15: $10
	ld h, [hl]                                       ; $6b16: $66
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	rst $38                                          ; $6b19: $ff
	ccf                                              ; $6b1a: $3f
	ld e, [hl]                                       ; $6b1b: $5e
	ld a, [hl-]                                      ; $6b1c: $3a
	scf                                              ; $6b1d: $37
	ld a, [de]                                       ; $6b1e: $1a
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	rra                                              ; $6b21: $1f
	rst $38                                          ; $6b22: $ff
	ld a, a                                          ; $6b23: $7f
	rst SubAFromDE                                          ; $6b24: $df
	ld h, [hl]                                       ; $6b25: $66
	pop af                                           ; $6b26: $f1
	ld a, [hl]                                       ; $6b27: $7e
	ld l, $56                                        ; $6b28: $2e $56
	rst $38                                          ; $6b2a: $ff
	ld a, a                                          ; $6b2b: $7f
	add [hl]                                         ; $6b2c: $86
	ld e, $47                                        ; $6b2d: $1e $47
	dec a                                            ; $6b2f: $3d
	db $e4                                           ; $6b30: $e4
	inc l                                            ; $6b31: $2c
	rst $38                                          ; $6b32: $ff
	ld d, e                                          ; $6b33: $53
	ld [de], a                                       ; $6b34: $12
	dec de                                           ; $6b35: $1b
	db $ec                                           ; $6b36: $ec
	ld c, l                                          ; $6b37: $4d
	add [hl]                                         ; $6b38: $86
	ld e, $ff                                        ; $6b39: $1e $ff
	ld d, e                                          ; $6b3b: $53
	rst SubAFromHL                                          ; $6b3c: $d7
	ccf                                              ; $6b3d: $3f
	ld [hl], e                                       ; $6b3e: $73
	halt                                             ; $6b3f: $76
	ld [hl], c                                       ; $6b40: $71
	add hl, bc                                       ; $6b41: $09
	inc [hl]                                         ; $6b42: $34
	ld a, a                                          ; $6b43: $7f
	db $e4                                           ; $6b44: $e4
	inc l                                            ; $6b45: $2c
	and $3d                                          ; $6b46: $e6 $3d
	ld l, $56                                        ; $6b48: $2e $56
	rra                                              ; $6b4a: $1f
	rst $38                                          ; $6b4b: $ff
	ld a, a                                          ; $6b4c: $7f
	ret nz                                           ; $6b4d: $c0

	ld a, [hl]                                       ; $6b4e: $7e
	and d                                            ; $6b4f: $a2
	ld c, l                                          ; $6b50: $4d
	ldh [$38], a                                     ; $6b51: $e0 $38
	rst $38                                          ; $6b53: $ff
	ld b, e                                          ; $6b54: $43
	sbc c                                            ; $6b55: $99
	ld a, [hl+]                                      ; $6b56: $2a
	ld [hl-], a                                      ; $6b57: $32
	ld hl, $0ccb                                     ; $6b58: $21 $cb $0c
	or d                                             ; $6b5b: $b2
	ld hl, $51a2                                     ; $6b5c: $21 $a2 $51
	rrc h                                            ; $6b5f: $cb $0c
	add b                                            ; $6b61: $80
	ld hl, $7fff                                     ; $6b62: $21 $ff $7f
	ldh [$7e], a                                     ; $6b65: $e0 $7e
	ld h, b                                          ; $6b67: $60
	ld h, l                                          ; $6b68: $65
	inc [hl]                                         ; $6b69: $34
	dec e                                            ; $6b6a: $1d
	rst $38                                          ; $6b6b: $ff
	ld a, a                                          ; $6b6c: $7f
	ret nz                                           ; $6b6d: $c0

	ld a, [hl]                                       ; $6b6e: $7e
	ld b, b                                          ; $6b6f: $40
	ld a, [hl]                                       ; $6b70: $7e
	and b                                            ; $6b71: $a0
	ld d, l                                          ; $6b72: $55
	ccf                                              ; $6b73: $3f
	db $fc                                           ; $6b74: $fc
	ld b, [hl]                                       ; $6b75: $46
	ld d, h                                          ; $6b76: $54
	ld c, d                                          ; $6b77: $4a
	ld l, l                                          ; $6b78: $6d
	dec l                                            ; $6b79: $2d
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	ld a, e                                          ; $6b7c: $7b
	ld l, a                                          ; $6b7d: $6f
	ld d, h                                          ; $6b7e: $54
	ld c, d                                          ; $6b7f: $4a
	ld l, l                                          ; $6b80: $6d
	dec l                                            ; $6b81: $2d
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	ld a, e                                          ; $6b84: $7b
	ld l, a                                          ; $6b85: $6f
	ld d, h                                          ; $6b86: $54
	ld c, d                                          ; $6b87: $4a
	jp $0005                                         ; $6b88: $c3 $05 $00


	nop                                              ; $6b8b: $00
	ld a, e                                          ; $6b8c: $7b
	ld l, a                                          ; $6b8d: $6f
	dec sp                                           ; $6b8e: $3b
	ld [de], a                                       ; $6b8f: $12
	db $ec                                           ; $6b90: $ec
	ld h, [hl]                                       ; $6b91: $66
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	db $fc                                           ; $6b94: $fc
	ld b, [hl]                                       ; $6b95: $46
	dec sp                                           ; $6b96: $3b
	ld [de], a                                       ; $6b97: $12
	ld l, l                                          ; $6b98: $6d
	dec l                                            ; $6b99: $2d
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	db $fc                                           ; $6b9c: $fc
	ld b, [hl]                                       ; $6b9d: $46
	ld a, e                                          ; $6b9e: $7b
	ld l, a                                          ; $6b9f: $6f
	ld l, l                                          ; $6ba0: $6d
	dec l                                            ; $6ba1: $2d
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	ccf                                              ; $6ba4: $3f
	db $fc                                           ; $6ba5: $fc
	ld b, [hl]                                       ; $6ba6: $46
	ld d, h                                          ; $6ba7: $54
	ld c, d                                          ; $6ba8: $4a
	ld l, l                                          ; $6ba9: $6d
	dec l                                            ; $6baa: $2d
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	ld a, e                                          ; $6bad: $7b
	ld l, a                                          ; $6bae: $6f
	ld d, h                                          ; $6baf: $54
	ld c, d                                          ; $6bb0: $4a
	ld l, l                                          ; $6bb1: $6d
	dec l                                            ; $6bb2: $2d
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	ld a, e                                          ; $6bb5: $7b
	ld l, a                                          ; $6bb6: $6f
	ld d, h                                          ; $6bb7: $54
	ld c, d                                          ; $6bb8: $4a
	jp $0005                                         ; $6bb9: $c3 $05 $00


	nop                                              ; $6bbc: $00
	db $fc                                           ; $6bbd: $fc
	ld b, [hl]                                       ; $6bbe: $46
	ld a, e                                          ; $6bbf: $7b
	ld l, a                                          ; $6bc0: $6f
	ld l, l                                          ; $6bc1: $6d
	dec l                                            ; $6bc2: $2d
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	db $fc                                           ; $6bc5: $fc
	ld b, [hl]                                       ; $6bc6: $46
	dec sp                                           ; $6bc7: $3b
	ld [de], a                                       ; $6bc8: $12
	ld l, l                                          ; $6bc9: $6d
	dec l                                            ; $6bca: $2d
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	db $fc                                           ; $6bcd: $fc
	ld b, [hl]                                       ; $6bce: $46
	dec sp                                           ; $6bcf: $3b
	ld [de], a                                       ; $6bd0: $12
	inc [hl]                                         ; $6bd1: $34
	dec b                                            ; $6bd2: $05
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	ld a, $7c                                        ; $6bd5: $3e $7c
	ld [de], a                                       ; $6bd7: $12
	jp z, $c01e                                      ; $6bd8: $ca $1e $c0

	dec e                                            ; $6bdb: $1d
	ld [$9400], sp                                   ; $6bdc: $08 $00 $94
	ld bc, $145a                                     ; $6bdf: $01 $5a $14
	ld d, h                                          ; $6be2: $54
	nop                                              ; $6be3: $00
	ld [$9a00], sp                                   ; $6be4: $08 $00 $9a
	ld d, $f8                                        ; $6be7: $16 $f8
	add hl, bc                                       ; $6be9: $09
	sub h                                            ; $6bea: $94
	ld bc, $0008                                     ; $6beb: $01 $08 $00
	rst $38                                          ; $6bee: $ff
	ld a, a                                          ; $6bef: $7f
	ld a, h                                          ; $6bf0: $7c
	ld [de], a                                       ; $6bf1: $12
	rst AddAOntoHL                                          ; $6bf2: $ef
	dec a                                            ; $6bf3: $3d
	ld [$ff00], sp                                   ; $6bf4: $08 $00 $ff
	ld a, a                                          ; $6bf7: $7f
	ld e, d                                          ; $6bf8: $5a
	inc d                                            ; $6bf9: $14
	rst AddAOntoHL                                          ; $6bfa: $ef
	dec a                                            ; $6bfb: $3d
	ld [$3f00], sp                                   ; $6bfc: $08 $00 $3f
	ld a, h                                          ; $6bff: $7c
	ld [de], a                                       ; $6c00: $12
	jp z, $c01e                                      ; $6c01: $ca $1e $c0

	dec e                                            ; $6c04: $1d
	ld [$9400], sp                                   ; $6c05: $08 $00 $94
	ld bc, $145a                                     ; $6c08: $01 $5a $14
	ld d, h                                          ; $6c0b: $54
	nop                                              ; $6c0c: $00
	ld [$9a00], sp                                   ; $6c0d: $08 $00 $9a
	ld d, $f8                                        ; $6c10: $16 $f8
	add hl, bc                                       ; $6c12: $09
	sub h                                            ; $6c13: $94
	ld bc, $0008                                     ; $6c14: $01 $08 $00
	rst $38                                          ; $6c17: $ff
	ld a, a                                          ; $6c18: $7f
	ld a, h                                          ; $6c19: $7c
	ld [de], a                                       ; $6c1a: $12
	rst AddAOntoHL                                          ; $6c1b: $ef
	dec a                                            ; $6c1c: $3d
	ld [$3f00], sp                                   ; $6c1d: $08 $00 $3f
	ld b, e                                          ; $6c20: $43
	ld e, d                                          ; $6c21: $5a
	inc d                                            ; $6c22: $14
	sub h                                            ; $6c23: $94
	ld bc, $0008                                     ; $6c24: $01 $08 $00
	ccf                                              ; $6c27: $3f
	ld b, e                                          ; $6c28: $43
	ld e, d                                          ; $6c29: $5a
	inc d                                            ; $6c2a: $14
	add c                                            ; $6c2b: $81
	ld l, [hl]                                       ; $6c2c: $6e
	ld [$3f00], sp                                   ; $6c2d: $08 $00 $3f
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	stop                                             ; $6c32: $10 $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	stop                                             ; $6c36: $10 $00
	nop                                              ; $6c38: $00
	ld [bc], a                                       ; $6c39: $02
	db $10                                           ; $6c3a: $10
	ld [bc], a                                       ; $6c3b: $02
	nop                                              ; $6c3c: $00
	ld [bc], a                                       ; $6c3d: $02
	db $10                                           ; $6c3e: $10
	ld [bc], a                                       ; $6c3f: $02
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	stop                                             ; $6c42: $10 $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	stop                                             ; $6c46: $10 $00
	nop                                              ; $6c48: $00
	ld [bc], a                                       ; $6c49: $02
	db $10                                           ; $6c4a: $10
	ld [bc], a                                       ; $6c4b: $02
	nop                                              ; $6c4c: $00
	ld [bc], a                                       ; $6c4d: $02
	db $10                                           ; $6c4e: $10
	ld [bc], a                                       ; $6c4f: $02
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	stop                                             ; $6c52: $10 $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	stop                                             ; $6c56: $10 $00
	nop                                              ; $6c58: $00
	ld [bc], a                                       ; $6c59: $02
	db $10                                           ; $6c5a: $10
	ld [bc], a                                       ; $6c5b: $02
	nop                                              ; $6c5c: $00
	ld [bc], a                                       ; $6c5d: $02

jr_02d_6c5e:
	db $10                                           ; $6c5e: $10
	ld [bc], a                                       ; $6c5f: $02
	jr jr_02d_6c5e                                   ; $6c60: $18 $fc

	ld a, a                                          ; $6c62: $7f
	or d                                             ; $6c63: $b2
	ld d, [hl]                                       ; $6c64: $56
	ld c, c                                          ; $6c65: $49
	add hl, hl                                       ; $6c66: $29
	ld a, a                                          ; $6c67: $7f
	jr nz, @+$01                                     ; $6c68: $20 $ff

	ld c, e                                          ; $6c6a: $4b
	rst $38                                          ; $6c6b: $ff
	ld h, $9b                                        ; $6c6c: $26 $9b
	ld [bc], a                                       ; $6c6e: $02
	ld a, a                                          ; $6c6f: $7f
	jr nz, jr_02d_6c8a                               ; $6c70: $20 $18

	rra                                              ; $6c72: $1f
	ld b, e                                          ; $6c73: $43
	ld [$0021], sp                                   ; $6c74: $08 $21 $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	jr nz, jr_02d_6c93                               ; $6c79: $20 $18

	ld b, e                                          ; $6c7b: $43
	ld [$0021], sp                                   ; $6c7c: $08 $21 $00
	jr nz, jr_02d_6c81                               ; $6c7f: $20 $00

jr_02d_6c81:
	jr nz, @+$01                                     ; $6c81: $20 $ff

	rst $38                                          ; $6c83: $ff
	rst $38                                          ; $6c84: $ff
	rst $38                                          ; $6c85: $ff
	rst $38                                          ; $6c86: $ff
	rst $38                                          ; $6c87: $ff
	rst $38                                          ; $6c88: $ff
	rst $38                                          ; $6c89: $ff

jr_02d_6c8a:
	rst $38                                          ; $6c8a: $ff
	rst $38                                          ; $6c8b: $ff
	rst $38                                          ; $6c8c: $ff
	rst $38                                          ; $6c8d: $ff
	rst $38                                          ; $6c8e: $ff
	rst $38                                          ; $6c8f: $ff
	rst $38                                          ; $6c90: $ff
	rst $38                                          ; $6c91: $ff
	rst $38                                          ; $6c92: $ff

jr_02d_6c93:
	rst $38                                          ; $6c93: $ff
	rst $38                                          ; $6c94: $ff
	rst $38                                          ; $6c95: $ff
	rst $38                                          ; $6c96: $ff
	rst $38                                          ; $6c97: $ff
	rst $38                                          ; $6c98: $ff
	rst $38                                          ; $6c99: $ff
	rst $38                                          ; $6c9a: $ff
	rst $38                                          ; $6c9b: $ff
	rst $38                                          ; $6c9c: $ff
	rst $38                                          ; $6c9d: $ff
	rst $38                                          ; $6c9e: $ff
	rst $38                                          ; $6c9f: $ff
	rst $38                                          ; $6ca0: $ff
	rst $38                                          ; $6ca1: $ff
	rst $38                                          ; $6ca2: $ff
	rst $38                                          ; $6ca3: $ff
	rst $38                                          ; $6ca4: $ff
	rst $38                                          ; $6ca5: $ff
	rst $38                                          ; $6ca6: $ff
	rst $38                                          ; $6ca7: $ff
	rst $38                                          ; $6ca8: $ff
	rst $38                                          ; $6ca9: $ff
	rst $38                                          ; $6caa: $ff
	rst $38                                          ; $6cab: $ff
	rst $38                                          ; $6cac: $ff
	rst $38                                          ; $6cad: $ff
	rst $38                                          ; $6cae: $ff
	rst $38                                          ; $6caf: $ff
	rst $38                                          ; $6cb0: $ff
	rst $38                                          ; $6cb1: $ff
	rst $38                                          ; $6cb2: $ff
	rst $38                                          ; $6cb3: $ff
	rst $38                                          ; $6cb4: $ff
	rst $38                                          ; $6cb5: $ff
	rst $38                                          ; $6cb6: $ff
	rst $38                                          ; $6cb7: $ff
	rst $38                                          ; $6cb8: $ff
	rst $38                                          ; $6cb9: $ff
	rst $38                                          ; $6cba: $ff
	rst $38                                          ; $6cbb: $ff
	rst $38                                          ; $6cbc: $ff
	rst $38                                          ; $6cbd: $ff
	rst $38                                          ; $6cbe: $ff
	rst $38                                          ; $6cbf: $ff
	rst $38                                          ; $6cc0: $ff
	rst $38                                          ; $6cc1: $ff
	rst $38                                          ; $6cc2: $ff
	rst $38                                          ; $6cc3: $ff
	rst $38                                          ; $6cc4: $ff
	rst $38                                          ; $6cc5: $ff
	rst $38                                          ; $6cc6: $ff
	rst $38                                          ; $6cc7: $ff
	rst $38                                          ; $6cc8: $ff
	rst $38                                          ; $6cc9: $ff
	rst $38                                          ; $6cca: $ff
	rst $38                                          ; $6ccb: $ff
	rst $38                                          ; $6ccc: $ff
	rst $38                                          ; $6ccd: $ff
	rst $38                                          ; $6cce: $ff
	rst $38                                          ; $6ccf: $ff
	rst $38                                          ; $6cd0: $ff
	rst $38                                          ; $6cd1: $ff
	rst $38                                          ; $6cd2: $ff
	rst $38                                          ; $6cd3: $ff
	rst $38                                          ; $6cd4: $ff
	rst $38                                          ; $6cd5: $ff
	rst $38                                          ; $6cd6: $ff
	rst $38                                          ; $6cd7: $ff
	rst $38                                          ; $6cd8: $ff
	rst $38                                          ; $6cd9: $ff
	rst $38                                          ; $6cda: $ff
	rst $38                                          ; $6cdb: $ff
	rst $38                                          ; $6cdc: $ff
	rst $38                                          ; $6cdd: $ff
	rst $38                                          ; $6cde: $ff
	rst $38                                          ; $6cdf: $ff
	rst $38                                          ; $6ce0: $ff
	rst $38                                          ; $6ce1: $ff
	rst $38                                          ; $6ce2: $ff
	rst $38                                          ; $6ce3: $ff
	rst $38                                          ; $6ce4: $ff
	rst $38                                          ; $6ce5: $ff
	rst $38                                          ; $6ce6: $ff
	rst $38                                          ; $6ce7: $ff
	rst $38                                          ; $6ce8: $ff
	rst $38                                          ; $6ce9: $ff
	rst $38                                          ; $6cea: $ff
	rst $38                                          ; $6ceb: $ff
	rst $38                                          ; $6cec: $ff
	rst $38                                          ; $6ced: $ff
	rst $38                                          ; $6cee: $ff
	rst $38                                          ; $6cef: $ff
	rst $38                                          ; $6cf0: $ff
	rst $38                                          ; $6cf1: $ff
	rst $38                                          ; $6cf2: $ff
	rst $38                                          ; $6cf3: $ff
	rst $38                                          ; $6cf4: $ff
	rst $38                                          ; $6cf5: $ff
	rst $38                                          ; $6cf6: $ff
	rst $38                                          ; $6cf7: $ff
	rst $38                                          ; $6cf8: $ff
	rst $38                                          ; $6cf9: $ff
	rst $38                                          ; $6cfa: $ff
	rst $38                                          ; $6cfb: $ff
	rst $38                                          ; $6cfc: $ff
	rst $38                                          ; $6cfd: $ff
	rst $38                                          ; $6cfe: $ff
	rst $38                                          ; $6cff: $ff
	rst $38                                          ; $6d00: $ff
	rst $38                                          ; $6d01: $ff
	rst $38                                          ; $6d02: $ff
	rst $38                                          ; $6d03: $ff
	rst $38                                          ; $6d04: $ff
	rst $38                                          ; $6d05: $ff
	rst $38                                          ; $6d06: $ff
	rst $38                                          ; $6d07: $ff
	rst $38                                          ; $6d08: $ff
	rst $38                                          ; $6d09: $ff
	rst $38                                          ; $6d0a: $ff
	rst $38                                          ; $6d0b: $ff
	rst $38                                          ; $6d0c: $ff
	rst $38                                          ; $6d0d: $ff
	rst $38                                          ; $6d0e: $ff
	rst $38                                          ; $6d0f: $ff
	rst $38                                          ; $6d10: $ff
	rst $38                                          ; $6d11: $ff
	rst $38                                          ; $6d12: $ff
	rst $38                                          ; $6d13: $ff
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	rst $38                                          ; $6d16: $ff
	rst $38                                          ; $6d17: $ff
	rst $38                                          ; $6d18: $ff
	rst $38                                          ; $6d19: $ff
	rst $38                                          ; $6d1a: $ff
	rst $38                                          ; $6d1b: $ff
	rst $38                                          ; $6d1c: $ff
	rst $38                                          ; $6d1d: $ff
	rst $38                                          ; $6d1e: $ff
	rst $38                                          ; $6d1f: $ff
	rst $38                                          ; $6d20: $ff
	rst $38                                          ; $6d21: $ff
	rst $38                                          ; $6d22: $ff
	rst $38                                          ; $6d23: $ff
	rst $38                                          ; $6d24: $ff
	rst $38                                          ; $6d25: $ff
	rst $38                                          ; $6d26: $ff
	rst $38                                          ; $6d27: $ff
	rst $38                                          ; $6d28: $ff
	rst $38                                          ; $6d29: $ff
	rst $38                                          ; $6d2a: $ff
	rst $38                                          ; $6d2b: $ff
	rst $38                                          ; $6d2c: $ff
	rst $38                                          ; $6d2d: $ff
	rst $38                                          ; $6d2e: $ff
	rst $38                                          ; $6d2f: $ff
	rst $38                                          ; $6d30: $ff
	rst $38                                          ; $6d31: $ff
	rst $38                                          ; $6d32: $ff
	rst $38                                          ; $6d33: $ff
	rst $38                                          ; $6d34: $ff
	rst $38                                          ; $6d35: $ff
	rst $38                                          ; $6d36: $ff
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	rst $38                                          ; $6d39: $ff
	rst $38                                          ; $6d3a: $ff
	rst $38                                          ; $6d3b: $ff
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rst $38                                          ; $6d3e: $ff
	rst $38                                          ; $6d3f: $ff
	rst $38                                          ; $6d40: $ff
	rst $38                                          ; $6d41: $ff
	rst $38                                          ; $6d42: $ff
	rst $38                                          ; $6d43: $ff
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	rst $38                                          ; $6d46: $ff
	rst $38                                          ; $6d47: $ff
	rst $38                                          ; $6d48: $ff
	rst $38                                          ; $6d49: $ff
	rst $38                                          ; $6d4a: $ff
	rst $38                                          ; $6d4b: $ff
	rst $38                                          ; $6d4c: $ff
	rst $38                                          ; $6d4d: $ff
	rst $38                                          ; $6d4e: $ff
	rst $38                                          ; $6d4f: $ff
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	rst $38                                          ; $6d52: $ff
	rst $38                                          ; $6d53: $ff
	rst $38                                          ; $6d54: $ff
	rst $38                                          ; $6d55: $ff
	rst $38                                          ; $6d56: $ff
	rst $38                                          ; $6d57: $ff
	rst $38                                          ; $6d58: $ff
	rst $38                                          ; $6d59: $ff
	rst $38                                          ; $6d5a: $ff
	rst $38                                          ; $6d5b: $ff
	rst $38                                          ; $6d5c: $ff
	rst $38                                          ; $6d5d: $ff
	rst $38                                          ; $6d5e: $ff
	rst $38                                          ; $6d5f: $ff
	rst $38                                          ; $6d60: $ff
	rst $38                                          ; $6d61: $ff
	rst $38                                          ; $6d62: $ff
	rst $38                                          ; $6d63: $ff
	rst $38                                          ; $6d64: $ff
	rst $38                                          ; $6d65: $ff
	rst $38                                          ; $6d66: $ff
	rst $38                                          ; $6d67: $ff
	rst $38                                          ; $6d68: $ff
	rst $38                                          ; $6d69: $ff
	rst $38                                          ; $6d6a: $ff
	rst $38                                          ; $6d6b: $ff
	rst $38                                          ; $6d6c: $ff
	rst $38                                          ; $6d6d: $ff
	rst $38                                          ; $6d6e: $ff
	rst $38                                          ; $6d6f: $ff
	rst $38                                          ; $6d70: $ff
	rst $38                                          ; $6d71: $ff
	rst $38                                          ; $6d72: $ff
	rst $38                                          ; $6d73: $ff
	rst $38                                          ; $6d74: $ff
	rst $38                                          ; $6d75: $ff
	rst $38                                          ; $6d76: $ff
	rst $38                                          ; $6d77: $ff
	rst $38                                          ; $6d78: $ff
	rst $38                                          ; $6d79: $ff
	rst $38                                          ; $6d7a: $ff
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	rst $38                                          ; $6d7d: $ff
	rst $38                                          ; $6d7e: $ff
	rst $38                                          ; $6d7f: $ff
	rst $38                                          ; $6d80: $ff
	rst $38                                          ; $6d81: $ff
	rst $38                                          ; $6d82: $ff
	rst $38                                          ; $6d83: $ff
	rst $38                                          ; $6d84: $ff
	rst $38                                          ; $6d85: $ff
	rst $38                                          ; $6d86: $ff
	rst $38                                          ; $6d87: $ff
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	rst $38                                          ; $6d8a: $ff
	rst $38                                          ; $6d8b: $ff
	rst $38                                          ; $6d8c: $ff
	rst $38                                          ; $6d8d: $ff
	rst $38                                          ; $6d8e: $ff
	rst $38                                          ; $6d8f: $ff
	rst $38                                          ; $6d90: $ff
	rst $38                                          ; $6d91: $ff
	rst $38                                          ; $6d92: $ff
	rst $38                                          ; $6d93: $ff
	rst $38                                          ; $6d94: $ff
	rst $38                                          ; $6d95: $ff
	rst $38                                          ; $6d96: $ff
	rst $38                                          ; $6d97: $ff
	rst $38                                          ; $6d98: $ff
	rst $38                                          ; $6d99: $ff
	rst $38                                          ; $6d9a: $ff
	rst $38                                          ; $6d9b: $ff
	rst $38                                          ; $6d9c: $ff
	rst $38                                          ; $6d9d: $ff
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst $38                                          ; $6da0: $ff
	rst $38                                          ; $6da1: $ff
	rst $38                                          ; $6da2: $ff
	rst $38                                          ; $6da3: $ff
	rst $38                                          ; $6da4: $ff
	rst $38                                          ; $6da5: $ff
	rst $38                                          ; $6da6: $ff
	rst $38                                          ; $6da7: $ff
	rst $38                                          ; $6da8: $ff
	rst $38                                          ; $6da9: $ff
	rst $38                                          ; $6daa: $ff
	rst $38                                          ; $6dab: $ff
	rst $38                                          ; $6dac: $ff
	rst $38                                          ; $6dad: $ff
	rst $38                                          ; $6dae: $ff
	rst $38                                          ; $6daf: $ff
	rst $38                                          ; $6db0: $ff
	rst $38                                          ; $6db1: $ff
	rst $38                                          ; $6db2: $ff
	rst $38                                          ; $6db3: $ff
	rst $38                                          ; $6db4: $ff
	rst $38                                          ; $6db5: $ff
	rst $38                                          ; $6db6: $ff
	rst $38                                          ; $6db7: $ff
	rst $38                                          ; $6db8: $ff
	rst $38                                          ; $6db9: $ff
	rst $38                                          ; $6dba: $ff
	rst $38                                          ; $6dbb: $ff
	rst $38                                          ; $6dbc: $ff
	rst $38                                          ; $6dbd: $ff
	rst $38                                          ; $6dbe: $ff
	rst $38                                          ; $6dbf: $ff
	rst $38                                          ; $6dc0: $ff
	rst $38                                          ; $6dc1: $ff
	rst $38                                          ; $6dc2: $ff
	rst $38                                          ; $6dc3: $ff
	rst $38                                          ; $6dc4: $ff
	rst $38                                          ; $6dc5: $ff
	rst $38                                          ; $6dc6: $ff
	rst $38                                          ; $6dc7: $ff
	rst $38                                          ; $6dc8: $ff
	rst $38                                          ; $6dc9: $ff
	rst $38                                          ; $6dca: $ff
	rst $38                                          ; $6dcb: $ff
	rst $38                                          ; $6dcc: $ff
	rst $38                                          ; $6dcd: $ff
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rst $38                                          ; $6dd2: $ff
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	rst $38                                          ; $6dd5: $ff
	rst $38                                          ; $6dd6: $ff
	rst $38                                          ; $6dd7: $ff
	rst $38                                          ; $6dd8: $ff
	rst $38                                          ; $6dd9: $ff
	rst $38                                          ; $6dda: $ff
	rst $38                                          ; $6ddb: $ff
	rst $38                                          ; $6ddc: $ff
	rst $38                                          ; $6ddd: $ff
	rst $38                                          ; $6dde: $ff
	rst $38                                          ; $6ddf: $ff
	rst $38                                          ; $6de0: $ff
	rst $38                                          ; $6de1: $ff
	rst $38                                          ; $6de2: $ff
	rst $38                                          ; $6de3: $ff
	rst $38                                          ; $6de4: $ff
	rst $38                                          ; $6de5: $ff
	rst $38                                          ; $6de6: $ff
	rst $38                                          ; $6de7: $ff
	rst $38                                          ; $6de8: $ff
	rst $38                                          ; $6de9: $ff
	rst $38                                          ; $6dea: $ff
	rst $38                                          ; $6deb: $ff
	rst $38                                          ; $6dec: $ff
	rst $38                                          ; $6ded: $ff
	rst $38                                          ; $6dee: $ff
	rst $38                                          ; $6def: $ff
	rst $38                                          ; $6df0: $ff
	rst $38                                          ; $6df1: $ff
	rst $38                                          ; $6df2: $ff
	rst $38                                          ; $6df3: $ff
	rst $38                                          ; $6df4: $ff
	rst $38                                          ; $6df5: $ff
	rst $38                                          ; $6df6: $ff
	rst $38                                          ; $6df7: $ff
	rst $38                                          ; $6df8: $ff
	rst $38                                          ; $6df9: $ff
	rst $38                                          ; $6dfa: $ff
	rst $38                                          ; $6dfb: $ff
	rst $38                                          ; $6dfc: $ff
	rst $38                                          ; $6dfd: $ff
	rst $38                                          ; $6dfe: $ff
	rst $38                                          ; $6dff: $ff
	rst $38                                          ; $6e00: $ff
	rst $38                                          ; $6e01: $ff
	rst $38                                          ; $6e02: $ff
	rst $38                                          ; $6e03: $ff
	rst $38                                          ; $6e04: $ff
	rst $38                                          ; $6e05: $ff
	rst $38                                          ; $6e06: $ff
	rst $38                                          ; $6e07: $ff
	rst $38                                          ; $6e08: $ff
	rst $38                                          ; $6e09: $ff
	rst $38                                          ; $6e0a: $ff
	rst $38                                          ; $6e0b: $ff

Call_02d_6e0c:
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	rst $38                                          ; $6e0e: $ff
	rst $38                                          ; $6e0f: $ff
	rst $38                                          ; $6e10: $ff
	rst $38                                          ; $6e11: $ff
	rst $38                                          ; $6e12: $ff
	rst $38                                          ; $6e13: $ff
	rst $38                                          ; $6e14: $ff
	rst $38                                          ; $6e15: $ff
	rst $38                                          ; $6e16: $ff
	rst $38                                          ; $6e17: $ff
	rst $38                                          ; $6e18: $ff
	rst $38                                          ; $6e19: $ff
	rst $38                                          ; $6e1a: $ff
	rst $38                                          ; $6e1b: $ff
	rst $38                                          ; $6e1c: $ff
	rst $38                                          ; $6e1d: $ff
	rst $38                                          ; $6e1e: $ff
	rst $38                                          ; $6e1f: $ff
	rst $38                                          ; $6e20: $ff
	rst $38                                          ; $6e21: $ff
	rst $38                                          ; $6e22: $ff
	rst $38                                          ; $6e23: $ff
	rst $38                                          ; $6e24: $ff
	rst $38                                          ; $6e25: $ff
	rst $38                                          ; $6e26: $ff
	rst $38                                          ; $6e27: $ff
	rst $38                                          ; $6e28: $ff
	rst $38                                          ; $6e29: $ff
	rst $38                                          ; $6e2a: $ff
	rst $38                                          ; $6e2b: $ff
	rst $38                                          ; $6e2c: $ff
	rst $38                                          ; $6e2d: $ff
	rst $38                                          ; $6e2e: $ff
	rst $38                                          ; $6e2f: $ff
	rst $38                                          ; $6e30: $ff
	rst $38                                          ; $6e31: $ff
	rst $38                                          ; $6e32: $ff
	rst $38                                          ; $6e33: $ff
	rst $38                                          ; $6e34: $ff
	rst $38                                          ; $6e35: $ff
	rst $38                                          ; $6e36: $ff
	rst $38                                          ; $6e37: $ff
	rst $38                                          ; $6e38: $ff
	rst $38                                          ; $6e39: $ff
	rst $38                                          ; $6e3a: $ff
	rst $38                                          ; $6e3b: $ff
	rst $38                                          ; $6e3c: $ff
	rst $38                                          ; $6e3d: $ff
	rst $38                                          ; $6e3e: $ff
	rst $38                                          ; $6e3f: $ff
	rst $38                                          ; $6e40: $ff
	rst $38                                          ; $6e41: $ff
	rst $38                                          ; $6e42: $ff
	rst $38                                          ; $6e43: $ff
	rst $38                                          ; $6e44: $ff
	rst $38                                          ; $6e45: $ff
	rst $38                                          ; $6e46: $ff
	rst $38                                          ; $6e47: $ff
	rst $38                                          ; $6e48: $ff
	rst $38                                          ; $6e49: $ff
	rst $38                                          ; $6e4a: $ff
	rst $38                                          ; $6e4b: $ff
	rst $38                                          ; $6e4c: $ff
	rst $38                                          ; $6e4d: $ff
	rst $38                                          ; $6e4e: $ff
	rst $38                                          ; $6e4f: $ff
	rst $38                                          ; $6e50: $ff
	rst $38                                          ; $6e51: $ff
	rst $38                                          ; $6e52: $ff
	rst $38                                          ; $6e53: $ff
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	rst $38                                          ; $6e56: $ff
	rst $38                                          ; $6e57: $ff
	rst $38                                          ; $6e58: $ff
	rst $38                                          ; $6e59: $ff
	rst $38                                          ; $6e5a: $ff
	rst $38                                          ; $6e5b: $ff
	rst $38                                          ; $6e5c: $ff
	rst $38                                          ; $6e5d: $ff
	rst $38                                          ; $6e5e: $ff
	rst $38                                          ; $6e5f: $ff
	rst $38                                          ; $6e60: $ff
	rst $38                                          ; $6e61: $ff
	rst $38                                          ; $6e62: $ff
	rst $38                                          ; $6e63: $ff
	rst $38                                          ; $6e64: $ff
	rst $38                                          ; $6e65: $ff
	rst $38                                          ; $6e66: $ff
	rst $38                                          ; $6e67: $ff
	rst $38                                          ; $6e68: $ff
	rst $38                                          ; $6e69: $ff
	rst $38                                          ; $6e6a: $ff
	rst $38                                          ; $6e6b: $ff
	rst $38                                          ; $6e6c: $ff
	rst $38                                          ; $6e6d: $ff
	rst $38                                          ; $6e6e: $ff
	rst $38                                          ; $6e6f: $ff
	rst $38                                          ; $6e70: $ff
	rst $38                                          ; $6e71: $ff
	rst $38                                          ; $6e72: $ff
	rst $38                                          ; $6e73: $ff
	rst $38                                          ; $6e74: $ff
	rst $38                                          ; $6e75: $ff
	rst $38                                          ; $6e76: $ff
	rst $38                                          ; $6e77: $ff
	rst $38                                          ; $6e78: $ff
	rst $38                                          ; $6e79: $ff
	rst $38                                          ; $6e7a: $ff
	rst $38                                          ; $6e7b: $ff
	rst $38                                          ; $6e7c: $ff
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	rst $38                                          ; $6e7f: $ff
	rst $38                                          ; $6e80: $ff
	rst $38                                          ; $6e81: $ff
	rst $38                                          ; $6e82: $ff
	rst $38                                          ; $6e83: $ff
	rst $38                                          ; $6e84: $ff
	rst $38                                          ; $6e85: $ff
	rst $38                                          ; $6e86: $ff
	rst $38                                          ; $6e87: $ff
	rst $38                                          ; $6e88: $ff
	rst $38                                          ; $6e89: $ff
	rst $38                                          ; $6e8a: $ff
	rst $38                                          ; $6e8b: $ff
	rst $38                                          ; $6e8c: $ff
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	rst $38                                          ; $6e8f: $ff
	rst $38                                          ; $6e90: $ff
	rst $38                                          ; $6e91: $ff
	rst $38                                          ; $6e92: $ff
	rst $38                                          ; $6e93: $ff
	rst $38                                          ; $6e94: $ff
	rst $38                                          ; $6e95: $ff
	rst $38                                          ; $6e96: $ff
	rst $38                                          ; $6e97: $ff
	rst $38                                          ; $6e98: $ff
	rst $38                                          ; $6e99: $ff
	rst $38                                          ; $6e9a: $ff
	rst $38                                          ; $6e9b: $ff
	rst $38                                          ; $6e9c: $ff
	rst $38                                          ; $6e9d: $ff
	rst $38                                          ; $6e9e: $ff
	rst $38                                          ; $6e9f: $ff
	rst $38                                          ; $6ea0: $ff
	rst $38                                          ; $6ea1: $ff
	rst $38                                          ; $6ea2: $ff
	rst $38                                          ; $6ea3: $ff
	rst $38                                          ; $6ea4: $ff
	rst $38                                          ; $6ea5: $ff
	rst $38                                          ; $6ea6: $ff
	rst $38                                          ; $6ea7: $ff
	rst $38                                          ; $6ea8: $ff
	rst $38                                          ; $6ea9: $ff
	rst $38                                          ; $6eaa: $ff
	rst $38                                          ; $6eab: $ff
	rst $38                                          ; $6eac: $ff
	rst $38                                          ; $6ead: $ff
	rst $38                                          ; $6eae: $ff
	rst $38                                          ; $6eaf: $ff
	rst $38                                          ; $6eb0: $ff
	rst $38                                          ; $6eb1: $ff
	rst $38                                          ; $6eb2: $ff
	rst $38                                          ; $6eb3: $ff
	rst $38                                          ; $6eb4: $ff
	rst $38                                          ; $6eb5: $ff
	rst $38                                          ; $6eb6: $ff
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	rst $38                                          ; $6ebb: $ff
	rst $38                                          ; $6ebc: $ff
	rst $38                                          ; $6ebd: $ff
	rst $38                                          ; $6ebe: $ff
	rst $38                                          ; $6ebf: $ff
	rst $38                                          ; $6ec0: $ff
	rst $38                                          ; $6ec1: $ff
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff
	rst $38                                          ; $6ec4: $ff
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	rst $38                                          ; $6ec7: $ff
	rst $38                                          ; $6ec8: $ff
	rst $38                                          ; $6ec9: $ff
	rst $38                                          ; $6eca: $ff
	rst $38                                          ; $6ecb: $ff
	rst $38                                          ; $6ecc: $ff
	rst $38                                          ; $6ecd: $ff
	rst $38                                          ; $6ece: $ff
	rst $38                                          ; $6ecf: $ff
	rst $38                                          ; $6ed0: $ff
	rst $38                                          ; $6ed1: $ff
	rst $38                                          ; $6ed2: $ff
	rst $38                                          ; $6ed3: $ff
	rst $38                                          ; $6ed4: $ff
	rst $38                                          ; $6ed5: $ff
	rst $38                                          ; $6ed6: $ff
	rst $38                                          ; $6ed7: $ff
	rst $38                                          ; $6ed8: $ff
	rst $38                                          ; $6ed9: $ff
	rst $38                                          ; $6eda: $ff
	rst $38                                          ; $6edb: $ff
	rst $38                                          ; $6edc: $ff
	rst $38                                          ; $6edd: $ff
	rst $38                                          ; $6ede: $ff
	rst $38                                          ; $6edf: $ff
	rst $38                                          ; $6ee0: $ff
	rst $38                                          ; $6ee1: $ff
	rst $38                                          ; $6ee2: $ff
	rst $38                                          ; $6ee3: $ff
	rst $38                                          ; $6ee4: $ff
	rst $38                                          ; $6ee5: $ff
	rst $38                                          ; $6ee6: $ff
	rst $38                                          ; $6ee7: $ff
	rst $38                                          ; $6ee8: $ff
	rst $38                                          ; $6ee9: $ff
	rst $38                                          ; $6eea: $ff
	rst $38                                          ; $6eeb: $ff
	rst $38                                          ; $6eec: $ff
	rst $38                                          ; $6eed: $ff
	rst $38                                          ; $6eee: $ff
	rst $38                                          ; $6eef: $ff
	rst $38                                          ; $6ef0: $ff
	rst $38                                          ; $6ef1: $ff
	rst $38                                          ; $6ef2: $ff
	rst $38                                          ; $6ef3: $ff
	rst $38                                          ; $6ef4: $ff
	rst $38                                          ; $6ef5: $ff
	rst $38                                          ; $6ef6: $ff
	rst $38                                          ; $6ef7: $ff
	rst $38                                          ; $6ef8: $ff
	rst $38                                          ; $6ef9: $ff
	rst $38                                          ; $6efa: $ff
	rst $38                                          ; $6efb: $ff
	rst $38                                          ; $6efc: $ff
	rst $38                                          ; $6efd: $ff
	rst $38                                          ; $6efe: $ff
	rst $38                                          ; $6eff: $ff
	rst $38                                          ; $6f00: $ff
	rst $38                                          ; $6f01: $ff
	rst $38                                          ; $6f02: $ff
	rst $38                                          ; $6f03: $ff
	rst $38                                          ; $6f04: $ff
	rst $38                                          ; $6f05: $ff
	rst $38                                          ; $6f06: $ff
	rst $38                                          ; $6f07: $ff
	rst $38                                          ; $6f08: $ff
	rst $38                                          ; $6f09: $ff
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	rst $38                                          ; $6f0c: $ff
	rst $38                                          ; $6f0d: $ff
	rst $38                                          ; $6f0e: $ff
	rst $38                                          ; $6f0f: $ff
	rst $38                                          ; $6f10: $ff
	rst $38                                          ; $6f11: $ff
	rst $38                                          ; $6f12: $ff
	rst $38                                          ; $6f13: $ff
	rst $38                                          ; $6f14: $ff
	rst $38                                          ; $6f15: $ff
	rst $38                                          ; $6f16: $ff
	rst $38                                          ; $6f17: $ff
	rst $38                                          ; $6f18: $ff
	rst $38                                          ; $6f19: $ff
	rst $38                                          ; $6f1a: $ff
	rst $38                                          ; $6f1b: $ff
	rst $38                                          ; $6f1c: $ff
	rst $38                                          ; $6f1d: $ff
	rst $38                                          ; $6f1e: $ff
	rst $38                                          ; $6f1f: $ff
	rst $38                                          ; $6f20: $ff
	rst $38                                          ; $6f21: $ff
	rst $38                                          ; $6f22: $ff
	rst $38                                          ; $6f23: $ff
	rst $38                                          ; $6f24: $ff
	rst $38                                          ; $6f25: $ff
	rst $38                                          ; $6f26: $ff
	rst $38                                          ; $6f27: $ff
	rst $38                                          ; $6f28: $ff
	rst $38                                          ; $6f29: $ff
	rst $38                                          ; $6f2a: $ff
	rst $38                                          ; $6f2b: $ff
	rst $38                                          ; $6f2c: $ff
	rst $38                                          ; $6f2d: $ff
	rst $38                                          ; $6f2e: $ff
	rst $38                                          ; $6f2f: $ff
	rst $38                                          ; $6f30: $ff
	rst $38                                          ; $6f31: $ff
	rst $38                                          ; $6f32: $ff
	rst $38                                          ; $6f33: $ff
	rst $38                                          ; $6f34: $ff
	rst $38                                          ; $6f35: $ff
	rst $38                                          ; $6f36: $ff
	rst $38                                          ; $6f37: $ff
	rst $38                                          ; $6f38: $ff
	rst $38                                          ; $6f39: $ff
	rst $38                                          ; $6f3a: $ff
	rst $38                                          ; $6f3b: $ff
	rst $38                                          ; $6f3c: $ff
	rst $38                                          ; $6f3d: $ff
	rst $38                                          ; $6f3e: $ff
	rst $38                                          ; $6f3f: $ff
	rst $38                                          ; $6f40: $ff
	rst $38                                          ; $6f41: $ff
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	rst $38                                          ; $6f44: $ff
	rst $38                                          ; $6f45: $ff
	rst $38                                          ; $6f46: $ff
	rst $38                                          ; $6f47: $ff
	rst $38                                          ; $6f48: $ff
	rst $38                                          ; $6f49: $ff
	rst $38                                          ; $6f4a: $ff
	rst $38                                          ; $6f4b: $ff
	rst $38                                          ; $6f4c: $ff
	rst $38                                          ; $6f4d: $ff
	rst $38                                          ; $6f4e: $ff
	rst $38                                          ; $6f4f: $ff
	rst $38                                          ; $6f50: $ff
	rst $38                                          ; $6f51: $ff
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	rst $38                                          ; $6f54: $ff
	rst $38                                          ; $6f55: $ff
	rst $38                                          ; $6f56: $ff
	rst $38                                          ; $6f57: $ff
	rst $38                                          ; $6f58: $ff
	rst $38                                          ; $6f59: $ff
	rst $38                                          ; $6f5a: $ff
	rst $38                                          ; $6f5b: $ff
	rst $38                                          ; $6f5c: $ff
	rst $38                                          ; $6f5d: $ff
	rst $38                                          ; $6f5e: $ff
	rst $38                                          ; $6f5f: $ff
	rst $38                                          ; $6f60: $ff
	rst $38                                          ; $6f61: $ff
	rst $38                                          ; $6f62: $ff
	rst $38                                          ; $6f63: $ff
	rst $38                                          ; $6f64: $ff
	rst $38                                          ; $6f65: $ff
	rst $38                                          ; $6f66: $ff
	rst $38                                          ; $6f67: $ff
	rst $38                                          ; $6f68: $ff
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rst $38                                          ; $6f6e: $ff
	rst $38                                          ; $6f6f: $ff
	rst $38                                          ; $6f70: $ff
	rst $38                                          ; $6f71: $ff
	rst $38                                          ; $6f72: $ff
	rst $38                                          ; $6f73: $ff
	rst $38                                          ; $6f74: $ff
	rst $38                                          ; $6f75: $ff
	rst $38                                          ; $6f76: $ff
	rst $38                                          ; $6f77: $ff
	rst $38                                          ; $6f78: $ff
	rst $38                                          ; $6f79: $ff
	rst $38                                          ; $6f7a: $ff
	rst $38                                          ; $6f7b: $ff
	rst $38                                          ; $6f7c: $ff
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff

Call_02d_6f7f:
	rst $38                                          ; $6f7f: $ff
	rst $38                                          ; $6f80: $ff
	rst $38                                          ; $6f81: $ff
	rst $38                                          ; $6f82: $ff
	rst $38                                          ; $6f83: $ff
	rst $38                                          ; $6f84: $ff
	rst $38                                          ; $6f85: $ff
	rst $38                                          ; $6f86: $ff
	rst $38                                          ; $6f87: $ff
	rst $38                                          ; $6f88: $ff
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	rst $38                                          ; $6f8b: $ff
	rst $38                                          ; $6f8c: $ff
	rst $38                                          ; $6f8d: $ff
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	rst $38                                          ; $6f92: $ff
	rst $38                                          ; $6f93: $ff
	rst $38                                          ; $6f94: $ff
	rst $38                                          ; $6f95: $ff
	rst $38                                          ; $6f96: $ff
	rst $38                                          ; $6f97: $ff
	rst $38                                          ; $6f98: $ff
	rst $38                                          ; $6f99: $ff
	rst $38                                          ; $6f9a: $ff
	rst $38                                          ; $6f9b: $ff
	rst $38                                          ; $6f9c: $ff
	rst $38                                          ; $6f9d: $ff
	rst $38                                          ; $6f9e: $ff
	rst $38                                          ; $6f9f: $ff
	rst $38                                          ; $6fa0: $ff
	rst $38                                          ; $6fa1: $ff
	rst $38                                          ; $6fa2: $ff
	rst $38                                          ; $6fa3: $ff
	rst $38                                          ; $6fa4: $ff
	rst $38                                          ; $6fa5: $ff
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	rst $38                                          ; $6fa8: $ff
	rst $38                                          ; $6fa9: $ff
	rst $38                                          ; $6faa: $ff
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	rst $38                                          ; $6fad: $ff
	rst $38                                          ; $6fae: $ff
	rst $38                                          ; $6faf: $ff
	rst $38                                          ; $6fb0: $ff
	rst $38                                          ; $6fb1: $ff
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	rst $38                                          ; $6fb4: $ff
	rst $38                                          ; $6fb5: $ff
	rst $38                                          ; $6fb6: $ff
	rst $38                                          ; $6fb7: $ff
	rst $38                                          ; $6fb8: $ff
	rst $38                                          ; $6fb9: $ff
	rst $38                                          ; $6fba: $ff
	rst $38                                          ; $6fbb: $ff
	rst $38                                          ; $6fbc: $ff
	rst $38                                          ; $6fbd: $ff
	rst $38                                          ; $6fbe: $ff
	rst $38                                          ; $6fbf: $ff
	rst $38                                          ; $6fc0: $ff
	rst $38                                          ; $6fc1: $ff
	rst $38                                          ; $6fc2: $ff
	rst $38                                          ; $6fc3: $ff
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	rst $38                                          ; $6fc6: $ff
	rst $38                                          ; $6fc7: $ff
	rst $38                                          ; $6fc8: $ff
	rst $38                                          ; $6fc9: $ff
	rst $38                                          ; $6fca: $ff
	rst $38                                          ; $6fcb: $ff
	rst $38                                          ; $6fcc: $ff
	rst $38                                          ; $6fcd: $ff
	rst $38                                          ; $6fce: $ff
	rst $38                                          ; $6fcf: $ff
	rst $38                                          ; $6fd0: $ff
	rst $38                                          ; $6fd1: $ff
	rst $38                                          ; $6fd2: $ff
	rst $38                                          ; $6fd3: $ff
	rst $38                                          ; $6fd4: $ff
	rst $38                                          ; $6fd5: $ff
	rst $38                                          ; $6fd6: $ff
	rst $38                                          ; $6fd7: $ff
	rst $38                                          ; $6fd8: $ff
	rst $38                                          ; $6fd9: $ff
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	rst $38                                          ; $6fdf: $ff
	rst $38                                          ; $6fe0: $ff
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	rst $38                                          ; $6fe3: $ff
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	rst $38                                          ; $6fe7: $ff
	rst $38                                          ; $6fe8: $ff
	rst $38                                          ; $6fe9: $ff
	rst $38                                          ; $6fea: $ff
	rst $38                                          ; $6feb: $ff
	rst $38                                          ; $6fec: $ff
	rst $38                                          ; $6fed: $ff
	rst $38                                          ; $6fee: $ff
	rst $38                                          ; $6fef: $ff
	rst $38                                          ; $6ff0: $ff
	rst $38                                          ; $6ff1: $ff
	rst $38                                          ; $6ff2: $ff
	rst $38                                          ; $6ff3: $ff
	rst $38                                          ; $6ff4: $ff
	rst $38                                          ; $6ff5: $ff
	rst $38                                          ; $6ff6: $ff
	rst $38                                          ; $6ff7: $ff
	rst $38                                          ; $6ff8: $ff
	rst $38                                          ; $6ff9: $ff
	rst $38                                          ; $6ffa: $ff
	rst $38                                          ; $6ffb: $ff
	rst $38                                          ; $6ffc: $ff
	rst $38                                          ; $6ffd: $ff
	rst $38                                          ; $6ffe: $ff
	rst $38                                          ; $6fff: $ff
	rst $38                                          ; $7000: $ff
	rst $38                                          ; $7001: $ff
	rst $38                                          ; $7002: $ff
	rst $38                                          ; $7003: $ff
	rst $38                                          ; $7004: $ff
	rst $38                                          ; $7005: $ff
	rst $38                                          ; $7006: $ff
	rst $38                                          ; $7007: $ff
	rst $38                                          ; $7008: $ff
	rst $38                                          ; $7009: $ff
	rst $38                                          ; $700a: $ff
	rst $38                                          ; $700b: $ff
	rst $38                                          ; $700c: $ff
	rst $38                                          ; $700d: $ff
	rst $38                                          ; $700e: $ff
	rst $38                                          ; $700f: $ff
	rst $38                                          ; $7010: $ff
	rst $38                                          ; $7011: $ff
	rst $38                                          ; $7012: $ff
	rst $38                                          ; $7013: $ff
	rst $38                                          ; $7014: $ff
	rst $38                                          ; $7015: $ff
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	rst $38                                          ; $7018: $ff
	rst $38                                          ; $7019: $ff
	rst $38                                          ; $701a: $ff
	rst $38                                          ; $701b: $ff
	rst $38                                          ; $701c: $ff
	rst $38                                          ; $701d: $ff
	rst $38                                          ; $701e: $ff
	rst $38                                          ; $701f: $ff
	rst $38                                          ; $7020: $ff
	rst $38                                          ; $7021: $ff
	rst $38                                          ; $7022: $ff
	rst $38                                          ; $7023: $ff
	rst $38                                          ; $7024: $ff
	rst $38                                          ; $7025: $ff
	rst $38                                          ; $7026: $ff
	rst $38                                          ; $7027: $ff
	rst $38                                          ; $7028: $ff
	rst $38                                          ; $7029: $ff
	rst $38                                          ; $702a: $ff
	rst $38                                          ; $702b: $ff
	rst $38                                          ; $702c: $ff
	rst $38                                          ; $702d: $ff
	rst $38                                          ; $702e: $ff
	rst $38                                          ; $702f: $ff
	rst $38                                          ; $7030: $ff
	rst $38                                          ; $7031: $ff
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	rst $38                                          ; $7035: $ff
	rst $38                                          ; $7036: $ff
	rst $38                                          ; $7037: $ff
	rst $38                                          ; $7038: $ff
	rst $38                                          ; $7039: $ff
	rst $38                                          ; $703a: $ff
	rst $38                                          ; $703b: $ff
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	rst $38                                          ; $703e: $ff
	rst $38                                          ; $703f: $ff
	rst $38                                          ; $7040: $ff
	rst $38                                          ; $7041: $ff
	rst $38                                          ; $7042: $ff
	rst $38                                          ; $7043: $ff
	rst $38                                          ; $7044: $ff
	rst $38                                          ; $7045: $ff
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	rst $38                                          ; $7048: $ff
	rst $38                                          ; $7049: $ff
	rst $38                                          ; $704a: $ff
	rst $38                                          ; $704b: $ff
	rst $38                                          ; $704c: $ff
	rst $38                                          ; $704d: $ff
	rst $38                                          ; $704e: $ff
	rst $38                                          ; $704f: $ff
	rst $38                                          ; $7050: $ff
	rst $38                                          ; $7051: $ff
	rst $38                                          ; $7052: $ff
	rst $38                                          ; $7053: $ff
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	rst $38                                          ; $7056: $ff
	rst $38                                          ; $7057: $ff
	rst $38                                          ; $7058: $ff
	rst $38                                          ; $7059: $ff
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	rst $38                                          ; $705c: $ff
	rst $38                                          ; $705d: $ff
	rst $38                                          ; $705e: $ff
	rst $38                                          ; $705f: $ff
	rst $38                                          ; $7060: $ff
	rst $38                                          ; $7061: $ff
	rst $38                                          ; $7062: $ff
	rst $38                                          ; $7063: $ff
	rst $38                                          ; $7064: $ff
	rst $38                                          ; $7065: $ff
	rst $38                                          ; $7066: $ff
	rst $38                                          ; $7067: $ff
	rst $38                                          ; $7068: $ff
	rst $38                                          ; $7069: $ff
	rst $38                                          ; $706a: $ff
	rst $38                                          ; $706b: $ff
	rst $38                                          ; $706c: $ff
	rst $38                                          ; $706d: $ff
	rst $38                                          ; $706e: $ff
	rst $38                                          ; $706f: $ff
	rst $38                                          ; $7070: $ff
	rst $38                                          ; $7071: $ff
	rst $38                                          ; $7072: $ff
	rst $38                                          ; $7073: $ff
	rst $38                                          ; $7074: $ff
	rst $38                                          ; $7075: $ff
	rst $38                                          ; $7076: $ff
	rst $38                                          ; $7077: $ff
	rst $38                                          ; $7078: $ff
	rst $38                                          ; $7079: $ff
	rst $38                                          ; $707a: $ff
	rst $38                                          ; $707b: $ff
	rst $38                                          ; $707c: $ff
	rst $38                                          ; $707d: $ff
	rst $38                                          ; $707e: $ff
	rst $38                                          ; $707f: $ff
	rst $38                                          ; $7080: $ff
	rst $38                                          ; $7081: $ff
	rst $38                                          ; $7082: $ff
	rst $38                                          ; $7083: $ff
	rst $38                                          ; $7084: $ff
	rst $38                                          ; $7085: $ff
	rst $38                                          ; $7086: $ff
	rst $38                                          ; $7087: $ff
	rst $38                                          ; $7088: $ff
	rst $38                                          ; $7089: $ff
	rst $38                                          ; $708a: $ff
	rst $38                                          ; $708b: $ff
	rst $38                                          ; $708c: $ff
	rst $38                                          ; $708d: $ff
	rst $38                                          ; $708e: $ff
	rst $38                                          ; $708f: $ff
	rst $38                                          ; $7090: $ff
	rst $38                                          ; $7091: $ff
	rst $38                                          ; $7092: $ff
	rst $38                                          ; $7093: $ff
	rst $38                                          ; $7094: $ff
	rst $38                                          ; $7095: $ff
	rst $38                                          ; $7096: $ff
	rst $38                                          ; $7097: $ff
	rst $38                                          ; $7098: $ff
	rst $38                                          ; $7099: $ff
	rst $38                                          ; $709a: $ff
	rst $38                                          ; $709b: $ff
	rst $38                                          ; $709c: $ff
	rst $38                                          ; $709d: $ff
	rst $38                                          ; $709e: $ff
	rst $38                                          ; $709f: $ff
	rst $38                                          ; $70a0: $ff
	rst $38                                          ; $70a1: $ff
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	rst $38                                          ; $70a4: $ff
	rst $38                                          ; $70a5: $ff
	rst $38                                          ; $70a6: $ff
	rst $38                                          ; $70a7: $ff
	rst $38                                          ; $70a8: $ff
	rst $38                                          ; $70a9: $ff
	rst $38                                          ; $70aa: $ff
	rst $38                                          ; $70ab: $ff
	rst $38                                          ; $70ac: $ff
	rst $38                                          ; $70ad: $ff
	rst $38                                          ; $70ae: $ff
	rst $38                                          ; $70af: $ff
	rst $38                                          ; $70b0: $ff
	rst $38                                          ; $70b1: $ff
	rst $38                                          ; $70b2: $ff
	rst $38                                          ; $70b3: $ff
	rst $38                                          ; $70b4: $ff
	rst $38                                          ; $70b5: $ff
	rst $38                                          ; $70b6: $ff
	rst $38                                          ; $70b7: $ff
	rst $38                                          ; $70b8: $ff
	rst $38                                          ; $70b9: $ff
	rst $38                                          ; $70ba: $ff
	rst $38                                          ; $70bb: $ff
	rst $38                                          ; $70bc: $ff
	rst $38                                          ; $70bd: $ff
	rst $38                                          ; $70be: $ff
	rst $38                                          ; $70bf: $ff
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	rst $38                                          ; $70c2: $ff
	rst $38                                          ; $70c3: $ff
	rst $38                                          ; $70c4: $ff
	rst $38                                          ; $70c5: $ff
	rst $38                                          ; $70c6: $ff
	rst $38                                          ; $70c7: $ff
	rst $38                                          ; $70c8: $ff
	rst $38                                          ; $70c9: $ff
	rst $38                                          ; $70ca: $ff
	rst $38                                          ; $70cb: $ff
	rst $38                                          ; $70cc: $ff
	rst $38                                          ; $70cd: $ff
	rst $38                                          ; $70ce: $ff
	rst $38                                          ; $70cf: $ff
	rst $38                                          ; $70d0: $ff
	rst $38                                          ; $70d1: $ff
	rst $38                                          ; $70d2: $ff
	rst $38                                          ; $70d3: $ff
	rst $38                                          ; $70d4: $ff
	rst $38                                          ; $70d5: $ff
	rst $38                                          ; $70d6: $ff
	rst $38                                          ; $70d7: $ff
	rst $38                                          ; $70d8: $ff
	rst $38                                          ; $70d9: $ff
	rst $38                                          ; $70da: $ff
	rst $38                                          ; $70db: $ff
	rst $38                                          ; $70dc: $ff
	rst $38                                          ; $70dd: $ff
	rst $38                                          ; $70de: $ff
	rst $38                                          ; $70df: $ff
	rst $38                                          ; $70e0: $ff
	rst $38                                          ; $70e1: $ff
	rst $38                                          ; $70e2: $ff
	rst $38                                          ; $70e3: $ff
	rst $38                                          ; $70e4: $ff
	rst $38                                          ; $70e5: $ff
	rst $38                                          ; $70e6: $ff
	rst $38                                          ; $70e7: $ff
	rst $38                                          ; $70e8: $ff
	rst $38                                          ; $70e9: $ff
	rst $38                                          ; $70ea: $ff
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	rst $38                                          ; $70ed: $ff
	rst $38                                          ; $70ee: $ff
	rst $38                                          ; $70ef: $ff
	rst $38                                          ; $70f0: $ff
	rst $38                                          ; $70f1: $ff
	rst $38                                          ; $70f2: $ff
	rst $38                                          ; $70f3: $ff
	rst $38                                          ; $70f4: $ff
	rst $38                                          ; $70f5: $ff
	rst $38                                          ; $70f6: $ff
	rst $38                                          ; $70f7: $ff
	rst $38                                          ; $70f8: $ff
	rst $38                                          ; $70f9: $ff
	rst $38                                          ; $70fa: $ff
	rst $38                                          ; $70fb: $ff
	rst $38                                          ; $70fc: $ff
	rst $38                                          ; $70fd: $ff
	rst $38                                          ; $70fe: $ff
	rst $38                                          ; $70ff: $ff
	rst $38                                          ; $7100: $ff
	rst $38                                          ; $7101: $ff
	rst $38                                          ; $7102: $ff
	rst $38                                          ; $7103: $ff
	rst $38                                          ; $7104: $ff
	rst $38                                          ; $7105: $ff
	rst $38                                          ; $7106: $ff
	rst $38                                          ; $7107: $ff
	rst $38                                          ; $7108: $ff
	rst $38                                          ; $7109: $ff
	rst $38                                          ; $710a: $ff
	rst $38                                          ; $710b: $ff
	rst $38                                          ; $710c: $ff
	rst $38                                          ; $710d: $ff
	rst $38                                          ; $710e: $ff
	rst $38                                          ; $710f: $ff
	rst $38                                          ; $7110: $ff
	rst $38                                          ; $7111: $ff
	rst $38                                          ; $7112: $ff
	rst $38                                          ; $7113: $ff
	rst $38                                          ; $7114: $ff
	rst $38                                          ; $7115: $ff
	rst $38                                          ; $7116: $ff
	rst $38                                          ; $7117: $ff
	rst $38                                          ; $7118: $ff
	rst $38                                          ; $7119: $ff
	rst $38                                          ; $711a: $ff
	rst $38                                          ; $711b: $ff
	rst $38                                          ; $711c: $ff
	rst $38                                          ; $711d: $ff
	rst $38                                          ; $711e: $ff
	rst $38                                          ; $711f: $ff
	rst $38                                          ; $7120: $ff
	rst $38                                          ; $7121: $ff
	rst $38                                          ; $7122: $ff
	rst $38                                          ; $7123: $ff
	rst $38                                          ; $7124: $ff
	rst $38                                          ; $7125: $ff
	rst $38                                          ; $7126: $ff
	rst $38                                          ; $7127: $ff
	rst $38                                          ; $7128: $ff
	rst $38                                          ; $7129: $ff
	rst $38                                          ; $712a: $ff
	rst $38                                          ; $712b: $ff
	rst $38                                          ; $712c: $ff
	rst $38                                          ; $712d: $ff
	rst $38                                          ; $712e: $ff
	rst $38                                          ; $712f: $ff
	rst $38                                          ; $7130: $ff
	rst $38                                          ; $7131: $ff
	rst $38                                          ; $7132: $ff
	rst $38                                          ; $7133: $ff
	rst $38                                          ; $7134: $ff
	rst $38                                          ; $7135: $ff
	rst $38                                          ; $7136: $ff
	rst $38                                          ; $7137: $ff
	rst $38                                          ; $7138: $ff
	rst $38                                          ; $7139: $ff

Jump_02d_713a:
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	rst $38                                          ; $713c: $ff
	rst $38                                          ; $713d: $ff
	rst $38                                          ; $713e: $ff
	rst $38                                          ; $713f: $ff
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	rst $38                                          ; $7142: $ff
	rst $38                                          ; $7143: $ff
	rst $38                                          ; $7144: $ff
	rst $38                                          ; $7145: $ff
	rst $38                                          ; $7146: $ff
	rst $38                                          ; $7147: $ff
	rst $38                                          ; $7148: $ff
	rst $38                                          ; $7149: $ff
	rst $38                                          ; $714a: $ff
	rst $38                                          ; $714b: $ff
	rst $38                                          ; $714c: $ff
	rst $38                                          ; $714d: $ff
	rst $38                                          ; $714e: $ff
	rst $38                                          ; $714f: $ff
	rst $38                                          ; $7150: $ff
	rst $38                                          ; $7151: $ff
	rst $38                                          ; $7152: $ff
	rst $38                                          ; $7153: $ff
	rst $38                                          ; $7154: $ff
	rst $38                                          ; $7155: $ff
	rst $38                                          ; $7156: $ff
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	rst $38                                          ; $7159: $ff
	rst $38                                          ; $715a: $ff
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	rst $38                                          ; $715d: $ff
	rst $38                                          ; $715e: $ff
	rst $38                                          ; $715f: $ff
	rst $38                                          ; $7160: $ff
	rst $38                                          ; $7161: $ff

Call_02d_7162:
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	rst $38                                          ; $7164: $ff
	rst $38                                          ; $7165: $ff
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rst $38                                          ; $716d: $ff
	rst $38                                          ; $716e: $ff
	rst $38                                          ; $716f: $ff
	rst $38                                          ; $7170: $ff
	rst $38                                          ; $7171: $ff
	rst $38                                          ; $7172: $ff
	rst $38                                          ; $7173: $ff
	rst $38                                          ; $7174: $ff
	rst $38                                          ; $7175: $ff
	rst $38                                          ; $7176: $ff
	rst $38                                          ; $7177: $ff
	rst $38                                          ; $7178: $ff
	rst $38                                          ; $7179: $ff
	rst $38                                          ; $717a: $ff
	rst $38                                          ; $717b: $ff
	rst $38                                          ; $717c: $ff
	rst $38                                          ; $717d: $ff
	rst $38                                          ; $717e: $ff
	rst $38                                          ; $717f: $ff
	rst $38                                          ; $7180: $ff
	rst $38                                          ; $7181: $ff
	rst $38                                          ; $7182: $ff
	rst $38                                          ; $7183: $ff
	rst $38                                          ; $7184: $ff
	rst $38                                          ; $7185: $ff
	rst $38                                          ; $7186: $ff
	rst $38                                          ; $7187: $ff
	rst $38                                          ; $7188: $ff
	rst $38                                          ; $7189: $ff
	rst $38                                          ; $718a: $ff
	rst $38                                          ; $718b: $ff
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	rst $38                                          ; $718e: $ff
	rst $38                                          ; $718f: $ff
	rst $38                                          ; $7190: $ff
	rst $38                                          ; $7191: $ff
	rst $38                                          ; $7192: $ff
	rst $38                                          ; $7193: $ff
	rst $38                                          ; $7194: $ff
	rst $38                                          ; $7195: $ff
	rst $38                                          ; $7196: $ff
	rst $38                                          ; $7197: $ff
	rst $38                                          ; $7198: $ff
	rst $38                                          ; $7199: $ff
	rst $38                                          ; $719a: $ff
	rst $38                                          ; $719b: $ff
	rst $38                                          ; $719c: $ff
	rst $38                                          ; $719d: $ff
	rst $38                                          ; $719e: $ff
	rst $38                                          ; $719f: $ff
	rst $38                                          ; $71a0: $ff
	rst $38                                          ; $71a1: $ff
	rst $38                                          ; $71a2: $ff
	rst $38                                          ; $71a3: $ff
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	rst $38                                          ; $71a6: $ff
	rst $38                                          ; $71a7: $ff
	rst $38                                          ; $71a8: $ff
	rst $38                                          ; $71a9: $ff
	rst $38                                          ; $71aa: $ff
	rst $38                                          ; $71ab: $ff
	rst $38                                          ; $71ac: $ff
	rst $38                                          ; $71ad: $ff
	rst $38                                          ; $71ae: $ff
	rst $38                                          ; $71af: $ff
	rst $38                                          ; $71b0: $ff
	rst $38                                          ; $71b1: $ff
	rst $38                                          ; $71b2: $ff
	rst $38                                          ; $71b3: $ff
	rst $38                                          ; $71b4: $ff
	rst $38                                          ; $71b5: $ff
	rst $38                                          ; $71b6: $ff
	rst $38                                          ; $71b7: $ff
	rst $38                                          ; $71b8: $ff
	rst $38                                          ; $71b9: $ff
	rst $38                                          ; $71ba: $ff
	rst $38                                          ; $71bb: $ff
	rst $38                                          ; $71bc: $ff
	rst $38                                          ; $71bd: $ff
	rst $38                                          ; $71be: $ff
	rst $38                                          ; $71bf: $ff
	rst $38                                          ; $71c0: $ff
	rst $38                                          ; $71c1: $ff
	rst $38                                          ; $71c2: $ff
	rst $38                                          ; $71c3: $ff
	rst $38                                          ; $71c4: $ff
	rst $38                                          ; $71c5: $ff
	rst $38                                          ; $71c6: $ff
	rst $38                                          ; $71c7: $ff
	rst $38                                          ; $71c8: $ff
	rst $38                                          ; $71c9: $ff
	rst $38                                          ; $71ca: $ff
	rst $38                                          ; $71cb: $ff
	rst $38                                          ; $71cc: $ff
	rst $38                                          ; $71cd: $ff
	rst $38                                          ; $71ce: $ff
	rst $38                                          ; $71cf: $ff
	rst $38                                          ; $71d0: $ff
	rst $38                                          ; $71d1: $ff
	rst $38                                          ; $71d2: $ff
	rst $38                                          ; $71d3: $ff
	rst $38                                          ; $71d4: $ff
	rst $38                                          ; $71d5: $ff
	rst $38                                          ; $71d6: $ff
	rst $38                                          ; $71d7: $ff
	rst $38                                          ; $71d8: $ff
	rst $38                                          ; $71d9: $ff
	rst $38                                          ; $71da: $ff
	rst $38                                          ; $71db: $ff
	rst $38                                          ; $71dc: $ff
	rst $38                                          ; $71dd: $ff
	rst $38                                          ; $71de: $ff
	rst $38                                          ; $71df: $ff
	rst $38                                          ; $71e0: $ff
	rst $38                                          ; $71e1: $ff
	rst $38                                          ; $71e2: $ff
	rst $38                                          ; $71e3: $ff
	rst $38                                          ; $71e4: $ff
	rst $38                                          ; $71e5: $ff
	rst $38                                          ; $71e6: $ff
	rst $38                                          ; $71e7: $ff
	rst $38                                          ; $71e8: $ff
	rst $38                                          ; $71e9: $ff
	rst $38                                          ; $71ea: $ff
	rst $38                                          ; $71eb: $ff
	rst $38                                          ; $71ec: $ff
	rst $38                                          ; $71ed: $ff
	rst $38                                          ; $71ee: $ff
	rst $38                                          ; $71ef: $ff
	rst $38                                          ; $71f0: $ff
	rst $38                                          ; $71f1: $ff
	rst $38                                          ; $71f2: $ff
	rst $38                                          ; $71f3: $ff
	rst $38                                          ; $71f4: $ff
	rst $38                                          ; $71f5: $ff
	rst $38                                          ; $71f6: $ff
	rst $38                                          ; $71f7: $ff
	rst $38                                          ; $71f8: $ff
	rst $38                                          ; $71f9: $ff
	rst $38                                          ; $71fa: $ff
	rst $38                                          ; $71fb: $ff
	rst $38                                          ; $71fc: $ff
	rst $38                                          ; $71fd: $ff
	rst $38                                          ; $71fe: $ff
	rst $38                                          ; $71ff: $ff
	rst $38                                          ; $7200: $ff
	rst $38                                          ; $7201: $ff
	rst $38                                          ; $7202: $ff
	rst $38                                          ; $7203: $ff
	rst $38                                          ; $7204: $ff
	rst $38                                          ; $7205: $ff
	rst $38                                          ; $7206: $ff
	rst $38                                          ; $7207: $ff
	rst $38                                          ; $7208: $ff
	rst $38                                          ; $7209: $ff
	rst $38                                          ; $720a: $ff
	rst $38                                          ; $720b: $ff
	rst $38                                          ; $720c: $ff
	rst $38                                          ; $720d: $ff
	rst $38                                          ; $720e: $ff
	rst $38                                          ; $720f: $ff
	rst $38                                          ; $7210: $ff
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	rst $38                                          ; $7213: $ff
	rst $38                                          ; $7214: $ff
	rst $38                                          ; $7215: $ff
	rst $38                                          ; $7216: $ff
	rst $38                                          ; $7217: $ff
	rst $38                                          ; $7218: $ff
	rst $38                                          ; $7219: $ff
	rst $38                                          ; $721a: $ff
	rst $38                                          ; $721b: $ff
	rst $38                                          ; $721c: $ff
	rst $38                                          ; $721d: $ff
	rst $38                                          ; $721e: $ff
	rst $38                                          ; $721f: $ff
	rst $38                                          ; $7220: $ff
	rst $38                                          ; $7221: $ff
	rst $38                                          ; $7222: $ff
	rst $38                                          ; $7223: $ff
	rst $38                                          ; $7224: $ff
	rst $38                                          ; $7225: $ff
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rst $38                                          ; $722a: $ff
	rst $38                                          ; $722b: $ff
	rst $38                                          ; $722c: $ff
	rst $38                                          ; $722d: $ff
	rst $38                                          ; $722e: $ff
	rst $38                                          ; $722f: $ff
	rst $38                                          ; $7230: $ff
	rst $38                                          ; $7231: $ff
	rst $38                                          ; $7232: $ff
	rst $38                                          ; $7233: $ff
	rst $38                                          ; $7234: $ff
	rst $38                                          ; $7235: $ff
	rst $38                                          ; $7236: $ff
	rst $38                                          ; $7237: $ff
	rst $38                                          ; $7238: $ff
	rst $38                                          ; $7239: $ff
	rst $38                                          ; $723a: $ff
	rst $38                                          ; $723b: $ff
	rst $38                                          ; $723c: $ff
	rst $38                                          ; $723d: $ff
	rst $38                                          ; $723e: $ff
	rst $38                                          ; $723f: $ff
	rst $38                                          ; $7240: $ff
	rst $38                                          ; $7241: $ff
	rst $38                                          ; $7242: $ff
	rst $38                                          ; $7243: $ff
	rst $38                                          ; $7244: $ff
	rst $38                                          ; $7245: $ff
	rst $38                                          ; $7246: $ff
	rst $38                                          ; $7247: $ff
	rst $38                                          ; $7248: $ff
	rst $38                                          ; $7249: $ff
	rst $38                                          ; $724a: $ff
	rst $38                                          ; $724b: $ff
	rst $38                                          ; $724c: $ff
	rst $38                                          ; $724d: $ff
	rst $38                                          ; $724e: $ff
	rst $38                                          ; $724f: $ff
	rst $38                                          ; $7250: $ff
	rst $38                                          ; $7251: $ff
	rst $38                                          ; $7252: $ff
	rst $38                                          ; $7253: $ff
	rst $38                                          ; $7254: $ff
	rst $38                                          ; $7255: $ff
	rst $38                                          ; $7256: $ff
	rst $38                                          ; $7257: $ff
	rst $38                                          ; $7258: $ff
	rst $38                                          ; $7259: $ff
	rst $38                                          ; $725a: $ff
	rst $38                                          ; $725b: $ff
	rst $38                                          ; $725c: $ff
	rst $38                                          ; $725d: $ff
	rst $38                                          ; $725e: $ff
	rst $38                                          ; $725f: $ff
	rst $38                                          ; $7260: $ff
	rst $38                                          ; $7261: $ff
	rst $38                                          ; $7262: $ff
	rst $38                                          ; $7263: $ff
	rst $38                                          ; $7264: $ff
	rst $38                                          ; $7265: $ff
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	rst $38                                          ; $7268: $ff
	rst $38                                          ; $7269: $ff
	rst $38                                          ; $726a: $ff
	rst $38                                          ; $726b: $ff
	rst $38                                          ; $726c: $ff
	rst $38                                          ; $726d: $ff
	rst $38                                          ; $726e: $ff
	rst $38                                          ; $726f: $ff
	rst $38                                          ; $7270: $ff
	rst $38                                          ; $7271: $ff
	rst $38                                          ; $7272: $ff
	rst $38                                          ; $7273: $ff
	rst $38                                          ; $7274: $ff
	rst $38                                          ; $7275: $ff
	rst $38                                          ; $7276: $ff
	rst $38                                          ; $7277: $ff
	rst $38                                          ; $7278: $ff
	rst $38                                          ; $7279: $ff
	rst $38                                          ; $727a: $ff
	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	rst $38                                          ; $727d: $ff
	rst $38                                          ; $727e: $ff
	rst $38                                          ; $727f: $ff
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	rst $38                                          ; $7282: $ff
	rst $38                                          ; $7283: $ff
	rst $38                                          ; $7284: $ff
	rst $38                                          ; $7285: $ff
	rst $38                                          ; $7286: $ff
	rst $38                                          ; $7287: $ff
	rst $38                                          ; $7288: $ff
	rst $38                                          ; $7289: $ff
	rst $38                                          ; $728a: $ff
	rst $38                                          ; $728b: $ff
	rst $38                                          ; $728c: $ff
	rst $38                                          ; $728d: $ff
	rst $38                                          ; $728e: $ff
	rst $38                                          ; $728f: $ff
	rst $38                                          ; $7290: $ff
	rst $38                                          ; $7291: $ff
	rst $38                                          ; $7292: $ff
	rst $38                                          ; $7293: $ff
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	rst $38                                          ; $7296: $ff
	rst $38                                          ; $7297: $ff
	rst $38                                          ; $7298: $ff
	rst $38                                          ; $7299: $ff
	rst $38                                          ; $729a: $ff
	rst $38                                          ; $729b: $ff
	rst $38                                          ; $729c: $ff
	rst $38                                          ; $729d: $ff
	rst $38                                          ; $729e: $ff
	rst $38                                          ; $729f: $ff
	rst $38                                          ; $72a0: $ff
	rst $38                                          ; $72a1: $ff
	rst $38                                          ; $72a2: $ff
	rst $38                                          ; $72a3: $ff
	rst $38                                          ; $72a4: $ff
	rst $38                                          ; $72a5: $ff
	rst $38                                          ; $72a6: $ff
	rst $38                                          ; $72a7: $ff
	rst $38                                          ; $72a8: $ff
	rst $38                                          ; $72a9: $ff
	rst $38                                          ; $72aa: $ff
	rst $38                                          ; $72ab: $ff
	rst $38                                          ; $72ac: $ff
	rst $38                                          ; $72ad: $ff
	rst $38                                          ; $72ae: $ff
	rst $38                                          ; $72af: $ff
	rst $38                                          ; $72b0: $ff
	rst $38                                          ; $72b1: $ff
	rst $38                                          ; $72b2: $ff
	rst $38                                          ; $72b3: $ff
	rst $38                                          ; $72b4: $ff
	rst $38                                          ; $72b5: $ff
	rst $38                                          ; $72b6: $ff
	rst $38                                          ; $72b7: $ff
	rst $38                                          ; $72b8: $ff
	rst $38                                          ; $72b9: $ff
	rst $38                                          ; $72ba: $ff
	rst $38                                          ; $72bb: $ff
	rst $38                                          ; $72bc: $ff
	rst $38                                          ; $72bd: $ff
	rst $38                                          ; $72be: $ff
	rst $38                                          ; $72bf: $ff
	rst $38                                          ; $72c0: $ff
	rst $38                                          ; $72c1: $ff
	rst $38                                          ; $72c2: $ff
	rst $38                                          ; $72c3: $ff
	rst $38                                          ; $72c4: $ff
	rst $38                                          ; $72c5: $ff
	rst $38                                          ; $72c6: $ff
	rst $38                                          ; $72c7: $ff
	rst $38                                          ; $72c8: $ff
	rst $38                                          ; $72c9: $ff
	rst $38                                          ; $72ca: $ff
	rst $38                                          ; $72cb: $ff
	rst $38                                          ; $72cc: $ff
	rst $38                                          ; $72cd: $ff
	rst $38                                          ; $72ce: $ff
	rst $38                                          ; $72cf: $ff
	rst $38                                          ; $72d0: $ff
	rst $38                                          ; $72d1: $ff
	rst $38                                          ; $72d2: $ff
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	rst $38                                          ; $72d5: $ff
	rst $38                                          ; $72d6: $ff
	rst $38                                          ; $72d7: $ff
	rst $38                                          ; $72d8: $ff
	rst $38                                          ; $72d9: $ff
	rst $38                                          ; $72da: $ff
	rst $38                                          ; $72db: $ff
	rst $38                                          ; $72dc: $ff
	rst $38                                          ; $72dd: $ff
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	rst $38                                          ; $72e0: $ff
	rst $38                                          ; $72e1: $ff
	rst $38                                          ; $72e2: $ff
	rst $38                                          ; $72e3: $ff
	rst $38                                          ; $72e4: $ff
	rst $38                                          ; $72e5: $ff
	rst $38                                          ; $72e6: $ff
	rst $38                                          ; $72e7: $ff
	rst $38                                          ; $72e8: $ff
	rst $38                                          ; $72e9: $ff
	rst $38                                          ; $72ea: $ff
	rst $38                                          ; $72eb: $ff
	rst $38                                          ; $72ec: $ff
	rst $38                                          ; $72ed: $ff
	rst $38                                          ; $72ee: $ff
	rst $38                                          ; $72ef: $ff
	rst $38                                          ; $72f0: $ff
	rst $38                                          ; $72f1: $ff
	rst $38                                          ; $72f2: $ff
	rst $38                                          ; $72f3: $ff
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	rst $38                                          ; $72f6: $ff
	rst $38                                          ; $72f7: $ff
	rst $38                                          ; $72f8: $ff
	rst $38                                          ; $72f9: $ff
	rst $38                                          ; $72fa: $ff
	rst $38                                          ; $72fb: $ff
	rst $38                                          ; $72fc: $ff
	rst $38                                          ; $72fd: $ff
	rst $38                                          ; $72fe: $ff
	rst $38                                          ; $72ff: $ff
	rst $38                                          ; $7300: $ff
	rst $38                                          ; $7301: $ff
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst $38                                          ; $7304: $ff
	rst $38                                          ; $7305: $ff
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	rst $38                                          ; $7308: $ff
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	rst $38                                          ; $730b: $ff
	rst $38                                          ; $730c: $ff
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	rst $38                                          ; $730f: $ff
	rst $38                                          ; $7310: $ff
	rst $38                                          ; $7311: $ff
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff
	rst $38                                          ; $7314: $ff
	rst $38                                          ; $7315: $ff
	rst $38                                          ; $7316: $ff
	rst $38                                          ; $7317: $ff
	rst $38                                          ; $7318: $ff
	rst $38                                          ; $7319: $ff
	rst $38                                          ; $731a: $ff
	rst $38                                          ; $731b: $ff
	rst $38                                          ; $731c: $ff
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	rst $38                                          ; $731f: $ff
	rst $38                                          ; $7320: $ff
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	rst $38                                          ; $732a: $ff
	rst $38                                          ; $732b: $ff
	rst $38                                          ; $732c: $ff
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff
	rst $38                                          ; $732f: $ff
	rst $38                                          ; $7330: $ff
	rst $38                                          ; $7331: $ff
	rst $38                                          ; $7332: $ff
	rst $38                                          ; $7333: $ff
	rst $38                                          ; $7334: $ff
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	rst $38                                          ; $7339: $ff
	rst $38                                          ; $733a: $ff
	rst $38                                          ; $733b: $ff
	rst $38                                          ; $733c: $ff
	rst $38                                          ; $733d: $ff
	rst $38                                          ; $733e: $ff
	rst $38                                          ; $733f: $ff
	rst $38                                          ; $7340: $ff
	rst $38                                          ; $7341: $ff
	rst $38                                          ; $7342: $ff
	rst $38                                          ; $7343: $ff
	rst $38                                          ; $7344: $ff
	rst $38                                          ; $7345: $ff
	rst $38                                          ; $7346: $ff
	rst $38                                          ; $7347: $ff
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	rst $38                                          ; $734a: $ff
	rst $38                                          ; $734b: $ff
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	rst $38                                          ; $734e: $ff
	rst $38                                          ; $734f: $ff
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	rst $38                                          ; $7352: $ff
	rst $38                                          ; $7353: $ff
	rst $38                                          ; $7354: $ff
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	rst $38                                          ; $735c: $ff
	rst $38                                          ; $735d: $ff
	rst $38                                          ; $735e: $ff
	rst $38                                          ; $735f: $ff
	rst $38                                          ; $7360: $ff
	rst $38                                          ; $7361: $ff
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	rst $38                                          ; $7364: $ff
	rst $38                                          ; $7365: $ff
	rst $38                                          ; $7366: $ff
	rst $38                                          ; $7367: $ff
	rst $38                                          ; $7368: $ff
	rst $38                                          ; $7369: $ff
	rst $38                                          ; $736a: $ff
	rst $38                                          ; $736b: $ff
	rst $38                                          ; $736c: $ff
	rst $38                                          ; $736d: $ff
	rst $38                                          ; $736e: $ff
	rst $38                                          ; $736f: $ff
	rst $38                                          ; $7370: $ff
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	rst $38                                          ; $7373: $ff
	rst $38                                          ; $7374: $ff
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	rst $38                                          ; $7377: $ff
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst $38                                          ; $737e: $ff
	rst $38                                          ; $737f: $ff
	rst $38                                          ; $7380: $ff
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	rst $38                                          ; $7384: $ff
	rst $38                                          ; $7385: $ff
	rst $38                                          ; $7386: $ff
	rst $38                                          ; $7387: $ff
	rst $38                                          ; $7388: $ff
	rst $38                                          ; $7389: $ff
	rst $38                                          ; $738a: $ff
	rst $38                                          ; $738b: $ff
	rst $38                                          ; $738c: $ff
	rst $38                                          ; $738d: $ff
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	rst $38                                          ; $7392: $ff
	rst $38                                          ; $7393: $ff
	rst $38                                          ; $7394: $ff
	rst $38                                          ; $7395: $ff
	rst $38                                          ; $7396: $ff
	rst $38                                          ; $7397: $ff
	rst $38                                          ; $7398: $ff
	rst $38                                          ; $7399: $ff
	rst $38                                          ; $739a: $ff
	rst $38                                          ; $739b: $ff
	rst $38                                          ; $739c: $ff
	rst $38                                          ; $739d: $ff
	rst $38                                          ; $739e: $ff
	rst $38                                          ; $739f: $ff
	rst $38                                          ; $73a0: $ff
	rst $38                                          ; $73a1: $ff
	rst $38                                          ; $73a2: $ff
	rst $38                                          ; $73a3: $ff
	rst $38                                          ; $73a4: $ff
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	rst $38                                          ; $73ab: $ff
	rst $38                                          ; $73ac: $ff
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	rst $38                                          ; $73af: $ff
	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	rst $38                                          ; $73b2: $ff
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	rst $38                                          ; $73b8: $ff
	rst $38                                          ; $73b9: $ff
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
	rst $38                                          ; $73bc: $ff
	rst $38                                          ; $73bd: $ff
	rst $38                                          ; $73be: $ff
	rst $38                                          ; $73bf: $ff
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rst $38                                          ; $73c2: $ff
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	rst $38                                          ; $73c5: $ff
	rst $38                                          ; $73c6: $ff
	rst $38                                          ; $73c7: $ff
	rst $38                                          ; $73c8: $ff
	rst $38                                          ; $73c9: $ff
	rst $38                                          ; $73ca: $ff
	rst $38                                          ; $73cb: $ff
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	rst $38                                          ; $73ce: $ff
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	rst $38                                          ; $73d3: $ff
	rst $38                                          ; $73d4: $ff
	rst $38                                          ; $73d5: $ff
	rst $38                                          ; $73d6: $ff
	rst $38                                          ; $73d7: $ff
	rst $38                                          ; $73d8: $ff
	rst $38                                          ; $73d9: $ff
	rst $38                                          ; $73da: $ff
	rst $38                                          ; $73db: $ff
	rst $38                                          ; $73dc: $ff
	rst $38                                          ; $73dd: $ff
	rst $38                                          ; $73de: $ff
	rst $38                                          ; $73df: $ff
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	rst $38                                          ; $73e2: $ff
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	rst $38                                          ; $73e5: $ff
	rst $38                                          ; $73e6: $ff
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	rst $38                                          ; $73e9: $ff
	rst $38                                          ; $73ea: $ff
	rst $38                                          ; $73eb: $ff
	rst $38                                          ; $73ec: $ff
	rst $38                                          ; $73ed: $ff
	rst $38                                          ; $73ee: $ff
	rst $38                                          ; $73ef: $ff
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff
	rst $38                                          ; $73f2: $ff
	rst $38                                          ; $73f3: $ff
	rst $38                                          ; $73f4: $ff
	rst $38                                          ; $73f5: $ff
	rst $38                                          ; $73f6: $ff
	rst $38                                          ; $73f7: $ff
	rst $38                                          ; $73f8: $ff
	rst $38                                          ; $73f9: $ff
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	rst $38                                          ; $73fc: $ff
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff
	rst $38                                          ; $73ff: $ff
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	rst $38                                          ; $7404: $ff
	rst $38                                          ; $7405: $ff
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst $38                                          ; $7408: $ff
	rst $38                                          ; $7409: $ff
	rst $38                                          ; $740a: $ff
	rst $38                                          ; $740b: $ff
	rst $38                                          ; $740c: $ff
	rst $38                                          ; $740d: $ff
	rst $38                                          ; $740e: $ff
	rst $38                                          ; $740f: $ff
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	rst $38                                          ; $7412: $ff
	rst $38                                          ; $7413: $ff
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	rst $38                                          ; $7416: $ff
	rst $38                                          ; $7417: $ff
	rst $38                                          ; $7418: $ff
	rst $38                                          ; $7419: $ff
	rst $38                                          ; $741a: $ff
	rst $38                                          ; $741b: $ff
	rst $38                                          ; $741c: $ff
	rst $38                                          ; $741d: $ff
	rst $38                                          ; $741e: $ff
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	rst $38                                          ; $7421: $ff
	rst $38                                          ; $7422: $ff
	rst $38                                          ; $7423: $ff
	rst $38                                          ; $7424: $ff
	rst $38                                          ; $7425: $ff
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	rst $38                                          ; $7428: $ff
	rst $38                                          ; $7429: $ff
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	rst $38                                          ; $742c: $ff
	rst $38                                          ; $742d: $ff
	rst $38                                          ; $742e: $ff
	rst $38                                          ; $742f: $ff
	rst $38                                          ; $7430: $ff
	rst $38                                          ; $7431: $ff
	rst $38                                          ; $7432: $ff
	rst $38                                          ; $7433: $ff
	rst $38                                          ; $7434: $ff
	rst $38                                          ; $7435: $ff
	rst $38                                          ; $7436: $ff
	rst $38                                          ; $7437: $ff
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	rst $38                                          ; $743f: $ff
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	rst $38                                          ; $7443: $ff
	rst $38                                          ; $7444: $ff
	rst $38                                          ; $7445: $ff
	rst $38                                          ; $7446: $ff
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rst $38                                          ; $7449: $ff
	rst $38                                          ; $744a: $ff
	rst $38                                          ; $744b: $ff
	rst $38                                          ; $744c: $ff
	rst $38                                          ; $744d: $ff
	rst $38                                          ; $744e: $ff
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	rst $38                                          ; $7451: $ff
	rst $38                                          ; $7452: $ff
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff
	rst $38                                          ; $7455: $ff
	rst $38                                          ; $7456: $ff
	rst $38                                          ; $7457: $ff
	rst $38                                          ; $7458: $ff
	rst $38                                          ; $7459: $ff
	rst $38                                          ; $745a: $ff
	rst $38                                          ; $745b: $ff
	rst $38                                          ; $745c: $ff
	rst $38                                          ; $745d: $ff
	rst $38                                          ; $745e: $ff
	rst $38                                          ; $745f: $ff
	rst $38                                          ; $7460: $ff
	rst $38                                          ; $7461: $ff
	rst $38                                          ; $7462: $ff
	rst $38                                          ; $7463: $ff
	rst $38                                          ; $7464: $ff
	rst $38                                          ; $7465: $ff
	rst $38                                          ; $7466: $ff
	rst $38                                          ; $7467: $ff
	rst $38                                          ; $7468: $ff
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	rst $38                                          ; $7472: $ff
	rst $38                                          ; $7473: $ff
	rst $38                                          ; $7474: $ff
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	rst $38                                          ; $747a: $ff

Call_02d_747b:
	rst $38                                          ; $747b: $ff
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	rst $38                                          ; $747e: $ff
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	rst $38                                          ; $7481: $ff
	rst $38                                          ; $7482: $ff
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	rst $38                                          ; $7485: $ff
	rst $38                                          ; $7486: $ff
	rst $38                                          ; $7487: $ff
	rst $38                                          ; $7488: $ff
	rst $38                                          ; $7489: $ff
	rst $38                                          ; $748a: $ff
	rst $38                                          ; $748b: $ff
	rst $38                                          ; $748c: $ff
	rst $38                                          ; $748d: $ff
	rst $38                                          ; $748e: $ff
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	rst $38                                          ; $7491: $ff
	rst $38                                          ; $7492: $ff
	rst $38                                          ; $7493: $ff
	rst $38                                          ; $7494: $ff
	rst $38                                          ; $7495: $ff
	rst $38                                          ; $7496: $ff
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	rst $38                                          ; $7499: $ff
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	rst $38                                          ; $749d: $ff
	rst $38                                          ; $749e: $ff
	rst $38                                          ; $749f: $ff
	rst $38                                          ; $74a0: $ff
	rst $38                                          ; $74a1: $ff
	rst $38                                          ; $74a2: $ff
	rst $38                                          ; $74a3: $ff
	rst $38                                          ; $74a4: $ff
	rst $38                                          ; $74a5: $ff
	rst $38                                          ; $74a6: $ff
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	rst $38                                          ; $74a9: $ff
	rst $38                                          ; $74aa: $ff
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst $38                                          ; $74ad: $ff
	rst $38                                          ; $74ae: $ff
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	rst $38                                          ; $74b1: $ff
	rst $38                                          ; $74b2: $ff
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	rst $38                                          ; $74b7: $ff
	rst $38                                          ; $74b8: $ff
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	rst $38                                          ; $74bb: $ff
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	rst $38                                          ; $74be: $ff
	rst $38                                          ; $74bf: $ff
	rst $38                                          ; $74c0: $ff
	rst $38                                          ; $74c1: $ff
	rst $38                                          ; $74c2: $ff
	rst $38                                          ; $74c3: $ff
	rst $38                                          ; $74c4: $ff
	rst $38                                          ; $74c5: $ff
	rst $38                                          ; $74c6: $ff
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	rst $38                                          ; $74c9: $ff
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	rst $38                                          ; $74cc: $ff
	rst $38                                          ; $74cd: $ff
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	rst $38                                          ; $74d0: $ff
	rst $38                                          ; $74d1: $ff
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	rst $38                                          ; $74d7: $ff
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	rst $38                                          ; $74da: $ff
	rst $38                                          ; $74db: $ff
	rst $38                                          ; $74dc: $ff
	rst $38                                          ; $74dd: $ff
	rst $38                                          ; $74de: $ff
	rst $38                                          ; $74df: $ff
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	rst $38                                          ; $74e2: $ff
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	rst $38                                          ; $74e5: $ff
	rst $38                                          ; $74e6: $ff
	rst $38                                          ; $74e7: $ff
	rst $38                                          ; $74e8: $ff
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	rst $38                                          ; $74eb: $ff
	rst $38                                          ; $74ec: $ff
	rst $38                                          ; $74ed: $ff
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	rst $38                                          ; $74f0: $ff
	rst $38                                          ; $74f1: $ff
	rst $38                                          ; $74f2: $ff
	rst $38                                          ; $74f3: $ff
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	rst $38                                          ; $74f9: $ff
	rst $38                                          ; $74fa: $ff
	rst $38                                          ; $74fb: $ff
	rst $38                                          ; $74fc: $ff
	rst $38                                          ; $74fd: $ff
	rst $38                                          ; $74fe: $ff
	rst $38                                          ; $74ff: $ff
	rst $38                                          ; $7500: $ff
	rst $38                                          ; $7501: $ff
	rst $38                                          ; $7502: $ff
	rst $38                                          ; $7503: $ff
	rst $38                                          ; $7504: $ff
	rst $38                                          ; $7505: $ff
	rst $38                                          ; $7506: $ff
	rst $38                                          ; $7507: $ff
	rst $38                                          ; $7508: $ff
	rst $38                                          ; $7509: $ff
	rst $38                                          ; $750a: $ff
	rst $38                                          ; $750b: $ff
	rst $38                                          ; $750c: $ff
	rst $38                                          ; $750d: $ff
	rst $38                                          ; $750e: $ff
	rst $38                                          ; $750f: $ff
	rst $38                                          ; $7510: $ff
	rst $38                                          ; $7511: $ff
	rst $38                                          ; $7512: $ff
	rst $38                                          ; $7513: $ff
	rst $38                                          ; $7514: $ff
	rst $38                                          ; $7515: $ff
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	rst $38                                          ; $7518: $ff
	rst $38                                          ; $7519: $ff
	rst $38                                          ; $751a: $ff
	rst $38                                          ; $751b: $ff
	rst $38                                          ; $751c: $ff
	rst $38                                          ; $751d: $ff
	rst $38                                          ; $751e: $ff
	rst $38                                          ; $751f: $ff
	rst $38                                          ; $7520: $ff
	rst $38                                          ; $7521: $ff
	rst $38                                          ; $7522: $ff
	rst $38                                          ; $7523: $ff
	rst $38                                          ; $7524: $ff
	rst $38                                          ; $7525: $ff
	rst $38                                          ; $7526: $ff
	rst $38                                          ; $7527: $ff
	rst $38                                          ; $7528: $ff
	rst $38                                          ; $7529: $ff
	rst $38                                          ; $752a: $ff
	rst $38                                          ; $752b: $ff
	rst $38                                          ; $752c: $ff
	rst $38                                          ; $752d: $ff
	rst $38                                          ; $752e: $ff
	rst $38                                          ; $752f: $ff
	rst $38                                          ; $7530: $ff
	rst $38                                          ; $7531: $ff
	rst $38                                          ; $7532: $ff
	rst $38                                          ; $7533: $ff
	rst $38                                          ; $7534: $ff
	rst $38                                          ; $7535: $ff
	rst $38                                          ; $7536: $ff
	rst $38                                          ; $7537: $ff
	rst $38                                          ; $7538: $ff
	rst $38                                          ; $7539: $ff
	rst $38                                          ; $753a: $ff
	rst $38                                          ; $753b: $ff
	rst $38                                          ; $753c: $ff
	rst $38                                          ; $753d: $ff
	rst $38                                          ; $753e: $ff
	rst $38                                          ; $753f: $ff
	rst $38                                          ; $7540: $ff
	rst $38                                          ; $7541: $ff
	rst $38                                          ; $7542: $ff
	rst $38                                          ; $7543: $ff
	rst $38                                          ; $7544: $ff
	rst $38                                          ; $7545: $ff
	rst $38                                          ; $7546: $ff
	rst $38                                          ; $7547: $ff
	rst $38                                          ; $7548: $ff
	rst $38                                          ; $7549: $ff
	rst $38                                          ; $754a: $ff
	rst $38                                          ; $754b: $ff
	rst $38                                          ; $754c: $ff
	rst $38                                          ; $754d: $ff
	rst $38                                          ; $754e: $ff
	rst $38                                          ; $754f: $ff
	rst $38                                          ; $7550: $ff
	rst $38                                          ; $7551: $ff
	rst $38                                          ; $7552: $ff
	rst $38                                          ; $7553: $ff
	rst $38                                          ; $7554: $ff
	rst $38                                          ; $7555: $ff
	rst $38                                          ; $7556: $ff
	rst $38                                          ; $7557: $ff
	rst $38                                          ; $7558: $ff
	rst $38                                          ; $7559: $ff
	rst $38                                          ; $755a: $ff
	rst $38                                          ; $755b: $ff
	rst $38                                          ; $755c: $ff
	rst $38                                          ; $755d: $ff
	rst $38                                          ; $755e: $ff
	rst $38                                          ; $755f: $ff
	rst $38                                          ; $7560: $ff
	rst $38                                          ; $7561: $ff
	rst $38                                          ; $7562: $ff
	rst $38                                          ; $7563: $ff
	rst $38                                          ; $7564: $ff
	rst $38                                          ; $7565: $ff
	rst $38                                          ; $7566: $ff
	rst $38                                          ; $7567: $ff
	rst $38                                          ; $7568: $ff
	rst $38                                          ; $7569: $ff
	rst $38                                          ; $756a: $ff
	rst $38                                          ; $756b: $ff
	rst $38                                          ; $756c: $ff
	rst $38                                          ; $756d: $ff
	rst $38                                          ; $756e: $ff
	rst $38                                          ; $756f: $ff
	rst $38                                          ; $7570: $ff
	rst $38                                          ; $7571: $ff
	rst $38                                          ; $7572: $ff
	rst $38                                          ; $7573: $ff
	rst $38                                          ; $7574: $ff
	rst $38                                          ; $7575: $ff
	rst $38                                          ; $7576: $ff
	rst $38                                          ; $7577: $ff
	rst $38                                          ; $7578: $ff
	rst $38                                          ; $7579: $ff
	rst $38                                          ; $757a: $ff
	rst $38                                          ; $757b: $ff
	rst $38                                          ; $757c: $ff
	rst $38                                          ; $757d: $ff
	rst $38                                          ; $757e: $ff
	rst $38                                          ; $757f: $ff
	rst $38                                          ; $7580: $ff
	rst $38                                          ; $7581: $ff
	rst $38                                          ; $7582: $ff
	rst $38                                          ; $7583: $ff
	rst $38                                          ; $7584: $ff
	rst $38                                          ; $7585: $ff
	rst $38                                          ; $7586: $ff
	rst $38                                          ; $7587: $ff
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	rst $38                                          ; $758a: $ff
	rst $38                                          ; $758b: $ff
	rst $38                                          ; $758c: $ff
	rst $38                                          ; $758d: $ff
	rst $38                                          ; $758e: $ff
	rst $38                                          ; $758f: $ff
	rst $38                                          ; $7590: $ff
	rst $38                                          ; $7591: $ff
	rst $38                                          ; $7592: $ff
	rst $38                                          ; $7593: $ff
	rst $38                                          ; $7594: $ff
	rst $38                                          ; $7595: $ff
	rst $38                                          ; $7596: $ff
	rst $38                                          ; $7597: $ff
	rst $38                                          ; $7598: $ff
	rst $38                                          ; $7599: $ff
	rst $38                                          ; $759a: $ff
	rst $38                                          ; $759b: $ff
	rst $38                                          ; $759c: $ff
	rst $38                                          ; $759d: $ff
	rst $38                                          ; $759e: $ff
	rst $38                                          ; $759f: $ff
	rst $38                                          ; $75a0: $ff
	rst $38                                          ; $75a1: $ff
	rst $38                                          ; $75a2: $ff
	rst $38                                          ; $75a3: $ff
	rst $38                                          ; $75a4: $ff
	rst $38                                          ; $75a5: $ff
	rst $38                                          ; $75a6: $ff
	rst $38                                          ; $75a7: $ff
	rst $38                                          ; $75a8: $ff
	rst $38                                          ; $75a9: $ff
	rst $38                                          ; $75aa: $ff
	rst $38                                          ; $75ab: $ff
	rst $38                                          ; $75ac: $ff
	rst $38                                          ; $75ad: $ff
	rst $38                                          ; $75ae: $ff
	rst $38                                          ; $75af: $ff
	rst $38                                          ; $75b0: $ff
	rst $38                                          ; $75b1: $ff
	rst $38                                          ; $75b2: $ff
	rst $38                                          ; $75b3: $ff
	rst $38                                          ; $75b4: $ff
	rst $38                                          ; $75b5: $ff
	rst $38                                          ; $75b6: $ff
	rst $38                                          ; $75b7: $ff
	rst $38                                          ; $75b8: $ff
	rst $38                                          ; $75b9: $ff
	rst $38                                          ; $75ba: $ff
	rst $38                                          ; $75bb: $ff
	rst $38                                          ; $75bc: $ff
	rst $38                                          ; $75bd: $ff
	rst $38                                          ; $75be: $ff
	rst $38                                          ; $75bf: $ff
	rst $38                                          ; $75c0: $ff
	rst $38                                          ; $75c1: $ff
	rst $38                                          ; $75c2: $ff
	rst $38                                          ; $75c3: $ff
	rst $38                                          ; $75c4: $ff
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	rst $38                                          ; $75c7: $ff
	rst $38                                          ; $75c8: $ff
	rst $38                                          ; $75c9: $ff
	rst $38                                          ; $75ca: $ff
	rst $38                                          ; $75cb: $ff
	rst $38                                          ; $75cc: $ff
	rst $38                                          ; $75cd: $ff
	rst $38                                          ; $75ce: $ff
	rst $38                                          ; $75cf: $ff
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	rst $38                                          ; $75d2: $ff
	rst $38                                          ; $75d3: $ff
	rst $38                                          ; $75d4: $ff
	rst $38                                          ; $75d5: $ff
	rst $38                                          ; $75d6: $ff
	rst $38                                          ; $75d7: $ff
	rst $38                                          ; $75d8: $ff
	rst $38                                          ; $75d9: $ff
	rst $38                                          ; $75da: $ff
	rst $38                                          ; $75db: $ff
	rst $38                                          ; $75dc: $ff
	rst $38                                          ; $75dd: $ff
	rst $38                                          ; $75de: $ff
	rst $38                                          ; $75df: $ff
	rst $38                                          ; $75e0: $ff
	rst $38                                          ; $75e1: $ff
	rst $38                                          ; $75e2: $ff
	rst $38                                          ; $75e3: $ff
	rst $38                                          ; $75e4: $ff
	rst $38                                          ; $75e5: $ff
	rst $38                                          ; $75e6: $ff
	rst $38                                          ; $75e7: $ff
	rst $38                                          ; $75e8: $ff
	rst $38                                          ; $75e9: $ff
	rst $38                                          ; $75ea: $ff
	rst $38                                          ; $75eb: $ff
	rst $38                                          ; $75ec: $ff
	rst $38                                          ; $75ed: $ff
	rst $38                                          ; $75ee: $ff
	rst $38                                          ; $75ef: $ff
	rst $38                                          ; $75f0: $ff
	rst $38                                          ; $75f1: $ff
	rst $38                                          ; $75f2: $ff
	rst $38                                          ; $75f3: $ff
	rst $38                                          ; $75f4: $ff
	rst $38                                          ; $75f5: $ff
	rst $38                                          ; $75f6: $ff
	rst $38                                          ; $75f7: $ff
	rst $38                                          ; $75f8: $ff
	rst $38                                          ; $75f9: $ff
	rst $38                                          ; $75fa: $ff
	rst $38                                          ; $75fb: $ff
	rst $38                                          ; $75fc: $ff
	rst $38                                          ; $75fd: $ff
	rst $38                                          ; $75fe: $ff
	rst $38                                          ; $75ff: $ff
	rst $38                                          ; $7600: $ff
	rst $38                                          ; $7601: $ff
	rst $38                                          ; $7602: $ff
	rst $38                                          ; $7603: $ff
	rst $38                                          ; $7604: $ff
	rst $38                                          ; $7605: $ff
	rst $38                                          ; $7606: $ff
	rst $38                                          ; $7607: $ff
	rst $38                                          ; $7608: $ff
	rst $38                                          ; $7609: $ff
	rst $38                                          ; $760a: $ff
	rst $38                                          ; $760b: $ff
	rst $38                                          ; $760c: $ff
	rst $38                                          ; $760d: $ff
	rst $38                                          ; $760e: $ff
	rst $38                                          ; $760f: $ff
	rst $38                                          ; $7610: $ff
	rst $38                                          ; $7611: $ff
	rst $38                                          ; $7612: $ff
	rst $38                                          ; $7613: $ff
	rst $38                                          ; $7614: $ff
	rst $38                                          ; $7615: $ff
	rst $38                                          ; $7616: $ff
	rst $38                                          ; $7617: $ff
	rst $38                                          ; $7618: $ff
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	rst $38                                          ; $761b: $ff
	rst $38                                          ; $761c: $ff
	rst $38                                          ; $761d: $ff
	rst $38                                          ; $761e: $ff
	rst $38                                          ; $761f: $ff
	rst $38                                          ; $7620: $ff
	rst $38                                          ; $7621: $ff
	rst $38                                          ; $7622: $ff
	rst $38                                          ; $7623: $ff
	rst $38                                          ; $7624: $ff
	rst $38                                          ; $7625: $ff
	rst $38                                          ; $7626: $ff
	rst $38                                          ; $7627: $ff
	rst $38                                          ; $7628: $ff
	rst $38                                          ; $7629: $ff
	rst $38                                          ; $762a: $ff
	rst $38                                          ; $762b: $ff
	rst $38                                          ; $762c: $ff
	rst $38                                          ; $762d: $ff
	rst $38                                          ; $762e: $ff
	rst $38                                          ; $762f: $ff
	rst $38                                          ; $7630: $ff
	rst $38                                          ; $7631: $ff
	rst $38                                          ; $7632: $ff
	rst $38                                          ; $7633: $ff
	rst $38                                          ; $7634: $ff
	rst $38                                          ; $7635: $ff
	rst $38                                          ; $7636: $ff
	rst $38                                          ; $7637: $ff
	rst $38                                          ; $7638: $ff
	rst $38                                          ; $7639: $ff
	rst $38                                          ; $763a: $ff
	rst $38                                          ; $763b: $ff
	rst $38                                          ; $763c: $ff
	rst $38                                          ; $763d: $ff
	rst $38                                          ; $763e: $ff
	rst $38                                          ; $763f: $ff
	rst $38                                          ; $7640: $ff
	rst $38                                          ; $7641: $ff
	rst $38                                          ; $7642: $ff
	rst $38                                          ; $7643: $ff
	rst $38                                          ; $7644: $ff
	rst $38                                          ; $7645: $ff
	rst $38                                          ; $7646: $ff
	rst $38                                          ; $7647: $ff
	rst $38                                          ; $7648: $ff
	rst $38                                          ; $7649: $ff
	rst $38                                          ; $764a: $ff
	rst $38                                          ; $764b: $ff
	rst $38                                          ; $764c: $ff
	rst $38                                          ; $764d: $ff
	rst $38                                          ; $764e: $ff
	rst $38                                          ; $764f: $ff
	rst $38                                          ; $7650: $ff
	rst $38                                          ; $7651: $ff
	rst $38                                          ; $7652: $ff
	rst $38                                          ; $7653: $ff
	rst $38                                          ; $7654: $ff
	rst $38                                          ; $7655: $ff
	rst $38                                          ; $7656: $ff
	rst $38                                          ; $7657: $ff
	rst $38                                          ; $7658: $ff
	rst $38                                          ; $7659: $ff
	rst $38                                          ; $765a: $ff
	rst $38                                          ; $765b: $ff
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	rst $38                                          ; $765e: $ff
	rst $38                                          ; $765f: $ff
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	rst $38                                          ; $7662: $ff
	rst $38                                          ; $7663: $ff
	rst $38                                          ; $7664: $ff
	rst $38                                          ; $7665: $ff
	rst $38                                          ; $7666: $ff
	rst $38                                          ; $7667: $ff
	rst $38                                          ; $7668: $ff
	rst $38                                          ; $7669: $ff
	rst $38                                          ; $766a: $ff
	rst $38                                          ; $766b: $ff
	rst $38                                          ; $766c: $ff
	rst $38                                          ; $766d: $ff
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	rst $38                                          ; $7670: $ff
	rst $38                                          ; $7671: $ff
	rst $38                                          ; $7672: $ff

Call_02d_7673:
	rst $38                                          ; $7673: $ff
	rst $38                                          ; $7674: $ff
	rst $38                                          ; $7675: $ff
	rst $38                                          ; $7676: $ff
	rst $38                                          ; $7677: $ff
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	rst $38                                          ; $767a: $ff
	rst $38                                          ; $767b: $ff
	rst $38                                          ; $767c: $ff
	rst $38                                          ; $767d: $ff
	rst $38                                          ; $767e: $ff
	rst $38                                          ; $767f: $ff
	rst $38                                          ; $7680: $ff
	rst $38                                          ; $7681: $ff
	rst $38                                          ; $7682: $ff
	rst $38                                          ; $7683: $ff
	rst $38                                          ; $7684: $ff
	rst $38                                          ; $7685: $ff
	rst $38                                          ; $7686: $ff
	rst $38                                          ; $7687: $ff
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	rst $38                                          ; $768a: $ff
	rst $38                                          ; $768b: $ff
	rst $38                                          ; $768c: $ff
	rst $38                                          ; $768d: $ff
	rst $38                                          ; $768e: $ff
	rst $38                                          ; $768f: $ff
	rst $38                                          ; $7690: $ff
	rst $38                                          ; $7691: $ff
	rst $38                                          ; $7692: $ff
	rst $38                                          ; $7693: $ff
	rst $38                                          ; $7694: $ff
	rst $38                                          ; $7695: $ff
	rst $38                                          ; $7696: $ff
	rst $38                                          ; $7697: $ff
	rst $38                                          ; $7698: $ff
	rst $38                                          ; $7699: $ff
	rst $38                                          ; $769a: $ff
	rst $38                                          ; $769b: $ff
	rst $38                                          ; $769c: $ff
	rst $38                                          ; $769d: $ff
	rst $38                                          ; $769e: $ff
	rst $38                                          ; $769f: $ff
	rst $38                                          ; $76a0: $ff
	rst $38                                          ; $76a1: $ff
	rst $38                                          ; $76a2: $ff
	rst $38                                          ; $76a3: $ff
	rst $38                                          ; $76a4: $ff
	rst $38                                          ; $76a5: $ff
	rst $38                                          ; $76a6: $ff
	rst $38                                          ; $76a7: $ff
	rst $38                                          ; $76a8: $ff
	rst $38                                          ; $76a9: $ff
	rst $38                                          ; $76aa: $ff
	rst $38                                          ; $76ab: $ff
	rst $38                                          ; $76ac: $ff
	rst $38                                          ; $76ad: $ff
	rst $38                                          ; $76ae: $ff
	rst $38                                          ; $76af: $ff
	rst $38                                          ; $76b0: $ff
	rst $38                                          ; $76b1: $ff
	rst $38                                          ; $76b2: $ff
	rst $38                                          ; $76b3: $ff
	rst $38                                          ; $76b4: $ff
	rst $38                                          ; $76b5: $ff
	rst $38                                          ; $76b6: $ff
	rst $38                                          ; $76b7: $ff
	rst $38                                          ; $76b8: $ff
	rst $38                                          ; $76b9: $ff
	rst $38                                          ; $76ba: $ff
	rst $38                                          ; $76bb: $ff
	rst $38                                          ; $76bc: $ff
	rst $38                                          ; $76bd: $ff
	rst $38                                          ; $76be: $ff
	rst $38                                          ; $76bf: $ff
	rst $38                                          ; $76c0: $ff
	rst $38                                          ; $76c1: $ff
	rst $38                                          ; $76c2: $ff
	rst $38                                          ; $76c3: $ff
	rst $38                                          ; $76c4: $ff
	rst $38                                          ; $76c5: $ff
	rst $38                                          ; $76c6: $ff
	rst $38                                          ; $76c7: $ff
	rst $38                                          ; $76c8: $ff
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	rst $38                                          ; $76cb: $ff
	rst $38                                          ; $76cc: $ff
	rst $38                                          ; $76cd: $ff
	rst $38                                          ; $76ce: $ff
	rst $38                                          ; $76cf: $ff
	rst $38                                          ; $76d0: $ff
	rst $38                                          ; $76d1: $ff
	rst $38                                          ; $76d2: $ff
	rst $38                                          ; $76d3: $ff
	rst $38                                          ; $76d4: $ff
	rst $38                                          ; $76d5: $ff
	rst $38                                          ; $76d6: $ff
	rst $38                                          ; $76d7: $ff
	rst $38                                          ; $76d8: $ff
	rst $38                                          ; $76d9: $ff
	rst $38                                          ; $76da: $ff
	rst $38                                          ; $76db: $ff
	rst $38                                          ; $76dc: $ff
	rst $38                                          ; $76dd: $ff
	rst $38                                          ; $76de: $ff
	rst $38                                          ; $76df: $ff
	rst $38                                          ; $76e0: $ff
	rst $38                                          ; $76e1: $ff
	rst $38                                          ; $76e2: $ff
	rst $38                                          ; $76e3: $ff
	rst $38                                          ; $76e4: $ff
	rst $38                                          ; $76e5: $ff
	rst $38                                          ; $76e6: $ff
	rst $38                                          ; $76e7: $ff
	rst $38                                          ; $76e8: $ff
	rst $38                                          ; $76e9: $ff
	rst $38                                          ; $76ea: $ff
	rst $38                                          ; $76eb: $ff
	rst $38                                          ; $76ec: $ff
	rst $38                                          ; $76ed: $ff
	rst $38                                          ; $76ee: $ff
	rst $38                                          ; $76ef: $ff
	rst $38                                          ; $76f0: $ff
	rst $38                                          ; $76f1: $ff
	rst $38                                          ; $76f2: $ff
	rst $38                                          ; $76f3: $ff
	rst $38                                          ; $76f4: $ff
	rst $38                                          ; $76f5: $ff
	rst $38                                          ; $76f6: $ff
	rst $38                                          ; $76f7: $ff
	rst $38                                          ; $76f8: $ff
	rst $38                                          ; $76f9: $ff
	rst $38                                          ; $76fa: $ff
	rst $38                                          ; $76fb: $ff
	rst $38                                          ; $76fc: $ff
	rst $38                                          ; $76fd: $ff
	rst $38                                          ; $76fe: $ff
	rst $38                                          ; $76ff: $ff
	rst $38                                          ; $7700: $ff
	rst $38                                          ; $7701: $ff
	rst $38                                          ; $7702: $ff
	rst $38                                          ; $7703: $ff
	rst $38                                          ; $7704: $ff
	rst $38                                          ; $7705: $ff
	rst $38                                          ; $7706: $ff
	rst $38                                          ; $7707: $ff
	rst $38                                          ; $7708: $ff
	rst $38                                          ; $7709: $ff
	rst $38                                          ; $770a: $ff
	rst $38                                          ; $770b: $ff
	rst $38                                          ; $770c: $ff
	rst $38                                          ; $770d: $ff
	rst $38                                          ; $770e: $ff
	rst $38                                          ; $770f: $ff
	rst $38                                          ; $7710: $ff
	rst $38                                          ; $7711: $ff
	rst $38                                          ; $7712: $ff
	rst $38                                          ; $7713: $ff
	rst $38                                          ; $7714: $ff
	rst $38                                          ; $7715: $ff
	rst $38                                          ; $7716: $ff
	rst $38                                          ; $7717: $ff
	rst $38                                          ; $7718: $ff
	rst $38                                          ; $7719: $ff
	rst $38                                          ; $771a: $ff
	rst $38                                          ; $771b: $ff

Jump_02d_771c:
	rst $38                                          ; $771c: $ff
	rst $38                                          ; $771d: $ff
	rst $38                                          ; $771e: $ff
	rst $38                                          ; $771f: $ff
	rst $38                                          ; $7720: $ff
	rst $38                                          ; $7721: $ff
	rst $38                                          ; $7722: $ff
	rst $38                                          ; $7723: $ff
	rst $38                                          ; $7724: $ff
	rst $38                                          ; $7725: $ff
	rst $38                                          ; $7726: $ff
	rst $38                                          ; $7727: $ff
	rst $38                                          ; $7728: $ff
	rst $38                                          ; $7729: $ff
	rst $38                                          ; $772a: $ff
	rst $38                                          ; $772b: $ff
	rst $38                                          ; $772c: $ff
	rst $38                                          ; $772d: $ff
	rst $38                                          ; $772e: $ff
	rst $38                                          ; $772f: $ff
	rst $38                                          ; $7730: $ff
	rst $38                                          ; $7731: $ff
	rst $38                                          ; $7732: $ff
	rst $38                                          ; $7733: $ff
	rst $38                                          ; $7734: $ff
	rst $38                                          ; $7735: $ff
	rst $38                                          ; $7736: $ff
	rst $38                                          ; $7737: $ff
	rst $38                                          ; $7738: $ff
	rst $38                                          ; $7739: $ff
	rst $38                                          ; $773a: $ff
	rst $38                                          ; $773b: $ff
	rst $38                                          ; $773c: $ff
	rst $38                                          ; $773d: $ff
	rst $38                                          ; $773e: $ff
	rst $38                                          ; $773f: $ff
	rst $38                                          ; $7740: $ff
	rst $38                                          ; $7741: $ff
	rst $38                                          ; $7742: $ff
	rst $38                                          ; $7743: $ff
	rst $38                                          ; $7744: $ff
	rst $38                                          ; $7745: $ff
	rst $38                                          ; $7746: $ff
	rst $38                                          ; $7747: $ff
	rst $38                                          ; $7748: $ff
	rst $38                                          ; $7749: $ff
	rst $38                                          ; $774a: $ff
	rst $38                                          ; $774b: $ff
	rst $38                                          ; $774c: $ff
	rst $38                                          ; $774d: $ff
	rst $38                                          ; $774e: $ff
	rst $38                                          ; $774f: $ff
	rst $38                                          ; $7750: $ff
	rst $38                                          ; $7751: $ff
	rst $38                                          ; $7752: $ff
	rst $38                                          ; $7753: $ff
	rst $38                                          ; $7754: $ff
	rst $38                                          ; $7755: $ff
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	rst $38                                          ; $7758: $ff
	rst $38                                          ; $7759: $ff
	rst $38                                          ; $775a: $ff
	rst $38                                          ; $775b: $ff
	rst $38                                          ; $775c: $ff
	rst $38                                          ; $775d: $ff
	rst $38                                          ; $775e: $ff
	rst $38                                          ; $775f: $ff
	rst $38                                          ; $7760: $ff
	rst $38                                          ; $7761: $ff
	rst $38                                          ; $7762: $ff
	rst $38                                          ; $7763: $ff
	rst $38                                          ; $7764: $ff
	rst $38                                          ; $7765: $ff
	rst $38                                          ; $7766: $ff
	rst $38                                          ; $7767: $ff
	rst $38                                          ; $7768: $ff
	rst $38                                          ; $7769: $ff
	rst $38                                          ; $776a: $ff
	rst $38                                          ; $776b: $ff
	rst $38                                          ; $776c: $ff
	rst $38                                          ; $776d: $ff
	rst $38                                          ; $776e: $ff
	rst $38                                          ; $776f: $ff
	rst $38                                          ; $7770: $ff
	rst $38                                          ; $7771: $ff
	rst $38                                          ; $7772: $ff
	rst $38                                          ; $7773: $ff
	rst $38                                          ; $7774: $ff
	rst $38                                          ; $7775: $ff
	rst $38                                          ; $7776: $ff

Call_02d_7777:
	rst $38                                          ; $7777: $ff
	rst $38                                          ; $7778: $ff
	rst $38                                          ; $7779: $ff
	rst $38                                          ; $777a: $ff
	rst $38                                          ; $777b: $ff
	rst $38                                          ; $777c: $ff
	rst $38                                          ; $777d: $ff
	rst $38                                          ; $777e: $ff
	rst $38                                          ; $777f: $ff
	rst $38                                          ; $7780: $ff
	rst $38                                          ; $7781: $ff
	rst $38                                          ; $7782: $ff
	rst $38                                          ; $7783: $ff
	rst $38                                          ; $7784: $ff
	rst $38                                          ; $7785: $ff
	rst $38                                          ; $7786: $ff
	rst $38                                          ; $7787: $ff
	rst $38                                          ; $7788: $ff
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	rst $38                                          ; $778b: $ff
	rst $38                                          ; $778c: $ff
	rst $38                                          ; $778d: $ff
	rst $38                                          ; $778e: $ff
	rst $38                                          ; $778f: $ff
	rst $38                                          ; $7790: $ff
	rst $38                                          ; $7791: $ff
	rst $38                                          ; $7792: $ff
	rst $38                                          ; $7793: $ff
	rst $38                                          ; $7794: $ff
	rst $38                                          ; $7795: $ff
	rst $38                                          ; $7796: $ff
	rst $38                                          ; $7797: $ff
	rst $38                                          ; $7798: $ff
	rst $38                                          ; $7799: $ff
	rst $38                                          ; $779a: $ff
	rst $38                                          ; $779b: $ff
	rst $38                                          ; $779c: $ff
	rst $38                                          ; $779d: $ff
	rst $38                                          ; $779e: $ff
	rst $38                                          ; $779f: $ff
	rst $38                                          ; $77a0: $ff
	rst $38                                          ; $77a1: $ff
	rst $38                                          ; $77a2: $ff
	rst $38                                          ; $77a3: $ff
	rst $38                                          ; $77a4: $ff
	rst $38                                          ; $77a5: $ff
	rst $38                                          ; $77a6: $ff
	rst $38                                          ; $77a7: $ff
	rst $38                                          ; $77a8: $ff
	rst $38                                          ; $77a9: $ff
	rst $38                                          ; $77aa: $ff
	rst $38                                          ; $77ab: $ff
	rst $38                                          ; $77ac: $ff
	rst $38                                          ; $77ad: $ff
	rst $38                                          ; $77ae: $ff
	rst $38                                          ; $77af: $ff
	rst $38                                          ; $77b0: $ff
	rst $38                                          ; $77b1: $ff
	rst $38                                          ; $77b2: $ff
	rst $38                                          ; $77b3: $ff
	rst $38                                          ; $77b4: $ff
	rst $38                                          ; $77b5: $ff
	rst $38                                          ; $77b6: $ff
	rst $38                                          ; $77b7: $ff
	rst $38                                          ; $77b8: $ff
	rst $38                                          ; $77b9: $ff
	rst $38                                          ; $77ba: $ff
	rst $38                                          ; $77bb: $ff
	rst $38                                          ; $77bc: $ff
	rst $38                                          ; $77bd: $ff
	rst $38                                          ; $77be: $ff
	rst $38                                          ; $77bf: $ff
	rst $38                                          ; $77c0: $ff
	rst $38                                          ; $77c1: $ff
	rst $38                                          ; $77c2: $ff
	rst $38                                          ; $77c3: $ff
	rst $38                                          ; $77c4: $ff
	rst $38                                          ; $77c5: $ff
	rst $38                                          ; $77c6: $ff
	rst $38                                          ; $77c7: $ff
	rst $38                                          ; $77c8: $ff
	rst $38                                          ; $77c9: $ff
	rst $38                                          ; $77ca: $ff
	rst $38                                          ; $77cb: $ff
	rst $38                                          ; $77cc: $ff
	rst $38                                          ; $77cd: $ff
	rst $38                                          ; $77ce: $ff
	rst $38                                          ; $77cf: $ff
	rst $38                                          ; $77d0: $ff
	rst $38                                          ; $77d1: $ff
	rst $38                                          ; $77d2: $ff
	rst $38                                          ; $77d3: $ff
	rst $38                                          ; $77d4: $ff
	rst $38                                          ; $77d5: $ff
	rst $38                                          ; $77d6: $ff
	rst $38                                          ; $77d7: $ff
	rst $38                                          ; $77d8: $ff
	rst $38                                          ; $77d9: $ff
	rst $38                                          ; $77da: $ff
	rst $38                                          ; $77db: $ff
	rst $38                                          ; $77dc: $ff
	rst $38                                          ; $77dd: $ff
	rst $38                                          ; $77de: $ff
	rst $38                                          ; $77df: $ff
	rst $38                                          ; $77e0: $ff
	rst $38                                          ; $77e1: $ff
	rst $38                                          ; $77e2: $ff
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst $38                                          ; $77e5: $ff
	rst $38                                          ; $77e6: $ff
	rst $38                                          ; $77e7: $ff
	rst $38                                          ; $77e8: $ff
	rst $38                                          ; $77e9: $ff
	rst $38                                          ; $77ea: $ff
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	rst $38                                          ; $77ed: $ff
	rst $38                                          ; $77ee: $ff
	rst $38                                          ; $77ef: $ff
	rst $38                                          ; $77f0: $ff
	rst $38                                          ; $77f1: $ff
	rst $38                                          ; $77f2: $ff
	rst $38                                          ; $77f3: $ff
	rst $38                                          ; $77f4: $ff
	rst $38                                          ; $77f5: $ff
	rst $38                                          ; $77f6: $ff
	rst $38                                          ; $77f7: $ff
	rst $38                                          ; $77f8: $ff
	rst $38                                          ; $77f9: $ff
	rst $38                                          ; $77fa: $ff
	rst $38                                          ; $77fb: $ff
	rst $38                                          ; $77fc: $ff
	rst $38                                          ; $77fd: $ff
	rst $38                                          ; $77fe: $ff
	rst $38                                          ; $77ff: $ff
	rst $38                                          ; $7800: $ff
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	rst $38                                          ; $7803: $ff
	rst $38                                          ; $7804: $ff
	rst $38                                          ; $7805: $ff
	rst $38                                          ; $7806: $ff
	rst $38                                          ; $7807: $ff
	rst $38                                          ; $7808: $ff
	rst $38                                          ; $7809: $ff
	rst $38                                          ; $780a: $ff
	rst $38                                          ; $780b: $ff
	rst $38                                          ; $780c: $ff
	rst $38                                          ; $780d: $ff
	rst $38                                          ; $780e: $ff
	rst $38                                          ; $780f: $ff
	rst $38                                          ; $7810: $ff
	rst $38                                          ; $7811: $ff
	rst $38                                          ; $7812: $ff
	rst $38                                          ; $7813: $ff
	rst $38                                          ; $7814: $ff
	rst $38                                          ; $7815: $ff
	rst $38                                          ; $7816: $ff
	rst $38                                          ; $7817: $ff
	rst $38                                          ; $7818: $ff
	rst $38                                          ; $7819: $ff
	rst $38                                          ; $781a: $ff
	rst $38                                          ; $781b: $ff
	rst $38                                          ; $781c: $ff
	rst $38                                          ; $781d: $ff
	rst $38                                          ; $781e: $ff
	rst $38                                          ; $781f: $ff
	rst $38                                          ; $7820: $ff
	rst $38                                          ; $7821: $ff
	rst $38                                          ; $7822: $ff
	rst $38                                          ; $7823: $ff
	rst $38                                          ; $7824: $ff
	rst $38                                          ; $7825: $ff
	rst $38                                          ; $7826: $ff
	rst $38                                          ; $7827: $ff
	rst $38                                          ; $7828: $ff
	rst $38                                          ; $7829: $ff
	rst $38                                          ; $782a: $ff
	rst $38                                          ; $782b: $ff
	rst $38                                          ; $782c: $ff
	rst $38                                          ; $782d: $ff
	rst $38                                          ; $782e: $ff
	rst $38                                          ; $782f: $ff
	rst $38                                          ; $7830: $ff
	rst $38                                          ; $7831: $ff
	rst $38                                          ; $7832: $ff
	rst $38                                          ; $7833: $ff
	rst $38                                          ; $7834: $ff
	rst $38                                          ; $7835: $ff
	rst $38                                          ; $7836: $ff
	rst $38                                          ; $7837: $ff
	rst $38                                          ; $7838: $ff
	rst $38                                          ; $7839: $ff
	rst $38                                          ; $783a: $ff
	rst $38                                          ; $783b: $ff
	rst $38                                          ; $783c: $ff
	rst $38                                          ; $783d: $ff
	rst $38                                          ; $783e: $ff
	rst $38                                          ; $783f: $ff
	rst $38                                          ; $7840: $ff
	rst $38                                          ; $7841: $ff
	rst $38                                          ; $7842: $ff
	rst $38                                          ; $7843: $ff
	rst $38                                          ; $7844: $ff
	rst $38                                          ; $7845: $ff
	rst $38                                          ; $7846: $ff
	rst $38                                          ; $7847: $ff
	rst $38                                          ; $7848: $ff
	rst $38                                          ; $7849: $ff
	rst $38                                          ; $784a: $ff
	rst $38                                          ; $784b: $ff
	rst $38                                          ; $784c: $ff
	rst $38                                          ; $784d: $ff
	rst $38                                          ; $784e: $ff
	rst $38                                          ; $784f: $ff
	rst $38                                          ; $7850: $ff
	rst $38                                          ; $7851: $ff
	rst $38                                          ; $7852: $ff
	rst $38                                          ; $7853: $ff
	rst $38                                          ; $7854: $ff
	rst $38                                          ; $7855: $ff
	rst $38                                          ; $7856: $ff
	rst $38                                          ; $7857: $ff
	rst $38                                          ; $7858: $ff
	rst $38                                          ; $7859: $ff
	rst $38                                          ; $785a: $ff
	rst $38                                          ; $785b: $ff
	rst $38                                          ; $785c: $ff
	rst $38                                          ; $785d: $ff
	rst $38                                          ; $785e: $ff
	rst $38                                          ; $785f: $ff
	rst $38                                          ; $7860: $ff
	rst $38                                          ; $7861: $ff
	rst $38                                          ; $7862: $ff
	rst $38                                          ; $7863: $ff
	rst $38                                          ; $7864: $ff
	rst $38                                          ; $7865: $ff
	rst $38                                          ; $7866: $ff
	rst $38                                          ; $7867: $ff
	rst $38                                          ; $7868: $ff
	rst $38                                          ; $7869: $ff
	rst $38                                          ; $786a: $ff
	rst $38                                          ; $786b: $ff
	rst $38                                          ; $786c: $ff
	rst $38                                          ; $786d: $ff
	rst $38                                          ; $786e: $ff
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	rst $38                                          ; $7871: $ff
	rst $38                                          ; $7872: $ff
	rst $38                                          ; $7873: $ff
	rst $38                                          ; $7874: $ff
	rst $38                                          ; $7875: $ff
	rst $38                                          ; $7876: $ff
	rst $38                                          ; $7877: $ff
	rst $38                                          ; $7878: $ff
	rst $38                                          ; $7879: $ff
	rst $38                                          ; $787a: $ff
	rst $38                                          ; $787b: $ff
	rst $38                                          ; $787c: $ff
	rst $38                                          ; $787d: $ff
	rst $38                                          ; $787e: $ff
	rst $38                                          ; $787f: $ff
	rst $38                                          ; $7880: $ff
	rst $38                                          ; $7881: $ff
	rst $38                                          ; $7882: $ff
	rst $38                                          ; $7883: $ff
	rst $38                                          ; $7884: $ff
	rst $38                                          ; $7885: $ff
	rst $38                                          ; $7886: $ff
	rst $38                                          ; $7887: $ff
	rst $38                                          ; $7888: $ff
	rst $38                                          ; $7889: $ff
	rst $38                                          ; $788a: $ff
	rst $38                                          ; $788b: $ff
	rst $38                                          ; $788c: $ff
	rst $38                                          ; $788d: $ff
	rst $38                                          ; $788e: $ff
	rst $38                                          ; $788f: $ff
	rst $38                                          ; $7890: $ff
	rst $38                                          ; $7891: $ff
	rst $38                                          ; $7892: $ff
	rst $38                                          ; $7893: $ff
	rst $38                                          ; $7894: $ff
	rst $38                                          ; $7895: $ff
	rst $38                                          ; $7896: $ff
	rst $38                                          ; $7897: $ff
	rst $38                                          ; $7898: $ff
	rst $38                                          ; $7899: $ff
	rst $38                                          ; $789a: $ff
	rst $38                                          ; $789b: $ff
	rst $38                                          ; $789c: $ff
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	rst $38                                          ; $789f: $ff
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	rst $38                                          ; $78a2: $ff
	rst $38                                          ; $78a3: $ff
	rst $38                                          ; $78a4: $ff
	rst $38                                          ; $78a5: $ff
	rst $38                                          ; $78a6: $ff
	rst $38                                          ; $78a7: $ff
	rst $38                                          ; $78a8: $ff
	rst $38                                          ; $78a9: $ff
	rst $38                                          ; $78aa: $ff
	rst $38                                          ; $78ab: $ff
	rst $38                                          ; $78ac: $ff
	rst $38                                          ; $78ad: $ff
	rst $38                                          ; $78ae: $ff
	rst $38                                          ; $78af: $ff
	rst $38                                          ; $78b0: $ff
	rst $38                                          ; $78b1: $ff
	rst $38                                          ; $78b2: $ff
	rst $38                                          ; $78b3: $ff
	rst $38                                          ; $78b4: $ff
	rst $38                                          ; $78b5: $ff
	rst $38                                          ; $78b6: $ff
	rst $38                                          ; $78b7: $ff
	rst $38                                          ; $78b8: $ff
	rst $38                                          ; $78b9: $ff
	rst $38                                          ; $78ba: $ff
	rst $38                                          ; $78bb: $ff
	rst $38                                          ; $78bc: $ff
	rst $38                                          ; $78bd: $ff
	rst $38                                          ; $78be: $ff
	rst $38                                          ; $78bf: $ff
	rst $38                                          ; $78c0: $ff
	rst $38                                          ; $78c1: $ff
	rst $38                                          ; $78c2: $ff
	rst $38                                          ; $78c3: $ff
	rst $38                                          ; $78c4: $ff
	rst $38                                          ; $78c5: $ff
	rst $38                                          ; $78c6: $ff
	rst $38                                          ; $78c7: $ff
	rst $38                                          ; $78c8: $ff
	rst $38                                          ; $78c9: $ff
	rst $38                                          ; $78ca: $ff
	rst $38                                          ; $78cb: $ff
	rst $38                                          ; $78cc: $ff
	rst $38                                          ; $78cd: $ff
	rst $38                                          ; $78ce: $ff
	rst $38                                          ; $78cf: $ff
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	rst $38                                          ; $78d2: $ff
	rst $38                                          ; $78d3: $ff
	rst $38                                          ; $78d4: $ff
	rst $38                                          ; $78d5: $ff
	rst $38                                          ; $78d6: $ff
	rst $38                                          ; $78d7: $ff
	rst $38                                          ; $78d8: $ff
	rst $38                                          ; $78d9: $ff
	rst $38                                          ; $78da: $ff
	rst $38                                          ; $78db: $ff
	rst $38                                          ; $78dc: $ff
	rst $38                                          ; $78dd: $ff
	rst $38                                          ; $78de: $ff
	rst $38                                          ; $78df: $ff
	rst $38                                          ; $78e0: $ff
	rst $38                                          ; $78e1: $ff
	rst $38                                          ; $78e2: $ff
	rst $38                                          ; $78e3: $ff
	rst $38                                          ; $78e4: $ff
	rst $38                                          ; $78e5: $ff
	rst $38                                          ; $78e6: $ff
	rst $38                                          ; $78e7: $ff
	rst $38                                          ; $78e8: $ff
	rst $38                                          ; $78e9: $ff
	rst $38                                          ; $78ea: $ff
	rst $38                                          ; $78eb: $ff
	rst $38                                          ; $78ec: $ff
	rst $38                                          ; $78ed: $ff
	rst $38                                          ; $78ee: $ff
	rst $38                                          ; $78ef: $ff
	rst $38                                          ; $78f0: $ff
	rst $38                                          ; $78f1: $ff
	rst $38                                          ; $78f2: $ff
	rst $38                                          ; $78f3: $ff
	rst $38                                          ; $78f4: $ff
	rst $38                                          ; $78f5: $ff
	rst $38                                          ; $78f6: $ff
	rst $38                                          ; $78f7: $ff
	rst $38                                          ; $78f8: $ff
	rst $38                                          ; $78f9: $ff
	rst $38                                          ; $78fa: $ff
	rst $38                                          ; $78fb: $ff
	rst $38                                          ; $78fc: $ff
	rst $38                                          ; $78fd: $ff
	rst $38                                          ; $78fe: $ff
	rst $38                                          ; $78ff: $ff
	rst $38                                          ; $7900: $ff
	rst $38                                          ; $7901: $ff
	rst $38                                          ; $7902: $ff
	rst $38                                          ; $7903: $ff
	rst $38                                          ; $7904: $ff
	rst $38                                          ; $7905: $ff
	rst $38                                          ; $7906: $ff
	rst $38                                          ; $7907: $ff
	rst $38                                          ; $7908: $ff
	rst $38                                          ; $7909: $ff
	rst $38                                          ; $790a: $ff
	rst $38                                          ; $790b: $ff
	rst $38                                          ; $790c: $ff
	rst $38                                          ; $790d: $ff
	rst $38                                          ; $790e: $ff
	rst $38                                          ; $790f: $ff
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	rst $38                                          ; $7912: $ff
	rst $38                                          ; $7913: $ff
	rst $38                                          ; $7914: $ff
	rst $38                                          ; $7915: $ff
	rst $38                                          ; $7916: $ff
	rst $38                                          ; $7917: $ff
	rst $38                                          ; $7918: $ff
	rst $38                                          ; $7919: $ff
	rst $38                                          ; $791a: $ff
	rst $38                                          ; $791b: $ff
	rst $38                                          ; $791c: $ff
	rst $38                                          ; $791d: $ff
	rst $38                                          ; $791e: $ff
	rst $38                                          ; $791f: $ff
	rst $38                                          ; $7920: $ff
	rst $38                                          ; $7921: $ff
	rst $38                                          ; $7922: $ff
	rst $38                                          ; $7923: $ff
	rst $38                                          ; $7924: $ff
	rst $38                                          ; $7925: $ff
	rst $38                                          ; $7926: $ff
	rst $38                                          ; $7927: $ff
	rst $38                                          ; $7928: $ff
	rst $38                                          ; $7929: $ff
	rst $38                                          ; $792a: $ff
	rst $38                                          ; $792b: $ff
	rst $38                                          ; $792c: $ff
	rst $38                                          ; $792d: $ff
	rst $38                                          ; $792e: $ff
	rst $38                                          ; $792f: $ff
	rst $38                                          ; $7930: $ff
	rst $38                                          ; $7931: $ff
	rst $38                                          ; $7932: $ff
	rst $38                                          ; $7933: $ff
	rst $38                                          ; $7934: $ff
	rst $38                                          ; $7935: $ff
	rst $38                                          ; $7936: $ff
	rst $38                                          ; $7937: $ff
	rst $38                                          ; $7938: $ff
	rst $38                                          ; $7939: $ff
	rst $38                                          ; $793a: $ff
	rst $38                                          ; $793b: $ff
	rst $38                                          ; $793c: $ff
	rst $38                                          ; $793d: $ff
	rst $38                                          ; $793e: $ff
	rst $38                                          ; $793f: $ff
	rst $38                                          ; $7940: $ff
	rst $38                                          ; $7941: $ff
	rst $38                                          ; $7942: $ff
	rst $38                                          ; $7943: $ff
	rst $38                                          ; $7944: $ff
	rst $38                                          ; $7945: $ff
	rst $38                                          ; $7946: $ff
	rst $38                                          ; $7947: $ff
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	rst $38                                          ; $794a: $ff
	rst $38                                          ; $794b: $ff
	rst $38                                          ; $794c: $ff
	rst $38                                          ; $794d: $ff
	rst $38                                          ; $794e: $ff
	rst $38                                          ; $794f: $ff
	rst $38                                          ; $7950: $ff
	rst $38                                          ; $7951: $ff
	rst $38                                          ; $7952: $ff
	rst $38                                          ; $7953: $ff
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	rst $38                                          ; $7956: $ff
	rst $38                                          ; $7957: $ff
	rst $38                                          ; $7958: $ff
	rst $38                                          ; $7959: $ff
	rst $38                                          ; $795a: $ff
	rst $38                                          ; $795b: $ff
	rst $38                                          ; $795c: $ff
	rst $38                                          ; $795d: $ff
	rst $38                                          ; $795e: $ff
	rst $38                                          ; $795f: $ff
	rst $38                                          ; $7960: $ff
	rst $38                                          ; $7961: $ff
	rst $38                                          ; $7962: $ff
	rst $38                                          ; $7963: $ff
	rst $38                                          ; $7964: $ff
	rst $38                                          ; $7965: $ff
	rst $38                                          ; $7966: $ff
	rst $38                                          ; $7967: $ff
	rst $38                                          ; $7968: $ff
	rst $38                                          ; $7969: $ff
	rst $38                                          ; $796a: $ff
	rst $38                                          ; $796b: $ff
	rst $38                                          ; $796c: $ff
	rst $38                                          ; $796d: $ff
	rst $38                                          ; $796e: $ff
	rst $38                                          ; $796f: $ff
	rst $38                                          ; $7970: $ff
	rst $38                                          ; $7971: $ff
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	rst $38                                          ; $7974: $ff
	rst $38                                          ; $7975: $ff
	rst $38                                          ; $7976: $ff
	rst $38                                          ; $7977: $ff
	rst $38                                          ; $7978: $ff
	rst $38                                          ; $7979: $ff
	rst $38                                          ; $797a: $ff
	rst $38                                          ; $797b: $ff
	rst $38                                          ; $797c: $ff
	rst $38                                          ; $797d: $ff
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	rst $38                                          ; $7980: $ff
	rst $38                                          ; $7981: $ff
	rst $38                                          ; $7982: $ff
	rst $38                                          ; $7983: $ff
	rst $38                                          ; $7984: $ff
	rst $38                                          ; $7985: $ff
	rst $38                                          ; $7986: $ff
	rst $38                                          ; $7987: $ff
	rst $38                                          ; $7988: $ff
	rst $38                                          ; $7989: $ff
	rst $38                                          ; $798a: $ff
	rst $38                                          ; $798b: $ff
	rst $38                                          ; $798c: $ff
	rst $38                                          ; $798d: $ff
	rst $38                                          ; $798e: $ff
	rst $38                                          ; $798f: $ff
	rst $38                                          ; $7990: $ff
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	rst $38                                          ; $7993: $ff
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rst $38                                          ; $7999: $ff
	rst $38                                          ; $799a: $ff
	rst $38                                          ; $799b: $ff
	rst $38                                          ; $799c: $ff
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	rst $38                                          ; $79a1: $ff
	rst $38                                          ; $79a2: $ff
	rst $38                                          ; $79a3: $ff
	rst $38                                          ; $79a4: $ff
	rst $38                                          ; $79a5: $ff
	rst $38                                          ; $79a6: $ff
	rst $38                                          ; $79a7: $ff
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	rst $38                                          ; $79aa: $ff
	rst $38                                          ; $79ab: $ff
	rst $38                                          ; $79ac: $ff
	rst $38                                          ; $79ad: $ff
	rst $38                                          ; $79ae: $ff
	rst $38                                          ; $79af: $ff
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff
	rst $38                                          ; $79b7: $ff
	rst $38                                          ; $79b8: $ff
	rst $38                                          ; $79b9: $ff
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff
	rst $38                                          ; $79cb: $ff
	rst $38                                          ; $79cc: $ff
	rst $38                                          ; $79cd: $ff
	rst $38                                          ; $79ce: $ff
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	rst $38                                          ; $79d4: $ff
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	rst $38                                          ; $79d7: $ff
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff
	rst $38                                          ; $79da: $ff
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst $38                                          ; $79df: $ff
	rst $38                                          ; $79e0: $ff
	rst $38                                          ; $79e1: $ff
	rst $38                                          ; $79e2: $ff
	rst $38                                          ; $79e3: $ff
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	rst $38                                          ; $79e6: $ff
	rst $38                                          ; $79e7: $ff
	rst $38                                          ; $79e8: $ff
	rst $38                                          ; $79e9: $ff
	rst $38                                          ; $79ea: $ff
	rst $38                                          ; $79eb: $ff
	rst $38                                          ; $79ec: $ff
	rst $38                                          ; $79ed: $ff
	rst $38                                          ; $79ee: $ff
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	rst $38                                          ; $79f5: $ff
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff
	rst $38                                          ; $7a15: $ff
	rst $38                                          ; $7a16: $ff
	rst $38                                          ; $7a17: $ff
	rst $38                                          ; $7a18: $ff
	rst $38                                          ; $7a19: $ff
	rst $38                                          ; $7a1a: $ff
	rst $38                                          ; $7a1b: $ff
	rst $38                                          ; $7a1c: $ff
	rst $38                                          ; $7a1d: $ff
	rst $38                                          ; $7a1e: $ff
	rst $38                                          ; $7a1f: $ff
	rst $38                                          ; $7a20: $ff
	rst $38                                          ; $7a21: $ff
	rst $38                                          ; $7a22: $ff
	rst $38                                          ; $7a23: $ff
	rst $38                                          ; $7a24: $ff
	rst $38                                          ; $7a25: $ff
	rst $38                                          ; $7a26: $ff
	rst $38                                          ; $7a27: $ff
	rst $38                                          ; $7a28: $ff
	rst $38                                          ; $7a29: $ff
	rst $38                                          ; $7a2a: $ff
	rst $38                                          ; $7a2b: $ff
	rst $38                                          ; $7a2c: $ff
	rst $38                                          ; $7a2d: $ff
	rst $38                                          ; $7a2e: $ff
	rst $38                                          ; $7a2f: $ff
	rst $38                                          ; $7a30: $ff
	rst $38                                          ; $7a31: $ff
	rst $38                                          ; $7a32: $ff
	rst $38                                          ; $7a33: $ff
	rst $38                                          ; $7a34: $ff
	rst $38                                          ; $7a35: $ff
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	rst $38                                          ; $7a38: $ff
	rst $38                                          ; $7a39: $ff
	rst $38                                          ; $7a3a: $ff
	rst $38                                          ; $7a3b: $ff
	rst $38                                          ; $7a3c: $ff
	rst $38                                          ; $7a3d: $ff
	rst $38                                          ; $7a3e: $ff
	rst $38                                          ; $7a3f: $ff
	rst $38                                          ; $7a40: $ff
	rst $38                                          ; $7a41: $ff
	rst $38                                          ; $7a42: $ff
	rst $38                                          ; $7a43: $ff
	rst $38                                          ; $7a44: $ff
	rst $38                                          ; $7a45: $ff
	rst $38                                          ; $7a46: $ff
	rst $38                                          ; $7a47: $ff
	rst $38                                          ; $7a48: $ff
	rst $38                                          ; $7a49: $ff
	rst $38                                          ; $7a4a: $ff
	rst $38                                          ; $7a4b: $ff
	rst $38                                          ; $7a4c: $ff
	rst $38                                          ; $7a4d: $ff
	rst $38                                          ; $7a4e: $ff
	rst $38                                          ; $7a4f: $ff
	rst $38                                          ; $7a50: $ff
	rst $38                                          ; $7a51: $ff
	rst $38                                          ; $7a52: $ff
	rst $38                                          ; $7a53: $ff
	rst $38                                          ; $7a54: $ff
	rst $38                                          ; $7a55: $ff
	rst $38                                          ; $7a56: $ff
	rst $38                                          ; $7a57: $ff
	rst $38                                          ; $7a58: $ff
	rst $38                                          ; $7a59: $ff
	rst $38                                          ; $7a5a: $ff
	rst $38                                          ; $7a5b: $ff
	rst $38                                          ; $7a5c: $ff
	rst $38                                          ; $7a5d: $ff
	rst $38                                          ; $7a5e: $ff
	rst $38                                          ; $7a5f: $ff
	rst $38                                          ; $7a60: $ff
	rst $38                                          ; $7a61: $ff
	rst $38                                          ; $7a62: $ff
	rst $38                                          ; $7a63: $ff
	rst $38                                          ; $7a64: $ff
	rst $38                                          ; $7a65: $ff
	rst $38                                          ; $7a66: $ff
	rst $38                                          ; $7a67: $ff
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	rst $38                                          ; $7a6a: $ff
	rst $38                                          ; $7a6b: $ff
	rst $38                                          ; $7a6c: $ff
	rst $38                                          ; $7a6d: $ff
	rst $38                                          ; $7a6e: $ff
	rst $38                                          ; $7a6f: $ff
	rst $38                                          ; $7a70: $ff
	rst $38                                          ; $7a71: $ff
	rst $38                                          ; $7a72: $ff
	rst $38                                          ; $7a73: $ff
	rst $38                                          ; $7a74: $ff
	rst $38                                          ; $7a75: $ff
	rst $38                                          ; $7a76: $ff
	rst $38                                          ; $7a77: $ff
	rst $38                                          ; $7a78: $ff
	rst $38                                          ; $7a79: $ff
	rst $38                                          ; $7a7a: $ff

Call_02d_7a7b:
	rst $38                                          ; $7a7b: $ff
	rst $38                                          ; $7a7c: $ff
	rst $38                                          ; $7a7d: $ff
	rst $38                                          ; $7a7e: $ff
	rst $38                                          ; $7a7f: $ff
	rst $38                                          ; $7a80: $ff
	rst $38                                          ; $7a81: $ff
	rst $38                                          ; $7a82: $ff
	rst $38                                          ; $7a83: $ff
	rst $38                                          ; $7a84: $ff
	rst $38                                          ; $7a85: $ff
	rst $38                                          ; $7a86: $ff
	rst $38                                          ; $7a87: $ff
	rst $38                                          ; $7a88: $ff
	rst $38                                          ; $7a89: $ff
	rst $38                                          ; $7a8a: $ff
	rst $38                                          ; $7a8b: $ff
	rst $38                                          ; $7a8c: $ff
	rst $38                                          ; $7a8d: $ff
	rst $38                                          ; $7a8e: $ff
	rst $38                                          ; $7a8f: $ff
	rst $38                                          ; $7a90: $ff
	rst $38                                          ; $7a91: $ff
	rst $38                                          ; $7a92: $ff
	rst $38                                          ; $7a93: $ff
	rst $38                                          ; $7a94: $ff
	rst $38                                          ; $7a95: $ff
	rst $38                                          ; $7a96: $ff
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	rst $38                                          ; $7a99: $ff
	rst $38                                          ; $7a9a: $ff
	rst $38                                          ; $7a9b: $ff
	rst $38                                          ; $7a9c: $ff
	rst $38                                          ; $7a9d: $ff
	rst $38                                          ; $7a9e: $ff
	rst $38                                          ; $7a9f: $ff
	rst $38                                          ; $7aa0: $ff
	rst $38                                          ; $7aa1: $ff
	rst $38                                          ; $7aa2: $ff
	rst $38                                          ; $7aa3: $ff
	rst $38                                          ; $7aa4: $ff
	rst $38                                          ; $7aa5: $ff
	rst $38                                          ; $7aa6: $ff
	rst $38                                          ; $7aa7: $ff
	rst $38                                          ; $7aa8: $ff
	rst $38                                          ; $7aa9: $ff
	rst $38                                          ; $7aaa: $ff
	rst $38                                          ; $7aab: $ff
	rst $38                                          ; $7aac: $ff
	rst $38                                          ; $7aad: $ff
	rst $38                                          ; $7aae: $ff
	rst $38                                          ; $7aaf: $ff
	rst $38                                          ; $7ab0: $ff
	rst $38                                          ; $7ab1: $ff
	rst $38                                          ; $7ab2: $ff
	rst $38                                          ; $7ab3: $ff
	rst $38                                          ; $7ab4: $ff
	rst $38                                          ; $7ab5: $ff
	rst $38                                          ; $7ab6: $ff
	rst $38                                          ; $7ab7: $ff
	rst $38                                          ; $7ab8: $ff
	rst $38                                          ; $7ab9: $ff
	rst $38                                          ; $7aba: $ff
	rst $38                                          ; $7abb: $ff
	rst $38                                          ; $7abc: $ff
	rst $38                                          ; $7abd: $ff
	rst $38                                          ; $7abe: $ff
	rst $38                                          ; $7abf: $ff
	rst $38                                          ; $7ac0: $ff
	rst $38                                          ; $7ac1: $ff
	rst $38                                          ; $7ac2: $ff
	rst $38                                          ; $7ac3: $ff
	rst $38                                          ; $7ac4: $ff
	rst $38                                          ; $7ac5: $ff
	rst $38                                          ; $7ac6: $ff
	rst $38                                          ; $7ac7: $ff
	rst $38                                          ; $7ac8: $ff
	rst $38                                          ; $7ac9: $ff
	rst $38                                          ; $7aca: $ff
	rst $38                                          ; $7acb: $ff
	rst $38                                          ; $7acc: $ff
	rst $38                                          ; $7acd: $ff
	rst $38                                          ; $7ace: $ff
	rst $38                                          ; $7acf: $ff
	rst $38                                          ; $7ad0: $ff
	rst $38                                          ; $7ad1: $ff
	rst $38                                          ; $7ad2: $ff
	rst $38                                          ; $7ad3: $ff
	rst $38                                          ; $7ad4: $ff
	rst $38                                          ; $7ad5: $ff
	rst $38                                          ; $7ad6: $ff
	rst $38                                          ; $7ad7: $ff
	rst $38                                          ; $7ad8: $ff
	rst $38                                          ; $7ad9: $ff
	rst $38                                          ; $7ada: $ff
	rst $38                                          ; $7adb: $ff
	rst $38                                          ; $7adc: $ff
	rst $38                                          ; $7add: $ff
	rst $38                                          ; $7ade: $ff
	rst $38                                          ; $7adf: $ff
	rst $38                                          ; $7ae0: $ff
	rst $38                                          ; $7ae1: $ff
	rst $38                                          ; $7ae2: $ff
	rst $38                                          ; $7ae3: $ff
	rst $38                                          ; $7ae4: $ff
	rst $38                                          ; $7ae5: $ff
	rst $38                                          ; $7ae6: $ff
	rst $38                                          ; $7ae7: $ff
	rst $38                                          ; $7ae8: $ff
	rst $38                                          ; $7ae9: $ff
	rst $38                                          ; $7aea: $ff
	rst $38                                          ; $7aeb: $ff
	rst $38                                          ; $7aec: $ff
	rst $38                                          ; $7aed: $ff
	rst $38                                          ; $7aee: $ff
	rst $38                                          ; $7aef: $ff
	rst $38                                          ; $7af0: $ff
	rst $38                                          ; $7af1: $ff
	rst $38                                          ; $7af2: $ff
	rst $38                                          ; $7af3: $ff
	rst $38                                          ; $7af4: $ff
	rst $38                                          ; $7af5: $ff
	rst $38                                          ; $7af6: $ff
	rst $38                                          ; $7af7: $ff
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	rst $38                                          ; $7afe: $ff
	rst $38                                          ; $7aff: $ff
	rst $38                                          ; $7b00: $ff
	rst $38                                          ; $7b01: $ff
	rst $38                                          ; $7b02: $ff
	rst $38                                          ; $7b03: $ff
	rst $38                                          ; $7b04: $ff
	rst $38                                          ; $7b05: $ff
	rst $38                                          ; $7b06: $ff
	rst $38                                          ; $7b07: $ff
	rst $38                                          ; $7b08: $ff
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	rst $38                                          ; $7b0b: $ff
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	rst $38                                          ; $7b0e: $ff
	rst $38                                          ; $7b0f: $ff
	rst $38                                          ; $7b10: $ff
	rst $38                                          ; $7b11: $ff
	rst $38                                          ; $7b12: $ff
	rst $38                                          ; $7b13: $ff
	rst $38                                          ; $7b14: $ff
	rst $38                                          ; $7b15: $ff
	rst $38                                          ; $7b16: $ff
	rst $38                                          ; $7b17: $ff
	rst $38                                          ; $7b18: $ff
	rst $38                                          ; $7b19: $ff
	rst $38                                          ; $7b1a: $ff
	rst $38                                          ; $7b1b: $ff
	rst $38                                          ; $7b1c: $ff
	rst $38                                          ; $7b1d: $ff
	rst $38                                          ; $7b1e: $ff
	rst $38                                          ; $7b1f: $ff
	rst $38                                          ; $7b20: $ff
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	rst $38                                          ; $7b25: $ff
	rst $38                                          ; $7b26: $ff
	rst $38                                          ; $7b27: $ff
	rst $38                                          ; $7b28: $ff
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	rst $38                                          ; $7b2d: $ff
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rst $38                                          ; $7b30: $ff
	rst $38                                          ; $7b31: $ff
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	rst $38                                          ; $7b34: $ff
	rst $38                                          ; $7b35: $ff
	rst $38                                          ; $7b36: $ff
	rst $38                                          ; $7b37: $ff
	rst $38                                          ; $7b38: $ff
	rst $38                                          ; $7b39: $ff
	rst $38                                          ; $7b3a: $ff
	rst $38                                          ; $7b3b: $ff
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
	rst $38                                          ; $7b3f: $ff
	rst $38                                          ; $7b40: $ff
	rst $38                                          ; $7b41: $ff
	rst $38                                          ; $7b42: $ff
	rst $38                                          ; $7b43: $ff
	rst $38                                          ; $7b44: $ff
	rst $38                                          ; $7b45: $ff
	rst $38                                          ; $7b46: $ff
	rst $38                                          ; $7b47: $ff
	rst $38                                          ; $7b48: $ff
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	rst $38                                          ; $7b4b: $ff
	rst $38                                          ; $7b4c: $ff
	rst $38                                          ; $7b4d: $ff
	rst $38                                          ; $7b4e: $ff
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	rst $38                                          ; $7b51: $ff
	rst $38                                          ; $7b52: $ff
	rst $38                                          ; $7b53: $ff
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff
	rst $38                                          ; $7e63: $ff
	rst $38                                          ; $7e64: $ff
	rst $38                                          ; $7e65: $ff
	rst $38                                          ; $7e66: $ff
	rst $38                                          ; $7e67: $ff
	rst $38                                          ; $7e68: $ff
	rst $38                                          ; $7e69: $ff
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	rst $38                                          ; $7e6c: $ff
	rst $38                                          ; $7e6d: $ff
	rst $38                                          ; $7e6e: $ff
	rst $38                                          ; $7e6f: $ff
	rst $38                                          ; $7e70: $ff
	rst $38                                          ; $7e71: $ff
	rst $38                                          ; $7e72: $ff
	rst $38                                          ; $7e73: $ff
	rst $38                                          ; $7e74: $ff
	rst $38                                          ; $7e75: $ff
	rst $38                                          ; $7e76: $ff
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
	rst $38                                          ; $7e7b: $ff
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	rst $38                                          ; $7e7f: $ff
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff
	rst $38                                          ; $7e87: $ff
	rst $38                                          ; $7e88: $ff
	rst $38                                          ; $7e89: $ff
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff
	rst $38                                          ; $7e92: $ff
	rst $38                                          ; $7e93: $ff
	rst $38                                          ; $7e94: $ff
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	rst $38                                          ; $7e97: $ff
	rst $38                                          ; $7e98: $ff
	rst $38                                          ; $7e99: $ff
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
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
