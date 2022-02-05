; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

	ld [hl], h                                       ; $4000: $74
	inc bc                                           ; $4001: $03
	rst $38                                          ; $4002: $ff
	rst SubAFromDE                                          ; $4003: $df
	dec a                                            ; $4004: $3d
	add b                                            ; $4005: $80
	inc de                                           ; $4006: $13
	rra                                              ; $4007: $1f
	ld sp, hl                                        ; $4008: $f9
	rst $38                                          ; $4009: $ff
	ld b, a                                          ; $400a: $47
	ld a, a                                          ; $400b: $7f
	ld [hl-], a                                      ; $400c: $32
	ccf                                              ; $400d: $3f
	dec h                                            ; $400e: $25
	ccf                                              ; $400f: $3f
	ld b, h                                          ; $4010: $44
	ld a, a                                          ; $4011: $7f
	ld c, h                                          ; $4012: $4c
	ld a, a                                          ; $4013: $7f
	ld c, [hl]                                       ; $4014: $4e
	ld a, e                                          ; $4015: $7b
	ccf                                              ; $4016: $3f
	dec a                                            ; $4017: $3d
	dec l                                            ; $4018: $2d
	ld [hl], $3f                                     ; $4019: $36 $3f
	ld h, $1f                                        ; $401b: $26 $1f
	ld d, $0f                                        ; $401d: $16 $0f
	add hl, bc                                       ; $401f: $09
	rlca                                             ; $4020: $07
	inc b                                            ; $4021: $04
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	ret nz                                           ; $4024: $c0

	add b                                            ; $4025: $80
	ret nz                                           ; $4026: $c0

	inc [hl]                                         ; $4027: $34
	db $f4                                           ; $4028: $f4
	adc [hl]                                         ; $4029: $8e
	cp $fc                                           ; $402a: $fe $fc
	db $fc                                           ; $402c: $fc
	adc d                                            ; $402d: $8a
	cp $26                                           ; $402e: $fe $26
	cp $96                                           ; $4030: $fe $96
	cp $d5                                           ; $4032: $fe $d5
	rst $38                                          ; $4034: $ff
	db $fd                                           ; $4035: $fd
	cp a                                             ; $4036: $bf
	ld a, [$de6e]                                    ; $4037: $fa $6e $de
	ld [hl], d                                       ; $403a: $72
	cp $62                                           ; $403b: $fe $62
	db $fc                                           ; $403d: $fc
	ld l, h                                          ; $403e: $6c
	ld hl, sp-$78                                    ; $403f: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $4041: $f0 $10
	rlca                                             ; $4043: $07
	rlca                                             ; $4044: $07
	add l                                            ; $4045: $85
	ld a, [bc]                                       ; $4046: $0a
	rrca                                             ; $4047: $0f
	dec e                                            ; $4048: $1d
	rla                                              ; $4049: $17
	inc a                                            ; $404a: $3c
	dec hl                                           ; $404b: $2b
	ccf                                              ; $404c: $3f
	dec l                                            ; $404d: $2d
	ld a, a                                          ; $404e: $7f
	ld e, e                                          ; $404f: $5b
	rst $38                                          ; $4050: $ff
	add b                                            ; $4051: $80
	rst $38                                          ; $4052: $ff
	rst $38                                          ; $4053: $ff
	ld a, a                                          ; $4054: $7f
	ld h, b                                          ; $4055: $60
	ld a, a                                          ; $4056: $7f
	ld e, a                                          ; $4057: $5f
	ld l, [hl]                                       ; $4058: $6e
	ld c, [hl]                                       ; $4059: $4e
	ld l, [hl]                                       ; $405a: $6e
	ld c, [hl]                                       ; $405b: $4e
	halt                                             ; $405c: $76
	ld e, [hl]                                       ; $405d: $5e
	rst $38                                          ; $405e: $ff
	rst $38                                          ; $405f: $ff
	db $fd                                           ; $4060: $fd
	add l                                            ; $4061: $85
	ldh a, [rSVBK]                                   ; $4062: $f0 $70
	xor b                                            ; $4064: $a8
	ld hl, sp+$44                                    ; $4065: $f8 $44
	db $fc                                           ; $4067: $fc
	ld a, h                                          ; $4068: $7c
	sub h                                            ; $4069: $94
	rst $38                                          ; $406a: $ff
	ld [hl], a                                       ; $406b: $77
	rst $38                                          ; $406c: $ff
	sbc l                                            ; $406d: $9d
	rst $38                                          ; $406e: $ff
	inc bc                                           ; $406f: $03
	rst $38                                          ; $4070: $ff
	db $fd                                           ; $4071: $fd
	cp $06                                           ; $4072: $fe $06
	cp $fa                                           ; $4074: $fe $fa
	and $e2                                          ; $4076: $e6 $e2
	and $e2                                          ; $4078: $e6 $e2
	sub [hl]                                         ; $407a: $96
	ldh a, [c]                                       ; $407b: $f2
	ld l, a                                          ; $407c: $6f
	ldh [rIE], a                                     ; $407d: $e0 $ff
	rst SubAFromDE                                          ; $407f: $df
	inc bc                                           ; $4080: $03
	sub h                                            ; $4081: $94
	ld a, $3f                                        ; $4082: $3e $3f
	ld de, $661f                                     ; $4084: $11 $1f $66
	ld a, a                                          ; $4087: $7f
	sbc d                                            ; $4088: $9a
	rst $38                                          ; $4089: $ff
	ld [hl], e                                       ; $408a: $73
	ld a, a                                          ; $408b: $7f
	inc h                                            ; $408c: $24
	ld a, e                                          ; $408d: $7b
	ld a, [hl]                                       ; $408e: $7e
	ld a, a                                          ; $408f: $7f
	cp $9b                                           ; $4090: $fe $9b
	ld c, [hl]                                       ; $4092: $4e
	ld a, a                                          ; $4093: $7f
	ccf                                              ; $4094: $3f
	scf                                              ; $4095: $37
	ld [hl], e                                       ; $4096: $73
	ld a, [hl]                                       ; $4097: $7e
	sub c                                            ; $4098: $91
	db $10                                           ; $4099: $10
	rrca                                             ; $409a: $0f
	add hl, bc                                       ; $409b: $09
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	add sp, -$18                                     ; $409e: $e8 $e8
	inc e                                            ; $40a0: $1c
	db $fc                                           ; $40a1: $fc
	adc b                                            ; $40a2: $88
	ld hl, sp+$74                                    ; $40a3: $f8 $74
	db $fc                                           ; $40a5: $fc
	sbc d                                            ; $40a6: $9a
	ld a, e                                          ; $40a7: $7b
	push bc                                          ; $40a8: $c5
	adc l                                            ; $40a9: $8d
	and l                                            ; $40aa: $a5
	rst $38                                          ; $40ab: $ff
	sub l                                            ; $40ac: $95
	rst $38                                          ; $40ad: $ff
	push de                                          ; $40ae: $d5
	rst $38                                          ; $40af: $ff
	ld a, [$feae]                                    ; $40b0: $fa $ae $fe
	ld a, d                                          ; $40b3: $7a
	sbc $62                                          ; $40b4: $de $62
	db $fc                                           ; $40b6: $fc
	ld h, h                                          ; $40b7: $64
	ld hl, sp+$08                                    ; $40b8: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $40ba: $f0 $90
	ld h, a                                          ; $40bc: $67
	cp h                                             ; $40bd: $bc
	sbc [hl]                                         ; $40be: $9e
	inc a                                            ; $40bf: $3c
	ld [hl], e                                       ; $40c0: $73
	cp h                                             ; $40c1: $bc
	sbc b                                            ; $40c2: $98
	adc d                                            ; $40c3: $8a
	rst $38                                          ; $40c4: $ff
	ld d, e                                          ; $40c5: $53
	ld a, a                                          ; $40c6: $7f
	ld d, h                                          ; $40c7: $54
	ld a, a                                          ; $40c8: $7f
	ld h, h                                          ; $40c9: $64
	ld a, e                                          ; $40ca: $7b
	cp h                                             ; $40cb: $bc
	sbc c                                            ; $40cc: $99
	ld b, [hl]                                       ; $40cd: $46
	ld a, a                                          ; $40ce: $7f
	ld h, $3f                                        ; $40cf: $26 $3f
	cpl                                              ; $40d1: $2f
	add hl, sp                                       ; $40d2: $39
	ld [hl], a                                       ; $40d3: $77
	ret nz                                           ; $40d4: $c0

	ld [hl], e                                       ; $40d5: $73
	ld a, d                                          ; $40d6: $7a
	sub h                                            ; $40d7: $94
	ldh a, [$08]                                     ; $40d8: $f0 $08
	ld hl, sp-$74                                    ; $40da: $f8 $8c
	db $fc                                           ; $40dc: $fc
	ld [hl], d                                       ; $40dd: $72
	cp $9a                                           ; $40de: $fe $9a
	cp $05                                           ; $40e0: $fe $05
	rst $38                                          ; $40e2: $ff
	ld l, a                                          ; $40e3: $6f
	cp h                                             ; $40e4: $bc
	adc e                                            ; $40e5: $8b
	jp z, $e6fe                                      ; $40e6: $ca $fe $e6

	cp d                                             ; $40e9: $ba
	ld a, h                                          ; $40ea: $7c
	add h                                            ; $40eb: $84
	ld hl, sp-$78                                    ; $40ec: $f8 $88
	rla                                              ; $40ee: $17
	ld e, $19                                        ; $40ef: $1e $19
	rla                                              ; $40f1: $17
	jr c, @+$31                                      ; $40f2: $38 $2f

	inc a                                            ; $40f4: $3c
	scf                                              ; $40f5: $37
	ccf                                              ; $40f6: $3f
	inc h                                            ; $40f7: $24
	ld a, a                                          ; $40f8: $7f
	ld e, a                                          ; $40f9: $5f
	scf                                              ; $40fa: $37
	ld b, b                                          ; $40fb: $40
	sub e                                            ; $40fc: $93
	ld hl, sp+$38                                    ; $40fd: $f8 $38
	call z, Call_01a_7efc                            ; $40ff: $cc $fc $7e
	ldh a, [c]                                       ; $4102: $f2
	cp $d2                                           ; $4103: $fe $d2
	rst $38                                          ; $4105: $ff
	add a                                            ; $4106: $87
	rst $38                                          ; $4107: $ff
	ld sp, hl                                        ; $4108: $f9
	cpl                                              ; $4109: $2f
	ld b, b                                          ; $410a: $40
	di                                               ; $410b: $f3
	rst SubAFromDE                                          ; $410c: $df
	inc bc                                           ; $410d: $03
	ld a, [hl]                                       ; $410e: $7e
	call z, $fe7f                                    ; $410f: $cc $7f $fe
	sbc e                                            ; $4112: $9b
	inc bc                                           ; $4113: $03
	ld [bc], a                                       ; $4114: $02
	ld bc, $f901                                     ; $4115: $01 $01 $f9
	ld b, [hl]                                       ; $4118: $46
	and b                                            ; $4119: $a0
	sub c                                            ; $411a: $91
	adc $fb                                          ; $411b: $ce $fb
	rst $38                                          ; $411d: $ff
	cp l                                             ; $411e: $bd
	db $ed                                           ; $411f: $ed
	ld [hl], $ff                                     ; $4120: $36 $ff
	ld h, $ff                                        ; $4122: $26 $ff
	sub [hl]                                         ; $4124: $96
	ld a, a                                          ; $4125: $7f
	ld c, c                                          ; $4126: $49
	ccf                                              ; $4127: $3f
	dec h                                            ; $4128: $25
	ld a, [bc]                                       ; $4129: $0a
	and b                                            ; $412a: $a0
	sbc d                                            ; $412b: $9a
	sub b                                            ; $412c: $90
	ld a, [de]                                       ; $412d: $1a
	rra                                              ; $412e: $1f
	add hl, bc                                       ; $412f: $09
	rrca                                             ; $4130: $0f
	ld a, e                                          ; $4131: $7b
	xor a                                            ; $4132: $af
	sbc d                                            ; $4133: $9a
	rlca                                             ; $4134: $07
	ccf                                              ; $4135: $3f
	add hl, hl                                       ; $4136: $29
	ld a, a                                          ; $4137: $7f
	ld c, a                                          ; $4138: $4f
	scf                                              ; $4139: $37
	ld h, b                                          ; $413a: $60
	rst $38                                          ; $413b: $ff
	rst SubAFromDE                                          ; $413c: $df
	rlca                                             ; $413d: $07
	adc e                                            ; $413e: $8b
	jr jr_01a_4160                                   ; $413f: $18 $1f

	daa                                              ; $4141: $27
	jr c, jr_01a_4193                                ; $4142: $38 $4f

	ld [hl], a                                       ; $4144: $77
	ld c, b                                          ; $4145: $48
	ld a, a                                          ; $4146: $7f
	sub l                                            ; $4147: $95
	rst $38                                          ; $4148: $ff
	push hl                                          ; $4149: $e5
	rst $38                                          ; $414a: $ff
	xor l                                            ; $414b: $ad
	cp d                                             ; $414c: $ba
	rra                                              ; $414d: $1f
	ld d, $0b                                        ; $414e: $16 $0b
	ld d, $2f                                        ; $4150: $16 $2f
	ld a, $7b                                        ; $4152: $3e $7b
	cp $80                                           ; $4154: $fe $80
	add hl, sp                                       ; $4156: $39
	ld h, $3d                                        ; $4157: $26 $3d
	rlca                                             ; $4159: $07
	rra                                              ; $415a: $1f
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	ld a, b                                          ; $415d: $78
	ld a, b                                          ; $415e: $78
	add h                                            ; $415f: $84

jr_01a_4160:
	db $fc                                           ; $4160: $fc
	ldh [c], a                                       ; $4161: $e2
	ld e, $f2                                        ; $4162: $1e $f2
	xor $19                                          ; $4164: $ee $19
	rst FarCall                                          ; $4166: $f7
	add hl, hl                                       ; $4167: $29
	rst $38                                          ; $4168: $ff
	dec h                                            ; $4169: $25
	rst $38                                          ; $416a: $ff
	or l                                             ; $416b: $b5
	rst SubAFromDE                                          ; $416c: $df
	ld sp, hl                                        ; $416d: $f9
	ld l, a                                          ; $416e: $6f
	cp l                                             ; $416f: $bd
	ld [hl], a                                       ; $4170: $77
	db $fd                                           ; $4171: $fd
	ld h, a                                          ; $4172: $67
	db $fd                                           ; $4173: $fd
	ld h, a                                          ; $4174: $67
	sbc c                                            ; $4175: $99
	ld sp, hl                                        ; $4176: $f9
	adc a                                            ; $4177: $8f
	pop af                                           ; $4178: $f1
	sbc a                                            ; $4179: $9f
	ldh [c], a                                       ; $417a: $e2
	cp $3b                                           ; $417b: $fe $3b
	ret nz                                           ; $417d: $c0

	ld a, [hl]                                       ; $417e: $7e
	adc d                                            ; $417f: $8a
	sbc l                                            ; $4180: $9d
	rla                                              ; $4181: $17
	dec hl                                           ; $4182: $2b
	ld [hl], e                                       ; $4183: $73
	ret nz                                           ; $4184: $c0

	sbc l                                            ; $4185: $9d
	daa                                              ; $4186: $27
	inc a                                            ; $4187: $3c
	inc sp                                           ; $4188: $33
	ret nz                                           ; $4189: $c0

	sbc e                                            ; $418a: $9b
	rrca                                             ; $418b: $0f
	db $fd                                           ; $418c: $fd
	ld [hl], a                                       ; $418d: $77
	cp l                                             ; $418e: $bd
	ld l, a                                          ; $418f: $6f
	ret nz                                           ; $4190: $c0

	sbc l                                            ; $4191: $9d
	rra                                              ; $4192: $1f

jr_01a_4193:
	ldh a, [c]                                       ; $4193: $f2
	cpl                                              ; $4194: $2f
	ret nz                                           ; $4195: $c0

	sbc h                                            ; $4196: $9c
	db $10                                           ; $4197: $10
	cpl                                              ; $4198: $2f
	ld a, [hl-]                                      ; $4199: $3a

Call_01a_419a:
	dec de                                           ; $419a: $1b
	add b                                            ; $419b: $80
	ld a, a                                          ; $419c: $7f
	ret nz                                           ; $419d: $c0

	sbc h                                            ; $419e: $9c
	rlca                                             ; $419f: $07
	db $fd                                           ; $41a0: $fd
	ld d, a                                          ; $41a1: $57
	inc de                                           ; $41a2: $13
	add b                                            ; $41a3: $80
	ld [hl], a                                       ; $41a4: $77
	ld b, b                                          ; $41a5: $40
	ld a, a                                          ; $41a6: $7f
	cp [hl]                                          ; $41a7: $be
	rra                                              ; $41a8: $1f
	ret nz                                           ; $41a9: $c0

	ld a, a                                          ; $41aa: $7f
	add d                                            ; $41ab: $82
	ld a, a                                          ; $41ac: $7f
	ld a, $9e                                        ; $41ad: $3e $9e
	ld d, a                                          ; $41af: $57
	ld [hl], a                                       ; $41b0: $77
	ret nz                                           ; $41b1: $c0

	ld a, a                                          ; $41b2: $7f
	add b                                            ; $41b3: $80
	sub h                                            ; $41b4: $94
	ld [bc], a                                       ; $41b5: $02
	rlca                                             ; $41b6: $07
	dec bc                                           ; $41b7: $0b
	rrca                                             ; $41b8: $0f
	rrca                                             ; $41b9: $0f
	ld a, [bc]                                       ; $41ba: $0a
	rrca                                             ; $41bb: $0f
	dec bc                                           ; $41bc: $0b
	ld b, $07                                        ; $41bd: $06 $07
	ld [bc], a                                       ; $41bf: $02
	ld a, e                                          ; $41c0: $7b
	cp $7f                                           ; $41c1: $fe $7f
	ld a, [$03de]                                    ; $41c3: $fa $de $03
	sbc [hl]                                         ; $41c6: $9e
	ld [bc], a                                       ; $41c7: $02
	halt                                             ; $41c8: $76
	ld a, h                                          ; $41c9: $7c
	sbc e                                            ; $41ca: $9b
	ld [$3f0f], sp                                   ; $41cb: $08 $0f $3f
	ccf                                              ; $41ce: $3f
	db $fd                                           ; $41cf: $fd
	sub h                                            ; $41d0: $94
	inc l                                            ; $41d1: $2c
	db $fc                                           ; $41d2: $fc
	call nz, Call_01a_5c7c                           ; $41d3: $c4 $7c $5c
	or b                                             ; $41d6: $b0
	db $fc                                           ; $41d7: $fc
	db $f4                                           ; $41d8: $f4
	cp b                                             ; $41d9: $b8
	ld hl, sp-$58                                    ; $41da: $f8 $a8
	ld a, e                                          ; $41dc: $7b
	cp $8f                                           ; $41dd: $fe $8f
	sbc b                                            ; $41df: $98
	ld hl, sp-$10                                    ; $41e0: $f8 $f0
	ldh a, [$e0]                                     ; $41e2: $f0 $e0
	and b                                            ; $41e4: $a0
	ldh [$e0], a                                     ; $41e5: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $41e7: $f0 $90
	sbc b                                            ; $41e9: $98
	ld hl, sp-$78                                    ; $41ea: $f8 $88
	ld hl, sp-$04                                    ; $41ec: $f8 $fc
	db $fc                                           ; $41ee: $fc
	ld c, $c0                                        ; $41ef: $0e $c0
	sub e                                            ; $41f1: $93
	ld l, $3d                                        ; $41f2: $2e $3d
	rra                                              ; $41f4: $1f
	inc de                                           ; $41f5: $13
	rrca                                             ; $41f6: $0f
	add hl, bc                                       ; $41f7: $09
	rra                                              ; $41f8: $1f
	add hl, de                                       ; $41f9: $19
	rra                                              ; $41fa: $1f
	ld [de], a                                       ; $41fb: $12
	rrca                                             ; $41fc: $0f
	rrca                                             ; $41fd: $0f
	daa                                              ; $41fe: $27
	and b                                            ; $41ff: $a0
	ld l, a                                          ; $4200: $6f
	ret nz                                           ; $4201: $c0

	adc h                                            ; $4202: $8c
	jr nz, jr_01a_4244                               ; $4203: $20 $3f

	ld b, d                                          ; $4205: $42
	ld a, a                                          ; $4206: $7f
	and d                                            ; $4207: $a2
	rst $38                                          ; $4208: $ff
	ld c, [hl]                                       ; $4209: $4e
	ld a, a                                          ; $420a: $7f
	ld l, $3d                                        ; $420b: $2e $3d
	ld sp, $0d3e                                     ; $420d: $31 $3e $0d
	ld e, $0e                                        ; $4210: $1e $0e
	rla                                              ; $4212: $17
	dec l                                            ; $4213: $2d
	ld a, $3d                                        ; $4214: $3e $3d
	ld a, e                                          ; $4216: $7b
	ret nz                                           ; $4217: $c0

	sbc h                                            ; $4218: $9c
	ld [hl], $2d                                     ; $4219: $36 $2d
	rla                                              ; $421b: $17
	ld l, e                                          ; $421c: $6b
	ld b, b                                          ; $421d: $40
	sbc d                                            ; $421e: $9a
	ld [bc], a                                       ; $421f: $02
	cp $12                                           ; $4220: $fe $12
	cp $09                                           ; $4222: $fe $09
	ld a, c                                          ; $4224: $79
	add [hl]                                         ; $4225: $86
	adc [hl]                                         ; $4226: $8e
	push af                                          ; $4227: $f5
	rst SubAFromDE                                          ; $4228: $df
	adc c                                            ; $4229: $89
	rst $38                                          ; $422a: $ff
	ld [hl], c                                       ; $422b: $71
	rst AddAOntoHL                                          ; $422c: $ef
	ld [hl], l                                       ; $422d: $75
	cp a                                             ; $422e: $bf
	ld [hl], l                                       ; $422f: $75
	rst AddAOntoHL                                          ; $4230: $ef
	db $ed                                           ; $4231: $ed
	ld [hl], a                                       ; $4232: $77
	ld sp, hl                                        ; $4233: $f9
	adc a                                            ; $4234: $8f
	ld a, [$e496]                                    ; $4235: $fa $96 $e4
	ld a, e                                          ; $4238: $7b
	ld a, [hl]                                       ; $4239: $7e
	ld b, e                                          ; $423a: $43
	ret nz                                           ; $423b: $c0

	sbc c                                            ; $423c: $99
	ld [de], a                                       ; $423d: $12
	inc c                                            ; $423e: $0c
	rra                                              ; $423f: $1f
	dec l                                            ; $4240: $2d
	ld a, $31                                        ; $4241: $3e $31
	rra                                              ; $4243: $1f

jr_01a_4244:
	ret nz                                           ; $4244: $c0

	sbc c                                            ; $4245: $99
	adc a                                            ; $4246: $8f
	ld [hl], l                                       ; $4247: $75
	rst $38                                          ; $4248: $ff
	ld [hl], l                                       ; $4249: $75
	rst AddAOntoHL                                          ; $424a: $ef
	adc l                                            ; $424b: $8d
	rra                                              ; $424c: $1f
	ret nz                                           ; $424d: $c0

	sbc [hl]                                         ; $424e: $9e
	ld d, $7b                                        ; $424f: $16 $7b
	ret nz                                           ; $4251: $c0

	sbc [hl]                                         ; $4252: $9e
	ld a, [hl-]                                      ; $4253: $3a
	dec de                                           ; $4254: $1b
	ret nz                                           ; $4255: $c0

	ld a, a                                          ; $4256: $7f
	add b                                            ; $4257: $80
	ld a, a                                          ; $4258: $7f
	ret nz                                           ; $4259: $c0

	sbc [hl]                                         ; $425a: $9e
	rst SubAFromDE                                          ; $425b: $df
	ld l, a                                          ; $425c: $6f
	ret nz                                           ; $425d: $c0

	sbc c                                            ; $425e: $99
	db $f4                                           ; $425f: $f4
	db $fc                                           ; $4260: $fc
	ld a, [bc]                                       ; $4261: $0a
	rrca                                             ; $4262: $0f
	rra                                              ; $4263: $1f

jr_01a_4264:
	inc de                                           ; $4264: $13
	ld a, e                                          ; $4265: $7b
	jr nz, jr_01a_428a                               ; $4266: $20 $22

	ret nz                                           ; $4268: $c0

	sub b                                            ; $4269: $90
	jr z, jr_01a_4264                                ; $426a: $28 $f8

	call nz, $5f7c                                   ; $426c: $c4 $7c $5f
	or a                                             ; $426f: $b7
	rst $38                                          ; $4270: $ff
	db $eb                                           ; $4271: $eb

jr_01a_4272:
	cp a                                             ; $4272: $bf
	db $ed                                           ; $4273: $ed
	cp a                                             ; $4274: $bf
	jp hl                                            ; $4275: $e9


	cp a                                             ; $4276: $bf
	rst $38                                          ; $4277: $ff
	xor b                                            ; $4278: $a8
	ld a, [hl-]                                      ; $4279: $3a
	ret nz                                           ; $427a: $c0

	ld h, a                                          ; $427b: $67
	ld a, [hl]                                       ; $427c: $7e
	sub h                                            ; $427d: $94
	ld b, b                                          ; $427e: $40
	ld a, a                                          ; $427f: $7f
	and c                                            ; $4280: $a1
	rst $38                                          ; $4281: $ff
	ld b, c                                          ; $4282: $41
	ld a, a                                          ; $4283: $7f
	ld hl, $483f                                     ; $4284: $21 $3f $48
	ld a, a                                          ; $4287: $7f
	ld d, d                                          ; $4288: $52
	ld a, b                                          ; $4289: $78

jr_01a_428a:
	ld a, [hl]                                       ; $428a: $7e
	ld a, l                                          ; $428b: $7d
	inc d                                            ; $428c: $14
	sbc c                                            ; $428d: $99
	daa                                              ; $428e: $27
	ccf                                              ; $428f: $3f
	ld l, a                                          ; $4290: $6f
	ld a, h                                          ; $4291: $7c
	cp a                                             ; $4292: $bf
	ld sp, hl                                        ; $4293: $f9
	db $fd                                           ; $4294: $fd
	ld l, a                                          ; $4295: $6f
	ld a, [hl]                                       ; $4296: $7e
	sbc b                                            ; $4297: $98
	add d                                            ; $4298: $82
	cp $01                                           ; $4299: $fe $01
	rst $38                                          ; $429b: $ff
	add hl, bc                                       ; $429c: $09
	rst $38                                          ; $429d: $ff
	dec b                                            ; $429e: $05
	ld a, b                                          ; $429f: $78
	cp e                                             ; $42a0: $bb
	adc l                                            ; $42a1: $8d
	ld de, $89ff                                     ; $42a2: $11 $ff $89
	rst $38                                          ; $42a5: $ff
	call $edfb                                       ; $42a6: $cd $fb $ed
	cp e                                             ; $42a9: $bb
	ld a, [$fa5e]                                    ; $42aa: $fa $5e $fa
	ld d, [hl]                                       ; $42ad: $56
	rra                                              ; $42ae: $1f
	db $10                                           ; $42af: $10
	ccf                                              ; $42b0: $3f
	daa                                              ; $42b1: $27
	rra                                              ; $42b2: $1f
	ld e, $77                                        ; $42b3: $1e $77
	adc e                                            ; $42b5: $8b
	ld a, l                                          ; $42b6: $7d
	inc e                                            ; $42b7: $1c
	ld a, l                                          ; $42b8: $7d
	ld d, $df                                        ; $42b9: $16 $df
	inc bc                                           ; $42bb: $03
	rst SubAFromDE                                          ; $42bc: $df
	ld bc, $f57f                                     ; $42bd: $01 $7f $f5
	rst SubAFromDE                                          ; $42c0: $df
	rlca                                             ; $42c1: $07
	sbc c                                            ; $42c2: $99
	rrca                                             ; $42c3: $0f
	ld [$1f13], sp                                   ; $42c4: $08 $13 $1f
	ld hl, $753f                                     ; $42c7: $21 $3f $75
	ld e, $9b                                        ; $42ca: $1e $9b
	add sp, -$08                                     ; $42cc: $e8 $f8
	call nz, Call_01a_67fc                           ; $42ce: $c4 $fc $67
	add b                                            ; $42d1: $80
	adc l                                            ; $42d2: $8d
	ld a, a                                          ; $42d3: $7f
	rst $38                                          ; $42d4: $ff
	ret z                                            ; $42d5: $c8

	ld hl, sp-$10                                    ; $42d6: $f8 $f0
	ld [hl], b                                       ; $42d8: $70
	ld hl, sp+$48                                    ; $42d9: $f8 $48
	cp b                                             ; $42db: $b8
	cp b                                             ; $42dc: $b8
	cp h                                             ; $42dd: $bc
	and h                                            ; $42de: $a4
	ld b, h                                          ; $42df: $44
	ld a, h                                          ; $42e0: $7c
	cp $fe                                           ; $42e1: $fe $fe
	add b                                            ; $42e3: $80
	add b                                            ; $42e4: $80
	ei                                               ; $42e5: $fb
	rst SubAFromDE                                          ; $42e6: $df
	jr jr_01a_4272                                   ; $42e7: $18 $89

	ld a, $36                                        ; $42e9: $3e $36
	ld a, a                                          ; $42eb: $7f
	ld b, e                                          ; $42ec: $43
	rst $38                                          ; $42ed: $ff
	add c                                            ; $42ee: $81
	cp $82                                           ; $42ef: $fe $82
	ld a, a                                          ; $42f1: $7f
	ld h, l                                          ; $42f2: $65
	ld a, a                                          ; $42f3: $7f
	ld b, c                                          ; $42f4: $41
	ld a, a                                          ; $42f5: $7f
	ld b, c                                          ; $42f6: $41
	ld a, $32                                        ; $42f7: $3e $32
	ld c, $0a                                        ; $42f9: $0e $0a
	rlca                                             ; $42fb: $07
	dec b                                            ; $42fc: $05
	ld [bc], a                                       ; $42fd: $02
	ld [bc], a                                       ; $42fe: $02
	ld l, h                                          ; $42ff: $6c
	ld [hl], b                                       ; $4300: $70
	sbc h                                            ; $4301: $9c
	inc c                                            ; $4302: $0c
	rrca                                             ; $4303: $0f
	db $10                                           ; $4304: $10
	ld a, e                                          ; $4305: $7b
	ld h, d                                          ; $4306: $62
	ld a, a                                          ; $4307: $7f
	jp hl                                            ; $4308: $e9


	add b                                            ; $4309: $80
	ld b, e                                          ; $430a: $43
	ld a, [hl]                                       ; $430b: $7e
	add e                                            ; $430c: $83
	cp $87                                           ; $430d: $fe $87
	db $fd                                           ; $430f: $fd
	adc a                                            ; $4310: $8f
	ld a, [$fd87]                                    ; $4311: $fa $87 $fd

jr_01a_4314:
	ld b, e                                          ; $4314: $43
	ld a, [hl]                                       ; $4315: $7e
	ld b, c                                          ; $4316: $41
	ld a, a                                          ; $4317: $7f
	jr nz, jr_01a_4359                               ; $4318: $20 $3f

	jr jr_01a_433b                                   ; $431a: $18 $1f

	ld b, $07                                        ; $431c: $06 $07
	ld bc, $c001                                     ; $431e: $01 $01 $c0
	ret nz                                           ; $4321: $c0

	jr nc, jr_01a_4314                               ; $4322: $30 $f0

	ld [$04f8], sp                                   ; $4324: $08 $f8 $04
	db $fc                                           ; $4327: $fc
	ld b, h                                          ; $4328: $44
	ld a, l                                          ; $4329: $7d
	sbc h                                            ; $432a: $9c
	sub c                                            ; $432b: $91
	cp [hl]                                          ; $432c: $be
	ldh [c], a                                       ; $432d: $e2
	cp [hl]                                          ; $432e: $be
	pop hl                                           ; $432f: $e1
	ccf                                              ; $4330: $3f
	pop hl                                           ; $4331: $e1
	rst $38                                          ; $4332: $ff
	pop hl                                           ; $4333: $e1
	ccf                                              ; $4334: $3f
	ldh [c], a                                       ; $4335: $e2
	ld a, $c2                                        ; $4336: $3e $c2
	cp $04                                           ; $4338: $fe $04
	ld a, e                                          ; $433a: $7b

jr_01a_433b:
	ld c, [hl]                                       ; $433b: $4e
	sbc e                                            ; $433c: $9b
	add hl, de                                       ; $433d: $19
	rst $38                                          ; $433e: $ff
	rst SubAFromBC                                          ; $433f: $e7
	rst SubAFromBC                                          ; $4340: $e7
	ld h, a                                          ; $4341: $67
	cp [hl]                                          ; $4342: $be
	ld a, a                                          ; $4343: $7f
	ld [hl], d                                       ; $4344: $72
	ld a, a                                          ; $4345: $7f
	jr nz, jr_01a_43c7                               ; $4346: $20 $7f

	jp z, Jump_01a_7f7c                              ; $4348: $ca $7c $7f

	sbc [hl]                                         ; $434b: $9e
	add c                                            ; $434c: $81
	ld a, e                                          ; $434d: $7b
	cp $7f                                           ; $434e: $fe $7f
	ret nz                                           ; $4350: $c0

	ld a, a                                          ; $4351: $7f
	cp $77                                           ; $4352: $fe $77
	ldh a, [hDisp1_OBP1]                                     ; $4354: $f0 $94
	sbc h                                            ; $4356: $9c
	rst $38                                          ; $4357: $ff
	db $e3                                           ; $4358: $e3

jr_01a_4359:
	db $e3                                           ; $4359: $e3
	nop                                              ; $435a: $00
	nop                                              ; $435b: $00
	add b                                            ; $435c: $80
	add b                                            ; $435d: $80
	ld h, b                                          ; $435e: $60
	ldh [rAUD1SWEEP], a                              ; $435f: $e0 $10
	ld [hl], e                                       ; $4361: $73
	cp h                                             ; $4362: $bc
	ld [hl], a                                       ; $4363: $77
	call z, $fe77                                    ; $4364: $cc $77 $fe
	ld a, a                                          ; $4367: $7f
	ld [de], a                                       ; $4368: $12
	ld a, a                                          ; $4369: $7f
	cp $7f                                           ; $436a: $fe $7f
	ldh a, [$7f]                                     ; $436c: $f0 $7f
	db $ec                                           ; $436e: $ec
	ld a, a                                          ; $436f: $7f
	add sp, $67                                      ; $4370: $e8 $67
	ld e, [hl]                                       ; $4372: $5e
	rst SubAFromBC                                          ; $4373: $e7
	ld [hl], e                                       ; $4374: $73
	inc bc                                           ; $4375: $03
	rst $38                                          ; $4376: $ff
	rst SubAFromDE                                          ; $4377: $df
	dec a                                            ; $4378: $3d
	add b                                            ; $4379: $80
	inc de                                           ; $437a: $13
	rra                                              ; $437b: $1f
	ld sp, hl                                        ; $437c: $f9
	rst $38                                          ; $437d: $ff
	ld b, a                                          ; $437e: $47
	ld a, a                                          ; $437f: $7f
	ld [hl-], a                                      ; $4380: $32
	ccf                                              ; $4381: $3f
	dec h                                            ; $4382: $25
	ccf                                              ; $4383: $3f
	ld b, h                                          ; $4384: $44
	ld a, a                                          ; $4385: $7f
	ld c, h                                          ; $4386: $4c
	ld a, a                                          ; $4387: $7f
	ld c, [hl]                                       ; $4388: $4e
	ld a, e                                          ; $4389: $7b
	ccf                                              ; $438a: $3f
	dec a                                            ; $438b: $3d
	dec l                                            ; $438c: $2d
	ld [hl], $3f                                     ; $438d: $36 $3f
	ld h, $1f                                        ; $438f: $26 $1f
	ld d, $0f                                        ; $4391: $16 $0f
	add hl, bc                                       ; $4393: $09
	rlca                                             ; $4394: $07
	inc b                                            ; $4395: $04
	nop                                              ; $4396: $00
	nop                                              ; $4397: $00
	ret nz                                           ; $4398: $c0

	add b                                            ; $4399: $80
	ret nz                                           ; $439a: $c0

	inc [hl]                                         ; $439b: $34
	db $f4                                           ; $439c: $f4
	adc [hl]                                         ; $439d: $8e
	cp $fc                                           ; $439e: $fe $fc
	db $fc                                           ; $43a0: $fc
	adc d                                            ; $43a1: $8a
	cp $26                                           ; $43a2: $fe $26
	cp $96                                           ; $43a4: $fe $96
	cp $d5                                           ; $43a6: $fe $d5
	rst $38                                          ; $43a8: $ff
	db $fd                                           ; $43a9: $fd
	cp a                                             ; $43aa: $bf
	ld a, [$de6e]                                    ; $43ab: $fa $6e $de
	ld [hl], d                                       ; $43ae: $72
	cp $62                                           ; $43af: $fe $62
	db $fc                                           ; $43b1: $fc
	ld l, h                                          ; $43b2: $6c
	ld hl, sp-$78                                    ; $43b3: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $43b5: $f0 $10
	ld b, $07                                        ; $43b7: $06 $07
	adc h                                            ; $43b9: $8c
	ld [$110f], sp                                   ; $43ba: $08 $0f $11
	rra                                              ; $43bd: $1f
	inc a                                            ; $43be: $3c
	dec hl                                           ; $43bf: $2b
	ccf                                              ; $43c0: $3f
	dec l                                            ; $43c1: $2d
	ld a, a                                          ; $43c2: $7f
	ld e, e                                          ; $43c3: $5b
	rst $38                                          ; $43c4: $ff
	add b                                            ; $43c5: $80
	rst $38                                          ; $43c6: $ff

jr_01a_43c7:
	rst $38                                          ; $43c7: $ff
	ld a, a                                          ; $43c8: $7f
	ld h, b                                          ; $43c9: $60
	ld a, a                                          ; $43ca: $7f
	ld a, a                                          ; $43cb: $7f
	ld l, b                                          ; $43cc: $68
	sbc $6e                                          ; $43cd: $de $6e
	sbc e                                            ; $43cf: $9b
	ld [hl], c                                       ; $43d0: $71
	ld a, a                                          ; $43d1: $7f
	rst $38                                          ; $43d2: $ff
	rst $38                                          ; $43d3: $ff
	db $fd                                           ; $43d4: $fd
	adc d                                            ; $43d5: $8a
	ld [hl], b                                       ; $43d6: $70
	ldh a, [$08]                                     ; $43d7: $f0 $08
	ld hl, sp+$04                                    ; $43d9: $f8 $04
	db $fc                                           ; $43db: $fc
	ld a, h                                          ; $43dc: $7c
	sub h                                            ; $43dd: $94
	rst $38                                          ; $43de: $ff
	ld [hl], a                                       ; $43df: $77
	rst $38                                          ; $43e0: $ff
	sbc l                                            ; $43e1: $9d
	rst $38                                          ; $43e2: $ff
	inc bc                                           ; $43e3: $03
	rst $38                                          ; $43e4: $ff
	db $fd                                           ; $43e5: $fd
	cp $06                                           ; $43e6: $fe $06
	cp $fe                                           ; $43e8: $fe $fe
	sub [hl]                                         ; $43ea: $96
	sbc $f6                                          ; $43eb: $de $f6
	ld a, a                                          ; $43ed: $7f
	xor [hl]                                         ; $43ee: $ae
	ld l, a                                          ; $43ef: $6f
	ldh [rIE], a                                     ; $43f0: $e0 $ff
	rst SubAFromDE                                          ; $43f2: $df
	inc bc                                           ; $43f3: $03
	sub h                                            ; $43f4: $94
	ld a, $3f                                        ; $43f5: $3e $3f
	ld de, $661f                                     ; $43f7: $11 $1f $66
	ld a, a                                          ; $43fa: $7f
	sbc d                                            ; $43fb: $9a
	rst $38                                          ; $43fc: $ff
	ld [hl], e                                       ; $43fd: $73
	ld a, a                                          ; $43fe: $7f
	inc h                                            ; $43ff: $24
	ld a, e                                          ; $4400: $7b
	ld a, [hl]                                       ; $4401: $7e
	ld a, a                                          ; $4402: $7f
	cp $9b                                           ; $4403: $fe $9b
	ld c, [hl]                                       ; $4405: $4e
	ld a, a                                          ; $4406: $7f
	ccf                                              ; $4407: $3f
	scf                                              ; $4408: $37
	ld [hl], e                                       ; $4409: $73
	ld a, [hl]                                       ; $440a: $7e
	sub c                                            ; $440b: $91
	db $10                                           ; $440c: $10
	rrca                                             ; $440d: $0f
	add hl, bc                                       ; $440e: $09
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	add sp, -$18                                     ; $4411: $e8 $e8
	inc e                                            ; $4413: $1c
	db $fc                                           ; $4414: $fc
	adc b                                            ; $4415: $88
	ld hl, sp+$74                                    ; $4416: $f8 $74
	db $fc                                           ; $4418: $fc
	sbc d                                            ; $4419: $9a
	ld a, e                                          ; $441a: $7b
	push bc                                          ; $441b: $c5
	adc l                                            ; $441c: $8d
	and l                                            ; $441d: $a5
	rst $38                                          ; $441e: $ff
	sub l                                            ; $441f: $95
	rst $38                                          ; $4420: $ff
	push de                                          ; $4421: $d5
	rst $38                                          ; $4422: $ff
	ld a, [$feae]                                    ; $4423: $fa $ae $fe
	ld a, d                                          ; $4426: $7a
	sbc $62                                          ; $4427: $de $62
	db $fc                                           ; $4429: $fc
	ld h, h                                          ; $442a: $64
	ld hl, sp+$08                                    ; $442b: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $442d: $f0 $90
	ld h, a                                          ; $442f: $67
	cp h                                             ; $4430: $bc
	sbc [hl]                                         ; $4431: $9e
	inc a                                            ; $4432: $3c
	ld [hl], e                                       ; $4433: $73
	cp h                                             ; $4434: $bc
	sbc b                                            ; $4435: $98
	adc d                                            ; $4436: $8a
	rst $38                                          ; $4437: $ff
	ld d, e                                          ; $4438: $53
	ld a, a                                          ; $4439: $7f
	ld d, h                                          ; $443a: $54
	ld a, a                                          ; $443b: $7f
	ld h, h                                          ; $443c: $64
	ld a, e                                          ; $443d: $7b
	cp h                                             ; $443e: $bc
	sbc c                                            ; $443f: $99
	ld b, [hl]                                       ; $4440: $46
	ld a, a                                          ; $4441: $7f
	ld h, $3f                                        ; $4442: $26 $3f
	cpl                                              ; $4444: $2f
	add hl, sp                                       ; $4445: $39
	ld [hl], a                                       ; $4446: $77
	ret nz                                           ; $4447: $c0

	db $fd                                           ; $4448: $fd
	rst SubAFromDE                                          ; $4449: $df
	ldh a, [$7f]                                     ; $444a: $f0 $7f
	ld a, d                                          ; $444c: $7a
	sub a                                            ; $444d: $97
	adc h                                            ; $444e: $8c
	db $fc                                           ; $444f: $fc
	ld [hl], d                                       ; $4450: $72
	cp $9a                                           ; $4451: $fe $9a
	cp $05                                           ; $4453: $fe $05
	rst $38                                          ; $4455: $ff
	ld l, a                                          ; $4456: $6f
	cp h                                             ; $4457: $bc
	adc e                                            ; $4458: $8b
	jp z, $e6fe                                      ; $4459: $ca $fe $e6

	cp d                                             ; $445c: $ba
	ld a, h                                          ; $445d: $7c
	add h                                            ; $445e: $84
	ld hl, sp-$78                                    ; $445f: $f8 $88
	rla                                              ; $4461: $17
	ld e, $11                                        ; $4462: $1e $11
	rra                                              ; $4464: $1f
	jr nz, jr_01a_44a6                               ; $4465: $20 $3f

	inc [hl]                                         ; $4467: $34
	ccf                                              ; $4468: $3f
	ccf                                              ; $4469: $3f
	inc h                                            ; $446a: $24
	ld a, a                                          ; $446b: $7f
	ld e, a                                          ; $446c: $5f
	scf                                              ; $446d: $37
	ld b, b                                          ; $446e: $40
	sub e                                            ; $446f: $93
	ld hl, sp+$38                                    ; $4470: $f8 $38
	call nz, Call_01a_62fc                           ; $4472: $c4 $fc $62
	cp $f2                                           ; $4475: $fe $f2
	sbc $f7                                          ; $4477: $de $f7
	sbc a                                            ; $4479: $9f
	rst $38                                          ; $447a: $ff
	ld sp, hl                                        ; $447b: $f9
	cpl                                              ; $447c: $2f
	ld b, b                                          ; $447d: $40
	di                                               ; $447e: $f3
	rst SubAFromDE                                          ; $447f: $df
	inc bc                                           ; $4480: $03
	ld a, [hl]                                       ; $4481: $7e
	call z, $fe7f                                    ; $4482: $cc $7f $fe
	sbc e                                            ; $4485: $9b
	inc bc                                           ; $4486: $03
	ld [bc], a                                       ; $4487: $02
	ld bc, $f901                                     ; $4488: $01 $01 $f9
	ld b, [hl]                                       ; $448b: $46
	and b                                            ; $448c: $a0
	sub c                                            ; $448d: $91
	adc $fb                                          ; $448e: $ce $fb
	rst $38                                          ; $4490: $ff
	cp l                                             ; $4491: $bd
	db $ed                                           ; $4492: $ed
	ld [hl], $ff                                     ; $4493: $36 $ff
	ld h, [hl]                                       ; $4495: $66
	sbc a                                            ; $4496: $9f
	or $4f                                           ; $4497: $f6 $4f
	ld a, c                                          ; $4499: $79
	daa                                              ; $449a: $27
	dec a                                            ; $449b: $3d
	ld a, [bc]                                       ; $449c: $0a
	and b                                            ; $449d: $a0
	sbc c                                            ; $449e: $99
	sub b                                            ; $449f: $90
	ld [de], a                                       ; $44a0: $12
	rra                                              ; $44a1: $1f
	ld [$050f], sp                                   ; $44a2: $08 $0f $05
	ld a, e                                          ; $44a5: $7b

jr_01a_44a6:
	xor l                                            ; $44a6: $ad
	sbc e                                            ; $44a7: $9b
	ccf                                              ; $44a8: $3f
	add hl, hl                                       ; $44a9: $29
	ld a, a                                          ; $44aa: $7f
	ld c, a                                          ; $44ab: $4f
	scf                                              ; $44ac: $37
	ld h, b                                          ; $44ad: $60
	rst $38                                          ; $44ae: $ff
	rst SubAFromDE                                          ; $44af: $df
	rlca                                             ; $44b0: $07
	adc e                                            ; $44b1: $8b
	jr jr_01a_44d3                                   ; $44b2: $18 $1f

	daa                                              ; $44b4: $27
	jr c, jr_01a_4506                                ; $44b5: $38 $4f

	ld [hl], a                                       ; $44b7: $77
	ld c, b                                          ; $44b8: $48
	ld a, a                                          ; $44b9: $7f
	sub l                                            ; $44ba: $95
	rst $38                                          ; $44bb: $ff
	push hl                                          ; $44bc: $e5
	rst $38                                          ; $44bd: $ff
	xor l                                            ; $44be: $ad
	cp d                                             ; $44bf: $ba
	rra                                              ; $44c0: $1f
	ld d, $0b                                        ; $44c1: $16 $0b
	ld d, $2f                                        ; $44c3: $16 $2f
	ld a, $7b                                        ; $44c5: $3e $7b
	cp $80                                           ; $44c7: $fe $80
	add hl, sp                                       ; $44c9: $39
	ld h, $3d                                        ; $44ca: $26 $3d
	rlca                                             ; $44cc: $07
	rra                                              ; $44cd: $1f
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	ld a, b                                          ; $44d0: $78
	ld a, b                                          ; $44d1: $78
	add h                                            ; $44d2: $84

jr_01a_44d3:
	db $fc                                           ; $44d3: $fc
	ldh [c], a                                       ; $44d4: $e2
	ld e, $f2                                        ; $44d5: $1e $f2
	xor $19                                          ; $44d7: $ee $19
	rst FarCall                                          ; $44d9: $f7
	add hl, hl                                       ; $44da: $29
	rst $38                                          ; $44db: $ff
	dec h                                            ; $44dc: $25
	rst $38                                          ; $44dd: $ff
	or l                                             ; $44de: $b5
	rst SubAFromDE                                          ; $44df: $df
	ld sp, hl                                        ; $44e0: $f9
	ld l, a                                          ; $44e1: $6f
	cp l                                             ; $44e2: $bd
	ld [hl], a                                       ; $44e3: $77
	db $fd                                           ; $44e4: $fd
	ld h, a                                          ; $44e5: $67
	db $fd                                           ; $44e6: $fd
	ld h, a                                          ; $44e7: $67
	sbc c                                            ; $44e8: $99
	ld sp, hl                                        ; $44e9: $f9
	adc a                                            ; $44ea: $8f
	pop af                                           ; $44eb: $f1
	sbc a                                            ; $44ec: $9f
	ldh [c], a                                       ; $44ed: $e2
	cp $3b                                           ; $44ee: $fe $3b
	ret nz                                           ; $44f0: $c0

	ld a, [hl]                                       ; $44f1: $7e
	adc d                                            ; $44f2: $8a
	sbc l                                            ; $44f3: $9d
	rla                                              ; $44f4: $17
	dec hl                                           ; $44f5: $2b
	ld [hl], e                                       ; $44f6: $73
	ret nz                                           ; $44f7: $c0

	sbc l                                            ; $44f8: $9d
	daa                                              ; $44f9: $27
	inc a                                            ; $44fa: $3c
	inc sp                                           ; $44fb: $33
	ret nz                                           ; $44fc: $c0

	sbc e                                            ; $44fd: $9b
	rrca                                             ; $44fe: $0f
	db $fd                                           ; $44ff: $fd
	ld [hl], a                                       ; $4500: $77
	cp l                                             ; $4501: $bd
	ld l, a                                          ; $4502: $6f
	ret nz                                           ; $4503: $c0

	sbc l                                            ; $4504: $9d
	rra                                              ; $4505: $1f

jr_01a_4506:
	ldh a, [c]                                       ; $4506: $f2
	cpl                                              ; $4507: $2f
	ret nz                                           ; $4508: $c0

	sbc h                                            ; $4509: $9c
	db $10                                           ; $450a: $10
	cpl                                              ; $450b: $2f
	ld a, [hl-]                                      ; $450c: $3a
	dec de                                           ; $450d: $1b
	add b                                            ; $450e: $80
	ld a, a                                          ; $450f: $7f
	ret nz                                           ; $4510: $c0

	sbc h                                            ; $4511: $9c
	rlca                                             ; $4512: $07
	db $fd                                           ; $4513: $fd
	ld d, a                                          ; $4514: $57
	inc de                                           ; $4515: $13
	add b                                            ; $4516: $80
	ld [hl], a                                       ; $4517: $77
	ld b, b                                          ; $4518: $40
	ld a, a                                          ; $4519: $7f
	cp [hl]                                          ; $451a: $be
	rra                                              ; $451b: $1f
	ret nz                                           ; $451c: $c0

	ld a, a                                          ; $451d: $7f
	add d                                            ; $451e: $82
	ld a, a                                          ; $451f: $7f
	ld a, $9e                                        ; $4520: $3e $9e
	ld d, a                                          ; $4522: $57
	ld [hl], a                                       ; $4523: $77
	ret nz                                           ; $4524: $c0

	ld a, a                                          ; $4525: $7f
	add b                                            ; $4526: $80
	sub h                                            ; $4527: $94
	ld [bc], a                                       ; $4528: $02
	rlca                                             ; $4529: $07
	dec bc                                           ; $452a: $0b
	rrca                                             ; $452b: $0f
	dec bc                                           ; $452c: $0b
	ld c, $0b                                        ; $452d: $0e $0b
	rrca                                             ; $452f: $0f
	ld b, $07                                        ; $4530: $06 $07
	ld [bc], a                                       ; $4532: $02
	ld a, e                                          ; $4533: $7b
	cp $7f                                           ; $4534: $fe $7f
	ld a, [$03de]                                    ; $4536: $fa $de $03
	sbc [hl]                                         ; $4539: $9e
	ld [bc], a                                       ; $453a: $02
	halt                                             ; $453b: $76
	ld a, h                                          ; $453c: $7c
	ld a, [hl]                                       ; $453d: $7e
	jp z, $3fdf                                      ; $453e: $ca $df $3f

	db $fd                                           ; $4541: $fd
	sub h                                            ; $4542: $94
	inc l                                            ; $4543: $2c
	db $fc                                           ; $4544: $fc
	call nz, Call_01a_507c                           ; $4545: $c4 $7c $50
	cp h                                             ; $4548: $bc
	db $f4                                           ; $4549: $f4
	db $fc                                           ; $454a: $fc
	cp b                                             ; $454b: $b8
	ld hl, sp-$58                                    ; $454c: $f8 $a8
	ld a, e                                          ; $454e: $7b
	cp $8f                                           ; $454f: $fe $8f
	sbc b                                            ; $4551: $98
	ld hl, sp-$10                                    ; $4552: $f8 $f0
	ldh a, [$e0]                                     ; $4554: $f0 $e0
	and b                                            ; $4556: $a0
	ldh [$e0], a                                     ; $4557: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $4559: $f0 $90
	sbc b                                            ; $455b: $98
	ld hl, sp-$78                                    ; $455c: $f8 $88
	ld hl, sp-$04                                    ; $455e: $f8 $fc
	db $fc                                           ; $4560: $fc
	ld c, $c0                                        ; $4561: $0e $c0
	sub h                                            ; $4563: $94
	ld l, $3d                                        ; $4564: $2e $3d
	rra                                              ; $4566: $1f
	inc de                                           ; $4567: $13
	rrca                                             ; $4568: $0f
	add hl, bc                                       ; $4569: $09
	rla                                              ; $456a: $17
	add hl, de                                       ; $456b: $19
	inc de                                           ; $456c: $13
	ld e, $0f                                        ; $456d: $1e $0f
	inc hl                                           ; $456f: $23
	and b                                            ; $4570: $a0
	ld l, a                                          ; $4571: $6f
	ret nz                                           ; $4572: $c0

	ld a, l                                          ; $4573: $7d
	cp [hl]                                          ; $4574: $be
	adc [hl]                                         ; $4575: $8e
	ld b, d                                          ; $4576: $42
	ld a, a                                          ; $4577: $7f
	and d                                            ; $4578: $a2
	rst $38                                          ; $4579: $ff
	ld c, [hl]                                       ; $457a: $4e
	ld a, a                                          ; $457b: $7f
	ld l, $3d                                        ; $457c: $2e $3d
	ld sp, $0d3e                                     ; $457e: $31 $3e $0d
	ld e, $0e                                        ; $4581: $1e $0e
	rla                                              ; $4583: $17
	dec l                                            ; $4584: $2d
	ld a, $3d                                        ; $4585: $3e $3d
	ld a, e                                          ; $4587: $7b
	ret nz                                           ; $4588: $c0

	sbc h                                            ; $4589: $9c
	ld [hl], $2d                                     ; $458a: $36 $2d
	rla                                              ; $458c: $17
	ld l, e                                          ; $458d: $6b
	ld b, b                                          ; $458e: $40
	sbc d                                            ; $458f: $9a
	ld [bc], a                                       ; $4590: $02
	cp $12                                           ; $4591: $fe $12
	cp $09                                           ; $4593: $fe $09
	ld a, c                                          ; $4595: $79
	add [hl]                                         ; $4596: $86
	adc [hl]                                         ; $4597: $8e
	push af                                          ; $4598: $f5
	rst SubAFromDE                                          ; $4599: $df
	adc c                                            ; $459a: $89
	rst $38                                          ; $459b: $ff
	ld [hl], c                                       ; $459c: $71
	rst AddAOntoHL                                          ; $459d: $ef
	ld [hl], l                                       ; $459e: $75
	cp a                                             ; $459f: $bf
	ld [hl], l                                       ; $45a0: $75
	rst AddAOntoHL                                          ; $45a1: $ef
	db $ed                                           ; $45a2: $ed
	ld [hl], a                                       ; $45a3: $77
	ld sp, hl                                        ; $45a4: $f9
	adc a                                            ; $45a5: $8f
	ld a, [$e496]                                    ; $45a6: $fa $96 $e4
	ld a, e                                          ; $45a9: $7b
	ld a, [hl]                                       ; $45aa: $7e
	ld b, e                                          ; $45ab: $43
	ret nz                                           ; $45ac: $c0

	sbc c                                            ; $45ad: $99
	ld [de], a                                       ; $45ae: $12
	inc c                                            ; $45af: $0c
	rra                                              ; $45b0: $1f
	dec l                                            ; $45b1: $2d
	ld a, $31                                        ; $45b2: $3e $31
	rra                                              ; $45b4: $1f
	ret nz                                           ; $45b5: $c0

	sbc c                                            ; $45b6: $99
	adc a                                            ; $45b7: $8f
	ld [hl], l                                       ; $45b8: $75
	rst $38                                          ; $45b9: $ff
	ld [hl], l                                       ; $45ba: $75
	rst AddAOntoHL                                          ; $45bb: $ef
	adc l                                            ; $45bc: $8d
	rra                                              ; $45bd: $1f
	ret nz                                           ; $45be: $c0

	sbc [hl]                                         ; $45bf: $9e
	ld d, $7b                                        ; $45c0: $16 $7b
	ret nz                                           ; $45c2: $c0

	sbc [hl]                                         ; $45c3: $9e
	ld a, [hl-]                                      ; $45c4: $3a
	dec de                                           ; $45c5: $1b
	ret nz                                           ; $45c6: $c0

	ld a, a                                          ; $45c7: $7f
	add b                                            ; $45c8: $80
	ld a, a                                          ; $45c9: $7f
	ret nz                                           ; $45ca: $c0

	sbc [hl]                                         ; $45cb: $9e
	rst SubAFromDE                                          ; $45cc: $df
	ld l, a                                          ; $45cd: $6f
	ret nz                                           ; $45ce: $c0

	ld a, [hl]                                       ; $45cf: $7e
	add sp, -$6b                                     ; $45d0: $e8 $95
	ld a, [bc]                                       ; $45d2: $0a
	rrca                                             ; $45d3: $0f
	rra                                              ; $45d4: $1f
	inc de                                           ; $45d5: $13
	rra                                              ; $45d6: $1f
	ld [de], a                                       ; $45d7: $12
	dec de                                           ; $45d8: $1b
	rra                                              ; $45d9: $1f
	ld c, $0f                                        ; $45da: $0e $0f
	ld h, $c0                                        ; $45dc: $26 $c0
	sub d                                            ; $45de: $92
	add $7e                                          ; $45df: $c6 $7e
	ld d, e                                          ; $45e1: $53
	cp a                                             ; $45e2: $bf
	ld sp, hl                                        ; $45e3: $f9
	rst AddAOntoHL                                          ; $45e4: $ef

jr_01a_45e5:
	cp a                                             ; $45e5: $bf
	db $ed                                           ; $45e6: $ed
	cp a                                             ; $45e7: $bf
	jp hl                                            ; $45e8: $e9


	cp a                                             ; $45e9: $bf
	rst $38                                          ; $45ea: $ff
	xor b                                            ; $45eb: $a8
	ld a, [hl-]                                      ; $45ec: $3a
	ret nz                                           ; $45ed: $c0

	ld h, a                                          ; $45ee: $67
	ld a, [hl]                                       ; $45ef: $7e
	sub h                                            ; $45f0: $94
	ld b, b                                          ; $45f1: $40
	ld a, a                                          ; $45f2: $7f
	and c                                            ; $45f3: $a1
	rst $38                                          ; $45f4: $ff
	ld b, c                                          ; $45f5: $41
	ld a, a                                          ; $45f6: $7f
	ld hl, $483f                                     ; $45f7: $21 $3f $48
	ld a, a                                          ; $45fa: $7f
	ld d, d                                          ; $45fb: $52
	ld a, b                                          ; $45fc: $78
	ld a, [hl]                                       ; $45fd: $7e
	ld a, l                                          ; $45fe: $7d
	inc d                                            ; $45ff: $14
	sbc c                                            ; $4600: $99
	daa                                              ; $4601: $27
	ccf                                              ; $4602: $3f
	ld l, a                                          ; $4603: $6f
	ld a, h                                          ; $4604: $7c
	cp a                                             ; $4605: $bf
	ld sp, hl                                        ; $4606: $f9
	db $fd                                           ; $4607: $fd
	ld l, a                                          ; $4608: $6f
	ld a, [hl]                                       ; $4609: $7e
	sbc b                                            ; $460a: $98
	add d                                            ; $460b: $82
	cp $01                                           ; $460c: $fe $01
	rst $38                                          ; $460e: $ff
	add hl, bc                                       ; $460f: $09
	rst $38                                          ; $4610: $ff
	dec b                                            ; $4611: $05
	ld a, b                                          ; $4612: $78
	cp e                                             ; $4613: $bb
	adc l                                            ; $4614: $8d
	ld de, $89ff                                     ; $4615: $11 $ff $89
	rst $38                                          ; $4618: $ff
	call $edfb                                       ; $4619: $cd $fb $ed
	cp e                                             ; $461c: $bb
	ld a, [$fa5e]                                    ; $461d: $fa $5e $fa
	ld d, [hl]                                       ; $4620: $56
	rla                                              ; $4621: $17
	inc e                                            ; $4622: $1c
	inc hl                                           ; $4623: $23
	ccf                                              ; $4624: $3f
	ccf                                              ; $4625: $3f
	ld a, $77                                        ; $4626: $3e $77
	adc e                                            ; $4628: $8b
	ld a, l                                          ; $4629: $7d
	inc e                                            ; $462a: $1c
	adc a                                            ; $462b: $8f
	add hl, bc                                       ; $462c: $09
	rrca                                             ; $462d: $0f
	inc bc                                           ; $462e: $03
	inc bc                                           ; $462f: $03
	ld bc, $0301                                     ; $4630: $01 $01 $03
	ld [bc], a                                       ; $4633: $02
	rlca                                             ; $4634: $07
	rlca                                             ; $4635: $07
	rrca                                             ; $4636: $0f
	ld [$1f13], sp                                   ; $4637: $08 $13 $1f
	ld hl, $753f                                     ; $463a: $21 $3f $75
	ld e, $9b                                        ; $463d: $1e $9b
	db $ec                                           ; $463f: $ec
	db $fc                                           ; $4640: $fc
	add $fe                                          ; $4641: $c6 $fe
	ld h, a                                          ; $4643: $67
	add b                                            ; $4644: $80
	ld a, l                                          ; $4645: $7d
	dec c                                            ; $4646: $0d
	adc a                                            ; $4647: $8f
	ret z                                            ; $4648: $c8

	ld hl, sp-$10                                    ; $4649: $f8 $f0
	ld [hl], b                                       ; $464b: $70
	ld hl, sp+$48                                    ; $464c: $f8 $48
	cp b                                             ; $464e: $b8
	cp b                                             ; $464f: $b8
	cp h                                             ; $4650: $bc
	and h                                            ; $4651: $a4
	ld b, h                                          ; $4652: $44
	ld a, h                                          ; $4653: $7c
	cp $fe                                           ; $4654: $fe $fe
	add b                                            ; $4656: $80
	add b                                            ; $4657: $80
	ei                                               ; $4658: $fb
	rst SubAFromDE                                          ; $4659: $df
	jr jr_01a_45e5                                   ; $465a: $18 $89

	ld a, $36                                        ; $465c: $3e $36
	ld a, a                                          ; $465e: $7f
	ld b, e                                          ; $465f: $43
	rst $38                                          ; $4660: $ff
	add c                                            ; $4661: $81
	cp $82                                           ; $4662: $fe $82
	ld a, a                                          ; $4664: $7f
	ld h, l                                          ; $4665: $65
	ld a, a                                          ; $4666: $7f
	ld b, c                                          ; $4667: $41
	ld a, a                                          ; $4668: $7f
	ld b, c                                          ; $4669: $41
	ld a, $32                                        ; $466a: $3e $32
	ld c, $0a                                        ; $466c: $0e $0a
	rlca                                             ; $466e: $07
	dec b                                            ; $466f: $05
	ld [bc], a                                       ; $4670: $02
	ld [bc], a                                       ; $4671: $02
	ld l, h                                          ; $4672: $6c
	ld [hl], b                                       ; $4673: $70
	sbc h                                            ; $4674: $9c
	inc c                                            ; $4675: $0c
	rrca                                             ; $4676: $0f
	db $10                                           ; $4677: $10
	ld a, e                                          ; $4678: $7b
	ld h, d                                          ; $4679: $62
	ld a, a                                          ; $467a: $7f
	jp hl                                            ; $467b: $e9


	add b                                            ; $467c: $80
	ld b, e                                          ; $467d: $43
	ld a, [hl]                                       ; $467e: $7e
	add e                                            ; $467f: $83
	cp $87                                           ; $4680: $fe $87
	db $fd                                           ; $4682: $fd
	adc a                                            ; $4683: $8f
	ld a, [$fd87]                                    ; $4684: $fa $87 $fd

jr_01a_4687:
	ld b, e                                          ; $4687: $43
	ld a, [hl]                                       ; $4688: $7e
	ld b, c                                          ; $4689: $41
	ld a, a                                          ; $468a: $7f
	jr nz, jr_01a_46cc                               ; $468b: $20 $3f

	jr jr_01a_46ae                                   ; $468d: $18 $1f

	ld b, $07                                        ; $468f: $06 $07
	ld bc, $c001                                     ; $4691: $01 $01 $c0
	ret nz                                           ; $4694: $c0

	jr nc, jr_01a_4687                               ; $4695: $30 $f0

	ld [$04f8], sp                                   ; $4697: $08 $f8 $04
	db $fc                                           ; $469a: $fc
	ld b, h                                          ; $469b: $44
	ld a, l                                          ; $469c: $7d
	sbc h                                            ; $469d: $9c
	sub c                                            ; $469e: $91
	cp [hl]                                          ; $469f: $be
	ldh [c], a                                       ; $46a0: $e2
	cp [hl]                                          ; $46a1: $be
	pop hl                                           ; $46a2: $e1
	ccf                                              ; $46a3: $3f
	pop hl                                           ; $46a4: $e1
	rst $38                                          ; $46a5: $ff
	pop hl                                           ; $46a6: $e1
	ccf                                              ; $46a7: $3f
	ldh [c], a                                       ; $46a8: $e2
	ld a, $c2                                        ; $46a9: $3e $c2
	cp $04                                           ; $46ab: $fe $04
	ld a, e                                          ; $46ad: $7b

jr_01a_46ae:
	ld c, [hl]                                       ; $46ae: $4e
	sbc e                                            ; $46af: $9b
	add hl, de                                       ; $46b0: $19
	rst $38                                          ; $46b1: $ff
	rst SubAFromBC                                          ; $46b2: $e7
	rst SubAFromBC                                          ; $46b3: $e7
	ld h, a                                          ; $46b4: $67
	cp [hl]                                          ; $46b5: $be
	ld a, a                                          ; $46b6: $7f
	ld [hl], d                                       ; $46b7: $72
	ld a, a                                          ; $46b8: $7f
	jr nz, jr_01a_473a                               ; $46b9: $20 $7f

	jp z, Jump_01a_7f7c                              ; $46bb: $ca $7c $7f

	sbc [hl]                                         ; $46be: $9e
	add c                                            ; $46bf: $81
	ld a, e                                          ; $46c0: $7b
	cp $7f                                           ; $46c1: $fe $7f
	ret nz                                           ; $46c3: $c0

	ld a, a                                          ; $46c4: $7f
	cp $77                                           ; $46c5: $fe $77
	ldh a, [hDisp1_OBP1]                                     ; $46c7: $f0 $94
	sbc h                                            ; $46c9: $9c
	rst $38                                          ; $46ca: $ff
	db $e3                                           ; $46cb: $e3

jr_01a_46cc:
	db $e3                                           ; $46cc: $e3
	nop                                              ; $46cd: $00
	nop                                              ; $46ce: $00
	add b                                            ; $46cf: $80
	add b                                            ; $46d0: $80
	ld h, b                                          ; $46d1: $60
	ldh [rAUD1SWEEP], a                              ; $46d2: $e0 $10
	ld [hl], e                                       ; $46d4: $73
	cp h                                             ; $46d5: $bc
	ld [hl], a                                       ; $46d6: $77
	call z, $fe77                                    ; $46d7: $cc $77 $fe
	ld a, a                                          ; $46da: $7f
	ld [de], a                                       ; $46db: $12
	ld a, a                                          ; $46dc: $7f
	cp $7f                                           ; $46dd: $fe $7f
	ldh a, [$7f]                                     ; $46df: $f0 $7f
	db $ec                                           ; $46e1: $ec
	ld a, a                                          ; $46e2: $7f
	add sp, $67                                      ; $46e3: $e8 $67
	ld e, [hl]                                       ; $46e5: $5e
	rst SubAFromBC                                          ; $46e6: $e7
	ld l, e                                          ; $46e7: $6b
	inc bc                                           ; $46e8: $03
	rst $38                                          ; $46e9: $ff
	rst SubAFromDE                                          ; $46ea: $df
	inc bc                                           ; $46eb: $03
	add b                                            ; $46ec: $80
	ld a, $3f                                        ; $46ed: $3e $3f
	ld de, $661f                                     ; $46ef: $11 $1f $66
	ld a, a                                          ; $46f2: $7f
	sbc d                                            ; $46f3: $9a
	rst $38                                          ; $46f4: $ff
	ld [hl], e                                       ; $46f5: $73
	ld a, a                                          ; $46f6: $7f
	inc h                                            ; $46f7: $24
	ccf                                              ; $46f8: $3f
	ld b, h                                          ; $46f9: $44
	ld a, a                                          ; $46fa: $7f
	ld b, h                                          ; $46fb: $44
	ld a, a                                          ; $46fc: $7f
	ld c, [hl]                                       ; $46fd: $4e
	ld a, a                                          ; $46fe: $7f
	ccf                                              ; $46ff: $3f
	scf                                              ; $4700: $37
	dec l                                            ; $4701: $2d
	ld [hl], $3f                                     ; $4702: $36 $3f
	ld h, $1f                                        ; $4704: $26 $1f
	db $10                                           ; $4706: $10
	rrca                                             ; $4707: $0f
	add hl, bc                                       ; $4708: $09
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	add sp, -$80                                     ; $470b: $e8 $80
	add sp, $1c                                      ; $470d: $e8 $1c
	db $fc                                           ; $470f: $fc
	adc b                                            ; $4710: $88
	ld hl, sp+$74                                    ; $4711: $f8 $74
	db $fc                                           ; $4713: $fc
	sbc d                                            ; $4714: $9a
	cp $06                                           ; $4715: $fe $06
	cp $a5                                           ; $4717: $fe $a5
	rst $38                                          ; $4719: $ff
	sub l                                            ; $471a: $95
	rst $38                                          ; $471b: $ff
	push de                                          ; $471c: $d5
	rst $38                                          ; $471d: $ff
	ld a, [$feae]                                    ; $471e: $fa $ae $fe
	ld a, d                                          ; $4721: $7a
	sbc $62                                          ; $4722: $de $62
	db $fc                                           ; $4724: $fc
	ld h, h                                          ; $4725: $64
	ld hl, sp+$08                                    ; $4726: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $4728: $f0 $90
	inc bc                                           ; $472a: $03
	inc bc                                           ; $472b: $03
	adc a                                            ; $472c: $8f
	inc b                                            ; $472d: $04
	rlca                                             ; $472e: $07
	ld c, $0b                                        ; $472f: $0e $0b
	rrca                                             ; $4731: $0f
	ld c, $0f                                        ; $4732: $0e $0f
	add hl, bc                                       ; $4734: $09
	rrca                                             ; $4735: $0f
	add hl, bc                                       ; $4736: $09
	rlca                                             ; $4737: $07
	ld b, $07                                        ; $4738: $06 $07

jr_01a_473a:
	inc b                                            ; $473a: $04
	rlca                                             ; $473b: $07
	inc b                                            ; $473c: $04
	db $db                                           ; $473d: $db
	inc bc                                           ; $473e: $03
	rst SubAFromDE                                          ; $473f: $df
	rlca                                             ; $4740: $07
	adc c                                            ; $4741: $89
	dec c                                            ; $4742: $0d
	rrca                                             ; $4743: $0f
	ld a, a                                          ; $4744: $7f
	ld a, a                                          ; $4745: $7f
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	ld hl, sp-$08                                    ; $4748: $f8 $f8
	inc a                                            ; $474a: $3c
	db $fc                                           ; $474b: $fc
	ld a, [hl]                                       ; $474c: $7e
	sub d                                            ; $474d: $92
	rst $38                                          ; $474e: $ff
	res 7, a                                         ; $474f: $cb $bf
	rst SubAFromBC                                          ; $4751: $e7
	sbc [hl]                                         ; $4752: $9e
	ldh a, [c]                                       ; $4753: $f2
	db $ec                                           ; $4754: $ec
	db $ec                                           ; $4755: $ec
	ldh [$60], a                                     ; $4756: $e0 $60
	ld a, e                                          ; $4758: $7b
	cp $9d                                           ; $4759: $fe $9d
	ldh [$a0], a                                     ; $475b: $e0 $a0
	ld a, e                                          ; $475d: $7b
	cp $df                                           ; $475e: $fe $df
	ldh a, [$9b]                                     ; $4760: $f0 $9b
	sbc b                                            ; $4762: $98
	ld hl, sp-$02                                    ; $4763: $f8 $fe
	cp $77                                           ; $4765: $fe $77
	add d                                            ; $4767: $82
	rrca                                             ; $4768: $0f
	ret nz                                           ; $4769: $c0

	rst SubAFromDE                                          ; $476a: $df
	db $fc                                           ; $476b: $fc
	sub l                                            ; $476c: $95
	ld a, [hl]                                       ; $476d: $7e
	and $7e                                          ; $476e: $e6 $7e
	sbc d                                            ; $4770: $9a
	cp $fe                                           ; $4771: $fe $fe
	sbc h                                            ; $4773: $9c
	db $f4                                           ; $4774: $f4
	adc b                                            ; $4775: $88
	add sp, -$22                                     ; $4776: $e8 $de
	ldh [rSCX], a                                    ; $4778: $e0 $43
	ret nz                                           ; $477a: $c0

	rst $38                                          ; $477b: $ff
	rst SubAFromDE                                          ; $477c: $df
	dec a                                            ; $477d: $3d
	sub [hl]                                         ; $477e: $96
	inc de                                           ; $477f: $13
	rra                                              ; $4780: $1f
	ld a, c                                          ; $4781: $79
	ld a, a                                          ; $4782: $7f
	ld b, a                                          ; $4783: $47
	ld a, a                                          ; $4784: $7f
	ld [hl-], a                                      ; $4785: $32
	ccf                                              ; $4786: $3f
	dec h                                            ; $4787: $25
	ld a, e                                          ; $4788: $7b
	ld b, d                                          ; $4789: $42
	add b                                            ; $478a: $80
	ld c, h                                          ; $478b: $4c
	ld a, a                                          ; $478c: $7f
	ld c, [hl]                                       ; $478d: $4e
	ld a, e                                          ; $478e: $7b
	ccf                                              ; $478f: $3f
	add hl, sp                                       ; $4790: $39
	cpl                                              ; $4791: $2f
	ld [hl], $3d                                     ; $4792: $36 $3d
	ld h, $1f                                        ; $4794: $26 $1f
	ld e, $0f                                        ; $4796: $1e $0f
	add hl, bc                                       ; $4798: $09
	halt                                             ; $4799: $76
	ld d, l                                          ; $479a: $55
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	ret nz                                           ; $479d: $c0

	ret nz                                           ; $479e: $c0

	inc [hl]                                         ; $479f: $34
	db $f4                                           ; $47a0: $f4
	adc [hl]                                         ; $47a1: $8e
	cp $fc                                           ; $47a2: $fe $fc
	db $fc                                           ; $47a4: $fc
	adc d                                            ; $47a5: $8a
	cp $26                                           ; $47a6: $fe $26
	cp $96                                           ; $47a8: $fe $96
	add b                                            ; $47aa: $80
	cp $d5                                           ; $47ab: $fe $d5
	rst $38                                          ; $47ad: $ff
	db $fd                                           ; $47ae: $fd
	cp a                                             ; $47af: $bf
	ld a, [$fe3e]                                    ; $47b0: $fa $3e $fe
	ld h, d                                          ; $47b3: $62
	cp $72                                           ; $47b4: $fe $72
	db $fc                                           ; $47b6: $fc
	ld d, h                                          ; $47b7: $54
	ld hl, sp-$78                                    ; $47b8: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $47ba: $f0 $90
	ld [hl], e                                       ; $47bc: $73
	ld d, e                                          ; $47bd: $53
	db $f4                                           ; $47be: $f4
	or a                                             ; $47bf: $b7
	db $fd                                           ; $47c0: $fd
	cp e                                             ; $47c1: $bb
	ld a, [hl]                                       ; $47c2: $7e
	ld d, e                                          ; $47c3: $53
	cp $8f                                           ; $47c4: $fe $8f
	ld a, [$738b]                                    ; $47c6: $fa $8b $73
	ld [hl], e                                       ; $47c9: $73
	rst SubAFromHL                                          ; $47ca: $d7
	inc bc                                           ; $47cb: $03
	ld h, a                                          ; $47cc: $67
	add b                                            ; $47cd: $80
	rst SubAFromDE                                          ; $47ce: $df
	ldh a, [$98]                                     ; $47cf: $f0 $98
	xor b                                            ; $47d1: $a8
	ld hl, sp+$44                                    ; $47d2: $f8 $44
	db $fc                                           ; $47d4: $fc
	inc c                                            ; $47d5: $0c
	db $f4                                           ; $47d6: $f4
	inc e                                            ; $47d7: $1c
	ld a, e                                          ; $47d8: $7b
	cp $99                                           ; $47d9: $fe $99
	db $fc                                           ; $47db: $fc
	db $e4                                           ; $47dc: $e4
	db $fc                                           ; $47dd: $fc
	db $e4                                           ; $47de: $e4
	ld hl, sp-$08                                    ; $47df: $f8 $f8
	rrca                                             ; $47e1: $0f
	add b                                            ; $47e2: $80
	adc a                                            ; $47e3: $8f
	ld c, b                                          ; $47e4: $48
	ld a, a                                          ; $47e5: $7f
	rst SubAFromHL                                          ; $47e6: $d7
	jr c, jr_01a_4818                                ; $47e7: $38 $2f

	ld d, b                                          ; $47e9: $50
	ccf                                              ; $47ea: $3f
	ld hl, $703f                                     ; $47eb: $21 $3f $70
	ld e, l                                          ; $47ee: $5d
	ld h, [hl]                                       ; $47ef: $66
	cp [hl]                                          ; $47f0: $be
	ld c, e                                          ; $47f1: $4b
	ccf                                              ; $47f2: $3f
	pop bc                                           ; $47f3: $c1
	ld d, e                                          ; $47f4: $53
	add b                                            ; $47f5: $80
	add b                                            ; $47f6: $80
	sbc $56                                          ; $47f7: $de $56
	cp [hl]                                          ; $47f9: $be
	push de                                          ; $47fa: $d5
	rst $38                                          ; $47fb: $ff
	cp l                                             ; $47fc: $bd
	ld a, a                                          ; $47fd: $7f
	or $0e                                           ; $47fe: $f6 $0e
	cp d                                             ; $4800: $ba
	add $de                                          ; $4801: $c6 $de
	ld h, d                                          ; $4803: $62
	ld a, [$f426]                                    ; $4804: $fa $26 $f4
	inc c                                            ; $4807: $0c
	jp z, $ff3a                                      ; $4808: $ca $3a $ff

	add b                                            ; $480b: $80
	rst $38                                          ; $480c: $ff
	ret nz                                           ; $480d: $c0

	ld l, a                                          ; $480e: $6f
	ld a, b                                          ; $480f: $78
	rra                                              ; $4810: $1f
	db $10                                           ; $4811: $10
	rra                                              ; $4812: $1f
	db $10                                           ; $4813: $10
	dec bc                                           ; $4814: $0b
	inc d                                            ; $4815: $14
	sbc e                                            ; $4816: $9b
	inc [hl]                                         ; $4817: $34

jr_01a_4818:
	rla                                              ; $4818: $17
	inc hl                                           ; $4819: $23
	inc hl                                           ; $481a: $23
	ld b, a                                          ; $481b: $47
	add b                                            ; $481c: $80
	ld a, d                                          ; $481d: $7a
	adc e                                            ; $481e: $8b
	sub h                                            ; $481f: $94
	ld [bc], a                                       ; $4820: $02
	cp $22                                           ; $4821: $fe $22
	cp $12                                           ; $4823: $fe $12
	db $fc                                           ; $4825: $fc
	inc c                                            ; $4826: $0c
	ld hl, sp+$08                                    ; $4827: $f8 $08
	ret nc                                           ; $4829: $d0

	or b                                             ; $482a: $b0
	db $db                                           ; $482b: $db
	ldh [rVBK], a                                    ; $482c: $e0 $4f
	add b                                            ; $482e: $80
	rst SubAFromDE                                          ; $482f: $df
	rlca                                             ; $4830: $07
	adc e                                            ; $4831: $8b
	jr jr_01a_4853                                   ; $4832: $18 $1f

	daa                                              ; $4834: $27
	jr c, jr_01a_4886                                ; $4835: $38 $4f

	ld [hl], a                                       ; $4837: $77
	ld c, b                                          ; $4838: $48
	ld a, a                                          ; $4839: $7f
	sub l                                            ; $483a: $95
	rst $38                                          ; $483b: $ff
	push hl                                          ; $483c: $e5
	rst $38                                          ; $483d: $ff
	xor l                                            ; $483e: $ad
	cp d                                             ; $483f: $ba
	rra                                              ; $4840: $1f
	ld d, $0b                                        ; $4841: $16 $0b
	ld d, $2f                                        ; $4843: $16 $2f
	ld a, $7b                                        ; $4845: $3e $7b
	cp $80                                           ; $4847: $fe $80
	add hl, sp                                       ; $4849: $39
	ld h, $3d                                        ; $484a: $26 $3d
	rlca                                             ; $484c: $07
	rra                                              ; $484d: $1f
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	ld a, b                                          ; $4850: $78
	ld a, b                                          ; $4851: $78
	add h                                            ; $4852: $84

jr_01a_4853:
	db $fc                                           ; $4853: $fc
	ldh [c], a                                       ; $4854: $e2
	ld e, $f2                                        ; $4855: $1e $f2
	xor $19                                          ; $4857: $ee $19
	rst FarCall                                          ; $4859: $f7
	add hl, hl                                       ; $485a: $29
	rst $38                                          ; $485b: $ff
	dec h                                            ; $485c: $25
	rst $38                                          ; $485d: $ff
	or l                                             ; $485e: $b5
	rst SubAFromDE                                          ; $485f: $df
	ld sp, hl                                        ; $4860: $f9
	ld l, a                                          ; $4861: $6f
	cp l                                             ; $4862: $bd
	ld [hl], a                                       ; $4863: $77
	db $fd                                           ; $4864: $fd
	ld h, a                                          ; $4865: $67
	db $fd                                           ; $4866: $fd
	ld h, a                                          ; $4867: $67
	sbc d                                            ; $4868: $9a
	ld sp, hl                                        ; $4869: $f9
	adc a                                            ; $486a: $8f
	pop af                                           ; $486b: $f1
	sbc a                                            ; $486c: $9f
	ldh [c], a                                       ; $486d: $e2
	ld a, e                                          ; $486e: $7b
	cp [hl]                                          ; $486f: $be
	ld b, e                                          ; $4870: $43
	ret nz                                           ; $4871: $c0

	ld a, [hl]                                       ; $4872: $7e
	ld a, [bc]                                       ; $4873: $0a
	sbc l                                            ; $4874: $9d
	ld d, $2d                                        ; $4875: $16 $2d
	rla                                              ; $4877: $17
	ret nz                                           ; $4878: $c0

	sbc e                                            ; $4879: $9b
	rrca                                             ; $487a: $0f
	db $fd                                           ; $487b: $fd
	ld [hl], a                                       ; $487c: $77
	db $dd                                           ; $487d: $dd
	ld e, e                                          ; $487e: $5b
	ret nz                                           ; $487f: $c0

	dec sp                                           ; $4880: $3b
	ldh [$7f], a                                     ; $4881: $e0 $7f
	ldh [c], a                                       ; $4883: $e2
	ld a, a                                          ; $4884: $7f
	sbc [hl]                                         ; $4885: $9e

jr_01a_4886:
	sbc [hl]                                         ; $4886: $9e
	ld d, a                                          ; $4887: $57
	dec de                                           ; $4888: $1b
	and b                                            ; $4889: $a0
	sbc e                                            ; $488a: $9b
	db $10                                           ; $488b: $10
	cpl                                              ; $488c: $2f
	ccf                                              ; $488d: $3f
	dec hl                                           ; $488e: $2b
	rla                                              ; $488f: $17
	and b                                            ; $4890: $a0
	sbc e                                            ; $4891: $9b
	rlca                                             ; $4892: $07
	db $fd                                           ; $4893: $fd
	ld [hl], a                                       ; $4894: $77
	cp l                                             ; $4895: $bd
	ld l, e                                          ; $4896: $6b
	and b                                            ; $4897: $a0
	sub h                                            ; $4898: $94
	ld [bc], a                                       ; $4899: $02
	rlca                                             ; $489a: $07
	dec bc                                           ; $489b: $0b
	rrca                                             ; $489c: $0f
	rrca                                             ; $489d: $0f
	ld a, [bc]                                       ; $489e: $0a
	rrca                                             ; $489f: $0f
	dec bc                                           ; $48a0: $0b
	ld b, $07                                        ; $48a1: $06 $07
	ld [bc], a                                       ; $48a3: $02
	ld a, e                                          ; $48a4: $7b
	cp $7f                                           ; $48a5: $fe $7f
	ld a, [$03de]                                    ; $48a7: $fa $de $03
	sbc [hl]                                         ; $48aa: $9e
	ld [bc], a                                       ; $48ab: $02
	ld a, d                                          ; $48ac: $7a
	ldh [c], a                                       ; $48ad: $e2
	sbc d                                            ; $48ae: $9a
	inc b                                            ; $48af: $04
	ld [$3f0f], sp                                   ; $48b0: $08 $0f $3f
	ccf                                              ; $48b3: $3f
	db $fd                                           ; $48b4: $fd
	ld [hl], l                                       ; $48b5: $75
	ret z                                            ; $48b6: $c8

	sbc e                                            ; $48b7: $9b
	rra                                              ; $48b8: $1f
	ld [de], a                                       ; $48b9: $12
	rrca                                             ; $48ba: $0f
	rrca                                             ; $48bb: $0f
	daa                                              ; $48bc: $27
	ldh [hDisp1_WY], a                                     ; $48bd: $e0 $95
	inc [hl]                                         ; $48bf: $34
	db $fc                                           ; $48c0: $fc
	call nz, Call_01a_5c7c                           ; $48c1: $c4 $7c $5c
	or b                                             ; $48c4: $b0
	db $fc                                           ; $48c5: $fc
	db $f4                                           ; $48c6: $f4
	xor b                                            ; $48c7: $a8
	ld hl, sp+$77                                    ; $48c8: $f8 $77
	cp $7e                                           ; $48ca: $fe $7e
	call z, $f0df                                    ; $48cc: $cc $df $f0
	ld a, d                                          ; $48cf: $7a
	jp $c27e                                         ; $48d0: $c3 $7e $c2


	sbc b                                            ; $48d3: $98
	sub b                                            ; $48d4: $90
	sbc b                                            ; $48d5: $98
	ld hl, sp-$78                                    ; $48d6: $f8 $88
	ld hl, sp-$04                                    ; $48d8: $f8 $fc
	db $fc                                           ; $48da: $fc
	ei                                               ; $48db: $fb
	rst SubAFromDE                                          ; $48dc: $df
	ld c, $9a                                        ; $48dd: $0e $9a
	ld [hl], c                                       ; $48df: $71
	ld a, a                                          ; $48e0: $7f
	add b                                            ; $48e1: $80
	rst $38                                          ; $48e2: $ff
	ld h, e                                          ; $48e3: $63
	ld a, c                                          ; $48e4: $79
	ld b, $8d                                        ; $48e5: $06 $8d
	adc b                                            ; $48e7: $88
	rst $38                                          ; $48e8: $ff
	adc c                                            ; $48e9: $89
	rst $38                                          ; $48ea: $ff
	sub e                                            ; $48eb: $93
	cp $93                                           ; $48ec: $fe $93
	cp $57                                           ; $48ee: $fe $57
	ld a, h                                          ; $48f0: $7c
	daa                                              ; $48f1: $27
	inc a                                            ; $48f2: $3c
	rra                                              ; $48f3: $1f
	inc e                                            ; $48f4: $1c
	rra                                              ; $48f5: $1f
	inc de                                           ; $48f6: $13
	dec e                                            ; $48f7: $1d
	dec de                                           ; $48f8: $1b
	db $fd                                           ; $48f9: $fd
	rst SubAFromDE                                          ; $48fa: $df
	ldh a, [hDisp0_WX]                                     ; $48fb: $f0 $89
	ld [$04f8], sp                                   ; $48fd: $08 $f8 $04
	db $fc                                           ; $4900: $fc
	ld [hl+], a                                      ; $4901: $22
	cp $d2                                           ; $4902: $fe $d2
	cp $89                                           ; $4904: $fe $89
	rst $38                                          ; $4906: $ff
	push bc                                          ; $4907: $c5
	ld a, a                                          ; $4908: $7f
	db $e3                                           ; $4909: $e3
	ccf                                              ; $490a: $3f
	pop af                                           ; $490b: $f1
	rst $38                                          ; $490c: $ff
	ld a, a                                          ; $490d: $7f
	rst GetHLinHL                                          ; $490e: $cf
	ld a, [$face]                                    ; $490f: $fa $ce $fa
	adc $79                                          ; $4912: $ce $79
	db $ed                                           ; $4914: $ed
	sbc [hl]                                         ; $4915: $9e
	inc a                                            ; $4916: $3c
	inc sp                                           ; $4917: $33
	ldh [$98], a                                     ; $4918: $e0 $98
	rra                                              ; $491a: $1f
	rst $38                                          ; $491b: $ff
	rrca                                             ; $491c: $0f
	ld a, [$faee]                                    ; $491d: $fa $ee $fa
	adc [hl]                                         ; $4920: $8e
	rla                                              ; $4921: $17
	ldh [$9b], a                                     ; $4922: $e0 $9b
	cp d                                             ; $4924: $ba
	adc $fa                                          ; $4925: $ce $fa
	xor $67                                          ; $4927: $ee $67
	ldh [$1f], a                                     ; $4929: $e0 $1f
	add b                                            ; $492b: $80
	sbc l                                            ; $492c: $9d
	rra                                              ; $492d: $1f
	jr jr_01a_494f                                   ; $492e: $18 $1f

	and b                                            ; $4930: $a0
	sbc l                                            ; $4931: $9d
	jp c, Jump_01a_776e                              ; $4932: $da $6e $77

	ret nz                                           ; $4935: $c0

	sub l                                            ; $4936: $95
	rra                                              ; $4937: $1f
	rla                                              ; $4938: $17
	rra                                              ; $4939: $1f
	dec bc                                           ; $493a: $0b
	ccf                                              ; $493b: $3f
	ld h, $3f                                        ; $493c: $26 $3f
	ld a, [hl+]                                      ; $493e: $2a
	ld a, $27                                        ; $493f: $3e $27
	ld a, e                                          ; $4941: $7b
	or $9a                                           ; $4942: $f6 $9a
	add hl, de                                       ; $4944: $19
	rra                                              ; $4945: $1f
	ld de, $111f                                     ; $4946: $11 $1f $11
	ld a, b                                          ; $4949: $78
	cp b                                             ; $494a: $b8
	sbc d                                            ; $494b: $9a
	rlca                                             ; $494c: $07
	rrca                                             ; $494d: $0f
	add hl, bc                                       ; $494e: $09

jr_01a_494f:
	ld [de], a                                       ; $494f: $12
	rra                                              ; $4950: $1f
	ld [hl], l                                       ; $4951: $75
	jp nz, $8078                                     ; $4952: $c2 $78 $80

	sub d                                            ; $4955: $92
	ret c                                            ; $4956: $d8

	ld hl, sp-$58                                    ; $4957: $f8 $a8

jr_01a_4959:
	db $fc                                           ; $4959: $fc
	call nz, $a4fc                                   ; $495a: $c4 $fc $a4
	db $fc                                           ; $495d: $fc
	call nz, $a8f8                                   ; $495e: $c4 $f8 $a8
	ldh a, [rAUD1SWEEP]                              ; $4961: $f0 $10
	ld l, a                                          ; $4963: $6f
	cp $de                                           ; $4964: $fe $de
	ldh [$9c], a                                     ; $4966: $e0 $9c
	jr nz, jr_01a_497a                               ; $4968: $20 $10

	ldh a, [$6d]                                     ; $496a: $f0 $6d
	jp nz, $602a                                     ; $496c: $c2 $2a $60

	sbc [hl]                                         ; $496f: $9e
	ld a, [hl-]                                      ; $4970: $3a
	ld a, c                                          ; $4971: $79
	cp $16                                           ; $4972: $fe $16
	ld h, b                                          ; $4974: $60
	sbc h                                            ; $4975: $9c
	ld d, a                                          ; $4976: $57
	xor l                                            ; $4977: $ad
	ld [hl], a                                       ; $4978: $77
	ld h, [hl]                                       ; $4979: $66

jr_01a_497a:
	jr nz, @-$1f                                     ; $497a: $20 $df

	ld e, $7d                                        ; $497c: $1e $7d
	inc de                                           ; $497e: $13
	add [hl]                                         ; $497f: $86
	ld b, a                                          ; $4980: $47
	ld a, b                                          ; $4981: $78
	ld c, a                                          ; $4982: $4f
	ld [hl], a                                       ; $4983: $77
	sbc b                                            ; $4984: $98
	rst AddAOntoHL                                          ; $4985: $ef
	sub h                                            ; $4986: $94
	rst $38                                          ; $4987: $ff
	and h                                            ; $4988: $a4
	rst $38                                          ; $4989: $ff
	xor l                                            ; $498a: $ad
	ei                                               ; $498b: $fb
	sbc a                                            ; $498c: $9f
	ldh a, [$bf]                                     ; $498d: $f0 $bf
	ldh [$bf], a                                     ; $498f: $e0 $bf
	xor $bd                                          ; $4991: $ee $bd
	and $9f                                          ; $4993: $e6 $9f
	pop af                                           ; $4995: $f1
	adc a                                            ; $4996: $8f
	ld hl, sp+$47                                    ; $4997: $f8 $47
	ld a, e                                          ; $4999: $7b
	ld a, h                                          ; $499a: $7c
	rst SubAFromDE                                          ; $499b: $df
	ldh [hDisp0_SCY], a                                     ; $499c: $e0 $83
	jr @-$06                                         ; $499e: $18 $f8

	db $e4                                           ; $49a0: $e4
	inc e                                            ; $49a1: $1c
	ldh a, [c]                                       ; $49a2: $f2
	xor $12                                          ; $49a3: $ee $12
	cp $a9                                           ; $49a5: $fe $a9
	rst $38                                          ; $49a7: $ff
	and a                                            ; $49a8: $a7
	rst $38                                          ; $49a9: $ff
	or l                                             ; $49aa: $b5
	ld e, l                                          ; $49ab: $5d
	ld hl, sp+$08                                    ; $49ac: $f8 $08
	ldh a, [$08]                                     ; $49ae: $f0 $08
	db $f4                                           ; $49b0: $f4
	db $fc                                           ; $49b1: $fc
	call nc, $f47c                                   ; $49b2: $d4 $7c $f4
	sbc h                                            ; $49b5: $9c
	db $e4                                           ; $49b6: $e4
	inc a                                            ; $49b7: $3c
	ldh [$f8], a                                     ; $49b8: $e0 $f8
	inc sp                                           ; $49ba: $33
	jr nz, jr_01a_4959                               ; $49bb: $20 $9c

	ccf                                              ; $49bd: $3f
	rst $38                                          ; $49be: $ff
	rst GetHLinHL                                          ; $49bf: $cf
	ld d, [hl]                                       ; $49c0: $56
	ret nz                                           ; $49c1: $c0

	db $e3                                           ; $49c2: $e3
	rst SubAFromDE                                          ; $49c3: $df
	inc bc                                           ; $49c4: $03
	sub [hl]                                         ; $49c5: $96
	inc c                                            ; $49c6: $0c
	rrca                                             ; $49c7: $0f
	db $10                                           ; $49c8: $10
	rra                                              ; $49c9: $1f
	ld hl, $403f                                     ; $49ca: $21 $3f $40
	ld a, a                                          ; $49cd: $7f
	ld b, c                                          ; $49ce: $41

jr_01a_49cf:
	ld a, d                                          ; $49cf: $7a
	cp d                                             ; $49d0: $ba
	sbc [hl]                                         ; $49d1: $9e
	add c                                            ; $49d2: $81
	ld a, e                                          ; $49d3: $7b
	cp $9b                                           ; $49d4: $fe $9b
	ld b, e                                          ; $49d6: $43
	ld a, [hl]                                       ; $49d7: $7e
	ld b, e                                          ; $49d8: $43
	ld a, [hl]                                       ; $49d9: $7e
	ld [hl], a                                       ; $49da: $77
	ldh a, [hDisp1_OBP1]                                     ; $49db: $f0 $94
	sbc h                                            ; $49dd: $9c
	rst $38                                          ; $49de: $ff
	db $e3                                           ; $49df: $e3
	db $e3                                           ; $49e0: $e3
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	add b                                            ; $49e3: $80
	add b                                            ; $49e4: $80
	ld h, b                                          ; $49e5: $60
	ldh [rAUD1SWEEP], a                              ; $49e6: $e0 $10
	ld [hl], e                                       ; $49e8: $73
	sbc [hl]                                         ; $49e9: $9e
	ld a, a                                          ; $49ea: $7f
	cp $7c                                           ; $49eb: $fe $7c
	or l                                             ; $49ed: $b5
	ld [hl], a                                       ; $49ee: $77
	cp $7f                                           ; $49ef: $fe $7f
	jr nc, jr_01a_4a72                               ; $49f1: $30 $7f

	cp $7f                                           ; $49f3: $fe $7f
	ldh a, [$7f]                                     ; $49f5: $f0 $7f
	db $ec                                           ; $49f7: $ec
	ld a, a                                          ; $49f8: $7f
	add sp, -$21                                     ; $49f9: $e8 $df
	add b                                            ; $49fb: $80
	ld l, a                                          ; $49fc: $6f
	jp nz, $2082                                     ; $49fd: $c2 $82 $20

	ccf                                              ; $4a00: $3f
	ld b, c                                          ; $4a01: $41
	ld a, a                                          ; $4a02: $7f
	ld b, e                                          ; $4a03: $43
	ld a, [hl]                                       ; $4a04: $7e
	add e                                            ; $4a05: $83
	cp $87                                           ; $4a06: $fe $87
	db $fd                                           ; $4a08: $fd
	adc a                                            ; $4a09: $8f
	ld a, [$fd87]                                    ; $4a0a: $fa $87 $fd
	ld b, e                                          ; $4a0d: $43
	ld a, [hl]                                       ; $4a0e: $7e
	ld b, c                                          ; $4a0f: $41
	ld a, a                                          ; $4a10: $7f
	jr nz, jr_01a_4a52                               ; $4a11: $20 $3f

	jr jr_01a_4a34                                   ; $4a13: $18 $1f

	ld b, $07                                        ; $4a15: $06 $07
	ld bc, $c001                                     ; $4a17: $01 $01 $c0
	ret nz                                           ; $4a1a: $c0

	jr nc, jr_01a_4a90                               ; $4a1b: $30 $73

	call nz, $448f                                   ; $4a1d: $c4 $8f $44
	db $fc                                           ; $4a20: $fc
	ldh [c], a                                       ; $4a21: $e2
	cp [hl]                                          ; $4a22: $be
	ldh [c], a                                       ; $4a23: $e2
	cp [hl]                                          ; $4a24: $be
	pop hl                                           ; $4a25: $e1
	ccf                                              ; $4a26: $3f
	pop hl                                           ; $4a27: $e1
	rst $38                                          ; $4a28: $ff
	pop hl                                           ; $4a29: $e1
	ccf                                              ; $4a2a: $3f
	ldh [c], a                                       ; $4a2b: $e2
	ld a, $c2                                        ; $4a2c: $3e $c2
	cp $77                                           ; $4a2e: $fe $77
	or h                                             ; $4a30: $b4
	sbc e                                            ; $4a31: $9b
	add hl, de                                       ; $4a32: $19
	rst $38                                          ; $4a33: $ff

jr_01a_4a34:
	rst SubAFromBC                                          ; $4a34: $e7
	rst SubAFromBC                                          ; $4a35: $e7
	db $fd                                           ; $4a36: $fd
	rst SubAFromDE                                          ; $4a37: $df
	jr jr_01a_49cf                                   ; $4a38: $18 $95

	ld a, $36                                        ; $4a3a: $3e $36
	ld a, a                                          ; $4a3c: $7f
	ld b, e                                          ; $4a3d: $43
	rst $38                                          ; $4a3e: $ff
	add c                                            ; $4a3f: $81
	cp $82                                           ; $4a40: $fe $82
	ld a, a                                          ; $4a42: $7f
	ld h, l                                          ; $4a43: $65
	ld a, e                                          ; $4a44: $7b
	ld a, e                                          ; $4a45: $7b
	sub [hl]                                         ; $4a46: $96
	ld b, c                                          ; $4a47: $41
	ld a, $32                                        ; $4a48: $3e $32
	ld c, $0a                                        ; $4a4a: $0e $0a
	rlca                                             ; $4a4c: $07
	dec b                                            ; $4a4d: $05
	ld [bc], a                                       ; $4a4e: $02
	ld [bc], a                                       ; $4a4f: $02
	ldh [$dd], a                                     ; $4a50: $e0 $dd

jr_01a_4a52:
	add c                                            ; $4a52: $81
	inc bc                                           ; $4a53: $03
	rst $38                                          ; $4a54: $ff
	rst SubAFromDE                                          ; $4a55: $df
	inc bc                                           ; $4a56: $03
	add b                                            ; $4a57: $80
	ld a, $3f                                        ; $4a58: $3e $3f
	ld de, $661f                                     ; $4a5a: $11 $1f $66
	ld a, a                                          ; $4a5d: $7f
	sbc d                                            ; $4a5e: $9a
	rst $38                                          ; $4a5f: $ff
	ld [hl], e                                       ; $4a60: $73
	ld a, a                                          ; $4a61: $7f
	inc h                                            ; $4a62: $24
	ccf                                              ; $4a63: $3f
	ld b, h                                          ; $4a64: $44
	ld a, a                                          ; $4a65: $7f
	ld b, h                                          ; $4a66: $44
	ld a, a                                          ; $4a67: $7f
	ld c, [hl]                                       ; $4a68: $4e
	ld a, a                                          ; $4a69: $7f
	ccf                                              ; $4a6a: $3f
	scf                                              ; $4a6b: $37
	dec l                                            ; $4a6c: $2d
	ld [hl], $3f                                     ; $4a6d: $36 $3f
	ld h, $1f                                        ; $4a6f: $26 $1f
	db $10                                           ; $4a71: $10

jr_01a_4a72:
	rrca                                             ; $4a72: $0f
	add hl, bc                                       ; $4a73: $09
	nop                                              ; $4a74: $00
	nop                                              ; $4a75: $00
	add sp, -$80                                     ; $4a76: $e8 $80
	add sp, $1c                                      ; $4a78: $e8 $1c
	db $fc                                           ; $4a7a: $fc
	adc b                                            ; $4a7b: $88
	ld hl, sp+$74                                    ; $4a7c: $f8 $74
	db $fc                                           ; $4a7e: $fc
	sbc d                                            ; $4a7f: $9a
	cp $06                                           ; $4a80: $fe $06
	cp $a5                                           ; $4a82: $fe $a5
	rst $38                                          ; $4a84: $ff
	sub l                                            ; $4a85: $95
	rst $38                                          ; $4a86: $ff
	push de                                          ; $4a87: $d5
	rst $38                                          ; $4a88: $ff
	ld a, [$feae]                                    ; $4a89: $fa $ae $fe
	ld a, d                                          ; $4a8c: $7a
	sbc $62                                          ; $4a8d: $de $62
	db $fc                                           ; $4a8f: $fc

jr_01a_4a90:
	ld h, h                                          ; $4a90: $64
	ld hl, sp+$08                                    ; $4a91: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $4a93: $f0 $90
	rlca                                             ; $4a95: $07
	rlca                                             ; $4a96: $07
	adc h                                            ; $4a97: $8c
	ld [$100f], sp                                   ; $4a98: $08 $0f $10
	rra                                              ; $4a9b: $1f
	rla                                              ; $4a9c: $17
	dec e                                            ; $4a9d: $1d
	rla                                              ; $4a9e: $17
	dec de                                           ; $4a9f: $1b
	rla                                              ; $4aa0: $17
	dec de                                           ; $4aa1: $1b
	rrca                                             ; $4aa2: $0f
	dec c                                            ; $4aa3: $0d
	rrca                                             ; $4aa4: $0f
	ld [$080f], sp                                   ; $4aa5: $08 $0f $08
	rlca                                             ; $4aa8: $07
	rlca                                             ; $4aa9: $07
	dec b                                            ; $4aaa: $05
	sbc $07                                          ; $4aab: $de $07
	add h                                            ; $4aad: $84
	add hl, bc                                       ; $4aae: $09
	rrca                                             ; $4aaf: $0f
	ld de, $7f1f                                     ; $4ab0: $11 $1f $7f
	ld a, a                                          ; $4ab3: $7f
	nop                                              ; $4ab4: $00
	nop                                              ; $4ab5: $00
	ldh a, [$f0]                                     ; $4ab6: $f0 $f0
	ld a, b                                          ; $4ab8: $78
	ld hl, sp-$04                                    ; $4ab9: $f8 $fc
	inc h                                            ; $4abb: $24
	cp $96                                           ; $4abc: $fe $96
	ld a, [hl]                                       ; $4abe: $7e
	adc $3c                                          ; $4abf: $ce $3c
	db $e4                                           ; $4ac1: $e4
	cp b                                             ; $4ac2: $b8
	ld hl, sp-$20                                    ; $4ac3: $f8 $e0
	ldh [$a0], a                                     ; $4ac5: $e0 $a0
	ldh [rAUD4LEN], a                                ; $4ac7: $e0 $20
	ld [hl], e                                       ; $4ac9: $73
	cp $97                                           ; $4aca: $fe $97
	ret nc                                           ; $4acc: $d0

	ldh a, [$08]                                     ; $4acd: $f0 $08
	ld hl, sp-$02                                    ; $4acf: $f8 $fe
	cp $00                                           ; $4ad1: $fe $00
	nop                                              ; $4ad3: $00
	rlca                                             ; $4ad4: $07
	ret nz                                           ; $4ad5: $c0

	rst SubAFromDE                                          ; $4ad6: $df
	ld hl, sp-$6c                                    ; $4ad7: $f8 $94
	db $fc                                           ; $4ad9: $fc
	call z, $34fc                                    ; $4ada: $cc $fc $34
	db $fc                                           ; $4add: $fc
	db $fc                                           ; $4ade: $fc
	ld [$30f8], sp                                   ; $4adf: $08 $f8 $30
	ldh a, [$a0]                                     ; $4ae2: $f0 $a0
	sbc $e0                                          ; $4ae4: $de $e0
	ld b, a                                          ; $4ae6: $47
	ret nz                                           ; $4ae7: $c0

	rst $38                                          ; $4ae8: $ff
	rst SubAFromDE                                          ; $4ae9: $df
	dec a                                            ; $4aea: $3d
	sub [hl]                                         ; $4aeb: $96
	inc de                                           ; $4aec: $13
	rra                                              ; $4aed: $1f
	ld a, c                                          ; $4aee: $79
	ld a, a                                          ; $4aef: $7f
	ld b, a                                          ; $4af0: $47
	ld a, a                                          ; $4af1: $7f
	ld [hl-], a                                      ; $4af2: $32
	ccf                                              ; $4af3: $3f
	dec h                                            ; $4af4: $25
	ld a, e                                          ; $4af5: $7b
	ld b, d                                          ; $4af6: $42
	add b                                            ; $4af7: $80
	ld c, h                                          ; $4af8: $4c
	ld a, a                                          ; $4af9: $7f
	ld c, [hl]                                       ; $4afa: $4e
	ld a, e                                          ; $4afb: $7b
	ccf                                              ; $4afc: $3f
	add hl, sp                                       ; $4afd: $39
	cpl                                              ; $4afe: $2f
	ld [hl], $3d                                     ; $4aff: $36 $3d
	ld h, $1f                                        ; $4b01: $26 $1f
	ld e, $0f                                        ; $4b03: $1e $0f
	add hl, bc                                       ; $4b05: $09
	halt                                             ; $4b06: $76
	ld d, l                                          ; $4b07: $55
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	ret nz                                           ; $4b0a: $c0

	ret nz                                           ; $4b0b: $c0

	inc [hl]                                         ; $4b0c: $34
	db $f4                                           ; $4b0d: $f4
	adc [hl]                                         ; $4b0e: $8e
	cp $fc                                           ; $4b0f: $fe $fc
	db $fc                                           ; $4b11: $fc
	adc d                                            ; $4b12: $8a
	cp $26                                           ; $4b13: $fe $26
	cp $96                                           ; $4b15: $fe $96
	add b                                            ; $4b17: $80
	cp $d5                                           ; $4b18: $fe $d5
	rst $38                                          ; $4b1a: $ff
	db $fd                                           ; $4b1b: $fd
	cp a                                             ; $4b1c: $bf
	ld a, [$fe3e]                                    ; $4b1d: $fa $3e $fe
	ld h, d                                          ; $4b20: $62
	cp $72                                           ; $4b21: $fe $72
	db $fc                                           ; $4b23: $fc
	ld d, h                                          ; $4b24: $54
	ld hl, sp-$78                                    ; $4b25: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $4b27: $f0 $90
	ld [hl], e                                       ; $4b29: $73
	ld d, e                                          ; $4b2a: $53
	db $f4                                           ; $4b2b: $f4
	or a                                             ; $4b2c: $b7
	ld hl, sp-$41                                    ; $4b2d: $f8 $bf
	ld [hl], b                                       ; $4b2f: $70
	ld e, a                                          ; $4b30: $5f
	db $f4                                           ; $4b31: $f4
	adc a                                            ; $4b32: $8f
	db $fc                                           ; $4b33: $fc
	adc a                                            ; $4b34: $8f
	ld [hl], h                                       ; $4b35: $74
	ld [hl], a                                       ; $4b36: $77
	rst SubAFromDE                                          ; $4b37: $df
	rlca                                             ; $4b38: $07
	sbc l                                            ; $4b39: $9d
	ld [bc], a                                       ; $4b3a: $02
	inc bc                                           ; $4b3b: $03
	ld [hl], a                                       ; $4b3c: $77
	cp $df                                           ; $4b3d: $fe $df
	inc bc                                           ; $4b3f: $03
	sbc [hl]                                         ; $4b40: $9e
	inc b                                            ; $4b41: $04
	ld a, e                                          ; $4b42: $7b
	ld l, b                                          ; $4b43: $68
	ld l, a                                          ; $4b44: $6f
	ld b, b                                          ; $4b45: $40
	ld a, a                                          ; $4b46: $7f
	sbc b                                            ; $4b47: $98
	ld a, a                                          ; $4b48: $7f
	ld [bc], a                                       ; $4b49: $02
	sub c                                            ; $4b4a: $91
	inc b                                            ; $4b4b: $04
	db $fc                                           ; $4b4c: $fc
	sub h                                            ; $4b4d: $94
	db $fc                                           ; $4b4e: $fc
	inc e                                            ; $4b4f: $1c
	db $fc                                           ; $4b50: $fc
	sbc h                                            ; $4b51: $9c
	db $f4                                           ; $4b52: $f4
	ld a, h                                          ; $4b53: $7c
	db $f4                                           ; $4b54: $f4
	sbc b                                            ; $4b55: $98
	ld hl, sp-$70                                    ; $4b56: $f8 $90
	ldh a, [rPCM34]                                  ; $4b58: $f0 $77
	cp $9b                                           ; $4b5a: $fe $9b
	add sp, -$08                                     ; $4b5c: $e8 $f8
	add h                                            ; $4b5e: $84
	db $fc                                           ; $4b5f: $fc
	scf                                              ; $4b60: $37
	add b                                            ; $4b61: $80
	adc a                                            ; $4b62: $8f
	ld c, b                                          ; $4b63: $48
	ld a, a                                          ; $4b64: $7f
	rst SubAFromHL                                          ; $4b65: $d7
	jr c, jr_01a_4b97                                ; $4b66: $38 $2f

	ld d, b                                          ; $4b68: $50
	ccf                                              ; $4b69: $3f
	ld hl, $703f                                     ; $4b6a: $21 $3f $70
	ld e, l                                          ; $4b6d: $5d
	ld h, [hl]                                       ; $4b6e: $66
	cp [hl]                                          ; $4b6f: $be
	ld c, e                                          ; $4b70: $4b
	ccf                                              ; $4b71: $3f
	pop bc                                           ; $4b72: $c1
	ld d, e                                          ; $4b73: $53
	add b                                            ; $4b74: $80
	add b                                            ; $4b75: $80
	sbc $56                                          ; $4b76: $de $56
	cp [hl]                                          ; $4b78: $be
	push de                                          ; $4b79: $d5
	rst $38                                          ; $4b7a: $ff
	cp l                                             ; $4b7b: $bd
	ld a, a                                          ; $4b7c: $7f
	or $0e                                           ; $4b7d: $f6 $0e
	cp d                                             ; $4b7f: $ba
	add $de                                          ; $4b80: $c6 $de
	ld h, d                                          ; $4b82: $62
	ld a, [$f426]                                    ; $4b83: $fa $26 $f4
	inc c                                            ; $4b86: $0c
	jp z, $ff3a                                      ; $4b87: $ca $3a $ff

	add b                                            ; $4b8a: $80
	ld a, e                                          ; $4b8b: $7b
	ld b, [hl]                                       ; $4b8c: $46
	cpl                                              ; $4b8d: $2f
	jr c, jr_01a_4ba7                                ; $4b8e: $38 $17

	jr jr_01a_4b99                                   ; $4b90: $18 $07

	ld [$0c1b], sp                                   ; $4b92: $08 $1b $0c
	sbc e                                            ; $4b95: $9b
	inc h                                            ; $4b96: $24

jr_01a_4b97:
	rla                                              ; $4b97: $17
	inc bc                                           ; $4b98: $03

jr_01a_4b99:
	inc hl                                           ; $4b99: $23
	ld b, a                                          ; $4b9a: $47
	add b                                            ; $4b9b: $80
	sub b                                            ; $4b9c: $90
	sbc [hl]                                         ; $4b9d: $9e
	ld h, [hl]                                       ; $4b9e: $66
	cp $02                                           ; $4b9f: $fe $02
	sbc $22                                          ; $4ba1: $de $22
	xor $12                                          ; $4ba3: $ee $12
	db $e4                                           ; $4ba5: $e4
	inc e                                            ; $4ba6: $1c

jr_01a_4ba7:
	add sp, $18                                      ; $4ba7: $e8 $18
	ret nc                                           ; $4ba9: $d0

	or b                                             ; $4baa: $b0
	ld [hl], b                                       ; $4bab: $70
	ld [hl], e                                       ; $4bac: $73
	add h                                            ; $4bad: $84
	ld h, a                                          ; $4bae: $67
	add b                                            ; $4baf: $80
	rst SubAFromDE                                          ; $4bb0: $df
	rst $38                                          ; $4bb1: $ff
	db $fd                                           ; $4bb2: $fd
	rst SubAFromDE                                          ; $4bb3: $df
	rlca                                             ; $4bb4: $07
	adc e                                            ; $4bb5: $8b
	jr jr_01a_4bd7                                   ; $4bb6: $18 $1f

	daa                                              ; $4bb8: $27
	jr c, jr_01a_4c0a                                ; $4bb9: $38 $4f

	ld [hl], a                                       ; $4bbb: $77
	ld c, b                                          ; $4bbc: $48
	ld a, a                                          ; $4bbd: $7f
	sub l                                            ; $4bbe: $95
	rst $38                                          ; $4bbf: $ff
	push hl                                          ; $4bc0: $e5
	rst $38                                          ; $4bc1: $ff
	xor l                                            ; $4bc2: $ad
	cp d                                             ; $4bc3: $ba
	rra                                              ; $4bc4: $1f
	ld d, $0b                                        ; $4bc5: $16 $0b
	ld d, $2f                                        ; $4bc7: $16 $2f
	ld a, $7b                                        ; $4bc9: $3e $7b
	cp $80                                           ; $4bcb: $fe $80
	add hl, sp                                       ; $4bcd: $39
	ld h, $3d                                        ; $4bce: $26 $3d
	rlca                                             ; $4bd0: $07
	rra                                              ; $4bd1: $1f
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	ld a, b                                          ; $4bd4: $78
	ld a, b                                          ; $4bd5: $78
	add h                                            ; $4bd6: $84

jr_01a_4bd7:
	db $fc                                           ; $4bd7: $fc
	ldh [c], a                                       ; $4bd8: $e2
	ld e, $f2                                        ; $4bd9: $1e $f2
	xor $19                                          ; $4bdb: $ee $19
	rst FarCall                                          ; $4bdd: $f7
	add hl, hl                                       ; $4bde: $29
	rst $38                                          ; $4bdf: $ff
	dec h                                            ; $4be0: $25
	rst $38                                          ; $4be1: $ff
	or l                                             ; $4be2: $b5
	rst SubAFromDE                                          ; $4be3: $df
	ld sp, hl                                        ; $4be4: $f9
	ld l, a                                          ; $4be5: $6f
	cp l                                             ; $4be6: $bd
	ld [hl], a                                       ; $4be7: $77
	db $fd                                           ; $4be8: $fd
	ld h, a                                          ; $4be9: $67
	db $fd                                           ; $4bea: $fd
	ld h, a                                          ; $4beb: $67
	sbc d                                            ; $4bec: $9a
	ld sp, hl                                        ; $4bed: $f9
	adc a                                            ; $4bee: $8f
	pop af                                           ; $4bef: $f1
	sbc a                                            ; $4bf0: $9f
	ldh [c], a                                       ; $4bf1: $e2
	ld [hl], d                                       ; $4bf2: $72
	ld a, [hl]                                       ; $4bf3: $7e
	ld c, e                                          ; $4bf4: $4b
	ret nz                                           ; $4bf5: $c0

	ld a, [hl]                                       ; $4bf6: $7e
	ld a, [bc]                                       ; $4bf7: $0a
	sbc l                                            ; $4bf8: $9d
	ld d, $2d                                        ; $4bf9: $16 $2d
	rla                                              ; $4bfb: $17
	ret nz                                           ; $4bfc: $c0

	sbc e                                            ; $4bfd: $9b
	rrca                                             ; $4bfe: $0f
	db $fd                                           ; $4bff: $fd
	ld [hl], a                                       ; $4c00: $77
	db $dd                                           ; $4c01: $dd
	ld e, e                                          ; $4c02: $5b
	ret nz                                           ; $4c03: $c0

	dec sp                                           ; $4c04: $3b
	ldh [$7f], a                                     ; $4c05: $e0 $7f
	ldh [c], a                                       ; $4c07: $e2
	ld a, a                                          ; $4c08: $7f
	sbc [hl]                                         ; $4c09: $9e

jr_01a_4c0a:
	sbc [hl]                                         ; $4c0a: $9e
	ld d, a                                          ; $4c0b: $57
	dec de                                           ; $4c0c: $1b
	and b                                            ; $4c0d: $a0
	sbc e                                            ; $4c0e: $9b
	db $10                                           ; $4c0f: $10
	cpl                                              ; $4c10: $2f
	ccf                                              ; $4c11: $3f
	dec hl                                           ; $4c12: $2b
	rla                                              ; $4c13: $17
	and b                                            ; $4c14: $a0
	sbc e                                            ; $4c15: $9b
	rlca                                             ; $4c16: $07
	db $fd                                           ; $4c17: $fd
	ld [hl], a                                       ; $4c18: $77
	cp l                                             ; $4c19: $bd
	ld l, e                                          ; $4c1a: $6b
	and b                                            ; $4c1b: $a0
	sub h                                            ; $4c1c: $94
	ld [bc], a                                       ; $4c1d: $02
	rlca                                             ; $4c1e: $07
	dec bc                                           ; $4c1f: $0b
	rrca                                             ; $4c20: $0f
	dec bc                                           ; $4c21: $0b
	ld c, $0b                                        ; $4c22: $0e $0b
	rrca                                             ; $4c24: $0f
	ld b, $07                                        ; $4c25: $06 $07
	ld [bc], a                                       ; $4c27: $02
	ld a, e                                          ; $4c28: $7b
	cp $7f                                           ; $4c29: $fe $7f
	ld a, [$03de]                                    ; $4c2b: $fa $de $03
	ld a, d                                          ; $4c2e: $7a
	pop hl                                           ; $4c2f: $e1
	sbc c                                            ; $4c30: $99
	rlca                                             ; $4c31: $07
	inc b                                            ; $4c32: $04
	ld [$3f0f], sp                                   ; $4c33: $08 $0f $3f
	ccf                                              ; $4c36: $3f
	db $fd                                           ; $4c37: $fd
	ld a, [hl]                                       ; $4c38: $7e
	inc e                                            ; $4c39: $1c
	ld a, a                                          ; $4c3a: $7f
	cp $9c                                           ; $4c3b: $fe $9c
	inc de                                           ; $4c3d: $13
	ld e, $0f                                        ; $4c3e: $1e $0f
	inc hl                                           ; $4c40: $23
	ldh [$7d], a                                     ; $4c41: $e0 $7d
	push bc                                          ; $4c43: $c5
	sub a                                            ; $4c44: $97
	call nz, Call_01a_507c                           ; $4c45: $c4 $7c $50
	cp h                                             ; $4c48: $bc
	db $f4                                           ; $4c49: $f4
	db $fc                                           ; $4c4a: $fc
	xor b                                            ; $4c4b: $a8
	ld hl, sp+$77                                    ; $4c4c: $f8 $77
	cp $7e                                           ; $4c4e: $fe $7e
	ld b, d                                          ; $4c50: $42
	rst SubAFromDE                                          ; $4c51: $df
	ldh a, [$79]                                     ; $4c52: $f0 $79
	cp l                                             ; $4c54: $bd
	sbc e                                            ; $4c55: $9b
	ldh [$f0], a                                     ; $4c56: $e0 $f0
	sub b                                            ; $4c58: $90
	sbc b                                            ; $4c59: $98
	ld a, d                                          ; $4c5a: $7a
	ld a, [hl+]                                      ; $4c5b: $2a
	rst SubAFromDE                                          ; $4c5c: $df
	db $fc                                           ; $4c5d: $fc
	ei                                               ; $4c5e: $fb
	rst SubAFromDE                                          ; $4c5f: $df
	ld c, $9a                                        ; $4c60: $0e $9a
	ld [hl], c                                       ; $4c62: $71
	ld a, a                                          ; $4c63: $7f
	add b                                            ; $4c64: $80
	rst $38                                          ; $4c65: $ff
	ld h, e                                          ; $4c66: $63
	ld a, c                                          ; $4c67: $79
	ld b, $8d                                        ; $4c68: $06 $8d
	adc b                                            ; $4c6a: $88
	rst $38                                          ; $4c6b: $ff
	adc c                                            ; $4c6c: $89
	rst $38                                          ; $4c6d: $ff
	sub e                                            ; $4c6e: $93
	cp $93                                           ; $4c6f: $fe $93
	cp $57                                           ; $4c71: $fe $57
	ld a, h                                          ; $4c73: $7c
	daa                                              ; $4c74: $27
	inc a                                            ; $4c75: $3c
	rra                                              ; $4c76: $1f
	inc e                                            ; $4c77: $1c
	rra                                              ; $4c78: $1f
	inc de                                           ; $4c79: $13
	dec e                                            ; $4c7a: $1d
	dec de                                           ; $4c7b: $1b
	db $fd                                           ; $4c7c: $fd
	ld [hl], l                                       ; $4c7d: $75
	db $fc                                           ; $4c7e: $fc
	ld a, l                                          ; $4c7f: $7d
	cp $89                                           ; $4c80: $fe $89
	ld [hl+], a                                      ; $4c82: $22
	cp $d2                                           ; $4c83: $fe $d2
	cp $89                                           ; $4c85: $fe $89
	rst $38                                          ; $4c87: $ff
	push bc                                          ; $4c88: $c5
	ld a, a                                          ; $4c89: $7f
	db $e3                                           ; $4c8a: $e3
	ccf                                              ; $4c8b: $3f
	pop af                                           ; $4c8c: $f1
	rst $38                                          ; $4c8d: $ff
	ld a, a                                          ; $4c8e: $7f
	rst GetHLinHL                                          ; $4c8f: $cf
	ld a, [$face]                                    ; $4c90: $fa $ce $fa
	adc $f4                                          ; $4c93: $ce $f4
	inc e                                            ; $4c95: $1c
	db $f4                                           ; $4c96: $f4
	inc a                                            ; $4c97: $3c
	inc sp                                           ; $4c98: $33
	ldh [$98], a                                     ; $4c99: $e0 $98
	rra                                              ; $4c9b: $1f
	rst $38                                          ; $4c9c: $ff
	rrca                                             ; $4c9d: $0f
	ld a, [$faee]                                    ; $4c9e: $fa $ee $fa
	adc [hl]                                         ; $4ca1: $8e
	rla                                              ; $4ca2: $17
	ldh [$9b], a                                     ; $4ca3: $e0 $9b
	cp d                                             ; $4ca5: $ba
	adc $fa                                          ; $4ca6: $ce $fa
	xor $67                                          ; $4ca8: $ee $67
	ldh [$1f], a                                     ; $4caa: $e0 $1f
	add b                                            ; $4cac: $80
	sbc l                                            ; $4cad: $9d
	rra                                              ; $4cae: $1f
	jr jr_01a_4cd0                                   ; $4caf: $18 $1f

	and b                                            ; $4cb1: $a0
	sbc l                                            ; $4cb2: $9d
	jp c, Jump_01a_776e                              ; $4cb3: $da $6e $77

	ret nz                                           ; $4cb6: $c0

	ld a, h                                          ; $4cb7: $7c
	push bc                                          ; $4cb8: $c5
	adc b                                            ; $4cb9: $88
	ld e, $0b                                        ; $4cba: $1e $0b
	ccf                                              ; $4cbc: $3f
	ld h, $3e                                        ; $4cbd: $26 $3e
	dec hl                                           ; $4cbf: $2b
	ld a, $27                                        ; $4cc0: $3e $27
	rra                                              ; $4cc2: $1f
	rla                                              ; $4cc3: $17
	rra                                              ; $4cc4: $1f
	add hl, de                                       ; $4cc5: $19
	rra                                              ; $4cc6: $1f
	ld de, $111f                                     ; $4cc7: $11 $1f $11
	rrca                                             ; $4cca: $0f
	add hl, bc                                       ; $4ccb: $09
	rlca                                             ; $4ccc: $07
	rlca                                             ; $4ccd: $07
	rrca                                             ; $4cce: $0f
	add hl, bc                                       ; $4ccf: $09

jr_01a_4cd0:
	ld [de], a                                       ; $4cd0: $12
	ld [hl], b                                       ; $4cd1: $70
	jp nz, $c078                                     ; $4cd2: $c2 $78 $c0

	sub d                                            ; $4cd5: $92
	ret c                                            ; $4cd6: $d8

	ld hl, sp-$58                                    ; $4cd7: $f8 $a8

jr_01a_4cd9:
	db $fc                                           ; $4cd9: $fc
	call nz, $a4fc                                   ; $4cda: $c4 $fc $a4
	db $fc                                           ; $4cdd: $fc
	call nz, $a8f8                                   ; $4cde: $c4 $f8 $a8
	ldh a, [rAUD1SWEEP]                              ; $4ce1: $f0 $10
	ld l, a                                          ; $4ce3: $6f
	cp $de                                           ; $4ce4: $fe $de
	ldh [$9c], a                                     ; $4ce6: $e0 $9c
	jr nz, jr_01a_4cfa                               ; $4ce8: $20 $10

	ldh a, [$6d]                                     ; $4cea: $f0 $6d
	ld b, d                                          ; $4cec: $42
	ld a, [hl+]                                      ; $4ced: $2a
	ld h, b                                          ; $4cee: $60
	sbc [hl]                                         ; $4cef: $9e
	ld a, [hl-]                                      ; $4cf0: $3a
	ld a, c                                          ; $4cf1: $79
	cp $16                                           ; $4cf2: $fe $16
	ld h, b                                          ; $4cf4: $60
	sbc h                                            ; $4cf5: $9c
	ld d, a                                          ; $4cf6: $57
	xor l                                            ; $4cf7: $ad
	ld [hl], a                                       ; $4cf8: $77
	ld h, [hl]                                       ; $4cf9: $66

jr_01a_4cfa:
	jr nz, @-$1f                                     ; $4cfa: $20 $df

	ld e, $7d                                        ; $4cfc: $1e $7d
	inc de                                           ; $4cfe: $13
	add [hl]                                         ; $4cff: $86
	ld b, a                                          ; $4d00: $47
	ld a, b                                          ; $4d01: $78
	ld c, a                                          ; $4d02: $4f
	ld [hl], a                                       ; $4d03: $77
	sbc b                                            ; $4d04: $98
	rst AddAOntoHL                                          ; $4d05: $ef
	sub h                                            ; $4d06: $94
	rst $38                                          ; $4d07: $ff
	and h                                            ; $4d08: $a4
	rst $38                                          ; $4d09: $ff
	xor l                                            ; $4d0a: $ad
	ei                                               ; $4d0b: $fb
	sbc a                                            ; $4d0c: $9f
	ldh a, [$bf]                                     ; $4d0d: $f0 $bf
	ldh [$bf], a                                     ; $4d0f: $e0 $bf
	xor $bd                                          ; $4d11: $ee $bd
	and $9f                                          ; $4d13: $e6 $9f
	pop af                                           ; $4d15: $f1
	adc a                                            ; $4d16: $8f
	ld hl, sp+$47                                    ; $4d17: $f8 $47
	ld a, e                                          ; $4d19: $7b
	ld a, h                                          ; $4d1a: $7c
	rst SubAFromDE                                          ; $4d1b: $df
	ldh [hDisp0_SCY], a                                     ; $4d1c: $e0 $83
	jr @-$06                                         ; $4d1e: $18 $f8

	db $e4                                           ; $4d20: $e4
	inc e                                            ; $4d21: $1c
	ldh a, [c]                                       ; $4d22: $f2
	xor $12                                          ; $4d23: $ee $12
	cp $a9                                           ; $4d25: $fe $a9
	rst $38                                          ; $4d27: $ff
	and a                                            ; $4d28: $a7
	rst $38                                          ; $4d29: $ff
	or l                                             ; $4d2a: $b5
	ld e, l                                          ; $4d2b: $5d
	ld hl, sp+$08                                    ; $4d2c: $f8 $08
	ldh a, [$08]                                     ; $4d2e: $f0 $08
	db $f4                                           ; $4d30: $f4
	db $fc                                           ; $4d31: $fc
	call nc, $f47c                                   ; $4d32: $d4 $7c $f4
	sbc h                                            ; $4d35: $9c
	db $e4                                           ; $4d36: $e4
	inc a                                            ; $4d37: $3c
	ldh [$f8], a                                     ; $4d38: $e0 $f8
	inc sp                                           ; $4d3a: $33
	jr nz, jr_01a_4cd9                               ; $4d3b: $20 $9c

	ccf                                              ; $4d3d: $3f
	rst $38                                          ; $4d3e: $ff
	rst GetHLinHL                                          ; $4d3f: $cf
	ld d, [hl]                                       ; $4d40: $56
	ret nz                                           ; $4d41: $c0

	db $e3                                           ; $4d42: $e3
	rst SubAFromDE                                          ; $4d43: $df
	inc bc                                           ; $4d44: $03
	sub [hl]                                         ; $4d45: $96
	inc c                                            ; $4d46: $0c
	rrca                                             ; $4d47: $0f
	db $10                                           ; $4d48: $10
	rra                                              ; $4d49: $1f
	ld hl, $403f                                     ; $4d4a: $21 $3f $40
	ld a, a                                          ; $4d4d: $7f
	ld b, c                                          ; $4d4e: $41
	ld a, d                                          ; $4d4f: $7a

jr_01a_4d50:
	cp d                                             ; $4d50: $ba
	sbc [hl]                                         ; $4d51: $9e
	add c                                            ; $4d52: $81
	ld a, e                                          ; $4d53: $7b
	cp $9b                                           ; $4d54: $fe $9b
	ld b, e                                          ; $4d56: $43
	ld a, [hl]                                       ; $4d57: $7e
	ld b, e                                          ; $4d58: $43
	ld a, [hl]                                       ; $4d59: $7e
	ld [hl], a                                       ; $4d5a: $77
	ldh a, [hDisp1_OBP1]                                     ; $4d5b: $f0 $94
	sbc h                                            ; $4d5d: $9c
	rst $38                                          ; $4d5e: $ff
	db $e3                                           ; $4d5f: $e3
	db $e3                                           ; $4d60: $e3
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	add b                                            ; $4d63: $80
	add b                                            ; $4d64: $80
	ld h, b                                          ; $4d65: $60
	ldh [rAUD1SWEEP], a                              ; $4d66: $e0 $10
	ld [hl], e                                       ; $4d68: $73
	sbc [hl]                                         ; $4d69: $9e
	ld a, a                                          ; $4d6a: $7f
	cp $9d                                           ; $4d6b: $fe $9d
	ld [bc], a                                       ; $4d6d: $02
	cp $77                                           ; $4d6e: $fe $77
	cp $7f                                           ; $4d70: $fe $7f
	jr nc, jr_01a_4df3                               ; $4d72: $30 $7f

	cp $7f                                           ; $4d74: $fe $7f
	ldh a, [$7f]                                     ; $4d76: $f0 $7f
	db $ec                                           ; $4d78: $ec
	ld a, a                                          ; $4d79: $7f
	add sp, -$21                                     ; $4d7a: $e8 $df
	add b                                            ; $4d7c: $80
	ld l, a                                          ; $4d7d: $6f
	jp nz, $2082                                     ; $4d7e: $c2 $82 $20

	ccf                                              ; $4d81: $3f
	ld b, c                                          ; $4d82: $41
	ld a, a                                          ; $4d83: $7f
	ld b, e                                          ; $4d84: $43
	ld a, [hl]                                       ; $4d85: $7e
	add e                                            ; $4d86: $83
	cp $87                                           ; $4d87: $fe $87
	db $fd                                           ; $4d89: $fd
	adc a                                            ; $4d8a: $8f
	ld a, [$fd87]                                    ; $4d8b: $fa $87 $fd
	ld b, e                                          ; $4d8e: $43
	ld a, [hl]                                       ; $4d8f: $7e
	ld b, c                                          ; $4d90: $41
	ld a, a                                          ; $4d91: $7f
	jr nz, jr_01a_4dd3                               ; $4d92: $20 $3f

	jr jr_01a_4db5                                   ; $4d94: $18 $1f

	ld b, $07                                        ; $4d96: $06 $07
	ld bc, $c001                                     ; $4d98: $01 $01 $c0
	ret nz                                           ; $4d9b: $c0

	jr nc, jr_01a_4e11                               ; $4d9c: $30 $73

	call nz, $448f                                   ; $4d9e: $c4 $8f $44
	db $fc                                           ; $4da1: $fc
	ldh [c], a                                       ; $4da2: $e2
	cp [hl]                                          ; $4da3: $be
	ldh [c], a                                       ; $4da4: $e2
	cp [hl]                                          ; $4da5: $be
	pop hl                                           ; $4da6: $e1
	ccf                                              ; $4da7: $3f
	pop hl                                           ; $4da8: $e1
	rst $38                                          ; $4da9: $ff
	pop hl                                           ; $4daa: $e1
	ccf                                              ; $4dab: $3f
	ldh [c], a                                       ; $4dac: $e2
	ld a, $c2                                        ; $4dad: $3e $c2
	cp $77                                           ; $4daf: $fe $77
	or h                                             ; $4db1: $b4
	sbc e                                            ; $4db2: $9b
	add hl, de                                       ; $4db3: $19
	rst $38                                          ; $4db4: $ff

jr_01a_4db5:
	rst SubAFromBC                                          ; $4db5: $e7
	rst SubAFromBC                                          ; $4db6: $e7
	db $fd                                           ; $4db7: $fd
	rst SubAFromDE                                          ; $4db8: $df
	jr jr_01a_4d50                                   ; $4db9: $18 $95

	ld a, $36                                        ; $4dbb: $3e $36
	ld a, a                                          ; $4dbd: $7f
	ld b, e                                          ; $4dbe: $43
	rst $38                                          ; $4dbf: $ff
	add c                                            ; $4dc0: $81
	cp $82                                           ; $4dc1: $fe $82
	ld a, a                                          ; $4dc3: $7f
	ld h, l                                          ; $4dc4: $65
	ld a, e                                          ; $4dc5: $7b
	ld a, e                                          ; $4dc6: $7b
	sub [hl]                                         ; $4dc7: $96
	ld b, c                                          ; $4dc8: $41
	ld a, $32                                        ; $4dc9: $3e $32
	ld c, $0a                                        ; $4dcb: $0e $0a
	rlca                                             ; $4dcd: $07
	dec b                                            ; $4dce: $05
	ld [bc], a                                       ; $4dcf: $02
	ld [bc], a                                       ; $4dd0: $02
	ldh [$dd], a                                     ; $4dd1: $e0 $dd

jr_01a_4dd3:
	sbc c                                            ; $4dd3: $99
	inc bc                                           ; $4dd4: $03
	rst $38                                          ; $4dd5: $ff
	rst SubAFromDE                                          ; $4dd6: $df
	dec a                                            ; $4dd7: $3d
	add b                                            ; $4dd8: $80
	inc de                                           ; $4dd9: $13
	rra                                              ; $4dda: $1f
	ld sp, hl                                        ; $4ddb: $f9
	rst $38                                          ; $4ddc: $ff
	ld b, a                                          ; $4ddd: $47
	ld a, a                                          ; $4dde: $7f
	ld [hl-], a                                      ; $4ddf: $32
	ccf                                              ; $4de0: $3f
	dec h                                            ; $4de1: $25
	ccf                                              ; $4de2: $3f
	ld b, h                                          ; $4de3: $44
	ld a, a                                          ; $4de4: $7f
	ld c, h                                          ; $4de5: $4c
	ld a, a                                          ; $4de6: $7f
	ld c, [hl]                                       ; $4de7: $4e
	ld a, e                                          ; $4de8: $7b
	ccf                                              ; $4de9: $3f
	dec a                                            ; $4dea: $3d
	dec hl                                           ; $4deb: $2b
	ld [hl], $3f                                     ; $4dec: $36 $3f
	ld h, $1f                                        ; $4dee: $26 $1f
	ld d, $0f                                        ; $4df0: $16 $0f
	add hl, bc                                       ; $4df2: $09

jr_01a_4df3:
	rrca                                             ; $4df3: $0f
	inc c                                            ; $4df4: $0c
	nop                                              ; $4df5: $00
	nop                                              ; $4df6: $00
	ret nz                                           ; $4df7: $c0

	add b                                            ; $4df8: $80
	ret nz                                           ; $4df9: $c0

	inc [hl]                                         ; $4dfa: $34
	db $f4                                           ; $4dfb: $f4
	adc [hl]                                         ; $4dfc: $8e
	cp $fc                                           ; $4dfd: $fe $fc
	db $fc                                           ; $4dff: $fc
	adc d                                            ; $4e00: $8a
	cp $26                                           ; $4e01: $fe $26
	cp $96                                           ; $4e03: $fe $96
	cp $d5                                           ; $4e05: $fe $d5
	rst $38                                          ; $4e07: $ff
	db $fd                                           ; $4e08: $fd
	cp a                                             ; $4e09: $bf
	ld a, [$be6e]                                    ; $4e0a: $fa $6e $be
	ld [hl], d                                       ; $4e0d: $72
	cp $62                                           ; $4e0e: $fe $62
	db $fc                                           ; $4e10: $fc

jr_01a_4e11:
	ld h, h                                          ; $4e11: $64
	ld hl, sp-$78                                    ; $4e12: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $4e14: $f0 $10
	dec bc                                           ; $4e16: $0b
	rrca                                             ; $4e17: $0f
	adc h                                            ; $4e18: $8c
	ld [de], a                                       ; $4e19: $12
	rra                                              ; $4e1a: $1f
	dec e                                            ; $4e1b: $1d
	rra                                              ; $4e1c: $1f
	ld a, $2b                                        ; $4e1d: $3e $2b
	ld a, $2b                                        ; $4e1f: $3e $2b
	ld a, a                                          ; $4e21: $7f
	ld a, a                                          ; $4e22: $7f
	rst $38                                          ; $4e23: $ff
	add b                                            ; $4e24: $80
	ld a, a                                          ; $4e25: $7f
	ld a, a                                          ; $4e26: $7f
	rrca                                             ; $4e27: $0f
	rrca                                             ; $4e28: $0f
	dec bc                                           ; $4e29: $0b
	rrca                                             ; $4e2a: $0f

jr_01a_4e2b:
	inc de                                           ; $4e2b: $13
	sbc $1f                                          ; $4e2c: $de $1f
	sbc [hl]                                         ; $4e2e: $9e
	daa                                              ; $4e2f: $27

jr_01a_4e30:
	sbc $3f                                          ; $4e30: $de $3f
	db $fd                                           ; $4e32: $fd
	sub c                                            ; $4e33: $91
	add sp, -$08                                     ; $4e34: $e8 $f8
	and h                                            ; $4e36: $a4
	db $fc                                           ; $4e37: $fc
	ld c, h                                          ; $4e38: $4c
	db $fc                                           ; $4e39: $fc
	ld a, [hl]                                       ; $4e3a: $7e
	ld a, [$ca7e]                                    ; $4e3b: $fa $7e $ca
	db $fc                                           ; $4e3e: $fc
	db $fc                                           ; $4e3f: $fc
	cp $06                                           ; $4e40: $fe $06
	db $dd                                           ; $4e42: $dd
	db $fc                                           ; $4e43: $fc
	sbc b                                            ; $4e44: $98
	call c, $d8fc                                    ; $4e45: $dc $fc $d8
	ld hl, sp+$78                                    ; $4e48: $f8 $78
	ld a, b                                          ; $4e4a: $78
	ld c, h                                          ; $4e4b: $4c
	sbc $7c                                          ; $4e4c: $de $7c
	ei                                               ; $4e4e: $fb
	rst SubAFromDE                                          ; $4e4f: $df
	inc bc                                           ; $4e50: $03
	sub h                                            ; $4e51: $94
	ld a, $3f                                        ; $4e52: $3e $3f
	ld de, $661f                                     ; $4e54: $11 $1f $66
	ld a, a                                          ; $4e57: $7f
	sbc d                                            ; $4e58: $9a
	rst $38                                          ; $4e59: $ff
	ld [hl], e                                       ; $4e5a: $73
	ld a, a                                          ; $4e5b: $7f
	inc h                                            ; $4e5c: $24
	ld a, e                                          ; $4e5d: $7b
	ld a, [hl]                                       ; $4e5e: $7e
	ld a, a                                          ; $4e5f: $7f
	cp $9a                                           ; $4e60: $fe $9a
	ld c, [hl]                                       ; $4e62: $4e
	ld a, a                                          ; $4e63: $7f
	ccf                                              ; $4e64: $3f
	scf                                              ; $4e65: $37
	dec l                                            ; $4e66: $2d
	ld [hl], a                                       ; $4e67: $77
	ld a, [hl]                                       ; $4e68: $7e
	sbc h                                            ; $4e69: $9c
	db $10                                           ; $4e6a: $10
	rrca                                             ; $4e6b: $0f
	add hl, bc                                       ; $4e6c: $09
	ld a, e                                          ; $4e6d: $7b
	cp [hl]                                          ; $4e6e: $be
	adc c                                            ; $4e6f: $89
	add sp, $1c                                      ; $4e70: $e8 $1c
	db $fc                                           ; $4e72: $fc
	adc b                                            ; $4e73: $88
	ld hl, sp+$74                                    ; $4e74: $f8 $74
	db $fc                                           ; $4e76: $fc
	sbc d                                            ; $4e77: $9a
	cp $06                                           ; $4e78: $fe $06
	cp $a5                                           ; $4e7a: $fe $a5
	rst $38                                          ; $4e7c: $ff
	sub l                                            ; $4e7d: $95
	rst $38                                          ; $4e7e: $ff
	push de                                          ; $4e7f: $d5
	rst $38                                          ; $4e80: $ff
	ld a, [$feae]                                    ; $4e81: $fa $ae $fe
	ld a, d                                          ; $4e84: $7a
	sbc $77                                          ; $4e85: $de $77
	add b                                            ; $4e87: $80
	sbc h                                            ; $4e88: $9c
	ld [$90f0], sp                                   ; $4e89: $08 $f0 $90
	ld [hl], a                                       ; $4e8c: $77
	add b                                            ; $4e8d: $80
	sbc c                                            ; $4e8e: $99
	add hl, de                                       ; $4e8f: $19
	rra                                              ; $4e90: $1f
	inc a                                            ; $4e91: $3c
	scf                                              ; $4e92: $37
	inc a                                            ; $4e93: $3c
	rla                                              ; $4e94: $17
	cpl                                              ; $4e95: $2f
	add b                                            ; $4e96: $80
	ccf                                              ; $4e97: $3f
	jr nz, jr_01a_4e2b                               ; $4e98: $20 $91

	cp $fb                                           ; $4e9a: $fe $fb
	ei                                               ; $4e9c: $fb
	sbc l                                            ; $4e9d: $9d
	ei                                               ; $4e9e: $fb
	sub [hl]                                         ; $4e9f: $96
	rst $38                                          ; $4ea0: $ff
	sbc [hl]                                         ; $4ea1: $9e
	ld a, a                                          ; $4ea2: $7f
	ld d, c                                          ; $4ea3: $51
	ld a, [hl]                                       ; $4ea4: $7e
	ld c, c                                          ; $4ea5: $49
	ld a, $25                                        ; $4ea6: $3e $25
	ld b, a                                          ; $4ea8: $47
	jr nz, jr_01a_4e30                               ; $4ea9: $20 $85

	rst SubAFromHL                                          ; $4eab: $d7
	rst $38                                          ; $4eac: $ff
	rst $38                                          ; $4ead: $ff
	cp c                                             ; $4eae: $b9
	rst GetHLinHL                                          ; $4eaf: $cf
	add hl, sp                                       ; $4eb0: $39
	rst SubAFromDE                                          ; $4eb1: $df
	ld l, c                                          ; $4eb2: $69
	rst $38                                          ; $4eb3: $ff
	ld a, l                                          ; $4eb4: $7d
	rst $38                                          ; $4eb5: $ff
	add hl, bc                                       ; $4eb6: $09
	cp $92                                           ; $4eb7: $fe $92
	cp $b2                                           ; $4eb9: $fe $b2
	ld a, [hl-]                                      ; $4ebb: $3a
	cpl                                              ; $4ebc: $2f
	ld de, $081f                                     ; $4ebd: $11 $1f $08
	rrca                                             ; $4ec0: $0f
	inc b                                            ; $4ec1: $04
	rlca                                             ; $4ec2: $07
	inc b                                            ; $4ec3: $04
	rlca                                             ; $4ec4: $07
	cpl                                              ; $4ec5: $2f
	and b                                            ; $4ec6: $a0
	sub l                                            ; $4ec7: $95
	xor h                                            ; $4ec8: $ac
	db $fc                                           ; $4ec9: $fc
	ld b, h                                          ; $4eca: $44
	db $fc                                           ; $4ecb: $fc
	ld [$08f8], sp                                   ; $4ecc: $08 $f8 $08
	ld hl, sp+$10                                    ; $4ecf: $f8 $10
	ldh a, [$27]                                     ; $4ed1: $f0 $27
	jr nz, @+$49                                     ; $4ed3: $20 $47

jr_01a_4ed5:
	add b                                            ; $4ed5: $80
	sub c                                            ; $4ed6: $91
	ld a, [hl]                                       ; $4ed7: $7e
	ld a, a                                          ; $4ed8: $7f
	rra                                              ; $4ed9: $1f
	dec e                                            ; $4eda: $1d
	ld a, e                                          ; $4edb: $7b
	ld a, [hl]                                       ; $4edc: $7e
	ld a, a                                          ; $4edd: $7f
	ld c, [hl]                                       ; $4ede: $4e
	rst $38                                          ; $4edf: $ff
	sub [hl]                                         ; $4ee0: $96
	rst $38                                          ; $4ee1: $ff
	sbc c                                            ; $4ee2: $99
	or $95                                           ; $4ee3: $f6 $95
	ld a, [bc]                                       ; $4ee5: $0a
	and b                                            ; $4ee6: $a0
	sub h                                            ; $4ee7: $94
	sub b                                            ; $4ee8: $90
	cp $8f                                           ; $4ee9: $fe $8f
	ld a, c                                          ; $4eeb: $79
	ld c, a                                          ; $4eec: $4f
	jr c, jr_01a_4f2e                                ; $4eed: $38 $3f

	ld c, $0f                                        ; $4eef: $0e $0f
	ld [bc], a                                       ; $4ef1: $02
	inc bc                                           ; $4ef2: $03
	daa                                              ; $4ef3: $27
	jr nz, jr_01a_4ed5                               ; $4ef4: $20 $df

	rlca                                             ; $4ef6: $07
	adc e                                            ; $4ef7: $8b
	jr jr_01a_4f19                                   ; $4ef8: $18 $1f

	daa                                              ; $4efa: $27
	jr c, jr_01a_4f4c                                ; $4efb: $38 $4f

	ld [hl], a                                       ; $4efd: $77
	ld c, b                                          ; $4efe: $48
	ld a, a                                          ; $4eff: $7f
	sub l                                            ; $4f00: $95
	rst $38                                          ; $4f01: $ff
	push hl                                          ; $4f02: $e5
	rst $38                                          ; $4f03: $ff
	xor l                                            ; $4f04: $ad
	cp d                                             ; $4f05: $ba
	rra                                              ; $4f06: $1f
	ld d, $0b                                        ; $4f07: $16 $0b
	ld d, $2f                                        ; $4f09: $16 $2f
	ld a, $7b                                        ; $4f0b: $3e $7b
	cp $80                                           ; $4f0d: $fe $80
	add hl, sp                                       ; $4f0f: $39
	ld l, $3d                                        ; $4f10: $2e $3d
	rra                                              ; $4f12: $1f
	inc de                                           ; $4f13: $13
	nop                                              ; $4f14: $00
	nop                                              ; $4f15: $00
	ld a, b                                          ; $4f16: $78
	ld a, b                                          ; $4f17: $78
	add h                                            ; $4f18: $84

jr_01a_4f19:
	db $fc                                           ; $4f19: $fc
	ldh [c], a                                       ; $4f1a: $e2
	ld e, $f2                                        ; $4f1b: $1e $f2
	xor $19                                          ; $4f1d: $ee $19
	rst FarCall                                          ; $4f1f: $f7
	add hl, hl                                       ; $4f20: $29
	rst $38                                          ; $4f21: $ff
	dec h                                            ; $4f22: $25
	rst $38                                          ; $4f23: $ff
	or l                                             ; $4f24: $b5
	rst SubAFromDE                                          ; $4f25: $df
	ld sp, hl                                        ; $4f26: $f9
	ld l, a                                          ; $4f27: $6f
	cp l                                             ; $4f28: $bd
	ld [hl], a                                       ; $4f29: $77
	db $fd                                           ; $4f2a: $fd
	ld h, a                                          ; $4f2b: $67
	db $fd                                           ; $4f2c: $fd
	ld h, a                                          ; $4f2d: $67

jr_01a_4f2e:
	sub a                                            ; $4f2e: $97
	ld sp, hl                                        ; $4f2f: $f9
	adc a                                            ; $4f30: $8f
	pop af                                           ; $4f31: $f1
	sbc a                                            ; $4f32: $9f
	ld a, [$0ffe]                                    ; $4f33: $fa $fe $0f
	add hl, bc                                       ; $4f36: $09
	ld a, d                                          ; $4f37: $7a
	pop bc                                           ; $4f38: $c1
	sbc c                                            ; $4f39: $99
	ld [de], a                                       ; $4f3a: $12
	rrca                                             ; $4f3b: $0f
	rrca                                             ; $4f3c: $0f
	ld b, $07                                        ; $4f3d: $06 $07
	ld [bc], a                                       ; $4f3f: $02
	ld a, e                                          ; $4f40: $7b
	cp $7f                                           ; $4f41: $fe $7f
	ld a, [$03de]                                    ; $4f43: $fa $de $03
	ld a, a                                          ; $4f46: $7f
	sub l                                            ; $4f47: $95
	sbc d                                            ; $4f48: $9a
	inc bc                                           ; $4f49: $03
	rlca                                             ; $4f4a: $07
	inc b                                            ; $4f4b: $04

jr_01a_4f4c:
	ld [$6f0f], sp                                   ; $4f4c: $08 $0f $6f
	and b                                            ; $4f4f: $a0
	sub h                                            ; $4f50: $94
	inc l                                            ; $4f51: $2c
	db $fc                                           ; $4f52: $fc
	call nz, Call_01a_5c7c                           ; $4f53: $c4 $7c $5c
	or b                                             ; $4f56: $b0
	db $fc                                           ; $4f57: $fc
	db $f4                                           ; $4f58: $f4
	cp b                                             ; $4f59: $b8
	ld hl, sp-$58                                    ; $4f5a: $f8 $a8
	ld a, e                                          ; $4f5c: $7b
	cp $8f                                           ; $4f5d: $fe $8f
	sbc b                                            ; $4f5f: $98
	ld hl, sp-$10                                    ; $4f60: $f8 $f0
	ldh a, [$e0]                                     ; $4f62: $f0 $e0
	and b                                            ; $4f64: $a0
	ldh [$e0], a                                     ; $4f65: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $4f67: $f0 $90
	sbc b                                            ; $4f69: $98
	ld hl, sp-$78                                    ; $4f6a: $f8 $88
	ld hl, sp-$04                                    ; $4f6c: $f8 $fc
	db $fc                                           ; $4f6e: $fc
	inc sp                                           ; $4f6f: $33
	add b                                            ; $4f70: $80
	ld a, [hl]                                       ; $4f71: $7e
	ld c, d                                          ; $4f72: $4a
	ld [hl], a                                       ; $4f73: $77
	add b                                            ; $4f74: $80
	ld a, [hl]                                       ; $4f75: $7e
	rst JumpTable                                          ; $4f76: $c7
	daa                                              ; $4f77: $27
	add b                                            ; $4f78: $80
	sbc [hl]                                         ; $4f79: $9e
	rrca                                             ; $4f7a: $0f
	ld a, e                                          ; $4f7b: $7b
	add d                                            ; $4f7c: $82
	ld a, a                                          ; $4f7d: $7f
	ld a, [hl]                                       ; $4f7e: $7e
	sbc [hl]                                         ; $4f7f: $9e
	ld d, a                                          ; $4f80: $57
	ld [hl], a                                       ; $4f81: $77
	add b                                            ; $4f82: $80
	add b                                            ; $4f83: $80
	ldh [c], a                                       ; $4f84: $e2
	cp $00                                           ; $4f85: $fe $00
	nop                                              ; $4f87: $00
	ld e, $1e                                        ; $4f88: $1e $1e
	ld hl, $473f                                     ; $4f8a: $21 $3f $47
	ld a, b                                          ; $4f8d: $78
	ld c, a                                          ; $4f8e: $4f
	ld [hl], a                                       ; $4f8f: $77
	sbc b                                            ; $4f90: $98
	rst AddAOntoHL                                          ; $4f91: $ef
	sub h                                            ; $4f92: $94
	rst $38                                          ; $4f93: $ff
	and h                                            ; $4f94: $a4
	rst $38                                          ; $4f95: $ff
	xor l                                            ; $4f96: $ad
	ei                                               ; $4f97: $fb
	sbc a                                            ; $4f98: $9f
	or $bb                                           ; $4f99: $f6 $bb
	xor $bf                                          ; $4f9b: $ee $bf
	and $bf                                          ; $4f9d: $e6 $bf
	and $9f                                          ; $4f9f: $e6 $9f
	di                                               ; $4fa1: $f3
	adc a                                            ; $4fa2: $8f
	sbc l                                            ; $4fa3: $9d
	db $fc                                           ; $4fa4: $fc

jr_01a_4fa5:
	ld b, a                                          ; $4fa5: $47
	ld a, d                                          ; $4fa6: $7a
	cp h                                             ; $4fa7: $bc
	rst SubAFromDE                                          ; $4fa8: $df
	ldh [$8b], a                                     ; $4fa9: $e0 $8b
	jr jr_01a_4fa5                                   ; $4fab: $18 $f8

	db $e4                                           ; $4fad: $e4
	inc e                                            ; $4fae: $1c
	ldh a, [c]                                       ; $4faf: $f2
	xor $12                                          ; $4fb0: $ee $12
	cp $a9                                           ; $4fb2: $fe $a9
	rst $38                                          ; $4fb4: $ff
	and a                                            ; $4fb5: $a7
	rst $38                                          ; $4fb6: $ff
	or l                                             ; $4fb7: $b5
	ld e, l                                          ; $4fb8: $5d
	ld hl, sp+$68                                    ; $4fb9: $f8 $68
	or b                                             ; $4fbb: $b0
	ld l, b                                          ; $4fbc: $68

jr_01a_4fbd:
	db $f4                                           ; $4fbd: $f4
	ld a, h                                          ; $4fbe: $7c
	ld a, e                                          ; $4fbf: $7b
	cp $93                                           ; $4fc0: $fe $93
	inc e                                            ; $4fc2: $1c
	db $f4                                           ; $4fc3: $f4
	cp h                                             ; $4fc4: $bc
	ldh a, [$f8]                                     ; $4fc5: $f0 $f8
	dec bc                                           ; $4fc7: $0b
	inc c                                            ; $4fc8: $0c
	rrca                                             ; $4fc9: $0f
	ld bc, $020f                                     ; $4fca: $01 $0f $02
	rlca                                             ; $4fcd: $07
	ld a, e                                          ; $4fce: $7b
	ld b, [hl]                                       ; $4fcf: $46
	cpl                                              ; $4fd0: $2f
	ld b, b                                          ; $4fd1: $40
	ld h, $e0                                        ; $4fd2: $26 $e0
	sbc l                                            ; $4fd4: $9d
	ld l, $3f                                        ; $4fd5: $2e $3f
	ld [hl], a                                       ; $4fd7: $77
	ld h, b                                          ; $4fd8: $60
	sbc l                                            ; $4fd9: $9d
	inc bc                                           ; $4fda: $03
	rra                                              ; $4fdb: $1f
	ld h, $e0                                        ; $4fdc: $26 $e0
	sbc l                                            ; $4fde: $9d
	ld l, l                                          ; $4fdf: $6d
	rst FarCall                                          ; $4fe0: $f7
	ld a, e                                          ; $4fe1: $7b
	ld h, b                                          ; $4fe2: $60
	sbc h                                            ; $4fe3: $9c
	rst SubAFromDE                                          ; $4fe4: $df
	ldh a, [c]                                       ; $4fe5: $f2
	ld a, $de                                        ; $4fe6: $3e $de
	rlca                                             ; $4fe8: $07
	sbc d                                            ; $4fe9: $9a
	inc b                                            ; $4fea: $04
	rrca                                             ; $4feb: $0f
	ld [$0b0f], sp                                   ; $4fec: $08 $0f $0b
	daa                                              ; $4fef: $27
	and b                                            ; $4ff0: $a0
	sub l                                            ; $4ff1: $95
	add sp, $18                                      ; $4ff2: $e8 $18
	db $fc                                           ; $4ff4: $fc
	call nz, $e43c                                   ; $4ff5: $c4 $3c $e4
	ld hl, sp-$08                                    ; $4ff8: $f8 $f8
	sub b                                            ; $4ffa: $90
	ldh a, [$2e]                                     ; $4ffb: $f0 $2e
	ldh [$df], a                                     ; $4ffd: $e0 $df
	inc bc                                           ; $4fff: $03
	rst SubAFromDE                                          ; $5000: $df
	ld bc, $33df                                     ; $5001: $01 $df $33
	ld a, [hl]                                       ; $5004: $7e
	ld a, [bc]                                       ; $5005: $0a
	ld a, [hl]                                       ; $5006: $7e
	ld [bc], a                                       ; $5007: $02
	adc a                                            ; $5008: $8f
	dec de                                           ; $5009: $1b
	rra                                              ; $500a: $1f
	dec h                                            ; $500b: $25
	ccf                                              ; $500c: $3f
	add hl, hl                                       ; $500d: $29
	ld a, $4d                                        ; $500e: $3e $4d
	ld a, [hl]                                       ; $5010: $7e
	ld c, l                                          ; $5011: $4d
	ld a, d                                          ; $5012: $7a
	ld e, a                                          ; $5013: $5f
	halt                                             ; $5014: $76
	ld e, e                                          ; $5015: $5b
	ld a, [hl]                                       ; $5016: $7e
	ccf                                              ; $5017: $3f
	ld [hl], $76                                     ; $5018: $36 $76
	ld e, [hl]                                       ; $501a: $5e
	sub b                                            ; $501b: $90

jr_01a_501c:
	rlca                                             ; $501c: $07
	inc d                                            ; $501d: $14
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	ldh a, [$f0]                                     ; $5020: $f0 $f0
	jr jr_01a_501c                                   ; $5022: $18 $f8

	add h                                            ; $5024: $84
	db $fc                                           ; $5025: $fc
	ld h, d                                          ; $5026: $62
	cp $9a                                           ; $5027: $fe $9a
	cp $4d                                           ; $5029: $fe $4d
	ld a, e                                          ; $502b: $7b
	jr nz, jr_01a_4fbd                               ; $502c: $20 $8f

	and d                                            ; $502e: $a2
	cp $b2                                           ; $502f: $fe $b2
	ld e, [hl]                                       ; $5031: $5e
	ld sp, hl                                        ; $5032: $f9
	ld l, a                                          ; $5033: $6f
	cp c                                             ; $5034: $b9
	ld a, a                                          ; $5035: $7f
	ld sp, hl                                        ; $5036: $f9
	ld l, a                                          ; $5037: $6f
	ld sp, hl                                        ; $5038: $f9
	ld l, a                                          ; $5039: $6f
	ld a, [$fa8e]                                    ; $503a: $fa $8e $fa
	ld e, $7b                                        ; $503d: $1e $7b
	sub c                                            ; $503f: $91
	sbc d                                            ; $5040: $9a
	rlca                                             ; $5041: $07
	add hl, bc                                       ; $5042: $09
	rrca                                             ; $5043: $0f
	rrca                                             ; $5044: $0f
	ld a, [bc]                                       ; $5045: $0a
	ld [hl], a                                       ; $5046: $77
	ld a, [hl]                                       ; $5047: $7e
	ld a, e                                          ; $5048: $7b
	ld a, h                                          ; $5049: $7c
	ld a, e                                          ; $504a: $7b
	add e                                            ; $504b: $83
	call c, $9601                                    ; $504c: $dc $01 $96
	nop                                              ; $504f: $00
	ld [bc], a                                       ; $5050: $02
	inc bc                                           ; $5051: $03
	dec b                                            ; $5052: $05
	rlca                                             ; $5053: $07
	ccf                                              ; $5054: $3f
	ccf                                              ; $5055: $3f
	rlca                                             ; $5056: $07
	rlca                                             ; $5057: $07
	ld [hl], a                                       ; $5058: $77
	jp nz, $e497                                     ; $5059: $c2 $97 $e4

	ld a, h                                          ; $505c: $7c
	ld e, [hl]                                       ; $505d: $5e
	cp d                                             ; $505e: $ba
	cp $f2                                           ; $505f: $fe $f2
	xor h                                            ; $5061: $ac
	db $f4                                           ; $5062: $f4
	ld e, a                                          ; $5063: $5f
	ld a, [hl]                                       ; $5064: $7e
	sub [hl]                                         ; $5065: $96
	ldh a, [$d0]                                     ; $5066: $f0 $d0
	ret nc                                           ; $5068: $d0

	or b                                             ; $5069: $b0
	sub b                                            ; $506a: $90
	ldh a, [rAUD4LEN]                                ; $506b: $f0 $20
	ldh [$fe], a                                     ; $506d: $e0 $fe
	ld a, d                                          ; $506f: $7a
	and b                                            ; $5070: $a0
	scf                                              ; $5071: $37
	and b                                            ; $5072: $a0
	sbc l                                            ; $5073: $9d
	ld sp, hl                                        ; $5074: $f9
	ld a, a                                          ; $5075: $7f
	ld a, e                                          ; $5076: $7b
	cp $8f                                           ; $5077: $fe $8f
	ld e, a                                          ; $5079: $5f
	rst $38                                          ; $507a: $ff
	adc a                                            ; $507b: $8f

Call_01a_507c:
	rst $38                                          ; $507c: $ff
	dec e                                            ; $507d: $1d
	rst $38                                          ; $507e: $ff
	ld sp, hl                                        ; $507f: $f9
	rra                                              ; $5080: $1f
	ld sp, hl                                        ; $5081: $f9
	xor $72                                          ; $5082: $ee $72
	ld e, h                                          ; $5084: $5c
	or h                                             ; $5085: $b4
	ld hl, sp-$08                                    ; $5086: $f8 $f8
	and b                                            ; $5088: $a0
	ld e, e                                          ; $5089: $5b
	ld a, $5f                                        ; $508a: $3e $5f
	ret nz                                           ; $508c: $c0

	cpl                                              ; $508d: $2f
	ld b, b                                          ; $508e: $40
	ld a, a                                          ; $508f: $7f
	cp $9e                                           ; $5090: $fe $9e
	ccf                                              ; $5092: $3f
	ld [hl], d                                       ; $5093: $72
	ld e, $9d                                        ; $5094: $1e $9d
	ld b, $15                                        ; $5096: $06 $15
	rla                                              ; $5098: $17
	and b                                            ; $5099: $a0
	adc [hl]                                         ; $509a: $8e
	ld a, [$face]                                    ; $509b: $fa $ce $fa
	sbc [hl]                                         ; $509e: $9e
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	rrca                                             ; $50a1: $0f
	rrca                                             ; $50a2: $0f
	jr @+$21                                         ; $50a3: $18 $1f

	ld hl, $463f                                     ; $50a5: $21 $3f $46
	ld a, a                                          ; $50a8: $7f
	ld e, c                                          ; $50a9: $59
	ld a, a                                          ; $50aa: $7f
	or d                                             ; $50ab: $b2
	ld a, d                                          ; $50ac: $7a
	add b                                            ; $50ad: $80
	add [hl]                                         ; $50ae: $86
	ld b, l                                          ; $50af: $45
	ld a, a                                          ; $50b0: $7f
	ld c, l                                          ; $50b1: $4d
	ld a, d                                          ; $50b2: $7a
	sbc a                                            ; $50b3: $9f
	ldh a, [$9f]                                     ; $50b4: $f0 $9f
	rst FarCall                                          ; $50b6: $f7
	sbc e                                            ; $50b7: $9b
	or $9f                                           ; $50b8: $f6 $9f
	or $5f                                           ; $50ba: $f6 $5f
	ld [hl], c                                       ; $50bc: $71
	ld e, a                                          ; $50bd: $5f
	ld a, b                                          ; $50be: $78
	ret nz                                           ; $50bf: $c0

	ret nz                                           ; $50c0: $c0

	add b                                            ; $50c1: $80
	add b                                            ; $50c2: $80
	call z, $32cc                                    ; $50c3: $cc $cc $32
	cp $4c                                           ; $50c6: $fe $4c
	ld a, b                                          ; $50c8: $78
	jp z, $a48b                                      ; $50c9: $ca $8b $a4

	db $fc                                           ; $50cc: $fc
	sub h                                            ; $50cd: $94
	ld a, h                                          ; $50ce: $7c
	or d                                             ; $50cf: $b2
	ld a, [hl]                                       ; $50d0: $7e
	or d                                             ; $50d1: $b2
	ld e, [hl]                                       ; $50d2: $5e
	ld a, [$fa0e]                                    ; $50d3: $fa $0e $fa
	ld a, [hl]                                       ; $50d6: $7e
	cp h                                             ; $50d7: $bc
	ld l, h                                          ; $50d8: $6c
	db $f4                                           ; $50d9: $f4
	ld l, h                                          ; $50da: $6c
	db $f4                                           ; $50db: $f4
	sbc h                                            ; $50dc: $9c
	ldh [$28], a                                     ; $50dd: $e0 $28
	ld [de], a                                       ; $50df: $12
	ret nz                                           ; $50e0: $c0

	sbc l                                            ; $50e1: $9d
	jr c, jr_01a_50eb                                ; $50e2: $38 $07

	dec hl                                           ; $50e4: $2b
	add b                                            ; $50e5: $80
	ld l, d                                          ; $50e6: $6a
	ret nz                                           ; $50e7: $c0

	ld a, a                                          ; $50e8: $7f
	add b                                            ; $50e9: $80
	sub h                                            ; $50ea: $94

jr_01a_50eb:
	ld a, $e0                                        ; $50eb: $3e $e0
	db $10                                           ; $50ed: $10
	ldh a, [$98]                                     ; $50ee: $f0 $98
	ld hl, sp+$48                                    ; $50f0: $f8 $48
	ld d, b                                          ; $50f2: $50
	or b                                             ; $50f3: $b0
	ldh a, [$f0]                                     ; $50f4: $f0 $f0
	daa                                              ; $50f6: $27
	jr nz, jr_01a_5176                               ; $50f7: $20 $7d

	cp a                                             ; $50f9: $bf
	add b                                            ; $50fa: $80
	db $10                                           ; $50fb: $10
	rra                                              ; $50fc: $1f
	jr nz, @+$41                                     ; $50fd: $20 $3f

	ld b, c                                          ; $50ff: $41
	ld a, a                                          ; $5100: $7f
	ld b, e                                          ; $5101: $43
	ld a, [hl]                                       ; $5102: $7e
	add e                                            ; $5103: $83
	cp $87                                           ; $5104: $fe $87
	db $fd                                           ; $5106: $fd
	adc a                                            ; $5107: $8f
	ld a, [$fd87]                                    ; $5108: $fa $87 $fd
	ld b, e                                          ; $510b: $43
	ld a, [hl]                                       ; $510c: $7e
	ld b, c                                          ; $510d: $41
	ld a, a                                          ; $510e: $7f
	jr nz, jr_01a_5150                               ; $510f: $20 $3f

	jr jr_01a_5132                                   ; $5111: $18 $1f

	ld b, $07                                        ; $5113: $06 $07
	ld bc, $c001                                     ; $5115: $01 $01 $c0
	ret nz                                           ; $5118: $c0

	jr nc, @-$7c                                     ; $5119: $30 $82

	ldh a, [$08]                                     ; $511b: $f0 $08
	ld hl, sp+$04                                    ; $511d: $f8 $04
	db $fc                                           ; $511f: $fc
	ld b, h                                          ; $5120: $44
	db $fc                                           ; $5121: $fc
	ldh [c], a                                       ; $5122: $e2
	cp [hl]                                          ; $5123: $be
	ldh [c], a                                       ; $5124: $e2
	cp [hl]                                          ; $5125: $be
	pop hl                                           ; $5126: $e1
	ccf                                              ; $5127: $3f
	pop hl                                           ; $5128: $e1
	rst $38                                          ; $5129: $ff
	pop hl                                           ; $512a: $e1
	ccf                                              ; $512b: $3f
	ldh [c], a                                       ; $512c: $e2
	ld a, $c2                                        ; $512d: $3e $c2
	cp $04                                           ; $512f: $fe $04
	db $fc                                           ; $5131: $fc

jr_01a_5132:
	ld [bc], a                                       ; $5132: $02
	cp $19                                           ; $5133: $fe $19
	rst $38                                          ; $5135: $ff
	rst SubAFromBC                                          ; $5136: $e7
	rst SubAFromBC                                          ; $5137: $e7
	halt                                             ; $5138: $76
	ld e, $77                                        ; $5139: $1e $77
	cp [hl]                                          ; $513b: $be
	ld a, a                                          ; $513c: $7f
	ld e, $98                                        ; $513d: $1e $98
	ld b, b                                          ; $513f: $40
	ld a, a                                          ; $5140: $7f
	ld b, c                                          ; $5141: $41
	ld a, a                                          ; $5142: $7f
	add b                                            ; $5143: $80
	rst $38                                          ; $5144: $ff
	add c                                            ; $5145: $81
	ld a, e                                          ; $5146: $7b
	cp $7f                                           ; $5147: $fe $7f
	ret nz                                           ; $5149: $c0

	ld a, a                                          ; $514a: $7f
	cp $77                                           ; $514b: $fe $77
	ldh a, [hDisp1_WX]                                     ; $514d: $f0 $96
	sbc h                                            ; $514f: $9c

jr_01a_5150:
	rst $38                                          ; $5150: $ff
	db $e3                                           ; $5151: $e3
	db $e3                                           ; $5152: $e3
	nop                                              ; $5153: $00
	nop                                              ; $5154: $00
	add b                                            ; $5155: $80
	add b                                            ; $5156: $80
	ld h, b                                          ; $5157: $60
	ld a, e                                          ; $5158: $7b
	ld a, e                                          ; $5159: $7b
	ld [hl], a                                       ; $515a: $77
	cp h                                             ; $515b: $bc
	ld [hl], a                                       ; $515c: $77
	call z, $fe77                                    ; $515d: $cc $77 $fe
	ld a, a                                          ; $5160: $7f
	ld d, d                                          ; $5161: $52
	ld a, a                                          ; $5162: $7f
	cp $7f                                           ; $5163: $fe $7f
	ldh a, [$7f]                                     ; $5165: $f0 $7f
	db $ec                                           ; $5167: $ec
	ld a, a                                          ; $5168: $7f
	add sp, -$21                                     ; $5169: $e8 $df
	add b                                            ; $516b: $80
	sbc b                                            ; $516c: $98
	inc bc                                           ; $516d: $03
	rst $38                                          ; $516e: $ff
	rst SubAFromDE                                          ; $516f: $df
	dec a                                            ; $5170: $3d
	add b                                            ; $5171: $80
	inc de                                           ; $5172: $13
	rra                                              ; $5173: $1f
	ld sp, hl                                        ; $5174: $f9
	rst $38                                          ; $5175: $ff

jr_01a_5176:
	ld b, a                                          ; $5176: $47
	ld a, a                                          ; $5177: $7f
	ld [hl-], a                                      ; $5178: $32
	ccf                                              ; $5179: $3f
	dec h                                            ; $517a: $25
	ccf                                              ; $517b: $3f
	ld b, h                                          ; $517c: $44
	ld a, a                                          ; $517d: $7f
	ld c, h                                          ; $517e: $4c
	ld a, a                                          ; $517f: $7f
	ld c, [hl]                                       ; $5180: $4e
	ld a, e                                          ; $5181: $7b
	ccf                                              ; $5182: $3f
	dec a                                            ; $5183: $3d
	dec hl                                           ; $5184: $2b
	ld [hl], $3f                                     ; $5185: $36 $3f
	ld h, $1f                                        ; $5187: $26 $1f
	ld d, $0f                                        ; $5189: $16 $0f
	add hl, bc                                       ; $518b: $09
	rrca                                             ; $518c: $0f
	inc c                                            ; $518d: $0c
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	ret nz                                           ; $5190: $c0

	add b                                            ; $5191: $80
	ret nz                                           ; $5192: $c0

	inc [hl]                                         ; $5193: $34
	db $f4                                           ; $5194: $f4
	adc [hl]                                         ; $5195: $8e
	cp $fc                                           ; $5196: $fe $fc
	db $fc                                           ; $5198: $fc
	adc d                                            ; $5199: $8a
	cp $26                                           ; $519a: $fe $26
	cp $96                                           ; $519c: $fe $96
	cp $d5                                           ; $519e: $fe $d5
	rst $38                                          ; $51a0: $ff
	db $fd                                           ; $51a1: $fd
	cp a                                             ; $51a2: $bf
	ld a, [$be6e]                                    ; $51a3: $fa $6e $be
	ld [hl], d                                       ; $51a6: $72
	cp $62                                           ; $51a7: $fe $62
	db $fc                                           ; $51a9: $fc
	ld h, h                                          ; $51aa: $64
	ld hl, sp-$78                                    ; $51ab: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $51ad: $f0 $10
	ld a, [bc]                                       ; $51af: $0a
	rrca                                             ; $51b0: $0f
	sub b                                            ; $51b1: $90
	db $10                                           ; $51b2: $10
	rra                                              ; $51b3: $1f
	inc l                                            ; $51b4: $2c
	ccf                                              ; $51b5: $3f
	ld l, $3b                                        ; $51b6: $2e $3b
	ld l, $3b                                        ; $51b8: $2e $3b
	ld a, a                                          ; $51ba: $7f
	ld a, a                                          ; $51bb: $7f
	rst $38                                          ; $51bc: $ff
	add b                                            ; $51bd: $80
	ld a, a                                          ; $51be: $7f
	ld a, a                                          ; $51bf: $7f
	rrca                                             ; $51c0: $0f
	ld a, e                                          ; $51c1: $7b
	res 3, [hl]                                      ; $51c2: $cb $9e

jr_01a_51c4:
	ld de, $1fde                                     ; $51c4: $11 $de $1f
	sbc [hl]                                         ; $51c7: $9e
	inc hl                                           ; $51c8: $23

jr_01a_51c9:
	sbc $3f                                          ; $51c9: $de $3f
	db $fd                                           ; $51cb: $fd
	sub c                                            ; $51cc: $91
	adc b                                            ; $51cd: $88
	ld hl, sp+$04                                    ; $51ce: $f8 $04
	db $fc                                           ; $51d0: $fc
	add h                                            ; $51d1: $84
	db $fc                                           ; $51d2: $fc
	ld [hl], d                                       ; $51d3: $72
	cp $7a                                           ; $51d4: $fe $7a
	adc $fc                                          ; $51d6: $ce $fc
	db $fc                                           ; $51d8: $fc
	cp $06                                           ; $51d9: $fe $06
	db $dd                                           ; $51db: $dd
	db $fc                                           ; $51dc: $fc
	sbc b                                            ; $51dd: $98
	call c, $c8fc                                    ; $51de: $dc $fc $c8
	ld hl, sp+$78                                    ; $51e1: $f8 $78
	ld a, b                                          ; $51e3: $78
	ld c, h                                          ; $51e4: $4c
	sbc $7c                                          ; $51e5: $de $7c
	ei                                               ; $51e7: $fb
	rst SubAFromDE                                          ; $51e8: $df
	inc bc                                           ; $51e9: $03
	sub h                                            ; $51ea: $94
	ld a, $3f                                        ; $51eb: $3e $3f
	ld de, $661f                                     ; $51ed: $11 $1f $66
	ld a, a                                          ; $51f0: $7f
	sbc d                                            ; $51f1: $9a
	rst $38                                          ; $51f2: $ff
	ld [hl], e                                       ; $51f3: $73
	ld a, a                                          ; $51f4: $7f
	inc h                                            ; $51f5: $24
	ld a, e                                          ; $51f6: $7b
	ld a, [hl]                                       ; $51f7: $7e
	ld a, a                                          ; $51f8: $7f
	cp $9a                                           ; $51f9: $fe $9a
	ld c, [hl]                                       ; $51fb: $4e
	ld a, a                                          ; $51fc: $7f
	ccf                                              ; $51fd: $3f
	scf                                              ; $51fe: $37
	dec l                                            ; $51ff: $2d
	ld [hl], a                                       ; $5200: $77
	ld a, [hl]                                       ; $5201: $7e
	add e                                            ; $5202: $83
	db $10                                           ; $5203: $10
	rrca                                             ; $5204: $0f
	add hl, bc                                       ; $5205: $09
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	add sp, -$18                                     ; $5208: $e8 $e8
	inc e                                            ; $520a: $1c
	db $fc                                           ; $520b: $fc
	adc b                                            ; $520c: $88
	ld hl, sp+$74                                    ; $520d: $f8 $74
	db $fc                                           ; $520f: $fc
	sbc d                                            ; $5210: $9a
	cp $06                                           ; $5211: $fe $06
	cp $a5                                           ; $5213: $fe $a5
	rst $38                                          ; $5215: $ff
	sub l                                            ; $5216: $95
	rst $38                                          ; $5217: $ff
	push de                                          ; $5218: $d5
	rst $38                                          ; $5219: $ff
	ld a, [$feae]                                    ; $521a: $fa $ae $fe
	ld a, d                                          ; $521d: $7a
	sbc $77                                          ; $521e: $de $77
	add b                                            ; $5220: $80
	sbc h                                            ; $5221: $9c
	ld [$90f0], sp                                   ; $5222: $08 $f0 $90
	ld [hl], a                                       ; $5225: $77
	add b                                            ; $5226: $80
	sbc c                                            ; $5227: $99
	jr z, @+$41                                      ; $5228: $28 $3f

	ld e, h                                          ; $522a: $5c
	ld [hl], a                                       ; $522b: $77
	ld e, h                                          ; $522c: $5c
	ld [hl], a                                       ; $522d: $77
	cpl                                              ; $522e: $2f
	add b                                            ; $522f: $80
	ccf                                              ; $5230: $3f
	jr nz, jr_01a_51c4                               ; $5231: $20 $91

	cp $fb                                           ; $5233: $fe $fb
	ei                                               ; $5235: $fb
	sbc l                                            ; $5236: $9d
	ei                                               ; $5237: $fb
	sub [hl]                                         ; $5238: $96
	cp a                                             ; $5239: $bf
	cp $df                                           ; $523a: $fe $df
	pop af                                           ; $523c: $f1
	ld c, [hl]                                       ; $523d: $4e
	ld a, c                                          ; $523e: $79
	ld h, $3d                                        ; $523f: $26 $3d
	ld b, a                                          ; $5241: $47
	jr nz, jr_01a_51c9                               ; $5242: $20 $85

	sub $fe                                          ; $5244: $d6 $fe
	rst $38                                          ; $5246: $ff
	cp c                                             ; $5247: $b9
	rst GetHLinHL                                          ; $5248: $cf
	add hl, sp                                       ; $5249: $39
	rst SubAFromDE                                          ; $524a: $df
	ld l, l                                          ; $524b: $6d
	ld sp, hl                                        ; $524c: $f9
	ld a, a                                          ; $524d: $7f
	ld sp, hl                                        ; $524e: $f9
	rrca                                             ; $524f: $0f
	ldh a, [c]                                       ; $5250: $f2
	sbc [hl]                                         ; $5251: $9e
	ldh a, [c]                                       ; $5252: $f2
	cp [hl]                                          ; $5253: $be
	jr nz, @+$41                                     ; $5254: $20 $3f

	db $10                                           ; $5256: $10
	rra                                              ; $5257: $1f
	ld [$040f], sp                                   ; $5258: $08 $0f $04
	rlca                                             ; $525b: $07
	inc b                                            ; $525c: $04
	rlca                                             ; $525d: $07
	cpl                                              ; $525e: $2f
	and b                                            ; $525f: $a0
	sbc h                                            ; $5260: $9c
	ld [hl+], a                                      ; $5261: $22
	cp $04                                           ; $5262: $fe $04
	ld a, e                                          ; $5264: $7b
	ld h, d                                          ; $5265: $62
	sbc e                                            ; $5266: $9b
	ld [$10f8], sp                                   ; $5267: $08 $f8 $10
	ldh a, [$27]                                     ; $526a: $f0 $27
	jr nz, @+$49                                     ; $526c: $20 $47

jr_01a_526e:
	add b                                            ; $526e: $80
	sub c                                            ; $526f: $91
	ld a, [hl]                                       ; $5270: $7e
	ld a, a                                          ; $5271: $7f
	rra                                              ; $5272: $1f
	dec e                                            ; $5273: $1d
	ld a, e                                          ; $5274: $7b
	ld a, [hl]                                       ; $5275: $7e
	ld a, a                                          ; $5276: $7f
	ld c, [hl]                                       ; $5277: $4e
	rst $38                                          ; $5278: $ff
	sub [hl]                                         ; $5279: $96
	rst $38                                          ; $527a: $ff
	reti                                             ; $527b: $d9


	sub [hl]                                         ; $527c: $96
	push af                                          ; $527d: $f5
	ld a, [bc]                                       ; $527e: $0a
	and b                                            ; $527f: $a0
	sub h                                            ; $5280: $94
	sub b                                            ; $5281: $90
	ld b, d                                          ; $5282: $42
	ld a, a                                          ; $5283: $7f
	jr nz, jr_01a_52c5                               ; $5284: $20 $3f

	jr nc, jr_01a_52c7                               ; $5286: $30 $3f

	inc e                                            ; $5288: $1c
	rra                                              ; $5289: $1f
	ld [bc], a                                       ; $528a: $02
	inc bc                                           ; $528b: $03
	daa                                              ; $528c: $27
	jr nz, jr_01a_526e                               ; $528d: $20 $df

	rlca                                             ; $528f: $07
	adc e                                            ; $5290: $8b
	jr jr_01a_52b2                                   ; $5291: $18 $1f

	daa                                              ; $5293: $27
	jr c, jr_01a_52e5                                ; $5294: $38 $4f

	ld [hl], a                                       ; $5296: $77
	ld c, b                                          ; $5297: $48
	ld a, a                                          ; $5298: $7f
	sub l                                            ; $5299: $95
	rst $38                                          ; $529a: $ff
	push hl                                          ; $529b: $e5
	rst $38                                          ; $529c: $ff
	xor l                                            ; $529d: $ad
	cp d                                             ; $529e: $ba
	rra                                              ; $529f: $1f
	ld d, $0b                                        ; $52a0: $16 $0b
	ld d, $2f                                        ; $52a2: $16 $2f
	ld a, $7b                                        ; $52a4: $3e $7b
	cp $80                                           ; $52a6: $fe $80
	add hl, sp                                       ; $52a8: $39
	ld l, $3d                                        ; $52a9: $2e $3d
	rra                                              ; $52ab: $1f
	inc de                                           ; $52ac: $13
	nop                                              ; $52ad: $00
	nop                                              ; $52ae: $00
	ld a, b                                          ; $52af: $78
	ld a, b                                          ; $52b0: $78
	add h                                            ; $52b1: $84

jr_01a_52b2:
	db $fc                                           ; $52b2: $fc
	ldh [c], a                                       ; $52b3: $e2
	ld e, $f2                                        ; $52b4: $1e $f2
	xor $19                                          ; $52b6: $ee $19
	rst FarCall                                          ; $52b8: $f7
	add hl, hl                                       ; $52b9: $29
	rst $38                                          ; $52ba: $ff
	dec h                                            ; $52bb: $25
	rst $38                                          ; $52bc: $ff
	or l                                             ; $52bd: $b5
	rst SubAFromDE                                          ; $52be: $df
	ld sp, hl                                        ; $52bf: $f9
	ld l, a                                          ; $52c0: $6f
	cp l                                             ; $52c1: $bd
	ld [hl], a                                       ; $52c2: $77
	db $fd                                           ; $52c3: $fd
	ld h, a                                          ; $52c4: $67

jr_01a_52c5:
	db $fd                                           ; $52c5: $fd
	ld h, a                                          ; $52c6: $67

jr_01a_52c7:
	adc [hl]                                         ; $52c7: $8e
	ld sp, hl                                        ; $52c8: $f9
	adc a                                            ; $52c9: $8f
	pop af                                           ; $52ca: $f1
	sbc a                                            ; $52cb: $9f
	ld a, [$02fe]                                    ; $52cc: $fa $fe $02
	rlca                                             ; $52cf: $07
	dec bc                                           ; $52d0: $0b
	rrca                                             ; $52d1: $0f
	dec bc                                           ; $52d2: $0b
	ld c, $0b                                        ; $52d3: $0e $0b
	rrca                                             ; $52d5: $0f
	ld b, $07                                        ; $52d6: $06 $07
	ld [bc], a                                       ; $52d8: $02
	ld a, e                                          ; $52d9: $7b
	cp $7f                                           ; $52da: $fe $7f

Call_01a_52dc:
	ld a, [$03de]                                    ; $52dc: $fa $de $03
	ld a, a                                          ; $52df: $7f
	sub l                                            ; $52e0: $95
	sbc d                                            ; $52e1: $9a
	inc bc                                           ; $52e2: $03
	rlca                                             ; $52e3: $07
	inc b                                            ; $52e4: $04

jr_01a_52e5:
	ld [$6f0f], sp                                   ; $52e5: $08 $0f $6f
	and b                                            ; $52e8: $a0
	sub h                                            ; $52e9: $94
	inc l                                            ; $52ea: $2c
	db $fc                                           ; $52eb: $fc
	call nz, Call_01a_507c                           ; $52ec: $c4 $7c $50
	cp h                                             ; $52ef: $bc
	db $f4                                           ; $52f0: $f4
	db $fc                                           ; $52f1: $fc
	cp b                                             ; $52f2: $b8
	ld hl, sp-$58                                    ; $52f3: $f8 $a8
	ld a, e                                          ; $52f5: $7b
	cp $8f                                           ; $52f6: $fe $8f
	sbc b                                            ; $52f8: $98
	ld hl, sp-$10                                    ; $52f9: $f8 $f0
	ldh a, [$e0]                                     ; $52fb: $f0 $e0
	and b                                            ; $52fd: $a0
	ldh [$e0], a                                     ; $52fe: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $5300: $f0 $90
	sbc b                                            ; $5302: $98
	ld hl, sp-$78                                    ; $5303: $f8 $88
	ld hl, sp-$04                                    ; $5305: $f8 $fc
	db $fc                                           ; $5307: $fc
	inc sp                                           ; $5308: $33
	add b                                            ; $5309: $80
	ld a, [hl]                                       ; $530a: $7e
	ld c, d                                          ; $530b: $4a
	ld [hl], a                                       ; $530c: $77
	add b                                            ; $530d: $80
	sbc [hl]                                         ; $530e: $9e
	ld a, [hl-]                                      ; $530f: $3a
	inc hl                                           ; $5310: $23
	add b                                            ; $5311: $80
	sbc [hl]                                         ; $5312: $9e
	rrca                                             ; $5313: $0f
	ld a, e                                          ; $5314: $7b
	add d                                            ; $5315: $82
	ld a, a                                          ; $5316: $7f
	ld a, [hl]                                       ; $5317: $7e
	sbc [hl]                                         ; $5318: $9e
	ld d, a                                          ; $5319: $57
	ld [hl], a                                       ; $531a: $77
	add b                                            ; $531b: $80
	add b                                            ; $531c: $80
	ldh [c], a                                       ; $531d: $e2
	cp $00                                           ; $531e: $fe $00
	nop                                              ; $5320: $00
	ld e, $1e                                        ; $5321: $1e $1e
	ld hl, $473f                                     ; $5323: $21 $3f $47
	ld a, b                                          ; $5326: $78
	ld c, a                                          ; $5327: $4f
	ld [hl], a                                       ; $5328: $77
	sbc b                                            ; $5329: $98
	rst AddAOntoHL                                          ; $532a: $ef
	sub h                                            ; $532b: $94
	rst $38                                          ; $532c: $ff
	and h                                            ; $532d: $a4
	rst $38                                          ; $532e: $ff
	xor l                                            ; $532f: $ad
	ei                                               ; $5330: $fb
	sbc a                                            ; $5331: $9f
	or $bb                                           ; $5332: $f6 $bb
	xor $bf                                          ; $5334: $ee $bf
	and $bf                                          ; $5336: $e6 $bf
	and $9f                                          ; $5338: $e6 $9f
	di                                               ; $533a: $f3
	adc a                                            ; $533b: $8f
	sbc l                                            ; $533c: $9d
	db $fc                                           ; $533d: $fc

jr_01a_533e:
	ld b, a                                          ; $533e: $47
	ld a, d                                          ; $533f: $7a
	cp h                                             ; $5340: $bc
	rst SubAFromDE                                          ; $5341: $df
	ldh [$8b], a                                     ; $5342: $e0 $8b
	jr jr_01a_533e                                   ; $5344: $18 $f8

	db $e4                                           ; $5346: $e4
	inc e                                            ; $5347: $1c
	ldh a, [c]                                       ; $5348: $f2
	xor $12                                          ; $5349: $ee $12
	cp $a9                                           ; $534b: $fe $a9

jr_01a_534d:
	rst $38                                          ; $534d: $ff
	and a                                            ; $534e: $a7
	rst $38                                          ; $534f: $ff
	or l                                             ; $5350: $b5
	ld e, l                                          ; $5351: $5d
	ld hl, sp+$68                                    ; $5352: $f8 $68
	or b                                             ; $5354: $b0
	ld l, b                                          ; $5355: $68
	db $f4                                           ; $5356: $f4
	ld a, h                                          ; $5357: $7c
	ld a, e                                          ; $5358: $7b
	cp $93                                           ; $5359: $fe $93
	inc e                                            ; $535b: $1c
	db $f4                                           ; $535c: $f4
	cp h                                             ; $535d: $bc
	ldh a, [$f8]                                     ; $535e: $f0 $f8
	jr jr_01a_5381                                   ; $5360: $18 $1f

	ld de, $1b1f                                     ; $5362: $11 $1f $1b
	ld e, $0f                                        ; $5365: $1e $0f
	inc hl                                           ; $5367: $23
	ld b, b                                          ; $5368: $40
	ld h, $e0                                        ; $5369: $26 $e0
	sbc l                                            ; $536b: $9d
	ld l, $3f                                        ; $536c: $2e $3f
	ld [hl], a                                       ; $536e: $77
	ld h, b                                          ; $536f: $60
	sbc l                                            ; $5370: $9d
	inc bc                                           ; $5371: $03
	rra                                              ; $5372: $1f
	ld h, $e0                                        ; $5373: $26 $e0
	sbc l                                            ; $5375: $9d
	ld l, l                                          ; $5376: $6d
	rst FarCall                                          ; $5377: $f7
	ld a, e                                          ; $5378: $7b
	ld h, b                                          ; $5379: $60
	sub l                                            ; $537a: $95
	rst SubAFromDE                                          ; $537b: $df
	ldh a, [c]                                       ; $537c: $f2
	ld a, $07                                        ; $537d: $3e $07
	rlca                                             ; $537f: $07
	dec b                                            ; $5380: $05

jr_01a_5381:
	ld b, $09                                        ; $5381: $06 $09
	ld c, $09                                        ; $5383: $0e $09
	inc hl                                           ; $5385: $23
	and b                                            ; $5386: $a0
	sub l                                            ; $5387: $95
	add sp, $38                                      ; $5388: $e8 $38
	call nz, $e4fc                                   ; $538a: $c4 $fc $e4
	ld a, h                                          ; $538d: $7c
	ld hl, sp-$08                                    ; $538e: $f8 $f8
	sub b                                            ; $5390: $90
	ldh a, [$2e]                                     ; $5391: $f0 $2e
	ldh [$df], a                                     ; $5393: $e0 $df
	inc bc                                           ; $5395: $03
	rst SubAFromDE                                          ; $5396: $df
	ld bc, $33df                                     ; $5397: $01 $df $33
	ld a, [hl]                                       ; $539a: $7e
	ld a, [bc]                                       ; $539b: $0a
	ld a, [hl]                                       ; $539c: $7e
	ld [bc], a                                       ; $539d: $02
	adc a                                            ; $539e: $8f
	dec de                                           ; $539f: $1b
	rra                                              ; $53a0: $1f
	dec h                                            ; $53a1: $25
	ccf                                              ; $53a2: $3f
	add hl, hl                                       ; $53a3: $29
	ld a, $4d                                        ; $53a4: $3e $4d
	ld a, [hl]                                       ; $53a6: $7e
	ld c, l                                          ; $53a7: $4d
	ld a, d                                          ; $53a8: $7a
	ld e, a                                          ; $53a9: $5f
	halt                                             ; $53aa: $76
	ld e, e                                          ; $53ab: $5b
	ld a, [hl]                                       ; $53ac: $7e
	ccf                                              ; $53ad: $3f
	ld [hl], $76                                     ; $53ae: $36 $76
	ld e, [hl]                                       ; $53b0: $5e
	sub b                                            ; $53b1: $90

jr_01a_53b2:
	rlca                                             ; $53b2: $07
	inc d                                            ; $53b3: $14
	nop                                              ; $53b4: $00
	nop                                              ; $53b5: $00
	ldh a, [$f0]                                     ; $53b6: $f0 $f0
	jr jr_01a_53b2                                   ; $53b8: $18 $f8

	add h                                            ; $53ba: $84
	db $fc                                           ; $53bb: $fc
	ld h, d                                          ; $53bc: $62
	cp $9a                                           ; $53bd: $fe $9a
	cp $4d                                           ; $53bf: $fe $4d
	ld a, e                                          ; $53c1: $7b
	jr nz, jr_01a_534d                               ; $53c2: $20 $89

	and d                                            ; $53c4: $a2
	cp $b2                                           ; $53c5: $fe $b2
	ld e, [hl]                                       ; $53c7: $5e
	ld sp, hl                                        ; $53c8: $f9
	ld l, a                                          ; $53c9: $6f
	cp c                                             ; $53ca: $b9
	ld a, a                                          ; $53cb: $7f
	ld sp, hl                                        ; $53cc: $f9
	ld l, a                                          ; $53cd: $6f
	ld sp, hl                                        ; $53ce: $f9
	ld l, a                                          ; $53cf: $6f
	ld a, [$fa8e]                                    ; $53d0: $fa $8e $fa
	ld e, $03                                        ; $53d3: $1e $03
	inc bc                                           ; $53d5: $03
	ld b, $07                                        ; $53d6: $06 $07
	dec b                                            ; $53d8: $05
	rlca                                             ; $53d9: $07
	halt                                             ; $53da: $76
	ld e, [hl]                                       ; $53db: $5e
	ld a, l                                          ; $53dc: $7d
	ld d, $7b                                        ; $53dd: $16 $7b
	ld a, h                                          ; $53df: $7c
	ld a, e                                          ; $53e0: $7b
	add e                                            ; $53e1: $83
	call c, $9601                                    ; $53e2: $dc $01 $96
	nop                                              ; $53e5: $00
	ld [bc], a                                       ; $53e6: $02
	inc bc                                           ; $53e7: $03
	dec b                                            ; $53e8: $05
	rlca                                             ; $53e9: $07
	ccf                                              ; $53ea: $3f
	ccf                                              ; $53eb: $3f
	rlca                                             ; $53ec: $07
	rlca                                             ; $53ed: $07
	ld [hl], a                                       ; $53ee: $77
	jp nz, $807f                                     ; $53ef: $c2 $7f $80

	sbc c                                            ; $53f2: $99
	ld d, d                                          ; $53f3: $52
	cp [hl]                                          ; $53f4: $be
	ldh a, [c]                                       ; $53f5: $f2
	cp $b4                                           ; $53f6: $fe $b4
	db $fc                                           ; $53f8: $fc
	ld e, a                                          ; $53f9: $5f
	ld a, [hl]                                       ; $53fa: $7e
	sub [hl]                                         ; $53fb: $96
	ldh a, [$d0]                                     ; $53fc: $f0 $d0
	ret nc                                           ; $53fe: $d0

	or b                                             ; $53ff: $b0
	sub b                                            ; $5400: $90
	ldh a, [rAUD4LEN]                                ; $5401: $f0 $20
	ldh [$fe], a                                     ; $5403: $e0 $fe
	ld a, d                                          ; $5405: $7a
	and b                                            ; $5406: $a0
	dec sp                                           ; $5407: $3b
	and b                                            ; $5408: $a0
	sbc [hl]                                         ; $5409: $9e
	rrca                                             ; $540a: $0f
	ld a, e                                          ; $540b: $7b
	and d                                            ; $540c: $a2
	ld a, a                                          ; $540d: $7f
	sbc [hl]                                         ; $540e: $9e
	adc a                                            ; $540f: $8f
	ld e, a                                          ; $5410: $5f
	rst $38                                          ; $5411: $ff
	adc a                                            ; $5412: $8f
	rst $38                                          ; $5413: $ff
	dec e                                            ; $5414: $1d
	rst $38                                          ; $5415: $ff
	ld sp, hl                                        ; $5416: $f9
	rra                                              ; $5417: $1f
	ld sp, hl                                        ; $5418: $f9
	ldh [c], a                                       ; $5419: $e2
	ld a, [hl]                                       ; $541a: $7e
	ld h, h                                          ; $541b: $64

jr_01a_541c:
	cp h                                             ; $541c: $bc
	ld hl, sp-$08                                    ; $541d: $f8 $f8
	and b                                            ; $541f: $a0
	ld e, e                                          ; $5420: $5b
	ld a, $5f                                        ; $5421: $3e $5f
	ret nz                                           ; $5423: $c0

	inc sp                                           ; $5424: $33
	ld b, b                                          ; $5425: $40
	sbc e                                            ; $5426: $9b
	ld [hl], b                                       ; $5427: $70
	ld e, a                                          ; $5428: $5f
	halt                                             ; $5429: $76
	ccf                                              ; $542a: $3f
	ld [hl], d                                       ; $542b: $72
	ld e, $9d                                        ; $542c: $1e $9d
	ld b, $15                                        ; $542e: $06 $15
	rla                                              ; $5430: $17
	and b                                            ; $5431: $a0
	adc [hl]                                         ; $5432: $8e
	ld a, [$face]                                    ; $5433: $fa $ce $fa
	sbc [hl]                                         ; $5436: $9e
	nop                                              ; $5437: $00
	nop                                              ; $5438: $00
	rrca                                             ; $5439: $0f
	rrca                                             ; $543a: $0f
	jr @+$21                                         ; $543b: $18 $1f

	ld hl, $463f                                     ; $543d: $21 $3f $46
	ld a, a                                          ; $5440: $7f
	ld e, c                                          ; $5441: $59
	ld a, a                                          ; $5442: $7f
	or d                                             ; $5443: $b2
	ld a, d                                          ; $5444: $7a
	add b                                            ; $5445: $80
	add b                                            ; $5446: $80
	ld b, l                                          ; $5447: $45
	ld a, a                                          ; $5448: $7f
	ld c, l                                          ; $5449: $4d
	ld a, d                                          ; $544a: $7a
	sbc a                                            ; $544b: $9f
	ldh a, [$9f]                                     ; $544c: $f0 $9f
	rst FarCall                                          ; $544e: $f7
	sbc e                                            ; $544f: $9b
	or $9f                                           ; $5450: $f6 $9f
	or $5f                                           ; $5452: $f6 $5f
	ld [hl], c                                       ; $5454: $71
	ld e, a                                          ; $5455: $5f
	ld a, b                                          ; $5456: $78
	ret nz                                           ; $5457: $c0

	ret nz                                           ; $5458: $c0

	add b                                            ; $5459: $80
	add b                                            ; $545a: $80
	call z, $32cc                                    ; $545b: $cc $cc $32
	cp $4c                                           ; $545e: $fe $4c
	db $fc                                           ; $5460: $fc
	ret c                                            ; $5461: $d8

	ld hl, sp-$5c                                    ; $5462: $f8 $a4
	db $fc                                           ; $5464: $fc
	sub h                                            ; $5465: $94
	adc [hl]                                         ; $5466: $8e
	ld a, h                                          ; $5467: $7c
	or d                                             ; $5468: $b2
	ld a, [hl]                                       ; $5469: $7e
	or d                                             ; $546a: $b2
	ld e, [hl]                                       ; $546b: $5e
	ld a, [$fa0e]                                    ; $546c: $fa $0e $fa
	ld a, [hl]                                       ; $546f: $7e
	cp h                                             ; $5470: $bc
	ld l, h                                          ; $5471: $6c
	db $f4                                           ; $5472: $f4
	ld l, h                                          ; $5473: $6c
	db $f4                                           ; $5474: $f4
	sbc h                                            ; $5475: $9c
	ldh [$28], a                                     ; $5476: $e0 $28
	ld [de], a                                       ; $5478: $12
	ret nz                                           ; $5479: $c0

	sbc l                                            ; $547a: $9d
	jr c, jr_01a_5484                                ; $547b: $38 $07

	cpl                                              ; $547d: $2f
	add b                                            ; $547e: $80
	ld h, [hl]                                       ; $547f: $66
	ret nz                                           ; $5480: $c0

	ld a, a                                          ; $5481: $7f
	add b                                            ; $5482: $80
	sub h                                            ; $5483: $94

jr_01a_5484:
	ld a, $e0                                        ; $5484: $3e $e0
	db $10                                           ; $5486: $10
	sub b                                            ; $5487: $90
	ld hl, sp-$38                                    ; $5488: $f8 $c8
	ld a, b                                          ; $548a: $78
	ld l, b                                          ; $548b: $68
	cp b                                             ; $548c: $b8
	ldh a, [$f0]                                     ; $548d: $f0 $f0
	daa                                              ; $548f: $27
	jr nz, jr_01a_541c                               ; $5490: $20 $8a

	inc c                                            ; $5492: $0c
	rrca                                             ; $5493: $0f
	db $10                                           ; $5494: $10
	rra                                              ; $5495: $1f
	jr nz, jr_01a_54d7                               ; $5496: $20 $3f

	ld b, c                                          ; $5498: $41
	ld a, a                                          ; $5499: $7f
	ld b, e                                          ; $549a: $43
	ld a, [hl]                                       ; $549b: $7e
	add e                                            ; $549c: $83
	cp $87                                           ; $549d: $fe $87
	db $fd                                           ; $549f: $fd
	adc a                                            ; $54a0: $8f
	ld a, [$fd87]                                    ; $54a1: $fa $87 $fd

jr_01a_54a4:
	ld b, e                                          ; $54a4: $43
	ld a, [hl]                                       ; $54a5: $7e
	ld b, c                                          ; $54a6: $41
	ld a, b                                          ; $54a7: $78
	adc d                                            ; $54a8: $8a
	ld a, a                                          ; $54a9: $7f
	ld c, d                                          ; $54aa: $4a
	ld a, [hl]                                       ; $54ab: $7e
	sub b                                            ; $54ac: $90
	rst SubAFromDE                                          ; $54ad: $df
	ld bc, $c0df                                     ; $54ae: $01 $df $c0
	add c                                            ; $54b1: $81
	jr nc, jr_01a_54a4                               ; $54b2: $30 $f0

	ld [$04f8], sp                                   ; $54b4: $08 $f8 $04
	db $fc                                           ; $54b7: $fc
	ld b, h                                          ; $54b8: $44
	db $fc                                           ; $54b9: $fc
	ldh [c], a                                       ; $54ba: $e2
	cp [hl]                                          ; $54bb: $be
	ldh [c], a                                       ; $54bc: $e2
	cp [hl]                                          ; $54bd: $be
	pop hl                                           ; $54be: $e1
	ccf                                              ; $54bf: $3f
	pop hl                                           ; $54c0: $e1
	rst $38                                          ; $54c1: $ff
	pop hl                                           ; $54c2: $e1
	ccf                                              ; $54c3: $3f
	ldh [c], a                                       ; $54c4: $e2
	ld a, $c2                                        ; $54c5: $3e $c2
	cp $04                                           ; $54c7: $fe $04
	db $fc                                           ; $54c9: $fc
	ld [bc], a                                       ; $54ca: $02
	cp $19                                           ; $54cb: $fe $19
	rst $38                                          ; $54cd: $ff
	rst SubAFromBC                                          ; $54ce: $e7
	rst SubAFromBC                                          ; $54cf: $e7
	halt                                             ; $54d0: $76
	ld e, $77                                        ; $54d1: $1e $77
	cp [hl]                                          ; $54d3: $be
	ld a, a                                          ; $54d4: $7f
	ld e, $98                                        ; $54d5: $1e $98

jr_01a_54d7:
	ld b, b                                          ; $54d7: $40
	ld a, a                                          ; $54d8: $7f
	ld b, c                                          ; $54d9: $41
	ld a, a                                          ; $54da: $7f
	add b                                            ; $54db: $80
	rst $38                                          ; $54dc: $ff
	add c                                            ; $54dd: $81
	ld a, e                                          ; $54de: $7b
	cp $7f                                           ; $54df: $fe $7f
	ret nz                                           ; $54e1: $c0

	ld a, a                                          ; $54e2: $7f
	cp $77                                           ; $54e3: $fe $77
	ldh a, [hDisp1_OBP1]                                     ; $54e5: $f0 $94
	sbc h                                            ; $54e7: $9c
	rst $38                                          ; $54e8: $ff
	db $e3                                           ; $54e9: $e3
	db $e3                                           ; $54ea: $e3
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	add b                                            ; $54ed: $80
	add b                                            ; $54ee: $80
	ld h, b                                          ; $54ef: $60
	ldh [rAUD1SWEEP], a                              ; $54f0: $e0 $10
	ld [hl], e                                       ; $54f2: $73
	cp h                                             ; $54f3: $bc
	ld [hl], a                                       ; $54f4: $77
	call z, $fe77                                    ; $54f5: $cc $77 $fe
	ld a, a                                          ; $54f8: $7f
	ld d, d                                          ; $54f9: $52
	ld a, a                                          ; $54fa: $7f
	cp $7f                                           ; $54fb: $fe $7f
	ldh a, [$7f]                                     ; $54fd: $f0 $7f
	db $ec                                           ; $54ff: $ec
	ld a, a                                          ; $5500: $7f
	add sp, -$21                                     ; $5501: $e8 $df
	add b                                            ; $5503: $80
	cpl                                              ; $5504: $2f
	inc bc                                           ; $5505: $03
	rst $38                                          ; $5506: $ff
	rst SubAFromDE                                          ; $5507: $df
	inc de                                           ; $5508: $13
	add b                                            ; $5509: $80
	inc l                                            ; $550a: $2c
	ccf                                              ; $550b: $3f
	ld [hl+], a                                      ; $550c: $22
	ccf                                              ; $550d: $3f
	ld d, c                                          ; $550e: $51
	ld a, a                                          ; $550f: $7f
	xor c                                            ; $5510: $a9
	rst $38                                          ; $5511: $ff
	rst SubAFromHL                                          ; $5512: $d7
	rst $38                                          ; $5513: $ff
	sub d                                            ; $5514: $92
	rst $38                                          ; $5515: $ff
	or c                                             ; $5516: $b1
	rst $38                                          ; $5517: $ff
	cp h                                             ; $5518: $bc
	rst AddAOntoHL                                          ; $5519: $ef
	ld a, [hl]                                       ; $551a: $7e
	ld l, e                                          ; $551b: $6b
	ld a, $3d                                        ; $551c: $3e $3d
	ld [hl], a                                       ; $551e: $77
	ld c, l                                          ; $551f: $4d
	ld a, a                                          ; $5520: $7f
	ld c, b                                          ; $5521: $48
	ccf                                              ; $5522: $3f
	jr nz, jr_01a_5544                               ; $5523: $20 $1f

	stop                                             ; $5525: $10 $00
	nop                                              ; $5527: $00
	and b                                            ; $5528: $a0
	sbc c                                            ; $5529: $99
	and b                                            ; $552a: $a0
	ld d, b                                          ; $552b: $50
	ldh a, [$28]                                     ; $552c: $f0 $28
	ld hl, sp+$08                                    ; $552e: $f8 $08
	sbc $f8                                          ; $5530: $de $f8
	add b                                            ; $5532: $80
	inc c                                            ; $5533: $0c
	db $fc                                           ; $5534: $fc
	ld [bc], a                                       ; $5535: $02
	cp $89                                           ; $5536: $fe $89
	rst $38                                          ; $5538: $ff
	ld b, [hl]                                       ; $5539: $46
	cp $24                                           ; $553a: $fe $24
	db $fc                                           ; $553c: $fc
	ld h, h                                          ; $553d: $64
	db $fc                                           ; $553e: $fc
	db $e4                                           ; $553f: $e4
	cp h                                             ; $5540: $bc
	add sp, $38                                      ; $5541: $e8 $38
	ret nc                                           ; $5543: $d0

jr_01a_5544:
	ld [hl], b                                       ; $5544: $70
	ldh [$e0], a                                     ; $5545: $e0 $e0
	scf                                              ; $5547: $37
	scf                                              ; $5548: $37
	ld a, a                                          ; $5549: $7f
	ld c, a                                          ; $554a: $4f
	ld a, a                                          ; $554b: $7f
	ld c, d                                          ; $554c: $4a
	ccf                                              ; $554d: $3f
	ld hl, $1f1f                                     ; $554e: $21 $1f $1f
	ld c, $80                                        ; $5551: $0e $80
	dec bc                                           ; $5553: $0b
	rrca                                             ; $5554: $0f
	add hl, bc                                       ; $5555: $09
	rlca                                             ; $5556: $07
	dec b                                            ; $5557: $05
	ld [bc], a                                       ; $5558: $02
	inc bc                                           ; $5559: $03
	ld bc, $0201                                     ; $555a: $01 $01 $02
	inc bc                                           ; $555d: $03
	inc b                                            ; $555e: $04
	rlca                                             ; $555f: $07
	inc bc                                           ; $5560: $03
	inc bc                                           ; $5561: $03
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	ld a, a                                          ; $5564: $7f
	ld a, a                                          ; $5565: $7f
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	ldh a, [$f0]                                     ; $5568: $f0 $f0
	ld hl, sp+$48                                    ; $556a: $f8 $48
	db $fc                                           ; $556c: $fc
	inc h                                            ; $556d: $24
	db $fc                                           ; $556e: $fc

jr_01a_556f:
	inc [hl]                                         ; $556f: $34
	db $fc                                           ; $5570: $fc
	call nz, Call_01a_788b                           ; $5571: $c4 $8b $78
	ret z                                            ; $5574: $c8

	jr z, jr_01a_556f                                ; $5575: $28 $f8

	ret c                                            ; $5577: $d8

	ld hl, sp-$44                                    ; $5578: $f8 $bc
	and h                                            ; $557a: $a4
	ld e, h                                          ; $557b: $5c

jr_01a_557c:
	call nc, $ce4a                                   ; $557c: $d4 $4a $ce
	adc a                                            ; $557f: $8f
	adc a                                            ; $5580: $8f
	add hl, bc                                       ; $5581: $09
	rrca                                             ; $5582: $0f
	ld [de], a                                       ; $5583: $12
	ld e, $ff                                        ; $5584: $1e $ff
	rst $38                                          ; $5586: $ff
	ld a, e                                          ; $5587: $7b
	call c, $c27f                                    ; $5588: $dc $7f $c2
	sbc d                                            ; $558b: $9a
	ld c, [hl]                                       ; $558c: $4e
	ccf                                              ; $558d: $3f
	ld [hl+], a                                      ; $558e: $22
	rra                                              ; $558f: $1f
	rra                                              ; $5590: $1f
	db $fd                                           ; $5591: $fd
	rst SubAFromDE                                          ; $5592: $df
	ld bc, $03df                                     ; $5593: $01 $df $03
	sub a                                            ; $5596: $97
	daa                                              ; $5597: $27
	ld h, $5f                                        ; $5598: $26 $5f
	ld a, c                                          ; $559a: $79
	ld b, a                                          ; $559b: $47
	ld a, a                                          ; $559c: $7f
	ld [hl-], a                                      ; $559d: $32
	ld a, $77                                        ; $559e: $3e $77
	call nz, $dffd                                   ; $55a0: $c4 $fd $df
	ldh a, [$8d]                                     ; $55a3: $f0 $8d
	db $fc                                           ; $55a5: $fc
	ld c, h                                          ; $55a6: $4c
	cp $32                                           ; $55a7: $fe $32
	rst $38                                          ; $55a9: $ff
	dec de                                           ; $55aa: $1b
	rst AddAOntoHL                                          ; $55ab: $ef
	cp c                                             ; $55ac: $b9
	rst GetHLinHL                                          ; $55ad: $cf
	ld sp, hl                                        ; $55ae: $f9
	sub a                                            ; $55af: $97
	cp $ff                                           ; $55b0: $fe $ff
	ld a, c                                          ; $55b2: $79
	add $46                                          ; $55b3: $c6 $46
	add b                                            ; $55b5: $80
	add b                                            ; $55b6: $80
	db $fd                                           ; $55b7: $fd
	ld [hl], a                                       ; $55b8: $77
	call nz, $dffd                                   ; $55b9: $c4 $fd $df
	rlca                                             ; $55bc: $07
	rst SubAFromDE                                          ; $55bd: $df
	add hl, de                                       ; $55be: $19
	sbc l                                            ; $55bf: $9d
	ccf                                              ; $55c0: $3f
	daa                                              ; $55c1: $27
	ld a, e                                          ; $55c2: $7b
	cp [hl]                                          ; $55c3: $be
	sbc h                                            ; $55c4: $9c
	jr @+$09                                         ; $55c5: $18 $07

	rlca                                             ; $55c7: $07
	ld a, e                                          ; $55c8: $7b
	ret nz                                           ; $55c9: $c0

	sbc d                                            ; $55ca: $9a
	ld [bc], a                                       ; $55cb: $02
	daa                                              ; $55cc: $27
	ld h, $59                                        ; $55cd: $26 $59

jr_01a_55cf:
	ld a, a                                          ; $55cf: $7f
	ld d, a                                          ; $55d0: $57
	ret nz                                           ; $55d1: $c0

	rst SubAFromDE                                          ; $55d2: $df
	ld hl, sp-$71                                    ; $55d3: $f8 $8f
	db $fc                                           ; $55d5: $fc
	call nc, $54fc                                   ; $55d6: $d4 $fc $54
	db $fc                                           ; $55d9: $fc
	ld e, h                                          ; $55da: $5c
	call $86bd                                       ; $55db: $cd $bd $86
	rst $38                                          ; $55de: $ff
	ld h, $fd                                        ; $55df: $26 $fd
	rst $38                                          ; $55e1: $ff
	ld a, c                                          ; $55e2: $79
	adc $ce                                          ; $55e3: $ce $ce
	ld c, a                                          ; $55e5: $4f
	ret nz                                           ; $55e6: $c0

	ei                                               ; $55e7: $fb
	rst SubAFromDE                                          ; $55e8: $df
	add b                                            ; $55e9: $80
	sub a                                            ; $55ea: $97
	ld b, b                                          ; $55eb: $40
	ret nz                                           ; $55ec: $c0

	jr nz, jr_01a_55cf                               ; $55ed: $20 $e0

	sub b                                            ; $55ef: $90
	ldh a, [rSVBK]                                   ; $55f0: $f0 $70
	ld [hl], b                                       ; $55f2: $70
	ld sp, hl                                        ; $55f3: $f9
	rst SubAFromDE                                          ; $55f4: $df
	ldh a, [$f7]                                     ; $55f5: $f0 $f7
	rst SubAFromDE                                          ; $55f7: $df
	inc bc                                           ; $55f8: $03
	ld a, a                                          ; $55f9: $7f
	jr nc, jr_01a_557c                               ; $55fa: $30 $80

	ld e, $1f                                        ; $55fc: $1e $1f
	ld hl, $1f3f                                     ; $55fe: $21 $3f $1f
	rra                                              ; $5601: $1f
	inc d                                            ; $5602: $14
	rra                                              ; $5603: $1f
	inc h                                            ; $5604: $24
	ccf                                              ; $5605: $3f
	ld c, c                                          ; $5606: $49
	ld a, a                                          ; $5607: $7f
	dec sp                                           ; $5608: $3b
	ccf                                              ; $5609: $3f
	rrca                                             ; $560a: $0f
	dec c                                            ; $560b: $0d
	rrca                                             ; $560c: $0f
	inc c                                            ; $560d: $0c
	rlca                                             ; $560e: $07
	inc b                                            ; $560f: $04
	inc bc                                           ; $5610: $03
	ld [bc], a                                       ; $5611: $02
	ld bc, $0001                                     ; $5612: $01 $01 $00
	nop                                              ; $5615: $00
	ld d, b                                          ; $5616: $50
	ld d, b                                          ; $5617: $50
	db $fc                                           ; $5618: $fc
	db $fc                                           ; $5619: $fc
	ld b, d                                          ; $561a: $42
	adc b                                            ; $561b: $88
	cp $41                                           ; $561c: $fe $41
	rst $38                                          ; $561e: $ff
	pop af                                           ; $561f: $f1
	rst $38                                          ; $5620: $ff
	add hl, bc                                       ; $5621: $09
	rst $38                                          ; $5622: $ff
	call nz, $30ff                                   ; $5623: $c4 $ff $30
	rst $38                                          ; $5626: $ff
	dec c                                            ; $5627: $0d
	rst $38                                          ; $5628: $ff
	sbc a                                            ; $5629: $9f
	ldh a, [c]                                       ; $562a: $f2
	ld a, a                                          ; $562b: $7f
	rst SubAFromBC                                          ; $562c: $e7
	rst $38                                          ; $562d: $ff
	sbc b                                            ; $562e: $98
	rst $38                                          ; $562f: $ff
	ld h, b                                          ; $5630: $60
	rst $38                                          ; $5631: $ff
	inc bc                                           ; $5632: $03
	ld c, a                                          ; $5633: $4f
	sbc d                                            ; $5634: $9a
	ld [hl], a                                       ; $5635: $77
	sbc b                                            ; $5636: $98
	db $dd                                           ; $5637: $dd
	ret nz                                           ; $5638: $c0

	sub l                                            ; $5639: $95
	rst SubAFromBC                                          ; $563a: $e7
	daa                                              ; $563b: $27
	ld sp, hl                                        ; $563c: $f9
	sbc a                                            ; $563d: $9f
	ld hl, sp+$4f                                    ; $563e: $f8 $4f
	ld hl, sp-$31                                    ; $5640: $f8 $cf
	ld hl, sp+$1f                                    ; $5642: $f8 $1f
	ld b, a                                          ; $5644: $47
	ldh [$df], a                                     ; $5645: $e0 $df
	rrca                                             ; $5647: $0f
	sub a                                            ; $5648: $97
	ld sp, $533f                                     ; $5649: $31 $3f $53
	ld a, a                                          ; $564c: $7f
	ld l, [hl]                                       ; $564d: $6e
	ld a, [hl]                                       ; $564e: $7e
	jp nc, $defe                                     ; $564f: $d2 $fe $de

	db $fc                                           ; $5652: $fc
	add b                                            ; $5653: $80
	call nz, $88f8                                   ; $5654: $c4 $f8 $88
	ldh a, [$f0]                                     ; $5657: $f0 $f0
	inc b                                            ; $5659: $04
	inc b                                            ; $565a: $04
	dec bc                                           ; $565b: $0b
	rrca                                             ; $565c: $0f
	ld [$140f], sp                                   ; $565d: $08 $0f $14
	rra                                              ; $5660: $1f
	ld a, [hl+]                                      ; $5661: $2a
	ccf                                              ; $5662: $3f
	ld l, e                                          ; $5663: $6b
	ld a, a                                          ; $5664: $7f
	ld c, c                                          ; $5665: $49
	ld a, a                                          ; $5666: $7f
	ld e, b                                          ; $5667: $58
	ld a, a                                          ; $5668: $7f
	ld e, [hl]                                       ; $5669: $5e
	ld [hl], a                                       ; $566a: $77
	ccf                                              ; $566b: $3f
	dec [hl]                                         ; $566c: $35
	rra                                              ; $566d: $1f
	ld d, $3b                                        ; $566e: $16 $3b
	ld h, $3f                                        ; $5670: $26 $3f
	inc h                                            ; $5672: $24
	ld a, a                                          ; $5673: $7f
	ld c, $7f                                        ; $5674: $0e $7f
	rst SubAFromBC                                          ; $5676: $e7
	add b                                            ; $5677: $80
	rlca                                             ; $5678: $07
	ld b, $00                                        ; $5679: $06 $00
	nop                                              ; $567b: $00
	add sp, -$18                                     ; $567c: $e8 $e8
	inc d                                            ; $567e: $14
	db $fc                                           ; $567f: $fc
	adc d                                            ; $5680: $8a
	cp $7a                                           ; $5681: $fe $7a
	cp $3e                                           ; $5683: $fe $3e
	add $fe                                          ; $5685: $c6 $fe
	add $7d                                          ; $5687: $c6 $7d
	rst SubAFromBC                                          ; $5689: $e7
	ld hl, sp-$31                                    ; $568a: $f8 $cf
	ld a, e                                          ; $568c: $7b
	rst GetHLinHL                                          ; $568d: $cf
	ld a, d                                          ; $568e: $7a
	adc $fa                                          ; $568f: $ce $fa
	ld c, [hl]                                       ; $5691: $4e
	ld a, [$f48e]                                    ; $5692: $fa $8e $f4
	sbc h                                            ; $5695: $9c
	ld hl, sp-$64                                    ; $5696: $f8 $9c
	sbc b                                            ; $5698: $98
	ldh a, [hDisp1_SCY]                                     ; $5699: $f0 $90
	db $dd                                           ; $569b: $dd
	ld bc, $0ddf                                     ; $569c: $01 $df $0d
	sub b                                            ; $569f: $90
	rra                                              ; $56a0: $1f
	inc de                                           ; $56a1: $13
	rra                                              ; $56a2: $1f
	ld de, $0f0f                                     ; $56a3: $11 $0f $0f
	inc bc                                           ; $56a6: $03
	inc bc                                           ; $56a7: $03
	rlca                                             ; $56a8: $07
	inc b                                            ; $56a9: $04
	rrca                                             ; $56aa: $0f
	add hl, bc                                       ; $56ab: $09
	rrca                                             ; $56ac: $0f
	add hl, bc                                       ; $56ad: $09
	ld b, $7a                                        ; $56ae: $06 $7a
	ld h, d                                          ; $56b0: $62
	ld l, [hl]                                       ; $56b1: $6e
	ld e, h                                          ; $56b2: $5c
	rst SubAFromDE                                          ; $56b3: $df
	rrca                                             ; $56b4: $0f
	sub [hl]                                         ; $56b5: $96
	ldh a, [$b0]                                     ; $56b6: $f0 $b0
	ldh a, [$50]                                     ; $56b8: $f0 $50
	ldh a, [rAUD1SWEEP]                              ; $56ba: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $56bc: $f0 $10
	ldh [$7b], a                                     ; $56be: $e0 $7b
	ld [bc], a                                       ; $56c0: $02
	ld a, a                                          ; $56c1: $7f
	ld sp, hl                                        ; $56c2: $f9
	sbc l                                            ; $56c3: $9d
	ret nc                                           ; $56c4: $d0

	ldh a, [$de]                                     ; $56c5: $f0 $de
	ldh [$99], a                                     ; $56c7: $e0 $99
	and b                                            ; $56c9: $a0
	ldh a, [$d0]                                     ; $56ca: $f0 $d0
	ld [hl], b                                       ; $56cc: $70
	ldh a, [rOBP0]                                   ; $56cd: $f0 $48
	sbc $f8                                          ; $56cf: $de $f8
	add b                                            ; $56d1: $80
	adc b                                            ; $56d2: $88
	ld hl, sp-$04                                    ; $56d3: $f8 $fc
	db $fc                                           ; $56d5: $fc
	nop                                              ; $56d6: $00
	nop                                              ; $56d7: $00
	ld e, $1e                                        ; $56d8: $1e $1e
	ld hl, $473f                                     ; $56da: $21 $3f $47
	ld a, b                                          ; $56dd: $78
	ld c, a                                          ; $56de: $4f
	ld [hl], a                                       ; $56df: $77
	sbc b                                            ; $56e0: $98
	rst AddAOntoHL                                          ; $56e1: $ef
	sub h                                            ; $56e2: $94
	rst $38                                          ; $56e3: $ff
	and h                                            ; $56e4: $a4
	rst $38                                          ; $56e5: $ff
	xor l                                            ; $56e6: $ad
	ei                                               ; $56e7: $fb
	sbc a                                            ; $56e8: $9f
	ldh a, [$bf]                                     ; $56e9: $f0 $bf
	xor $bd                                          ; $56eb: $ee $bd
	and $bf                                          ; $56ed: $e6 $bf
	and $9f                                          ; $56ef: $e6 $9f
	sbc e                                            ; $56f1: $9b
	pop af                                           ; $56f2: $f1
	adc a                                            ; $56f3: $8f
	ld hl, sp+$4f                                    ; $56f4: $f8 $4f
	ld a, d                                          ; $56f6: $7a
	sbc d                                            ; $56f7: $9a
	rst SubAFromDE                                          ; $56f8: $df
	ldh [$80], a                                     ; $56f9: $e0 $80
	jr @-$06                                         ; $56fb: $18 $f8

	db $e4                                           ; $56fd: $e4
	inc e                                            ; $56fe: $1c
	ldh a, [c]                                       ; $56ff: $f2
	xor $12                                          ; $5700: $ee $12
	cp $a9                                           ; $5702: $fe $a9
	rst $38                                          ; $5704: $ff
	and a                                            ; $5705: $a7
	rst $38                                          ; $5706: $ff
	or l                                             ; $5707: $b5
	ld e, l                                          ; $5708: $5d
	ld hl, sp+$08                                    ; $5709: $f8 $08
	ldh a, [$e8]                                     ; $570b: $f0 $e8
	call nc, $f47c                                   ; $570d: $d4 $7c $f4
	ld a, h                                          ; $5710: $7c
	db $f4                                           ; $5711: $f4
	sbc h                                            ; $5712: $9c
	db $e4                                           ; $5713: $e4
	inc a                                            ; $5714: $3c
	ldh [$f8], a                                     ; $5715: $e0 $f8
	inc a                                            ; $5717: $3c
	dec sp                                           ; $5718: $3b
	rra                                              ; $5719: $1f
	sub d                                            ; $571a: $92
	db $10                                           ; $571b: $10
	rlca                                             ; $571c: $07
	inc e                                            ; $571d: $1c
	rra                                              ; $571e: $1f
	inc d                                            ; $571f: $14
	rrca                                             ; $5720: $0f
	rrca                                             ; $5721: $0f
	inc b                                            ; $5722: $04
	rlca                                             ; $5723: $07
	ld b, $05                                        ; $5724: $06 $05
	rlca                                             ; $5726: $07
	dec b                                            ; $5727: $05
	ld a, e                                          ; $5728: $7b
	add b                                            ; $5729: $80
	rst SubAFromDE                                          ; $572a: $df
	rrca                                             ; $572b: $0f
	ld a, e                                          ; $572c: $7b
	db $fc                                           ; $572d: $fc
	sbc [hl]                                         ; $572e: $9e
	ld de, $6d7b                                     ; $572f: $11 $7b $6d
	rst SubAFromDE                                          ; $5732: $df
	ld a, [hl]                                       ; $5733: $7e
	rst $38                                          ; $5734: $ff
	sbc e                                            ; $5735: $9b
	ld [hl], b                                       ; $5736: $70
	or b                                             ; $5737: $b0
	ldh a, [rAUD1SWEEP]                              ; $5738: $f0 $10
	ld a, e                                          ; $573a: $7b
	sub c                                            ; $573b: $91
	sbc e                                            ; $573c: $9b
	ld d, b                                          ; $573d: $50
	ldh [$e0], a                                     ; $573e: $e0 $e0
	ld b, b                                          ; $5740: $40
	reti                                             ; $5741: $d9


	ret nz                                           ; $5742: $c0

	ld a, e                                          ; $5743: $7b
	rst FarCall                                          ; $5744: $f7
	ld a, [hl]                                       ; $5745: $7e
	ld [hl], h                                       ; $5746: $74
	ld a, a                                          ; $5747: $7f
	ld [hl], h                                       ; $5748: $74
	rst SubAFromDE                                          ; $5749: $df
	ld hl, sp-$05                                    ; $574a: $f8 $fb
	dec sp                                           ; $574c: $3b
	add b                                            ; $574d: $80
	ld a, a                                          ; $574e: $7f
	add d                                            ; $574f: $82
	sbc h                                            ; $5750: $9c
	xor $bf                                          ; $5751: $ee $bf
	ld [$807b], a                                    ; $5753: $ea $7b $80
	sbc [hl]                                         ; $5756: $9e
	ld sp, hl                                        ; $5757: $f9
	dec hl                                           ; $5758: $2b
	add b                                            ; $5759: $80
	sbc [hl]                                         ; $575a: $9e
	ld l, b                                          ; $575b: $68
	ld a, e                                          ; $575c: $7b
	add d                                            ; $575d: $82
	sbc c                                            ; $575e: $99
	ld e, h                                          ; $575f: $5c
	db $f4                                           ; $5760: $f4
	sbc h                                            ; $5761: $9c
	ld h, h                                          ; $5762: $64
	cp h                                             ; $5763: $bc
	ldh [$73], a                                     ; $5764: $e0 $73
	cp h                                             ; $5766: $bc
	cpl                                              ; $5767: $2f
	cp [hl]                                          ; $5768: $be
	ld a, a                                          ; $5769: $7f
	inc a                                            ; $576a: $3c
	sbc e                                            ; $576b: $9b
	rst SubAFromDE                                          ; $576c: $df
	or $4f                                           ; $576d: $f6 $4f
	ld a, c                                          ; $576f: $79
	db $fd                                           ; $5770: $fd
	ld b, a                                          ; $5771: $47
	cp [hl]                                          ; $5772: $be
	sub c                                            ; $5773: $91
	ldh a, [$08]                                     ; $5774: $f0 $08
	ldh a, [$78]                                     ; $5776: $f0 $78
	db $f4                                           ; $5778: $f4
	ld l, h                                          ; $5779: $6c
	call nc, $f46c                                   ; $577a: $d4 $6c $f4
	ld l, h                                          ; $577d: $6c
	add sp, -$68                                     ; $577e: $e8 $98
	inc a                                            ; $5780: $3c
	ccf                                              ; $5781: $3f
	ld a, e                                          ; $5782: $7b
	ld b, b                                          ; $5783: $40
	rst SubAFromDE                                          ; $5784: $df
	rra                                              ; $5785: $1f
	sbc h                                            ; $5786: $9c
	dec d                                            ; $5787: $15
	rrca                                             ; $5788: $0f
	add hl, bc                                       ; $5789: $09
	ld a, e                                          ; $578a: $7b
	ld b, b                                          ; $578b: $40
	rst SubAFromDE                                          ; $578c: $df
	rlca                                             ; $578d: $07
	dec sp                                           ; $578e: $3b
	ld b, b                                          ; $578f: $40
	sub e                                            ; $5790: $93
	add sp, -$08                                     ; $5791: $e8 $f8
	ld hl, sp+$18                                    ; $5793: $f8 $18
	ld hl, sp+$18                                    ; $5795: $f8 $18
	ldh a, [hDisp1_SCY]                                     ; $5797: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $5799: $f0 $90
	ldh [$e0], a                                     ; $579b: $e0 $e0
	inc bc                                           ; $579d: $03
	ld b, b                                          ; $579e: $40
	ld [hl], a                                       ; $579f: $77
	add d                                            ; $57a0: $82
	sbc h                                            ; $57a1: $9c
	or $bd                                           ; $57a2: $f6 $bd
	xor $7b                                          ; $57a4: $ee $7b
	add b                                            ; $57a6: $80
	halt                                             ; $57a7: $76
	ret nz                                           ; $57a8: $c0

	sbc l                                            ; $57a9: $9d
	ld sp, hl                                        ; $57aa: $f9
	ld b, a                                          ; $57ab: $47
	scf                                              ; $57ac: $37
	ld b, b                                          ; $57ad: $40
	sbc l                                            ; $57ae: $9d
	ld l, b                                          ; $57af: $68
	ret nc                                           ; $57b0: $d0

	ld [hl], a                                       ; $57b1: $77
	ld b, b                                          ; $57b2: $40
	ld a, d                                          ; $57b3: $7a
	ret nz                                           ; $57b4: $c0

	ld a, a                                          ; $57b5: $7f
	ld b, b                                          ; $57b6: $40
	ld a, a                                          ; $57b7: $7f
	and h                                            ; $57b8: $a4
	ldh [$80], a                                     ; $57b9: $e0 $80
	ldh [rSCY], a                                    ; $57bb: $e0 $42
	rst SubAFromDE                                          ; $57bd: $df
	inc bc                                           ; $57be: $03
	add b                                            ; $57bf: $80
	inc c                                            ; $57c0: $0c
	rrca                                             ; $57c1: $0f
	db $10                                           ; $57c2: $10
	rra                                              ; $57c3: $1f
	jr nz, jr_01a_5805                               ; $57c4: $20 $3f

	ld [hl+], a                                      ; $57c6: $22
	ccf                                              ; $57c7: $3f
	ld b, a                                          ; $57c8: $47
	ld a, l                                          ; $57c9: $7d
	ld b, a                                          ; $57ca: $47
	ld a, l                                          ; $57cb: $7d
	add a                                            ; $57cc: $87
	db $fc                                           ; $57cd: $fc
	add a                                            ; $57ce: $87
	rst $38                                          ; $57cf: $ff
	add a                                            ; $57d0: $87
	db $fc                                           ; $57d1: $fc
	ld b, a                                          ; $57d2: $47

jr_01a_57d3:
	ld a, h                                          ; $57d3: $7c
	ld b, e                                          ; $57d4: $43
	ld a, a                                          ; $57d5: $7f
	jr nz, jr_01a_5817                               ; $57d6: $20 $3f

	ld b, b                                          ; $57d8: $40
	ld a, a                                          ; $57d9: $7f
	sbc b                                            ; $57da: $98
	rst $38                                          ; $57db: $ff
	rst SubAFromBC                                          ; $57dc: $e7
	rst SubAFromBC                                          ; $57dd: $e7
	ret nz                                           ; $57de: $c0

	add b                                            ; $57df: $80
	ret nz                                           ; $57e0: $c0

	jr nc, jr_01a_57d3                               ; $57e1: $30 $f0

	ld [$04f8], sp                                   ; $57e3: $08 $f8 $04
	db $fc                                           ; $57e6: $fc
	add d                                            ; $57e7: $82
	cp $c2                                           ; $57e8: $fe $c2
	ld a, [hl]                                       ; $57ea: $7e
	pop bc                                           ; $57eb: $c1
	ld a, a                                          ; $57ec: $7f
	pop hl                                           ; $57ed: $e1
	cp a                                             ; $57ee: $bf
	pop af                                           ; $57ef: $f1
	ld e, a                                          ; $57f0: $5f
	pop hl                                           ; $57f1: $e1
	cp a                                             ; $57f2: $bf

jr_01a_57f3:
	jp nz, $827e                                     ; $57f3: $c2 $7e $82

	cp $04                                           ; $57f6: $fe $04
	db $fc                                           ; $57f8: $fc
	jr jr_01a_57f3                                   ; $57f9: $18 $f8

	ld h, b                                          ; $57fb: $60
	ldh [$80], a                                     ; $57fc: $e0 $80
	add b                                            ; $57fe: $80
	rst $38                                          ; $57ff: $ff
	rst SubAFromDE                                          ; $5800: $df
	ld bc, $087e                                     ; $5801: $01 $7e $08
	ld a, h                                          ; $5804: $7c

jr_01a_5805:
	ld a, [hl]                                       ; $5805: $7e
	ld [hl], a                                       ; $5806: $77
	cp h                                             ; $5807: $bc
	ld [hl], a                                       ; $5808: $77
	call z, $fe77                                    ; $5809: $cc $77 $fe
	ld a, [hl]                                       ; $580c: $7e
	jr nc, jr_01a_588e                               ; $580d: $30 $7f

	cp $7f                                           ; $580f: $fe $7f
	ldh a, [$7f]                                     ; $5811: $f0 $7f
	db $ec                                           ; $5813: $ec
	ld a, a                                          ; $5814: $7f
	add sp, -$21                                     ; $5815: $e8 $df

jr_01a_5817:
	ld bc, $6fff                                     ; $5817: $01 $ff $6f
	cp [hl]                                          ; $581a: $be
	sub [hl]                                         ; $581b: $96
	add h                                            ; $581c: $84
	db $fc                                           ; $581d: $fc
	ld [bc], a                                       ; $581e: $02
	cp $82                                           ; $581f: $fe $82
	cp $01                                           ; $5821: $fe $01
	rst $38                                          ; $5823: $ff
	add c                                            ; $5824: $81
	ld a, e                                          ; $5825: $7b
	cp $7f                                           ; $5826: $fe $7f
	ret nz                                           ; $5828: $c0

	ld a, a                                          ; $5829: $7f
	cp $77                                           ; $582a: $fe $77
	ldh a, [$9b]                                     ; $582c: $f0 $9b
	add hl, sp                                       ; $582e: $39
	rst $38                                          ; $582f: $ff
	rst JumpTable                                          ; $5830: $c7
	rst JumpTable                                          ; $5831: $c7
	pop hl                                           ; $5832: $e1
	ld b, c                                          ; $5833: $41
	inc bc                                           ; $5834: $03
	rst $38                                          ; $5835: $ff
	rst SubAFromDE                                          ; $5836: $df
	inc de                                           ; $5837: $13
	add b                                            ; $5838: $80
	inc l                                            ; $5839: $2c
	ccf                                              ; $583a: $3f
	ld [hl+], a                                      ; $583b: $22
	ccf                                              ; $583c: $3f
	ld d, c                                          ; $583d: $51
	ld a, a                                          ; $583e: $7f
	xor c                                            ; $583f: $a9
	rst $38                                          ; $5840: $ff
	rst SubAFromHL                                          ; $5841: $d7
	rst $38                                          ; $5842: $ff
	sub d                                            ; $5843: $92
	rst $38                                          ; $5844: $ff
	or c                                             ; $5845: $b1
	rst $38                                          ; $5846: $ff
	cp h                                             ; $5847: $bc
	rst AddAOntoHL                                          ; $5848: $ef
	ld a, [hl]                                       ; $5849: $7e
	ld l, e                                          ; $584a: $6b
	ld a, $3d                                        ; $584b: $3e $3d
	ld [hl], a                                       ; $584d: $77
	ld c, l                                          ; $584e: $4d
	ld a, a                                          ; $584f: $7f
	ld c, b                                          ; $5850: $48
	ccf                                              ; $5851: $3f
	jr nz, jr_01a_5873                               ; $5852: $20 $1f

	stop                                             ; $5854: $10 $00
	nop                                              ; $5856: $00
	and b                                            ; $5857: $a0
	sbc c                                            ; $5858: $99
	and b                                            ; $5859: $a0
	ld d, b                                          ; $585a: $50
	ldh a, [$28]                                     ; $585b: $f0 $28
	ld hl, sp+$08                                    ; $585d: $f8 $08
	sbc $f8                                          ; $585f: $de $f8
	add b                                            ; $5861: $80
	inc c                                            ; $5862: $0c
	db $fc                                           ; $5863: $fc
	ld [bc], a                                       ; $5864: $02
	cp $89                                           ; $5865: $fe $89
	rst $38                                          ; $5867: $ff
	ld b, [hl]                                       ; $5868: $46
	cp $24                                           ; $5869: $fe $24
	db $fc                                           ; $586b: $fc
	ld h, h                                          ; $586c: $64
	db $fc                                           ; $586d: $fc
	db $e4                                           ; $586e: $e4
	cp h                                             ; $586f: $bc
	add sp, $38                                      ; $5870: $e8 $38
	ret nc                                           ; $5872: $d0

jr_01a_5873:
	ld [hl], b                                       ; $5873: $70
	ldh [$e0], a                                     ; $5874: $e0 $e0
	scf                                              ; $5876: $37
	scf                                              ; $5877: $37
	ld a, a                                          ; $5878: $7f
	ld c, a                                          ; $5879: $4f
	ld a, a                                          ; $587a: $7f
	ld c, d                                          ; $587b: $4a
	ccf                                              ; $587c: $3f
	ld hl, $1f1f                                     ; $587d: $21 $1f $1f
	ld c, $80                                        ; $5880: $0e $80
	dec bc                                           ; $5882: $0b
	rrca                                             ; $5883: $0f
	add hl, bc                                       ; $5884: $09
	rlca                                             ; $5885: $07
	dec b                                            ; $5886: $05
	ld [bc], a                                       ; $5887: $02
	inc bc                                           ; $5888: $03
	ld bc, $0201                                     ; $5889: $01 $01 $02
	inc bc                                           ; $588c: $03
	inc b                                            ; $588d: $04

jr_01a_588e:
	rlca                                             ; $588e: $07
	inc bc                                           ; $588f: $03
	inc bc                                           ; $5890: $03
	nop                                              ; $5891: $00
	nop                                              ; $5892: $00
	ld a, a                                          ; $5893: $7f
	ld a, a                                          ; $5894: $7f
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	ldh a, [$f0]                                     ; $5897: $f0 $f0
	ld hl, sp+$48                                    ; $5899: $f8 $48
	db $fc                                           ; $589b: $fc
	inc h                                            ; $589c: $24
	db $fc                                           ; $589d: $fc

jr_01a_589e:
	inc [hl]                                         ; $589e: $34
	db $fc                                           ; $589f: $fc
	call nz, Call_01a_788b                           ; $58a0: $c4 $8b $78
	ret z                                            ; $58a3: $c8

	jr z, jr_01a_589e                                ; $58a4: $28 $f8

	ret c                                            ; $58a6: $d8

	ld hl, sp-$44                                    ; $58a7: $f8 $bc
	and h                                            ; $58a9: $a4
	ld e, h                                          ; $58aa: $5c

jr_01a_58ab:
	call nc, $ce4a                                   ; $58ab: $d4 $4a $ce
	adc a                                            ; $58ae: $8f
	adc a                                            ; $58af: $8f
	add hl, bc                                       ; $58b0: $09
	rrca                                             ; $58b1: $0f
	ld [de], a                                       ; $58b2: $12
	ld e, $ff                                        ; $58b3: $1e $ff
	rst $38                                          ; $58b5: $ff
	ld a, e                                          ; $58b6: $7b
	call c, $c27f                                    ; $58b7: $dc $7f $c2
	sbc d                                            ; $58ba: $9a
	ld c, [hl]                                       ; $58bb: $4e
	ccf                                              ; $58bc: $3f
	ld [hl+], a                                      ; $58bd: $22
	rra                                              ; $58be: $1f
	rra                                              ; $58bf: $1f
	db $fd                                           ; $58c0: $fd
	rst SubAFromDE                                          ; $58c1: $df
	ld bc, $03df                                     ; $58c2: $01 $df $03
	sub a                                            ; $58c5: $97
	daa                                              ; $58c6: $27
	ld h, $5f                                        ; $58c7: $26 $5f
	ld a, c                                          ; $58c9: $79
	ld b, a                                          ; $58ca: $47
	ld a, a                                          ; $58cb: $7f
	ld [hl-], a                                      ; $58cc: $32
	ld a, $77                                        ; $58cd: $3e $77
	call nz, $dffd                                   ; $58cf: $c4 $fd $df
	ldh a, [$8d]                                     ; $58d2: $f0 $8d
	db $fc                                           ; $58d4: $fc
	ld c, h                                          ; $58d5: $4c
	cp $32                                           ; $58d6: $fe $32
	rst $38                                          ; $58d8: $ff
	dec de                                           ; $58d9: $1b
	rst AddAOntoHL                                          ; $58da: $ef
	cp c                                             ; $58db: $b9
	rst GetHLinHL                                          ; $58dc: $cf
	ld sp, hl                                        ; $58dd: $f9
	sub a                                            ; $58de: $97
	cp $ff                                           ; $58df: $fe $ff
	ld a, c                                          ; $58e1: $79
	add $46                                          ; $58e2: $c6 $46
	add b                                            ; $58e4: $80
	add b                                            ; $58e5: $80
	db $fd                                           ; $58e6: $fd
	ld [hl], a                                       ; $58e7: $77
	call nz, $dffd                                   ; $58e8: $c4 $fd $df
	rlca                                             ; $58eb: $07
	rst SubAFromDE                                          ; $58ec: $df
	add hl, de                                       ; $58ed: $19
	sbc l                                            ; $58ee: $9d
	ccf                                              ; $58ef: $3f
	daa                                              ; $58f0: $27
	ld a, e                                          ; $58f1: $7b
	cp [hl]                                          ; $58f2: $be
	sbc h                                            ; $58f3: $9c
	jr @+$09                                         ; $58f4: $18 $07

	rlca                                             ; $58f6: $07
	ld a, e                                          ; $58f7: $7b
	ret nz                                           ; $58f8: $c0

	sbc d                                            ; $58f9: $9a
	ld [bc], a                                       ; $58fa: $02
	daa                                              ; $58fb: $27
	ld h, $59                                        ; $58fc: $26 $59

jr_01a_58fe:
	ld a, a                                          ; $58fe: $7f
	ld d, a                                          ; $58ff: $57
	ret nz                                           ; $5900: $c0

	rst SubAFromDE                                          ; $5901: $df
	ld hl, sp-$71                                    ; $5902: $f8 $8f
	db $fc                                           ; $5904: $fc
	call nc, $54fc                                   ; $5905: $d4 $fc $54
	db $fc                                           ; $5908: $fc
	ld e, h                                          ; $5909: $5c
	call $86bd                                       ; $590a: $cd $bd $86
	rst $38                                          ; $590d: $ff
	ld h, $fd                                        ; $590e: $26 $fd
	rst $38                                          ; $5910: $ff
	ld a, c                                          ; $5911: $79
	adc $ce                                          ; $5912: $ce $ce
	ld c, a                                          ; $5914: $4f
	ret nz                                           ; $5915: $c0

	ei                                               ; $5916: $fb
	rst SubAFromDE                                          ; $5917: $df
	add b                                            ; $5918: $80
	sub a                                            ; $5919: $97
	ld b, b                                          ; $591a: $40
	ret nz                                           ; $591b: $c0

	jr nz, jr_01a_58fe                               ; $591c: $20 $e0

	sub b                                            ; $591e: $90
	ldh a, [rSVBK]                                   ; $591f: $f0 $70
	ld [hl], b                                       ; $5921: $70
	ld sp, hl                                        ; $5922: $f9
	rst SubAFromDE                                          ; $5923: $df
	ldh a, [$f7]                                     ; $5924: $f0 $f7
	rst SubAFromDE                                          ; $5926: $df
	inc bc                                           ; $5927: $03
	ld a, a                                          ; $5928: $7f
	jr nc, jr_01a_58ab                               ; $5929: $30 $80

	ld e, $1f                                        ; $592b: $1e $1f
	ld hl, $1f3f                                     ; $592d: $21 $3f $1f
	rra                                              ; $5930: $1f
	inc d                                            ; $5931: $14
	rra                                              ; $5932: $1f
	inc h                                            ; $5933: $24
	ccf                                              ; $5934: $3f
	ld c, c                                          ; $5935: $49
	ld a, a                                          ; $5936: $7f
	dec sp                                           ; $5937: $3b
	ccf                                              ; $5938: $3f
	rrca                                             ; $5939: $0f
	dec c                                            ; $593a: $0d
	rrca                                             ; $593b: $0f
	inc c                                            ; $593c: $0c
	rlca                                             ; $593d: $07
	inc b                                            ; $593e: $04
	inc bc                                           ; $593f: $03
	ld [bc], a                                       ; $5940: $02
	ld bc, $0001                                     ; $5941: $01 $01 $00
	nop                                              ; $5944: $00
	ld d, b                                          ; $5945: $50
	ld d, b                                          ; $5946: $50
	db $fc                                           ; $5947: $fc
	db $fc                                           ; $5948: $fc
	ld b, d                                          ; $5949: $42
	adc b                                            ; $594a: $88
	cp $41                                           ; $594b: $fe $41
	rst $38                                          ; $594d: $ff
	pop af                                           ; $594e: $f1
	rst $38                                          ; $594f: $ff
	add hl, bc                                       ; $5950: $09
	rst $38                                          ; $5951: $ff
	call nz, $30ff                                   ; $5952: $c4 $ff $30
	rst $38                                          ; $5955: $ff
	dec c                                            ; $5956: $0d
	rst $38                                          ; $5957: $ff
	sbc a                                            ; $5958: $9f
	ldh a, [c]                                       ; $5959: $f2
	ld a, a                                          ; $595a: $7f
	rst SubAFromBC                                          ; $595b: $e7
	rst $38                                          ; $595c: $ff
	sbc b                                            ; $595d: $98
	rst $38                                          ; $595e: $ff
	ld h, b                                          ; $595f: $60
	rst $38                                          ; $5960: $ff
	inc bc                                           ; $5961: $03
	ld c, a                                          ; $5962: $4f
	sbc d                                            ; $5963: $9a
	ld [hl], a                                       ; $5964: $77
	sbc b                                            ; $5965: $98
	db $dd                                           ; $5966: $dd
	ret nz                                           ; $5967: $c0

	sub l                                            ; $5968: $95
	rst SubAFromBC                                          ; $5969: $e7
	daa                                              ; $596a: $27
	ld sp, hl                                        ; $596b: $f9
	sbc a                                            ; $596c: $9f
	ld hl, sp+$4f                                    ; $596d: $f8 $4f
	ld hl, sp-$31                                    ; $596f: $f8 $cf
	ld hl, sp+$1f                                    ; $5971: $f8 $1f
	ld b, a                                          ; $5973: $47
	ldh [$df], a                                     ; $5974: $e0 $df
	rrca                                             ; $5976: $0f
	sub a                                            ; $5977: $97
	ld sp, $533f                                     ; $5978: $31 $3f $53
	ld a, a                                          ; $597b: $7f
	ld l, [hl]                                       ; $597c: $6e
	ld a, [hl]                                       ; $597d: $7e
	jp nc, $defe                                     ; $597e: $d2 $fe $de

	db $fc                                           ; $5981: $fc
	add b                                            ; $5982: $80
	call nz, $88f8                                   ; $5983: $c4 $f8 $88
	ldh a, [$f0]                                     ; $5986: $f0 $f0
	inc b                                            ; $5988: $04
	inc b                                            ; $5989: $04
	dec bc                                           ; $598a: $0b
	rrca                                             ; $598b: $0f
	ld [$140f], sp                                   ; $598c: $08 $0f $14
	rra                                              ; $598f: $1f
	ld a, [hl+]                                      ; $5990: $2a
	ccf                                              ; $5991: $3f
	ld l, e                                          ; $5992: $6b
	ld a, a                                          ; $5993: $7f
	ld c, c                                          ; $5994: $49
	ld a, a                                          ; $5995: $7f
	ld e, b                                          ; $5996: $58
	ld a, a                                          ; $5997: $7f
	ld e, [hl]                                       ; $5998: $5e
	ld [hl], a                                       ; $5999: $77
	ccf                                              ; $599a: $3f
	dec [hl]                                         ; $599b: $35
	rra                                              ; $599c: $1f
	ld d, $3b                                        ; $599d: $16 $3b
	ld h, $3f                                        ; $599f: $26 $3f
	inc h                                            ; $59a1: $24
	ld a, a                                          ; $59a2: $7f
	ld c, $7f                                        ; $59a3: $0e $7f
	rst SubAFromBC                                          ; $59a5: $e7
	add b                                            ; $59a6: $80
	rlca                                             ; $59a7: $07
	ld b, $00                                        ; $59a8: $06 $00
	nop                                              ; $59aa: $00
	add sp, -$18                                     ; $59ab: $e8 $e8
	inc d                                            ; $59ad: $14
	db $fc                                           ; $59ae: $fc
	adc d                                            ; $59af: $8a
	cp $7a                                           ; $59b0: $fe $7a
	cp $3e                                           ; $59b2: $fe $3e
	add $fe                                          ; $59b4: $c6 $fe
	add $7d                                          ; $59b6: $c6 $7d
	rst SubAFromBC                                          ; $59b8: $e7
	ld hl, sp-$31                                    ; $59b9: $f8 $cf
	ld a, e                                          ; $59bb: $7b
	rst GetHLinHL                                          ; $59bc: $cf
	ld a, d                                          ; $59bd: $7a
	adc $fa                                          ; $59be: $ce $fa
	ld c, [hl]                                       ; $59c0: $4e
	ld a, [$f48e]                                    ; $59c1: $fa $8e $f4
	sbc h                                            ; $59c4: $9c
	ld hl, sp-$64                                    ; $59c5: $f8 $9c
	sbc b                                            ; $59c7: $98
	ldh a, [hDisp1_SCY]                                     ; $59c8: $f0 $90
	db $dd                                           ; $59ca: $dd
	ld bc, $0ddf                                     ; $59cb: $01 $df $0d
	sub b                                            ; $59ce: $90
	rra                                              ; $59cf: $1f
	inc de                                           ; $59d0: $13
	rra                                              ; $59d1: $1f
	ld de, $0f0f                                     ; $59d2: $11 $0f $0f
	inc bc                                           ; $59d5: $03
	inc bc                                           ; $59d6: $03
	rlca                                             ; $59d7: $07
	inc b                                            ; $59d8: $04
	rrca                                             ; $59d9: $0f
	add hl, bc                                       ; $59da: $09
	rrca                                             ; $59db: $0f
	add hl, bc                                       ; $59dc: $09
	ld b, $7a                                        ; $59dd: $06 $7a
	ld h, d                                          ; $59df: $62
	ld l, [hl]                                       ; $59e0: $6e
	ld e, h                                          ; $59e1: $5c
	rst SubAFromDE                                          ; $59e2: $df
	rrca                                             ; $59e3: $0f
	sub [hl]                                         ; $59e4: $96
	ldh a, [$b0]                                     ; $59e5: $f0 $b0
	ldh a, [$50]                                     ; $59e7: $f0 $50
	ldh a, [rAUD1SWEEP]                              ; $59e9: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $59eb: $f0 $10
	ldh [$7b], a                                     ; $59ed: $e0 $7b
	ld [bc], a                                       ; $59ef: $02
	ld a, a                                          ; $59f0: $7f
	ld sp, hl                                        ; $59f1: $f9
	sbc l                                            ; $59f2: $9d
	ret nc                                           ; $59f3: $d0

	ldh a, [$de]                                     ; $59f4: $f0 $de
	ldh [$99], a                                     ; $59f6: $e0 $99
	and b                                            ; $59f8: $a0
	ldh a, [$d0]                                     ; $59f9: $f0 $d0
	ld [hl], b                                       ; $59fb: $70
	ldh a, [rOBP0]                                   ; $59fc: $f0 $48
	sbc $f8                                          ; $59fe: $de $f8
	sbc e                                            ; $5a00: $9b
	adc b                                            ; $5a01: $88
	ld hl, sp-$04                                    ; $5a02: $f8 $fc
	db $fc                                           ; $5a04: $fc
	ld l, a                                          ; $5a05: $6f
	ld [bc], a                                       ; $5a06: $02
	ld a, a                                          ; $5a07: $7f
	ld a, [hl]                                       ; $5a08: $7e
	ld a, a                                          ; $5a09: $7f
	cp a                                             ; $5a0a: $bf
	ld a, a                                          ; $5a0b: $7f
	ld a, h                                          ; $5a0c: $7c
	adc h                                            ; $5a0d: $8c
	jr jr_01a_5a2f                                   ; $5a0e: $18 $1f

	ld sp, $233f                                     ; $5a10: $31 $3f $23
	ld a, $4f                                        ; $5a13: $3e $4f
	ld a, h                                          ; $5a15: $7c
	ccf                                              ; $5a16: $3f
	dec sp                                           ; $5a17: $3b
	dec e                                            ; $5a18: $1d
	rra                                              ; $5a19: $1f
	rrca                                             ; $5a1a: $0f
	dec bc                                           ; $5a1b: $0b
	rlca                                             ; $5a1c: $07
	inc b                                            ; $5a1d: $04
	dec bc                                           ; $5a1e: $0b
	ld c, $17                                        ; $5a1f: $0e $17
	ld a, d                                          ; $5a21: $7a
	ld c, b                                          ; $5a22: $48
	rst SubAFromDE                                          ; $5a23: $df
	cp h                                             ; $5a24: $bc
	ld a, a                                          ; $5a25: $7f
	ld [bc], a                                       ; $5a26: $02
	sbc h                                            ; $5a27: $9c
	ld bc, $39ff                                     ; $5a28: $01 $ff $39
	ld a, e                                          ; $5a2b: $7b
	inc b                                            ; $5a2c: $04
	adc e                                            ; $5a2d: $8b
	add d                                            ; $5a2e: $82

jr_01a_5a2f:
	rst $38                                          ; $5a2f: $ff
	pop bc                                           ; $5a30: $c1
	ld a, a                                          ; $5a31: $7f
	ldh a, [$3f]                                     ; $5a32: $f0 $3f
	db $fc                                           ; $5a34: $fc
	rrca                                             ; $5a35: $0f
	rst $38                                          ; $5a36: $ff
	inc sp                                           ; $5a37: $33
	sbc $3b                                          ; $5a38: $de $3b
	cp $33                                           ; $5a3a: $fe $33
	db $fd                                           ; $5a3c: $fd
	rst JumpTable                                          ; $5a3d: $c7
	ld a, [$f50e]                                    ; $5a3e: $fa $0e $f5
	rst FarCall                                          ; $5a41: $f7
	inc sp                                           ; $5a42: $33
	ret nz                                           ; $5a43: $c0

	sbc d                                            ; $5a44: $9a
	jr c, jr_01a_5a66                                ; $5a45: $38 $1f

	dec de                                           ; $5a47: $1b
	rrca                                             ; $5a48: $0f
	rrca                                             ; $5a49: $0f
	dec de                                           ; $5a4a: $1b
	ret nz                                           ; $5a4b: $c0

	sbc d                                            ; $5a4c: $9a
	inc bc                                           ; $5a4d: $03
	cp $33                                           ; $5a4e: $fe $33
	cp $3b                                           ; $5a50: $fe $3b
	ld h, a                                          ; $5a52: $67
	ret nz                                           ; $5a53: $c0

	ld e, [hl]                                       ; $5a54: $5e
	call nz, $80dd                                   ; $5a55: $c4 $dd $80
	rst SubAFromDE                                          ; $5a58: $df
	ret nz                                           ; $5a59: $c0

	ld a, [hl]                                       ; $5a5a: $7e
	ld e, b                                          ; $5a5b: $58
	rst SubAFromDE                                          ; $5a5c: $df
	ret nz                                           ; $5a5d: $c0

	db $dd                                           ; $5a5e: $dd
	add b                                            ; $5a5f: $80
	ld d, [hl]                                       ; $5a60: $56
	ld h, d                                          ; $5a61: $62
	ld b, a                                          ; $5a62: $47
	ld h, b                                          ; $5a63: $60
	rst SubAFromDE                                          ; $5a64: $df
	rra                                              ; $5a65: $1f

jr_01a_5a66:
	ld a, [hl]                                       ; $5a66: $7e
	ld e, [hl]                                       ; $5a67: $5e
	rla                                              ; $5a68: $17
	ld h, b                                          ; $5a69: $60
	ld a, a                                          ; $5a6a: $7f
	and d                                            ; $5a6b: $a2
	sbc c                                            ; $5a6c: $99
	cp $2b                                           ; $5a6d: $fe $2b
	db $fd                                           ; $5a6f: $fd
	rst JumpTable                                          ; $5a70: $c7
	ld a, d                                          ; $5a71: $7a
	adc $77                                          ; $5a72: $ce $77
	and b                                            ; $5a74: $a0
	rst SubAFromDE                                          ; $5a75: $df
	dec a                                            ; $5a76: $3d
	add c                                            ; $5a77: $81
	ld b, d                                          ; $5a78: $42
	ld a, a                                          ; $5a79: $7f
	add b                                            ; $5a7a: $80
	rst $38                                          ; $5a7b: $ff
	sbc h                                            ; $5a7c: $9c
	rst $38                                          ; $5a7d: $ff
	inc hl                                           ; $5a7e: $23
	rst $38                                          ; $5a7f: $ff
	ld b, c                                          ; $5a80: $41
	rst $38                                          ; $5a81: $ff
	add e                                            ; $5a82: $83
	cp $0f                                           ; $5a83: $fe $0f
	db $fc                                           ; $5a85: $fc
	ccf                                              ; $5a86: $3f
	ldh a, [rIE]                                     ; $5a87: $f0 $ff
	db $dd                                           ; $5a89: $dd
	ld a, a                                          ; $5a8a: $7f
	call z, $cc7b                                    ; $5a8b: $cc $7b $cc
	cp a                                             ; $5a8e: $bf
	db $e3                                           ; $5a8f: $e3
	ld e, a                                          ; $5a90: $5f
	ld a, h                                          ; $5a91: $7c
	cp a                                             ; $5a92: $bf
	di                                               ; $5a93: $f3
	nop                                              ; $5a94: $00
	nop                                              ; $5a95: $00
	ld [hl], a                                       ; $5a96: $77
	adc [hl]                                         ; $5a97: $8e
	ld a, [hl]                                       ; $5a98: $7e
	and $8b                                          ; $5a99: $e6 $8b
	ret z                                            ; $5a9b: $c8

	ld hl, sp+$28                                    ; $5a9c: $f8 $28
	ld hl, sp+$18                                    ; $5a9e: $f8 $18
	ld hl, sp-$74                                    ; $5aa0: $f8 $8c
	db $fc                                           ; $5aa2: $fc
	call nz, $f27c                                   ; $5aa3: $c4 $7c $f2
	ld a, $fc                                        ; $5aa6: $3e $fc
	call c, $d8f8                                    ; $5aa8: $dc $f8 $d8
	or b                                             ; $5aab: $b0
	ret nc                                           ; $5aac: $d0

	ldh [rAUD4LEN], a                                ; $5aad: $e0 $20
	ld [hl], l                                       ; $5aaf: $75
	nop                                              ; $5ab0: $00
	sub h                                            ; $5ab1: $94
	ld a, [hl]                                       ; $5ab2: $7e
	ld [hl], e                                       ; $5ab3: $73
	ccf                                              ; $5ab4: $3f
	ld a, [hl+]                                      ; $5ab5: $2a
	cpl                                              ; $5ab6: $2f
	inc sp                                           ; $5ab7: $33
	rra                                              ; $5ab8: $1f
	ld [de], a                                       ; $5ab9: $12
	rrca                                             ; $5aba: $0f
	inc c                                            ; $5abb: $0c
	rrca                                             ; $5abc: $0f
	ld a, c                                          ; $5abd: $79
	db $eb                                           ; $5abe: $eb
	ld a, [hl]                                       ; $5abf: $7e
	ld [$967a], a                                    ; $5ac0: $ea $7a $96
	ld a, l                                          ; $5ac3: $7d
	push de                                          ; $5ac4: $d5
	sbc e                                            ; $5ac5: $9b
	inc de                                           ; $5ac6: $13
	ld e, $1f                                        ; $5ac7: $1e $1f
	ld [hl+], a                                      ; $5ac9: $22
	ld a, c                                          ; $5aca: $79
	ld l, e                                          ; $5acb: $6b
	halt                                             ; $5acc: $76
	jp nz, $dc7b                                     ; $5acd: $c2 $7b $dc

	sbc b                                            ; $5ad0: $98
	jr nz, @-$5e                                     ; $5ad1: $20 $a0

	ld h, b                                          ; $5ad3: $60
	ldh [$a0], a                                     ; $5ad4: $e0 $a0
	ldh [rAUD4LEN], a                                ; $5ad6: $e0 $20
	ld l, a                                          ; $5ad8: $6f
	ld c, d                                          ; $5ad9: $4a
	db $db                                           ; $5ada: $db
	add b                                            ; $5adb: $80
	ld [hl], l                                       ; $5adc: $75
	sub d                                            ; $5add: $92
	ld d, l                                          ; $5ade: $55
	sbc [hl]                                         ; $5adf: $9e
	ldh [$66], a                                     ; $5ae0: $e0 $66
	ldh [rSCY], a                                    ; $5ae2: $e0 $42
	rst SubAFromDE                                          ; $5ae4: $df
	inc bc                                           ; $5ae5: $03
	ld a, [hl]                                       ; $5ae6: $7e
	ld h, a                                          ; $5ae7: $67
	add b                                            ; $5ae8: $80
	db $10                                           ; $5ae9: $10
	rra                                              ; $5aea: $1f
	jr nz, jr_01a_5b2c                               ; $5aeb: $20 $3f

	ld [hl+], a                                      ; $5aed: $22
	ccf                                              ; $5aee: $3f
	ld b, a                                          ; $5aef: $47
	ld a, l                                          ; $5af0: $7d
	ld b, a                                          ; $5af1: $47
	ld a, l                                          ; $5af2: $7d
	add a                                            ; $5af3: $87
	db $fc                                           ; $5af4: $fc
	add a                                            ; $5af5: $87
	rst $38                                          ; $5af6: $ff
	add a                                            ; $5af7: $87

jr_01a_5af8:
	db $fc                                           ; $5af8: $fc
	ld b, a                                          ; $5af9: $47
	ld a, h                                          ; $5afa: $7c
	ld b, e                                          ; $5afb: $43
	ld a, a                                          ; $5afc: $7f
	jr nz, @+$41                                     ; $5afd: $20 $3f

	ld b, b                                          ; $5aff: $40
	ld a, a                                          ; $5b00: $7f
	sbc b                                            ; $5b01: $98
	rst $38                                          ; $5b02: $ff
	rst SubAFromBC                                          ; $5b03: $e7
	rst SubAFromBC                                          ; $5b04: $e7
	ret nz                                           ; $5b05: $c0

	ret nz                                           ; $5b06: $c0

	jr nc, @-$7a                                     ; $5b07: $30 $84

	ldh a, [$08]                                     ; $5b09: $f0 $08
	ld hl, sp+$04                                    ; $5b0b: $f8 $04
	db $fc                                           ; $5b0d: $fc
	add d                                            ; $5b0e: $82
	cp $c2                                           ; $5b0f: $fe $c2
	ld a, [hl]                                       ; $5b11: $7e
	pop bc                                           ; $5b12: $c1
	ld a, a                                          ; $5b13: $7f
	pop hl                                           ; $5b14: $e1
	cp a                                             ; $5b15: $bf
	pop af                                           ; $5b16: $f1
	ld e, a                                          ; $5b17: $5f
	pop hl                                           ; $5b18: $e1
	cp a                                             ; $5b19: $bf

jr_01a_5b1a:
	jp nz, $827e                                     ; $5b1a: $c2 $7e $82

	cp $04                                           ; $5b1d: $fe $04
	db $fc                                           ; $5b1f: $fc
	jr jr_01a_5b1a                                   ; $5b20: $18 $f8

	ld h, b                                          ; $5b22: $60
	ldh [$75], a                                     ; $5b23: $e0 $75
	sbc d                                            ; $5b25: $9a
	rst SubAFromDE                                          ; $5b26: $df
	ld bc, $d07c                                     ; $5b27: $01 $7c $d0
	ld a, l                                          ; $5b2a: $7d
	and b                                            ; $5b2b: $a0

jr_01a_5b2c:
	ld [hl], a                                       ; $5b2c: $77
	cp h                                             ; $5b2d: $bc
	ld [hl], a                                       ; $5b2e: $77
	call z, $fe77                                    ; $5b2f: $cc $77 $fe
	sub e                                            ; $5b32: $93
	ld hl, $213f                                     ; $5b33: $21 $3f $21
	ccf                                              ; $5b36: $3f
	db $10                                           ; $5b37: $10
	rra                                              ; $5b38: $1f
	ld [$060f], sp                                   ; $5b39: $08 $0f $06
	rlca                                             ; $5b3c: $07
	ld bc, $7501                                     ; $5b3d: $01 $01 $75
	ldh [rPCM34], a                                  ; $5b40: $e0 $77
	cp [hl]                                          ; $5b42: $be
	sbc d                                            ; $5b43: $9a
	add h                                            ; $5b44: $84
	db $fc                                           ; $5b45: $fc
	ld [bc], a                                       ; $5b46: $02
	cp $82                                           ; $5b47: $fe $82
	ld a, c                                          ; $5b49: $79
	sbc b                                            ; $5b4a: $98
	sbc [hl]                                         ; $5b4b: $9e
	add c                                            ; $5b4c: $81
	ld a, e                                          ; $5b4d: $7b
	cp $7f                                           ; $5b4e: $fe $7f
	ret nz                                           ; $5b50: $c0

	ld a, a                                          ; $5b51: $7f
	cp $77                                           ; $5b52: $fe $77
	ldh a, [$7d]                                     ; $5b54: $f0 $7d
	adc h                                            ; $5b56: $8c
	rst SubAFromDE                                          ; $5b57: $df
	rst JumpTable                                          ; $5b58: $c7
	db $fd                                           ; $5b59: $fd
	rst SubAFromDE                                          ; $5b5a: $df
	jr jr_01a_5af8                                   ; $5b5b: $18 $9b

	ld a, $36                                        ; $5b5d: $3e $36
	ld a, a                                          ; $5b5f: $7f
	ld b, e                                          ; $5b60: $43
	ld a, e                                          ; $5b61: $7b
	rst SubAFromBC                                          ; $5b62: $e7
	sub b                                            ; $5b63: $90
	add e                                            ; $5b64: $83
	ld a, a                                          ; $5b65: $7f
	ld h, l                                          ; $5b66: $65
	ld a, a                                          ; $5b67: $7f
	ld b, c                                          ; $5b68: $41
	ld a, a                                          ; $5b69: $7f
	ld b, c                                          ; $5b6a: $41
	ld a, $32                                        ; $5b6b: $3e $32
	ld c, $0a                                        ; $5b6d: $0e $0a
	rlca                                             ; $5b6f: $07
	dec b                                            ; $5b70: $05
	ld [bc], a                                       ; $5b71: $02
	ld [bc], a                                       ; $5b72: $02
	db $fd                                           ; $5b73: $fd
	push de                                          ; $5b74: $d5
	inc bc                                           ; $5b75: $03
	rst $38                                          ; $5b76: $ff
	rst SubAFromDE                                          ; $5b77: $df
	inc de                                           ; $5b78: $13
	add b                                            ; $5b79: $80
	inc l                                            ; $5b7a: $2c
	ccf                                              ; $5b7b: $3f
	ld [hl+], a                                      ; $5b7c: $22
	ccf                                              ; $5b7d: $3f
	ld d, c                                          ; $5b7e: $51
	ld a, a                                          ; $5b7f: $7f
	xor c                                            ; $5b80: $a9
	rst $38                                          ; $5b81: $ff
	rst SubAFromHL                                          ; $5b82: $d7
	rst $38                                          ; $5b83: $ff
	sub d                                            ; $5b84: $92
	rst $38                                          ; $5b85: $ff
	or c                                             ; $5b86: $b1
	rst $38                                          ; $5b87: $ff
	cp h                                             ; $5b88: $bc
	rst AddAOntoHL                                          ; $5b89: $ef
	ld a, [hl]                                       ; $5b8a: $7e
	ld l, e                                          ; $5b8b: $6b
	ld a, $3d                                        ; $5b8c: $3e $3d
	ld [hl], a                                       ; $5b8e: $77
	ld c, l                                          ; $5b8f: $4d
	ld a, a                                          ; $5b90: $7f
	ld c, b                                          ; $5b91: $48
	ccf                                              ; $5b92: $3f
	jr nz, jr_01a_5bb4                               ; $5b93: $20 $1f

	stop                                             ; $5b95: $10 $00
	nop                                              ; $5b97: $00
	and b                                            ; $5b98: $a0
	sbc c                                            ; $5b99: $99
	and b                                            ; $5b9a: $a0
	ld d, b                                          ; $5b9b: $50
	ldh a, [$28]                                     ; $5b9c: $f0 $28
	ld hl, sp+$08                                    ; $5b9e: $f8 $08
	sbc $f8                                          ; $5ba0: $de $f8
	add b                                            ; $5ba2: $80
	inc c                                            ; $5ba3: $0c
	db $fc                                           ; $5ba4: $fc
	ld [bc], a                                       ; $5ba5: $02
	cp $89                                           ; $5ba6: $fe $89
	rst $38                                          ; $5ba8: $ff
	ld b, [hl]                                       ; $5ba9: $46
	cp $24                                           ; $5baa: $fe $24
	db $fc                                           ; $5bac: $fc
	ld h, h                                          ; $5bad: $64
	db $fc                                           ; $5bae: $fc
	db $e4                                           ; $5baf: $e4
	cp h                                             ; $5bb0: $bc
	add sp, $38                                      ; $5bb1: $e8 $38
	ret nc                                           ; $5bb3: $d0

jr_01a_5bb4:
	ld [hl], b                                       ; $5bb4: $70
	ldh [$e0], a                                     ; $5bb5: $e0 $e0
	scf                                              ; $5bb7: $37
	scf                                              ; $5bb8: $37
	ld a, a                                          ; $5bb9: $7f
	ld c, a                                          ; $5bba: $4f
	ld a, a                                          ; $5bbb: $7f
	ld c, d                                          ; $5bbc: $4a
	ccf                                              ; $5bbd: $3f
	ld hl, $1f1f                                     ; $5bbe: $21 $1f $1f
	ld c, $80                                        ; $5bc1: $0e $80
	dec bc                                           ; $5bc3: $0b
	rrca                                             ; $5bc4: $0f
	add hl, bc                                       ; $5bc5: $09
	rlca                                             ; $5bc6: $07
	dec b                                            ; $5bc7: $05
	ld [bc], a                                       ; $5bc8: $02
	inc bc                                           ; $5bc9: $03
	ld bc, $0201                                     ; $5bca: $01 $01 $02
	inc bc                                           ; $5bcd: $03
	inc b                                            ; $5bce: $04
	rlca                                             ; $5bcf: $07
	inc bc                                           ; $5bd0: $03
	inc bc                                           ; $5bd1: $03
	nop                                              ; $5bd2: $00
	nop                                              ; $5bd3: $00
	ld a, a                                          ; $5bd4: $7f
	ld a, a                                          ; $5bd5: $7f
	nop                                              ; $5bd6: $00
	nop                                              ; $5bd7: $00
	ldh a, [$f0]                                     ; $5bd8: $f0 $f0
	ld hl, sp+$48                                    ; $5bda: $f8 $48
	db $fc                                           ; $5bdc: $fc
	inc h                                            ; $5bdd: $24
	db $fc                                           ; $5bde: $fc

jr_01a_5bdf:
	inc [hl]                                         ; $5bdf: $34
	db $fc                                           ; $5be0: $fc
	call nz, Call_01a_788b                           ; $5be1: $c4 $8b $78
	ret z                                            ; $5be4: $c8

	jr z, jr_01a_5bdf                                ; $5be5: $28 $f8

	ret c                                            ; $5be7: $d8

	ld hl, sp-$44                                    ; $5be8: $f8 $bc
	and h                                            ; $5bea: $a4
	ld e, h                                          ; $5beb: $5c

jr_01a_5bec:
	call nc, $ce4a                                   ; $5bec: $d4 $4a $ce
	adc a                                            ; $5bef: $8f
	adc a                                            ; $5bf0: $8f
	add hl, bc                                       ; $5bf1: $09
	rrca                                             ; $5bf2: $0f
	ld [de], a                                       ; $5bf3: $12
	ld e, $ff                                        ; $5bf4: $1e $ff
	rst $38                                          ; $5bf6: $ff
	ld a, e                                          ; $5bf7: $7b
	call c, $c27f                                    ; $5bf8: $dc $7f $c2
	sbc d                                            ; $5bfb: $9a
	ld c, [hl]                                       ; $5bfc: $4e
	ccf                                              ; $5bfd: $3f
	ld [hl+], a                                      ; $5bfe: $22
	rra                                              ; $5bff: $1f
	rra                                              ; $5c00: $1f
	db $fd                                           ; $5c01: $fd
	rst SubAFromDE                                          ; $5c02: $df
	ld bc, $03df                                     ; $5c03: $01 $df $03
	sub a                                            ; $5c06: $97
	daa                                              ; $5c07: $27
	ld h, $5f                                        ; $5c08: $26 $5f
	ld a, c                                          ; $5c0a: $79
	ld b, a                                          ; $5c0b: $47
	ld a, a                                          ; $5c0c: $7f
	ld [hl-], a                                      ; $5c0d: $32
	ld a, $77                                        ; $5c0e: $3e $77
	call nz, $dffd                                   ; $5c10: $c4 $fd $df
	ldh a, [$8d]                                     ; $5c13: $f0 $8d
	db $fc                                           ; $5c15: $fc
	ld c, h                                          ; $5c16: $4c
	cp $32                                           ; $5c17: $fe $32
	rst $38                                          ; $5c19: $ff
	dec de                                           ; $5c1a: $1b
	rst AddAOntoHL                                          ; $5c1b: $ef
	cp c                                             ; $5c1c: $b9
	rst GetHLinHL                                          ; $5c1d: $cf
	ld sp, hl                                        ; $5c1e: $f9
	sub a                                            ; $5c1f: $97
	cp $ff                                           ; $5c20: $fe $ff
	ld a, c                                          ; $5c22: $79
	add $46                                          ; $5c23: $c6 $46
	add b                                            ; $5c25: $80
	add b                                            ; $5c26: $80
	db $fd                                           ; $5c27: $fd
	ld [hl], a                                       ; $5c28: $77
	call nz, $dffd                                   ; $5c29: $c4 $fd $df
	rlca                                             ; $5c2c: $07
	rst SubAFromDE                                          ; $5c2d: $df
	add hl, de                                       ; $5c2e: $19
	sbc l                                            ; $5c2f: $9d
	ccf                                              ; $5c30: $3f
	daa                                              ; $5c31: $27
	ld a, e                                          ; $5c32: $7b
	cp [hl]                                          ; $5c33: $be
	sbc h                                            ; $5c34: $9c
	jr @+$09                                         ; $5c35: $18 $07

	rlca                                             ; $5c37: $07
	ld a, e                                          ; $5c38: $7b
	ret nz                                           ; $5c39: $c0

	sbc d                                            ; $5c3a: $9a
	ld [bc], a                                       ; $5c3b: $02
	daa                                              ; $5c3c: $27
	ld h, $59                                        ; $5c3d: $26 $59

jr_01a_5c3f:
	ld a, a                                          ; $5c3f: $7f
	ld d, a                                          ; $5c40: $57
	ret nz                                           ; $5c41: $c0

	rst SubAFromDE                                          ; $5c42: $df
	ld hl, sp-$71                                    ; $5c43: $f8 $8f
	db $fc                                           ; $5c45: $fc
	call nc, $54fc                                   ; $5c46: $d4 $fc $54
	db $fc                                           ; $5c49: $fc
	ld e, h                                          ; $5c4a: $5c
	call $86bd                                       ; $5c4b: $cd $bd $86
	rst $38                                          ; $5c4e: $ff
	ld h, $fd                                        ; $5c4f: $26 $fd
	rst $38                                          ; $5c51: $ff
	ld a, c                                          ; $5c52: $79
	adc $ce                                          ; $5c53: $ce $ce
	ld c, a                                          ; $5c55: $4f
	ret nz                                           ; $5c56: $c0

	ei                                               ; $5c57: $fb
	rst SubAFromDE                                          ; $5c58: $df
	add b                                            ; $5c59: $80
	sub a                                            ; $5c5a: $97
	ld b, b                                          ; $5c5b: $40
	ret nz                                           ; $5c5c: $c0

	jr nz, jr_01a_5c3f                               ; $5c5d: $20 $e0

	sub b                                            ; $5c5f: $90
	ldh a, [rSVBK]                                   ; $5c60: $f0 $70
	ld [hl], b                                       ; $5c62: $70
	ld sp, hl                                        ; $5c63: $f9
	rst SubAFromDE                                          ; $5c64: $df
	ldh a, [$f7]                                     ; $5c65: $f0 $f7
	rst SubAFromDE                                          ; $5c67: $df
	inc bc                                           ; $5c68: $03
	ld a, a                                          ; $5c69: $7f
	jr nc, jr_01a_5bec                               ; $5c6a: $30 $80

	ld e, $1f                                        ; $5c6c: $1e $1f
	ld hl, $1f3f                                     ; $5c6e: $21 $3f $1f
	rra                                              ; $5c71: $1f
	inc d                                            ; $5c72: $14
	rra                                              ; $5c73: $1f
	inc h                                            ; $5c74: $24
	ccf                                              ; $5c75: $3f
	ld c, c                                          ; $5c76: $49
	ld a, a                                          ; $5c77: $7f
	dec sp                                           ; $5c78: $3b
	ccf                                              ; $5c79: $3f
	rrca                                             ; $5c7a: $0f
	dec c                                            ; $5c7b: $0d

Call_01a_5c7c:
	rrca                                             ; $5c7c: $0f
	inc c                                            ; $5c7d: $0c
	rlca                                             ; $5c7e: $07
	inc b                                            ; $5c7f: $04
	inc bc                                           ; $5c80: $03
	ld [bc], a                                       ; $5c81: $02
	ld bc, $0001                                     ; $5c82: $01 $01 $00
	nop                                              ; $5c85: $00
	ld d, b                                          ; $5c86: $50
	ld d, b                                          ; $5c87: $50
	db $fc                                           ; $5c88: $fc
	db $fc                                           ; $5c89: $fc
	ld b, d                                          ; $5c8a: $42
	adc b                                            ; $5c8b: $88
	cp $41                                           ; $5c8c: $fe $41
	rst $38                                          ; $5c8e: $ff
	pop af                                           ; $5c8f: $f1
	rst $38                                          ; $5c90: $ff
	add hl, bc                                       ; $5c91: $09
	rst $38                                          ; $5c92: $ff
	call nz, $30ff                                   ; $5c93: $c4 $ff $30
	rst $38                                          ; $5c96: $ff
	dec c                                            ; $5c97: $0d
	rst $38                                          ; $5c98: $ff
	sbc a                                            ; $5c99: $9f
	ldh a, [c]                                       ; $5c9a: $f2
	ld a, a                                          ; $5c9b: $7f
	rst SubAFromBC                                          ; $5c9c: $e7
	rst $38                                          ; $5c9d: $ff
	sbc b                                            ; $5c9e: $98
	rst $38                                          ; $5c9f: $ff
	ld h, b                                          ; $5ca0: $60
	rst $38                                          ; $5ca1: $ff
	inc bc                                           ; $5ca2: $03
	ld c, a                                          ; $5ca3: $4f
	sbc d                                            ; $5ca4: $9a
	ld [hl], a                                       ; $5ca5: $77
	sbc b                                            ; $5ca6: $98
	db $dd                                           ; $5ca7: $dd
	ret nz                                           ; $5ca8: $c0

	sub l                                            ; $5ca9: $95
	rst SubAFromBC                                          ; $5caa: $e7
	daa                                              ; $5cab: $27
	ld sp, hl                                        ; $5cac: $f9
	sbc a                                            ; $5cad: $9f
	ld hl, sp+$4f                                    ; $5cae: $f8 $4f
	ld hl, sp-$31                                    ; $5cb0: $f8 $cf
	ld hl, sp+$1f                                    ; $5cb2: $f8 $1f
	ld b, a                                          ; $5cb4: $47
	ldh [$df], a                                     ; $5cb5: $e0 $df
	rrca                                             ; $5cb7: $0f
	sub a                                            ; $5cb8: $97
	ld sp, $533f                                     ; $5cb9: $31 $3f $53
	ld a, a                                          ; $5cbc: $7f
	ld l, [hl]                                       ; $5cbd: $6e
	ld a, [hl]                                       ; $5cbe: $7e
	jp nc, $defe                                     ; $5cbf: $d2 $fe $de

	db $fc                                           ; $5cc2: $fc
	add b                                            ; $5cc3: $80
	call nz, $88f8                                   ; $5cc4: $c4 $f8 $88
	ldh a, [$f0]                                     ; $5cc7: $f0 $f0
	inc b                                            ; $5cc9: $04
	inc b                                            ; $5cca: $04
	dec bc                                           ; $5ccb: $0b
	rrca                                             ; $5ccc: $0f
	ld [$140f], sp                                   ; $5ccd: $08 $0f $14
	rra                                              ; $5cd0: $1f
	ld a, [hl+]                                      ; $5cd1: $2a
	ccf                                              ; $5cd2: $3f
	ld l, e                                          ; $5cd3: $6b
	ld a, a                                          ; $5cd4: $7f
	ld c, c                                          ; $5cd5: $49
	ld a, a                                          ; $5cd6: $7f
	ld e, b                                          ; $5cd7: $58
	ld a, a                                          ; $5cd8: $7f
	ld e, [hl]                                       ; $5cd9: $5e
	ld [hl], a                                       ; $5cda: $77
	ccf                                              ; $5cdb: $3f
	dec [hl]                                         ; $5cdc: $35
	rra                                              ; $5cdd: $1f
	ld d, $3b                                        ; $5cde: $16 $3b
	ld h, $3f                                        ; $5ce0: $26 $3f
	inc h                                            ; $5ce2: $24
	ld a, a                                          ; $5ce3: $7f
	ld c, $7f                                        ; $5ce4: $0e $7f
	rst SubAFromBC                                          ; $5ce6: $e7
	add b                                            ; $5ce7: $80
	rlca                                             ; $5ce8: $07
	ld b, $00                                        ; $5ce9: $06 $00
	nop                                              ; $5ceb: $00
	add sp, -$18                                     ; $5cec: $e8 $e8
	inc d                                            ; $5cee: $14
	db $fc                                           ; $5cef: $fc
	adc d                                            ; $5cf0: $8a
	cp $7a                                           ; $5cf1: $fe $7a
	cp $3e                                           ; $5cf3: $fe $3e
	add $fe                                          ; $5cf5: $c6 $fe
	add $7d                                          ; $5cf7: $c6 $7d
	rst SubAFromBC                                          ; $5cf9: $e7
	ld hl, sp-$31                                    ; $5cfa: $f8 $cf
	ld a, e                                          ; $5cfc: $7b
	rst GetHLinHL                                          ; $5cfd: $cf
	ld a, d                                          ; $5cfe: $7a
	adc $fa                                          ; $5cff: $ce $fa
	ld c, [hl]                                       ; $5d01: $4e
	ld a, [$f48e]                                    ; $5d02: $fa $8e $f4
	sbc h                                            ; $5d05: $9c
	ld hl, sp-$64                                    ; $5d06: $f8 $9c
	sbc b                                            ; $5d08: $98
	ldh a, [hDisp1_SCY]                                     ; $5d09: $f0 $90
	db $dd                                           ; $5d0b: $dd
	ld bc, $0ddf                                     ; $5d0c: $01 $df $0d
	sub b                                            ; $5d0f: $90
	rra                                              ; $5d10: $1f
	inc de                                           ; $5d11: $13
	rra                                              ; $5d12: $1f
	ld de, $0f0f                                     ; $5d13: $11 $0f $0f
	inc bc                                           ; $5d16: $03
	inc bc                                           ; $5d17: $03
	rlca                                             ; $5d18: $07
	inc b                                            ; $5d19: $04
	rrca                                             ; $5d1a: $0f
	add hl, bc                                       ; $5d1b: $09
	rrca                                             ; $5d1c: $0f
	add hl, bc                                       ; $5d1d: $09
	ld b, $7a                                        ; $5d1e: $06 $7a
	ld h, d                                          ; $5d20: $62
	ld l, [hl]                                       ; $5d21: $6e
	ld e, h                                          ; $5d22: $5c
	rst SubAFromDE                                          ; $5d23: $df
	rrca                                             ; $5d24: $0f
	sub [hl]                                         ; $5d25: $96
	ldh a, [$b0]                                     ; $5d26: $f0 $b0
	ldh a, [$50]                                     ; $5d28: $f0 $50
	ldh a, [rAUD1SWEEP]                              ; $5d2a: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $5d2c: $f0 $10
	ldh [$7b], a                                     ; $5d2e: $e0 $7b
	ld [bc], a                                       ; $5d30: $02
	ld a, a                                          ; $5d31: $7f
	ld sp, hl                                        ; $5d32: $f9
	sbc l                                            ; $5d33: $9d
	ret nc                                           ; $5d34: $d0

	ldh a, [$de]                                     ; $5d35: $f0 $de
	ldh [$99], a                                     ; $5d37: $e0 $99
	and b                                            ; $5d39: $a0
	ldh a, [$d0]                                     ; $5d3a: $f0 $d0
	ld [hl], b                                       ; $5d3c: $70
	ldh a, [rOBP0]                                   ; $5d3d: $f0 $48
	sbc $f8                                          ; $5d3f: $de $f8
	sbc e                                            ; $5d41: $9b
	adc b                                            ; $5d42: $88
	ld hl, sp-$04                                    ; $5d43: $f8 $fc
	db $fc                                           ; $5d45: $fc
	db $fd                                           ; $5d46: $fd
	rst SubAFromDE                                          ; $5d47: $df
	ld c, $85                                        ; $5d48: $0e $85
	ld [hl], c                                       ; $5d4a: $71
	ld a, a                                          ; $5d4b: $7f
	add b                                            ; $5d4c: $80
	rst $38                                          ; $5d4d: $ff
	ld d, d                                          ; $5d4e: $52
	ld a, a                                          ; $5d4f: $7f
	and h                                            ; $5d50: $a4
	rst $38                                          ; $5d51: $ff
	xor d                                            ; $5d52: $aa
	rst $38                                          ; $5d53: $ff
	set 7, l                                         ; $5d54: $cb $fd
	ld e, e                                          ; $5d56: $5b
	ld [hl], h                                       ; $5d57: $74
	ccf                                              ; $5d58: $3f
	inc a                                            ; $5d59: $3c
	scf                                              ; $5d5a: $37
	inc l                                            ; $5d5b: $2c
	ccf                                              ; $5d5c: $3f
	inc l                                            ; $5d5d: $2c
	rra                                              ; $5d5e: $1f
	inc e                                            ; $5d5f: $1c
	rra                                              ; $5d60: $1f
	inc de                                           ; $5d61: $13
	rrca                                             ; $5d62: $0f
	ld [$d46e], sp                                   ; $5d63: $08 $6e $d4
	ld a, l                                          ; $5d66: $7d
	ldh [c], a                                       ; $5d67: $e2
	sub c                                            ; $5d68: $91
	inc b                                            ; $5d69: $04
	db $fc                                           ; $5d6a: $fc
	ld [hl+], a                                      ; $5d6b: $22
	cp $92                                           ; $5d6c: $fe $92
	cp $49                                           ; $5d6e: $fe $49
	rst $38                                          ; $5d70: $ff
	ld c, c                                          ; $5d71: $49
	rst $38                                          ; $5d72: $ff
	ld l, c                                          ; $5d73: $69
	cp a                                             ; $5d74: $bf
	pop af                                           ; $5d75: $f1
	rst $38                                          ; $5d76: $ff
	ld a, e                                          ; $5d77: $7b
	ld a, [hl]                                       ; $5d78: $7e
	sbc b                                            ; $5d79: $98
	adc $fe                                          ; $5d7a: $ce $fe
	adc $f4                                          ; $5d7c: $ce $f4
	inc e                                            ; $5d7e: $1c
	db $fc                                           ; $5d7f: $fc
	inc a                                            ; $5d80: $3c
	ld e, l                                          ; $5d81: $5d
	ldh [$7b], a                                     ; $5d82: $e0 $7b
	add hl, sp                                       ; $5d84: $39
	ld a, c                                          ; $5d85: $79
	ldh [rPCM12], a                                  ; $5d86: $e0 $76
	call z, $e02d                                    ; $5d88: $cc $2d $e0
	ld a, a                                          ; $5d8b: $7f
	ld hl, sp-$65                                    ; $5d8c: $f8 $9b
	or b                                             ; $5d8e: $b0
	ld [hl], b                                       ; $5d8f: $70
	ld hl, sp-$38                                    ; $5d90: $f8 $c8
	ld [hl], l                                       ; $5d92: $75
	ldh [$9d], a                                     ; $5d93: $e0 $9d
	ld c, [hl]                                       ; $5d95: $4e
	jp z, $e05d                                      ; $5d96: $ca $5d $e0

	rra                                              ; $5d99: $1f
	add b                                            ; $5d9a: $80
	ld a, a                                          ; $5d9b: $7f
	ld a, [$7f97]                                    ; $5d9c: $fa $97 $7f
	ld d, e                                          ; $5d9f: $53
	ld a, l                                          ; $5da0: $7d
	ld c, e                                          ; $5da1: $4b
	ld a, a                                          ; $5da2: $7f
	ld e, a                                          ; $5da3: $5f
	ld a, a                                          ; $5da4: $7f
	ld c, a                                          ; $5da5: $4f
	ld bc, $79c0                                     ; $5da6: $01 $c0 $79
	ret nz                                           ; $5da9: $c0

	ld a, l                                          ; $5daa: $7d
	jp nz, $ff99                                     ; $5dab: $c2 $99 $ff

	adc c                                            ; $5dae: $89
	rst $38                                          ; $5daf: $ff
	ld d, $ff                                        ; $5db0: $16 $ff
	add hl, sp                                       ; $5db2: $39
	ld b, l                                          ; $5db3: $45
	ret nz                                           ; $5db4: $c0

	ld b, $00                                        ; $5db5: $06 $00
	ld [hl], l                                       ; $5db7: $75
	xor d                                            ; $5db8: $aa
	sbc $0f                                          ; $5db9: $de $0f
	ld a, a                                          ; $5dbb: $7f
	ld [hl], c                                       ; $5dbc: $71
	ld a, [hl]                                       ; $5dbd: $7e
	sub h                                            ; $5dbe: $94
	sbc [hl]                                         ; $5dbf: $9e
	rlca                                             ; $5dc0: $07
	ld [hl], a                                       ; $5dc1: $77
	ld a, $df                                        ; $5dc2: $3e $df
	ld c, $97                                        ; $5dc4: $0e $97
	ld e, $12                                        ; $5dc6: $1e $12
	ld e, $1e                                        ; $5dc8: $1e $1e
	ld [hl-], a                                      ; $5dca: $32
	ld a, $42                                        ; $5dcb: $3e $42
	ld a, [hl]                                       ; $5dcd: $7e
	ld l, a                                          ; $5dce: $6f
	sbc [hl]                                         ; $5dcf: $9e
	rst SubAFromDE                                          ; $5dd0: $df
	ld hl, sp+$7a                                    ; $5dd1: $f8 $7a
	res 3, l                                         ; $5dd3: $cb $9d
	jr nc, @-$0e                                     ; $5dd5: $30 $f0

	ld a, d                                          ; $5dd7: $7a
	jp $fb7f                                         ; $5dd8: $c3 $7f $fb


	ld a, [hl]                                       ; $5ddb: $7e
	or [hl]                                          ; $5ddc: $b6
	sub e                                            ; $5ddd: $93
	db $fc                                           ; $5dde: $fc
	sbc h                                            ; $5ddf: $9c
	rst $38                                          ; $5de0: $ff
	xor e                                            ; $5de1: $ab
	db $fd                                           ; $5de2: $fd
	sub a                                            ; $5de3: $97
	ld a, c                                          ; $5de4: $79
	ld a, a                                          ; $5de5: $7f
	ld [de], a                                       ; $5de6: $12
	ld e, $0c                                        ; $5de7: $1e $0c
	inc c                                            ; $5de9: $0c
	ld e, a                                          ; $5dea: $5f
	sbc [hl]                                         ; $5deb: $9e
	ld b, e                                          ; $5dec: $43
	ld b, b                                          ; $5ded: $40
	sbc h                                            ; $5dee: $9c
	jr nc, jr_01a_5e30                               ; $5def: $30 $3f

	jr z, jr_01a_5e6d                                ; $5df1: $28 $7a

	ld b, b                                          ; $5df3: $40
	sbc [hl]                                         ; $5df4: $9e
	inc c                                            ; $5df5: $0c
	ld [hl+], a                                      ; $5df6: $22
	ret nz                                           ; $5df7: $c0

	sbc [hl]                                         ; $5df8: $9e
	ccf                                              ; $5df9: $3f
	halt                                             ; $5dfa: $76
	ld b, b                                          ; $5dfb: $40
	ld l, [hl]                                       ; $5dfc: $6e
	ret nz                                           ; $5dfd: $c0

	ld l, l                                          ; $5dfe: $6d
	ld a, [hl+]                                      ; $5dff: $2a
	ld [hl], a                                       ; $5e00: $77
	ld h, $77                                        ; $5e01: $26 $77
	ld a, [$13df]                                    ; $5e03: $fa $df $13
	sub a                                            ; $5e06: $97
	cpl                                              ; $5e07: $2f
	inc a                                            ; $5e08: $3c
	inc hl                                           ; $5e09: $23
	ccf                                              ; $5e0a: $3f
	add hl, de                                       ; $5e0b: $19
	rra                                              ; $5e0c: $1f
	ccf                                              ; $5e0d: $3f
	ccf                                              ; $5e0e: $3f
	ld sp, hl                                        ; $5e0f: $f9
	adc e                                            ; $5e10: $8b
	cp $f2                                           ; $5e11: $fe $f2
	cp $4a                                           ; $5e13: $fe $4a
	cp $32                                           ; $5e15: $fe $32
	cp $26                                           ; $5e17: $fe $26
	db $fc                                           ; $5e19: $fc
	db $e4                                           ; $5e1a: $e4
	ld hl, sp-$68                                    ; $5e1b: $f8 $98
	ld hl, sp+$38                                    ; $5e1d: $f8 $38
	add sp, $78                                      ; $5e1f: $e8 $78
	ret c                                            ; $5e21: $d8

	ld hl, sp-$50                                    ; $5e22: $f8 $b0
	or b                                             ; $5e24: $b0
	ld c, a                                          ; $5e25: $4f
	ld [hl+], a                                      ; $5e26: $22
	rst SubAFromDE                                          ; $5e27: $df
	inc bc                                           ; $5e28: $03
	ld a, [hl]                                       ; $5e29: $7e
	ld d, a                                          ; $5e2a: $57
	add b                                            ; $5e2b: $80
	jr nz, jr_01a_5e6d                               ; $5e2c: $20 $3f

	inc d                                            ; $5e2e: $14
	rra                                              ; $5e2f: $1f

jr_01a_5e30:
	add hl, hl                                       ; $5e30: $29
	ccf                                              ; $5e31: $3f
	ld a, [hl+]                                      ; $5e32: $2a
	ccf                                              ; $5e33: $3f
	ld [hl], d                                       ; $5e34: $72
	ld a, a                                          ; $5e35: $7f
	or $9d                                           ; $5e36: $f6 $9d
	rst $38                                          ; $5e38: $ff
	sbc h                                            ; $5e39: $9c
	rst $38                                          ; $5e3a: $ff
	adc e                                            ; $5e3b: $8b
	ld a, a                                          ; $5e3c: $7f
	ld c, e                                          ; $5e3d: $4b
	ccf                                              ; $5e3e: $3f
	dec h                                            ; $5e3f: $25
	rra                                              ; $5e40: $1f
	inc d                                            ; $5e41: $14
	rrca                                             ; $5e42: $0f
	ld a, [bc]                                       ; $5e43: $0a
	rlca                                             ; $5e44: $07
	dec b                                            ; $5e45: $05
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	cp h                                             ; $5e48: $bc
	cp h                                             ; $5e49: $bc
	ld b, d                                          ; $5e4a: $42
	add h                                            ; $5e4b: $84
	cp $01                                           ; $5e4c: $fe $01
	rst $38                                          ; $5e4e: $ff
	adc b                                            ; $5e4f: $88
	rst $38                                          ; $5e50: $ff
	inc h                                            ; $5e51: $24
	rst $38                                          ; $5e52: $ff
	sub d                                            ; $5e53: $92
	rst $38                                          ; $5e54: $ff
	jp nc, $da7f                                     ; $5e55: $d2 $7f $da

	cpl                                              ; $5e58: $2f
	db $fd                                           ; $5e59: $fd
	rlca                                             ; $5e5a: $07
	rst $38                                          ; $5e5b: $ff
	inc sp                                           ; $5e5c: $33
	rst $38                                          ; $5e5d: $ff
	dec sp                                           ; $5e5e: $3b
	rst $38                                          ; $5e5f: $ff
	ld a, [hl+]                                      ; $5e60: $2a
	rst $38                                          ; $5e61: $ff
	call nz, $c97f                                   ; $5e62: $c4 $7f $c9
	cp $f2                                           ; $5e65: $fe $f2
	ld e, [hl]                                       ; $5e67: $5e
	sbc $76                                          ; $5e68: $de $76
	call c, Call_01a_609d                            ; $5e6a: $dc $9d $60

jr_01a_5e6d:
	ldh [$7b], a                                     ; $5e6d: $e0 $7b
	ld d, $7b                                        ; $5e6f: $16 $7b
	inc d                                            ; $5e71: $14
	sbc e                                            ; $5e72: $9b
	ldh [rAUD4LEN], a                                ; $5e73: $e0 $20
	ret nz                                           ; $5e75: $c0

	ld b, b                                          ; $5e76: $40
	ld l, [hl]                                       ; $5e77: $6e
	cp b                                             ; $5e78: $b8
	db $dd                                           ; $5e79: $dd
	inc bc                                           ; $5e7a: $03
	pop de                                           ; $5e7b: $d1
	ld bc, $1c66                                     ; $5e7c: $01 $66 $1c
	halt                                             ; $5e7f: $76
	ld l, d                                          ; $5e80: $6a
	ld a, d                                          ; $5e81: $7a
	jr z, jr_01a_5f03                                ; $5e82: $28 $7f

	inc hl                                           ; $5e84: $23
	sbc [hl]                                         ; $5e85: $9e
	ld [$a579], sp                                   ; $5e86: $08 $79 $a5
	ld a, e                                          ; $5e89: $7b
	db $fd                                           ; $5e8a: $fd
	sbc d                                            ; $5e8b: $9a
	or b                                             ; $5e8c: $b0
	ret nc                                           ; $5e8d: $d0

	ldh a, [$d0]                                     ; $5e8e: $f0 $d0
	ld hl, sp+$79                                    ; $5e90: $f8 $79
	and a                                            ; $5e92: $a7
	sub a                                            ; $5e93: $97
	db $fc                                           ; $5e94: $fc
	ld h, h                                          ; $5e95: $64
	call c, Call_01a_52dc                            ; $5e96: $dc $dc $52
	sbc $d9                                          ; $5e99: $de $d9
	rst SubAFromDE                                          ; $5e9b: $df
	ld [hl], a                                       ; $5e9c: $77
	ld e, d                                          ; $5e9d: $5a
	inc a                                            ; $5e9e: $3c
	ld b, b                                          ; $5e9f: $40
	ld c, [hl]                                       ; $5ea0: $4e
	ld b, b                                          ; $5ea1: $40
	ld h, h                                          ; $5ea2: $64
	ld b, b                                          ; $5ea3: $40
	sub a                                            ; $5ea4: $97
	ret                                              ; $5ea5: $c9


	cp c                                             ; $5ea6: $b9
	adc a                                            ; $5ea7: $8f
	or $ff                                           ; $5ea8: $f6 $ff
	ld [hl+], a                                      ; $5eaa: $22
	rst SubAFromDE                                          ; $5eab: $df
	ld e, c                                          ; $5eac: $59
	inc l                                            ; $5ead: $2c
	ld b, b                                          ; $5eae: $40
	rst SubAFromDE                                          ; $5eaf: $df
	ld h, b                                          ; $5eb0: $60
	ld a, l                                          ; $5eb1: $7d
	add hl, sp                                       ; $5eb2: $39
	ld a, a                                          ; $5eb3: $7f
	ld l, c                                          ; $5eb4: $69
	ld a, a                                          ; $5eb5: $7f
	and c                                            ; $5eb6: $a1
	sbc e                                            ; $5eb7: $9b
	ld d, b                                          ; $5eb8: $50
	ld [hl], b                                       ; $5eb9: $70
	jr nc, jr_01a_5eec                               ; $5eba: $30 $30

	ld c, [hl]                                       ; $5ebc: $4e
	ld b, b                                          ; $5ebd: $40
	rst SubAFromDE                                          ; $5ebe: $df
	inc bc                                           ; $5ebf: $03
	sbc h                                            ; $5ec0: $9c
	inc c                                            ; $5ec1: $0c
	rrca                                             ; $5ec2: $0f
	db $10                                           ; $5ec3: $10
	ld a, e                                          ; $5ec4: $7b
	nop                                              ; $5ec5: $00
	add h                                            ; $5ec6: $84
	ld [hl+], a                                      ; $5ec7: $22
	ccf                                              ; $5ec8: $3f
	ld b, a                                          ; $5ec9: $47
	ld a, l                                          ; $5eca: $7d
	ld b, a                                          ; $5ecb: $47
	ld a, l                                          ; $5ecc: $7d
	add a                                            ; $5ecd: $87

jr_01a_5ece:
	db $fc                                           ; $5ece: $fc
	add a                                            ; $5ecf: $87
	rst $38                                          ; $5ed0: $ff
	add a                                            ; $5ed1: $87
	db $fc                                           ; $5ed2: $fc
	ld b, a                                          ; $5ed3: $47
	ld a, h                                          ; $5ed4: $7c
	ld b, e                                          ; $5ed5: $43
	ld a, a                                          ; $5ed6: $7f
	jr nz, jr_01a_5f18                               ; $5ed7: $20 $3f

	ld b, b                                          ; $5ed9: $40
	ld a, a                                          ; $5eda: $7f
	sbc b                                            ; $5edb: $98
	rst $38                                          ; $5edc: $ff
	rst SubAFromBC                                          ; $5edd: $e7
	rst SubAFromBC                                          ; $5ede: $e7
	ret nz                                           ; $5edf: $c0

	ret nz                                           ; $5ee0: $c0

	jr nc, jr_01a_5f55                               ; $5ee1: $30 $72

	add d                                            ; $5ee3: $82
	adc c                                            ; $5ee4: $89
	add d                                            ; $5ee5: $82
	cp $c2                                           ; $5ee6: $fe $c2
	ld a, [hl]                                       ; $5ee8: $7e
	pop bc                                           ; $5ee9: $c1
	ld a, a                                          ; $5eea: $7f
	pop hl                                           ; $5eeb: $e1

jr_01a_5eec:
	cp a                                             ; $5eec: $bf
	pop af                                           ; $5eed: $f1
	ld e, a                                          ; $5eee: $5f
	pop hl                                           ; $5eef: $e1
	cp a                                             ; $5ef0: $bf

jr_01a_5ef1:
	jp nz, $827e                                     ; $5ef1: $c2 $7e $82

	cp $04                                           ; $5ef4: $fe $04
	db $fc                                           ; $5ef6: $fc
	jr jr_01a_5ef1                                   ; $5ef7: $18 $f8

	ld h, b                                          ; $5ef9: $60
	ldh [rPCM34], a                                  ; $5efa: $e0 $77
	sub h                                            ; $5efc: $94
	rst SubAFromDE                                          ; $5efd: $df
	ld bc, $d07c                                     ; $5efe: $01 $7c $d0
	ld a, [hl]                                       ; $5f01: $7e
	rlca                                             ; $5f02: $07

jr_01a_5f03:
	ld [hl], a                                       ; $5f03: $77
	cp h                                             ; $5f04: $bc
	ld [hl], a                                       ; $5f05: $77
	call z, $fe77                                    ; $5f06: $cc $77 $fe
	sub [hl]                                         ; $5f09: $96
	ld hl, $213f                                     ; $5f0a: $21 $3f $21
	ccf                                              ; $5f0d: $3f
	db $10                                           ; $5f0e: $10
	rra                                              ; $5f0f: $1f
	ld [$060f], sp                                   ; $5f10: $08 $0f $06
	ld a, e                                          ; $5f13: $7b
	ld c, [hl]                                       ; $5f14: $4e
	rst $38                                          ; $5f15: $ff
	ld l, a                                          ; $5f16: $6f
	cp [hl]                                          ; $5f17: $be

jr_01a_5f18:
	sbc d                                            ; $5f18: $9a
	add h                                            ; $5f19: $84
	db $fc                                           ; $5f1a: $fc
	ld [bc], a                                       ; $5f1b: $02
	cp $82                                           ; $5f1c: $fe $82
	ld a, d                                          ; $5f1e: $7a
	cp b                                             ; $5f1f: $b8
	sbc [hl]                                         ; $5f20: $9e
	add c                                            ; $5f21: $81
	ld a, e                                          ; $5f22: $7b
	cp $7f                                           ; $5f23: $fe $7f
	ret nz                                           ; $5f25: $c0

	ld a, a                                          ; $5f26: $7f
	cp $77                                           ; $5f27: $fe $77
	ldh a, [$9b]                                     ; $5f29: $f0 $9b
	add hl, sp                                       ; $5f2b: $39
	rst $38                                          ; $5f2c: $ff
	rst JumpTable                                          ; $5f2d: $c7
	rst JumpTable                                          ; $5f2e: $c7
	db $fd                                           ; $5f2f: $fd
	rst SubAFromDE                                          ; $5f30: $df
	jr jr_01a_5ece                                   ; $5f31: $18 $9b

	ld a, $36                                        ; $5f33: $3e $36
	ld a, a                                          ; $5f35: $7f
	ld b, e                                          ; $5f36: $43
	ld a, e                                          ; $5f37: $7b
	rst SubAFromBC                                          ; $5f38: $e7
	sub l                                            ; $5f39: $95
	add e                                            ; $5f3a: $83
	ld a, a                                          ; $5f3b: $7f
	ld h, l                                          ; $5f3c: $65
	ld a, a                                          ; $5f3d: $7f
	ld b, c                                          ; $5f3e: $41
	ld a, a                                          ; $5f3f: $7f
	ld b, c                                          ; $5f40: $41
	ld a, $32                                        ; $5f41: $3e $32
	ld c, $7a                                        ; $5f43: $0e $7a
	add [hl]                                         ; $5f45: $86
	rst SubAFromDE                                          ; $5f46: $df
	ld [bc], a                                       ; $5f47: $02
	db $fd                                           ; $5f48: $fd
	inc bc                                           ; $5f49: $03
	ld bc, $dfff                                     ; $5f4a: $01 $ff $df
	dec a                                            ; $5f4d: $3d
	add b                                            ; $5f4e: $80
	inc de                                           ; $5f4f: $13
	rra                                              ; $5f50: $1f
	ld sp, hl                                        ; $5f51: $f9
	rst $38                                          ; $5f52: $ff
	ld b, a                                          ; $5f53: $47
	ld a, a                                          ; $5f54: $7f

jr_01a_5f55:
	ld [hl-], a                                      ; $5f55: $32
	ccf                                              ; $5f56: $3f
	dec h                                            ; $5f57: $25
	ccf                                              ; $5f58: $3f
	ld b, h                                          ; $5f59: $44
	ld a, a                                          ; $5f5a: $7f
	ld c, h                                          ; $5f5b: $4c
	ld a, a                                          ; $5f5c: $7f
	ld c, [hl]                                       ; $5f5d: $4e
	ld a, e                                          ; $5f5e: $7b
	ccf                                              ; $5f5f: $3f
	dec a                                            ; $5f60: $3d
	cpl                                              ; $5f61: $2f
	jr nc, jr_01a_5fa3                               ; $5f62: $30 $3f

	ld a, [hl+]                                      ; $5f64: $2a
	ccf                                              ; $5f65: $3f
	ld [hl], $4f                                     ; $5f66: $36 $4f
	ld a, c                                          ; $5f68: $79
	ld c, a                                          ; $5f69: $4f
	db $fc                                           ; $5f6a: $fc
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	ret nz                                           ; $5f6d: $c0

	add d                                            ; $5f6e: $82
	ret nz                                           ; $5f6f: $c0

	inc [hl]                                         ; $5f70: $34
	db $f4                                           ; $5f71: $f4
	adc [hl]                                         ; $5f72: $8e
	cp $fc                                           ; $5f73: $fe $fc
	db $fc                                           ; $5f75: $fc
	adc d                                            ; $5f76: $8a
	cp $26                                           ; $5f77: $fe $26
	cp $96                                           ; $5f79: $fe $96
	cp $d5                                           ; $5f7b: $fe $d5
	rst $38                                          ; $5f7d: $ff
	db $fd                                           ; $5f7e: $fd
	cp a                                             ; $5f7f: $bf
	ld a, [$fe0e]                                    ; $5f80: $fa $0e $fe
	ld [bc], a                                       ; $5f83: $02
	cp $52                                           ; $5f84: $fe $52
	cp $6e                                           ; $5f86: $fe $6e
	ld sp, hl                                        ; $5f88: $f9
	adc a                                            ; $5f89: $8f
	pop af                                           ; $5f8a: $f1
	rra                                              ; $5f8b: $1f
	rra                                              ; $5f8c: $1f
	ret nz                                           ; $5f8d: $c0

	sbc c                                            ; $5f8e: $99
	ld a, a                                          ; $5f8f: $7f
	ld d, [hl]                                       ; $5f90: $56
	ld a, a                                          ; $5f91: $7f
	ld c, c                                          ; $5f92: $49
	ld a, a                                          ; $5f93: $7f
	ld h, h                                          ; $5f94: $64
	rra                                              ; $5f95: $1f
	ret nz                                           ; $5f96: $c0

	sbc c                                            ; $5f97: $99
	rst $38                                          ; $5f98: $ff
	ld l, l                                          ; $5f99: $6d

Jump_01a_5f9a:
	rst $38                                          ; $5f9a: $ff
	adc c                                            ; $5f9b: $89
	cp $12                                           ; $5f9c: $fe $12
	ld sp, hl                                        ; $5f9e: $f9
	sbc c                                            ; $5f9f: $99
	ld a, h                                          ; $5fa0: $7c
	inc b                                            ; $5fa1: $04
	ld a, h                                          ; $5fa2: $7c

jr_01a_5fa3:
	ld l, h                                          ; $5fa3: $6c
	jr nc, @+$12                                     ; $5fa4: $30 $10

	ld a, e                                          ; $5fa6: $7b
	ld a, [$7c9e]                                    ; $5fa7: $fa $9e $7c
	db $ed                                           ; $5faa: $ed
	sub [hl]                                         ; $5fab: $96
	ld bc, $323f                                     ; $5fac: $01 $3f $32
	ld a, $04                                        ; $5faf: $3e $04
	inc e                                            ; $5fb1: $1c
	ld [$0238], sp                                   ; $5fb2: $08 $38 $02
	sbc $7e                                          ; $5fb5: $de $7e
	ldh [rP1], a                                     ; $5fb7: $e0 $00
	ldh [$b4], a                                     ; $5fb9: $e0 $b4
	sub d                                            ; $5fbb: $92
	inc sp                                           ; $5fbc: $33
	rst $38                                          ; $5fbd: $ff
	db $10                                           ; $5fbe: $10
	ld a, a                                          ; $5fbf: $7f
	ld [$043f], sp                                   ; $5fc0: $08 $3f $04
	rra                                              ; $5fc3: $1f
	inc b                                            ; $5fc4: $04
	rrca                                             ; $5fc5: $0f
	inc b                                            ; $5fc6: $04
	rrca                                             ; $5fc7: $0f
	rlca                                             ; $5fc8: $07
	ld a, e                                          ; $5fc9: $7b
	db $fc                                           ; $5fca: $fc
	ld a, a                                          ; $5fcb: $7f
	cp $9a                                           ; $5fcc: $fe $9a
	ld [bc], a                                       ; $5fce: $02
	rlca                                             ; $5fcf: $07
	inc bc                                           ; $5fd0: $03
	rlca                                             ; $5fd1: $07
	ld [bc], a                                       ; $5fd2: $02
	ld a, e                                          ; $5fd3: $7b
	cp $7f                                           ; $5fd4: $fe $7f
	ld a, [$03bf]                                    ; $5fd6: $fa $bf $03
	nop                                              ; $5fd9: $00
	sub a                                            ; $5fda: $97
	ldh [c], a                                       ; $5fdb: $e2
	cp $84                                           ; $5fdc: $fe $84
	db $fc                                           ; $5fde: $fc
	ld [$90f8], sp                                   ; $5fdf: $08 $f8 $90
	ldh a, [rPCM34]                                  ; $5fe2: $f0 $77
	db $fc                                           ; $5fe4: $fc

jr_01a_5fe5:
	sbc l                                            ; $5fe5: $9d
	ld [hl], b                                       ; $5fe6: $70

jr_01a_5fe7:
	ldh a, [rPCM34]                                  ; $5fe7: $f0 $77
	db $fc                                           ; $5fe9: $fc
	sub l                                            ; $5fea: $95
	jr jr_01a_5fe5                                   ; $5feb: $18 $f8

	jr z, jr_01a_5fe7                                ; $5fed: $28 $f8

	ret z                                            ; $5fef: $c8

	ld hl, sp+$18                                    ; $5ff0: $f8 $18
	sbc b                                            ; $5ff2: $98
	add b                                            ; $5ff3: $80
	add b                                            ; $5ff4: $80
	cp a                                             ; $5ff5: $bf
	add b                                            ; $5ff6: $80
	nop                                              ; $5ff7: $00
	ld a, [hl]                                       ; $5ff8: $7e
	ld a, [bc]                                       ; $5ff9: $0a
	sub a                                            ; $5ffa: $97
	ld de, $081f                                     ; $5ffb: $11 $1f $08
	rrca                                             ; $5ffe: $0f
	inc b                                            ; $5fff: $04
	rlca                                             ; $6000: $07
	inc b                                            ; $6001: $04
	rlca                                             ; $6002: $07
	db $db                                           ; $6003: $db
	inc bc                                           ; $6004: $03
	sbc [hl]                                         ; $6005: $9e
	ld [bc], a                                       ; $6006: $02
	ld a, e                                          ; $6007: $7b
	cp $df                                           ; $6008: $fe $df
	ld bc, $03db                                     ; $600a: $01 $db $03
	db $fd                                           ; $600d: $fd
	sbc h                                            ; $600e: $9c
	and d                                            ; $600f: $a2
	cp $44                                           ; $6010: $fe $44
	ld a, e                                          ; $6012: $7b
	ret nz                                           ; $6013: $c0

	sbc h                                            ; $6014: $9c
	db $10                                           ; $6015: $10
	ldh a, [rAUD1SWEEP]                              ; $6016: $f0 $10
	ret c                                            ; $6018: $d8

	ldh a, [$df]                                     ; $6019: $f0 $df
	ld hl, sp+$7f                                    ; $601b: $f8 $7f
	ret nz                                           ; $601d: $c0

	sbc e                                            ; $601e: $9b
	add sp, -$08                                     ; $601f: $e8 $f8
	ret c                                            ; $6021: $d8

	ret c                                            ; $6022: $d8

	push af                                          ; $6023: $f5
	sub a                                            ; $6024: $97
	ld [bc], a                                       ; $6025: $02
	ld a, $34                                        ; $6026: $3e $34
	inc a                                            ; $6028: $3c
	ld [$1018], sp                                   ; $6029: $08 $18 $10
	jr nc, @+$7c                                     ; $602c: $30 $7a

	ld bc, $0046                                     ; $602e: $01 $46 $00
	sbc [hl]                                         ; $6031: $9e
	ret nz                                           ; $6032: $c0

	or c                                             ; $6033: $b1
	ld h, b                                          ; $6034: $60
	jr nc, jr_01a_604f                               ; $6035: $30 $18

	ld [$0c0c], sp                                   ; $6037: $08 $0c $0c
	inc b                                            ; $603a: $04
	inc b                                            ; $603b: $04
	inc b                                            ; $603c: $04
	ld b, $04                                        ; $603d: $06 $04
	inc b                                            ; $603f: $04
	inc b                                            ; $6040: $04
	inc bc                                           ; $6041: $03
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	ldh [rP1], a                                     ; $6044: $e0 $00
	ldh [$a3], a                                     ; $6046: $e0 $a3
	ldh [rP1], a                                     ; $6048: $e0 $00
	ldh [$a3], a                                     ; $604a: $e0 $a3
	ldh [rSC], a                                     ; $604c: $e0 $02
	ei                                               ; $604e: $fb

jr_01a_604f:
	rst SubAFromDE                                          ; $604f: $df
	inc bc                                           ; $6050: $03
	add a                                            ; $6051: $87
	inc a                                            ; $6052: $3c
	ccf                                              ; $6053: $3f
	ld de, $661f                                     ; $6054: $11 $1f $66
	ld a, a                                          ; $6057: $7f
	adc d                                            ; $6058: $8a
	rst $38                                          ; $6059: $ff
	ld d, e                                          ; $605a: $53
	ld a, a                                          ; $605b: $7f
	ld d, l                                          ; $605c: $55
	ld a, a                                          ; $605d: $7f
	ld h, a                                          ; $605e: $67
	ld a, [hl]                                       ; $605f: $7e
	ld b, a                                          ; $6060: $47
	ld a, h                                          ; $6061: $7c
	ld c, a                                          ; $6062: $4f
	ld a, a                                          ; $6063: $7f
	ld e, a                                          ; $6064: $5f
	ld [hl], c                                       ; $6065: $71
	ccf                                              ; $6066: $3f
	inc hl                                           ; $6067: $23
	ccf                                              ; $6068: $3f
	daa                                              ; $6069: $27
	ei                                               ; $606a: $fb
	rst SubAFromDE                                          ; $606b: $df
	ldh a, [$80]                                     ; $606c: $f0 $80
	ld [$8cf8], sp                                   ; $606e: $08 $f8 $8c
	db $fc                                           ; $6071: $fc
	ld [hl], d                                       ; $6072: $72
	cp $9a                                           ; $6073: $fe $9a
	cp $05                                           ; $6075: $fe $05
	rst $38                                          ; $6077: $ff
	push hl                                          ; $6078: $e5
	rst $38                                          ; $6079: $ff
	push af                                          ; $607a: $f5
	ccf                                              ; $607b: $3f
	push af                                          ; $607c: $f5
	rst $38                                          ; $607d: $ff
	jp z, $a6fe                                      ; $607e: $ca $fe $a6

	ld a, [$e43c]                                    ; $6081: $fa $3c $e4
	ld hl, sp-$08                                    ; $6084: $f8 $f8
	ld a, a                                          ; $6086: $7f
	ld b, [hl]                                       ; $6087: $46
	ld a, c                                          ; $6088: $79
	ld c, a                                          ; $6089: $4f
	jr c, jr_01a_60cb                                ; $608a: $38 $3f

	inc c                                            ; $608c: $0c
	sbc h                                            ; $608d: $9c
	rrca                                             ; $608e: $0f

jr_01a_608f:
	inc b                                            ; $608f: $04
	rlca                                             ; $6090: $07
	db $d3                                           ; $6091: $d3
	inc bc                                           ; $6092: $03
	rst SubAFromDE                                          ; $6093: $df
	rrca                                             ; $6094: $0f
	sbc e                                            ; $6095: $9b
	dec de                                           ; $6096: $1b
	rra                                              ; $6097: $1f
	rst $38                                          ; $6098: $ff
	rst $38                                          ; $6099: $ff
	ld a, e                                          ; $609a: $7b
	add $98                                          ; $609b: $c6 $98

Call_01a_609d:
	jr nc, jr_01a_608f                               ; $609d: $30 $f0

	db $10                                           ; $609f: $10
	ld hl, sp-$38                                    ; $60a0: $f8 $c8
	ld a, h                                          ; $60a2: $7c
	call nz, $d477                                   ; $60a3: $c4 $77 $d4
	rst SubAFromDE                                          ; $60a6: $df
	ldh [$dd], a                                     ; $60a7: $e0 $dd
	ldh a, [$9e]                                     ; $60a9: $f0 $9e
	ld [hl], b                                       ; $60ab: $70
	ld [hl], e                                       ; $60ac: $73
	cp $df                                           ; $60ad: $fe $df
	ldh a, [$9d]                                     ; $60af: $f0 $9d
	sbc b                                            ; $60b1: $98
	ld hl, sp+$77                                    ; $60b2: $f8 $77
	ldh [$97], a                                     ; $60b4: $e0 $97
	daa                                              ; $60b6: $27
	ld a, $21                                        ; $60b7: $3e $21
	ccf                                              ; $60b9: $3f
	jr nc, jr_01a_60fb                               ; $60ba: $30 $3f

	jr jr_01a_60dd                                   ; $60bc: $18 $1f

	ld [hl], a                                       ; $60be: $77
	cp [hl]                                          ; $60bf: $be
	ld [hl], a                                       ; $60c0: $77
	cp $df                                           ; $60c1: $fe $df
	rlca                                             ; $60c3: $07
	sbc [hl]                                         ; $60c4: $9e
	dec b                                            ; $60c5: $05
	ld a, e                                          ; $60c6: $7b
	cp $df                                           ; $60c7: $fe $df
	rlca                                             ; $60c9: $07
	sbc c                                            ; $60ca: $99

jr_01a_60cb:
	add hl, bc                                       ; $60cb: $09
	rrca                                             ; $60cc: $0f
	ld de, $7f1f                                     ; $60cd: $11 $1f $7f
	ld a, a                                          ; $60d0: $7f
	ld a, e                                          ; $60d1: $7b
	ret nz                                           ; $60d2: $c0

	sub c                                            ; $60d3: $91
	or b                                             ; $60d4: $b0
	ld hl, sp-$68                                    ; $60d5: $f8 $98
	inc l                                            ; $60d7: $2c
	db $fc                                           ; $60d8: $fc
	add h                                            ; $60d9: $84
	db $fc                                           ; $60da: $fc
	inc b                                            ; $60db: $04
	db $fc                                           ; $60dc: $fc

jr_01a_60dd:
	sbc b                                            ; $60dd: $98
	ld hl, sp+$10                                    ; $60de: $f8 $10
	ldh a, [hDisp1_SCY]                                     ; $60e0: $f0 $90
	sbc $f0                                          ; $60e2: $de $f0
	sbc h                                            ; $60e4: $9c
	ld d, b                                          ; $60e5: $50
	ld [hl], b                                       ; $60e6: $70
	ld d, b                                          ; $60e7: $50
	sbc $70                                          ; $60e8: $de $70
	sbc e                                            ; $60ea: $9b
	ld c, b                                          ; $60eb: $48
	ld a, b                                          ; $60ec: $78
	ld b, h                                          ; $60ed: $44
	ld a, h                                          ; $60ee: $7c
	ld [hl], a                                       ; $60ef: $77
	ret nz                                           ; $60f0: $c0

	rst $38                                          ; $60f1: $ff
	rst SubAFromDE                                          ; $60f2: $df
	dec a                                            ; $60f3: $3d
	add b                                            ; $60f4: $80
	inc de                                           ; $60f5: $13
	rra                                              ; $60f6: $1f
	ld sp, hl                                        ; $60f7: $f9
	rst $38                                          ; $60f8: $ff
	ld b, a                                          ; $60f9: $47
	ld a, a                                          ; $60fa: $7f

jr_01a_60fb:
	ld [hl-], a                                      ; $60fb: $32
	ccf                                              ; $60fc: $3f
	dec h                                            ; $60fd: $25
	ccf                                              ; $60fe: $3f
	ld b, h                                          ; $60ff: $44
	ld a, a                                          ; $6100: $7f
	ld b, b                                          ; $6101: $40
	ld a, a                                          ; $6102: $7f
	ld c, [hl]                                       ; $6103: $4e
	ld a, e                                          ; $6104: $7b
	rst $38                                          ; $6105: $ff
	db $fd                                           ; $6106: $fd
	db $eb                                           ; $6107: $eb
	or [hl]                                          ; $6108: $b6
	rst $38                                          ; $6109: $ff
	and [hl]                                         ; $610a: $a6
	rst $38                                          ; $610b: $ff
	or [hl]                                          ; $610c: $b6
	rst AddAOntoHL                                          ; $610d: $ef
	jp hl                                            ; $610e: $e9


	rst AddAOntoHL                                          ; $610f: $ef
	adc l                                            ; $6110: $8d
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	ret nz                                           ; $6113: $c0

	add d                                            ; $6114: $82
	ret nz                                           ; $6115: $c0

	inc [hl]                                         ; $6116: $34
	db $f4                                           ; $6117: $f4
	adc [hl]                                         ; $6118: $8e
	cp $fc                                           ; $6119: $fe $fc
	db $fc                                           ; $611b: $fc
	adc d                                            ; $611c: $8a
	cp $26                                           ; $611d: $fe $26
	cp $96                                           ; $611f: $fe $96
	cp $d5                                           ; $6121: $fe $d5
	rst $38                                          ; $6123: $ff
	db $fd                                           ; $6124: $fd
	cp a                                             ; $6125: $bf
	ld a, [$be6e]                                    ; $6126: $fa $6e $be
	ld [hl], d                                       ; $6129: $72
	cp $62                                           ; $612a: $fe $62
	db $fc                                           ; $612c: $fc
	ld h, h                                          ; $612d: $64
	ld hl, sp-$78                                    ; $612e: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6130: $f0 $90
	inc sp                                           ; $6132: $33
	ret nz                                           ; $6133: $c0

	sbc d                                            ; $6134: $9a
	ei                                               ; $6135: $fb
	db $ed                                           ; $6136: $ed
	or [hl]                                          ; $6137: $b6
	rst $38                                          ; $6138: $ff
	and d                                            ; $6139: $a2
	ld [hl], e                                       ; $613a: $73
	ret nz                                           ; $613b: $c0

	sbc [hl]                                         ; $613c: $9e
	adc h                                            ; $613d: $8c
	cpl                                              ; $613e: $2f
	ret nz                                           ; $613f: $c0

	sbc e                                            ; $6140: $9b
	sbc $32                                          ; $6141: $de $32
	cp $42                                           ; $6143: $fe $42
	ld [hl], e                                       ; $6145: $73
	ret nz                                           ; $6146: $c0

	sbc e                                            ; $6147: $9b
	db $10                                           ; $6148: $10
	or $97                                           ; $6149: $f6 $97
	ld l, b                                          ; $614b: $68
	ld a, e                                          ; $614c: $7b
	call z, Call_01a_419a                            ; $614d: $cc $9a $41
	ld a, a                                          ; $6150: $7f
	dec a                                            ; $6151: $3d
	ld a, $05                                        ; $6152: $3e $05
	ld a, e                                          ; $6154: $7b
	ld b, d                                          ; $6155: $42
	ld [hl], a                                       ; $6156: $77
	ld b, [hl]                                       ; $6157: $46
	ld e, a                                          ; $6158: $5f
	ld b, b                                          ; $6159: $40
	ld [hl], a                                       ; $615a: $77
	ld h, b                                          ; $615b: $60
	ld a, a                                          ; $615c: $7f
	ld bc, $4c7f                                     ; $615d: $01 $7f $4c
	ld a, [hl]                                       ; $6160: $7e
	call nz, $8898                                   ; $6161: $c4 $98 $88
	ld hl, sp-$38                                    ; $6164: $f8 $c8
	ld a, b                                          ; $6166: $78
	ldh a, [$f0]                                     ; $6167: $f0 $f0
	db $10                                           ; $6169: $10
	ld a, e                                          ; $616a: $7b
	cp $47                                           ; $616b: $fe $47
	ld b, b                                          ; $616d: $40
	ld a, a                                          ; $616e: $7f
	ret nz                                           ; $616f: $c0

	ld a, [hl]                                       ; $6170: $7e
	ret nz                                           ; $6171: $c0

	sbc c                                            ; $6172: $99
	ld a, b                                          ; $6173: $78
	ld c, a                                          ; $6174: $4f
	dec a                                            ; $6175: $3d
	daa                                              ; $6176: $27
	dec e                                            ; $6177: $1d
	ld e, $2e                                        ; $6178: $1e $2e
	ret nz                                           ; $617a: $c0

	sub l                                            ; $617b: $95
	or b                                             ; $617c: $b0
	ldh a, [$50]                                     ; $617d: $f0 $50
	ldh a, [$38]                                     ; $617f: $f0 $38
	add sp, -$08                                     ; $6181: $e8 $f8
	ret z                                            ; $6183: $c8

	ldh a, [rAUD1SWEEP]                              ; $6184: $f0 $10
	db $dd                                           ; $6186: $dd
	ldh [$3e], a                                     ; $6187: $e0 $3e
	ret nz                                           ; $6189: $c0

	rst $38                                          ; $618a: $ff
	rst SubAFromDE                                          ; $618b: $df
	rlca                                             ; $618c: $07
	ld a, [hl]                                       ; $618d: $7e
	jp nz, $2798                                     ; $618e: $c2 $98 $27

	jr c, jr_01a_61e2                                ; $6191: $38 $4f

	ld [hl], a                                       ; $6193: $77
	ld c, b                                          ; $6194: $48
	ld a, a                                          ; $6195: $7f
	sub l                                            ; $6196: $95
	ld a, d                                          ; $6197: $7a
	ld h, h                                          ; $6198: $64
	sub a                                            ; $6199: $97
	xor l                                            ; $619a: $ad
	cp d                                             ; $619b: $ba
	rra                                              ; $619c: $1f
	ld d, $0b                                        ; $619d: $16 $0b
	ld d, $2f                                        ; $619f: $16 $2f
	ld a, $7b                                        ; $61a1: $3e $7b
	cp $80                                           ; $61a3: $fe $80
	add hl, sp                                       ; $61a5: $39
	ld h, $3d                                        ; $61a6: $26 $3d
	rlca                                             ; $61a8: $07
	rra                                              ; $61a9: $1f
	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	ld a, b                                          ; $61ac: $78
	ld a, b                                          ; $61ad: $78
	add h                                            ; $61ae: $84
	db $fc                                           ; $61af: $fc
	ldh [c], a                                       ; $61b0: $e2
	ld e, $f2                                        ; $61b1: $1e $f2
	xor $19                                          ; $61b3: $ee $19
	rst FarCall                                          ; $61b5: $f7
	add hl, hl                                       ; $61b6: $29
	rst $38                                          ; $61b7: $ff
	dec h                                            ; $61b8: $25
	rst $38                                          ; $61b9: $ff
	or l                                             ; $61ba: $b5
	rst SubAFromDE                                          ; $61bb: $df
	ld sp, hl                                        ; $61bc: $f9
	ld l, a                                          ; $61bd: $6f
	cp l                                             ; $61be: $bd
	ld [hl], a                                       ; $61bf: $77
	db $fd                                           ; $61c0: $fd
	ld h, a                                          ; $61c1: $67
	db $fd                                           ; $61c2: $fd
	ld h, a                                          ; $61c3: $67
	adc [hl]                                         ; $61c4: $8e
	ld sp, hl                                        ; $61c5: $f9
	adc a                                            ; $61c6: $8f
	pop af                                           ; $61c7: $f1
	sbc a                                            ; $61c8: $9f
	ldh [c], a                                       ; $61c9: $e2
	cp $02                                           ; $61ca: $fe $02
	rlca                                             ; $61cc: $07
	dec bc                                           ; $61cd: $0b
	rrca                                             ; $61ce: $0f
	dec bc                                           ; $61cf: $0b
	ld c, $0b                                        ; $61d0: $0e $0b
	rrca                                             ; $61d2: $0f
	ld b, $07                                        ; $61d3: $06 $07
	ld [bc], a                                       ; $61d5: $02
	ld a, e                                          ; $61d6: $7b
	cp $7f                                           ; $61d7: $fe $7f
	ld a, [$03de]                                    ; $61d9: $fa $de $03
	sub [hl]                                         ; $61dc: $96
	ld [bc], a                                       ; $61dd: $02
	inc bc                                           ; $61de: $03
	inc bc                                           ; $61df: $03
	rlca                                             ; $61e0: $07
	inc b                                            ; $61e1: $04

jr_01a_61e2:
	ld [$3f0f], sp                                   ; $61e2: $08 $0f $3f
	ccf                                              ; $61e5: $3f
	db $fd                                           ; $61e6: $fd
	ld a, [hl]                                       ; $61e7: $7e
	add h                                            ; $61e8: $84
	sub [hl]                                         ; $61e9: $96
	call nz, Call_01a_507c                           ; $61ea: $c4 $7c $50
	cp h                                             ; $61ed: $bc
	db $f4                                           ; $61ee: $f4
	db $fc                                           ; $61ef: $fc
	cp b                                             ; $61f0: $b8
	ld hl, sp-$58                                    ; $61f1: $f8 $a8
	ld a, e                                          ; $61f3: $7b
	cp $7f                                           ; $61f4: $fe $7f
	adc h                                            ; $61f6: $8c
	rst SubAFromDE                                          ; $61f7: $df
	ldh a, [$9d]                                     ; $61f8: $f0 $9d
	ldh [$a0], a                                     ; $61fa: $e0 $a0
	ld a, e                                          ; $61fc: $7b
	ld a, b                                          ; $61fd: $78
	sbc l                                            ; $61fe: $9d
	sub b                                            ; $61ff: $90
	sbc b                                            ; $6200: $98
	ld a, e                                          ; $6201: $7b
	inc l                                            ; $6202: $2c
	rst SubAFromDE                                          ; $6203: $df
	db $fc                                           ; $6204: $fc
	inc sp                                           ; $6205: $33
	add b                                            ; $6206: $80
	sbc e                                            ; $6207: $9b
	db $10                                           ; $6208: $10
	rrca                                             ; $6209: $0f
	ld d, $2d                                        ; $620a: $16 $2d
	rla                                              ; $620c: $17
	add b                                            ; $620d: $80
	sbc e                                            ; $620e: $9b
	rrca                                             ; $620f: $0f
	db $fd                                           ; $6210: $fd
	ld [hl], a                                       ; $6211: $77
	db $dd                                           ; $6212: $dd
	ld h, e                                          ; $6213: $63
	add b                                            ; $6214: $80
	inc bc                                           ; $6215: $03
	ld b, b                                          ; $6216: $40
	scf                                              ; $6217: $37
	ret nz                                           ; $6218: $c0

	ld a, a                                          ; $6219: $7f
	jp nz, $3e7f                                     ; $621a: $c2 $7f $3e

	sbc [hl]                                         ; $621d: $9e
	ld d, a                                          ; $621e: $57
	inc hl                                           ; $621f: $23
	ret nz                                           ; $6220: $c0

	ld [hl], e                                       ; $6221: $73
	add b                                            ; $6222: $80
	sub a                                            ; $6223: $97
	ld l, $3f                                        ; $6224: $2e $3f
	cpl                                              ; $6226: $2f
	add hl, sp                                       ; $6227: $39
	cpl                                              ; $6228: $2f
	inc a                                            ; $6229: $3c
	rra                                              ; $622a: $1f
	inc de                                           ; $622b: $13
	daa                                              ; $622c: $27
	add b                                            ; $622d: $80
	sbc l                                            ; $622e: $9d
	ld l, l                                          ; $622f: $6d
	rst FarCall                                          ; $6230: $f7
	ld a, e                                          ; $6231: $7b
	ret nz                                           ; $6232: $c0

	sub l                                            ; $6233: $95
	rra                                              ; $6234: $1f
	ldh [c], a                                       ; $6235: $e2
	cp $0f                                           ; $6236: $fe $0f
	add hl, bc                                       ; $6238: $09
	ld [de], a                                       ; $6239: $12
	rra                                              ; $623a: $1f
	inc de                                           ; $623b: $13
	ld e, $0f                                        ; $623c: $1e $0f
	inc bc                                           ; $623e: $03
	nop                                              ; $623f: $00
	rra                                              ; $6240: $1f
	nop                                              ; $6241: $00
	rst SubAFromDE                                          ; $6242: $df
	rrca                                             ; $6243: $0f
	add h                                            ; $6244: $84
	db $10                                           ; $6245: $10
	rra                                              ; $6246: $1f
	inc hl                                           ; $6247: $23
	inc a                                            ; $6248: $3c
	daa                                              ; $6249: $27
	dec sp                                           ; $624a: $3b
	ld c, h                                          ; $624b: $4c
	ld [hl], a                                       ; $624c: $77
	ld c, d                                          ; $624d: $4a
	ld a, a                                          ; $624e: $7f
	ld d, d                                          ; $624f: $52
	ld a, a                                          ; $6250: $7f
	ld d, [hl]                                       ; $6251: $56
	ld a, l                                          ; $6252: $7d
	ld c, a                                          ; $6253: $4f
	ld a, b                                          ; $6254: $78
	ld e, a                                          ; $6255: $5f
	ld [hl], a                                       ; $6256: $77
	ld e, e                                          ; $6257: $5b
	halt                                             ; $6258: $76
	ld e, a                                          ; $6259: $5f
	halt                                             ; $625a: $76
	ld c, a                                          ; $625b: $4f
	ld a, b                                          ; $625c: $78
	ld b, a                                          ; $625d: $47
	ld a, h                                          ; $625e: $7c
	daa                                              ; $625f: $27
	ld a, e                                          ; $6260: $7b
	cp h                                             ; $6261: $bc
	rst SubAFromDE                                          ; $6262: $df
	ld [hl], b                                       ; $6263: $70
	ld a, h                                          ; $6264: $7c
	add $85                                          ; $6265: $c6 $85
	ldh a, [c]                                       ; $6267: $f2
	ld c, $f9                                        ; $6268: $0e $f9
	rst FarCall                                          ; $626a: $f7
	add hl, bc                                       ; $626b: $09
	rst $38                                          ; $626c: $ff
	ld d, h                                          ; $626d: $54
	rst $38                                          ; $626e: $ff
	ld d, e                                          ; $626f: $53
	rst $38                                          ; $6270: $ff
	jp c, $fcae                                      ; $6271: $da $ae $fc

	inc b                                            ; $6274: $04
	ld hl, sp+$74                                    ; $6275: $f8 $74
	cp d                                             ; $6277: $ba
	ld l, [hl]                                       ; $6278: $6e
	ld a, [$fa6e]                                    ; $6279: $fa $6e $fa
	adc $f2                                          ; $627c: $ce $f2
	ld e, $f0                                        ; $627e: $1e $f0
	db $fc                                           ; $6280: $fc
	halt                                             ; $6281: $76
	add b                                            ; $6282: $80
	sbc e                                            ; $6283: $9b
	rrca                                             ; $6284: $0f
	ld a, [bc]                                       ; $6285: $0a
	rrca                                             ; $6286: $0f
	dec bc                                           ; $6287: $0b
	rla                                              ; $6288: $17
	add b                                            ; $6289: $80
	sbc e                                            ; $628a: $9b
	ld e, h                                          ; $628b: $5c
	or b                                             ; $628c: $b0
	db $fc                                           ; $628d: $fc
	db $f4                                           ; $628e: $f4
	daa                                              ; $628f: $27
	add b                                            ; $6290: $80
	ld a, a                                          ; $6291: $7f
	ld b, b                                          ; $6292: $40
	sbc e                                            ; $6293: $9b
	ld e, $13                                        ; $6294: $1e $13
	rra                                              ; $6296: $1f
	ld [de], a                                       ; $6297: $12
	inc bc                                           ; $6298: $03
	ld b, b                                          ; $6299: $40
	dec de                                           ; $629a: $1b
	ld b, b                                          ; $629b: $40
	ldh [$3b], a                                     ; $629c: $e0 $3b
	sbc [hl]                                         ; $629e: $9e
	db $10                                           ; $629f: $10
	ld a, e                                          ; $62a0: $7b
	db $fd                                           ; $62a1: $fd
	sub a                                            ; $62a2: $97
	jr z, jr_01a_62b5                                ; $62a3: $28 $10

	add d                                            ; $62a5: $82
	ld a, h                                          ; $62a6: $7c
	jr z, jr_01a_62b9                                ; $62a7: $28 $10

	nop                                              ; $62a9: $00
	db $10                                           ; $62aa: $10
	ld a, e                                          ; $62ab: $7b
	db $f4                                           ; $62ac: $f4
	inc sp                                           ; $62ad: $33
	sbc $7f                                          ; $62ae: $de $7f
	cp $9e                                           ; $62b0: $fe $9e
	ld l, h                                          ; $62b2: $6c
	ld a, e                                          ; $62b3: $7b
	db $e4                                           ; $62b4: $e4

jr_01a_62b5:
	ld b, a                                          ; $62b5: $47
	ldh [c], a                                       ; $62b6: $e2
	rst SubAFromDE                                          ; $62b7: $df
	inc bc                                           ; $62b8: $03

jr_01a_62b9:
	sbc [hl]                                         ; $62b9: $9e
	inc c                                            ; $62ba: $0c
	ld a, d                                          ; $62bb: $7a
	ld a, $9d                                        ; $62bc: $3e $9d
	ld hl, $743f                                     ; $62be: $21 $3f $74
	ld a, [hl-]                                      ; $62c1: $3a
	sbc h                                            ; $62c2: $9c
	add b                                            ; $62c3: $80
	rst $38                                          ; $62c4: $ff
	add c                                            ; $62c5: $81
	ld a, e                                          ; $62c6: $7b
	cp $9b                                           ; $62c7: $fe $9b
	ld b, e                                          ; $62c9: $43
	ld a, [hl]                                       ; $62ca: $7e
	ld b, e                                          ; $62cb: $43
	ld a, [hl]                                       ; $62cc: $7e
	ld [hl], a                                       ; $62cd: $77
	ldh a, [hDisp1_OBP1]                                     ; $62ce: $f0 $94
	sbc h                                            ; $62d0: $9c
	rst $38                                          ; $62d1: $ff
	db $e3                                           ; $62d2: $e3
	db $e3                                           ; $62d3: $e3
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	add b                                            ; $62d6: $80
	add b                                            ; $62d7: $80
	ld h, b                                          ; $62d8: $60
	ldh [rAUD1SWEEP], a                              ; $62d9: $e0 $10
	ld a, b                                          ; $62db: $78
	inc a                                            ; $62dc: $3c
	sbc c                                            ; $62dd: $99
	inc b                                            ; $62de: $04
	db $fc                                           ; $62df: $fc
	inc b                                            ; $62e0: $04
	db $fc                                           ; $62e1: $fc
	ld [bc], a                                       ; $62e2: $02
	cp $77                                           ; $62e3: $fe $77
	cp $7d                                           ; $62e5: $fe $7d
	or b                                             ; $62e7: $b0
	ld a, a                                          ; $62e8: $7f
	cp $7f                                           ; $62e9: $fe $7f
	ldh a, [$7f]                                     ; $62eb: $f0 $7f
	db $ec                                           ; $62ed: $ec
	ld a, a                                          ; $62ee: $7f
	add sp, -$21                                     ; $62ef: $e8 $df
	add b                                            ; $62f1: $80
	ld l, a                                          ; $62f2: $6f
	jp nz, $2082                                     ; $62f3: $c2 $82 $20

	ccf                                              ; $62f6: $3f
	ld b, c                                          ; $62f7: $41
	ld a, a                                          ; $62f8: $7f
	ld b, e                                          ; $62f9: $43
	ld a, [hl]                                       ; $62fa: $7e
	add e                                            ; $62fb: $83

Call_01a_62fc:
	cp $87                                           ; $62fc: $fe $87
	db $fd                                           ; $62fe: $fd
	adc a                                            ; $62ff: $8f
	ld a, [$fd87]                                    ; $6300: $fa $87 $fd
	ld b, e                                          ; $6303: $43
	ld a, [hl]                                       ; $6304: $7e
	ld b, c                                          ; $6305: $41
	ld a, a                                          ; $6306: $7f
	jr nz, jr_01a_6348                               ; $6307: $20 $3f

	jr jr_01a_632a                                   ; $6309: $18 $1f

	ld b, $07                                        ; $630b: $06 $07
	ld bc, $c001                                     ; $630d: $01 $01 $c0
	ret nz                                           ; $6310: $c0

	jr nc, jr_01a_6386                               ; $6311: $30 $73

	call nz, $448f                                   ; $6313: $c4 $8f $44
	db $fc                                           ; $6316: $fc
	ldh [c], a                                       ; $6317: $e2
	cp [hl]                                          ; $6318: $be
	ldh [c], a                                       ; $6319: $e2
	cp [hl]                                          ; $631a: $be
	pop hl                                           ; $631b: $e1
	ccf                                              ; $631c: $3f
	pop hl                                           ; $631d: $e1
	rst $38                                          ; $631e: $ff
	pop hl                                           ; $631f: $e1
	ccf                                              ; $6320: $3f
	ldh [c], a                                       ; $6321: $e2
	ld a, $c2                                        ; $6322: $3e $c2
	cp $77                                           ; $6324: $fe $77
	or h                                             ; $6326: $b4
	sbc e                                            ; $6327: $9b
	add hl, de                                       ; $6328: $19
	rst $38                                          ; $6329: $ff

jr_01a_632a:
	rst SubAFromBC                                          ; $632a: $e7
	rst SubAFromBC                                          ; $632b: $e7
	jp hl                                            ; $632c: $e9


	ld [bc], a                                       ; $632d: $02
	ei                                               ; $632e: $fb
	rst SubAFromDE                                          ; $632f: $df
	inc bc                                           ; $6330: $03
	add a                                            ; $6331: $87
	inc a                                            ; $6332: $3c
	ccf                                              ; $6333: $3f
	ld de, $661f                                     ; $6334: $11 $1f $66
	ld a, a                                          ; $6337: $7f
	adc d                                            ; $6338: $8a
	rst $38                                          ; $6339: $ff
	ld d, e                                          ; $633a: $53
	ld a, a                                          ; $633b: $7f
	ld d, l                                          ; $633c: $55
	ld a, a                                          ; $633d: $7f
	ld h, a                                          ; $633e: $67
	ld a, [hl]                                       ; $633f: $7e
	ld b, a                                          ; $6340: $47
	ld a, h                                          ; $6341: $7c
	ld c, a                                          ; $6342: $4f
	ld a, a                                          ; $6343: $7f
	ld e, a                                          ; $6344: $5f
	ld [hl], c                                       ; $6345: $71
	ccf                                              ; $6346: $3f
	inc hl                                           ; $6347: $23

jr_01a_6348:
	ccf                                              ; $6348: $3f
	daa                                              ; $6349: $27
	ei                                               ; $634a: $fb
	rst SubAFromDE                                          ; $634b: $df
	ldh a, [$80]                                     ; $634c: $f0 $80
	ld [$8cf8], sp                                   ; $634e: $08 $f8 $8c
	db $fc                                           ; $6351: $fc
	ld [hl], d                                       ; $6352: $72
	cp $9a                                           ; $6353: $fe $9a
	cp $05                                           ; $6355: $fe $05
	rst $38                                          ; $6357: $ff
	push hl                                          ; $6358: $e5
	rst $38                                          ; $6359: $ff
	push af                                          ; $635a: $f5
	ccf                                              ; $635b: $3f
	push af                                          ; $635c: $f5
	rst $38                                          ; $635d: $ff
	jp z, $a6fe                                      ; $635e: $ca $fe $a6

	ld a, [$e43c]                                    ; $6361: $fa $3c $e4
	ld hl, sp-$08                                    ; $6364: $f8 $f8
	ld a, a                                          ; $6366: $7f
	ld b, [hl]                                       ; $6367: $46
	ld a, c                                          ; $6368: $79
	ld c, a                                          ; $6369: $4f
	jr c, jr_01a_63ab                                ; $636a: $38 $3f

	inc c                                            ; $636c: $0c
	sbc h                                            ; $636d: $9c
	rrca                                             ; $636e: $0f

jr_01a_636f:
	inc b                                            ; $636f: $04
	rlca                                             ; $6370: $07
	db $d3                                           ; $6371: $d3
	inc bc                                           ; $6372: $03
	rst SubAFromDE                                          ; $6373: $df
	rrca                                             ; $6374: $0f
	sbc e                                            ; $6375: $9b
	dec de                                           ; $6376: $1b
	rra                                              ; $6377: $1f
	rst $38                                          ; $6378: $ff
	rst $38                                          ; $6379: $ff
	ld a, e                                          ; $637a: $7b
	add $98                                          ; $637b: $c6 $98
	jr nc, jr_01a_636f                               ; $637d: $30 $f0

	db $10                                           ; $637f: $10
	ld hl, sp-$38                                    ; $6380: $f8 $c8
	ld a, h                                          ; $6382: $7c
	call nz, $d477                                   ; $6383: $c4 $77 $d4

jr_01a_6386:
	rst SubAFromDE                                          ; $6386: $df
	ldh [$dd], a                                     ; $6387: $e0 $dd
	ldh a, [$9e]                                     ; $6389: $f0 $9e
	ld [hl], b                                       ; $638b: $70
	ld [hl], e                                       ; $638c: $73
	cp $df                                           ; $638d: $fe $df
	ldh a, [$9d]                                     ; $638f: $f0 $9d
	sbc b                                            ; $6391: $98
	ld hl, sp+$77                                    ; $6392: $f8 $77
	ldh [$97], a                                     ; $6394: $e0 $97
	daa                                              ; $6396: $27
	ld a, $21                                        ; $6397: $3e $21
	ccf                                              ; $6399: $3f
	jr nc, jr_01a_63db                               ; $639a: $30 $3f

	jr jr_01a_63bd                                   ; $639c: $18 $1f

	ld [hl], a                                       ; $639e: $77
	cp [hl]                                          ; $639f: $be
	ld [hl], a                                       ; $63a0: $77
	cp $df                                           ; $63a1: $fe $df
	rlca                                             ; $63a3: $07
	sbc [hl]                                         ; $63a4: $9e
	dec b                                            ; $63a5: $05
	ld a, e                                          ; $63a6: $7b
	cp $df                                           ; $63a7: $fe $df
	rlca                                             ; $63a9: $07
	sbc c                                            ; $63aa: $99

jr_01a_63ab:
	add hl, bc                                       ; $63ab: $09
	rrca                                             ; $63ac: $0f
	ld de, $7f1f                                     ; $63ad: $11 $1f $7f
	ld a, a                                          ; $63b0: $7f
	ld a, e                                          ; $63b1: $7b
	ret nz                                           ; $63b2: $c0

	sub c                                            ; $63b3: $91
	or b                                             ; $63b4: $b0
	ld hl, sp-$68                                    ; $63b5: $f8 $98
	inc l                                            ; $63b7: $2c
	db $fc                                           ; $63b8: $fc
	add h                                            ; $63b9: $84
	db $fc                                           ; $63ba: $fc
	inc b                                            ; $63bb: $04
	db $fc                                           ; $63bc: $fc

jr_01a_63bd:
	sbc b                                            ; $63bd: $98
	ld hl, sp+$10                                    ; $63be: $f8 $10
	ldh a, [hDisp1_SCY]                                     ; $63c0: $f0 $90
	sbc $f0                                          ; $63c2: $de $f0
	sbc h                                            ; $63c4: $9c
	ld d, b                                          ; $63c5: $50
	ld [hl], b                                       ; $63c6: $70
	ld d, b                                          ; $63c7: $50
	sbc $70                                          ; $63c8: $de $70
	sbc e                                            ; $63ca: $9b
	ld c, b                                          ; $63cb: $48
	ld a, b                                          ; $63cc: $78
	ld b, h                                          ; $63cd: $44
	ld a, h                                          ; $63ce: $7c
	ld [hl], a                                       ; $63cf: $77
	ret nz                                           ; $63d0: $c0

	rst $38                                          ; $63d1: $ff
	rst SubAFromDE                                          ; $63d2: $df
	dec a                                            ; $63d3: $3d
	add b                                            ; $63d4: $80
	inc de                                           ; $63d5: $13
	rra                                              ; $63d6: $1f
	ld sp, hl                                        ; $63d7: $f9
	rst $38                                          ; $63d8: $ff
	ld b, a                                          ; $63d9: $47
	ld a, a                                          ; $63da: $7f

jr_01a_63db:
	ld [hl-], a                                      ; $63db: $32
	ccf                                              ; $63dc: $3f
	dec h                                            ; $63dd: $25
	ccf                                              ; $63de: $3f
	ld b, h                                          ; $63df: $44
	ld a, a                                          ; $63e0: $7f
	ld b, b                                          ; $63e1: $40
	ld a, a                                          ; $63e2: $7f
	ld c, [hl]                                       ; $63e3: $4e
	ld a, e                                          ; $63e4: $7b
	rst $38                                          ; $63e5: $ff
	db $fd                                           ; $63e6: $fd
	db $eb                                           ; $63e7: $eb
	or [hl]                                          ; $63e8: $b6
	rst $38                                          ; $63e9: $ff
	and [hl]                                         ; $63ea: $a6
	rst $38                                          ; $63eb: $ff
	or [hl]                                          ; $63ec: $b6
	rst AddAOntoHL                                          ; $63ed: $ef
	jp hl                                            ; $63ee: $e9


	rst AddAOntoHL                                          ; $63ef: $ef
	adc l                                            ; $63f0: $8d
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	ret nz                                           ; $63f3: $c0

	add d                                            ; $63f4: $82
	ret nz                                           ; $63f5: $c0

	inc [hl]                                         ; $63f6: $34
	db $f4                                           ; $63f7: $f4
	adc [hl]                                         ; $63f8: $8e
	cp $fc                                           ; $63f9: $fe $fc
	db $fc                                           ; $63fb: $fc
	adc d                                            ; $63fc: $8a
	cp $26                                           ; $63fd: $fe $26
	cp $96                                           ; $63ff: $fe $96
	cp $d5                                           ; $6401: $fe $d5
	rst $38                                          ; $6403: $ff
	db $fd                                           ; $6404: $fd
	cp a                                             ; $6405: $bf
	ld a, [$be6e]                                    ; $6406: $fa $6e $be
	ld [hl], d                                       ; $6409: $72
	cp $62                                           ; $640a: $fe $62
	db $fc                                           ; $640c: $fc
	ld h, h                                          ; $640d: $64
	ld hl, sp-$78                                    ; $640e: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6410: $f0 $90
	inc sp                                           ; $6412: $33
	ret nz                                           ; $6413: $c0

	sbc d                                            ; $6414: $9a
	ei                                               ; $6415: $fb
	db $ed                                           ; $6416: $ed
	or [hl]                                          ; $6417: $b6
	rst $38                                          ; $6418: $ff
	and d                                            ; $6419: $a2
	ld [hl], e                                       ; $641a: $73
	ret nz                                           ; $641b: $c0

	sbc [hl]                                         ; $641c: $9e
	adc h                                            ; $641d: $8c
	cpl                                              ; $641e: $2f
	ret nz                                           ; $641f: $c0

	sbc e                                            ; $6420: $9b
	sbc $32                                          ; $6421: $de $32
	cp $42                                           ; $6423: $fe $42
	ld [hl], e                                       ; $6425: $73
	ret nz                                           ; $6426: $c0

	sbc e                                            ; $6427: $9b
	db $10                                           ; $6428: $10
	or $97                                           ; $6429: $f6 $97
	ld l, b                                          ; $642b: $68
	ld a, e                                          ; $642c: $7b
	call z, Call_01a_419a                            ; $642d: $cc $9a $41
	ld a, a                                          ; $6430: $7f
	dec a                                            ; $6431: $3d
	ld a, $05                                        ; $6432: $3e $05
	ld a, e                                          ; $6434: $7b
	ld b, d                                          ; $6435: $42
	ld [hl], a                                       ; $6436: $77
	ld b, [hl]                                       ; $6437: $46
	ld e, a                                          ; $6438: $5f
	ld b, b                                          ; $6439: $40
	ld [hl], a                                       ; $643a: $77
	ld h, b                                          ; $643b: $60
	ld a, a                                          ; $643c: $7f
	ld bc, $4c7f                                     ; $643d: $01 $7f $4c
	ld a, [hl]                                       ; $6440: $7e
	call nz, $8898                                   ; $6441: $c4 $98 $88
	ld hl, sp-$38                                    ; $6444: $f8 $c8
	ld a, b                                          ; $6446: $78
	ldh a, [$f0]                                     ; $6447: $f0 $f0
	db $10                                           ; $6449: $10
	ld a, e                                          ; $644a: $7b
	cp $47                                           ; $644b: $fe $47
	ld b, b                                          ; $644d: $40
	ld a, a                                          ; $644e: $7f
	ret nz                                           ; $644f: $c0

	ld a, [hl]                                       ; $6450: $7e
	ret nz                                           ; $6451: $c0

	sbc c                                            ; $6452: $99
	ld a, b                                          ; $6453: $78
	ld c, a                                          ; $6454: $4f
	dec a                                            ; $6455: $3d
	daa                                              ; $6456: $27
	dec e                                            ; $6457: $1d
	ld e, $2e                                        ; $6458: $1e $2e
	ret nz                                           ; $645a: $c0

	sub l                                            ; $645b: $95
	or b                                             ; $645c: $b0
	ldh a, [$50]                                     ; $645d: $f0 $50
	ldh a, [$38]                                     ; $645f: $f0 $38
	add sp, -$08                                     ; $6461: $e8 $f8
	ret z                                            ; $6463: $c8

	ldh a, [rAUD1SWEEP]                              ; $6464: $f0 $10
	db $dd                                           ; $6466: $dd
	ldh [$3e], a                                     ; $6467: $e0 $3e
	ret nz                                           ; $6469: $c0

	db $fd                                           ; $646a: $fd
	rst SubAFromDE                                          ; $646b: $df
	ld bc, $0691                                     ; $646c: $01 $91 $06
	rlca                                             ; $646f: $07
	ld [$090f], sp                                   ; $6470: $08 $0f $09
	rrca                                             ; $6473: $0f
	ld [de], a                                       ; $6474: $12
	rra                                              ; $6475: $1f
	dec h                                            ; $6476: $25
	ccf                                              ; $6477: $3f
	add hl, de                                       ; $6478: $19
	rra                                              ; $6479: $1f
	dec bc                                           ; $647a: $0b
	ld c, $76                                        ; $647b: $0e $76
	cp c                                             ; $647d: $b9
	sub a                                            ; $647e: $97
	ld b, $05                                        ; $647f: $06 $05
	dec bc                                           ; $6481: $0b
	rrca                                             ; $6482: $0f
	dec bc                                           ; $6483: $0b
	ld c, $0d                                        ; $6484: $0e $0d
	rrca                                             ; $6486: $0f
	db $fd                                           ; $6487: $fd
	rst SubAFromDE                                          ; $6488: $df
	sbc $85                                          ; $6489: $de $85
	ld hl, $00ff                                     ; $648b: $21 $ff $00
	rst $38                                          ; $648e: $ff
	inc l                                            ; $648f: $2c

jr_01a_6490:
	rst $38                                          ; $6490: $ff
	ld b, d                                          ; $6491: $42

jr_01a_6492:
	rst $38                                          ; $6492: $ff
	ld l, c                                          ; $6493: $69
	cp a                                             ; $6494: $bf
	ld l, c                                          ; $6495: $69
	cp a                                             ; $6496: $bf
	db $fd                                           ; $6497: $fd
	sub a                                            ; $6498: $97
	cp $03                                           ; $6499: $fe $03
	rst $38                                          ; $649b: $ff
	sbc l                                            ; $649c: $9d

jr_01a_649d:
	rst AddAOntoHL                                          ; $649d: $ef
	sbc c                                            ; $649e: $99
	rst $38                                          ; $649f: $ff
	sbc c                                            ; $64a0: $99
	rst $38                                          ; $64a1: $ff
	ld h, e                                          ; $64a2: $63
	db $fc                                           ; $64a3: $fc
	rlca                                             ; $64a4: $07
	ld sp, hl                                        ; $64a5: $f9
	db $dd                                           ; $64a6: $dd
	add b                                            ; $64a7: $80
	sbc l                                            ; $64a8: $9d
	ld b, b                                          ; $64a9: $40
	ret nz                                           ; $64aa: $c0

	ld [hl], a                                       ; $64ab: $77
	cp $9a                                           ; $64ac: $fe $9a
	jr nz, jr_01a_6490                               ; $64ae: $20 $e0

	jr nz, jr_01a_6492                               ; $64b0: $20 $e0

	db $10                                           ; $64b2: $10
	ld a, e                                          ; $64b3: $7b
	ld c, h                                          ; $64b4: $4c
	ld a, a                                          ; $64b5: $7f
	adc b                                            ; $64b6: $88
	ld a, a                                          ; $64b7: $7f
	cp $7f                                           ; $64b8: $fe $7f
	ld b, h                                          ; $64ba: $44
	ld [hl], a                                       ; $64bb: $77
	ldh a, [c]                                       ; $64bc: $f2
	ld a, a                                          ; $64bd: $7f
	db $ec                                           ; $64be: $ec
	db $dd                                           ; $64bf: $dd
	add b                                            ; $64c0: $80
	db $ed                                           ; $64c1: $ed
	rst SubAFromDE                                          ; $64c2: $df
	ret nz                                           ; $64c3: $c0

	rst SubAFromDE                                          ; $64c4: $df
	rlca                                             ; $64c5: $07
	sbc l                                            ; $64c6: $9d
	ld [bc], a                                       ; $64c7: $02
	inc bc                                           ; $64c8: $03
	ld [hl], a                                       ; $64c9: $77
	ld [$0599], sp                                   ; $64ca: $08 $99 $05
	ld b, $03                                        ; $64cd: $06 $03
	ld [bc], a                                       ; $64cf: $02
	ld bc, $f501                                     ; $64d0: $01 $01 $f5
	rst SubAFromDE                                          ; $64d3: $df
	ld bc, $0fdf                                     ; $64d4: $01 $df $0f
	rst $38                                          ; $64d7: $ff
	rst SubAFromDE                                          ; $64d8: $df
	rst $38                                          ; $64d9: $ff
	add c                                            ; $64da: $81
	add l                                            ; $64db: $85
	rst $38                                          ; $64dc: $ff
	ld a, b                                          ; $64dd: $78
	rst SubAFromDE                                          ; $64de: $df
	sub $af                                          ; $64df: $d6 $af
	cp $fd                                           ; $64e1: $fe $fd
	xor e                                            ; $64e3: $ab
	db $fd                                           ; $64e4: $fd
	xor d                                            ; $64e5: $aa
	cp $aa                                           ; $64e6: $fe $aa
	cp $a4                                           ; $64e8: $fe $a4
	db $fc                                           ; $64ea: $fc
	ld a, b                                          ; $64eb: $78
	ld l, b                                          ; $64ec: $68
	ld a, h                                          ; $64ed: $7c
	inc h                                            ; $64ee: $24
	ld a, h                                          ; $64ef: $7c
	ld a, h                                          ; $64f0: $7c
	cp $92                                           ; $64f1: $fe $92
	ld [de], a                                       ; $64f3: $12
	cp $f9                                           ; $64f4: $fe $f9
	rst $38                                          ; $64f6: $ff
	rra                                              ; $64f7: $1f
	rra                                              ; $64f8: $1f
	ld l, a                                          ; $64f9: $6f
	ret nz                                           ; $64fa: $c0

	ld a, e                                          ; $64fb: $7b
	cp a                                             ; $64fc: $bf

jr_01a_64fd:
	ld a, a                                          ; $64fd: $7f
	ei                                               ; $64fe: $fb
	sbc [hl]                                         ; $64ff: $9e
	ld b, $1f                                        ; $6500: $06 $1f
	ret nz                                           ; $6502: $c0

	sbc e                                            ; $6503: $9b
	rst SubAFromHL                                          ; $6504: $d7
	xor [hl]                                         ; $6505: $ae
	rst $38                                          ; $6506: $ff
	db $fc                                           ; $6507: $fc
	cpl                                              ; $6508: $2f
	ret nz                                           ; $6509: $c0

	dec de                                           ; $650a: $1b
	jr nz, jr_01a_649d                               ; $650b: $20 $90

	cp c                                             ; $650d: $b9
	rst $38                                          ; $650e: $ff
	ld e, e                                          ; $650f: $5b
	db $fc                                           ; $6510: $fc
	ld c, a                                          ; $6511: $4f
	rst $38                                          ; $6512: $ff
	rst AddAOntoHL                                          ; $6513: $ef
	cp e                                             ; $6514: $bb
	rst SubAFromBC                                          ; $6515: $e7
	ld a, a                                          ; $6516: $7f
	pop de                                           ; $6517: $d1
	rst SubAFromDE                                          ; $6518: $df
	xor c                                            ; $6519: $a9
	db $fc                                           ; $651a: $fc
	db $fc                                           ; $651b: $fc
	ld [hl], a                                       ; $651c: $77
	jp nz, $c077                                     ; $651d: $c2 $77 $c0

	sub h                                            ; $6520: $94
	ld a, h                                          ; $6521: $7c
	ld h, h                                          ; $6522: $64

jr_01a_6523:
	ld a, [hl]                                       ; $6523: $7e
	ld [hl-], a                                      ; $6524: $32
	ld a, [hl]                                       ; $6525: $7e
	ld a, [hl]                                       ; $6526: $7e
	rst $38                                          ; $6527: $ff
	sbc c                                            ; $6528: $99
	inc d                                            ; $6529: $14
	rst FarCall                                          ; $652a: $f7
	ld hl, sp+$7b                                    ; $652b: $f8 $7b
	ret nz                                           ; $652d: $c0

	rst SubAFromDE                                          ; $652e: $df
	rst $38                                          ; $652f: $ff
	sub [hl]                                         ; $6530: $96
	and e                                            ; $6531: $a3
	rst $38                                          ; $6532: $ff
	ld [hl], c                                       ; $6533: $71
	rst SubAFromDE                                          ; $6534: $df
	db $db                                           ; $6535: $db
	xor a                                            ; $6536: $af
	cp $fe                                           ; $6537: $fe $fe
	xor b                                            ; $6539: $a8
	ld [hl], e                                       ; $653a: $73
	sbc $47                                          ; $653b: $de $47
	ldh [$2b], a                                     ; $653d: $e0 $2b
	and b                                            ; $653f: $a0
	sub [hl]                                         ; $6540: $96
	add c                                            ; $6541: $81
	db $eb                                           ; $6542: $eb
	sbc l                                            ; $6543: $9d
	rst $38                                          ; $6544: $ff
	sub l                                            ; $6545: $95
	rst $38                                          ; $6546: $ff

jr_01a_6547:
	ld h, e                                          ; $6547: $63
	cp l                                             ; $6548: $bd
	ld h, a                                          ; $6549: $67
	ld e, $c0                                        ; $654a: $1e $c0
	sbc c                                            ; $654c: $99
	jr z, jr_01a_6547                                ; $654d: $28 $f8

	ld hl, sp-$28                                    ; $654f: $f8 $d8
	ld hl, sp+$58                                    ; $6551: $f8 $58
	ld [hl], a                                       ; $6553: $77
	ld b, b                                          ; $6554: $40
	sbc c                                            ; $6555: $99
	ld a, c                                          ; $6556: $79
	sbc $d7                                          ; $6557: $de $d7
	xor h                                            ; $6559: $ac
	rst $38                                          ; $655a: $ff
	rst $38                                          ; $655b: $ff
	cpl                                              ; $655c: $2f
	and b                                            ; $655d: $a0
	ld a, d                                          ; $655e: $7a

jr_01a_655f:
	jr z, jr_01a_64fd                                ; $655f: $28 $9c

	jr nz, jr_01a_6523                               ; $6561: $20 $c0

	ld b, b                                          ; $6563: $40
	ld [hl], $a2                                     ; $6564: $36 $a2
	db $dd                                           ; $6566: $dd
	add b                                            ; $6567: $80
	rst SubAFromDE                                          ; $6568: $df
	ldh [$6f], a                                     ; $6569: $e0 $6f
	nop                                              ; $656b: $00
	sbc l                                            ; $656c: $9d
	call nc, $13af                                   ; $656d: $d4 $af $13
	ret nz                                           ; $6570: $c0

	ld a, d                                          ; $6571: $7a
	ld h, b                                          ; $6572: $60
	daa                                              ; $6573: $27
	ret nz                                           ; $6574: $c0

	ld c, $00                                        ; $6575: $0e $00
	sbc [hl]                                         ; $6577: $9e
	cp h                                             ; $6578: $bc
	ld [hl], e                                       ; $6579: $73
	ld b, b                                          ; $657a: $40
	dec sp                                           ; $657b: $3b
	ldh [$9c], a                                     ; $657c: $e0 $9c
	dec e                                            ; $657e: $1d
	rst AddAOntoHL                                          ; $657f: $ef
	cp c                                             ; $6580: $b9
	ld l, l                                          ; $6581: $6d
	ldh [rAUD3HIGH], a                               ; $6582: $e0 $1e
	nop                                              ; $6584: $00
	ld e, a                                          ; $6585: $5f
	and b                                            ; $6586: $a0
	ldh [$7d], a                                     ; $6587: $e0 $7d
	sbc [hl]                                         ; $6589: $9e
	db $10                                           ; $658a: $10
	ld a, e                                          ; $658b: $7b
	db $fd                                           ; $658c: $fd
	sub a                                            ; $658d: $97
	jr z, jr_01a_65a0                                ; $658e: $28 $10

	add d                                            ; $6590: $82
	ld a, h                                          ; $6591: $7c
	jr z, jr_01a_65a4                                ; $6592: $28 $10

	nop                                              ; $6594: $00
	db $10                                           ; $6595: $10
	ld a, e                                          ; $6596: $7b
	db $f4                                           ; $6597: $f4
	inc sp                                           ; $6598: $33
	sbc $7f                                          ; $6599: $de $7f
	cp $9e                                           ; $659b: $fe $9e
	ld l, h                                          ; $659d: $6c
	ld a, e                                          ; $659e: $7b
	db $e4                                           ; $659f: $e4

jr_01a_65a0:
	ld b, a                                          ; $65a0: $47
	ldh [c], a                                       ; $65a1: $e2
	rst SubAFromDE                                          ; $65a2: $df
	inc bc                                           ; $65a3: $03

jr_01a_65a4:
	sbc c                                            ; $65a4: $99
	inc c                                            ; $65a5: $0c
	rrca                                             ; $65a6: $0f
	db $10                                           ; $65a7: $10
	rra                                              ; $65a8: $1f
	ld hl, $743f                                     ; $65a9: $21 $3f $74
	ld a, [hl-]                                      ; $65ac: $3a
	sbc h                                            ; $65ad: $9c
	add b                                            ; $65ae: $80
	rst $38                                          ; $65af: $ff
	add c                                            ; $65b0: $81
	ld a, e                                          ; $65b1: $7b
	cp $9b                                           ; $65b2: $fe $9b
	ld b, e                                          ; $65b4: $43
	ld a, [hl]                                       ; $65b5: $7e
	ld b, e                                          ; $65b6: $43
	ld a, [hl]                                       ; $65b7: $7e
	ld [hl], a                                       ; $65b8: $77
	ldh a, [$9b]                                     ; $65b9: $f0 $9b
	sbc h                                            ; $65bb: $9c
	rst $38                                          ; $65bc: $ff
	db $e3                                           ; $65bd: $e3
	db $e3                                           ; $65be: $e3
	ld [hl], a                                       ; $65bf: $77
	jr @-$60                                         ; $65c0: $18 $9e

	ld h, b                                          ; $65c2: $60
	ld [hl], d                                       ; $65c3: $72
	jr nc, jr_01a_655f                               ; $65c4: $30 $99

	inc b                                            ; $65c6: $04
	db $fc                                           ; $65c7: $fc
	inc b                                            ; $65c8: $04
	db $fc                                           ; $65c9: $fc
	ld [bc], a                                       ; $65ca: $02
	cp $77                                           ; $65cb: $fe $77
	cp $93                                           ; $65cd: $fe $93
	add h                                            ; $65cf: $84
	db $fc                                           ; $65d0: $fc
	add h                                            ; $65d1: $84
	db $fc                                           ; $65d2: $fc
	ld [$10f8], sp                                   ; $65d3: $08 $f8 $10
	ldh a, [$60]                                     ; $65d6: $f0 $60
	ldh [$80], a                                     ; $65d8: $e0 $80
	add b                                            ; $65da: $80
	ld l, a                                          ; $65db: $6f
	jp nz, $2082                                     ; $65dc: $c2 $82 $20

	ccf                                              ; $65df: $3f
	ld b, c                                          ; $65e0: $41
	ld a, a                                          ; $65e1: $7f
	ld b, e                                          ; $65e2: $43
	ld a, [hl]                                       ; $65e3: $7e
	add e                                            ; $65e4: $83
	cp $87                                           ; $65e5: $fe $87
	db $fd                                           ; $65e7: $fd
	adc a                                            ; $65e8: $8f
	ld a, [$fd87]                                    ; $65e9: $fa $87 $fd
	ld b, e                                          ; $65ec: $43
	ld a, [hl]                                       ; $65ed: $7e
	ld b, c                                          ; $65ee: $41
	ld a, a                                          ; $65ef: $7f
	jr nz, jr_01a_6631                               ; $65f0: $20 $3f

	jr jr_01a_6613                                   ; $65f2: $18 $1f

	ld b, $07                                        ; $65f4: $06 $07
	ld bc, $c001                                     ; $65f6: $01 $01 $c0
	ret nz                                           ; $65f9: $c0

	jr nc, jr_01a_666f                               ; $65fa: $30 $73

	call nz, $448f                                   ; $65fc: $c4 $8f $44
	db $fc                                           ; $65ff: $fc
	ldh [c], a                                       ; $6600: $e2
	cp [hl]                                          ; $6601: $be
	ldh [c], a                                       ; $6602: $e2
	cp [hl]                                          ; $6603: $be
	pop hl                                           ; $6604: $e1
	ccf                                              ; $6605: $3f
	pop hl                                           ; $6606: $e1
	rst $38                                          ; $6607: $ff
	pop hl                                           ; $6608: $e1
	ccf                                              ; $6609: $3f
	ldh [c], a                                       ; $660a: $e2
	ld a, $c2                                        ; $660b: $3e $c2
	cp $77                                           ; $660d: $fe $77
	or h                                             ; $660f: $b4
	sbc e                                            ; $6610: $9b
	add hl, de                                       ; $6611: $19
	rst $38                                          ; $6612: $ff

jr_01a_6613:
	rst SubAFromBC                                          ; $6613: $e7
	rst SubAFromBC                                          ; $6614: $e7
	ld l, d                                          ; $6615: $6a
	inc bc                                           ; $6616: $03
	ei                                               ; $6617: $fb
	rst SubAFromDE                                          ; $6618: $df
	inc bc                                           ; $6619: $03
	add a                                            ; $661a: $87
	inc a                                            ; $661b: $3c
	ccf                                              ; $661c: $3f
	ld de, $661f                                     ; $661d: $11 $1f $66
	ld a, a                                          ; $6620: $7f
	adc d                                            ; $6621: $8a
	rst $38                                          ; $6622: $ff
	ld d, e                                          ; $6623: $53
	ld a, a                                          ; $6624: $7f
	ld d, l                                          ; $6625: $55
	ld a, a                                          ; $6626: $7f
	ld h, a                                          ; $6627: $67
	ld a, [hl]                                       ; $6628: $7e
	ld b, a                                          ; $6629: $47
	ld a, h                                          ; $662a: $7c
	ld c, a                                          ; $662b: $4f
	ld a, a                                          ; $662c: $7f
	ld e, a                                          ; $662d: $5f
	ld [hl], c                                       ; $662e: $71
	ccf                                              ; $662f: $3f
	inc hl                                           ; $6630: $23

jr_01a_6631:
	ccf                                              ; $6631: $3f
	daa                                              ; $6632: $27
	ei                                               ; $6633: $fb
	rst SubAFromDE                                          ; $6634: $df
	ldh a, [$80]                                     ; $6635: $f0 $80
	ld [$8cf8], sp                                   ; $6637: $08 $f8 $8c
	db $fc                                           ; $663a: $fc
	ld [hl], d                                       ; $663b: $72
	cp $9a                                           ; $663c: $fe $9a
	cp $05                                           ; $663e: $fe $05
	rst $38                                          ; $6640: $ff
	push hl                                          ; $6641: $e5
	rst $38                                          ; $6642: $ff
	push af                                          ; $6643: $f5
	ccf                                              ; $6644: $3f
	push af                                          ; $6645: $f5
	rst $38                                          ; $6646: $ff
	jp z, $a6fe                                      ; $6647: $ca $fe $a6

	ld a, [$e43c]                                    ; $664a: $fa $3c $e4
	ld hl, sp-$08                                    ; $664d: $f8 $f8
	ld a, a                                          ; $664f: $7f
	ld b, [hl]                                       ; $6650: $46
	ld a, c                                          ; $6651: $79
	ld c, a                                          ; $6652: $4f
	jr c, jr_01a_6694                                ; $6653: $38 $3f

	inc c                                            ; $6655: $0c
	sbc h                                            ; $6656: $9c
	rrca                                             ; $6657: $0f

jr_01a_6658:
	inc b                                            ; $6658: $04
	rlca                                             ; $6659: $07
	db $d3                                           ; $665a: $d3
	inc bc                                           ; $665b: $03
	rst SubAFromDE                                          ; $665c: $df
	rrca                                             ; $665d: $0f
	sbc e                                            ; $665e: $9b
	dec de                                           ; $665f: $1b
	rra                                              ; $6660: $1f
	rst $38                                          ; $6661: $ff
	rst $38                                          ; $6662: $ff
	ld a, e                                          ; $6663: $7b
	add $98                                          ; $6664: $c6 $98
	jr nc, jr_01a_6658                               ; $6666: $30 $f0

	db $10                                           ; $6668: $10
	ld hl, sp-$38                                    ; $6669: $f8 $c8
	ld a, h                                          ; $666b: $7c
	call nz, $d477                                   ; $666c: $c4 $77 $d4

jr_01a_666f:
	rst SubAFromDE                                          ; $666f: $df
	ldh [$dd], a                                     ; $6670: $e0 $dd
	ldh a, [$9e]                                     ; $6672: $f0 $9e
	ld [hl], b                                       ; $6674: $70
	ld [hl], e                                       ; $6675: $73
	cp $df                                           ; $6676: $fe $df
	ldh a, [$9d]                                     ; $6678: $f0 $9d
	sbc b                                            ; $667a: $98
	ld hl, sp+$77                                    ; $667b: $f8 $77
	ldh [$97], a                                     ; $667d: $e0 $97
	daa                                              ; $667f: $27
	ld a, $21                                        ; $6680: $3e $21
	ccf                                              ; $6682: $3f
	jr nc, jr_01a_66c4                               ; $6683: $30 $3f

	jr jr_01a_66a6                                   ; $6685: $18 $1f

	ld [hl], a                                       ; $6687: $77
	cp [hl]                                          ; $6688: $be
	ld [hl], a                                       ; $6689: $77
	cp $df                                           ; $668a: $fe $df
	rlca                                             ; $668c: $07
	sbc [hl]                                         ; $668d: $9e
	dec b                                            ; $668e: $05
	ld a, e                                          ; $668f: $7b
	cp $df                                           ; $6690: $fe $df
	rlca                                             ; $6692: $07
	sbc c                                            ; $6693: $99

jr_01a_6694:
	add hl, bc                                       ; $6694: $09
	rrca                                             ; $6695: $0f
	ld de, $7f1f                                     ; $6696: $11 $1f $7f
	ld a, a                                          ; $6699: $7f
	ld a, e                                          ; $669a: $7b
	ret nz                                           ; $669b: $c0

	sub c                                            ; $669c: $91
	or b                                             ; $669d: $b0
	ld hl, sp-$68                                    ; $669e: $f8 $98
	inc l                                            ; $66a0: $2c
	db $fc                                           ; $66a1: $fc
	add h                                            ; $66a2: $84
	db $fc                                           ; $66a3: $fc
	inc b                                            ; $66a4: $04
	db $fc                                           ; $66a5: $fc

jr_01a_66a6:
	sbc b                                            ; $66a6: $98
	ld hl, sp+$10                                    ; $66a7: $f8 $10
	ldh a, [hDisp1_SCY]                                     ; $66a9: $f0 $90
	sbc $f0                                          ; $66ab: $de $f0
	sbc h                                            ; $66ad: $9c
	ld d, b                                          ; $66ae: $50
	ld [hl], b                                       ; $66af: $70
	ld d, b                                          ; $66b0: $50
	sbc $70                                          ; $66b1: $de $70
	sbc e                                            ; $66b3: $9b
	ld c, b                                          ; $66b4: $48
	ld a, b                                          ; $66b5: $78
	ld b, h                                          ; $66b6: $44
	ld a, h                                          ; $66b7: $7c
	ld [hl], a                                       ; $66b8: $77
	ret nz                                           ; $66b9: $c0

	rst $38                                          ; $66ba: $ff
	rst SubAFromDE                                          ; $66bb: $df
	dec a                                            ; $66bc: $3d
	add b                                            ; $66bd: $80
	inc de                                           ; $66be: $13
	rra                                              ; $66bf: $1f
	ld sp, hl                                        ; $66c0: $f9
	rst $38                                          ; $66c1: $ff
	ld b, a                                          ; $66c2: $47
	ld a, a                                          ; $66c3: $7f

jr_01a_66c4:
	ld [hl-], a                                      ; $66c4: $32
	ccf                                              ; $66c5: $3f
	dec h                                            ; $66c6: $25
	ccf                                              ; $66c7: $3f
	ld b, h                                          ; $66c8: $44
	ld a, a                                          ; $66c9: $7f
	ld b, b                                          ; $66ca: $40
	ld a, a                                          ; $66cb: $7f
	ld c, [hl]                                       ; $66cc: $4e
	ld a, e                                          ; $66cd: $7b
	rst $38                                          ; $66ce: $ff
	db $fd                                           ; $66cf: $fd
	db $eb                                           ; $66d0: $eb
	or [hl]                                          ; $66d1: $b6
	rst $38                                          ; $66d2: $ff
	and [hl]                                         ; $66d3: $a6
	rst $38                                          ; $66d4: $ff
	or [hl]                                          ; $66d5: $b6
	rst AddAOntoHL                                          ; $66d6: $ef
	jp hl                                            ; $66d7: $e9


	rst AddAOntoHL                                          ; $66d8: $ef
	adc l                                            ; $66d9: $8d
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	ret nz                                           ; $66dc: $c0

	add d                                            ; $66dd: $82
	ret nz                                           ; $66de: $c0

	inc [hl]                                         ; $66df: $34
	db $f4                                           ; $66e0: $f4
	adc [hl]                                         ; $66e1: $8e
	cp $fc                                           ; $66e2: $fe $fc
	db $fc                                           ; $66e4: $fc
	adc d                                            ; $66e5: $8a
	cp $26                                           ; $66e6: $fe $26
	cp $96                                           ; $66e8: $fe $96
	cp $d5                                           ; $66ea: $fe $d5
	rst $38                                          ; $66ec: $ff
	db $fd                                           ; $66ed: $fd
	cp a                                             ; $66ee: $bf
	ld a, [$be6e]                                    ; $66ef: $fa $6e $be
	ld [hl], d                                       ; $66f2: $72
	cp $62                                           ; $66f3: $fe $62
	db $fc                                           ; $66f5: $fc
	ld h, h                                          ; $66f6: $64
	ld hl, sp-$78                                    ; $66f7: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $66f9: $f0 $90
	inc sp                                           ; $66fb: $33
	ret nz                                           ; $66fc: $c0

	sbc d                                            ; $66fd: $9a
	ei                                               ; $66fe: $fb
	db $ed                                           ; $66ff: $ed
	or [hl]                                          ; $6700: $b6
	rst $38                                          ; $6701: $ff
	and d                                            ; $6702: $a2
	ld [hl], e                                       ; $6703: $73
	ret nz                                           ; $6704: $c0

	sbc [hl]                                         ; $6705: $9e
	adc h                                            ; $6706: $8c
	cpl                                              ; $6707: $2f
	ret nz                                           ; $6708: $c0

	sbc e                                            ; $6709: $9b
	sbc $32                                          ; $670a: $de $32
	cp $42                                           ; $670c: $fe $42
	ld [hl], e                                       ; $670e: $73
	ret nz                                           ; $670f: $c0

	sbc e                                            ; $6710: $9b
	db $10                                           ; $6711: $10
	or $97                                           ; $6712: $f6 $97
	ld l, b                                          ; $6714: $68
	ld a, e                                          ; $6715: $7b
	call z, Call_01a_419a                            ; $6716: $cc $9a $41
	ld a, a                                          ; $6719: $7f
	dec a                                            ; $671a: $3d
	ld a, $05                                        ; $671b: $3e $05
	ld a, e                                          ; $671d: $7b
	ld b, d                                          ; $671e: $42
	ld [hl], a                                       ; $671f: $77
	ld b, [hl]                                       ; $6720: $46
	ld e, a                                          ; $6721: $5f
	ld b, b                                          ; $6722: $40
	ld [hl], a                                       ; $6723: $77
	ld h, b                                          ; $6724: $60
	ld a, a                                          ; $6725: $7f
	ld bc, $4c7f                                     ; $6726: $01 $7f $4c
	ld a, [hl]                                       ; $6729: $7e
	call nz, $8898                                   ; $672a: $c4 $98 $88
	ld hl, sp-$38                                    ; $672d: $f8 $c8
	ld a, b                                          ; $672f: $78
	ldh a, [$f0]                                     ; $6730: $f0 $f0
	db $10                                           ; $6732: $10
	ld a, e                                          ; $6733: $7b
	cp $47                                           ; $6734: $fe $47
	ld b, b                                          ; $6736: $40
	ld a, a                                          ; $6737: $7f
	ret nz                                           ; $6738: $c0

	ld a, [hl]                                       ; $6739: $7e
	ret nz                                           ; $673a: $c0

	sbc c                                            ; $673b: $99
	ld a, b                                          ; $673c: $78
	ld c, a                                          ; $673d: $4f
	dec a                                            ; $673e: $3d
	daa                                              ; $673f: $27
	dec e                                            ; $6740: $1d
	ld e, $2e                                        ; $6741: $1e $2e
	ret nz                                           ; $6743: $c0

	sub l                                            ; $6744: $95
	or b                                             ; $6745: $b0
	ldh a, [$50]                                     ; $6746: $f0 $50
	ldh a, [$38]                                     ; $6748: $f0 $38
	add sp, -$08                                     ; $674a: $e8 $f8
	ret z                                            ; $674c: $c8

	ldh a, [rAUD1SWEEP]                              ; $674d: $f0 $10
	db $dd                                           ; $674f: $dd
	ldh [$3e], a                                     ; $6750: $e0 $3e
	ret nz                                           ; $6752: $c0

	ld l, [hl]                                       ; $6753: $6e
	ld b, d                                          ; $6754: $42
	ld a, a                                          ; $6755: $7f
	add [hl]                                         ; $6756: $86
	add b                                            ; $6757: $80
	dec bc                                           ; $6758: $0b
	rrca                                             ; $6759: $0f
	inc d                                            ; $675a: $14
	rra                                              ; $675b: $1f
	jr z, jr_01a_679d                                ; $675c: $28 $3f

	ld a, [hl+]                                      ; $675e: $2a
	ccf                                              ; $675f: $3f
	ld [de], a                                       ; $6760: $12
	rra                                              ; $6761: $1f
	ld h, $3d                                        ; $6762: $26 $3d
	ld e, a                                          ; $6764: $5f
	ld a, e                                          ; $6765: $7b
	ld [hl], $3f                                     ; $6766: $36 $3f
	rla                                              ; $6768: $17
	dec de                                           ; $6769: $1b
	rla                                              ; $676a: $17
	rra                                              ; $676b: $1f
	rra                                              ; $676c: $1f
	add hl, de                                       ; $676d: $19
	rrca                                             ; $676e: $0f
	dec c                                            ; $676f: $0d
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	add b                                            ; $6772: $80
	add b                                            ; $6773: $80
	ld a, h                                          ; $6774: $7c
	db $fc                                           ; $6775: $fc
	jp nz, $fe9b                                     ; $6776: $c2 $9b $fe

	sbc c                                            ; $6779: $99
	rst $38                                          ; $677a: $ff
	inc b                                            ; $677b: $04
	ld a, e                                          ; $677c: $7b
	cp $9e                                           ; $677d: $fe $9e
	sub d                                            ; $677f: $92
	ld a, e                                          ; $6780: $7b
	cp $91                                           ; $6781: $fe $91
	reti                                             ; $6783: $d9


	ld l, a                                          ; $6784: $6f
	db $fc                                           ; $6785: $fc
	scf                                              ; $6786: $37
	rst AddAOntoHL                                          ; $6787: $ef
	dec sp                                           ; $6788: $3b
	cp $33                                           ; $6789: $fe $33
	cp $33                                           ; $678b: $fe $33
	db $fc                                           ; $678d: $fc
	rst GetHLinHL                                          ; $678e: $cf
	ld a, a                                          ; $678f: $7f
	db $d3                                           ; $6790: $d3
	rst FarCall                                          ; $6791: $f7
	db $dd                                           ; $6792: $dd
	add b                                            ; $6793: $80
	sbc l                                            ; $6794: $9d
	ld b, b                                          ; $6795: $40
	ret nz                                           ; $6796: $c0

	ld [hl], a                                       ; $6797: $77
	cp $df                                           ; $6798: $fe $df
	ret nz                                           ; $679a: $c0

	sbc h                                            ; $679b: $9c
	ld h, b                                          ; $679c: $60

jr_01a_679d:
	ldh [$a0], a                                     ; $679d: $e0 $a0
	ld a, e                                          ; $679f: $7b
	cp $df                                           ; $67a0: $fe $df
	ret nz                                           ; $67a2: $c0

	rst SubAFromDE                                          ; $67a3: $df
	ld b, b                                          ; $67a4: $40
	ld a, a                                          ; $67a5: $7f
	ld a, d                                          ; $67a6: $7a
	ld a, a                                          ; $67a7: $7f
	jr c, jr_01a_6828                                ; $67a8: $38 $7e

	ldh [$9d], a                                     ; $67aa: $e0 $9d
	ld c, $0f                                        ; $67ac: $0e $0f
	db $dd                                           ; $67ae: $dd
	inc bc                                           ; $67af: $03
	sbc [hl]                                         ; $67b0: $9e
	ld bc, $fe7b                                     ; $67b1: $01 $7b $fe
	ld a, e                                          ; $67b4: $7b
	ld a, [$01dc]                                    ; $67b5: $fa $dc $01
	add e                                            ; $67b8: $83
	inc bc                                           ; $67b9: $03
	ld [bc], a                                       ; $67ba: $02
	inc b                                            ; $67bb: $04
	rlca                                             ; $67bc: $07
	rra                                              ; $67bd: $1f
	rra                                              ; $67be: $1f
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	cp $f6                                           ; $67c1: $fe $f6
	dec e                                            ; $67c3: $1d
	rst $38                                          ; $67c4: $ff
	jp hl                                            ; $67c5: $e9


	cp a                                             ; $67c6: $bf
	xor a                                            ; $67c7: $af
	ld e, a                                          ; $67c8: $5f
	ld hl, sp-$08                                    ; $67c9: $f8 $f8
	ld e, b                                          ; $67cb: $58
	ld hl, sp+$54                                    ; $67cc: $f8 $54
	db $fc                                           ; $67ce: $fc
	ld d, h                                          ; $67cf: $54
	db $fc                                           ; $67d0: $fc
	ld c, h                                          ; $67d1: $4c
	db $fc                                           ; $67d2: $fc
	ld hl, sp-$08                                    ; $67d3: $f8 $f8
	ld a, e                                          ; $67d5: $7b
	ld c, l                                          ; $67d6: $4d
	sub h                                            ; $67d7: $94
	ldh a, [$f8]                                     ; $67d8: $f0 $f8
	ld c, b                                          ; $67da: $48
	ld c, h                                          ; $67db: $4c
	db $fc                                           ; $67dc: $fc
	call nz, Call_01a_7efc                           ; $67dd: $c4 $fc $7e
	ld a, [hl]                                       ; $67e0: $7e
	rra                                              ; $67e1: $1f
	add hl, de                                       ; $67e2: $19
	ld a, e                                          ; $67e3: $7b
	pop bc                                           ; $67e4: $c1
	sbc [hl]                                         ; $67e5: $9e
	inc de                                           ; $67e6: $13
	dec de                                           ; $67e7: $1b
	ret nz                                           ; $67e8: $c0

	sbc d                                            ; $67e9: $9a
	ldh a, [c]                                       ; $67ea: $f2
	rra                                              ; $67eb: $1f
	ld sp, hl                                        ; $67ec: $f9
	rst AddAOntoHL                                          ; $67ed: $ef
	cp l                                             ; $67ee: $bd
	rra                                              ; $67ef: $1f
	ret nz                                           ; $67f0: $c0

	ei                                               ; $67f1: $fb
	rst SubAFromDE                                          ; $67f2: $df
	ld bc, $0298                                     ; $67f3: $01 $98 $02
	inc bc                                           ; $67f6: $03
	dec b                                            ; $67f7: $05
	rlca                                             ; $67f8: $07
	ld a, [bc]                                       ; $67f9: $0a
	rrca                                             ; $67fa: $0f
	ld a, [bc]                                       ; $67fb: $0a

Call_01a_67fc:
	ld a, c                                          ; $67fc: $79
	jp c, $a67e                                      ; $67fd: $da $7e $a6

	adc b                                            ; $6800: $88
	rla                                              ; $6801: $17
	ld e, $1d                                        ; $6802: $1e $1d
	ld c, $7d                                        ; $6804: $0e $7d
	ld l, a                                          ; $6806: $6f
	db $fd                                           ; $6807: $fd
	adc a                                            ; $6808: $8f
	ld a, l                                          ; $6809: $7d
	ld d, a                                          ; $680a: $57
	ld a, [hl]                                       ; $680b: $7e
	ld b, a                                          ; $680c: $47
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	jr nz, jr_01a_6831                               ; $680f: $20 $20

	rst SubAFromDE                                          ; $6811: $df
	rst $38                                          ; $6812: $ff
	jr nc, @+$01                                     ; $6813: $30 $ff

	and $ff                                          ; $6815: $e6 $ff
	ld bc, $fe7b                                     ; $6817: $01 $7b $fe
	sbc [hl]                                         ; $681a: $9e
	and h                                            ; $681b: $a4
	ld a, e                                          ; $681c: $7b
	cp $9d                                           ; $681d: $fe $9d
	or [hl]                                          ; $681f: $b6
	ld e, e                                          ; $6820: $5b
	ld a, e                                          ; $6821: $7b
	rst FarCall                                          ; $6822: $f7
	sub [hl]                                         ; $6823: $96
	call z, $ceff                                    ; $6824: $cc $ff $ce
	rst $38                                          ; $6827: $ff

jr_01a_6828:
	ld c, d                                          ; $6828: $4a
	rst $38                                          ; $6829: $ff
	ld sp, $b3df                                     ; $682a: $31 $df $b3
	ld h, a                                          ; $682d: $67
	inc h                                            ; $682e: $24
	ld a, a                                          ; $682f: $7f
	ld a, [hl+]                                      ; $6830: $2a

jr_01a_6831:
	sbc d                                            ; $6831: $9a
	jr nz, @-$1e                                     ; $6832: $20 $e0

	jr nz, @-$1e                                     ; $6834: $20 $e0

	sub b                                            ; $6836: $90
	ld a, d                                          ; $6837: $7a
	ld [hl], d                                       ; $6838: $72
	ld a, a                                          ; $6839: $7f
	and e                                            ; $683a: $a3
	ld a, [hl]                                       ; $683b: $7e
	ld l, h                                          ; $683c: $6c
	sub h                                            ; $683d: $94
	ret c                                            ; $683e: $d8

	ld hl, sp-$44                                    ; $683f: $f8 $bc
	db $ec                                           ; $6841: $ec
	cp $d2                                           ; $6842: $fe $d2
	ld a, h                                          ; $6844: $7c
	call nc, $c4fc                                   ; $6845: $d4 $fc $c4
	jr nz, jr_01a_68c3                               ; $6848: $20 $79

	add h                                            ; $684a: $84
	sbc e                                            ; $684b: $9b
	ld b, $07                                        ; $684c: $06 $07
	ld bc, $eb01                                     ; $684e: $01 $01 $eb
	rst SubAFromDE                                          ; $6851: $df
	ld bc, $7f80                                     ; $6852: $01 $80 $7f
	rst $38                                          ; $6855: $ff
	ld b, [hl]                                       ; $6856: $46
	rst $38                                          ; $6857: $ff
	cp b                                             ; $6858: $b8
	rst AddAOntoHL                                          ; $6859: $ef
	xor e                                            ; $685a: $ab
	rst SubAFromHL                                          ; $685b: $d7
	cp $fe                                           ; $685c: $fe $fe
	sub $fe                                          ; $685e: $d6 $fe
	ld d, l                                          ; $6860: $55
	rst $38                                          ; $6861: $ff
	ld d, l                                          ; $6862: $55
	rst $38                                          ; $6863: $ff
	db $d3                                           ; $6864: $d3
	rst $38                                          ; $6865: $ff
	ld a, [hl]                                       ; $6866: $7e
	ld a, [hl]                                       ; $6867: $7e
	ld a, l                                          ; $6868: $7d
	ld d, a                                          ; $6869: $57
	dec a                                            ; $686a: $3d
	scf                                              ; $686b: $37
	rra                                              ; $686c: $1f
	rra                                              ; $686d: $1f
	ld e, $12                                        ; $686e: $1e $12
	ld [hl+], a                                      ; $6870: $22
	ld a, $ff                                        ; $6871: $3e $ff
	sbc b                                            ; $6873: $98
	rst $38                                          ; $6874: $ff
	ld [$30f8], sp                                   ; $6875: $08 $f8 $30
	ldh a, [$c0]                                     ; $6878: $f0 $c0
	ret nz                                           ; $687a: $c0

	jp hl                                            ; $687b: $e9


	rst SubAFromDE                                          ; $687c: $df
	add b                                            ; $687d: $80
	sbc c                                            ; $687e: $99

Jump_01a_687f:
	ccf                                              ; $687f: $3f
	ld sp, $0c0f                                     ; $6880: $31 $0f $0c
	inc bc                                           ; $6883: $03
	inc bc                                           ; $6884: $03
	rst SubAFromBC                                          ; $6885: $e7
	sbc e                                            ; $6886: $9b
	ld hl, sp+$08                                    ; $6887: $f8 $08
	ldh a, [$30]                                     ; $6889: $f0 $30
	rra                                              ; $688b: $1f
	ret nz                                           ; $688c: $c0

	ld e, a                                          ; $688d: $5f
	ld a, b                                          ; $688e: $78
	ld c, a                                          ; $688f: $4f
	nop                                              ; $6890: $00
	sbc l                                            ; $6891: $9d
	dec c                                            ; $6892: $0d
	ld c, $79                                        ; $6893: $0e $79
	sbc d                                            ; $6895: $9a
	sbc e                                            ; $6896: $9b
	ld b, $05                                        ; $6897: $06 $05
	rlca                                             ; $6899: $07
	ld [bc], a                                       ; $689a: $02
	ld a, e                                          ; $689b: $7b
	and [hl]                                         ; $689c: $a6
	cpl                                              ; $689d: $2f
	nop                                              ; $689e: $00
	sbc l                                            ; $689f: $9d
	or a                                             ; $68a0: $b7
	adc $7a                                          ; $68a1: $ce $7a
	db $fc                                           ; $68a3: $fc
	sbc h                                            ; $68a4: $9c
	ld hl, $83fe                                     ; $68a5: $21 $fe $83
	daa                                              ; $68a8: $27
	nop                                              ; $68a9: $00
	sbc [hl]                                         ; $68aa: $9e
	xor b                                            ; $68ab: $a8
	ld a, e                                          ; $68ac: $7b
	cp $7f                                           ; $68ad: $fe $7f
	ld hl, sp-$68                                    ; $68af: $f8 $98
	ld d, b                                          ; $68b1: $50
	ret nc                                           ; $68b2: $d0

	ld c, $0f                                        ; $68b3: $0e $0f
	rra                                              ; $68b5: $1f
	ld de, $700f                                     ; $68b6: $11 $0f $70
	ld b, d                                          ; $68b9: $42
	ccf                                              ; $68ba: $3f
	adc h                                            ; $68bb: $8c
	rst SubAFromDE                                          ; $68bc: $df
	ld bc, $07df                                     ; $68bd: $01 $df $07
	scf                                              ; $68c0: $37
	nop                                              ; $68c1: $00
	sub [hl]                                         ; $68c2: $96

jr_01a_68c3:
	ld a, h                                          ; $68c3: $7c
	ld d, h                                          ; $68c4: $54
	ld a, h                                          ; $68c5: $7c
	ld d, h                                          ; $68c6: $54
	ld a, [hl]                                       ; $68c7: $7e
	ld a, [hl]                                       ; $68c8: $7e
	rst $38                                          ; $68c9: $ff
	sub e                                            ; $68ca: $93
	ld de, $ffde                                     ; $68cb: $11 $de $ff

jr_01a_68ce:
	ld a, l                                          ; $68ce: $7d
	sub $7f                                          ; $68cf: $d6 $7f
	xor l                                            ; $68d1: $ad
	sbc c                                            ; $68d2: $99
	ld [hl], b                                       ; $68d3: $70
	ret nz                                           ; $68d4: $c0

	ld [hl], b                                       ; $68d5: $70
	ret nc                                           ; $68d6: $d0

	and b                                            ; $68d7: $a0
	and b                                            ; $68d8: $a0
	db $ed                                           ; $68d9: $ed
	rst SubAFromDE                                          ; $68da: $df
	ldh [$df], a                                     ; $68db: $e0 $df
	ld c, $7b                                        ; $68dd: $0e $7b
	and b                                            ; $68df: $a0
	sbc h                                            ; $68e0: $9c
	dec c                                            ; $68e1: $0d
	rlca                                             ; $68e2: $07
	inc b                                            ; $68e3: $04
	rla                                              ; $68e4: $17
	and b                                            ; $68e5: $a0
	sbc e                                            ; $68e6: $9b
	cp c                                             ; $68e7: $b9
	ld l, [hl]                                       ; $68e8: $6e
	xor e                                            ; $68e9: $ab
	sub $1b                                          ; $68ea: $d6 $1b
	and b                                            ; $68ec: $a0
	ld a, h                                          ; $68ed: $7c
	res 3, h                                         ; $68ee: $cb $9c
	ld b, b                                          ; $68f0: $40
	ldh a, [$50]                                     ; $68f1: $f0 $50
	daa                                              ; $68f3: $27
	and b                                            ; $68f4: $a0
	ld sp, hl                                        ; $68f5: $f9
	sbc [hl]                                         ; $68f6: $9e
	db $10                                           ; $68f7: $10
	ld a, e                                          ; $68f8: $7b
	db $fd                                           ; $68f9: $fd
	sub a                                            ; $68fa: $97
	jr z, jr_01a_690d                                ; $68fb: $28 $10

	add d                                            ; $68fd: $82
	ld a, h                                          ; $68fe: $7c
	jr z, jr_01a_6911                                ; $68ff: $28 $10

	nop                                              ; $6901: $00
	db $10                                           ; $6902: $10
	ld a, e                                          ; $6903: $7b
	db $f4                                           ; $6904: $f4
	xor $7b                                          ; $6905: $ee $7b
	rst SubAFromBC                                          ; $6907: $e7
	sbc l                                            ; $6908: $9d
	nop                                              ; $6909: $00
	ld l, h                                          ; $690a: $6c
	ld a, e                                          ; $690b: $7b
	db $e4                                           ; $690c: $e4

jr_01a_690d:
	ld b, a                                          ; $690d: $47
	ldh [c], a                                       ; $690e: $e2
	rst SubAFromDE                                          ; $690f: $df
	inc bc                                           ; $6910: $03

jr_01a_6911:
	sbc c                                            ; $6911: $99
	inc c                                            ; $6912: $0c
	rrca                                             ; $6913: $0f
	db $10                                           ; $6914: $10
	rra                                              ; $6915: $1f
	ld hl, $743f                                     ; $6916: $21 $3f $74
	ld a, [hl-]                                      ; $6919: $3a
	sbc h                                            ; $691a: $9c
	add b                                            ; $691b: $80
	rst $38                                          ; $691c: $ff
	add c                                            ; $691d: $81
	ld a, e                                          ; $691e: $7b
	cp $9b                                           ; $691f: $fe $9b
	ld b, e                                          ; $6921: $43
	ld a, [hl]                                       ; $6922: $7e
	ld b, e                                          ; $6923: $43
	ld a, [hl]                                       ; $6924: $7e
	ld [hl], a                                       ; $6925: $77
	ldh a, [$9b]                                     ; $6926: $f0 $9b
	sbc h                                            ; $6928: $9c
	rst $38                                          ; $6929: $ff
	db $e3                                           ; $692a: $e3
	db $e3                                           ; $692b: $e3
	halt                                             ; $692c: $76
	call nz, Call_01a_7c7f                           ; $692d: $c4 $7f $7c
	ld a, a                                          ; $6930: $7f
	ld a, l                                          ; $6931: $7d
	ld a, [hl]                                       ; $6932: $7e
	jr jr_01a_68ce                                   ; $6933: $18 $99

	inc b                                            ; $6935: $04
	db $fc                                           ; $6936: $fc
	inc b                                            ; $6937: $04
	db $fc                                           ; $6938: $fc
	ld [bc], a                                       ; $6939: $02
	cp $77                                           ; $693a: $fe $77
	cp $93                                           ; $693c: $fe $93
	add h                                            ; $693e: $84
	db $fc                                           ; $693f: $fc
	add h                                            ; $6940: $84
	db $fc                                           ; $6941: $fc
	ld [$10f8], sp                                   ; $6942: $08 $f8 $10
	ldh a, [$60]                                     ; $6945: $f0 $60
	ldh [$80], a                                     ; $6947: $e0 $80
	add b                                            ; $6949: $80
	ld l, a                                          ; $694a: $6f
	jp nz, $ba7d                                     ; $694b: $c2 $7d $ba

	ld a, a                                          ; $694e: $7f
	call nz, $cc7f                                   ; $694f: $c4 $7f $cc
	sub e                                            ; $6952: $93
	add e                                            ; $6953: $83
	cp $87                                           ; $6954: $fe $87
	db $fd                                           ; $6956: $fd
	adc a                                            ; $6957: $8f
	ld a, [$fd87]                                    ; $6958: $fa $87 $fd
	ld b, e                                          ; $695b: $43
	ld a, [hl]                                       ; $695c: $7e
	ld b, c                                          ; $695d: $41
	ld a, a                                          ; $695e: $7f
	ld h, l                                          ; $695f: $65
	xor b                                            ; $6960: $a8
	rst SubAFromDE                                          ; $6961: $df
	ret nz                                           ; $6962: $c0

	ld a, [hl]                                       ; $6963: $7e
	sbc d                                            ; $6964: $9a
	ld [hl], a                                       ; $6965: $77
	call nz, $448f                                   ; $6966: $c4 $8f $44
	db $fc                                           ; $6969: $fc
	ldh [c], a                                       ; $696a: $e2
	cp [hl]                                          ; $696b: $be
	ldh [c], a                                       ; $696c: $e2
	cp [hl]                                          ; $696d: $be
	pop hl                                           ; $696e: $e1
	ccf                                              ; $696f: $3f
	pop hl                                           ; $6970: $e1
	rst $38                                          ; $6971: $ff
	pop hl                                           ; $6972: $e1
	ccf                                              ; $6973: $3f
	ldh [c], a                                       ; $6974: $e2
	ld a, $c2                                        ; $6975: $3e $c2
	cp $77                                           ; $6977: $fe $77
	or h                                             ; $6979: $b4
	sbc e                                            ; $697a: $9b
	add hl, de                                       ; $697b: $19
	rst $38                                          ; $697c: $ff
	rst SubAFromBC                                          ; $697d: $e7
	rst SubAFromBC                                          ; $697e: $e7
	call nz, $ff02                                   ; $697f: $c4 $02 $ff
	rst SubAFromDE                                          ; $6982: $df
	dec a                                            ; $6983: $3d
	add b                                            ; $6984: $80
	inc de                                           ; $6985: $13
	rra                                              ; $6986: $1f
	ld sp, hl                                        ; $6987: $f9
	rst $38                                          ; $6988: $ff
	ld b, a                                          ; $6989: $47
	ld a, a                                          ; $698a: $7f
	ld [hl-], a                                      ; $698b: $32
	ccf                                              ; $698c: $3f
	dec h                                            ; $698d: $25
	ccf                                              ; $698e: $3f
	ld b, h                                          ; $698f: $44
	ld a, a                                          ; $6990: $7f
	ld c, h                                          ; $6991: $4c
	ld a, a                                          ; $6992: $7f
	ld c, [hl]                                       ; $6993: $4e
	ld a, e                                          ; $6994: $7b
	ccf                                              ; $6995: $3f
	dec a                                            ; $6996: $3d
	dec l                                            ; $6997: $2d
	ld [hl], $3f                                     ; $6998: $36 $3f
	ld h, $1f                                        ; $699a: $26 $1f
	ld d, $0f                                        ; $699c: $16 $0f
	add hl, bc                                       ; $699e: $09
	rlca                                             ; $699f: $07
	inc b                                            ; $69a0: $04
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	ret nz                                           ; $69a3: $c0

	add b                                            ; $69a4: $80
	ret nz                                           ; $69a5: $c0

	inc [hl]                                         ; $69a6: $34
	db $f4                                           ; $69a7: $f4
	adc [hl]                                         ; $69a8: $8e
	cp $fc                                           ; $69a9: $fe $fc
	db $fc                                           ; $69ab: $fc
	adc d                                            ; $69ac: $8a
	cp $26                                           ; $69ad: $fe $26
	cp $96                                           ; $69af: $fe $96
	cp $d5                                           ; $69b1: $fe $d5
	rst $38                                          ; $69b3: $ff
	db $fd                                           ; $69b4: $fd
	cp a                                             ; $69b5: $bf
	ld a, [$de6e]                                    ; $69b6: $fa $6e $de
	ld [hl], d                                       ; $69b9: $72
	cp $62                                           ; $69ba: $fe $62
	db $fc                                           ; $69bc: $fc
	ld l, h                                          ; $69bd: $6c
	ld hl, sp-$78                                    ; $69be: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $69c0: $f0 $10
	rlca                                             ; $69c2: $07
	ld b, $8c                                        ; $69c3: $06 $8c
	add hl, bc                                       ; $69c5: $09
	rrca                                             ; $69c6: $0f
	db $10                                           ; $69c7: $10
	rra                                              ; $69c8: $1f
	inc a                                            ; $69c9: $3c
	dec hl                                           ; $69ca: $2b
	ccf                                              ; $69cb: $3f
	dec l                                            ; $69cc: $2d
	ld a, a                                          ; $69cd: $7f
	ld e, e                                          ; $69ce: $5b
	rst $38                                          ; $69cf: $ff
	add b                                            ; $69d0: $80
	rst $38                                          ; $69d1: $ff
	rst $38                                          ; $69d2: $ff
	ld a, a                                          ; $69d3: $7f
	ld h, b                                          ; $69d4: $60
	ld a, a                                          ; $69d5: $7f
	ld a, a                                          ; $69d6: $7f
	ld l, d                                          ; $69d7: $6a
	sbc $6e                                          ; $69d8: $de $6e
	sbc e                                            ; $69da: $9b
	ld [hl], a                                       ; $69db: $77
	ld a, a                                          ; $69dc: $7f
	rst $38                                          ; $69dd: $ff
	rst $38                                          ; $69de: $ff
	db $fd                                           ; $69df: $fd
	adc e                                            ; $69e0: $8b
	ldh a, [$b0]                                     ; $69e1: $f0 $b0
	ld c, b                                          ; $69e3: $48
	ld hl, sp+$04                                    ; $69e4: $f8 $04
	db $fc                                           ; $69e6: $fc
	ld a, h                                          ; $69e7: $7c
	sub h                                            ; $69e8: $94
	rst $38                                          ; $69e9: $ff
	ld [hl], a                                       ; $69ea: $77
	rst $38                                          ; $69eb: $ff
	sbc l                                            ; $69ec: $9d
	rst $38                                          ; $69ed: $ff
	inc bc                                           ; $69ee: $03
	rst $38                                          ; $69ef: $ff
	db $fd                                           ; $69f0: $fd
	cp $06                                           ; $69f1: $fe $06
	cp $fe                                           ; $69f3: $fe $fe
	db $dd                                           ; $69f5: $dd
	or $9d                                           ; $69f6: $f6 $9d
	cp [hl]                                          ; $69f8: $be
	cp $6f                                           ; $69f9: $fe $6f
	ldh [$fb], a                                     ; $69fb: $e0 $fb
	rst SubAFromDE                                          ; $69fd: $df
	inc bc                                           ; $69fe: $03
	add a                                            ; $69ff: $87
	inc a                                            ; $6a00: $3c
	ccf                                              ; $6a01: $3f
	ld de, $661f                                     ; $6a02: $11 $1f $66
	ld a, a                                          ; $6a05: $7f
	adc d                                            ; $6a06: $8a
	rst $38                                          ; $6a07: $ff
	ld d, e                                          ; $6a08: $53
	ld a, a                                          ; $6a09: $7f
	ld d, h                                          ; $6a0a: $54
	ld a, a                                          ; $6a0b: $7f
	ld h, h                                          ; $6a0c: $64
	ld a, a                                          ; $6a0d: $7f
	ld b, h                                          ; $6a0e: $44
	ld a, a                                          ; $6a0f: $7f
	ld b, [hl]                                       ; $6a10: $46
	ld a, a                                          ; $6a11: $7f
	ld h, $3f                                        ; $6a12: $26 $3f
	cpl                                              ; $6a14: $2f
	add hl, sp                                       ; $6a15: $39
	rrca                                             ; $6a16: $0f
	add hl, bc                                       ; $6a17: $09
	ei                                               ; $6a18: $fb
	rst SubAFromDE                                          ; $6a19: $df
	ldh a, [$80]                                     ; $6a1a: $f0 $80
	ld [$8cf8], sp                                   ; $6a1c: $08 $f8 $8c
	db $fc                                           ; $6a1f: $fc
	ld [hl], d                                       ; $6a20: $72
	cp $9a                                           ; $6a21: $fe $9a
	cp $05                                           ; $6a23: $fe $05
	rst $38                                          ; $6a25: $ff
	and l                                            ; $6a26: $a5
	rst $38                                          ; $6a27: $ff
	sub l                                            ; $6a28: $95
	rst $38                                          ; $6a29: $ff
	push de                                          ; $6a2a: $d5
	rst $38                                          ; $6a2b: $ff
	jp z, $e6fe                                      ; $6a2c: $ca $fe $e6

	cp d                                             ; $6a2f: $ba
	ld a, h                                          ; $6a30: $7c
	add h                                            ; $6a31: $84
	ld hl, sp-$78                                    ; $6a32: $f8 $88
	rla                                              ; $6a34: $17
	ld e, $11                                        ; $6a35: $1e $11
	rra                                              ; $6a37: $1f
	jr nz, jr_01a_6a79                               ; $6a38: $20 $3f

	inc [hl]                                         ; $6a3a: $34
	rst SubAFromDE                                          ; $6a3b: $df
	ccf                                              ; $6a3c: $3f
	sbc h                                            ; $6a3d: $9c
	inc h                                            ; $6a3e: $24
	ld a, a                                          ; $6a3f: $7f
	ld e, a                                          ; $6a40: $5f
	scf                                              ; $6a41: $37
	add b                                            ; $6a42: $80
	sub e                                            ; $6a43: $93
	ld hl, sp+$38                                    ; $6a44: $f8 $38
	call nz, Call_01a_62fc                           ; $6a46: $c4 $fc $62
	cp $f2                                           ; $6a49: $fe $f2
	sbc $f7                                          ; $6a4b: $de $f7
	sbc a                                            ; $6a4d: $9f
	rst $38                                          ; $6a4e: $ff
	ld sp, hl                                        ; $6a4f: $f9
	cpl                                              ; $6a50: $2f
	add b                                            ; $6a51: $80
	rst SubAFromDE                                          ; $6a52: $df
	inc bc                                           ; $6a53: $03
	sbc [hl]                                         ; $6a54: $9e
	ld a, $73                                        ; $6a55: $3e $73
	add h                                            ; $6a57: $84
	sbc d                                            ; $6a58: $9a
	sbc d                                            ; $6a59: $9a
	rst $38                                          ; $6a5a: $ff
	ld [hl], e                                       ; $6a5b: $73
	ld a, a                                          ; $6a5c: $7f
	inc h                                            ; $6a5d: $24
	ld a, d                                          ; $6a5e: $7a
	cp $7f                                           ; $6a5f: $fe $7f
	cp $7a                                           ; $6a61: $fe $7a
	cp $98                                           ; $6a63: $fe $98
	ld sp, $3a2f                                     ; $6a65: $31 $2f $3a
	dec a                                            ; $6a68: $3d
	ld l, $1f                                        ; $6a69: $2e $1f
	db $10                                           ; $6a6b: $10
	ld [hl], a                                       ; $6a6c: $77
	add b                                            ; $6a6d: $80
	rst SubAFromDE                                          ; $6a6e: $df
	add sp, -$68                                     ; $6a6f: $e8 $98
	inc e                                            ; $6a71: $1c
	db $fc                                           ; $6a72: $fc
	adc b                                            ; $6a73: $88
	ld hl, sp+$74                                    ; $6a74: $f8 $74
	db $fc                                           ; $6a76: $fc
	sbc d                                            ; $6a77: $9a
	ld a, e                                          ; $6a78: $7b

jr_01a_6a79:
	push bc                                          ; $6a79: $c5
	ld l, a                                          ; $6a7a: $6f
	add h                                            ; $6a7b: $84
	sub e                                            ; $6a7c: $93
	ld a, [$feae]                                    ; $6a7d: $fa $ae $fe
	add d                                            ; $6a80: $82
	cp $52                                           ; $6a81: $fe $52
	db $ec                                           ; $6a83: $ec
	ld [hl], h                                       ; $6a84: $74
	ld hl, sp+$08                                    ; $6a85: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $6a87: $f0 $90
	inc sp                                           ; $6a89: $33
	ret nz                                           ; $6a8a: $c0

	sbc h                                            ; $6a8b: $9c
	ld a, a                                          ; $6a8c: $7f
	ccf                                              ; $6a8d: $3f
	scf                                              ; $6a8e: $37
	ld [hl], d                                       ; $6a8f: $72
	cp [hl]                                          ; $6a90: $be
	rra                                              ; $6a91: $1f
	ret nz                                           ; $6a92: $c0

	sbc d                                            ; $6a93: $9a
	ld a, d                                          ; $6a94: $7a
	sbc $62                                          ; $6a95: $de $62
	db $fc                                           ; $6a97: $fc
	ld h, h                                          ; $6a98: $64
	ld l, a                                          ; $6a99: $6f
	ret nz                                           ; $6a9a: $c0

	ld e, [hl]                                       ; $6a9b: $5e
	db $fc                                           ; $6a9c: $fc
	rst SubAFromDE                                          ; $6a9d: $df
	ld bc, $dffd                                     ; $6a9e: $01 $fd $df
	ld bc, $0ddf                                     ; $6aa1: $01 $df $0d
	sub l                                            ; $6aa4: $95
	rra                                              ; $6aa5: $1f
	inc de                                           ; $6aa6: $13
	rra                                              ; $6aa7: $1f
	ld [de], a                                       ; $6aa8: $12
	rrca                                             ; $6aa9: $0f
	ld [$0507], sp                                   ; $6aaa: $08 $07 $05
	ld [bc], a                                       ; $6aad: $02
	inc bc                                           ; $6aae: $03
	ei                                               ; $6aaf: $fb
	rst SubAFromDE                                          ; $6ab0: $df
	rst FarCall                                          ; $6ab1: $f7
	ld a, [hl]                                       ; $6ab2: $7e
	ld l, b                                          ; $6ab3: $68
	adc c                                            ; $6ab4: $89
	and $ff                                          ; $6ab5: $e6 $ff
	rra                                              ; $6ab7: $1f
	rst $38                                          ; $6ab8: $ff
	jp z, $94ff                                      ; $6ab9: $ca $ff $94

	rst $38                                          ; $6abc: $ff
	ld [de], a                                       ; $6abd: $12
	rst $38                                          ; $6abe: $ff
	inc sp                                           ; $6abf: $33
	rst $38                                          ; $6ac0: $ff
	dec sp                                           ; $6ac1: $3b
	xor $ff                                          ; $6ac2: $ee $ff
	push af                                          ; $6ac4: $f5
	or a                                             ; $6ac5: $b7
	reti                                             ; $6ac6: $d9


	rst $38                                          ; $6ac7: $ff
	sbc c                                            ; $6ac8: $99

jr_01a_6ac9:
	rst $38                                          ; $6ac9: $ff
	reti                                             ; $6aca: $d9


	ld sp, hl                                        ; $6acb: $f9
	rst SubAFromDE                                          ; $6acc: $df

jr_01a_6acd:
	ret nc                                           ; $6acd: $d0

	adc l                                            ; $6ace: $8d
	jr c, jr_01a_6ac9                                ; $6acf: $38 $f8

	ldh a, [$f0]                                     ; $6ad1: $f0 $f0
	jr z, jr_01a_6acd                                ; $6ad3: $28 $f8

	sbc b                                            ; $6ad5: $98
	ld hl, sp+$58                                    ; $6ad6: $f8 $58
	ld hl, sp+$54                                    ; $6ad8: $f8 $54
	db $fc                                           ; $6ada: $fc
	db $f4                                           ; $6adb: $f4
	db $fc                                           ; $6adc: $fc
	add sp, -$48                                     ; $6add: $e8 $b8
	ld a, b                                          ; $6adf: $78
	ret z                                            ; $6ae0: $c8

	ld a, d                                          ; $6ae1: $7a
	ld h, b                                          ; $6ae2: $60
	sbc l                                            ; $6ae3: $9d
	or b                                             ; $6ae4: $b0
	ld [bc], a                                       ; $6ae5: $02
	ld l, e                                          ; $6ae6: $6b
	xor d                                            ; $6ae7: $aa
	ei                                               ; $6ae8: $fb
	rst SubAFromDE                                          ; $6ae9: $df
	ld bc, $039d                                     ; $6aea: $01 $9d $03
	ld [bc], a                                       ; $6aed: $02
	ld [hl], a                                       ; $6aee: $77
	sbc b                                            ; $6aef: $98
	reti                                             ; $6af0: $d9


	ld bc, $03df                                     ; $6af1: $01 $df $03
	sub e                                            ; $6af4: $93
	ccf                                              ; $6af5: $3f
	and $1f                                          ; $6af6: $e6 $1f
	or $8f                                           ; $6af8: $f6 $8f
	rst $38                                          ; $6afa: $ff
	ld l, a                                          ; $6afb: $6f
	ld a, d                                          ; $6afc: $7a
	dec [hl]                                         ; $6afd: $35
	ccf                                              ; $6afe: $3f
	ld de, $7a1e                                     ; $6aff: $11 $1e $7a
	and l                                            ; $6b02: $a5
	sbc h                                            ; $6b03: $9c
	ld a, $ff                                        ; $6b04: $3e $ff
	nop                                              ; $6b06: $00
	sbc $ff                                          ; $6b07: $de $ff
	ld a, d                                          ; $6b09: $7a
	cp b                                             ; $6b0a: $b8
	sbc [hl]                                         ; $6b0b: $9e
	xor e                                            ; $6b0c: $ab
	sbc $bb                                          ; $6b0d: $de $bb
	sbc [hl]                                         ; $6b0f: $9e
	sbc $de                                          ; $6b10: $de $de
	rst $38                                          ; $6b12: $ff
	add a                                            ; $6b13: $87
	ldh [rAUD4LEN], a                                ; $6b14: $e0 $20
	ret nz                                           ; $6b16: $c0

	ld b, b                                          ; $6b17: $40
	ret nz                                           ; $6b18: $c0

	ret nz                                           ; $6b19: $c0

	and b                                            ; $6b1a: $a0
	ldh [rAUD1SWEEP], a                              ; $6b1b: $e0 $10
	ldh a, [$f0]                                     ; $6b1d: $f0 $f0
	ld d, b                                          ; $6b1f: $50
	db $fc                                           ; $6b20: $fc
	call c, Call_01a_74fc                            ; $6b21: $dc $fc $74
	db $fc                                           ; $6b24: $fc
	inc c                                            ; $6b25: $0c
	db $fc                                           ; $6b26: $fc
	db $f4                                           ; $6b27: $f4
	ld hl, sp+$18                                    ; $6b28: $f8 $18
	ld hl, sp-$08                                    ; $6b2a: $f8 $f8
	db $dd                                           ; $6b2c: $dd
	ret c                                            ; $6b2d: $d8

	rst SubAFromDE                                          ; $6b2e: $df
	ld hl, sp-$21                                    ; $6b2f: $f8 $df
	db $fc                                           ; $6b31: $fc
	dec a                                            ; $6b32: $3d
	ret nz                                           ; $6b33: $c0

	sub c                                            ; $6b34: $91
	adc $fb                                          ; $6b35: $ce $fb
	rst $38                                          ; $6b37: $ff
	cp l                                             ; $6b38: $bd
	db $ed                                           ; $6b39: $ed
	ld [hl], $ff                                     ; $6b3a: $36 $ff
	ld h, $ff                                        ; $6b3c: $26 $ff
	sub [hl]                                         ; $6b3e: $96
	ld a, a                                          ; $6b3f: $7f
	ld c, c                                          ; $6b40: $49
	ccf                                              ; $6b41: $3f
	dec h                                            ; $6b42: $25
	add hl, bc                                       ; $6b43: $09
	ret nz                                           ; $6b44: $c0

	sub d                                            ; $6b45: $92
	sub b                                            ; $6b46: $90
	dec de                                           ; $6b47: $1b
	ld e, $09                                        ; $6b48: $1e $09
	rrca                                             ; $6b4a: $0f
	inc b                                            ; $6b4b: $04
	rlca                                             ; $6b4c: $07
	inc b                                            ; $6b4d: $04
	rlca                                             ; $6b4e: $07
	ccf                                              ; $6b4f: $3f
	add hl, hl                                       ; $6b50: $29
	ld a, a                                          ; $6b51: $7f
	ld c, a                                          ; $6b52: $4f
	ld l, d                                          ; $6b53: $6a
	ld b, b                                          ; $6b54: $40
	sbc b                                            ; $6b55: $98
	ld e, a                                          ; $6b56: $5f
	ld l, [hl]                                       ; $6b57: $6e
	ld c, [hl]                                       ; $6b58: $4e
	ld l, [hl]                                       ; $6b59: $6e
	ld c, [hl]                                       ; $6b5a: $4e
	halt                                             ; $6b5b: $76
	ld e, [hl]                                       ; $6b5c: $5e
	ld l, c                                          ; $6b5d: $69
	ret nz                                           ; $6b5e: $c0

	sbc e                                            ; $6b5f: $9b
	ld [hl], b                                       ; $6b60: $70
	adc b                                            ; $6b61: $88
	ld hl, sp+$14                                    ; $6b62: $f8 $14
	ld c, l                                          ; $6b64: $4d
	ret nz                                           ; $6b65: $c0

	sbc b                                            ; $6b66: $98
	ld a, [$e2e6]                                    ; $6b67: $fa $e6 $e2
	and $e2                                          ; $6b6a: $e6 $e2
	sub [hl]                                         ; $6b6c: $96
	or $6f                                           ; $6b6d: $f6 $6f
	ldh [$df], a                                     ; $6b6f: $e0 $df
	rlca                                             ; $6b71: $07
	sbc e                                            ; $6b72: $9b
	ld a, [bc]                                       ; $6b73: $0a
	rrca                                             ; $6b74: $0f
	dec e                                            ; $6b75: $1d
	rla                                              ; $6b76: $17
	ld d, c                                          ; $6b77: $51
	add b                                            ; $6b78: $80
	ld c, e                                          ; $6b79: $4b
	ret nz                                           ; $6b7a: $c0

	sbc h                                            ; $6b7b: $9c
	xor b                                            ; $6b7c: $a8
	ld hl, sp+$44                                    ; $6b7d: $f8 $44
	scf                                              ; $6b7f: $37
	ret nz                                           ; $6b80: $c0

	sbc [hl]                                         ; $6b81: $9e
	ldh a, [c]                                       ; $6b82: $f2
	ld l, a                                          ; $6b83: $6f
	ldh [$7d], a                                     ; $6b84: $e0 $7d
	ret nz                                           ; $6b86: $c0

	sbc c                                            ; $6b87: $99
	add hl, de                                       ; $6b88: $19
	rla                                              ; $6b89: $17
	jr c, jr_01a_6bbb                                ; $6b8a: $38 $2f

	inc a                                            ; $6b8c: $3c
	scf                                              ; $6b8d: $37
	ld e, c                                          ; $6b8e: $59
	ret nz                                           ; $6b8f: $c0

	ld d, e                                          ; $6b90: $53
	ret nz                                           ; $6b91: $c0

	ld a, l                                          ; $6b92: $7d
	ret nz                                           ; $6b93: $c0

	sub a                                            ; $6b94: $97
	call z, Call_01a_7efc                            ; $6b95: $cc $fc $7e
	ldh a, [c]                                       ; $6b98: $f2
	cp $d2                                           ; $6b99: $fe $d2
	rst $38                                          ; $6b9b: $ff
	add a                                            ; $6b9c: $87
	ld h, c                                          ; $6b9d: $61
	ret nz                                           ; $6b9e: $c0

	ld d, e                                          ; $6b9f: $53
	ret nz                                           ; $6ba0: $c0

	rst SubAFromDE                                          ; $6ba1: $df
	inc bc                                           ; $6ba2: $03
	ld a, e                                          ; $6ba3: $7b
	ld b, e                                          ; $6ba4: $43
	sbc h                                            ; $6ba5: $9c
	inc b                                            ; $6ba6: $04
	inc bc                                           ; $6ba7: $03
	ld [bc], a                                       ; $6ba8: $02
	ld d, [hl]                                       ; $6ba9: $56
	sbc d                                            ; $6baa: $9a
	di                                               ; $6bab: $f3
	rst SubAFromDE                                          ; $6bac: $df
	inc bc                                           ; $6bad: $03
	sbc [hl]                                         ; $6bae: $9e
	inc c                                            ; $6baf: $0c
	ld a, b                                          ; $6bb0: $78
	sbc $96                                          ; $6bb1: $de $96
	ld hl, $403f                                     ; $6bb3: $21 $3f $40
	ld a, a                                          ; $6bb6: $7f
	ld b, c                                          ; $6bb7: $41
	ld a, a                                          ; $6bb8: $7f
	add b                                            ; $6bb9: $80
	rst $38                                          ; $6bba: $ff

jr_01a_6bbb:
	add c                                            ; $6bbb: $81

jr_01a_6bbc:
	ld a, e                                          ; $6bbc: $7b
	cp $9b                                           ; $6bbd: $fe $9b
	ld b, e                                          ; $6bbf: $43
	ld a, [hl]                                       ; $6bc0: $7e
	ld b, e                                          ; $6bc1: $43
	ld a, [hl]                                       ; $6bc2: $7e
	ld [hl], a                                       ; $6bc3: $77
	ldh a, [hDisp1_WX]                                     ; $6bc4: $f0 $96
	sbc h                                            ; $6bc6: $9c
	rst $38                                          ; $6bc7: $ff
	db $e3                                           ; $6bc8: $e3
	db $e3                                           ; $6bc9: $e3
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	add b                                            ; $6bcc: $80
	add b                                            ; $6bcd: $80
	ld h, b                                          ; $6bce: $60
	ld a, d                                          ; $6bcf: $7a
	and d                                            ; $6bd0: $a2
	ld a, l                                          ; $6bd1: $7d
	jr nz, jr_01a_6c50                               ; $6bd2: $20 $7c

	jp c, $fe7f                                      ; $6bd4: $da $7f $fe

	sbc l                                            ; $6bd7: $9d
	ld [bc], a                                       ; $6bd8: $02
	cp $77                                           ; $6bd9: $fe $77
	cp $93                                           ; $6bdb: $fe $93
	add h                                            ; $6bdd: $84
	db $fc                                           ; $6bde: $fc
	add h                                            ; $6bdf: $84
	db $fc                                           ; $6be0: $fc
	ld [$10f8], sp                                   ; $6be1: $08 $f8 $10
	ldh a, [$60]                                     ; $6be4: $f0 $60
	ldh [$80], a                                     ; $6be6: $e0 $80
	add b                                            ; $6be8: $80
	ld l, a                                          ; $6be9: $6f
	jp nz, $1e7d                                     ; $6bea: $c2 $7d $1e

	ld a, a                                          ; $6bed: $7f
	call nz, $cc7f                                   ; $6bee: $c4 $7f $cc
	adc b                                            ; $6bf1: $88
	add e                                            ; $6bf2: $83
	cp $87                                           ; $6bf3: $fe $87
	db $fd                                           ; $6bf5: $fd
	adc a                                            ; $6bf6: $8f
	ld a, [$fd87]                                    ; $6bf7: $fa $87 $fd
	ld b, e                                          ; $6bfa: $43
	ld a, [hl]                                       ; $6bfb: $7e
	ld b, c                                          ; $6bfc: $41
	ld a, a                                          ; $6bfd: $7f
	jr nz, jr_01a_6c3f                               ; $6bfe: $20 $3f

	jr jr_01a_6c21                                   ; $6c00: $18 $1f

	ld b, $07                                        ; $6c02: $06 $07
	ld bc, $c001                                     ; $6c04: $01 $01 $c0
	ret nz                                           ; $6c07: $c0

	jr nc, @+$75                                     ; $6c08: $30 $73

	call nz, $1c7f                                   ; $6c0a: $c4 $7f $1c
	sub c                                            ; $6c0d: $91
	ldh [c], a                                       ; $6c0e: $e2
	cp [hl]                                          ; $6c0f: $be
	ldh [c], a                                       ; $6c10: $e2
	cp [hl]                                          ; $6c11: $be
	pop hl                                           ; $6c12: $e1
	ccf                                              ; $6c13: $3f
	pop hl                                           ; $6c14: $e1
	rst $38                                          ; $6c15: $ff
	pop hl                                           ; $6c16: $e1
	ccf                                              ; $6c17: $3f
	ldh [c], a                                       ; $6c18: $e2
	ld a, $c2                                        ; $6c19: $3e $c2
	cp $77                                           ; $6c1b: $fe $77
	or h                                             ; $6c1d: $b4
	sbc e                                            ; $6c1e: $9b
	add hl, de                                       ; $6c1f: $19
	rst $38                                          ; $6c20: $ff

jr_01a_6c21:
	rst SubAFromBC                                          ; $6c21: $e7
	rst SubAFromBC                                          ; $6c22: $e7
	db $fd                                           ; $6c23: $fd
	rst SubAFromDE                                          ; $6c24: $df
	jr jr_01a_6bbc                                   ; $6c25: $18 $95

	ld a, $36                                        ; $6c27: $3e $36
	ld a, a                                          ; $6c29: $7f
	ld b, e                                          ; $6c2a: $43
	rst $38                                          ; $6c2b: $ff
	add c                                            ; $6c2c: $81
	cp $82                                           ; $6c2d: $fe $82
	ld a, a                                          ; $6c2f: $7f
	ld h, l                                          ; $6c30: $65
	ld a, e                                          ; $6c31: $7b
	ld a, e                                          ; $6c32: $7b
	sbc d                                            ; $6c33: $9a
	ld b, c                                          ; $6c34: $41
	ld a, $32                                        ; $6c35: $3e $32
	ld c, $0a                                        ; $6c37: $0e $0a
	ld a, c                                          ; $6c39: $79
	and h                                            ; $6c3a: $a4
	sbc [hl]                                         ; $6c3b: $9e
	ld [bc], a                                       ; $6c3c: $02
	ldh [$dc], a                                     ; $6c3d: $e0 $dc

jr_01a_6c3f:
	ldh [rP1], a                                     ; $6c3f: $e0 $00
	ldh [$a3], a                                     ; $6c41: $e0 $a3
	adc l                                            ; $6c43: $8d
	ld [bc], a                                       ; $6c44: $02
	rst $38                                          ; $6c45: $ff
	rst SubAFromDE                                          ; $6c46: $df
	dec a                                            ; $6c47: $3d
	add b                                            ; $6c48: $80
	inc de                                           ; $6c49: $13
	rra                                              ; $6c4a: $1f
	ld a, c                                          ; $6c4b: $79
	ld a, a                                          ; $6c4c: $7f
	ld b, a                                          ; $6c4d: $47
	ld a, a                                          ; $6c4e: $7f
	ld [hl-], a                                      ; $6c4f: $32

jr_01a_6c50:
	ccf                                              ; $6c50: $3f
	dec h                                            ; $6c51: $25
	ccf                                              ; $6c52: $3f
	ld b, h                                          ; $6c53: $44
	ld a, a                                          ; $6c54: $7f
	ld c, e                                          ; $6c55: $4b
	ld a, h                                          ; $6c56: $7c
	rst SubAFromDE                                          ; $6c57: $df
	jr nc, jr_01a_6c99                               ; $6c58: $30 $3f

	ld b, b                                          ; $6c5a: $40
	ccf                                              ; $6c5b: $3f
	ld hl, $303f                                     ; $6c5c: $21 $3f $30
	ld a, a                                          ; $6c5f: $7f
	ld h, h                                          ; $6c60: $64
	rst $38                                          ; $6c61: $ff
	adc d                                            ; $6c62: $8a
	rst $38                                          ; $6c63: $ff
	add c                                            ; $6c64: $81
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	ret nz                                           ; $6c67: $c0

	add d                                            ; $6c68: $82
	ret nz                                           ; $6c69: $c0

	inc [hl]                                         ; $6c6a: $34
	db $f4                                           ; $6c6b: $f4
	adc [hl]                                         ; $6c6c: $8e
	cp $fc                                           ; $6c6d: $fe $fc
	db $fc                                           ; $6c6f: $fc
	adc d                                            ; $6c70: $8a
	cp $26                                           ; $6c71: $fe $26
	sbc $56                                          ; $6c73: $de $56
	cp [hl]                                          ; $6c75: $be
	push de                                          ; $6c76: $d5
	rst $38                                          ; $6c77: $ff
	db $fd                                           ; $6c78: $fd
	ccf                                              ; $6c79: $3f
	cp $06                                           ; $6c7a: $fe $06
	cp $c2                                           ; $6c7c: $fe $c2
	cp $62                                           ; $6c7e: $fe $62
	cp $22                                           ; $6c80: $fe $22
	db $fc                                           ; $6c82: $fc
	inc b                                            ; $6c83: $04
	ld a, [$470a]                                    ; $6c84: $fa $0a $47
	ret nz                                           ; $6c87: $c0

	adc a                                            ; $6c88: $8f
	ld c, h                                          ; $6c89: $4c
	ld a, a                                          ; $6c8a: $7f
	ld c, [hl]                                       ; $6c8b: $4e
	ld a, e                                          ; $6c8c: $7b
	ccf                                              ; $6c8d: $3f
	add hl, sp                                       ; $6c8e: $39
	cpl                                              ; $6c8f: $2f
	ld [hl], $3d                                     ; $6c90: $36 $3d
	ld h, $1f                                        ; $6c92: $26 $1f
	ld e, $0f                                        ; $6c94: $1e $0f
	add hl, bc                                       ; $6c96: $09
	halt                                             ; $6c97: $76
	ld d, l                                          ; $6c98: $55

jr_01a_6c99:
	ld d, e                                          ; $6c99: $53
	ret nz                                           ; $6c9a: $c0

	sbc h                                            ; $6c9b: $9c
	cp $96                                           ; $6c9c: $fe $96
	cp $7b                                           ; $6c9e: $fe $7b
	ret nz                                           ; $6ca0: $c0

	sbc h                                            ; $6ca1: $9c
	cp a                                             ; $6ca2: $bf
	ld a, [$7b3e]                                    ; $6ca3: $fa $3e $7b
	jp nz, Jump_01a_7289                             ; $6ca6: $c2 $89 $72

	db $fc                                           ; $6ca9: $fc
	ld d, h                                          ; $6caa: $54
	ld hl, sp-$78                                    ; $6cab: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6cad: $f0 $90
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	inc bc                                           ; $6cb1: $03
	inc bc                                           ; $6cb2: $03
	ld a, $3f                                        ; $6cb3: $3e $3f
	ld de, $661f                                     ; $6cb5: $11 $1f $66
	ld a, a                                          ; $6cb8: $7f
	sbc d                                            ; $6cb9: $9a
	rst $38                                          ; $6cba: $ff
	ld [hl], e                                       ; $6cbb: $73
	ld a, a                                          ; $6cbc: $7f
	inc h                                            ; $6cbd: $24
	ld a, e                                          ; $6cbe: $7b
	cp [hl]                                          ; $6cbf: $be
	ld a, a                                          ; $6cc0: $7f
	cp $7b                                           ; $6cc1: $fe $7b
	cp [hl]                                          ; $6cc3: $be
	adc e                                            ; $6cc4: $8b
	ld sp, $3a2f                                     ; $6cc5: $31 $2f $3a
	dec a                                            ; $6cc8: $3d
	ld l, $1f                                        ; $6cc9: $2e $1f
	db $10                                           ; $6ccb: $10
	rrca                                             ; $6ccc: $0f
	add hl, bc                                       ; $6ccd: $09
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	add sp, -$18                                     ; $6cd0: $e8 $e8
	inc e                                            ; $6cd2: $1c
	db $fc                                           ; $6cd3: $fc
	adc b                                            ; $6cd4: $88
	ld hl, sp+$74                                    ; $6cd5: $f8 $74
	db $fc                                           ; $6cd7: $fc
	sbc d                                            ; $6cd8: $9a
	ld a, e                                          ; $6cd9: $7b
	adc c                                            ; $6cda: $89
	adc a                                            ; $6cdb: $8f
	and l                                            ; $6cdc: $a5
	rst $38                                          ; $6cdd: $ff
	sub l                                            ; $6cde: $95
	rst $38                                          ; $6cdf: $ff
	push de                                          ; $6ce0: $d5
	rst $38                                          ; $6ce1: $ff
	ld a, [$feae]                                    ; $6ce2: $fa $ae $fe
	add d                                            ; $6ce5: $82
	cp $52                                           ; $6ce6: $fe $52
	db $ec                                           ; $6ce8: $ec
	ld [hl], h                                       ; $6ce9: $74
	ld hl, sp+$08                                    ; $6cea: $f8 $08
	dec hl                                           ; $6cec: $2b
	ret nz                                           ; $6ced: $c0

	sbc b                                            ; $6cee: $98
	ld a, a                                          ; $6cef: $7f
	ccf                                              ; $6cf0: $3f
	scf                                              ; $6cf1: $37
	dec l                                            ; $6cf2: $2d
	ld [hl], $3f                                     ; $6cf3: $36 $3f
	ld h, $1b                                        ; $6cf5: $26 $1b
	ret nz                                           ; $6cf7: $c0

	sbc d                                            ; $6cf8: $9a
	ld a, d                                          ; $6cf9: $7a
	sbc $62                                          ; $6cfa: $de $62
	db $fc                                           ; $6cfc: $fc
	ld h, h                                          ; $6cfd: $64
	ld [hl], a                                       ; $6cfe: $77
	ret nz                                           ; $6cff: $c0

	sbc c                                            ; $6d00: $99
	rst $38                                          ; $6d01: $ff
	add b                                            ; $6d02: $80
	rst $38                                          ; $6d03: $ff
	jp nz, Jump_01a_687f                             ; $6d04: $c2 $7f $68

	ld a, e                                          ; $6d07: $7b
	sub $96                                          ; $6d08: $d6 $96
	ld [$081f], sp                                   ; $6d0a: $08 $1f $08
	scf                                              ; $6d0d: $37
	inc d                                            ; $6d0e: $14
	daa                                              ; $6d0f: $27
	daa                                              ; $6d10: $27
	rlca                                             ; $6d11: $07
	inc b                                            ; $6d12: $04
	ld [hl], e                                       ; $6d13: $73
	cp $96                                           ; $6d14: $fe $96
	ld b, $09                                        ; $6d16: $06 $09
	rrca                                             ; $6d18: $0f
	db $10                                           ; $6d19: $10
	rra                                              ; $6d1a: $1f
	ld a, a                                          ; $6d1b: $7f
	ld a, a                                          ; $6d1c: $7f
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	ld a, e                                          ; $6d1f: $7b
	res 3, b                                         ; $6d20: $cb $98
	ld [bc], a                                       ; $6d22: $02
	cp $22                                           ; $6d23: $fe $22
	cp $12                                           ; $6d25: $fe $12
	db $fc                                           ; $6d27: $fc
	inc c                                            ; $6d28: $0c
	ld [hl], a                                       ; $6d29: $77
	jp nc, $f09d                                     ; $6d2a: $d2 $9d $f0

	ld [hl], b                                       ; $6d2d: $70
	ld a, e                                          ; $6d2e: $7b
	db $fc                                           ; $6d2f: $fc
	ld [hl], e                                       ; $6d30: $73
	cp $94                                           ; $6d31: $fe $94
	add sp, -$08                                     ; $6d33: $e8 $f8
	add h                                            ; $6d35: $84
	db $fc                                           ; $6d36: $fc
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	rlca                                             ; $6d3b: $07
	rlca                                             ; $6d3c: $07
	ld [$d67b], sp                                   ; $6d3d: $08 $7b $d6
	sub l                                            ; $6d40: $95
	rla                                              ; $6d41: $17
	dec e                                            ; $6d42: $1d
	rla                                              ; $6d43: $17
	dec de                                           ; $6d44: $1b
	rla                                              ; $6d45: $17
	dec de                                           ; $6d46: $1b
	rrca                                             ; $6d47: $0f
	dec c                                            ; $6d48: $0d
	rrca                                             ; $6d49: $0f
	ld [$fe7b], sp                                   ; $6d4a: $08 $7b $fe
	rst SubAFromDE                                          ; $6d4d: $df
	rrca                                             ; $6d4e: $0f
	ld a, a                                          ; $6d4f: $7f
	jp $fe7f                                         ; $6d50: $c3 $7f $fe


	sbc h                                            ; $6d53: $9c
	rrca                                             ; $6d54: $0f
	ld de, $771f                                     ; $6d55: $11 $1f $77
	ldh [$df], a                                     ; $6d58: $e0 $df
	ld hl, sp-$6c                                    ; $6d5a: $f8 $94
	db $fc                                           ; $6d5c: $fc
	call z, $34fc                                    ; $6d5d: $cc $fc $34
	db $fc                                           ; $6d60: $fc
	db $fc                                           ; $6d61: $fc
	ld [$30f8], sp                                   ; $6d62: $08 $f8 $30
	ldh a, [$a0]                                     ; $6d65: $f0 $a0
	db $dd                                           ; $6d67: $dd
	ldh [$7f], a                                     ; $6d68: $e0 $7f
	ei                                               ; $6d6a: $fb
	sbc [hl]                                         ; $6d6b: $9e
	jr nz, jr_01a_6de5                               ; $6d6c: $20 $77

	cp $89                                           ; $6d6e: $fe $89
	ret nc                                           ; $6d70: $d0

	ldh a, [$08]                                     ; $6d71: $f0 $08
	ld hl, sp-$02                                    ; $6d73: $f8 $fe
	cp $00                                           ; $6d75: $fe $00
	nop                                              ; $6d77: $00
	ld [hl], e                                       ; $6d78: $73
	ld d, e                                          ; $6d79: $53
	push af                                          ; $6d7a: $f5
	or a                                             ; $6d7b: $b7
	ei                                               ; $6d7c: $fb
	cp a                                             ; $6d7d: $bf
	ld [hl], b                                       ; $6d7e: $70
	ld e, a                                          ; $6d7f: $5f
	db $f4                                           ; $6d80: $f4
	adc a                                            ; $6d81: $8f
	db $fc                                           ; $6d82: $fc
	adc a                                            ; $6d83: $8f
	ld [hl], a                                       ; $6d84: $77
	ld [hl], a                                       ; $6d85: $77
	ld l, e                                          ; $6d86: $6b
	add d                                            ; $6d87: $82
	ld [hl], a                                       ; $6d88: $77
	cp $7b                                           ; $6d89: $fe $7b
	xor b                                            ; $6d8b: $a8
	ld [hl], a                                       ; $6d8c: $77
	add b                                            ; $6d8d: $80
	rst SubAFromDE                                          ; $6d8e: $df
	ldh a, [hDisp1_LCDC]                                     ; $6d8f: $f0 $8f
	ret c                                            ; $6d91: $d8

	ld a, b                                          ; $6d92: $78
	db $e4                                           ; $6d93: $e4
	ld a, h                                          ; $6d94: $7c
	add d                                            ; $6d95: $82
	cp $12                                           ; $6d96: $fe $12
	cp $1e                                           ; $6d98: $fe $1e
	cp $fc                                           ; $6d9a: $fe $fc
	db $ec                                           ; $6d9c: $ec
	db $fc                                           ; $6d9d: $fc
	inc h                                            ; $6d9e: $24
	ld hl, sp-$68                                    ; $6d9f: $f8 $98
	inc bc                                           ; $6da1: $03
	add b                                            ; $6da2: $80
	ld d, e                                          ; $6da3: $53
	add b                                            ; $6da4: $80
	rst SubAFromDE                                          ; $6da5: $df
	ldh a, [hDisp1_OBP0]                                     ; $6da6: $f0 $93
	ld a, b                                          ; $6da8: $78
	ld hl, sp-$04                                    ; $6da9: $f8 $fc
	inc h                                            ; $6dab: $24
	cp $96                                           ; $6dac: $fe $96
	ld a, [hl]                                       ; $6dae: $7e
	adc $3c                                          ; $6daf: $ce $3c
	db $e4                                           ; $6db1: $e4
	ld hl, sp-$08                                    ; $6db2: $f8 $f8
	ld a, e                                          ; $6db4: $7b
	add d                                            ; $6db5: $82
	ld c, e                                          ; $6db6: $4b
	add b                                            ; $6db7: $80
	ld a, e                                          ; $6db8: $7b
	nop                                              ; $6db9: $00
	sbc [hl]                                         ; $6dba: $9e
	ret nz                                           ; $6dbb: $c0

	ld [hl], a                                       ; $6dbc: $77
	nop                                              ; $6dbd: $00
	ld a, e                                          ; $6dbe: $7b
	cp $9a                                           ; $6dbf: $fe $9a
	inc d                                            ; $6dc1: $14
	scf                                              ; $6dc2: $37
	inc d                                            ; $6dc3: $14
	inc hl                                           ; $6dc4: $23
	inc hl                                           ; $6dc5: $23
	call c, $9903                                    ; $6dc6: $dc $03 $99
	ld [bc], a                                       ; $6dc9: $02
	inc bc                                           ; $6dca: $03
	ld [bc], a                                       ; $6dcb: $02
	rlca                                             ; $6dcc: $07
	rlca                                             ; $6dcd: $07
	inc c                                            ; $6dce: $0c
	ld [hl], e                                       ; $6dcf: $73
	add b                                            ; $6dd0: $80
	ld d, a                                          ; $6dd1: $57
	nop                                              ; $6dd2: $00
	ld a, a                                          ; $6dd3: $7f
	add h                                            ; $6dd4: $84
	ld a, a                                          ; $6dd5: $7f
	adc d                                            ; $6dd6: $8a
	db $dd                                           ; $6dd7: $dd
	ld hl, sp-$69                                    ; $6dd8: $f8 $97
	ldh a, [$d0]                                     ; $6dda: $f0 $d0
	ld hl, sp+$48                                    ; $6ddc: $f8 $48
	db $fc                                           ; $6dde: $fc
	db $fc                                           ; $6ddf: $fc
	adc $fe                                          ; $6de0: $ce $fe
	ld [hl], a                                       ; $6de2: $77
	and b                                            ; $6de3: $a0
	ld a, a                                          ; $6de4: $7f

jr_01a_6de5:
	ld b, b                                          ; $6de5: $40
	sub c                                            ; $6de6: $91
	or $b7                                           ; $6de7: $f6 $b7
	db $fc                                           ; $6de9: $fc
	cp a                                             ; $6dea: $bf
	ld a, h                                          ; $6deb: $7c
	ld d, a                                          ; $6dec: $57
	cp $8b                                           ; $6ded: $fe $8b
	ld a, [$708b]                                    ; $6def: $fa $8b $70
	ld [hl], e                                       ; $6df2: $73
	inc b                                            ; $6df3: $04
	rlca                                             ; $6df4: $07
	ld b, a                                          ; $6df5: $47
	ret nz                                           ; $6df6: $c0

	rst SubAFromDE                                          ; $6df7: $df
	ldh a, [$7e]                                     ; $6df8: $f0 $7e
	add h                                            ; $6dfa: $84
	sub e                                            ; $6dfb: $93
	inc b                                            ; $6dfc: $04
	db $fc                                           ; $6dfd: $fc
	ld e, $fe                                        ; $6dfe: $1e $fe
	ld c, $fa                                        ; $6e00: $0e $fa
	ld e, $f2                                        ; $6e02: $1e $f2
	inc a                                            ; $6e04: $3c
	db $e4                                           ; $6e05: $e4
	inc e                                            ; $6e06: $1c

jr_01a_6e07:
	db $f4                                           ; $6e07: $f4
	ld b, a                                          ; $6e08: $47
	ret nz                                           ; $6e09: $c0

	ld [hl], a                                       ; $6e0a: $77
	ld b, b                                          ; $6e0b: $40
	sub a                                            ; $6e0c: $97

jr_01a_6e0d:
	inc e                                            ; $6e0d: $1c
	rla                                              ; $6e0e: $17
	rra                                              ; $6e0f: $1f
	dec e                                            ; $6e10: $1d
	rra                                              ; $6e11: $1f
	inc de                                           ; $6e12: $13
	rra                                              ; $6e13: $1f
	inc de                                           ; $6e14: $13
	ld l, a                                          ; $6e15: $6f
	ld b, b                                          ; $6e16: $40
	sbc $07                                          ; $6e17: $de $07
	sbc c                                            ; $6e19: $99
	dec b                                            ; $6e1a: $05
	rlca                                             ; $6e1b: $07
	inc b                                            ; $6e1c: $04
	rrca                                             ; $6e1d: $0f
	rrca                                             ; $6e1e: $0f
	dec de                                           ; $6e1f: $1b
	ld d, d                                          ; $6e20: $52
	ret nz                                           ; $6e21: $c0

	sbc d                                            ; $6e22: $9a
	jr c, jr_01a_6e0d                                ; $6e23: $38 $e8

	jr nz, jr_01a_6e07                               ; $6e25: $20 $e0

	db $10                                           ; $6e27: $10
	ld a, e                                          ; $6e28: $7b
	rlca                                             ; $6e29: $07
	db $dd                                           ; $6e2a: $dd
	ldh a, [$7f]                                     ; $6e2b: $f0 $7f
	inc a                                            ; $6e2d: $3c
	ld [hl], a                                       ; $6e2e: $77
	rst FarCall                                          ; $6e2f: $f7
	sbc [hl]                                         ; $6e30: $9e
	jr c, jr_01a_6ea6                                ; $6e31: $38 $73

jr_01a_6e33:
	ld b, b                                          ; $6e33: $40
	rlca                                             ; $6e34: $07
	ret nz                                           ; $6e35: $c0

	ld d, a                                          ; $6e36: $57
	nop                                              ; $6e37: $00
	sbc l                                            ; $6e38: $9d
	jr jr_01a_6e33                                   ; $6e39: $18 $f8

	ccf                                              ; $6e3b: $3f
	ret nz                                           ; $6e3c: $c0

	rst SubAFromDE                                          ; $6e3d: $df
	inc bc                                           ; $6e3e: $03
	ld a, a                                          ; $6e3f: $7f
	ld e, b                                          ; $6e40: $58
	ld a, a                                          ; $6e41: $7f
	dec b                                            ; $6e42: $05
	add d                                            ; $6e43: $82
	jr nz, jr_01a_6e85                               ; $6e44: $20 $3f

	ld b, c                                          ; $6e46: $41
	ld a, a                                          ; $6e47: $7f
	ld b, e                                          ; $6e48: $43

jr_01a_6e49:
	ld a, [hl]                                       ; $6e49: $7e
	add e                                            ; $6e4a: $83
	cp $87                                           ; $6e4b: $fe $87
	db $fd                                           ; $6e4d: $fd
	adc a                                            ; $6e4e: $8f
	ld a, [$fd87]                                    ; $6e4f: $fa $87 $fd
	ld b, e                                          ; $6e52: $43
	ld a, [hl]                                       ; $6e53: $7e
	ld b, c                                          ; $6e54: $41
	ld a, a                                          ; $6e55: $7f
	jr nz, jr_01a_6e97                               ; $6e56: $20 $3f

	jr jr_01a_6e79                                   ; $6e58: $18 $1f

	ld b, $07                                        ; $6e5a: $06 $07
	ld bc, $c001                                     ; $6e5c: $01 $01 $c0
	ret nz                                           ; $6e5f: $c0

	jr nc, jr_01a_6edc                               ; $6e60: $30 $7a

	sub $7f                                          ; $6e62: $d6 $7f
	ld a, $87                                        ; $6e64: $3e $87
	ld b, h                                          ; $6e66: $44
	db $fc                                           ; $6e67: $fc
	ldh [c], a                                       ; $6e68: $e2
	cp [hl]                                          ; $6e69: $be
	ldh [c], a                                       ; $6e6a: $e2
	cp [hl]                                          ; $6e6b: $be
	pop hl                                           ; $6e6c: $e1
	ccf                                              ; $6e6d: $3f
	pop hl                                           ; $6e6e: $e1
	rst $38                                          ; $6e6f: $ff
	pop hl                                           ; $6e70: $e1
	ccf                                              ; $6e71: $3f
	ldh [c], a                                       ; $6e72: $e2
	ld a, $c2                                        ; $6e73: $3e $c2
	cp $04                                           ; $6e75: $fe $04
	db $fc                                           ; $6e77: $fc
	ld [bc], a                                       ; $6e78: $02

jr_01a_6e79:
	cp $19                                           ; $6e79: $fe $19
	rst $38                                          ; $6e7b: $ff
	rst SubAFromBC                                          ; $6e7c: $e7
	rst SubAFromBC                                          ; $6e7d: $e7
	ld h, a                                          ; $6e7e: $67
	cp [hl]                                          ; $6e7f: $be
	ld a, h                                          ; $6e80: $7c
	rst GetHLinHL                                          ; $6e81: $cf
	sbc b                                            ; $6e82: $98
	ld b, b                                          ; $6e83: $40
	ld a, a                                          ; $6e84: $7f

jr_01a_6e85:
	ld b, c                                          ; $6e85: $41
	ld a, a                                          ; $6e86: $7f
	add b                                            ; $6e87: $80
	rst $38                                          ; $6e88: $ff
	add c                                            ; $6e89: $81
	ld a, e                                          ; $6e8a: $7b
	cp $7f                                           ; $6e8b: $fe $7f
	ret nz                                           ; $6e8d: $c0

	ld a, a                                          ; $6e8e: $7f
	cp $77                                           ; $6e8f: $fe $77
	ldh a, [hDisp1_WX]                                     ; $6e91: $f0 $96
	sbc h                                            ; $6e93: $9c
	rst $38                                          ; $6e94: $ff
	db $e3                                           ; $6e95: $e3
	db $e3                                           ; $6e96: $e3

jr_01a_6e97:
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	add b                                            ; $6e99: $80
	add b                                            ; $6e9a: $80
	ld h, b                                          ; $6e9b: $60
	ld a, e                                          ; $6e9c: $7b
	ld b, [hl]                                       ; $6e9d: $46
	ld [hl], a                                       ; $6e9e: $77
	cp h                                             ; $6e9f: $bc
	ld [hl], a                                       ; $6ea0: $77
	call z, $fe77                                    ; $6ea1: $cc $77 $fe
	ld a, [hl]                                       ; $6ea4: $7e
	ld b, [hl]                                       ; $6ea5: $46

jr_01a_6ea6:
	ld a, a                                          ; $6ea6: $7f
	cp $7f                                           ; $6ea7: $fe $7f
	ldh a, [$7f]                                     ; $6ea9: $f0 $7f
	db $ec                                           ; $6eab: $ec
	ld a, a                                          ; $6eac: $7f
	add sp, -$21                                     ; $6ead: $e8 $df
	add b                                            ; $6eaf: $80
	db $fd                                           ; $6eb0: $fd
	rst SubAFromDE                                          ; $6eb1: $df
	jr jr_01a_6e49                                   ; $6eb2: $18 $95

	ld a, $36                                        ; $6eb4: $3e $36
	ld a, a                                          ; $6eb6: $7f
	ld b, e                                          ; $6eb7: $43
	rst $38                                          ; $6eb8: $ff
	add c                                            ; $6eb9: $81
	cp $82                                           ; $6eba: $fe $82
	ld a, a                                          ; $6ebc: $7f
	ld h, l                                          ; $6ebd: $65
	ld a, e                                          ; $6ebe: $7b
	cp e                                             ; $6ebf: $bb
	sub [hl]                                         ; $6ec0: $96
	ld b, c                                          ; $6ec1: $41
	ld a, $32                                        ; $6ec2: $3e $32
	ld c, $0a                                        ; $6ec4: $0e $0a
	rlca                                             ; $6ec6: $07
	dec b                                            ; $6ec7: $05
	ld [bc], a                                       ; $6ec8: $02
	ld [bc], a                                       ; $6ec9: $02
	ldh [$7c], a                                     ; $6eca: $e0 $7c
	ldh [rP1], a                                     ; $6ecc: $e0 $00
	ldh [$a3], a                                     ; $6ece: $e0 $a3
	ld h, d                                          ; $6ed0: $62
	ld [bc], a                                       ; $6ed1: $02
	rst $38                                          ; $6ed2: $ff
	rst SubAFromDE                                          ; $6ed3: $df
	dec a                                            ; $6ed4: $3d
	add e                                            ; $6ed5: $83
	inc de                                           ; $6ed6: $13
	rra                                              ; $6ed7: $1f
	ld sp, hl                                        ; $6ed8: $f9
	rst $38                                          ; $6ed9: $ff
	ld b, a                                          ; $6eda: $47
	ld a, a                                          ; $6edb: $7f

jr_01a_6edc:
	ld [hl-], a                                      ; $6edc: $32
	ccf                                              ; $6edd: $3f
	dec h                                            ; $6ede: $25
	ccf                                              ; $6edf: $3f
	ld b, h                                          ; $6ee0: $44
	ld a, a                                          ; $6ee1: $7f
	ld c, h                                          ; $6ee2: $4c
	ld a, a                                          ; $6ee3: $7f
	ld a, [hl]                                       ; $6ee4: $7e
	ld a, a                                          ; $6ee5: $7f
	rra                                              ; $6ee6: $1f
	dec e                                            ; $6ee7: $1d
	dec sp                                           ; $6ee8: $3b
	ld a, $7f                                        ; $6ee9: $3e $7f
	ld c, [hl]                                       ; $6eeb: $4e
	rst $38                                          ; $6eec: $ff
	sub [hl]                                         ; $6eed: $96
	rst $38                                          ; $6eee: $ff
	sbc c                                            ; $6eef: $99
	or $f5                                           ; $6ef0: $f6 $f5
	cpl                                              ; $6ef2: $2f
	ldh [$9d], a                                     ; $6ef3: $e0 $9d
	ld a, e                                          ; $6ef5: $7b
	ld a, [hl]                                       ; $6ef6: $7e
	ld l, e                                          ; $6ef7: $6b
	ldh [$9e], a                                     ; $6ef8: $e0 $9e
	sub l                                            ; $6efa: $95
	ccf                                              ; $6efb: $3f
	ldh [$80], a                                     ; $6efc: $e0 $80
	ld c, [hl]                                       ; $6efe: $4e
	ld a, e                                          ; $6eff: $7b
	ccf                                              ; $6f00: $3f
	add hl, sp                                       ; $6f01: $39
	cpl                                              ; $6f02: $2f
	jr nc, jr_01a_6f64                               ; $6f03: $30 $5f

	ld b, [hl]                                       ; $6f05: $46
	ld e, a                                          ; $6f06: $5f
	ld d, b                                          ; $6f07: $50
	ld l, a                                          ; $6f08: $6f
	ld l, c                                          ; $6f09: $69
	rst FarCall                                          ; $6f0a: $f7
	sub h                                            ; $6f0b: $94
	ei                                               ; $6f0c: $fb
	cp l                                             ; $6f0d: $bd
	pop bc                                           ; $6f0e: $c1
	cp $60                                           ; $6f0f: $fe $60
	ld a, a                                          ; $6f11: $7f
	inc e                                            ; $6f12: $1c
	rra                                              ; $6f13: $1f
	ld [bc], a                                       ; $6f14: $02
	inc bc                                           ; $6f15: $03
	ld a, a                                          ; $6f16: $7f
	ld a, a                                          ; $6f17: $7f
	rst $38                                          ; $6f18: $ff
	add b                                            ; $6f19: $80
	ld a, a                                          ; $6f1a: $7f
	ld a, a                                          ; $6f1b: $7f
	rrca                                             ; $6f1c: $0f
	sbc e                                            ; $6f1d: $9b
	rrca                                             ; $6f1e: $0f
	add hl, bc                                       ; $6f1f: $09
	rrca                                             ; $6f20: $0f
	ld de, $1fde                                     ; $6f21: $11 $de $1f
	sbc [hl]                                         ; $6f24: $9e
	inc hl                                           ; $6f25: $23
	sbc $3f                                          ; $6f26: $de $3f
	ei                                               ; $6f28: $fb
	dec sp                                           ; $6f29: $3b
	ret nz                                           ; $6f2a: $c0

	add b                                            ; $6f2b: $80
	dec a                                            ; $6f2c: $3d
	dec hl                                           ; $6f2d: $2b
	ld [hl], $3f                                     ; $6f2e: $36 $3f
	ld h, $1f                                        ; $6f30: $26 $1f
	ld d, $0f                                        ; $6f32: $16 $0f
	add hl, bc                                       ; $6f34: $09
	ld c, $0d                                        ; $6f35: $0e $0d
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	ret nz                                           ; $6f39: $c0

	ret nz                                           ; $6f3a: $c0

	inc [hl]                                         ; $6f3b: $34
	db $f4                                           ; $6f3c: $f4
	adc [hl]                                         ; $6f3d: $8e
	cp $fc                                           ; $6f3e: $fe $fc
	db $fc                                           ; $6f40: $fc
	adc d                                            ; $6f41: $8a
	cp $26                                           ; $6f42: $fe $26
	cp $96                                           ; $6f44: $fe $96
	cp $d5                                           ; $6f46: $fe $d5
	rst $38                                          ; $6f48: $ff
	db $fd                                           ; $6f49: $fd
	cp a                                             ; $6f4a: $bf
	add h                                            ; $6f4b: $84
	ld a, [$be6e]                                    ; $6f4c: $fa $6e $be
	ld [hl], d                                       ; $6f4f: $72
	cp $62                                           ; $6f50: $fe $62
	db $fc                                           ; $6f52: $fc
	ld h, h                                          ; $6f53: $64
	ld hl, sp-$78                                    ; $6f54: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6f56: $f0 $90
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	inc bc                                           ; $6f5a: $03
	inc bc                                           ; $6f5b: $03
	ld a, $3f                                        ; $6f5c: $3e $3f
	ld de, $661f                                     ; $6f5e: $11 $1f $66
	ld a, a                                          ; $6f61: $7f
	sbc d                                            ; $6f62: $9a
	rst $38                                          ; $6f63: $ff

jr_01a_6f64:
	ld [hl], e                                       ; $6f64: $73
	ld a, a                                          ; $6f65: $7f
	inc h                                            ; $6f66: $24
	ld a, e                                          ; $6f67: $7b
	cp [hl]                                          ; $6f68: $be
	ld a, a                                          ; $6f69: $7f
	cp $9a                                           ; $6f6a: $fe $9a
	ld c, [hl]                                       ; $6f6c: $4e
	ld a, a                                          ; $6f6d: $7f
	ccf                                              ; $6f6e: $3f
	scf                                              ; $6f6f: $37
	dec l                                            ; $6f70: $2d
	ld [hl], a                                       ; $6f71: $77
	cp [hl]                                          ; $6f72: $be
	add e                                            ; $6f73: $83
	db $10                                           ; $6f74: $10
	rrca                                             ; $6f75: $0f
	add hl, bc                                       ; $6f76: $09
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	add sp, -$18                                     ; $6f79: $e8 $e8
	inc e                                            ; $6f7b: $1c
	db $fc                                           ; $6f7c: $fc
	adc b                                            ; $6f7d: $88
	ld hl, sp+$74                                    ; $6f7e: $f8 $74
	db $fc                                           ; $6f80: $fc
	sbc d                                            ; $6f81: $9a
	cp $06                                           ; $6f82: $fe $06
	cp $a5                                           ; $6f84: $fe $a5
	rst $38                                          ; $6f86: $ff
	sub l                                            ; $6f87: $95
	rst $38                                          ; $6f88: $ff
	push de                                          ; $6f89: $d5
	rst $38                                          ; $6f8a: $ff
	ld a, [$feae]                                    ; $6f8b: $fa $ae $fe
	ld a, d                                          ; $6f8e: $7a
	sbc $77                                          ; $6f8f: $de $77
	ret nz                                           ; $6f91: $c0

	sbc h                                            ; $6f92: $9c
	ld [$90f0], sp                                   ; $6f93: $08 $f0 $90
	ld [hl], a                                       ; $6f96: $77
	ld [hl], d                                       ; $6f97: $72
	sbc c                                            ; $6f98: $99
	dec e                                            ; $6f99: $1d
	rra                                              ; $6f9a: $1f
	ld a, $2b                                        ; $6f9b: $3e $2b
	ld a, $2b                                        ; $6f9d: $3e $2b
	ld h, a                                          ; $6f9f: $67
	ld h, b                                          ; $6fa0: $60
	sbc b                                            ; $6fa1: $98
	dec bc                                           ; $6fa2: $0b
	rrca                                             ; $6fa3: $0f
	rla                                              ; $6fa4: $17
	rra                                              ; $6fa5: $1f
	ld e, $1e                                        ; $6fa6: $1e $1e
	ld [hl+], a                                      ; $6fa8: $22
	sbc $3e                                          ; $6fa9: $de $3e
	db $fd                                           ; $6fab: $fd
	sub c                                            ; $6fac: $91
	add sp, -$08                                     ; $6fad: $e8 $f8
	call nz, $ccfc                                   ; $6faf: $c4 $fc $cc
	db $fc                                           ; $6fb2: $fc
	cp $fa                                           ; $6fb3: $fe $fa
	cp $ca                                           ; $6fb5: $fe $ca
	db $fc                                           ; $6fb7: $fc
	db $fc                                           ; $6fb8: $fc
	cp $06                                           ; $6fb9: $fe $06
	db $dd                                           ; $6fbb: $dd
	db $fc                                           ; $6fbc: $fc
	sbc b                                            ; $6fbd: $98
	call c, $d8fc                                    ; $6fbe: $dc $fc $d8
	ld hl, sp+$78                                    ; $6fc1: $f8 $78
	ld a, b                                          ; $6fc3: $78
	ld b, h                                          ; $6fc4: $44
	sbc $7c                                          ; $6fc5: $de $7c
	cpl                                              ; $6fc7: $2f
	ld b, b                                          ; $6fc8: $40
	sub c                                            ; $6fc9: $91
	cp $fb                                           ; $6fca: $fe $fb
	ei                                               ; $6fcc: $fb
	sbc l                                            ; $6fcd: $9d
	ei                                               ; $6fce: $fb
	sub [hl]                                         ; $6fcf: $96
	rst $38                                          ; $6fd0: $ff
	sbc [hl]                                         ; $6fd1: $9e
	ld a, a                                          ; $6fd2: $7f
	ld d, c                                          ; $6fd3: $51
	ld a, [hl]                                       ; $6fd4: $7e
	ld c, c                                          ; $6fd5: $49
	ld a, $25                                        ; $6fd6: $3e $25

jr_01a_6fd8:
	ld b, a                                          ; $6fd8: $47
	ld b, b                                          ; $6fd9: $40
	adc a                                            ; $6fda: $8f
	rst SubAFromHL                                          ; $6fdb: $d7
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	cp c                                             ; $6fde: $b9
	rst GetHLinHL                                          ; $6fdf: $cf
	add hl, sp                                       ; $6fe0: $39
	rst SubAFromDE                                          ; $6fe1: $df
	ld l, c                                          ; $6fe2: $69
	rst $38                                          ; $6fe3: $ff
	ld a, l                                          ; $6fe4: $7d
	rst $38                                          ; $6fe5: $ff
	add hl, bc                                       ; $6fe6: $09
	cp $92                                           ; $6fe7: $fe $92
	cp $b2                                           ; $6fe9: $fe $b2
	daa                                              ; $6feb: $27
	ret nz                                           ; $6fec: $c0

	sub a                                            ; $6fed: $97
	cp a                                             ; $6fee: $bf
	cp $df                                           ; $6fef: $fe $df
	pop af                                           ; $6ff1: $f1
	ld c, [hl]                                       ; $6ff2: $4e
	ld a, c                                          ; $6ff3: $79
	ld h, $3d                                        ; $6ff4: $26 $3d
	ld b, a                                          ; $6ff6: $47
	ret nz                                           ; $6ff7: $c0

	sbc l                                            ; $6ff8: $9d
	sub $fe                                          ; $6ff9: $d6 $fe
	ld [hl], e                                       ; $6ffb: $73
	ret nz                                           ; $6ffc: $c0

	adc h                                            ; $6ffd: $8c
	ld l, l                                          ; $6ffe: $6d
	ld sp, hl                                        ; $6fff: $f9
	ld a, a                                          ; $7000: $7f
	ld sp, hl                                        ; $7001: $f9
	rrca                                             ; $7002: $0f
	ldh a, [c]                                       ; $7003: $f2
	sbc [hl]                                         ; $7004: $9e
	ldh a, [c]                                       ; $7005: $f2
	cp [hl]                                          ; $7006: $be
	ld hl, $133f                                     ; $7007: $21 $3f $13
	dec e                                            ; $700a: $1d
	add hl, bc                                       ; $700b: $09
	ld c, $04                                        ; $700c: $0e $04
	rlca                                             ; $700e: $07
	inc b                                            ; $700f: $04
	rlca                                             ; $7010: $07
	ld l, $a0                                        ; $7011: $2e $a0
	sub l                                            ; $7013: $95
	ld [hl], d                                       ; $7014: $72
	xor $e4                                          ; $7015: $ee $e4
	call c, $b8c8                                    ; $7017: $dc $c8 $b8
	adc b                                            ; $701a: $88
	ld a, b                                          ; $701b: $78
	db $10                                           ; $701c: $10
	ldh a, [$5f]                                     ; $701d: $f0 $5f
	ld b, b                                          ; $701f: $40
	sbc [hl]                                         ; $7020: $9e
	ret z                                            ; $7021: $c8

	ld a, e                                          ; $7022: $7b
	ld b, b                                          ; $7023: $40
	sbc [hl]                                         ; $7024: $9e
	ld c, h                                          ; $7025: $4c
	ld l, e                                          ; $7026: $6b
	ld b, b                                          ; $7027: $40
	sbc c                                            ; $7028: $99
	ld b, e                                          ; $7029: $43
	ld a, a                                          ; $702a: $7f
	inc hl                                           ; $702b: $23
	dec a                                            ; $702c: $3d
	ld sp, $1e3e                                     ; $702d: $31 $3e $1e
	ld h, b                                          ; $7030: $60
	sub a                                            ; $7031: $97
	rst $38                                          ; $7032: $ff
	adc a                                            ; $7033: $8f
	ld a, c                                          ; $7034: $79
	ld c, a                                          ; $7035: $4f
	add hl, sp                                       ; $7036: $39
	ccf                                              ; $7037: $3f
	ld c, $0f                                        ; $7038: $0e $0f
	ld e, a                                          ; $703a: $5f
	ldh [$4e], a                                     ; $703b: $e0 $4e
	ldh [hDisp1_WY], a                                     ; $703d: $e0 $95
	di                                               ; $703f: $f3
	sub e                                            ; $7040: $93
	push af                                          ; $7041: $f5
	or a                                             ; $7042: $b7
	ld a, l                                          ; $7043: $7d
	ld c, a                                          ; $7044: $4f
	ld a, $27                                        ; $7045: $3e $27
	ld a, [de]                                       ; $7047: $1a
	dec de                                           ; $7048: $1b
	cpl                                              ; $7049: $2f
	ldh [$fd], a                                     ; $704a: $e0 $fd
	rst SubAFromDE                                          ; $704c: $df
	jr jr_01a_6fd8                                   ; $704d: $18 $89

	ld a, $36                                        ; $704f: $3e $36
	ld a, a                                          ; $7051: $7f
	ld b, e                                          ; $7052: $43
	rst $38                                          ; $7053: $ff
	add c                                            ; $7054: $81
	cp $82                                           ; $7055: $fe $82
	ld a, a                                          ; $7057: $7f
	ld h, l                                          ; $7058: $65
	ld a, a                                          ; $7059: $7f
	ld b, c                                          ; $705a: $41
	ld a, a                                          ; $705b: $7f
	ld b, c                                          ; $705c: $41
	ld a, $32                                        ; $705d: $3e $32
	ld c, $0a                                        ; $705f: $0e $0a
	rlca                                             ; $7061: $07
	dec b                                            ; $7062: $05
	ld [bc], a                                       ; $7063: $02
	ld [bc], a                                       ; $7064: $02
	ld [bc], a                                       ; $7065: $02
	nop                                              ; $7066: $00
	ld a, a                                          ; $7067: $7f
	ld [hl], l                                       ; $7068: $75
	sbc [hl]                                         ; $7069: $9e
	inc c                                            ; $706a: $0c
	ld a, [bc]                                       ; $706b: $0a
	nop                                              ; $706c: $00
	sbc [hl]                                         ; $706d: $9e
	db $10                                           ; $706e: $10
	ld [hl-], a                                      ; $706f: $32
	nop                                              ; $7070: $00
	ld a, a                                          ; $7071: $7f
	cp [hl]                                          ; $7072: $be
	sbc d                                            ; $7073: $9a
	ld sp, $3a2f                                     ; $7074: $31 $2f $3a
	dec a                                            ; $7077: $3d
	ld l, $1a                                        ; $7078: $2e $1a
	nop                                              ; $707a: $00
	sbc d                                            ; $707b: $9a
	add d                                            ; $707c: $82
	cp $52                                           ; $707d: $fe $52
	db $ec                                           ; $707f: $ec
	ld [hl], h                                       ; $7080: $74
	halt                                             ; $7081: $76
	nop                                              ; $7082: $00
	sub l                                            ; $7083: $95
	dec bc                                           ; $7084: $0b
	dec c                                            ; $7085: $0d
	ld de, $2c1e                                     ; $7086: $11 $1e $2c
	ccf                                              ; $7089: $3f
	ld l, $3b                                        ; $708a: $2e $3b
	ld l, $3b                                        ; $708c: $2e $3b
	cpl                                              ; $708e: $2f
	nop                                              ; $708f: $00
	sub l                                            ; $7090: $95
	add sp, -$28                                     ; $7091: $e8 $d8
	call nz, $84bc                                   ; $7093: $c4 $bc $84
	ld a, h                                          ; $7096: $7c
	ld [hl], d                                       ; $7097: $72
	cp $7a                                           ; $7098: $fe $7a
	adc $2e                                          ; $709a: $ce $2e
	ret nz                                           ; $709c: $c0

	ld a, h                                          ; $709d: $7c
	sub $7f                                          ; $709e: $d6 $7f
	ld b, d                                          ; $70a0: $42
	ld a, a                                          ; $70a1: $7f
	adc $9c                                          ; $70a2: $ce $9c
	dec b                                            ; $70a4: $05
	rlca                                             ; $70a5: $07
	dec b                                            ; $70a6: $05
	ld h, d                                          ; $70a7: $62
	add b                                            ; $70a8: $80
	ld c, a                                          ; $70a9: $4f
	nop                                              ; $70aa: $00
	sbc h                                            ; $70ab: $9c
	call z, $c47c                                    ; $70ac: $cc $7c $c4
	ld a, e                                          ; $70af: $7b
	add d                                            ; $70b0: $82
	ld a, a                                          ; $70b1: $7f
	cp $7f                                           ; $70b2: $fe $7f
	call z, $c025                                    ; $70b4: $cc $25 $c0
	rst SubAFromDE                                          ; $70b7: $df
	inc bc                                           ; $70b8: $03
	sbc b                                            ; $70b9: $98
	inc c                                            ; $70ba: $0c
	rrca                                             ; $70bb: $0f
	db $10                                           ; $70bc: $10
	rra                                              ; $70bd: $1f
	ld hl, $403f                                     ; $70be: $21 $3f $40
	ld a, d                                          ; $70c1: $7a
	push hl                                          ; $70c2: $e5
	sbc h                                            ; $70c3: $9c
	add b                                            ; $70c4: $80
	rst $38                                          ; $70c5: $ff
	add c                                            ; $70c6: $81
	ld a, e                                          ; $70c7: $7b
	cp $9b                                           ; $70c8: $fe $9b
	ld b, e                                          ; $70ca: $43
	ld a, [hl]                                       ; $70cb: $7e
	ld b, e                                          ; $70cc: $43
	ld a, [hl]                                       ; $70cd: $7e
	ld [hl], a                                       ; $70ce: $77
	ldh a, [$8b]                                     ; $70cf: $f0 $8b
	sbc h                                            ; $70d1: $9c
	rst $38                                          ; $70d2: $ff
	db $e3                                           ; $70d3: $e3
	db $e3                                           ; $70d4: $e3
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	add b                                            ; $70d7: $80
	add b                                            ; $70d8: $80
	ld h, b                                          ; $70d9: $60
	ldh [rAUD1SWEEP], a                              ; $70da: $e0 $10
	ldh a, [$08]                                     ; $70dc: $f0 $08
	ld hl, sp+$04                                    ; $70de: $f8 $04
	db $fc                                           ; $70e0: $fc
	inc b                                            ; $70e1: $04
	db $fc                                           ; $70e2: $fc
	ld [bc], a                                       ; $70e3: $02
	cp $77                                           ; $70e4: $fe $77
	cp $93                                           ; $70e6: $fe $93
	add h                                            ; $70e8: $84
	db $fc                                           ; $70e9: $fc
	add h                                            ; $70ea: $84
	db $fc                                           ; $70eb: $fc
	ld [$10f8], sp                                   ; $70ec: $08 $f8 $10
	ldh a, [$60]                                     ; $70ef: $f0 $60
	ldh [$80], a                                     ; $70f1: $e0 $80
	add b                                            ; $70f3: $80
	ld l, a                                          ; $70f4: $6f
	jp nz, $2082                                     ; $70f5: $c2 $82 $20

	ccf                                              ; $70f8: $3f
	ld b, c                                          ; $70f9: $41
	ld a, a                                          ; $70fa: $7f
	ld b, e                                          ; $70fb: $43
	ld a, [hl]                                       ; $70fc: $7e
	add e                                            ; $70fd: $83
	cp $87                                           ; $70fe: $fe $87
	db $fd                                           ; $7100: $fd
	adc a                                            ; $7101: $8f
	ld a, [$fd87]                                    ; $7102: $fa $87 $fd
	ld b, e                                          ; $7105: $43
	ld a, [hl]                                       ; $7106: $7e
	ld b, c                                          ; $7107: $41
	ld a, a                                          ; $7108: $7f
	jr nz, jr_01a_714a                               ; $7109: $20 $3f

	jr jr_01a_712c                                   ; $710b: $18 $1f

	ld b, $07                                        ; $710d: $06 $07
	ld bc, $c001                                     ; $710f: $01 $01 $c0
	ret nz                                           ; $7112: $c0

	jr nc, @+$75                                     ; $7113: $30 $73

	call nz, $448f                                   ; $7115: $c4 $8f $44
	db $fc                                           ; $7118: $fc
	ldh [c], a                                       ; $7119: $e2
	cp [hl]                                          ; $711a: $be
	ldh [c], a                                       ; $711b: $e2
	cp [hl]                                          ; $711c: $be
	pop hl                                           ; $711d: $e1
	ccf                                              ; $711e: $3f
	pop hl                                           ; $711f: $e1
	rst $38                                          ; $7120: $ff
	pop hl                                           ; $7121: $e1
	ccf                                              ; $7122: $3f
	ldh [c], a                                       ; $7123: $e2
	ld a, $c2                                        ; $7124: $3e $c2
	cp $77                                           ; $7126: $fe $77
	or h                                             ; $7128: $b4
	sbc e                                            ; $7129: $9b
	add hl, de                                       ; $712a: $19
	rst $38                                          ; $712b: $ff

jr_01a_712c:
	rst SubAFromBC                                          ; $712c: $e7
	rst SubAFromBC                                          ; $712d: $e7
	ldh [rP1], a                                     ; $712e: $e0 $00
	ldh [hDisp0_LCDC], a                                     ; $7130: $e0 $82
	ld l, [hl]                                       ; $7132: $6e
	ld [bc], a                                       ; $7133: $02
	rst $38                                          ; $7134: $ff
	rst SubAFromDE                                          ; $7135: $df
	dec a                                            ; $7136: $3d
	add b                                            ; $7137: $80
	inc de                                           ; $7138: $13
	rra                                              ; $7139: $1f
	ld sp, hl                                        ; $713a: $f9
	rst $38                                          ; $713b: $ff
	ld b, a                                          ; $713c: $47
	ld a, a                                          ; $713d: $7f
	ld [hl-], a                                      ; $713e: $32
	ccf                                              ; $713f: $3f
	dec h                                            ; $7140: $25
	ccf                                              ; $7141: $3f
	ld b, h                                          ; $7142: $44
	ld a, a                                          ; $7143: $7f
	ld b, b                                          ; $7144: $40
	ld a, a                                          ; $7145: $7f
	ld c, [hl]                                       ; $7146: $4e
	ld a, e                                          ; $7147: $7b
	ld a, a                                          ; $7148: $7f
	ld a, l                                          ; $7149: $7d

jr_01a_714a:
	dec hl                                           ; $714a: $2b
	ld [hl], $3f                                     ; $714b: $36 $3f
	ld h, $1f                                        ; $714d: $26 $1f
	ld d, $0e                                        ; $714f: $16 $0e
	add hl, bc                                       ; $7151: $09
	rlca                                             ; $7152: $07
	dec b                                            ; $7153: $05
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	ret nz                                           ; $7156: $c0

	add d                                            ; $7157: $82
	ret nz                                           ; $7158: $c0

	inc [hl]                                         ; $7159: $34
	db $f4                                           ; $715a: $f4
	adc [hl]                                         ; $715b: $8e
	cp $fc                                           ; $715c: $fe $fc
	db $fc                                           ; $715e: $fc
	adc d                                            ; $715f: $8a
	cp $26                                           ; $7160: $fe $26
	cp $96                                           ; $7162: $fe $96
	cp $d5                                           ; $7164: $fe $d5
	rst $38                                          ; $7166: $ff
	db $fd                                           ; $7167: $fd
	cp a                                             ; $7168: $bf
	ld a, [$be6e]                                    ; $7169: $fa $6e $be
	ld [hl], d                                       ; $716c: $72
	cp $62                                           ; $716d: $fe $62
	db $fc                                           ; $716f: $fc
	ld h, h                                          ; $7170: $64
	ld hl, sp-$78                                    ; $7171: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $7173: $f0 $90
	rla                                              ; $7175: $17
	ret nz                                           ; $7176: $c0

	sbc e                                            ; $7177: $9b
	rrca                                             ; $7178: $0f
	add hl, bc                                       ; $7179: $09
	rlca                                             ; $717a: $07
	inc b                                            ; $717b: $04
	dec bc                                           ; $717c: $0b
	ret nz                                           ; $717d: $c0

	sbc [hl]                                         ; $717e: $9e
	db $10                                           ; $717f: $10
	inc sp                                           ; $7180: $33
	ret nz                                           ; $7181: $c0

	sub h                                            ; $7182: $94
	ld a, c                                          ; $7183: $79
	dec l                                            ; $7184: $2d
	ld [hl], $3f                                     ; $7185: $36 $3f
	ld l, $3f                                        ; $7187: $2e $3f
	ld a, [hl+]                                      ; $7189: $2a
	ccf                                              ; $718a: $3f
	add hl, sp                                       ; $718b: $39
	ld a, $2d                                        ; $718c: $3e $2d
	inc sp                                           ; $718e: $33
	ret nz                                           ; $718f: $c0

	sbc b                                            ; $7190: $98
	ld c, $ae                                        ; $7191: $0e $ae
	ld [hl], d                                       ; $7193: $72
	cp $72                                           ; $7194: $fe $72
	db $fc                                           ; $7196: $fc
	ld e, h                                          ; $7197: $5c
	daa                                              ; $7198: $27
	add b                                            ; $7199: $80
	sbc b                                            ; $719a: $98
	ld a, l                                          ; $719b: $7d
	ld a, a                                          ; $719c: $7f
	cpl                                              ; $719d: $2f
	jr nc, jr_01a_71df                               ; $719e: $30 $3f

	ld a, [hl+]                                      ; $71a0: $2a
	dec e                                            ; $71a1: $1d
	inc hl                                           ; $71a2: $23
	add b                                            ; $71a3: $80
	sbc b                                            ; $71a4: $98
	jp c, $fe3e                                      ; $71a5: $da $3e $fe

	ld [bc], a                                       ; $71a8: $02
	cp $52                                           ; $71a9: $fe $52
	cp h                                             ; $71ab: $bc
	ld [hl], e                                       ; $71ac: $73
	add b                                            ; $71ad: $80
	sub c                                            ; $71ae: $91
	ld b, $07                                        ; $71af: $06 $07
	add hl, bc                                       ; $71b1: $09
	rrca                                             ; $71b2: $0f
	db $10                                           ; $71b3: $10
	rra                                              ; $71b4: $1f
	rra                                              ; $71b5: $1f
	rla                                              ; $71b6: $17
	rra                                              ; $71b7: $1f
	inc de                                           ; $71b8: $13
	inc c                                            ; $71b9: $0c
	dec bc                                           ; $71ba: $0b
	rlca                                             ; $71bb: $07
	rlca                                             ; $71bc: $07
	rst SubAFromHL                                          ; $71bd: $d7
	inc bc                                           ; $71be: $03
	rst SubAFromDE                                          ; $71bf: $df
	rrca                                             ; $71c0: $0f
	adc [hl]                                         ; $71c1: $8e
	dec de                                           ; $71c2: $1b
	rra                                              ; $71c3: $1f
	rst $38                                          ; $71c4: $ff
	rst $38                                          ; $71c5: $ff
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	and e                                            ; $71c8: $a3
	db $e3                                           ; $71c9: $e3
	ld d, a                                          ; $71ca: $57
	db $f4                                           ; $71cb: $f4
	rrca                                             ; $71cc: $0f
	pop af                                           ; $71cd: $f1
	cp $e2                                           ; $71ce: $fe $e2
	db $ec                                           ; $71d0: $ec
	db $ec                                           ; $71d1: $ec
	nop                                              ; $71d2: $00
	jp c, $9ee0                                      ; $71d3: $da $e0 $9e

	ld h, b                                          ; $71d6: $60
	ld [hl], e                                       ; $71d7: $73
	cp $df                                           ; $71d8: $fe $df
	ldh a, [$9d]                                     ; $71da: $f0 $9d
	sbc b                                            ; $71dc: $98
	ld hl, sp+$77                                    ; $71dd: $f8 $77

jr_01a_71df:
	ldh [hDisp1_OBP0], a                                     ; $71df: $e0 $93
	and $27                                          ; $71e1: $e6 $27
	ld sp, hl                                        ; $71e3: $f9
	rra                                              ; $71e4: $1f
	ld hl, sp-$31                                    ; $71e5: $f8 $cf
	ccf                                              ; $71e7: $3f
	inc hl                                           ; $71e8: $23
	dec de                                           ; $71e9: $1b
	dec de                                           ; $71ea: $1b
	ld bc, $d502                                     ; $71eb: $01 $02 $d5
	inc bc                                           ; $71ee: $03
	ld h, a                                          ; $71ef: $67
	ret nz                                           ; $71f0: $c0

	sub c                                            ; $71f1: $91
	and b                                            ; $71f2: $a0
	ldh [$50], a                                     ; $71f3: $e0 $50
	ldh a, [rAUD1SWEEP]                              ; $71f5: $f0 $10
	ldh a, [$f8]                                     ; $71f7: $f0 $f8
	ret z                                            ; $71f9: $c8

	ld hl, sp-$60                                    ; $71fa: $f8 $a0
	ld hl, sp+$08                                    ; $71fc: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $71fe: $f0 $10
	ccf                                              ; $7200: $3f
	ret nz                                           ; $7201: $c0

	sub h                                            ; $7202: $94

jr_01a_7203:
	ld a, [hl]                                       ; $7203: $7e
	ld c, a                                          ; $7204: $4f
	ld a, c                                          ; $7205: $79
	ld b, a                                          ; $7206: $47
	jr c, jr_01a_7230                                ; $7207: $38 $27

	rra                                              ; $7209: $1f
	rra                                              ; $720a: $1f
	inc bc                                           ; $720b: $03
	inc bc                                           ; $720c: $03
	nop                                              ; $720d: $00
	call nc, $5703                                   ; $720e: $d4 $03 $57
	ret nz                                           ; $7211: $c0

	sub l                                            ; $7212: $95
	ld [$fcf8], sp                                   ; $7213: $08 $f8 $fc
	db $e4                                           ; $7216: $e4
	db $fc                                           ; $7217: $fc
	db $e4                                           ; $7218: $e4
	jr jr_01a_7203                                   ; $7219: $18 $e8

	ldh a, [$f0]                                     ; $721b: $f0 $f0
	ccf                                              ; $721d: $3f
	ret nz                                           ; $721e: $c0

	ld [hl], a                                       ; $721f: $77
	ld b, b                                          ; $7220: $40
	sbc [hl]                                         ; $7221: $9e
	jr jr_01a_729f                                   ; $7222: $18 $7b

	ld b, d                                          ; $7224: $42
	daa                                              ; $7225: $27
	ld b, b                                          ; $7226: $40
	rlca                                             ; $7227: $07
	ret nz                                           ; $7228: $c0

	rst $38                                          ; $7229: $ff
	rst SubAFromDE                                          ; $722a: $df
	inc bc                                           ; $722b: $03
	adc c                                            ; $722c: $89
	inc l                                            ; $722d: $2c
	cpl                                              ; $722e: $2f
	ld [hl], c                                       ; $722f: $71

jr_01a_7230:
	ld a, a                                          ; $7230: $7f
	ccf                                              ; $7231: $3f
	ccf                                              ; $7232: $3f
	ld d, c                                          ; $7233: $51
	ld a, a                                          ; $7234: $7f
	ld h, h                                          ; $7235: $64
	ld a, a                                          ; $7236: $7f
	ld l, c                                          ; $7237: $69
	ld a, a                                          ; $7238: $7f
	and e                                            ; $7239: $a3
	db $fc                                           ; $723a: $fc
	or l                                             ; $723b: $b5
	cp $5b                                           ; $723c: $fe $5b
	ld [hl], h                                       ; $723e: $74
	ld a, l                                          ; $723f: $7d
	ld b, [hl]                                       ; $7240: $46
	ld a, a                                          ; $7241: $7f
	ld b, [hl]                                       ; $7242: $46
	ld a, d                                          ; $7243: $7a
	ld a, $84                                        ; $7244: $3e $84
	ld de, $090f                                     ; $7246: $11 $0f $09
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	add b                                            ; $724b: $80
	add b                                            ; $724c: $80
	ld d, b                                          ; $724d: $50
	ldh a, [hDisp0_WY]                                     ; $724e: $f0 $88
	ld hl, sp-$1c                                    ; $7250: $f8 $e4
	db $fc                                           ; $7252: $fc
	ld c, b                                          ; $7253: $48
	ld hl, sp-$5c                                    ; $7254: $f8 $a4
	db $fc                                           ; $7256: $fc
	inc h                                            ; $7257: $24
	db $fc                                           ; $7258: $fc
	jp nc, $ba7e                                     ; $7259: $d2 $7e $ba

	ld a, [hl]                                       ; $725c: $7e
	or $1e                                           ; $725d: $f6 $1e
	call c, Call_01a_7a64                            ; $725f: $dc $64 $7a
	ld b, d                                          ; $7262: $42
	sbc d                                            ; $7263: $9a
	ld l, b                                          ; $7264: $68
	ld [hl], b                                       ; $7265: $70
	sub b                                            ; $7266: $90
	ldh [$a0], a                                     ; $7267: $e0 $a0
	dec bc                                           ; $7269: $0b
	ret nz                                           ; $726a: $c0

	sbc [hl]                                         ; $726b: $9e
	ld [$c017], sp                                   ; $726c: $08 $17 $c0
	ld a, [hl]                                       ; $726f: $7e
	ld b, d                                          ; $7270: $42
	sbc l                                            ; $7271: $9d
	ldh [rAUD4LEN], a                                ; $7272: $e0 $20
	scf                                              ; $7274: $37
	ret nz                                           ; $7275: $c0

	sub a                                            ; $7276: $97
	ld e, a                                          ; $7277: $5f
	ld [hl], b                                       ; $7278: $70
	ld [hl], a                                       ; $7279: $77
	ld c, h                                          ; $727a: $4c
	ld a, a                                          ; $727b: $7f
	ld c, [hl]                                       ; $727c: $4e
	ccf                                              ; $727d: $3f
	ld a, [hl+]                                      ; $727e: $2a
	rra                                              ; $727f: $1f
	add b                                            ; $7280: $80
	sbc c                                            ; $7281: $99
	db $ec                                           ; $7282: $ec
	inc [hl]                                         ; $7283: $34
	db $fc                                           ; $7284: $fc
	ld [hl], h                                       ; $7285: $74
	ld hl, sp+$58                                    ; $7286: $f8 $58
	daa                                              ; $7288: $27

Jump_01a_7289:
	add b                                            ; $7289: $80
	ld a, a                                          ; $728a: $7f
	ret nz                                           ; $728b: $c0

	ld a, c                                          ; $728c: $79
	ld sp, hl                                        ; $728d: $f9
	sbc d                                            ; $728e: $9a
	ld c, d                                          ; $728f: $4a
	dec a                                            ; $7290: $3d
	ld h, $1f                                        ; $7291: $26 $1f
	db $10                                           ; $7293: $10
	daa                                              ; $7294: $27
	ret nz                                           ; $7295: $c0

	sbc d                                            ; $7296: $9a
	db $fc                                           ; $7297: $fc
	inc b                                            ; $7298: $04
	db $fc                                           ; $7299: $fc
	ld d, h                                          ; $729a: $54
	cp b                                             ; $729b: $b8
	ld [hl], e                                       ; $729c: $73
	add b                                            ; $729d: $80
	sub e                                            ; $729e: $93

jr_01a_729f:
	dec h                                            ; $729f: $25
	ld h, $70                                        ; $72a0: $26 $70
	ld e, a                                          ; $72a2: $5f
	ldh a, [hDisp1_LCDC]                                     ; $72a3: $f0 $8f
	ld hl, sp-$69                                    ; $72a5: $f8 $97
	ld a, h                                          ; $72a7: $7c
	ld h, a                                          ; $72a8: $67
	jr jr_01a_72ca                                   ; $72a9: $18 $1f

	push de                                          ; $72ab: $d5
	rlca                                             ; $72ac: $07
	rst SubAFromDE                                          ; $72ad: $df

jr_01a_72ae:
	rrca                                             ; $72ae: $0f
	sbc [hl]                                         ; $72af: $9e
	add hl, de                                       ; $72b0: $19
	ld [hl], d                                       ; $72b1: $72
	ret nz                                           ; $72b2: $c0

	sub e                                            ; $72b3: $93
	rst AddAOntoHL                                          ; $72b4: $ef
	ld l, e                                          ; $72b5: $6b
	rrca                                             ; $72b6: $0f
	add sp, $0f                                      ; $72b7: $e8 $0f
	ld sp, hl                                        ; $72b9: $f9
	ld a, $e2                                        ; $72ba: $3e $e2
	inc a                                            ; $72bc: $3c
	db $e4                                           ; $72bd: $e4
	jr c, @-$06                                      ; $72be: $38 $f8

	db $db                                           ; $72c0: $db
	ret nz                                           ; $72c1: $c0

	sbc [hl]                                         ; $72c2: $9e
	ld b, b                                          ; $72c3: $40
	ld [hl], e                                       ; $72c4: $73
	cp $df                                           ; $72c5: $fe $df
	ldh a, [$9e]                                     ; $72c7: $f0 $9e
	ret c                                            ; $72c9: $d8

jr_01a_72ca:
	ld [hl], d                                       ; $72ca: $72
	ret nz                                           ; $72cb: $c0

jr_01a_72cc:
	sub e                                            ; $72cc: $93
	push bc                                          ; $72cd: $c5
	add $e8                                          ; $72ce: $c6 $e8
	cpl                                              ; $72d0: $2f
	ldh a, [hDisp1_LCDC]                                     ; $72d1: $f0 $8f
	ld a, b                                          ; $72d3: $78
	ld b, a                                          ; $72d4: $47
	jr c, jr_01a_7316                                ; $72d5: $38 $3f

	ld [$370f], sp                                   ; $72d7: $08 $0f $37
	ret nz                                           ; $72da: $c0

	ld a, [hl]                                       ; $72db: $7e
	sub l                                            ; $72dc: $95
	ld a, [hl]                                       ; $72dd: $7e
	ld [bc], a                                       ; $72de: $02
	ld a, [hl]                                       ; $72df: $7e
	add b                                            ; $72e0: $80
	sub a                                            ; $72e1: $97
	jr c, jr_01a_72cc                                ; $72e2: $38 $e8

	jr c, jr_01a_72ae                                ; $72e4: $38 $c8

	jr nc, @-$2e                                     ; $72e6: $30 $d0

	ldh [$e0], a                                     ; $72e8: $e0 $e0
	ccf                                              ; $72ea: $3f
	ret nz                                           ; $72eb: $c0

	sub b                                            ; $72ec: $90
	dec b                                            ; $72ed: $05
	ld b, $10                                        ; $72ee: $06 $10
	rra                                              ; $72f0: $1f
	jr nc, jr_01a_7322                               ; $72f1: $30 $2f

	ld a, b                                          ; $72f3: $78
	ld c, a                                          ; $72f4: $4f
	ld a, h                                          ; $72f5: $7c
	ld c, a                                          ; $72f6: $4f
	ld a, $23                                        ; $72f7: $3e $23
	rra                                              ; $72f9: $1f
	inc de                                           ; $72fa: $13
	rrca                                             ; $72fb: $0f
	ld h, e                                          ; $72fc: $63
	cp h                                             ; $72fd: $bc
	ld h, a                                          ; $72fe: $67
	ret nz                                           ; $72ff: $c0

	sub e                                            ; $7300: $93

jr_01a_7301:
	add sp, $60                                      ; $7301: $e8 $60
	inc e                                            ; $7303: $1c
	db $f4                                           ; $7304: $f4
	ld e, $f2                                        ; $7305: $1e $f2
	ld a, $d2                                        ; $7307: $3e $d2
	inc a                                            ; $7309: $3c
	call z, $f030                                    ; $730a: $cc $30 $f0
	scf                                              ; $730d: $37
	add b                                            ; $730e: $80
	sub l                                            ; $730f: $95
	pop hl                                           ; $7310: $e1
	xor $f0                                          ; $7311: $ee $f0
	rrca                                             ; $7313: $0f
	ld [hl], b                                       ; $7314: $70
	ld c, a                                          ; $7315: $4f

jr_01a_7316:
	jr c, @+$29                                      ; $7316: $38 $27

	jr c, jr_01a_7341                                ; $7318: $38 $27

	cpl                                              ; $731a: $2f
	ld b, b                                          ; $731b: $40
	sub e                                            ; $731c: $93
	add e                                            ; $731d: $83
	ld h, e                                          ; $731e: $63
	rlca                                             ; $731f: $07
	ldh a, [$1f]                                     ; $7320: $f0 $1f

jr_01a_7322:
	jp hl                                            ; $7322: $e9


	ld a, $c2                                        ; $7323: $3e $c2
	inc a                                            ; $7325: $3c
	db $e4                                           ; $7326: $e4
	jr jr_01a_7301                                   ; $7327: $18 $d8

	scf                                              ; $7329: $37
	ret nz                                           ; $732a: $c0

	rst SubAFromDE                                          ; $732b: $df
	inc bc                                           ; $732c: $03
	sbc [hl]                                         ; $732d: $9e
	inc c                                            ; $732e: $0c
	ld a, c                                          ; $732f: $79
	nop                                              ; $7330: $00
	add d                                            ; $7331: $82
	jr nz, jr_01a_7373                               ; $7332: $20 $3f

	ld b, c                                          ; $7334: $41
	ld a, a                                          ; $7335: $7f
	ld b, e                                          ; $7336: $43
	ld a, [hl]                                       ; $7337: $7e
	add e                                            ; $7338: $83
	cp $87                                           ; $7339: $fe $87
	db $fd                                           ; $733b: $fd
	adc a                                            ; $733c: $8f
	ld a, [$fd87]                                    ; $733d: $fa $87 $fd
	ld b, e                                          ; $7340: $43

jr_01a_7341:
	ld a, [hl]                                       ; $7341: $7e
	ld b, c                                          ; $7342: $41
	ld a, a                                          ; $7343: $7f
	jr nz, jr_01a_7385                               ; $7344: $20 $3f

	jr jr_01a_7367                                   ; $7346: $18 $1f

	ld b, $07                                        ; $7348: $06 $07
	ld bc, $c001                                     ; $734a: $01 $01 $c0
	ret nz                                           ; $734d: $c0

	jr nc, @+$7d                                     ; $734e: $30 $7b

	ld b, b                                          ; $7350: $40
	ld a, [hl]                                       ; $7351: $7e
	pop de                                           ; $7352: $d1
	add a                                            ; $7353: $87
	ld b, h                                          ; $7354: $44
	db $fc                                           ; $7355: $fc
	ldh [c], a                                       ; $7356: $e2
	cp [hl]                                          ; $7357: $be
	ldh [c], a                                       ; $7358: $e2
	cp [hl]                                          ; $7359: $be
	pop hl                                           ; $735a: $e1
	ccf                                              ; $735b: $3f
	pop hl                                           ; $735c: $e1
	rst $38                                          ; $735d: $ff
	pop hl                                           ; $735e: $e1
	ccf                                              ; $735f: $3f
	ldh [c], a                                       ; $7360: $e2
	ld a, $c2                                        ; $7361: $3e $c2
	cp $04                                           ; $7363: $fe $04
	db $fc                                           ; $7365: $fc
	ld [bc], a                                       ; $7366: $02

jr_01a_7367:
	cp $19                                           ; $7367: $fe $19
	rst $38                                          ; $7369: $ff
	rst SubAFromBC                                          ; $736a: $e7
	rst SubAFromBC                                          ; $736b: $e7
	ld h, a                                          ; $736c: $67
	cp [hl]                                          ; $736d: $be
	sub [hl]                                         ; $736e: $96
	ld hl, $403f                                     ; $736f: $21 $3f $40
	ld a, a                                          ; $7372: $7f

jr_01a_7373:
	ld b, c                                          ; $7373: $41
	ld a, a                                          ; $7374: $7f
	add b                                            ; $7375: $80
	rst $38                                          ; $7376: $ff
	add c                                            ; $7377: $81
	ld a, e                                          ; $7378: $7b
	cp $7f                                           ; $7379: $fe $7f
	ret nz                                           ; $737b: $c0

	ld a, a                                          ; $737c: $7f
	cp $77                                           ; $737d: $fe $77
	ldh a, [$9b]                                     ; $737f: $f0 $9b
	sbc h                                            ; $7381: $9c
	rst $38                                          ; $7382: $ff
	db $e3                                           ; $7383: $e3
	db $e3                                           ; $7384: $e3

jr_01a_7385:
	halt                                             ; $7385: $76
	add b                                            ; $7386: $80
	ld a, l                                          ; $7387: $7d
	sub d                                            ; $7388: $92
	halt                                             ; $7389: $76
	db $fc                                           ; $738a: $fc
	ld a, a                                          ; $738b: $7f
	adc $77                                          ; $738c: $ce $77
	call z, $fe77                                    ; $738e: $cc $77 $fe
	sub e                                            ; $7391: $93
	add h                                            ; $7392: $84
	db $fc                                           ; $7393: $fc
	add h                                            ; $7394: $84
	db $fc                                           ; $7395: $fc
	ld [$10f8], sp                                   ; $7396: $08 $f8 $10
	ldh a, [$60]                                     ; $7399: $f0 $60
	ldh [$80], a                                     ; $739b: $e0 $80
	add b                                            ; $739d: $80
	ldh [rSB], a                                     ; $739e: $e0 $01
	ld a, e                                          ; $73a0: $7b
	ld [bc], a                                       ; $73a1: $02
	rst $38                                          ; $73a2: $ff
	rst SubAFromDE                                          ; $73a3: $df
	dec a                                            ; $73a4: $3d
	add b                                            ; $73a5: $80
	inc de                                           ; $73a6: $13
	rra                                              ; $73a7: $1f
	ld sp, hl                                        ; $73a8: $f9
	rst $38                                          ; $73a9: $ff
	ld b, a                                          ; $73aa: $47
	ld a, a                                          ; $73ab: $7f
	ld [hl-], a                                      ; $73ac: $32
	ccf                                              ; $73ad: $3f
	dec h                                            ; $73ae: $25
	ccf                                              ; $73af: $3f
	ld b, h                                          ; $73b0: $44
	ld a, a                                          ; $73b1: $7f
	ld b, b                                          ; $73b2: $40
	ld a, a                                          ; $73b3: $7f
	ld c, [hl]                                       ; $73b4: $4e
	ld a, e                                          ; $73b5: $7b
	ld a, a                                          ; $73b6: $7f
	ld a, l                                          ; $73b7: $7d
	dec hl                                           ; $73b8: $2b
	ld [hl], $3f                                     ; $73b9: $36 $3f
	ld h, $1f                                        ; $73bb: $26 $1f
	ld d, $0e                                        ; $73bd: $16 $0e
	add hl, bc                                       ; $73bf: $09
	rlca                                             ; $73c0: $07
	dec b                                            ; $73c1: $05
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	ret nz                                           ; $73c4: $c0

	add d                                            ; $73c5: $82
	ret nz                                           ; $73c6: $c0

	inc [hl]                                         ; $73c7: $34
	db $f4                                           ; $73c8: $f4
	adc [hl]                                         ; $73c9: $8e
	cp $fc                                           ; $73ca: $fe $fc
	db $fc                                           ; $73cc: $fc
	adc d                                            ; $73cd: $8a
	cp $26                                           ; $73ce: $fe $26
	cp $96                                           ; $73d0: $fe $96
	cp $d5                                           ; $73d2: $fe $d5
	rst $38                                          ; $73d4: $ff
	db $fd                                           ; $73d5: $fd
	cp a                                             ; $73d6: $bf
	ld a, [$be6e]                                    ; $73d7: $fa $6e $be
	ld [hl], d                                       ; $73da: $72
	cp $62                                           ; $73db: $fe $62
	db $fc                                           ; $73dd: $fc
	ld h, h                                          ; $73de: $64
	ld hl, sp-$78                                    ; $73df: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $73e1: $f0 $90
	rla                                              ; $73e3: $17
	ret nz                                           ; $73e4: $c0

	sbc e                                            ; $73e5: $9b
	rrca                                             ; $73e6: $0f
	add hl, bc                                       ; $73e7: $09
	rlca                                             ; $73e8: $07
	inc b                                            ; $73e9: $04
	dec bc                                           ; $73ea: $0b
	ret nz                                           ; $73eb: $c0

	sbc [hl]                                         ; $73ec: $9e
	db $10                                           ; $73ed: $10
	inc sp                                           ; $73ee: $33
	ret nz                                           ; $73ef: $c0

	sub h                                            ; $73f0: $94
	ld a, c                                          ; $73f1: $79
	dec l                                            ; $73f2: $2d
	ld [hl], $3f                                     ; $73f3: $36 $3f
	ld l, $3f                                        ; $73f5: $2e $3f
	ld a, [hl+]                                      ; $73f7: $2a
	ccf                                              ; $73f8: $3f
	add hl, sp                                       ; $73f9: $39
	ld a, $2d                                        ; $73fa: $3e $2d
	inc sp                                           ; $73fc: $33
	ret nz                                           ; $73fd: $c0

	sbc b                                            ; $73fe: $98
	ld c, $ae                                        ; $73ff: $0e $ae
	ld [hl], d                                       ; $7401: $72
	cp $72                                           ; $7402: $fe $72
	db $fc                                           ; $7404: $fc
	ld e, h                                          ; $7405: $5c
	daa                                              ; $7406: $27
	add b                                            ; $7407: $80
	sbc b                                            ; $7408: $98
	ld a, l                                          ; $7409: $7d
	ld a, a                                          ; $740a: $7f
	cpl                                              ; $740b: $2f
	jr nc, @+$41                                     ; $740c: $30 $3f

	ld a, [hl+]                                      ; $740e: $2a
	dec e                                            ; $740f: $1d
	inc hl                                           ; $7410: $23
	add b                                            ; $7411: $80
	sbc b                                            ; $7412: $98
	jp c, $fe3e                                      ; $7413: $da $3e $fe

	ld [bc], a                                       ; $7416: $02
	cp $52                                           ; $7417: $fe $52
	cp h                                             ; $7419: $bc
	ld [hl], e                                       ; $741a: $73
	add b                                            ; $741b: $80
	sub c                                            ; $741c: $91
	dec b                                            ; $741d: $05
	rlca                                             ; $741e: $07
	dec c                                            ; $741f: $0d
	rrca                                             ; $7420: $0f
	inc de                                           ; $7421: $13
	rra                                              ; $7422: $1f
	ld de, $151f                                     ; $7423: $11 $1f $15
	rra                                              ; $7426: $1f
	dec c                                            ; $7427: $0d
	rrca                                             ; $7428: $0f
	rlca                                             ; $7429: $07
	rlca                                             ; $742a: $07
	sbc $03                                          ; $742b: $de $03
	sbc [hl]                                         ; $742d: $9e
	ld [bc], a                                       ; $742e: $02
	ld [hl], a                                       ; $742f: $77
	cp $7f                                           ; $7430: $fe $7f
	ret z                                            ; $7432: $c8

	rst SubAFromDE                                          ; $7433: $df
	rrca                                             ; $7434: $0f
	add a                                            ; $7435: $87
	dec de                                           ; $7436: $1b
	rra                                              ; $7437: $1f
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	and e                                            ; $743c: $a3
	db $e3                                           ; $743d: $e3
	sub a                                            ; $743e: $97
	db $f4                                           ; $743f: $f4
	pop hl                                           ; $7440: $e1
	rst $38                                          ; $7441: $ff
	add d                                            ; $7442: $82
	cp $9c                                           ; $7443: $fe $9c
	db $fc                                           ; $7445: $fc
	sub b                                            ; $7446: $90
	ldh a, [$e0]                                     ; $7447: $f0 $e0
	nop                                              ; $7449: $00
	ldh a, [rAUD1SWEEP]                              ; $744a: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $744c: $f0 $90
	ld l, e                                          ; $744e: $6b
	cp $9c                                           ; $744f: $fe $9c
	ldh a, [$98]                                     ; $7451: $f0 $98
	ld hl, sp+$77                                    ; $7453: $f8 $77
	ldh [hDisp1_OBP0], a                                     ; $7455: $e0 $93
	push hl                                          ; $7457: $e5
	daa                                              ; $7458: $27
	db $dd                                           ; $7459: $dd
	ccf                                              ; $745a: $3f
	set 7, a                                         ; $745b: $cb $ff
	ld hl, $153f                                     ; $745d: $21 $3f $15
	rra                                              ; $7460: $1f
	add hl, bc                                       ; $7461: $09
	ld c, $7b                                        ; $7462: $0e $7b
	ret nz                                           ; $7464: $c0

	ld [hl], e                                       ; $7465: $73
	jp nz, $c057                                     ; $7466: $c2 $57 $c0

	adc a                                            ; $7469: $8f
	and b                                            ; $746a: $a0
	ldh [$b0], a                                     ; $746b: $e0 $b0
	ldh a, [$d0]                                     ; $746d: $f0 $d0
	ldh a, [hDisp0_WY]                                     ; $746f: $f0 $88
	ld hl, sp-$18                                    ; $7471: $f8 $e8
	cp b                                             ; $7473: $b8
	add sp, $18                                      ; $7474: $e8 $18
	ldh a, [rAUD1SWEEP]                              ; $7476: $f0 $10
	ldh [$e0], a                                     ; $7478: $e0 $e0
	ld b, a                                          ; $747a: $47
	ret nz                                           ; $747b: $c0

	sub h                                            ; $747c: $94
	ld c, l                                          ; $747d: $4d
	ld a, a                                          ; $747e: $7f
	ld b, l                                          ; $747f: $45
	ld a, a                                          ; $7480: $7f

jr_01a_7481:
	inc hl                                           ; $7481: $23
	ccf                                              ; $7482: $3f
	dec e                                            ; $7483: $1d
	rra                                              ; $7484: $1f
	dec b                                            ; $7485: $05
	rlca                                             ; $7486: $07
	dec b                                            ; $7487: $05
	ld [hl], a                                       ; $7488: $77
	add d                                            ; $7489: $82
	ld b, e                                          ; $748a: $43
	add b                                            ; $748b: $80
	ld a, a                                          ; $748c: $7f
	ret nz                                           ; $748d: $c0

	sub h                                            ; $748e: $94
	jr nc, jr_01a_7481                               ; $748f: $30 $f0

	ret z                                            ; $7491: $c8

	ld hl, sp+$04                                    ; $7492: $f8 $04
	db $fc                                           ; $7494: $fc
	inc h                                            ; $7495: $24
	db $fc                                           ; $7496: $fc
	ld [$f0f8], sp                                   ; $7497: $08 $f8 $f0
	ld [hl], a                                       ; $749a: $77
	ld a, [hl]                                       ; $749b: $7e
	ld c, e                                          ; $749c: $4b
	ret nz                                           ; $749d: $c0

	ld l, a                                          ; $749e: $6f
	ld b, b                                          ; $749f: $40
	ld a, a                                          ; $74a0: $7f
	add d                                            ; $74a1: $82
	ld h, e                                          ; $74a2: $63
	ld b, b                                          ; $74a3: $40
	ld [hl], e                                       ; $74a4: $73
	cp [hl]                                          ; $74a5: $be
	ld b, a                                          ; $74a6: $47
	ret nz                                           ; $74a7: $c0

	ld a, a                                          ; $74a8: $7f
	jp nz, $fe7f                                     ; $74a9: $c2 $7f $fe

	sbc [hl]                                         ; $74ac: $9e
	jr z, @+$35                                      ; $74ad: $28 $33

	ret nz                                           ; $74af: $c0

	rst $38                                          ; $74b0: $ff
	rst SubAFromDE                                          ; $74b1: $df
	inc bc                                           ; $74b2: $03
	adc c                                            ; $74b3: $89
	inc l                                            ; $74b4: $2c
	cpl                                              ; $74b5: $2f
	ld [hl], c                                       ; $74b6: $71
	ld a, a                                          ; $74b7: $7f
	ccf                                              ; $74b8: $3f
	ccf                                              ; $74b9: $3f
	ld d, c                                          ; $74ba: $51
	ld a, a                                          ; $74bb: $7f
	ld h, h                                          ; $74bc: $64
	ld a, a                                          ; $74bd: $7f
	ld l, c                                          ; $74be: $69
	ld a, a                                          ; $74bf: $7f
	and e                                            ; $74c0: $a3
	db $fc                                           ; $74c1: $fc
	or l                                             ; $74c2: $b5
	cp $5b                                           ; $74c3: $fe $5b
	ld [hl], h                                       ; $74c5: $74
	ld a, l                                          ; $74c6: $7d
	ld b, [hl]                                       ; $74c7: $46
	ld a, a                                          ; $74c8: $7f
	ld b, [hl]                                       ; $74c9: $46
	ld a, d                                          ; $74ca: $7a
	ld a, $97                                        ; $74cb: $3e $97
	ld de, $090f                                     ; $74cd: $11 $0f $09
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	add b                                            ; $74d2: $80
	add b                                            ; $74d3: $80
	ld d, b                                          ; $74d4: $50
	ld a, e                                          ; $74d5: $7b
	ld b, b                                          ; $74d6: $40
	sbc d                                            ; $74d7: $9a
	db $e4                                           ; $74d8: $e4
	db $fc                                           ; $74d9: $fc
	ld c, b                                          ; $74da: $48
	ld hl, sp-$5c                                    ; $74db: $f8 $a4
	ld a, e                                          ; $74dd: $7b
	cp d                                             ; $74de: $ba
	sub a                                            ; $74df: $97
	jp nc, $ba7e                                     ; $74e0: $d2 $7e $ba

	ld a, [hl]                                       ; $74e3: $7e
	or $1e                                           ; $74e4: $f6 $1e
	call c, Call_01a_7a64                            ; $74e6: $dc $64 $7a
	ld b, d                                          ; $74e9: $42
	sbc d                                            ; $74ea: $9a
	ld l, b                                          ; $74eb: $68
	ld [hl], b                                       ; $74ec: $70
	sub b                                            ; $74ed: $90
	ldh [$a0], a                                     ; $74ee: $e0 $a0
	dec bc                                           ; $74f0: $0b
	ret nz                                           ; $74f1: $c0

	sbc [hl]                                         ; $74f2: $9e
	ld [$c017], sp                                   ; $74f3: $08 $17 $c0
	ld a, a                                          ; $74f6: $7f
	ld a, d                                          ; $74f7: $7a
	sbc l                                            ; $74f8: $9d
	ldh [rAUD4LEN], a                                ; $74f9: $e0 $20
	scf                                              ; $74fb: $37

Call_01a_74fc:
	ret nz                                           ; $74fc: $c0

	sub a                                            ; $74fd: $97
	ld e, a                                          ; $74fe: $5f
	ld [hl], b                                       ; $74ff: $70
	ld [hl], a                                       ; $7500: $77
	ld c, h                                          ; $7501: $4c
	ld a, a                                          ; $7502: $7f
	ld c, [hl]                                       ; $7503: $4e
	ccf                                              ; $7504: $3f
	ld a, [hl+]                                      ; $7505: $2a
	rra                                              ; $7506: $1f
	add b                                            ; $7507: $80
	sbc c                                            ; $7508: $99
	db $ec                                           ; $7509: $ec
	inc [hl]                                         ; $750a: $34
	db $fc                                           ; $750b: $fc
	ld [hl], h                                       ; $750c: $74
	ld hl, sp+$58                                    ; $750d: $f8 $58
	daa                                              ; $750f: $27
	add b                                            ; $7510: $80
	ld a, a                                          ; $7511: $7f
	ret nz                                           ; $7512: $c0

	ld a, c                                          ; $7513: $79
	ld sp, hl                                        ; $7514: $f9
	sbc d                                            ; $7515: $9a
	ld c, d                                          ; $7516: $4a
	dec a                                            ; $7517: $3d
	ld h, $1f                                        ; $7518: $26 $1f
	db $10                                           ; $751a: $10
	daa                                              ; $751b: $27
	ret nz                                           ; $751c: $c0

	sbc d                                            ; $751d: $9a
	db $fc                                           ; $751e: $fc

jr_01a_751f:
	inc b                                            ; $751f: $04
	db $fc                                           ; $7520: $fc
	ld d, h                                          ; $7521: $54
	cp b                                             ; $7522: $b8
	ld [hl], e                                       ; $7523: $73
	add b                                            ; $7524: $80
	sub e                                            ; $7525: $93
	inc h                                            ; $7526: $24
	daa                                              ; $7527: $27
	ld a, b                                          ; $7528: $78
	ld e, a                                          ; $7529: $5f
	ldh a, [hDisp1_LCDC]                                     ; $752a: $f0 $8f
	ldh a, [$9f]                                     ; $752c: $f0 $9f
	ld h, h                                          ; $752e: $64
	ld a, a                                          ; $752f: $7f
	jr jr_01a_7551                                   ; $7530: $18 $1f

	push de                                          ; $7532: $d5
	rlca                                             ; $7533: $07
	rst SubAFromDE                                          ; $7534: $df
	rrca                                             ; $7535: $0f
	sbc [hl]                                         ; $7536: $9e
	add hl, de                                       ; $7537: $19
	ld [hl], d                                       ; $7538: $72
	ret nz                                           ; $7539: $c0

	sub e                                            ; $753a: $93
	ld c, a                                          ; $753b: $4f
	rrc a                                            ; $753c: $cb $0f
	add sp, $0f                                      ; $753e: $e8 $0f

jr_01a_7540:
	ld sp, hl                                        ; $7540: $f9
	ld [hl+], a                                      ; $7541: $22
	cp $24                                           ; $7542: $fe $24
	db $fc                                           ; $7544: $fc
	jr jr_01a_751f                                   ; $7545: $18 $d8

	db $db                                           ; $7547: $db
	ret nz                                           ; $7548: $c0

	sbc [hl]                                         ; $7549: $9e
	ld b, b                                          ; $754a: $40
	ld [hl], e                                       ; $754b: $73
	cp $df                                           ; $754c: $fe $df
	ldh a, [$9e]                                     ; $754e: $f0 $9e
	ret c                                            ; $7550: $d8

jr_01a_7551:
	ld [hl], d                                       ; $7551: $72
	ret nz                                           ; $7552: $c0

	sub h                                            ; $7553: $94
	call nz, $e8c7                                   ; $7554: $c4 $c7 $e8
	cpl                                              ; $7557: $2f
	add b                                            ; $7558: $80
	rst $38                                          ; $7559: $ff
	ld b, b                                          ; $755a: $40
	ld a, a                                          ; $755b: $7f
	jr c, jr_01a_759d                                ; $755c: $38 $3f

	ld [$807a], sp                                   ; $755e: $08 $7a $80
	ccf                                              ; $7561: $3f
	ret nz                                           ; $7562: $c0

	sub c                                            ; $7563: $91
	ld h, b                                          ; $7564: $60
	ldh [rAUD1SWEEP], a                              ; $7565: $e0 $10
	ldh a, [$08]                                     ; $7567: $f0 $08
	ld hl, sp+$28                                    ; $7569: $f8 $28
	ld hl, sp+$28                                    ; $756b: $f8 $28
	ret c                                            ; $756d: $d8

	jr nc, jr_01a_7540                               ; $756e: $30 $d0

	ldh [$e0], a                                     ; $7570: $e0 $e0
	ccf                                              ; $7572: $3f
	ret nz                                           ; $7573: $c0

	sub b                                            ; $7574: $90
	inc c                                            ; $7575: $0c
	rrca                                             ; $7576: $0f
	db $10                                           ; $7577: $10
	rra                                              ; $7578: $1f
	jr nz, jr_01a_75ba                               ; $7579: $20 $3f

	ld c, b                                          ; $757b: $48
	ld a, a                                          ; $757c: $7f
	ld c, h                                          ; $757d: $4c
	ld a, a                                          ; $757e: $7f
	ld l, $33                                        ; $757f: $2e $33
	rra                                              ; $7581: $1f
	inc de                                           ; $7582: $13
	rrca                                             ; $7583: $0f
	ld h, e                                          ; $7584: $63

jr_01a_7585:
	cp h                                             ; $7585: $bc
	ld h, a                                          ; $7586: $67
	ret nz                                           ; $7587: $c0

	sub e                                            ; $7588: $93
	ld l, b                                          ; $7589: $68
	ldh [rAUD3LEVEL], a                              ; $758a: $e0 $1c
	db $f4                                           ; $758c: $f4
	ld e, $f2                                        ; $758d: $1e $f2
	ld e, $f2                                        ; $758f: $1e $f2
	inc c                                            ; $7591: $0c
	db $fc                                           ; $7592: $fc
	jr nc, jr_01a_7585                               ; $7593: $30 $f0

	scf                                              ; $7595: $37
	add b                                            ; $7596: $80
	sub l                                            ; $7597: $95
	ldh a, [rIE]                                     ; $7598: $f0 $ff
	ld hl, sp+$0f                                    ; $759a: $f8 $0f
	ld a, b                                          ; $759c: $78

jr_01a_759d:
	ld c, a                                          ; $759d: $4f
	jr nz, jr_01a_75df                               ; $759e: $20 $3f

	jr nz, jr_01a_75e1                               ; $75a0: $20 $3f

	cpl                                              ; $75a2: $2f
	ld b, b                                          ; $75a3: $40
	sbc b                                            ; $75a4: $98
	inc hl                                           ; $75a5: $23
	db $e3                                           ; $75a6: $e3
	rla                                              ; $75a7: $17
	ldh a, [rIF]                                     ; $75a8: $f0 $0f
	ld sp, hl                                        ; $75aa: $f9
	ld [bc], a                                       ; $75ab: $02
	inc hl                                           ; $75ac: $23
	ld b, b                                          ; $75ad: $40
	rst SubAFromDE                                          ; $75ae: $df
	inc bc                                           ; $75af: $03
	ld l, a                                          ; $75b0: $6f
	ld a, [hl]                                       ; $75b1: $7e
	adc a                                            ; $75b2: $8f
	ld b, c                                          ; $75b3: $41
	ld a, a                                          ; $75b4: $7f
	ld b, e                                          ; $75b5: $43
	ld a, [hl]                                       ; $75b6: $7e
	add e                                            ; $75b7: $83
	cp $87                                           ; $75b8: $fe $87

jr_01a_75ba:
	db $fd                                           ; $75ba: $fd
	adc a                                            ; $75bb: $8f
	ld a, [$fd87]                                    ; $75bc: $fa $87 $fd
	ld b, e                                          ; $75bf: $43
	ld a, [hl]                                       ; $75c0: $7e
	ld b, c                                          ; $75c1: $41
	ld a, a                                          ; $75c2: $7f
	ld [hl], a                                       ; $75c3: $77
	or b                                             ; $75c4: $b0
	sbc b                                            ; $75c5: $98
	ld b, $07                                        ; $75c6: $06 $07
	ld bc, $c001                                     ; $75c8: $01 $01 $c0
	ret nz                                           ; $75cb: $c0

	jr nc, jr_01a_7649                               ; $75cc: $30 $7b

	ld b, b                                          ; $75ce: $40
	ld a, [hl]                                       ; $75cf: $7e
	pop de                                           ; $75d0: $d1
	add a                                            ; $75d1: $87
	ld b, h                                          ; $75d2: $44
	db $fc                                           ; $75d3: $fc
	ldh [c], a                                       ; $75d4: $e2
	cp [hl]                                          ; $75d5: $be
	ldh [c], a                                       ; $75d6: $e2
	cp [hl]                                          ; $75d7: $be
	pop hl                                           ; $75d8: $e1
	ccf                                              ; $75d9: $3f
	pop hl                                           ; $75da: $e1
	rst $38                                          ; $75db: $ff
	pop hl                                           ; $75dc: $e1
	ccf                                              ; $75dd: $3f
	ldh [c], a                                       ; $75de: $e2

jr_01a_75df:
	ld a, $c2                                        ; $75df: $3e $c2

jr_01a_75e1:
	cp $04                                           ; $75e1: $fe $04
	db $fc                                           ; $75e3: $fc
	ld [bc], a                                       ; $75e4: $02
	cp $19                                           ; $75e5: $fe $19
	rst $38                                          ; $75e7: $ff
	rst SubAFromBC                                          ; $75e8: $e7
	rst SubAFromBC                                          ; $75e9: $e7
	ld h, a                                          ; $75ea: $67
	cp [hl]                                          ; $75eb: $be
	ld a, h                                          ; $75ec: $7c
	cp $7e                                           ; $75ed: $fe $7e
	db $fc                                           ; $75ef: $fc
	ld a, a                                          ; $75f0: $7f
	jp z, $f67e                                      ; $75f1: $ca $7e $f6

	sbc [hl]                                         ; $75f4: $9e
	add c                                            ; $75f5: $81
	ld a, e                                          ; $75f6: $7b
	cp $7f                                           ; $75f7: $fe $7f
	ret nz                                           ; $75f9: $c0

	ld a, a                                          ; $75fa: $7f
	cp $77                                           ; $75fb: $fe $77
	ldh a, [$9b]                                     ; $75fd: $f0 $9b
	sbc h                                            ; $75ff: $9c
	rst $38                                          ; $7600: $ff
	db $e3                                           ; $7601: $e3
	db $e3                                           ; $7602: $e3
	halt                                             ; $7603: $76
	add b                                            ; $7604: $80
	ld l, [hl]                                       ; $7605: $6e
	db $fc                                           ; $7606: $fc
	ld a, a                                          ; $7607: $7f
	adc $77                                          ; $7608: $ce $77
	call z, $fe77                                    ; $760a: $cc $77 $fe
	sbc h                                            ; $760d: $9c
	add h                                            ; $760e: $84
	db $fc                                           ; $760f: $fc
	add h                                            ; $7610: $84
	ld a, c                                          ; $7611: $79
	ld [hl-], a                                      ; $7612: $32
	ld a, a                                          ; $7613: $7f
	db $ec                                           ; $7614: $ec
	ld a, a                                          ; $7615: $7f
	add sp, -$21                                     ; $7616: $e8 $df
	add b                                            ; $7618: $80
	ldh [rSB], a                                     ; $7619: $e0 $01
	ld a, [$ff00]                                    ; $761b: $fa $00 $ff
	rst SubAFromDE                                          ; $761e: $df
	dec a                                            ; $761f: $3d
	add b                                            ; $7620: $80
	inc de                                           ; $7621: $13
	rra                                              ; $7622: $1f
	ld sp, hl                                        ; $7623: $f9
	rst $38                                          ; $7624: $ff
	ld b, a                                          ; $7625: $47
	ld a, a                                          ; $7626: $7f
	ld [hl-], a                                      ; $7627: $32
	ccf                                              ; $7628: $3f
	dec h                                            ; $7629: $25
	ccf                                              ; $762a: $3f
	ld b, h                                          ; $762b: $44
	ld a, a                                          ; $762c: $7f
	ld c, h                                          ; $762d: $4c
	ld a, a                                          ; $762e: $7f
	ld c, [hl]                                       ; $762f: $4e
	ld a, e                                          ; $7630: $7b
	ccf                                              ; $7631: $3f
	dec a                                            ; $7632: $3d
	cpl                                              ; $7633: $2f
	jr nc, jr_01a_7675                               ; $7634: $30 $3f

	ld a, [hl+]                                      ; $7636: $2a
	ccf                                              ; $7637: $3f
	ld [hl], $4f                                     ; $7638: $36 $4f
	ld a, c                                          ; $763a: $79
	ld b, a                                          ; $763b: $47
	db $fc                                           ; $763c: $fc
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	ret nz                                           ; $763f: $c0

	add b                                            ; $7640: $80
	ret nz                                           ; $7641: $c0

	inc [hl]                                         ; $7642: $34
	db $f4                                           ; $7643: $f4
	adc [hl]                                         ; $7644: $8e
	cp $fc                                           ; $7645: $fe $fc
	db $fc                                           ; $7647: $fc
	adc d                                            ; $7648: $8a

jr_01a_7649:
	cp $26                                           ; $7649: $fe $26
	cp $96                                           ; $764b: $fe $96
	cp $d5                                           ; $764d: $fe $d5
	rst $38                                          ; $764f: $ff
	db $fd                                           ; $7650: $fd
	cp a                                             ; $7651: $bf
	ld a, [$fe0e]                                    ; $7652: $fa $0e $fe
	ld [bc], a                                       ; $7655: $02
	cp $52                                           ; $7656: $fe $52
	cp $6e                                           ; $7658: $fe $6e
	ld sp, hl                                        ; $765a: $f9
	adc a                                            ; $765b: $8f
	pop af                                           ; $765c: $f1
	rra                                              ; $765d: $1f
	inc sp                                           ; $765e: $33
	ccf                                              ; $765f: $3f
	sub a                                            ; $7660: $97
	db $10                                           ; $7661: $10
	rra                                              ; $7662: $1f
	ld [$040f], sp                                   ; $7663: $08 $0f $04
	rlca                                             ; $7666: $07
	inc b                                            ; $7667: $04
	rlca                                             ; $7668: $07
	ld a, e                                          ; $7669: $7b
	db $fd                                           ; $766a: $fd
	ld [hl], e                                       ; $766b: $73
	cp $9c                                           ; $766c: $fe $9c
	inc bc                                           ; $766e: $03
	ld [bc], a                                       ; $766f: $02
	inc bc                                           ; $7670: $03
	ld a, e                                          ; $7671: $7b
	db $fd                                           ; $7672: $fd
	ld a, e                                          ; $7673: $7b
	ei                                               ; $7674: $fb

jr_01a_7675:
	sbc [hl]                                         ; $7675: $9e
	inc bc                                           ; $7676: $03
	db $fd                                           ; $7677: $fd
	sub c                                            ; $7678: $91
	ldh [c], a                                       ; $7679: $e2
	cp $04                                           ; $767a: $fe $04
	db $fc                                           ; $767c: $fc
	ld [$10f8], sp                                   ; $767d: $08 $f8 $10
	ldh a, [$08]                                     ; $7680: $f0 $08
	ld hl, sp-$10                                    ; $7682: $f8 $f0
	db $10                                           ; $7684: $10
	ldh a, [hDisp1_SCY]                                     ; $7685: $f0 $90
	ld a, e                                          ; $7687: $7b
	cp $94                                           ; $7688: $fe $94
	ld [hl], b                                       ; $768a: $70
	ld hl, sp+$18                                    ; $768b: $f8 $18
	ret z                                            ; $768d: $c8

	jr c, jr_01a_76d8                                ; $768e: $38 $48

	ld hl, sp+$18                                    ; $7690: $f8 $18
	sbc b                                            ; $7692: $98
	add b                                            ; $7693: $80
	add b                                            ; $7694: $80
	ei                                               ; $7695: $fb
	daa                                              ; $7696: $27
	add b                                            ; $7697: $80
	sbc c                                            ; $7698: $99
	ld a, a                                          ; $7699: $7f
	ld d, [hl]                                       ; $769a: $56
	ld a, a                                          ; $769b: $7f
	ld c, c                                          ; $769c: $49
	ld a, a                                          ; $769d: $7f
	ld h, h                                          ; $769e: $64
	rra                                              ; $769f: $1f
	add b                                            ; $76a0: $80
	sub e                                            ; $76a1: $93
	rst $38                                          ; $76a2: $ff
	ld l, l                                          ; $76a3: $6d
	rst $38                                          ; $76a4: $ff
	adc c                                            ; $76a5: $89
	cp $12                                           ; $76a6: $fe $12
	ccf                                              ; $76a8: $3f
	ld [hl-], a                                      ; $76a9: $32
	rra                                              ; $76aa: $1f
	ld de, $080f                                     ; $76ab: $11 $0f $08
	ld [hl], a                                       ; $76ae: $77
	adc b                                            ; $76af: $88
	ld l, e                                          ; $76b0: $6b
	add c                                            ; $76b1: $81
	sbc [hl]                                         ; $76b2: $9e
	rlca                                             ; $76b3: $07
	ld [hl], a                                       ; $76b4: $77
	add [hl]                                         ; $76b5: $86
	ld l, a                                          ; $76b6: $6f
	ld a, a                                          ; $76b7: $7f
	db $fd                                           ; $76b8: $fd
	sbc c                                            ; $76b9: $99
	cp $a2                                           ; $76ba: $fe $a2
	db $fc                                           ; $76bc: $fc
	ld b, h                                          ; $76bd: $44
	ld hl, sp+$08                                    ; $76be: $f8 $08
	ld a, e                                          ; $76c0: $7b
	add h                                            ; $76c1: $84
	rst SubAFromDE                                          ; $76c2: $df
	db $10                                           ; $76c3: $10
	ld l, a                                          ; $76c4: $6f
	add c                                            ; $76c5: $81
	sub [hl]                                         ; $76c6: $96
	ldh a, [rAUD2LOW]                                ; $76c7: $f0 $18
	ld hl, sp+$38                                    ; $76c9: $f8 $38
	ret z                                            ; $76cb: $c8

	ld hl, sp+$48                                    ; $76cc: $f8 $48
	sbc b                                            ; $76ce: $98
	jr jr_01a_773c                                   ; $76cf: $18 $6b

	add b                                            ; $76d1: $80
	sbc [hl]                                         ; $76d2: $9e
	ret nz                                           ; $76d3: $c0

	or c                                             ; $76d4: $b1
	ld h, b                                          ; $76d5: $60
	jr nc, jr_01a_76f0                               ; $76d6: $30 $18

jr_01a_76d8:
	ld [$0808], sp                                   ; $76d8: $08 $08 $08
	inc b                                            ; $76db: $04
	ld [bc], a                                       ; $76dc: $02
	ld b, $04                                        ; $76dd: $06 $04
	inc b                                            ; $76df: $04
	ld [bc], a                                       ; $76e0: $02
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	ei                                               ; $76e5: $fb
	sub l                                            ; $76e6: $95
	ld a, h                                          ; $76e7: $7c
	inc b                                            ; $76e8: $04
	ld a, b                                          ; $76e9: $78
	ld l, b                                          ; $76ea: $68
	jr nc, jr_01a_76fd                               ; $76eb: $30 $10

	ld a, h                                          ; $76ed: $7c
	inc b                                            ; $76ee: $04
	ld a, h                                          ; $76ef: $7c

jr_01a_76f0:
	ld a, h                                          ; $76f0: $7c
	db $ed                                           ; $76f1: $ed
	sbc c                                            ; $76f2: $99
	inc a                                            ; $76f3: $3c
	nop                                              ; $76f4: $00
	inc a                                            ; $76f5: $3c
	inc [hl]                                         ; $76f6: $34
	jr @+$0a                                         ; $76f7: $18 $08

	ld [hl], a                                       ; $76f9: $77
	ldh [$df], a                                     ; $76fa: $e0 $df
	ld a, b                                          ; $76fc: $78

jr_01a_76fd:
	db $ed                                           ; $76fd: $ed
	sub e                                            ; $76fe: $93
	ccf                                              ; $76ff: $3f
	ld bc, $323e                                     ; $7700: $01 $3e $32
	inc e                                            ; $7703: $1c
	inc b                                            ; $7704: $04
	jr c, jr_01a_770f                                ; $7705: $38 $08

	ld a, [hl]                                       ; $7707: $7e
	ld [bc], a                                       ; $7708: $02
	ld a, [hl]                                       ; $7709: $7e
	ld a, [hl]                                       ; $770a: $7e
	ldh [rP1], a                                     ; $770b: $e0 $00
	ldh [rP1], a                                     ; $770d: $e0 $00

jr_01a_770f:
	ldh [rHDMA4], a                                  ; $770f: $e0 $54
	ldh [rP1], a                                     ; $7711: $e0 $00
	ldh [$a3], a                                     ; $7713: $e0 $a3
	ld c, c                                          ; $7715: $49
	ld [bc], a                                       ; $7716: $02
	rst $38                                          ; $7717: $ff
	rst SubAFromDE                                          ; $7718: $df
	dec a                                            ; $7719: $3d
	add b                                            ; $771a: $80
	inc de                                           ; $771b: $13
	rra                                              ; $771c: $1f
	ld sp, hl                                        ; $771d: $f9
	rst $38                                          ; $771e: $ff
	ld b, a                                          ; $771f: $47
	ld a, a                                          ; $7720: $7f
	ld [hl-], a                                      ; $7721: $32
	ccf                                              ; $7722: $3f
	dec h                                            ; $7723: $25
	ccf                                              ; $7724: $3f
	ld b, h                                          ; $7725: $44
	ld a, a                                          ; $7726: $7f
	ld b, b                                          ; $7727: $40
	ld a, a                                          ; $7728: $7f
	ld c, [hl]                                       ; $7729: $4e
	ld a, e                                          ; $772a: $7b
	rst $38                                          ; $772b: $ff
	db $fd                                           ; $772c: $fd
	db $eb                                           ; $772d: $eb
	or [hl]                                          ; $772e: $b6
	rst $38                                          ; $772f: $ff
	and [hl]                                         ; $7730: $a6
	rst $38                                          ; $7731: $ff
	or [hl]                                          ; $7732: $b6
	xor $e9                                          ; $7733: $ee $e9
	rst AddAOntoHL                                          ; $7735: $ef
	adc l                                            ; $7736: $8d
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	ret nz                                           ; $7739: $c0

	add d                                            ; $773a: $82
	ret nz                                           ; $773b: $c0

jr_01a_773c:
	inc [hl]                                         ; $773c: $34
	db $f4                                           ; $773d: $f4
	adc [hl]                                         ; $773e: $8e
	cp $fc                                           ; $773f: $fe $fc
	db $fc                                           ; $7741: $fc
	adc d                                            ; $7742: $8a
	cp $26                                           ; $7743: $fe $26
	cp $96                                           ; $7745: $fe $96
	cp $d5                                           ; $7747: $fe $d5
	rst $38                                          ; $7749: $ff
	db $fd                                           ; $774a: $fd
	cp a                                             ; $774b: $bf
	ld a, [$be6e]                                    ; $774c: $fa $6e $be
	ld [hl], d                                       ; $774f: $72
	cp $62                                           ; $7750: $fe $62
	db $fc                                           ; $7752: $fc
	ld h, h                                          ; $7753: $64
	ld hl, sp-$78                                    ; $7754: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $7756: $f0 $90
	ei                                               ; $7758: $fb
	rst SubAFromDE                                          ; $7759: $df
	inc bc                                           ; $775a: $03
	add a                                            ; $775b: $87
	inc a                                            ; $775c: $3c
	ccf                                              ; $775d: $3f
	ld de, $661f                                     ; $775e: $11 $1f $66
	ld a, a                                          ; $7761: $7f
	adc d                                            ; $7762: $8a
	rst $38                                          ; $7763: $ff
	ld d, e                                          ; $7764: $53
	ld a, a                                          ; $7765: $7f
	ld d, l                                          ; $7766: $55
	ld a, a                                          ; $7767: $7f
	ld h, a                                          ; $7768: $67
	ld a, [hl]                                       ; $7769: $7e
	ld c, a                                          ; $776a: $4f
	ld a, e                                          ; $776b: $7b
	ld c, a                                          ; $776c: $4f
	ld a, b                                          ; $776d: $78

Jump_01a_776e:
	ld e, a                                          ; $776e: $5f
	ld [hl], c                                       ; $776f: $71
	ld e, $33                                        ; $7770: $1e $33
	ccf                                              ; $7772: $3f
	daa                                              ; $7773: $27
	ei                                               ; $7774: $fb
	rst SubAFromDE                                          ; $7775: $df
	ldh a, [hDisp0_OBP1]                                     ; $7776: $f0 $87
	ld [$8cf8], sp                                   ; $7778: $08 $f8 $8c
	db $fc                                           ; $777b: $fc
	ld [hl], d                                       ; $777c: $72
	cp $9a                                           ; $777d: $fe $9a
	cp $05                                           ; $777f: $fe $05
	rst $38                                          ; $7781: $ff
	push hl                                          ; $7782: $e5
	rst $38                                          ; $7783: $ff
	push af                                          ; $7784: $f5
	ccf                                              ; $7785: $3f
	push af                                          ; $7786: $f5
	rst $38                                          ; $7787: $ff
	jp z, $a6fe                                      ; $7788: $ca $fe $a6

	ld a, [$e43c]                                    ; $778b: $fa $3c $e4
	ld hl, sp-$08                                    ; $778e: $f8 $f8
	ei                                               ; $7790: $fb
	rst SubAFromDE                                          ; $7791: $df
	rrca                                             ; $7792: $0f
	add a                                            ; $7793: $87
	db $10                                           ; $7794: $10
	rra                                              ; $7795: $1f
	ld sp, $4e3f                                     ; $7796: $31 $3f $4e
	ld a, a                                          ; $7799: $7f
	ld e, c                                          ; $779a: $59
	ld a, a                                          ; $779b: $7f
	and b                                            ; $779c: $a0
	rst $38                                          ; $779d: $ff
	and e                                            ; $779e: $a3
	rst $38                                          ; $779f: $ff
	and a                                            ; $77a0: $a7
	cp $af                                           ; $77a1: $fe $af
	db $fc                                           ; $77a3: $fc
	ld d, a                                          ; $77a4: $57
	ld a, l                                          ; $77a5: $7d
	ld c, a                                          ; $77a6: $4f
	ld a, b                                          ; $77a7: $78
	ccf                                              ; $77a8: $3f
	ld sp, $233f                                     ; $77a9: $31 $3f $23
	ei                                               ; $77ac: $fb
	rst SubAFromDE                                          ; $77ad: $df
	ret nz                                           ; $77ae: $c0

	sbc b                                            ; $77af: $98
	inc a                                            ; $77b0: $3c
	db $fc                                           ; $77b1: $fc
	adc b                                            ; $77b2: $88
	ld hl, sp+$66                                    ; $77b3: $f8 $66
	cp $51                                           ; $77b5: $fe $51
	ld a, e                                          ; $77b7: $7b
	ret z                                            ; $77b8: $c8

	sub c                                            ; $77b9: $91
	ld a, [$f6fe]                                    ; $77ba: $fa $fe $f6
	sbc [hl]                                         ; $77bd: $9e
	ldh a, [c]                                       ; $77be: $f2
	cp [hl]                                          ; $77bf: $be
	jp nc, $9efe                                     ; $77c0: $d2 $fe $9e

	ld a, [$f888]                                    ; $77c3: $fa $88 $f8
	db $e4                                           ; $77c6: $e4
	db $fc                                           ; $77c7: $fc
	ccf                                              ; $77c8: $3f
	add b                                            ; $77c9: $80
	sbc [hl]                                         ; $77ca: $9e
	ld d, a                                          ; $77cb: $57
	ld a, e                                          ; $77cc: $7b
	add b                                            ; $77cd: $80
	sbc [hl]                                         ; $77ce: $9e
	ld b, a                                          ; $77cf: $47
	ld a, e                                          ; $77d0: $7b
	jp nz, Jump_01a_5f9a                             ; $77d1: $c2 $9a $5f

	ld a, c                                          ; $77d4: $79
	rra                                              ; $77d5: $1f
	inc sp                                           ; $77d6: $33
	dec a                                            ; $77d7: $3d
	inc sp                                           ; $77d8: $33
	add b                                            ; $77d9: $80
	sbc [hl]                                         ; $77da: $9e
	push hl                                          ; $77db: $e5
	ld e, a                                          ; $77dc: $5f
	add b                                            ; $77dd: $80
	sbc [hl]                                         ; $77de: $9e
	add sp, $33                                      ; $77df: $e8 $33
	nop                                              ; $77e1: $00
	sub h                                            ; $77e2: $94
	ei                                               ; $77e3: $fb
	db $ed                                           ; $77e4: $ed
	or [hl]                                          ; $77e5: $b6
	rst $38                                          ; $77e6: $ff
	and d                                            ; $77e7: $a2
	rst $38                                          ; $77e8: $ff
	or [hl]                                          ; $77e9: $b6
	rst AddAOntoHL                                          ; $77ea: $ef
	jp hl                                            ; $77eb: $e9


	rst AddAOntoHL                                          ; $77ec: $ef
	adc h                                            ; $77ed: $8c
	cpl                                              ; $77ee: $2f
	nop                                              ; $77ef: $00
	sbc e                                            ; $77f0: $9b
	sbc $32                                          ; $77f1: $de $32
	cp $42                                           ; $77f3: $fe $42
	ld [hl], e                                       ; $77f5: $73
	nop                                              ; $77f6: $00
	sbc [hl]                                         ; $77f7: $9e
	db $10                                           ; $77f8: $10
	ld d, a                                          ; $77f9: $57
	ld b, b                                          ; $77fa: $40
	sbc h                                            ; $77fb: $9c
	ld c, h                                          ; $77fc: $4c
	ld a, a                                          ; $77fd: $7f
	ld d, e                                          ; $77fe: $53
	ld a, e                                          ; $77ff: $7b
	ld b, b                                          ; $7800: $40
	sub c                                            ; $7801: $91
	and a                                            ; $7802: $a7
	rst $38                                          ; $7803: $ff
	xor [hl]                                         ; $7804: $ae
	rst $38                                          ; $7805: $ff
	xor a                                            ; $7806: $af
	db $fd                                           ; $7807: $fd
	ld d, a                                          ; $7808: $57
	ld a, h                                          ; $7809: $7c
	ld c, a                                          ; $780a: $4f
	ld a, b                                          ; $780b: $78
	cpl                                              ; $780c: $2f
	add hl, sp                                       ; $780d: $39
	rra                                              ; $780e: $1f
	inc de                                           ; $780f: $13
	ld e, a                                          ; $7810: $5f
	ld b, b                                          ; $7811: $40
	ld a, a                                          ; $7812: $7f
	ld a, [hl]                                       ; $7813: $7e
	sbc [hl]                                         ; $7814: $9e
	and [hl]                                         ; $7815: $a6
	ld a, e                                          ; $7816: $7b
	ld b, b                                          ; $7817: $40
	sbc [hl]                                         ; $7818: $9e
	ld a, [hl+]                                      ; $7819: $2a
	ld l, a                                          ; $781a: $6f
	ld b, b                                          ; $781b: $40
	sbc [hl]                                         ; $781c: $9e
	ld a, $77                                        ; $781d: $3e $77
	ld b, b                                          ; $781f: $40
	ld a, a                                          ; $7820: $7f
	xor $7f                                          ; $7821: $ee $7f
	ld b, b                                          ; $7823: $40
	sub e                                            ; $7824: $93
	or $97                                           ; $7825: $f6 $97
	ld a, c                                          ; $7827: $79
	ld c, a                                          ; $7828: $4f
	ld a, b                                          ; $7829: $78
	ld c, a                                          ; $782a: $4f
	inc a                                            ; $782b: $3c
	daa                                              ; $782c: $27
	dec e                                            ; $782d: $1d
	ld e, $04                                        ; $782e: $1e $04
	rlca                                             ; $7830: $07
	push de                                          ; $7831: $d5
	inc bc                                           ; $7832: $03
	rst SubAFromDE                                          ; $7833: $df
	rrca                                             ; $7834: $0f
	adc l                                            ; $7835: $8d
	dec de                                           ; $7836: $1b
	rra                                              ; $7837: $1f
	rst $38                                          ; $7838: $ff
	rst $38                                          ; $7839: $ff
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	or b                                             ; $783c: $b0
	ldh a, [$d0]                                     ; $783d: $f0 $d0
	ldh a, [hDisp0_WY]                                     ; $783f: $f0 $88
	ld hl, sp-$48                                    ; $7841: $f8 $b8
	ld hl, sp-$08                                    ; $7843: $f8 $f8
	ld [$10f0], sp                                   ; $7845: $08 $f0 $10
	db $db                                           ; $7848: $db
	ldh [$9e], a                                     ; $7849: $e0 $9e
	ld h, b                                          ; $784b: $60
	ld [hl], e                                       ; $784c: $73
	cp $df                                           ; $784d: $fe $df
	ldh a, [$9d]                                     ; $784f: $f0 $9d
	sbc b                                            ; $7851: $98
	ld hl, sp+$77                                    ; $7852: $f8 $77
	ldh [$7f], a                                     ; $7854: $e0 $7f
	ld c, e                                          ; $7856: $4b
	sub a                                            ; $7857: $97
	inc hl                                           ; $7858: $23
	ccf                                              ; $7859: $3f
	db $10                                           ; $785a: $10
	rra                                              ; $785b: $1f
	ld [$040f], sp                                   ; $785c: $08 $0f $04
	rlca                                             ; $785f: $07
	cpl                                              ; $7860: $2f
	ret nz                                           ; $7861: $c0

	ld a, a                                          ; $7862: $7f
	jp z, $f895                                      ; $7863: $ca $95 $f8

	sbc b                                            ; $7866: $98
	db $fc                                           ; $7867: $fc
	call z, $e49c                                    ; $7868: $cc $9c $e4
	adc h                                            ; $786b: $8c
	db $f4                                           ; $786c: $f4
	sbc b                                            ; $786d: $98
	ld hl, sp+$37                                    ; $786e: $f8 $37
	ret nz                                           ; $7870: $c0

	sbc b                                            ; $7871: $98

jr_01a_7872:
	ld a, a                                          ; $7872: $7f
	ld b, [hl]                                       ; $7873: $46
	ld a, c                                          ; $7874: $79
	ld c, a                                          ; $7875: $4f
	jr c, jr_01a_78b7                                ; $7876: $38 $3f

	inc c                                            ; $7878: $0c
	ld a, e                                          ; $7879: $7b
	ret nz                                           ; $787a: $c0

	db $d3                                           ; $787b: $d3
	inc bc                                           ; $787c: $03
	ld h, e                                          ; $787d: $63
	ret nz                                           ; $787e: $c0

	sub a                                            ; $787f: $97
	jr nc, jr_01a_7872                               ; $7880: $30 $f0

	db $10                                           ; $7882: $10
	ldh a, [$c0]                                     ; $7883: $f0 $c0
	or b                                             ; $7885: $b0
	ldh [$80], a                                     ; $7886: $e0 $80
	ret c                                            ; $7888: $d8

	ldh [rVBK], a                                    ; $7889: $e0 $4f

Call_01a_788b:
	ret nz                                           ; $788b: $c0

	sbc b                                            ; $788c: $98
	rst FarCall                                          ; $788d: $f7
	sub a                                            ; $788e: $97
	ld a, d                                          ; $788f: $7a
	ld e, a                                          ; $7890: $5f
	ld [hl], c                                       ; $7891: $71
	ld c, a                                          ; $7892: $4f
	jr c, jr_01a_7910                                ; $7893: $38 $7b

	ld b, b                                          ; $7895: $40
	sbc l                                            ; $7896: $9d
	dec b                                            ; $7897: $05
	ld b, $33                                        ; $7898: $06 $33
	ret nz                                           ; $789a: $c0

	sbc b                                            ; $789b: $98
	ldh a, [$b0]                                     ; $789c: $f0 $b0
	ldh a, [$c8]                                     ; $789e: $f0 $c8
	ld hl, sp-$48                                    ; $78a0: $f8 $b8
	ret z                                            ; $78a2: $c8

	ld a, e                                          ; $78a3: $7b
	ld b, b                                          ; $78a4: $40
	sbc [hl]                                         ; $78a5: $9e
	jr nc, jr_01a_78df                               ; $78a6: $30 $37

	ret nz                                           ; $78a8: $c0

	halt                                             ; $78a9: $76
	ld b, h                                          ; $78aa: $44
	ld a, a                                          ; $78ab: $7f
	add d                                            ; $78ac: $82
	ld a, a                                          ; $78ad: $7f
	ld a, $96                                        ; $78ae: $3e $96
	ld hl, $403f                                     ; $78b0: $21 $3f $40
	ld a, a                                          ; $78b3: $7f
	ld b, c                                          ; $78b4: $41
	ld a, a                                          ; $78b5: $7f
	add b                                            ; $78b6: $80

jr_01a_78b7:
	rst $38                                          ; $78b7: $ff

jr_01a_78b8:
	add c                                            ; $78b8: $81
	ld a, e                                          ; $78b9: $7b
	cp $9b                                           ; $78ba: $fe $9b
	ld b, e                                          ; $78bc: $43
	ld a, [hl]                                       ; $78bd: $7e
	ld b, e                                          ; $78be: $43
	ld a, [hl]                                       ; $78bf: $7e
	ld [hl], a                                       ; $78c0: $77
	ldh a, [hDisp1_OBP1]                                     ; $78c1: $f0 $94
	sbc h                                            ; $78c3: $9c
	rst $38                                          ; $78c4: $ff
	db $e3                                           ; $78c5: $e3
	db $e3                                           ; $78c6: $e3
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	add b                                            ; $78c9: $80
	add b                                            ; $78ca: $80
	ld h, b                                          ; $78cb: $60
	ldh [rAUD1SWEEP], a                              ; $78cc: $e0 $10
	ld a, d                                          ; $78ce: $7a
	ld b, b                                          ; $78cf: $40
	sbc c                                            ; $78d0: $99
	inc b                                            ; $78d1: $04
	db $fc                                           ; $78d2: $fc
	inc b                                            ; $78d3: $04
	db $fc                                           ; $78d4: $fc
	ld [bc], a                                       ; $78d5: $02
	cp $77                                           ; $78d6: $fe $77
	cp $9c                                           ; $78d8: $fe $9c
	add h                                            ; $78da: $84
	db $fc                                           ; $78db: $fc
	add h                                            ; $78dc: $84
	ld a, d                                          ; $78dd: $7a
	or d                                             ; $78de: $b2

jr_01a_78df:
	ld a, a                                          ; $78df: $7f
	db $ec                                           ; $78e0: $ec
	ld a, a                                          ; $78e1: $7f
	add sp, -$21                                     ; $78e2: $e8 $df
	add b                                            ; $78e4: $80
	ld l, a                                          ; $78e5: $6f
	jp nz, $2082                                     ; $78e6: $c2 $82 $20

	ccf                                              ; $78e9: $3f
	ld b, c                                          ; $78ea: $41
	ld a, a                                          ; $78eb: $7f
	ld b, e                                          ; $78ec: $43
	ld a, [hl]                                       ; $78ed: $7e
	add e                                            ; $78ee: $83
	cp $87                                           ; $78ef: $fe $87
	db $fd                                           ; $78f1: $fd
	adc a                                            ; $78f2: $8f
	ld a, [$fd87]                                    ; $78f3: $fa $87 $fd
	ld b, e                                          ; $78f6: $43
	ld a, [hl]                                       ; $78f7: $7e
	ld b, c                                          ; $78f8: $41
	ld a, a                                          ; $78f9: $7f
	jr nz, jr_01a_793b                               ; $78fa: $20 $3f

	jr jr_01a_791d                                   ; $78fc: $18 $1f

	ld b, $07                                        ; $78fe: $06 $07
	ld bc, $c001                                     ; $7900: $01 $01 $c0
	ret nz                                           ; $7903: $c0

	jr nc, jr_01a_7979                               ; $7904: $30 $73

	call nz, $448f                                   ; $7906: $c4 $8f $44
	db $fc                                           ; $7909: $fc
	ldh [c], a                                       ; $790a: $e2
	cp [hl]                                          ; $790b: $be
	ldh [c], a                                       ; $790c: $e2
	cp [hl]                                          ; $790d: $be
	pop hl                                           ; $790e: $e1
	ccf                                              ; $790f: $3f

jr_01a_7910:
	pop hl                                           ; $7910: $e1
	rst $38                                          ; $7911: $ff
	pop hl                                           ; $7912: $e1
	ccf                                              ; $7913: $3f
	ldh [c], a                                       ; $7914: $e2
	ld a, $c2                                        ; $7915: $3e $c2
	cp $77                                           ; $7917: $fe $77
	or h                                             ; $7919: $b4
	sbc e                                            ; $791a: $9b
	add hl, de                                       ; $791b: $19
	rst $38                                          ; $791c: $ff

jr_01a_791d:
	rst SubAFromBC                                          ; $791d: $e7
	rst SubAFromBC                                          ; $791e: $e7
	ei                                               ; $791f: $fb
	rst SubAFromDE                                          ; $7920: $df
	jr jr_01a_78b8                                   ; $7921: $18 $95

	ld a, $36                                        ; $7923: $3e $36
	ld a, a                                          ; $7925: $7f
	ld b, e                                          ; $7926: $43
	rst $38                                          ; $7927: $ff
	add c                                            ; $7928: $81
	cp $82                                           ; $7929: $fe $82
	ld a, a                                          ; $792b: $7f
	ld h, l                                          ; $792c: $65
	ld a, e                                          ; $792d: $7b
	ld a, c                                          ; $792e: $79
	sub [hl]                                         ; $792f: $96
	ld b, c                                          ; $7930: $41
	ld a, $32                                        ; $7931: $3e $32
	ld c, $0a                                        ; $7933: $0e $0a
	rlca                                             ; $7935: $07
	dec b                                            ; $7936: $05
	ld [bc], a                                       ; $7937: $02
	ld [bc], a                                       ; $7938: $02
	rst FarCall                                          ; $7939: $f7
	ld a, d                                          ; $793a: $7a

jr_01a_793b:
	rla                                              ; $793b: $17
	sub [hl]                                         ; $793c: $96
	db $10                                           ; $793d: $10
	jr z, jr_01a_7950                                ; $793e: $28 $10

	add d                                            ; $7940: $82
	ld a, h                                          ; $7941: $7c
	jr z, @+$12                                      ; $7942: $28 $10

	nop                                              ; $7944: $00
	db $10                                           ; $7945: $10
	ld l, d                                          ; $7946: $6a
	dec bc                                           ; $7947: $0b
	ldh a, [c]                                       ; $7948: $f2
	ld a, e                                          ; $7949: $7b
	rst SubAFromBC                                          ; $794a: $e7
	sbc l                                            ; $794b: $9d
	nop                                              ; $794c: $00
	ld l, h                                          ; $794d: $6c
	ld a, e                                          ; $794e: $7b
	db $e4                                           ; $794f: $e4

jr_01a_7950:
	cpl                                              ; $7950: $2f
	ldh [c], a                                       ; $7951: $e2
	ld l, a                                          ; $7952: $6f
	sbc $9e                                          ; $7953: $de $9e
	jr c, jr_01a_7972                                ; $7955: $38 $1b

	ldh [c], a                                       ; $7957: $e2
	ldh [rOCPS], a                                   ; $7958: $e0 $6a
	ldh [rP1], a                                     ; $795a: $e0 $00
	ldh [$a3], a                                     ; $795c: $e0 $a3
	ld [$ff02], a                                    ; $795e: $ea $02 $ff
	rst SubAFromDE                                          ; $7961: $df
	dec a                                            ; $7962: $3d
	add b                                            ; $7963: $80
	inc de                                           ; $7964: $13
	rra                                              ; $7965: $1f
	ld sp, hl                                        ; $7966: $f9
	rst $38                                          ; $7967: $ff
	ld b, a                                          ; $7968: $47
	ld a, a                                          ; $7969: $7f
	ld [hl-], a                                      ; $796a: $32
	ccf                                              ; $796b: $3f
	dec h                                            ; $796c: $25
	ccf                                              ; $796d: $3f
	ld b, h                                          ; $796e: $44
	ld a, a                                          ; $796f: $7f
	ld c, h                                          ; $7970: $4c
	ld a, a                                          ; $7971: $7f

jr_01a_7972:
	ld c, [hl]                                       ; $7972: $4e
	ld a, e                                          ; $7973: $7b
	ccf                                              ; $7974: $3f
	dec a                                            ; $7975: $3d
	dec l                                            ; $7976: $2d
	ld [hl], $3f                                     ; $7977: $36 $3f

jr_01a_7979:
	ld h, $1f                                        ; $7979: $26 $1f
	ld d, $0f                                        ; $797b: $16 $0f
	add hl, bc                                       ; $797d: $09
	rlca                                             ; $797e: $07
	inc b                                            ; $797f: $04
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	ret nz                                           ; $7982: $c0

	add b                                            ; $7983: $80
	ret nz                                           ; $7984: $c0

	inc [hl]                                         ; $7985: $34
	db $f4                                           ; $7986: $f4
	adc [hl]                                         ; $7987: $8e
	cp $fc                                           ; $7988: $fe $fc
	db $fc                                           ; $798a: $fc
	adc d                                            ; $798b: $8a
	cp $26                                           ; $798c: $fe $26
	cp $96                                           ; $798e: $fe $96
	cp $d5                                           ; $7990: $fe $d5
	rst $38                                          ; $7992: $ff
	db $fd                                           ; $7993: $fd
	cp a                                             ; $7994: $bf
	ld a, [$de6e]                                    ; $7995: $fa $6e $de
	ld [hl], d                                       ; $7998: $72
	cp $62                                           ; $7999: $fe $62
	db $fc                                           ; $799b: $fc
	ld l, h                                          ; $799c: $6c
	ld hl, sp-$78                                    ; $799d: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $799f: $f0 $10
	ld b, $07                                        ; $79a1: $06 $07
	adc h                                            ; $79a3: $8c
	ld [$110f], sp                                   ; $79a4: $08 $0f $11
	rra                                              ; $79a7: $1f
	inc a                                            ; $79a8: $3c
	dec hl                                           ; $79a9: $2b
	ccf                                              ; $79aa: $3f
	dec l                                            ; $79ab: $2d
	ld a, a                                          ; $79ac: $7f
	ld e, e                                          ; $79ad: $5b
	rst $38                                          ; $79ae: $ff
	add b                                            ; $79af: $80
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	ld a, a                                          ; $79b2: $7f
	ld h, b                                          ; $79b3: $60
	ld a, a                                          ; $79b4: $7f
	ld a, a                                          ; $79b5: $7f
	ld l, b                                          ; $79b6: $68
	sbc $6e                                          ; $79b7: $de $6e
	sbc e                                            ; $79b9: $9b
	ld [hl], c                                       ; $79ba: $71
	ld a, a                                          ; $79bb: $7f
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	db $fd                                           ; $79be: $fd
	adc d                                            ; $79bf: $8a
	ld [hl], b                                       ; $79c0: $70
	ldh a, [$08]                                     ; $79c1: $f0 $08
	ld hl, sp+$04                                    ; $79c3: $f8 $04
	db $fc                                           ; $79c5: $fc
	ld a, h                                          ; $79c6: $7c
	sub h                                            ; $79c7: $94
	rst $38                                          ; $79c8: $ff
	ld [hl], a                                       ; $79c9: $77
	rst $38                                          ; $79ca: $ff
	sbc l                                            ; $79cb: $9d
	rst $38                                          ; $79cc: $ff
	inc bc                                           ; $79cd: $03
	rst $38                                          ; $79ce: $ff
	db $fd                                           ; $79cf: $fd
	cp $06                                           ; $79d0: $fe $06
	cp $fe                                           ; $79d2: $fe $fe
	sub [hl]                                         ; $79d4: $96
	sbc $f6                                          ; $79d5: $de $f6
	ld a, a                                          ; $79d7: $7f
	xor [hl]                                         ; $79d8: $ae
	ld l, a                                          ; $79d9: $6f
	ldh [$fb], a                                     ; $79da: $e0 $fb
	rst SubAFromDE                                          ; $79dc: $df
	inc bc                                           ; $79dd: $03
	add a                                            ; $79de: $87
	inc a                                            ; $79df: $3c
	ccf                                              ; $79e0: $3f
	ld de, $661f                                     ; $79e1: $11 $1f $66
	ld a, a                                          ; $79e4: $7f
	adc d                                            ; $79e5: $8a
	rst $38                                          ; $79e6: $ff
	ld d, e                                          ; $79e7: $53
	ld a, a                                          ; $79e8: $7f
	ld d, h                                          ; $79e9: $54
	ld a, a                                          ; $79ea: $7f
	ld h, h                                          ; $79eb: $64
	ld a, a                                          ; $79ec: $7f
	ld b, h                                          ; $79ed: $44
	ld a, a                                          ; $79ee: $7f
	ld b, [hl]                                       ; $79ef: $46
	ld a, a                                          ; $79f0: $7f
	ld h, $3f                                        ; $79f1: $26 $3f
	cpl                                              ; $79f3: $2f
	add hl, sp                                       ; $79f4: $39
	rrca                                             ; $79f5: $0f
	add hl, bc                                       ; $79f6: $09
	ei                                               ; $79f7: $fb
	rst SubAFromDE                                          ; $79f8: $df
	ldh a, [$7f]                                     ; $79f9: $f0 $7f
	cp d                                             ; $79fb: $ba
	add b                                            ; $79fc: $80
	adc h                                            ; $79fd: $8c
	db $fc                                           ; $79fe: $fc
	ld [hl], d                                       ; $79ff: $72
	cp $9a                                           ; $7a00: $fe $9a
	cp $05                                           ; $7a02: $fe $05
	rst $38                                          ; $7a04: $ff
	and l                                            ; $7a05: $a5
	rst $38                                          ; $7a06: $ff
	sub l                                            ; $7a07: $95
	rst $38                                          ; $7a08: $ff
	push de                                          ; $7a09: $d5
	rst $38                                          ; $7a0a: $ff
	jp z, $e6fe                                      ; $7a0b: $ca $fe $e6

	cp d                                             ; $7a0e: $ba
	ld a, h                                          ; $7a0f: $7c
	add h                                            ; $7a10: $84
	ld hl, sp-$78                                    ; $7a11: $f8 $88
	rla                                              ; $7a13: $17
	ld e, $11                                        ; $7a14: $1e $11
	rra                                              ; $7a16: $1f
	jr nz, jr_01a_7a58                               ; $7a17: $20 $3f

	inc [hl]                                         ; $7a19: $34
	ccf                                              ; $7a1a: $3f
	ccf                                              ; $7a1b: $3f
	sbc h                                            ; $7a1c: $9c
	inc h                                            ; $7a1d: $24
	ld a, a                                          ; $7a1e: $7f
	ld e, a                                          ; $7a1f: $5f
	scf                                              ; $7a20: $37
	add b                                            ; $7a21: $80
	sub e                                            ; $7a22: $93
	ld hl, sp+$38                                    ; $7a23: $f8 $38
	call nz, Call_01a_62fc                           ; $7a25: $c4 $fc $62
	cp $f2                                           ; $7a28: $fe $f2
	sbc $f7                                          ; $7a2a: $de $f7
	sbc a                                            ; $7a2c: $9f
	rst $38                                          ; $7a2d: $ff
	ld sp, hl                                        ; $7a2e: $f9
	cpl                                              ; $7a2f: $2f
	add b                                            ; $7a30: $80
	rst SubAFromDE                                          ; $7a31: $df
	inc bc                                           ; $7a32: $03
	sbc [hl]                                         ; $7a33: $9e
	ld a, $73                                        ; $7a34: $3e $73
	add h                                            ; $7a36: $84
	sbc d                                            ; $7a37: $9a
	sbc d                                            ; $7a38: $9a
	rst $38                                          ; $7a39: $ff
	ld [hl], e                                       ; $7a3a: $73
	ld a, a                                          ; $7a3b: $7f
	inc h                                            ; $7a3c: $24
	ld a, d                                          ; $7a3d: $7a
	cp $7f                                           ; $7a3e: $fe $7f
	cp $7a                                           ; $7a40: $fe $7a
	cp $98                                           ; $7a42: $fe $98
	ld sp, $3a2f                                     ; $7a44: $31 $2f $3a
	dec a                                            ; $7a47: $3d
	ld l, $1f                                        ; $7a48: $2e $1f
	db $10                                           ; $7a4a: $10
	ld [hl], a                                       ; $7a4b: $77
	add b                                            ; $7a4c: $80
	rst SubAFromDE                                          ; $7a4d: $df
	add sp, -$68                                     ; $7a4e: $e8 $98
	inc e                                            ; $7a50: $1c
	db $fc                                           ; $7a51: $fc
	adc b                                            ; $7a52: $88
	ld hl, sp+$74                                    ; $7a53: $f8 $74
	db $fc                                           ; $7a55: $fc
	sbc d                                            ; $7a56: $9a
	ld a, e                                          ; $7a57: $7b

jr_01a_7a58:
	push bc                                          ; $7a58: $c5
	ld l, a                                          ; $7a59: $6f
	add h                                            ; $7a5a: $84
	sub e                                            ; $7a5b: $93
	ld a, [$feae]                                    ; $7a5c: $fa $ae $fe
	add d                                            ; $7a5f: $82
	cp $52                                           ; $7a60: $fe $52
	db $ec                                           ; $7a62: $ec
	ld [hl], h                                       ; $7a63: $74

Call_01a_7a64:
	ld hl, sp+$08                                    ; $7a64: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $7a66: $f0 $90
	inc sp                                           ; $7a68: $33
	ret nz                                           ; $7a69: $c0

	sbc h                                            ; $7a6a: $9c
	ld a, a                                          ; $7a6b: $7f
	ccf                                              ; $7a6c: $3f
	scf                                              ; $7a6d: $37
	ld [hl], d                                       ; $7a6e: $72
	cp [hl]                                          ; $7a6f: $be
	rra                                              ; $7a70: $1f
	ret nz                                           ; $7a71: $c0

	sbc d                                            ; $7a72: $9a
	ld a, d                                          ; $7a73: $7a
	sbc $62                                          ; $7a74: $de $62
	db $fc                                           ; $7a76: $fc
	ld h, h                                          ; $7a77: $64
	ld l, a                                          ; $7a78: $6f
	ret nz                                           ; $7a79: $c0

	di                                               ; $7a7a: $f3
	rst SubAFromDE                                          ; $7a7b: $df
	inc bc                                           ; $7a7c: $03
	ld a, [hl]                                       ; $7a7d: $7e
	adc h                                            ; $7a7e: $8c
	ld a, a                                          ; $7a7f: $7f
	cp $9b                                           ; $7a80: $fe $9b
	inc bc                                           ; $7a82: $03
	ld [bc], a                                       ; $7a83: $02
	ld bc, $f901                                     ; $7a84: $01 $01 $f9
	ld b, [hl]                                       ; $7a87: $46
	ld h, b                                          ; $7a88: $60
	sub c                                            ; $7a89: $91
	adc $fb                                          ; $7a8a: $ce $fb
	rst $38                                          ; $7a8c: $ff
	cp l                                             ; $7a8d: $bd
	db $ed                                           ; $7a8e: $ed
	ld [hl], $ff                                     ; $7a8f: $36 $ff
	ld h, [hl]                                       ; $7a91: $66
	sbc a                                            ; $7a92: $9f
	or $4f                                           ; $7a93: $f6 $4f
	ld a, c                                          ; $7a95: $79

jr_01a_7a96:
	daa                                              ; $7a96: $27
	dec a                                            ; $7a97: $3d
	ld a, [bc]                                       ; $7a98: $0a
	ld h, b                                          ; $7a99: $60
	sbc c                                            ; $7a9a: $99
	sub b                                            ; $7a9b: $90
	ld [de], a                                       ; $7a9c: $12
	rra                                              ; $7a9d: $1f
	ld [$050f], sp                                   ; $7a9e: $08 $0f $05
	ld a, e                                          ; $7aa1: $7b
	xor l                                            ; $7aa2: $ad
	sbc e                                            ; $7aa3: $9b
	ccf                                              ; $7aa4: $3f
	add hl, hl                                       ; $7aa5: $29
	ld a, a                                          ; $7aa6: $7f
	ld c, a                                          ; $7aa7: $4f
	ld [hl], $e0                                     ; $7aa8: $36 $e0
	rst SubAFromDE                                          ; $7aaa: $df
	rlca                                             ; $7aab: $07
	sbc e                                            ; $7aac: $9b
	ld a, [bc]                                       ; $7aad: $0a
	rrca                                             ; $7aae: $0f
	dec e                                            ; $7aaf: $1d
	rla                                              ; $7ab0: $17
	ld d, d                                          ; $7ab1: $52
	ld b, b                                          ; $7ab2: $40
	sbc b                                            ; $7ab3: $98
	ld e, a                                          ; $7ab4: $5f
	ld l, [hl]                                       ; $7ab5: $6e
	ld c, [hl]                                       ; $7ab6: $4e
	ld l, [hl]                                       ; $7ab7: $6e
	ld c, [hl]                                       ; $7ab8: $4e
	halt                                             ; $7ab9: $76
	ld e, [hl]                                       ; $7aba: $5e
	ld l, a                                          ; $7abb: $6f
	ldh [$9a], a                                     ; $7abc: $e0 $9a
	ldh a, [rSVBK]                                   ; $7abe: $f0 $70
	xor b                                            ; $7ac0: $a8
	ld hl, sp+$44                                    ; $7ac1: $f8 $44
	ld c, [hl]                                       ; $7ac3: $4e
	ld b, b                                          ; $7ac4: $40
	sbc b                                            ; $7ac5: $98
	ld a, [$e2e6]                                    ; $7ac6: $fa $e6 $e2
	and $e2                                          ; $7ac9: $e6 $e2
	sub [hl]                                         ; $7acb: $96
	ldh a, [c]                                       ; $7acc: $f2
	ld l, a                                          ; $7acd: $6f
	ldh [$7e], a                                     ; $7ace: $e0 $7e
	add b                                            ; $7ad0: $80
	sbc c                                            ; $7ad1: $99
	add hl, de                                       ; $7ad2: $19
	rla                                              ; $7ad3: $17
	jr c, @+$31                                      ; $7ad4: $38 $2f

	inc a                                            ; $7ad6: $3c
	scf                                              ; $7ad7: $37
	ld e, d                                          ; $7ad8: $5a
	add b                                            ; $7ad9: $80
	ld d, e                                          ; $7ada: $53
	ret nz                                           ; $7adb: $c0

	ld a, [hl]                                       ; $7adc: $7e
	add b                                            ; $7add: $80
	sub a                                            ; $7ade: $97
	call z, Call_01a_7efc                            ; $7adf: $cc $fc $7e
	ldh a, [c]                                       ; $7ae2: $f2
	cp $d2                                           ; $7ae3: $fe $d2
	rst $38                                          ; $7ae5: $ff
	add a                                            ; $7ae6: $87
	ld h, d                                          ; $7ae7: $62
	add b                                            ; $7ae8: $80
	ld d, e                                          ; $7ae9: $53
	ret nz                                           ; $7aea: $c0

	inc hl                                           ; $7aeb: $23
	jr nz, @-$66                                     ; $7aec: $20 $98

	ld h, $ff                                        ; $7aee: $26 $ff
	sub [hl]                                         ; $7af0: $96
	ld a, a                                          ; $7af1: $7f
	ld c, c                                          ; $7af2: $49
	ccf                                              ; $7af3: $3f
	dec h                                            ; $7af4: $25
	rlca                                             ; $7af5: $07
	jr nz, jr_01a_7a96                               ; $7af6: $20 $9e

	ld a, [de]                                       ; $7af8: $1a
	ccf                                              ; $7af9: $3f
	jr nz, jr_01a_7b4f                               ; $7afa: $20 $53

	add b                                            ; $7afc: $80
	ld [hl], l                                       ; $7afd: $75
	add b                                            ; $7afe: $80
	sbc [hl]                                         ; $7aff: $9e
	inc d                                            ; $7b00: $14
	scf                                              ; $7b01: $37
	ld b, b                                          ; $7b02: $40
	sbc [hl]                                         ; $7b03: $9e
	or $55                                           ; $7b04: $f6 $55
	add b                                            ; $7b06: $80
	db $fc                                           ; $7b07: $fc
	sbc l                                            ; $7b08: $9d
	add hl, bc                                       ; $7b09: $09
	dec b                                            ; $7b0a: $05
	cp $8f                                           ; $7b0b: $fe $8f

jr_01a_7b0d:
	db $10                                           ; $7b0d: $10
	inc hl                                           ; $7b0e: $23
	ld bc, $0206                                     ; $7b0f: $01 $06 $02
	dec b                                            ; $7b12: $05
	ld [de], a                                       ; $7b13: $12
	dec h                                            ; $7b14: $25
	dec b                                            ; $7b15: $05
	ld b, $13                                        ; $7b16: $06 $13
	inc bc                                           ; $7b18: $03
	ld [bc], a                                       ; $7b19: $02
	inc hl                                           ; $7b1a: $23
	inc bc                                           ; $7b1b: $03
	inc bc                                           ; $7b1c: $03
	or $9d                                           ; $7b1d: $f6 $9d
	db $10                                           ; $7b1f: $10

jr_01a_7b20:
	jr nz, jr_01a_7b20                               ; $7b20: $20 $fe

	adc d                                            ; $7b22: $8a
	ld [$80c4], sp                                   ; $7b23: $08 $c4 $80
	ld h, b                                          ; $7b26: $60
	ret nz                                           ; $7b27: $c0

	jr nz, jr_01a_7b72                               ; $7b28: $20 $48

	and h                                            ; $7b2a: $a4
	jr nz, jr_01a_7b0d                               ; $7b2b: $20 $e0

	ret z                                            ; $7b2d: $c8

	ret nz                                           ; $7b2e: $c0

	ld b, b                                          ; $7b2f: $40
	call nz, $c0c0                                   ; $7b30: $c4 $c0 $c0
	inc bc                                           ; $7b33: $03
	inc bc                                           ; $7b34: $03
	inc c                                            ; $7b35: $0c
	rrca                                             ; $7b36: $0f
	db $10                                           ; $7b37: $10
	ld a, c                                          ; $7b38: $79
	ld a, [hl]                                       ; $7b39: $7e
	add h                                            ; $7b3a: $84
	ld b, c                                          ; $7b3b: $41
	ld a, a                                          ; $7b3c: $7f
	ld b, e                                          ; $7b3d: $43
	ld a, [hl]                                       ; $7b3e: $7e
	add e                                            ; $7b3f: $83
	cp $87                                           ; $7b40: $fe $87
	db $fd                                           ; $7b42: $fd
	adc a                                            ; $7b43: $8f
	ld a, [$fd87]                                    ; $7b44: $fa $87 $fd
	ld b, e                                          ; $7b47: $43
	ld a, [hl]                                       ; $7b48: $7e
	ld b, c                                          ; $7b49: $41
	ld a, a                                          ; $7b4a: $7f
	jr nz, jr_01a_7b8c                               ; $7b4b: $20 $3f

	jr jr_01a_7b6e                                   ; $7b4d: $18 $1f

jr_01a_7b4f:
	ld b, $07                                        ; $7b4f: $06 $07
	ld bc, $c001                                     ; $7b51: $01 $01 $c0
	ret nz                                           ; $7b54: $c0

	jr nc, @+$72                                     ; $7b55: $30 $70

	cp $7e                                           ; $7b57: $fe $7e
	cp h                                             ; $7b59: $bc
	adc c                                            ; $7b5a: $89
	ldh [c], a                                       ; $7b5b: $e2
	cp [hl]                                          ; $7b5c: $be
	ldh [c], a                                       ; $7b5d: $e2
	cp [hl]                                          ; $7b5e: $be
	pop hl                                           ; $7b5f: $e1
	ccf                                              ; $7b60: $3f
	pop hl                                           ; $7b61: $e1
	rst $38                                          ; $7b62: $ff
	pop hl                                           ; $7b63: $e1
	ccf                                              ; $7b64: $3f
	ldh [c], a                                       ; $7b65: $e2
	ld a, $c2                                        ; $7b66: $3e $c2
	cp $04                                           ; $7b68: $fe $04
	db $fc                                           ; $7b6a: $fc
	ld [bc], a                                       ; $7b6b: $02
	cp $19                                           ; $7b6c: $fe $19

jr_01a_7b6e:
	rst $38                                          ; $7b6e: $ff
	rst SubAFromBC                                          ; $7b6f: $e7
	rst SubAFromBC                                          ; $7b70: $e7
	halt                                             ; $7b71: $76

jr_01a_7b72:
	ld c, $77                                        ; $7b72: $0e $77
	cp [hl]                                          ; $7b74: $be
	sub [hl]                                         ; $7b75: $96
	ld hl, $403f                                     ; $7b76: $21 $3f $40
	ld a, a                                          ; $7b79: $7f
	ld b, c                                          ; $7b7a: $41
	ld a, a                                          ; $7b7b: $7f
	add b                                            ; $7b7c: $80
	rst $38                                          ; $7b7d: $ff
	add c                                            ; $7b7e: $81
	ld a, e                                          ; $7b7f: $7b
	cp $7f                                           ; $7b80: $fe $7f
	ret nz                                           ; $7b82: $c0

	ld a, a                                          ; $7b83: $7f
	cp $77                                           ; $7b84: $fe $77
	ldh a, [hDisp1_OBP1]                                     ; $7b86: $f0 $94
	sbc h                                            ; $7b88: $9c
	rst $38                                          ; $7b89: $ff
	db $e3                                           ; $7b8a: $e3
	db $e3                                           ; $7b8b: $e3

jr_01a_7b8c:
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	add b                                            ; $7b8e: $80
	add b                                            ; $7b8f: $80
	ld h, b                                          ; $7b90: $60
	ldh [rAUD1SWEEP], a                              ; $7b91: $e0 $10
	ld [hl], e                                       ; $7b93: $73
	cp h                                             ; $7b94: $bc
	ld [hl], a                                       ; $7b95: $77
	call z, $fe77                                    ; $7b96: $cc $77 $fe
	sub d                                            ; $7b99: $92
	add h                                            ; $7b9a: $84
	db $fc                                           ; $7b9b: $fc
	add h                                            ; $7b9c: $84
	db $fc                                           ; $7b9d: $fc
	ld [$10f8], sp                                   ; $7b9e: $08 $f8 $10
	ldh a, [$60]                                     ; $7ba1: $f0 $60
	ldh [$80], a                                     ; $7ba3: $e0 $80
	add b                                            ; $7ba5: $80
	rlca                                             ; $7ba6: $07
	ld a, b                                          ; $7ba7: $78
	add b                                            ; $7ba8: $80
	ld a, a                                          ; $7ba9: $7f
	jp nz, $2392                                     ; $7baa: $c2 $92 $23

	ccf                                              ; $7bad: $3f
	ld h, $3e                                        ; $7bae: $26 $3e
	inc h                                            ; $7bb0: $24
	inc a                                            ; $7bb1: $3c
	dec e                                            ; $7bb2: $1d
	dec e                                            ; $7bb3: $1d
	ld [bc], a                                       ; $7bb4: $02
	inc bc                                           ; $7bb5: $03
	inc b                                            ; $7bb6: $04
	rlca                                             ; $7bb7: $07
	dec b                                            ; $7bb8: $05
	ld a, e                                          ; $7bb9: $7b
	cp $df                                           ; $7bba: $fe $df
	inc bc                                           ; $7bbc: $03
	rst SubAFromDE                                          ; $7bbd: $df
	ld [bc], a                                       ; $7bbe: $02
	ld l, a                                          ; $7bbf: $6f
	ld hl, sp-$21                                    ; $7bc0: $f8 $df
	add b                                            ; $7bc2: $80
	sbc h                                            ; $7bc3: $9c
	ld b, b                                          ; $7bc4: $40

jr_01a_7bc5:
	ret nz                                           ; $7bc5: $c0

	jr nz, jr_01a_7c43                               ; $7bc6: $20 $7b

	ret nz                                           ; $7bc8: $c0

	sbc [hl]                                         ; $7bc9: $9e
	sub b                                            ; $7bca: $90
	ld a, e                                          ; $7bcb: $7b
	cp $7f                                           ; $7bcc: $fe $7f
	ld a, [$747f]                                    ; $7bce: $fa $7f $74
	ld a, a                                          ; $7bd1: $7f
	call z, $c0df                                    ; $7bd2: $cc $df $c0
	rst SubAFromDE                                          ; $7bd5: $df
	add b                                            ; $7bd6: $80
	di                                               ; $7bd7: $f3
	rst SubAFromDE                                          ; $7bd8: $df
	ld bc, $c87f                                     ; $7bd9: $01 $7f $c8
	ld a, a                                          ; $7bdc: $7f
	cp $75                                           ; $7bdd: $fe $75
	adc [hl]                                         ; $7bdf: $8e
	ld [hl], a                                       ; $7be0: $77
	or $7f                                           ; $7be1: $f6 $7f
	cp [hl]                                          ; $7be3: $be
	sub a                                            ; $7be4: $97
	dec c                                            ; $7be5: $0d
	rrca                                             ; $7be6: $0f
	rla                                              ; $7be7: $17
	rra                                              ; $7be8: $1f
	ld h, $3e                                        ; $7be9: $26 $3e
	inc e                                            ; $7beb: $1c
	inc e                                            ; $7bec: $1c
	ld e, h                                          ; $7bed: $5c
	add h                                            ; $7bee: $84
	ld a, a                                          ; $7bef: $7f
	add [hl]                                         ; $7bf0: $86
	sub c                                            ; $7bf1: $91
	ldh [c], a                                       ; $7bf2: $e2
	cp $d2                                           ; $7bf3: $fe $d2
	sbc $32                                          ; $7bf5: $de $32
	ld a, $c6                                        ; $7bf7: $3e $c6
	cp $0c                                           ; $7bf9: $fe $0c
	db $fc                                           ; $7bfb: $fc
	ld hl, sp-$08                                    ; $7bfc: $f8 $f8
	ret nz                                           ; $7bfe: $c0

	ret nz                                           ; $7bff: $c0

	push af                                          ; $7c00: $f5
	rst SubAFromDE                                          ; $7c01: $df
	rrca                                             ; $7c02: $0f
	ld [hl], h                                       ; $7c03: $74
	ld a, [hl]                                       ; $7c04: $7e
	ld a, h                                          ; $7c05: $7c
	ld d, b                                          ; $7c06: $50
	sub l                                            ; $7c07: $95
	ld c, d                                          ; $7c08: $4a
	ld a, e                                          ; $7c09: $7b
	ld c, l                                          ; $7c0a: $4d
	ld a, l                                          ; $7c0b: $7d
	ld c, l                                          ; $7c0c: $4d
	ld a, l                                          ; $7c0d: $7d
	dec h                                            ; $7c0e: $25
	dec a                                            ; $7c0f: $3d
	jr jr_01a_7c2a                                   ; $7c10: $18 $18

	pop af                                           ; $7c12: $f1
	rst SubAFromDE                                          ; $7c13: $df
	add b                                            ; $7c14: $80
	rst SubAFromDE                                          ; $7c15: $df
	ret nz                                           ; $7c16: $c0

	ld a, a                                          ; $7c17: $7f
	ld a, d                                          ; $7c18: $7a
	ld a, a                                          ; $7c19: $7f
	cp $7f                                           ; $7c1a: $fe $7f
	add h                                            ; $7c1c: $84
	ld a, a                                          ; $7c1d: $7f
	cp $7f                                           ; $7c1e: $fe $7f
	ld a, [hl]                                       ; $7c20: $7e
	sub l                                            ; $7c21: $95
	sbc b                                            ; $7c22: $98
	ld hl, sp+$7c                                    ; $7c23: $f8 $7c
	ld a, h                                          ; $7c25: $7c
	inc h                                            ; $7c26: $24
	inc a                                            ; $7c27: $3c
	inc d                                            ; $7c28: $14
	inc e                                            ; $7c29: $1c

jr_01a_7c2a:
	ld [$f908], sp                                   ; $7c2a: $08 $08 $f9
	rst SubAFromDE                                          ; $7c2d: $df
	jr jr_01a_7bc5                                   ; $7c2e: $18 $95

	ld a, $36                                        ; $7c30: $3e $36
	ld a, a                                          ; $7c32: $7f
	ld b, e                                          ; $7c33: $43
	rst $38                                          ; $7c34: $ff
	add c                                            ; $7c35: $81
	cp $82                                           ; $7c36: $fe $82
	ld a, a                                          ; $7c38: $7f
	ld h, l                                          ; $7c39: $65
	ld a, d                                          ; $7c3a: $7a
	ei                                               ; $7c3b: $fb
	sub [hl]                                         ; $7c3c: $96
	ld b, c                                          ; $7c3d: $41
	ld a, $32                                        ; $7c3e: $3e $32
	ld c, $0a                                        ; $7c40: $0e $0a
	rlca                                             ; $7c42: $07

jr_01a_7c43:
	dec b                                            ; $7c43: $05
	ld [bc], a                                       ; $7c44: $02
	ld [bc], a                                       ; $7c45: $02
	ldh [rAUD3LOW], a                                ; $7c46: $e0 $1d
	db $10                                           ; $7c48: $10
	ld bc, $9ae6                                     ; $7c49: $01 $e6 $9a
	ld bc, $0700                                     ; $7c4c: $01 $00 $07
	nop                                              ; $7c4f: $00
	rrca                                             ; $7c50: $0f
	rst FarCall                                          ; $7c51: $f7
	rst SubAFromDE                                          ; $7c52: $df
	rlca                                             ; $7c53: $07
	sbc c                                            ; $7c54: $99
	jr c, jr_01a_7c96                                ; $7c55: $38 $3f

	ld c, b                                          ; $7c57: $48
	ld a, a                                          ; $7c58: $7f
	ldh a, [$9f]                                     ; $7c59: $f0 $9f
	ld l, a                                          ; $7c5b: $6f
	cp $97                                           ; $7c5c: $fe $97
	rst AddAOntoHL                                          ; $7c5e: $ef
	sbc a                                            ; $7c5f: $9f
	cp a                                             ; $7c60: $bf
	ret nz                                           ; $7c61: $c0

	rst SubAFromDE                                          ; $7c62: $df
	ldh [rIE], a                                     ; $7c63: $e0 $ff
	ld a, a                                          ; $7c65: $7f
	ld sp, hl                                        ; $7c66: $f9
	rst SubAFromDE                                          ; $7c67: $df
	ld a, [hl]                                       ; $7c68: $7e
	sbc h                                            ; $7c69: $9c
	add e                                            ; $7c6a: $83
	rst $38                                          ; $7c6b: $ff
	ld bc, $fe63                                     ; $7c6c: $01 $63 $fe
	add b                                            ; $7c6f: $80
	ld [bc], a                                       ; $7c70: $02
	rst $38                                          ; $7c71: $ff
	db $fc                                           ; $7c72: $fc
	rst $38                                          ; $7c73: $ff
	cp $01                                           ; $7c74: $fe $01
	db $fd                                           ; $7c76: $fd
	inc bc                                           ; $7c77: $03
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	inc bc                                           ; $7c7c: $03
	inc bc                                           ; $7c7d: $03
	inc b                                            ; $7c7e: $04

Call_01a_7c7f:
	rlca                                             ; $7c7f: $07
	ld [hl], $37                                     ; $7c80: $36 $37
	ld a, a                                          ; $7c82: $7f
	ld c, h                                          ; $7c83: $4c
	rst SubAFromDE                                          ; $7c84: $df
	or h                                             ; $7c85: $b4
	rst $38                                          ; $7c86: $ff
	daa                                              ; $7c87: $27
	cp $03                                           ; $7c88: $fe $03
	db $fc                                           ; $7c8a: $fc
	rlca                                             ; $7c8b: $07
	pop af                                           ; $7c8c: $f1
	sbc a                                            ; $7c8d: $9f
	ld a, [$cf98]                                    ; $7c8e: $fa $98 $cf
	cp h                                             ; $7c91: $bc
	rst $38                                          ; $7c92: $ff
	pop bc                                           ; $7c93: $c1
	rst $38                                          ; $7c94: $ff
	ei                                               ; $7c95: $fb

jr_01a_7c96:
	cp $7b                                           ; $7c96: $fe $7b
	db $db                                           ; $7c98: $db
	ld a, e                                          ; $7c99: $7b
	ldh [$df], a                                     ; $7c9a: $e0 $df
	sbc b                                            ; $7c9c: $98
	add e                                            ; $7c9d: $83
	ld l, d                                          ; $7c9e: $6a
	ld a, [$fe2e]                                    ; $7c9f: $fa $2e $fe
	ld a, [bc]                                       ; $7ca2: $0a
	cp $d2                                           ; $7ca3: $fe $d2
	cp $34                                           ; $7ca5: $fe $34
	db $fc                                           ; $7ca7: $fc
	ld e, [hl]                                       ; $7ca8: $5e
	cp $ba                                           ; $7ca9: $fe $ba
	cp $12                                           ; $7cab: $fe $12
	cp $54                                           ; $7cad: $fe $54
	db $fc                                           ; $7caf: $fc
	sub h                                            ; $7cb0: $94
	db $fc                                           ; $7cb1: $fc
	ld hl, sp-$08                                    ; $7cb2: $f8 $f8
	cp $04                                           ; $7cb4: $fe $04
	rst $38                                          ; $7cb6: $ff
	inc b                                            ; $7cb7: $04
	rst $38                                          ; $7cb8: $ff
	db $fc                                           ; $7cb9: $fc
	rst FarCall                                          ; $7cba: $f7
	rst SubAFromDE                                          ; $7cbb: $df
	inc bc                                           ; $7cbc: $03
	sbc c                                            ; $7cbd: $99
	inc e                                            ; $7cbe: $1c
	rra                                              ; $7cbf: $1f
	ld l, b                                          ; $7cc0: $68
	ld a, a                                          ; $7cc1: $7f
	or b                                             ; $7cc2: $b0
	rst SubAFromDE                                          ; $7cc3: $df
	cpl                                              ; $7cc4: $2f
	add b                                            ; $7cc5: $80
	rst SubAFromDE                                          ; $7cc6: $df
	inc a                                            ; $7cc7: $3c
	sbc [hl]                                         ; $7cc8: $9e
	jp nz, $8033                                     ; $7cc9: $c2 $33 $80

	rst SubAFromDE                                          ; $7ccc: $df
	ld bc, $029e                                     ; $7ccd: $01 $9e $02
	ld a, e                                          ; $7cd0: $7b
	add b                                            ; $7cd1: $80
	sub l                                            ; $7cd2: $95
	ld e, a                                          ; $7cd3: $5f
	ld [hl], a                                       ; $7cd4: $77
	rst $38                                          ; $7cd5: $ff
	and h                                            ; $7cd6: $a4
	rst SubAFromDE                                          ; $7cd7: $df
	inc [hl]                                         ; $7cd8: $34
	rst $38                                          ; $7cd9: $ff
	ld b, h                                          ; $7cda: $44
	rst $38                                          ; $7cdb: $ff
	call nz, $fa7b                                   ; $7cdc: $c4 $7b $fa
	sub [hl]                                         ; $7cdf: $96
	inc hl                                           ; $7ce0: $23
	rst $38                                          ; $7ce1: $ff
	sub c                                            ; $7ce2: $91
	rst $38                                          ; $7ce3: $ff
	rst JumpTable                                          ; $7ce4: $c7
	pop af                                           ; $7ce5: $f1
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	xor $77                                          ; $7ce8: $ee $77
	add b                                            ; $7cea: $80
	ld e, a                                          ; $7ceb: $5f
	add d                                            ; $7cec: $82
	sub [hl]                                         ; $7ced: $96
	or h                                             ; $7cee: $b4
	ld a, h                                          ; $7cef: $7c
	sbc $7e                                          ; $7cf0: $de $7e
	ld a, [$d27e]                                    ; $7cf2: $fa $7e $d2
	ld a, [hl]                                       ; $7cf5: $7e
	call nc, $827b                                   ; $7cf6: $d4 $7b $82
	sbc e                                            ; $7cf9: $9b
	jr c, @-$06                                      ; $7cfa: $38 $f8

	db $fc                                           ; $7cfc: $fc
	db $fc                                           ; $7cfd: $fc
	ld h, a                                          ; $7cfe: $67
	add b                                            ; $7cff: $80
	ld [hl], a                                       ; $7d00: $77
	ld b, b                                          ; $7d01: $40
	adc [hl]                                         ; $7d02: $8e
	ld b, $07                                        ; $7d03: $06 $07
	ccf                                              ; $7d05: $3f
	inc a                                            ; $7d06: $3c
	ld a, a                                          ; $7d07: $7f
	ld b, a                                          ; $7d08: $47
	cp $83                                           ; $7d09: $fe $83
	ld hl, sp+$0f                                    ; $7d0b: $f8 $0f
	ld sp, hl                                        ; $7d0d: $f9
	rlca                                             ; $7d0e: $07
	ld a, [$b4cf]                                    ; $7d0f: $fa $cf $b4
	rst $38                                          ; $7d12: $ff
	adc c                                            ; $7d13: $89
	ld e, e                                          ; $7d14: $5b
	ld b, b                                          ; $7d15: $40
	rst SubAFromDE                                          ; $7d16: $df
	sub b                                            ; $7d17: $90
	sbc l                                            ; $7d18: $9d
	ld c, d                                          ; $7d19: $4a
	jp c, $be6f                                      ; $7d1a: $da $6f $be

	ld a, a                                          ; $7d1d: $7f
	ld b, [hl]                                       ; $7d1e: $46
	sub [hl]                                         ; $7d1f: $96
	ld l, [hl]                                       ; $7d20: $6e
	cp $5a                                           ; $7d21: $fe $5a
	cp $22                                           ; $7d23: $fe $22
	cp $a2                                           ; $7d25: $fe $a2
	cp $14                                           ; $7d27: $fe $14
	sbc $fc                                          ; $7d29: $de $fc
	ld l, e                                          ; $7d2b: $6b
	ret nz                                           ; $7d2c: $c0

	ld a, [hl]                                       ; $7d2d: $7e
	cp [hl]                                          ; $7d2e: $be
	ld a, [hl]                                       ; $7d2f: $7e
	cp d                                             ; $7d30: $ba
	and $99                                          ; $7d31: $e6 $99
	rlca                                             ; $7d33: $07
	rst $38                                          ; $7d34: $ff
	db $fc                                           ; $7d35: $fc
	inc bc                                           ; $7d36: $03
	rrca                                             ; $7d37: $0f
	ldh a, [rRP]                                     ; $7d38: $f0 $56
	sbc b                                            ; $7d3a: $98
	di                                               ; $7d3b: $f3
	ld a, e                                          ; $7d3c: $7b
	sbc [hl]                                         ; $7d3d: $9e
	ld [hl], a                                       ; $7d3e: $77
	db $fd                                           ; $7d3f: $fd
	add sp, $6f                                      ; $7d40: $e8 $6f
	ldh [$9d], a                                     ; $7d42: $e0 $9d
	ldh [$1f], a                                     ; $7d44: $e0 $1f
	jp hl                                            ; $7d46: $e9


	ld a, [hl]                                       ; $7d47: $7e
	db $dd                                           ; $7d48: $dd
	sbc e                                            ; $7d49: $9b
	ldh [rAUD3HIGH], a                               ; $7d4a: $e0 $1e
	add b                                            ; $7d4c: $80
	ld [hl], b                                       ; $7d4d: $70
	ldh [rP1], a                                     ; $7d4e: $e0 $00
	ldh [rP1], a                                     ; $7d50: $e0 $00
	ldh [$c8], a                                     ; $7d52: $e0 $c8
	ldh [rP1], a                                     ; $7d54: $e0 $00
	ldh [$a3], a                                     ; $7d56: $e0 $a3
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

Call_01a_7efc:
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

Jump_01a_7f7c:
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
