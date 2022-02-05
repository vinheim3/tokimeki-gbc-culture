; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

	add hl, de                                       ; $4000: $19
	add hl, sp                                       ; $4001: $39
	ld e, e                                          ; $4002: $5b
	add hl, de                                       ; $4003: $19
	ld l, e                                          ; $4004: $6b
	ld e, e                                          ; $4005: $5b
	add hl, de                                       ; $4006: $19
	sub l                                            ; $4007: $95
	ld e, e                                          ; $4008: $5b
	add hl, de                                       ; $4009: $19
	cp a                                             ; $400a: $bf
	ld e, e                                          ; $400b: $5b
	add hl, de                                       ; $400c: $19
	jp hl                                            ; $400d: $e9


	ld e, e                                          ; $400e: $5b
	add hl, de                                       ; $400f: $19
	inc de                                           ; $4010: $13
	ld e, h                                          ; $4011: $5c
	add hl, de                                       ; $4012: $19
	ccf                                              ; $4013: $3f
	ld e, h                                          ; $4014: $5c
	add hl, de                                       ; $4015: $19
	ld h, a                                          ; $4016: $67
	ld e, h                                          ; $4017: $5c
	add hl, de                                       ; $4018: $19
	sub e                                            ; $4019: $93
	ld e, h                                          ; $401a: $5c
	add hl, de                                       ; $401b: $19
	xor e                                            ; $401c: $ab
	ld e, h                                          ; $401d: $5c
	add hl, de                                       ; $401e: $19
	jp $195c                                         ; $401f: $c3 $5c $19


	ld e, a                                          ; $4022: $5f
	ld e, a                                          ; $4023: $5f
	add hl, de                                       ; $4024: $19
	jp c, $195c                                      ; $4025: $da $5c $19

	ld a, [bc]                                       ; $4028: $0a
	ld e, l                                          ; $4029: $5d
	add hl, de                                       ; $402a: $19
	dec de                                           ; $402b: $1b
	ld e, a                                          ; $402c: $5f
	add hl, de                                       ; $402d: $19
	ld b, a                                          ; $402e: $47
	ld e, l                                          ; $402f: $5d
	add hl, de                                       ; $4030: $19
	adc h                                            ; $4031: $8c
	ld e, l                                          ; $4032: $5d
	add hl, de                                       ; $4033: $19
	bit 3, l                                         ; $4034: $cb $5d
	add hl, de                                       ; $4036: $19
	inc d                                            ; $4037: $14
	ld e, [hl]                                       ; $4038: $5e
	add hl, de                                       ; $4039: $19
	ld h, h                                          ; $403a: $64
	ld e, [hl]                                       ; $403b: $5e
	add hl, de                                       ; $403c: $19
	and d                                            ; $403d: $a2
	ld e, [hl]                                       ; $403e: $5e
	add hl, de                                       ; $403f: $19
	call nz, $195e                                   ; $4040: $c4 $5e $19
	db $e3                                           ; $4043: $e3
	ld e, [hl]                                       ; $4044: $5e
	add hl, de                                       ; $4045: $19
	ld d, l                                          ; $4046: $55
	ld h, d                                          ; $4047: $62
	add hl, de                                       ; $4048: $19
	adc [hl]                                         ; $4049: $8e
	ld e, a                                          ; $404a: $5f
	add hl, de                                       ; $404b: $19
	cp b                                             ; $404c: $b8
	ld e, a                                          ; $404d: $5f
	add hl, de                                       ; $404e: $19
	dec bc                                           ; $404f: $0b
	ld h, d                                          ; $4050: $62
	add hl, de                                       ; $4051: $19
	rst FarCall                                          ; $4052: $f7
	ld e, a                                          ; $4053: $5f
	add hl, de                                       ; $4054: $19
	dec a                                            ; $4055: $3d
	ld h, b                                          ; $4056: $60
	add hl, de                                       ; $4057: $19
	add h                                            ; $4058: $84
	ld h, b                                          ; $4059: $60
	add hl, de                                       ; $405a: $19
	call nc, $1960                                   ; $405b: $d4 $60 $19
	dec h                                            ; $405e: $25
	ld h, c                                          ; $405f: $61
	add hl, de                                       ; $4060: $19
	ld [hl], c                                       ; $4061: $71
	ld h, c                                          ; $4062: $61
	add hl, de                                       ; $4063: $19
	sbc e                                            ; $4064: $9b
	ld h, c                                          ; $4065: $61
	add hl, de                                       ; $4066: $19
	pop de                                           ; $4067: $d1
	ld h, c                                          ; $4068: $61
	add hl, de                                       ; $4069: $19
	add e                                            ; $406a: $83
	ld h, d                                          ; $406b: $62
	add hl, de                                       ; $406c: $19
	xor l                                            ; $406d: $ad
	ld h, d                                          ; $406e: $62
	add hl, de                                       ; $406f: $19
	ret nc                                           ; $4070: $d0

	ld h, d                                          ; $4071: $62
	add hl, de                                       ; $4072: $19
	db $ec                                           ; $4073: $ec
	ld h, d                                          ; $4074: $62
	add hl, de                                       ; $4075: $19
	ld h, h                                          ; $4076: $64
	ld h, l                                          ; $4077: $65
	add hl, de                                       ; $4078: $19
	dec d                                            ; $4079: $15
	ld h, e                                          ; $407a: $63
	add hl, de                                       ; $407b: $19
	ld d, c                                          ; $407c: $51
	ld h, h                                          ; $407d: $64
	add hl, de                                       ; $407e: $19
	adc a                                            ; $407f: $8f
	ld h, h                                          ; $4080: $64
	add hl, de                                       ; $4081: $19
	rlca                                             ; $4082: $07
	ld h, h                                          ; $4083: $64
	add hl, de                                       ; $4084: $19
	cp [hl]                                          ; $4085: $be
	ld h, h                                          ; $4086: $64
	add hl, de                                       ; $4087: $19
	ld a, [$1964]                                    ; $4088: $fa $64 $19
	ld e, a                                          ; $408b: $5f
	ld h, e                                          ; $408c: $63
	add hl, de                                       ; $408d: $19
	push bc                                          ; $408e: $c5
	ld h, e                                          ; $408f: $63
	add hl, de                                       ; $4090: $19
	inc h                                            ; $4091: $24
	ld h, l                                          ; $4092: $65
	add hl, de                                       ; $4093: $19
	add a                                            ; $4094: $87
	ld h, e                                          ; $4095: $63
	add hl, de                                       ; $4096: $19
	ld a, [$1967]                                    ; $4097: $fa $67 $19
	sub d                                            ; $409a: $92
	ld h, l                                          ; $409b: $65
	add hl, de                                       ; $409c: $19
	xor e                                            ; $409d: $ab
	ld h, [hl]                                       ; $409e: $66
	add hl, de                                       ; $409f: $19
	push af                                          ; $40a0: $f5
	ld h, [hl]                                       ; $40a1: $66
	add hl, de                                       ; $40a2: $19
	ld l, h                                          ; $40a3: $6c
	ld h, [hl]                                       ; $40a4: $66
	add hl, de                                       ; $40a5: $19
	ld [hl-], a                                      ; $40a6: $32
	ld h, a                                          ; $40a7: $67
	add hl, de                                       ; $40a8: $19
	ld a, h                                          ; $40a9: $7c
	ld h, a                                          ; $40aa: $67
	add hl, de                                       ; $40ab: $19
	call c, $1965                                    ; $40ac: $dc $65 $19
	inc [hl]                                         ; $40af: $34
	ld h, [hl]                                       ; $40b0: $66
	add hl, de                                       ; $40b1: $19
	cp c                                             ; $40b2: $b9
	ld h, a                                          ; $40b3: $67
	add hl, de                                       ; $40b4: $19
	inc b                                            ; $40b5: $04
	ld h, [hl]                                       ; $40b6: $66
	add hl, de                                       ; $40b7: $19
	dec hl                                           ; $40b8: $2b
	ld l, b                                          ; $40b9: $68
	add hl, de                                       ; $40ba: $19
	and c                                            ; $40bb: $a1
	ld l, b                                          ; $40bc: $68
	add hl, de                                       ; $40bd: $19
	add hl, de                                       ; $40be: $19
	ld l, c                                          ; $40bf: $69
	add hl, de                                       ; $40c0: $19
	ld a, l                                          ; $40c1: $7d
	ld l, c                                          ; $40c2: $69
	add hl, de                                       ; $40c3: $19
	db $fd                                           ; $40c4: $fd
	ld l, c                                          ; $40c5: $69
	add hl, de                                       ; $40c6: $19
	ld l, d                                          ; $40c7: $6a
	ld l, d                                          ; $40c8: $6a
	add hl, de                                       ; $40c9: $19
	jp nc, $196a                                     ; $40ca: $d2 $6a $19

	jr z, jr_008_413a                                ; $40cd: $28 $6b

	add hl, de                                       ; $40cf: $19
	adc h                                            ; $40d0: $8c
	ld l, e                                          ; $40d1: $6b
	add hl, de                                       ; $40d2: $19
	dec e                                            ; $40d3: $1d
	ld l, h                                          ; $40d4: $6c
	add hl, de                                       ; $40d5: $19
	sub [hl]                                         ; $40d6: $96
	ld l, h                                          ; $40d7: $6c
	add hl, de                                       ; $40d8: $19
	dec h                                            ; $40d9: $25
	ld l, l                                          ; $40da: $6d
	add hl, de                                       ; $40db: $19
	cp c                                             ; $40dc: $b9
	ld l, l                                          ; $40dd: $6d
	add hl, de                                       ; $40de: $19
	ld d, h                                          ; $40df: $54
	ld l, [hl]                                       ; $40e0: $6e
	add hl, de                                       ; $40e1: $19
	pop hl                                           ; $40e2: $e1
	ld l, [hl]                                       ; $40e3: $6e
	add hl, de                                       ; $40e4: $19
	ld b, [hl]                                       ; $40e5: $46
	ld l, a                                          ; $40e6: $6f
	add hl, de                                       ; $40e7: $19
	or e                                             ; $40e8: $b3
	ld l, a                                          ; $40e9: $6f
	add hl, de                                       ; $40ea: $19
	ld c, l                                          ; $40eb: $4d
	ld [hl], b                                       ; $40ec: $70
	add hl, de                                       ; $40ed: $19
	sbc $70                                          ; $40ee: $de $70
	add hl, de                                       ; $40f0: $19
	ld a, [hl]                                       ; $40f1: $7e
	ld [hl], c                                       ; $40f2: $71
	add hl, de                                       ; $40f3: $19
	jr jr_008_4168                                   ; $40f4: $18 $72

	add hl, de                                       ; $40f6: $19
	or a                                             ; $40f7: $b7
	ld [hl], d                                       ; $40f8: $72
	add hl, de                                       ; $40f9: $19
	ld b, a                                          ; $40fa: $47
	ld [hl], e                                       ; $40fb: $73
	add hl, de                                       ; $40fc: $19
	sub $73                                          ; $40fd: $d6 $73
	add hl, de                                       ; $40ff: $19
	ld h, c                                          ; $4100: $61
	ld [hl], h                                       ; $4101: $74
	add hl, de                                       ; $4102: $19
	add d                                            ; $4103: $82
	ld [hl], h                                       ; $4104: $74
	add hl, de                                       ; $4105: $19
	and e                                            ; $4106: $a3
	ld [hl], h                                       ; $4107: $74
	add hl, de                                       ; $4108: $19
	call nz, $1974                                   ; $4109: $c4 $74 $19
	and $74                                          ; $410c: $e6 $74
	add hl, de                                       ; $410e: $19
	rlca                                             ; $410f: $07
	ld [hl], l                                       ; $4110: $75
	add hl, de                                       ; $4111: $19
	add hl, hl                                       ; $4112: $29
	ld [hl], l                                       ; $4113: $75
	add hl, de                                       ; $4114: $19
	add b                                            ; $4115: $80
	ld [hl], l                                       ; $4116: $75
	add hl, de                                       ; $4117: $19
	ret c                                            ; $4118: $d8

	ld [hl], l                                       ; $4119: $75
	add hl, de                                       ; $411a: $19
	inc l                                            ; $411b: $2c
	halt                                             ; $411c: $76
	add hl, de                                       ; $411d: $19
	ld a, [hl]                                       ; $411e: $7e
	halt                                             ; $411f: $76
	add hl, de                                       ; $4120: $19
	adc $76                                          ; $4121: $ce $76
	add hl, de                                       ; $4123: $19
	inc hl                                           ; $4124: $23
	ld [hl], a                                       ; $4125: $77
	add hl, de                                       ; $4126: $19
	ld a, d                                          ; $4127: $7a
	ld [hl], a                                       ; $4128: $77
	add hl, de                                       ; $4129: $19
	jp $1977                                         ; $412a: $c3 $77 $19


	dec bc                                           ; $412d: $0b
	ld a, b                                          ; $412e: $78
	add hl, de                                       ; $412f: $19
	ld e, e                                          ; $4130: $5b
	ld a, b                                          ; $4131: $78
	add hl, de                                       ; $4132: $19
	xor [hl]                                         ; $4133: $ae
	ld a, b                                          ; $4134: $78
	add hl, de                                       ; $4135: $19
	ldh a, [$78]                                     ; $4136: $f0 $78
	add hl, de                                       ; $4138: $19
	ld a, [hl-]                                      ; $4139: $3a

jr_008_413a:
	ld a, c                                          ; $413a: $79
	add hl, de                                       ; $413b: $19
	adc b                                            ; $413c: $88
	ld a, c                                          ; $413d: $79
	add hl, de                                       ; $413e: $19
	call z, $1979                                    ; $413f: $cc $79 $19

jr_008_4142:
	ld [de], a                                       ; $4142: $12
	ld a, d                                          ; $4143: $7a
	add hl, de                                       ; $4144: $19
	add hl, sp                                       ; $4145: $39
	ld a, d                                          ; $4146: $7a
	add hl, de                                       ; $4147: $19
	ld h, b                                          ; $4148: $60

jr_008_4149:
	ld a, d                                          ; $4149: $7a
	add hl, de                                       ; $414a: $19
	adc l                                            ; $414b: $8d
	ld a, d                                          ; $414c: $7a
	add hl, de                                       ; $414d: $19
	or d                                             ; $414e: $b2
	ld a, d                                          ; $414f: $7a
	add hl, de                                       ; $4150: $19
	db $e3                                           ; $4151: $e3
	ld a, d                                          ; $4152: $7a
	add hl, de                                       ; $4153: $19
	scf                                              ; $4154: $37
	ld a, e                                          ; $4155: $7b
	add hl, de                                       ; $4156: $19
	ld h, d                                          ; $4157: $62
	ld a, e                                          ; $4158: $7b
	add hl, de                                       ; $4159: $19
	adc l                                            ; $415a: $8d
	ld a, e                                          ; $415b: $7b
	add hl, de                                       ; $415c: $19
	or l                                             ; $415d: $b5
	ld a, e                                          ; $415e: $7b
	add hl, de                                       ; $415f: $19
	ld b, [hl]                                       ; $4160: $46
	ld a, e                                          ; $4161: $7b

jr_008_4162:
	add hl, de                                       ; $4162: $19
	ld [hl], c                                       ; $4163: $71
	ld a, e                                          ; $4164: $7b
	add hl, de                                       ; $4165: $19
	sbc e                                            ; $4166: $9b
	ld a, e                                          ; $4167: $7b

jr_008_4168:
	add hl, de                                       ; $4168: $19
	inc e                                            ; $4169: $1c
	ld a, e                                          ; $416a: $7b
	add hl, de                                       ; $416b: $19
	ld d, h                                          ; $416c: $54
	ld a, e                                          ; $416d: $7b

jr_008_416e:
	add hl, de                                       ; $416e: $19
	ld a, a                                          ; $416f: $7f
	ld a, e                                          ; $4170: $7b
	add hl, de                                       ; $4171: $19
	xor c                                            ; $4172: $a9
	ld a, e                                          ; $4173: $7b
	add hl, de                                       ; $4174: $19
	jr z, @+$7d                                      ; $4175: $28 $7b

	add hl, de                                       ; $4177: $19
	jp c, $197b                                      ; $4178: $da $7b $19

	inc bc                                           ; $417b: $03
	ld a, h                                          ; $417c: $7c
	add hl, de                                       ; $417d: $19
	daa                                              ; $417e: $27
	ld a, h                                          ; $417f: $7c
	add hl, de                                       ; $4180: $19
	ld c, d                                          ; $4181: $4a
	ld a, h                                          ; $4182: $7c
	add hl, de                                       ; $4183: $19
	jp hl                                            ; $4184: $e9


	ld a, e                                          ; $4185: $7b

jr_008_4186:
	add hl, de                                       ; $4186: $19
	ld de, $197c                                     ; $4187: $11 $7c $19
	ld [hl], $7c                                     ; $418a: $36 $7c
	add hl, de                                       ; $418c: $19
	pop bc                                           ; $418d: $c1
	ld a, e                                          ; $418e: $7b
	add hl, de                                       ; $418f: $19
	push af                                          ; $4190: $f5
	ld a, e                                          ; $4191: $7b
	add hl, de                                       ; $4192: $19
	add hl, de                                       ; $4193: $19
	ld a, h                                          ; $4194: $7c
	add hl, de                                       ; $4195: $19
	ld b, c                                          ; $4196: $41
	ld a, h                                          ; $4197: $7c
	add hl, de                                       ; $4198: $19
	bit 7, e                                         ; $4199: $cb $7b
	add hl, de                                       ; $419b: $19
	ld d, l                                          ; $419c: $55
	ld a, h                                          ; $419d: $7c
	add hl, de                                       ; $419e: $19
	ld e, a                                          ; $419f: $5f
	ld a, h                                          ; $41a0: $7c
	add hl, de                                       ; $41a1: $19
	ld a, l                                          ; $41a2: $7d
	ld a, h                                          ; $41a3: $7c
	add hl, de                                       ; $41a4: $19
	sbc [hl]                                         ; $41a5: $9e
	ld a, h                                          ; $41a6: $7c
	add hl, de                                       ; $41a7: $19
	xor a                                            ; $41a8: $af
	ld a, h                                          ; $41a9: $7c

jr_008_41aa:
	add hl, de                                       ; $41aa: $19
	pop de                                           ; $41ab: $d1
	ld a, h                                          ; $41ac: $7c
	ldh a, [$8b]                                     ; $41ad: $f0 $8b
	nop                                              ; $41af: $00
	ld b, b                                          ; $41b0: $40
	nop                                              ; $41b1: $00
	nop                                              ; $41b2: $00
	jr nz, jr_008_4142                               ; $41b3: $20 $8d

	rrca                                             ; $41b5: $0f
	ld b, b                                          ; $41b6: $40
	nop                                              ; $41b7: $00
	nop                                              ; $41b8: $00
	jr nz, jr_008_4149                               ; $41b9: $20 $8e

	ld hl, $6040                                     ; $41bb: $21 $40 $60
	adc a                                            ; $41be: $8f
	ld b, l                                          ; $41bf: $45
	ld b, b                                          ; $41c0: $40
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	ldh [hDisp1_SCY], a                                     ; $41c3: $e0 $90
	ld l, c                                          ; $41c5: $69
	ld b, b                                          ; $41c6: $40
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	ldh [hDisp1_SCX], a                                     ; $41c9: $e0 $91
	ld [hl], l                                       ; $41cb: $75
	ld b, b                                          ; $41cc: $40
	jr nz, jr_008_4162                               ; $41cd: $20 $93

	sub [hl]                                         ; $41cf: $96
	ld b, b                                          ; $41d0: $40
	nop                                              ; $41d1: $00
	nop                                              ; $41d2: $00
	and b                                            ; $41d3: $a0
	adc [hl]                                         ; $41d4: $8e
	or a                                             ; $41d5: $b7
	ld b, b                                          ; $41d6: $40
	ldh [hDisp1_LCDC], a                                     ; $41d7: $e0 $8f
	rst GetHLinHL                                          ; $41d9: $cf
	ld b, b                                          ; $41da: $40
	jr nz, jr_008_416e                               ; $41db: $20 $91

	rst SubAFromBC                                          ; $41dd: $e7
	ld b, b                                          ; $41de: $40
	ld h, b                                          ; $41df: $60
	sub d                                            ; $41e0: $92
	rst $38                                          ; $41e1: $ff
	ld b, b                                          ; $41e2: $40
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	ldh a, [hDisp1_OBP0]                                     ; $41e5: $f0 $93
	rla                                              ; $41e7: $17
	ld b, c                                          ; $41e8: $41
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00
	and b                                            ; $41eb: $a0
	adc [hl]                                         ; $41ec: $8e
	dec e                                            ; $41ed: $1d
	ld b, c                                          ; $41ee: $41
	ldh [hDisp1_LCDC], a                                     ; $41ef: $e0 $8f
	ld h, $41                                        ; $41f1: $26 $41
	jr nz, jr_008_4186                               ; $41f3: $20 $91

	cpl                                              ; $41f5: $2f
	ld b, c                                          ; $41f6: $41
	ld h, b                                          ; $41f7: $60
	sub d                                            ; $41f8: $92
	jr c, jr_008_423c                                ; $41f9: $38 $41

	and b                                            ; $41fb: $a0
	sub e                                            ; $41fc: $93
	ld b, c                                          ; $41fd: $41
	ld b, c                                          ; $41fe: $41
	ldh [hDisp1_OBP1], a                                     ; $41ff: $e0 $94
	ld c, d                                          ; $4201: $4a
	ld b, c                                          ; $4202: $41
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	and b                                            ; $4205: $a0
	sub l                                            ; $4206: $95
	ld d, e                                          ; $4207: $53
	ld b, c                                          ; $4208: $41
	ldh [hDisp1_WX], a                                     ; $4209: $e0 $96
	ld [hl], a                                       ; $420b: $77
	ld b, c                                          ; $420c: $41
	ldh a, [hDisp1_WY]                                     ; $420d: $f0 $95
	ld e, a                                          ; $420f: $5f
	ld b, c                                          ; $4210: $41
	jr nc, jr_008_41aa                               ; $4211: $30 $97

	add e                                            ; $4213: $83
	ld b, c                                          ; $4214: $41
	ld b, b                                          ; $4215: $40
	sub [hl]                                         ; $4216: $96
	ld l, e                                          ; $4217: $6b
	ld b, c                                          ; $4218: $41
	add b                                            ; $4219: $80
	sub a                                            ; $421a: $97
	adc a                                            ; $421b: $8f
	ld b, c                                          ; $421c: $41
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	ret nz                                           ; $421f: $c0

	sub l                                            ; $4220: $95
	sbc e                                            ; $4221: $9b
	ld b, c                                          ; $4222: $41
	nop                                              ; $4223: $00
	sub a                                            ; $4224: $97
	and h                                            ; $4225: $a4
	ld b, c                                          ; $4226: $41
	nop                                              ; $4227: $00
	nop                                              ; $4228: $00
	db $10                                           ; $4229: $10
	sub [hl]                                         ; $422a: $96
	sbc e                                            ; $422b: $9b
	ld b, c                                          ; $422c: $41
	ld d, b                                          ; $422d: $50
	sub a                                            ; $422e: $97
	and h                                            ; $422f: $a4
	ld b, c                                          ; $4230: $41
	nop                                              ; $4231: $00
	nop                                              ; $4232: $00
	ld h, b                                          ; $4233: $60
	sub [hl]                                         ; $4234: $96
	sbc e                                            ; $4235: $9b
	ld b, c                                          ; $4236: $41
	and b                                            ; $4237: $a0
	sub a                                            ; $4238: $97
	and h                                            ; $4239: $a4
	ld b, c                                          ; $423a: $41
	nop                                              ; $423b: $00

jr_008_423c:
	nop                                              ; $423c: $00
	ld sp, hl                                        ; $423d: $f9
	add hl, de                                       ; $423e: $19
	add c                                            ; $423f: $81
	ld e, d                                          ; $4240: $5a
	db $d3                                           ; $4241: $d3
	call nc, Call_008_7d19                           ; $4242: $d4 $19 $7d
	ld e, b                                          ; $4245: $58
	ld b, b                                          ; $4246: $40
	adc d                                            ; $4247: $8a
	add hl, de                                       ; $4248: $19
	and l                                            ; $4249: $a5
	ld e, d                                          ; $424a: $5a
	nop                                              ; $424b: $00
	add b                                            ; $424c: $80
	add hl, de                                       ; $424d: $19
	db $eb                                           ; $424e: $eb
	ld e, d                                          ; $424f: $5a
	sub b                                            ; $4250: $90
	add b                                            ; $4251: $80
	rst $38                                          ; $4252: $ff
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	ld de, $0480                                     ; $4255: $11 $80 $04
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	ld e, $09                                        ; $425c: $1e $09
	sbc h                                            ; $425e: $9c
	ld [de], a                                       ; $425f: $12
	ld h, c                                          ; $4260: $61
	ld [hl+], a                                      ; $4261: $22
	dec b                                            ; $4262: $05
	inc hl                                           ; $4263: $23
	nop                                              ; $4264: $00
	ld [bc], a                                       ; $4265: $02
	nop                                              ; $4266: $00
	inc b                                            ; $4267: $04
	ld e, $40                                        ; $4268: $1e $40
	sbc h                                            ; $426a: $9c
	inc hl                                           ; $426b: $23
	ld [hl-], a                                      ; $426c: $32
	inc sp                                           ; $426d: $33
	inc bc                                           ; $426e: $03
	inc bc                                           ; $426f: $03
	nop                                              ; $4270: $00
	add b                                            ; $4271: $80
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	ld e, $73                                        ; $4274: $1e $73
	sbc h                                            ; $4276: $9c
	inc [hl]                                         ; $4277: $34
	inc de                                           ; $4278: $13
	ld b, h                                          ; $4279: $44
	inc b                                            ; $427a: $04
	dec b                                            ; $427b: $05
	nop                                              ; $427c: $00
	ld [rRAMG], sp                                   ; $427d: $08 $00 $00
	ld e, $8a                                        ; $4280: $1e $8a
	sbc h                                            ; $4282: $9c
	ld bc, $2544                                     ; $4283: $01 $44 $25
	ld [bc], a                                       ; $4286: $02
	ld [bc], a                                       ; $4287: $02
	ld a, $0a                                        ; $4288: $3e $0a
	jr nz, jr_008_428c                               ; $428a: $20 $00

jr_008_428c:
	ld e, $9e                                        ; $428c: $1e $9e
	sbc h                                            ; $428e: $9c
	ld [de], a                                       ; $428f: $12
	ld d, l                                          ; $4290: $55
	ld [hl], $00                                     ; $4291: $36 $00
	inc bc                                           ; $4293: $03
	ld a, $20                                        ; $4294: $3e $20
	jr nz, jr_008_429c                               ; $4296: $20 $04

	ld e, $c5                                        ; $4298: $1e $c5
	sbc h                                            ; $429a: $9c
	inc hl                                           ; $429b: $23

jr_008_429c:
	ld d, $11                                        ; $429c: $16 $11
	ld bc, $2f13                                     ; $429e: $01 $13 $2f
	nop                                              ; $42a1: $00
	inc h                                            ; $42a2: $24
	nop                                              ; $42a3: $00
	ld e, $11                                        ; $42a4: $1e $11
	sbc l                                            ; $42a6: $9d
	inc [hl]                                         ; $42a7: $34
	scf                                              ; $42a8: $37
	ld b, a                                          ; $42a9: $47
	ld d, $07                                        ; $42aa: $16 $07
	add hl, de                                       ; $42ac: $19
	ld b, b                                          ; $42ad: $40
	jr nz, jr_008_42b0                               ; $42ae: $20 $00

jr_008_42b0:
	ld e, $30                                        ; $42b0: $1e $30
	sbc l                                            ; $42b2: $9d
	ld bc, $2868                                     ; $42b3: $01 $68 $28
	daa                                              ; $42b6: $27
	inc sp                                           ; $42b7: $33
	ld a, $82                                        ; $42b8: $3e $82
	jr z, jr_008_42bc                                ; $42ba: $28 $00

jr_008_42bc:
	ld e, $3e                                        ; $42bc: $1e $3e
	sbc l                                            ; $42be: $9d
	ld [de], a                                       ; $42bf: $12
	ld c, c                                          ; $42c0: $49
	ld de, $0482                                     ; $42c1: $11 $82 $04
	ld a, $00                                        ; $42c4: $3e $00
	jr nz, jr_008_42cc                               ; $42c6: $20 $04

	ld e, $74                                        ; $42c8: $1e $74
	sbc l                                            ; $42ca: $9d
	inc hl                                           ; $42cb: $23

jr_008_42cc:
	ld a, [hl+]                                      ; $42cc: $2a
	ld c, c                                          ; $42cd: $49
	add d                                            ; $42ce: $82
	inc b                                            ; $42cf: $04
	cpl                                              ; $42d0: $2f
	add b                                            ; $42d1: $80
	jr nz, jr_008_42d4                               ; $42d2: $20 $00

jr_008_42d4:
	ld e, $a7                                        ; $42d4: $1e $a7
	sbc l                                            ; $42d6: $9d
	inc [hl]                                         ; $42d7: $34
	dec sp                                           ; $42d8: $3b
	ld a, [hl-]                                      ; $42d9: $3a
	add c                                            ; $42da: $81
	inc b                                            ; $42db: $04
	add hl, de                                       ; $42dc: $19
	nop                                              ; $42dd: $00
	jr nz, jr_008_42e0                               ; $42de: $20 $00

jr_008_42e0:
	ld e, $bb                                        ; $42e0: $1e $bb
	sbc l                                            ; $42e2: $9d
	ld a, [$c144]                                    ; $42e3: $fa $44 $c1
	rst JumpTable                                          ; $42e6: $c7
	di                                               ; $42e7: $f3
	ld b, d                                          ; $42e8: $42
	ld a, h                                          ; $42e9: $7c
	ld b, e                                          ; $42ea: $43
	adc a                                            ; $42eb: $8f
	ld b, h                                          ; $42ec: $44
	sub l                                            ; $42ed: $95
	ld b, h                                          ; $42ee: $44
	sbc [hl]                                         ; $42ef: $9e
	ld b, h                                          ; $42f0: $44
	and [hl]                                         ; $42f1: $a6
	ld b, h                                          ; $42f2: $44
	xor a                                            ; $42f3: $af
	call $068e                                       ; $42f4: $cd $8e $06
	ld a, $01                                        ; $42f7: $3e $01
	ld [$c157], a                                    ; $42f9: $ea $57 $c1
	ld a, $02                                        ; $42fc: $3e $02
	ld [$c186], a                                    ; $42fe: $ea $86 $c1
	xor a                                            ; $4301: $af
	ld [$c158], a                                    ; $4302: $ea $58 $c1
	ld a, $f9                                        ; $4305: $3e $f9
	ld [$c150], a                                    ; $4307: $ea $50 $c1
	ld a, $ff                                        ; $430a: $3e $ff
	ld [$c156], a                                    ; $430c: $ea $56 $c1
	ld a, [$a224]                                    ; $430f: $fa $24 $a2
	ld b, a                                          ; $4312: $47
	ld c, $0c                                        ; $4313: $0e $0c
	call BCequBtimesC                                       ; $4315: $cd $5f $12
	ld a, [$a226]                                    ; $4318: $fa $26 $a2
	call $132c                                       ; $431b: $cd $2c $13
	ld a, c                                          ; $431e: $79
	dec a                                            ; $431f: $3d
	ld b, $03                                        ; $4320: $06 $03
	call $12b5                                       ; $4322: $cd $b5 $12
	cp $0c                                           ; $4325: $fe $0c
	jr c, jr_008_432b                                ; $4327: $38 $02

	ld a, $0b                                        ; $4329: $3e $0b

jr_008_432b:
	ld hl, $4253                                     ; $432b: $21 $53 $42
	ld b, a                                          ; $432e: $47
	ld c, $0c                                        ; $432f: $0e $0c
	call BCequBtimesC                                       ; $4331: $cd $5f $12
	add hl, bc                                       ; $4334: $09
	ld a, [hl+]                                      ; $4335: $2a
	ld [$c159], a                                    ; $4336: $ea $59 $c1
	ld a, [hl+]                                      ; $4339: $2a
	ld [$c15a], a                                    ; $433a: $ea $5a $c1
	ld a, [hl+]                                      ; $433d: $2a
	ld [$c15b], a                                    ; $433e: $ea $5b $c1
	ld a, [hl+]                                      ; $4341: $2a
	ld [$c15c], a                                    ; $4342: $ea $5c $c1
	ld a, [hl+]                                      ; $4345: $2a
	ld [$c15d], a                                    ; $4346: $ea $5d $c1
	ld a, [hl+]                                      ; $4349: $2a
	ld [$c15e], a                                    ; $434a: $ea $5e $c1
	ld a, [hl+]                                      ; $434d: $2a
	ld b, a                                          ; $434e: $47
	ld a, [$a39d]                                    ; $434f: $fa $9d $a3
	or b                                             ; $4352: $b0
	ld [$a39d], a                                    ; $4353: $ea $9d $a3
	ld a, [hl+]                                      ; $4356: $2a
	ld b, a                                          ; $4357: $47
	ld a, [$a39e]                                    ; $4358: $fa $9e $a3
	or b                                             ; $435b: $b0
	ld [$a39e], a                                    ; $435c: $ea $9e $a3
	ld a, [hl+]                                      ; $435f: $2a
	ld b, a                                          ; $4360: $47
	ld a, [$a39f]                                    ; $4361: $fa $9f $a3
	or b                                             ; $4364: $b0
	ld [$a39f], a                                    ; $4365: $ea $9f $a3
	ld a, [hl+]                                      ; $4368: $2a
	ld [wMenuOptionSelected], a                                    ; $4369: $ea $5f $c1
	ld a, [hl+]                                      ; $436c: $2a
	ld [$c160], a                                    ; $436d: $ea $60 $c1
	ld a, [hl+]                                      ; $4370: $2a
	ld [$c161], a                                    ; $4371: $ea $61 $c1

Jump_008_4374:
	ld a, [$c144]                                    ; $4374: $fa $44 $c1
	inc a                                            ; $4377: $3c
	ld [$c144], a                                    ; $4378: $ea $44 $c1
	ret                                              ; $437b: $c9


	call $0986                                       ; $437c: $cd $86 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $437f: $cd $ef $2d
	ld a, $1b                                        ; $4382: $3e $1b
	ldh [hDisp0_LCDC], a                                     ; $4384: $e0 $82
	ld a, $04                                        ; $4386: $3e $04
	call $068e                                       ; $4388: $cd $8e $06
	ld hl, $423d                                     ; $438b: $21 $3d $42
	call $0aab                                       ; $438e: $cd $ab $0a
	call Call_008_44b3                               ; $4391: $cd $b3 $44
	ld hl, $9820                                     ; $4394: $21 $20 $98
	ld bc, $0ba4                                     ; $4397: $01 $a4 $0b
	call $390d                                       ; $439a: $cd $0d $39
	ld a, [wInitialA]                                    ; $439d: $fa $00 $c1
	cp $11                                           ; $43a0: $fe $11
	jr nz, jr_008_43ac                               ; $43a2: $20 $08

	ld hl, $9820                                     ; $43a4: $21 $20 $98
	ld b, $0b                                        ; $43a7: $06 $0b
	call $386b                                       ; $43a9: $cd $6b $38

jr_008_43ac:
	call Call_008_453d                               ; $43ac: $cd $3d $45
	ld hl, $9980                                     ; $43af: $21 $80 $99
	ld bc, $0814                                     ; $43b2: $01 $14 $08
	call Call_008_45e5                               ; $43b5: $cd $e5 $45
	call Call_008_455d                               ; $43b8: $cd $5d $45
	call Call_008_4582                               ; $43bb: $cd $82 $45
	ld a, [$c159]                                    ; $43be: $fa $59 $c1
	and $0f                                          ; $43c1: $e6 $0f
	ld hl, $41ad                                     ; $43c3: $21 $ad $41
	call Call_008_450a                               ; $43c6: $cd $0a $45
	ld a, [$c15a]                                    ; $43c9: $fa $5a $c1
	swap a                                           ; $43cc: $cb $37
	and $0f                                          ; $43ce: $e6 $0f
	jr z, jr_008_43d9                                ; $43d0: $28 $07

	dec a                                            ; $43d2: $3d
	ld hl, $41b3                                     ; $43d3: $21 $b3 $41
	call nc, Call_008_450a                           ; $43d6: $d4 $0a $45

jr_008_43d9:
	ld a, [$c15a]                                    ; $43d9: $fa $5a $c1
	and $0f                                          ; $43dc: $e6 $0f
	ld hl, $41b9                                     ; $43de: $21 $b9 $41
	call Call_008_450a                               ; $43e1: $cd $0a $45
	ld a, [$c15b]                                    ; $43e4: $fa $5b $c1
	swap a                                           ; $43e7: $cb $37
	and $0f                                          ; $43e9: $e6 $0f
	jr z, jr_008_43f4                                ; $43eb: $28 $07

	dec a                                            ; $43ed: $3d
	ld hl, $41c3                                     ; $43ee: $21 $c3 $41
	call nc, Call_008_450a                           ; $43f1: $d4 $0a $45

jr_008_43f4:
	ld a, [$c15b]                                    ; $43f4: $fa $5b $c1
	and $0f                                          ; $43f7: $e6 $0f
	ld hl, $41c9                                     ; $43f9: $21 $c9 $41
	call Call_008_450a                               ; $43fc: $cd $0a $45
	ld a, [$c15c]                                    ; $43ff: $fa $5c $c1
	bit 7, a                                         ; $4402: $cb $7f
	jr nz, jr_008_4420                               ; $4404: $20 $1a

	and $0f                                          ; $4406: $e6 $0f
	ld hl, $41d3                                     ; $4408: $21 $d3 $41
	call Call_008_450a                               ; $440b: $cd $0a $45
	ld a, [$c15c]                                    ; $440e: $fa $5c $c1
	swap a                                           ; $4411: $cb $37
	and $07                                          ; $4413: $e6 $07
	jr z, jr_008_4428                                ; $4415: $28 $11

	dec a                                            ; $4417: $3d
	ld hl, $41e5                                     ; $4418: $21 $e5 $41
	call nc, Call_008_450a                           ; $441b: $d4 $0a $45
	jr jr_008_4428                                   ; $441e: $18 $08

jr_008_4420:
	and $0f                                          ; $4420: $e6 $0f
	ld hl, $41eb                                     ; $4422: $21 $eb $41
	call Call_008_450a                               ; $4425: $cd $0a $45

jr_008_4428:
	ld a, [$c15d]                                    ; $4428: $fa $5d $c1
	and $0f                                          ; $442b: $e6 $0f
	ld hl, $988a                                     ; $442d: $21 $8a $98
	ld bc, $060a                                     ; $4430: $01 $0a $06
	ld d, $01                                        ; $4433: $16 $01
	ld e, a                                          ; $4435: $5f
	call Call_008_45af                               ; $4436: $cd $af $45
	ld a, [$c15e]                                    ; $4439: $fa $5e $c1
	or a                                             ; $443c: $b7
	jr z, jr_008_4477                                ; $443d: $28 $38

	and $03                                          ; $443f: $e6 $03
	dec a                                            ; $4441: $3d
	ld hl, $421f                                     ; $4442: $21 $1f $42
	call Call_008_450a                               ; $4445: $cd $0a $45
	ld a, [$c15e]                                    ; $4448: $fa $5e $c1
	sra a                                            ; $444b: $cb $2f
	sra a                                            ; $444d: $cb $2f
	and $03                                          ; $444f: $e6 $03
	dec a                                            ; $4451: $3d
	ld hl, $4229                                     ; $4452: $21 $29 $42
	call Call_008_450a                               ; $4455: $cd $0a $45
	ld a, [$c15e]                                    ; $4458: $fa $5e $c1
	swap a                                           ; $445b: $cb $37
	and $03                                          ; $445d: $e6 $03
	dec a                                            ; $445f: $3d
	ld hl, $4233                                     ; $4460: $21 $33 $42
	call Call_008_450a                               ; $4463: $cd $0a $45
	ld a, [$c159]                                    ; $4466: $fa $59 $c1
	and $0f                                          ; $4469: $e6 $0f
	jr z, jr_008_446e                                ; $446b: $28 $01

	dec a                                            ; $446d: $3d

jr_008_446e:
	ld hl, $4205                                     ; $446e: $21 $05 $42
	call Call_008_450a                               ; $4471: $cd $0a $45
	jp Jump_008_4489                                 ; $4474: $c3 $89 $44


jr_008_4477:
	ld hl, $9920                                     ; $4477: $21 $20 $99
	ld bc, $010a                                     ; $447a: $01 $0a $01
	call Call_008_45e5                               ; $447d: $cd $e5 $45
	ld hl, $9940                                     ; $4480: $21 $40 $99
	ld bc, $0214                                     ; $4483: $01 $14 $02
	call Call_008_45e5                               ; $4486: $cd $e5 $45

Jump_008_4489:
	call $0971                                       ; $4489: $cd $71 $09
	jp Jump_008_4374                                 ; $448c: $c3 $74 $43


	call Call_008_45f5                               ; $448f: $cd $f5 $45
	jp Call_000_1bce                                         ; $4492: $c3 $ce $1b


	ld bc, $67fa                                     ; $4495: $01 $fa $67
	call $188c                                       ; $4498: $cd $8c $18
	jp Jump_008_4374                                 ; $449b: $c3 $74 $43


	call $1983                                       ; $449e: $cd $83 $19
	and a                                            ; $44a1: $a7
	ret nz                                           ; $44a2: $c0

	jp Jump_008_4374                                 ; $44a3: $c3 $74 $43


	xor a                                            ; $44a6: $af
	ld [$c144], a                                    ; $44a7: $ea $44 $c1
	ld a, $00                                        ; $44aa: $3e $00
	ld [$c157], a                                    ; $44ac: $ea $57 $c1
	xor a                                            ; $44af: $af
	jp $068e                                         ; $44b0: $c3 $8e $06


Call_008_44b3:
	ld a, [wInitialA]                                    ; $44b3: $fa $00 $c1
	cp $11                                           ; $44b6: $fe $11
	jr nz, jr_008_44fc                               ; $44b8: $20 $42

	ld bc, $62ba                                     ; $44ba: $01 $ba $62
	call $18c4                                       ; $44bd: $cd $c4 $18
	ld a, [$c159]                                    ; $44c0: $fa $59 $c1
	swap a                                           ; $44c3: $cb $37
	and $0f                                          ; $44c5: $e6 $0f
	ld bc, $4698                                     ; $44c7: $01 $98 $46
	dec a                                            ; $44ca: $3d
	jr z, jr_008_44d9                                ; $44cb: $28 $0c

	ld bc, $46a1                                     ; $44cd: $01 $a1 $46
	dec a                                            ; $44d0: $3d
	jr z, jr_008_44d9                                ; $44d1: $28 $06

	ld bc, $46aa                                     ; $44d3: $01 $aa $46
	dec a                                            ; $44d6: $3d
	jr nz, jr_008_44de                               ; $44d7: $20 $05

jr_008_44d9:
	ld a, $02                                        ; $44d9: $3e $02
	call $1931                                       ; $44db: $cd $31 $19

jr_008_44de:
	ld a, [$c15d]                                    ; $44de: $fa $5d $c1
	swap a                                           ; $44e1: $cb $37
	and $0f                                          ; $44e3: $e6 $0f
	ld bc, $46b3                                     ; $44e5: $01 $b3 $46
	dec a                                            ; $44e8: $3d
	jr z, jr_008_44f7                                ; $44e9: $28 $0c

	ld bc, $46bc                                     ; $44eb: $01 $bc $46
	dec a                                            ; $44ee: $3d
	jr z, jr_008_44f7                                ; $44ef: $28 $06

	ld bc, $46c5                                     ; $44f1: $01 $c5 $46
	dec a                                            ; $44f4: $3d
	jr nz, jr_008_44fc                               ; $44f5: $20 $05

jr_008_44f7:
	ld a, $03                                        ; $44f7: $3e $03
	call $1926                                       ; $44f9: $cd $26 $19

jr_008_44fc:
	ld a, $e4                                        ; $44fc: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $44fe: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $4500: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $4502: $e0 $87
	ld bc, $6818                                     ; $4504: $01 $18 $68
	jp $188c                                         ; $4507: $c3 $8c $18


Call_008_450a:
	ld c, a                                          ; $450a: $4f
	sla a                                            ; $450b: $cb $27
	add c                                            ; $450d: $81
	ld c, a                                          ; $450e: $4f
	ld b, $00                                        ; $450f: $06 $00

jr_008_4511:
	ld a, [hl+]                                      ; $4511: $2a
	ld d, a                                          ; $4512: $57
	ld a, [hl+]                                      ; $4513: $2a
	ld e, a                                          ; $4514: $5f
	or d                                             ; $4515: $b2
	ret z                                            ; $4516: $c8

	ld a, d                                          ; $4517: $7a
	ld [$c154], a                                    ; $4518: $ea $54 $c1
	ld a, e                                          ; $451b: $7b
	ld [$c155], a                                    ; $451c: $ea $55 $c1
	ld a, [hl+]                                      ; $451f: $2a
	ld d, a                                          ; $4520: $57
	ld a, [hl+]                                      ; $4521: $2a
	push hl                                          ; $4522: $e5
	ld h, a                                          ; $4523: $67
	ld l, d                                          ; $4524: $6a
	add hl, bc                                       ; $4525: $09
	ld a, [hl+]                                      ; $4526: $2a
	ld [$c151], a                                    ; $4527: $ea $51 $c1
	ld a, [hl+]                                      ; $452a: $2a
	ld [$c152], a                                    ; $452b: $ea $52 $c1
	ld a, [hl+]                                      ; $452e: $2a
	ld [$c153], a                                    ; $452f: $ea $53 $c1
	ld hl, $c150                                     ; $4532: $21 $50 $c1
	push bc                                          ; $4535: $c5
	call $0aab                                       ; $4536: $cd $ab $0a
	pop bc                                           ; $4539: $c1
	pop hl                                           ; $453a: $e1
	jr jr_008_4511                                   ; $453b: $18 $d4

Call_008_453d:
	ld a, $00                                        ; $453d: $3e $00
	ld b, $09                                        ; $453f: $06 $09
	ld hl, $9800                                     ; $4541: $21 $00 $98

jr_008_4544:
	ld [hl+], a                                      ; $4544: $22
	inc a                                            ; $4545: $3c
	dec b                                            ; $4546: $05
	jr nz, jr_008_4544                               ; $4547: $20 $fb

	ld a, $a0                                        ; $4549: $3e $a0
	ld b, $0b                                        ; $454b: $06 $0b

jr_008_454d:
	ld [hl+], a                                      ; $454d: $22
	dec b                                            ; $454e: $05
	jr nz, jr_008_454d                               ; $454f: $20 $fc

	ld hl, $9800                                     ; $4551: $21 $00 $98
	ld bc, $0114                                     ; $4554: $01 $14 $01
	ld de, $0102                                     ; $4557: $11 $02 $01
	jp Jump_008_45af                                 ; $455a: $c3 $af $45


Call_008_455d:
	ld a, $09                                        ; $455d: $3e $09
	ld hl, $9980                                     ; $455f: $21 $80 $99
	ld de, $001a                                     ; $4562: $11 $1a $00
	ld b, $03                                        ; $4565: $06 $03
	ld c, $06                                        ; $4567: $0e $06

jr_008_4569:
	ld [hl+], a                                      ; $4569: $22
	inc a                                            ; $456a: $3c
	dec c                                            ; $456b: $0d
	jr nz, jr_008_4569                               ; $456c: $20 $fb

	add hl, de                                       ; $456e: $19
	ld e, $1e                                        ; $456f: $1e $1e
	ld c, $02                                        ; $4571: $0e $02
	dec b                                            ; $4573: $05
	jr nz, jr_008_4569                               ; $4574: $20 $f3

	ld hl, $9980                                     ; $4576: $21 $80 $99
	ld bc, $0306                                     ; $4579: $01 $06 $03
	ld de, $0107                                     ; $457c: $11 $07 $01
	jp Jump_008_45af                                 ; $457f: $c3 $af $45


Call_008_4582:
	ld de, $000f                                     ; $4582: $11 $0f $00
	ld c, $50                                        ; $4585: $0e $50
	ld hl, $99a2                                     ; $4587: $21 $a2 $99

jr_008_458a:
	ld a, c                                          ; $458a: $79
	inc c                                            ; $458b: $0c
	ld b, $11                                        ; $458c: $06 $11

jr_008_458e:
	ld [hl+], a                                      ; $458e: $22
	inc a                                            ; $458f: $3c
	inc a                                            ; $4590: $3c
	dec b                                            ; $4591: $05
	jr nz, jr_008_458e                               ; $4592: $20 $fa

	add hl, de                                       ; $4594: $19
	cp $73                                           ; $4595: $fe $73
	jr z, jr_008_459f                                ; $4597: $28 $06

	cp $97                                           ; $4599: $fe $97
	jr z, jr_008_45a3                                ; $459b: $28 $06

	jr jr_008_458a                                   ; $459d: $18 $eb

jr_008_459f:
	ld c, $74                                        ; $459f: $0e $74
	jr jr_008_458a                                   ; $45a1: $18 $e7

jr_008_45a3:
	ld hl, $99a2                                     ; $45a3: $21 $a2 $99
	ld bc, $0411                                     ; $45a6: $01 $11 $04
	ld de, $0107                                     ; $45a9: $11 $07 $01
	jp Jump_008_45af                                 ; $45ac: $c3 $af $45


Call_008_45af:
Jump_008_45af:
	xor a                                            ; $45af: $af
	push af                                          ; $45b0: $f5
	or d                                             ; $45b1: $b2
	jr z, jr_008_45c2                                ; $45b2: $28 $0e

	ld a, [wInitialA]                                    ; $45b4: $fa $00 $c1
	cp $11                                           ; $45b7: $fe $11
	jr nz, jr_008_45df                               ; $45b9: $20 $24

	ld a, $01                                        ; $45bb: $3e $01
	ldh [rVBK], a                                    ; $45bd: $e0 $4f
	pop af                                           ; $45bf: $f1
	scf                                              ; $45c0: $37
	push af                                          ; $45c1: $f5

jr_008_45c2:
	ld d, e                                          ; $45c2: $53
	ld a, $20                                        ; $45c3: $3e $20
	sub c                                            ; $45c5: $91
	ld e, a                                          ; $45c6: $5f
	ld a, d                                          ; $45c7: $7a
	ld d, c                                          ; $45c8: $51

jr_008_45c9:
	push af                                          ; $45c9: $f5
	di                                               ; $45ca: $f3

jr_008_45cb:
	ldh a, [rSTAT]                                   ; $45cb: $f0 $41
	bit 1, a                                         ; $45cd: $cb $4f
	jr nz, jr_008_45cb                               ; $45cf: $20 $fa

	pop af                                           ; $45d1: $f1
	ld [hl+], a                                      ; $45d2: $22
	ei                                               ; $45d3: $fb
	dec c                                            ; $45d4: $0d
	jr nz, jr_008_45c9                               ; $45d5: $20 $f2

	ld c, d                                          ; $45d7: $4a
	ld d, $00                                        ; $45d8: $16 $00
	add hl, de                                       ; $45da: $19
	ld d, c                                          ; $45db: $51
	dec b                                            ; $45dc: $05
	jr nz, jr_008_45c9                               ; $45dd: $20 $ea

jr_008_45df:
	pop af                                           ; $45df: $f1
	ret nc                                           ; $45e0: $d0

	xor a                                            ; $45e1: $af
	ldh [rVBK], a                                    ; $45e2: $e0 $4f
	ret                                              ; $45e4: $c9


Call_008_45e5:
	push hl                                          ; $45e5: $e5
	push bc                                          ; $45e6: $c5
	ld de, $00a0                                     ; $45e7: $11 $a0 $00
	call Call_008_45af                               ; $45ea: $cd $af $45
	pop bc                                           ; $45ed: $c1
	pop hl                                           ; $45ee: $e1
	ld de, $0102                                     ; $45ef: $11 $02 $01
	jp Jump_008_45af                                 ; $45f2: $c3 $af $45


Call_008_45f5:
	ld a, [$c158]                                    ; $45f5: $fa $58 $c1
	rst JumpTable                                          ; $45f8: $c7
	ld d, $46                                        ; $45f9: $16 $46
	inc bc                                           ; $45fb: $03
	ld b, [hl]                                       ; $45fc: $46
	jr nc, jr_008_4645                               ; $45fd: $30 $46

	inc bc                                           ; $45ff: $03
	ld b, [hl]                                       ; $4600: $46
	db $10                                           ; $4601: $10
	ld b, [hl]                                       ; $4602: $46
	ld a, [$d811]                                    ; $4603: $fa $11 $d8
	and a                                            ; $4606: $a7
	ret nz                                           ; $4607: $c0

Jump_008_4608:
	ld a, [$c158]                                    ; $4608: $fa $58 $c1
	inc a                                            ; $460b: $3c
	ld [$c158], a                                    ; $460c: $ea $58 $c1
	ret                                              ; $460f: $c9


	call $1bef                                       ; $4610: $cd $ef $1b
	jp Jump_008_4374                                 ; $4613: $c3 $74 $43


	ld a, [wMenuOptionSelected]                                    ; $4616: $fa $5f $c1
	ld [wShiftedFarTextByteBank], a                                    ; $4619: $ea $08 $d8
	ld a, [$c160]                                    ; $461c: $fa $60 $c1
	ld [wShiftedFarTextByteAddr], a                                    ; $461f: $ea $06 $d8
	ld a, [$c161]                                    ; $4622: $fa $61 $c1
	ld [wShiftedFarTextByteAddr+1], a                                    ; $4625: $ea $07 $d8
	ld a, $02                                        ; $4628: $3e $02
	ld [$d811], a                                    ; $462a: $ea $11 $d8
	jp Jump_008_4608                                 ; $462d: $c3 $08 $46


	ld hl, $0020                                     ; $4630: $21 $20 $00
	call Func_1ceb                                       ; $4633: $cd $eb $1c
	xor a                                            ; $4636: $af
	ld [wUseRulesForTextLine1stOrLastChar], a                                    ; $4637: $ea $0f $d8
	ld a, [wShiftedFarTextByteAddr]                                    ; $463a: $fa $06 $d8
	ld l, a                                          ; $463d: $6f
	ld a, [wShiftedFarTextByteAddr+1]                                    ; $463e: $fa $07 $d8
	ld h, a                                          ; $4641: $67
	ld a, [wShiftedFarTextByteBank]                                    ; $4642: $fa $08 $d8

jr_008_4645:
	ld b, a                                          ; $4645: $47
	call Func_1c32                                       ; $4646: $cd $32 $1c
	jp Jump_008_4608                                 ; $4649: $c3 $08 $46


	inc hl                                           ; $464c: $23
	ld bc, $0100                                     ; $464d: $01 $00 $01
	inc h                                            ; $4650: $24
	nop                                              ; $4651: $00
	ld bc, $00f9                                     ; $4652: $01 $f9 $00
	ld bc, $0025                                     ; $4655: $01 $25 $00
	ld bc, $00f9                                     ; $4658: $01 $f9 $00
	ld bc, $0026                                     ; $465b: $01 $26 $00
	dec b                                            ; $465e: $05
	daa                                              ; $465f: $27
	nop                                              ; $4660: $00
	ld bc, $002c                                     ; $4661: $01 $2c $00
	ld bc, $00f9                                     ; $4664: $01 $f9 $00
	ld bc, $002d                                     ; $4667: $01 $2d $00
	ld bc, $00f9                                     ; $466a: $01 $f9 $00
	ld bc, $002e                                     ; $466d: $01 $2e $00
	inc d                                            ; $4670: $14
	add hl, sp                                       ; $4671: $39
	nop                                              ; $4672: $00
	dec b                                            ; $4673: $05
	ld e, b                                          ; $4674: $58
	nop                                              ; $4675: $00
	add hl, bc                                       ; $4676: $09
	cpl                                              ; $4677: $2f
	nop                                              ; $4678: $00
	ld bc, $0038                                     ; $4679: $01 $38 $00
	nop                                              ; $467c: $00
	inc hl                                           ; $467d: $23
	ld l, h                                          ; $467e: $6c
	nop                                              ; $467f: $00
	ld bc, $008f                                     ; $4680: $01 $8f $00
	ld bc, $00f9                                     ; $4683: $01 $f9 $00
	ld bc, $0090                                     ; $4686: $01 $90 $00
	ld bc, $00f9                                     ; $4689: $01 $f9 $00
	ld bc, $0091                                     ; $468c: $01 $91 $00
	dec b                                            ; $468f: $05
	sub d                                            ; $4690: $92
	nop                                              ; $4691: $00
	ld bc, $0097                                     ; $4692: $01 $97 $00
	ld bc, $00f9                                     ; $4695: $01 $f9 $00
	ld bc, $0098                                     ; $4698: $01 $98 $00
	ld bc, $00f9                                     ; $469b: $01 $f9 $00
	ld bc, $0099                                     ; $469e: $01 $99 $00
	add hl, de                                       ; $46a1: $19
	and h                                            ; $46a2: $a4
	nop                                              ; $46a3: $00
	add hl, bc                                       ; $46a4: $09
	sbc d                                            ; $46a5: $9a
	nop                                              ; $46a6: $00
	ld bc, $0038                                     ; $46a7: $01 $38 $00
	ld bc, $00a3                                     ; $46aa: $01 $a3 $00
	nop                                              ; $46ad: $00
	ld a, [de]                                       ; $46ae: $1a
	cp l                                             ; $46af: $bd
	nop                                              ; $46b0: $00
	ld bc, $00f9                                     ; $46b1: $01 $f9 $00
	ld bc, $00f9                                     ; $46b4: $01 $f9 $00
	ld bc, $00f9                                     ; $46b7: $01 $f9 $00
	ld bc, $00f9                                     ; $46ba: $01 $f9 $00
	ld bc, $00f9                                     ; $46bd: $01 $f9 $00
	ld bc, $00f9                                     ; $46c0: $01 $f9 $00
	ld bc, $00f9                                     ; $46c3: $01 $f9 $00
	ld bc, $00f9                                     ; $46c6: $01 $f9 $00
	ld a, [de]                                       ; $46c9: $1a
	rst SubAFromHL                                          ; $46ca: $d7
	nop                                              ; $46cb: $00
	ld bc, $00f9                                     ; $46cc: $01 $f9 $00
	ld bc, $00f9                                     ; $46cf: $01 $f9 $00
	ld bc, $00f9                                     ; $46d2: $01 $f9 $00
	ld bc, $00f9                                     ; $46d5: $01 $f9 $00
	ld bc, $00f9                                     ; $46d8: $01 $f9 $00
	ld bc, $00f9                                     ; $46db: $01 $f9 $00
	ld bc, $00f9                                     ; $46de: $01 $f9 $00
	ld bc, $00f9                                     ; $46e1: $01 $f9 $00
	ld a, [bc]                                       ; $46e4: $0a
	ld c, l                                          ; $46e5: $4d
	nop                                              ; $46e6: $00
	ld bc, $00f9                                     ; $46e7: $01 $f9 $00
	ld bc, $00f9                                     ; $46ea: $01 $f9 $00
	ld bc, $00f9                                     ; $46ed: $01 $f9 $00
	ld bc, $00f9                                     ; $46f0: $01 $f9 $00
	ld bc, $00f9                                     ; $46f3: $01 $f9 $00
	ld bc, $00f9                                     ; $46f6: $01 $f9 $00
	ld bc, $00f9                                     ; $46f9: $01 $f9 $00
	ld [bc], a                                       ; $46fc: $02
	ld e, l                                          ; $46fd: $5d
	nop                                              ; $46fe: $00
	ld [$00f1], sp                                   ; $46ff: $08 $f1 $00
	nop                                              ; $4702: $00
	add hl, hl                                       ; $4703: $29
	nop                                              ; $4704: $00
	ld e, d                                          ; $4705: $5a
	ld [bc], a                                       ; $4706: $02
	ld a, [hl-]                                      ; $4707: $3a
	nop                                              ; $4708: $00
	add e                                            ; $4709: $83
	ld [bc], a                                       ; $470a: $02
	dec de                                           ; $470b: $1b
	nop                                              ; $470c: $00
	cp l                                             ; $470d: $bd
	ld [bc], a                                       ; $470e: $02
	ld [hl], $00                                     ; $470f: $36 $00
	ret c                                            ; $4711: $d8

	ld [bc], a                                       ; $4712: $02
	inc hl                                           ; $4713: $23
	nop                                              ; $4714: $00
	ld c, $03                                        ; $4715: $0e $03
	db $eb                                           ; $4717: $eb
	nop                                              ; $4718: $00
	ld sp, $b603                                     ; $4719: $31 $03 $b6
	nop                                              ; $471c: $00
	inc e                                            ; $471d: $1c
	inc b                                            ; $471e: $04
	ld l, $00                                        ; $471f: $2e $00
	jp nc, Jump_008_6c04                             ; $4721: $d2 $04 $6c

	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	dec b                                            ; $4726: $05
	xor h                                            ; $4727: $ac
	nop                                              ; $4728: $00
	ld l, h                                          ; $4729: $6c
	dec b                                            ; $472a: $05
	ld [hl], b                                       ; $472b: $70
	nop                                              ; $472c: $00
	jr jr_008_4735                                   ; $472d: $18 $06

	adc [hl]                                         ; $472f: $8e
	ld bc, $0688                                     ; $4730: $01 $88 $06
	daa                                              ; $4733: $27
	nop                                              ; $4734: $00

jr_008_4735:
	ld d, $08                                        ; $4735: $16 $08
	ld [hl], e                                       ; $4737: $73
	nop                                              ; $4738: $00
	dec a                                            ; $4739: $3d
	ld [$0063], sp                                   ; $473a: $08 $63 $00
	or b                                             ; $473d: $b0
	ld [$006d], sp                                   ; $473e: $08 $6d $00
	inc de                                           ; $4741: $13
	add hl, bc                                       ; $4742: $09
	ld d, [hl]                                       ; $4743: $56
	nop                                              ; $4744: $00
	add b                                            ; $4745: $80
	add hl, bc                                       ; $4746: $09
	dec e                                            ; $4747: $1d
	nop                                              ; $4748: $00
	sub $09                                          ; $4749: $d6 $09
	ld b, d                                          ; $474b: $42
	nop                                              ; $474c: $00
	di                                               ; $474d: $f3
	add hl, bc                                       ; $474e: $09
	ld a, b                                          ; $474f: $78
	nop                                              ; $4750: $00
	dec [hl]                                         ; $4751: $35
	ld a, [bc]                                       ; $4752: $0a
	inc de                                           ; $4753: $13
	nop                                              ; $4754: $00
	xor l                                            ; $4755: $ad
	ld a, [bc]                                       ; $4756: $0a
	inc de                                           ; $4757: $13
	nop                                              ; $4758: $00
	ret nz                                           ; $4759: $c0

	ld a, [bc]                                       ; $475a: $0a
	ld bc, $d300                                     ; $475b: $01 $00 $d3
	ld a, [bc]                                       ; $475e: $0a
	inc c                                            ; $475f: $0c
	nop                                              ; $4760: $00
	call nc, $0e0a                                   ; $4761: $d4 $0a $0e
	nop                                              ; $4764: $00
	ldh [$0a], a                                     ; $4765: $e0 $0a
	halt                                             ; $4767: $76
	nop                                              ; $4768: $00
	xor $0a                                          ; $4769: $ee $0a
	ld d, a                                          ; $476b: $57
	nop                                              ; $476c: $00
	ld h, h                                          ; $476d: $64
	dec bc                                           ; $476e: $0b
	ld b, h                                          ; $476f: $44
	nop                                              ; $4770: $00
	cp e                                             ; $4771: $bb
	dec bc                                           ; $4772: $0b
	inc hl                                           ; $4773: $23
	nop                                              ; $4774: $00
	rst $38                                          ; $4775: $ff
	dec bc                                           ; $4776: $0b
	ld h, c                                          ; $4777: $61
	nop                                              ; $4778: $00
	ld [hl+], a                                      ; $4779: $22
	inc c                                            ; $477a: $0c
	ld hl, $8300                                     ; $477b: $21 $00 $83
	inc c                                            ; $477e: $0c
	stop                                             ; $477f: $10 $00
	and h                                            ; $4781: $a4
	inc c                                            ; $4782: $0c
	ld a, [bc]                                       ; $4783: $0a
	nop                                              ; $4784: $00
	or h                                             ; $4785: $b4
	inc c                                            ; $4786: $0c
	ld de, $be00                                     ; $4787: $11 $00 $be
	inc c                                            ; $478a: $0c
	dec de                                           ; $478b: $1b
	nop                                              ; $478c: $00
	rst GetHLinHL                                          ; $478d: $cf
	inc c                                            ; $478e: $0c
	ld [de], a                                       ; $478f: $12
	nop                                              ; $4790: $00
	ld [$200c], a                                    ; $4791: $ea $0c $20
	nop                                              ; $4794: $00
	db $fc                                           ; $4795: $fc
	inc c                                            ; $4796: $0c
	jr z, jr_008_4799                                ; $4797: $28 $00

jr_008_4799:
	inc e                                            ; $4799: $1c
	dec c                                            ; $479a: $0d
	inc de                                           ; $479b: $13
	nop                                              ; $479c: $00
	ld b, h                                          ; $479d: $44
	dec c                                            ; $479e: $0d
	ld b, d                                          ; $479f: $42
	nop                                              ; $47a0: $00
	ld d, a                                          ; $47a1: $57
	dec c                                            ; $47a2: $0d
	dec b                                            ; $47a3: $05
	nop                                              ; $47a4: $00
	sbc c                                            ; $47a5: $99
	dec c                                            ; $47a6: $0d
	ld hl, $9e00                                     ; $47a7: $21 $00 $9e
	dec c                                            ; $47aa: $0d
	dec e                                            ; $47ab: $1d
	nop                                              ; $47ac: $00
	cp a                                             ; $47ad: $bf
	dec c                                            ; $47ae: $0d
	inc de                                           ; $47af: $13
	nop                                              ; $47b0: $00
	call c, $ff0d                                    ; $47b1: $dc $0d $ff
	rst $38                                          ; $47b4: $ff
	ld e, $69                                        ; $47b5: $1e $69
	add c                                            ; $47b7: $81
	ld e, $6d                                        ; $47b8: $1e $6d
	add c                                            ; $47ba: $81
	ld e, $71                                        ; $47bb: $1e $71
	add c                                            ; $47bd: $81
	ld e, $76                                        ; $47be: $1e $76
	add c                                            ; $47c0: $81
	ld e, $76                                        ; $47c1: $1e $76
	add b                                            ; $47c3: $80
	ld e, $96                                        ; $47c4: $1e $96
	add b                                            ; $47c6: $80
	ld e, $a6                                        ; $47c7: $1e $a6
	add b                                            ; $47c9: $80
	ld e, $b5                                        ; $47ca: $1e $b5
	add b                                            ; $47cc: $80
	ld e, $c5                                        ; $47cd: $1e $c5
	add b                                            ; $47cf: $80
	ld e, $d9                                        ; $47d0: $1e $d9
	add b                                            ; $47d2: $80
	ld e, $ec                                        ; $47d3: $1e $ec
	add b                                            ; $47d5: $80
	ld e, $00                                        ; $47d6: $1e $00
	add c                                            ; $47d8: $81
	ld e, $1b                                        ; $47d9: $1e $1b
	ld e, $1d                                        ; $47db: $1e $1d
	ld e, $1d                                        ; $47dd: $1e $1d
	ld e, $1e                                        ; $47df: $1e $1e
	dec e                                            ; $47e1: $1d
	ld e, $1d                                        ; $47e2: $1e $1d
	ld e, $00                                        ; $47e4: $1e $00
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	nop                                              ; $47ee: $00
	nop                                              ; $47ef: $00
	nop                                              ; $47f0: $00
	ld a, [hl]                                       ; $47f1: $7e
	ld a, [hl]                                       ; $47f2: $7e
	ld a, [hl]                                       ; $47f3: $7e
	ld a, [hl]                                       ; $47f4: $7e
	db $fc                                           ; $47f5: $fc
	db $fc                                           ; $47f6: $fc
	add b                                            ; $47f7: $80
	add b                                            ; $47f8: $80
	add b                                            ; $47f9: $80
	add b                                            ; $47fa: $80
	add b                                            ; $47fb: $80
	add b                                            ; $47fc: $80
	add b                                            ; $47fd: $80
	add b                                            ; $47fe: $80
	add b                                            ; $47ff: $80
	add b                                            ; $4800: $80
	add b                                            ; $4801: $80
	add b                                            ; $4802: $80
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	ld sp, hl                                        ; $4805: $f9
	ld de, $45a5                                     ; $4806: $11 $a5 $45
	ldh [hDisp0_WY], a                                     ; $4809: $e0 $88
	rst $38                                          ; $480b: $ff
	ld a, [$c145]                                    ; $480c: $fa $45 $c1
	rst JumpTable                                          ; $480f: $c7
	inc e                                            ; $4810: $1c
	ld c, b                                          ; $4811: $48
	sub h                                            ; $4812: $94
	ld c, b                                          ; $4813: $48
	cp l                                             ; $4814: $bd
	ld c, b                                          ; $4815: $48
	reti                                             ; $4816: $d9


	ld c, b                                          ; $4817: $48
	rst SubAFromBC                                          ; $4818: $e7
	ld c, b                                          ; $4819: $48
	rst AddAOntoHL                                          ; $481a: $ef
	ld c, b                                          ; $481b: $48
	ld a, $01                                        ; $481c: $3e $01
	ld [$c150], a                                    ; $481e: $ea $50 $c1
	call $0986                                       ; $4821: $cd $86 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4824: $cd $ef $2d
	ld hl, $c162                                     ; $4827: $21 $62 $c1
	ld b, $0b                                        ; $482a: $06 $0b
	ld de, $00f9                                     ; $482c: $11 $f9 $00

jr_008_482f:
	ld [hl], e                                       ; $482f: $73
	inc hl                                           ; $4830: $23
	ld [hl], d                                       ; $4831: $72
	inc hl                                           ; $4832: $23
	dec b                                            ; $4833: $05
	jr nz, jr_008_482f                               ; $4834: $20 $f9

	ld hl, $a21a                                     ; $4836: $21 $1a $a2
	call Call_008_5433                               ; $4839: $cd $33 $54
	ld hl, $a21f                                     ; $483c: $21 $1f $a2
	call Call_008_5433                               ; $483f: $cd $33 $54
	call Call_008_540e                               ; $4842: $cd $0e $54
	ld hl, $8a40                                     ; $4845: $21 $40 $8a
	ld bc, $0dc0                                     ; $4848: $01 $c0 $0d
	call Call_008_4cd0                               ; $484b: $cd $d0 $4c
	ld hl, $8000                                     ; $484e: $21 $00 $80
	ld bc, $08c0                                     ; $4851: $01 $c0 $08
	call Call_008_4cd0                               ; $4854: $cd $d0 $4c
	call Call_008_4d04                               ; $4857: $cd $04 $4d
	ld a, $00                                        ; $485a: $3e $00
	ld [$d7f9], a                                    ; $485c: $ea $f9 $d7
	ld a, $03                                        ; $485f: $3e $03
	ld [$d7fa], a                                    ; $4861: $ea $fa $d7
	call Call_008_51d4                               ; $4864: $cd $d4 $51
	ld a, $e4                                        ; $4867: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $4869: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $486b: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $486d: $e0 $87
	ld bc, $46ce                                     ; $486f: $01 $ce $46
	xor a                                            ; $4872: $af
	call $1931                                       ; $4873: $cd $31 $19
	ldh a, [hDisp0_LCDC]                                     ; $4876: $f0 $82
	and $23                                          ; $4878: $e6 $23
	or $03                                           ; $487a: $f6 $03
	ldh [hDisp0_LCDC], a                                     ; $487c: $e0 $82
	ld a, $05                                        ; $487e: $3e $05
	call $068e                                       ; $4880: $cd $8e $06
	call $096e                                       ; $4883: $cd $6e $09

Jump_008_4886:
jr_008_4886:
	ld a, [$c145]                                    ; $4886: $fa $45 $c1
	inc a                                            ; $4889: $3c
	ld [$c145], a                                    ; $488a: $ea $45 $c1
	ret                                              ; $488d: $c9


Jump_008_488e:
	ld a, $03                                        ; $488e: $3e $03
	ld [$c145], a                                    ; $4890: $ea $45 $c1
	ret                                              ; $4893: $c9


	xor a                                            ; $4894: $af
	ld [$c151], a                                    ; $4895: $ea $51 $c1
	ld [$c152], a                                    ; $4898: $ea $52 $c1
	ld [$c157], a                                    ; $489b: $ea $57 $c1
	ld [$c153], a                                    ; $489e: $ea $53 $c1
	ld [$c154], a                                    ; $48a1: $ea $54 $c1
	ld [$c155], a                                    ; $48a4: $ea $55 $c1
	ld [$c156], a                                    ; $48a7: $ea $56 $c1
	ld a, $0f                                        ; $48aa: $3e $0f
	ld [$c15d], a                                    ; $48ac: $ea $5d $c1
	ld hl, $8cc0                                     ; $48af: $21 $c0 $8c
	call Call_008_509f                               ; $48b2: $cd $9f $50
	ld hl, $8500                                     ; $48b5: $21 $00 $85
	call Call_008_509f                               ; $48b8: $cd $9f $50
	jr jr_008_4886                                   ; $48bb: $18 $c9

	call Call_008_52de                               ; $48bd: $cd $de $52
	call Call_008_5239                               ; $48c0: $cd $39 $52
	call Call_008_52b2                               ; $48c3: $cd $b2 $52
	call Call_008_50b8                               ; $48c6: $cd $b8 $50
	ld a, [$c151]                                    ; $48c9: $fa $51 $c1
	rst JumpTable                                          ; $48cc: $c7
	rlca                                             ; $48cd: $07
	ld c, c                                          ; $48ce: $49
	rlca                                             ; $48cf: $07
	ld c, c                                          ; $48d0: $49
	rlca                                             ; $48d1: $07
	ld c, c                                          ; $48d2: $49
	ld de, $1149                                     ; $48d3: $11 $49 $11
	ld c, c                                          ; $48d6: $49
	and h                                            ; $48d7: $a4
	ld c, c                                          ; $48d8: $49
	ld a, $20                                        ; $48d9: $3e $20
	ld [$c2c7], a                                    ; $48db: $ea $c7 $c2
	ld bc, $6802                                     ; $48de: $01 $02 $68
	call $188c                                       ; $48e1: $cd $8c $18
	jp Jump_008_4886                                 ; $48e4: $c3 $86 $48


	call $1983                                       ; $48e7: $cd $83 $19
	and a                                            ; $48ea: $a7
	ret nz                                           ; $48eb: $c0

	jp Jump_008_4886                                 ; $48ec: $c3 $86 $48


	ld a, $00                                        ; $48ef: $3e $00
	call $1e2e                                       ; $48f1: $cd $2e $1e
	call Call_008_5315                               ; $48f4: $cd $15 $53
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $48f7: $cd $ef $2d
	xor a                                            ; $48fa: $af
	ld [$c145], a                                    ; $48fb: $ea $45 $c1
	ld a, $00                                        ; $48fe: $3e $00
	ld [$c150], a                                    ; $4900: $ea $50 $c1
	xor a                                            ; $4903: $af
	jp $068e                                         ; $4904: $c3 $8e $06


	call Call_008_4ca0                               ; $4907: $cd $a0 $4c
	call nc, Call_008_4b93                           ; $490a: $d4 $93 $4b
	call nc, Call_008_4bf2                           ; $490d: $d4 $f2 $4b
	ret                                              ; $4910: $c9


	call Call_008_49fd                               ; $4911: $cd $fd $49
	ld a, [wButtonsPressed]                                    ; $4914: $fa $25 $c1
	bit 4, a                                         ; $4917: $cb $67
	jr nz, jr_008_496a                               ; $4919: $20 $4f

	bit 5, a                                         ; $491b: $cb $6f
	jr nz, jr_008_4981                               ; $491d: $20 $62

	bit 7, a                                         ; $491f: $cb $7f
	jr nz, jr_008_496a                               ; $4921: $20 $47

	ld a, [$d350]                                    ; $4923: $fa $50 $d3
	bit 2, a                                         ; $4926: $cb $57
	jr nz, jr_008_4937                               ; $4928: $20 $0d

	bit 3, a                                         ; $492a: $cb $5f
	jr nz, jr_008_493f                               ; $492c: $20 $11

	bit 1, a                                         ; $492e: $cb $4f
	jr nz, jr_008_494f                               ; $4930: $20 $1d

	bit 0, a                                         ; $4932: $cb $47
	jr nz, jr_008_4959                               ; $4934: $20 $23

	ret                                              ; $4936: $c9


jr_008_4937:
	ld a, [$c155]                                    ; $4937: $fa $55 $c1
	or a                                             ; $493a: $b7
	ret z                                            ; $493b: $c8

	dec a                                            ; $493c: $3d
	jr jr_008_4946                                   ; $493d: $18 $07

jr_008_493f:
	ld a, [$c155]                                    ; $493f: $fa $55 $c1
	inc a                                            ; $4942: $3c
	cp $03                                           ; $4943: $fe $03
	ret z                                            ; $4945: $c8

jr_008_4946:
	ld [$c155], a                                    ; $4946: $ea $55 $c1
	ld a, $40                                        ; $4949: $3e $40
	ld [$c15d], a                                    ; $494b: $ea $5d $c1
	ret                                              ; $494e: $c9


jr_008_494f:
	ld a, [hl]                                       ; $494f: $7e
	or a                                             ; $4950: $b7
	jr nz, jr_008_4956                               ; $4951: $20 $03

	ld a, [$c178]                                    ; $4953: $fa $78 $c1

jr_008_4956:
	dec a                                            ; $4956: $3d
	jr jr_008_4963                                   ; $4957: $18 $0a

jr_008_4959:
	ld a, [$c178]                                    ; $4959: $fa $78 $c1
	ld b, a                                          ; $495c: $47
	ld a, [hl]                                       ; $495d: $7e
	inc a                                            ; $495e: $3c
	cp b                                             ; $495f: $b8
	jr c, jr_008_4963                                ; $4960: $38 $01

	xor a                                            ; $4962: $af

jr_008_4963:
	ld [hl], a                                       ; $4963: $77
	ld a, $10                                        ; $4964: $3e $10
	ld [$c15d], a                                    ; $4966: $ea $5d $c1
	ret                                              ; $4969: $c9


jr_008_496a:
	call Call_008_540e                               ; $496a: $cd $0e $54
	ld a, [$c151]                                    ; $496d: $fa $51 $c1
	inc a                                            ; $4970: $3c
	ld [$c151], a                                    ; $4971: $ea $51 $c1
	ld a, [$c151]                                    ; $4974: $fa $51 $c1
	cp $05                                           ; $4977: $fe $05
	jr z, jr_008_4995                                ; $4979: $28 $1a

	ld a, $14                                        ; $497b: $3e $14
	ld [$c15d], a                                    ; $497d: $ea $5d $c1
	ret                                              ; $4980: $c9


jr_008_4981:
	ld a, [$c151]                                    ; $4981: $fa $51 $c1
	dec a                                            ; $4984: $3d
	ld [$c151], a                                    ; $4985: $ea $51 $c1
	ld a, [$c151]                                    ; $4988: $fa $51 $c1
	cp $02                                           ; $498b: $fe $02
	jr z, jr_008_4999                                ; $498d: $28 $0a

	ld a, $14                                        ; $498f: $3e $14
	ld [$c15d], a                                    ; $4991: $ea $5d $c1
	ret                                              ; $4994: $c9


jr_008_4995:
	xor a                                            ; $4995: $af
	ld [$c155], a                                    ; $4996: $ea $55 $c1

jr_008_4999:
	ld a, $0f                                        ; $4999: $3e $0f
	ld [$c15d], a                                    ; $499b: $ea $5d $c1
	ld a, $04                                        ; $499e: $3e $04
	ld [$c156], a                                    ; $49a0: $ea $56 $c1
	ret                                              ; $49a3: $c9


	ld a, [wButtonsPressed]                                    ; $49a4: $fa $25 $c1
	bit 4, a                                         ; $49a7: $cb $67
	jr nz, jr_008_49c3                               ; $49a9: $20 $18

	bit 7, a                                         ; $49ab: $cb $7f
	jr nz, jr_008_49c3                               ; $49ad: $20 $14

	bit 1, a                                         ; $49af: $cb $4f
	jr nz, jr_008_49b8                               ; $49b1: $20 $05

	bit 0, a                                         ; $49b3: $cb $47
	jr nz, jr_008_49bd                               ; $49b5: $20 $06

	ret                                              ; $49b7: $c9


jr_008_49b8:
	xor a                                            ; $49b8: $af
	ld [$c155], a                                    ; $49b9: $ea $55 $c1
	ret                                              ; $49bc: $c9


jr_008_49bd:
	ld a, $01                                        ; $49bd: $3e $01
	ld [$c155], a                                    ; $49bf: $ea $55 $c1
	ret                                              ; $49c2: $c9


jr_008_49c3:
	call Call_008_4e29                               ; $49c3: $cd $29 $4e
	ld a, [$c155]                                    ; $49c6: $fa $55 $c1
	or a                                             ; $49c9: $b7
	jp z, Jump_008_488e                              ; $49ca: $ca $8e $48

	ld a, $01                                        ; $49cd: $3e $01
	ld [$c145], a                                    ; $49cf: $ea $45 $c1
	ret                                              ; $49d2: $c9


Call_008_49d3:
Jump_008_49d3:
	ld a, [$c151]                                    ; $49d3: $fa $51 $c1
	ld hl, $a21a                                     ; $49d6: $21 $1a $a2
	cp $03                                           ; $49d9: $fe $03
	jr z, jr_008_49e0                                ; $49db: $28 $03

	ld hl, $a21f                                     ; $49dd: $21 $1f $a2

jr_008_49e0:
	ld a, [hl+]                                      ; $49e0: $2a
	inc hl                                           ; $49e1: $23
	inc a                                            ; $49e2: $3c
	push hl                                          ; $49e3: $e5
	ld hl, $6004                                     ; $49e4: $21 $04 $60
	call Call_008_4dfe                               ; $49e7: $cd $fe $4d
	pop hl                                           ; $49ea: $e1
	ld a, [hl+]                                      ; $49eb: $2a
	inc hl                                           ; $49ec: $23
	inc a                                            ; $49ed: $3c
	push hl                                          ; $49ee: $e5
	ld hl, $6008                                     ; $49ef: $21 $08 $60
	call Call_008_4dfe                               ; $49f2: $cd $fe $4d
	pop hl                                           ; $49f5: $e1
	ld a, [hl]                                       ; $49f6: $7e
	ld hl, $600c                                     ; $49f7: $21 $0c $60
	jp Jump_008_4e0d                                 ; $49fa: $c3 $0d $4e


Call_008_49fd:
	ld a, [$c151]                                    ; $49fd: $fa $51 $c1
	sub $03                                          ; $4a00: $d6 $03
	ld hl, $a21a                                     ; $4a02: $21 $1a $a2
	jr z, jr_008_4a0a                                ; $4a05: $28 $03

	ld hl, $a21f                                     ; $4a07: $21 $1f $a2

jr_008_4a0a:
	ld a, [$c155]                                    ; $4a0a: $fa $55 $c1
	ld c, [hl]                                       ; $4a0d: $4e
	ld b, $0c                                        ; $4a0e: $06 $0c
	or a                                             ; $4a10: $b7
	jr z, jr_008_4a29                                ; $4a11: $28 $16

	inc hl                                           ; $4a13: $23
	inc hl                                           ; $4a14: $23
	inc hl                                           ; $4a15: $23
	inc hl                                           ; $4a16: $23
	ld b, $04                                        ; $4a17: $06 $04
	dec a                                            ; $4a19: $3d
	dec a                                            ; $4a1a: $3d
	jr z, jr_008_4a29                                ; $4a1b: $28 $0c

	dec hl                                           ; $4a1d: $2b
	dec hl                                           ; $4a1e: $2b
	ld de, $47d9                                     ; $4a1f: $11 $d9 $47
	ld a, c                                          ; $4a22: $79
	call $1327                                       ; $4a23: $cd $27 $13
	ld a, [de]                                       ; $4a26: $1a
	inc a                                            ; $4a27: $3c
	ld b, a                                          ; $4a28: $47

jr_008_4a29:
	ld a, b                                          ; $4a29: $78
	ld [$c178], a                                    ; $4a2a: $ea $78 $c1
	ret                                              ; $4a2d: $c9


Call_008_4a2e:
	ld a, [$c152]                                    ; $4a2e: $fa $52 $c1
	cp $03                                           ; $4a31: $fe $03
	jr z, jr_008_4a3a                                ; $4a33: $28 $05

	call Call_008_4fe3                               ; $4a35: $cd $e3 $4f
	jr jr_008_4a3d                                   ; $4a38: $18 $03

jr_008_4a3a:
	call Call_008_5018                               ; $4a3a: $cd $18 $50

jr_008_4a3d:
	ld a, e                                          ; $4a3d: $7b
	or d                                             ; $4a3e: $b2
	ret nz                                           ; $4a3f: $c0

	ld de, $00f9                                     ; $4a40: $11 $f9 $00
	ret                                              ; $4a43: $c9


Call_008_4a44:
	ld a, [$c151]                                    ; $4a44: $fa $51 $c1
	ld hl, $c162                                     ; $4a47: $21 $62 $c1
	or a                                             ; $4a4a: $b7
	jr z, jr_008_4a56                                ; $4a4b: $28 $09

	ld hl, $c168                                     ; $4a4d: $21 $68 $c1
	dec a                                            ; $4a50: $3d
	jr z, jr_008_4a56                                ; $4a51: $28 $03

	ld hl, $c16e                                     ; $4a53: $21 $6e $c1

jr_008_4a56:
	ld a, [$c156]                                    ; $4a56: $fa $56 $c1
	sla a                                            ; $4a59: $cb $27
	ld c, a                                          ; $4a5b: $4f
	ld b, $00                                        ; $4a5c: $06 $00
	add hl, bc                                       ; $4a5e: $09
	ld [hl], e                                       ; $4a5f: $73
	inc hl                                           ; $4a60: $23
	ld [hl], d                                       ; $4a61: $72
	ret                                              ; $4a62: $c9


Call_008_4a63:
jr_008_4a63:
	ld a, [hl+]                                      ; $4a63: $2a
	cp $f9                                           ; $4a64: $fe $f9
	jr nz, jr_008_4a72                               ; $4a66: $20 $0a

	ld a, [hl+]                                      ; $4a68: $2a
	cp $00                                           ; $4a69: $fe $00
	jr nz, jr_008_4a72                               ; $4a6b: $20 $05

	dec b                                            ; $4a6d: $05
	jr nz, jr_008_4a63                               ; $4a6e: $20 $f3

	scf                                              ; $4a70: $37
	ret                                              ; $4a71: $c9


jr_008_4a72:
	xor a                                            ; $4a72: $af
	ret                                              ; $4a73: $c9


Call_008_4a74:
	ld a, [$c151]                                    ; $4a74: $fa $51 $c1
	ld b, $03                                        ; $4a77: $06 $03
	ld hl, $c162                                     ; $4a79: $21 $62 $c1
	or a                                             ; $4a7c: $b7
	jr z, jr_008_4a8c                                ; $4a7d: $28 $0d

	ld b, $03                                        ; $4a7f: $06 $03
	ld hl, $c168                                     ; $4a81: $21 $68 $c1
	dec a                                            ; $4a84: $3d
	jr z, jr_008_4a8c                                ; $4a85: $28 $05

	ld b, $05                                        ; $4a87: $06 $05
	ld hl, $c16e                                     ; $4a89: $21 $6e $c1

jr_008_4a8c:
	push hl                                          ; $4a8c: $e5
	call Call_008_4a63                               ; $4a8d: $cd $63 $4a
	pop hl                                           ; $4a90: $e1
	ret nc                                           ; $4a91: $d0

	push hl                                          ; $4a92: $e5
	ld b, $1e                                        ; $4a93: $06 $1e
	ld hl, $81a5                                     ; $4a95: $21 $a5 $81
	rst FarCall                                          ; $4a98: $f7
	ld l, d                                          ; $4a99: $6a
	ld c, e                                          ; $4a9a: $4b
	inc bc                                           ; $4a9b: $03
	call Call_000_1309                                       ; $4a9c: $cd $09 $13
	ld b, $0e                                        ; $4a9f: $06 $0e
	call $12b5                                       ; $4aa1: $cd $b5 $12
	ld a, b                                          ; $4aa4: $78
	sla a                                            ; $4aa5: $cb $27
	ld e, a                                          ; $4aa7: $5f
	ld d, $00                                        ; $4aa8: $16 $00
	rst FarCall                                          ; $4aaa: $f7
	ld e, c                                          ; $4aab: $59
	ld c, e                                          ; $4aac: $4b
	inc bc                                           ; $4aad: $03
	rst FarCall                                          ; $4aae: $f7
	dec [hl]                                         ; $4aaf: $35
	ld c, e                                          ; $4ab0: $4b
	inc bc                                           ; $4ab1: $03
	ld e, l                                          ; $4ab2: $5d
	ld d, h                                          ; $4ab3: $54
	rst FarCall                                          ; $4ab4: $f7
	ld e, c                                          ; $4ab5: $59
	ld c, e                                          ; $4ab6: $4b
	inc bc                                           ; $4ab7: $03
	ld a, [$c151]                                    ; $4ab8: $fa $51 $c1
	ld b, a                                          ; $4abb: $47
	or a                                             ; $4abc: $b7

jr_008_4abd:
	jr z, jr_008_4ad4                                ; $4abd: $28 $15

	rst FarCall                                          ; $4abf: $f7
	ld h, $4b                                        ; $4ac0: $26 $4b
	inc bc                                           ; $4ac2: $03
	cp $09                                           ; $4ac3: $fe $09
	jr z, jr_008_4ad1                                ; $4ac5: $28 $0a

	cp $f0                                           ; $4ac7: $fe $f0
	jr c, jr_008_4abd                                ; $4ac9: $38 $f2

	rst FarCall                                          ; $4acb: $f7
	ld h, $4b                                        ; $4acc: $26 $4b
	inc bc                                           ; $4ace: $03
	jr jr_008_4abd                                   ; $4acf: $18 $ec

jr_008_4ad1:
	dec b                                            ; $4ad1: $05
	jr jr_008_4abd                                   ; $4ad2: $18 $e9

jr_008_4ad4:
	pop hl                                           ; $4ad4: $e1

jr_008_4ad5:
	rst FarCall                                          ; $4ad5: $f7
	ld h, $4b                                        ; $4ad6: $26 $4b
	inc bc                                           ; $4ad8: $03
	cp $09                                           ; $4ad9: $fe $09
	ret z                                            ; $4adb: $c8

	ld d, $00                                        ; $4adc: $16 $00
	ld e, a                                          ; $4ade: $5f
	cp $f0                                           ; $4adf: $fe $f0
	ld a, $00                                        ; $4ae1: $3e $00
	jr c, jr_008_4aeb                                ; $4ae3: $38 $06

	rst FarCall                                          ; $4ae5: $f7
	ld h, $4b                                        ; $4ae6: $26 $4b
	inc bc                                           ; $4ae8: $03
	ld d, e                                          ; $4ae9: $53
	ld e, a                                          ; $4aea: $5f

jr_008_4aeb:
	push hl                                          ; $4aeb: $e5
	call $1d34                                       ; $4aec: $cd $34 $1d
	pop hl                                           ; $4aef: $e1
	ld [hl], e                                       ; $4af0: $73
	inc hl                                           ; $4af1: $23
	ld [hl], d                                       ; $4af2: $72
	inc hl                                           ; $4af3: $23
	jr jr_008_4ad5                                   ; $4af4: $18 $df

Call_008_4af6:
jr_008_4af6:
	call Call_008_4a74                               ; $4af6: $cd $74 $4a
	ld a, [$c151]                                    ; $4af9: $fa $51 $c1
	or a                                             ; $4afc: $b7
	jr z, jr_008_4b0a                                ; $4afd: $28 $0b

	dec a                                            ; $4aff: $3d
	jr z, jr_008_4b0d                                ; $4b00: $28 $0b

	xor a                                            ; $4b02: $af
	ld [$c155], a                                    ; $4b03: $ea $55 $c1
	ld a, $07                                        ; $4b06: $3e $07
	jr jr_008_4b0f                                   ; $4b08: $18 $05

jr_008_4b0a:
	xor a                                            ; $4b0a: $af
	jr jr_008_4b0f                                   ; $4b0b: $18 $02

jr_008_4b0d:
	ld a, $01                                        ; $4b0d: $3e $01

jr_008_4b0f:
	or $08                                           ; $4b0f: $f6 $08
	ld [$c15d], a                                    ; $4b11: $ea $5d $c1
	xor a                                            ; $4b14: $af
	ld [$c156], a                                    ; $4b15: $ea $56 $c1
	ld a, [$c151]                                    ; $4b18: $fa $51 $c1
	inc a                                            ; $4b1b: $3c
	ld [$c151], a                                    ; $4b1c: $ea $51 $c1
	ret                                              ; $4b1f: $c9


Call_008_4b20:
	ld a, [$c151]                                    ; $4b20: $fa $51 $c1
	or a                                             ; $4b23: $b7
	jr z, jr_008_4b36                                ; $4b24: $28 $10

	dec a                                            ; $4b26: $3d
	jr z, jr_008_4b43                                ; $4b27: $28 $1a

	ld a, [$c156]                                    ; $4b29: $fa $56 $c1
	inc a                                            ; $4b2c: $3c
	cp $05                                           ; $4b2d: $fe $05
	jr z, jr_008_4af6                                ; $4b2f: $28 $c5

	ld [$c156], a                                    ; $4b31: $ea $56 $c1
	jr jr_008_4b4e                                   ; $4b34: $18 $18

jr_008_4b36:
	ld a, [$c156]                                    ; $4b36: $fa $56 $c1
	inc a                                            ; $4b39: $3c
	cp $03                                           ; $4b3a: $fe $03
	jr z, jr_008_4af6                                ; $4b3c: $28 $b8

	ld [$c156], a                                    ; $4b3e: $ea $56 $c1
	jr jr_008_4b4e                                   ; $4b41: $18 $0b

jr_008_4b43:
	ld a, [$c156]                                    ; $4b43: $fa $56 $c1
	inc a                                            ; $4b46: $3c
	cp $03                                           ; $4b47: $fe $03
	jr z, jr_008_4af6                                ; $4b49: $28 $ab

	ld [$c156], a                                    ; $4b4b: $ea $56 $c1

jr_008_4b4e:
	ld a, [$c15d]                                    ; $4b4e: $fa $5d $c1
	or $08                                           ; $4b51: $f6 $08
	ld [$c15d], a                                    ; $4b53: $ea $5d $c1
	ret                                              ; $4b56: $c9


Call_008_4b57:
	ld a, [$c151]                                    ; $4b57: $fa $51 $c1
	or a                                             ; $4b5a: $b7
	jr z, jr_008_4b68                                ; $4b5b: $28 $0b

	dec a                                            ; $4b5d: $3d
	jr z, jr_008_4b6f                                ; $4b5e: $28 $0f

	ld a, [$c156]                                    ; $4b60: $fa $56 $c1
	or a                                             ; $4b63: $b7
	jr z, jr_008_4b81                                ; $4b64: $28 $1b

	jr jr_008_4b75                                   ; $4b66: $18 $0d

jr_008_4b68:
	ld a, [$c156]                                    ; $4b68: $fa $56 $c1
	or a                                             ; $4b6b: $b7
	ret z                                            ; $4b6c: $c8

	jr jr_008_4b75                                   ; $4b6d: $18 $06

jr_008_4b6f:
	ld a, [$c156]                                    ; $4b6f: $fa $56 $c1
	or a                                             ; $4b72: $b7
	jr z, jr_008_4b7d                                ; $4b73: $28 $08

jr_008_4b75:
	ld a, [$c156]                                    ; $4b75: $fa $56 $c1
	dec a                                            ; $4b78: $3d
	ld [$c156], a                                    ; $4b79: $ea $56 $c1
	ret                                              ; $4b7c: $c9


jr_008_4b7d:
	ld a, $02                                        ; $4b7d: $3e $02
	jr jr_008_4b88                                   ; $4b7f: $18 $07

jr_008_4b81:
	ld a, $09                                        ; $4b81: $3e $09
	ld [$c15d], a                                    ; $4b83: $ea $5d $c1
	ld a, $02                                        ; $4b86: $3e $02

jr_008_4b88:
	ld [$c156], a                                    ; $4b88: $ea $56 $c1
	ld a, [$c151]                                    ; $4b8b: $fa $51 $c1
	dec a                                            ; $4b8e: $3d
	ld [$c151], a                                    ; $4b8f: $ea $51 $c1
	ret                                              ; $4b92: $c9


Call_008_4b93:
	ld a, [wButtonsPressed]                                    ; $4b93: $fa $25 $c1
	bit 4, a                                         ; $4b96: $cb $67
	jr nz, jr_008_4ba4                               ; $4b98: $20 $0a

	bit 5, a                                         ; $4b9a: $cb $6f
	jr nz, jr_008_4be6                               ; $4b9c: $20 $48

	bit 7, a                                         ; $4b9e: $cb $7f
	jr nz, jr_008_4beb                               ; $4ba0: $20 $49

	jr jr_008_4bf0                                   ; $4ba2: $18 $4c

jr_008_4ba4:
	ld a, [$c152]                                    ; $4ba4: $fa $52 $c1
	cp $03                                           ; $4ba7: $fe $03
	jr nz, jr_008_4bdb                               ; $4ba9: $20 $30

	ld a, [$c153]                                    ; $4bab: $fa $53 $c1
	cp $09                                           ; $4bae: $fe $09
	jr nz, jr_008_4bdb                               ; $4bb0: $20 $29

	ld a, [$c154]                                    ; $4bb2: $fa $54 $c1
	and $01                                          ; $4bb5: $e6 $01
	jr z, jr_008_4bc7                                ; $4bb7: $28 $0e

	ld a, [$c157]                                    ; $4bb9: $fa $57 $c1
	or a                                             ; $4bbc: $b7
	jr nz, jr_008_4bc1                               ; $4bbd: $20 $02

	ld a, $3b                                        ; $4bbf: $3e $3b

jr_008_4bc1:
	dec a                                            ; $4bc1: $3d
	ld [$c157], a                                    ; $4bc2: $ea $57 $c1
	jr jr_008_4bd4                                   ; $4bc5: $18 $0d

jr_008_4bc7:
	ld a, [$c157]                                    ; $4bc7: $fa $57 $c1
	cp $3a                                           ; $4bca: $fe $3a
	jr nz, jr_008_4bd0                               ; $4bcc: $20 $02

	ld a, $ff                                        ; $4bce: $3e $ff

jr_008_4bd0:
	inc a                                            ; $4bd0: $3c
	ld [$c157], a                                    ; $4bd1: $ea $57 $c1

jr_008_4bd4:
	ld a, $02                                        ; $4bd4: $3e $02
	ld [$c15d], a                                    ; $4bd6: $ea $5d $c1
	jr jr_008_4bee                                   ; $4bd9: $18 $13

jr_008_4bdb:
	call Call_008_4a2e                               ; $4bdb: $cd $2e $4a
	call Call_008_4a44                               ; $4bde: $cd $44 $4a
	call Call_008_4b20                               ; $4be1: $cd $20 $4b
	jr jr_008_4bee                                   ; $4be4: $18 $08

jr_008_4be6:
	call Call_008_4b57                               ; $4be6: $cd $57 $4b
	jr jr_008_4bee                                   ; $4be9: $18 $03

jr_008_4beb:
	call Call_008_4af6                               ; $4beb: $cd $f6 $4a

jr_008_4bee:
	scf                                              ; $4bee: $37
	ret                                              ; $4bef: $c9


jr_008_4bf0:
	xor a                                            ; $4bf0: $af
	ret                                              ; $4bf1: $c9


Call_008_4bf2:
	ld a, [$c152]                                    ; $4bf2: $fa $52 $c1
	cp $03                                           ; $4bf5: $fe $03
	ld a, $10                                        ; $4bf7: $3e $10
	jr nz, jr_008_4bfd                               ; $4bf9: $20 $02

	ld a, $09                                        ; $4bfb: $3e $09

jr_008_4bfd:
	ld [$c178], a                                    ; $4bfd: $ea $78 $c1
	ld c, $00                                        ; $4c00: $0e $00
	ld a, [$c152]                                    ; $4c02: $fa $52 $c1
	cp $03                                           ; $4c05: $fe $03
	jr nz, jr_008_4c11                               ; $4c07: $20 $08

	ld a, [$c153]                                    ; $4c09: $fa $53 $c1
	cp $09                                           ; $4c0c: $fe $09
	jr nz, jr_008_4c11                               ; $4c0e: $20 $01

	inc c                                            ; $4c10: $0c

jr_008_4c11:
	ld a, c                                          ; $4c11: $79
	ld [$c17a], a                                    ; $4c12: $ea $7a $c1
	ld a, [$d350]                                    ; $4c15: $fa $50 $d3
	bit 1, a                                         ; $4c18: $cb $4f
	jr nz, jr_008_4c2a                               ; $4c1a: $20 $0e

	bit 0, a                                         ; $4c1c: $cb $47
	jr nz, jr_008_4c37                               ; $4c1e: $20 $17

	bit 2, a                                         ; $4c20: $cb $57
	jr nz, jr_008_4c4c                               ; $4c22: $20 $28

	bit 3, a                                         ; $4c24: $cb $5f
	jr nz, jr_008_4c5e                               ; $4c26: $20 $36

	jr jr_008_4c81                                   ; $4c28: $18 $57

jr_008_4c2a:
	ld a, [$c153]                                    ; $4c2a: $fa $53 $c1
	or a                                             ; $4c2d: $b7
	jr nz, jr_008_4c34                               ; $4c2e: $20 $04

	ld a, [$c178]                                    ; $4c30: $fa $78 $c1
	inc a                                            ; $4c33: $3c

jr_008_4c34:
	dec a                                            ; $4c34: $3d
	jr jr_008_4c44                                   ; $4c35: $18 $0d

jr_008_4c37:
	ld a, [$c178]                                    ; $4c37: $fa $78 $c1
	ld b, a                                          ; $4c3a: $47
	ld a, [$c153]                                    ; $4c3b: $fa $53 $c1
	cp b                                             ; $4c3e: $b8
	jr nz, jr_008_4c43                               ; $4c3f: $20 $02

	ld a, $ff                                        ; $4c41: $3e $ff

jr_008_4c43:
	inc a                                            ; $4c43: $3c

jr_008_4c44:
	ld [$c153], a                                    ; $4c44: $ea $53 $c1
	call Call_008_4c83                               ; $4c47: $cd $83 $4c
	jr jr_008_4c7f                                   ; $4c4a: $18 $33

jr_008_4c4c:
	ld a, [$c17a]                                    ; $4c4c: $fa $7a $c1
	or a                                             ; $4c4f: $b7
	jr nz, jr_008_4c70                               ; $4c50: $20 $1e

	ld a, [$c154]                                    ; $4c52: $fa $54 $c1
	or a                                             ; $4c55: $b7
	jr nz, jr_008_4c5b                               ; $4c56: $20 $03

	ld a, $05                                        ; $4c58: $3e $05
	inc a                                            ; $4c5a: $3c

jr_008_4c5b:
	dec a                                            ; $4c5b: $3d
	jr jr_008_4c7c                                   ; $4c5c: $18 $1e

jr_008_4c5e:
	ld a, [$c17a]                                    ; $4c5e: $fa $7a $c1
	or a                                             ; $4c61: $b7
	jr nz, jr_008_4c70                               ; $4c62: $20 $0c

	ld a, [$c154]                                    ; $4c64: $fa $54 $c1
	cp $05                                           ; $4c67: $fe $05
	jr nz, jr_008_4c6d                               ; $4c69: $20 $02

	ld a, $ff                                        ; $4c6b: $3e $ff

jr_008_4c6d:
	inc a                                            ; $4c6d: $3c
	jr jr_008_4c7c                                   ; $4c6e: $18 $0c

jr_008_4c70:
	ld c, $04                                        ; $4c70: $0e $04
	ld a, [$c154]                                    ; $4c72: $fa $54 $c1
	and $01                                          ; $4c75: $e6 $01
	jr nz, jr_008_4c7b                               ; $4c77: $20 $02

	ld c, $01                                        ; $4c79: $0e $01

jr_008_4c7b:
	ld a, c                                          ; $4c7b: $79

jr_008_4c7c:
	ld [$c154], a                                    ; $4c7c: $ea $54 $c1

jr_008_4c7f:
	scf                                              ; $4c7f: $37
	ret                                              ; $4c80: $c9


jr_008_4c81:
	xor a                                            ; $4c81: $af
	ret                                              ; $4c82: $c9


Call_008_4c83:
	ld a, [$c152]                                    ; $4c83: $fa $52 $c1
	cp $03                                           ; $4c86: $fe $03
	ret nz                                           ; $4c88: $c0

	ld a, [$c153]                                    ; $4c89: $fa $53 $c1
	cp $09                                           ; $4c8c: $fe $09
	ret nz                                           ; $4c8e: $c0

	ld a, [$c154]                                    ; $4c8f: $fa $54 $c1
	cp $03                                           ; $4c92: $fe $03
	jr nc, jr_008_4c9a                               ; $4c94: $30 $04

	ld a, $01                                        ; $4c96: $3e $01
	jr jr_008_4c9c                                   ; $4c98: $18 $02

jr_008_4c9a:
	ld a, $04                                        ; $4c9a: $3e $04

jr_008_4c9c:
	ld [$c154], a                                    ; $4c9c: $ea $54 $c1
	ret                                              ; $4c9f: $c9


Call_008_4ca0:
	ld a, [wButtonsPressed]                                    ; $4ca0: $fa $25 $c1
	bit 6, a                                         ; $4ca3: $cb $77
	jr z, jr_008_4cce                                ; $4ca5: $28 $27

	ld a, [$c152]                                    ; $4ca7: $fa $52 $c1
	inc a                                            ; $4caa: $3c
	cp $04                                           ; $4cab: $fe $04
	jr z, jr_008_4cb8                                ; $4cad: $28 $09

	ld [$c152], a                                    ; $4caf: $ea $52 $c1
	cp $03                                           ; $4cb2: $fe $03
	jr z, jr_008_4cbd                                ; $4cb4: $28 $07

	jr jr_008_4cc4                                   ; $4cb6: $18 $0c

jr_008_4cb8:
	ld a, $00                                        ; $4cb8: $3e $00
	ld [$c152], a                                    ; $4cba: $ea $52 $c1

jr_008_4cbd:
	xor a                                            ; $4cbd: $af
	ld [$c153], a                                    ; $4cbe: $ea $53 $c1
	ld [$c154], a                                    ; $4cc1: $ea $54 $c1

jr_008_4cc4:
	ld a, [$c15d]                                    ; $4cc4: $fa $5d $c1
	or $02                                           ; $4cc7: $f6 $02
	ld [$c15d], a                                    ; $4cc9: $ea $5d $c1
	scf                                              ; $4ccc: $37
	ret                                              ; $4ccd: $c9


jr_008_4cce:
	xor a                                            ; $4cce: $af
	ret                                              ; $4ccf: $c9


Call_008_4cd0:
Jump_008_4cd0:
jr_008_4cd0:
	di                                               ; $4cd0: $f3

jr_008_4cd1:
	ldh a, [rSTAT]                                   ; $4cd1: $f0 $41
	bit 1, a                                         ; $4cd3: $cb $4f
	jr nz, jr_008_4cd1                               ; $4cd5: $20 $fa

	xor a                                            ; $4cd7: $af
	ld [hl+], a                                      ; $4cd8: $22
	ei                                               ; $4cd9: $fb
	dec bc                                           ; $4cda: $0b
	ld a, b                                          ; $4cdb: $78
	or c                                             ; $4cdc: $b1
	jr nz, jr_008_4cd0                               ; $4cdd: $20 $f1

	ret                                              ; $4cdf: $c9


Call_008_4ce0:
	ld hl, $8a40                                     ; $4ce0: $21 $40 $8a
	ld bc, $0280                                     ; $4ce3: $01 $80 $02
	jp Jump_008_4cd0                                 ; $4ce6: $c3 $d0 $4c


Jump_008_4ce9:
	ld hl, $8e00                                     ; $4ce9: $21 $00 $8e
	ld bc, $0a00                                     ; $4cec: $01 $00 $0a
	call Call_008_4cd0                               ; $4cef: $cd $d0 $4c
	ld hl, $8000                                     ; $4cf2: $21 $00 $80
	ld bc, $0500                                     ; $4cf5: $01 $00 $05
	jp Jump_008_4cd0                                 ; $4cf8: $c3 $d0 $4c


Call_008_4cfb:
	ld hl, $8640                                     ; $4cfb: $21 $40 $86
	ld bc, $0280                                     ; $4cfe: $01 $80 $02
	jp Jump_008_4cd0                                 ; $4d01: $c3 $d0 $4c


Call_008_4d04:
	ld hl, $9800                                     ; $4d04: $21 $00 $98
	ld bc, $0ba4                                     ; $4d07: $01 $a4 $0b
	call $390d                                       ; $4d0a: $cd $0d $39
	ld hl, $9960                                     ; $4d0d: $21 $60 $99
	ld bc, $0700                                     ; $4d10: $01 $00 $07
	call $390d                                       ; $4d13: $cd $0d $39
	ld hl, $9800                                     ; $4d16: $21 $00 $98
	ld bc, $1214                                     ; $4d19: $01 $14 $12
	ld de, $0100                                     ; $4d1c: $11 $00 $01
	rst FarCall                                          ; $4d1f: $f7
	xor a                                            ; $4d20: $af
	ld b, l                                          ; $4d21: $45
	ld [$6021], sp                                   ; $4d22: $08 $21 $60
	sbc h                                            ; $4d25: $9c
	ld bc, $0c14                                     ; $4d26: $01 $14 $0c
	ld de, $00a0                                     ; $4d29: $11 $a0 $00
	rst FarCall                                          ; $4d2c: $f7
	xor a                                            ; $4d2d: $af
	ld b, l                                          ; $4d2e: $45
	ld [$6021], sp                                   ; $4d2f: $08 $21 $60
	sbc h                                            ; $4d32: $9c
	ld bc, $0c14                                     ; $4d33: $01 $14 $0c
	ld de, $0100                                     ; $4d36: $11 $00 $01
	rst FarCall                                          ; $4d39: $f7
	xor a                                            ; $4d3a: $af
	ld b, l                                          ; $4d3b: $45
	ld [$fac9], sp                                   ; $4d3c: $08 $c9 $fa
	ld d, c                                          ; $4d3f: $51
	pop bc                                           ; $4d40: $c1
	cp $03                                           ; $4d41: $fe $03
	jr c, jr_008_4d59                                ; $4d43: $38 $14

	cp $05                                           ; $4d45: $fe $05
	jr z, jr_008_4d51                                ; $4d47: $28 $08

	call Call_008_522e                               ; $4d49: $cd $2e $52
	call Call_008_4e3a                               ; $4d4c: $cd $3a $4e
	jr jr_008_4d91                                   ; $4d4f: $18 $40

jr_008_4d51:
	call Call_008_522e                               ; $4d51: $cd $2e $52
	call Call_008_4d98                               ; $4d54: $cd $98 $4d
	jr jr_008_4d91                                   ; $4d57: $18 $38

jr_008_4d59:
	call Call_008_5223                               ; $4d59: $cd $23 $52
	ld a, [$c152]                                    ; $4d5c: $fa $52 $c1
	or a                                             ; $4d5f: $b7
	jr z, jr_008_4d77                                ; $4d60: $28 $15

	dec a                                            ; $4d62: $3d
	jr z, jr_008_4d7c                                ; $4d63: $28 $17

	dec a                                            ; $4d65: $3d
	jr z, jr_008_4d81                                ; $4d66: $28 $19

	ld a, $84                                        ; $4d68: $3e $84
	ld [$c15b], a                                    ; $4d6a: $ea $5b $c1
	ld a, $18                                        ; $4d6d: $3e $18
	ld [$c15c], a                                    ; $4d6f: $ea $5c $c1
	call Call_008_4e9f                               ; $4d72: $cd $9f $4e
	jr jr_008_4d91                                   ; $4d75: $18 $1a

jr_008_4d77:
	ld hl, $464c                                     ; $4d77: $21 $4c $46
	jr jr_008_4d84                                   ; $4d7a: $18 $08

jr_008_4d7c:
	ld hl, $467d                                     ; $4d7c: $21 $7d $46
	jr jr_008_4d84                                   ; $4d7f: $18 $03

jr_008_4d81:
	ld hl, $46ae                                     ; $4d81: $21 $ae $46

jr_008_4d84:
	ld a, $94                                        ; $4d84: $3e $94
	ld [$c15b], a                                    ; $4d86: $ea $5b $c1
	ld a, $0c                                        ; $4d89: $3e $0c
	ld [$c15c], a                                    ; $4d8b: $ea $5c $c1
	call Call_008_4e45                               ; $4d8e: $cd $45 $4e

jr_008_4d91:
	xor a                                            ; $4d91: $af
	ld [$c15e], a                                    ; $4d92: $ea $5e $c1
	jp Jump_008_4e24                                 ; $4d95: $c3 $24 $4e


Call_008_4d98:
	ld b, $1e                                        ; $4d98: $06 $1e
	ld hl, $817a                                     ; $4d9a: $21 $7a $81
	call Func_1c32                                       ; $4d9d: $cd $32 $1c
	ld hl, $0404                                     ; $4da0: $21 $04 $04
	call Func_1ceb                                       ; $4da3: $cd $eb $1c
	ld bc, $0600                                     ; $4da6: $01 $00 $06
	ld hl, $c162                                     ; $4da9: $21 $62 $c1
	call Call_008_50ee                               ; $4dac: $cd $ee $50
	ld de, $005f                                     ; $4daf: $11 $5f $00
	call EnqueueDisplayingChar                                       ; $4db2: $cd $3a $1d
	ld bc, $0500                                     ; $4db5: $01 $00 $05
	ld hl, $c16e                                     ; $4db8: $21 $6e $c1
	call Call_008_50ee                               ; $4dbb: $cd $ee $50
	ld de, $0060                                     ; $4dbe: $11 $60 $00
	call EnqueueDisplayingChar                                       ; $4dc1: $cd $3a $1d
	ld hl, $1806                                     ; $4dc4: $21 $06 $18
	ld a, [$a21a]                                    ; $4dc7: $fa $1a $a2
	inc a                                            ; $4dca: $3c
	call Call_008_4dfe                               ; $4dcb: $cd $fe $4d
	ld hl, $3806                                     ; $4dce: $21 $06 $38
	ld a, [$a21c]                                    ; $4dd1: $fa $1c $a2
	inc a                                            ; $4dd4: $3c
	call Call_008_4dfe                               ; $4dd5: $cd $fe $4d
	ld hl, $6806                                     ; $4dd8: $21 $06 $68
	ld a, [$a21e]                                    ; $4ddb: $fa $1e $a2
	call Call_008_4e0d                               ; $4dde: $cd $0d $4e
	ld hl, $180b                                     ; $4de1: $21 $0b $18
	ld a, [$a21f]                                    ; $4de4: $fa $1f $a2
	inc a                                            ; $4de7: $3c
	call Call_008_4dfe                               ; $4de8: $cd $fe $4d
	ld hl, $380b                                     ; $4deb: $21 $0b $38
	ld a, [$a221]                                    ; $4dee: $fa $21 $a2
	inc a                                            ; $4df1: $3c
	call Call_008_4dfe                               ; $4df2: $cd $fe $4d
	ld hl, $680b                                     ; $4df5: $21 $0b $68
	ld a, [$a223]                                    ; $4df8: $fa $23 $a2
	jp Jump_008_4e0d                                 ; $4dfb: $c3 $0d $4e


Call_008_4dfe:
	push af                                          ; $4dfe: $f5
	call Func_1ceb                                       ; $4dff: $cd $eb $1c
	pop af                                           ; $4e02: $f1
	ld e, a                                          ; $4e03: $5f
	ld d, $00                                        ; $4e04: $16 $00
	ld a, $82                                        ; $4e06: $3e $82
	rst FarCall                                          ; $4e08: $f7
	push bc                                          ; $4e09: $c5
	ld d, b                                          ; $4e0a: $50
	inc bc                                           ; $4e0b: $03
	ret                                              ; $4e0c: $c9


Call_008_4e0d:
Jump_008_4e0d:
	push af                                          ; $4e0d: $f5
	call Func_1ceb                                       ; $4e0e: $cd $eb $1c
	pop af                                           ; $4e11: $f1
	ld b, a                                          ; $4e12: $47
	ld c, $03                                        ; $4e13: $0e $03
	call BCequBtimesC                                       ; $4e15: $cd $5f $12
	ld hl, $47b5                                     ; $4e18: $21 $b5 $47
	add hl, bc                                       ; $4e1b: $09
	ld b, [hl]                                       ; $4e1c: $46
	inc hl                                           ; $4e1d: $23
	ld a, [hl+]                                      ; $4e1e: $2a
	ld h, [hl]                                       ; $4e1f: $66
	ld l, a                                          ; $4e20: $6f
	jp Func_1c32                                         ; $4e21: $c3 $32 $1c


Jump_008_4e24:
	xor a                                            ; $4e24: $af
	ld [$c201], a                                    ; $4e25: $ea $01 $c2
	ret                                              ; $4e28: $c9


Call_008_4e29:
	ld a, $80                                        ; $4e29: $3e $80
	ld [$c201], a                                    ; $4e2b: $ea $01 $c2
	ret                                              ; $4e2e: $c9


Call_008_4e2f:
	ld a, $01                                        ; $4e2f: $3e $01
	ld [$c15e], a                                    ; $4e31: $ea $5e $c1
	call Call_008_4e29                               ; $4e34: $cd $29 $4e
	jp Jump_008_4ce9                                 ; $4e37: $c3 $e9 $4c


Call_008_4e3a:
	ld b, $1e                                        ; $4e3a: $06 $1e
	ld hl, $8122                                     ; $4e3c: $21 $22 $81
	call Func_1c32                                       ; $4e3f: $cd $32 $1c
	jp Jump_008_49d3                                 ; $4e42: $c3 $d3 $49


Call_008_4e45:
	push hl                                          ; $4e45: $e5
	ld hl, $0c03                                     ; $4e46: $21 $03 $0c
	call Func_1ceb                                       ; $4e49: $cd $eb $1c
	pop hl                                           ; $4e4c: $e1

jr_008_4e4d:
	ld a, [hl+]                                      ; $4e4d: $2a
	or a                                             ; $4e4e: $b7
	ret z                                            ; $4e4f: $c8

	ld c, a                                          ; $4e50: $4f
	ld b, a                                          ; $4e51: $47
	ld a, [hl+]                                      ; $4e52: $2a
	ld e, a                                          ; $4e53: $5f
	ld a, [hl+]                                      ; $4e54: $2a
	ld d, a                                          ; $4e55: $57

jr_008_4e56:
	push hl                                          ; $4e56: $e5
	push de                                          ; $4e57: $d5
	push bc                                          ; $4e58: $c5
	call EnqueueDisplayingChar                                       ; $4e59: $cd $3a $1d
	call Call_008_4e6b                               ; $4e5c: $cd $6b $4e
	call Call_008_4e91                               ; $4e5f: $cd $91 $4e
	pop bc                                           ; $4e62: $c1
	pop de                                           ; $4e63: $d1
	pop hl                                           ; $4e64: $e1
	inc de                                           ; $4e65: $13
	dec b                                            ; $4e66: $05
	jr nz, jr_008_4e56                               ; $4e67: $20 $ed

	jr jr_008_4e4d                                   ; $4e69: $18 $e2

Call_008_4e6b:
	ld a, [$c152]                                    ; $4e6b: $fa $52 $c1
	cp $02                                           ; $4e6e: $fe $02
	ret nc                                           ; $4e70: $d0

	ld a, [wCurrTextLinePixelIdx]                                    ; $4e71: $fa $00 $d8
	cp $34                                           ; $4e74: $fe $34
	jr z, jr_008_4e7b                                ; $4e76: $28 $03

	cp $64                                           ; $4e78: $fe $64
	ret nz                                           ; $4e7a: $c0

jr_008_4e7b:
	add $08                                          ; $4e7b: $c6 $08
	jr jr_008_4e7f                                   ; $4e7d: $18 $00

Call_008_4e7f:
jr_008_4e7f:
	ld h, a                                          ; $4e7f: $67
	ld a, [$d7ff]                                    ; $4e80: $fa $ff $d7
	ld l, a                                          ; $4e83: $6f
	jp Func_1ceb                                         ; $4e84: $c3 $eb $1c


Call_008_4e87:
jr_008_4e87:
	ld h, a                                          ; $4e87: $67
	ld a, [$d7ff]                                    ; $4e88: $fa $ff $d7
	inc a                                            ; $4e8b: $3c
	inc a                                            ; $4e8c: $3c
	ld l, a                                          ; $4e8d: $6f
	jp Func_1ceb                                         ; $4e8e: $c3 $eb $1c


Call_008_4e91:
	ld a, [$c15b]                                    ; $4e91: $fa $5b $c1
	ld b, a                                          ; $4e94: $47
	ld a, [wCurrTextLinePixelIdx]                                    ; $4e95: $fa $00 $d8
	cp b                                             ; $4e98: $b8
	ret nz                                           ; $4e99: $c0

	ld a, [$c15c]                                    ; $4e9a: $fa $5c $c1
	jr jr_008_4e87                                   ; $4e9d: $18 $e8

Call_008_4e9f:
	ld b, $1e                                        ; $4e9f: $06 $1e
	ld hl, $8117                                     ; $4ea1: $21 $17 $81
	call Func_1c32                                       ; $4ea4: $cd $32 $1c
	ld hl, $1803                                     ; $4ea7: $21 $03 $18
	call Func_1ceb                                       ; $4eaa: $cd $eb $1c
	call Call_008_4f66                               ; $4ead: $cd $66 $4f
	ld a, [$c158]                                    ; $4eb0: $fa $58 $c1
	ld l, a                                          ; $4eb3: $6f
	ld a, [$c159]                                    ; $4eb4: $fa $59 $c1
	ld h, a                                          ; $4eb7: $67
	ld a, l                                          ; $4eb8: $7d
	ld [$c178], a                                    ; $4eb9: $ea $78 $c1
	ld a, h                                          ; $4ebc: $7c
	ld [$c179], a                                    ; $4ebd: $ea $79 $c1
	ld a, [$c15a]                                    ; $4ec0: $fa $5a $c1
	ld [$c17a], a                                    ; $4ec3: $ea $7a $c1
	ld b, a                                          ; $4ec6: $47
	ld c, $04                                        ; $4ec7: $0e $04
	call BCequBtimesC                                       ; $4ec9: $cd $5f $12
	ld hl, $4703                                     ; $4ecc: $21 $03 $47
	add hl, bc                                       ; $4ecf: $09

jr_008_4ed0:
	ld a, [hl+]                                      ; $4ed0: $2a
	ld c, a                                          ; $4ed1: $4f
	ld a, [hl+]                                      ; $4ed2: $2a
	ld b, a                                          ; $4ed3: $47
	cp $ff                                           ; $4ed4: $fe $ff
	ret z                                            ; $4ed6: $c8

	push hl                                          ; $4ed7: $e5
	ld l, c                                          ; $4ed8: $69
	ld h, b                                          ; $4ed9: $60
	ld a, [$c178]                                    ; $4eda: $fa $78 $c1
	ld c, a                                          ; $4edd: $4f
	ld a, [$c179]                                    ; $4ede: $fa $79 $c1
	ld b, a                                          ; $4ee1: $47
	call wHLminusEquBC                                       ; $4ee2: $cd $aa $ce
	ld c, l                                          ; $4ee5: $4d
	ld b, h                                          ; $4ee6: $44
	ld hl, $c178                                     ; $4ee7: $21 $78 $c1
	ld a, [hl+]                                      ; $4eea: $2a
	or [hl]                                          ; $4eeb: $b6
	pop hl                                           ; $4eec: $e1
	jr nz, jr_008_4eff                               ; $4eed: $20 $10

	push bc                                          ; $4eef: $c5
	ld a, [$c17a]                                    ; $4ef0: $fa $7a $c1
	ld bc, $0001                                     ; $4ef3: $01 $01 $00
	call $132c                                       ; $4ef6: $cd $2c $13
	push hl                                          ; $4ef9: $e5
	call Call_008_4f45                               ; $4efa: $cd $45 $4f
	pop hl                                           ; $4efd: $e1
	pop bc                                           ; $4efe: $c1

jr_008_4eff:
	ld a, [hl+]                                      ; $4eff: $2a
	ld e, a                                          ; $4f00: $5f
	ld a, [hl+]                                      ; $4f01: $2a
	ld d, a                                          ; $4f02: $57
	push hl                                          ; $4f03: $e5
	ld a, [$c178]                                    ; $4f04: $fa $78 $c1
	ld l, a                                          ; $4f07: $6f
	ld a, [$c179]                                    ; $4f08: $fa $79 $c1
	ld h, a                                          ; $4f0b: $67
	add hl, de                                       ; $4f0c: $19
	ld d, h                                          ; $4f0d: $54
	ld e, l                                          ; $4f0e: $5d
	pop hl                                           ; $4f0f: $e1

jr_008_4f10:
	push hl                                          ; $4f10: $e5
	push de                                          ; $4f11: $d5
	call EnqueueDisplayingChar                                       ; $4f12: $cd $3a $1d
	push bc                                          ; $4f15: $c5
	call Call_008_4e91                               ; $4f16: $cd $91 $4e
	pop bc                                           ; $4f19: $c1
	pop de                                           ; $4f1a: $d1
	pop hl                                           ; $4f1b: $e1
	ld a, [$d7ff]                                    ; $4f1c: $fa $ff $d7
	cp $0f                                           ; $4f1f: $fe $0f
	ret z                                            ; $4f21: $c8

	inc de                                           ; $4f22: $13
	dec bc                                           ; $4f23: $0b
	ld a, b                                          ; $4f24: $78
	or c                                             ; $4f25: $b1
	jr nz, jr_008_4f10                               ; $4f26: $20 $e8

	ld a, [$d7ff]                                    ; $4f28: $fa $ff $d7
	cp $0d                                           ; $4f2b: $fe $0d
	jr nz, jr_008_4f35                               ; $4f2d: $20 $06

	ld a, [wCurrTextLinePixelIdx]                                    ; $4f2f: $fa $00 $d8
	cp $18                                           ; $4f32: $fe $18
	ret nz                                           ; $4f34: $c0

jr_008_4f35:
	xor a                                            ; $4f35: $af
	ld [$c178], a                                    ; $4f36: $ea $78 $c1
	ld [$c179], a                                    ; $4f39: $ea $79 $c1
	ld a, [$c17a]                                    ; $4f3c: $fa $7a $c1
	inc a                                            ; $4f3f: $3c
	ld [$c17a], a                                    ; $4f40: $ea $7a $c1
	jr jr_008_4ed0                                   ; $4f43: $18 $8b

Call_008_4f45:
	push de                                          ; $4f45: $d5
	ld a, c                                          ; $4f46: $79
	or a                                             ; $4f47: $b7
	jr z, jr_008_4f5f                                ; $4f48: $28 $15

	ld d, $00                                        ; $4f4a: $16 $00
	ld e, a                                          ; $4f4c: $5f
	push de                                          ; $4f4d: $d5
	ld a, [wCurrTextLinePixelIdx]                                    ; $4f4e: $fa $00 $d8
	cp $18                                           ; $4f51: $fe $18
	call nz, Call_008_4e87                           ; $4f53: $c4 $87 $4e
	ld a, $0c                                        ; $4f56: $3e $0c
	call Call_008_4e7f                               ; $4f58: $cd $7f $4e
	pop de                                           ; $4f5b: $d1
	call EnqueueDisplayingChar                                       ; $4f5c: $cd $3a $1d

jr_008_4f5f:
	ld a, $18                                        ; $4f5f: $3e $18
	call Call_008_4e7f                               ; $4f61: $cd $7f $4e
	pop de                                           ; $4f64: $d1
	ret                                              ; $4f65: $c9


Call_008_4f66:
	ld a, [$c157]                                    ; $4f66: $fa $57 $c1
	ld c, a                                          ; $4f69: $4f
	ld b, $06                                        ; $4f6a: $06 $06
	call BCequBtimesC                                       ; $4f6c: $cd $5f $12
	ld a, $ff                                        ; $4f6f: $3e $ff
	ld [$c15a], a                                    ; $4f71: $ea $5a $c1
	ld hl, $4703                                     ; $4f74: $21 $03 $47

jr_008_4f77:
	ld a, [$c15a]                                    ; $4f77: $fa $5a $c1
	inc a                                            ; $4f7a: $3c
	ld [$c15a], a                                    ; $4f7b: $ea $5a $c1
	ld a, [hl+]                                      ; $4f7e: $2a
	ld e, a                                          ; $4f7f: $5f
	ld d, [hl]                                       ; $4f80: $56
	inc hl                                           ; $4f81: $23
	inc hl                                           ; $4f82: $23
	inc hl                                           ; $4f83: $23
	or d                                             ; $4f84: $b2
	jr z, jr_008_4f77                                ; $4f85: $28 $f0

	push hl                                          ; $4f87: $e5
	push bc                                          ; $4f88: $c5
	ld l, e                                          ; $4f89: $6b
	ld h, d                                          ; $4f8a: $62
	ld a, $08                                        ; $4f8b: $3e $08
	rst AddAOntoHL                                          ; $4f8d: $ef
	ld bc, $0009                                     ; $4f8e: $01 $09 $00
	call BCHLequHLdivModBC                                       ; $4f91: $cd $c1 $12
	ld a, l                                          ; $4f94: $7d
	ld d, a                                          ; $4f95: $57
	pop bc                                           ; $4f96: $c1
	pop hl                                           ; $4f97: $e1
	dec a                                            ; $4f98: $3d
	cp c                                             ; $4f99: $b9
	jr c, jr_008_4fa0                                ; $4f9a: $38 $04

	ld a, b                                          ; $4f9c: $78
	or a                                             ; $4f9d: $b7
	jr z, jr_008_4fa4                                ; $4f9e: $28 $04

jr_008_4fa0:
	ld a, d                                          ; $4fa0: $7a
	rst SubAFromBC                                          ; $4fa1: $e7
	jr jr_008_4f77                                   ; $4fa2: $18 $d3

jr_008_4fa4:
	ld b, $09                                        ; $4fa4: $06 $09
	call BCequBtimesC                                       ; $4fa6: $cd $5f $12
	ld a, c                                          ; $4fa9: $79
	ld [$c158], a                                    ; $4faa: $ea $58 $c1
	ld a, b                                          ; $4fad: $78
	ld [$c159], a                                    ; $4fae: $ea $59 $c1
	ret                                              ; $4fb1: $c9


Call_008_4fb2:
	ld a, [$c153]                                    ; $4fb2: $fa $53 $c1
	ld d, a                                          ; $4fb5: $57
	ld e, $11                                        ; $4fb6: $1e $11
	ld a, [$c152]                                    ; $4fb8: $fa $52 $c1
	cp $02                                           ; $4fbb: $fe $02
	jr z, jr_008_4fd3                                ; $4fbd: $28 $14

	ld a, [$c153]                                    ; $4fbf: $fa $53 $c1
	cp $05                                           ; $4fc2: $fe $05
	jr z, jr_008_4fe1                                ; $4fc4: $28 $1b

	jr c, jr_008_4fd0                                ; $4fc6: $38 $08

	dec a                                            ; $4fc8: $3d
	cp $0a                                           ; $4fc9: $fe $0a
	jr z, jr_008_4fe1                                ; $4fcb: $28 $14

	jr c, jr_008_4fd0                                ; $4fcd: $38 $01

	dec a                                            ; $4fcf: $3d

jr_008_4fd0:
	ld d, a                                          ; $4fd0: $57
	ld e, $0f                                        ; $4fd1: $1e $0f

jr_008_4fd3:
	ld a, [$c154]                                    ; $4fd3: $fa $54 $c1
	ld b, a                                          ; $4fd6: $47
	ld c, e                                          ; $4fd7: $4b
	call BCequBtimesC                                       ; $4fd8: $cd $5f $12
	ld a, d                                          ; $4fdb: $7a
	call $132c                                       ; $4fdc: $cd $2c $13
	xor a                                            ; $4fdf: $af
	ret                                              ; $4fe0: $c9


jr_008_4fe1:
	scf                                              ; $4fe1: $37
	ret                                              ; $4fe2: $c9


Call_008_4fe3:
	call Call_008_4fb2                               ; $4fe3: $cd $b2 $4f
	jr c, jr_008_5014                                ; $4fe6: $38 $2c

	ld a, [$c152]                                    ; $4fe8: $fa $52 $c1
	ld hl, $464c                                     ; $4feb: $21 $4c $46
	or a                                             ; $4fee: $b7
	jr z, jr_008_4ffa                                ; $4fef: $28 $09

	ld hl, $467d                                     ; $4ff1: $21 $7d $46
	dec a                                            ; $4ff4: $3d
	jr z, jr_008_4ffa                                ; $4ff5: $28 $03

	ld hl, $46ae                                     ; $4ff7: $21 $ae $46

jr_008_4ffa:
	ld a, [hl+]                                      ; $4ffa: $2a
	or a                                             ; $4ffb: $b7
	jr z, jr_008_5014                                ; $4ffc: $28 $16

	ld e, [hl]                                       ; $4ffe: $5e
	inc hl                                           ; $4fff: $23
	ld d, [hl]                                       ; $5000: $56
	inc hl                                           ; $5001: $23
	ld b, a                                          ; $5002: $47
	dec a                                            ; $5003: $3d
	cp c                                             ; $5004: $b9
	jr nc, jr_008_500f                               ; $5005: $30 $08

	jr z, jr_008_500f                                ; $5007: $28 $06

	ld a, c                                          ; $5009: $79
	sub b                                            ; $500a: $90
	ld c, a                                          ; $500b: $4f
	ld a, b                                          ; $500c: $78
	jr jr_008_4ffa                                   ; $500d: $18 $eb

jr_008_500f:
	ld a, c                                          ; $500f: $79
	call $1327                                       ; $5010: $cd $27 $13
	ret                                              ; $5013: $c9


jr_008_5014:
	ld de, $0000                                     ; $5014: $11 $00 $00
	ret                                              ; $5017: $c9


Call_008_5018:
	ld a, [$c158]                                    ; $5018: $fa $58 $c1
	ld l, a                                          ; $501b: $6f
	ld a, [$c159]                                    ; $501c: $fa $59 $c1
	ld h, a                                          ; $501f: $67
	ld a, l                                          ; $5020: $7d
	ld [$c178], a                                    ; $5021: $ea $78 $c1
	ld a, h                                          ; $5024: $7c
	ld [$c179], a                                    ; $5025: $ea $79 $c1
	ld a, [$c15a]                                    ; $5028: $fa $5a $c1
	ld b, a                                          ; $502b: $47
	ld c, $04                                        ; $502c: $0e $04
	call BCequBtimesC                                       ; $502e: $cd $5f $12
	ld hl, $4703                                     ; $5031: $21 $03 $47
	add hl, bc                                       ; $5034: $09
	ld a, [$c154]                                    ; $5035: $fa $54 $c1
	ld [$c17a], a                                    ; $5038: $ea $7a $c1

jr_008_503b:
	ld a, [hl+]                                      ; $503b: $2a
	ld c, a                                          ; $503c: $4f
	ld a, [hl+]                                      ; $503d: $2a
	ld b, a                                          ; $503e: $47
	cp $ff                                           ; $503f: $fe $ff
	jr z, jr_008_509b                                ; $5041: $28 $58

	push hl                                          ; $5043: $e5
	ld l, c                                          ; $5044: $69
	ld h, b                                          ; $5045: $60
	ld a, [$c178]                                    ; $5046: $fa $78 $c1
	ld c, a                                          ; $5049: $4f
	ld a, [$c179]                                    ; $504a: $fa $79 $c1
	ld b, a                                          ; $504d: $47
	call wHLminusEquBC                                       ; $504e: $cd $aa $ce
	ld c, l                                          ; $5051: $4d
	ld b, h                                          ; $5052: $44
	pop hl                                           ; $5053: $e1
	ld a, [hl+]                                      ; $5054: $2a
	ld e, a                                          ; $5055: $5f
	ld a, [hl+]                                      ; $5056: $2a
	ld d, a                                          ; $5057: $57
	push hl                                          ; $5058: $e5
	ld a, [$c178]                                    ; $5059: $fa $78 $c1
	ld l, a                                          ; $505c: $6f
	ld a, [$c179]                                    ; $505d: $fa $79 $c1
	ld h, a                                          ; $5060: $67
	add hl, de                                       ; $5061: $19
	ld e, l                                          ; $5062: $5d
	ld d, h                                          ; $5063: $54
	pop hl                                           ; $5064: $e1
	xor a                                            ; $5065: $af
	ld [$c178], a                                    ; $5066: $ea $78 $c1
	ld [$c179], a                                    ; $5069: $ea $79 $c1

jr_008_506c:
	ld a, [$c17a]                                    ; $506c: $fa $7a $c1
	or a                                             ; $506f: $b7
	jr z, jr_008_5089                                ; $5070: $28 $17

	dec a                                            ; $5072: $3d
	ld [$c17a], a                                    ; $5073: $ea $7a $c1
	ld a, $09                                        ; $5076: $3e $09
	call $1327                                       ; $5078: $cd $27 $13
	ld a, $09                                        ; $507b: $3e $09
	rst SubAFromBC                                          ; $507d: $e7
	ld a, b                                          ; $507e: $78
	or c                                             ; $507f: $b1
	jr z, jr_008_503b                                ; $5080: $28 $b9

	ld a, b                                          ; $5082: $78
	cp $ff                                           ; $5083: $fe $ff
	jr z, jr_008_503b                                ; $5085: $28 $b4

	jr jr_008_506c                                   ; $5087: $18 $e3

jr_008_5089:
	ld a, [$c153]                                    ; $5089: $fa $53 $c1
	ld h, $00                                        ; $508c: $26 $00
	ld l, a                                          ; $508e: $6f
	call wCpHLtoBC                                       ; $508f: $cd $86 $ce
	jr nc, jr_008_509b                               ; $5092: $30 $07

	ld a, [$c153]                                    ; $5094: $fa $53 $c1
	call $1327                                       ; $5097: $cd $27 $13
	ret                                              ; $509a: $c9


jr_008_509b:
	ld de, $0000                                     ; $509b: $11 $00 $00
	ret                                              ; $509e: $c9


Call_008_509f:
	ld b, $14                                        ; $509f: $06 $14
	ld de, $0006                                     ; $50a1: $11 $06 $00

jr_008_50a4:
	di                                               ; $50a4: $f3

jr_008_50a5:
	ldh a, [rSTAT]                                   ; $50a5: $f0 $41
	bit 1, a                                         ; $50a7: $cb $4f
	jr nz, jr_008_50a5                               ; $50a9: $20 $fa

	add hl, de                                       ; $50ab: $19
	ld a, $ff                                        ; $50ac: $3e $ff
	ld [hl+], a                                      ; $50ae: $22
	ld [hl+], a                                      ; $50af: $22
	ld [hl+], a                                      ; $50b0: $22
	ld [hl+], a                                      ; $50b1: $22
	ei                                               ; $50b2: $fb
	add hl, de                                       ; $50b3: $19
	dec b                                            ; $50b4: $05
	jr nz, jr_008_50a4                               ; $50b5: $20 $ed

	ret                                              ; $50b7: $c9


Call_008_50b8:
	ld a, [$c15d]                                    ; $50b8: $fa $5d $c1
	push af                                          ; $50bb: $f5
	and $01                                          ; $50bc: $e6 $01
	call nz, Call_008_516a                           ; $50be: $c4 $6a $51
	pop af                                           ; $50c1: $f1
	push af                                          ; $50c2: $f5
	and $08                                          ; $50c3: $e6 $08
	call nz, Call_008_518c                           ; $50c5: $c4 $8c $51
	pop af                                           ; $50c8: $f1
	push af                                          ; $50c9: $f5
	and $20                                          ; $50ca: $e6 $20
	call nz, $4d3e                                   ; $50cc: $c4 $3e $4d
	pop af                                           ; $50cf: $f1
	push af                                          ; $50d0: $f5
	and $02                                          ; $50d1: $e6 $02
	call nz, Call_008_4e2f                           ; $50d3: $c4 $2f $4e
	pop af                                           ; $50d6: $f1
	push af                                          ; $50d7: $f5
	and $44                                          ; $50d8: $e6 $44
	call nz, Call_008_519c                           ; $50da: $c4 $9c $51
	pop af                                           ; $50dd: $f1
	and $10                                          ; $50de: $e6 $10
	call nz, Call_008_49d3                           ; $50e0: $c4 $d3 $49
	ld a, [$c15d]                                    ; $50e3: $fa $5d $c1
	swap a                                           ; $50e6: $cb $37
	and $20                                          ; $50e8: $e6 $20
	ld [$c15d], a                                    ; $50ea: $ea $5d $c1
	ret                                              ; $50ed: $c9


Call_008_50ee:
Jump_008_50ee:
	ld e, c                                          ; $50ee: $59

jr_008_50ef:
	ld a, [wCurrTextLinePixelIdx]                                    ; $50ef: $fa $00 $d8
	add $10                                          ; $50f2: $c6 $10
	ld c, a                                          ; $50f4: $4f
	push de                                          ; $50f5: $d5
	ld e, [hl]                                       ; $50f6: $5e
	inc hl                                           ; $50f7: $23
	ld d, [hl]                                       ; $50f8: $56
	inc hl                                           ; $50f9: $23
	call EnqueueDisplayingChar                                       ; $50fa: $cd $3a $1d
	pop de                                           ; $50fd: $d1
	ld a, e                                          ; $50fe: $7b
	or a                                             ; $50ff: $b7
	ld a, c                                          ; $5100: $79
	push hl                                          ; $5101: $e5
	call nz, Call_008_4e7f                           ; $5102: $c4 $7f $4e
	pop hl                                           ; $5105: $e1
	dec b                                            ; $5106: $05
	jr nz, jr_008_50ef                               ; $5107: $20 $e6

	ret                                              ; $5109: $c9


Jump_008_510a:
	ld hl, $2200                                     ; $510a: $21 $00 $22
	call Func_1ceb                                       ; $510d: $cd $eb $1c
	ld bc, $0301                                     ; $5110: $01 $01 $03
	ld hl, $c162                                     ; $5113: $21 $62 $c1
	call Call_008_50ee                               ; $5116: $cd $ee $50
	ld hl, $6200                                     ; $5119: $21 $00 $62
	call Func_1ceb                                       ; $511c: $cd $eb $1c
	ld bc, $0301                                     ; $511f: $01 $01 $03
	ld hl, $c168                                     ; $5122: $21 $68 $c1
	jp Jump_008_50ee                                 ; $5125: $c3 $ee $50


Jump_008_5128:
	ld hl, $2200                                     ; $5128: $21 $00 $22
	call Func_1ceb                                       ; $512b: $cd $eb $1c
	ld bc, $0501                                     ; $512e: $01 $01 $05
	ld hl, $c16e                                     ; $5131: $21 $6e $c1
	jp Jump_008_50ee                                 ; $5134: $c3 $ee $50


Jump_008_5137:
	ld hl, $0400                                     ; $5137: $21 $00 $04
	call Func_1ceb                                       ; $513a: $cd $eb $1c
	ld bc, $0300                                     ; $513d: $01 $00 $03
	ld hl, $c162                                     ; $5140: $21 $62 $c1
	call Call_008_50ee                               ; $5143: $cd $ee $50
	ld de, $00f9                                     ; $5146: $11 $f9 $00
	call EnqueueDisplayingChar                                       ; $5149: $cd $3a $1d
	ld bc, $0300                                     ; $514c: $01 $00 $03
	ld hl, $c168                                     ; $514f: $21 $68 $c1
	call Call_008_50ee                               ; $5152: $cd $ee $50
	ld de, $005f                                     ; $5155: $11 $5f $00
	call EnqueueDisplayingChar                                       ; $5158: $cd $3a $1d
	ld bc, $0500                                     ; $515b: $01 $00 $05
	ld hl, $c16e                                     ; $515e: $21 $6e $c1
	call Call_008_50ee                               ; $5161: $cd $ee $50
	ld de, $0060                                     ; $5164: $11 $60 $00
	jp EnqueueDisplayingChar                                         ; $5167: $c3 $3a $1d


Call_008_516a:
	call Call_008_4ce0                               ; $516a: $cd $e0 $4c
	ld a, [$c151]                                    ; $516d: $fa $51 $c1
	ld b, $1e                                        ; $5170: $06 $1e
	ld hl, $8068                                     ; $5172: $21 $68 $80
	or a                                             ; $5175: $b7
	jp z, Func_1c32                                      ; $5176: $ca $32 $1c

	dec a                                            ; $5179: $3d
	jp z, Func_1c32                                      ; $517a: $ca $32 $1c

	ld b, $1e                                        ; $517d: $06 $1e
	ld hl, $806f                                     ; $517f: $21 $6f $80
	dec a                                            ; $5182: $3d
	jp z, Func_1c32                                      ; $5183: $ca $32 $1c

	sub $03                                          ; $5186: $d6 $03
	jp c, Jump_008_5137                              ; $5188: $da $37 $51

	ret                                              ; $518b: $c9


Call_008_518c:
	ld a, [$c151]                                    ; $518c: $fa $51 $c1
	or a                                             ; $518f: $b7
	jp z, Jump_008_510a                              ; $5190: $ca $0a $51

	dec a                                            ; $5193: $3d
	jp z, Jump_008_510a                              ; $5194: $ca $0a $51

	dec a                                            ; $5197: $3d
	jp z, Jump_008_5128                              ; $5198: $ca $28 $51

	ret                                              ; $519b: $c9


Call_008_519c:
	ld a, [$c15d]                                    ; $519c: $fa $5d $c1
	and $40                                          ; $519f: $e6 $40
	call z, Call_008_4cfb                            ; $51a1: $cc $fb $4c
	ld a, [$c151]                                    ; $51a4: $fa $51 $c1
	ld b, $00                                        ; $51a7: $06 $00
	cp $03                                           ; $51a9: $fe $03
	jr c, jr_008_51c7                                ; $51ab: $38 $1a

	ld b, $15                                        ; $51ad: $06 $15
	cp $05                                           ; $51af: $fe $05
	jr z, jr_008_51c7                                ; $51b1: $28 $14

	ld e, $03                                        ; $51b3: $1e $03
	cp $03                                           ; $51b5: $fe $03
	jr z, jr_008_51bb                                ; $51b7: $28 $02

	ld e, $0c                                        ; $51b9: $1e $0c

jr_008_51bb:
	ld a, [$c155]                                    ; $51bb: $fa $55 $c1
	ld b, a                                          ; $51be: $47
	ld c, $03                                        ; $51bf: $0e $03
	call BCequBtimesC                                       ; $51c1: $cd $5f $12
	ld a, c                                          ; $51c4: $79
	add e                                            ; $51c5: $83
	ld b, a                                          ; $51c6: $47

jr_008_51c7:
	ld a, b                                          ; $51c7: $78
	ld hl, $47c1                                     ; $51c8: $21 $c1 $47
	rst AddAOntoHL                                          ; $51cb: $ef
	ld b, [hl]                                       ; $51cc: $46
	inc hl                                           ; $51cd: $23
	ld a, [hl+]                                      ; $51ce: $2a
	ld h, [hl]                                       ; $51cf: $66
	ld l, a                                          ; $51d0: $6f
	jp Func_1c32                                         ; $51d1: $c3 $32 $1c


Call_008_51d4:
	ld hl, $47e5                                     ; $51d4: $21 $e5 $47
	ld de, $88c0                                     ; $51d7: $11 $c0 $88
	call $ccb0                                       ; $51da: $cd $b0 $cc
	ld hl, $47f5                                     ; $51dd: $21 $f5 $47
	ld de, $88d0                                     ; $51e0: $11 $d0 $88
	call $ccb0                                       ; $51e3: $cd $b0 $cc
	ld hl, $4805                                     ; $51e6: $21 $05 $48
	call $0aab                                       ; $51e9: $cd $ab $0a
	ld h, $c2                                        ; $51ec: $26 $c2
	ld l, $00                                        ; $51ee: $2e $00
	ld [hl], $01                                     ; $51f0: $36 $01
	ld l, $01                                        ; $51f2: $2e $01
	ld [hl], $80                                     ; $51f4: $36 $80
	ld l, $05                                        ; $51f6: $2e $05
	ld [hl], $c8                                     ; $51f8: $36 $c8
	ld l, $07                                        ; $51fa: $2e $07
	ld [hl], $00                                     ; $51fc: $36 $00
	ld l, $08                                        ; $51fe: $2e $08
	ld [hl], $20                                     ; $5200: $36 $20
	inc hl                                           ; $5202: $23
	ld [hl], $41                                     ; $5203: $36 $41
	inc h                                            ; $5205: $24
	ld l, $00                                        ; $5206: $2e $00
	ld [hl], $02                                     ; $5208: $36 $02
	ld l, $01                                        ; $520a: $2e $01
	ld [hl], $80                                     ; $520c: $36 $80
	ld l, $05                                        ; $520e: $2e $05
	ld [hl], $00                                     ; $5210: $36 $00
	ld l, $07                                        ; $5212: $2e $07
	ld [hl], $c8                                     ; $5214: $36 $c8
	ld l, $08                                        ; $5216: $2e $08
	ld [hl], $24                                     ; $5218: $36 $24
	inc hl                                           ; $521a: $23
	ld [hl], $41                                     ; $521b: $36 $41
	ld bc, $6689                                     ; $521d: $01 $89 $66
	jp $18c4                                         ; $5220: $c3 $c4 $18


Call_008_5223:
	ld a, $20                                        ; $5223: $3e $20
	ld [$c208], a                                    ; $5225: $ea $08 $c2
	ld a, $41                                        ; $5228: $3e $41
	ld [$c209], a                                    ; $522a: $ea $09 $c2
	ret                                              ; $522d: $c9


Call_008_522e:
	ld a, $34                                        ; $522e: $3e $34
	ld [$c208], a                                    ; $5230: $ea $08 $c2
	ld a, $41                                        ; $5233: $3e $41
	ld [$c209], a                                    ; $5235: $ea $09 $c2
	ret                                              ; $5238: $c9


Call_008_5239:
	ld a, [$c151]                                    ; $5239: $fa $51 $c1
	cp $05                                           ; $523c: $fe $05
	jr z, jr_008_529a                                ; $523e: $28 $5a

	cp $03                                           ; $5240: $fe $03
	jr nc, jr_008_5289                               ; $5242: $30 $45

	ld a, [$c152]                                    ; $5244: $fa $52 $c1
	cp $03                                           ; $5247: $fe $03
	jr z, jr_008_5267                                ; $5249: $28 $1c

	ld a, [$c153]                                    ; $524b: $fa $53 $c1
	ld b, a                                          ; $524e: $47
	ld c, $08                                        ; $524f: $0e $08
	call BCequBtimesC                                       ; $5251: $cd $5f $12
	ld a, c                                          ; $5254: $79
	add $0c                                          ; $5255: $c6 $0c
	ld e, a                                          ; $5257: $5f
	ld a, [$c154]                                    ; $5258: $fa $54 $c1
	ld b, a                                          ; $525b: $47
	ld c, $10                                        ; $525c: $0e $10
	call BCequBtimesC                                       ; $525e: $cd $5f $12
	ld a, c                                          ; $5261: $79
	add $24                                          ; $5262: $c6 $24
	ld d, a                                          ; $5264: $57
	jr jr_008_52a9                                   ; $5265: $18 $42

jr_008_5267:
	ld e, $8a                                        ; $5267: $1e $8a
	ld a, [$c153]                                    ; $5269: $fa $53 $c1
	cp $09                                           ; $526c: $fe $09
	jr z, jr_008_527a                                ; $526e: $28 $0a

	ld b, a                                          ; $5270: $47
	ld c, $0c                                        ; $5271: $0e $0c
	call BCequBtimesC                                       ; $5273: $cd $5f $12
	ld a, c                                          ; $5276: $79
	add $1a                                          ; $5277: $c6 $1a
	ld e, a                                          ; $5279: $5f

jr_008_527a:
	ld a, [$c154]                                    ; $527a: $fa $54 $c1
	ld b, a                                          ; $527d: $47
	ld c, $10                                        ; $527e: $0e $10
	call BCequBtimesC                                       ; $5280: $cd $5f $12
	ld a, c                                          ; $5283: $79
	add $24                                          ; $5284: $c6 $24
	ld d, a                                          ; $5286: $57
	jr jr_008_52a9                                   ; $5287: $18 $20

jr_008_5289:
	ld e, $08                                        ; $5289: $1e $08
	ld a, [$c155]                                    ; $528b: $fa $55 $c1
	ld b, a                                          ; $528e: $47
	ld c, $20                                        ; $528f: $0e $20
	call BCequBtimesC                                       ; $5291: $cd $5f $12
	ld a, c                                          ; $5294: $79
	add $24                                          ; $5295: $c6 $24
	ld d, a                                          ; $5297: $57
	jr jr_008_52a9                                   ; $5298: $18 $0f

jr_008_529a:
	ld a, [$c155]                                    ; $529a: $fa $55 $c1
	ld b, a                                          ; $529d: $47
	ld c, $24                                        ; $529e: $0e $24
	call BCequBtimesC                                       ; $52a0: $cd $5f $12
	ld a, c                                          ; $52a3: $79
	add $48                                          ; $52a4: $c6 $48
	ld e, a                                          ; $52a6: $5f
	ld d, $84                                        ; $52a7: $16 $84

jr_008_52a9:
	ld a, d                                          ; $52a9: $7a
	ld [$c205], a                                    ; $52aa: $ea $05 $c2
	ld a, e                                          ; $52ad: $7b
	ld [$c207], a                                    ; $52ae: $ea $07 $c2
	ret                                              ; $52b1: $c9


Call_008_52b2:
	xor a                                            ; $52b2: $af
	ld [$c301], a                                    ; $52b3: $ea $01 $c3
	ld e, $20                                        ; $52b6: $1e $20
	ld a, [$c151]                                    ; $52b8: $fa $51 $c1
	or a                                             ; $52bb: $b7
	jr z, jr_008_52cc                                ; $52bc: $28 $0e

	dec a                                            ; $52be: $3d
	jr z, jr_008_52ca                                ; $52bf: $28 $09

	dec a                                            ; $52c1: $3d
	jr z, jr_008_52cc                                ; $52c2: $28 $08

	ld a, $80                                        ; $52c4: $3e $80
	ld [$c301], a                                    ; $52c6: $ea $01 $c3
	ret                                              ; $52c9: $c9


jr_008_52ca:
	ld e, $60                                        ; $52ca: $1e $60

jr_008_52cc:
	ld a, [$c156]                                    ; $52cc: $fa $56 $c1
	ld b, a                                          ; $52cf: $47
	ld c, $10                                        ; $52d0: $0e $10
	call BCequBtimesC                                       ; $52d2: $cd $5f $12
	ld a, e                                          ; $52d5: $7b
	call $132c                                       ; $52d6: $cd $2c $13
	ld a, c                                          ; $52d9: $79
	ld [$c307], a                                    ; $52da: $ea $07 $c3
	ret                                              ; $52dd: $c9


Call_008_52de::
	ld a, [wButtonsPressed]                                    ; $52de: $fa $25 $c1
	ld [$d350], a                                    ; $52e1: $ea $50 $d3
	or a                                             ; $52e4: $b7
	jr nz, jr_008_52f2                               ; $52e5: $20 $0b

	ld a, [wButtonsHeld]                                    ; $52e7: $fa $23 $c1
	ld b, a                                          ; $52ea: $47
	ld a, [$d351]                                    ; $52eb: $fa $51 $d3
	cp b                                             ; $52ee: $b8
	jr z, jr_008_52fa                                ; $52ef: $28 $09

	xor a                                            ; $52f1: $af

jr_008_52f2:
	ld [$d351], a                                    ; $52f2: $ea $51 $d3
	xor a                                            ; $52f5: $af
	ld [$d352], a                                    ; $52f6: $ea $52 $d3
	ret                                              ; $52f9: $c9


jr_008_52fa:
	ld a, [$d352]                                    ; $52fa: $fa $52 $d3
	cp $1e                                           ; $52fd: $fe $1e
	jr z, jr_008_5306                                ; $52ff: $28 $05

	inc a                                            ; $5301: $3c
	ld [$d352], a                                    ; $5302: $ea $52 $d3
	ret                                              ; $5305: $c9


jr_008_5306:
	ld a, [wButtonsHeld]                                    ; $5306: $fa $23 $c1
	ld [$d350], a                                    ; $5309: $ea $50 $d3
	ld [$d351], a                                    ; $530c: $ea $51 $d3
	ld a, $1b                                        ; $530f: $3e $1b
	ld [$d352], a                                    ; $5311: $ea $52 $d3
	ret                                              ; $5314: $c9


Call_008_5315:
	ld a, $0b                                        ; $5315: $3e $0b
	ld [$d856], a                                    ; $5317: $ea $56 $d8
	ld de, $d845                                     ; $531a: $11 $45 $d8
	ld hl, $c167                                     ; $531d: $21 $67 $c1
	ld b, $03                                        ; $5320: $06 $03
	call Call_008_53cc                               ; $5322: $cd $cc $53
	ld de, $d84b                                     ; $5325: $11 $4b $d8
	ld hl, $c16d                                     ; $5328: $21 $6d $c1
	ld b, $03                                        ; $532b: $06 $03
	call Call_008_53cc                               ; $532d: $cd $cc $53
	ld de, $d855                                     ; $5330: $11 $55 $d8
	ld hl, $c177                                     ; $5333: $21 $77 $c1
	ld b, $05                                        ; $5336: $06 $05
	call Call_008_53cc                               ; $5338: $cd $cc $53
	ld de, $0030                                     ; $533b: $11 $30 $00
	ld bc, $0070                                     ; $533e: $01 $70 $00

jr_008_5341:
	push bc                                          ; $5341: $c5
	push de                                          ; $5342: $d5
	ld a, e                                          ; $5343: $7b
	ld [$d857], a                                    ; $5344: $ea $57 $d8
	ld a, d                                          ; $5347: $7a
	ld [$d858], a                                    ; $5348: $ea $58 $d8
	call $1d34                                       ; $534b: $cd $34 $1d
	call Call_008_539e                               ; $534e: $cd $9e $53
	pop de                                           ; $5351: $d1
	pop bc                                           ; $5352: $c1
	ld a, [$d856]                                    ; $5353: $fa $56 $d8
	or a                                             ; $5356: $b7
	jr z, jr_008_537d                                ; $5357: $28 $24

	inc de                                           ; $5359: $13
	dec bc                                           ; $535a: $0b
	ld a, b                                          ; $535b: $78
	or c                                             ; $535c: $b1
	jr nz, jr_008_5341                               ; $535d: $20 $e2

	ld de, $f000                                     ; $535f: $11 $00 $f0

jr_008_5362:
	push de                                          ; $5362: $d5
	ld a, d                                          ; $5363: $7a
	ld [$d857], a                                    ; $5364: $ea $57 $d8
	ld a, e                                          ; $5367: $7b
	ld [$d858], a                                    ; $5368: $ea $58 $d8
	call $1d34                                       ; $536b: $cd $34 $1d
	call Call_008_539e                               ; $536e: $cd $9e $53
	pop de                                           ; $5371: $d1
	ld a, [$d856]                                    ; $5372: $fa $56 $d8
	or a                                             ; $5375: $b7
	jr z, jr_008_537d                                ; $5376: $28 $05

	inc de                                           ; $5378: $13
	ld a, d                                          ; $5379: $7a
	or e                                             ; $537a: $b3
	jr nz, jr_008_5362                               ; $537b: $20 $e5

jr_008_537d:
	ld de, sUnmappedPlayer1stName                                     ; $537d: $11 $00 $a2
	ld hl, $d840                                     ; $5380: $21 $40 $d8
	ld b, $03                                        ; $5383: $06 $03
	call Call_008_53ea                               ; $5385: $cd $ea $53
	ld de, sUnmappedPlayer2ndName                                     ; $5388: $11 $07 $a2
	ld hl, $d846                                     ; $538b: $21 $46 $d8
	ld b, $03                                        ; $538e: $06 $03
	call Call_008_53ea                               ; $5390: $cd $ea $53
	ld de, $a20e                                     ; $5393: $11 $0e $a2
	ld hl, $d84c                                     ; $5396: $21 $4c $d8
	ld b, $05                                        ; $5399: $06 $05
	jp Jump_008_53ea                                 ; $539b: $c3 $ea $53


Call_008_539e:
	ld hl, $c162                                     ; $539e: $21 $62 $c1
	ld b, $0b                                        ; $53a1: $06 $0b
	ld c, $00                                        ; $53a3: $0e $00

jr_008_53a5:
	ld a, [hl+]                                      ; $53a5: $2a
	cp e                                             ; $53a6: $bb
	jr nz, jr_008_53c5                               ; $53a7: $20 $1c

	ld a, [hl+]                                      ; $53a9: $2a
	cp d                                             ; $53aa: $ba
	jr nz, jr_008_53c6                               ; $53ab: $20 $19

	push hl                                          ; $53ad: $e5
	ld hl, $d840                                     ; $53ae: $21 $40 $d8
	ld a, c                                          ; $53b1: $79
	rst AddAOntoHL                                          ; $53b2: $ef
	ld a, [$d857]                                    ; $53b3: $fa $57 $d8
	ld [hl+], a                                      ; $53b6: $22
	ld a, [$d858]                                    ; $53b7: $fa $58 $d8
	ld [hl], a                                       ; $53ba: $77
	ld a, [$d856]                                    ; $53bb: $fa $56 $d8
	dec a                                            ; $53be: $3d
	ld [$d856], a                                    ; $53bf: $ea $56 $d8
	pop hl                                           ; $53c2: $e1
	jr jr_008_53c6                                   ; $53c3: $18 $01

jr_008_53c5:
	inc hl                                           ; $53c5: $23

jr_008_53c6:
	inc c                                            ; $53c6: $0c
	inc c                                            ; $53c7: $0c
	dec b                                            ; $53c8: $05
	jr nz, jr_008_53a5                               ; $53c9: $20 $da

	ret                                              ; $53cb: $c9


Call_008_53cc:
jr_008_53cc:
	ld a, [hl-]                                      ; $53cc: $3a
	cp $00                                           ; $53cd: $fe $00
	ret nz                                           ; $53cf: $c0

	ld a, [hl]                                       ; $53d0: $7e
	cp $f9                                           ; $53d1: $fe $f9
	ret nz                                           ; $53d3: $c0

	xor a                                            ; $53d4: $af
	ld [hl+], a                                      ; $53d5: $22
	ld [hl], a                                       ; $53d6: $77
	dec hl                                           ; $53d7: $2b
	dec hl                                           ; $53d8: $2b
	ld [de], a                                       ; $53d9: $12
	dec de                                           ; $53da: $1b
	ld a, $09                                        ; $53db: $3e $09
	ld [de], a                                       ; $53dd: $12
	dec de                                           ; $53de: $1b
	ld a, [$d856]                                    ; $53df: $fa $56 $d8
	dec a                                            ; $53e2: $3d
	ld [$d856], a                                    ; $53e3: $ea $56 $d8
	dec b                                            ; $53e6: $05
	jr nz, jr_008_53cc                               ; $53e7: $20 $e3

	ret                                              ; $53e9: $c9


Call_008_53ea:
Jump_008_53ea:
	push bc                                          ; $53ea: $c5
	push de                                          ; $53eb: $d5
	ld a, b                                          ; $53ec: $78
	sla a                                            ; $53ed: $cb $27
	inc a                                            ; $53ef: $3c
	ld b, a                                          ; $53f0: $47
	xor a                                            ; $53f1: $af

jr_008_53f2:
	ld [de], a                                       ; $53f2: $12
	inc de                                           ; $53f3: $13
	dec b                                            ; $53f4: $05
	jr nz, jr_008_53f2                               ; $53f5: $20 $fb

	pop de                                           ; $53f7: $d1
	pop bc                                           ; $53f8: $c1

jr_008_53f9:
	ld a, [hl+]                                      ; $53f9: $2a
	ld [de], a                                       ; $53fa: $12
	inc de                                           ; $53fb: $13
	cp $09                                           ; $53fc: $fe $09
	ret z                                            ; $53fe: $c8

	cp $f0                                           ; $53ff: $fe $f0
	jr c, jr_008_5406                                ; $5401: $38 $03

	ld a, [hl]                                       ; $5403: $7e
	ld [de], a                                       ; $5404: $12
	inc de                                           ; $5405: $13

jr_008_5406:
	inc hl                                           ; $5406: $23
	dec b                                            ; $5407: $05
	jr nz, jr_008_53f9                               ; $5408: $20 $ef

	ld a, $09                                        ; $540a: $3e $09
	ld [de], a                                       ; $540c: $12
	ret                                              ; $540d: $c9


Call_008_540e:
	ld hl, $47d9                                     ; $540e: $21 $d9 $47
	ld a, [$a21a]                                    ; $5411: $fa $1a $a2
	rst AddAOntoHL                                          ; $5414: $ef
	ld a, [$a21c]                                    ; $5415: $fa $1c $a2
	ld b, a                                          ; $5418: $47
	ld a, [hl]                                       ; $5419: $7e
	cp b                                             ; $541a: $b8
	jr nc, jr_008_5420                               ; $541b: $30 $03

	ld [$a21c], a                                    ; $541d: $ea $1c $a2

jr_008_5420:
	ld hl, $47d9                                     ; $5420: $21 $d9 $47
	ld a, [$a21f]                                    ; $5423: $fa $1f $a2
	rst AddAOntoHL                                          ; $5426: $ef
	ld a, [$a221]                                    ; $5427: $fa $21 $a2
	ld b, a                                          ; $542a: $47
	ld a, [hl]                                       ; $542b: $7e
	cp b                                             ; $542c: $b8
	jr nc, jr_008_5432                               ; $542d: $30 $03

	ld [$a221], a                                    ; $542f: $ea $21 $a2

jr_008_5432:
	ret                                              ; $5432: $c9


Call_008_5433:
	call Call_000_1309                                       ; $5433: $cd $09 $13
	ld b, $0c                                        ; $5436: $06 $0c
	call $12b5                                       ; $5438: $cd $b5 $12
	ld [hl], b                                       ; $543b: $70
	inc hl                                           ; $543c: $23
	inc hl                                           ; $543d: $23
	call Call_000_1309                                       ; $543e: $cd $09 $13
	ld b, $1f                                        ; $5441: $06 $1f
	call $12b5                                       ; $5443: $cd $b5 $12
	ld [hl], b                                       ; $5446: $70
	inc hl                                           ; $5447: $23
	inc hl                                           ; $5448: $23
	call Call_000_1309                                       ; $5449: $cd $09 $13
	ld b, $04                                        ; $544c: $06 $04
	call $12b5                                       ; $544e: $cd $b5 $12
	ld [hl], b                                       ; $5451: $70
	ret                                              ; $5452: $c9


Func_08_5453::
	ld a, [$c16a]                                    ; $5453: $fa $6a $c1
	and a                                            ; $5456: $a7
	jr nz, jr_008_545c                               ; $5457: $20 $03

	jp $397f                                         ; $5459: $c3 $7f $39

jr_008_545c:
	call $3a1b                                       ; $545c: $cd $1b $3a
	ld a, $d5                                        ; $545f: $3e $d5
	rst SubAFromBC                                          ; $5461: $e7
	ld h, b                                          ; $5462: $60
	ld l, c                                          ; $5463: $69
	add hl, hl                                       ; $5464: $29
	ld bc, $58b7                                     ; $5465: $01 $b7 $58
	add hl, bc                                       ; $5468: $09
	ld a, [hl+]                                      ; $5469: $2a
	ld b, [hl]                                       ; $546a: $46
	dec hl                                           ; $546b: $2b
	or b                                             ; $546c: $b0
	ret z                                            ; $546d: $c8

	call $366b                                       ; $546e: $cd $6b $36
	ld a, [$c16a]                                    ; $5471: $fa $6a $c1
	dec a                                            ; $5474: $3d
	ld b, a                                          ; $5475: $47
	sla b                                            ; $5476: $cb $20
	sla b                                            ; $5478: $cb $20
	sla b                                            ; $547a: $cb $20
	sla a                                            ; $547c: $cb $27
	sla a                                            ; $547e: $cb $27
	add b                                            ; $5480: $80
	rst AddAOntoHL                                          ; $5481: $ef
	ld de, $c1de                                     ; $5482: $11 $de $c1
	ld a, $f9                                        ; $5485: $3e $f9
	ld [de], a                                       ; $5487: $12
	inc de                                           ; $5488: $13
	call $ccd7                                       ; $5489: $cd $d7 $cc
	ld a, $80                                        ; $548c: $3e $80
	ld [de], a                                       ; $548e: $12
	inc de                                           ; $548f: $13
	ld a, $da                                        ; $5490: $3e $da
	ld [de], a                                       ; $5492: $12
	inc de                                           ; $5493: $13
	ld a, $ff                                        ; $5494: $3e $ff
	ld [de], a                                       ; $5496: $12
	push hl                                          ; $5497: $e5
	ld hl, $c1de                                     ; $5498: $21 $de $c1
	call $0ab5                                       ; $549b: $cd $b5 $0a
	pop hl                                           ; $549e: $e1
	ld de, $c1df                                     ; $549f: $11 $df $c1
	call $ccd7                                       ; $54a2: $cd $d7 $cc
	ld a, $d3                                        ; $54a5: $3e $d3
	ld [de], a                                       ; $54a7: $12
	inc de                                           ; $54a8: $13
	ld a, $d4                                        ; $54a9: $3e $d4
	ld [de], a                                       ; $54ab: $12
	push hl                                          ; $54ac: $e5
	ld hl, $c1de                                     ; $54ad: $21 $de $c1
	call $0ab5                                       ; $54b0: $cd $b5 $0a
	pop hl                                           ; $54b3: $e1
	ld a, [hl+]                                      ; $54b4: $2a
	ld [$c0d0], a                                    ; $54b5: $ea $d0 $c0
	ld c, a                                          ; $54b8: $4f
	ld a, [hl+]                                      ; $54b9: $2a
	ld [$c0d1], a                                    ; $54ba: $ea $d1 $c0
	ld b, a                                          ; $54bd: $47
	push bc                                          ; $54be: $c5
	ld a, $01                                        ; $54bf: $3e $01
	ld [$c0db], a                                    ; $54c1: $ea $db $c0
	ld a, [hl+]                                      ; $54c4: $2a
	ld b, a                                          ; $54c5: $47
	ld a, [hl+]                                      ; $54c6: $2a
	ld c, a                                          ; $54c7: $4f
	ld de, $9800                                     ; $54c8: $11 $00 $98
	swap a                                           ; $54cb: $cb $37
	and $f0                                          ; $54cd: $e6 $f0
	push af                                          ; $54cf: $f5
	call $1327                                       ; $54d0: $cd $27 $13
	pop af                                           ; $54d3: $f1
	call $1327                                       ; $54d4: $cd $27 $13
	ld a, b                                          ; $54d7: $78
	call $1327                                       ; $54d8: $cd $27 $13
	push de                                          ; $54db: $d5
	ld a, c                                          ; $54dc: $79
	swap a                                           ; $54dd: $cb $37
	and $f0                                          ; $54df: $e6 $f0
	sla c                                            ; $54e1: $cb $21
	sla c                                            ; $54e3: $cb $21
	add c                                            ; $54e5: $81
	add b                                            ; $54e6: $80
	swap a                                           ; $54e7: $cb $37
	ld b, a                                          ; $54e9: $47
	ld de, $8a40                                     ; $54ea: $11 $40 $8a
	and $0f                                          ; $54ed: $e6 $0f
	add d                                            ; $54ef: $82
	ld d, a                                          ; $54f0: $57
	ld a, b                                          ; $54f1: $78
	and $f0                                          ; $54f2: $e6 $f0
	call $1327                                       ; $54f4: $cd $27 $13
	ld a, [hl+]                                      ; $54f7: $2a
	ld b, a                                          ; $54f8: $47
	ld c, [hl]                                       ; $54f9: $4e
	ld h, d                                          ; $54fa: $62
	ld l, e                                          ; $54fb: $6b
	ld de, $da80                                     ; $54fc: $11 $80 $da
	push bc                                          ; $54ff: $c5

jr_008_5500:
	push bc                                          ; $5500: $c5
	push hl                                          ; $5501: $e5

jr_008_5502:
	call $34b5                                       ; $5502: $cd $b5 $34
	jr c, jr_008_550c                                ; $5505: $38 $05

	ld a, $10                                        ; $5507: $3e $10
	rst AddAOntoHL                                          ; $5509: $ef
	jr jr_008_551d                                   ; $550a: $18 $11

jr_008_550c:
	ld c, $10                                        ; $550c: $0e $10

jr_008_550e:
	di                                               ; $550e: $f3

jr_008_550f:
	ldh a, [rSTAT]                                   ; $550f: $f0 $41
	bit 1, a                                         ; $5511: $cb $4f
	jr nz, jr_008_550f                               ; $5513: $20 $fa

	ld a, [de]                                       ; $5515: $1a
	ld [hl], a                                       ; $5516: $77
	ei                                               ; $5517: $fb
	inc de                                           ; $5518: $13
	inc hl                                           ; $5519: $23
	dec c                                            ; $551a: $0d
	jr nz, jr_008_550e                               ; $551b: $20 $f1

jr_008_551d:
	dec b                                            ; $551d: $05
	jr nz, jr_008_5502                               ; $551e: $20 $e2

	pop hl                                           ; $5520: $e1
	ld bc, $0140                                     ; $5521: $01 $40 $01
	add hl, bc                                       ; $5524: $09
	pop bc                                           ; $5525: $c1
	dec c                                            ; $5526: $0d
	jr nz, jr_008_5500                               ; $5527: $20 $d7

	pop bc                                           ; $5529: $c1
	pop de                                           ; $552a: $d1
	pop hl                                           ; $552b: $e1
	ld a, [wInitialA]                                    ; $552c: $fa $00 $c1
	cp $11                                           ; $552f: $fe $11
	ret nz                                           ; $5531: $c0

	ld a, l                                          ; $5532: $7d
	ld [$c0d0], a                                    ; $5533: $ea $d0 $c0
	ld a, h                                          ; $5536: $7c
	ld [$c0d1], a                                    ; $5537: $ea $d1 $c0
	ld a, $01                                        ; $553a: $3e $01
	ld [$c0db], a                                    ; $553c: $ea $db $c0
	ld hl, $d4d3                                     ; $553f: $21 $d3 $d4
	ld a, $01                                        ; $5542: $3e $01
	ldh [rVBK], a                                    ; $5544: $e0 $4f

jr_008_5546:
	push bc                                          ; $5546: $c5
	push de                                          ; $5547: $d5

jr_008_5548:
	call $34b5                                       ; $5548: $cd $b5 $34
	jr nc, jr_008_555b                               ; $554b: $30 $0e

	di                                               ; $554d: $f3

jr_008_554e:
	ldh a, [rSTAT]                                   ; $554e: $f0 $41
	bit 1, a                                         ; $5550: $cb $4f
	jr nz, jr_008_554e                               ; $5552: $20 $fa

	ld a, [hl]                                       ; $5554: $7e
	swap a                                           ; $5555: $cb $37
	and $0f                                          ; $5557: $e6 $0f
	ld [de], a                                       ; $5559: $12
	ei                                               ; $555a: $fb

jr_008_555b:
	inc de                                           ; $555b: $13
	dec b                                            ; $555c: $05
	call $34b5                                       ; $555d: $cd $b5 $34
	jr nc, jr_008_556e                               ; $5560: $30 $0c

	di                                               ; $5562: $f3

jr_008_5563:
	ldh a, [rSTAT]                                   ; $5563: $f0 $41
	bit 1, a                                         ; $5565: $cb $4f
	jr nz, jr_008_5563                               ; $5567: $20 $fa

	ld a, [hl]                                       ; $5569: $7e
	and $0f                                          ; $556a: $e6 $0f
	ld [de], a                                       ; $556c: $12
	ei                                               ; $556d: $fb

jr_008_556e:
	inc de                                           ; $556e: $13
	inc hl                                           ; $556f: $23
	dec b                                            ; $5570: $05
	jr nz, jr_008_5548                               ; $5571: $20 $d5

	pop de                                           ; $5573: $d1
	pop bc                                           ; $5574: $c1
	ld a, $20                                        ; $5575: $3e $20
	call $1327                                       ; $5577: $cd $27 $13
	dec c                                            ; $557a: $0d
	jr nz, jr_008_5546                               ; $557b: $20 $c9

	ld a, $00                                        ; $557d: $3e $00
	ldh [rVBK], a                                    ; $557f: $e0 $4f
	ret                                              ; $5581: $c9


	ld a, [$d230]                                    ; $5582: $fa $30 $d2
	cp $01                                           ; $5585: $fe $01
	jr nz, jr_008_55e2                               ; $5587: $20 $59

	inc a                                            ; $5589: $3c
	ld [$d230], a                                    ; $558a: $ea $30 $d2
	ldh a, [hDisp0_LCDC]                                     ; $558d: $f0 $82
	and $fb                                          ; $558f: $e6 $fb
	ldh [hDisp0_LCDC], a                                     ; $5591: $e0 $82
	or $ff                                           ; $5593: $f6 $ff
	ldh [rOBP0], a                                   ; $5595: $e0 $48
	ld bc, $6264                                     ; $5597: $01 $64 $62
	call $18c0                                       ; $559a: $cd $c0 $18
	ld hl, $8000                                     ; $559d: $21 $00 $80
	ld b, $10                                        ; $55a0: $06 $10

jr_008_55a2:
	di                                               ; $55a2: $f3

jr_008_55a3:
	ldh a, [rSTAT]                                   ; $55a3: $f0 $41
	bit 1, a                                         ; $55a5: $cb $4f
	jr nz, jr_008_55a3                               ; $55a7: $20 $fa

	xor a                                            ; $55a9: $af
	ld [hl+], a                                      ; $55aa: $22
	ei                                               ; $55ab: $fb
	dec b                                            ; $55ac: $05
	jr nz, jr_008_55a2                               ; $55ad: $20 $f3

	ld hl, $8000                                     ; $55af: $21 $00 $80
	di                                               ; $55b2: $f3

jr_008_55b3:
	ldh a, [rSTAT]                                   ; $55b3: $f0 $41
	bit 1, a                                         ; $55b5: $cb $4f
	jr nz, jr_008_55b3                               ; $55b7: $20 $fa

	ld a, $18                                        ; $55b9: $3e $18
	ld [hl+], a                                      ; $55bb: $22
	ld [hl+], a                                      ; $55bc: $22
	ld [hl+], a                                      ; $55bd: $22
	ld [hl+], a                                      ; $55be: $22
	ei                                               ; $55bf: $fb
	ld h, $c2                                        ; $55c0: $26 $c2
	ld c, $0a                                        ; $55c2: $0e $0a

jr_008_55c4:
	ld l, $00                                        ; $55c4: $2e $00
	ld [hl], c                                       ; $55c6: $71
	ld l, $01                                        ; $55c7: $2e $01
	ld [hl], $80                                     ; $55c9: $36 $80
	ld l, $05                                        ; $55cb: $2e $05
	call Call_000_1309                                       ; $55cd: $cd $09 $13
	and $7f                                          ; $55d0: $e6 $7f
	ld [hl], a                                       ; $55d2: $77
	call Call_008_5627                               ; $55d3: $cd $27 $56
	ld l, $08                                        ; $55d6: $2e $08
	ld [hl], $c8                                     ; $55d8: $36 $c8
	inc l                                            ; $55da: $2c
	ld [hl], $3b                                     ; $55db: $36 $3b
	inc h                                            ; $55dd: $24
	dec c                                            ; $55de: $0d
	jr nz, jr_008_55c4                               ; $55df: $20 $e3

	ret                                              ; $55e1: $c9


jr_008_55e2:
	cp $02                                           ; $55e2: $fe $02
	ret nz                                           ; $55e4: $c0

	ld hl, $c121                                     ; $55e5: $21 $21 $c1
	inc [hl]                                         ; $55e8: $34
	ld a, [hl]                                       ; $55e9: $7e
	and $01                                          ; $55ea: $e6 $01
	ret z                                            ; $55ec: $c8

	ld h, $c2                                        ; $55ed: $26 $c2
	ld c, $0a                                        ; $55ef: $0e $0a

jr_008_55f1:
	ld l, $05                                        ; $55f1: $2e $05
	ld a, [hl]                                       ; $55f3: $7e
	add b                                            ; $55f4: $80
	cp $67                                           ; $55f5: $fe $67
	jr nc, jr_008_5605                               ; $55f7: $30 $0c

jr_008_55f9:
	ld [hl], a                                       ; $55f9: $77
	ld l, $07                                        ; $55fa: $2e $07
	call Call_008_5660                               ; $55fc: $cd $60 $56
	ld [hl], a                                       ; $55ff: $77
	inc h                                            ; $5600: $24
	dec c                                            ; $5601: $0d
	jr nz, jr_008_55f1                               ; $5602: $20 $ed

	ret                                              ; $5604: $c9


jr_008_5605:
	ld l, $01                                        ; $5605: $2e $01
	ld a, [$d231]                                    ; $5607: $fa $31 $d2
	cp c                                             ; $560a: $b9
	jr c, jr_008_561f                                ; $560b: $38 $12

	call Call_000_1309                                       ; $560d: $cd $09 $13
	and $1f                                          ; $5610: $e6 $1f
	jr nz, jr_008_561f                               ; $5612: $20 $0b

	ld [hl], $00                                     ; $5614: $36 $00
	call Call_008_5627                               ; $5616: $cd $27 $56
	ld l, $05                                        ; $5619: $2e $05
	ld a, $10                                        ; $561b: $3e $10
	jr jr_008_55f9                                   ; $561d: $18 $da

jr_008_561f:
	ld [hl], $80                                     ; $561f: $36 $80
	ld l, $05                                        ; $5621: $2e $05
	ld a, $67                                        ; $5623: $3e $67
	jr jr_008_55f9                                   ; $5625: $18 $d2

Call_008_5627:
	ld l, $07                                        ; $5627: $2e $07

jr_008_5629:
	call Call_000_1309                                       ; $5629: $cd $09 $13
	cp $a0                                           ; $562c: $fe $a0
	jr c, jr_008_5638                                ; $562e: $38 $08

	sub $a0                                          ; $5630: $d6 $a0
	sla a                                            ; $5632: $cb $27
	cp $a0                                           ; $5634: $fe $a0
	jr nc, jr_008_5629                               ; $5636: $30 $f1

jr_008_5638:
	push hl                                          ; $5638: $e5
	push af                                          ; $5639: $f5
	ld hl, $d543                                     ; $563a: $21 $43 $d5
	call Call_008_56a8                               ; $563d: $cd $a8 $56
	pop af                                           ; $5640: $f1
	ld [hl], a                                       ; $5641: $77
	ld hl, $d54d                                     ; $5642: $21 $4d $d5
	call Call_008_56a8                               ; $5645: $cd $a8 $56
	call Call_000_1309                                       ; $5648: $cd $09 $13
	ld [hl], a                                       ; $564b: $77
	ld hl, $d557                                     ; $564c: $21 $57 $d5
	call Call_008_56a8                               ; $564f: $cd $a8 $56
	call Call_000_1309                                       ; $5652: $cd $09 $13
	and $07                                          ; $5655: $e6 $07
	sla a                                            ; $5657: $cb $27
	ld [hl], a                                       ; $5659: $77
	pop hl                                           ; $565a: $e1
	call Call_008_5660                               ; $565b: $cd $60 $56
	ld [hl], a                                       ; $565e: $77
	ret                                              ; $565f: $c9


Call_008_5660:
	push hl                                          ; $5660: $e5
	push de                                          ; $5661: $d5
	ld hl, $d557                                     ; $5662: $21 $57 $d5
	call Call_008_56a8                               ; $5665: $cd $a8 $56
	ld d, [hl]                                       ; $5668: $56
	ld hl, $d54d                                     ; $5669: $21 $4d $d5
	call Call_008_56a8                               ; $566c: $cd $a8 $56
	ld a, [hl]                                       ; $566f: $7e
	inc a                                            ; $5670: $3c
	ld [hl], a                                       ; $5671: $77
	srl a                                            ; $5672: $cb $3f
	srl a                                            ; $5674: $cb $3f
	srl a                                            ; $5676: $cb $3f
	push bc                                          ; $5678: $c5
	call $1331                                       ; $5679: $cd $31 $13
	ld e, $00                                        ; $567c: $1e $00
	rl e                                             ; $567e: $cb $13
	ld a, e                                          ; $5680: $7b
	and a                                            ; $5681: $a7
	jr z, jr_008_5688                                ; $5682: $28 $04

	ld a, b                                          ; $5684: $78
	cpl                                              ; $5685: $2f
	inc a                                            ; $5686: $3c
	ld b, a                                          ; $5687: $47

jr_008_5688:
	ld c, d                                          ; $5688: $4a
	call BCequBtimesC                                       ; $5689: $cd $5f $12
	ld h, b                                          ; $568c: $60
	ld l, c                                          ; $568d: $69
	ld bc, $00ff                                     ; $568e: $01 $ff $00
	call BCHLequHLdivModBC                                       ; $5691: $cd $c1 $12
	pop bc                                           ; $5694: $c1
	ld a, e                                          ; $5695: $7b
	and a                                            ; $5696: $a7
	ld a, l                                          ; $5697: $7d
	jr z, jr_008_569c                                ; $5698: $28 $02

	cpl                                              ; $569a: $2f
	inc a                                            ; $569b: $3c

jr_008_569c:
	ld e, a                                          ; $569c: $5f
	ld hl, $d543                                     ; $569d: $21 $43 $d5
	call Call_008_56a8                               ; $56a0: $cd $a8 $56
	ld a, [hl]                                       ; $56a3: $7e
	add e                                            ; $56a4: $83
	pop de                                           ; $56a5: $d1
	pop hl                                           ; $56a6: $e1
	ret                                              ; $56a7: $c9


Call_008_56a8:
	ld a, c                                          ; $56a8: $79
	dec a                                            ; $56a9: $3d
	rst AddAOntoHL                                          ; $56aa: $ef
	ret                                              ; $56ab: $c9


	ld [bc], a                                       ; $56ac: $02
	ld bc, $0302                                     ; $56ad: $01 $02 $03
	ld [bc], a                                       ; $56b0: $02
	ld bc, $0302                                     ; $56b1: $01 $02 $03
	rst $38                                          ; $56b4: $ff
	dec b                                            ; $56b5: $05
	inc b                                            ; $56b6: $04
	dec b                                            ; $56b7: $05
	ld b, $05                                        ; $56b8: $06 $05
	inc b                                            ; $56ba: $04
	dec b                                            ; $56bb: $05
	ld b, $ff                                        ; $56bc: $06 $ff
	ld [$0807], sp                                   ; $56be: $08 $07 $08
	add hl, bc                                       ; $56c1: $09
	ld [$0807], sp                                   ; $56c2: $08 $07 $08
	add hl, bc                                       ; $56c5: $09
	rst $38                                          ; $56c6: $ff
	xor h                                            ; $56c7: $ac
	ld d, [hl]                                       ; $56c8: $56
	or l                                             ; $56c9: $b5
	ld d, [hl]                                       ; $56ca: $56
	cp [hl]                                          ; $56cb: $be
	ld d, [hl]                                       ; $56cc: $56
	inc bc                                           ; $56cd: $03
	ld d, h                                          ; $56ce: $54
	nop                                              ; $56cf: $00
	ld d, l                                          ; $56d0: $55
	ld bc, $0056                                     ; $56d1: $01 $56 $00
	ld a, [$d232]                                    ; $56d4: $fa $32 $d2
	ld e, a                                          ; $56d7: $5f
	ld a, [$d233]                                    ; $56d8: $fa $33 $d2
	ld d, a                                          ; $56db: $57
	call $3a1b                                       ; $56dc: $cd $1b $3a
	call wCpBCtoDE                                       ; $56df: $cd $8c $ce
	jr z, jr_008_56f6                                ; $56e2: $28 $12

	xor a                                            ; $56e4: $af
	ld [$d7ef], a                                    ; $56e5: $ea $ef $d7
	ld [$c164], a                                    ; $56e8: $ea $64 $c1
	ld [$c173], a                                    ; $56eb: $ea $73 $c1
	ld a, c                                          ; $56ee: $79
	ld [$d232], a                                    ; $56ef: $ea $32 $d2
	ld a, b                                          ; $56f2: $78
	ld [$d233], a                                    ; $56f3: $ea $33 $d2

jr_008_56f6:
	ld a, [$d7ef]                                    ; $56f6: $fa $ef $d7
	call wJumpTable                                       ; $56f9: $cd $80 $cf
	ld [bc], a                                       ; $56fc: $02
	ld d, a                                          ; $56fd: $57
	dec [hl]                                         ; $56fe: $35
	ld d, a                                          ; $56ff: $57
	ld b, e                                          ; $5700: $43
	ld d, a                                          ; $5701: $57
	ld hl, $56cd                                     ; $5702: $21 $cd $56
	ld c, [hl]                                       ; $5705: $4e
	inc hl                                           ; $5706: $23

jr_008_5707:
	call $3a1b                                       ; $5707: $cd $1b $3a
	ld a, $d5                                        ; $570a: $3e $d5
	rst SubAFromBC                                          ; $570c: $e7
	ld a, c                                          ; $570d: $79
	ld b, [hl]                                       ; $570e: $46
	cp b                                             ; $570f: $b8
	jr z, jr_008_571a                                ; $5710: $28 $08

	inc hl                                           ; $5712: $23
	inc hl                                           ; $5713: $23
	dec c                                            ; $5714: $0d
	jr nz, jr_008_5707                               ; $5715: $20 $f0

	xor a                                            ; $5717: $af
	jr jr_008_5722                                   ; $5718: $18 $08

jr_008_571a:
	inc hl                                           ; $571a: $23
	ld a, [hl]                                       ; $571b: $7e
	and a                                            ; $571c: $a7
	jr z, jr_008_5722                                ; $571d: $28 $03

	ld a, [$c172]                                    ; $571f: $fa $72 $c1

jr_008_5722:
	ld [$c16c], a                                    ; $5722: $ea $6c $c1
	ld a, [$c163]                                    ; $5725: $fa $63 $c1
	and a                                            ; $5728: $a7
	jr z, jr_008_572e                                ; $5729: $28 $03

	jp $1b19                                         ; $572b: $c3 $19 $1b


jr_008_572e:
	ld a, [$c164]                                    ; $572e: $fa $64 $c1
	and a                                            ; $5731: $a7
	ret z                                            ; $5732: $c8

	jr jr_008_574d                                   ; $5733: $18 $18

	xor a                                            ; $5735: $af
	ld [$c164], a                                    ; $5736: $ea $64 $c1
	call Call_008_58a8                               ; $5739: $cd $a8 $58
	ld a, [hl]                                       ; $573c: $7e
	ld [$c16a], a                                    ; $573d: $ea $6a $c1
	jp $1b19                                         ; $5740: $c3 $19 $1b


	ld a, [$c163]                                    ; $5743: $fa $63 $c1
	and a                                            ; $5746: $a7
	jr nz, jr_008_574d                               ; $5747: $20 $04

	xor a                                            ; $5749: $af
	ld [$d7ef], a                                    ; $574a: $ea $ef $d7

jr_008_574d:
	ld a, [$c173]                                    ; $574d: $fa $73 $c1
	inc a                                            ; $5750: $3c
	ld [$c173], a                                    ; $5751: $ea $73 $c1
	cp $03                                           ; $5754: $fe $03
	ret nz                                           ; $5756: $c0

	xor a                                            ; $5757: $af
	ld [$c173], a                                    ; $5758: $ea $73 $c1
	call Call_008_58a8                               ; $575b: $cd $a8 $58
	call Call_008_58a2                               ; $575e: $cd $a2 $58
	ld [$c16a], a                                    ; $5761: $ea $6a $c1
	call Call_008_588b                               ; $5764: $cd $8b $58
	jp $3ba8                                         ; $5767: $c3 $a8 $3b


	call $3a1b                                       ; $576a: $cd $1b $3a
	ld a, $d5                                        ; $576d: $3e $d5
	rst SubAFromBC                                          ; $576f: $e7
	ld b, a                                          ; $5770: $47
	ld hl, $56cd                                     ; $5771: $21 $cd $56
	ld c, [hl]                                       ; $5774: $4e
	inc hl                                           ; $5775: $23

jr_008_5776:
	ld a, [hl+]                                      ; $5776: $2a
	inc hl                                           ; $5777: $23
	cp b                                             ; $5778: $b8
	ld a, $00                                        ; $5779: $3e $00
	ret z                                            ; $577b: $c8

	dec c                                            ; $577c: $0d
	jr nz, jr_008_5776                               ; $577d: $20 $f7

	ld a, $01                                        ; $577f: $3e $01
	ret                                              ; $5781: $c9


	ld hl, $8a40                                     ; $5782: $21 $40 $8a
	call Call_008_57b9                               ; $5785: $cd $b9 $57
	ld hl, $8b80                                     ; $5788: $21 $80 $8b
	call Call_008_57b9                               ; $578b: $cd $b9 $57
	ld hl, $8cc0                                     ; $578e: $21 $c0 $8c
	call Call_008_57b9                               ; $5791: $cd $b9 $57
	ld hl, $8a40                                     ; $5794: $21 $40 $8a
	call Call_008_57ea                               ; $5797: $cd $ea $57
	ld hl, $8a50                                     ; $579a: $21 $50 $8a
	call Call_008_57ea                               ; $579d: $cd $ea $57
	ld hl, $8a60                                     ; $57a0: $21 $60 $8a
	call Call_008_57ea                               ; $57a3: $cd $ea $57
	ld hl, $8a70                                     ; $57a6: $21 $70 $8a
	call Call_008_57ea                               ; $57a9: $cd $ea $57
	ld hl, $8a80                                     ; $57ac: $21 $80 $8a
	call Call_008_57ea                               ; $57af: $cd $ea $57
	ld hl, $8a90                                     ; $57b2: $21 $90 $8a
	call Call_008_57ea                               ; $57b5: $cd $ea $57
	ret                                              ; $57b8: $c9


Call_008_57b9:
	ld b, $10                                        ; $57b9: $06 $10

jr_008_57bb:
	ld c, $06                                        ; $57bb: $0e $06
	push hl                                          ; $57bd: $e5
	di                                               ; $57be: $f3

jr_008_57bf:
	ldh a, [rSTAT]                                   ; $57bf: $f0 $41
	bit 1, a                                         ; $57c1: $cb $4f
	jr nz, jr_008_57bf                               ; $57c3: $20 $fa

	ld a, [hl]                                       ; $57c5: $7e
	ei                                               ; $57c6: $fb
	rla                                              ; $57c7: $17
	rla                                              ; $57c8: $17
	and $01                                          ; $57c9: $e6 $01
	ld d, a                                          ; $57cb: $57
	ld a, $50                                        ; $57cc: $3e $50
	rst AddAOntoHL                                          ; $57ce: $ef

jr_008_57cf:
	di                                               ; $57cf: $f3

jr_008_57d0:
	ldh a, [rSTAT]                                   ; $57d0: $f0 $41
	bit 1, a                                         ; $57d2: $cb $4f
	jr nz, jr_008_57d0                               ; $57d4: $20 $fa

	ld a, [hl]                                       ; $57d6: $7e
	srl d                                            ; $57d7: $cb $3a
	rla                                              ; $57d9: $17
	ld [hl], a                                       ; $57da: $77
	ei                                               ; $57db: $fb
	rl d                                             ; $57dc: $cb $12
	ld a, $10                                        ; $57de: $3e $10
	rst SubAFromHL                                          ; $57e0: $d7
	dec c                                            ; $57e1: $0d
	jr nz, jr_008_57cf                               ; $57e2: $20 $eb

	pop hl                                           ; $57e4: $e1
	inc hl                                           ; $57e5: $23
	dec b                                            ; $57e6: $05
	jr nz, jr_008_57bb                               ; $57e7: $20 $d2

	ret                                              ; $57e9: $c9


Call_008_57ea:
	call Call_008_57f0                               ; $57ea: $cd $f0 $57
	inc hl                                           ; $57ed: $23
	jr jr_008_57f0                                   ; $57ee: $18 $00

Call_008_57f0:
jr_008_57f0:
	push hl                                          ; $57f0: $e5
	push hl                                          ; $57f1: $e5
	inc h                                            ; $57f2: $24
	inc h                                            ; $57f3: $24
	ld a, $8e                                        ; $57f4: $3e $8e
	rst AddAOntoHL                                          ; $57f6: $ef
	di                                               ; $57f7: $f3

jr_008_57f8:
	ldh a, [rSTAT]                                   ; $57f8: $f0 $41
	bit 1, a                                         ; $57fa: $cb $4f
	jr nz, jr_008_57f8                               ; $57fc: $20 $fa

	ld d, [hl]                                       ; $57fe: $56
	ei                                               ; $57ff: $fb
	pop hl                                           ; $5800: $e1
	call Call_008_5814                               ; $5801: $cd $14 $58
	inc h                                            ; $5804: $24
	ld a, $40                                        ; $5805: $3e $40
	rst AddAOntoHL                                          ; $5807: $ef
	call Call_008_5814                               ; $5808: $cd $14 $58
	inc h                                            ; $580b: $24
	ld a, $40                                        ; $580c: $3e $40
	rst AddAOntoHL                                          ; $580e: $ef
	call Call_008_5814                               ; $580f: $cd $14 $58
	pop hl                                           ; $5812: $e1
	ret                                              ; $5813: $c9


Call_008_5814:
	push hl                                          ; $5814: $e5
	ld b, $08                                        ; $5815: $06 $08

jr_008_5817:
	di                                               ; $5817: $f3

jr_008_5818:
	ldh a, [rSTAT]                                   ; $5818: $f0 $41
	bit 1, a                                         ; $581a: $cb $4f
	jr nz, jr_008_5818                               ; $581c: $20 $fa

	ld e, [hl]                                       ; $581e: $5e
	ld [hl], d                                       ; $581f: $72
	ei                                               ; $5820: $fb
	ld d, e                                          ; $5821: $53
	inc hl                                           ; $5822: $23
	inc hl                                           ; $5823: $23
	dec b                                            ; $5824: $05
	jr nz, jr_008_5817                               ; $5825: $20 $f0

	pop hl                                           ; $5827: $e1
	ret                                              ; $5828: $c9


	ld b, $00                                        ; $5829: $06 $00

jr_008_582b:
	ld c, $00                                        ; $582b: $0e $00

jr_008_582d:
	call Call_008_583d                               ; $582d: $cd $3d $58
	inc c                                            ; $5830: $0c
	ld a, $04                                        ; $5831: $3e $04
	cp c                                             ; $5833: $b9
	jr nz, jr_008_582d                               ; $5834: $20 $f7

	inc b                                            ; $5836: $04
	ld a, $04                                        ; $5837: $3e $04
	cp b                                             ; $5839: $b8
	jr nz, jr_008_582b                               ; $583a: $20 $ef

	ret                                              ; $583c: $c9


Call_008_583d:
	push bc                                          ; $583d: $c5
	ld de, $9c00                                     ; $583e: $11 $00 $9c
	ld hl, $9c00                                     ; $5841: $21 $00 $9c
	ld a, b                                          ; $5844: $78
	swap a                                           ; $5845: $cb $37
	sla a                                            ; $5847: $cb $27
	ld b, a                                          ; $5849: $47
	rst AddAOntoHL                                          ; $584a: $ef
	ld a, b                                          ; $584b: $78
	rst AddAOntoHL                                          ; $584c: $ef
	ld a, b                                          ; $584d: $78
	rst AddAOntoHL                                          ; $584e: $ef
	ld a, c                                          ; $584f: $79
	sla a                                            ; $5850: $cb $27
	add c                                            ; $5852: $81
	sla a                                            ; $5853: $cb $27
	rst AddAOntoHL                                          ; $5855: $ef
	ld b, $03                                        ; $5856: $06 $03

jr_008_5858:
	ld c, $06                                        ; $5858: $0e $06
	push de                                          ; $585a: $d5
	push hl                                          ; $585b: $e5

jr_008_585c:
	di                                               ; $585c: $f3

jr_008_585d:
	ldh a, [rSTAT]                                   ; $585d: $f0 $41
	bit 1, a                                         ; $585f: $cb $4f
	jr nz, jr_008_585d                               ; $5861: $20 $fa

	ld a, [hl]                                       ; $5863: $7e
	ei                                               ; $5864: $fb
	cp $a0                                           ; $5865: $fe $a0
	jr c, jr_008_586d                                ; $5867: $38 $04

	cp $a4                                           ; $5869: $fe $a4
	jr c, jr_008_5877                                ; $586b: $38 $0a

jr_008_586d:
	di                                               ; $586d: $f3

jr_008_586e:
	ldh a, [rSTAT]                                   ; $586e: $f0 $41
	bit 1, a                                         ; $5870: $cb $4f
	jr nz, jr_008_586e                               ; $5872: $20 $fa

	ld a, [de]                                       ; $5874: $1a
	ld [hl], a                                       ; $5875: $77
	ei                                               ; $5876: $fb

jr_008_5877:
	inc hl                                           ; $5877: $23
	inc de                                           ; $5878: $13
	dec c                                            ; $5879: $0d
	jr nz, jr_008_585c                               ; $587a: $20 $e0

	pop hl                                           ; $587c: $e1
	pop de                                           ; $587d: $d1
	ld a, $20                                        ; $587e: $3e $20
	rst AddAOntoHL                                          ; $5880: $ef
	ld a, $20                                        ; $5881: $3e $20
	call $1327                                       ; $5883: $cd $27 $13
	dec b                                            ; $5886: $05
	jr nz, jr_008_5858                               ; $5887: $20 $cf

	pop bc                                           ; $5889: $c1
	ret                                              ; $588a: $c9


Call_008_588b:
	ld a, [$c164]                                    ; $588b: $fa $64 $c1
	inc a                                            ; $588e: $3c
	ld [$c164], a                                    ; $588f: $ea $64 $c1
	push hl                                          ; $5892: $e5
	call Call_008_58a8                               ; $5893: $cd $a8 $58
	call Call_008_58a2                               ; $5896: $cd $a2 $58
	pop hl                                           ; $5899: $e1
	cp $ff                                           ; $589a: $fe $ff
	ret nz                                           ; $589c: $c0

	xor a                                            ; $589d: $af
	ld [$c164], a                                    ; $589e: $ea $64 $c1
	ret                                              ; $58a1: $c9


Call_008_58a2:
	ld a, [$c164]                                    ; $58a2: $fa $64 $c1
	rst AddAOntoHL                                          ; $58a5: $ef
	ld a, [hl]                                       ; $58a6: $7e
	ret                                              ; $58a7: $c9


Call_008_58a8:
	push af                                          ; $58a8: $f5
	ld hl, $56c7                                     ; $58a9: $21 $c7 $56
	ld a, [$c16c]                                    ; $58ac: $fa $6c $c1
	sla a                                            ; $58af: $cb $27
	rst AddAOntoHL                                          ; $58b1: $ef
	call $366b                                       ; $58b2: $cd $6b $36
	pop af                                           ; $58b5: $f1
	ret                                              ; $58b6: $c9


	nop                                              ; $58b7: $00
	nop                                              ; $58b8: $00
	nop                                              ; $58b9: $00
	nop                                              ; $58ba: $00
	ld [hl], a                                       ; $58bb: $77
	ld e, c                                          ; $58bc: $59
	nop                                              ; $58bd: $00
	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	nop                                              ; $58c1: $00
	nop                                              ; $58c2: $00
	nop                                              ; $58c3: $00
	nop                                              ; $58c4: $00
	nop                                              ; $58c5: $00
	nop                                              ; $58c6: $00
	nop                                              ; $58c7: $00
	nop                                              ; $58c8: $00
	nop                                              ; $58c9: $00
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	nop                                              ; $58cc: $00
	nop                                              ; $58cd: $00
	nop                                              ; $58ce: $00
	nop                                              ; $58cf: $00
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	nop                                              ; $58d3: $00
	nop                                              ; $58d4: $00
	nop                                              ; $58d5: $00
	nop                                              ; $58d6: $00
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	nop                                              ; $58d9: $00
	nop                                              ; $58da: $00
	nop                                              ; $58db: $00
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	nop                                              ; $58e0: $00
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	nop                                              ; $58e3: $00
	nop                                              ; $58e4: $00
	nop                                              ; $58e5: $00
	nop                                              ; $58e6: $00
	nop                                              ; $58e7: $00
	nop                                              ; $58e8: $00
	nop                                              ; $58e9: $00
	nop                                              ; $58ea: $00
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	nop                                              ; $58ed: $00
	nop                                              ; $58ee: $00
	nop                                              ; $58ef: $00
	nop                                              ; $58f0: $00
	nop                                              ; $58f1: $00
	nop                                              ; $58f2: $00
	nop                                              ; $58f3: $00
	nop                                              ; $58f4: $00
	nop                                              ; $58f5: $00
	nop                                              ; $58f6: $00
	nop                                              ; $58f7: $00
	nop                                              ; $58f8: $00
	nop                                              ; $58f9: $00
	nop                                              ; $58fa: $00
	nop                                              ; $58fb: $00
	nop                                              ; $58fc: $00
	nop                                              ; $58fd: $00
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	nop                                              ; $590b: $00
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	nop                                              ; $5910: $00
	nop                                              ; $5911: $00
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	nop                                              ; $591c: $00
	nop                                              ; $591d: $00
	nop                                              ; $591e: $00
	sbc e                                            ; $591f: $9b
	ld e, c                                          ; $5920: $59
	nop                                              ; $5921: $00
	nop                                              ; $5922: $00
	and a                                            ; $5923: $a7
	ld e, c                                          ; $5924: $59
	nop                                              ; $5925: $00
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	nop                                              ; $5928: $00
	nop                                              ; $5929: $00
	nop                                              ; $592a: $00
	nop                                              ; $592b: $00
	nop                                              ; $592c: $00
	nop                                              ; $592d: $00
	nop                                              ; $592e: $00
	nop                                              ; $592f: $00
	nop                                              ; $5930: $00
	nop                                              ; $5931: $00
	nop                                              ; $5932: $00
	nop                                              ; $5933: $00
	nop                                              ; $5934: $00
	nop                                              ; $5935: $00
	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	nop                                              ; $593c: $00
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	nop                                              ; $5940: $00
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	or e                                             ; $5945: $b3
	ld e, c                                          ; $5946: $59
	nop                                              ; $5947: $00
	nop                                              ; $5948: $00
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	nop                                              ; $594b: $00
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	nop                                              ; $5956: $00
	nop                                              ; $5957: $00
	nop                                              ; $5958: $00
	nop                                              ; $5959: $00
	nop                                              ; $595a: $00
	nop                                              ; $595b: $00
	nop                                              ; $595c: $00
	nop                                              ; $595d: $00
	nop                                              ; $595e: $00
	cp a                                             ; $595f: $bf
	ld e, c                                          ; $5960: $59
	rst AddAOntoHL                                          ; $5961: $ef
	ld e, c                                          ; $5962: $59
	ld h, a                                          ; $5963: $67
	ld e, d                                          ; $5964: $5a
	nop                                              ; $5965: $00
	nop                                              ; $5966: $00
	nop                                              ; $5967: $00
	nop                                              ; $5968: $00
	nop                                              ; $5969: $00
	nop                                              ; $596a: $00
	nop                                              ; $596b: $00
	nop                                              ; $596c: $00
	adc e                                            ; $596d: $8b
	ld e, d                                          ; $596e: $5a
	nop                                              ; $596f: $00
	nop                                              ; $5970: $00
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	nop                                              ; $5974: $00
	nop                                              ; $5975: $00
	nop                                              ; $5976: $00
	ld e, a                                          ; $5977: $5f
	ld d, h                                          ; $5978: $54
	ld [hl], h                                       ; $5979: $74
	ld e, a                                          ; $597a: $5f
	cp a                                             ; $597b: $bf
	ld [hl], h                                       ; $597c: $74
	cp e                                             ; $597d: $bb
	ld e, d                                          ; $597e: $5a
	rlca                                             ; $597f: $07
	ld [bc], a                                       ; $5980: $02
	inc b                                            ; $5981: $04
	inc bc                                           ; $5982: $03
	ld e, a                                          ; $5983: $5f
	ret z                                            ; $5984: $c8

	ld [hl], h                                       ; $5985: $74
	ld e, a                                          ; $5986: $5f
	sbc e                                            ; $5987: $9b
	ld [hl], a                                       ; $5988: $77
	cp l                                             ; $5989: $bd
	ld e, d                                          ; $598a: $5a
	inc bc                                           ; $598b: $03
	nop                                              ; $598c: $00
	ld a, [bc]                                       ; $598d: $0a
	ld [$ba5f], sp                                   ; $598e: $08 $5f $ba
	ld [hl], a                                       ; $5991: $77
	ld e, a                                          ; $5992: $5f
	cp $77                                           ; $5993: $fe $77
	rst JumpTable                                          ; $5995: $c7
	ld e, d                                          ; $5996: $5a
	inc b                                            ; $5997: $04
	ld [bc], a                                       ; $5998: $02
	inc b                                            ; $5999: $04
	inc b                                            ; $599a: $04
	ld e, a                                          ; $599b: $5f
	ld [$5f78], sp                                   ; $599c: $08 $78 $5f
	ld [hl-], a                                      ; $599f: $32
	ld a, c                                          ; $59a0: $79
	ret                                              ; $59a1: $c9


	ld e, d                                          ; $59a2: $5a
	ld [bc], a                                       ; $59a3: $02
	ld [bc], a                                       ; $59a4: $02
	ld b, $05                                        ; $59a5: $06 $05
	ld e, a                                          ; $59a7: $5f
	ld b, c                                          ; $59a8: $41
	ld a, c                                          ; $59a9: $79
	ld e, a                                          ; $59aa: $5f
	rst GetHLinHL                                          ; $59ab: $cf
	ld a, e                                          ; $59ac: $7b
	call $065a                                       ; $59ad: $cd $5a $06
	nop                                              ; $59b0: $00
	ld a, [bc]                                       ; $59b1: $0a
	add hl, bc                                       ; $59b2: $09
	ld e, a                                          ; $59b3: $5f
	xor $7b                                          ; $59b4: $ee $7b
	ld e, a                                          ; $59b6: $5f
	ld l, b                                          ; $59b7: $68
	ld a, h                                          ; $59b8: $7c
	reti                                             ; $59b9: $d9


	ld e, d                                          ; $59ba: $5a
	ld [$0402], sp                                   ; $59bb: $08 $02 $04
	inc b                                            ; $59be: $04
	ld e, a                                          ; $59bf: $5f
	ld l, h                                          ; $59c0: $6c
	ld a, h                                          ; $59c1: $7c
	ld e, a                                          ; $59c2: $5f
	pop af                                           ; $59c3: $f1
	ld a, h                                          ; $59c4: $7c
	db $db                                           ; $59c5: $db
	ld e, d                                          ; $59c6: $5a
	ld [$0403], sp                                   ; $59c7: $08 $03 $04
	inc bc                                           ; $59ca: $03
	ld e, a                                          ; $59cb: $5f
	ld hl, sp+$7c                                    ; $59cc: $f8 $7c
	ld e, a                                          ; $59ce: $5f
	add d                                            ; $59cf: $82
	ld a, l                                          ; $59d0: $7d
	db $dd                                           ; $59d1: $dd
	ld e, d                                          ; $59d2: $5a
	ld [$0403], sp                                   ; $59d3: $08 $03 $04
	inc bc                                           ; $59d6: $03
	ld e, a                                          ; $59d7: $5f
	adc c                                            ; $59d8: $89
	ld a, l                                          ; $59d9: $7d
	ld e, a                                          ; $59da: $5f
	ld d, $7e                                        ; $59db: $16 $7e
	rst SubAFromDE                                          ; $59dd: $df
	ld e, d                                          ; $59de: $5a
	ld [$0403], sp                                   ; $59df: $08 $03 $04
	inc bc                                           ; $59e2: $03
	ld e, a                                          ; $59e3: $5f
	dec e                                            ; $59e4: $1d
	ld a, [hl]                                       ; $59e5: $7e
	ld e, a                                          ; $59e6: $5f
	sbc l                                            ; $59e7: $9d
	ld a, [hl]                                       ; $59e8: $7e
	pop hl                                           ; $59e9: $e1
	ld e, d                                          ; $59ea: $5a
	ld [$0403], sp                                   ; $59eb: $08 $03 $04
	inc bc                                           ; $59ee: $03
	ld e, a                                          ; $59ef: $5f
	and h                                            ; $59f0: $a4
	ld a, [hl]                                       ; $59f1: $7e
	ld e, a                                          ; $59f2: $5f
	cp a                                             ; $59f3: $bf
	ld a, [hl]                                       ; $59f4: $7e
	db $e3                                           ; $59f5: $e3
	ld e, d                                          ; $59f6: $5a
	inc bc                                           ; $59f7: $03
	inc b                                            ; $59f8: $04
	inc b                                            ; $59f9: $04
	ld [bc], a                                       ; $59fa: $02
	ld e, a                                          ; $59fb: $5f
	add $7e                                          ; $59fc: $c6 $7e
	ld e, a                                          ; $59fe: $5f
	and $7e                                          ; $59ff: $e6 $7e
	db $e4                                           ; $5a01: $e4
	ld e, d                                          ; $5a02: $5a
	inc bc                                           ; $5a03: $03
	inc b                                            ; $5a04: $04
	inc b                                            ; $5a05: $04
	ld [bc], a                                       ; $5a06: $02
	ld e, a                                          ; $5a07: $5f
	db $ed                                           ; $5a08: $ed
	ld a, [hl]                                       ; $5a09: $7e
	ld e, a                                          ; $5a0a: $5f
	ld c, $7f                                        ; $5a0b: $0e $7f
	push hl                                          ; $5a0d: $e5
	ld e, d                                          ; $5a0e: $5a
	inc bc                                           ; $5a0f: $03
	inc b                                            ; $5a10: $04
	inc b                                            ; $5a11: $04
	ld [bc], a                                       ; $5a12: $02
	ld e, a                                          ; $5a13: $5f
	dec d                                            ; $5a14: $15
	ld a, a                                          ; $5a15: $7f
	ld e, a                                          ; $5a16: $5f
	rst SubAFromBC                                          ; $5a17: $e7
	ld a, a                                          ; $5a18: $7f
	and $5a                                          ; $5a19: $e6 $5a
	inc bc                                           ; $5a1b: $03
	ld bc, $0506                                     ; $5a1c: $01 $06 $05
	ld e, a                                          ; $5a1f: $5f
	ld sp, hl                                        ; $5a20: $f9
	ld a, a                                          ; $5a21: $7f
	ld h, b                                          ; $5a22: $60
	rst GetHLinHL                                          ; $5a23: $cf
	ld b, b                                          ; $5a24: $40
	ld [$035a], a                                    ; $5a25: $ea $5a $03
	ld bc, $0506                                     ; $5a28: $01 $06 $05
	ld h, b                                          ; $5a2b: $60
	pop hl                                           ; $5a2c: $e1
	ld b, b                                          ; $5a2d: $40
	ld h, b                                          ; $5a2e: $60
	or a                                             ; $5a2f: $b7
	ld b, c                                          ; $5a30: $41
	xor $5a                                          ; $5a31: $ee $5a
	inc bc                                           ; $5a33: $03
	ld bc, $0506                                     ; $5a34: $01 $06 $05
	ld h, b                                          ; $5a37: $60
	ret                                              ; $5a38: $c9


	ld b, c                                          ; $5a39: $41
	ld h, b                                          ; $5a3a: $60
	rst SubAFromDE                                          ; $5a3b: $df
	ld b, d                                          ; $5a3c: $42
	ldh a, [c]                                       ; $5a3d: $f2
	ld e, d                                          ; $5a3e: $5a
	inc bc                                           ; $5a3f: $03
	ld bc, $0606                                     ; $5a40: $01 $06 $06
	ld h, b                                          ; $5a43: $60
	di                                               ; $5a44: $f3
	ld b, d                                          ; $5a45: $42
	ld h, b                                          ; $5a46: $60
	ld a, [de]                                       ; $5a47: $1a
	ld b, h                                          ; $5a48: $44
	rst FarCall                                          ; $5a49: $f7
	ld e, d                                          ; $5a4a: $5a
	inc bc                                           ; $5a4b: $03
	ld bc, $0606                                     ; $5a4c: $01 $06 $06
	ld h, b                                          ; $5a4f: $60
	ld l, $44                                        ; $5a50: $2e $44
	ld h, b                                          ; $5a52: $60
	ld d, h                                          ; $5a53: $54
	ld b, l                                          ; $5a54: $45
	db $fc                                           ; $5a55: $fc
	ld e, d                                          ; $5a56: $5a
	inc bc                                           ; $5a57: $03
	ld bc, $0606                                     ; $5a58: $01 $06 $06
	ld h, b                                          ; $5a5b: $60
	ld l, b                                          ; $5a5c: $68
	ld b, l                                          ; $5a5d: $45
	ld h, b                                          ; $5a5e: $60
	ret nc                                           ; $5a5f: $d0

	ld b, l                                          ; $5a60: $45
	ld bc, $0b5b                                     ; $5a61: $01 $5b $0b
	inc bc                                           ; $5a64: $03
	inc b                                            ; $5a65: $04
	inc bc                                           ; $5a66: $03
	ld h, b                                          ; $5a67: $60
	reti                                             ; $5a68: $d9


	ld b, l                                          ; $5a69: $45
	ld h, b                                          ; $5a6a: $60
	inc bc                                           ; $5a6b: $03
	ld b, [hl]                                       ; $5a6c: $46
	inc bc                                           ; $5a6d: $03
	ld e, e                                          ; $5a6e: $5b
	dec bc                                           ; $5a6f: $0b
	ld b, $02                                        ; $5a70: $06 $02
	ld [bc], a                                       ; $5a72: $02
	ld h, b                                          ; $5a73: $60
	rlca                                             ; $5a74: $07
	ld b, [hl]                                       ; $5a75: $46
	ld h, b                                          ; $5a76: $60
	scf                                              ; $5a77: $37
	ld b, [hl]                                       ; $5a78: $46
	inc b                                            ; $5a79: $04
	ld e, e                                          ; $5a7a: $5b
	dec bc                                           ; $5a7b: $0b
	ld b, $02                                        ; $5a7c: $06 $02
	ld [bc], a                                       ; $5a7e: $02
	ld h, b                                          ; $5a7f: $60
	dec sp                                           ; $5a80: $3b
	ld b, [hl]                                       ; $5a81: $46
	ld h, b                                          ; $5a82: $60
	ld l, [hl]                                       ; $5a83: $6e
	ld b, [hl]                                       ; $5a84: $46
	dec b                                            ; $5a85: $05
	ld e, e                                          ; $5a86: $5b
	dec bc                                           ; $5a87: $0b
	ld b, $02                                        ; $5a88: $06 $02
	ld [bc], a                                       ; $5a8a: $02
	ld h, b                                          ; $5a8b: $60
	ld [hl], d                                       ; $5a8c: $72
	ld b, [hl]                                       ; $5a8d: $46
	ld h, b                                          ; $5a8e: $60
	ld e, c                                          ; $5a8f: $59
	ld b, a                                          ; $5a90: $47
	ld b, $5b                                        ; $5a91: $06 $5b
	dec b                                            ; $5a93: $05
	inc b                                            ; $5a94: $04
	ld a, [bc]                                       ; $5a95: $0a
	ld [bc], a                                       ; $5a96: $02
	ld h, b                                          ; $5a97: $60
	ld e, l                                          ; $5a98: $5d
	ld b, a                                          ; $5a99: $47
	ld h, b                                          ; $5a9a: $60
	and [hl]                                         ; $5a9b: $a6
	ld c, b                                          ; $5a9c: $48
	add hl, bc                                       ; $5a9d: $09
	ld e, e                                          ; $5a9e: $5b
	ld [bc], a                                       ; $5a9f: $02
	inc b                                            ; $5aa0: $04
	db $10                                           ; $5aa1: $10
	ld [bc], a                                       ; $5aa2: $02
	ld h, b                                          ; $5aa3: $60
	xor d                                            ; $5aa4: $aa
	ld c, b                                          ; $5aa5: $48
	ld h, b                                          ; $5aa6: $60
	ld c, [hl]                                       ; $5aa7: $4e
	ld c, c                                          ; $5aa8: $49
	dec c                                            ; $5aa9: $0d
	ld e, e                                          ; $5aaa: $5b
	ld b, $04                                        ; $5aab: $06 $04
	ld [$6002], sp                                   ; $5aad: $08 $02 $60
	ld d, d                                          ; $5ab0: $52
	ld c, c                                          ; $5ab1: $49
	ld h, b                                          ; $5ab2: $60
	jr nc, jr_008_5aff                               ; $5ab3: $30 $4a

	rrca                                             ; $5ab5: $0f
	ld e, e                                          ; $5ab6: $5b
	dec b                                            ; $5ab7: $05
	inc b                                            ; $5ab8: $04
	ld a, [bc]                                       ; $5ab9: $0a

jr_008_5aba:
	ld [bc], a                                       ; $5aba: $02
	xor $40                                          ; $5abb: $ee $40
	ld a, a                                          ; $5abd: $7f
	rst SubAFromDE                                          ; $5abe: $df
	rst FarCall                                          ; $5abf: $f7
	ei                                               ; $5ac0: $fb
	db $fc                                           ; $5ac1: $fc
	cp $3f                                           ; $5ac2: $fe $3f
	rlca                                             ; $5ac4: $07
	pop bc                                           ; $5ac5: $c1
	ldh [$64], a                                     ; $5ac6: $e0 $64
	adc b                                            ; $5ac8: $88
	jr c, jr_008_5aba                                ; $5ac9: $38 $ef

	rst $38                                          ; $5acb: $ff
	ld a, h                                          ; $5acc: $7c
	ld a, [hl]                                       ; $5acd: $7e
	ccf                                              ; $5ace: $3f
	rst GetHLinHL                                          ; $5acf: $cf
	ei                                               ; $5ad0: $fb
	cp $ff                                           ; $5ad1: $fe $ff
	cp a                                             ; $5ad3: $bf
	rst AddAOntoHL                                          ; $5ad4: $ef
	pop af                                           ; $5ad5: $f1
	db $fc                                           ; $5ad6: $fc
	inc a                                            ; $5ad7: $3c
	nop                                              ; $5ad8: $00
	rst $38                                          ; $5ad9: $ff
	rst $38                                          ; $5ada: $ff
	xor $e0                                          ; $5adb: $ee $e0
	xor $e0                                          ; $5add: $ee $e0
	xor $e0                                          ; $5adf: $ee $e0
	xor $e0                                          ; $5ae1: $ee $e0
	ld b, [hl]                                       ; $5ae3: $46
	ld b, [hl]                                       ; $5ae4: $46
	ld b, [hl]                                       ; $5ae5: $46
	ld h, e                                          ; $5ae6: $63
	ld l, l                                          ; $5ae7: $6d
	sbc h                                            ; $5ae8: $9c
	ld h, b                                          ; $5ae9: $60
	ld h, e                                          ; $5aea: $63
	ld l, l                                          ; $5aeb: $6d
	sbc h                                            ; $5aec: $9c
	ld h, b                                          ; $5aed: $60
	ld h, e                                          ; $5aee: $63
	ld l, l                                          ; $5aef: $6d
	sbc h                                            ; $5af0: $9c
	ld h, b                                          ; $5af1: $60
	ld l, e                                          ; $5af2: $6b
	db $ed                                           ; $5af3: $ed
	cp h                                             ; $5af4: $bc
	pop hl                                           ; $5af5: $e1
	nop                                              ; $5af6: $00
	ld l, e                                          ; $5af7: $6b
	db $ed                                           ; $5af8: $ed
	cp h                                             ; $5af9: $bc
	pop hl                                           ; $5afa: $e1
	nop                                              ; $5afb: $00
	ld l, e                                          ; $5afc: $6b
	db $ed                                           ; $5afd: $ed
	cp h                                             ; $5afe: $bc

jr_008_5aff:
	pop hl                                           ; $5aff: $e1
	nop                                              ; $5b00: $00
	or $40                                           ; $5b01: $f6 $40
	ldh a, [$f0]                                     ; $5b03: $f0 $f0
	ldh a, [rIE]                                     ; $5b05: $f0 $ff
	rst $38                                          ; $5b07: $ff
	ldh a, [rIE]                                     ; $5b08: $f0 $ff
	rst $38                                          ; $5b0a: $ff
	rst $38                                          ; $5b0b: $ff
	rst $38                                          ; $5b0c: $ff
	rst $38                                          ; $5b0d: $ff
	rst $38                                          ; $5b0e: $ff
	rst $38                                          ; $5b0f: $ff
	rst $38                                          ; $5b10: $ff
	ldh a, [$cd]                                     ; $5b11: $f0 $cd
	sbc h                                            ; $5b13: $9c
	ld e, e                                          ; $5b14: $5b
	ld l, a                                          ; $5b15: $6f
	ld h, $00                                        ; $5b16: $26 $00
	ld a, $08                                        ; $5b18: $3e $08
	rst SubAFromHL                                          ; $5b1a: $d7
	add hl, de                                       ; $5b1b: $19
	ld d, h                                          ; $5b1c: $54
	ld e, l                                          ; $5b1d: $5d
	ld a, [$a33a]                                    ; $5b1e: $fa $3a $a3
	and $02                                          ; $5b21: $e6 $02
	jr z, jr_008_5b29                                ; $5b23: $28 $04

	srl d                                            ; $5b25: $cb $3a
	rr e                                             ; $5b27: $cb $1b

jr_008_5b29:
	ld a, $80                                        ; $5b29: $3e $80
	and d                                            ; $5b2b: $a2
	jr z, jr_008_5b31                                ; $5b2c: $28 $03

	ld de, $0001                                     ; $5b2e: $11 $01 $00

jr_008_5b31:
	call Call_008_5c27                               ; $5b31: $cd $27 $5c
	ld a, c                                          ; $5b34: $79
	call $1327                                       ; $5b35: $cd $27 $13
	call Call_008_5c67                               ; $5b38: $cd $67 $5c
	ld a, c                                          ; $5b3b: $79
	and a                                            ; $5b3c: $a7
	jr z, jr_008_5b47                                ; $5b3d: $28 $08

	ld a, $0a                                        ; $5b3f: $3e $0a
	call Call_000_12fc                                       ; $5b41: $cd $fc $12
	call $1327                                       ; $5b44: $cd $27 $13

jr_008_5b47:
	ld hl, $0080                                     ; $5b47: $21 $80 $00
	call wCpHLtoDE                                       ; $5b4a: $cd $80 $ce
	jr c, jr_008_5b60                                ; $5b4d: $38 $11

	ld c, $64                                        ; $5b4f: $0e $64
	ld b, e                                          ; $5b51: $43
	call BCequBtimesC                                       ; $5b52: $cd $5f $12
	ld h, b                                          ; $5b55: $60
	ld l, c                                          ; $5b56: $69
	ld bc, $0080                                     ; $5b57: $01 $80 $00
	call BCHLequHLdivModBC                                       ; $5b5a: $cd $c1 $12
	ld a, l                                          ; $5b5d: $7d
	jr jr_008_5b69                                   ; $5b5e: $18 $09

jr_008_5b60:
	call Call_000_1309                                       ; $5b60: $cd $09 $13
	and $03                                          ; $5b63: $e6 $03
	ld e, a                                          ; $5b65: $5f
	ld a, $64                                        ; $5b66: $3e $64
	sub e                                            ; $5b68: $93

jr_008_5b69:
	push af                                          ; $5b69: $f5
	ld hl, $d7ae                                     ; $5b6a: $21 $ae $d7
	call Call_008_5cb0                               ; $5b6d: $cd $b0 $5c
	call $1327                                       ; $5b70: $cd $27 $13
	ld [hl], d                                       ; $5b73: $72
	dec hl                                           ; $5b74: $2b
	ld [hl], e                                       ; $5b75: $73
	pop af                                           ; $5b76: $f1
	ld c, a                                          ; $5b77: $4f
	push bc                                          ; $5b78: $c5
	ld c, $00                                        ; $5b79: $0e $00
	cp $5a                                           ; $5b7b: $fe $5a
	jr c, jr_008_5b80                                ; $5b7d: $38 $01

	inc c                                            ; $5b7f: $0c

jr_008_5b80:
	cp $46                                           ; $5b80: $fe $46
	jr c, jr_008_5b85                                ; $5b82: $38 $01

	inc c                                            ; $5b84: $0c

jr_008_5b85:
	cp $32                                           ; $5b85: $fe $32
	jr c, jr_008_5b8a                                ; $5b87: $38 $01

	inc c                                            ; $5b89: $0c

jr_008_5b8a:
	cp $1e                                           ; $5b8a: $fe $1e
	jr c, jr_008_5b8f                                ; $5b8c: $38 $01

	inc c                                            ; $5b8e: $0c

jr_008_5b8f:
	ld a, c                                          ; $5b8f: $79
	and a                                            ; $5b90: $a7
	jr nz, jr_008_5b9a                               ; $5b91: $20 $07

	ld a, [$d7b0]                                    ; $5b93: $fa $b0 $d7
	inc a                                            ; $5b96: $3c
	ld [$d7b0], a                                    ; $5b97: $ea $b0 $d7

jr_008_5b9a:
	pop bc                                           ; $5b9a: $c1
	ret                                              ; $5b9b: $c9


	ld a, b                                          ; $5b9c: $78
	call wJumpTable                                       ; $5b9d: $cd $80 $cf
	xor d                                            ; $5ba0: $aa
	ld e, e                                          ; $5ba1: $5b
	cp a                                             ; $5ba2: $bf
	ld e, e                                          ; $5ba3: $5b
	jp z, $e65b                                      ; $5ba4: $ca $5b $e6

	ld e, e                                          ; $5ba7: $5b
	ld [bc], a                                       ; $5ba8: $02
	ld e, h                                          ; $5ba9: $5c
	xor a                                            ; $5baa: $af
	ld [$d7ae], a                                    ; $5bab: $ea $ae $d7
	ld [$d7af], a                                    ; $5bae: $ea $af $d7
	ld [$d7b0], a                                    ; $5bb1: $ea $b0 $d7
	ld hl, $a2f3                                     ; $5bb4: $21 $f3 $a2
	call Call_008_5cb0                               ; $5bb7: $cd $b0 $5c
	ld b, $04                                        ; $5bba: $06 $04
	jp Jump_008_5c6e                                 ; $5bbc: $c3 $6e $5c


	ld hl, $a2f5                                     ; $5bbf: $21 $f5 $a2
	call Call_008_5cb0                               ; $5bc2: $cd $b0 $5c
	ld b, $04                                        ; $5bc5: $06 $04
	jp Jump_008_5c6e                                 ; $5bc7: $c3 $6e $5c


	ld hl, $a2f5                                     ; $5bca: $21 $f5 $a2
	call Call_008_5cb0                               ; $5bcd: $cd $b0 $5c
	call Call_008_5c86                               ; $5bd0: $cd $86 $5c
	push hl                                          ; $5bd3: $e5
	ld hl, $a2fb                                     ; $5bd4: $21 $fb $a2
	call Call_008_5cb0                               ; $5bd7: $cd $b0 $5c
	call Call_008_5c92                               ; $5bda: $cd $92 $5c
	pop hl                                           ; $5bdd: $e1
	add hl, de                                       ; $5bde: $19
	ld e, l                                          ; $5bdf: $5d
	ld d, h                                          ; $5be0: $54
	ld b, $06                                        ; $5be1: $06 $06
	jp Jump_008_5c6e                                 ; $5be3: $c3 $6e $5c


	ld hl, $a2fb                                     ; $5be6: $21 $fb $a2
	call Call_008_5cb0                               ; $5be9: $cd $b0 $5c
	call Call_008_5c86                               ; $5bec: $cd $86 $5c
	push hl                                          ; $5bef: $e5
	ld hl, $a2f3                                     ; $5bf0: $21 $f3 $a2
	call Call_008_5cb0                               ; $5bf3: $cd $b0 $5c
	call Call_008_5c92                               ; $5bf6: $cd $92 $5c
	pop hl                                           ; $5bf9: $e1
	add hl, de                                       ; $5bfa: $19
	ld e, l                                          ; $5bfb: $5d
	ld d, h                                          ; $5bfc: $54
	ld b, $04                                        ; $5bfd: $06 $04
	jp Jump_008_5c6e                                 ; $5bff: $c3 $6e $5c


	ld hl, $a2f7                                     ; $5c02: $21 $f7 $a2
	call Call_008_5cb0                               ; $5c05: $cd $b0 $5c
	call Call_008_5c9c                               ; $5c08: $cd $9c $5c
	push hl                                          ; $5c0b: $e5
	ld hl, $a2fd                                     ; $5c0c: $21 $fd $a2
	call Call_008_5cb0                               ; $5c0f: $cd $b0 $5c
	call Call_008_5ca7                               ; $5c12: $cd $a7 $5c
	pop hl                                           ; $5c15: $e1
	add hl, de                                       ; $5c16: $19
	ld e, l                                          ; $5c17: $5d
	ld d, h                                          ; $5c18: $54
	ld b, $02                                        ; $5c19: $06 $02
	jp Jump_008_5c6e                                 ; $5c1b: $c3 $6e $5c


	ld c, $0c                                        ; $5c1e: $0e $0c
	ld a, [bc]                                       ; $5c20: $0a
	ld [$0406], sp                                   ; $5c21: $08 $06 $04
	ld [bc], a                                       ; $5c24: $02
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00

Call_008_5c27:
	ld a, [$a224]                                    ; $5c27: $fa $24 $a2
	cp $00                                           ; $5c2a: $fe $00
	jr nz, jr_008_5c32                               ; $5c2c: $20 $04

	ld c, $00                                        ; $5c2e: $0e $00
	jr jr_008_5c3c                                   ; $5c30: $18 $0a

jr_008_5c32:
	cp $01                                           ; $5c32: $fe $01
	jr nz, jr_008_5c3a                               ; $5c34: $20 $04

	ld c, $03                                        ; $5c36: $0e $03
	jr jr_008_5c3c                                   ; $5c38: $18 $02

jr_008_5c3a:
	ld c, $06                                        ; $5c3a: $0e $06

jr_008_5c3c:
	ld a, [$a226]                                    ; $5c3c: $fa $26 $a2
	cp $02                                           ; $5c3f: $fe $02
	jr nz, jr_008_5c48                               ; $5c41: $20 $05

	or $ff                                           ; $5c43: $f6 $ff
	xor a                                            ; $5c45: $af
	jr jr_008_5c51                                   ; $5c46: $18 $09

jr_008_5c48:
	cp $0c                                           ; $5c48: $fe $0c
	jr nz, jr_008_5c50                               ; $5c4a: $20 $04

	ld a, $01                                        ; $5c4c: $3e $01
	jr jr_008_5c51                                   ; $5c4e: $18 $01

jr_008_5c50:
	xor a                                            ; $5c50: $af

jr_008_5c51:
	add c                                            ; $5c51: $81
	ld hl, $5c1e                                     ; $5c52: $21 $1e $5c
	rst AddAOntoHL                                          ; $5c55: $ef
	ld a, [hl]                                       ; $5c56: $7e
	ld c, a                                          ; $5c57: $4f
	call Call_000_1309                                       ; $5c58: $cd $09 $13
	and $07                                          ; $5c5b: $e6 $07
	sub $08                                          ; $5c5d: $d6 $08
	add c                                            ; $5c5f: $81
	ld c, a                                          ; $5c60: $4f
	and $80                                          ; $5c61: $e6 $80
	ret z                                            ; $5c63: $c8

	ld c, $00                                        ; $5c64: $0e $00
	ret                                              ; $5c66: $c9


Call_008_5c67:
	ld a, [$a39b]                                    ; $5c67: $fa $9b $a3
	and $01                                          ; $5c6a: $e6 $01
	ld c, a                                          ; $5c6c: $4f
	ret                                              ; $5c6d: $c9


Jump_008_5c6e:
	rst FarCall                                          ; $5c6e: $f7
	add hl, sp                                       ; $5c6f: $39
	halt                                             ; $5c70: $76
	inc b                                            ; $5c71: $04
	ld b, $10                                        ; $5c72: $06 $10
	rst FarCall                                          ; $5c74: $f7
	call $0476                                       ; $5c75: $cd $76 $04
	ret                                              ; $5c78: $c9


Call_008_5c79:
	push bc                                          ; $5c79: $c5
	ld h, d                                          ; $5c7a: $62
	ld l, e                                          ; $5c7b: $6b
	ld bc, $000a                                     ; $5c7c: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $5c7f: $cd $c1 $12
	ld d, h                                          ; $5c82: $54
	ld e, l                                          ; $5c83: $5d
	pop bc                                           ; $5c84: $c1
	ret                                              ; $5c85: $c9


Call_008_5c86:
	call Call_008_5c79                               ; $5c86: $cd $79 $5c
	ld h, d                                          ; $5c89: $62
	ld l, e                                          ; $5c8a: $6b
	add hl, hl                                       ; $5c8b: $29
	add hl, de                                       ; $5c8c: $19
	add hl, hl                                       ; $5c8d: $29
	add hl, de                                       ; $5c8e: $19
	ld d, h                                          ; $5c8f: $54
	ld e, l                                          ; $5c90: $5d
	ret                                              ; $5c91: $c9


Call_008_5c92:
	call Call_008_5c79                               ; $5c92: $cd $79 $5c
	ld h, d                                          ; $5c95: $62
	ld l, e                                          ; $5c96: $6b
	add hl, hl                                       ; $5c97: $29
	add hl, de                                       ; $5c98: $19
	ld d, h                                          ; $5c99: $54
	ld e, l                                          ; $5c9a: $5d
	ret                                              ; $5c9b: $c9


Call_008_5c9c:
	call Call_008_5c79                               ; $5c9c: $cd $79 $5c
	ld h, d                                          ; $5c9f: $62
	ld l, e                                          ; $5ca0: $6b
	add hl, hl                                       ; $5ca1: $29
	add hl, hl                                       ; $5ca2: $29
	add hl, hl                                       ; $5ca3: $29
	ld d, h                                          ; $5ca4: $54
	ld e, l                                          ; $5ca5: $5d
	ret                                              ; $5ca6: $c9


Call_008_5ca7:
	call Call_008_5c79                               ; $5ca7: $cd $79 $5c
	ld h, d                                          ; $5caa: $62
	ld l, e                                          ; $5cab: $6b
	add hl, hl                                       ; $5cac: $29
	ld d, h                                          ; $5cad: $54
	ld e, l                                          ; $5cae: $5d
	ret                                              ; $5caf: $c9


Call_008_5cb0:
	ld e, [hl]                                       ; $5cb0: $5e
	inc hl                                           ; $5cb1: $23
	ld d, [hl]                                       ; $5cb2: $56
	ret                                              ; $5cb3: $c9


	ld e, h                                          ; $5cb4: $5c
	ld d, b                                          ; $5cb5: $50
	ld d, c                                          ; $5cb6: $51
	ld b, c                                          ; $5cb7: $41
	inc hl                                           ; $5cb8: $23
	rra                                              ; $5cb9: $1f
	dec a                                            ; $5cba: $3d
	ld c, a                                          ; $5cbb: $4f
	ld d, b                                          ; $5cbc: $50
	jr z, jr_008_5cc2                                ; $5cbd: $28 $03

	rlca                                             ; $5cbf: $07
	rlca                                             ; $5cc0: $07
	rlca                                             ; $5cc1: $07

jr_008_5cc2:
	rrca                                             ; $5cc2: $0f
	rrca                                             ; $5cc3: $0f
	rlca                                             ; $5cc4: $07
	rlca                                             ; $5cc5: $07
	rlca                                             ; $5cc6: $07
	rrca                                             ; $5cc7: $0f
	ld e, $19                                        ; $5cc8: $1e $19
	ld [de], a                                       ; $5cca: $12
	ld [$0303], sp                                   ; $5ccb: $08 $03 $03
	ld hl, sp-$12                                    ; $5cce: $f8 $ee
	rst SubAFromBC                                          ; $5cd0: $e7
	ldh [c], a                                       ; $5cd1: $e2
	dec b                                            ; $5cd2: $05
	rlca                                             ; $5cd3: $07
	ld a, [bc]                                       ; $5cd4: $0a
	dec c                                            ; $5cd5: $0d
	db $10                                           ; $5cd6: $10
	db $10                                           ; $5cd7: $10
	dec c                                            ; $5cd8: $0d
	ld a, [bc]                                       ; $5cd9: $0a
	rlca                                             ; $5cda: $07
	dec b                                            ; $5cdb: $05
	ld c, $00                                        ; $5cdc: $0e $00

jr_008_5cde:
	call Call_008_5e7c                               ; $5cde: $cd $7c $5e
	ld e, d                                          ; $5ce1: $5a
	call Call_008_5e7c                               ; $5ce2: $cd $7c $5e
	push bc                                          ; $5ce5: $c5
	ld hl, $5cb4                                     ; $5ce6: $21 $b4 $5c
	call Call_008_5e91                               ; $5ce9: $cd $91 $5e
	add d                                            ; $5cec: $82
	ld c, a                                          ; $5ced: $4f
	ld b, $05                                        ; $5cee: $06 $05
	call BCequBtimesC                                       ; $5cf0: $cd $5f $12
	ld h, b                                          ; $5cf3: $60
	ld l, c                                          ; $5cf4: $69
	pop bc                                           ; $5cf5: $c1
	ld d, $00                                        ; $5cf6: $16 $00
	ld a, e                                          ; $5cf8: $7b
	and $80                                          ; $5cf9: $e6 $80
	jr z, jr_008_5cff                                ; $5cfb: $28 $02

	ld d, $ff                                        ; $5cfd: $16 $ff

jr_008_5cff:
	add hl, de                                       ; $5cff: $19
	ld a, [$a39b]                                    ; $5d00: $fa $9b $a3
	and $02                                          ; $5d03: $e6 $02
	jr z, jr_008_5d0d                                ; $5d05: $28 $06

	call Call_000_1309                                       ; $5d07: $cd $09 $13
	rst AddAOntoHL                                          ; $5d0a: $ef
	jr jr_008_5d2b                                   ; $5d0b: $18 $1e

jr_008_5d0d:
	ld a, [$a39b]                                    ; $5d0d: $fa $9b $a3
	and $01                                          ; $5d10: $e6 $01
	jr z, jr_008_5d2b                                ; $5d12: $28 $17

	push hl                                          ; $5d14: $e5
	ld hl, $5ed9                                     ; $5d15: $21 $d9 $5e
	ld a, [$a39c]                                    ; $5d18: $fa $9c $a3
	rst AddAOntoHL                                          ; $5d1b: $ef
	ld a, [hl]                                       ; $5d1c: $7e
	pop hl                                           ; $5d1d: $e1
	cp $ff                                           ; $5d1e: $fe $ff
	jr z, jr_008_5d2b                                ; $5d20: $28 $09

	cp c                                             ; $5d22: $b9
	jr nz, jr_008_5d2b                               ; $5d23: $20 $06

	ld a, $32                                        ; $5d25: $3e $32
	call Call_000_12fc                                       ; $5d27: $cd $fc $12
	rst AddAOntoHL                                          ; $5d2a: $ef

jr_008_5d2b:
	ld de, $01f4                                     ; $5d2b: $11 $f4 $01
	call wCpHLtoDE                                       ; $5d2e: $cd $80 $ce
	jr c, jr_008_5d36                                ; $5d31: $38 $03

	ld hl, $01f4                                     ; $5d33: $21 $f4 $01

jr_008_5d36:
	ld de, $d7b1                                     ; $5d36: $11 $b1 $d7
	ld a, c                                          ; $5d39: $79
	sla a                                            ; $5d3a: $cb $27
	call $1327                                       ; $5d3c: $cd $27 $13
	ld a, l                                          ; $5d3f: $7d
	ld [de], a                                       ; $5d40: $12
	inc de                                           ; $5d41: $13
	ld a, h                                          ; $5d42: $7c
	ld [de], a                                       ; $5d43: $12
	inc c                                            ; $5d44: $0c
	ld a, $0a                                        ; $5d45: $3e $0a
	cp c                                             ; $5d47: $b9
	jr nz, jr_008_5cde                               ; $5d48: $20 $94

	sla a                                            ; $5d4a: $cb $27
	ld hl, $d7b1                                     ; $5d4c: $21 $b1 $d7
	rst AddAOntoHL                                          ; $5d4f: $ef
	ld a, [$d7ae]                                    ; $5d50: $fa $ae $d7
	ld [hl+], a                                      ; $5d53: $22
	ld a, [$d7af]                                    ; $5d54: $fa $af $d7
	ld [hl], a                                       ; $5d57: $77

jr_008_5d58:
	ld c, $00                                        ; $5d58: $0e $00
	ld b, $01                                        ; $5d5a: $06 $01

jr_008_5d5c:
	ld a, c                                          ; $5d5c: $79
	call Call_008_5e70                               ; $5d5d: $cd $70 $5e
	ld h, d                                          ; $5d60: $62
	ld l, e                                          ; $5d61: $6b

jr_008_5d62:
	ld a, b                                          ; $5d62: $78
	call Call_008_5e70                               ; $5d63: $cd $70 $5e
	ld a, e                                          ; $5d66: $7b
	xor l                                            ; $5d67: $ad
	jr nz, jr_008_5d7b                               ; $5d68: $20 $11

	ld a, d                                          ; $5d6a: $7a
	xor h                                            ; $5d6b: $ac
	jr nz, jr_008_5d7b                               ; $5d6c: $20 $0d

	dec de                                           ; $5d6e: $1b
	ld a, b                                          ; $5d6f: $78
	sla a                                            ; $5d70: $cb $27
	ld hl, $d7b1                                     ; $5d72: $21 $b1 $d7
	rst AddAOntoHL                                          ; $5d75: $ef
	ld [hl], e                                       ; $5d76: $73
	inc hl                                           ; $5d77: $23
	ld [hl], d                                       ; $5d78: $72
	jr jr_008_5d58                                   ; $5d79: $18 $dd

jr_008_5d7b:
	inc b                                            ; $5d7b: $04
	ld a, $0b                                        ; $5d7c: $3e $0b
	cp b                                             ; $5d7e: $b8
	jr nz, jr_008_5d62                               ; $5d7f: $20 $e1

	inc c                                            ; $5d81: $0c
	ld b, c                                          ; $5d82: $41
	inc b                                            ; $5d83: $04
	ld a, $0a                                        ; $5d84: $3e $0a
	cp c                                             ; $5d86: $b9
	jr nz, jr_008_5d5c                               ; $5d87: $20 $d3

	ld b, $00                                        ; $5d89: $06 $00

jr_008_5d8b:
	ld c, $00                                        ; $5d8b: $0e $00
	xor a                                            ; $5d8d: $af
	ld [$d7c7], a                                    ; $5d8e: $ea $c7 $d7
	ld a, b                                          ; $5d91: $78
	call Call_008_5e70                               ; $5d92: $cd $70 $5e
	ld h, d                                          ; $5d95: $62
	ld l, e                                          ; $5d96: $6b

jr_008_5d97:
	ld a, c                                          ; $5d97: $79
	call Call_008_5e70                               ; $5d98: $cd $70 $5e
	call wCpHLtoDE                                       ; $5d9b: $cd $80 $ce
	jr nc, jr_008_5da7                               ; $5d9e: $30 $07

	ld a, [$d7c7]                                    ; $5da0: $fa $c7 $d7
	inc a                                            ; $5da3: $3c
	ld [$d7c7], a                                    ; $5da4: $ea $c7 $d7

jr_008_5da7:
	inc c                                            ; $5da7: $0c
	ld a, c                                          ; $5da8: $79
	cp $0b                                           ; $5da9: $fe $0b
	jr nz, jr_008_5d97                               ; $5dab: $20 $ea

	ld a, [$d7c7]                                    ; $5dad: $fa $c7 $d7
	ld de, $d7c9                                     ; $5db0: $11 $c9 $d7
	call $1327                                       ; $5db3: $cd $27 $13
	ld a, b                                          ; $5db6: $78
	ld [de], a                                       ; $5db7: $12
	inc b                                            ; $5db8: $04
	ld a, b                                          ; $5db9: $78
	cp $0b                                           ; $5dba: $fe $0b
	jr nz, jr_008_5d8b                               ; $5dbc: $20 $cd

	ld c, $00                                        ; $5dbe: $0e $00
	xor a                                            ; $5dc0: $af
	ld [$d7c7], a                                    ; $5dc1: $ea $c7 $d7
	ld [$d7c8], a                                    ; $5dc4: $ea $c8 $d7

Jump_008_5dc7:
	push bc                                          ; $5dc7: $c5
	ld a, c                                          ; $5dc8: $79
	ld hl, $d7c9                                     ; $5dc9: $21 $c9 $d7
	rst AddAOntoHL                                          ; $5dcc: $ef
	ld a, [hl]                                       ; $5dcd: $7e
	ld hl, $d7b1                                     ; $5dce: $21 $b1 $d7
	sla a                                            ; $5dd1: $cb $27
	rst AddAOntoHL                                          ; $5dd3: $ef
	ld e, [hl]                                       ; $5dd4: $5e
	inc hl                                           ; $5dd5: $23
	ld d, [hl]                                       ; $5dd6: $56
	push de                                          ; $5dd7: $d5
	sla e                                            ; $5dd8: $cb $23
	rl d                                             ; $5dda: $cb $12
	sla e                                            ; $5ddc: $cb $23
	rl d                                             ; $5dde: $cb $12
	ld h, d                                          ; $5de0: $62
	ld l, e                                          ; $5de1: $6b
	ld bc, $0005                                     ; $5de2: $01 $05 $00
	call BCHLequHLdivModBC                                       ; $5de5: $cd $c1 $12
	ld d, h                                          ; $5de8: $54
	ld e, l                                          ; $5de9: $5d
	ld hl, $0190                                     ; $5dea: $21 $90 $01
	call wHLminusEquDE                                       ; $5ded: $cd $9e $ce
	pop de                                           ; $5df0: $d1
	push hl                                          ; $5df1: $e5
	ld h, d                                          ; $5df2: $62
	ld l, e                                          ; $5df3: $6b
	ld bc, $0032                                     ; $5df4: $01 $32 $00
	call BCHLequHLdivModBC                                       ; $5df7: $cd $c1 $12
	ld b, l                                          ; $5dfa: $45
	ld a, l                                          ; $5dfb: $7d
	ld hl, $5cc8                                     ; $5dfc: $21 $c8 $5c
	rst AddAOntoHL                                          ; $5dff: $ef
	ld e, [hl]                                       ; $5e00: $5e
	ld a, b                                          ; $5e01: $78
	ld hl, $5cd2                                     ; $5e02: $21 $d2 $5c
	rst AddAOntoHL                                          ; $5e05: $ef
	ld b, [hl]                                       ; $5e06: $46
	call Call_000_1309                                       ; $5e07: $cd $09 $13
	call $12b5                                       ; $5e0a: $cd $b5 $12
	pop hl                                           ; $5e0d: $e1
	ld a, h                                          ; $5e0e: $7c
	and a                                            ; $5e0f: $a7
	jr nz, jr_008_5e1b                               ; $5e10: $20 $09

	ld a, l                                          ; $5e12: $7d
	cp $c8                                           ; $5e13: $fe $c8
	jr nc, jr_008_5e1b                               ; $5e15: $30 $04

	ld a, b                                          ; $5e17: $78
	cpl                                              ; $5e18: $2f
	inc a                                            ; $5e19: $3c
	ld b, a                                          ; $5e1a: $47

jr_008_5e1b:
	ld a, e                                          ; $5e1b: $7b
	add b                                            ; $5e1c: $80
	ld e, a                                          ; $5e1d: $5f
	ld d, $00                                        ; $5e1e: $16 $00
	cp $80                                           ; $5e20: $fe $80
	jr c, jr_008_5e26                                ; $5e22: $38 $02

	ld d, $ff                                        ; $5e24: $16 $ff

jr_008_5e26:
	add hl, de                                       ; $5e26: $19
	ld a, h                                          ; $5e27: $7c
	and $80                                          ; $5e28: $e6 $80
	jr z, jr_008_5e2f                                ; $5e2a: $28 $03

	ld hl, $0000                                     ; $5e2c: $21 $00 $00

jr_008_5e2f:
	inc hl                                           ; $5e2f: $23
	ld a, [$d7c7]                                    ; $5e30: $fa $c7 $d7
	ld e, a                                          ; $5e33: $5f
	ld a, [$d7c8]                                    ; $5e34: $fa $c8 $d7
	ld d, a                                          ; $5e37: $57
	call wCpHLtoDE                                       ; $5e38: $cd $80 $ce
	jr z, jr_008_5e3f                                ; $5e3b: $28 $02

	jr nc, jr_008_5e48                               ; $5e3d: $30 $09

jr_008_5e3f:
	ld h, d                                          ; $5e3f: $62
	ld l, e                                          ; $5e40: $6b
	ld a, $04                                        ; $5e41: $3e $04
	call Call_000_12fc                                       ; $5e43: $cd $fc $12
	inc a                                            ; $5e46: $3c
	rst AddAOntoHL                                          ; $5e47: $ef

jr_008_5e48:
	ld de, $01f4                                     ; $5e48: $11 $f4 $01
	call wCpHLtoDE                                       ; $5e4b: $cd $80 $ce
	jr c, jr_008_5e53                                ; $5e4e: $38 $03

	ld hl, $01f4                                     ; $5e50: $21 $f4 $01

jr_008_5e53:
	pop bc                                           ; $5e53: $c1
	ld de, $d7d4                                     ; $5e54: $11 $d4 $d7
	ld a, c                                          ; $5e57: $79
	sla a                                            ; $5e58: $cb $27
	call $1327                                       ; $5e5a: $cd $27 $13
	ld a, l                                          ; $5e5d: $7d
	ld [$d7c7], a                                    ; $5e5e: $ea $c7 $d7
	ld [de], a                                       ; $5e61: $12
	inc de                                           ; $5e62: $13
	ld a, h                                          ; $5e63: $7c
	ld [$d7c8], a                                    ; $5e64: $ea $c8 $d7
	ld [de], a                                       ; $5e67: $12
	inc c                                            ; $5e68: $0c
	ld a, $0b                                        ; $5e69: $3e $0b
	cp c                                             ; $5e6b: $b9
	jp nz, Jump_008_5dc7                             ; $5e6c: $c2 $c7 $5d

	ret                                              ; $5e6f: $c9


Call_008_5e70:
	push hl                                          ; $5e70: $e5
	sla a                                            ; $5e71: $cb $27
	ld hl, $d7b1                                     ; $5e73: $21 $b1 $d7
	rst AddAOntoHL                                          ; $5e76: $ef
	ld a, [hl+]                                      ; $5e77: $2a
	ld e, a                                          ; $5e78: $5f
	ld d, [hl]                                       ; $5e79: $56
	pop hl                                           ; $5e7a: $e1
	ret                                              ; $5e7b: $c9


Call_008_5e7c:
	ld hl, $5cbe                                     ; $5e7c: $21 $be $5c
	call Call_008_5e91                               ; $5e7f: $cd $91 $5e
	call Call_000_12fc                                       ; $5e82: $cd $fc $12
	ld d, a                                          ; $5e85: $57
	call Call_000_1309                                       ; $5e86: $cd $09 $13
	and $01                                          ; $5e89: $e6 $01
	ret z                                            ; $5e8b: $c8

	ld a, d                                          ; $5e8c: $7a
	cpl                                              ; $5e8d: $2f
	inc a                                            ; $5e8e: $3c
	ld d, a                                          ; $5e8f: $57
	ret                                              ; $5e90: $c9


Call_008_5e91:
	ld a, c                                          ; $5e91: $79
	rst AddAOntoHL                                          ; $5e92: $ef
	ld a, [hl]                                       ; $5e93: $7e
	ret                                              ; $5e94: $c9


	ld a, [$a226]                                    ; $5e95: $fa $26 $a2
	cp $06                                           ; $5e98: $fe $06
	jr nz, jr_008_5ea0                               ; $5e9a: $20 $04

	ld b, $00                                        ; $5e9c: $06 $00
	jr jr_008_5eaa                                   ; $5e9e: $18 $0a

jr_008_5ea0:
	cp $0b                                           ; $5ea0: $fe $0b
	jr nz, jr_008_5ea8                               ; $5ea2: $20 $04

	ld b, $01                                        ; $5ea4: $06 $01
	jr jr_008_5eaa                                   ; $5ea6: $18 $02

jr_008_5ea8:
	ld b, $02                                        ; $5ea8: $06 $02

jr_008_5eaa:
	push hl                                          ; $5eaa: $e5
	ld hl, $a22a                                     ; $5eab: $21 $2a $a2
	ld a, [hl]                                       ; $5eae: $7e
	sla a                                            ; $5eaf: $cb $27
	add [hl]                                         ; $5eb1: $86
	add b                                            ; $5eb2: $80
	pop hl                                           ; $5eb3: $e1
	ret                                              ; $5eb4: $c9


	ld hl, $5ed9                                     ; $5eb5: $21 $d9 $5e
	rst AddAOntoHL                                          ; $5eb8: $ef
	ld a, [hl]                                       ; $5eb9: $7e
	sla a                                            ; $5eba: $cb $27
	ld hl, $d7b1                                     ; $5ebc: $21 $b1 $d7
	rst AddAOntoHL                                          ; $5ebf: $ef
	ld a, [hl+]                                      ; $5ec0: $2a
	ld b, [hl]                                       ; $5ec1: $46
	ld c, a                                          ; $5ec2: $4f
	ret                                              ; $5ec3: $c9


Call_008_5ec4:
	ld hl, $d7c9                                     ; $5ec4: $21 $c9 $d7
	ld c, $ff                                        ; $5ec7: $0e $ff

jr_008_5ec9:
	inc c                                            ; $5ec9: $0c
	ld a, [hl+]                                      ; $5eca: $2a
	cp b                                             ; $5ecb: $b8
	jr nz, jr_008_5ec9                               ; $5ecc: $20 $fb

	ld a, c                                          ; $5ece: $79
	sla a                                            ; $5ecf: $cb $27
	ld hl, $d7d4                                     ; $5ed1: $21 $d4 $d7
	rst AddAOntoHL                                          ; $5ed4: $ef
	ld a, [hl+]                                      ; $5ed5: $2a
	ld b, [hl]                                       ; $5ed6: $46
	ld c, a                                          ; $5ed7: $4f
	ret                                              ; $5ed8: $c9


	nop                                              ; $5ed9: $00
	ld bc, $0302                                     ; $5eda: $01 $02 $03
	rst $38                                          ; $5edd: $ff
	rst $38                                          ; $5ede: $ff
	rst $38                                          ; $5edf: $ff
	inc b                                            ; $5ee0: $04
	dec b                                            ; $5ee1: $05
	rst $38                                          ; $5ee2: $ff
	rst $38                                          ; $5ee3: $ff
	rst $38                                          ; $5ee4: $ff
	rst $38                                          ; $5ee5: $ff
	ld b, $08                                        ; $5ee6: $06 $08
	rlca                                             ; $5ee8: $07
	add hl, bc                                       ; $5ee9: $09
	ld a, [bc]                                       ; $5eea: $0a

jr_008_5eeb:
	ld hl, wFrameCounter                                     ; $5eeb: $21 $1f $c1
	ld a, [$d80a]                                    ; $5eee: $fa $0a $d8
	cp [hl]                                          ; $5ef1: $be
	jr z, jr_008_5eeb                                ; $5ef2: $28 $f7

	xor a                                            ; $5ef4: $af
	ld [$c110], a                                    ; $5ef5: $ea $10 $c1
	call Call_008_5f3a                               ; $5ef8: $cd $3a $5f
	call Call_000_1ca1                                       ; $5efb: $cd $a1 $1c
	ld a, [$d7ef]                                    ; $5efe: $fa $ef $d7
	and a                                            ; $5f01: $a7
	jr nz, jr_008_5eeb                               ; $5f02: $20 $e7

	ld b, $0a                                        ; $5f04: $06 $0a
	call Call_008_5ec4                               ; $5f06: $cd $c4 $5e
	ld de, $0001                                     ; $5f09: $11 $01 $00
	call wCpBCtoDE                                       ; $5f0c: $cd $8c $ce
	ld a, $01                                        ; $5f0f: $3e $01
	ret z                                            ; $5f11: $c8

	ld de, $00c8                                     ; $5f12: $11 $c8 $00
	call wCpBCtoDE                                       ; $5f15: $cd $8c $ce
	ld a, $02                                        ; $5f18: $3e $02
	ret c                                            ; $5f1a: $d8

	push bc                                          ; $5f1b: $c5
	ld b, $05                                        ; $5f1c: $06 $05
	call Call_008_5ec4                               ; $5f1e: $cd $c4 $5e
	pop hl                                           ; $5f21: $e1
	call wHLminusEquBC                                       ; $5f22: $cd $aa $ce
	ld bc, $0032                                     ; $5f25: $01 $32 $00
	call wCpHLtoBC                                       ; $5f28: $cd $86 $ce
	ld a, $03                                        ; $5f2b: $3e $03
	ret c                                            ; $5f2d: $d8

	ld bc, $ffce                                     ; $5f2e: $01 $ce $ff
	call wCpHLtoBC                                       ; $5f31: $cd $86 $ce
	ld a, $04                                        ; $5f34: $3e $04
	ret nc                                           ; $5f36: $d0

	ld a, $03                                        ; $5f37: $3e $03
	ret                                              ; $5f39: $c9


Call_008_5f3a:
	ld a, [$d7ef]                                    ; $5f3a: $fa $ef $d7
	call wJumpTable                                       ; $5f3d: $cd $80 $cf
	ld c, h                                          ; $5f40: $4c
	ld e, a                                          ; $5f41: $5f
	add e                                            ; $5f42: $83
	ld h, b                                          ; $5f43: $60
	ld b, h                                          ; $5f44: $44
	ld h, b                                          ; $5f45: $60
	ld b, d                                          ; $5f46: $42
	ld h, d                                          ; $5f47: $62
	ld l, e                                          ; $5f48: $6b
	ld h, d                                          ; $5f49: $62
	ld [hl], h                                       ; $5f4a: $74
	ld h, d                                          ; $5f4b: $62
	rst FarCall                                          ; $5f4c: $f7
	nop                                              ; $5f4d: $00
	ld b, c                                          ; $5f4e: $41
	inc c                                            ; $5f4f: $0c
	ld bc, $67f2                                     ; $5f50: $01 $f2 $67
	ld de, $0000                                     ; $5f53: $11 $00 $00
	call $19f5                                       ; $5f56: $cd $f5 $19
	call Func_1aa6                                       ; $5f59: $cd $a6 $1a
	ld a, $04                                        ; $5f5c: $3e $04
	rst FarCall                                          ; $5f5e: $f7
	sbc b                                            ; $5f5f: $98
	ld b, [hl]                                       ; $5f60: $46
	inc bc                                           ; $5f61: $03
	ld a, $03                                        ; $5f62: $3e $03
	ld [$d7f9], a                                    ; $5f64: $ea $f9 $d7
	ld a, $00                                        ; $5f67: $3e $00
	ld [$d7fa], a                                    ; $5f69: $ea $fa $d7
	ld [$d7fb], a                                    ; $5f6c: $ea $fb $d7
	ld [$d819], a                                    ; $5f6f: $ea $19 $d8
	ld [$d81a], a                                    ; $5f72: $ea $1a $d8
	ld [$d81b], a                                    ; $5f75: $ea $1b $d8
	ldh a, [hDisp0_LCDC]                                     ; $5f78: $f0 $82
	and $87                                          ; $5f7a: $e6 $87
	or $03                                           ; $5f7c: $f6 $03
	ldh [hDisp0_LCDC], a                                     ; $5f7e: $e0 $82
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5f80: $cd $ef $2d
	ld bc, $0dc0                                     ; $5f83: $01 $c0 $0d
	ld hl, $8a40                                     ; $5f86: $21 $40 $8a
	ld e, $00                                        ; $5f89: $1e $00
	call Call_008_6034                               ; $5f8b: $cd $34 $60
	ld a, $01                                        ; $5f8e: $3e $01
	ldh [rVBK], a                                    ; $5f90: $e0 $4f
	ld bc, $02c0                                     ; $5f92: $01 $c0 $02
	ld hl, $9800                                     ; $5f95: $21 $00 $98
	ld e, $07                                        ; $5f98: $1e $07
	call Call_008_6034                               ; $5f9a: $cd $34 $60
	xor a                                            ; $5f9d: $af
	ldh [rVBK], a                                    ; $5f9e: $e0 $4f
	ld bc, $02c0                                     ; $5fa0: $01 $c0 $02
	ld hl, $9800                                     ; $5fa3: $21 $00 $98
	ld e, $7f                                        ; $5fa6: $1e $7f
	call Call_008_6034                               ; $5fa8: $cd $34 $60
	ld hl, $9804                                     ; $5fab: $21 $04 $98
	ld b, $00                                        ; $5fae: $06 $00
	ld d, $a4                                        ; $5fb0: $16 $a4

jr_008_5fb2:
	ld c, $08                                        ; $5fb2: $0e $08
	push hl                                          ; $5fb4: $e5
	ld hl, $d7c9                                     ; $5fb5: $21 $c9 $d7
	ld a, b                                          ; $5fb8: $78
	rst AddAOntoHL                                          ; $5fb9: $ef
	ld a, [hl]                                       ; $5fba: $7e
	pop hl                                           ; $5fbb: $e1
	cp $0a                                           ; $5fbc: $fe $0a
	jr nz, jr_008_5fc6                               ; $5fbe: $20 $06

	ld a, b                                          ; $5fc0: $78
	ld [$d7ec], a                                    ; $5fc1: $ea $ec $d7
	ld c, $09                                        ; $5fc4: $0e $09

jr_008_5fc6:
	push bc                                          ; $5fc6: $c5
	call Call_008_6010                               ; $5fc7: $cd $10 $60
	pop bc                                           ; $5fca: $c1
	ld a, $40                                        ; $5fcb: $3e $40
	rst AddAOntoHL                                          ; $5fcd: $ef
	ld a, c                                          ; $5fce: $79
	sla a                                            ; $5fcf: $cb $27
	add d                                            ; $5fd1: $82
	ld d, a                                          ; $5fd2: $57
	inc b                                            ; $5fd3: $04
	ld a, $0b                                        ; $5fd4: $3e $0b
	cp b                                             ; $5fd6: $b8
	jr nz, jr_008_5fb2                               ; $5fd7: $20 $d9

	ld c, $0d                                        ; $5fd9: $0e $0d
	call Call_008_6010                               ; $5fdb: $cd $10 $60
	ld a, [wInitialA]                                    ; $5fde: $fa $00 $c1
	cp $11                                           ; $5fe1: $fe $11
	jr nz, jr_008_6004                               ; $5fe3: $20 $1f

	ld a, $01                                        ; $5fe5: $3e $01
	ldh [rVBK], a                                    ; $5fe7: $e0 $4f
	ld hl, $9800                                     ; $5fe9: $21 $00 $98
	ld c, $16                                        ; $5fec: $0e $16

jr_008_5fee:
	di                                               ; $5fee: $f3

jr_008_5fef:
	ldh a, [rSTAT]                                   ; $5fef: $f0 $41
	bit 1, a                                         ; $5ff1: $cb $4f
	jr nz, jr_008_5fef                               ; $5ff3: $20 $fa

	ld a, $02                                        ; $5ff5: $3e $02
	ld [hl+], a                                      ; $5ff7: $22
	ld [hl+], a                                      ; $5ff8: $22
	ld [hl+], a                                      ; $5ff9: $22
	ei                                               ; $5ffa: $fb
	ld a, $1d                                        ; $5ffb: $3e $1d
	rst AddAOntoHL                                          ; $5ffd: $ef
	dec c                                            ; $5ffe: $0d
	jr nz, jr_008_5fee                               ; $5fff: $20 $ed

	xor a                                            ; $6001: $af
	ldh [rVBK], a                                    ; $6002: $e0 $4f

jr_008_6004:
	ld a, $ff                                        ; $6004: $3e $ff
	ld [$c149], a                                    ; $6006: $ea $49 $c1
	ld a, $58                                        ; $6009: $3e $58
	ldh [hDisp0_SCY], a                                     ; $600b: $e0 $83
	jp $1b19                                         ; $600d: $c3 $19 $1b


Call_008_6010:
	push hl                                          ; $6010: $e5
	push de                                          ; $6011: $d5
	push bc                                          ; $6012: $c5
	call Call_008_6022                               ; $6013: $cd $22 $60
	pop bc                                           ; $6016: $c1
	inc d                                            ; $6017: $14
	ld a, $20                                        ; $6018: $3e $20
	sub c                                            ; $601a: $91
	rst AddAOntoHL                                          ; $601b: $ef
	call Call_008_6022                               ; $601c: $cd $22 $60
	pop de                                           ; $601f: $d1
	pop hl                                           ; $6020: $e1
	ret                                              ; $6021: $c9


Call_008_6022:
	push de                                          ; $6022: $d5

jr_008_6023:
	di                                               ; $6023: $f3

jr_008_6024:
	ldh a, [rSTAT]                                   ; $6024: $f0 $41
	bit 1, a                                         ; $6026: $cb $4f
	jr nz, jr_008_6024                               ; $6028: $20 $fa

	ld [hl], d                                       ; $602a: $72
	ei                                               ; $602b: $fb
	inc hl                                           ; $602c: $23
	inc d                                            ; $602d: $14
	inc d                                            ; $602e: $14
	dec c                                            ; $602f: $0d
	jr nz, jr_008_6023                               ; $6030: $20 $f1

	pop de                                           ; $6032: $d1
	ret                                              ; $6033: $c9


Call_008_6034:
jr_008_6034:
	di                                               ; $6034: $f3

jr_008_6035:
	ldh a, [rSTAT]                                   ; $6035: $f0 $41
	bit 1, a                                         ; $6037: $cb $4f
	jr nz, jr_008_6035                               ; $6039: $20 $fa

	ld [hl], e                                       ; $603b: $73
	ei                                               ; $603c: $fb
	inc hl                                           ; $603d: $23
	dec bc                                           ; $603e: $0b
	ld a, b                                          ; $603f: $78
	or c                                             ; $6040: $b1
	jr nz, jr_008_6034                               ; $6041: $20 $f1

	ret                                              ; $6043: $c9


	ld a, $03                                        ; $6044: $3e $03
	ld [$d7f9], a                                    ; $6046: $ea $f9 $d7
	ld [$d7fb], a                                    ; $6049: $ea $fb $d7
	ld [$d819], a                                    ; $604c: $ea $19 $d8
	ld [$d81a], a                                    ; $604f: $ea $1a $d8
	ld [$d81b], a                                    ; $6052: $ea $1b $d8
	ld a, $00                                        ; $6055: $3e $00
	ld [$d7fa], a                                    ; $6057: $ea $fa $d7
	ld b, $1e                                        ; $605a: $06 $1e
	ld hl, $788e                                     ; $605c: $21 $8e $78
	call Func_1c32                                       ; $605f: $cd $32 $1c
	jp $1b19                                         ; $6062: $c3 $19 $1b


	ld e, $43                                        ; $6065: $1e $43
	ld l, a                                          ; $6067: $6f
	ld e, $4c                                        ; $6068: $1e $4c
	ld l, a                                          ; $606a: $6f
	ld e, $55                                        ; $606b: $1e $55
	ld l, a                                          ; $606d: $6f
	ld e, $5e                                        ; $606e: $1e $5e
	ld l, a                                          ; $6070: $6f
	ld e, $83                                        ; $6071: $1e $83
	ld l, a                                          ; $6073: $6f
	ld e, $8b                                        ; $6074: $1e $8b
	ld l, a                                          ; $6076: $6f
	ld e, $c0                                        ; $6077: $1e $c0
	ld l, a                                          ; $6079: $6f
	ld e, $c9                                        ; $607a: $1e $c9
	ld l, a                                          ; $607c: $6f
	ld e, $d2                                        ; $607d: $1e $d2
	ld l, a                                          ; $607f: $6f
	ld e, $dc                                        ; $6080: $1e $dc
	ld l, a                                          ; $6082: $6f
	ld a, $00                                        ; $6083: $3e $00
	ld [$d7f9], a                                    ; $6085: $ea $f9 $d7
	ld a, $03                                        ; $6088: $3e $03
	ld [$d7fa], a                                    ; $608a: $ea $fa $d7
	ld c, $00                                        ; $608d: $0e $00

jr_008_608f:
	call Call_008_61a3                               ; $608f: $cd $a3 $61
	push bc                                          ; $6092: $c5
	call Call_008_6153                               ; $6093: $cd $53 $61
	and a                                            ; $6096: $a7
	jr nz, jr_008_60a0                               ; $6097: $20 $07

	ld b, $1e                                        ; $6099: $06 $1e
	ld hl, $70e2                                     ; $609b: $21 $e2 $70
	jr jr_008_60b7                                   ; $609e: $18 $17

jr_008_60a0:
	ld a, c                                          ; $60a0: $79
	ld hl, $d7c9                                     ; $60a1: $21 $c9 $d7
	rst AddAOntoHL                                          ; $60a4: $ef
	ld a, [hl]                                       ; $60a5: $7e
	cp $0a                                           ; $60a6: $fe $0a
	jp z, Jump_008_622c                              ; $60a8: $ca $2c $62

	sla a                                            ; $60ab: $cb $27
	add [hl]                                         ; $60ad: $86
	ld hl, $6065                                     ; $60ae: $21 $65 $60
	rst AddAOntoHL                                          ; $60b1: $ef
	ld b, [hl]                                       ; $60b2: $46
	inc hl                                           ; $60b3: $23
	ld a, [hl+]                                      ; $60b4: $2a
	ld h, [hl]                                       ; $60b5: $66
	ld l, a                                          ; $60b6: $6f

Jump_008_60b7:
jr_008_60b7:
	call Func_1c32                                       ; $60b7: $cd $32 $1c
	pop bc                                           ; $60ba: $c1
	inc c                                            ; $60bb: $0c
	ld a, $0b                                        ; $60bc: $3e $0b
	cp c                                             ; $60be: $b9
	jr nz, jr_008_608f                               ; $60bf: $20 $ce

	ld c, $0b                                        ; $60c1: $0e $0b
	call Call_008_61a3                               ; $60c3: $cd $a3 $61
	ld c, $00                                        ; $60c6: $0e $00

jr_008_60c8:
	ld d, $00                                        ; $60c8: $16 $00
	ld e, c                                          ; $60ca: $59
	ld a, $01                                        ; $60cb: $3e $01
	call $1c16                                       ; $60cd: $cd $16 $1c
	inc c                                            ; $60d0: $0c
	ld a, $0a                                        ; $60d1: $3e $0a
	cp c                                             ; $60d3: $b9
	jr nz, jr_008_60c8                               ; $60d4: $20 $f2

	ld b, $1e                                        ; $60d6: $06 $1e
	ld hl, $70da                                     ; $60d8: $21 $da $70
	call Func_1c32                                       ; $60db: $cd $32 $1c
	ld a, $e0                                        ; $60de: $3e $e0
	ld [wCharTilesDataDest], a                                    ; $60e0: $ea $fc $d7
	ld a, $96                                        ; $60e3: $3e $96
	ld [wCharTilesDataDest+1], a                                    ; $60e5: $ea $fd $d7
	xor a                                            ; $60e8: $af
	ld [wCurrTilePixelIdx], a                                    ; $60e9: $ea $fe $d7
	ld b, $1e                                        ; $60ec: $06 $1e
	ld hl, $70de                                     ; $60ee: $21 $de $70
	call Func_1c32                                       ; $60f1: $cd $32 $1c
	ld c, $00                                        ; $60f4: $0e $00

jr_008_60f6:
	ld hl, $d7c9                                     ; $60f6: $21 $c9 $d7
	ld a, c                                          ; $60f9: $79
	rst AddAOntoHL                                          ; $60fa: $ef
	ld a, [hl]                                       ; $60fb: $7e
	ld hl, $d7b1                                     ; $60fc: $21 $b1 $d7
	sla a                                            ; $60ff: $cb $27
	rst AddAOntoHL                                          ; $6101: $ef
	ld e, [hl]                                       ; $6102: $5e
	inc hl                                           ; $6103: $23
	ld d, [hl]                                       ; $6104: $56
	call Call_008_6234                               ; $6105: $cd $34 $62
	ld a, $0f                                        ; $6108: $3e $0f
	rst AddAOntoHL                                          ; $610a: $ef
	call Call_008_6153                               ; $610b: $cd $53 $61
	and a                                            ; $610e: $a7
	jr nz, jr_008_6118                               ; $610f: $20 $07

	ld b, $04                                        ; $6111: $06 $04
	call Call_008_6183                               ; $6113: $cd $83 $61
	jr jr_008_6125                                   ; $6116: $18 $0d

jr_008_6118:
	call Call_008_61d6                               ; $6118: $cd $d6 $61
	push bc                                          ; $611b: $c5
	ld a, $6a                                        ; $611c: $3e $6a
	call Call_008_620c                               ; $611e: $cd $0c $62
	call Call_008_620c                               ; $6121: $cd $0c $62
	pop bc                                           ; $6124: $c1

jr_008_6125:
	inc c                                            ; $6125: $0c
	ld a, $0b                                        ; $6126: $3e $0b
	cp c                                             ; $6128: $b9
	jr nz, jr_008_60f6                               ; $6129: $20 $cb

	ld c, $00                                        ; $612b: $0e $00

jr_008_612d:
	ld hl, $d7d4                                     ; $612d: $21 $d4 $d7
	ld a, c                                          ; $6130: $79
	sla a                                            ; $6131: $cb $27
	rst AddAOntoHL                                          ; $6133: $ef
	ld e, [hl]                                       ; $6134: $5e
	inc hl                                           ; $6135: $23
	ld d, [hl]                                       ; $6136: $56
	call Call_008_6234                               ; $6137: $cd $34 $62
	call Call_008_6153                               ; $613a: $cd $53 $61
	and a                                            ; $613d: $a7
	jr nz, jr_008_6147                               ; $613e: $20 $07

	ld b, $03                                        ; $6140: $06 $03
	call Call_008_6183                               ; $6142: $cd $83 $61
	jr jr_008_614a                                   ; $6145: $18 $03

jr_008_6147:
	call Call_008_61d6                               ; $6147: $cd $d6 $61

jr_008_614a:
	inc c                                            ; $614a: $0c
	ld a, $0b                                        ; $614b: $3e $0b
	cp c                                             ; $614d: $b9
	jr nz, jr_008_612d                               ; $614e: $20 $dd

	jp $1b19                                         ; $6150: $c3 $19 $1b


Call_008_6153:
	push hl                                          ; $6153: $e5
	ld a, c                                          ; $6154: $79
	ld hl, $d7c9                                     ; $6155: $21 $c9 $d7
	rst AddAOntoHL                                          ; $6158: $ef
	ld a, [hl]                                       ; $6159: $7e
	pop hl                                           ; $615a: $e1
	cp $07                                           ; $615b: $fe $07
	jr nz, jr_008_6163                               ; $615d: $20 $04

	ld a, [$a339]                                    ; $615f: $fa $39 $a3
	ret                                              ; $6162: $c9


jr_008_6163:
	cp $07                                           ; $6163: $fe $07
	jr c, jr_008_616a                                ; $6165: $38 $03

	ld a, $01                                        ; $6167: $3e $01
	ret                                              ; $6169: $c9


jr_008_616a:
	push hl                                          ; $616a: $e5
	ld hl, $6179                                     ; $616b: $21 $79 $61
	rst AddAOntoHL                                          ; $616e: $ef
	ld a, [hl]                                       ; $616f: $7e
	ld hl, $a365                                     ; $6170: $21 $65 $a3
	rst AddAOntoHL                                          ; $6173: $ef
	ld a, [hl]                                       ; $6174: $7e
	pop hl                                           ; $6175: $e1
	and $01                                          ; $6176: $e6 $01
	ret                                              ; $6178: $c9


	nop                                              ; $6179: $00
	ld bc, $0302                                     ; $617a: $01 $02 $03
	rlca                                             ; $617d: $07
	ld [$0e0d], sp                                   ; $617e: $08 $0d $0e
	rrca                                             ; $6181: $0f
	db $10                                           ; $6182: $10

Call_008_6183:
jr_008_6183:
	di                                               ; $6183: $f3

jr_008_6184:
	ldh a, [rSTAT]                                   ; $6184: $f0 $41
	bit 1, a                                         ; $6186: $cb $4f
	jr nz, jr_008_6184                               ; $6188: $20 $fa

	ld a, $6e                                        ; $618a: $3e $6e
	ld [hl], a                                       ; $618c: $77
	ei                                               ; $618d: $fb
	push hl                                          ; $618e: $e5
	ld a, $20                                        ; $618f: $3e $20
	rst AddAOntoHL                                          ; $6191: $ef
	di                                               ; $6192: $f3

jr_008_6193:
	ldh a, [rSTAT]                                   ; $6193: $f0 $41
	bit 1, a                                         ; $6195: $cb $4f
	jr nz, jr_008_6193                               ; $6197: $20 $fa

	ld a, $6f                                        ; $6199: $3e $6f
	ld [hl], a                                       ; $619b: $77
	ei                                               ; $619c: $fb
	pop hl                                           ; $619d: $e1
	inc hl                                           ; $619e: $23
	dec b                                            ; $619f: $05
	jr nz, jr_008_6183                               ; $61a0: $20 $e1

	ret                                              ; $61a2: $c9


Call_008_61a3:
	push de                                          ; $61a3: $d5
	push hl                                          ; $61a4: $e5
	push bc                                          ; $61a5: $c5
	xor a                                            ; $61a6: $af
	ld [wCurrTilePixelIdx], a                                    ; $61a7: $ea $fe $d7
	ld [wCurrTextLinePixelIdx], a                                    ; $61aa: $ea $00 $d8
	ld a, $20                                        ; $61ad: $3e $20
	ld [$d7ff], a                                    ; $61af: $ea $ff $d7
	ld b, $10                                        ; $61b2: $06 $10
	call BCequBtimesC                                       ; $61b4: $cd $5f $12
	ld de, $0010                                     ; $61b7: $11 $10 $00
	call DEBCequBCtimesDE                                       ; $61ba: $cd $95 $12
	ld hl, $8a40                                     ; $61bd: $21 $40 $8a
	add hl, bc                                       ; $61c0: $09
	pop bc                                           ; $61c1: $c1
	ld a, [$d7ec]                                    ; $61c2: $fa $ec $d7
	cp c                                             ; $61c5: $b9
	jr nc, jr_008_61cb                               ; $61c6: $30 $03

	ld a, $20                                        ; $61c8: $3e $20
	rst AddAOntoHL                                          ; $61ca: $ef

jr_008_61cb:
	ld a, l                                          ; $61cb: $7d
	ld [wCharTilesDataDest], a                                    ; $61cc: $ea $fc $d7
	ld a, h                                          ; $61cf: $7c
	ld [wCharTilesDataDest+1], a                                    ; $61d0: $ea $fd $d7
	pop hl                                           ; $61d3: $e1
	pop de                                           ; $61d4: $d1
	ret                                              ; $61d5: $c9


Call_008_61d6:
	xor a                                            ; $61d6: $af
	ld [$d7eb], a                                    ; $61d7: $ea $eb $d7
	push bc                                          ; $61da: $c5
	ld bc, $0064                                     ; $61db: $01 $64 $00
	call Call_008_61ed                               ; $61de: $cd $ed $61
	ld bc, $000a                                     ; $61e1: $01 $0a $00
	call Call_008_61ed                               ; $61e4: $cd $ed $61
	ld c, e                                          ; $61e7: $4b
	call Call_008_6208                               ; $61e8: $cd $08 $62
	pop bc                                           ; $61eb: $c1
	ret                                              ; $61ec: $c9


Call_008_61ed:
	push hl                                          ; $61ed: $e5
	ld h, d                                          ; $61ee: $62
	ld l, e                                          ; $61ef: $6b
	call BCHLequHLdivModBC                                       ; $61f0: $cd $c1 $12
	ld e, c                                          ; $61f3: $59
	ld d, b                                          ; $61f4: $50
	ld c, l                                          ; $61f5: $4d
	pop hl                                           ; $61f6: $e1
	ld a, c                                          ; $61f7: $79
	and a                                            ; $61f8: $a7
	jr nz, jr_008_6203                               ; $61f9: $20 $08

	ld a, [$d7eb]                                    ; $61fb: $fa $eb $d7
	and a                                            ; $61fe: $a7
	jr nz, jr_008_6208                               ; $61ff: $20 $07

	inc hl                                           ; $6201: $23
	ret                                              ; $6202: $c9


jr_008_6203:
	ld a, $01                                        ; $6203: $3e $01
	ld [$d7eb], a                                    ; $6205: $ea $eb $d7

Call_008_6208:
jr_008_6208:
	ld a, $56                                        ; $6208: $3e $56
	add c                                            ; $620a: $81
	add c                                            ; $620b: $81

Call_008_620c:
	push hl                                          ; $620c: $e5
	push de                                          ; $620d: $d5
	ld d, a                                          ; $620e: $57
	di                                               ; $620f: $f3

jr_008_6210:
	ldh a, [rSTAT]                                   ; $6210: $f0 $41
	bit 1, a                                         ; $6212: $cb $4f
	jr nz, jr_008_6210                               ; $6214: $20 $fa

	ld [hl], d                                       ; $6216: $72
	ei                                               ; $6217: $fb
	ld bc, $0020                                     ; $6218: $01 $20 $00
	add hl, bc                                       ; $621b: $09
	inc d                                            ; $621c: $14
	di                                               ; $621d: $f3

jr_008_621e:
	ldh a, [rSTAT]                                   ; $621e: $f0 $41
	bit 1, a                                         ; $6220: $cb $4f
	jr nz, jr_008_621e                               ; $6222: $20 $fa

	ld [hl], d                                       ; $6224: $72
	ei                                               ; $6225: $fb
	inc d                                            ; $6226: $14
	ld a, d                                          ; $6227: $7a
	pop de                                           ; $6228: $d1
	pop hl                                           ; $6229: $e1
	inc hl                                           ; $622a: $23
	ret                                              ; $622b: $c9


Jump_008_622c:
	ld b, $1e                                        ; $622c: $06 $1e
	ld hl, $700b                                     ; $622e: $21 $0b $70
	jp Jump_008_60b7                                 ; $6231: $c3 $b7 $60


Call_008_6234:
	push bc                                          ; $6234: $c5
	ld hl, $9800                                     ; $6235: $21 $00 $98
	swap c                                           ; $6238: $cb $31
	ld b, $00                                        ; $623a: $06 $00
	add hl, bc                                       ; $623c: $09
	add hl, bc                                       ; $623d: $09
	add hl, bc                                       ; $623e: $09
	add hl, bc                                       ; $623f: $09
	pop bc                                           ; $6240: $c1
	ret                                              ; $6241: $c9


	ld a, [wInitialA]                                    ; $6242: $fa $00 $c1
	cp $11                                           ; $6245: $fe $11
	jr z, jr_008_624f                                ; $6247: $28 $06

	ld a, $e4                                        ; $6249: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $624b: $e0 $85
	jr jr_008_6255                                   ; $624d: $18 $06

jr_008_624f:
	ld bc, $626e                                     ; $624f: $01 $6e $62
	call $18c0                                       ; $6252: $cd $c0 $18

jr_008_6255:
	ld c, $1e                                        ; $6255: $0e $1e

jr_008_6257:
	push bc                                          ; $6257: $c5
	call Call_000_1ca1                                       ; $6258: $cd $a1 $1c
	pop bc                                           ; $625b: $c1

jr_008_625c:
	ld hl, wFrameCounter                                     ; $625c: $21 $1f $c1
	ld a, [$d80a]                                    ; $625f: $fa $0a $d8
	cp [hl]                                          ; $6262: $be
	jr z, jr_008_625c                                ; $6263: $28 $f7

	dec c                                            ; $6265: $0d
	jr nz, jr_008_6257                               ; $6266: $20 $ef

	jp $1b19                                         ; $6268: $c3 $19 $1b


	ldh a, [hDisp0_SCY]                                     ; $626b: $f0 $83
	dec a                                            ; $626d: $3d
	ldh [hDisp0_SCY], a                                     ; $626e: $e0 $83
	ret nz                                           ; $6270: $c0

	jp $1b19                                         ; $6271: $c3 $19 $1b


	ld a, [wButtonsHeld]                                    ; $6274: $fa $23 $c1
	cp $10                                           ; $6277: $fe $10
	jr nz, jr_008_6296                               ; $6279: $20 $1b

	ld a, $03                                        ; $627b: $3e $03
	ld [$d7f9], a                                    ; $627d: $ea $f9 $d7
	ld [$d7fb], a                                    ; $6280: $ea $fb $d7
	ld [$d819], a                                    ; $6283: $ea $19 $d8
	ld [$d81a], a                                    ; $6286: $ea $1a $d8
	ld [$d81b], a                                    ; $6289: $ea $1b $d8
	ld a, $00                                        ; $628c: $3e $00
	ld [$d7fa], a                                    ; $628e: $ea $fa $d7
	xor a                                            ; $6291: $af
	ld [$d7ef], a                                    ; $6292: $ea $ef $d7
	ret                                              ; $6295: $c9


jr_008_6296:
	cp $04                                           ; $6296: $fe $04
	jr nz, jr_008_62a2                               ; $6298: $20 $08

	ldh a, [hDisp0_SCY]                                     ; $629a: $f0 $83
	and a                                            ; $629c: $a7
	ret z                                            ; $629d: $c8

	dec a                                            ; $629e: $3d
	ldh [hDisp0_SCY], a                                     ; $629f: $e0 $83
	ret                                              ; $62a1: $c9


jr_008_62a2:
	cp $08                                           ; $62a2: $fe $08
	ret nz                                           ; $62a4: $c0

	ldh a, [hDisp0_SCY]                                     ; $62a5: $f0 $83
	cp $58                                           ; $62a7: $fe $58
	ret z                                            ; $62a9: $c8

	inc a                                            ; $62aa: $3c
	ldh [hDisp0_SCY], a                                     ; $62ab: $e0 $83
	ret                                              ; $62ad: $c9


	ld hl, $4000                                     ; $62ae: $21 $00 $40
	ld a, [$c114]                                    ; $62b1: $fa $14 $c1
	ld b, $00                                        ; $62b4: $06 $00
	ld c, a                                          ; $62b6: $4f
	add hl, bc                                       ; $62b7: $09
	sla c                                            ; $62b8: $cb $21
	rl b                                             ; $62ba: $cb $10
	sla c                                            ; $62bc: $cb $21
	rl b                                             ; $62be: $cb $10
	add hl, bc                                       ; $62c0: $09
	add hl, bc                                       ; $62c1: $09
	add hl, bc                                       ; $62c2: $09
	ld de, $d543                                     ; $62c3: $11 $43 $d5
	call $36ce                                       ; $62c6: $cd $ce $36
	ld a, $d3                                        ; $62c9: $3e $d3
	ld [$c0d2], a                                    ; $62cb: $ea $d2 $c0
	ld a, $d4                                        ; $62ce: $3e $d4
	ld [$c0d3], a                                    ; $62d0: $ea $d3 $c0
	call $3017                                       ; $62d3: $cd $17 $30
	jp Jump_008_6406                                 ; $62d6: $c3 $06 $64


	xor a                                            ; $62d9: $af
	ld [$c0e0], a                                    ; $62da: $ea $e0 $c0
	ld [$c0e1], a                                    ; $62dd: $ea $e1 $c0
	ld c, a                                          ; $62e0: $4f
	ld b, a                                          ; $62e1: $47
	ld hl, $8000                                     ; $62e2: $21 $00 $80

jr_008_62e5:
	push hl                                          ; $62e5: $e5
	call Call_008_632d                               ; $62e6: $cd $2d $63
	pop hl                                           ; $62e9: $e1
	ld de, $0010                                     ; $62ea: $11 $10 $00
	add hl, de                                       ; $62ed: $19
	jr z, jr_008_6305                                ; $62ee: $28 $15

	ld a, [$c0e0]                                    ; $62f0: $fa $e0 $c0
	add b                                            ; $62f3: $80
	inc a                                            ; $62f4: $3c
	ld [$c0e0], a                                    ; $62f5: $ea $e0 $c0
	ld a, b                                          ; $62f8: $78
	ld b, $00                                        ; $62f9: $06 $00
	cp $03                                           ; $62fb: $fe $03
	jr nz, jr_008_62e5                               ; $62fd: $20 $e6

	ld de, $0030                                     ; $62ff: $11 $30 $00
	add hl, de                                       ; $6302: $19
	jr jr_008_62e5                                   ; $6303: $18 $e0

jr_008_6305:
	inc b                                            ; $6305: $04
	ld a, b                                          ; $6306: $78
	cp $03                                           ; $6307: $fe $03
	jr nz, jr_008_62e5                               ; $6309: $20 $da

	ld de, $c155                                     ; $630b: $11 $55 $c1
	ld a, e                                          ; $630e: $7b
	add c                                            ; $630f: $81
	ld e, a                                          ; $6310: $5f
	ld a, [$c0e0]                                    ; $6311: $fa $e0 $c0
	ld [de], a                                       ; $6314: $12
	add $04                                          ; $6315: $c6 $04
	ld [$c0e0], a                                    ; $6317: $ea $e0 $c0
	ld de, $0010                                     ; $631a: $11 $10 $00
	add hl, de                                       ; $631d: $19
	call Call_008_636d                               ; $631e: $cd $6d $63
	ld b, $00                                        ; $6321: $06 $00
	inc c                                            ; $6323: $0c
	ld a, [$c15b]                                    ; $6324: $fa $5b $c1
	srl a                                            ; $6327: $cb $3f
	cp c                                             ; $6329: $b9
	jr nz, jr_008_62e5                               ; $632a: $20 $b9

	ret                                              ; $632c: $c9


Call_008_632d:
	push hl                                          ; $632d: $e5
	ld a, [$c0e1]                                    ; $632e: $fa $e1 $c0
	srl a                                            ; $6331: $cb $3f
	rl e                                             ; $6333: $cb $13
	ld hl, $d4d3                                     ; $6335: $21 $d3 $d4
	rst AddAOntoHL                                          ; $6338: $ef
	call Call_008_636d                               ; $6339: $cd $6d $63
	ld a, [hl]                                       ; $633c: $7e
	pop hl                                           ; $633d: $e1
	ld d, a                                          ; $633e: $57
	swap a                                           ; $633f: $cb $37
	xor d                                            ; $6341: $aa
	and $07                                          ; $6342: $e6 $07
	jr z, jr_008_634c                                ; $6344: $28 $06

	call Call_008_636d                               ; $6346: $cd $6d $63
	ld b, $03                                        ; $6349: $06 $03
	ret                                              ; $634b: $c9


jr_008_634c:
	ld a, d                                          ; $634c: $7a
	rr e                                             ; $634d: $cb $1b
	jr c, jr_008_6353                                ; $634f: $38 $02

	swap a                                           ; $6351: $cb $37

jr_008_6353:
	and $08                                          ; $6353: $e6 $08
	jr nz, jr_008_635a                               ; $6355: $20 $03

	or $ff                                           ; $6357: $f6 $ff
	ret                                              ; $6359: $c9


jr_008_635a:
	ld d, $00                                        ; $635a: $16 $00
	ld e, $10                                        ; $635c: $1e $10

jr_008_635e:
	di                                               ; $635e: $f3

jr_008_635f:
	ldh a, [rSTAT]                                   ; $635f: $f0 $41
	bit 1, a                                         ; $6361: $cb $4f
	jr nz, jr_008_635f                               ; $6363: $20 $fa

	ld a, [hl+]                                      ; $6365: $2a
	ei                                               ; $6366: $fb
	or d                                             ; $6367: $b2
	ret nz                                           ; $6368: $c0

	dec e                                            ; $6369: $1d
	jr nz, jr_008_635e                               ; $636a: $20 $f2

	ret                                              ; $636c: $c9


Call_008_636d:
	ld a, [$c0e1]                                    ; $636d: $fa $e1 $c0
	inc a                                            ; $6370: $3c
	ld [$c0e1], a                                    ; $6371: $ea $e1 $c0
	ret                                              ; $6374: $c9


	ld hl, $9c00                                     ; $6375: $21 $00 $9c
	bit 7, a                                         ; $6378: $cb $7f
	jr z, jr_008_637f                                ; $637a: $28 $03

	ld hl, $9c20                                     ; $637c: $21 $20 $9c

jr_008_637f:
	and $07                                          ; $637f: $e6 $07
	ld e, a                                          ; $6381: $5f
	ld a, [wInitialA]                                    ; $6382: $fa $00 $c1
	cp $11                                           ; $6385: $fe $11
	jr nz, jr_008_638d                               ; $6387: $20 $04

	srl e                                            ; $6389: $cb $3b
	jr jr_008_639f                                   ; $638b: $18 $12

jr_008_638d:
	ldh a, [hDisp0_OBP0]                                     ; $638d: $f0 $86
	ld c, a                                          ; $638f: $4f
	ld a, e                                          ; $6390: $7b
	call $3386                                       ; $6391: $cd $86 $33
	and $10                                          ; $6394: $e6 $10
	jr z, jr_008_639b                                ; $6396: $28 $03

	ldh a, [hDisp0_OBP1]                                     ; $6398: $f0 $87
	ld c, a                                          ; $639a: $4f

jr_008_639b:
	ld a, $03                                        ; $639b: $3e $03
	and c                                            ; $639d: $a1
	ld e, a                                          ; $639e: $5f

jr_008_639f:
	ld a, [$c0d9]                                    ; $639f: $fa $d9 $c0
	add $30                                          ; $63a2: $c6 $30
	ld c, a                                          ; $63a4: $4f
	ld a, [$c152]                                    ; $63a5: $fa $52 $c1
	add c                                            ; $63a8: $81
	ld c, a                                          ; $63a9: $4f
	ld a, [$c14c]                                    ; $63aa: $fa $4c $c1
	add c                                            ; $63ad: $81
	ld c, a                                          ; $63ae: $4f
	ld b, $00                                        ; $63af: $06 $00
	sla c                                            ; $63b1: $cb $21
	rl b                                             ; $63b3: $cb $10
	sla c                                            ; $63b5: $cb $21
	rl b                                             ; $63b7: $cb $10
	add hl, bc                                       ; $63b9: $09
	ld a, [$c0d8]                                    ; $63ba: $fa $d8 $c0
	add $50                                          ; $63bd: $c6 $50
	ld c, a                                          ; $63bf: $4f
	ld a, [$c151]                                    ; $63c0: $fa $51 $c1
	add c                                            ; $63c3: $81
	ld c, a                                          ; $63c4: $4f
	ld a, [$c14b]                                    ; $63c5: $fa $4b $c1
	add c                                            ; $63c8: $81
	ld c, a                                          ; $63c9: $4f
	ld b, $00                                        ; $63ca: $06 $00
	srl c                                            ; $63cc: $cb $39
	srl c                                            ; $63ce: $cb $39
	srl c                                            ; $63d0: $cb $39
	add hl, bc                                       ; $63d2: $09
	ld a, $a0                                        ; $63d3: $3e $a0
	add e                                            ; $63d5: $83
	ld e, a                                          ; $63d6: $5f
	di                                               ; $63d7: $f3

jr_008_63d8:
	ldh a, [rSTAT]                                   ; $63d8: $f0 $41
	bit 1, a                                         ; $63da: $cb $4f
	jr nz, jr_008_63d8                               ; $63dc: $20 $fa

	ld [hl], e                                       ; $63de: $73
	ei                                               ; $63df: $fb
	ld a, [wInitialA]                                    ; $63e0: $fa $00 $c1
	cp $11                                           ; $63e3: $fe $11
	jr nz, jr_008_6405                               ; $63e5: $20 $1e

	ld a, $01                                        ; $63e7: $3e $01
	ldh [rVBK], a                                    ; $63e9: $e0 $4f
	di                                               ; $63eb: $f3

jr_008_63ec:
	ldh a, [rSTAT]                                   ; $63ec: $f0 $41
	bit 1, a                                         ; $63ee: $cb $4f
	jr nz, jr_008_63ec                               ; $63f0: $20 $fa

	ld a, [hl]                                       ; $63f2: $7e
	ei                                               ; $63f3: $fb
	and $f8                                          ; $63f4: $e6 $f8
	or $02                                           ; $63f6: $f6 $02
	ld e, a                                          ; $63f8: $5f
	di                                               ; $63f9: $f3

jr_008_63fa:
	ldh a, [rSTAT]                                   ; $63fa: $f0 $41
	bit 1, a                                         ; $63fc: $cb $4f
	jr nz, jr_008_63fa                               ; $63fe: $20 $fa

	ld [hl], e                                       ; $6400: $73
	ei                                               ; $6401: $fb
	xor a                                            ; $6402: $af
	ldh [rVBK], a                                    ; $6403: $e0 $4f

jr_008_6405:
	ret                                              ; $6405: $c9


Jump_008_6406:
	ld bc, $0000                                     ; $6406: $01 $00 $00
	ld a, $57                                        ; $6409: $3e $57
	ld h, $c4                                        ; $640b: $26 $c4
	ld de, $d543                                     ; $640d: $11 $43 $d5
	jr jr_008_6436                                   ; $6410: $18 $24

	ld bc, $0000                                     ; $6412: $01 $00 $00
	ld a, $02                                        ; $6415: $3e $02
	ld h, $c3                                        ; $6417: $26 $c3
	ld de, $d5e3                                     ; $6419: $11 $e3 $d5
	jr jr_008_6436                                   ; $641c: $18 $18

	ld bc, $0000                                     ; $641e: $01 $00 $00
	ld a, $03                                        ; $6421: $3e $03
	ld h, $c2                                        ; $6423: $26 $c2
	ld de, $d5eb                                     ; $6425: $11 $eb $d5
	call Call_008_6436                               ; $6428: $cd $36 $64
	ld l, $05                                        ; $642b: $2e $05
	ld a, $68                                        ; $642d: $3e $68
	ld [hl], a                                       ; $642f: $77
	ld l, $07                                        ; $6430: $2e $07
	ld a, $50                                        ; $6432: $3e $50
	ld [hl], a                                       ; $6434: $77
	ret                                              ; $6435: $c9


Call_008_6436:
jr_008_6436:
	ld l, $00                                        ; $6436: $2e $00
	ld [hl], a                                       ; $6438: $77
	ld l, $05                                        ; $6439: $2e $05
	ld a, [$c152]                                    ; $643b: $fa $52 $c1
	add c                                            ; $643e: $81
	add $40                                          ; $643f: $c6 $40
	ld [hl], a                                       ; $6441: $77
	ld a, [$c14c]                                    ; $6442: $fa $4c $c1
	add [hl]                                         ; $6445: $86
	ld [hl], a                                       ; $6446: $77
	ld l, $07                                        ; $6447: $2e $07
	ld a, [$c151]                                    ; $6449: $fa $51 $c1
	add b                                            ; $644c: $80
	add $50                                          ; $644d: $c6 $50
	ld [hl], a                                       ; $644f: $77
	ld a, [$c14b]                                    ; $6450: $fa $4b $c1
	add [hl]                                         ; $6453: $86
	ld [hl], a                                       ; $6454: $77
	ld l, $08                                        ; $6455: $2e $08
	ld [hl], e                                       ; $6457: $73
	inc hl                                           ; $6458: $23
	ld [hl], d                                       ; $6459: $72
	ret                                              ; $645a: $c9


	ld a, $01                                        ; $645b: $3e $01
	ldh [rVBK], a                                    ; $645d: $e0 $4f
	ld c, $0a                                        ; $645f: $0e $0a
	ld de, $d4d3                                     ; $6461: $11 $d3 $d4

jr_008_6464:
	di                                               ; $6464: $f3

jr_008_6465:
	ldh a, [rSTAT]                                   ; $6465: $f0 $41
	bit 1, a                                         ; $6467: $cb $4f
	jr nz, jr_008_6465                               ; $6469: $20 $fa

	ld a, [de]                                       ; $646b: $1a
	swap a                                           ; $646c: $cb $37
	and $0f                                          ; $646e: $e6 $0f
	ld [hl+], a                                      ; $6470: $22
	ei                                               ; $6471: $fb
	di                                               ; $6472: $f3

jr_008_6473:
	ldh a, [rSTAT]                                   ; $6473: $f0 $41
	bit 1, a                                         ; $6475: $cb $4f
	jr nz, jr_008_6473                               ; $6477: $20 $fa

	ld a, [de]                                       ; $6479: $1a
	and $0f                                          ; $647a: $e6 $0f
	ld [hl+], a                                      ; $647c: $22
	ei                                               ; $647d: $fb
	inc de                                           ; $647e: $13
	dec c                                            ; $647f: $0d
	jr nz, jr_008_6464                               ; $6480: $20 $e2

	push bc                                          ; $6482: $c5
	ld bc, $000c                                     ; $6483: $01 $0c $00
	add hl, bc                                       ; $6486: $09
	pop bc                                           ; $6487: $c1
	ld c, $0a                                        ; $6488: $0e $0a
	dec b                                            ; $648a: $05
	jr nz, jr_008_6464                               ; $648b: $20 $d7

	xor a                                            ; $648d: $af
	ldh [rVBK], a                                    ; $648e: $e0 $4f
	ret                                              ; $6490: $c9


	ld a, [wInitialA]                                    ; $6491: $fa $00 $c1
	cp $11                                           ; $6494: $fe $11
	ret nz                                           ; $6496: $c0

	ld a, $01                                        ; $6497: $3e $01
	ldh [rVBK], a                                    ; $6499: $e0 $4f
	ld c, $14                                        ; $649b: $0e $14
	ld b, $0b                                        ; $649d: $06 $0b
	ld de, $9800                                     ; $649f: $11 $00 $98
	ld hl, $9c00                                     ; $64a2: $21 $00 $9c

jr_008_64a5:
	ld a, [$c14a]                                    ; $64a5: $fa $4a $c1
	and $01                                          ; $64a8: $e6 $01
	jr z, jr_008_64bb                                ; $64aa: $28 $0f

	di                                               ; $64ac: $f3

jr_008_64ad:
	ldh a, [rSTAT]                                   ; $64ad: $f0 $41
	bit 1, a                                         ; $64af: $cb $4f
	jr nz, jr_008_64ad                               ; $64b1: $20 $fa

	ld a, [hl]                                       ; $64b3: $7e
	ei                                               ; $64b4: $fb
	and $07                                          ; $64b5: $e6 $07
	cp $02                                           ; $64b7: $fe $02
	jr z, jr_008_64c5                                ; $64b9: $28 $0a

jr_008_64bb:
	di                                               ; $64bb: $f3

jr_008_64bc:
	ldh a, [rSTAT]                                   ; $64bc: $f0 $41
	bit 1, a                                         ; $64be: $cb $4f
	jr nz, jr_008_64bc                               ; $64c0: $20 $fa

	ld a, [de]                                       ; $64c2: $1a
	ld [hl], a                                       ; $64c3: $77
	ei                                               ; $64c4: $fb

jr_008_64c5:
	inc de                                           ; $64c5: $13
	inc hl                                           ; $64c6: $23
	dec c                                            ; $64c7: $0d
	jr nz, jr_008_64a5                               ; $64c8: $20 $db

	ld a, $0c                                        ; $64ca: $3e $0c
	rst AddAOntoHL                                          ; $64cc: $ef
	ld e, l                                          ; $64cd: $5d
	ld a, h                                          ; $64ce: $7c
	sub $04                                          ; $64cf: $d6 $04
	ld d, a                                          ; $64d1: $57
	ld c, $14                                        ; $64d2: $0e $14
	dec b                                            ; $64d4: $05
	jr nz, jr_008_64a5                               ; $64d5: $20 $ce

	xor a                                            ; $64d7: $af
	ldh [rVBK], a                                    ; $64d8: $e0 $4f
	ret                                              ; $64da: $c9


	ld b, $04                                        ; $64db: $06 $04
	ld c, $08                                        ; $64dd: $0e $08
	ld hl, $8a00                                     ; $64df: $21 $00 $8a
	ld d, $00                                        ; $64e2: $16 $00

jr_008_64e4:
	ld a, d                                          ; $64e4: $7a
	and $01                                          ; $64e5: $e6 $01
	jr z, jr_008_64f3                                ; $64e7: $28 $0a

	di                                               ; $64e9: $f3

jr_008_64ea:
	ldh a, [rSTAT]                                   ; $64ea: $f0 $41
	bit 1, a                                         ; $64ec: $cb $4f
	jr nz, jr_008_64ea                               ; $64ee: $20 $fa

	ld [hl], $ff                                     ; $64f0: $36 $ff
	ei                                               ; $64f2: $fb

jr_008_64f3:
	inc hl                                           ; $64f3: $23
	ld a, d                                          ; $64f4: $7a
	and $02                                          ; $64f5: $e6 $02
	jr z, jr_008_6503                                ; $64f7: $28 $0a

	di                                               ; $64f9: $f3

jr_008_64fa:
	ldh a, [rSTAT]                                   ; $64fa: $f0 $41
	bit 1, a                                         ; $64fc: $cb $4f
	jr nz, jr_008_64fa                               ; $64fe: $20 $fa

	ld [hl], $ff                                     ; $6500: $36 $ff
	ei                                               ; $6502: $fb

jr_008_6503:
	inc hl                                           ; $6503: $23
	dec c                                            ; $6504: $0d
	jr nz, jr_008_64e4                               ; $6505: $20 $dd

	ld c, $08                                        ; $6507: $0e $08
	inc d                                            ; $6509: $14
	dec b                                            ; $650a: $05
	jr nz, jr_008_64e4                               ; $650b: $20 $d7

	xor a                                            ; $650d: $af
	ld [$c14d], a                                    ; $650e: $ea $4d $c1
	ld [$c14e], a                                    ; $6511: $ea $4e $c1
	ret                                              ; $6514: $c9


; B - num rows
; C - starting tile
; HL - starting address
_SetIncrementalTileMap::
	ld a, c                                                         ; $6515
	ld d, HIGH(SCRN_VX_B-SCRN_X_B)                                  ; $6516
	ld e, LOW(SCRN_VX_B-SCRN_X_B)                                   ; $6518
	ld c, SCRN_X_B                                                  ; $651a

.nextByte:
	push af                                                         ; $651c
	di                                                              ; $651d

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $651e
	bit 1, a                                                        ; $6520
	jr nz, :-                                                       ; $6522

; Set next tilemap byte
	pop af                                                          ; $6524
	ld [hl+], a                                                     ; $6525
	ei                                                              ; $6526
	inc a                                                           ; $6527

; To next byte in row
	dec c                                                           ; $6528
	jr nz, .nextByte                                                ; $6529

; For next row, reload 20 row bytes, and point dest HL to start of next row 
	ld c, SCRN_X_B                                                  ; $652b
	add hl, de                                                      ; $652d

	dec b                                                           ; $652e
	jr nz, .nextByte                                                ; $652f

	ret                                                             ; $6531


;
	ld hl, $dbc0                                     ; $6532: $21 $c0 $db

jr_008_6535:
	push bc                                          ; $6535: $c5
	push de                                          ; $6536: $d5

jr_008_6537:
	call Call_008_6549                               ; $6537: $cd $49 $65
	dec b                                            ; $653a: $05
	jr nz, jr_008_6537                               ; $653b: $20 $fa

	pop de                                           ; $653d: $d1
	pop bc                                           ; $653e: $c1
	inc d                                            ; $653f: $14
	ld a, $40                                        ; $6540: $3e $40
	call $1327                                       ; $6542: $cd $27 $13
	dec c                                            ; $6545: $0d
	jr nz, jr_008_6535                               ; $6546: $20 $ed

	ret                                              ; $6548: $c9


Call_008_6549:
	push bc                                          ; $6549: $c5
	ld b, $10                                        ; $654a: $06 $10

jr_008_654c:
	di                                               ; $654c: $f3

jr_008_654d:
	ldh a, [rSTAT]                                   ; $654d: $f0 $41
	bit 1, a                                         ; $654f: $cb $4f
	jr nz, jr_008_654d                               ; $6551: $20 $fa

	ld a, [hl]                                       ; $6553: $7e
	ld [de], a                                       ; $6554: $12
	ei                                               ; $6555: $fb
	inc hl                                           ; $6556: $23
	inc de                                           ; $6557: $13
	dec b                                            ; $6558: $05
	jr nz, jr_008_654c                               ; $6559: $20 $f1

	pop bc                                           ; $655b: $c1
	ret                                              ; $655c: $c9


	ld a, [$0d17]                                    ; $655d: $fa $17 $0d
	ld l, c                                          ; $6560: $69
	nop                                              ; $6561: $00
	jr @+$19                                         ; $6562: $18 $17

	ccf                                              ; $6564: $3f
	ld l, b                                          ; $6565: $68
	nop                                              ; $6566: $00
	sbc b                                            ; $6567: $98
	ld d, $00                                        ; $6568: $16 $00
	ld b, b                                          ; $656a: $40
	nop                                              ; $656b: $00
	sub b                                            ; $656c: $90
	rst $38                                          ; $656d: $ff
	ld sp, hl                                        ; $656e: $f9
	dec e                                            ; $656f: $1d
	ld [hl], $4b                                     ; $6570: $36 $4b
	nop                                              ; $6572: $00
	add b                                            ; $6573: $80
	db $fc                                           ; $6574: $fc
	rrca                                             ; $6575: $0f
	db $e4                                           ; $6576: $e4
	ld a, e                                          ; $6577: $7b
	db $d3                                           ; $6578: $d3
	call nc, $f9ff                                   ; $6579: $d4 $ff $f9
	dec e                                            ; $657c: $1d
	dec b                                            ; $657d: $05
	ld c, h                                          ; $657e: $4c
	nop                                              ; $657f: $00
	add b                                            ; $6580: $80
	db $fc                                           ; $6581: $fc
	rrca                                             ; $6582: $0f
	jr jr_008_6601                                   ; $6583: $18 $7c

	db $d3                                           ; $6585: $d3
	call nc, $f9ff                                   ; $6586: $d4 $ff $f9
	dec e                                            ; $6589: $1d
	rst SubAFromBC                                          ; $658a: $e7
	ld c, h                                          ; $658b: $4c
	nop                                              ; $658c: $00
	add b                                            ; $658d: $80
	db $fc                                           ; $658e: $fc
	rrca                                             ; $658f: $0f
	ld c, e                                          ; $6590: $4b
	ld a, h                                          ; $6591: $7c
	db $d3                                           ; $6592: $d3
	call nc, $f9ff                                   ; $6593: $d4 $ff $f9
	dec e                                            ; $6596: $1d
	cp l                                             ; $6597: $bd
	ld c, l                                          ; $6598: $4d
	nop                                              ; $6599: $00
	add b                                            ; $659a: $80
	db $fc                                           ; $659b: $fc
	rrca                                             ; $659c: $0f
	ld a, a                                          ; $659d: $7f
	ld a, h                                          ; $659e: $7c
	db $d3                                           ; $659f: $d3
	call nc, $f9ff                                   ; $65a0: $d4 $ff $f9
	dec e                                            ; $65a3: $1d
	adc d                                            ; $65a4: $8a
	ld c, [hl]                                       ; $65a5: $4e
	nop                                              ; $65a6: $00
	add b                                            ; $65a7: $80
	db $fc                                           ; $65a8: $fc
	rrca                                             ; $65a9: $0f
	or e                                             ; $65aa: $b3
	ld a, h                                          ; $65ab: $7c
	db $d3                                           ; $65ac: $d3
	call nc, $f9ff                                   ; $65ad: $d4 $ff $f9
	dec e                                            ; $65b0: $1d
	ld [hl], a                                       ; $65b1: $77
	ld c, a                                          ; $65b2: $4f
	nop                                              ; $65b3: $00
	add b                                            ; $65b4: $80
	db $fc                                           ; $65b5: $fc
	rrca                                             ; $65b6: $0f
	rst SubAFromBC                                          ; $65b7: $e7
	ld a, h                                          ; $65b8: $7c
	db $d3                                           ; $65b9: $d3
	call nc, $f9ff                                   ; $65ba: $d4 $ff $f9
	dec e                                            ; $65bd: $1d
	inc a                                            ; $65be: $3c
	ld d, b                                          ; $65bf: $50
	nop                                              ; $65c0: $00
	add b                                            ; $65c1: $80
	db $fc                                           ; $65c2: $fc
	rrca                                             ; $65c3: $0f
	ld a, [de]                                       ; $65c4: $1a
	ld a, l                                          ; $65c5: $7d
	db $d3                                           ; $65c6: $d3
	call nc, $f9ff                                   ; $65c7: $d4 $ff $f9
	dec e                                            ; $65ca: $1d
	rra                                              ; $65cb: $1f
	ld d, c                                          ; $65cc: $51
	nop                                              ; $65cd: $00
	add b                                            ; $65ce: $80
	db $fc                                           ; $65cf: $fc
	rrca                                             ; $65d0: $0f
	ld c, [hl]                                       ; $65d1: $4e
	ld a, l                                          ; $65d2: $7d
	db $d3                                           ; $65d3: $d3
	call nc, $f9ff                                   ; $65d4: $d4 $ff $f9
	dec e                                            ; $65d7: $1d
	add sp, $51                                      ; $65d8: $e8 $51
	nop                                              ; $65da: $00
	add b                                            ; $65db: $80
	db $fc                                           ; $65dc: $fc
	rrca                                             ; $65dd: $0f
	add c                                            ; $65de: $81
	ld a, l                                          ; $65df: $7d
	db $d3                                           ; $65e0: $d3
	call nc, $f9ff                                   ; $65e1: $d4 $ff $f9
	dec e                                            ; $65e4: $1d
	cp d                                             ; $65e5: $ba
	ld d, d                                          ; $65e6: $52
	nop                                              ; $65e7: $00
	add b                                            ; $65e8: $80
	db $fc                                           ; $65e9: $fc
	rrca                                             ; $65ea: $0f
	or h                                             ; $65eb: $b4
	ld a, l                                          ; $65ec: $7d
	db $d3                                           ; $65ed: $d3
	call nc, $f9ff                                   ; $65ee: $d4 $ff $f9
	dec e                                            ; $65f1: $1d
	ld a, [hl]                                       ; $65f2: $7e
	ld d, e                                          ; $65f3: $53
	nop                                              ; $65f4: $00
	add b                                            ; $65f5: $80
	db $fc                                           ; $65f6: $fc
	rrca                                             ; $65f7: $0f
	rst SubAFromBC                                          ; $65f8: $e7
	ld a, l                                          ; $65f9: $7d
	db $d3                                           ; $65fa: $d3
	call nc, $f9ff                                   ; $65fb: $d4 $ff $f9
	dec e                                            ; $65fe: $1d
	ld c, d                                          ; $65ff: $4a
	ld d, h                                          ; $6600: $54

jr_008_6601:
	nop                                              ; $6601: $00
	add b                                            ; $6602: $80
	db $fc                                           ; $6603: $fc
	rrca                                             ; $6604: $0f
	ld a, [de]                                       ; $6605: $1a
	ld a, [hl]                                       ; $6606: $7e
	db $d3                                           ; $6607: $d3
	call nc, $f9ff                                   ; $6608: $d4 $ff $f9
	dec e                                            ; $660b: $1d
	ld hl, $0055                                     ; $660c: $21 $55 $00
	add b                                            ; $660f: $80
	db $fc                                           ; $6610: $fc
	rrca                                             ; $6611: $0f
	ld c, l                                          ; $6612: $4d
	ld a, [hl]                                       ; $6613: $7e
	db $d3                                           ; $6614: $d3
	call nc, $f9ff                                   ; $6615: $d4 $ff $f9
	dec e                                            ; $6618: $1d
	db $f4                                           ; $6619: $f4
	ld d, l                                          ; $661a: $55
	nop                                              ; $661b: $00
	add b                                            ; $661c: $80
	db $fc                                           ; $661d: $fc
	rrca                                             ; $661e: $0f
	add c                                            ; $661f: $81
	ld a, [hl]                                       ; $6620: $7e
	db $d3                                           ; $6621: $d3
	call nc, $f9ff                                   ; $6622: $d4 $ff $f9
	dec e                                            ; $6625: $1d
	jp c, $0056                                      ; $6626: $da $56 $00

	add b                                            ; $6629: $80
	db $fc                                           ; $662a: $fc
	rrca                                             ; $662b: $0f
	or h                                             ; $662c: $b4
	ld a, [hl]                                       ; $662d: $7e
	db $d3                                           ; $662e: $d3
	call nc, $f9ff                                   ; $662f: $d4 $ff $f9
	dec e                                            ; $6632: $1d
	xor h                                            ; $6633: $ac
	ld d, a                                          ; $6634: $57
	nop                                              ; $6635: $00
	add b                                            ; $6636: $80
	db $fc                                           ; $6637: $fc
	rrca                                             ; $6638: $0f
	add sp, $7e                                      ; $6639: $e8 $7e
	db $d3                                           ; $663b: $d3
	call nc, $88ff                                   ; $663c: $d4 $ff $88
	ld h, l                                          ; $663f: $65
	sub $65                                          ; $6640: $d6 $65
	sub l                                            ; $6642: $95
	ld h, l                                          ; $6643: $65
	ret                                              ; $6644: $c9


	ld h, l                                          ; $6645: $65
	ld a, [bc]                                       ; $6646: $0a
	ld h, [hl]                                       ; $6647: $66
	ld a, e                                          ; $6648: $7b
	ld h, l                                          ; $6649: $65
	db $e3                                           ; $664a: $e3
	ld h, l                                          ; $664b: $65
	cp h                                             ; $664c: $bc
	ld h, l                                          ; $664d: $65
	ld l, [hl]                                       ; $664e: $6e
	ld h, l                                          ; $664f: $65
	ldh a, [$65]                                     ; $6650: $f0 $65
	ld sp, $fd66                                     ; $6652: $31 $66 $fd
	ld h, l                                          ; $6655: $65
	rla                                              ; $6656: $17
	ld h, [hl]                                       ; $6657: $66
	xor a                                            ; $6658: $af
	ld h, l                                          ; $6659: $65
	inc h                                            ; $665a: $24
	ld h, [hl]                                       ; $665b: $66
	and d                                            ; $665c: $a2
	ld h, l                                          ; $665d: $65
	ld c, $65                                        ; $665e: $0e $65
	ld h, $65                                        ; $6660: $26 $65
	ld [de], a                                       ; $6662: $12
	ld h, l                                          ; $6663: $65
	ld [hl+], a                                      ; $6664: $22
	ld h, l                                          ; $6665: $65
	ld [hl], $65                                     ; $6666: $36 $65
	ld a, [bc]                                       ; $6668: $0a
	ld h, l                                          ; $6669: $65
	ld a, [hl+]                                      ; $666a: $2a
	ld h, l                                          ; $666b: $65
	ld e, $65                                        ; $666c: $1e $65
	ld b, $65                                        ; $666e: $06 $65
	ld l, $65                                        ; $6670: $2e $65
	ld b, d                                          ; $6672: $42
	ld h, l                                          ; $6673: $65
	ld [hl-], a                                      ; $6674: $32
	ld h, l                                          ; $6675: $65
	ld a, [hl-]                                      ; $6676: $3a
	ld h, l                                          ; $6677: $65
	ld a, [de]                                       ; $6678: $1a
	ld h, l                                          ; $6679: $65
	ld a, $65                                        ; $667a: $3e $65
	ld d, $65                                        ; $667c: $16 $65
	ld e, $21                                        ; $667e: $1e $21
	inc h                                            ; $6680: $24
	ld hl, $211f                                     ; $6681: $21 $1f $21
	inc hl                                           ; $6684: $23
	ld hl, $2128                                     ; $6685: $21 $28 $21
	dec e                                            ; $6688: $1d
	ld hl, $2125                                     ; $6689: $21 $25 $21
	ld [hl+], a                                      ; $668c: $22
	ld hl, $211c                                     ; $668d: $21 $1c $21
	ld h, $21                                        ; $6690: $26 $21
	dec hl                                           ; $6692: $2b
	ld hl, $2127                                     ; $6693: $21 $27 $21
	add hl, hl                                       ; $6696: $29
	ld hl, $2121                                     ; $6697: $21 $21 $21
	ld a, [hl+]                                      ; $669a: $2a
	ld hl, $2120                                     ; $669b: $21 $20 $21
	ld a, [$c146]                                    ; $669e: $fa $46 $c1
	call wJumpTable                                       ; $66a1: $cd $80 $cf
	or h                                             ; $66a4: $b4
	ld h, [hl]                                       ; $66a5: $66
	db $fd                                           ; $66a6: $fd
	ld h, [hl]                                       ; $66a7: $66
	ccf                                              ; $66a8: $3f
	ld h, a                                          ; $66a9: $67
	ld h, l                                          ; $66aa: $65
	ld h, a                                          ; $66ab: $67
	sbc c                                            ; $66ac: $99
	ld h, a                                          ; $66ad: $67
	sbc h                                            ; $66ae: $9c
	ld h, a                                          ; $66af: $67
	or c                                             ; $66b0: $b1
	ld h, a                                          ; $66b1: $67
	add sp, $67                                      ; $66b2: $e8 $67
	xor a                                            ; $66b4: $af
	call $068e                                       ; $66b5: $cd $8e $06
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $66b8: $cd $ef $2d
	call $0986                                       ; $66bb: $cd $86 $09
	call $0963                                       ; $66be: $cd $63 $09
	call $09c3                                       ; $66c1: $cd $c3 $09
	xor a                                            ; $66c4: $af
	call $1e2e                                       ; $66c5: $cd $2e $1e
	ld hl, $655d                                     ; $66c8: $21 $5d $65
	call $0ab5                                       ; $66cb: $cd $b5 $0a
	ld bc, $6546                                     ; $66ce: $01 $46 $65
	call $18c4                                       ; $66d1: $cd $c4 $18
	rst FarCall                                          ; $66d4: $f7
	adc a                                            ; $66d5: $8f
	ld c, a                                          ; $66d6: $4f
	ld [bc], a                                       ; $66d7: $02
	rst FarCall                                          ; $66d8: $f7
	or c                                             ; $66d9: $b1
	ld c, a                                          ; $66da: $4f
	ld [bc], a                                       ; $66db: $02
	call $096e                                       ; $66dc: $cd $6e $09
	ld a, $c7                                        ; $66df: $3e $c7
	ldh [hDisp0_LCDC], a                                     ; $66e1: $e0 $82
	ld a, $3c                                        ; $66e3: $3e $3c
	ld [$d33e], a                                    ; $66e5: $ea $3e $d3
	ld a, $01                                        ; $66e8: $3e $01
	ld [$c13b], a                                    ; $66ea: $ea $3b $c1
	xor a                                            ; $66ed: $af
	ld [$c13c], a                                    ; $66ee: $ea $3c $c1
	ld [$c13d], a                                    ; $66f1: $ea $3d $c1
	ld a, $04                                        ; $66f4: $3e $04
	rst FarCall                                          ; $66f6: $f7
	push bc                                          ; $66f7: $c5
	ld c, a                                          ; $66f8: $4f
	ld [bc], a                                       ; $66f9: $02
	jp Jump_008_6812                                 ; $66fa: $c3 $12 $68


	ld a, [wButtonsPressed]                                    ; $66fd: $fa $25 $c1
	bit 5, a                                         ; $6700: $cb $6f
	jr nz, jr_008_6727                               ; $6702: $20 $23

	ld a, [$d34e]                                    ; $6704: $fa $4e $d3
	or a                                             ; $6707: $b7
	jr z, jr_008_6710                                ; $6708: $28 $06

	ld hl, $d33e                                     ; $670a: $21 $3e $d3
	dec [hl]                                         ; $670d: $35
	jr z, jr_008_672d                                ; $670e: $28 $1d

jr_008_6710:
	call $2dd4                                       ; $6710: $cd $d4 $2d
	ld a, [$c13c]                                    ; $6713: $fa $3c $c1
	cp $01                                           ; $6716: $fe $01
	ret c                                            ; $6718: $d8

	jp nz, Jump_008_672d                             ; $6719: $c2 $2d $67

	xor a                                            ; $671c: $af
	ldh [$9d], a                                     ; $671d: $e0 $9d
	ld a, $08                                        ; $671f: $3e $08
	ld [$d33e], a                                    ; $6721: $ea $3e $d3
	jp Jump_008_6812                                 ; $6724: $c3 $12 $68


jr_008_6727:
	ld a, $01                                        ; $6727: $3e $01
	ld [$c151], a                                    ; $6729: $ea $51 $c1
	ret                                              ; $672c: $c9


Jump_008_672d:
jr_008_672d:
	ld a, $05                                        ; $672d: $3e $05
	jr jr_008_6731                                   ; $672f: $18 $00

jr_008_6731:
	rst FarCall                                          ; $6731: $f7
	push bc                                          ; $6732: $c5
	ld c, a                                          ; $6733: $4f
	ld [bc], a                                       ; $6734: $02
	xor a                                            ; $6735: $af
	ld [$d33e], a                                    ; $6736: $ea $3e $d3
	ld hl, $c146                                     ; $6739: $21 $46 $c1
	ld [hl], $07                                     ; $673c: $36 $07
	ret                                              ; $673e: $c9


	ld hl, $d33e                                     ; $673f: $21 $3e $d3
	ld a, [hl]                                       ; $6742: $7e
	or a                                             ; $6743: $b7
	jr z, jr_008_6748                                ; $6744: $28 $02

	dec [hl]                                         ; $6746: $35
	ret                                              ; $6747: $c9


jr_008_6748:
	ld a, [$d34e]                                    ; $6748: $fa $4e $d3
	or a                                             ; $674b: $b7
	jr nz, jr_008_675a                               ; $674c: $20 $0c

	ldh a, [$9d]                                     ; $674e: $f0 $9d
	or a                                             ; $6750: $b7
	ret z                                            ; $6751: $c8

	and $7f                                          ; $6752: $e6 $7f
	ld [$d34f], a                                    ; $6754: $ea $4f $d3
	jp Jump_008_6812                                 ; $6757: $c3 $12 $68


jr_008_675a:
	ld a, [$d34f]                                    ; $675a: $fa $4f $d3
	or $80                                           ; $675d: $f6 $80
	call $2d9f                                       ; $675f: $cd $9f $2d
	jp Jump_008_6812                                 ; $6762: $c3 $12 $68


	ld a, [$d34f]                                    ; $6765: $fa $4f $d3
	cp $10                                           ; $6768: $fe $10
	jr c, jr_008_6771                                ; $676a: $38 $05

	cp $5a                                           ; $676c: $fe $5a
	jp z, Jump_008_67f6                              ; $676e: $ca $f6 $67

jr_008_6771:
	ld a, $03                                        ; $6771: $3e $03
	rst FarCall                                          ; $6773: $f7
	push bc                                          ; $6774: $c5
	ld c, a                                          ; $6775: $4f
	ld [bc], a                                       ; $6776: $02
	ld a, $70                                        ; $6777: $3e $70
	ld [$c200], a                                    ; $6779: $ea $00 $c2
	ld a, [$d34f]                                    ; $677c: $fa $4f $d3
	ld hl, $663e                                     ; $677f: $21 $3e $66
	call $cf8a                                       ; $6782: $cd $8a $cf
	ld a, $02                                        ; $6785: $3e $02
	call $0ab6                                       ; $6787: $cd $b6 $0a
	ld a, [$d34f]                                    ; $678a: $fa $4f $d3
	ld hl, $665e                                     ; $678d: $21 $5e $66
	call $cfa0                                       ; $6790: $cd $a0 $cf
	call $18c4                                       ; $6793: $cd $c4 $18
	jp Jump_008_6812                                 ; $6796: $c3 $12 $68


	jp $2e21                                         ; $6799: $c3 $21 $2e


	ld a, $3c                                        ; $679c: $3e $3c
	ld [$d33e], a                                    ; $679e: $ea $3e $d3
	ld a, [$d34f]                                    ; $67a1: $fa $4f $d3
	ld [$c13b], a                                    ; $67a4: $ea $3b $c1
	xor a                                            ; $67a7: $af
	ld [$c13c], a                                    ; $67a8: $ea $3c $c1
	ld [$c13d], a                                    ; $67ab: $ea $3d $c1
	jp Jump_008_6812                                 ; $67ae: $c3 $12 $68


	ld hl, $d33e                                     ; $67b1: $21 $3e $d3
	dec [hl]                                         ; $67b4: $35
	jr z, jr_008_67d5                                ; $67b5: $28 $1e

	call $2dd4                                       ; $67b7: $cd $d4 $2d
	ld a, [$c13c]                                    ; $67ba: $fa $3c $c1
	cp $01                                           ; $67bd: $fe $01
	ret c                                            ; $67bf: $d8

	jp nz, Jump_008_67d5                             ; $67c0: $c2 $d5 $67

	ld a, [$d34e]                                    ; $67c3: $fa $4e $d3
	or a                                             ; $67c6: $b7
	jr nz, jr_008_67cc                               ; $67c7: $20 $03

	call Call_008_6817                               ; $67c9: $cd $17 $68

jr_008_67cc:
	ld a, $01                                        ; $67cc: $3e $01
	ld [$c150], a                                    ; $67ce: $ea $50 $c1
	ld a, $02                                        ; $67d1: $3e $02
	jr jr_008_67d7                                   ; $67d3: $18 $02

Jump_008_67d5:
jr_008_67d5:
	ld a, $01                                        ; $67d5: $3e $01

jr_008_67d7:
	rst FarCall                                          ; $67d7: $f7
	push bc                                          ; $67d8: $c5
	ld c, a                                          ; $67d9: $4f
	ld [bc], a                                       ; $67da: $02
	ld hl, $c200                                     ; $67db: $21 $00 $c2
	call $2dfc                                       ; $67de: $cd $fc $2d
	xor a                                            ; $67e1: $af
	ld [$d33e], a                                    ; $67e2: $ea $3e $d3
	jp Jump_008_6812                                 ; $67e5: $c3 $12 $68


	ld hl, $d33e                                     ; $67e8: $21 $3e $d3
	inc [hl]                                         ; $67eb: $34
	ld a, [hl]                                       ; $67ec: $7e
	cp $5a                                           ; $67ed: $fe $5a
	ret c                                            ; $67ef: $d8

	ld a, $01                                        ; $67f0: $3e $01
	ld [$c151], a                                    ; $67f2: $ea $51 $c1
	ret                                              ; $67f5: $c9


Jump_008_67f6:
	ld a, $01                                        ; $67f6: $3e $01
	ld [$a1ff], a                                    ; $67f8: $ea $ff $a1
	call Func_1b14                                       ; $67fb: $cd $14 $1b
	xor a                                            ; $67fe: $af
	ld [$c150], a                                    ; $67ff: $ea $50 $c1
	ld a, $02                                        ; $6802: $3e $02
	rst FarCall                                          ; $6804: $f7
	push bc                                          ; $6805: $c5
	ld c, a                                          ; $6806: $4f
	ld [bc], a                                       ; $6807: $02
	xor a                                            ; $6808: $af
	ld [$d33e], a                                    ; $6809: $ea $3e $d3
	ld a, $07                                        ; $680c: $3e $07
	ld [$c146], a                                    ; $680e: $ea $46 $c1
	ret                                              ; $6811: $c9


Jump_008_6812:
	ld hl, $c146                                     ; $6812: $21 $46 $c1
	inc [hl]                                         ; $6815: $34
	ret                                              ; $6816: $c9


Call_008_6817:
	ld a, [$d34f]                                    ; $6817: $fa $4f $d3
	cp $10                                           ; $681a: $fe $10
	ret nc                                           ; $681c: $d0

	ld de, $0001                                     ; $681d: $11 $01 $00
	inc a                                            ; $6820: $3c

jr_008_6821:
	dec a                                            ; $6821: $3d
	jr z, jr_008_682a                                ; $6822: $28 $06

	sla e                                            ; $6824: $cb $23
	rl d                                             ; $6826: $cb $12
	jr jr_008_6821                                   ; $6828: $18 $f7

jr_008_682a:
	ld hl, $a146                                     ; $682a: $21 $46 $a1
	ld a, e                                          ; $682d: $7b
	or [hl]                                          ; $682e: $b6
	ld [hl+], a                                      ; $682f: $22
	ld a, d                                          ; $6830: $7a
	or [hl]                                          ; $6831: $b6
	ld [hl], a                                       ; $6832: $77
	ret                                              ; $6833: $c9


	rst JumpTable                                          ; $6834: $c7
	dec a                                            ; $6835: $3d
	ld l, b                                          ; $6836: $68
	ld e, a                                          ; $6837: $5f
	ld l, b                                          ; $6838: $68
	ld l, h                                          ; $6839: $6c
	ld l, b                                          ; $683a: $68
	add h                                            ; $683b: $84
	ld l, b                                          ; $683c: $68
	inc [hl]                                         ; $683d: $34
	ld a, [$d34f]                                    ; $683e: $fa $4f $d3
	push hl                                          ; $6841: $e5
	ld hl, $667e                                     ; $6842: $21 $7e $66
	call $cfa0                                       ; $6845: $cd $a0 $cf
	pop hl                                           ; $6848: $e1
	call $3bfb                                       ; $6849: $cd $fb $3b
	ld l, $10                                        ; $684c: $2e $10
	set 5, [hl]                                      ; $684e: $cb $ee
	call Call_008_688a                               ; $6850: $cd $8a $68
	ld de, $0080                                     ; $6853: $11 $80 $00
	call $3d32                                       ; $6856: $cd $32 $3d
	ld de, $2038                                     ; $6859: $11 $38 $20
	jp $3bf4                                         ; $685c: $c3 $f4 $3b


	call Call_008_6885                               ; $685f: $cd $85 $68
	ret nz                                           ; $6862: $c0

	call Call_008_688a                               ; $6863: $cd $8a $68
	ld l, $0a                                        ; $6866: $2e $0a
	inc [hl]                                         ; $6868: $34
	jp $16d0                                         ; $6869: $c3 $d0 $16


	call Call_008_6885                               ; $686c: $cd $85 $68
	ret nz                                           ; $686f: $c0

	call $3d25                                       ; $6870: $cd $25 $3d
	call $16d0                                       ; $6873: $cd $d0 $16
	ld l, $07                                        ; $6876: $2e $07
	ld a, [hl]                                       ; $6878: $7e
	cp $80                                           ; $6879: $fe $80
	ret nz                                           ; $687b: $c0

	ld a, $05                                        ; $687c: $3e $05
	ld [$c146], a                                    ; $687e: $ea $46 $c1
	ld l, $0a                                        ; $6881: $2e $0a
	inc [hl]                                         ; $6883: $34
	ret                                              ; $6884: $c9


Call_008_6885:
	ld l, $0b                                        ; $6885: $2e $0b
	ld a, [hl]                                       ; $6887: $7e
	or a                                             ; $6888: $b7
	ret                                              ; $6889: $c9


Call_008_688a:
	ld l, $0b                                        ; $688a: $2e $0b
	ld [hl], $20                                     ; $688c: $36 $20
	ret                                              ; $688e: $c9


	ld a, [$c01c]                                    ; $688f: $fa $1c $c0
	ld b, [hl]                                       ; $6892: $46
	nop                                              ; $6893: $00
	jr jr_008_68b2                                   ; $6894: $18 $1c

	call $0045                                       ; $6896: $cd $45 $00
	sbc b                                            ; $6899: $98
	inc e                                            ; $689a: $1c
	nop                                              ; $689b: $00
	ld b, b                                          ; $689c: $40
	nop                                              ; $689d: $00
	sub b                                            ; $689e: $90
	inc e                                            ; $689f: $1c
	inc de                                           ; $68a0: $13
	ld b, h                                          ; $68a1: $44
	nop                                              ; $68a2: $00
	adc b                                            ; $68a3: $88
	rst $38                                          ; $68a4: $ff
	ld a, [$8f1c]                                    ; $68a5: $fa $1c $8f
	ld b, a                                          ; $68a8: $47
	nop                                              ; $68a9: $00
	jr @+$1e                                         ; $68aa: $18 $1c

	dec [hl]                                         ; $68ac: $35
	ld b, a                                          ; $68ad: $47
	nop                                              ; $68ae: $00
	sbc b                                            ; $68af: $98
	inc e                                            ; $68b0: $1c
	ld [bc], a                                       ; $68b1: $02

jr_008_68b2:
	ld b, l                                          ; $68b2: $45
	nop                                              ; $68b3: $00
	sub b                                            ; $68b4: $90
	rst $38                                          ; $68b5: $ff
	ld a, [$d81c]                                    ; $68b6: $fa $1c $d8
	ld b, a                                          ; $68b9: $47
	nop                                              ; $68ba: $00
	jr @+$1e                                         ; $68bb: $18 $1c

	and [hl]                                         ; $68bd: $a6
	ld b, a                                          ; $68be: $47
	nop                                              ; $68bf: $00
	sbc b                                            ; $68c0: $98
	inc e                                            ; $68c1: $1c
	ld l, l                                          ; $68c2: $6d
	ld b, l                                          ; $68c3: $45
	nop                                              ; $68c4: $00
	sub b                                            ; $68c5: $90
	rst $38                                          ; $68c6: $ff
	ld a, [$1e1c]                                    ; $68c7: $fa $1c $1e
	ld b, a                                          ; $68ca: $47
	nop                                              ; $68cb: $00
	jr jr_008_68ea                                   ; $68cc: $18 $1c

	rst FarCall                                          ; $68ce: $f7
	ld b, [hl]                                       ; $68cf: $46
	nop                                              ; $68d0: $00
	sbc b                                            ; $68d1: $98
	inc e                                            ; $68d2: $1c
	ld sp, hl                                        ; $68d3: $f9
	ld b, h                                          ; $68d4: $44
	nop                                              ; $68d5: $00
	sub b                                            ; $68d6: $90
	rst $38                                          ; $68d7: $ff
	ld a, [$1f1c]                                    ; $68d8: $fa $1c $1f
	ld c, b                                          ; $68db: $48
	nop                                              ; $68dc: $00
	jr jr_008_68fb                                   ; $68dd: $18 $1c

	rst AddAOntoHL                                          ; $68df: $ef
	ld b, a                                          ; $68e0: $47
	nop                                              ; $68e1: $00
	sbc b                                            ; $68e2: $98
	inc e                                            ; $68e3: $1c
	cp e                                             ; $68e4: $bb
	ld b, l                                          ; $68e5: $45
	nop                                              ; $68e6: $00
	sub b                                            ; $68e7: $90
	rst $38                                          ; $68e8: $ff
	ld sp, hl                                        ; $68e9: $f9

jr_008_68ea:
	inc e                                            ; $68ea: $1c
	ld [hl], $48                                     ; $68eb: $36 $48
	nop                                              ; $68ed: $00
	add b                                            ; $68ee: $80
	rst $38                                          ; $68ef: $ff
	ld sp, hl                                        ; $68f0: $f9
	inc e                                            ; $68f1: $1c
	cp h                                             ; $68f2: $bc
	ld c, h                                          ; $68f3: $4c
	nop                                              ; $68f4: $00
	add b                                            ; $68f5: $80
	rst $38                                          ; $68f6: $ff
	ld sp, hl                                        ; $68f7: $f9
	inc e                                            ; $68f8: $1c
	cp h                                             ; $68f9: $bc
	ld c, h                                          ; $68fa: $4c

jr_008_68fb:
	nop                                              ; $68fb: $00
	adc b                                            ; $68fc: $88
	rst $38                                          ; $68fd: $ff
	ld sp, hl                                        ; $68fe: $f9
	dec e                                            ; $68ff: $1d
	ret                                              ; $6900: $c9


	ld e, e                                          ; $6901: $5b
	nop                                              ; $6902: $00
	adc h                                            ; $6903: $8c
	db $fc                                           ; $6904: $fc
	dec e                                            ; $6905: $1d
	ld l, $6c                                        ; $6906: $2e $6c
	db $d3                                           ; $6908: $d3
	call nc, $f9ff                                   ; $6909: $d4 $ff $f9
	inc e                                            ; $690c: $1c
	ld d, $50                                        ; $690d: $16 $50
	nop                                              ; $690f: $00
	add b                                            ; $6910: $80
	rst $38                                          ; $6911: $ff
	ld sp, hl                                        ; $6912: $f9
	inc e                                            ; $6913: $1c
	ld d, $50                                        ; $6914: $16 $50
	nop                                              ; $6916: $00
	adc b                                            ; $6917: $88
	rst $38                                          ; $6918: $ff
	ld sp, hl                                        ; $6919: $f9
	dec e                                            ; $691a: $1d
	call $005c                                       ; $691b: $cd $5c $00
	adc h                                            ; $691e: $8c
	db $fc                                           ; $691f: $fc
	dec e                                            ; $6920: $1d
	ld h, a                                          ; $6921: $67
	ld l, h                                          ; $6922: $6c
	db $d3                                           ; $6923: $d3
	call nc, $f9ff                                   ; $6924: $d4 $ff $f9
	inc e                                            ; $6927: $1c
	ld [$0053], sp                                   ; $6928: $08 $53 $00
	add b                                            ; $692b: $80
	rst $38                                          ; $692c: $ff
	ld sp, hl                                        ; $692d: $f9
	inc e                                            ; $692e: $1c
	ld [$0053], sp                                   ; $692f: $08 $53 $00
	adc b                                            ; $6932: $88
	rst $38                                          ; $6933: $ff
	ld sp, hl                                        ; $6934: $f9
	dec e                                            ; $6935: $1d
	ld b, $5e                                        ; $6936: $06 $5e
	nop                                              ; $6938: $00
	adc h                                            ; $6939: $8c
	db $fc                                           ; $693a: $fc
	dec e                                            ; $693b: $1d
	or c                                             ; $693c: $b1
	ld l, h                                          ; $693d: $6c
	db $d3                                           ; $693e: $d3
	call nc, $f9ff                                   ; $693f: $d4 $ff $f9
	inc e                                            ; $6942: $1c
	dec [hl]                                         ; $6943: $35
	ld d, [hl]                                       ; $6944: $56
	nop                                              ; $6945: $00
	add b                                            ; $6946: $80
	rst $38                                          ; $6947: $ff
	ld sp, hl                                        ; $6948: $f9
	inc e                                            ; $6949: $1c
	dec [hl]                                         ; $694a: $35
	ld d, [hl]                                       ; $694b: $56
	nop                                              ; $694c: $00
	adc b                                            ; $694d: $88
	rst $38                                          ; $694e: $ff
	ld sp, hl                                        ; $694f: $f9
	dec e                                            ; $6950: $1d
	ld c, h                                          ; $6951: $4c
	ld e, a                                          ; $6952: $5f
	nop                                              ; $6953: $00
	adc h                                            ; $6954: $8c
	db $fc                                           ; $6955: $fc
	dec e                                            ; $6956: $1d
	rst FarCall                                          ; $6957: $f7
	ld l, h                                          ; $6958: $6c
	db $d3                                           ; $6959: $d3
	call nc, $f9ff                                   ; $695a: $d4 $ff $f9
	inc e                                            ; $695d: $1c
	ld l, c                                          ; $695e: $69
	ld e, c                                          ; $695f: $59
	nop                                              ; $6960: $00
	add b                                            ; $6961: $80
	rst $38                                          ; $6962: $ff
	ld sp, hl                                        ; $6963: $f9
	inc e                                            ; $6964: $1c
	ld l, c                                          ; $6965: $69
	ld e, c                                          ; $6966: $59
	nop                                              ; $6967: $00
	adc b                                            ; $6968: $88
	rst $38                                          ; $6969: $ff
	ld sp, hl                                        ; $696a: $f9
	dec e                                            ; $696b: $1d
	ld c, e                                          ; $696c: $4b
	ld h, b                                          ; $696d: $60
	nop                                              ; $696e: $00
	adc h                                            ; $696f: $8c
	db $fc                                           ; $6970: $fc
	dec e                                            ; $6971: $1d
	ld b, b                                          ; $6972: $40
	ld l, l                                          ; $6973: $6d
	db $d3                                           ; $6974: $d3
	call nc, $f9ff                                   ; $6975: $d4 $ff $f9
	inc e                                            ; $6978: $1c
	ld [hl], l                                       ; $6979: $75
	ld e, l                                          ; $697a: $5d
	nop                                              ; $697b: $00
	add b                                            ; $697c: $80
	rst $38                                          ; $697d: $ff
	ld sp, hl                                        ; $697e: $f9
	inc e                                            ; $697f: $1c
	ld [hl], l                                       ; $6980: $75
	ld e, l                                          ; $6981: $5d
	nop                                              ; $6982: $00
	adc b                                            ; $6983: $88
	rst $38                                          ; $6984: $ff
	ld sp, hl                                        ; $6985: $f9
	dec e                                            ; $6986: $1d
	ld l, c                                          ; $6987: $69
	ld h, c                                          ; $6988: $61
	nop                                              ; $6989: $00
	adc h                                            ; $698a: $8c
	db $fc                                           ; $698b: $fc
	dec e                                            ; $698c: $1d
	adc [hl]                                         ; $698d: $8e
	ld l, l                                          ; $698e: $6d
	db $d3                                           ; $698f: $d3
	call nc, $f9ff                                   ; $6990: $d4 $ff $f9
	inc e                                            ; $6993: $1c
	add sp, $60                                      ; $6994: $e8 $60
	nop                                              ; $6996: $00
	add b                                            ; $6997: $80
	rst $38                                          ; $6998: $ff
	ld sp, hl                                        ; $6999: $f9
	inc e                                            ; $699a: $1c
	add sp, $60                                      ; $699b: $e8 $60
	nop                                              ; $699d: $00
	adc b                                            ; $699e: $88
	rst $38                                          ; $699f: $ff
	ld sp, hl                                        ; $69a0: $f9
	dec e                                            ; $69a1: $1d
	ld c, e                                          ; $69a2: $4b
	ld h, d                                          ; $69a3: $62
	nop                                              ; $69a4: $00
	adc h                                            ; $69a5: $8c
	db $fc                                           ; $69a6: $fc
	dec e                                            ; $69a7: $1d
	rst GetHLinHL                                          ; $69a8: $cf
	ld l, l                                          ; $69a9: $6d
	db $d3                                           ; $69aa: $d3
	call nc, $f9ff                                   ; $69ab: $d4 $ff $f9
	inc e                                            ; $69ae: $1c
	and l                                            ; $69af: $a5
	ld h, l                                          ; $69b0: $65
	nop                                              ; $69b1: $00
	add b                                            ; $69b2: $80
	rst $38                                          ; $69b3: $ff
	ld sp, hl                                        ; $69b4: $f9
	inc e                                            ; $69b5: $1c
	and l                                            ; $69b6: $a5
	ld h, l                                          ; $69b7: $65
	nop                                              ; $69b8: $00
	adc b                                            ; $69b9: $88
	rst $38                                          ; $69ba: $ff
	ld sp, hl                                        ; $69bb: $f9
	dec e                                            ; $69bc: $1d
	ld d, h                                          ; $69bd: $54
	ld h, e                                          ; $69be: $63
	nop                                              ; $69bf: $00
	adc h                                            ; $69c0: $8c
	db $fc                                           ; $69c1: $fc
	dec e                                            ; $69c2: $1d
	jr @+$70                                         ; $69c3: $18 $6e

	db $d3                                           ; $69c5: $d3
	call nc, $f9ff                                   ; $69c6: $d4 $ff $f9
	inc e                                            ; $69c9: $1c
	adc b                                            ; $69ca: $88
	ld l, b                                          ; $69cb: $68
	nop                                              ; $69cc: $00
	add b                                            ; $69cd: $80
	rst $38                                          ; $69ce: $ff
	ld sp, hl                                        ; $69cf: $f9
	inc e                                            ; $69d0: $1c
	adc b                                            ; $69d1: $88
	ld l, b                                          ; $69d2: $68
	nop                                              ; $69d3: $00
	adc b                                            ; $69d4: $88
	rst $38                                          ; $69d5: $ff
	ld sp, hl                                        ; $69d6: $f9
	dec e                                            ; $69d7: $1d
	ld e, [hl]                                       ; $69d8: $5e
	ld h, h                                          ; $69d9: $64
	nop                                              ; $69da: $00
	adc h                                            ; $69db: $8c
	db $fc                                           ; $69dc: $fc
	dec e                                            ; $69dd: $1d
	ld d, e                                          ; $69de: $53
	ld l, [hl]                                       ; $69df: $6e
	db $d3                                           ; $69e0: $d3
	call nc, $f9ff                                   ; $69e1: $d4 $ff $f9
	inc e                                            ; $69e4: $1c
	ldh a, [c]                                       ; $69e5: $f2
	ld l, e                                          ; $69e6: $6b
	nop                                              ; $69e7: $00
	add b                                            ; $69e8: $80
	rst $38                                          ; $69e9: $ff
	ld sp, hl                                        ; $69ea: $f9
	inc e                                            ; $69eb: $1c
	ldh a, [c]                                       ; $69ec: $f2
	ld l, e                                          ; $69ed: $6b
	nop                                              ; $69ee: $00
	adc b                                            ; $69ef: $88
	rst $38                                          ; $69f0: $ff
	ld sp, hl                                        ; $69f1: $f9
	dec e                                            ; $69f2: $1d
	ld h, b                                          ; $69f3: $60
	ld h, l                                          ; $69f4: $65
	nop                                              ; $69f5: $00
	adc h                                            ; $69f6: $8c
	db $fc                                           ; $69f7: $fc
	dec e                                            ; $69f8: $1d
	sbc h                                            ; $69f9: $9c
	ld l, [hl]                                       ; $69fa: $6e
	db $d3                                           ; $69fb: $d3
	call nc, $f9ff                                   ; $69fc: $d4 $ff $f9
	inc e                                            ; $69ff: $1c
	xor b                                            ; $6a00: $a8
	ld l, [hl]                                       ; $6a01: $6e
	nop                                              ; $6a02: $00
	add b                                            ; $6a03: $80
	rst $38                                          ; $6a04: $ff
	ld sp, hl                                        ; $6a05: $f9
	inc e                                            ; $6a06: $1c
	xor b                                            ; $6a07: $a8
	ld l, [hl]                                       ; $6a08: $6e
	nop                                              ; $6a09: $00
	adc b                                            ; $6a0a: $88
	rst $38                                          ; $6a0b: $ff
	ld sp, hl                                        ; $6a0c: $f9
	dec e                                            ; $6a0d: $1d
	ld a, [hl-]                                      ; $6a0e: $3a
	ld h, [hl]                                       ; $6a0f: $66
	nop                                              ; $6a10: $00
	adc h                                            ; $6a11: $8c
	db $fc                                           ; $6a12: $fc
	dec e                                            ; $6a13: $1d
	call c, $d36e                                    ; $6a14: $dc $6e $d3
	call nc, $f9ff                                   ; $6a17: $d4 $ff $f9
	inc e                                            ; $6a1a: $1c
	ld l, e                                          ; $6a1b: $6b
	ld [hl], d                                       ; $6a1c: $72
	nop                                              ; $6a1d: $00
	add b                                            ; $6a1e: $80
	rst $38                                          ; $6a1f: $ff
	ld sp, hl                                        ; $6a20: $f9
	inc e                                            ; $6a21: $1c
	ld l, e                                          ; $6a22: $6b
	ld [hl], d                                       ; $6a23: $72
	nop                                              ; $6a24: $00
	adc b                                            ; $6a25: $88
	rst $38                                          ; $6a26: $ff
	ld sp, hl                                        ; $6a27: $f9
	dec e                                            ; $6a28: $1d
	inc sp                                           ; $6a29: $33
	ld h, a                                          ; $6a2a: $67
	nop                                              ; $6a2b: $00
	adc h                                            ; $6a2c: $8c
	db $fc                                           ; $6a2d: $fc
	dec e                                            ; $6a2e: $1d
	dec h                                            ; $6a2f: $25
	ld l, a                                          ; $6a30: $6f
	db $d3                                           ; $6a31: $d3
	call nc, $f9ff                                   ; $6a32: $d4 $ff $f9
	inc e                                            ; $6a35: $1c
	di                                               ; $6a36: $f3
	ld [hl], l                                       ; $6a37: $75
	nop                                              ; $6a38: $00
	add b                                            ; $6a39: $80
	rst $38                                          ; $6a3a: $ff
	ld sp, hl                                        ; $6a3b: $f9
	inc e                                            ; $6a3c: $1c
	di                                               ; $6a3d: $f3
	ld [hl], l                                       ; $6a3e: $75
	nop                                              ; $6a3f: $00
	adc b                                            ; $6a40: $88
	rst $38                                          ; $6a41: $ff
	ld sp, hl                                        ; $6a42: $f9
	dec e                                            ; $6a43: $1d
	dec l                                            ; $6a44: $2d
	ld l, b                                          ; $6a45: $68
	nop                                              ; $6a46: $00
	adc h                                            ; $6a47: $8c
	db $fc                                           ; $6a48: $fc
	dec e                                            ; $6a49: $1d
	ld [hl], d                                       ; $6a4a: $72
	ld l, a                                          ; $6a4b: $6f
	db $d3                                           ; $6a4c: $d3
	call nc, $f9ff                                   ; $6a4d: $d4 $ff $f9
	inc e                                            ; $6a50: $1c
	rst AddAOntoHL                                          ; $6a51: $ef
	ld a, b                                          ; $6a52: $78
	nop                                              ; $6a53: $00
	add b                                            ; $6a54: $80
	rst $38                                          ; $6a55: $ff
	ld sp, hl                                        ; $6a56: $f9
	inc e                                            ; $6a57: $1c
	rst AddAOntoHL                                          ; $6a58: $ef
	ld a, b                                          ; $6a59: $78
	nop                                              ; $6a5a: $00
	adc b                                            ; $6a5b: $88
	rst $38                                          ; $6a5c: $ff
	ld sp, hl                                        ; $6a5d: $f9
	dec e                                            ; $6a5e: $1d
	ld c, c                                          ; $6a5f: $49
	ld l, c                                          ; $6a60: $69
	nop                                              ; $6a61: $00
	adc h                                            ; $6a62: $8c
	db $fc                                           ; $6a63: $fc
	dec e                                            ; $6a64: $1d
	or a                                             ; $6a65: $b7
	ld l, a                                          ; $6a66: $6f
	db $d3                                           ; $6a67: $d3
	call nc, $f9ff                                   ; $6a68: $d4 $ff $f9
	dec e                                            ; $6a6b: $1d
	nop                                              ; $6a6c: $00
	ld b, b                                          ; $6a6d: $40
	nop                                              ; $6a6e: $00
	add b                                            ; $6a6f: $80
	rst $38                                          ; $6a70: $ff
	ld sp, hl                                        ; $6a71: $f9
	dec e                                            ; $6a72: $1d
	nop                                              ; $6a73: $00
	ld b, b                                          ; $6a74: $40
	nop                                              ; $6a75: $00
	adc b                                            ; $6a76: $88
	rst $38                                          ; $6a77: $ff
	ld sp, hl                                        ; $6a78: $f9
	dec e                                            ; $6a79: $1d
	inc d                                            ; $6a7a: $14
	ld l, d                                          ; $6a7b: $6a
	nop                                              ; $6a7c: $00
	adc h                                            ; $6a7d: $8c
	db $fc                                           ; $6a7e: $fc
	dec e                                            ; $6a7f: $1d
	db $eb                                           ; $6a80: $eb
	ld l, a                                          ; $6a81: $6f
	db $d3                                           ; $6a82: $d3
	call nc, $f9ff                                   ; $6a83: $d4 $ff $f9
	dec e                                            ; $6a86: $1d
	jp c, $0042                                      ; $6a87: $da $42 $00

	add b                                            ; $6a8a: $80
	rst $38                                          ; $6a8b: $ff
	ld sp, hl                                        ; $6a8c: $f9
	dec e                                            ; $6a8d: $1d
	jp c, $0042                                      ; $6a8e: $da $42 $00

	adc b                                            ; $6a91: $88
	rst $38                                          ; $6a92: $ff
	ld sp, hl                                        ; $6a93: $f9
	dec e                                            ; $6a94: $1d
	ld [de], a                                       ; $6a95: $12
	ld l, e                                          ; $6a96: $6b
	nop                                              ; $6a97: $00
	adc h                                            ; $6a98: $8c
	db $fc                                           ; $6a99: $fc
	dec e                                            ; $6a9a: $1d
	inc [hl]                                         ; $6a9b: $34
	ld [hl], b                                       ; $6a9c: $70
	db $d3                                           ; $6a9d: $d3
	call nc, $f9ff                                   ; $6a9e: $d4 $ff $f9
	dec e                                            ; $6aa1: $1d
	sub d                                            ; $6aa2: $92
	ld b, [hl]                                       ; $6aa3: $46
	nop                                              ; $6aa4: $00
	add b                                            ; $6aa5: $80
	rst $38                                          ; $6aa6: $ff
	adc a                                            ; $6aa7: $8f
	ld l, b                                          ; $6aa8: $68
	and l                                            ; $6aa9: $a5
	ld l, b                                          ; $6aaa: $68
	or [hl]                                          ; $6aab: $b6
	ld l, b                                          ; $6aac: $68
	rst JumpTable                                          ; $6aad: $c7
	ld l, b                                          ; $6aae: $68
	ret c                                            ; $6aaf: $d8

	ld l, b                                          ; $6ab0: $68
	and b                                            ; $6ab1: $a0
	ld h, [hl]                                       ; $6ab2: $66
	xor d                                            ; $6ab3: $aa
	ld h, [hl]                                       ; $6ab4: $66
	cp a                                             ; $6ab5: $bf
	ld h, [hl]                                       ; $6ab6: $66
	call nc, $e966                                   ; $6ab7: $d4 $66 $e9
	ld h, [hl]                                       ; $6aba: $66
	jp hl                                            ; $6abb: $e9


	ld l, b                                          ; $6abc: $68
	ld h, $69                                        ; $6abd: $26 $69
	ret z                                            ; $6abf: $c8

	ld l, c                                          ; $6ac0: $69
	ld b, c                                          ; $6ac1: $41
	ld l, c                                          ; $6ac2: $69
	xor l                                            ; $6ac3: $ad
	ld l, c                                          ; $6ac4: $69
	inc [hl]                                         ; $6ac5: $34
	ld l, d                                          ; $6ac6: $6a
	dec bc                                           ; $6ac7: $0b
	ld l, c                                          ; $6ac8: $69
	db $e3                                           ; $6ac9: $e3
	ld l, c                                          ; $6aca: $69
	sub d                                            ; $6acb: $92
	ld l, c                                          ; $6acc: $69
	ldh a, [rBCPS]                                   ; $6acd: $f0 $68
	cp $69                                           ; $6acf: $fe $69
	add l                                            ; $6ad1: $85
	ld l, d                                          ; $6ad2: $6a
	add hl, de                                       ; $6ad3: $19
	ld l, d                                          ; $6ad4: $6a
	ld c, a                                          ; $6ad5: $4f
	ld l, d                                          ; $6ad6: $6a
	ld [hl], a                                       ; $6ad7: $77
	ld l, c                                          ; $6ad8: $69
	ld l, d                                          ; $6ad9: $6a
	ld l, d                                          ; $6ada: $6a
	ld e, h                                          ; $6adb: $5c
	ld l, c                                          ; $6adc: $69
	dec l                                            ; $6add: $2d
	ld l, c                                          ; $6ade: $69
	rst GetHLinHL                                          ; $6adf: $cf
	ld l, c                                          ; $6ae0: $69
	ld c, b                                          ; $6ae1: $48
	ld l, c                                          ; $6ae2: $69
	or h                                             ; $6ae3: $b4
	ld l, c                                          ; $6ae4: $69
	dec sp                                           ; $6ae5: $3b
	ld l, d                                          ; $6ae6: $6a
	ld [de], a                                       ; $6ae7: $12
	ld l, c                                          ; $6ae8: $69
	ld [$9969], a                                    ; $6ae9: $ea $69 $99
	ld l, c                                          ; $6aec: $69
	rst FarCall                                          ; $6aed: $f7
	ld l, b                                          ; $6aee: $68
	dec b                                            ; $6aef: $05
	ld l, d                                          ; $6af0: $6a
	adc h                                            ; $6af1: $8c
	ld l, d                                          ; $6af2: $6a
	jr nz, jr_008_6b5f                               ; $6af3: $20 $6a

	ld d, [hl]                                       ; $6af5: $56
	ld l, d                                          ; $6af6: $6a
	ld a, [hl]                                       ; $6af7: $7e
	ld l, c                                          ; $6af8: $69
	ld [hl], c                                       ; $6af9: $71
	ld l, d                                          ; $6afa: $6a
	ld h, e                                          ; $6afb: $63
	ld l, c                                          ; $6afc: $69
	inc [hl]                                         ; $6afd: $34
	ld l, c                                          ; $6afe: $69
	sub $69                                          ; $6aff: $d6 $69
	ld c, a                                          ; $6b01: $4f
	ld l, c                                          ; $6b02: $69
	cp e                                             ; $6b03: $bb
	ld l, c                                          ; $6b04: $69
	ld b, d                                          ; $6b05: $42
	ld l, d                                          ; $6b06: $6a
	add hl, de                                       ; $6b07: $19
	ld l, c                                          ; $6b08: $69
	pop af                                           ; $6b09: $f1
	ld l, c                                          ; $6b0a: $69
	and b                                            ; $6b0b: $a0
	ld l, c                                          ; $6b0c: $69
	cp $68                                           ; $6b0d: $fe $68
	inc c                                            ; $6b0f: $0c
	ld l, d                                          ; $6b10: $6a
	sub e                                            ; $6b11: $93
	ld l, d                                          ; $6b12: $6a
	daa                                              ; $6b13: $27
	ld l, d                                          ; $6b14: $6a
	ld e, l                                          ; $6b15: $5d
	ld l, d                                          ; $6b16: $6a
	add l                                            ; $6b17: $85
	ld l, c                                          ; $6b18: $69
	ld a, b                                          ; $6b19: $78
	ld l, d                                          ; $6b1a: $6a
	ld l, d                                          ; $6b1b: $6a
	ld l, c                                          ; $6b1c: $69
	cp [hl]                                          ; $6b1d: $be
	ld h, h                                          ; $6b1e: $64
	jp z, $e264                                      ; $6b1f: $ca $64 $e2

	ld h, h                                          ; $6b22: $64
	adc $64                                          ; $6b23: $ce $64
	sbc $64                                          ; $6b25: $de $64
	ldh a, [c]                                       ; $6b27: $f2
	ld h, h                                          ; $6b28: $64
	add $64                                          ; $6b29: $c6 $64
	and $64                                          ; $6b2b: $e6 $64
	jp c, $c264                                      ; $6b2d: $da $64 $c2

	ld h, h                                          ; $6b30: $64
	ld [$fe64], a                                    ; $6b31: $ea $64 $fe
	ld h, h                                          ; $6b34: $64
	xor $64                                          ; $6b35: $ee $64
	or $64                                           ; $6b37: $f6 $64
	sub $64                                          ; $6b39: $d6 $64
	ld a, [$d264]                                    ; $6b3b: $fa $64 $d2
	ld h, h                                          ; $6b3e: $64
	inc c                                            ; $6b3f: $0c
	ld h, a                                          ; $6b40: $67
	ld [hl], $67                                     ; $6b41: $36 $67
	inc de                                           ; $6b43: $13
	ld h, a                                          ; $6b44: $67
	cpl                                              ; $6b45: $2f
	ld h, a                                          ; $6b46: $67
	ld d, d                                          ; $6b47: $52
	ld h, a                                          ; $6b48: $67
	dec b                                            ; $6b49: $05
	ld h, a                                          ; $6b4a: $67
	dec a                                            ; $6b4b: $3d
	ld h, a                                          ; $6b4c: $67
	jr z, @+$69                                      ; $6b4d: $28 $67

	cp $66                                           ; $6b4f: $fe $66
	ld b, h                                          ; $6b51: $44
	ld h, a                                          ; $6b52: $67
	ld h, a                                          ; $6b53: $67
	ld h, a                                          ; $6b54: $67
	ld c, e                                          ; $6b55: $4b
	ld h, a                                          ; $6b56: $67
	ld e, c                                          ; $6b57: $59
	ld h, a                                          ; $6b58: $67
	ld hl, $6067                                     ; $6b59: $21 $67 $60
	ld h, a                                          ; $6b5c: $67
	ld a, [de]                                       ; $6b5d: $1a
	ld h, a                                          ; $6b5e: $67

jr_008_6b5f:
	ld e, l                                          ; $6b5f: $5d
	ld e, [hl]                                       ; $6b60: $5e
	ld e, a                                          ; $6b61: $5f
	ld h, b                                          ; $6b62: $60
	ld h, c                                          ; $6b63: $61
	ld h, d                                          ; $6b64: $62
	ld h, e                                          ; $6b65: $63
	ld h, h                                          ; $6b66: $64
	ld h, l                                          ; $6b67: $65
	ld h, [hl]                                       ; $6b68: $66
	ld h, a                                          ; $6b69: $67
	ld l, b                                          ; $6b6a: $68
	ld l, c                                          ; $6b6b: $69
	ld l, d                                          ; $6b6c: $6a
	ld l, e                                          ; $6b6d: $6b
	ld l, h                                          ; $6b6e: $6c
	ld l, l                                          ; $6b6f: $6d
	xor d                                            ; $6b70: $aa
	ld h, [hl]                                       ; $6b71: $66
	or c                                             ; $6b72: $b1
	ld h, [hl]                                       ; $6b73: $66
	cp b                                             ; $6b74: $b8
	ld h, [hl]                                       ; $6b75: $66
	cp a                                             ; $6b76: $bf
	ld h, [hl]                                       ; $6b77: $66
	add $66                                          ; $6b78: $c6 $66
	call $d466                                       ; $6b7a: $cd $66 $d4
	ld h, [hl]                                       ; $6b7d: $66
	db $db                                           ; $6b7e: $db
	ld h, [hl]                                       ; $6b7f: $66
	ldh [c], a                                       ; $6b80: $e2
	ld h, [hl]                                       ; $6b81: $66
	jp hl                                            ; $6b82: $e9


	ld h, [hl]                                       ; $6b83: $66
	ldh a, [$66]                                     ; $6b84: $f0 $66
	rst FarCall                                          ; $6b86: $f7
	ld h, [hl]                                       ; $6b87: $66
	sbc b                                            ; $6b88: $98
	ld e, b                                          ; $6b89: $58
	sbc h                                            ; $6b8a: $9c
	add b                                            ; $6b8b: $80
	ld h, h                                          ; $6b8c: $64
	ld c, b                                          ; $6b8d: $48
	inc l                                            ; $6b8e: $2c
	rra                                              ; $6b8f: $1f
	nop                                              ; $6b90: $00
	dec hl                                           ; $6b91: $2b
	nop                                              ; $6b92: $00
	ld hl, $2900                                     ; $6b93: $21 $00 $29
	nop                                              ; $6b96: $00
	inc sp                                           ; $6b97: $33
	nop                                              ; $6b98: $00
	dec e                                            ; $6b99: $1d
	nop                                              ; $6b9a: $00
	dec l                                            ; $6b9b: $2d
	nop                                              ; $6b9c: $00
	daa                                              ; $6b9d: $27
	nop                                              ; $6b9e: $00
	dec de                                           ; $6b9f: $1b
	nop                                              ; $6ba0: $00
	cpl                                              ; $6ba1: $2f
	nop                                              ; $6ba2: $00
	add hl, sp                                       ; $6ba3: $39
	nop                                              ; $6ba4: $00
	ld sp, $3500                                     ; $6ba5: $31 $00 $35
	nop                                              ; $6ba8: $00
	dec h                                            ; $6ba9: $25
	nop                                              ; $6baa: $00
	scf                                              ; $6bab: $37
	nop                                              ; $6bac: $00
	inc hl                                           ; $6bad: $23
	nop                                              ; $6bae: $00
	dec sp                                           ; $6baf: $3b
	nop                                              ; $6bb0: $00
	inc d                                            ; $6bb1: $14
	nop                                              ; $6bb2: $00
	dec d                                            ; $6bb3: $15
	nop                                              ; $6bb4: $00
	jr nz, jr_008_6bb7                               ; $6bb5: $20 $00

jr_008_6bb7:
	inc l                                            ; $6bb7: $2c
	nop                                              ; $6bb8: $00
	ld [hl+], a                                      ; $6bb9: $22
	nop                                              ; $6bba: $00
	ld a, [hl+]                                      ; $6bbb: $2a
	nop                                              ; $6bbc: $00
	inc [hl]                                         ; $6bbd: $34
	nop                                              ; $6bbe: $00
	ld e, $00                                        ; $6bbf: $1e $00
	ld l, $00                                        ; $6bc1: $2e $00
	jr z, jr_008_6bc5                                ; $6bc3: $28 $00

jr_008_6bc5:
	inc e                                            ; $6bc5: $1c
	nop                                              ; $6bc6: $00
	jr nc, jr_008_6bc9                               ; $6bc7: $30 $00

jr_008_6bc9:
	ld a, [hl-]                                      ; $6bc9: $3a
	nop                                              ; $6bca: $00
	ld [hl-], a                                      ; $6bcb: $32
	nop                                              ; $6bcc: $00
	ld [hl], $00                                     ; $6bcd: $36 $00
	ld h, $00                                        ; $6bcf: $26 $00
	jr c, jr_008_6bd3                                ; $6bd1: $38 $00

jr_008_6bd3:
	inc h                                            ; $6bd3: $24
	nop                                              ; $6bd4: $00
	dec a                                            ; $6bd5: $3d
	nop                                              ; $6bd6: $00
	db $d3                                           ; $6bd7: $d3
	call nc, $d4d3                                   ; $6bd8: $d4 $d3 $d4
	db $d3                                           ; $6bdb: $d3
	call nc, $d4d3                                   ; $6bdc: $d4 $d3 $d4
	db $d3                                           ; $6bdf: $d3
	call nc, $d4d3                                   ; $6be0: $d4 $d3 $d4
	db $d3                                           ; $6be3: $d3
	call nc, $d4d3                                   ; $6be4: $d4 $d3 $d4
	db $d3                                           ; $6be7: $d3
	call nc, $d4d3                                   ; $6be8: $d4 $d3 $d4
	db $d3                                           ; $6beb: $d3
	call nc, $d4d3                                   ; $6bec: $d4 $d3 $d4
	db $d3                                           ; $6bef: $d3
	call nc, $d4d3                                   ; $6bf0: $d4 $d3 $d4
	db $d3                                           ; $6bf3: $d3
	call nc, $d4d3                                   ; $6bf4: $d4 $d3 $d4
	ld d, $00                                        ; $6bf7: $16 $00
	jr jr_008_6bfb                                   ; $6bf9: $18 $00

jr_008_6bfb:
	add hl, de                                       ; $6bfb: $19
	nop                                              ; $6bfc: $00
	ld a, [de]                                       ; $6bfd: $1a
	nop                                              ; $6bfe: $00
	inc bc                                           ; $6bff: $03
	ld l, l                                          ; $6c00: $6d
	db $10                                           ; $6c01: $10
	ld l, [hl]                                       ; $6c02: $6e
	ld [hl+], a                                      ; $6c03: $22

Jump_008_6c04:
	ld l, l                                          ; $6c04: $6d
	call $ca6d                                       ; $6c05: $cd $6d $ca
	ld l, [hl]                                       ; $6c08: $6e
	sbc $6c                                          ; $6c09: $de $6c
	dec sp                                           ; $6c0b: $3b
	ld l, [hl]                                       ; $6c0c: $6e
	sub [hl]                                         ; $6c0d: $96
	ld l, l                                          ; $6c0e: $6d
	xor c                                            ; $6c0f: $a9
	ld l, h                                          ; $6c10: $6c
	ld h, [hl]                                       ; $6c11: $66
	ld l, [hl]                                       ; $6c12: $6e
	ld d, h                                          ; $6c13: $54
	ld l, a                                          ; $6c14: $6f
	and b                                            ; $6c15: $a0
	ld l, [hl]                                       ; $6c16: $6e
	ld a, [$6e6e]                                    ; $6c17: $fa $6e $6e
	ld l, l                                          ; $6c1a: $6d
	ld a, [hl+]                                      ; $6c1b: $2a
	ld l, a                                          ; $6c1c: $6f
	ld b, [hl]                                       ; $6c1d: $46
	ld l, l                                          ; $6c1e: $6d
	db $10                                           ; $6c1f: $10
	ld l, l                                          ; $6c20: $6d
	inc h                                            ; $6c21: $24
	ld l, [hl]                                       ; $6c22: $6e
	inc sp                                           ; $6c23: $33
	ld l, l                                          ; $6c24: $6d
	xor $6d                                          ; $6c25: $ee $6d
	ldh [$6e], a                                     ; $6c27: $e0 $6e
	di                                               ; $6c29: $f3
	ld l, h                                          ; $6c2a: $6c
	ld d, e                                          ; $6c2b: $53
	ld l, [hl]                                       ; $6c2c: $6e
	or a                                             ; $6c2d: $b7
	ld l, l                                          ; $6c2e: $6d
	cp a                                             ; $6c2f: $bf
	ld l, h                                          ; $6c30: $6c
	add e                                            ; $6c31: $83
	ld l, [hl]                                       ; $6c32: $6e
	ld h, a                                          ; $6c33: $67
	ld l, a                                          ; $6c34: $6f
	or e                                             ; $6c35: $b3
	ld l, [hl]                                       ; $6c36: $6e
	db $10                                           ; $6c37: $10
	ld l, a                                          ; $6c38: $6f
	add e                                            ; $6c39: $83
	ld l, l                                          ; $6c3a: $6d
	ld a, [hl-]                                      ; $6c3b: $3a
	ld l, a                                          ; $6c3c: $6f
	ld e, c                                          ; $6c3d: $59
	ld l, l                                          ; $6c3e: $6d

jr_008_6c3f:
	sbc e                                            ; $6c3f: $9b
	ld l, a                                          ; $6c40: $6f
	add l                                            ; $6c41: $85
	ld l, a                                          ; $6c42: $6f
	sbc e                                            ; $6c43: $9b
	ld l, a                                          ; $6c44: $6f
	sbc e                                            ; $6c45: $9b
	ld l, a                                          ; $6c46: $6f
	sbc e                                            ; $6c47: $9b
	ld l, a                                          ; $6c48: $6f
	ld a, c                                          ; $6c49: $79
	ld l, a                                          ; $6c4a: $6f
	and l                                            ; $6c4b: $a5
	ld l, a                                          ; $6c4c: $6f
	sub c                                            ; $6c4d: $91
	ld l, a                                          ; $6c4e: $6f
	sbc e                                            ; $6c4f: $9b
	ld l, a                                          ; $6c50: $6f
	sub c                                            ; $6c51: $91
	ld l, a                                          ; $6c52: $6f
	sbc e                                            ; $6c53: $9b
	ld l, a                                          ; $6c54: $6f
	sbc e                                            ; $6c55: $9b
	ld l, a                                          ; $6c56: $6f
	sbc e                                            ; $6c57: $9b
	ld l, a                                          ; $6c58: $6f
	add l                                            ; $6c59: $85
	ld l, a                                          ; $6c5a: $6f
	sbc e                                            ; $6c5b: $9b
	ld l, a                                          ; $6c5c: $6f
	sbc e                                            ; $6c5d: $9b
	ld l, a                                          ; $6c5e: $6f
	pop de                                           ; $6c5f: $d1
	ld l, a                                          ; $6c60: $6f
	cp e                                             ; $6c61: $bb
	ld l, a                                          ; $6c62: $6f
	pop de                                           ; $6c63: $d1
	ld l, a                                          ; $6c64: $6f
	pop de                                           ; $6c65: $d1
	ld l, a                                          ; $6c66: $6f
	pop de                                           ; $6c67: $d1
	ld l, a                                          ; $6c68: $6f
	xor a                                            ; $6c69: $af
	ld l, a                                          ; $6c6a: $6f
	db $db                                           ; $6c6b: $db
	ld l, a                                          ; $6c6c: $6f
	rst JumpTable                                          ; $6c6d: $c7
	ld l, a                                          ; $6c6e: $6f
	pop de                                           ; $6c6f: $d1
	ld l, a                                          ; $6c70: $6f
	rst JumpTable                                          ; $6c71: $c7
	ld l, a                                          ; $6c72: $6f
	pop de                                           ; $6c73: $d1
	ld l, a                                          ; $6c74: $6f
	pop de                                           ; $6c75: $d1
	ld l, a                                          ; $6c76: $6f
	pop de                                           ; $6c77: $d1
	ld l, a                                          ; $6c78: $6f
	cp e                                             ; $6c79: $bb
	ld l, a                                          ; $6c7a: $6f
	pop de                                           ; $6c7b: $d1
	ld l, a                                          ; $6c7c: $6f
	pop de                                           ; $6c7d: $d1
	ld l, a                                          ; $6c7e: $6f
	db $fd                                           ; $6c7f: $fd
	ld l, e                                          ; $6c80: $6b
	dec e                                            ; $6c81: $1d
	ld l, h                                          ; $6c82: $6c
	dec a                                            ; $6c83: $3d
	ld l, h                                          ; $6c84: $6c
	ld e, l                                          ; $6c85: $5d
	ld l, h                                          ; $6c86: $6c
	add b                                            ; $6c87: $80
	nop                                              ; $6c88: $00
	ld h, b                                          ; $6c89: $60
	nop                                              ; $6c8a: $00
	add b                                            ; $6c8b: $80
	nop                                              ; $6c8c: $00
	add b                                            ; $6c8d: $80
	nop                                              ; $6c8e: $00
	add b                                            ; $6c8f: $80
	nop                                              ; $6c90: $00
	ld d, b                                          ; $6c91: $50
	nop                                              ; $6c92: $00
	sub b                                            ; $6c93: $90
	nop                                              ; $6c94: $00
	ld [hl], b                                       ; $6c95: $70
	nop                                              ; $6c96: $00
	add b                                            ; $6c97: $80
	nop                                              ; $6c98: $00
	ld [hl], b                                       ; $6c99: $70
	nop                                              ; $6c9a: $00
	add b                                            ; $6c9b: $80

jr_008_6c9c:
	nop                                              ; $6c9c: $00
	add b                                            ; $6c9d: $80
	nop                                              ; $6c9e: $00
	add b                                            ; $6c9f: $80
	nop                                              ; $6ca0: $00
	ld h, b                                          ; $6ca1: $60
	nop                                              ; $6ca2: $00
	add b                                            ; $6ca3: $80
	nop                                              ; $6ca4: $00
	add b                                            ; $6ca5: $80
	nop                                              ; $6ca6: $00
	add b                                            ; $6ca7: $80
	nop                                              ; $6ca8: $00
	add b                                            ; $6ca9: $80
	ld b, $82                                        ; $6caa: $06 $82
	ld a, a                                          ; $6cac: $7f
	ld [$5783], sp                                   ; $6cad: $08 $83 $57
	add d                                            ; $6cb0: $82
	ld d, e                                          ; $6cb1: $53
	add e                                            ; $6cb2: $83
	ld d, l                                          ; $6cb3: $55
	add c                                            ; $6cb4: $81
	inc hl                                           ; $6cb5: $23
	add e                                            ; $6cb6: $83
	scf                                              ; $6cb7: $37
	add d                                            ; $6cb8: $82
	ld a, e                                          ; $6cb9: $7b
	add e                                            ; $6cba: $83

jr_008_6cbb:
	jr nc, jr_008_6c3f                               ; $6cbb: $30 $82

	ld [hl], a                                       ; $6cbd: $77
	rst $38                                          ; $6cbe: $ff
	add b                                            ; $6cbf: $80
	dec bc                                           ; $6cc0: $0b
	add c                                            ; $6cc1: $81
	ld d, e                                          ; $6cc2: $53
	add e                                            ; $6cc3: $83
	ld a, [hl-]                                      ; $6cc4: $3a
	add c                                            ; $6cc5: $81
	inc sp                                           ; $6cc6: $33
	add e                                            ; $6cc7: $83
	ld b, a                                          ; $6cc8: $47
	add c                                            ; $6cc9: $81
	ld [hl], b                                       ; $6cca: $70
	add b                                            ; $6ccb: $80
	inc d                                            ; $6ccc: $14
	add d                                            ; $6ccd: $82
	dec b                                            ; $6cce: $05
	add b                                            ; $6ccf: $80

jr_008_6cd0:
	dec [hl]                                         ; $6cd0: $35
	add e                                            ; $6cd1: $83
	ld e, a                                          ; $6cd2: $5f
	add b                                            ; $6cd3: $80
	rlca                                             ; $6cd4: $07
	add c                                            ; $6cd5: $81
	ld b, c                                          ; $6cd6: $41
	add b                                            ; $6cd7: $80
	rla                                              ; $6cd8: $17
	add e                                            ; $6cd9: $83
	ld b, h                                          ; $6cda: $44
	add c                                            ; $6cdb: $81
	ld e, a                                          ; $6cdc: $5f
	rst $38                                          ; $6cdd: $ff
	add d                                            ; $6cde: $82
	ld a, a                                          ; $6cdf: $7f
	ld a, a                                          ; $6ce0: $7f
	dec sp                                           ; $6ce1: $3b
	add b                                            ; $6ce2: $80
	ld a, a                                          ; $6ce3: $7f
	ld h, h                                          ; $6ce4: $64
	add e                                            ; $6ce5: $83
	ld a, a                                          ; $6ce6: $7f
	ld a, a                                          ; $6ce7: $7f
	ld a, a                                          ; $6ce8: $7f
	ld b, $80                                        ; $6ce9: $06 $80
	ld h, [hl]                                       ; $6ceb: $66
	add c                                            ; $6cec: $81
	ld a, a                                          ; $6ced: $7f
	ld a, a                                          ; $6cee: $7f
	inc l                                            ; $6cef: $2c
	add b                                            ; $6cf0: $80
	ld bc, $81ff                                     ; $6cf1: $01 $ff $81
	ld a, a                                          ; $6cf4: $7f
	ld e, d                                          ; $6cf5: $5a
	add b                                            ; $6cf6: $80
	ld b, [hl]                                       ; $6cf7: $46
	add e                                            ; $6cf8: $83
	ld a, a                                          ; $6cf9: $7f
	ld a, a                                          ; $6cfa: $7f
	ld d, h                                          ; $6cfb: $54
	add b                                            ; $6cfc: $80
	ld d, h                                          ; $6cfd: $54
	add d                                            ; $6cfe: $82
	ld a, a                                          ; $6cff: $7f
	ld a, a                                          ; $6d00: $7f
	dec h                                            ; $6d01: $25
	rst $38                                          ; $6d02: $ff
	add b                                            ; $6d03: $80
	inc de                                           ; $6d04: $13
	add d                                            ; $6d05: $82
	ld a, a                                          ; $6d06: $7f
	inc sp                                           ; $6d07: $33
	add e                                            ; $6d08: $83
	ld a, a                                          ; $6d09: $7f
	ld c, c                                          ; $6d0a: $49
	add d                                            ; $6d0b: $82
	ld a, a                                          ; $6d0c: $7f
	ld a, a                                          ; $6d0d: $7f
	dec c                                            ; $6d0e: $0d
	rst $38                                          ; $6d0f: $ff
	add c                                            ; $6d10: $81
	ld e, d                                          ; $6d11: $5a
	add e                                            ; $6d12: $83
	ld a, a                                          ; $6d13: $7f
	ld b, $81                                        ; $6d14: $06 $81
	ld a, a                                          ; $6d16: $7f
	jr nc, jr_008_6c9c                               ; $6d17: $30 $83

	ld a, [hl]                                       ; $6d19: $7e
	add c                                            ; $6d1a: $81
	ld [de], a                                       ; $6d1b: $12
	add b                                            ; $6d1c: $80
	ld c, [hl]                                       ; $6d1d: $4e
	add c                                            ; $6d1e: $81
	ld a, a                                          ; $6d1f: $7f
	ld a, [de]                                       ; $6d20: $1a
	rst $38                                          ; $6d21: $ff
	add d                                            ; $6d22: $82
	ld a, a                                          ; $6d23: $7f
	ld c, c                                          ; $6d24: $49
	add b                                            ; $6d25: $80
	inc a                                            ; $6d26: $3c
	add e                                            ; $6d27: $83
	ld a, a                                          ; $6d28: $7f
	ld a, a                                          ; $6d29: $7f
	ld a, a                                          ; $6d2a: $7f
	ld a, a                                          ; $6d2b: $7f
	ld b, h                                          ; $6d2c: $44
	add b                                            ; $6d2d: $80
	ld [$7f82], sp                                   ; $6d2e: $08 $82 $7f
	ld h, e                                          ; $6d31: $63
	rst $38                                          ; $6d32: $ff
	add c                                            ; $6d33: $81
	ld a, e                                          ; $6d34: $7b
	add b                                            ; $6d35: $80
	jr jr_008_6cbb                                   ; $6d36: $18 $83

	ld a, a                                          ; $6d38: $7f
	ld b, l                                          ; $6d39: $45
	add b                                            ; $6d3a: $80
	inc d                                            ; $6d3b: $14
	add c                                            ; $6d3c: $81
	ld a, a                                          ; $6d3d: $7f

jr_008_6d3e:
	dec h                                            ; $6d3e: $25
	add e                                            ; $6d3f: $83
	ld a, a                                          ; $6d40: $7f
	ld e, e                                          ; $6d41: $5b
	add c                                            ; $6d42: $81
	ld a, a                                          ; $6d43: $7f
	ld bc, $82ff                                     ; $6d44: $01 $ff $82
	ld a, a                                          ; $6d47: $7f
	ld a, a                                          ; $6d48: $7f
	dec [hl]                                         ; $6d49: $35
	add b                                            ; $6d4a: $80
	jr z, jr_008_6cd0                                ; $6d4b: $28 $83

	ld a, a                                          ; $6d4d: $7f
	db $10                                           ; $6d4e: $10
	add c                                            ; $6d4f: $81
	ld e, a                                          ; $6d50: $5f
	add b                                            ; $6d51: $80
	ld a, [hl-]                                      ; $6d52: $3a
	add e                                            ; $6d53: $83
	ld [hl], a                                       ; $6d54: $77
	add d                                            ; $6d55: $82
	ld a, a                                          ; $6d56: $7f
	ld [hl], e                                       ; $6d57: $73
	rst $38                                          ; $6d58: $ff

jr_008_6d59:
	add c                                            ; $6d59: $81
	ld a, a                                          ; $6d5a: $7f
	ld d, b                                          ; $6d5b: $50
	add b                                            ; $6d5c: $80
	inc e                                            ; $6d5d: $1c
	add e                                            ; $6d5e: $83
	ld a, a                                          ; $6d5f: $7f
	ld [hl], $82                                     ; $6d60: $36 $82
	dec l                                            ; $6d62: $2d
	add e                                            ; $6d63: $83
	ld e, e                                          ; $6d64: $5b
	add c                                            ; $6d65: $81
	ld a, a                                          ; $6d66: $7f
	ld [$7083], sp                                   ; $6d67: $08 $83 $70
	add c                                            ; $6d6a: $81
	ld a, a                                          ; $6d6b: $7f
	inc hl                                           ; $6d6c: $23
	rst $38                                          ; $6d6d: $ff
	add d                                            ; $6d6e: $82
	ld a, a                                          ; $6d6f: $7f
	ld a, a                                          ; $6d70: $7f
	ld sp, $2e80                                     ; $6d71: $31 $80 $2e
	add e                                            ; $6d74: $83
	ld a, a                                          ; $6d75: $7f
	ld a, a                                          ; $6d76: $7f
	ld [hl+], a                                      ; $6d77: $22
	add d                                            ; $6d78: $82
	ld a, a                                          ; $6d79: $7f
	inc [hl]                                         ; $6d7a: $34
	add b                                            ; $6d7b: $80
	dec bc                                           ; $6d7c: $0b
	add e                                            ; $6d7d: $83
	ld [hl], d                                       ; $6d7e: $72
	add d                                            ; $6d7f: $82
	ld a, a                                          ; $6d80: $7f
	jr z, @+$01                                      ; $6d81: $28 $ff

	add c                                            ; $6d83: $81
	ld a, a                                          ; $6d84: $7f
	ld a, $80                                        ; $6d85: $3e $80
	ld [hl+], a                                      ; $6d87: $22
	add e                                            ; $6d88: $83
	ld a, a                                          ; $6d89: $7f
	ld c, h                                          ; $6d8a: $4c
	add c                                            ; $6d8b: $81
	ld a, a                                          ; $6d8c: $7f
	ld a, a                                          ; $6d8d: $7f
	ld [bc], a                                       ; $6d8e: $02
	add e                                            ; $6d8f: $83
	ld a, a                                          ; $6d90: $7f
	ld h, $81                                        ; $6d91: $26 $81
	ld a, a                                          ; $6d93: $7f
	ld b, [hl]                                       ; $6d94: $46
	rst $38                                          ; $6d95: $ff
	add d                                            ; $6d96: $82
	ld a, a                                          ; $6d97: $7f
	ld c, h                                          ; $6d98: $4c
	add b                                            ; $6d99: $80
	ld a, [de]                                       ; $6d9a: $1a
	add e                                            ; $6d9b: $83
	ld a, a                                          ; $6d9c: $7f
	ld l, c                                          ; $6d9d: $69
	add b                                            ; $6d9e: $80
	dec b                                            ; $6d9f: $05
	add d                                            ; $6da0: $82
	ld h, [hl]                                       ; $6da1: $66
	add b                                            ; $6da2: $80
	db $10                                           ; $6da3: $10
	add c                                            ; $6da4: $81
	ld h, $80                                        ; $6da5: $26 $80
	ld b, $83                                        ; $6da7: $06 $83
	ld a, a                                          ; $6da9: $7f
	add hl, de                                       ; $6daa: $19
	add b                                            ; $6dab: $80
	ld bc, $7f82                                     ; $6dac: $01 $82 $7f
	ld bc, $7083                                     ; $6daf: $01 $83 $70
	add b                                            ; $6db2: $80
	inc bc                                           ; $6db3: $03
	add d                                            ; $6db4: $82
	ld h, e                                          ; $6db5: $63
	rst $38                                          ; $6db6: $ff
	add c                                            ; $6db7: $81

jr_008_6db8:
	ld a, a                                          ; $6db8: $7f
	jr c, jr_008_6d3e                                ; $6db9: $38 $83

	ld d, e                                          ; $6dbb: $53
	add d                                            ; $6dbc: $82
	ld d, $83                                        ; $6dbd: $16 $83

jr_008_6dbf:
	ld e, h                                          ; $6dbf: $5c
	add c                                            ; $6dc0: $81
	ld a, a                                          ; $6dc1: $7f
	ld [hl-], a                                      ; $6dc2: $32
	add e                                            ; $6dc3: $83
	ld a, [hl]                                       ; $6dc4: $7e
	add d                                            ; $6dc5: $82
	ld c, $83                                        ; $6dc6: $0e $83
	ld l, c                                          ; $6dc8: $69
	add c                                            ; $6dc9: $81
	ld a, a                                          ; $6dca: $7f
	daa                                              ; $6dcb: $27
	rst $38                                          ; $6dcc: $ff
	add d                                            ; $6dcd: $82
	ld a, a                                          ; $6dce: $7f
	ld [$7f83], sp                                   ; $6dcf: $08 $83 $7f
	ld d, d                                          ; $6dd2: $52
	add d                                            ; $6dd3: $82
	ld h, d                                          ; $6dd4: $62
	add b                                            ; $6dd5: $80
	jr jr_008_6d59                                   ; $6dd6: $18 $81

	inc sp                                           ; $6dd8: $33
	add b                                            ; $6dd9: $80
	rlca                                             ; $6dda: $07
	add e                                            ; $6ddb: $83
	ld a, a                                          ; $6ddc: $7f
	ld b, a                                          ; $6ddd: $47
	add b                                            ; $6dde: $80
	ld [de], a                                       ; $6ddf: $12
	add d                                            ; $6de0: $82
	inc c                                            ; $6de1: $0c
	add b                                            ; $6de2: $80
	rla                                              ; $6de3: $17
	add d                                            ; $6de4: $82
	ld a, a                                          ; $6de5: $7f
	add hl, bc                                       ; $6de6: $09
	add e                                            ; $6de7: $83
	ld a, c                                          ; $6de8: $79
	add b                                            ; $6de9: $80
	inc de                                           ; $6dea: $13
	add d                                            ; $6deb: $82
	ld a, d                                          ; $6dec: $7a
	rst $38                                          ; $6ded: $ff
	add c                                            ; $6dee: $81
	ld a, a                                          ; $6def: $7f
	ld b, $83                                        ; $6df0: $06 $83
	ld c, a                                          ; $6df2: $4f
	add c                                            ; $6df3: $81
	inc a                                            ; $6df4: $3c
	add b                                            ; $6df5: $80
	dec hl                                           ; $6df6: $2b
	add e                                            ; $6df7: $83
	ld a, a                                          ; $6df8: $7f
	ld a, a                                          ; $6df9: $7f
	ld b, $81                                        ; $6dfa: $06 $81
	ld a, [hl]                                       ; $6dfc: $7e
	add b                                            ; $6dfd: $80
	ld a, [de]                                       ; $6dfe: $1a
	add d                                            ; $6dff: $82
	dec bc                                           ; $6e00: $0b
	add b                                            ; $6e01: $80
	ld [$1f82], sp                                   ; $6e02: $08 $82 $1f
	add b                                            ; $6e05: $80
	ld d, $83                                        ; $6e06: $16 $83
	ld a, a                                          ; $6e08: $7f
	ld [hl], $80                                     ; $6e09: $36 $80
	add hl, de                                       ; $6e0b: $19
	add c                                            ; $6e0c: $81
	ld a, a                                          ; $6e0d: $7f
	rra                                              ; $6e0e: $1f
	rst $38                                          ; $6e0f: $ff
	add d                                            ; $6e10: $82
	ld a, a                                          ; $6e11: $7f
	ld h, l                                          ; $6e12: $65
	add e                                            ; $6e13: $83
	ld a, a                                          ; $6e14: $7f
	ld d, d                                          ; $6e15: $52
	add d                                            ; $6e16: $82
	ld l, e                                          ; $6e17: $6b
	add b                                            ; $6e18: $80
	inc hl                                           ; $6e19: $23
	add e                                            ; $6e1a: $83
	ld a, a                                          ; $6e1b: $7f
	ld de, $0a80                                     ; $6e1c: $11 $80 $0a
	add d                                            ; $6e1f: $82
	ld a, a                                          ; $6e20: $7f
	ld a, a                                          ; $6e21: $7f
	ld d, $ff                                        ; $6e22: $16 $ff
	add c                                            ; $6e24: $81
	ld a, a                                          ; $6e25: $7f
	ld a, a                                          ; $6e26: $7f
	ld [hl], $80                                     ; $6e27: $36 $80

jr_008_6e29:
	ccf                                              ; $6e29: $3f
	add e                                            ; $6e2a: $83
	ld a, a                                          ; $6e2b: $7f
	jr nz, @-$7e                                     ; $6e2c: $20 $80

	ld bc, $7f81                                     ; $6e2e: $01 $81 $7f
	dec e                                            ; $6e31: $1d
	add b                                            ; $6e32: $80
	jr c, jr_008_6db8                                ; $6e33: $38 $83

	ld sp, $0780                                     ; $6e35: $31 $80 $07
	add c                                            ; $6e38: $81
	ld l, c                                          ; $6e39: $69
	rst $38                                          ; $6e3a: $ff
	add d                                            ; $6e3b: $82
	ld a, a                                          ; $6e3c: $7f
	jr c, jr_008_6dbf                                ; $6e3d: $38 $80

	dec hl                                           ; $6e3f: $2b
	add e                                            ; $6e40: $83
	ld a, a                                          ; $6e41: $7f
	ld c, a                                          ; $6e42: $4f
	add b                                            ; $6e43: $80
	dec de                                           ; $6e44: $1b
	add d                                            ; $6e45: $82
	ld [hl], a                                       ; $6e46: $77
	add b                                            ; $6e47: $80
	inc c                                            ; $6e48: $0c
	add c                                            ; $6e49: $81
	cpl                                              ; $6e4a: $2f
	add b                                            ; $6e4b: $80
	dec b                                            ; $6e4c: $05
	add e                                            ; $6e4d: $83
	ld l, a                                          ; $6e4e: $6f
	add d                                            ; $6e4f: $82
	ld a, a                                          ; $6e50: $7f
	ld e, $ff                                        ; $6e51: $1e $ff
	add c                                            ; $6e53: $81
	ld a, a                                          ; $6e54: $7f
	scf                                              ; $6e55: $37
	add e                                            ; $6e56: $83
	ld a, a                                          ; $6e57: $7f
	inc h                                            ; $6e58: $24
	add c                                            ; $6e59: $81
	ld b, e                                          ; $6e5a: $43
	add e                                            ; $6e5b: $83
	ld a, a                                          ; $6e5c: $7f
	ld c, $82                                        ; $6e5d: $0e $82
	inc l                                            ; $6e5f: $2c
	add e                                            ; $6e60: $83
	ld [hl-], a                                      ; $6e61: $32
	add c                                            ; $6e62: $81
	ld a, a                                          ; $6e63: $7f
	ld e, c                                          ; $6e64: $59
	rst $38                                          ; $6e65: $ff
	add d                                            ; $6e66: $82
	ld l, c                                          ; $6e67: $69
	add b                                            ; $6e68: $80
	dec e                                            ; $6e69: $1d
	add e                                            ; $6e6a: $83
	ld a, a                                          ; $6e6b: $7f
	dec a                                            ; $6e6c: $3d
	add b                                            ; $6e6d: $80
	rlca                                             ; $6e6e: $07
	add c                                            ; $6e6f: $81
	ld a, c                                          ; $6e70: $79
	add b                                            ; $6e71: $80
	ld b, l                                          ; $6e72: $45
	add d                                            ; $6e73: $82
	ld a, a                                          ; $6e74: $7f
	ld a, a                                          ; $6e75: $7f
	ld a, a                                          ; $6e76: $7f
	db $10                                           ; $6e77: $10
	add b                                            ; $6e78: $80
	rla                                              ; $6e79: $17
	add e                                            ; $6e7a: $83
	ld a, a                                          ; $6e7b: $7f
	add hl, hl                                       ; $6e7c: $29
	add b                                            ; $6e7d: $80
	rrca                                             ; $6e7e: $0f
	add d                                            ; $6e7f: $82
	ld a, a                                          ; $6e80: $7f
	inc bc                                           ; $6e81: $03
	rst $38                                          ; $6e82: $ff
	add c                                            ; $6e83: $81
	ld a, a                                          ; $6e84: $7f
	dec bc                                           ; $6e85: $0b
	add b                                            ; $6e86: $80
	dec hl                                           ; $6e87: $2b
	add e                                            ; $6e88: $83
	ld a, a                                          ; $6e89: $7f
	ld c, b                                          ; $6e8a: $48
	add b                                            ; $6e8b: $80
	ld [de], a                                       ; $6e8c: $12
	add c                                            ; $6e8d: $81
	ld h, a                                          ; $6e8e: $67
	add e                                            ; $6e8f: $83
	ld [hl], c                                       ; $6e90: $71
	add c                                            ; $6e91: $81
	ld a, a                                          ; $6e92: $7f
	ld a, [de]                                       ; $6e93: $1a
	add b                                            ; $6e94: $80
	daa                                              ; $6e95: $27
	add d                                            ; $6e96: $82
	inc c                                            ; $6e97: $0c
	add b                                            ; $6e98: $80
	dec h                                            ; $6e99: $25
	add e                                            ; $6e9a: $83
	ld a, a                                          ; $6e9b: $7f
	inc sp                                           ; $6e9c: $33
	add c                                            ; $6e9d: $81
	ld l, l                                          ; $6e9e: $6d
	rst $38                                          ; $6e9f: $ff
	add d                                            ; $6ea0: $82
	ld a, a                                          ; $6ea1: $7f
	ld c, [hl]                                       ; $6ea2: $4e
	add b                                            ; $6ea3: $80
	jr z, jr_008_6e29                                ; $6ea4: $28 $83

	ld a, a                                          ; $6ea6: $7f
	ld d, h                                          ; $6ea7: $54
	add b                                            ; $6ea8: $80
	inc bc                                           ; $6ea9: $03
	add d                                            ; $6eaa: $82
	ld [hl], e                                       ; $6eab: $73
	add e                                            ; $6eac: $83
	ld a, a                                          ; $6ead: $7f
	ld b, [hl]                                       ; $6eae: $46
	add d                                            ; $6eaf: $82
	ld a, a                                          ; $6eb0: $7f
	rrca                                             ; $6eb1: $0f
	rst $38                                          ; $6eb2: $ff

jr_008_6eb3:
	add c                                            ; $6eb3: $81
	ld a, a                                          ; $6eb4: $7f
	ld e, l                                          ; $6eb5: $5d
	add b                                            ; $6eb6: $80
	dec hl                                           ; $6eb7: $2b
	add e                                            ; $6eb8: $83
	ld a, a                                          ; $6eb9: $7f
	ld d, c                                          ; $6eba: $51
	add d                                            ; $6ebb: $82
	ld e, d                                          ; $6ebc: $5a
	add b                                            ; $6ebd: $80
	ld [bc], a                                       ; $6ebe: $02
	add e                                            ; $6ebf: $83
	ld e, h                                          ; $6ec0: $5c
	add c                                            ; $6ec1: $81
	ld a, a                                          ; $6ec2: $7f
	cpl                                              ; $6ec3: $2f
	add e                                            ; $6ec4: $83
	ld d, [hl]                                       ; $6ec5: $56
	add c                                            ; $6ec6: $81
	ld a, a                                          ; $6ec7: $7f
	dec de                                           ; $6ec8: $1b
	rst $38                                          ; $6ec9: $ff
	add d                                            ; $6eca: $82
	ld a, a                                          ; $6ecb: $7f
	ld d, a                                          ; $6ecc: $57
	add b                                            ; $6ecd: $80
	ld [bc], a                                       ; $6ece: $02
	add c                                            ; $6ecf: $81
	ld b, c                                          ; $6ed0: $41
	add b                                            ; $6ed1: $80
	ld [bc], a                                       ; $6ed2: $02
	add d                                            ; $6ed3: $82
	ld b, [hl]                                       ; $6ed4: $46
	add b                                            ; $6ed5: $80
	daa                                              ; $6ed6: $27
	add e                                            ; $6ed7: $83
	ld a, a                                          ; $6ed8: $7f
	ld h, d                                          ; $6ed9: $62
	add b                                            ; $6eda: $80
	ld bc, $7f82                                     ; $6edb: $01 $82 $7f
	ld e, c                                          ; $6ede: $59
	rst $38                                          ; $6edf: $ff
	add c                                            ; $6ee0: $81
	ld a, a                                          ; $6ee1: $7f
	ld l, a                                          ; $6ee2: $6f
	add b                                            ; $6ee3: $80
	rra                                              ; $6ee4: $1f
	add d                                            ; $6ee5: $82
	ld a, b                                          ; $6ee6: $78
	add b                                            ; $6ee7: $80
	add hl, de                                       ; $6ee8: $19
	add c                                            ; $6ee9: $81
	ld a, a                                          ; $6eea: $7f
	ld a, [hl-]                                      ; $6eeb: $3a
	add b                                            ; $6eec: $80
	ld [bc], a                                       ; $6eed: $02
	add c                                            ; $6eee: $81
	add hl, bc                                       ; $6eef: $09
	add b                                            ; $6ef0: $80
	ld c, b                                          ; $6ef1: $48
	add e                                            ; $6ef2: $83
	ld a, a                                          ; $6ef3: $7f
	ld d, [hl]                                       ; $6ef4: $56
	add b                                            ; $6ef5: $80
	ld e, $81                                        ; $6ef6: $1e $81
	ld [hl], e                                       ; $6ef8: $73
	rst $38                                          ; $6ef9: $ff
	add d                                            ; $6efa: $82
	ld a, a                                          ; $6efb: $7f
	daa                                              ; $6efc: $27
	add e                                            ; $6efd: $83
	ld a, a                                          ; $6efe: $7f
	dec c                                            ; $6eff: $0d
	add d                                            ; $6f00: $82
	ld a, a                                          ; $6f01: $7f
	ld d, $80                                        ; $6f02: $16 $80
	inc b                                            ; $6f04: $04
	add e                                            ; $6f05: $83
	ld c, e                                          ; $6f06: $4b
	add c                                            ; $6f07: $81
	ld b, l                                          ; $6f08: $45
	add e                                            ; $6f09: $83
	ld a, a                                          ; $6f0a: $7f
	inc d                                            ; $6f0b: $14
	add d                                            ; $6f0c: $82
	ld a, a                                          ; $6f0d: $7f
	ld l, a                                          ; $6f0e: $6f
	rst $38                                          ; $6f0f: $ff
	add c                                            ; $6f10: $81
	ld a, a                                          ; $6f11: $7f
	ld h, e                                          ; $6f12: $63
	add b                                            ; $6f13: $80
	inc e                                            ; $6f14: $1c
	add d                                            ; $6f15: $82
	ld hl, $7f83                                     ; $6f16: $21 $83 $7f
	rlca                                             ; $6f19: $07
	add c                                            ; $6f1a: $81
	ld h, b                                          ; $6f1b: $60
	add e                                            ; $6f1c: $83
	ld a, a                                          ; $6f1d: $7f
	add d                                            ; $6f1e: $82
	inc e                                            ; $6f1f: $1c
	add e                                            ; $6f20: $83
	ld a, a                                          ; $6f21: $7f
	inc bc                                           ; $6f22: $03
	add c                                            ; $6f23: $81
	ld d, h                                          ; $6f24: $54
	add e                                            ; $6f25: $83
	ld a, a                                          ; $6f26: $7f
	add c                                            ; $6f27: $81
	ld a, c                                          ; $6f28: $79
	rst $38                                          ; $6f29: $ff
	add d                                            ; $6f2a: $82
	ld a, a                                          ; $6f2b: $7f
	ld l, h                                          ; $6f2c: $6c
	add b                                            ; $6f2d: $80
	jr nz, jr_008_6eb3                               ; $6f2e: $20 $83

	ld a, a                                          ; $6f30: $7f
	ld d, a                                          ; $6f31: $57
	add d                                            ; $6f32: $82
	ld [hl], a                                       ; $6f33: $77
	add e                                            ; $6f34: $83
	ld h, [hl]                                       ; $6f35: $66
	add d                                            ; $6f36: $82
	ld a, a                                          ; $6f37: $7f
	dec b                                            ; $6f38: $05
	rst $38                                          ; $6f39: $ff
	add c                                            ; $6f3a: $81
	ld a, a                                          ; $6f3b: $7f
	dec [hl]                                         ; $6f3c: $35
	add b                                            ; $6f3d: $80
	ld a, [de]                                       ; $6f3e: $1a
	add e                                            ; $6f3f: $83
	ld [hl], b                                       ; $6f40: $70
	add c                                            ; $6f41: $81
	ld c, d                                          ; $6f42: $4a
	add e                                            ; $6f43: $83
	ld a, a                                          ; $6f44: $7f
	ld a, [de]                                       ; $6f45: $1a
	add c                                            ; $6f46: $81
	ld d, l                                          ; $6f47: $55
	add b                                            ; $6f48: $80
	inc e                                            ; $6f49: $1c
	add d                                            ; $6f4a: $82
	inc de                                           ; $6f4b: $13
	add b                                            ; $6f4c: $80
	ld a, [de]                                       ; $6f4d: $1a
	add e                                            ; $6f4e: $83
	ld h, d                                          ; $6f4f: $62
	add c                                            ; $6f50: $81
	ld a, a                                          ; $6f51: $7f
	dec b                                            ; $6f52: $05
	rst $38                                          ; $6f53: $ff
	add d                                            ; $6f54: $82
	ld a, a                                          ; $6f55: $7f
	ld [hl+], a                                      ; $6f56: $22
	add e                                            ; $6f57: $83
	ld a, a                                          ; $6f58: $7f
	jr nz, @-$7c                                     ; $6f59: $20 $82

	ld a, a                                          ; $6f5b: $7f
	add b                                            ; $6f5c: $80
	ld [bc], a                                       ; $6f5d: $02
	add c                                            ; $6f5e: $81
	inc bc                                           ; $6f5f: $03
	add e                                            ; $6f60: $83
	ld a, a                                          ; $6f61: $7f
	dec hl                                           ; $6f62: $2b
	add d                                            ; $6f63: $82
	ld a, a                                          ; $6f64: $7f
	inc [hl]                                         ; $6f65: $34
	rst $38                                          ; $6f66: $ff
	add c                                            ; $6f67: $81
	ld a, a                                          ; $6f68: $7f
	ld c, l                                          ; $6f69: $4d
	add e                                            ; $6f6a: $83
	ld d, l                                          ; $6f6b: $55
	add d                                            ; $6f6c: $82
	dec [hl]                                         ; $6f6d: $35
	add e                                            ; $6f6e: $83
	add hl, sp                                       ; $6f6f: $39
	add c                                            ; $6f70: $81
	ld a, a                                          ; $6f71: $7f
	dec bc                                           ; $6f72: $0b
	add e                                            ; $6f73: $83
	ld d, h                                          ; $6f74: $54
	add c                                            ; $6f75: $81
	ld a, a                                          ; $6f76: $7f
	ld a, [hl+]                                      ; $6f77: $2a
	rst $38                                          ; $6f78: $ff
	add d                                            ; $6f79: $82
	ld a, a                                          ; $6f7a: $7f
	ld a, a                                          ; $6f7b: $7f
	ld c, h                                          ; $6f7c: $4c
	add e                                            ; $6f7d: $83
	ld a, a                                          ; $6f7e: $7f
	ld a, a                                          ; $6f7f: $7f
	add d                                            ; $6f80: $82
	ld a, a                                          ; $6f81: $7f
	ld a, a                                          ; $6f82: $7f
	ld c, h                                          ; $6f83: $4c
	rst $38                                          ; $6f84: $ff
	add d                                            ; $6f85: $82
	ld a, a                                          ; $6f86: $7f
	ld a, a                                          ; $6f87: $7f
	dec de                                           ; $6f88: $1b
	add e                                            ; $6f89: $83
	ld a, a                                          ; $6f8a: $7f
	ld a, a                                          ; $6f8b: $7f
	add d                                            ; $6f8c: $82
	ld a, a                                          ; $6f8d: $7f
	ld a, a                                          ; $6f8e: $7f
	dec de                                           ; $6f8f: $1b
	rst $38                                          ; $6f90: $ff
	add d                                            ; $6f91: $82
	ld a, a                                          ; $6f92: $7f
	ld l, d                                          ; $6f93: $6a
	add e                                            ; $6f94: $83
	ld a, a                                          ; $6f95: $7f
	ld a, a                                          ; $6f96: $7f
	add d                                            ; $6f97: $82
	ld a, a                                          ; $6f98: $7f
	ld l, d                                          ; $6f99: $6a
	rst $38                                          ; $6f9a: $ff
	add d                                            ; $6f9b: $82
	ld a, a                                          ; $6f9c: $7f
	ld b, e                                          ; $6f9d: $43
	add e                                            ; $6f9e: $83
	ld a, a                                          ; $6f9f: $7f
	ld a, a                                          ; $6fa0: $7f
	add d                                            ; $6fa1: $82
	ld a, a                                          ; $6fa2: $7f
	ld b, e                                          ; $6fa3: $43
	rst $38                                          ; $6fa4: $ff
	add d                                            ; $6fa5: $82
	ld a, a                                          ; $6fa6: $7f
	ld a, [hl-]                                      ; $6fa7: $3a
	add e                                            ; $6fa8: $83
	ld a, a                                          ; $6fa9: $7f
	ld a, a                                          ; $6faa: $7f
	add d                                            ; $6fab: $82
	ld a, a                                          ; $6fac: $7f
	ld a, [hl-]                                      ; $6fad: $3a
	rst $38                                          ; $6fae: $ff
	add c                                            ; $6faf: $81
	ld a, a                                          ; $6fb0: $7f
	ld a, a                                          ; $6fb1: $7f
	ld c, h                                          ; $6fb2: $4c
	add e                                            ; $6fb3: $83
	ld a, a                                          ; $6fb4: $7f
	ld a, a                                          ; $6fb5: $7f
	add c                                            ; $6fb6: $81
	ld a, a                                          ; $6fb7: $7f
	ld a, a                                          ; $6fb8: $7f
	ld c, h                                          ; $6fb9: $4c
	rst $38                                          ; $6fba: $ff
	add c                                            ; $6fbb: $81
	ld a, a                                          ; $6fbc: $7f
	ld a, a                                          ; $6fbd: $7f
	dec de                                           ; $6fbe: $1b
	add e                                            ; $6fbf: $83
	ld a, a                                          ; $6fc0: $7f
	ld a, a                                          ; $6fc1: $7f
	add c                                            ; $6fc2: $81
	ld a, a                                          ; $6fc3: $7f
	ld a, a                                          ; $6fc4: $7f
	dec de                                           ; $6fc5: $1b
	rst $38                                          ; $6fc6: $ff
	add c                                            ; $6fc7: $81
	ld a, a                                          ; $6fc8: $7f
	ld l, d                                          ; $6fc9: $6a
	add e                                            ; $6fca: $83
	ld a, a                                          ; $6fcb: $7f
	ld a, a                                          ; $6fcc: $7f
	add c                                            ; $6fcd: $81
	ld a, a                                          ; $6fce: $7f
	ld l, d                                          ; $6fcf: $6a
	rst $38                                          ; $6fd0: $ff
	add c                                            ; $6fd1: $81
	ld a, a                                          ; $6fd2: $7f
	ld b, e                                          ; $6fd3: $43
	add e                                            ; $6fd4: $83
	ld a, a                                          ; $6fd5: $7f
	ld a, a                                          ; $6fd6: $7f
	add c                                            ; $6fd7: $81
	ld a, a                                          ; $6fd8: $7f
	ld b, e                                          ; $6fd9: $43
	rst $38                                          ; $6fda: $ff
	add c                                            ; $6fdb: $81
	ld a, a                                          ; $6fdc: $7f
	ld a, [hl-]                                      ; $6fdd: $3a
	add e                                            ; $6fde: $83
	ld a, a                                          ; $6fdf: $7f
	ld a, a                                          ; $6fe0: $7f
	add c                                            ; $6fe1: $81
	ld a, a                                          ; $6fe2: $7f
	ld a, [hl-]                                      ; $6fe3: $3a
	rst $38                                          ; $6fe4: $ff
	xor a                                            ; $6fe5: $af
	ld [$c147], a                                    ; $6fe6: $ea $47 $c1
	ld [$d34d], a                                    ; $6fe9: $ea $4d $d3
	ldh [$8a], a                                     ; $6fec: $e0 $8a

jr_008_6fee:
	ld hl, wFrameCounter                                     ; $6fee: $21 $1f $c1
	ld a, [$d80a]                                    ; $6ff1: $fa $0a $d8
	cp [hl]                                          ; $6ff4: $be
	jr z, jr_008_6fee                                ; $6ff5: $28 $f7

	call SafelyExecuteDataCopies                                       ; $6ff7: $cd $8b $14
	ld hl, $c120                                     ; $6ffa: $21 $20 $c1
	inc [hl]                                         ; $6ffd: $34
	xor a                                            ; $6ffe: $af
	ld [$c110], a                                    ; $6fff: $ea $10 $c1
	call Call_008_701b                               ; $7002: $cd $1b $70
	call Call_000_1ca1                                       ; $7005: $cd $a1 $1c
	ld a, [$d34d]                                    ; $7008: $fa $4d $d3
	or a                                             ; $700b: $b7
	jr z, jr_008_6fee                                ; $700c: $28 $e0

	call $1973                                       ; $700e: $cd $73 $19

jr_008_7011:
	ld hl, wFrameCounter                                     ; $7011: $21 $1f $c1
	ld a, [$d80a]                                    ; $7014: $fa $0a $d8
	cp [hl]                                          ; $7017: $be
	jr z, jr_008_7011                                ; $7018: $28 $f7

	ret                                              ; $701a: $c9


Call_008_701b:
	ld a, [wButtonsPressed]                                    ; $701b: $fa $25 $c1
	or a                                             ; $701e: $b7
	jr z, jr_008_7024                                ; $701f: $28 $03

	ld [$d34d], a                                    ; $7021: $ea $4d $d3

jr_008_7024:
	ld a, [$c147]                                    ; $7024: $fa $47 $c1
	call wJumpTable                                       ; $7027: $cd $80 $cf
	ld [hl], $70                                     ; $702a: $36 $70
	push bc                                          ; $702c: $c5
	ld [hl], b                                       ; $702d: $70
	db $d3                                           ; $702e: $d3
	ld [hl], b                                       ; $702f: $70
	jp c, $2870                                      ; $7030: $da $70 $28

	ld [hl], c                                       ; $7033: $71
	ld a, [hl-]                                      ; $7034: $3a
	ld [hl], c                                       ; $7035: $71
	ld hl, $a146                                     ; $7036: $21 $46 $a1
	ld a, [hl+]                                      ; $7039: $2a
	and [hl]                                         ; $703a: $a6
	inc a                                            ; $703b: $3c
	jr z, jr_008_7047                                ; $703c: $28 $09

	ld a, $03                                        ; $703e: $3e $03
	ld [$c147], a                                    ; $7040: $ea $47 $c1
	call $1973                                       ; $7043: $cd $73 $19
	ret                                              ; $7046: $c9


jr_008_7047:
	ld a, $08                                        ; $7047: $3e $08
	ld [$c186], a                                    ; $7049: $ea $86 $c1
	ld hl, $0790                                     ; $704c: $21 $90 $07
	call $095c                                       ; $704f: $cd $5c $09
	call Call_008_7149                               ; $7052: $cd $49 $71
	xor a                                            ; $7055: $af
	call $068e                                       ; $7056: $cd $8e $06
	call $0986                                       ; $7059: $cd $86 $09
	call $09c3                                       ; $705c: $cd $c3 $09
	call $0911                                       ; $705f: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $7062: $cd $ef $2d
	ld hl, $9800                                     ; $7065: $21 $00 $98
	rst FarCall                                          ; $7068: $f7
	ld d, c                                          ; $7069: $51
	ld c, e                                          ; $706a: $4b
	ld b, $21                                        ; $706b: $06 $21
	xor a                                            ; $706d: $af
	ld [hl], b                                       ; $706e: $70
	call $0aab                                       ; $706f: $cd $ab $0a
	ld hl, $0000                                     ; $7072: $21 $00 $00
	rst FarCall                                          ; $7075: $f7
	ld b, c                                          ; $7076: $41
	ld b, a                                          ; $7077: $47
	ld b, $21                                        ; $7078: $06 $21
	nop                                              ; $707a: $00
	sbc b                                            ; $707b: $98
	ld bc, $1214                                     ; $707c: $01 $14 $12
	ld de, $d4d3                                     ; $707f: $11 $d3 $d4
	rst FarCall                                          ; $7082: $f7
	ld c, d                                          ; $7083: $4a
	ld c, b                                          ; $7084: $48
	ld b, $3e                                        ; $7085: $06 $3e
	ccf                                              ; $7087: $3f
	ld [$c179], a                                    ; $7088: $ea $79 $c1
	ld a, $00                                        ; $708b: $3e $00
	ld [$c17a], a                                    ; $708d: $ea $7a $c1
	ld a, $8f                                        ; $7090: $3e $8f
	ld [$c17b], a                                    ; $7092: $ea $7b $c1
	ld a, $91                                        ; $7095: $3e $91
	ldh [hDisp0_LCDC], a                                     ; $7097: $e0 $82
	ld a, $0d                                        ; $7099: $3e $0d
	call $068e                                       ; $709b: $cd $8e $06
	ld bc, $666a                                     ; $709e: $01 $6a $66
	rst FarCall                                          ; $70a1: $f7
	inc c                                            ; $70a2: $0c
	ld b, a                                          ; $70a3: $47
	ld b, $01                                        ; $70a4: $06 $01
	or h                                             ; $70a6: $b4
	nop                                              ; $70a7: $00
	rst FarCall                                          ; $70a8: $f7
	scf                                              ; $70a9: $37
	add hl, hl                                       ; $70aa: $29
	nop                                              ; $70ab: $00
	jp $096e                                         ; $70ac: $c3 $6e $09


	ld sp, hl                                        ; $70af: $f9
	dec e                                            ; $70b0: $1d
	ld [hl], c                                       ; $70b1: $71
	ld [hl], b                                       ; $70b2: $70
	nop                                              ; $70b3: $00
	add b                                            ; $70b4: $80
	dec e                                            ; $70b5: $1d
	add $77                                          ; $70b6: $c6 $77
	ld b, b                                          ; $70b8: $40
	adc d                                            ; $70b9: $8a
	dec e                                            ; $70ba: $1d
	jp nz, $d377                                     ; $70bb: $c2 $77 $d3

	call nc, $c81d                                   ; $70be: $d4 $1d $c8
	ld a, a                                          ; $70c1: $7f
	rst $38                                          ; $70c2: $ff
	rst $38                                          ; $70c3: $ff
	rst $38                                          ; $70c4: $ff
	rst FarCall                                          ; $70c5: $f7
	ld a, $29                                        ; $70c6: $3e $29
	nop                                              ; $70c8: $00
	ret nz                                           ; $70c9: $c0

	ld bc, $67f6                                     ; $70ca: $01 $f6 $67
	call $18c0                                       ; $70cd: $cd $c0 $18
	jp Jump_008_7149                                 ; $70d0: $c3 $49 $71


	call $199f                                       ; $70d3: $cd $9f $19
	ret nz                                           ; $70d6: $c0

	jp Jump_008_7149                                 ; $70d7: $c3 $49 $71


	ld a, $08                                        ; $70da: $3e $08
	ld [$c186], a                                    ; $70dc: $ea $86 $c1
	ld hl, $0790                                     ; $70df: $21 $90 $07
	call $095c                                       ; $70e2: $cd $5c $09
	call Call_008_7149                               ; $70e5: $cd $49 $71
	xor a                                            ; $70e8: $af
	call $068e                                       ; $70e9: $cd $8e $06
	call $0986                                       ; $70ec: $cd $86 $09
	call $0911                                       ; $70ef: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $70f2: $cd $ef $2d
	call Call_008_714e                               ; $70f5: $cd $4e $71
	call Call_008_729f                               ; $70f8: $cd $9f $72
	ld a, [wButtonsHeld]                                    ; $70fb: $fa $23 $c1
	and $08                                          ; $70fe: $e6 $08
	jr z, jr_008_710b                                ; $7100: $28 $09

	xor a                                            ; $7102: $af
	ld [$d346], a                                    ; $7103: $ea $46 $d3
	ld [$d347], a                                    ; $7106: $ea $47 $d3
	jr jr_008_7116                                   ; $7109: $18 $0b

jr_008_710b:
	ld hl, $a146                                     ; $710b: $21 $46 $a1
	ld a, [hl+]                                      ; $710e: $2a
	ld [$d346], a                                    ; $710f: $ea $46 $d3
	ld a, [hl]                                       ; $7112: $7e
	ld [$d347], a                                    ; $7113: $ea $47 $d3

jr_008_7116:
	call Call_008_7157                               ; $7116: $cd $57 $71
	call Call_008_716d                               ; $7119: $cd $6d $71
	ld a, $c7                                        ; $711c: $3e $c7
	ldh [hDisp0_LCDC], a                                     ; $711e: $e0 $82
	ld b, $08                                        ; $7120: $06 $08
	call $0a64                                       ; $7122: $cd $64 $0a
	jp $096e                                         ; $7125: $c3 $6e $09


	call $2e21                                       ; $7128: $cd $21 $2e
	ld a, [wInitialA]                                    ; $712b: $fa $00 $c1
	cp $11                                           ; $712e: $fe $11
	jp z, Jump_008_7149                              ; $7130: $ca $49 $71

	call $0a6f                                       ; $7133: $cd $6f $0a
	jp nc, Jump_008_7149                             ; $7136: $d2 $49 $71

	ret                                              ; $7139: $c9


	call Call_008_72bc                               ; $713a: $cd $bc $72
	call Call_008_7164                               ; $713d: $cd $64 $71
	call nz, Call_008_716d                           ; $7140: $c4 $6d $71
	call Call_008_71fb                               ; $7143: $cd $fb $71
	jp $2e21                                         ; $7146: $c3 $21 $2e


Call_008_7149:
Jump_008_7149:
	ld hl, $c147                                     ; $7149: $21 $47 $c1
	inc [hl]                                         ; $714c: $34
	ret                                              ; $714d: $c9


Call_008_714e:
	xor a                                            ; $714e: $af
	ldh [hDisp0_BGP], a                                     ; $714f: $e0 $85
	ld hl, $d348                                     ; $7151: $21 $48 $d3
	jp $cbec                                         ; $7154: $c3 $ec $cb


Call_008_7157:
Jump_008_7157:
	ld hl, $d346                                     ; $7157: $21 $46 $d3
	ld de, $d34b                                     ; $715a: $11 $4b $d3
	call Call_008_7160                               ; $715d: $cd $60 $71

Call_008_7160:
	ld a, [hl+]                                      ; $7160: $2a
	ld [de], a                                       ; $7161: $12
	inc de                                           ; $7162: $13
	ret                                              ; $7163: $c9


Call_008_7164:
	ld a, [$d346]                                    ; $7164: $fa $46 $d3
	ld hl, $d347                                     ; $7167: $21 $47 $d3
	or [hl]                                          ; $716a: $b6
	or a                                             ; $716b: $b7
	ret                                              ; $716c: $c9


Call_008_716d:
	call Call_008_7164                               ; $716d: $cd $64 $71
	jr nz, jr_008_71a5                               ; $7170: $20 $33

	ld a, [$d348]                                    ; $7172: $fa $48 $d3
	or a                                             ; $7175: $b7
	jr nz, jr_008_718b                               ; $7176: $20 $13

	ld a, $6e                                        ; $7178: $3e $6e
	ld [$c200], a                                    ; $717a: $ea $00 $c2
	ld hl, $6aa0                                     ; $717d: $21 $a0 $6a
	ld a, $02                                        ; $7180: $3e $02
	call $0ab6                                       ; $7182: $cd $b6 $0a
	ld bc, $6502                                     ; $7185: $01 $02 $65
	jp $189d                                         ; $7188: $c3 $9d $18


jr_008_718b:
	xor a                                            ; $718b: $af
	ld hl, $6abb                                     ; $718c: $21 $bb $6a
	ld bc, $c200                                     ; $718f: $01 $00 $c2
	call Call_008_7278                               ; $7192: $cd $78 $72
	call $189d                                       ; $7195: $cd $9d $18
	ld hl, $c300                                     ; $7198: $21 $00 $c3
	ld c, $04                                        ; $719b: $0e $04
	ld a, $5d                                        ; $719d: $3e $5d

jr_008_719f:
	ld [hl], a                                       ; $719f: $77
	inc h                                            ; $71a0: $24
	dec c                                            ; $71a1: $0d
	jr nz, jr_008_719f                               ; $71a2: $20 $fb

	ret                                              ; $71a4: $c9


jr_008_71a5:
	ld a, [$c200]                                    ; $71a5: $fa $00 $c2
	or a                                             ; $71a8: $b7
	jr nz, jr_008_71dd                               ; $71a9: $20 $32

	call Call_008_721d                               ; $71ab: $cd $1d $72
	call Call_008_722d                               ; $71ae: $cd $2d $72
	xor a                                            ; $71b1: $af
	ld hl, $6abb                                     ; $71b2: $21 $bb $6a
	ld bc, $c200                                     ; $71b5: $01 $00 $c2
	call Call_008_7278                               ; $71b8: $cd $78 $72
	call $189d                                       ; $71bb: $cd $9d $18
	ld a, [$d348]                                    ; $71be: $fa $48 $d3
	or a                                             ; $71c1: $b7
	jr nz, jr_008_71dd                               ; $71c2: $20 $19

	ld a, $6f                                        ; $71c4: $3e $6f
	ld [$c300], a                                    ; $71c6: $ea $00 $c3
	ld a, [$d348]                                    ; $71c9: $fa $48 $d3
	or a                                             ; $71cc: $b7
	jr nz, jr_008_71dd                               ; $71cd: $20 $0e

	ld a, [$d34a]                                    ; $71cf: $fa $4a $d3
	ld hl, $6afb                                     ; $71d2: $21 $fb $6a
	call $cf8a                                       ; $71d5: $cd $8a $cf
	ld a, $02                                        ; $71d8: $3e $02
	jp $0ab6                                         ; $71da: $c3 $b6 $0a


jr_008_71dd:
	ld a, [$d348]                                    ; $71dd: $fa $48 $d3
	or a                                             ; $71e0: $b7
	ret z                                            ; $71e1: $c8

	ld a, [$c300]                                    ; $71e2: $fa $00 $c3
	or a                                             ; $71e5: $b7
	ret nz                                           ; $71e6: $c0

	call Call_008_721d                               ; $71e7: $cd $1d $72
	call Call_008_722d                               ; $71ea: $cd $2d $72
	ld a, $01                                        ; $71ed: $3e $01
	ld hl, $6adb                                     ; $71ef: $21 $db $6a
	ld bc, $c300                                     ; $71f2: $01 $00 $c3
	call Call_008_7278                               ; $71f5: $cd $78 $72
	jp $1890                                         ; $71f8: $c3 $90 $18


Call_008_71fb:
	call Call_008_7164                               ; $71fb: $cd $64 $71
	ret nz                                           ; $71fe: $c0

	ld a, [$d348]                                    ; $71ff: $fa $48 $d3
	or a                                             ; $7202: $b7
	ld hl, $c200                                     ; $7203: $21 $00 $c2
	jr nz, jr_008_720f                               ; $7206: $20 $07

	ld a, [hl]                                       ; $7208: $7e
	or a                                             ; $7209: $b7
	ret nz                                           ; $720a: $c0

	ld a, $6e                                        ; $720b: $3e $6e
	ld [hl], a                                       ; $720d: $77
	ret                                              ; $720e: $c9


jr_008_720f:
	ld c, $05                                        ; $720f: $0e $05

jr_008_7211:
	ld a, [hl]                                       ; $7211: $7e
	or a                                             ; $7212: $b7
	jr nz, jr_008_7218                               ; $7213: $20 $03

	ld a, $5d                                        ; $7215: $3e $5d
	ld [hl], a                                       ; $7217: $77

jr_008_7218:
	inc h                                            ; $7218: $24
	dec c                                            ; $7219: $0d
	jr nz, jr_008_7211                               ; $721a: $20 $f5

	ret                                              ; $721c: $c9


Call_008_721d:
	call Call_008_7164                               ; $721d: $cd $64 $71
	ret z                                            ; $7220: $c8

	ld a, [$d34b]                                    ; $7221: $fa $4b $d3
	ld hl, $d34c                                     ; $7224: $21 $4c $d3
	or [hl]                                          ; $7227: $b6
	or a                                             ; $7228: $b7
	ret nz                                           ; $7229: $c0

	jp Jump_008_7157                                 ; $722a: $c3 $57 $71


Call_008_722d:
	call Call_008_7164                               ; $722d: $cd $64 $71
	ld [$d34a], a                                    ; $7230: $ea $4a $d3
	ret z                                            ; $7233: $c8

	ld hl, $d34b                                     ; $7234: $21 $4b $d3
	ld a, [hl+]                                      ; $7237: $2a
	ld c, a                                          ; $7238: $4f
	ld b, [hl]                                       ; $7239: $46
	ld a, $10                                        ; $723a: $3e $10
	call Call_000_12fc                                       ; $723c: $cd $fc $12
	ld e, $ff                                        ; $723f: $1e $ff
	push bc                                          ; $7241: $c5

jr_008_7242:
	inc e                                            ; $7242: $1c
	ld d, a                                          ; $7243: $57
	ld a, e                                          ; $7244: $7b
	and $0f                                          ; $7245: $e6 $0f
	ld a, d                                          ; $7247: $7a
	jr nz, jr_008_724c                               ; $7248: $20 $02

	pop bc                                           ; $724a: $c1
	push bc                                          ; $724b: $c5

jr_008_724c:
	srl b                                            ; $724c: $cb $38
	rr c                                             ; $724e: $cb $19
	jr nc, jr_008_7242                               ; $7250: $30 $f0

	or a                                             ; $7252: $b7
	jr z, jr_008_7258                                ; $7253: $28 $03

	dec a                                            ; $7255: $3d
	jr jr_008_7242                                   ; $7256: $18 $ea

jr_008_7258:
	ld a, e                                          ; $7258: $7b
	and $0f                                          ; $7259: $e6 $0f
	inc a                                            ; $725b: $3c
	ld [$d34a], a                                    ; $725c: $ea $4a $d3
	pop bc                                           ; $725f: $c1
	ld bc, $0001                                     ; $7260: $01 $01 $00

jr_008_7263:
	dec a                                            ; $7263: $3d
	jr z, jr_008_726c                                ; $7264: $28 $06

	rl c                                             ; $7266: $cb $11
	rl b                                             ; $7268: $cb $10
	jr jr_008_7263                                   ; $726a: $18 $f7

jr_008_726c:
	ld hl, $d34b                                     ; $726c: $21 $4b $d3
	ld a, c                                          ; $726f: $79
	cpl                                              ; $7270: $2f
	and [hl]                                         ; $7271: $a6
	ld [hl+], a                                      ; $7272: $22
	ld a, b                                          ; $7273: $78
	cpl                                              ; $7274: $2f
	and [hl]                                         ; $7275: $a6
	ld [hl], a                                       ; $7276: $77
	ret                                              ; $7277: $c9


Call_008_7278:
	push af                                          ; $7278: $f5
	push bc                                          ; $7279: $c5
	ld a, [$d34a]                                    ; $727a: $fa $4a $d3
	call $cf8a                                       ; $727d: $cd $8a $cf
	ld a, $02                                        ; $7280: $3e $02
	call $0ab6                                       ; $7282: $cd $b6 $0a
	ld a, [$d34a]                                    ; $7285: $fa $4a $d3
	ld hl, $6b5f                                     ; $7288: $21 $5f $6b
	rst AddAOntoHL                                          ; $728b: $ef
	ld a, [hl]                                       ; $728c: $7e
	pop bc                                           ; $728d: $c1
	ld [bc], a                                       ; $728e: $02
	ld hl, $6b1d                                     ; $728f: $21 $1d $6b
	pop af                                           ; $7292: $f1
	or a                                             ; $7293: $b7
	jr z, jr_008_7299                                ; $7294: $28 $03

	ld hl, $6b3d                                     ; $7296: $21 $3d $6b

jr_008_7299:
	ld a, [$d34a]                                    ; $7299: $fa $4a $d3
	jp $cfa0                                         ; $729c: $c3 $a0 $cf


Call_008_729f:
	ld a, $05                                        ; $729f: $3e $05
	call Call_000_12fc                                       ; $72a1: $cd $fc $12
	ld [$d348], a                                    ; $72a4: $ea $48 $d3
	ld hl, $6aa7                                     ; $72a7: $21 $a7 $6a
	call $cf8a                                       ; $72aa: $cd $8a $cf
	call $0ab5                                       ; $72ad: $cd $b5 $0a
	ld a, [$d348]                                    ; $72b0: $fa $48 $d3
	ld hl, $6ab1                                     ; $72b3: $21 $b1 $6a
	call $cfa0                                       ; $72b6: $cd $a0 $cf
	jp $18c4                                         ; $72b9: $c3 $c4 $18


Call_008_72bc:
	ld a, [$d348]                                    ; $72bc: $fa $48 $d3
	or a                                             ; $72bf: $b7
	ret z                                            ; $72c0: $c8

	ld a, [wFrameCounter]                                    ; $72c1: $fa $1f $c1
	and $7f                                          ; $72c4: $e6 $7f
	or a                                             ; $72c6: $b7
	jr z, jr_008_72d1                                ; $72c7: $28 $08

	dec a                                            ; $72c9: $3d
	ret nz                                           ; $72ca: $c0

	ld bc, $6826                                     ; $72cb: $01 $26 $68
	jp $18c4                                         ; $72ce: $c3 $c4 $18


jr_008_72d1:
	ld hl, $d349                                     ; $72d1: $21 $49 $d3
	ld a, [hl]                                       ; $72d4: $7e
	ld [$c0d8], a                                    ; $72d5: $ea $d8 $c0
	inc [hl]                                         ; $72d8: $34
	ld a, [hl]                                       ; $72d9: $7e
	cp $03                                           ; $72da: $fe $03
	jr nz, jr_008_72e0                               ; $72dc: $20 $02

	ld [hl], $00                                     ; $72de: $36 $00

jr_008_72e0:
	add a                                            ; $72e0: $87
	ld b, a                                          ; $72e1: $47
	add a                                            ; $72e2: $87
	add b                                            ; $72e3: $80
	ld hl, $6b6a                                     ; $72e4: $21 $6a $6b
	rst AddAOntoHL                                          ; $72e7: $ef
	ld a, [$d349]                                    ; $72e8: $fa $49 $d3
	push hl                                          ; $72eb: $e5
	call $cfa0                                       ; $72ec: $cd $a0 $cf
	call $18c4                                       ; $72ef: $cd $c4 $18
	ld a, $02                                        ; $72f2: $3e $02
	call $18f5                                       ; $72f4: $cd $f5 $18
	ld a, [$c0d8]                                    ; $72f7: $fa $d8 $c0
	pop hl                                           ; $72fa: $e1
	call $cfa0                                       ; $72fb: $cd $a0 $cf
	jp $18aa                                         ; $72fe: $c3 $aa $18


Call_008_7301:
	ld l, $33                                        ; $7301: $2e $33
	ld a, [hl]                                       ; $7303: $7e
	or a                                             ; $7304: $b7
	ret                                              ; $7305: $c9


Call_008_7306:
	call Call_008_7301                               ; $7306: $cd $01 $73
	ret z                                            ; $7309: $c8

	ld a, h                                          ; $730a: $7c
	cp $c2                                           ; $730b: $fe $c2
	ret z                                            ; $730d: $c8

	ld l, $10                                        ; $730e: $2e $10
	ld [hl], $02                                     ; $7310: $36 $02
	ret                                              ; $7312: $c9


Call_008_7313:
	ld l, $00                                        ; $7313: $2e $00
	ld a, [hl]                                       ; $7315: $7e
	sub $5d                                          ; $7316: $d6 $5d
	ld l, $33                                        ; $7318: $2e $33
	ld [hl], a                                       ; $731a: $77
	call Call_008_7301                               ; $731b: $cd $01 $73
	ret nz                                           ; $731e: $c0

	ld a, $10                                        ; $731f: $3e $10
	call Call_000_12fc                                       ; $7321: $cd $fc $12
	inc a                                            ; $7324: $3c
	ld l, $35                                        ; $7325: $2e $35
	ld [hl], a                                       ; $7327: $77
	ret                                              ; $7328: $c9


Call_008_7329:
Jump_008_7329:
	call Call_008_7301                               ; $7329: $cd $01 $73
	jp z, $3bfb                                      ; $732c: $ca $fb $3b

	ld a, h                                          ; $732f: $7c
	cp $c2                                           ; $7330: $fe $c2
	jp z, $3bfb                                      ; $7332: $ca $fb $3b

	ld a, $80                                        ; $7335: $3e $80
	jp $3bfc                                         ; $7337: $c3 $fc $3b


Call_008_733a:
Jump_008_733a:
	ld b, h                                          ; $733a: $44
	call Call_008_7164                               ; $733b: $cd $64 $71
	ld h, b                                          ; $733e: $60
	jr nz, jr_008_7361                               ; $733f: $20 $20

	ld a, [$d348]                                    ; $7341: $fa $48 $d3
	or a                                             ; $7344: $b7
	jr nz, jr_008_7357                               ; $7345: $20 $10

	ld l, $01                                        ; $7347: $2e $01
	bit 2, [hl]                                      ; $7349: $cb $56
	ld bc, $003b                                     ; $734b: $01 $3b $00
	jp z, Jump_008_7329                              ; $734e: $ca $29 $73

	ld bc, $003c                                     ; $7351: $01 $3c $00
	jp Jump_008_7329                                 ; $7354: $c3 $29 $73


jr_008_7357:
	ld a, $02                                        ; $7357: $3e $02
	call Call_000_12fc                                       ; $7359: $cd $fc $12
	ld bc, $6bb1                                     ; $735c: $01 $b1 $6b
	jr jr_008_7367                                   ; $735f: $18 $06

jr_008_7361:
	ld l, $33                                        ; $7361: $2e $33
	ld a, [hl]                                       ; $7363: $7e
	ld bc, $6b8d                                     ; $7364: $01 $8d $6b

jr_008_7367:
	call Call_008_7412                               ; $7367: $cd $12 $74
	jp Jump_008_7329                                 ; $736a: $c3 $29 $73


Call_008_736d:
	call Call_008_7301                               ; $736d: $cd $01 $73
	jr nz, jr_008_737c                               ; $7370: $20 $0a

	ld a, $04                                        ; $7372: $3e $04
	call Call_000_12fc                                       ; $7374: $cd $fc $12
	ld bc, $6bf7                                     ; $7377: $01 $f7 $6b
	jr jr_008_7382                                   ; $737a: $18 $06

jr_008_737c:
	ld l, $33                                        ; $737c: $2e $33
	ld a, [hl]                                       ; $737e: $7e
	ld bc, $6bb3                                     ; $737f: $01 $b3 $6b

jr_008_7382:
	call Call_008_7412                               ; $7382: $cd $12 $74
	jp Jump_008_7329                                 ; $7385: $c3 $29 $73


Call_008_7388:
	call Call_008_7301                               ; $7388: $cd $01 $73
	jr nz, jr_008_7391                               ; $738b: $20 $04

	ld l, $35                                        ; $738d: $2e $35
	jr jr_008_7393                                   ; $738f: $18 $02

jr_008_7391:
	ld l, $33                                        ; $7391: $2e $33

jr_008_7393:
	ld a, [hl]                                       ; $7393: $7e
	ld de, $6c85                                     ; $7394: $11 $85 $6c
	call Call_008_740a                               ; $7397: $cd $0a $74
	ld l, $01                                        ; $739a: $2e $01
	bit 0, [hl]                                      ; $739c: $cb $46
	jp nz, $3d32                                     ; $739e: $c2 $32 $3d

	call $ceb6                                       ; $73a1: $cd $b6 $ce
	jp $3d32                                         ; $73a4: $c3 $32 $3d


Call_008_73a7:
	call Call_000_1309                                       ; $73a7: $cd $09 $13
	and $01                                          ; $73aa: $e6 $01

Call_008_73ac:
	ld l, $10                                        ; $73ac: $2e $10
	res 5, [hl]                                      ; $73ae: $cb $ae
	ld l, $01                                        ; $73b0: $2e $01
	res 0, [hl]                                      ; $73b2: $cb $86
	or a                                             ; $73b4: $b7
	ret z                                            ; $73b5: $c8

	set 0, [hl]                                      ; $73b6: $cb $c6
	ld l, $10                                        ; $73b8: $2e $10
	set 5, [hl]                                      ; $73ba: $cb $ee
	ret                                              ; $73bc: $c9


Call_008_73bd:
	ld d, $b0                                        ; $73bd: $16 $b0
	ld l, $01                                        ; $73bf: $2e $01
	bit 0, [hl]                                      ; $73c1: $cb $46
	jr z, jr_008_73c7                                ; $73c3: $28 $02

	ld d, $f0                                        ; $73c5: $16 $f0

jr_008_73c7:
	ld bc, $6ac6                                     ; $73c7: $01 $c6 $6a
	call Call_008_7301                               ; $73ca: $cd $01 $73
	jr nz, jr_008_73d2                               ; $73cd: $20 $03

	ld bc, $6ac8                                     ; $73cf: $01 $c8 $6a

jr_008_73d2:
	ld a, h                                          ; $73d2: $7c
	call $132c                                       ; $73d3: $cd $2c $13
	ld a, [bc]                                       ; $73d6: $0a
	ld e, a                                          ; $73d7: $5f
	jp $3bf4                                         ; $73d8: $c3 $f4 $3b


Call_008_73db:
	ld a, [$d348]                                    ; $73db: $fa $48 $d3
	or a                                             ; $73de: $b7
	ld b, $02                                        ; $73df: $06 $02
	jr z, jr_008_73e9                                ; $73e1: $28 $06

	call Call_000_1309                                       ; $73e3: $cd $09 $13
	and $02                                          ; $73e6: $e6 $02
	ld b, a                                          ; $73e8: $47

jr_008_73e9:
	ld l, $01                                        ; $73e9: $2e $01
	ld a, [hl]                                       ; $73eb: $7e
	and $01                                          ; $73ec: $e6 $01
	add b                                            ; $73ee: $80
	ld de, $6c7f                                     ; $73ef: $11 $7f $6c
	call Call_008_740a                               ; $73f2: $cd $0a $74
	ld l, $33                                        ; $73f5: $2e $33
	call Call_008_7301                               ; $73f7: $cd $01 $73
	jr nz, jr_008_73fe                               ; $73fa: $20 $02

	ld l, $35                                        ; $73fc: $2e $35

jr_008_73fe:
	ld a, [hl]                                       ; $73fe: $7e
	call Call_008_740a                               ; $73ff: $cd $0a $74
	jr jr_008_7404                                   ; $7402: $18 $00

Call_008_7404:
jr_008_7404:
	ld l, $30                                        ; $7404: $2e $30
	ld [hl], e                                       ; $7406: $73
	inc l                                            ; $7407: $2c
	ld [hl], d                                       ; $7408: $72
	ret                                              ; $7409: $c9


Call_008_740a:
	push hl                                          ; $740a: $e5
	ld h, d                                          ; $740b: $62
	ld l, e                                          ; $740c: $6b
	call $cf95                                       ; $740d: $cd $95 $cf
	pop hl                                           ; $7410: $e1
	ret                                              ; $7411: $c9


Call_008_7412:
	push hl                                          ; $7412: $e5
	ld h, b                                          ; $7413: $60
	ld l, c                                          ; $7414: $69
	call $cfa0                                       ; $7415: $cd $a0 $cf
	pop hl                                           ; $7418: $e1
	ret                                              ; $7419: $c9


	rst JumpTable                                          ; $741a: $c7
	rra                                              ; $741b: $1f
	ld [hl], h                                       ; $741c: $74
	dec [hl]                                         ; $741d: $35
	ld [hl], h                                       ; $741e: $74
	inc [hl]                                         ; $741f: $34
	call Call_008_7313                               ; $7420: $cd $13 $73
	call Call_008_7306                               ; $7423: $cd $06 $73
	call Call_008_73a7                               ; $7426: $cd $a7 $73
	call Call_008_73bd                               ; $7429: $cd $bd $73
	call Call_008_7388                               ; $742c: $cd $88 $73
	call Call_008_73db                               ; $742f: $cd $db $73
	jp Jump_008_733a                                 ; $7432: $c3 $3a $73


	ld l, $30                                        ; $7435: $2e $30
	ld a, [hl+]                                      ; $7437: $2a
	ld d, [hl]                                       ; $7438: $56
	ld e, a                                          ; $7439: $5f
	ld l, $34                                        ; $743a: $2e $34
	ld a, [hl]                                       ; $743c: $7e
	or a                                             ; $743d: $b7
	jr z, jr_008_7443                                ; $743e: $28 $03

	jp Jump_008_7469                                 ; $7440: $c3 $69 $74


jr_008_7443:
	ld a, [de]                                       ; $7443: $1a
	sla a                                            ; $7444: $cb $27
	jr nc, jr_008_7464                               ; $7446: $30 $1c

	ld l, $01                                        ; $7448: $2e $01
	bit 1, [hl]                                      ; $744a: $cb $4e
	jr z, jr_008_7453                                ; $744c: $28 $05

	res 1, [hl]                                      ; $744e: $cb $8e
	call Call_008_733a                               ; $7450: $cd $3a $73

jr_008_7453:
	ld a, [de]                                       ; $7453: $1a
	sla a                                            ; $7454: $cb $27
	jr nc, jr_008_7464                               ; $7456: $30 $0c

	rrca                                             ; $7458: $0f
	cp $7f                                           ; $7459: $fe $7f
	jp z, $2dfc                                      ; $745b: $ca $fc $2d

	ld l, $32                                        ; $745e: $2e $32
	ld [hl], a                                       ; $7460: $77
	inc de                                           ; $7461: $13
	jr jr_008_7453                                   ; $7462: $18 $ef

jr_008_7464:
	rrca                                             ; $7464: $0f
	ld l, $34                                        ; $7465: $2e $34
	ld [hl], a                                       ; $7467: $77
	inc de                                           ; $7468: $13

Jump_008_7469:
	dec [hl]                                         ; $7469: $35
	call Call_008_7404                               ; $746a: $cd $04 $74
	ld l, $32                                        ; $746d: $2e $32
	ld a, [hl]                                       ; $746f: $7e
	or a                                             ; $7470: $b7
	jr z, jr_008_747d                                ; $7471: $28 $0a

	dec a                                            ; $7473: $3d
	jr z, jr_008_748e                                ; $7474: $28 $18

	dec a                                            ; $7476: $3d
	jr z, jr_008_7495                                ; $7477: $28 $1c

	dec a                                            ; $7479: $3d
	jr z, jr_008_74a2                                ; $747a: $28 $26

	ret                                              ; $747c: $c9


jr_008_747d:
	call Call_008_7301                               ; $747d: $cd $01 $73
	ret nz                                           ; $7480: $c0

	ld l, $01                                        ; $7481: $2e $01
	set 1, [hl]                                      ; $7483: $cb $ce
	ld bc, $0017                                     ; $7485: $01 $17 $00
	call Call_008_7329                               ; $7488: $cd $29 $73
	jp $17e7                                         ; $748b: $c3 $e7 $17


jr_008_748e:
	ld a, $01                                        ; $748e: $3e $01
	call Call_008_73ac                               ; $7490: $cd $ac $73
	jr jr_008_7499                                   ; $7493: $18 $04

jr_008_7495:
	xor a                                            ; $7495: $af
	call Call_008_73ac                               ; $7496: $cd $ac $73

jr_008_7499:
	call Call_008_7388                               ; $7499: $cd $88 $73
	call $3d25                                       ; $749c: $cd $25 $3d
	jp $17e7                                         ; $749f: $c3 $e7 $17


jr_008_74a2:
	ld l, $01                                        ; $74a2: $2e $01
	bit 1, [hl]                                      ; $74a4: $cb $4e
	jp nz, $17e7                                     ; $74a6: $c2 $e7 $17

	set 1, [hl]                                      ; $74a9: $cb $ce
	set 2, [hl]                                      ; $74ab: $cb $d6
	call Call_008_736d                               ; $74ad: $cd $6d $73
	jp $17e7                                         ; $74b0: $c3 $e7 $17


	rst JumpTable                                          ; $74b3: $c7
	cp b                                             ; $74b4: $b8
	ld [hl], h                                       ; $74b5: $74
	dec [hl]                                         ; $74b6: $35
	ld [hl], h                                       ; $74b7: $74
	inc [hl]                                         ; $74b8: $34
	call Call_008_7313                               ; $74b9: $cd $13 $73
	call Call_008_73a7                               ; $74bc: $cd $a7 $73
	call Call_008_73bd                               ; $74bf: $cd $bd $73
	call Call_008_7388                               ; $74c2: $cd $88 $73
	ld de, $6f9b                                     ; $74c5: $11 $9b $6f
	ld l, $01                                        ; $74c8: $2e $01
	bit 0, [hl]                                      ; $74ca: $cb $46
	jr z, jr_008_74d1                                ; $74cc: $28 $03

	ld de, $6fd1                                     ; $74ce: $11 $d1 $6f

jr_008_74d1:
	call Call_008_7404                               ; $74d1: $cd $04 $74
	jp Jump_008_733a                                 ; $74d4: $c3 $3a $73


	ld l, $02                                        ; $74d7: $2e $02
	ld [hl], $c0                                     ; $74d9: $36 $c0
	ld l, $01                                        ; $74db: $2e $01
	set 7, [hl]                                      ; $74dd: $cb $fe
	ld de, $c201                                     ; $74df: $11 $01 $c2
	ld a, [de]                                       ; $74e2: $1a
	bit 1, a                                         ; $74e3: $cb $4f
	ret z                                            ; $74e5: $c8

	res 7, [hl]                                      ; $74e6: $cb $be
	ld de, $c233                                     ; $74e8: $11 $33 $c2
	ld a, [de]                                       ; $74eb: $1a
	push hl                                          ; $74ec: $e5
	ld hl, $6bd5                                     ; $74ed: $21 $d5 $6b
	call $cfa0                                       ; $74f0: $cd $a0 $cf
	pop hl                                           ; $74f3: $e1
	ld de, $5040                                     ; $74f4: $11 $40 $50
	jp $3bef                                         ; $74f7: $c3 $ef $3b


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

Call_008_7d19:
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
